; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $036", ROMX[$4000], BANK[$36]

    ld [$7b40], sp                                ; $4000: $08 $40 $7b
    ld d, h                                       ; $4003: $54

    db $0d, $5d, $d6, $71

    jr nz, jr_036_404a                            ; $4008: $20 $40

    jr nc, jr_036_4051                            ; $400a: $30 $45

    ldh [rOBP1], a                                ; $400c: $e0 $49
    db $10                                        ; $400e: $10
    ld c, [hl]                                    ; $400f: $4e
    jr nz, jr_036_4063                            ; $4010: $20 $51

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
    rst $30                                       ; $4020: $f7
    rst $38                                       ; $4021: $ff
    rst $38                                       ; $4022: $ff
    add b                                         ; $4023: $80
    rst $38                                       ; $4024: $ff
    ld [$ffff], a                                 ; $4025: $ea $ff $ff
    rst $38                                       ; $4028: $ff
    nop                                           ; $4029: $00
    dec d                                         ; $402a: $15
    ld a, a                                       ; $402b: $7f
    cp $e0                                        ; $402c: $fe $e0
    ccf                                           ; $402e: $3f
    cp $e0                                        ; $402f: $fe $e0
    rra                                           ; $4031: $1f
    cp $e0                                        ; $4032: $fe $e0
    ldh a, [$e1]                                  ; $4034: $f0 $e1
    cp $ea                                        ; $4036: $fe $ea
    ld d, e                                       ; $4038: $53
    rst $38                                       ; $4039: $ff
    nop                                           ; $403a: $00
    rst $38                                       ; $403b: $ff
    ld [$e1f0], a                                 ; $403c: $ea $f0 $e1
    ld bc, $e0fe                                  ; $403f: $01 $fe $e0
    inc bc                                        ; $4042: $03
    cp $e0                                        ; $4043: $fe $e0
    ret                                           ; $4045: $c9


    rlca                                          ; $4046: $07
    cp $e0                                        ; $4047: $fe $e0
    ret nz                                        ; $4049: $c0

jr_036_404a:
    ldh [rSB], a                                  ; $404a: $e0 $01
    cp $e9                                        ; $404c: $fe $e9
    jp nc, Jump_000_00eb                          ; $404e: $d2 $eb $00

jr_036_4051:
    nop                                           ; $4051: $00
    ld a, $92                                     ; $4052: $3e $92
    db $eb                                        ; $4054: $eb
    add b                                         ; $4055: $80
    add b                                         ; $4056: $80
    rrca                                          ; $4057: $0f
    nop                                           ; $4058: $00
    rrca                                          ; $4059: $0f
    ret z                                         ; $405a: $c8

    ld [c], a                                     ; $405b: $e2
    ret nz                                        ; $405c: $c0

    pop hl                                        ; $405d: $e1
    ld [$e1b8], sp                                ; $405e: $08 $b8 $e1
    sub d                                         ; $4061: $92
    db $ec                                        ; $4062: $ec

jr_036_4063:
    ld [c], a                                     ; $4063: $e2
    ldh [rIF], a                                  ; $4064: $e0 $0f
    ld a, b                                       ; $4066: $78
    ld [c], a                                     ; $4067: $e2
    ld [hl], b                                    ; $4068: $70
    pop hl                                        ; $4069: $e1
    ld l, b                                       ; $406a: $68
    pop hl                                        ; $406b: $e1
    and d                                         ; $406c: $a2
    db $eb                                        ; $406d: $eb
    ld [hl], b                                    ; $406e: $70
    sub h                                         ; $406f: $94
    ldh [$62], a                                  ; $4070: $e0 $62
    ldh [$50], a                                  ; $4072: $e0 $50
    ld [$e352], a                                 ; $4074: $ea $52 $e3
    inc bc                                        ; $4077: $03
    rst $38                                       ; $4078: $ff
    rlca                                          ; $4079: $07
    cp $e0                                        ; $407a: $fe $e0
    rst $30                                       ; $407c: $f7
    rrca                                          ; $407d: $0f
    di                                            ; $407e: $f3
    rra                                           ; $407f: $1f
    adc d                                         ; $4080: $8a
    push hl                                       ; $4081: $e5
    ret nz                                        ; $4082: $c0

    ret nz                                        ; $4083: $c0

    ldh [$e0], a                                  ; $4084: $e0 $e0
    rrca                                          ; $4086: $0f
    ld hl, sp-$08                                 ; $4087: $f8 $f8
    call nz, Call_036_42fc                        ; $4089: $c4 $fc $42
    pop hl                                        ; $408c: $e1
    ld d, b                                       ; $408d: $50
    ld [$e722], a                                 ; $408e: $ea $22 $e7
    ret nc                                        ; $4091: $d0

    ldh [$db], a                                  ; $4092: $e0 $db
    rst $38                                       ; $4094: $ff
    rrca                                          ; $4095: $0f
    ld d, h                                       ; $4096: $54
    db $eb                                        ; $4097: $eb
    ret nz                                        ; $4098: $c0

    ret nz                                        ; $4099: $c0

    ld [c], a                                     ; $409a: $e2
    pop bc                                        ; $409b: $c1
    ret nz                                        ; $409c: $c0

    add b                                         ; $409d: $80
    rst $38                                       ; $409e: $ff
    ldh [$80], a                                  ; $409f: $e0 $80
    ldh a, [$80]                                  ; $40a1: $f0 $80
    ld hl, sp-$80                                 ; $40a3: $f8 $80
    db $fc                                        ; $40a5: $fc
    add b                                         ; $40a6: $80
    ei                                            ; $40a7: $fb
    cp $80                                        ; $40a8: $fe $80
    ld a, [c]                                     ; $40aa: $f2
    call z, $e001                                 ; $40ab: $cc $01 $e0
    ccf                                           ; $40ae: $3f
    rst $00                                       ; $40af: $c7
    ld a, a                                       ; $40b0: $7f
    rst $38                                       ; $40b1: $ff
    rst $08                                       ; $40b2: $cf
    ld a, a                                       ; $40b3: $7f
    sub c                                         ; $40b4: $91
    rst $38                                       ; $40b5: $ff
    or b                                          ; $40b6: $b0
    rst $38                                       ; $40b7: $ff
    and [hl]                                      ; $40b8: $a6
    rst $38                                       ; $40b9: $ff
    rst $38                                       ; $40ba: $ff
    jp hl                                         ; $40bb: $e9


    rst $38                                       ; $40bc: $ff
    add hl, hl                                    ; $40bd: $29
    rst $38                                       ; $40be: $ff
    ld [bc], a                                    ; $40bf: $02

Jump_036_40c0:
    cp $f1                                        ; $40c0: $fe $f1
    rst $38                                       ; $40c2: $ff
    rst $38                                       ; $40c3: $ff
    ld a, c                                       ; $40c4: $79
    rst $38                                       ; $40c5: $ff
    ld b, h                                       ; $40c6: $44
    rst $38                                       ; $40c7: $ff
    ld b, $ff                                     ; $40c8: $06 $ff
    ld [hl-], a                                   ; $40ca: $32
    rst $38                                       ; $40cb: $ff
    ld h, a                                       ; $40cc: $67
    ld c, e                                       ; $40cd: $4b
    rst $38                                       ; $40ce: $ff
    ld c, d                                       ; $40cf: $4a
    jp nc, $9cc4                                  ; $40d0: $d2 $c4 $9c

    push bc                                       ; $40d3: $c5
    ld b, b                                       ; $40d4: $40
    ret nz                                        ; $40d5: $c0

    ld [c], a                                     ; $40d6: $e2
    pop bc                                        ; $40d7: $c1
    rst $38                                       ; $40d8: $ff
    db $fd                                        ; $40d9: $fd
    ld bc, $01f9                                  ; $40da: $01 $f9 $01
    pop af                                        ; $40dd: $f1
    ld bc, $01e1                                  ; $40de: $01 $e1 $01
    rst $00                                       ; $40e1: $c7
    pop bc                                        ; $40e2: $c1
    ld bc, $4081                                  ; $40e3: $01 $81 $40
    ld [c], a                                     ; $40e6: $e2
    or h                                          ; $40e7: $b4
    push hl                                       ; $40e8: $e5
    add $c2                                       ; $40e9: $c6 $c2
    rra                                           ; $40eb: $1f
    rst $20                                       ; $40ec: $e7
    rst $38                                       ; $40ed: $ff
    ccf                                           ; $40ee: $3f
    ret nz                                        ; $40ef: $c0

    ld a, a                                       ; $40f0: $7f
    adc a                                         ; $40f1: $8f
    rst $38                                       ; $40f2: $ff
    sbc b                                         ; $40f3: $98
    rst $38                                       ; $40f4: $ff
    inc l                                         ; $40f5: $2c
    rst $38                                       ; $40f6: $ff
    rst $38                                       ; $40f7: $ff
    ld h, h                                       ; $40f8: $64
    rst $38                                       ; $40f9: $ff
    ld b, b                                       ; $40fa: $40
    rst $38                                       ; $40fb: $ff
    ldh a, [$f0]                                  ; $40fc: $f0 $f0
    adc b                                         ; $40fe: $88
    rst $38                                       ; $40ff: $ff
    ld hl, sp+$04                                 ; $4100: $f8 $04
    db $fc                                        ; $4102: $fc
    ld [c], a                                     ; $4103: $e2
    cp $f2                                        ; $4104: $fe $f2
    cp $89                                        ; $4106: $fe $89
    rst $18                                       ; $4108: $df
    rst $38                                       ; $4109: $ff
    ld l, l                                       ; $410a: $6d
    rst $38                                       ; $410b: $ff
    push af                                       ; $410c: $f5
    sbc a                                         ; $410d: $9f
    cp [hl]                                       ; $410e: $be
    ret nz                                        ; $410f: $c0

    nop                                           ; $4110: $00
    ret nz                                        ; $4111: $c0

    rst $38                                       ; $4112: $ff
    nop                                           ; $4113: $00
    ldh [rP1], a                                  ; $4114: $e0 $00
    ldh a, [rP1]                                  ; $4116: $f0 $00
    ld hl, sp+$00                                 ; $4118: $f8 $00
    db $fc                                        ; $411a: $fc
    ei                                            ; $411b: $fb
    nop                                           ; $411c: $00
    cp $f0                                        ; $411d: $fe $f0
    jp nz, $0f7f                                  ; $411f: $c2 $7f $0f

    ld [hl], b                                    ; $4122: $70
    rra                                           ; $4123: $1f
    ld [hl+], a                                   ; $4124: $22
    rst $38                                       ; $4125: $ff
    ccf                                           ; $4126: $3f
    ld b, c                                       ; $4127: $41
    ld a, a                                       ; $4128: $7f
    ld b, l                                       ; $4129: $45
    ld a, a                                       ; $412a: $7f
    ld d, d                                       ; $412b: $52
    ld a, a                                       ; $412c: $7f
    ld h, b                                       ; $412d: $60
    cp $51                                        ; $412e: $fe $51
    ret nz                                        ; $4130: $c0

    ld b, b                                       ; $4131: $40
    rst $38                                       ; $4132: $ff
    jp $e0ff                                      ; $4133: $c3 $ff $e0


    rst $38                                       ; $4136: $ff
    ldh a, [rIE]                                  ; $4137: $f0 $ff
    rst $38                                       ; $4139: $ff
    ld a, h                                       ; $413a: $7c
    rst $38                                       ; $413b: $ff
    ld a, a                                       ; $413c: $7f
    rst $30                                       ; $413d: $f7
    inc bc                                        ; $413e: $03
    rst $38                                       ; $413f: $ff
    add b                                         ; $4140: $80
    ld a, [$c06f]                                 ; $4141: $fa $6f $c0
    pop hl                                        ; $4144: $e1
    rst $28                                       ; $4145: $ef
    jp nz, $ff1f                                  ; $4146: $c2 $1f $ff

    rst $38                                       ; $4149: $ff
    rst $30                                       ; $414a: $f7
    ld b, b                                       ; $414b: $40
    rst $38                                       ; $414c: $ff
    ret nz                                        ; $414d: $c0

    ld b, b                                       ; $414e: $40
    ret nz                                        ; $414f: $c0

    ld a, c                                       ; $4150: $79
    ld hl, sp-$03                                 ; $4151: $f8 $fd
    add h                                         ; $4153: $84
    rst $38                                       ; $4154: $ff
    rst $38                                       ; $4155: $ff
    and d                                         ; $4156: $a2
    rst $38                                       ; $4157: $ff
    pop bc                                        ; $4158: $c1
    rst $38                                       ; $4159: $ff
    ld d, c                                       ; $415a: $51
    rst $38                                       ; $415b: $ff
    dec h                                         ; $415c: $25
    rst $38                                       ; $415d: $ff
    xor d                                         ; $415e: $aa
    cp h                                          ; $415f: $bc
    ldh [$fc], a                                  ; $4160: $e0 $fc
    or h                                          ; $4162: $b4
    ldh [$f0], a                                  ; $4163: $e0 $f0
    xor h                                         ; $4165: $ac
    ldh [$c0], a                                  ; $4166: $e0 $c0
    and h                                         ; $4168: $a4
    ldh [rIE], a                                  ; $4169: $e0 $ff
    rst $38                                       ; $416b: $ff
    add hl, de                                    ; $416c: $19
    rst $20                                       ; $416d: $e7
    ccf                                           ; $416e: $3f
    ld c, l                                       ; $416f: $4d
    ld a, a                                       ; $4170: $7f
    sub e                                         ; $4171: $93
    rst $38                                       ; $4172: $ff
    add h                                         ; $4173: $84
    rst $38                                       ; $4174: $ff
    rst $38                                       ; $4175: $ff
    add c                                         ; $4176: $81
    rst $38                                       ; $4177: $ff
    ld b, b                                       ; $4178: $40
    ld a, a                                       ; $4179: $7f
    jr nz, jr_036_41bb                            ; $417a: $20 $3f

    ld e, b                                       ; $417c: $58
    xor a                                         ; $417d: $af
    rst $38                                       ; $417e: $ff
    call nz, $ccff                                ; $417f: $c4 $ff $cc
    or b                                          ; $4182: $b0
    ldh [$80], a                                  ; $4183: $e0 $80
    ld [hl], h                                    ; $4185: $74
    ldh [rBGP], a                                 ; $4186: $e0 $47
    cp $aa                                        ; $4188: $fe $aa
    ldh [$f7], a                                  ; $418a: $e0 $f7
    rst $18                                       ; $418c: $df
    db $f4                                        ; $418d: $f4
    rst $18                                       ; $418e: $df
    or $df                                        ; $418f: $f6 $df
    inc b                                         ; $4191: $04
    rst $38                                       ; $4192: $ff
    rst $38                                       ; $4193: $ff
    ld [de], a                                    ; $4194: $12
    rst $38                                       ; $4195: $ff
    ld h, e                                       ; $4196: $63
    rst $38                                       ; $4197: $ff
    add d                                         ; $4198: $82
    cp $04                                        ; $4199: $fe $04
    xor $b0                                       ; $419b: $ee $b0
    ret nz                                        ; $419d: $c0

    add b                                         ; $419e: $80
    add b                                         ; $419f: $80
    add c                                         ; $41a0: $81
    cp $e0                                        ; $41a1: $fe $e0
    add e                                         ; $41a3: $83
    add b                                         ; $41a4: $80
    inc bc                                        ; $41a5: $03
    sbc a                                         ; $41a6: $9f
    nop                                           ; $41a7: $00
    ccf                                           ; $41a8: $3f
    inc a                                         ; $41a9: $3c
    ld a, a                                       ; $41aa: $7f
    ld b, d                                       ; $41ab: $42
    sub c                                         ; $41ac: $91
    ldh [$fe], a                                  ; $41ad: $e0 $fe
    ld [c], a                                     ; $41af: $e2
    cp a                                          ; $41b0: $bf
    ei                                            ; $41b1: $fb
    add b                                         ; $41b2: $80
    adc a                                         ; $41b3: $8f
    db $ec                                        ; $41b4: $ec
    ldh [$80], a                                  ; $41b5: $e0 $80
    add b                                         ; $41b7: $80
    ld e, d                                       ; $41b8: $5a
    ld a, a                                       ; $41b9: $7f
    inc sp                                        ; $41ba: $33

jr_036_41bb:
    rst $38                                       ; $41bb: $ff
    ccf                                           ; $41bc: $3f
    ccf                                           ; $41bd: $3f
    ccf                                           ; $41be: $3f
    inc hl                                        ; $41bf: $23
    ccf                                           ; $41c0: $3f
    ld de, $0f1f                                  ; $41c1: $11 $1f $0f
    db $fd                                        ; $41c4: $fd
    rrca                                          ; $41c5: $0f
    di                                            ; $41c6: $f3
    and c                                         ; $41c7: $a1
    rst $18                                       ; $41c8: $df
    di                                            ; $41c9: $f3
    rst $18                                       ; $41ca: $df
    ld sp, hl                                     ; $41cb: $f9
    cp a                                          ; $41cc: $bf
    ei                                            ; $41cd: $fb
    rst $20                                       ; $41ce: $e7
    cp a                                          ; $41cf: $bf
    rst $38                                       ; $41d0: $ff
    ld a, a                                       ; $41d1: $7f
    sub a                                         ; $41d2: $97
    and b                                         ; $41d3: $a0
    db $fd                                        ; $41d4: $fd
    pop hl                                        ; $41d5: $e1
    db $fd                                        ; $41d6: $fd
    rst $20                                       ; $41d7: $e7
    db $fd                                        ; $41d8: $fd
    rst $08                                       ; $41d9: $cf
    rst $08                                       ; $41da: $cf
    cp $ef                                        ; $41db: $fe $ef
    cp $f2                                        ; $41dd: $fe $f2
    db $e4                                        ; $41df: $e4
    add d                                         ; $41e0: $82
    and b                                         ; $41e1: $a0
    xor l                                         ; $41e2: $ad
    rst $38                                       ; $41e3: $ff
    rst $38                                       ; $41e4: $ff
    and $ff                                       ; $41e5: $e6 $ff
    cp $e3                                        ; $41e7: $fe $e3
    cp $47                                        ; $41e9: $fe $47
    db $fc                                        ; $41eb: $fc
    rst $38                                       ; $41ec: $ff
    push af                                       ; $41ed: $f5
    ld hl, sp-$4c                                 ; $41ee: $f8 $b4
    pop hl                                        ; $41f0: $e1
    ld bc, $e4ff                                  ; $41f1: $01 $ff $e4
    inc bc                                        ; $41f4: $03
    ld bc, $010f                                  ; $41f5: $01 $0f $01
    db $dd                                        ; $41f8: $dd
    ccf                                           ; $41f9: $3f
    and [hl]                                      ; $41fa: $a6
    and b                                         ; $41fb: $a0
    add hl, de                                    ; $41fc: $19
    rra                                           ; $41fd: $1f
    db $10                                        ; $41fe: $10
    cp $e6                                        ; $41ff: $fe $e6
    add hl, bc                                    ; $4201: $09
    rrca                                          ; $4202: $0f
    rst $38                                       ; $4203: $ff
    rlca                                          ; $4204: $07

jr_036_4205:
    rlca                                          ; $4205: $07
    ldh a, [rIE]                                  ; $4206: $f0 $ff
    db $fc                                        ; $4208: $fc
    rst $28                                       ; $4209: $ef
    rst $38                                       ; $420a: $ff
    di                                            ; $420b: $f3
    ld l, a                                       ; $420c: $6f
    rst $38                                       ; $420d: $ff
    db $fc                                        ; $420e: $fc
    rst $38                                       ; $420f: $ff
    cp $ac                                        ; $4210: $fe $ac
    db $e3                                        ; $4212: $e3
    add hl, de                                    ; $4213: $19
    ld sp, hl                                     ; $4214: $f9
    and [hl]                                      ; $4215: $a6
    ldh [rIE], a                                  ; $4216: $e0 $ff
    rst $28                                       ; $4218: $ef
    rst $38                                       ; $4219: $ff
    ld h, a                                       ; $421a: $67
    rst $38                                       ; $421b: $ff
    rst $30                                       ; $421c: $f7
    ei                                            ; $421d: $fb
    rst $38                                       ; $421e: $ff
    db $fd                                        ; $421f: $fd
    cp $fe                                        ; $4220: $fe $fe
    ldh [rIE], a                                  ; $4222: $e0 $ff
    jp c, Jump_036_61ff                           ; $4224: $da $ff $61

    rst $38                                       ; $4227: $ff
    ld hl, $ffff                                  ; $4228: $21 $ff $ff
    or c                                          ; $422b: $b1
    ld a, a                                       ; $422c: $7f
    pop af                                        ; $422d: $f1
    rra                                           ; $422e: $1f
    ld sp, hl                                     ; $422f: $f9
    adc a                                         ; $4230: $8f
    cp $9f                                        ; $4231: $fe $9f
    dec bc                                        ; $4233: $0b
    ld hl, sp+$3f                                 ; $4234: $f8 $3f
    sub b                                         ; $4236: $90
    and b                                         ; $4237: $a0
    inc bc                                        ; $4238: $03
    ld b, b                                       ; $4239: $40
    xor c                                         ; $423a: $a9
    ld [hl+], a                                   ; $423b: $22
    and h                                         ; $423c: $a4
    add sp, -$1b                                  ; $423d: $e8 $e5
    ld l, c                                       ; $423f: $69
    pop hl                                        ; $4240: $e1
    rst $18                                       ; $4241: $df
    ld b, b                                       ; $4242: $40
    ld a, a                                       ; $4243: $7f
    add b                                         ; $4244: $80
    rst $38                                       ; $4245: $ff
    add e                                         ; $4246: $83
    rst $30                                       ; $4247: $f7
    add b                                         ; $4248: $80
    ld b, c                                       ; $4249: $41
    ld a, a                                       ; $424a: $7f
    dec d                                         ; $424b: $15
    ld a, a                                       ; $424c: $7f
    ld e, c                                       ; $424d: $59
    ld [c], a                                     ; $424e: $e2
    ld bc, $c0b4                                  ; $424f: $01 $b4 $c0
    ret nz                                        ; $4252: $c0

    ldh a, [$e5]                                  ; $4253: $f0 $e5
    db $fc                                        ; $4255: $fc
    and b                                         ; $4256: $a0
    ret nc                                        ; $4257: $d0

    ret nz                                        ; $4258: $c0

    and [hl]                                      ; $4259: $a6
    ldh a, [$a0]                                  ; $425a: $f0 $a0
    ldh [$80], a                                  ; $425c: $e0 $80
    ret nc                                        ; $425e: $d0

    pop bc                                        ; $425f: $c1
    ld a, [c]                                     ; $4260: $f2
    add l                                         ; $4261: $85
    inc bc                                        ; $4262: $03
    jr c, jr_036_4205                             ; $4263: $38 $a0

    ccf                                           ; $4265: $3f
    xor b                                         ; $4266: $a8
    sub $80                                       ; $4267: $d6 $80
    ld hl, sp-$1b                                 ; $4269: $f8 $e5
    jp z, Jump_000_0185                           ; $426b: $ca $85 $01

    inc e                                         ; $426e: $1c
    ret nz                                        ; $426f: $c0

    pop bc                                        ; $4270: $c1
    inc d                                         ; $4271: $14
    ret nz                                        ; $4272: $c0

    ld a, [c]                                     ; $4273: $f2
    ld a, a                                       ; $4274: $7f
    inc bc                                        ; $4275: $03
    ei                                            ; $4276: $fb
    inc bc                                        ; $4277: $03
    db $fc                                        ; $4278: $fc
    rlca                                          ; $4279: $07
    db $fc                                        ; $427a: $fc
    rlca                                          ; $427b: $07
    add hl, bc                                    ; $427c: $09
    db $e3                                        ; $427d: $e3
    ld a, l                                       ; $427e: $7d
    ldh [$ab], a                                  ; $427f: $e0 $ab
    add b                                         ; $4281: $80
    ret nz                                        ; $4282: $c0

    rst $38                                       ; $4283: $ff
    dec sp                                        ; $4284: $3b
    rst $38                                       ; $4285: $ff
    add hl, bc                                    ; $4286: $09
    sub c                                         ; $4287: $91
    add b                                         ; $4288: $80
    ld sp, hl                                     ; $4289: $f9
    cp $03                                        ; $428a: $fe $03
    ldh [$39], a                                  ; $428c: $e0 $39
    and c                                         ; $428e: $a1
    ld h, c                                       ; $428f: $61
    rst $38                                       ; $4290: $ff
    add $ff                                       ; $4291: $c6 $ff
    ret z                                         ; $4293: $c8

    db $ec                                        ; $4294: $ec
    push hl                                       ; $4295: $e5
    ldh [rSVBK], a                                ; $4296: $e0 $70
    jp nz, $7080                                  ; $4298: $c2 $80 $70

    ld d, b                                       ; $429b: $50
    and b                                         ; $429c: $a0
    db $10                                        ; $429d: $10
    ldh a, [rSVBK]                                ; $429e: $f0 $70
    db $fd                                        ; $42a0: $fd
    ldh a, [$50]                                  ; $42a1: $f0 $50
    ldh [rSB], a                                  ; $42a3: $e0 $01
    ld [bc], a                                    ; $42a5: $02
    inc bc                                        ; $42a6: $03
    inc b                                         ; $42a7: $04
    rlca                                          ; $42a8: $07
    inc b                                         ; $42a9: $04
    ei                                            ; $42aa: $fb
    rlca                                          ; $42ab: $07
    rlca                                          ; $42ac: $07
    db $fc                                        ; $42ad: $fc
    ldh [rIE], a                                  ; $42ae: $e0 $ff
    rst $38                                       ; $42b0: $ff
    ld a, a                                       ; $42b1: $7f
    ld b, c                                       ; $42b2: $41
    rst $38                                       ; $42b3: $ff
    ccf                                           ; $42b4: $3f
    pop af                                        ; $42b5: $f1
    rrca                                          ; $42b6: $0f
    ld sp, hl                                     ; $42b7: $f9
    rlca                                          ; $42b8: $07
    rst $38                                       ; $42b9: $ff
    dec b                                         ; $42ba: $05
    sub a                                         ; $42bb: $97
    add d                                         ; $42bc: $82
    ldh a, [$e1]                                  ; $42bd: $f0 $e1
    ld a, a                                       ; $42bf: $7f
    ld a, a                                       ; $42c0: $7f
    ld c, a                                       ; $42c1: $4f
    ld [hl], b                                    ; $42c2: $70
    ld e, a                                       ; $42c3: $5f
    ldh [rIE], a                                  ; $42c4: $e0 $ff
    and b                                         ; $42c6: $a0
    ld b, a                                       ; $42c7: $47
    add b                                         ; $42c8: $80
    cp $43                                        ; $42c9: $fe $43
    add c                                         ; $42cb: $81
    inc bc                                        ; $42cc: $03
    nop                                           ; $42cd: $00
    adc a                                         ; $42ce: $8f
    add b                                         ; $42cf: $80
    ld a, a                                       ; $42d0: $7f
    ret nz                                        ; $42d1: $c0

    ccf                                           ; $42d2: $3f
    rst $28                                       ; $42d3: $ef
    ldh [$3f], a                                  ; $42d4: $e0 $3f
    ldh [rIE], a                                  ; $42d6: $e0 $ff
    db $fc                                        ; $42d8: $fc
    pop hl                                        ; $42d9: $e1
    rst $38                                       ; $42da: $ff
    ccf                                           ; $42db: $3f
    rlca                                          ; $42dc: $07
    sbc a                                         ; $42dd: $9f
    ccf                                           ; $42de: $3f
    inc a                                         ; $42df: $3c
    ld b, e                                       ; $42e0: $43
    ld a, [hl]                                    ; $42e1: $7e
    add c                                         ; $42e2: $81
    ld [hl-], a                                   ; $42e3: $32
    ret nz                                        ; $42e4: $c0

    ldh [$e3], a                                  ; $42e5: $e0 $e3
    rrca                                          ; $42e7: $0f
    rst $38                                       ; $42e8: $ff
    rst $38                                       ; $42e9: $ff
    rst $38                                       ; $42ea: $ff
    ld hl, sp-$09                                 ; $42eb: $f8 $f7
    db $10                                        ; $42ed: $10
    rst $20                                       ; $42ee: $e7
    ldh [$33], a                                  ; $42ef: $e0 $33
    rst $28                                       ; $42f1: $ef
    ldh [$eb], a                                  ; $42f2: $e0 $eb
    ldh [rNR42], a                                ; $42f4: $e0 $21
    ldh [$e0], a                                  ; $42f6: $e0 $e0
    db $fd                                        ; $42f8: $fd
    rst $38                                       ; $42f9: $ff
    rrca                                          ; $42fa: $0f
    rst $38                                       ; $42fb: $ff

Call_036_42fc:
    ld b, $1f                                     ; $42fc: $06 $1f
    inc b                                         ; $42fe: $04
    rra                                           ; $42ff: $1f
    rlca                                          ; $4300: $07
    inc [hl]                                      ; $4301: $34
    rlca                                          ; $4302: $07
    cpl                                           ; $4303: $2f
    ei                                            ; $4304: $fb
    rlca                                          ; $4305: $07
    ld a, h                                       ; $4306: $7c
    ld h, d                                       ; $4307: $62
    ldh [$f3], a                                  ; $4308: $e0 $f3
    sub b                                         ; $430a: $90
    rst $38                                       ; $430b: $ff
    ld a, h                                       ; $430c: $7c
    jp $fef1                                      ; $430d: $c3 $f1 $fe


    ret nc                                        ; $4310: $d0

    db $e3                                        ; $4311: $e3
    and b                                         ; $4312: $a0
    pop hl                                        ; $4313: $e1
    ld [de], a                                    ; $4314: $12
    adc c                                         ; $4315: $89
    ld [hl], $36                                  ; $4316: $36 $36
    dec l                                         ; $4318: $2d
    ccf                                           ; $4319: $3f
    cp $f2                                        ; $431a: $fe $f2
    ld l, b                                       ; $431c: $68
    ld h, b                                       ; $431d: $60
    rst $38                                       ; $431e: $ff
    ld d, [hl]                                    ; $431f: $56
    rst $38                                       ; $4320: $ff
    ld e, d                                       ; $4321: $5a
    dec l                                         ; $4322: $2d
    ccf                                           ; $4323: $3f
    rst $38                                       ; $4324: $ff
    ld h, l                                       ; $4325: $65
    ld a, a                                       ; $4326: $7f
    or l                                          ; $4327: $b5
    rst $38                                       ; $4328: $ff
    sub c                                         ; $4329: $91
    rst $38                                       ; $432a: $ff
    ld b, e                                       ; $432b: $43
    ld a, a                                       ; $432c: $7f
    db $ed                                        ; $432d: $ed
    db $e4                                        ; $432e: $e4
    call z, Call_036_60a0                         ; $432f: $cc $a0 $60
    ld a, a                                       ; $4332: $7f
    or $c0                                        ; $4333: $f6 $c0
    inc bc                                        ; $4335: $03
    rlca                                          ; $4336: $07
    rlca                                          ; $4337: $07
    rst $38                                       ; $4338: $ff
    rst $20                                       ; $4339: $e7
    rst $20                                       ; $433a: $e7
    cpl                                           ; $433b: $2f
    rst $28                                       ; $433c: $ef
    ld d, e                                       ; $433d: $53
    rst $18                                       ; $433e: $df
    and b                                         ; $433f: $a0
    cp a                                          ; $4340: $bf
    db $fd                                        ; $4341: $fd
    rst $00                                       ; $4342: $c7
    jp nz, $8061                                  ; $4343: $c2 $61 $80

    rst $38                                       ; $4346: $ff
    rst $00                                       ; $4347: $c7
    rst $38                                       ; $4348: $ff
    db $e4                                        ; $4349: $e4
    rst $38                                       ; $434a: $ff
    rst $38                                       ; $434b: $ff
    ld a, [$fdc7]                                 ; $434c: $fa $c7 $fd
    inc bc                                        ; $434f: $03
    rst $38                                       ; $4350: $ff
    pop af                                        ; $4351: $f1
    rst $38                                       ; $4352: $ff
    rst $38                                       ; $4353: $ff
    rst $38                                       ; $4354: $ff
    sub d                                         ; $4355: $92
    rst $38                                       ; $4356: $ff
    and l                                         ; $4357: $a5
    rst $38                                       ; $4358: $ff
    adc c                                         ; $4359: $89
    rst $38                                       ; $435a: $ff
    jp nz, $ddff                                  ; $435b: $c2 $ff $dd

    daa                                           ; $435e: $27
    ld l, d                                       ; $435f: $6a
    ret nz                                        ; $4360: $c0

    ld b, $ff                                     ; $4361: $06 $ff
    add h                                         ; $4363: $84
    or d                                          ; $4364: $b2
    ld h, l                                       ; $4365: $65
    rlca                                          ; $4366: $07
    rlca                                          ; $4367: $07
    xor l                                         ; $4368: $ad
    rrca                                          ; $4369: $0f
    rst $38                                       ; $436a: $ff
    ldh [$1f], a                                  ; $436b: $e0 $1f
    rra                                           ; $436d: $1f
    sub d                                         ; $436e: $92
    ld l, b                                       ; $436f: $68
    add b                                         ; $4370: $80
    adc e                                         ; $4371: $8b
    ret nz                                        ; $4372: $c0

    ldh a, [rPCM34]                               ; $4373: $f0 $77
    ld de, $181f                                  ; $4375: $11 $1f $18
    ld c, $c2                                     ; $4378: $0e $c2
    ld [$090f], sp                                ; $437a: $08 $0f $09
    rst $18                                       ; $437d: $df
    pop hl                                        ; $437e: $e1
    ld d, e                                       ; $437f: $53
    rrca                                          ; $4380: $0f
    rst $08                                       ; $4381: $cf
    sub h                                         ; $4382: $94
    ldh [$94], a                                  ; $4383: $e0 $94
    add e                                         ; $4385: $83
    xor c                                         ; $4386: $a9
    inc e                                         ; $4387: $1c
    and b                                         ; $4388: $a0
    add b                                         ; $4389: $80
    sub h                                         ; $438a: $94
    adc d                                         ; $438b: $8a
    cp $14                                        ; $438c: $fe $14
    and c                                         ; $438e: $a1
    rst $38                                       ; $438f: $ff
    jr @+$01                                      ; $4390: $18 $ff

    ret z                                         ; $4392: $c8

    cp a                                          ; $4393: $bf
    ld hl, sp-$71                                 ; $4394: $f8 $8f
    rst $28                                       ; $4396: $ef
    ld hl, sp-$61                                 ; $4397: $f8 $9f
    ldh a, [$5f]                                  ; $4399: $f0 $5f
    cp $e0                                        ; $439b: $fe $e0
    rst $38                                       ; $439d: $ff
    ldh a, [rNR23]                                ; $439e: $f0 $18
    ld [hl], a                                    ; $43a0: $77
    jr @+$28                                      ; $43a1: $18 $26

    ld a, $30                                     ; $43a3: $3e $30
    xor c                                         ; $43a5: $a9
    daa                                           ; $43a6: $27
    ccf                                           ; $43a7: $3f
    ld b, b                                       ; $43a8: $40
    and d                                         ; $43a9: $a2
    add d                                         ; $43aa: $82
    db $fd                                        ; $43ab: $fd
    xor h                                         ; $43ac: $ac
    and d                                         ; $43ad: $a2
    add d                                         ; $43ae: $82
    ret c                                         ; $43af: $d8

    rst $38                                       ; $43b0: $ff
    adc a                                         ; $43b1: $8f
    ld hl, sp+$07                                 ; $43b2: $f8 $07
    db $fc                                        ; $43b4: $fc
    or a                                          ; $43b5: $b7
    db $e3                                        ; $43b6: $e3
    cp $f3                                        ; $43b7: $fe $f3
    and d                                         ; $43b9: $a2
    add h                                         ; $43ba: $84
    rst $30                                       ; $43bb: $f7
    rst $18                                       ; $43bc: $df
    sbc c                                         ; $43bd: $99
    ret nz                                        ; $43be: $c0

    rlca                                          ; $43bf: $07
    ld e, a                                       ; $43c0: $5f
    add e                                         ; $43c1: $83
    inc bc                                        ; $43c2: $03
    add e                                         ; $43c3: $83
    inc bc                                        ; $43c4: $03
    pop bc                                        ; $43c5: $c1
    ld h, d                                       ; $43c6: $62
    add b                                         ; $43c7: $80
    ldh [$ec], a                                  ; $43c8: $e0 $ec
    add c                                         ; $43ca: $81
    ld a, [$80b4]                                 ; $43cb: $fa $b4 $80
    db $e3                                        ; $43ce: $e3
    ld c, b                                       ; $43cf: $48
    ldh [$f8], a                                  ; $43d0: $e0 $f8
    rst $38                                       ; $43d2: $ff
    cp $f7                                        ; $43d3: $fe $f7
    rst $38                                       ; $43d5: $ff
    rst $10                                       ; $43d6: $d7
    di                                            ; $43d7: $f3
    ld a, a                                       ; $43d8: $7f
    ld a, c                                       ; $43d9: $79
    or h                                          ; $43da: $b4
    add c                                         ; $43db: $81
    db $e3                                        ; $43dc: $e3
    cpl                                           ; $43dd: $2f
    ldh [rIF], a                                  ; $43de: $e0 $0f
    rst $38                                       ; $43e0: $ff
    cp a                                          ; $43e1: $bf
    ccf                                           ; $43e2: $3f
    rst $30                                       ; $43e3: $f7
    rst $38                                       ; $43e4: $ff
    rst $20                                       ; $43e5: $e7
    rst $38                                       ; $43e6: $ff
    rst $08                                       ; $43e7: $cf
    sbc c                                         ; $43e8: $99
    add b                                         ; $43e9: $80
    ldh [$df], a                                  ; $43ea: $e0 $df
    cp $e0                                        ; $43ec: $fe $e0
    cp $c0                                        ; $43ee: $fe $c0
    db $fc                                        ; $43f0: $fc
    cp $e0                                        ; $43f1: $fe $e0
    ld hl, sp-$80                                 ; $43f3: $f8 $80
    xor e                                         ; $43f5: $ab
    ld hl, sp+$00                                 ; $43f6: $f8 $00
    ld h, b                                       ; $43f8: $60
    and c                                         ; $43f9: $a1
    sub b                                         ; $43fa: $90
    cp $e0                                        ; $43fb: $fe $e0
    ret nc                                        ; $43fd: $d0

    cp $e0                                        ; $43fe: $fe $e0
    ld sp, hl                                     ; $4400: $f9
    ld d, a                                       ; $4401: $57
    rra                                           ; $4402: $1f
    rst $38                                       ; $4403: $ff
    rra                                           ; $4404: $1f
    jp nz, $8381                                  ; $4405: $c2 $81 $83

    jp nz, $c0a0                                  ; $4408: $c2 $a0 $c0

    ei                                            ; $440b: $fb
    ret nz                                        ; $440c: $c0

    db $fc                                        ; $440d: $fc
    ld l, h                                       ; $440e: $6c
    add c                                         ; $440f: $81
    jp nz, $8387                                  ; $4410: $c2 $87 $83

    cp $07                                        ; $4413: $fe $07
    db $fc                                        ; $4415: $fc
    rra                                           ; $4416: $1f
    ld sp, hl                                     ; $4417: $f9
    ld a, d                                       ; $4418: $7a
    ret nc                                        ; $4419: $d0

    add c                                         ; $441a: $81
    cp $ac                                        ; $441b: $fe $ac
    and c                                         ; $441d: $a1
    inc a                                         ; $441e: $3c
    cp $42                                        ; $441f: $fe $42
    cp $54                                        ; $4421: $fe $54
    and b                                         ; $4423: $a0
    ld h, e                                       ; $4424: $63
    ld a, a                                       ; $4425: $7f
    ld a, e                                       ; $4426: $7b
    adc h                                         ; $4427: $8c
    and e                                         ; $4428: $a3
    ld e, c                                       ; $4429: $59
    ret nz                                        ; $442a: $c0

    add b                                         ; $442b: $80
    add b                                         ; $442c: $80
    ld b, b                                       ; $442d: $40
    ld a, a                                       ; $442e: $7f
    inc [hl]                                      ; $442f: $34
    and b                                         ; $4430: $a0
    adc d                                         ; $4431: $8a
    sub $84                                       ; $4432: $d6 $84
    rrca                                          ; $4434: $0f
    and a                                         ; $4435: $a7
    ld b, d                                       ; $4436: $42
    ldh a, [rRP]                                  ; $4437: $f0 $56
    add c                                         ; $4439: $81
    add h                                         ; $443a: $84
    and c                                         ; $443b: $a1
    ld l, d                                       ; $443c: $6a
    ld h, b                                       ; $443d: $60
    add b                                         ; $443e: $80
    db $fc                                        ; $443f: $fc

jr_036_4440:
    ld d, b                                       ; $4440: $50
    add c                                         ; $4441: $81
    ld c, h                                       ; $4442: $4c
    ld h, b                                       ; $4443: $60
    rst $38                                       ; $4444: $ff
    rlca                                          ; $4445: $07

jr_036_4446:
    ld a, [$ff03]                                 ; $4446: $fa $03 $ff
    inc bc                                        ; $4449: $03
    ld sp, hl                                     ; $444a: $f9
    db $fd                                        ; $444b: $fd
    adc b                                         ; $444c: $88
    ld b, b                                       ; $444d: $40
    inc [hl]                                      ; $444e: $34
    add b                                         ; $444f: $80
    rst $38                                       ; $4450: $ff
    rst $38                                       ; $4451: $ff
    ei                                            ; $4452: $fb
    rst $18                                       ; $4453: $df
    db $fc                                        ; $4454: $fc
    adc l                                         ; $4455: $8d
    ccf                                           ; $4456: $3f
    xor a                                         ; $4457: $af
    add [hl]                                      ; $4458: $86
    ld a, a                                       ; $4459: $7f
    pop af                                        ; $445a: $f1
    ld a, [c]                                     ; $445b: $f2
    add a                                         ; $445c: $87
    sub e                                         ; $445d: $93
    and c                                         ; $445e: $a1
    db $f4                                        ; $445f: $f4
    add l                                         ; $4460: $85
    adc [hl]                                      ; $4461: $8e
    sbc a                                         ; $4462: $9f
    cp $98                                        ; $4463: $fe $98
    ld hl, sp-$20                                 ; $4465: $f8 $e0
    ldh [$be], a                                  ; $4467: $e0 $be
    ldh [rVBK], a                                 ; $4469: $e0 $4f
    add d                                         ; $446b: $82
    rst $38                                       ; $446c: $ff
    rst $38                                       ; $446d: $ff
    ld a, a                                       ; $446e: $7f
    pop bc                                        ; $446f: $c1
    ld a, a                                       ; $4470: $7f
    jp $ff7f                                      ; $4471: $c3 $7f $ff


    ld a, l                                       ; $4474: $7d
    rst $38                                       ; $4475: $ff
    di                                            ; $4476: $f3
    ld b, c                                       ; $4477: $41
    jr nc, jr_036_4440                            ; $4478: $30 $c6

jr_036_447a:
    ld h, b                                       ; $447a: $60
    inc d                                         ; $447b: $14
    and c                                         ; $447c: $a1
    pop bc                                        ; $447d: $c1
    ld a, a                                       ; $447e: $7f
    pop hl                                        ; $447f: $e1
    ld a, a                                       ; $4480: $7f
    rst $28                                       ; $4481: $ef
    rst $38                                       ; $4482: $ff
    ld e, a                                       ; $4483: $5f
    rst $38                                       ; $4484: $ff
    ld b, c                                       ; $4485: $41
    ld [hl+], a                                   ; $4486: $22
    add c                                         ; $4487: $81
    add e                                         ; $4488: $83
    add b                                         ; $4489: $80
    rlca                                          ; $448a: $07
    ld hl, sp+$7a                                 ; $448b: $f8 $7a
    ld b, d                                       ; $448d: $42
    ld a, [hl]                                    ; $448e: $7e
    ld b, c                                       ; $448f: $41
    ld [c], a                                     ; $4490: $e2
    ld hl, HeaderManufacturerCode                 ; $4491: $21 $3f $01
    rra                                           ; $4494: $1f
    ld bc, $8f0e                                  ; $4495: $01 $0e $8f
    inc bc                                        ; $4498: $03
    rlca                                          ; $4499: $07
    inc bc                                        ; $449a: $03
    inc bc                                        ; $449b: $03
    ld h, [hl]                                    ; $449c: $66
    and b                                         ; $449d: $a0
    adc d                                         ; $449e: $8a
    and c                                         ; $449f: $a1
    rst $18                                       ; $44a0: $df
    inc hl                                        ; $44a1: $23
    pop bc                                        ; $44a2: $c1
    xor d                                         ; $44a3: $aa
    jr nc, jr_036_4446                            ; $44a4: $30 $a0

    ld b, $37                                     ; $44a6: $06 $37

jr_036_44a8:
    add b                                         ; $44a8: $80
    ld a, a                                       ; $44a9: $7f
    dec [hl]                                      ; $44aa: $35
    ld h, d                                       ; $44ab: $62
    ld [hl], b                                    ; $44ac: $70
    ld a, h                                       ; $44ad: $7c
    ld h, b                                       ; $44ae: $60
    call z, $fffb                                 ; $44af: $cc $fb $ff
    ldh a, [$f0]                                  ; $44b2: $f0 $f0
    and b                                         ; $44b4: $a0
    ld bc, $8300                                  ; $44b5: $01 $00 $83
    add b                                         ; $44b8: $80
    add a                                         ; $44b9: $87
    rst $28                                       ; $44ba: $ef
    add b                                         ; $44bb: $80
    rst $08                                       ; $44bc: $cf
    ret nz                                        ; $44bd: $c0

    ld e, a                                       ; $44be: $5f
    ld l, d                                       ; $44bf: $6a
    and b                                         ; $44c0: $a0
    ld a, a                                       ; $44c1: $7f
    ldh [$c0], a                                  ; $44c2: $e0 $c0
    ld a, $46                                     ; $44c4: $3e $46
    ld h, b                                       ; $44c6: $60
    db $fd                                        ; $44c7: $fd
    ld bc, $03fe                                  ; $44c8: $01 $fe $03
    cp $4e                                        ; $44cb: $fe $4e
    ldh [$fc], a                                  ; $44cd: $e0 $fc
    ldh [$af], a                                  ; $44cf: $e0 $af
    rst $38                                       ; $44d1: $ff
    cp $43                                        ; $44d2: $fe $43
    db $fc                                        ; $44d4: $fc
    ld a, [$0680]                                 ; $44d5: $fa $80 $06
    jr nc, jr_036_447a                            ; $44d8: $30 $a0

    ld a, [$febb]                                 ; $44da: $fa $bb $fe
    ld b, $43                                     ; $44dd: $06 $43
    ldh [$bf], a                                  ; $44df: $e0 $bf
    pop hl                                        ; $44e1: $e1
    sbc a                                         ; $44e2: $9f
    ld a, [$b080]                                 ; $44e3: $fa $80 $b0
    cp a                                          ; $44e6: $bf
    rst $38                                       ; $44e7: $ff
    ret nc                                        ; $44e8: $d0

    ld a, a                                       ; $44e9: $7f
    rst $28                                       ; $44ea: $ef
    ccf                                           ; $44eb: $3f
    sub b                                         ; $44ec: $90
    ld c, a                                       ; $44ed: $4f
    ld h, b                                       ; $44ee: $60
    rst $00                                       ; $44ef: $c7
    rst $28                                       ; $44f0: $ef
    rlca                                          ; $44f1: $07
    rst $38                                       ; $44f2: $ff
    inc a                                         ; $44f3: $3c
    jp $a840                                      ; $44f4: $c3 $40 $a8


    ld hl, sp-$08                                 ; $44f7: $f8 $f8
    ldh a, [rIE]                                  ; $44f9: $f0 $ff
    db $10                                        ; $44fb: $10
    ld hl, sp+$10                                 ; $44fc: $f8 $10
    ld hl, sp-$20                                 ; $44fe: $f8 $e0
    inc l                                         ; $4500: $2c
    ldh [$f4], a                                  ; $4501: $e0 $f4
    ei                                            ; $4503: $fb
    ldh [$3e], a                                  ; $4504: $e0 $3e
    jr nz, jr_036_44a8                            ; $4506: $20 $a0

    ld sp, hl                                     ; $4508: $f9
    rrca                                          ; $4509: $0f
    rst $30                                       ; $450a: $f7
    ld b, $e7                                     ; $450b: $06 $e7
    rst $38                                       ; $450d: $ff
    inc b                                         ; $450e: $04
    rst $20                                       ; $450f: $e7
    rlca                                          ; $4510: $07
    call z, $d707                                 ; $4511: $cc $07 $d7
    rlca                                          ; $4514: $07
    add h                                         ; $4515: $84
    ld a, $a2                                     ; $4516: $3e $a2
    add b                                         ; $4518: $80
    db $fc                                        ; $4519: $fc
    and b                                         ; $451a: $a0
    db $fc                                        ; $451b: $fc
    ld a, h                                       ; $451c: $7c
    jp nz, $a840                                  ; $451d: $c2 $40 $a8

    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    nop                                           ; $4523: $00
    nop                                           ; $4524: $00
    nop                                           ; $4525: $00
    nop                                           ; $4526: $00
    nop                                           ; $4527: $00
    nop                                           ; $4528: $00
    nop                                           ; $4529: $00
    nop                                           ; $452a: $00
    nop                                           ; $452b: $00
    nop                                           ; $452c: $00
    nop                                           ; $452d: $00
    nop                                           ; $452e: $00
    nop                                           ; $452f: $00
    xor a                                         ; $4530: $af
    rst $38                                       ; $4531: $ff
    rst $38                                       ; $4532: $ff
    rst $38                                       ; $4533: $ff
    add b                                         ; $4534: $80
    cp $e1                                        ; $4535: $fe $e1
    cp a                                          ; $4537: $bf
    cp $e0                                        ; $4538: $fe $e0
    sbc a                                         ; $453a: $9f
    or a                                          ; $453b: $b7
    add b                                         ; $453c: $80
    pop bc                                        ; $453d: $c1
    add b                                         ; $453e: $80
    ldh a, [$e0]                                  ; $453f: $f0 $e0
    nop                                           ; $4541: $00
    cp $fe                                        ; $4542: $fe $fe
    ldh [$fc], a                                  ; $4544: $e0 $fc
    sbc $fe                                       ; $4546: $de $fe
    ldh [$f8], a                                  ; $4548: $e0 $f8
    nop                                           ; $454a: $00
    add d                                         ; $454b: $82
    nop                                           ; $454c: $00
    rst $38                                       ; $454d: $ff
    db $ed                                        ; $454e: $ed
    jp $d780                                      ; $454f: $c3 $80 $d7


    rst $00                                       ; $4552: $c7
    add b                                         ; $4553: $80
    adc a                                         ; $4554: $8f
    cp $e0                                        ; $4555: $fe $e0
    add a                                         ; $4557: $87
    cp $e0                                        ; $4558: $fe $e0
    db $e3                                        ; $455a: $e3
    add b                                         ; $455b: $80
    ld a, a                                       ; $455c: $7f
    di                                            ; $455d: $f3
    add b                                         ; $455e: $80
    jp nz, $e200                                  ; $455f: $c2 $00 $e2

    nop                                           ; $4562: $00
    ldh a, [$fe]                                  ; $4563: $f0 $fe
    ldh [rIE], a                                  ; $4565: $e0 $ff
    ldh [rP1], a                                  ; $4567: $e0 $00
    pop hl                                        ; $4569: $e1
    nop                                           ; $456a: $00
    rst $00                                       ; $456b: $c7
    nop                                           ; $456c: $00
    rst $08                                       ; $456d: $cf
    nop                                           ; $456e: $00
    ld [$e1b2], a                                 ; $456f: $ea $b2 $e1
    cp $fe                                        ; $4572: $fe $fe
    ldh [$fc], a                                  ; $4574: $e0 $fc
    cp $e0                                        ; $4576: $fe $e0
    ld hl, sp-$80                                 ; $4578: $f8 $80
    add d                                         ; $457a: $82
    cp a                                          ; $457b: $bf
    add b                                         ; $457c: $80
    rst $38                                       ; $457d: $ff
    nop                                           ; $457e: $00
    rst $38                                       ; $457f: $ff
    nop                                           ; $4580: $00
    ld a, a                                       ; $4581: $7f
    cp $e0                                        ; $4582: $fe $e0
    ccf                                           ; $4584: $3f
    adc $fe                                       ; $4585: $ce $fe
    ldh [$1f], a                                  ; $4587: $e0 $1f
    nop                                           ; $4589: $00
    ld b, c                                       ; $458a: $41
    ld a, [c]                                     ; $458b: $f2
    ldh [$a0], a                                  ; $458c: $e0 $a0
    rst $20                                       ; $458e: $e7
    ld sp, hl                                     ; $458f: $f9
    ld bc, $86fb                                  ; $4590: $01 $fb $86
    rlca                                          ; $4593: $07
    ldh [$e4], a                                  ; $4594: $e0 $e4
    inc a                                         ; $4596: $3c
    ld a, a                                       ; $4597: $7f
    ld a, [hl]                                    ; $4598: $7e
    ld a, a                                       ; $4599: $7f
    ld a, [hl]                                    ; $459a: $7e
    rst $38                                       ; $459b: $ff
    rst $38                                       ; $459c: $ff
    cp $7f                                        ; $459d: $fe $7f
    cp $c2                                        ; $459f: $fe $c2
    add b                                         ; $45a1: $80
    ld [c], a                                     ; $45a2: $e2
    add b                                         ; $45a3: $80
    db $dd                                        ; $45a4: $dd
    ldh a, [$fe]                                  ; $45a5: $f0 $fe
    ldh [$e0], a                                  ; $45a7: $e0 $e0
    add b                                         ; $45a9: $80
    pop hl                                        ; $45aa: $e1
    sub [hl]                                      ; $45ab: $96
    ldh [$cf], a                                  ; $45ac: $e0 $cf
    add b                                         ; $45ae: $80
    rst $38                                       ; $45af: $ff
    ret z                                         ; $45b0: $c8

    rrca                                          ; $45b1: $0f
    ldh a, [$1f]                                  ; $45b2: $f0 $1f
    ldh [$3f], a                                  ; $45b4: $e0 $3f
    db $e3                                        ; $45b6: $e3
    ccf                                           ; $45b7: $3f
    rst $38                                       ; $45b8: $ff
    call nz, $c87f                                ; $45b9: $c4 $7f $c8
    ld a, a                                       ; $45bc: $7f
    ret                                           ; $45bd: $c9


    ld a, a                                       ; $45be: $7f
    db $db                                        ; $45bf: $db
    ld a, [hl]                                    ; $45c0: $7e
    ld a, l                                       ; $45c1: $7d
    dec a                                         ; $45c2: $3d
    xor a                                         ; $45c3: $af
    ldh [$fc], a                                  ; $45c4: $e0 $fc
    rst $38                                       ; $45c6: $ff
    rst $08                                       ; $45c7: $cf
    rst $38                                       ; $45c8: $ff
    ld c, c                                       ; $45c9: $49
    and a                                         ; $45ca: $a7
    ldh [$cf], a                                  ; $45cb: $e0 $cf

jr_036_45cd:
    add [hl]                                      ; $45cd: $86
    rst $38                                       ; $45ce: $ff
    rst $08                                       ; $45cf: $cf
    ld a, c                                       ; $45d0: $79
    add b                                         ; $45d1: $80
    ldh [$d0], a                                  ; $45d2: $e0 $d0
    ldh [rSVBK], a                                ; $45d4: $e0 $70
    ret nz                                        ; $45d6: $c0

    rst $38                                       ; $45d7: $ff
    ldh [$c0], a                                  ; $45d8: $e0 $c0
    pop hl                                        ; $45da: $e1
    ret nz                                        ; $45db: $c0

    rst $00                                       ; $45dc: $c7
    ret nz                                        ; $45dd: $c0

    rst $08                                       ; $45de: $cf
    ret nz                                        ; $45df: $c0

    ld hl, sp+$32                                 ; $45e0: $f8 $32
    db $e3                                        ; $45e2: $e3
    jr nc, jr_036_45cd                            ; $45e3: $30 $e8

    adc [hl]                                      ; $45e5: $8e
    pop hl                                        ; $45e6: $e1
    ld bc, $01ff                                  ; $45e7: $01 $ff $01
    db $fd                                        ; $45ea: $fd
    ld bc, $30fe                                  ; $45eb: $01 $fe $30
    db $e3                                        ; $45ee: $e3
    ei                                            ; $45ef: $fb
    ld a, [hl]                                    ; $45f0: $7e
    sbc e                                         ; $45f1: $9b
    cp $5b                                        ; $45f2: $fe $5b
    cp $20                                        ; $45f4: $fe $20
    ei                                            ; $45f6: $fb
    rst $38                                       ; $45f7: $ff
    jr nz, jr_036_4603                            ; $45f8: $20 $09

    ldh [$f8], a                                  ; $45fa: $e0 $f8
    rst $38                                       ; $45fc: $ff
    ld a, h                                       ; $45fd: $7c
    ld a, a                                       ; $45fe: $7f
    rst $08                                       ; $45ff: $cf
    cp a                                          ; $4600: $bf
    db $fd                                        ; $4601: $fd
    rst $08                                       ; $4602: $cf

jr_036_4603:
    db $fd                                        ; $4603: $fd
    adc $fd                                       ; $4604: $ce $fd
    jr jr_036_4661                                ; $4606: $18 $59

    ldh [$f8], a                                  ; $4608: $e0 $f8
    cp $d7                                        ; $460a: $fe $d7
    ld [c], a                                     ; $460c: $e2
    rst $38                                       ; $460d: $ff
    ldh [$9f], a                                  ; $460e: $e0 $9f
    ldh a, [$9f]                                  ; $4610: $f0 $9f
    ldh a, [$5f]                                  ; $4612: $f0 $5f
    cp $fe                                        ; $4614: $fe $fe
    ldh [$7f], a                                  ; $4616: $e0 $7f
    ldh [$9f], a                                  ; $4618: $e0 $9f
    add b                                         ; $461a: $80
    ld b, c                                       ; $461b: $41
    nop                                           ; $461c: $00
    ld b, a                                       ; $461d: $47
    rst $38                                       ; $461e: $ff
    rlca                                          ; $461f: $07
    ld c, a                                       ; $4620: $4f
    ld c, $1f                                     ; $4621: $0e $1f
    rra                                           ; $4623: $1f
    dec a                                         ; $4624: $3d
    ccf                                           ; $4625: $3f
    ld a, $ff                                     ; $4626: $3e $ff
    ccf                                           ; $4628: $3f
    rst $38                                       ; $4629: $ff
    ld a, a                                       ; $462a: $7f
    ldh [$7f], a                                  ; $462b: $e0 $7f
    ret nz                                        ; $462d: $c0

    ld a, a                                       ; $462e: $7f
    rlca                                          ; $462f: $07
    rst $38                                       ; $4630: $ff
    rst $38                                       ; $4631: $ff
    rst $38                                       ; $4632: $ff
    cp $ff                                        ; $4633: $fe $ff
    inc a                                         ; $4635: $3c
    rst $20                                       ; $4636: $e7
    cp $83                                        ; $4637: $fe $83
    db $fd                                        ; $4639: $fd
    rst $38                                       ; $463a: $ff
    cp $e1                                        ; $463b: $fe $e1
    inc bc                                        ; $463d: $03
    rst $38                                       ; $463e: $ff
    ld b, e                                       ; $463f: $43
    nop                                           ; $4640: $00
    rst $00                                       ; $4641: $c7
    add b                                         ; $4642: $80
    rst $38                                       ; $4643: $ff
    rst $28                                       ; $4644: $ef
    ldh [rIE], a                                  ; $4645: $e0 $ff
    ldh a, [$bf]                                  ; $4647: $f0 $bf
    ld hl, sp-$21                                 ; $4649: $f8 $df
    db $fc                                        ; $464b: $fc
    rst $38                                       ; $464c: $ff
    rst $10                                       ; $464d: $d7
    db $fc                                        ; $464e: $fc
    rst $20                                       ; $464f: $e7
    db $fc                                        ; $4650: $fc
    ret nz                                        ; $4651: $c0

    ld a, a                                       ; $4652: $7f
    ldh [$3f], a                                  ; $4653: $e0 $3f
    rst $18                                       ; $4655: $df
    rst $38                                       ; $4656: $ff
    rra                                           ; $4657: $1f
    db $fc                                        ; $4658: $fc
    rrca                                          ; $4659: $0f
    ld hl, sp+$48                                 ; $465a: $f8 $48
    ldh [rIE], a                                  ; $465c: $e0 $ff
    rra                                           ; $465e: $1f
    di                                            ; $465f: $f3
    sub b                                         ; $4660: $90

jr_036_4661:
    rra                                           ; $4661: $1f
    ret nc                                        ; $4662: $d0

    ldh [$ad], a                                  ; $4663: $e0 $ad
    pop bc                                        ; $4665: $c1
    rst $38                                       ; $4666: $ff
    ld b, $ff                                     ; $4667: $06 $ff
    inc e                                         ; $4669: $1c
    cp $95                                        ; $466a: $fe $95
    ret nz                                        ; $466c: $c0

    ld [hl], b                                    ; $466d: $70
    rst $38                                       ; $466e: $ff
    rst $20                                       ; $466f: $e7
    db $fc                                        ; $4670: $fc
    rst $28                                       ; $4671: $ef
    ld hl, sp-$02                                 ; $4672: $f8 $fe
    rst $38                                       ; $4674: $ff
    ldh a, [rNR34]                                ; $4675: $f0 $1e
    ldh a, [$3c]                                  ; $4677: $f0 $3c
    ldh [$3c], a                                  ; $4679: $e0 $3c
    ldh [$f8], a                                  ; $467b: $e0 $f8
    rst $10                                       ; $467d: $d7
    ldh [rSCY], a                                 ; $467e: $e0 $42
    ret nz                                        ; $4680: $c0

    db $10                                        ; $4681: $10
    db $eb                                        ; $4682: $eb
    rst $38                                       ; $4683: $ff
    or b                                          ; $4684: $b0
    ldh [rBGP], a                                 ; $4685: $e0 $47
    nop                                           ; $4687: $00
    db $fd                                        ; $4688: $fd
    rrca                                          ; $4689: $0f
    cp $e0                                        ; $468a: $fe $e0
    rlca                                          ; $468c: $07
    nop                                           ; $468d: $00
    add a                                         ; $468e: $87
    nop                                           ; $468f: $00
    db $e3                                        ; $4690: $e3
    nop                                           ; $4691: $00
    cp $f0                                        ; $4692: $fe $f0
    ld [c], a                                     ; $4694: $e2
    ld bc, $030e                                  ; $4695: $01 $0e $03
    inc c                                         ; $4698: $0c
    rlca                                          ; $4699: $07
    inc b                                         ; $469a: $04
    rlca                                          ; $469b: $07
    rst $30                                       ; $469c: $f7
    add a                                         ; $469d: $87
    rlca                                          ; $469e: $07
    db $e4                                        ; $469f: $e4
    add e                                         ; $46a0: $83
    ldh [$fc], a                                  ; $46a1: $e0 $fc
    ccf                                           ; $46a3: $3f
    rst $38                                       ; $46a4: $ff
    db $e3                                        ; $46a5: $e3
    sbc a                                         ; $46a6: $9f
    rra                                           ; $46a7: $1f
    ldh a, [rIF]                                  ; $46a8: $f0 $0f
    rst $38                                       ; $46aa: $ff
    ld [$c047], sp                                ; $46ab: $08 $47 $c0
    ld d, d                                       ; $46ae: $52
    ldh [rIE], a                                  ; $46af: $e0 $ff
    rst $38                                       ; $46b1: $ff
    rst $18                                       ; $46b2: $df
    rst $18                                       ; $46b3: $df
    rst $18                                       ; $46b4: $df
    sub b                                         ; $46b5: $90
    sbc a                                         ; $46b6: $9f
    sub c                                         ; $46b7: $91
    sbc [hl]                                      ; $46b8: $9e
    sbc a                                         ; $46b9: $9f
    rst $30                                       ; $46ba: $f7
    sub d                                         ; $46bb: $92
    sbc a                                         ; $46bc: $9f
    sbc a                                         ; $46bd: $9f
    ld b, a                                       ; $46be: $47
    ldh [rIE], a                                  ; $46bf: $e0 $ff
    rst $38                                       ; $46c1: $ff
    jp nz, $ffc0                                  ; $46c2: $c2 $c0 $ff

    ld a, [c]                                     ; $46c5: $f2
    ldh a, [$08]                                  ; $46c6: $f0 $08
    ld hl, sp+$04                                 ; $46c8: $f8 $04
    db $fc                                        ; $46ca: $fc
    inc b                                         ; $46cb: $04
    db $fc                                        ; $46cc: $fc
    xor a                                         ; $46cd: $af
    db $fd                                        ; $46ce: $fd
    db $fc                                        ; $46cf: $fc
    rlca                                          ; $46d0: $07
    db $fc                                        ; $46d1: $fc
    add l                                         ; $46d2: $85
    ld [c], a                                     ; $46d3: $e2
    nop                                           ; $46d4: $00
    ld e, c                                       ; $46d5: $59
    ldh [rTAC], a                                 ; $46d6: $e0 $07
    sbc $fe                                       ; $46d8: $de $fe
    ldh [$1f], a                                  ; $46da: $e0 $1f
    rst $20                                       ; $46dc: $e7
    ld a, a                                       ; $46dd: $7f
    add e                                         ; $46de: $83
    ldh a, [$e3]                                  ; $46df: $f0 $e3
    ret nz                                        ; $46e1: $c0

    rst $38                                       ; $46e2: $ff
    xor l                                         ; $46e3: $ad
    ldh [$fe], a                                  ; $46e4: $e0 $fe
    db $e3                                        ; $46e6: $e3
    pop de                                        ; $46e7: $d1
    ldh a, [$60]                                  ; $46e8: $f0 $60
    call z, $6001                                 ; $46ea: $cc $01 $60
    ret                                           ; $46ed: $c9


    ld hl, sp+$73                                 ; $46ee: $f8 $73
    nop                                           ; $46f0: $00
    ld a, [$c1eb]                                 ; $46f1: $fa $eb $c1
    ld b, b                                       ; $46f4: $40
    rst $00                                       ; $46f5: $c7
    ld bc, $1f5e                                  ; $46f6: $01 $5e $1f
    ldh [$ea], a                                  ; $46f9: $e0 $ea
    ld a, a                                       ; $46fb: $7f
    ld hl, sp+$06                                 ; $46fc: $f8 $06
    cp $43                                        ; $46fe: $fe $43
    ld bc, $0346                                  ; $4700: $01 $46 $03
    ld h, b                                       ; $4703: $60
    db $e3                                        ; $4704: $e3
    rst $38                                       ; $4705: $ff
    add h                                         ; $4706: $84
    rlca                                          ; $4707: $07
    push hl                                       ; $4708: $e5
    rlca                                          ; $4709: $07
    rst $30                                       ; $470a: $f7
    rlca                                          ; $470b: $07
    nop                                           ; $470c: $00
    rst $38                                       ; $470d: $ff
    rst $38                                       ; $470e: $ff
    rrca                                          ; $470f: $0f
    rst $38                                       ; $4710: $ff
    inc a                                         ; $4711: $3c
    rst $38                                       ; $4712: $ff
    ld b, h                                       ; $4713: $44
    rst $38                                       ; $4714: $ff
    sbc b                                         ; $4715: $98
    rst $38                                       ; $4716: $ff
    rst $38                                       ; $4717: $ff
    cp h                                          ; $4718: $bc
    rst $20                                       ; $4719: $e7
    cp h                                          ; $471a: $bc
    rst $28                                       ; $471b: $ef
    inc a                                         ; $471c: $3c
    rst $28                                       ; $471d: $ef
    dec bc                                        ; $471e: $0b
    ld hl, sp-$01                                 ; $471f: $f8 $ff
    rst $08                                       ; $4721: $cf
    ld hl, sp-$09                                 ; $4722: $f8 $f7
    db $fc                                        ; $4724: $fc
    sbc a                                         ; $4725: $9f
    db $fc                                        ; $4726: $fc
    ld l, a                                       ; $4727: $6f
    db $fc                                        ; $4728: $fc
    rst $38                                       ; $4729: $ff
    rst $38                                       ; $472a: $ff
    sbc h                                         ; $472b: $9c
    rst $38                                       ; $472c: $ff
    call c, $dcff                                 ; $472d: $dc $ff $dc
    ld e, [hl]                                    ; $4730: $5e
    rra                                           ; $4731: $1f
    cp e                                          ; $4732: $bb
    ld a, [hl]                                    ; $4733: $7e
    ccf                                           ; $4734: $3f
    rst $38                                       ; $4735: $ff
    pop hl                                        ; $4736: $e1
    ld a, $3f                                     ; $4737: $3e $3f
    call c, $c0b2                                 ; $4739: $dc $b2 $c0
    rst $38                                       ; $473c: $ff
    and a                                         ; $473d: $a7
    ld a, a                                       ; $473e: $7f
    ld b, $fe                                     ; $473f: $06 $fe
    adc l                                         ; $4741: $8d
    ld [c], a                                     ; $4742: $e2
    db $fc                                        ; $4743: $fc
    db $e4                                        ; $4744: $e4
    ldh [rP1], a                                  ; $4745: $e0 $00
    ld [c], a                                     ; $4747: $e2
    adc a                                         ; $4748: $8f
    rst $38                                       ; $4749: $ff
    add b                                         ; $474a: $80
    ld c, a                                       ; $474b: $4f
    ret nz                                        ; $474c: $c0

    ld b, a                                       ; $474d: $47
    ret nz                                        ; $474e: $c0

    daa                                           ; $474f: $27
    ldh [rNR44], a                                ; $4750: $e0 $23
    cp a                                          ; $4752: $bf
    ldh [$33], a                                  ; $4753: $e0 $33
    ldh [$7e], a                                  ; $4755: $e0 $7e
    ccf                                           ; $4757: $3f
    ld a, a                                       ; $4758: $7f
    jp nc, Jump_036_5ce2                          ; $4759: $d2 $e2 $5c

    sub $d2                                       ; $475c: $d6 $d2
    ld [c], a                                     ; $475e: $e2
    ld hl, sp+$7f                                 ; $475f: $f8 $7f
    jp nc, $feeb                                  ; $4761: $d2 $eb $fe

    add b                                         ; $4764: $80
    jp nz, $c04f                                  ; $4765: $c2 $4f $c0

    ld sp, hl                                     ; $4768: $f9
    ld c, a                                       ; $4769: $4f
    jp nc, $d0e0                                  ; $476a: $d2 $e0 $d0

    db $e3                                        ; $476d: $e3
    ld sp, hl                                     ; $476e: $f9
    rrca                                          ; $476f: $0f
    rst $30                                       ; $4770: $f7
    rra                                           ; $4771: $1f
    di                                            ; $4772: $f3
    rst $18                                       ; $4773: $df
    rra                                           ; $4774: $1f
    ld a, [c]                                     ; $4775: $f2
    rra                                           ; $4776: $1f
    ld hl, sp+$0f                                 ; $4777: $f8 $0f
    ld [hl], a                                    ; $4779: $77
    ldh [rTAC], a                                 ; $477a: $e0 $07
    add d                                         ; $477c: $82
    sub a                                         ; $477d: $97

jr_036_477e:
    nop                                           ; $477e: $00
    inc a                                         ; $477f: $3c
    rst $28                                       ; $4780: $ef
    dec l                                         ; $4781: $2d
    pop hl                                        ; $4782: $e1
    db $10                                        ; $4783: $10
    ld l, d                                       ; $4784: $6a
    ldh [$09], a                                  ; $4785: $e0 $09
    pop hl                                        ; $4787: $e1
    ldh a, [$bf]                                  ; $4788: $f0 $bf
    rst $38                                       ; $478a: $ff
    db $eb                                        ; $478b: $eb
    sbc $85                                       ; $478c: $de $85
    rst $38                                       ; $478e: $ff
    dec b                                         ; $478f: $05
    cp $e0                                        ; $4790: $fe $e0
    add [hl]                                      ; $4792: $86
    ld a, a                                       ; $4793: $7f
    cp $0c                                        ; $4794: $fe $0c
    ld hl, sp+$19                                 ; $4796: $f8 $19
    pop af                                        ; $4798: $f1
    ld a, e                                       ; $4799: $7b
    ei                                            ; $479a: $fb
    ld h, b                                       ; $479b: $60
    and l                                         ; $479c: $a5
    rst $38                                       ; $479d: $ff
    ld a, a                                       ; $479e: $7f
    ld [hl], b                                    ; $479f: $70
    rst $38                                       ; $47a0: $ff
    adc b                                         ; $47a1: $88

jr_036_47a2:
    rst $38                                       ; $47a2: $ff
    inc h                                         ; $47a3: $24
    rst $38                                       ; $47a4: $ff
    ld b, d                                       ; $47a5: $42
    rst $38                                       ; $47a6: $ff
    ld hl, sp+$7f                                 ; $47a7: $f8 $7f
    call z, $d87f                                 ; $47a9: $cc $7f $d8
    ld a, a                                       ; $47ac: $7f
    db $fc                                        ; $47ad: $fc
    cpl                                           ; $47ae: $2f
    cp $fe                                        ; $47af: $fe $fe
    pop hl                                        ; $47b1: $e1
    call c, $c667                                 ; $47b2: $dc $67 $c6
    ld a, a                                       ; $47b5: $7f
    cp $ff                                        ; $47b6: $fe $ff
    adc a                                         ; $47b8: $8f
    cp a                                          ; $47b9: $bf
    rst $38                                       ; $47ba: $ff
    ld h, a                                       ; $47bb: $67
    rst $38                                       ; $47bc: $ff
    rst $30                                       ; $47bd: $f7
    cp a                                          ; $47be: $bf
    ld a, [c]                                     ; $47bf: $f2
    cp $e0                                        ; $47c0: $fe $e0
    ldh a, [rIE]                                  ; $47c2: $f0 $ff
    sbc a                                         ; $47c4: $9f
    nop                                           ; $47c5: $00
    rst $38                                       ; $47c6: $ff
    ccf                                           ; $47c7: $3f
    ldh [$9f], a                                  ; $47c8: $e0 $9f
    ld hl, sp-$1a                                 ; $47ca: $f8 $e6
    rst $38                                       ; $47cc: $ff
    db $fc                                        ; $47cd: $fc
    ld a, [hl-]                                   ; $47ce: $3a
    cp $df                                        ; $47cf: $fe $df
    rst $38                                       ; $47d1: $ff
    ld e, a                                       ; $47d2: $5f
    ld a, [c]                                     ; $47d3: $f2
    ld e, e                                       ; $47d4: $5b
    rst $00                                       ; $47d5: $c7
    ld a, [c]                                     ; $47d6: $f2
    daa                                           ; $47d7: $27
    db $e4                                        ; $47d8: $e4
    jr nz, jr_036_477e                            ; $47d9: $20 $a3

    xor [hl]                                      ; $47db: $ae
    ret nz                                        ; $47dc: $c0

    xor l                                         ; $47dd: $ad
    and c                                         ; $47de: $a1
    jr nz, jr_036_47a2                            ; $47df: $20 $c1

    db $ed                                        ; $47e1: $ed
    ld b, b                                       ; $47e2: $40
    jp nz, $c0eb                                  ; $47e3: $c2 $eb $c0

    ld a, a                                       ; $47e6: $7f
    jp nz, Jump_000_11eb                          ; $47e7: $c2 $eb $11

    rst $38                                       ; $47ea: $ff
    sbc a                                         ; $47eb: $9f
    ei                                            ; $47ec: $fb
    ld hl, sp-$19                                 ; $47ed: $f8 $e7
    jp nz, $dee0                                  ; $47ef: $c2 $e0 $de

    cp $5c                                        ; $47f2: $fe $5c
    ldh a, [$5f]                                  ; $47f4: $f0 $5f
    sbc a                                         ; $47f6: $9f
    di                                            ; $47f7: $f3
    ccf                                           ; $47f8: $3f
    db $e4                                        ; $47f9: $e4
    rst $08                                       ; $47fa: $cf
    ret z                                         ; $47fb: $c8

    ldh [$89], a                                  ; $47fc: $e0 $89
    add b                                         ; $47fe: $80
    add c                                         ; $47ff: $81
    rst $00                                       ; $4800: $c7
    rst $38                                       ; $4801: $ff
    rlca                                          ; $4802: $07
    ld [$f40f], a                                 ; $4803: $ea $0f $f4
    rra                                           ; $4806: $1f
    ldh a, [$1f]                                  ; $4807: $f0 $1f
    db $f4                                        ; $4809: $f4
    rst $38                                       ; $480a: $ff
    rra                                           ; $480b: $1f
    ld a, [$cf1f]                                 ; $480c: $fa $1f $cf
    rrca                                          ; $480f: $0f
    rst $08                                       ; $4810: $cf
    nop                                           ; $4811: $00
    rra                                           ; $4812: $1f
    rst $38                                       ; $4813: $ff
    rst $38                                       ; $4814: $ff
    ld c, a                                       ; $4815: $4f
    rst $38                                       ; $4816: $ff
    cpl                                           ; $4817: $2f
    rst $38                                       ; $4818: $ff
    rla                                           ; $4819: $17
    rst $38                                       ; $481a: $ff
    daa                                           ; $481b: $27
    ei                                            ; $481c: $fb
    rst $38                                       ; $481d: $ff
    ld a, a                                       ; $481e: $7f
    or [hl]                                       ; $481f: $b6
    and d                                         ; $4820: $a2
    rst $38                                       ; $4821: $ff
    cp [hl]                                       ; $4822: $be
    rst $28                                       ; $4823: $ef
    ld a, $f5                                     ; $4824: $3e $f5
    ccf                                           ; $4826: $3f
    cp a                                          ; $4827: $bf
    db $f4                                        ; $4828: $f4
    rst $38                                       ; $4829: $ff
    ld a, [$fbff]                                 ; $482a: $fa $ff $fb
    di                                            ; $482d: $f3
    and b                                         ; $482e: $a0
    push af                                       ; $482f: $f5
    add b                                         ; $4830: $80
    rst $38                                       ; $4831: $ff
    jp nz, Jump_036_62ff                          ; $4832: $c2 $ff $62

    rst $38                                       ; $4835: $ff
    inc [hl]                                      ; $4836: $34
    rst $38                                       ; $4837: $ff
    ld hl, sp+$27                                 ; $4838: $f8 $27

jr_036_483a:
    ld a, a                                       ; $483a: $7f
    ldh [$c7], a                                  ; $483b: $e0 $c7
    ret nz                                        ; $483d: $c0

    db $e3                                        ; $483e: $e3
    nop                                           ; $483f: $00
    di                                            ; $4840: $f3

jr_036_4841:
    nop                                           ; $4841: $00
    add b                                         ; $4842: $80
    and c                                         ; $4843: $a1
    db $fd                                        ; $4844: $fd
    ldh a, [$80]                                  ; $4845: $f0 $80
    and b                                         ; $4847: $a0
    db $e3                                        ; $4848: $e3
    inc bc                                        ; $4849: $03
    pop hl                                        ; $484a: $e1
    ld bc, $0ccf                                  ; $484b: $01 $cf $0c
    rst $38                                       ; $484e: $ff
    db $db                                        ; $484f: $db
    rra                                           ; $4850: $1f
    ld de, $e3ff                                  ; $4851: $11 $ff $e3
    cp $07                                        ; $4854: $fe $07
    db $fd                                        ; $4856: $fd
    cp a                                          ; $4857: $bf
    rra                                           ; $4858: $1f
    rst $38                                       ; $4859: $ff
    rst $38                                       ; $485a: $ff
    add sp, -$01                                  ; $485b: $e8 $ff
    ld l, b                                       ; $485d: $68
    rst $00                                       ; $485e: $c7
    add b                                         ; $485f: $80
    rst $38                                       ; $4860: $ff
    cp e                                          ; $4861: $bb
    rst $00                                       ; $4862: $c7
    call nz, $a009                                ; $4863: $c4 $09 $a0
    pop af                                        ; $4866: $f1
    rst $38                                       ; $4867: $ff
    jp $82e8                                      ; $4868: $c3 $e8 $82


    ld h, a                                       ; $486b: $67
    cp a                                          ; $486c: $bf
    rst $38                                       ; $486d: $ff
    ret z                                         ; $486e: $c8

    rst $08                                       ; $486f: $cf
    ld c, h                                       ; $4870: $4c
    rst $38                                       ; $4871: $ff
    or d                                          ; $4872: $b2
    cp h                                          ; $4873: $bc
    ldh [rDIV], a                                 ; $4874: $e0 $04
    cp e                                          ; $4876: $bb
    rst $38                                       ; $4877: $ff
    jr c, jr_036_483a                             ; $4878: $38 $c0

    ldh [rNR41], a                                ; $487a: $e0 $20
    di                                            ; $487c: $f3
    jr nc, jr_036_4841                            ; $487d: $30 $c2

    db $e3                                        ; $487f: $e3
    di                                            ; $4880: $f3
    ld a, [hl]                                    ; $4881: $7e
    jp nz, $f9e0                                  ; $4882: $c2 $e0 $f9

    jr @-$07                                      ; $4885: $18 $f7

    ccf                                           ; $4887: $3f
    jp nc, $c27f                                  ; $4888: $d2 $7f $c2

    ld [c], a                                     ; $488b: $e2
    sbc a                                         ; $488c: $9f
    ei                                            ; $488d: $fb
    rst $38                                       ; $488e: $ff
    db $e4                                        ; $488f: $e4
    rst $38                                       ; $4890: $ff
    ld l, h                                       ; $4891: $6c
    scf                                           ; $4892: $37
    and c                                         ; $4893: $a1
    ld a, h                                       ; $4894: $7c
    ldh [$f1], a                                  ; $4895: $e0 $f1
    rst $28                                       ; $4897: $ef
    cp $e2                                        ; $4898: $fe $e2
    rst $38                                       ; $489a: $ff
    rst $00                                       ; $489b: $c7
    xor h                                         ; $489c: $ac
    add d                                         ; $489d: $82
    adc [hl]                                      ; $489e: $8e
    rst $38                                       ; $489f: $ff
    ret z                                         ; $48a0: $c8

    cp a                                          ; $48a1: $bf
    rst $38                                       ; $48a2: $ff
    rst $30                                       ; $48a3: $f7
    ld b, e                                       ; $48a4: $43
    nop                                           ; $48a5: $00
    rst $20                                       ; $48a6: $e7
    ldh [$a1], a                                  ; $48a7: $e0 $a1
    ret nz                                        ; $48a9: $c0

    db $10                                        ; $48aa: $10
    cp e                                          ; $48ab: $bb
    rst $20                                       ; $48ac: $e7
    ldh [$f0], a                                  ; $48ad: $e0 $f0
    ld h, b                                       ; $48af: $60
    ret nz                                        ; $48b0: $c0

    di                                            ; $48b1: $f3
    ld b, b                                       ; $48b2: $40
    sub d                                         ; $48b3: $92
    add c                                         ; $48b4: $81
    ld a, [hl]                                    ; $48b5: $7e
    rst $38                                       ; $48b6: $ff
    inc bc                                        ; $48b7: $03
    ld a, a                                       ; $48b8: $7f
    inc bc                                        ; $48b9: $03
    ld a, $03                                     ; $48ba: $3e $03
    inc a                                         ; $48bc: $3c
    rlca                                          ; $48bd: $07
    rra                                           ; $48be: $1f
    ld c, a                                       ; $48bf: $4f
    rlca                                          ; $48c0: $07
    ld b, a                                       ; $48c1: $47
    inc b                                         ; $48c2: $04
    ldh a, [$a1]                                  ; $48c3: $f0 $a1
    ld h, b                                       ; $48c5: $60
    adc a                                         ; $48c6: $8f
    and c                                         ; $48c7: $a1
    ld sp, $a0e8                                  ; $48c8: $31 $e8 $a0
    rst $38                                       ; $48cb: $ff
    ret z                                         ; $48cc: $c8

    ld hl, sp-$0e                                 ; $48cd: $f8 $f2
    jr nc, jr_036_4950                            ; $48cf: $30 $7f

jr_036_48d1:
    db $fc                                        ; $48d1: $fc
    rlca                                          ; $48d2: $07
    cp $ff                                        ; $48d3: $fe $ff
    inc bc                                        ; $48d5: $03
    cp $c1                                        ; $48d6: $fe $c1
    rst $38                                       ; $48d8: $ff
    add a                                         ; $48d9: $87
    rst $38                                       ; $48da: $ff
    jr c, @+$01                                   ; $48db: $38 $ff

    rst $08                                       ; $48dd: $cf
    pop bc                                        ; $48de: $c1
    rst $38                                       ; $48df: $ff
    ld h, a                                       ; $48e0: $67
    ld a, [hl]                                    ; $48e1: $7e
    ldh a, [rBCPS]                                ; $48e2: $f0 $68
    ret nc                                        ; $48e4: $d0

    ld h, b                                       ; $48e5: $60
    jp nz, $ff40                                  ; $48e6: $c2 $40 $ff

    jp hl                                         ; $48e9: $e9


    ccf                                           ; $48ea: $3f
    push bc                                       ; $48eb: $c5
    ld a, a                                       ; $48ec: $7f
    ld b, e                                       ; $48ed: $43
    ld a, a                                       ; $48ee: $7f
    ld h, c                                       ; $48ef: $61
    ccf                                           ; $48f0: $3f
    rst $38                                       ; $48f1: $ff
    ld [hl-], a                                   ; $48f2: $32
    rra                                           ; $48f3: $1f
    ccf                                           ; $48f4: $3f
    rrca                                          ; $48f5: $0f
    jr jr_036_4917                                ; $48f6: $18 $1f

    ld d, b                                       ; $48f8: $50
    rra                                           ; $48f9: $1f
    cp b                                          ; $48fa: $b8
    db $dd                                        ; $48fb: $dd
    and b                                         ; $48fc: $a0
    adc b                                         ; $48fd: $88
    ld [c], a                                     ; $48fe: $e2
    ld b, b                                       ; $48ff: $40
    pop bc                                        ; $4900: $c1
    adc h                                         ; $4901: $8c
    rst $38                                       ; $4902: $ff
    ld b, [hl]                                    ; $4903: $46
    jr c, @-$1d                                   ; $4904: $38 $e1

    rst $30                                       ; $4906: $f7
    ld a, a                                       ; $4907: $7f
    rst $38                                       ; $4908: $ff
    db $fc                                        ; $4909: $fc
    ei                                            ; $490a: $fb
    rst $38                                       ; $490b: $ff
    jp Jump_000_03fe                              ; $490c: $c3 $fe $03


    jr c, jr_036_48d1                             ; $490f: $38 $c0

    ld a, $fa                                     ; $4911: $3e $fa
    add b                                         ; $4913: $80
    ret nc                                        ; $4914: $d0

    rst $38                                       ; $4915: $ff
    sub b                                         ; $4916: $90

jr_036_4917:
    cp $60                                        ; $4917: $fe $60
    sub b                                         ; $4919: $90
    ld h, b                                       ; $491a: $60
    ld d, b                                       ; $491b: $50
    ld h, c                                       ; $491c: $61
    rst $28                                       ; $491d: $ef
    add b                                         ; $491e: $80
    ld [c], a                                     ; $491f: $e2
    ldh [$8a], a                                  ; $4920: $e0 $8a
    ld [$4160], a                                 ; $4922: $ea $60 $41
    ld a, a                                       ; $4925: $7f
    ld h, d                                       ; $4926: $62
    rst $38                                       ; $4927: $ff
    ccf                                           ; $4928: $3f
    ccf                                           ; $4929: $3f
    rra                                           ; $492a: $1f
    inc a                                         ; $492b: $3c
    rlca                                          ; $492c: $07
    jr @+$11                                      ; $492d: $18 $0f

    ld c, b                                       ; $492f: $48
    sbc l                                         ; $4930: $9d
    rrca                                          ; $4931: $0f
    jp nz, $cce7                                  ; $4932: $c2 $e7 $cc

    rst $38                                       ; $4935: $ff
    ld h, $b8                                     ; $4936: $26 $b8
    ret nz                                        ; $4938: $c0

    db $fc                                        ; $4939: $fc
    pop bc                                        ; $493a: $c1
    ei                                            ; $493b: $fb
    db $dd                                        ; $493c: $dd
    cp $c2                                        ; $493d: $fe $c2
    pop hl                                        ; $493f: $e1
    dec c                                         ; $4940: $0d
    rst $38                                       ; $4941: $ff
    jr nc, @+$80                                  ; $4942: $30 $7e

    ldh [rIE], a                                  ; $4944: $e0 $ff
    ld b, b                                       ; $4946: $40
    db $fc                                        ; $4947: $fc
    ld d, b                                       ; $4948: $50
    ld h, b                                       ; $4949: $60
    add b                                         ; $494a: $80
    push hl                                       ; $494b: $e5
    ldh [$d2], a                                  ; $494c: $e0 $d2
    ld [hl], b                                    ; $494e: $70
    ld c, a                                       ; $494f: $4f

jr_036_4950:
    rrca                                          ; $4950: $0f
    ld d, b                                       ; $4951: $50
    xor a                                         ; $4952: $af
    rra                                           ; $4953: $1f
    jr nz, @+$41                                  ; $4954: $20 $3f

    jr nz, @+$5e                                  ; $4956: $20 $5c

    and b                                         ; $4958: $a0
    and b                                         ; $4959: $a0
    jr c, @-$7e                                   ; $495a: $38 $80

    rst $38                                       ; $495c: $ff
    rst $38                                       ; $495d: $ff
    rst $38                                       ; $495e: $ff
    ld a, [c]                                     ; $495f: $f2
    sub b                                         ; $4960: $90
    ld a, [c]                                     ; $4961: $f2
    ret nc                                        ; $4962: $d0

    ld [hl], b                                    ; $4963: $70
    ldh a, [$50]                                  ; $4964: $f0 $50
    rst $18                                       ; $4966: $df
    ldh a, [$f0]                                  ; $4967: $f0 $f0

jr_036_4969:
    ldh a, [rNR11]                                ; $4969: $f0 $11
    ldh a, [rNR21]                                ; $496b: $f0 $16
    ldh [rIE], a                                  ; $496d: $e0 $ff
    ld a, a                                       ; $496f: $7f
    rst $38                                       ; $4970: $ff
    jr c, jr_036_49f2                             ; $4971: $38 $7f

    jr nz, jr_036_4994                            ; $4973: $20 $1f

    add hl, de                                    ; $4975: $19
    ld d, $1f                                     ; $4976: $16 $1f
    ld a, [de]                                    ; $4978: $1a
    ld e, a                                       ; $4979: $5f
    rra                                           ; $497a: $1f
    sub a                                         ; $497b: $97
    rra                                           ; $497c: $1f
    add sp, $0f                                   ; $497d: $e8 $0f
    sub b                                         ; $497f: $90
    add b                                         ; $4980: $80
    ld b, b                                       ; $4981: $40
    sub b                                         ; $4982: $90
    adc e                                         ; $4983: $8b
    sbc [hl]                                      ; $4984: $9e
    adc [hl]                                      ; $4985: $8e
    ldh [$3f], a                                  ; $4986: $e0 $3f
    ld b, e                                       ; $4988: $43
    ld a, [hl]                                    ; $4989: $7e
    add c                                         ; $498a: $81
    xor e                                         ; $498b: $ab
    ld b, b                                       ; $498c: $40
    and a                                         ; $498d: $a7
    ld b, c                                       ; $498e: $41
    rst $38                                       ; $498f: $ff
    rst $38                                       ; $4990: $ff
    rst $38                                       ; $4991: $ff
    cpl                                           ; $4992: $2f
    db $fd                                        ; $4993: $fd

jr_036_4994:
    ld a, [$f0d8]                                 ; $4994: $fa $d8 $f0
    jr nc, jr_036_4969                            ; $4997: $30 $d0

    cp a                                          ; $4999: $bf
    ldh a, [$b0]                                  ; $499a: $f0 $b0
    ldh a, [$d1]                                  ; $499c: $f0 $d1
    ldh a, [$27]                                  ; $499e: $f0 $27
    ret nz                                        ; $49a0: $c0

    ldh [$91], a                                  ; $49a1: $e0 $91
    rst $38                                       ; $49a3: $ff
    rst $38                                       ; $49a4: $ff
    ld h, e                                       ; $49a5: $63
    ld a, a                                       ; $49a6: $7f
    ld e, $1f                                     ; $49a7: $1e $1f
    ld [$080f], sp                                ; $49a9: $08 $0f $08
    rst $30                                       ; $49ac: $f7
    rrca                                          ; $49ad: $0f
    adc a                                         ; $49ae: $8f
    rrca                                          ; $49af: $0f
    ret nz                                        ; $49b0: $c0

    pop hl                                        ; $49b1: $e1
    jp c, $ea78                                   ; $49b2: $da $78 $ea

    ld hl, sp-$29                                 ; $49b5: $f8 $d7
    inc d                                         ; $49b7: $14
    db $fc                                        ; $49b8: $fc
    inc c                                         ; $49b9: $0c
    cp $e0                                        ; $49ba: $fe $e0
    push af                                       ; $49bc: $f5
    ld d, b                                       ; $49bd: $50
    add d                                         ; $49be: $82
    ld b, h                                       ; $49bf: $44
    rlca                                          ; $49c0: $07
    sbc $c0                                       ; $49c1: $de $c0
    db $eb                                        ; $49c3: $eb
    ld a, [hl-]                                   ; $49c4: $3a
    ld hl, sp-$0e                                 ; $49c5: $f8 $f2
    ret nc                                        ; $49c7: $d0

    ret nz                                        ; $49c8: $c0

    jp hl                                         ; $49c9: $e9


    ld h, e                                       ; $49ca: $63
    ld a, [hl]                                    ; $49cb: $7e
    ld l, a                                       ; $49cc: $6f
    ld e, a                                       ; $49cd: $5f
    rra                                           ; $49ce: $1f
    inc c                                         ; $49cf: $0c
    rlca                                          ; $49d0: $07
    ret nz                                        ; $49d1: $c0

    rst $20                                       ; $49d2: $e7
    jp z, $c0f8                                   ; $49d3: $ca $f8 $c0

    db $eb                                        ; $49d6: $eb
    nop                                           ; $49d7: $00
    nop                                           ; $49d8: $00
    nop                                           ; $49d9: $00
    nop                                           ; $49da: $00
    nop                                           ; $49db: $00
    nop                                           ; $49dc: $00
    nop                                           ; $49dd: $00
    nop                                           ; $49de: $00
    nop                                           ; $49df: $00
    rst $28                                       ; $49e0: $ef
    rst $38                                       ; $49e1: $ff
    rst $38                                       ; $49e2: $ff
    rst $38                                       ; $49e3: $ff
    add b                                         ; $49e4: $80
    cp $ea                                        ; $49e5: $fe $ea
    rst $38                                       ; $49e7: $ff
    rst $38                                       ; $49e8: $ff
    nop                                           ; $49e9: $00
    cp $fe                                        ; $49ea: $fe $fe
    ld [$cfff], a                                 ; $49ec: $ea $ff $cf
    nop                                           ; $49ef: $00
    cp b                                          ; $49f0: $b8
    nop                                           ; $49f1: $00

jr_036_49f2:
    ld h, a                                       ; $49f2: $67
    nop                                           ; $49f3: $00
    push bc                                       ; $49f4: $c5
    ld e, l                                       ; $49f5: $5d
    cp $e0                                        ; $49f6: $fe $e0
    ld h, a                                       ; $49f8: $67
    or $e0                                        ; $49f9: $f6 $e0
    rst $38                                       ; $49fb: $ff
    db $ed                                        ; $49fc: $ed
    jp nz, $f0e5                                  ; $49fd: $c2 $e5 $f0

    add b                                         ; $4a00: $80
    cp a                                          ; $4a01: $bf
    rst $08                                       ; $4a02: $cf
    add b                                         ; $4a03: $80
    cp b                                          ; $4a04: $b8
    add b                                         ; $4a05: $80
    rst $20                                       ; $4a06: $e7
    add b                                         ; $4a07: $80
    jp nz, $0fe5                                  ; $4a08: $c2 $e5 $0f

    rst $38                                       ; $4a0b: $ff
    nop                                           ; $4a0c: $00
    di                                            ; $4a0d: $f3
    nop                                           ; $4a0e: $00
    dec e                                         ; $4a0f: $1d
    nop                                           ; $4a10: $00
    and $00                                       ; $4a11: $e6 $00
    rst $08                                       ; $4a13: $cf
    rst $38                                       ; $4a14: $ff
    nop                                           ; $4a15: $00
    ldh a, [rP1]                                  ; $4a16: $f0 $00
    sbc [hl]                                      ; $4a18: $9e
    nop                                           ; $4a19: $00
    add [hl]                                      ; $4a1a: $86
    nop                                           ; $4a1b: $00
    add d                                         ; $4a1c: $82
    rst $38                                       ; $4a1d: $ff
    nop                                           ; $4a1e: $00
    ret nz                                        ; $4a1f: $c0

    nop                                           ; $4a20: $00
    ldh [rP1], a                                  ; $4a21: $e0 $00
    ld hl, sp+$00                                 ; $4a23: $f8 $00
    db $dd                                        ; $4a25: $dd
    db $eb                                        ; $4a26: $eb
    add b                                         ; $4a27: $80
    db $dd                                        ; $4a28: $dd
    jp c, $b8e0                                   ; $4a29: $da $e0 $b8

    jp nc, $f0e0                                  ; $4a2c: $d2 $e0 $f0

    add b                                         ; $4a2f: $80
    sbc [hl]                                      ; $4a30: $9e
    cp a                                          ; $4a31: $bf
    add b                                         ; $4a32: $80
    add [hl]                                      ; $4a33: $86
    add b                                         ; $4a34: $80
    cp d                                          ; $4a35: $ba
    nop                                           ; $4a36: $00
    cp d                                          ; $4a37: $ba
    jp c, Jump_000_1de0                           ; $4a38: $da $e0 $1d

    ld a, $d2                                     ; $4a3b: $3e $d2
    ldh [rIF], a                                  ; $4a3d: $e0 $0f
    nop                                           ; $4a3f: $00
    ld a, c                                       ; $4a40: $79
    nop                                           ; $4a41: $00
    ld h, c                                       ; $4a42: $61
    add h                                         ; $4a43: $84
    db $eb                                        ; $4a44: $eb
    halt                                          ; $4a45: $76
    ldh [$bc], a                                  ; $4a46: $e0 $bc
    adc b                                         ; $4a48: $88
    push hl                                       ; $4a49: $e5
    cp b                                          ; $4a4a: $b8
    pop hl                                        ; $4a4b: $e1
    sbc a                                         ; $4a4c: $9f
    rra                                           ; $4a4d: $1f
    pop hl                                        ; $4a4e: $e1
    ld a, a                                       ; $4a4f: $7f
    ret nc                                        ; $4a50: $d0

    and $70                                       ; $4a51: $e6 $70
    rst $30                                       ; $4a53: $f7
    rst $38                                       ; $4a54: $ff
    ld hl, sp-$07                                 ; $4a55: $f8 $f9
    cp $e0                                        ; $4a57: $fe $e0
    add d                                         ; $4a59: $82
    add b                                         ; $4a5a: $80
    ret nz                                        ; $4a5b: $c0

    add b                                         ; $4a5c: $80
    rst $30                                       ; $4a5d: $f7
    ldh [$80], a                                  ; $4a5e: $e0 $80
    ld hl, sp+$3c                                 ; $4a60: $f8 $3c
    and $41                                       ; $4a62: $e6 $41
    nop                                           ; $4a64: $00
    inc bc                                        ; $4a65: $03
    nop                                           ; $4a66: $00
    rla                                           ; $4a67: $17
    rlca                                          ; $4a68: $07
    nop                                           ; $4a69: $00
    rra                                           ; $4a6a: $1f
    inc a                                         ; $4a6b: $3c
    and $f0                                       ; $4a6c: $e6 $f0
    ld a, [hl]                                    ; $4a6e: $7e
    ldh [rLCDC], a                                ; $4a6f: $e0 $40
    jp hl                                         ; $4a71: $e9


    ld l, b                                       ; $4a72: $68
    ldh [rIE], a                                  ; $4a73: $e0 $ff
    ld bc, $031e                                  ; $4a75: $01 $1e $03
    and $03                                       ; $4a78: $e6 $03
    cp h                                          ; $4a7a: $bc
    rlca                                          ; $4a7b: $07
    cp h                                          ; $4a7c: $bc
    rst $18                                       ; $4a7d: $df
    rlca                                          ; $4a7e: $07
    db $e4                                        ; $4a7f: $e4
    rlca                                          ; $4a80: $07
    dec e                                         ; $4a81: $1d
    rlca                                          ; $4a82: $07
    ld c, a                                       ; $4a83: $4f
    pop hl                                        ; $4a84: $e1
    ld bc, $ffff                                  ; $4a85: $01 $ff $ff
    rlca                                          ; $4a88: $07
    rst $38                                       ; $4a89: $ff
    jr @+$01                                      ; $4a8a: $18 $ff

    ld [hl], e                                    ; $4a8c: $73
    rst $38                                       ; $4a8d: $ff
    rst $20                                       ; $4a8e: $e7
    db $fc                                        ; $4a8f: $fc
    rst $38                                       ; $4a90: $ff
    rst $20                                       ; $4a91: $e7
    cp $f1                                        ; $4a92: $fe $f1
    ldh a, [$0b]                                  ; $4a94: $f0 $0b
    ld hl, sp-$09                                 ; $4a96: $f8 $f7
    db $fc                                        ; $4a98: $fc
    rst $38                                       ; $4a99: $ff
    cp a                                          ; $4a9a: $bf
    db $fc                                        ; $4a9b: $fc
    xor a                                         ; $4a9c: $af
    db $fc                                        ; $4a9d: $fc
    rra                                           ; $4a9e: $1f
    db $fc                                        ; $4a9f: $fc
    cp a                                          ; $4aa0: $bf
    db $e4                                        ; $4aa1: $e4
    rst $38                                       ; $4aa2: $ff
    cp a                                          ; $4aa3: $bf
    db $f4                                        ; $4aa4: $f4
    ei                                            ; $4aa5: $fb
    rrca                                          ; $4aa6: $0f
    inc d                                         ; $4aa7: $14
    rra                                           ; $4aa8: $1f
    ld l, e                                       ; $4aa9: $6b
    ccf                                           ; $4aaa: $3f
    rst $38                                       ; $4aab: $ff
    ld e, d                                       ; $4aac: $5a
    ld a, a                                       ; $4aad: $7f
    ld e, h                                       ; $4aae: $5c
    ld a, a                                       ; $4aaf: $7f
    ld a, $3f                                     ; $4ab0: $3e $3f
    rlca                                          ; $4ab2: $07
    ld bc, $1f7f                                  ; $4ab3: $01 $7f $1f
    nop                                           ; $4ab6: $00
    rst $00                                       ; $4ab7: $c7
    cp $c7                                        ; $4ab8: $fe $c7
    cp $c0                                        ; $4aba: $fe $c0
    call $fdc0                                    ; $4abc: $cd $c0 $fd
    ld [bc], a                                    ; $4abf: $02
    jp z, $c0e0                                   ; $4ac0: $ca $e0 $c0

    rst $38                                       ; $4ac3: $ff
    ld h, b                                       ; $4ac4: $60
    ld a, a                                       ; $4ac5: $7f
    cp a                                          ; $4ac6: $bf
    db $f4                                        ; $4ac7: $f4
    rst $18                                       ; $4ac8: $df
    cp a                                          ; $4ac9: $bf
    db $f4                                        ; $4aca: $f4
    ld h, e                                       ; $4acb: $63
    cp $03                                        ; $4acc: $fe $03
    cp $e0                                        ; $4ace: $fe $e0
    rst $20                                       ; $4ad0: $e7
    db $fc                                        ; $4ad1: $fc
    rst $28                                       ; $4ad2: $ef
    dec c                                         ; $4ad3: $0d
    ld hl, sp+$16                                 ; $4ad4: $f8 $16
    ldh a, [rNR10]                                ; $4ad6: $f0 $10
    jp hl                                         ; $4ad8: $e9


    ldh a, [$30]                                  ; $4ad9: $f0 $30
    ld hl, sp-$0b                                 ; $4adb: $f8 $f5
    ret z                                         ; $4add: $c8

    and c                                         ; $4ade: $a1
    ld [c], a                                     ; $4adf: $e2
    inc bc                                        ; $4ae0: $03
    sbc a                                         ; $4ae1: $9f
    ldh [rTAC], a                                 ; $4ae2: $e0 $07
    rst $38                                       ; $4ae4: $ff
    rrca                                          ; $4ae5: $0f
    db $fc                                        ; $4ae6: $fc
    rst $38                                       ; $4ae7: $ff
    rrca                                          ; $4ae8: $0f
    ld hl, sp+$0f                                 ; $4ae9: $f8 $0f
    ld hl, sp-$21                                 ; $4aeb: $f8 $df
    rst $38                                       ; $4aed: $ff
    rst $20                                       ; $4aee: $e7
    cp a                                          ; $4aef: $bf
    rst $38                                       ; $4af0: $ff
    rst $38                                       ; $4af1: $ff
    call c, $d6ff                                 ; $4af2: $dc $ff $d6
    rst $38                                       ; $4af5: $ff
    ldh a, [rIE]                                  ; $4af6: $f0 $ff
    db $10                                        ; $4af8: $10
    cp $95                                        ; $4af9: $fe $95
    ret nz                                        ; $4afb: $c0

    ld a, e                                       ; $4afc: $7b
    pop hl                                        ; $4afd: $e1
    rst $38                                       ; $4afe: $ff
    db $dd                                        ; $4aff: $dd
    rst $38                                       ; $4b00: $ff
    sbc [hl]                                      ; $4b01: $9e
    rst $30                                       ; $4b02: $f7
    rst $38                                       ; $4b03: $ff
    rst $18                                       ; $4b04: $df
    ld [hl], a                                    ; $4b05: $77
    cp $7b                                        ; $4b06: $fe $7b
    rst $38                                       ; $4b08: $ff
    ld a, d                                       ; $4b09: $7a
    rst $38                                       ; $4b0a: $ff
    ld a, l                                       ; $4b0b: $7d
    rst $38                                       ; $4b0c: $ff
    rst $38                                       ; $4b0d: $ff
    rst $38                                       ; $4b0e: $ff
    inc h                                         ; $4b0f: $24
    rst $38                                       ; $4b10: $ff
    sub d                                         ; $4b11: $92
    rst $38                                       ; $4b12: $ff
    ld b, d                                       ; $4b13: $42
    rst $38                                       ; $4b14: $ff
    rst $30                                       ; $4b15: $f7
    inc b                                         ; $4b16: $04
    rst $38                                       ; $4b17: $ff
    adc b                                         ; $4b18: $88
    pop hl                                        ; $4b19: $e1
    ldh [$f0], a                                  ; $4b1a: $e0 $f0
    rra                                           ; $4b1c: $1f
    ldh a, [$08]                                  ; $4b1d: $f0 $08
    rst $38                                       ; $4b1f: $ff
    rrca                                          ; $4b20: $0f
    db $f4                                        ; $4b21: $f4
    rlca                                          ; $4b22: $07
    rra                                           ; $4b23: $1f
    inc bc                                        ; $4b24: $03
    rst $20                                       ; $4b25: $e7
    ld bc, $ffbb                                  ; $4b26: $01 $bb $ff
    ld bc, $03ba                                  ; $4b29: $01 $ba $03
    rst $20                                       ; $4b2c: $e7
    inc bc                                        ; $4b2d: $03
    inc e                                         ; $4b2e: $1c
    rlca                                          ; $4b2f: $07
    nop                                           ; $4b30: $00
    db $eb                                        ; $4b31: $eb
    rst $38                                       ; $4b32: $ff
    rra                                           ; $4b33: $1f
    ld c, l                                       ; $4b34: $4d
    jp nz, $ab00                                  ; $4b35: $c2 $00 $ab

    ldh [rIE], a                                  ; $4b38: $e0 $ff
    rst $38                                       ; $4b3a: $ff
    ld c, $eb                                     ; $4b3b: $0e $eb
    ei                                            ; $4b3d: $fb
    db $fd                                        ; $4b3e: $fd
    ccf                                           ; $4b3f: $3f
    ret nz                                        ; $4b40: $c0

    rst $38                                       ; $4b41: $ff
    add b                                         ; $4b42: $80
    ldh [$63], a                                  ; $4b43: $e0 $63
    cp $c3                                        ; $4b45: $fe $c3
    rst $38                                       ; $4b47: $ff
    cp $ff                                        ; $4b48: $fe $ff
    cp $0f                                        ; $4b4a: $fe $0f
    ld hl, sp+$30                                 ; $4b4c: $f8 $30
    ldh [$cf], a                                  ; $4b4e: $e0 $cf
    ld sp, hl                                     ; $4b50: $f9
    ret nz                                        ; $4b51: $c0

    ld d, b                                       ; $4b52: $50
    ret                                           ; $4b53: $c9


    add b                                         ; $4b54: $80
    set 7, a                                      ; $4b55: $cb $ff
    rst $38                                       ; $4b57: $ff
    rst $30                                       ; $4b58: $f7
    rlca                                          ; $4b59: $07
    ccf                                           ; $4b5a: $3f
    cp a                                          ; $4b5b: $bf
    inc a                                         ; $4b5c: $3c
    ld b, e                                       ; $4b5d: $43
    ld a, [hl]                                    ; $4b5e: $7e
    add c                                         ; $4b5f: $81
    rst $38                                       ; $4b60: $ff

jr_036_4b61:
    add c                                         ; $4b61: $81
    rlca                                          ; $4b62: $07
    jp nz, $ffff                                  ; $4b63: $c2 $ff $ff

    rst $38                                       ; $4b66: $ff
    sbc a                                         ; $4b67: $9f
    ei                                            ; $4b68: $fb
    rst $38                                       ; $4b69: $ff
    ld [hl], d                                    ; $4b6a: $72
    rst $38                                       ; $4b6b: $ff
    ld [de], a                                    ; $4b6c: $12
    rst $38                                       ; $4b6d: $ff
    ld a, a                                       ; $4b6e: $7f
    di                                            ; $4b6f: $f3
    ld e, $f3                                     ; $4b70: $1e $f3
    rst $38                                       ; $4b72: $ff
    di                                            ; $4b73: $f3
    ld a, $f3                                     ; $4b74: $3e $f3
    ld a, [c]                                     ; $4b76: $f2
    and b                                         ; $4b77: $a0
    rst $38                                       ; $4b78: $ff
    ld hl, sp-$01                                 ; $4b79: $f8 $ff
    ld e, $e1                                     ; $4b7b: $1e $e1
    ccf                                           ; $4b7d: $3f
    ret nz                                        ; $4b7e: $c0

    rst $38                                       ; $4b7f: $ff
    ld b, b                                       ; $4b80: $40
    ret z                                         ; $4b81: $c8

    rst $30                                       ; $4b82: $f7
    and d                                         ; $4b83: $a2
    ld [bc], a                                    ; $4b84: $02
    pop bc                                        ; $4b85: $c1
    ld b, b                                       ; $4b86: $40
    jp nz, $9880                                  ; $4b87: $c2 $80 $98

    jp $ace2                                      ; $4b8a: $c3 $e2 $ac


    ld bc, $7dfe                                  ; $4b8d: $01 $fe $7d
    inc bc                                        ; $4b90: $03
    add sp, -$5d                                  ; $4b91: $e8 $a3
    cp c                                          ; $4b93: $b9
    ld bc, $3fff                                  ; $4b94: $01 $ff $3f
    jp $c0b8                                      ; $4b97: $c3 $b8 $c0


    ei                                            ; $4b9a: $fb
    nop                                           ; $4b9b: $00
    rst $38                                       ; $4b9c: $ff
    jr nc, jr_036_4b61                            ; $4b9d: $30 $c2

    ldh [$fd], a                                  ; $4b9f: $e0 $fd
    ldh a, [$f3]                                  ; $4ba1: $f0 $f3
    pop af                                        ; $4ba3: $f1
    cp a                                          ; $4ba4: $bf
    rst $38                                       ; $4ba5: $ff
    ld a, [c]                                     ; $4ba6: $f2
    rst $38                                       ; $4ba7: $ff
    db $e4                                        ; $4ba8: $e4
    rla                                           ; $4ba9: $17
    push af                                       ; $4baa: $f5
    or d                                          ; $4bab: $b2
    and [hl]                                      ; $4bac: $a6
    ret nz                                        ; $4bad: $c0

    dec hl                                        ; $4bae: $2b
    rst $38                                       ; $4baf: $ff
    jr nc, jr_036_4bde                            ; $4bb0: $30 $2c

    ldh [rDIV], a                                 ; $4bb2: $e0 $04
    and d                                         ; $4bb4: $a2
    xor h                                         ; $4bb5: $ac
    ld bc, $c620                                  ; $4bb6: $01 $20 $c6
    cp [hl]                                       ; $4bb9: $be
    db $e4                                        ; $4bba: $e4
    cp $f0                                        ; $4bbb: $fe $f0
    and e                                         ; $4bbd: $a3
    db $fd                                        ; $4bbe: $fd
    ldh [$f3], a                                  ; $4bbf: $e0 $f3
    ldh a, [rIE]                                  ; $4bc1: $f0 $ff
    ldh a, [$f9]                                  ; $4bc3: $f0 $f9
    rst $38                                       ; $4bc5: $ff
    ldh a, [$e1]                                  ; $4bc6: $f0 $e1
    ldh [$0c], a                                  ; $4bc8: $e0 $0c
    rlca                                          ; $4bca: $07
    db $f4                                        ; $4bcb: $f4
    rlca                                          ; $4bcc: $07
    jr @+$01                                      ; $4bcd: $18 $ff

    rrca                                          ; $4bcf: $0f
    add sp, $0f                                   ; $4bd0: $e8 $0f
    cp c                                          ; $4bd2: $b9
    rrca                                          ; $4bd3: $0f
    cp e                                          ; $4bd4: $bb
    rrca                                          ; $4bd5: $0f
    rst $30                                       ; $4bd6: $f7
    rst $38                                       ; $4bd7: $ff
    rra                                           ; $4bd8: $1f
    add hl, hl                                    ; $4bd9: $29
    ccf                                           ; $4bda: $3f
    inc bc                                        ; $4bdb: $03
    rst $38                                       ; $4bdc: $ff
    rrca                                          ; $4bdd: $0f

jr_036_4bde:
    rst $38                                       ; $4bde: $ff
    ld sp, $ffff                                  ; $4bdf: $31 $ff $ff
    and $ff                                       ; $4be2: $e6 $ff
    rst $08                                       ; $4be4: $cf
    ld sp, hl                                     ; $4be5: $f9
    rst $08                                       ; $4be6: $cf
    db $fd                                        ; $4be7: $fd
    adc a                                         ; $4be8: $8f
    cp $fe                                        ; $4be9: $fe $fe
    ldh [$ef], a                                  ; $4beb: $e0 $ef
    rst $38                                       ; $4bed: $ff
    ld a, a                                       ; $4bee: $7f
    ld hl, sp+$5f                                 ; $4bef: $f8 $5f
    ei                                            ; $4bf1: $fb
    ccf                                           ; $4bf2: $3f
    rst $38                                       ; $4bf3: $ff
    db $fc                                        ; $4bf4: $fc
    ld a, a                                       ; $4bf5: $7f
    bit 7, a                                      ; $4bf6: $cb $7f
    ld [$eb7f], a                                 ; $4bf8: $ea $7f $eb
    ld a, l                                       ; $4bfb: $7d
    rst $38                                       ; $4bfc: $ff
    rst $28                                       ; $4bfd: $ef
    db $fc                                        ; $4bfe: $fc
    inc d                                         ; $4bff: $14
    rst $38                                       ; $4c00: $ff
    sub h                                         ; $4c01: $94
    db $fc                                        ; $4c02: $fc

jr_036_4c03:
    db $e4                                        ; $4c03: $e4
    rst $38                                       ; $4c04: $ff
    rst $38                                       ; $4c05: $ff
    ld [$10fd], sp                                ; $4c06: $08 $fd $10
    db $fd                                        ; $4c09: $fd
    jr nc, jr_036_4c03                            ; $4c0a: $30 $f7

    db $10                                        ; $4c0c: $10
    ld hl, sp-$01                                 ; $4c0d: $f8 $ff
    ldh [$0e], a                                  ; $4c0f: $e0 $0e
    inc bc                                        ; $4c11: $03
    db $f4                                        ; $4c12: $f4
    rlca                                          ; $4c13: $07
    inc e                                         ; $4c14: $1c
    rlca                                          ; $4c15: $07
    add sp, $3b                                   ; $4c16: $e8 $3b
    rrca                                          ; $4c18: $0f
    cp b                                          ; $4c19: $b8
    cp [hl]                                       ; $4c1a: $be
    ldh [$eb], a                                  ; $4c1b: $e0 $eb
    rrca                                          ; $4c1d: $0f
    rla                                           ; $4c1e: $17
    rst $20                                       ; $4c1f: $e7
    and b                                         ; $4c20: $a0
    cp [hl]                                       ; $4c21: $be
    db $eb                                        ; $4c22: $eb
    rst $38                                       ; $4c23: $ff
    ld de, $ebf0                                  ; $4c24: $11 $f0 $eb
    ld hl, sp+$1f                                 ; $4c27: $f8 $1f
    ld hl, sp-$41                                 ; $4c29: $f8 $bf
    ld hl, sp-$01                                 ; $4c2b: $f8 $ff
    cp a                                          ; $4c2d: $bf
    ei                                            ; $4c2e: $fb
    ld a, a                                       ; $4c2f: $7f
    call z, $e97f                                 ; $4c30: $cc $7f $e9
    ld a, a                                       ; $4c33: $7f
    ld [$d05e], a                                 ; $4c34: $ea $5e $d0
    and l                                         ; $4c37: $a5
    db $dd                                        ; $4c38: $dd
    add b                                         ; $4c39: $80
    db $fd                                        ; $4c3a: $fd
    ld h, b                                       ; $4c3b: $60
    ret nz                                        ; $4c3c: $c0

    ldh [$08], a                                  ; $4c3d: $e0 $08
    ret nc                                        ; $4c3f: $d0

    db $e3                                        ; $4c40: $e3
    rst $30                                       ; $4c41: $f7
    jr nc, @+$01                                  ; $4c42: $30 $ff

    ldh [rNR12], a                                ; $4c44: $e0 $12
    ret nz                                        ; $4c46: $c0

    call z, $86ff                                 ; $4c47: $cc $ff $86
    rst $38                                       ; $4c4a: $ff
    ld a, [hl]                                    ; $4c4b: $7e
    ret nc                                        ; $4c4c: $d0

    pop hl                                        ; $4c4d: $e1
    cp a                                          ; $4c4e: $bf
    ld hl, sp-$61                                 ; $4c4f: $f8 $9f
    ld sp, hl                                     ; $4c51: $f9
    ccf                                           ; $4c52: $3f
    ld a, [$e0d0]                                 ; $4c53: $fa $d0 $e0
    rst $30                                       ; $4c56: $f7
    db $ed                                        ; $4c57: $ed
    ld a, a                                       ; $4c58: $7f
    rst $28                                       ; $4c59: $ef
    and b                                         ; $4c5a: $a0
    and e                                         ; $4c5b: $a3
    rst $20                                       ; $4c5c: $e7
    ret nz                                        ; $4c5d: $c0

jr_036_4c5e:
    db $fd                                        ; $4c5e: $fd
    jr nc, jr_036_4c5e                            ; $4c5f: $30 $fd

    db $fd                                        ; $4c61: $fd
    ld [hl+], a                                   ; $4c62: $22
    ldh [$fc], a                                  ; $4c63: $e0 $fc
    inc d                                         ; $4c65: $14
    rst $10                                       ; $4c66: $d7
    ld a, a                                       ; $4c67: $7f
    or l                                          ; $4c68: $b5
    rst $38                                       ; $4c69: $ff
    cp a                                          ; $4c6a: $bf
    cp b                                          ; $4c6b: $b8
    rst $38                                       ; $4c6c: $ff
    ld a, h                                       ; $4c6d: $7c
    ld a, a                                       ; $4c6e: $7f
    ld b, e                                       ; $4c6f: $43
    inc bc                                        ; $4c70: $03
    ld a, b                                       ; $4c71: $78
    and b                                         ; $4c72: $a0
    inc bc                                        ; $4c73: $03
    db $d3                                        ; $4c74: $d3
    rra                                           ; $4c75: $1f
    rrca                                          ; $4c76: $0f

jr_036_4c77:
    rst $28                                       ; $4c77: $ef
    add c                                         ; $4c78: $81
    call nc, $80a1                                ; $4c79: $d4 $a1 $80
    jp nc, $f0a0                                  ; $4c7c: $d2 $a0 $f0

    cp a                                          ; $4c7f: $bf
    rst $30                                       ; $4c80: $f7
    rst $38                                       ; $4c81: $ff
    rst $08                                       ; $4c82: $cf
    call z, $c025                                 ; $4c83: $cc $25 $c0
    inc b                                         ; $4c86: $04
    rst $38                                       ; $4c87: $ff
    call nz, $fdff                                ; $4c88: $c4 $ff $fd
    ld [$a08e], sp                                ; $4c8b: $08 $8e $a0
    ld l, [hl]                                    ; $4c8e: $6e
    rst $38                                       ; $4c8f: $ff
    rst $30                                       ; $4c90: $f7
    rst $18                                       ; $4c91: $df
    cpl                                           ; $4c92: $2f
    ldh [rIE], a                                  ; $4c93: $e0 $ff
    jr nc, jr_036_4c77                            ; $4c95: $30 $e0

    ld e, [hl]                                    ; $4c97: $5e
    ret nz                                        ; $4c98: $c0

    ld b, [hl]                                    ; $4c99: $46
    ret nz                                        ; $4c9a: $c0

    ld b, d                                       ; $4c9b: $42
    ret nz                                        ; $4c9c: $c0

    sbc $38                                       ; $4c9d: $de $38
    and d                                         ; $4c9f: $a2
    nop                                           ; $4ca0: $00
    jp hl                                         ; $4ca1: $e9


    ccf                                           ; $4ca2: $3f
    ld d, a                                       ; $4ca3: $57
    cp [hl]                                       ; $4ca4: $be
    db $e4                                        ; $4ca5: $e4
    inc bc                                        ; $4ca6: $03
    inc bc                                        ; $4ca7: $03
    xor $38                                       ; $4ca8: $ee $38
    and b                                         ; $4caa: $a0
    ld bc, $fd8e                                  ; $4cab: $01 $8e $fd
    cp [hl]                                       ; $4cae: $be
    db $eb                                        ; $4caf: $eb
    ld a, a                                       ; $4cb0: $7f
    xor $cf                                       ; $4cb1: $ee $cf
    rst $38                                       ; $4cb3: $ff
    ei                                            ; $4cb4: $fb
    rlca                                          ; $4cb5: $07
    db $fd                                        ; $4cb6: $fd
    rlca                                          ; $4cb7: $07
    rst $38                                       ; $4cb8: $ff
    rst $00                                       ; $4cb9: $c7
    db $fc                                        ; $4cba: $fc
    dec bc                                        ; $4cbb: $0b
    rst $38                                       ; $4cbc: $ff

jr_036_4cbd:
    ei                                            ; $4cbd: $fb
    ld e, $f3                                     ; $4cbe: $1e $f3
    ld h, [hl]                                    ; $4cc0: $66
    db $e3                                        ; $4cc1: $e3
    rst $38                                       ; $4cc2: $ff
    jr z, jr_036_4cbd                             ; $4cc3: $28 $f8

    rst $38                                       ; $4cc5: $ff

jr_036_4cc6:
    jr z, jr_036_4cc6                             ; $4cc6: $28 $fe

    ret z                                         ; $4cc8: $c8

    cp $08                                        ; $4cc9: $fe $08
    ld a, [c]                                     ; $4ccb: $f2
    ld [hl], b                                    ; $4ccc: $70
    ldh a, [$df]                                  ; $4ccd: $f0 $df
    db $10                                        ; $4ccf: $10
    ldh a, [$f0]                                  ; $4cd0: $f0 $f0
    ld [$c0f8], sp                                ; $4cd2: $08 $f8 $c0
    db $ec                                        ; $4cd5: $ec
    rrca                                          ; $4cd6: $0f
    adc [hl]                                      ; $4cd7: $8e
    call c, $a2d4                                 ; $4cd8: $dc $d4 $a2
    ret nz                                        ; $4cdb: $c0

    add sp, -$13                                  ; $4cdc: $e8 $ed
    rst $08                                       ; $4cde: $cf
    db $fc                                        ; $4cdf: $fc
    ld [hl], e                                    ; $4ce0: $73
    and b                                         ; $4ce1: $a0
    cp $c7                                        ; $4ce2: $fe $c7
    ld a, a                                       ; $4ce4: $7f
    db $fd                                        ; $4ce5: $fd
    dec bc                                        ; $4ce6: $0b
    ld sp, hl                                     ; $4ce7: $f9
    dec e                                         ; $4ce8: $1d
    pop af                                        ; $4ce9: $f1
    ld a, a                                       ; $4cea: $7f
    rst $38                                       ; $4ceb: $ff
    jp nc, $ffc1                                  ; $4cec: $d2 $c1 $ff

    cp $84                                        ; $4cef: $fe $84
    cp $38                                        ; $4cf1: $fe $38
    ld a, [$7888]                                 ; $4cf3: $fa $88 $78
    ld hl, sp-$01                                 ; $4cf6: $f8 $ff
    ld [$04f8], sp                                ; $4cf8: $08 $f8 $04
    db $fc                                        ; $4cfb: $fc
    rst $38                                       ; $4cfc: $ff
    ccf                                           ; $4cfd: $3f
    rst $08                                       ; $4cfe: $cf
    ld a, a                                       ; $4cff: $7f
    db $fd                                        ; $4d00: $fd
    add e                                         ; $4d01: $83
    ld [c], a                                     ; $4d02: $e2
    and b                                         ; $4d03: $a0
    add a                                         ; $4d04: $87
    rst $38                                       ; $4d05: $ff
    ret c                                         ; $4d06: $d8

    ld a, a                                       ; $4d07: $7f
    ldh [$7f], a                                  ; $4d08: $e0 $7f
    rst $38                                       ; $4d0a: $ff
    ret nz                                        ; $4d0b: $c0

    ld a, a                                       ; $4d0c: $7f
    ld a, a                                       ; $4d0d: $7f
    pop af                                        ; $4d0e: $f1
    cp a                                          ; $4d0f: $bf
    ei                                            ; $4d10: $fb
    cp a                                          ; $4d11: $bf
    rst $38                                       ; $4d12: $ff
    db $ed                                        ; $4d13: $ed
    cp a                                          ; $4d14: $bf
    sbc d                                         ; $4d15: $9a
    and c                                         ; $4d16: $a1
    rst $38                                       ; $4d17: $ff
    ld a, a                                       ; $4d18: $7f
    cp $e0                                        ; $4d19: $fe $e0
    rst $30                                       ; $4d1b: $f7
    sbc a                                         ; $4d1c: $9f
    ld a, [$de3f]                                 ; $4d1d: $fa $3f $de
    ld a, [$fdfe]                                 ; $4d20: $fa $fe $fd
    db $fc                                        ; $4d23: $fc
    rst $38                                       ; $4d24: $ff
    cp $e1                                        ; $4d25: $fe $e1
    adc [hl]                                      ; $4d27: $8e
    and b                                         ; $4d28: $a0
    cp h                                          ; $4d29: $bc
    or $a5                                        ; $4d2a: $f6 $a5
    cp $e6                                        ; $4d2c: $fe $e6
    rra                                           ; $4d2e: $1f
    rst $38                                       ; $4d2f: $ff
    ld a, a                                       ; $4d30: $7f
    adc a                                         ; $4d31: $8f
    ld de, $07a2                                  ; $4d32: $11 $a2 $07
    cp $56                                        ; $4d35: $fe $56
    and b                                         ; $4d37: $a0
    rra                                           ; $4d38: $1f
    di                                            ; $4d39: $f3
    rst $38                                       ; $4d3a: $ff
    rst $08                                       ; $4d3b: $cf
    rst $38                                       ; $4d3c: $ff
    pop af                                        ; $4d3d: $f1
    rst $38                                       ; $4d3e: $ff
    db $fc                                        ; $4d3f: $fc
    cp [hl]                                       ; $4d40: $be
    ld [c], a                                     ; $4d41: $e2
    jp nz, $ffe1                                  ; $4d42: $c2 $e1 $ff

    rst $38                                       ; $4d45: $ff
    ei                                            ; $4d46: $fb
    db $d3                                        ; $4d47: $d3
    rst $38                                       ; $4d48: $ff
    sbc a                                         ; $4d49: $9f
    ld e, a                                       ; $4d4a: $5f
    rst $30                                       ; $4d4b: $f7
    rst $18                                       ; $4d4c: $df
    rst $30                                       ; $4d4d: $f7
    rst $38                                       ; $4d4e: $ff
    ei                                            ; $4d4f: $fb
    cp $e0                                        ; $4d50: $fe $e0
    db $fd                                        ; $4d52: $fd
    cp $e0                                        ; $4d53: $fe $e0
    rst $38                                       ; $4d55: $ff
    rrca                                          ; $4d56: $0f
    ld hl, sp+$07                                 ; $4d57: $f8 $07
    db $fc                                        ; $4d59: $fc
    rlca                                          ; $4d5a: $07
    db $fc                                        ; $4d5b: $fc
    adc a                                         ; $4d5c: $8f
    ld hl, sp-$5e                                 ; $4d5d: $f8 $a2
    pop af                                        ; $4d5f: $f1
    add b                                         ; $4d60: $80
    ret nz                                        ; $4d61: $c0

    xor a                                         ; $4d62: $af
    add b                                         ; $4d63: $80
    or h                                          ; $4d64: $b4
    db $eb                                        ; $4d65: $eb
    xor d                                         ; $4d66: $aa
    pop hl                                        ; $4d67: $e1
    rst $38                                       ; $4d68: $ff
    or d                                          ; $4d69: $b2
    db $e3                                        ; $4d6a: $e3
    rrca                                          ; $4d6b: $0f
    ld c, $fe                                     ; $4d6c: $0e $fe
    pop hl                                        ; $4d6e: $e1
    ei                                            ; $4d6f: $fb
    adc a                                         ; $4d70: $8f
    db $fd                                        ; $4d71: $fd
    or b                                          ; $4d72: $b0
    pop hl                                        ; $4d73: $e1
    ld l, [hl]                                    ; $4d74: $6e
    pop hl                                        ; $4d75: $e1
    or d                                          ; $4d76: $b2
    db $e3                                        ; $4d77: $e3
    ld b, d                                       ; $4d78: $42
    ld h, b                                       ; $4d79: $60
    ret                                           ; $4d7a: $c9


    rst $18                                       ; $4d7b: $df
    or b                                          ; $4d7c: $b0
    and $72                                       ; $4d7d: $e6 $72
    pop hl                                        ; $4d7f: $e1
    cp $b2                                        ; $4d80: $fe $b2
    and $76                                       ; $4d82: $e6 $76
    ld h, h                                       ; $4d84: $64
    ld b, b                                       ; $4d85: $40
    ld a, a                                       ; $4d86: $7f
    rst $18                                       ; $4d87: $df
    db $e3                                        ; $4d88: $e3
    ccf                                           ; $4d89: $3f
    dec e                                         ; $4d8a: $1d
    dec e                                         ; $4d8b: $1d
    rst $20                                       ; $4d8c: $e7
    jp nz, $bb80                                  ; $4d8d: $c2 $80 $bb

    inc bc                                        ; $4d90: $03
    ld a, a                                       ; $4d91: $7f
    db $e4                                        ; $4d92: $e4
    rlca                                          ; $4d93: $07
    rra                                           ; $4d94: $1f
    rlca                                          ; $4d95: $07
    cp a                                          ; $4d96: $bf
    rst $38                                       ; $4d97: $ff
    ld h, b                                       ; $4d98: $60
    sbc c                                         ; $4d99: $99
    ld [c], a                                     ; $4d9a: $e2
    ldh a, [$c2]                                  ; $4d9b: $f0 $c2
    add e                                         ; $4d9d: $83
    ld [bc], a                                    ; $4d9e: $02
    and b                                         ; $4d9f: $a0
    ld b, h                                       ; $4da0: $44
    add d                                         ; $4da1: $82
    jp nz, $ff85                                  ; $4da2: $c2 $85 $ff

    ld hl, sp-$0f                                 ; $4da5: $f8 $f1
    ld bc, $ce7f                                  ; $4da7: $01 $7f $ce
    inc bc                                        ; $4daa: $03
    cp d                                          ; $4dab: $ba
    inc bc                                        ; $4dac: $03
    ld h, [hl]                                    ; $4dad: $66
    inc bc                                        ; $4dae: $03
    ld e, l                                       ; $4daf: $5d
    ld h, [hl]                                    ; $4db0: $66
    and b                                         ; $4db1: $a0
    cp $10                                        ; $4db2: $fe $10
    ld h, c                                       ; $4db4: $61
    rra                                           ; $4db5: $1f
    ld sp, hl                                     ; $4db6: $f9
    rlca                                          ; $4db7: $07
    db $fd                                        ; $4db8: $fd
    inc bc                                        ; $4db9: $03
    rst $38                                       ; $4dba: $ff
    dec bc                                        ; $4dbb: $0b
    ld h, $de                                     ; $4dbc: $26 $de
    ld h, b                                       ; $4dbe: $60
    cp $ff                                        ; $4dbf: $fe $ff
    add b                                         ; $4dc1: $80
    add c                                         ; $4dc2: $81
    sub c                                         ; $4dc3: $91
    add c                                         ; $4dc4: $81
    ldh a, [$dd]                                  ; $4dc5: $f0 $dd
    ld b, d                                       ; $4dc7: $42
    add b                                         ; $4dc8: $80
    add e                                         ; $4dc9: $83
    db $fc                                        ; $4dca: $fc
    db $fc                                        ; $4dcb: $fc
    pop bc                                        ; $4dcc: $c1
    cp [hl]                                       ; $4dcd: $be
    jp hl                                         ; $4dce: $e9


    pop af                                        ; $4dcf: $f1
    ld bc, $01cf                                  ; $4dd0: $01 $cf $01
    cp c                                          ; $4dd3: $b9
    ld bc, $d03a                                  ; $4dd4: $01 $3a $d0
    ld b, a                                       ; $4dd7: $47
    inc bc                                        ; $4dd8: $03
    and d                                         ; $4dd9: $a2
    ld h, b                                       ; $4dda: $60
    dec b                                         ; $4ddb: $05
    rst $38                                       ; $4ddc: $ff
    add e                                         ; $4ddd: $83
    jp Jump_036_40c0                              ; $4dde: $c3 $c0 $40


    add e                                         ; $4de1: $83
    set 6, a                                      ; $4de2: $cb $f7
    inc b                                         ; $4de4: $04
    add b                                         ; $4de5: $80
    add b                                         ; $4de6: $80
    ld a, a                                       ; $4de7: $7f
    add b                                         ; $4de8: $80
    add a                                         ; $4de9: $87
    add d                                         ; $4dea: $82
    add b                                         ; $4deb: $80
    inc de                                        ; $4dec: $13
    cp $af                                        ; $4ded: $fe $af
    di                                            ; $4def: $f3
    ccf                                           ; $4df0: $3f
    di                                            ; $4df1: $f3
    rst $18                                       ; $4df2: $df
    add d                                         ; $4df3: $82
    add c                                         ; $4df4: $81
    pop hl                                        ; $4df5: $e1
    ld [hl], d                                    ; $4df6: $72
    ld b, b                                       ; $4df7: $40
    ld [$801c], sp                                ; $4df8: $08 $1c $80
    add b                                         ; $4dfb: $80
    add d                                         ; $4dfc: $82
    add b                                         ; $4dfd: $80
    ret nz                                        ; $4dfe: $c0

    rst $38                                       ; $4dff: $ff
    ccf                                           ; $4e00: $3f
    ld [hl], e                                    ; $4e01: $73
    ld b, d                                       ; $4e02: $42
    nop                                           ; $4e03: $00
    nop                                           ; $4e04: $00
    nop                                           ; $4e05: $00
    nop                                           ; $4e06: $00
    nop                                           ; $4e07: $00
    nop                                           ; $4e08: $00
    nop                                           ; $4e09: $00
    nop                                           ; $4e0a: $00
    nop                                           ; $4e0b: $00
    nop                                           ; $4e0c: $00
    nop                                           ; $4e0d: $00
    nop                                           ; $4e0e: $00
    nop                                           ; $4e0f: $00
    rst $28                                       ; $4e10: $ef
    rst $38                                       ; $4e11: $ff
    rst $38                                       ; $4e12: $ff
    rst $38                                       ; $4e13: $ff
    add b                                         ; $4e14: $80
    cp $ea                                        ; $4e15: $fe $ea
    rst $38                                       ; $4e17: $ff
    rst $38                                       ; $4e18: $ff
    nop                                           ; $4e19: $00
    cp $fe                                        ; $4e1a: $fe $fe
    ld [$fcff], a                                 ; $4e1c: $ea $ff $fc
    nop                                           ; $4e1f: $00
    di                                            ; $4e20: $f3
    nop                                           ; $4e21: $00
    rst $28                                       ; $4e22: $ef
    nop                                           ; $4e23: $00
    rra                                           ; $4e24: $1f
    call z, $8800                                 ; $4e25: $cc $00 $88
    nop                                           ; $4e28: $00
    sbc b                                         ; $4e29: $98
    cp $e0                                        ; $4e2a: $fe $e0
    rst $38                                       ; $4e2c: $ff
    db $ed                                        ; $4e2d: $ed
    jp nz, $bfe7                                  ; $4e2e: $c2 $e7 $bf

    db $fc                                        ; $4e31: $fc
    add b                                         ; $4e32: $80
    di                                            ; $4e33: $f3
    add b                                         ; $4e34: $80
    rst $28                                       ; $4e35: $ef
    add b                                         ; $4e36: $80
    jp nz, Jump_000_3fe7                          ; $4e37: $c2 $e7 $3f

    rst $38                                       ; $4e3a: $ff
    nop                                           ; $4e3b: $00
    rst $08                                       ; $4e3c: $cf
    nop                                           ; $4e3d: $00
    rst $30                                       ; $4e3e: $f7
    nop                                           ; $4e3f: $00
    cp h                                          ; $4e40: $bc
    nop                                           ; $4e41: $00
    rst $18                                       ; $4e42: $df
    rst $28                                       ; $4e43: $ef
    nop                                           ; $4e44: $00
    ldh [rP1], a                                  ; $4e45: $e0 $00
    db $ed                                        ; $4e47: $ed
    cp $e0                                        ; $4e48: $fe $e0
    rst $30                                       ; $4e4a: $f7
    nop                                           ; $4e4b: $00
    ld hl, sp-$42                                 ; $4e4c: $f8 $be
    and [hl]                                      ; $4e4e: $a6
    ldh [$cc], a                                  ; $4e4f: $e0 $cc
    add b                                         ; $4e51: $80
    adc b                                         ; $4e52: $88
    add b                                         ; $4e53: $80
    sbc b                                         ; $4e54: $98
    cp $e0                                        ; $4e55: $fe $e0
    cp h                                          ; $4e57: $bc
    rst $38                                       ; $4e58: $ff
    add b                                         ; $4e59: $80
    rst $18                                       ; $4e5a: $df
    add b                                         ; $4e5b: $80
    ldh [$80], a                                  ; $4e5c: $e0 $80
    db $ed                                        ; $4e5e: $ed
    add b                                         ; $4e5f: $80
    inc sp                                        ; $4e60: $33
    rst $28                                       ; $4e61: $ef
    nop                                           ; $4e62: $00
    ld de, $1900                                  ; $4e63: $11 $00 $19
    cp $e0                                        ; $4e66: $fe $e0
    dec a                                         ; $4e68: $3d
    nop                                           ; $4e69: $00
    ei                                            ; $4e6a: $fb
    rrca                                          ; $4e6b: $0f
    nop                                           ; $4e6c: $00
    rlca                                          ; $4e6d: $07
    nop                                           ; $4e6e: $00
    or a                                          ; $4e6f: $b7
    add h                                         ; $4e70: $84
    db $eb                                        ; $4e71: $eb
    ret nc                                        ; $4e72: $d0

    pop hl                                        ; $4e73: $e1
    adc b                                         ; $4e74: $88
    db $e4                                        ; $4e75: $e4
    cp b                                          ; $4e76: $b8
    pop hl                                        ; $4e77: $e1
    rst $28                                       ; $4e78: $ef
    db $e3                                        ; $4e79: $e3
    inc bc                                        ; $4e7a: $03
    db $ec                                        ; $4e7b: $ec
    rrca                                          ; $4e7c: $0f
    ret nc                                        ; $4e7d: $d0

    push hl                                       ; $4e7e: $e5
    ccf                                           ; $4e7f: $3f
    ld c, $ff                                     ; $4e80: $0e $ff
    rst $38                                       ; $4e82: $ff
    rra                                           ; $4e83: $1f
    rst $38                                       ; $4e84: $ff
    rst $38                                       ; $4e85: $ff
    ccf                                           ; $4e86: $3f
    rst $38                                       ; $4e87: $ff
    inc sp                                        ; $4e88: $33
    ld bc, $fb13                                  ; $4e89: $01 $13 $fb
    ld bc, $fe1b                                  ; $4e8c: $01 $1b $fe
    ldh [$3f], a                                  ; $4e8f: $e0 $3f
    ld bc, $01fb                                  ; $4e91: $01 $fb $01

jr_036_4e94:
    rlca                                          ; $4e94: $07
    rst $38                                       ; $4e95: $ff
    ld bc, $01b7                                  ; $4e96: $01 $b7 $01
    db $ed                                        ; $4e99: $ed
    add b                                         ; $4e9a: $80
    rst $30                                       ; $4e9b: $f7
    add b                                         ; $4e9c: $80
    ld hl, sp-$36                                 ; $4e9d: $f8 $ca
    ld l, $e8                                     ; $4e9f: $2e $e8
    or a                                          ; $4ea1: $b7
    ld b, h                                       ; $4ea2: $44
    ldh [$1f], a                                  ; $4ea3: $e0 $1f
    ld l, $ea                                     ; $4ea5: $2e $ea
    jr nc, jr_036_4e94                            ; $4ea7: $30 $eb

    ldh a, [$1f]                                  ; $4ea9: $f0 $1f
    rst $38                                       ; $4eab: $ff
    ldh [$3f], a                                  ; $4eac: $e0 $3f
    ret nz                                        ; $4eae: $c0

    ld a, a                                       ; $4eaf: $7f
    ret nz                                        ; $4eb0: $c0

jr_036_4eb1:
    ld a, a                                       ; $4eb1: $7f
    add e                                         ; $4eb2: $83
    rst $38                                       ; $4eb3: $ff
    rst $38                                       ; $4eb4: $ff
    adc [hl]                                      ; $4eb5: $8e
    rst $38                                       ; $4eb6: $ff
    sbc h                                         ; $4eb7: $9c
    rst $38                                       ; $4eb8: $ff
    cp h                                          ; $4eb9: $bc
    rst $38                                       ; $4eba: $ff
    rra                                           ; $4ebb: $1f
    cp $ff                                        ; $4ebc: $fe $ff
    ld bc, $3eff                                  ; $4ebe: $01 $ff $3e
    rst $38                                       ; $4ec1: $ff
    rst $30                                       ; $4ec2: $f7
    rst $38                                       ; $4ec3: $ff
    dec d                                         ; $4ec4: $15
    rst $38                                       ; $4ec5: $ff
    ccf                                           ; $4ec6: $3f
    ld h, e                                       ; $4ec7: $63
    rst $38                                       ; $4ec8: $ff
    rst $30                                       ; $4ec9: $f7
    sbc h                                         ; $4eca: $9c
    rst $30                                       ; $4ecb: $f7
    sbc $d0                                       ; $4ecc: $de $d0
    ld [c], a                                     ; $4ece: $e2
    jr z, jr_036_4eb1                             ; $4ecf: $28 $e0

    cp $48                                        ; $4ed1: $fe $48
    push hl                                       ; $4ed3: $e5
    dec a                                         ; $4ed4: $3d
    ld bc, $03fa                                  ; $4ed5: $01 $fa $03
    dec b                                         ; $4ed8: $05
    rlca                                          ; $4ed9: $07
    cp e                                          ; $4eda: $bb
    rst $18                                       ; $4edb: $df
    rrca                                          ; $4edc: $0f
    cp e                                          ; $4edd: $bb
    rrca                                          ; $4ede: $0f
    rst $28                                       ; $4edf: $ef
    rlca                                          ; $4ee0: $07
    xor b                                         ; $4ee1: $a8
    pop hl                                        ; $4ee2: $e1
    ld a, b                                       ; $4ee3: $78
    rst $38                                       ; $4ee4: $ff
    rst $18                                       ; $4ee5: $df
    sbc b                                         ; $4ee6: $98
    rst $38                                       ; $4ee7: $ff
    ld a, b                                       ; $4ee8: $78
    rst $38                                       ; $4ee9: $ff
    ld d, b                                       ; $4eea: $50
    cp e                                          ; $4eeb: $bb
    ret nz                                        ; $4eec: $c0

    ret nz                                        ; $4eed: $c0

    rst $38                                       ; $4eee: $ff
    rst $38                                       ; $4eef: $ff
    ld hl, sp+$3f                                 ; $4ef0: $f8 $3f
    db $ec                                        ; $4ef2: $ec
    rrca                                          ; $4ef3: $0f
    rst $30                                       ; $4ef4: $f7
    sbc $f7                                       ; $4ef5: $de $f7
    sbc $b5                                       ; $4ef7: $de $b5
    inc c                                         ; $4ef9: $0c
    cp l                                          ; $4efa: $bd
    jp nz, $b77c                                  ; $4efb: $c2 $7c $b7

    ret nz                                        ; $4efe: $c0

    ld bc, $18ff                                  ; $4eff: $01 $ff $18
    db $e3                                        ; $4f02: $e3
    ld l, l                                       ; $4f03: $6d
    rst $38                                       ; $4f04: $ff
    ret nz                                        ; $4f05: $c0

    ld l, l                                       ; $4f06: $6d
    ret nz                                        ; $4f07: $c0

    ld a, a                                       ; $4f08: $7f
    ld hl, sp-$04                                 ; $4f09: $f8 $fc
    call nz, Call_036_7dff                        ; $4f0b: $c4 $ff $7d
    ld a, [c]                                     ; $4f0e: $f2
    and d                                         ; $4f0f: $a2
    jp nz, $fc03                                  ; $4f10: $c2 $03 $fc

    rlca                                          ; $4f13: $07
    ld hl, sp+$0f                                 ; $4f14: $f8 $0f
    cp $e1                                        ; $4f16: $fe $e1
    rst $38                                       ; $4f18: $ff
    rst $38                                       ; $4f19: $ff
    rlca                                          ; $4f1a: $07
    rst $38                                       ; $4f1b: $ff
    dec sp                                        ; $4f1c: $3b
    rst $38                                       ; $4f1d: $ff
    db $fc                                        ; $4f1e: $fc
    rst $38                                       ; $4f1f: $ff
    cp $7f                                        ; $4f20: $fe $7f
    rst $38                                       ; $4f22: $ff
    rst $38                                       ; $4f23: $ff
    ld a, a                                       ; $4f24: $7f
    rst $38                                       ; $4f25: $ff
    scf                                           ; $4f26: $37
    rst $38                                       ; $4f27: $ff
    rst $28                                       ; $4f28: $ef
    dec l                                         ; $4f29: $2d
    ldh [rIE], a                                  ; $4f2a: $e0 $ff
    rlca                                          ; $4f2c: $07
    rst $38                                       ; $4f2d: $ff
    rst $38                                       ; $4f2e: $ff
    ld a, [$33ff]                                 ; $4f2f: $fa $ff $33
    cp $7b                                        ; $4f32: $fe $7b
    db $fc                                        ; $4f34: $fc
    db $ed                                        ; $4f35: $ed
    ldh [$fe], a                                  ; $4f36: $e0 $fe
    db $e3                                        ; $4f38: $e3
    ld hl, $b9ff                                  ; $4f39: $21 $ff $b9
    rst $38                                       ; $4f3c: $ff
    ld h, c                                       ; $4f3d: $61
    rst $18                                       ; $4f3e: $df
    rst $38                                       ; $4f3f: $ff
    db $fd                                        ; $4f40: $fd
    sbc a                                         ; $4f41: $9f
    ld a, [c]                                     ; $4f42: $f2
    ld c, a                                       ; $4f43: $4f
    db $fc                                        ; $4f44: $fc
    ld b, a                                       ; $4f45: $47
    db $fc                                        ; $4f46: $fc
    cp a                                          ; $4f47: $bf
    rst $38                                       ; $4f48: $ff
    ld hl, sp-$04                                 ; $4f49: $f8 $fc
    rlca                                          ; $4f4b: $07
    jr c, jr_036_4f5d                             ; $4f4c: $38 $0f

    ret z                                         ; $4f4e: $c8

    rrca                                          ; $4f4f: $0f
    db $f4                                        ; $4f50: $f4
    rst $10                                       ; $4f51: $d7
    rlca                                          ; $4f52: $07
    inc sp                                        ; $4f53: $33
    inc bc                                        ; $4f54: $03
    ret z                                         ; $4f55: $c8

    jp $fc1f                                      ; $4f56: $c3 $1f $fc


    ret nz                                        ; $4f59: $c0

    ccf                                           ; $4f5a: $3f
    rst $38                                       ; $4f5b: $ff
    db $fd                                        ; $4f5c: $fd

jr_036_4f5d:
    ld h, b                                       ; $4f5d: $60
    add d                                         ; $4f5e: $82
    ldh [$c0], a                                  ; $4f5f: $e0 $c0
    ld a, a                                       ; $4f61: $7f
    rst $38                                       ; $4f62: $ff
    ld a, a                                       ; $4f63: $7f
    pop bc                                        ; $4f64: $c1
    ld a, a                                       ; $4f65: $7f

jr_036_4f66:
    cp [hl]                                       ; $4f66: $be
    ret                                           ; $4f67: $c9


    db $e3                                        ; $4f68: $e3
    ld bc, $19ff                                  ; $4f69: $01 $ff $19

jr_036_4f6c:
    rst $38                                       ; $4f6c: $ff
    pop af                                        ; $4f6d: $f1
    dec h                                         ; $4f6e: $25
    ret nz                                        ; $4f6f: $c0

    jp Jump_036_7ef1                              ; $4f70: $c3 $f1 $7e


    ld l, b                                       ; $4f73: $68
    call nz, $cab8                                ; $4f74: $c4 $b8 $ca
    ld [hl], b                                    ; $4f77: $70
    ret z                                         ; $4f78: $c8

    rst $38                                       ; $4f79: $ff
    dec a                                         ; $4f7a: $3d
    nop                                           ; $4f7b: $00
    rst $38                                       ; $4f7c: $ff
    rst $38                                       ; $4f7d: $ff
    rlca                                          ; $4f7e: $07
    ld [$b00f], sp                                ; $4f7f: $08 $0f $b0
    rra                                           ; $4f82: $1f
    or b                                          ; $4f83: $b0
    rra                                           ; $4f84: $1f
    rst $38                                       ; $4f85: $ff
    ei                                            ; $4f86: $fb
    rra                                           ; $4f87: $1f
    db $10                                        ; $4f88: $10
    xor [hl]                                      ; $4f89: $ae
    ret nz                                        ; $4f8a: $c0

    di                                            ; $4f8b: $f3
    cp $ff                                        ; $4f8c: $fe $ff
    adc [hl]                                      ; $4f8e: $8e

jr_036_4f8f:
    ld a, a                                       ; $4f8f: $7f
    rst $38                                       ; $4f90: $ff
    jp nz, $fe3f                                  ; $4f91: $c2 $3f $fe

    inc hl                                        ; $4f94: $23

jr_036_4f95:
    cp $ff                                        ; $4f95: $fe $ff
    cp $07                                        ; $4f97: $fe $07
    cp $7b                                        ; $4f99: $fe $7b
    pop hl                                        ; $4f9b: $e1
    ld a, [hl]                                    ; $4f9c: $7e
    rst $38                                       ; $4f9d: $ff
    ld b, e                                       ; $4f9e: $43
    db $fc                                        ; $4f9f: $fc
    ld b, a                                       ; $4fa0: $47
    ld hl, sp+$7f                                 ; $4fa1: $f8 $7f

jr_036_4fa3:
    jp hl                                         ; $4fa3: $e9


    ret z                                         ; $4fa4: $c8

    and d                                         ; $4fa5: $a2
    ldh [$9e], a                                  ; $4fa6: $e0 $9e
    ldh [rIE], a                                  ; $4fa8: $e0 $ff
    jr nc, jr_036_4f6c                            ; $4faa: $30 $c0

    ret nz                                        ; $4fac: $c0

    jr nz, jr_036_4f8f                            ; $4fad: $20 $e0

    rst $38                                       ; $4faf: $ff
    dec e                                         ; $4fb0: $1d
    ldh a, [rNR33]                                ; $4fb1: $f0 $1d
    ldh a, [$f7]                                  ; $4fb3: $f0 $f7
    ldh a, [rNR23]                                ; $4fb5: $f0 $18
    ldh a, [$7b]                                  ; $4fb7: $f0 $7b
    rst $38                                       ; $4fb9: $ff
    rst $38                                       ; $4fba: $ff
    ld b, b                                       ; $4fbb: $40
    jp $7879                                      ; $4fbc: $c3 $79 $78


    db $fd                                        ; $4fbf: $fd
    db $fc                                        ; $4fc0: $fc
    jr c, jr_036_4fa3                             ; $4fc1: $38 $e0

    inc d                                         ; $4fc3: $14
    db $fc                                        ; $4fc4: $fc
    ldh [$c0], a                                  ; $4fc5: $e0 $c0
    rst $00                                       ; $4fc7: $c7
    ld bc, $a0b7                                  ; $4fc8: $01 $b7 $a0
    ld [hl], e                                    ; $4fcb: $73
    or d                                          ; $4fcc: $b2
    and b                                         ; $4fcd: $a0
    ld hl, sp-$5d                                 ; $4fce: $f8 $a3
    jr jr_036_4f95                                ; $4fd0: $18 $c3

    ei                                            ; $4fd2: $fb
    add hl, sp                                    ; $4fd3: $39
    jr nc, jr_036_4f66                            ; $4fd4: $30 $90

    pop bc                                        ; $4fd6: $c1
    pop bc                                        ; $4fd7: $c1
    ld a, a                                       ; $4fd8: $7f
    rst $00                                       ; $4fd9: $c7
    ld a, a                                       ; $4fda: $7f
    adc b                                         ; $4fdb: $88
    rst $38                                       ; $4fdc: $ff
    rst $38                                       ; $4fdd: $ff
    sub e                                         ; $4fde: $93
    rst $38                                       ; $4fdf: $ff
    sub a                                         ; $4fe0: $97
    db $fc                                        ; $4fe1: $fc
    and a                                         ; $4fe2: $a7
    db $fd                                        ; $4fe3: $fd
    ld a, e                                       ; $4fe4: $7b
    xor $90                                       ; $4fe5: $ee $90
    ret nz                                        ; $4fe7: $c0

    ld sp, hl                                     ; $4fe8: $f9
    rst $38                                       ; $4fe9: $ff
    sbc [hl]                                      ; $4fea: $9e
    ld a, [c]                                     ; $4feb: $f2
    ldh [$0d], a                                  ; $4fec: $e0 $0d
    rst $38                                       ; $4fee: $ff
    sbc a                                         ; $4fef: $9f
    and a                                         ; $4ff0: $a7
    di                                            ; $4ff1: $f3
    sbc a                                         ; $4ff2: $9f
    ei                                            ; $4ff3: $fb
    ld h, b                                       ; $4ff4: $60
    call nz, $c690                                ; $4ff5: $c4 $90 $c6
    sub l                                         ; $4ff8: $95
    ld [hl], c                                    ; $4ff9: $71
    and b                                         ; $4ffa: $a0
    inc c                                         ; $4ffb: $0c
    ccf                                           ; $4ffc: $3f
    rst $38                                       ; $4ffd: $ff
    inc bc                                        ; $4ffe: $03
    rst $38                                       ; $4fff: $ff
    rlca                                          ; $5000: $07
    db $fc                                        ; $5001: $fc
    ld a, a                                       ; $5002: $7f
    ld a, [$b0e0]                                 ; $5003: $fa $e0 $b0
    jp Jump_036_60ff                              ; $5006: $c3 $ff $60


    ret nz                                        ; $5009: $c0

    db $ed                                        ; $500a: $ed
    ldh [$fd], a                                  ; $500b: $e0 $fd
    db $10                                        ; $500d: $10
    rst $38                                       ; $500e: $ff
    ld [$fccf], sp                                ; $500f: $08 $cf $fc
    ld b, h                                       ; $5012: $44
    rst $38                                       ; $5013: $ff
    ld b, [hl]                                    ; $5014: $46
    ldh [$e3], a                                  ; $5015: $e0 $e3
    ld a, [$e0c0]                                 ; $5017: $fa $c0 $e0
    ld a, a                                       ; $501a: $7f
    rst $18                                       ; $501b: $df
    db $fc                                        ; $501c: $fc
    rrca                                          ; $501d: $0f
    db $fd                                        ; $501e: $fd
    rlca                                          ; $501f: $07
    db $fd                                        ; $5020: $fd
    ldh [$e3], a                                  ; $5021: $e0 $e3

jr_036_5023:
    ld l, l                                       ; $5023: $6d

jr_036_5024:
    ret nz                                        ; $5024: $c0

    rst $38                                       ; $5025: $ff
    db $ed                                        ; $5026: $ed
    ret nz                                        ; $5027: $c0

    rst $30                                       ; $5028: $f7
    jr nz, jr_036_5023                            ; $5029: $20 $f8

    jr jr_036_5024                                ; $502b: $18 $f7

    inc e                                         ; $502d: $1c
    rst $38                                       ; $502e: $ff
    ld c, l                                       ; $502f: $4d
    ld a, b                                       ; $5030: $78
    adc e                                         ; $5031: $8b
    ld hl, sp-$71                                 ; $5032: $f8 $8f
    ld sp, hl                                     ; $5034: $f9
    add [hl]                                      ; $5035: $86
    rst $38                                       ; $5036: $ff
    rst $18                                       ; $5037: $df
    add $7f                                       ; $5038: $c6 $7f
    db $e3                                        ; $503a: $e3
    ccf                                           ; $503b: $3f
    ld a, [hl]                                    ; $503c: $7e
    ld a, [de]                                    ; $503d: $1a
    ret nz                                        ; $503e: $c0

    rst $20                                       ; $503f: $e7
    db $fd                                        ; $5040: $fd
    rst $10                                       ; $5041: $d7
    rst $20                                       ; $5042: $e7
    db $fd                                        ; $5043: $fd
    jr nz, @-$2e                                  ; $5044: $20 $d0

    ret nz                                        ; $5046: $c0

    ld hl, $a019                                  ; $5047: $21 $19 $a0
    ldh a, [rIE]                                  ; $504a: $f0 $ff
    ld a, a                                       ; $504c: $7f
    ld hl, sp-$01                                 ; $504d: $f8 $ff
    sbc a                                         ; $504f: $9f
    ei                                            ; $5050: $fb
    sbc l                                         ; $5051: $9d
    ei                                            ; $5052: $fb
    jr nc, jr_036_5062                            ; $5053: $30 $0d

    and d                                         ; $5055: $a2
    push af                                       ; $5056: $f5
    ldh a, [rHDMA2]                               ; $5057: $f0 $52
    ret nz                                        ; $5059: $c0

    inc bc                                        ; $505a: $03
    ld d, b                                       ; $505b: $50
    ret nz                                        ; $505c: $c0

    ld e, a                                       ; $505d: $5f
    ret nz                                        ; $505e: $c0

    and b                                         ; $505f: $a0
    ldh [$8d], a                                  ; $5060: $e0 $8d

jr_036_5062:
    xor l                                         ; $5062: $ad
    cp $e0                                        ; $5063: $fe $e0
    rst $30                                       ; $5065: $f7
    ret nz                                        ; $5066: $c0

    cp b                                          ; $5067: $b8
    and b                                         ; $5068: $a0
    db $f4                                        ; $5069: $f4
    add e                                         ; $506a: $83
    rst $20                                       ; $506b: $e7
    ldh [$fc], a                                  ; $506c: $e0 $fc
    cp c                                          ; $506e: $b9
    rlca                                          ; $506f: $07

jr_036_5070:
    ld c, h                                       ; $5070: $4c
    jp $c550                                      ; $5071: $c3 $50 $c5


    ei                                            ; $5074: $fb
    rst $38                                       ; $5075: $ff
    ld [hl], a                                    ; $5076: $77
    add d                                         ; $5077: $82
    and b                                         ; $5078: $a0
    rst $08                                       ; $5079: $cf
    rst $38                                       ; $507a: $ff
    rst $38                                       ; $507b: $ff
    rst $38                                       ; $507c: $ff
    rst $10                                       ; $507d: $d7
    db $fd                                        ; $507e: $fd
    ld a, a                                       ; $507f: $7f
    ld sp, hl                                     ; $5080: $f9
    ccf                                           ; $5081: $3f
    pop hl                                        ; $5082: $e1
    rst $18                                       ; $5083: $df
    rst $38                                       ; $5084: $ff
    db $e3                                        ; $5085: $e3
    cp $7f                                        ; $5086: $fe $7f
    db $fc                                        ; $5088: $fc
    or [hl]                                       ; $5089: $b6
    add c                                         ; $508a: $81
    rrca                                          ; $508b: $0f
    rst $38                                       ; $508c: $ff
    xor $31                                       ; $508d: $ee $31
    ldh [$34], a                                  ; $508f: $e0 $34
    rst $38                                       ; $5091: $ff
    ld a, a                                       ; $5092: $7f
    ld b, b                                       ; $5093: $40

jr_036_5094:
    push bc                                       ; $5094: $c5
    di                                            ; $5095: $f3
    ld e, [hl]                                    ; $5096: $5e
    di                                            ; $5097: $f3
    rst $38                                       ; $5098: $ff
    cp $e3                                        ; $5099: $fe $e3
    cp $c7                                        ; $509b: $fe $c7
    db $fc                                        ; $509d: $fc
    rst $38                                       ; $509e: $ff
    ld hl, sp+$7f                                 ; $509f: $f8 $7f
    ld [$8298], a                                 ; $50a1: $ea $98 $82
    add e                                         ; $50a4: $83
    inc d                                         ; $50a5: $14
    ldh [$c0], a                                  ; $50a6: $e0 $c0
    ld e, b                                       ; $50a8: $58
    ret nz                                        ; $50a9: $c0

    rst $08                                       ; $50aa: $cf
    ld a, a                                       ; $50ab: $7f
    pop hl                                        ; $50ac: $e1
    ld e, a                                       ; $50ad: $5f
    ccf                                           ; $50ae: $3f
    db $e3                                        ; $50af: $e3
    ccf                                           ; $50b0: $3f
    cp $1f                                        ; $50b1: $fe $1f
    dec b                                         ; $50b3: $05
    ret nz                                        ; $50b4: $c0

    ld sp, hl                                     ; $50b5: $f9
    cp $a1                                        ; $50b6: $fe $a1
    sbc a                                         ; $50b8: $9f
    rst $28                                       ; $50b9: $ef
    rst $38                                       ; $50ba: $ff
    ld l, a                                       ; $50bb: $6f
    rst $38                                       ; $50bc: $ff
    ld e, a                                       ; $50bd: $5f
    ld [hl], e                                    ; $50be: $73
    add b                                         ; $50bf: $80
    ret nz                                        ; $50c0: $c0

    ldh [$f3], a                                  ; $50c1: $e0 $f3
    ld c, a                                       ; $50c3: $4f
    cp $63                                        ; $50c4: $fe $63
    cp $f7                                        ; $50c6: $fe $f7
    ld bc, $62c5                                  ; $50c8: $01 $c5 $62
    add b                                         ; $50cb: $80
    ldh [$57], a                                  ; $50cc: $e0 $57
    pop hl                                        ; $50ce: $e1
    rst $38                                       ; $50cf: $ff
    ld [hl], a                                    ; $50d0: $77
    db $fc                                        ; $50d1: $fc
    ld h, e                                       ; $50d2: $63
    cp $f3                                        ; $50d3: $fe $f3
    sbc [hl]                                      ; $50d5: $9e
    ei                                            ; $50d6: $fb
    adc $ff                                       ; $50d7: $ce $ff
    ld sp, hl                                     ; $50d9: $f9
    rrca                                          ; $50da: $0f
    ld a, $07                                     ; $50db: $3e $07
    adc $03                                       ; $50dd: $ce $03
    or $03                                        ; $50df: $f6 $03
    db $eb                                        ; $50e1: $eb
    inc sp                                        ; $50e2: $33
    ld bc, $83c8                                  ; $50e3: $01 $c8 $83
    rla                                           ; $50e6: $17
    adc $e0                                       ; $50e7: $ce $e0
    cpl                                           ; $50e9: $2f
    rst $38                                       ; $50ea: $ff
    db $10                                        ; $50eb: $10
    db $d3                                        ; $50ec: $d3
    rst $38                                       ; $50ed: $ff
    jr nz, jr_036_5070                            ; $50ee: $20 $80

    and b                                         ; $50f0: $a0
    nop                                           ; $50f1: $00
    jp nz, $9007                                  ; $50f2: $c2 $07 $90

    ret                                           ; $50f5: $c9


    add hl, de                                    ; $50f6: $19
    nop                                           ; $50f7: $00
    call z, $a0a7                                 ; $50f8: $cc $a7 $a0
    add sp, -$60                                  ; $50fb: $e8 $a0
    ldh [$3f], a                                  ; $50fd: $e0 $3f
    ld a, [de]                                    ; $50ff: $1a
    and c                                         ; $5100: $a1
    ldh [$a1], a                                  ; $5101: $e0 $a1
    ei                                            ; $5103: $fb
    ld c, $ff                                     ; $5104: $0e $ff
    db $fc                                        ; $5106: $fc
    call z, $88fb                                 ; $5107: $cc $fb $88
    rst $38                                       ; $510a: $ff
    ld c, b                                       ; $510b: $48
    db $fc                                        ; $510c: $fc
    jr nc, jr_036_510f                            ; $510d: $30 $00

jr_036_510f:
    jr nc, jr_036_5094                            ; $510f: $30 $83

    nop                                           ; $5111: $00
    nop                                           ; $5112: $00
    nop                                           ; $5113: $00
    nop                                           ; $5114: $00
    nop                                           ; $5115: $00
    nop                                           ; $5116: $00
    nop                                           ; $5117: $00
    nop                                           ; $5118: $00
    nop                                           ; $5119: $00
    nop                                           ; $511a: $00
    nop                                           ; $511b: $00
    nop                                           ; $511c: $00
    nop                                           ; $511d: $00
    nop                                           ; $511e: $00
    nop                                           ; $511f: $00
    rst $28                                       ; $5120: $ef
    rst $38                                       ; $5121: $ff
    rst $38                                       ; $5122: $ff
    rst $38                                       ; $5123: $ff
    add b                                         ; $5124: $80
    cp $ea                                        ; $5125: $fe $ea
    rst $38                                       ; $5127: $ff
    rst $38                                       ; $5128: $ff
    nop                                           ; $5129: $00
    db $fc                                        ; $512a: $fc
    cp $ea                                        ; $512b: $fe $ea
    ldh a, [$e2]                                  ; $512d: $f0 $e2
    ld hl, sp+$00                                 ; $512f: $f8 $00
    push hl                                       ; $5131: $e5
    nop                                           ; $5132: $00
    call z, $f700                                 ; $5133: $cc $00 $f7
    xor h                                         ; $5136: $ac
    nop                                           ; $5137: $00
    cp b                                          ; $5138: $b8
    ldh a, [$e4]                                  ; $5139: $f0 $e4
    inc b                                         ; $513b: $04
    nop                                           ; $513c: $00
    di                                            ; $513d: $f3
    nop                                           ; $513e: $00
    call $fa06                                    ; $513f: $cd $06 $fa
    ldh [$64], a                                  ; $5142: $e0 $64
    nop                                           ; $5144: $00
    rst $38                                       ; $5145: $ff
    db $ed                                        ; $5146: $ed
    or d                                          ; $5147: $b2
    db $eb                                        ; $5148: $eb
    ld hl, sp-$80                                 ; $5149: $f8 $80
    cp $b2                                        ; $514b: $fe $b2
    db $eb                                        ; $514d: $eb
    inc b                                         ; $514e: $04
    nop                                           ; $514f: $00
    add e                                         ; $5150: $83
    nop                                           ; $5151: $00
    add a                                         ; $5152: $87
    nop                                           ; $5153: $00
    rst $00                                       ; $5154: $c7
    di                                            ; $5155: $f3
    nop                                           ; $5156: $00
    db $e3                                        ; $5157: $e3
    xor [hl]                                      ; $5158: $ae
    ldh [$98], a                                  ; $5159: $e0 $98
    db $e3                                        ; $515b: $e3
    ld [hl], h                                    ; $515c: $74
    nop                                           ; $515d: $00
    db $f4                                        ; $515e: $f4
    nop                                           ; $515f: $00
    ld b, l                                       ; $5160: $45
    db $e4                                        ; $5161: $e4
    cp d                                          ; $5162: $ba
    ldh [rDIV], a                                 ; $5163: $e0 $04
    adc d                                         ; $5165: $8a
    db $eb                                        ; $5166: $eb
    ld a, h                                       ; $5167: $7c
    db $e4                                        ; $5168: $e4
    jp c, Jump_000_01e0                           ; $5169: $da $e0 $01

    cp $e9                                        ; $516c: $fe $e9
    rst $38                                       ; $516e: $ff
    dec b                                         ; $516f: $05
    ld bc, $80e5                                  ; $5170: $01 $e5 $80
    call z, $ac80                                 ; $5173: $cc $80 $ac
    add b                                         ; $5176: $80
    rst $38                                       ; $5177: $ff
    cp b                                          ; $5178: $b8
    add b                                         ; $5179: $80
    add e                                         ; $517a: $83
    add b                                         ; $517b: $80
    add a                                         ; $517c: $87
    add b                                         ; $517d: $80
    rst $00                                       ; $517e: $c7
    add b                                         ; $517f: $80
    add e                                         ; $5180: $83
    db $e3                                        ; $5181: $e3
    add b                                         ; $5182: $80
    ld a, b                                       ; $5183: $78
    push hl                                       ; $5184: $e5
    cp b                                          ; $5185: $b8
    push hl                                       ; $5186: $e5
    cp d                                          ; $5187: $ba
    db $ed                                        ; $5188: $ed
    ld c, b                                       ; $5189: $48
    push hl                                       ; $518a: $e5
    adc b                                         ; $518b: $88
    ld [c], a                                     ; $518c: $e2
    rlca                                          ; $518d: $07
    sbc e                                         ; $518e: $9b
    rst $28                                       ; $518f: $ef
    rrca                                          ; $5190: $0f
    ret nc                                        ; $5191: $d0

    db $eb                                        ; $5192: $eb
    add b                                         ; $5193: $80
    add b                                         ; $5194: $80
    ldh [$ea], a                                  ; $5195: $e0 $ea
    ld l, b                                       ; $5197: $68
    ldh [$f3], a                                  ; $5198: $e0 $f3
    ei                                            ; $519a: $fb
    ld bc, $9a07                                  ; $519b: $01 $07 $9a
    ldh [$65], a                                  ; $519e: $e0 $65
    ld bc, $0175                                  ; $51a0: $01 $75 $01
    push af                                       ; $51a3: $f5
    rra                                           ; $51a4: $1f
    ld bc, $01e5                                  ; $51a5: $01 $e5 $01
    ld bc, $7801                                  ; $51a8: $01 $01 $78
    push hl                                       ; $51ab: $e5
    nop                                           ; $51ac: $00
    and $e2                                       ; $51ad: $e6 $e2
    jp nz, $05ff                                  ; $51af: $c2 $ff $05

    ld bc, $03f2                                  ; $51b2: $01 $f2 $03
    inc b                                         ; $51b5: $04
    rlca                                          ; $51b6: $07
    dec b                                         ; $51b7: $05
    rlca                                          ; $51b8: $07
    rst $38                                       ; $51b9: $ff
    ld l, c                                       ; $51ba: $69
    rrca                                          ; $51bb: $0f
    rst $38                                       ; $51bc: $ff
    rrca                                          ; $51bd: $0f
    rst $38                                       ; $51be: $ff
    rra                                           ; $51bf: $1f
    rst $20                                       ; $51c0: $e7
    ccf                                           ; $51c1: $3f
    rst $38                                       ; $51c2: $ff
    ret nz                                        ; $51c3: $c0

    rst $38                                       ; $51c4: $ff
    adc a                                         ; $51c5: $8f
    rst $38                                       ; $51c6: $ff
    sbc [hl]                                      ; $51c7: $9e
    rst $38                                       ; $51c8: $ff
    ld [hl-], a                                   ; $51c9: $32
    rst $38                                       ; $51ca: $ff
    rst $38                                       ; $51cb: $ff
    ld h, b                                       ; $51cc: $60
    rst $38                                       ; $51cd: $ff
    add h                                         ; $51ce: $84
    add b                                         ; $51cf: $80
    rst $38                                       ; $51d0: $ff
    ldh a, [$8f]                                  ; $51d1: $f0 $8f
    ei                                            ; $51d3: $fb
    rst $38                                       ; $51d4: $ff
    rlca                                          ; $51d5: $07
    db $fc                                        ; $51d6: $fc
    db $e3                                        ; $51d7: $e3
    cp $93                                        ; $51d8: $fe $93
    cp $e9                                        ; $51da: $fe $e9
    rst $38                                       ; $51dc: $ff
    db $fd                                        ; $51dd: $fd
    dec c                                         ; $51de: $0d
    or d                                          ; $51df: $b2
    call nz, $80f8                                ; $51e0: $c4 $f8 $80

jr_036_51e3:
    push hl                                       ; $51e3: $e5
    ld b, b                                       ; $51e4: $40

jr_036_51e5:
    call z, $cf40                                 ; $51e5: $cc $40 $cf
    db $ec                                        ; $51e8: $ec
    jr nz, jr_036_51e3                            ; $51e9: $20 $f8

    jr nz, jr_036_51e5                            ; $51eb: $20 $f8

    push bc                                       ; $51ed: $c5
    ret nz                                        ; $51ee: $c0

    push bc                                       ; $51ef: $c5
    ld a, c                                       ; $51f0: $79
    rrca                                          ; $51f1: $0f
    rst $18                                       ; $51f2: $df
    ld sp, hl                                     ; $51f3: $f9
    rrca                                          ; $51f4: $0f
    ld a, [c]                                     ; $51f5: $f2
    rra                                           ; $51f6: $1f
    ld [de], a                                    ; $51f7: $12
    cp $e0                                        ; $51f8: $fe $e0
    ld a, [c]                                     ; $51fa: $f2
    rra                                           ; $51fb: $1f
    cp $b4                                        ; $51fc: $fe $b4
    ldh [rIF], a                                  ; $51fe: $e0 $0f
    ld c, b                                       ; $5200: $48
    rst $38                                       ; $5201: $ff
    call nz, Call_036_5eff                        ; $5202: $c4 $ff $5e
    rst $38                                       ; $5205: $ff
    rst $30                                       ; $5206: $f7
    ret nz                                        ; $5207: $c0

    rst $38                                       ; $5208: $ff
    ld b, e                                       ; $5209: $43
    ld l, c                                       ; $520a: $69
    ret nz                                        ; $520b: $c0

    add e                                         ; $520c: $83
    rst $38                                       ; $520d: $ff
    add a                                         ; $520e: $87
    rst $38                                       ; $520f: $ff
    rst $38                                       ; $5210: $ff
    dec h                                         ; $5211: $25
    rst $38                                       ; $5212: $ff
    ld b, a                                       ; $5213: $47
    rst $38                                       ; $5214: $ff
    db $f4                                        ; $5215: $f4
    rst $38                                       ; $5216: $ff
    ld b, $ff                                     ; $5217: $06 $ff
    rst $30                                       ; $5219: $f7
    inc b                                         ; $521a: $04
    rst $38                                       ; $521b: $ff
    ld [bc], a                                    ; $521c: $02
    ldh a, [$e0]                                  ; $521d: $f0 $e0
    jp $e3ff                                      ; $521f: $c3 $ff $e3


    ld h, b                                       ; $5222: $60
    rst $38                                       ; $5223: $ff
    rst $30                                       ; $5224: $f7
    db $10                                        ; $5225: $10
    rst $30                                       ; $5226: $f7
    ldh a, [$93]                                  ; $5227: $f0 $93
    ldh a, [$98]                                  ; $5229: $f0 $98
    ldh a, [$bf]                                  ; $522b: $f0 $bf
    sbc a                                         ; $522d: $9f
    ldh a, [$df]                                  ; $522e: $f0 $df
    ldh a, [rIE]                                  ; $5230: $f0 $ff
    ldh [$80], a                                  ; $5232: $e0 $80
    ldh [rTAC], a                                 ; $5234: $e0 $07
    jp nc, $e0fe                                  ; $5236: $d2 $fe $e0

    inc bc                                        ; $5239: $03
    ret c                                         ; $523a: $d8

    ret nz                                        ; $523b: $c0

    ld c, b                                       ; $523c: $48
    jp nz, $edc7                                  ; $523d: $c2 $c7 $ed

    ldh [$f8], a                                  ; $5240: $e0 $f8
    rst $38                                       ; $5242: $ff

jr_036_5243:
    cp a                                          ; $5243: $bf
    rst $18                                       ; $5244: $df
    rst $30                                       ; $5245: $f7
    cp a                                          ; $5246: $bf
    di                                            ; $5247: $f3
    rst $38                                       ; $5248: $ff
    ei                                            ; $5249: $fb
    inc h                                         ; $524a: $24
    ret nz                                        ; $524b: $c0

    rst $38                                       ; $524c: $ff
    db $fd                                        ; $524d: $fd
    rst $00                                       ; $524e: $c7
    ld e, a                                       ; $524f: $5f
    ldh [$3b], a                                  ; $5250: $e0 $3b
    rst $38                                       ; $5252: $ff

jr_036_5253:
    ei                                            ; $5253: $fb
    rst $18                                       ; $5254: $df
    db $fd                                        ; $5255: $fd
    sbc a                                         ; $5256: $9f
    inc de                                        ; $5257: $13
    db $fd                                        ; $5258: $fd
    cp a                                          ; $5259: $bf
    ldh a, [$e1]                                  ; $525a: $f0 $e1
    adc $e0                                       ; $525c: $ce $e0
    ret nz                                        ; $525e: $c0

    and c                                         ; $525f: $a1
    ldh [$0c], a                                  ; $5260: $e0 $0c
    pop bc                                        ; $5262: $c1
    jr @-$39                                      ; $5263: $18 $c5

    adc h                                         ; $5265: $8c
    xor b                                         ; $5266: $a8
    jp nz, $c330                                  ; $5267: $c2 $30 $c3

    ld h, a                                       ; $526a: $67
    inc bc                                        ; $526b: $03
    call c, $d7e2                                 ; $526c: $dc $e2 $d7
    ld [c], a                                     ; $526f: $e2
    db $db                                        ; $5270: $db
    pop hl                                        ; $5271: $e1
    add e                                         ; $5272: $83
    ld a, [hl]                                    ; $5273: $7e
    pop af                                        ; $5274: $f1
    rst $20                                       ; $5275: $e7
    rst $38                                       ; $5276: $ff
    inc bc                                        ; $5277: $03
    cp $c1                                        ; $5278: $fe $c1
    rst $38                                       ; $527a: $ff
    add c                                         ; $527b: $81
    ld [c], a                                     ; $527c: $e2
    and c                                         ; $527d: $a1
    db $ec                                        ; $527e: $ec
    jr z, jr_036_5243                             ; $527f: $28 $c2

    ldh a, [$a3]                                  ; $5281: $f0 $a3
    ld hl, sp-$40                                 ; $5283: $f8 $c0
    jr nc, jr_036_5253                            ; $5285: $30 $cc

    rst $38                                       ; $5287: $ff
    ld [hl], h                                    ; $5288: $74
    rlca                                          ; $5289: $07
    rst $38                                       ; $528a: $ff
    push af                                       ; $528b: $f5
    rlca                                          ; $528c: $07
    jp hl                                         ; $528d: $e9


    rrca                                          ; $528e: $0f
    dec bc                                        ; $528f: $0b
    ld c, $13                                     ; $5290: $0e $13
    rra                                           ; $5292: $1f
    rst $38                                       ; $5293: $ff
    db $f4                                        ; $5294: $f4
    rra                                           ; $5295: $1f
    ld hl, sp+$0f                                 ; $5296: $f8 $0f
    rst $38                                       ; $5298: $ff
    rst $38                                       ; $5299: $ff
    pop bc                                        ; $529a: $c1
    rst $38                                       ; $529b: $ff
    rst $38                                       ; $529c: $ff
    pop af                                        ; $529d: $f1
    rst $38                                       ; $529e: $ff
    rst $08                                       ; $529f: $cf
    ld a, a                                       ; $52a0: $7f
    add e                                         ; $52a1: $83
    cp $83                                        ; $52a2: $fe $83
    cp $ff                                        ; $52a4: $fe $ff

jr_036_52a6:
    rst $00                                       ; $52a6: $c7
    db $fc                                        ; $52a7: $fc
    ld a, a                                       ; $52a8: $7f
    ld hl, sp-$01                                 ; $52a9: $f8 $ff
    rst $38                                       ; $52ab: $ff
    add d                                         ; $52ac: $82
    rst $38                                       ; $52ad: $ff
    rst $38                                       ; $52ae: $ff
    rst $08                                       ; $52af: $cf
    rst $38                                       ; $52b0: $ff
    di                                            ; $52b1: $f3
    cp $c1                                        ; $52b2: $fe $c1
    ld a, a                                       ; $52b4: $7f
    pop bc                                        ; $52b5: $c1
    ld a, a                                       ; $52b6: $7f
    rst $38                                       ; $52b7: $ff
    db $e3                                        ; $52b8: $e3
    ccf                                           ; $52b9: $3f
    cp $1f                                        ; $52ba: $fe $1f
    rst $38                                       ; $52bc: $ff
    rst $38                                       ; $52bd: $ff
    inc hl                                        ; $52be: $23
    ldh [$f7], a                                  ; $52bf: $e0 $f7
    and a                                         ; $52c1: $a7
    ldh [$97], a                                  ; $52c2: $e0 $97
    jr nc, jr_036_52a6                            ; $52c4: $30 $e0

    ret z                                         ; $52c6: $c8

    ld hl, sp+$2f                                 ; $52c7: $f8 $2f
    ld hl, sp-$3d                                 ; $52c9: $f8 $c3
    rra                                           ; $52cb: $1f
    ldh a, [$c0]                                  ; $52cc: $f0 $c0
    ldh [$f0], a                                  ; $52ce: $e0 $f0
    xor e                                         ; $52d0: $ab
    ld [hl], d                                    ; $52d1: $72
    and h                                         ; $52d2: $a4
    sub b                                         ; $52d3: $90
    and e                                         ; $52d4: $a3
    dec b                                         ; $52d5: $05
    ld bc, $668b                                  ; $52d6: $01 $8b $66
    inc bc                                        ; $52d9: $03
    ret z                                         ; $52da: $c8

    and b                                         ; $52db: $a0
    rlca                                          ; $52dc: $07
    ret c                                         ; $52dd: $d8

    pop bc                                        ; $52de: $c1
    adc d                                         ; $52df: $8a
    push bc                                       ; $52e0: $c5
    ret z                                         ; $52e1: $c8

    and d                                         ; $52e2: $a2
    add b                                         ; $52e3: $80
    cp b                                          ; $52e4: $b8
    rst $08                                       ; $52e5: $cf
    ret nz                                        ; $52e6: $c0

    adc d                                         ; $52e7: $8a
    call nz, $ca50                                ; $52e8: $c4 $50 $ca
    add b                                         ; $52eb: $80

jr_036_52ec:
    ld hl, sp+$40                                 ; $52ec: $f8 $40
    sub b                                         ; $52ee: $90
    bit 4, l                                      ; $52ef: $cb $65
    db $fd                                        ; $52f1: $fd
    ld bc, $a488                                  ; $52f2: $01 $88 $a4
    ld [hl], b                                    ; $52f5: $70
    rst $38                                       ; $52f6: $ff
    rst $38                                       ; $52f7: $ff
    db $fc                                        ; $52f8: $fc
    rst $38                                       ; $52f9: $ff
    ld hl, sp-$0d                                 ; $52fa: $f8 $f3
    ld a, a                                       ; $52fc: $7f
    or b                                          ; $52fd: $b0
    ret nz                                        ; $52fe: $c0

    db $e3                                        ; $52ff: $e3
    ld c, $a1                                     ; $5300: $0e $a1
    ldh [$1f], a                                  ; $5302: $e0 $1f
    rst $38                                       ; $5304: $ff
    ccf                                           ; $5305: $3f
    rst $30                                       ; $5306: $f7
    ld [c], a                                     ; $5307: $e2
    ccf                                           ; $5308: $3f
    ld hl, sp+$68                                 ; $5309: $f8 $68
    and l                                         ; $530b: $a5
    rst $38                                       ; $530c: $ff
    rlca                                          ; $530d: $07
    ld hl, sp-$01                                 ; $530e: $f8 $ff
    rst $30                                       ; $5310: $f7
    ld b, h                                       ; $5311: $44
    rst $38                                       ; $5312: $ff
    sbc h                                         ; $5313: $9c
    ldh [$e5], a                                  ; $5314: $e0 $e5
    ld c, $ff                                     ; $5316: $0e $ff
    rst $38                                       ; $5318: $ff
    ccf                                           ; $5319: $3f
    and a                                         ; $531a: $a7
    rst $38                                       ; $531b: $ff
    rra                                           ; $531c: $1f
    cp $30                                        ; $531d: $fe $30
    add $f0                                       ; $531f: $c6 $f0

jr_036_5321:
    add l                                         ; $5321: $85
    add b                                         ; $5322: $80

Call_036_5323:
jr_036_5323:
    db $10                                        ; $5323: $10
    db $e3                                        ; $5324: $e3
    add hl, bc                                    ; $5325: $09
    ld a, [de]                                    ; $5326: $1a
    cp $e0                                        ; $5327: $fe $e0
    ld a, [c]                                     ; $5329: $f2
    jr c, jr_036_52ec                             ; $532a: $38 $c0

    ld a, [c]                                     ; $532c: $f2
    rra                                           ; $532d: $1f
    ld a, [$3aa3]                                 ; $532e: $fa $a3 $3a
    rst $00                                       ; $5331: $c7
    ld a, [$fea3]                                 ; $5332: $fa $a3 $fe
    ld a, [hl-]                                   ; $5335: $3a
    rst $00                                       ; $5336: $c7
    jp $e740                                      ; $5337: $c3 $40 $e7


    jr nz, jr_036_5323                            ; $533a: $20 $e7

    jr nz, jr_036_5321                            ; $533c: $20 $e3

    rst $28                                       ; $533e: $ef
    ld h, b                                       ; $533f: $60
    ld hl, sp+$10                                 ; $5340: $f8 $10
    rst $38                                       ; $5342: $ff
    ld a, $c0                                     ; $5343: $3e $c0
    sbc a                                         ; $5345: $9f
    ldh a, [rPCM12]                               ; $5346: $f0 $76
    rst $28                                       ; $5348: $ef
    inc bc                                        ; $5349: $03
    rst $30                                       ; $534a: $f7
    inc bc                                        ; $534b: $03
    push hl                                       ; $534c: $e5
    or [hl]                                       ; $534d: $b6
    and b                                         ; $534e: $a0
    dec b                                         ; $534f: $05
    rlca                                          ; $5350: $07
    ld hl, sp-$03                                 ; $5351: $f8 $fd
    rrca                                          ; $5353: $0f
    cp $e1                                        ; $5354: $fe $e1
    adc a                                         ; $5356: $8f
    rst $38                                       ; $5357: $ff
    inc a                                         ; $5358: $3c
    rst $38                                       ; $5359: $ff
    ld c, h                                       ; $535a: $4c
    rst $38                                       ; $535b: $ff
    rst $30                                       ; $535c: $f7
    ld [c], a                                     ; $535d: $e2
    rst $38                                       ; $535e: $ff
    add h                                         ; $535f: $84
    xor [hl]                                      ; $5360: $ae
    and b                                         ; $5361: $a0
    ldh [rIE], a                                  ; $5362: $e0 $ff
    sbc b                                         ; $5364: $98
    rst $38                                       ; $5365: $ff
    rst $38                                       ; $5366: $ff
    rra                                           ; $5367: $1f
    db $fc                                        ; $5368: $fc
    rst $38                                       ; $5369: $ff
    ldh a, [$7f]                                  ; $536a: $f0 $7f
    ld hl, sp+$3f                                 ; $536c: $f8 $3f
    db $fc                                        ; $536e: $fc
    ld a, a                                       ; $536f: $7f
    rra                                           ; $5370: $1f
    rst $38                                       ; $5371: $ff
    ld e, $ff                                     ; $5372: $1e $ff
    ld a, $ff                                     ; $5374: $3e $ff
    inc d                                         ; $5376: $14
    ret nz                                        ; $5377: $c0

    and $f7                                       ; $5378: $e6 $f7
    sbc b                                         ; $537a: $98
    ldh a, [$1f]                                  ; $537b: $f0 $1f
    cp $e0                                        ; $537d: $fe $e0
    ccf                                           ; $537f: $3f
    ldh [rPCM12], a                               ; $5380: $e0 $76
    inc bc                                        ; $5382: $03
    ld a, a                                       ; $5383: $7f
    db $f4                                        ; $5384: $f4
    rlca                                          ; $5385: $07
    db $e4                                        ; $5386: $e4
    rlca                                          ; $5387: $07
    ld [$080f], sp                                ; $5388: $08 $0f $08
    jp nz, $d7e2                                  ; $538b: $c2 $e2 $d7

    db $fc                                        ; $538e: $fc
    rlca                                          ; $538f: $07
    jr c, jr_036_5401                             ; $5390: $38 $6f

    and b                                         ; $5392: $a0
    ld e, $bc                                     ; $5393: $1e $bc
    ldh [$f8], a                                  ; $5395: $e0 $f8
    rst $38                                       ; $5397: $ff
    ld e, a                                       ; $5398: $5f
    ld a, b                                       ; $5399: $78
    rst $38                                       ; $539a: $ff
    ld a, h                                       ; $539b: $7c
    rst $38                                       ; $539c: $ff
    jr z, jr_036_5321                             ; $539d: $28 $82

    ret nz                                        ; $539f: $c0

    ld a, h                                       ; $53a0: $7c
    ld l, b                                       ; $53a1: $68
    and b                                         ; $53a2: $a0
    ld [hl], a                                    ; $53a3: $77
    ld b, a                                       ; $53a4: $47
    rst $38                                       ; $53a5: $ff
    ld hl, $c078                                  ; $53a6: $21 $78 $c0
    rlca                                          ; $53a9: $07
    rst $38                                       ; $53aa: $ff
    add hl, de                                    ; $53ab: $19
    add b                                         ; $53ac: $80
    ldh [rIE], a                                  ; $53ad: $e0 $ff
    rst $00                                       ; $53af: $c7
    ret nz                                        ; $53b0: $c0

    rst $20                                       ; $53b1: $e7
    and b                                         ; $53b2: $a0
    db $e3                                        ; $53b3: $e3
    and b                                         ; $53b4: $a0
    ld hl, sp-$60                                 ; $53b5: $f8 $a0
    rlca                                          ; $53b7: $07
    rst $38                                       ; $53b8: $ff
    ret nc                                        ; $53b9: $d0

    ccf                                           ; $53ba: $3f
    cp h                                          ; $53bb: $bc
    ldh [$8a], a                                  ; $53bc: $e0 $8a
    and e                                         ; $53be: $a3
    cp d                                          ; $53bf: $ba
    and a                                         ; $53c0: $a7
    adc d                                         ; $53c1: $8a
    and e                                         ; $53c2: $a3
    cp d                                          ; $53c3: $ba
    and a                                         ; $53c4: $a7
    ldh [$8a], a                                  ; $53c5: $e0 $8a
    and e                                         ; $53c7: $a3
    cp d                                          ; $53c8: $ba
    and a                                         ; $53c9: $a7
    adc d                                         ; $53ca: $8a
    and d                                         ; $53cb: $a2
    add [hl]                                      ; $53cc: $86
    and e                                         ; $53cd: $a3
    cp d                                          ; $53ce: $ba
    and d                                         ; $53cf: $a2
    ld hl, sp+$0f                                 ; $53d0: $f8 $0f
    db $fd                                        ; $53d2: $fd
    jp $fd07                                      ; $53d3: $c3 $07 $fd


    add b                                         ; $53d6: $80
    and c                                         ; $53d7: $a1
    cp $e1                                        ; $53d8: $fe $e1
    ld d, h                                       ; $53da: $54
    add b                                         ; $53db: $80
    rrca                                          ; $53dc: $0f
    add c                                         ; $53dd: $81
    inc e                                         ; $53de: $1c
    rst $38                                       ; $53df: $ff
    ld a, a                                       ; $53e0: $7f
    adc [hl]                                      ; $53e1: $8e
    rst $38                                       ; $53e2: $ff
    add $ff                                       ; $53e3: $c6 $ff
    ldh a, [rIE]                                  ; $53e5: $f0 $ff
    rst $28                                       ; $53e7: $ef
    ld a, b                                       ; $53e8: $78
    and b                                         ; $53e9: $a0
    jp hl                                         ; $53ea: $e9


    inc b                                         ; $53eb: $04
    ld d, e                                       ; $53ec: $53
    jp $e0fe                                      ; $53ed: $c3 $fe $e0


    ccf                                           ; $53f0: $3f
    sub l                                         ; $53f1: $95
    ld h, b                                       ; $53f2: $60
    rst $30                                       ; $53f3: $f7
    ccf                                           ; $53f4: $3f
    ccf                                           ; $53f5: $3f
    db $e3                                        ; $53f6: $e3
    ldh [$3f], a                                  ; $53f7: $e0 $3f
    ld a, [hl]                                    ; $53f9: $7e
    and e                                         ; $53fa: $a3
    ld a, h                                       ; $53fb: $7c
    and h                                         ; $53fc: $a4
    sbc a                                         ; $53fd: $9f
    add c                                         ; $53fe: $81
    jr c, @+$01                                   ; $53ff: $38 $ff

jr_036_5401:
    ld [hl], c                                    ; $5401: $71
    ei                                            ; $5402: $fb
    rst $38                                       ; $5403: $ff
    ld h, e                                       ; $5404: $63
    or a                                          ; $5405: $b7
    add b                                         ; $5406: $80
    rst $38                                       ; $5407: $ff
    rst $38                                       ; $5408: $ff
    ei                                            ; $5409: $fb
    rst $28                                       ; $540a: $ef
    rra                                           ; $540b: $1f
    sbc a                                         ; $540c: $9f
    ldh a, [$bf]                                  ; $540d: $f0 $bf
    ldh [$bf], a                                  ; $540f: $e0 $bf
    ldh [$28], a                                  ; $5411: $e0 $28
    and b                                         ; $5413: $a0
    ld e, b                                       ; $5414: $58
    and l                                         ; $5415: $a5
    ei                                            ; $5416: $fb
    inc hl                                        ; $5417: $23
    rst $38                                       ; $5418: $ff
    ld a, a                                       ; $5419: $7f
    cp $e2                                        ; $541a: $fe $e2
    ld h, a                                       ; $541c: $67
    and h                                         ; $541d: $a4
    ld a, [hl-]                                   ; $541e: $3a
    and b                                         ; $541f: $a0
    cp $fe                                        ; $5420: $fe $fe
    ld [c], a                                     ; $5422: $e2
    ld d, a                                       ; $5423: $57
    and h                                         ; $5424: $a4
    inc sp                                        ; $5425: $33
    rst $18                                       ; $5426: $df
    rst $30                                       ; $5427: $f7
    ldh [$e4], a                                  ; $5428: $e0 $e4
    sbc $e4                                       ; $542a: $de $e4
    ld a, [$e27e]                                 ; $542c: $fa $7e $e2
    jp hl                                         ; $542f: $e9


    ldh [$e0], a                                  ; $5430: $e0 $e0
    db $fd                                        ; $5432: $fd
    ld a, [hl]                                    ; $5433: $7e
    jp nz, $ffe9                                  ; $5434: $c2 $e9 $ff

    rst $38                                       ; $5437: $ff
    ld [hl], a                                    ; $5438: $77
    inc bc                                        ; $5439: $03
    db $fd                                        ; $543a: $fd
    rrca                                          ; $543b: $0f
    rst $38                                       ; $543c: $ff
    di                                            ; $543d: $f3
    ld e, $27                                     ; $543e: $1e $27
    dec a                                         ; $5440: $3d
    daa                                           ; $5441: $27
    dec a                                         ; $5442: $3d
    rst $20                                       ; $5443: $e7
    dec a                                         ; $5444: $3d
    rst $30                                       ; $5445: $f7
    di                                            ; $5446: $f3
    ld e, $ff                                     ; $5447: $1e $ff
    or e                                          ; $5449: $b3
    ldh [$e0], a                                  ; $544a: $e0 $e0
    rst $38                                       ; $544c: $ff
    sbc c                                         ; $544d: $99
    rst $38                                       ; $544e: $ff
    ld e, l                                       ; $544f: $5d
    dec b                                         ; $5450: $05
    and d                                         ; $5451: $a2
    add b                                         ; $5452: $80
    rlca                                          ; $5453: $07
    rst $38                                       ; $5454: $ff
    adc l                                         ; $5455: $8d
    di                                            ; $5456: $f3
    ld b, b                                       ; $5457: $40
    ld a, a                                       ; $5458: $7f
    adc $80                                       ; $5459: $ce $80
    ld [hl], a                                    ; $545b: $77
    sbc c                                         ; $545c: $99
    rst $38                                       ; $545d: $ff
    and b                                         ; $545e: $a0
    cp $e0                                        ; $545f: $fe $e0
    ldh [rIE], a                                  ; $5461: $e0 $ff
    or c                                          ; $5463: $b1
    db $e3                                        ; $5464: $e3
    ld b, b                                       ; $5465: $40
    rst $38                                       ; $5466: $ff
    jp $b7c0                                      ; $5467: $c3 $c0 $b7


    ldh a, [$cf]                                  ; $546a: $f0 $cf
    ld a, b                                       ; $546c: $78
    rst $20                                       ; $546d: $e7
    cp h                                          ; $546e: $bc
    rst $38                                       ; $546f: $ff
    db $e4                                        ; $5470: $e4
    cp h                                          ; $5471: $bc
    rst $20                                       ; $5472: $e7
    cp h                                          ; $5473: $bc
    rst $08                                       ; $5474: $cf
    ld a, b                                       ; $5475: $78
    rst $38                                       ; $5476: $ff
    rst $38                                       ; $5477: $ff
    nop                                           ; $5478: $00
    nop                                           ; $5479: $00
    nop                                           ; $547a: $00
    bit 2, h                                      ; $547b: $cb $54
    add hl, sp                                    ; $547d: $39
    ld d, l                                       ; $547e: $55
    cp [hl]                                       ; $547f: $be
    ld d, l                                       ; $5480: $55
    inc l                                         ; $5481: $2c
    ld d, [hl]                                    ; $5482: $56
    nop                                           ; $5483: $00
    nop                                           ; $5484: $00
    nop                                           ; $5485: $00
    nop                                           ; $5486: $00
    nop                                           ; $5487: $00
    nop                                           ; $5488: $00
    nop                                           ; $5489: $00
    nop                                           ; $548a: $00
    xor a                                         ; $548b: $af
    ld d, [hl]                                    ; $548c: $56
    dec c                                         ; $548d: $0d
    ld d, a                                       ; $548e: $57
    ld l, l                                       ; $548f: $6d
    ld d, a                                       ; $5490: $57
    call Call_000_0057                            ; $5491: $cd $57 $00
    nop                                           ; $5494: $00
    nop                                           ; $5495: $00
    nop                                           ; $5496: $00
    nop                                           ; $5497: $00
    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    nop                                           ; $549a: $00
    dec l                                         ; $549b: $2d
    ld e, b                                       ; $549c: $58
    sub a                                         ; $549d: $97
    ld e, b                                       ; $549e: $58
    ld bc, $6d59                                  ; $549f: $01 $59 $6d
    ld e, c                                       ; $54a2: $59
    nop                                           ; $54a3: $00
    nop                                           ; $54a4: $00
    nop                                           ; $54a5: $00
    nop                                           ; $54a6: $00
    nop                                           ; $54a7: $00
    nop                                           ; $54a8: $00
    nop                                           ; $54a9: $00
    nop                                           ; $54aa: $00
    reti                                          ; $54ab: $d9


    ld e, c                                       ; $54ac: $59
    ld b, a                                       ; $54ad: $47
    ld e, d                                       ; $54ae: $5a
    or l                                          ; $54af: $b5
    ld e, d                                       ; $54b0: $5a
    inc hl                                        ; $54b1: $23
    ld e, e                                       ; $54b2: $5b
    nop                                           ; $54b3: $00
    nop                                           ; $54b4: $00
    nop                                           ; $54b5: $00
    nop                                           ; $54b6: $00
    nop                                           ; $54b7: $00
    nop                                           ; $54b8: $00
    nop                                           ; $54b9: $00
    nop                                           ; $54ba: $00
    adc l                                         ; $54bb: $8d
    ld e, e                                       ; $54bc: $5b
    db $ec                                        ; $54bd: $ec
    ld e, e                                       ; $54be: $5b
    ld c, c                                       ; $54bf: $49
    ld e, h                                       ; $54c0: $5c
    and [hl]                                      ; $54c1: $a6
    ld e, h                                       ; $54c2: $5c
    nop                                           ; $54c3: $00
    nop                                           ; $54c4: $00
    nop                                           ; $54c5: $00
    nop                                           ; $54c6: $00
    nop                                           ; $54c7: $00
    nop                                           ; $54c8: $00
    nop                                           ; $54c9: $00
    nop                                           ; $54ca: $00
    ret                                           ; $54cb: $c9


    dec c                                         ; $54cc: $0d
    rst $38                                       ; $54cd: $ff
    rst $38                                       ; $54ce: $ff
    db $e3                                        ; $54cf: $e3
    ld [c], a                                     ; $54d0: $e2
    dec l                                         ; $54d1: $2d
    rst $30                                       ; $54d2: $f7
    xor $cc                                       ; $54d3: $ee $cc
    jp hl                                         ; $54d5: $e9


    ld c, l                                       ; $54d6: $4d
    ld c, l                                       ; $54d7: $4d
    db $fd                                        ; $54d8: $fd
    ld c, l                                       ; $54d9: $4d
    ld sp, hl                                     ; $54da: $f9
    db $e4                                        ; $54db: $e4
    nop                                           ; $54dc: $00
    ld bc, $0202                                  ; $54dd: $01 $02 $02
    ld [bc], a                                    ; $54e0: $02
    inc bc                                        ; $54e1: $03
    rst $38                                       ; $54e2: $ff
    inc bc                                        ; $54e3: $03
    inc bc                                        ; $54e4: $03
    inc b                                         ; $54e5: $04
    dec b                                         ; $54e6: $05
    rlca                                          ; $54e7: $07
    ld [$0909], sp                                ; $54e8: $08 $09 $09
    rst $38                                       ; $54eb: $ff
    add hl, bc                                    ; $54ec: $09
    ld b, $06                                     ; $54ed: $06 $06
    ld b, $0a                                     ; $54ef: $06 $0a
    dec bc                                        ; $54f1: $0b
    rlca                                          ; $54f2: $07
    ld b, $ff                                     ; $54f3: $06 $ff
    inc c                                         ; $54f5: $0c
    add hl, bc                                    ; $54f6: $09
    dec c                                         ; $54f7: $0d
    ld c, $06                                     ; $54f8: $0e $06
    rrca                                          ; $54fa: $0f
    add hl, bc                                    ; $54fb: $09
    dec bc                                        ; $54fc: $0b
    rst $38                                       ; $54fd: $ff
    ld [de], a                                    ; $54fe: $12
    ld b, $08                                     ; $54ff: $06 $08
    inc de                                        ; $5501: $13
    inc d                                         ; $5502: $14
    dec d                                         ; $5503: $15
    ld d, $0a                                     ; $5504: $16 $0a
    rst $38                                       ; $5506: $ff
    add hl, bc                                    ; $5507: $09
    rla                                           ; $5508: $17
    dec bc                                        ; $5509: $0b
    dec de                                        ; $550a: $1b
    ld b, $1c                                     ; $550b: $06 $1c
    dec e                                         ; $550d: $1d
    ld e, $ff                                     ; $550e: $1e $ff
    rra                                           ; $5510: $1f
    add hl, bc                                    ; $5511: $09
    jr nz, @+$09                                  ; $5512: $20 $07

    dec h                                         ; $5514: $25
    add hl, bc                                    ; $5515: $09
    dec de                                        ; $5516: $1b
    ld h, $ff                                     ; $5517: $26 $ff
    daa                                           ; $5519: $27
    jr z, jr_036_5545                             ; $551a: $28 $29

    jr nz, jr_036_5524                            ; $551c: $20 $06

    ld a, [hl+]                                   ; $551e: $2a
    rlca                                          ; $551f: $07
    cpl                                           ; $5520: $2f
    rst $38                                       ; $5521: $ff
    jr nc, jr_036_553f                            ; $5522: $30 $1b

jr_036_5524:
    ld sp, $3332                                  ; $5524: $31 $32 $33
    inc [hl]                                      ; $5527: $34
    dec [hl]                                      ; $5528: $35
    dec bc                                        ; $5529: $0b
    rst $38                                       ; $552a: $ff
    nop                                           ; $552b: $00
    inc bc                                        ; $552c: $03
    inc bc                                        ; $552d: $03
    ld a, [hl-]                                   ; $552e: $3a
    dec sp                                        ; $552f: $3b
    inc a                                         ; $5530: $3c
    dec a                                         ; $5531: $3d
    ld [bc], a                                    ; $5532: $02
    inc bc                                        ; $5533: $03
    ld [bc], a                                    ; $5534: $02
    dec b                                         ; $5535: $05
    nop                                           ; $5536: $00
    nop                                           ; $5537: $00
    nop                                           ; $5538: $00
    sub a                                         ; $5539: $97
    dec l                                         ; $553a: $2d
    dec l                                         ; $553b: $2d
    dec c                                         ; $553c: $0d
    rst $38                                       ; $553d: $ff
    ld [c], a                                     ; $553e: $e2

jr_036_553f:
    dec l                                         ; $553f: $2d
    rst $38                                       ; $5540: $ff
    ldh [$f6], a                                  ; $5541: $e0 $f6
    and $0d                                       ; $5543: $e6 $0d

jr_036_5545:
    nop                                           ; $5545: $00
    db $eb                                        ; $5546: $eb
    ld [c], a                                     ; $5547: $e2
    ld sp, hl                                     ; $5548: $f9
    ldh [$f6], a                                  ; $5549: $e0 $f6
    rst $20                                       ; $554b: $e7
    db $ed                                        ; $554c: $ed
    db $e3                                        ; $554d: $e3
    push af                                       ; $554e: $f5
    db $e4                                        ; $554f: $e4
    call z, $e2e1                                 ; $5550: $cc $e1 $e2
    pop hl                                        ; $5553: $e1
    call z, $eee3                                 ; $5554: $cc $e3 $ee
    push bc                                       ; $5557: $c5
    ldh [$6d], a                                  ; $5558: $e0 $6d
    ld c, l                                       ; $555a: $4d
    ld c, l                                       ; $555b: $4d
    cp h                                          ; $555c: $bc
    pop hl                                        ; $555d: $e1
    ld c, l                                       ; $555e: $4d
    ld c, l                                       ; $555f: $4d
    ld l, l                                       ; $5560: $6d
    rst $38                                       ; $5561: $ff
    dec b                                         ; $5562: $05
    inc b                                         ; $5563: $04
    inc bc                                        ; $5564: $03
    inc bc                                        ; $5565: $03
    inc bc                                        ; $5566: $03
    ld [bc], a                                    ; $5567: $02
    ld [bc], a                                    ; $5568: $02
    ld [bc], a                                    ; $5569: $02
    rst $38                                       ; $556a: $ff
    ld bc, $0b00                                  ; $556b: $01 $00 $0b
    ld a, [bc]                                    ; $556e: $0a
    ld b, $42                                     ; $556f: $06 $42
    ld b, $09                                     ; $5571: $06 $09
    rst $38                                       ; $5573: $ff
    ld b, e                                       ; $5574: $43
    add hl, bc                                    ; $5575: $09
    ld [$0b07], sp                                ; $5576: $08 $07 $0b
    add hl, bc                                    ; $5579: $09
    rrca                                          ; $557a: $0f
    ld b, h                                       ; $557b: $44
    rst $38                                       ; $557c: $ff
    ld b, l                                       ; $557d: $45
    ld b, [hl]                                    ; $557e: $46
    ld b, a                                       ; $557f: $47
    inc c                                         ; $5580: $0c
    ld b, $07                                     ; $5581: $06 $07
    rla                                           ; $5583: $17
    add hl, bc                                    ; $5584: $09
    rst $38                                       ; $5585: $ff
    ld a, [bc]                                    ; $5586: $0a
    ld c, d                                       ; $5587: $4a
    ld c, e                                       ; $5588: $4b
    ld c, h                                       ; $5589: $4c
    ld c, l                                       ; $558a: $4d
    ld [$1206], sp                                ; $558b: $08 $06 $12
    rst $38                                       ; $558e: $ff
    rlca                                          ; $558f: $07
    jr nz, jr_036_559b                            ; $5590: $20 $09

    ld d, c                                       ; $5592: $51
    ld d, d                                       ; $5593: $52
    ld d, e                                       ; $5594: $53
    ld d, h                                       ; $5595: $54
    ld b, $ff                                     ; $5596: $06 $ff
    dec de                                        ; $5598: $1b
    dec bc                                        ; $5599: $0b
    ld a, [hl+]                                   ; $559a: $2a

jr_036_559b:
    ld b, $20                                     ; $559b: $06 $20
    ld a, [bc]                                    ; $559d: $0a
    ld e, c                                       ; $559e: $59
    ld e, d                                       ; $559f: $5a
    rst $38                                       ; $55a0: $ff
    ld e, e                                       ; $55a1: $5b
    dec de                                        ; $55a2: $1b
    add hl, bc                                    ; $55a3: $09
    dec h                                         ; $55a4: $25
    dec bc                                        ; $55a5: $0b
    dec [hl]                                      ; $55a6: $35
    inc [hl]                                      ; $55a7: $34
    jr nz, @+$01                                  ; $55a8: $20 $ff

    ld h, b                                       ; $55aa: $60
    ld h, c                                       ; $55ab: $61
    ld h, d                                       ; $55ac: $62
    jr nc, jr_036_55de                            ; $55ad: $30 $2f

    rlca                                          ; $55af: $07
    dec b                                         ; $55b0: $05
    ld [bc], a                                    ; $55b1: $02
    rst $38                                       ; $55b2: $ff
    ld [bc], a                                    ; $55b3: $02
    ld h, a                                       ; $55b4: $67
    ld l, b                                       ; $55b5: $68
    ld l, c                                       ; $55b6: $69
    ld a, [hl-]                                   ; $55b7: $3a
    inc bc                                        ; $55b8: $03
    inc bc                                        ; $55b9: $03
    nop                                           ; $55ba: $00
    nop                                           ; $55bb: $00
    nop                                           ; $55bc: $00
    nop                                           ; $55bd: $00
    ret                                           ; $55be: $c9


    dec c                                         ; $55bf: $0d
    rst $38                                       ; $55c0: $ff
    rst $38                                       ; $55c1: $ff
    db $e3                                        ; $55c2: $e3
    ld [c], a                                     ; $55c3: $e2
    dec l                                         ; $55c4: $2d
    rst $30                                       ; $55c5: $f7
    xor $cc                                       ; $55c6: $ee $cc
    jp hl                                         ; $55c8: $e9


    ld c, l                                       ; $55c9: $4d
    ld c, l                                       ; $55ca: $4d
    db $fd                                        ; $55cb: $fd
    ld c, l                                       ; $55cc: $4d
    ld sp, hl                                     ; $55cd: $f9
    db $e4                                        ; $55ce: $e4
    nop                                           ; $55cf: $00
    ld bc, $0202                                  ; $55d0: $01 $02 $02
    ld [bc], a                                    ; $55d3: $02
    inc bc                                        ; $55d4: $03
    rst $38                                       ; $55d5: $ff
    inc bc                                        ; $55d6: $03
    inc bc                                        ; $55d7: $03
    inc b                                         ; $55d8: $04
    dec b                                         ; $55d9: $05
    rlca                                          ; $55da: $07
    ld [$0909], sp                                ; $55db: $08 $09 $09

jr_036_55de:
    rst $38                                       ; $55de: $ff
    add hl, bc                                    ; $55df: $09
    ld b, $06                                     ; $55e0: $06 $06
    ld b, $0a                                     ; $55e2: $06 $0a
    dec bc                                        ; $55e4: $0b
    rlca                                          ; $55e5: $07
    ld b, $ff                                     ; $55e6: $06 $ff
    inc c                                         ; $55e8: $0c
    add hl, bc                                    ; $55e9: $09
    db $10                                        ; $55ea: $10
    ld de, $0f06                                  ; $55eb: $11 $06 $0f
    add hl, bc                                    ; $55ee: $09
    dec bc                                        ; $55ef: $0b
    rst $38                                       ; $55f0: $ff
    ld [de], a                                    ; $55f1: $12
    ld b, $08                                     ; $55f2: $06 $08
    jr @+$1b                                      ; $55f4: $18 $19

    ld a, [de]                                    ; $55f6: $1a
    ld b, $0a                                     ; $55f7: $06 $0a
    rst $38                                       ; $55f9: $ff
    add hl, bc                                    ; $55fa: $09
    rla                                           ; $55fb: $17
    dec bc                                        ; $55fc: $0b
    dec de                                        ; $55fd: $1b
    ld b, $21                                     ; $55fe: $06 $21
    ld [hl+], a                                   ; $5600: $22
    inc hl                                        ; $5601: $23
    rst $38                                       ; $5602: $ff
    inc h                                         ; $5603: $24
    add hl, bc                                    ; $5604: $09
    jr nz, jr_036_560e                            ; $5605: $20 $07

    dec h                                         ; $5607: $25
    add hl, bc                                    ; $5608: $09
    dec de                                        ; $5609: $1b
    dec hl                                        ; $560a: $2b
    rst $38                                       ; $560b: $ff
    inc l                                         ; $560c: $2c
    dec l                                         ; $560d: $2d

jr_036_560e:
    ld l, $20                                     ; $560e: $2e $20
    ld b, $2a                                     ; $5610: $06 $2a
    rlca                                          ; $5612: $07
    cpl                                           ; $5613: $2f
    rst $38                                       ; $5614: $ff
    jr nc, jr_036_564d                            ; $5615: $30 $36

    scf                                           ; $5617: $37
    jr c, jr_036_5653                             ; $5618: $38 $39

    inc [hl]                                      ; $561a: $34
    dec [hl]                                      ; $561b: $35
    dec bc                                        ; $561c: $0b
    rst $38                                       ; $561d: $ff
    nop                                           ; $561e: $00
    inc bc                                        ; $561f: $03
    inc bc                                        ; $5620: $03
    ld a, $3f                                     ; $5621: $3e $3f
    ld b, b                                       ; $5623: $40
    ld b, c                                       ; $5624: $41
    ld [bc], a                                    ; $5625: $02
    inc bc                                        ; $5626: $03
    ld [bc], a                                    ; $5627: $02
    dec b                                         ; $5628: $05
    nop                                           ; $5629: $00
    nop                                           ; $562a: $00
    nop                                           ; $562b: $00
    sub a                                         ; $562c: $97
    dec l                                         ; $562d: $2d
    dec l                                         ; $562e: $2d
    dec c                                         ; $562f: $0d
    rst $38                                       ; $5630: $ff
    ld [c], a                                     ; $5631: $e2
    dec l                                         ; $5632: $2d
    rst $38                                       ; $5633: $ff
    ldh [$f6], a                                  ; $5634: $e0 $f6
    and $0d                                       ; $5636: $e6 $0d
    nop                                           ; $5638: $00
    db $eb                                        ; $5639: $eb
    ld [c], a                                     ; $563a: $e2
    ld sp, hl                                     ; $563b: $f9
    ldh [$f6], a                                  ; $563c: $e0 $f6
    rst $20                                       ; $563e: $e7
    db $ed                                        ; $563f: $ed
    db $e3                                        ; $5640: $e3
    push af                                       ; $5641: $f5
    add sp, -$1e                                  ; $5642: $e8 $e2
    pop hl                                        ; $5644: $e1
    jp $c5e3                                      ; $5645: $c3 $e3 $c5


    ldh [$f7], a                                  ; $5648: $e0 $f7
    ld l, l                                       ; $564a: $6d
    ld c, l                                       ; $564b: $4d
    ld c, l                                       ; $564c: $4d

jr_036_564d:
    cp c                                          ; $564d: $b9
    pop hl                                        ; $564e: $e1
    ld c, l                                       ; $564f: $4d
    ld c, l                                       ; $5650: $4d
    ld l, l                                       ; $5651: $6d
    dec b                                         ; $5652: $05

jr_036_5653:
    rst $38                                       ; $5653: $ff
    inc b                                         ; $5654: $04
    inc bc                                        ; $5655: $03
    inc bc                                        ; $5656: $03
    inc bc                                        ; $5657: $03
    ld [bc], a                                    ; $5658: $02
    ld [bc], a                                    ; $5659: $02
    ld [bc], a                                    ; $565a: $02
    ld bc, $00ff                                  ; $565b: $01 $ff $00
    dec bc                                        ; $565e: $0b
    ld a, [bc]                                    ; $565f: $0a
    ld b, $06                                     ; $5660: $06 $06
    ld b, $09                                     ; $5662: $06 $09
    add hl, bc                                    ; $5664: $09
    rst $38                                       ; $5665: $ff
    add hl, bc                                    ; $5666: $09
    ld [$0b07], sp                                ; $5667: $08 $07 $0b
    add hl, bc                                    ; $566a: $09
    rrca                                          ; $566b: $0f
    ld b, $48                                     ; $566c: $06 $48
    rst $38                                       ; $566e: $ff
    ld c, c                                       ; $566f: $49
    add hl, bc                                    ; $5670: $09
    inc c                                         ; $5671: $0c
    ld b, $07                                     ; $5672: $06 $07
    rla                                           ; $5674: $17
    add hl, bc                                    ; $5675: $09
    ld a, [bc]                                    ; $5676: $0a
    rst $38                                       ; $5677: $ff
    ld c, [hl]                                    ; $5678: $4e
    ld c, a                                       ; $5679: $4f
    ld d, b                                       ; $567a: $50
    add hl, bc                                    ; $567b: $09
    ld [$1206], sp                                ; $567c: $08 $06 $12
    rlca                                          ; $567f: $07
    rst $38                                       ; $5680: $ff
    jr nz, jr_036_568c                            ; $5681: $20 $09

    ld d, l                                       ; $5683: $55
    ld d, [hl]                                    ; $5684: $56
    ld d, a                                       ; $5685: $57
    ld e, b                                       ; $5686: $58
    ld b, $1b                                     ; $5687: $06 $1b
    rst $38                                       ; $5689: $ff
    dec bc                                        ; $568a: $0b
    ld a, [hl+]                                   ; $568b: $2a

jr_036_568c:
    ld b, $20                                     ; $568c: $06 $20
    ld e, h                                       ; $568e: $5c
    ld e, l                                       ; $568f: $5d
    ld e, [hl]                                    ; $5690: $5e
    ld e, a                                       ; $5691: $5f
    rst $38                                       ; $5692: $ff
    dec de                                        ; $5693: $1b
    add hl, bc                                    ; $5694: $09
    dec h                                         ; $5695: $25
    dec bc                                        ; $5696: $0b
    dec [hl]                                      ; $5697: $35
    inc [hl]                                      ; $5698: $34
    ld h, e                                       ; $5699: $63
    ld h, h                                       ; $569a: $64
    rst $38                                       ; $569b: $ff
    ld h, l                                       ; $569c: $65
    ld h, [hl]                                    ; $569d: $66
    jr nc, jr_036_56cf                            ; $569e: $30 $2f

    rlca                                          ; $56a0: $07
    dec b                                         ; $56a1: $05
    ld [bc], a                                    ; $56a2: $02
    ld [bc], a                                    ; $56a3: $02
    ld a, a                                       ; $56a4: $7f
    ld l, d                                       ; $56a5: $6a
    ld l, e                                       ; $56a6: $6b
    ld l, h                                       ; $56a7: $6c
    ld l, l                                       ; $56a8: $6d
    inc bc                                        ; $56a9: $03
    inc bc                                        ; $56aa: $03
    nop                                           ; $56ab: $00
    nop                                           ; $56ac: $00
    nop                                           ; $56ad: $00
    nop                                           ; $56ae: $00
    rla                                           ; $56af: $17
    dec c                                         ; $56b0: $0d
    dec c                                         ; $56b1: $0d
    dec l                                         ; $56b2: $2d
    cp $e3                                        ; $56b3: $fe $e3
    dec l                                         ; $56b5: $2d
    or $eb                                        ; $56b6: $f6 $eb
    add sp, -$1e                                  ; $56b8: $e8 $e2
    push hl                                       ; $56ba: $e5
    db $e3                                        ; $56bb: $e3
    ld h, b                                       ; $56bc: $60
    db $dd                                        ; $56bd: $dd
    push hl                                       ; $56be: $e5
    rst $38                                       ; $56bf: $ff
    pop hl                                        ; $56c0: $e1
    ldh a, [$e2]                                  ; $56c1: $f0 $e2
    push af                                       ; $56c3: $f5
    db $e4                                        ; $56c4: $e4
    or $f2                                        ; $56c5: $f6 $f2
    nop                                           ; $56c7: $00
    ld bc, $e4ff                                  ; $56c8: $01 $ff $e4
    rst $30                                       ; $56cb: $f7
    nop                                           ; $56cc: $00
    inc bc                                        ; $56cd: $03
    inc b                                         ; $56ce: $04

jr_036_56cf:
    rst $38                                       ; $56cf: $ff
    db $e4                                        ; $56d0: $e4
    inc bc                                        ; $56d1: $03
    dec b                                         ; $56d2: $05
    ld b, $06                                     ; $56d3: $06 $06
    or a                                          ; $56d5: $b7
    ld b, $07                                     ; $56d6: $06 $07
    ld [$e0fb], sp                                ; $56d8: $08 $fb $e0
    dec b                                         ; $56db: $05
    add hl, bc                                    ; $56dc: $09
    db $ec                                        ; $56dd: $ec
    ldh [$0a], a                                  ; $56de: $e0 $0a
    rst $38                                       ; $56e0: $ff
    dec bc                                        ; $56e1: $0b
    inc c                                         ; $56e2: $0c
    inc b                                         ; $56e3: $04
    inc b                                         ; $56e4: $04
    add hl, bc                                    ; $56e5: $09
    dec c                                         ; $56e6: $0d
    ld b, $06                                     ; $56e7: $06 $06
    ld a, a                                       ; $56e9: $7f
    ld c, $0f                                     ; $56ea: $0e $0f
    db $10                                        ; $56ec: $10
    ld de, $0606                                  ; $56ed: $11 $06 $06
    dec c                                         ; $56f0: $0d
    ret c                                         ; $56f1: $d8

    pop hl                                        ; $56f2: $e1
    ld [hl], a                                    ; $56f3: $77
    ld [de], a                                    ; $56f4: $12
    inc de                                        ; $56f5: $13
    inc d                                         ; $56f6: $14
    ret c                                         ; $56f7: $d8

    db $e4                                        ; $56f8: $e4
    dec d                                         ; $56f9: $15
    ld d, $17                                     ; $56fa: $16 $17
    ret c                                         ; $56fc: $d8

    ldh [rIE], a                                  ; $56fd: $e0 $ff
    jr jr_036_571a                                ; $56ff: $18 $19

    add hl, de                                    ; $5701: $19
    ld a, [de]                                    ; $5702: $1a
    dec de                                        ; $5703: $1b
    inc e                                         ; $5704: $1c
    dec e                                         ; $5705: $1d
    add hl, de                                    ; $5706: $19
    inc bc                                        ; $5707: $03
    add hl, de                                    ; $5708: $19
    jr jr_036_570b                                ; $5709: $18 $00

jr_036_570b:
    nop                                           ; $570b: $00
    nop                                           ; $570c: $00
    rla                                           ; $570d: $17
    dec c                                         ; $570e: $0d
    dec c                                         ; $570f: $0d
    dec l                                         ; $5710: $2d
    cp $e3                                        ; $5711: $fe $e3
    dec l                                         ; $5713: $2d
    or $eb                                        ; $5714: $f6 $eb
    add sp, -$1e                                  ; $5716: $e8 $e2
    push hl                                       ; $5718: $e5
    pop hl                                        ; $5719: $e1

jr_036_571a:
    ld h, b                                       ; $571a: $60
    rst $38                                       ; $571b: $ff
    pop hl                                        ; $571c: $e1
    db $dd                                        ; $571d: $dd
    db $e3                                        ; $571e: $e3
    or $e5                                        ; $571f: $f6 $e5
    db $eb                                        ; $5721: $eb
    push hl                                       ; $5722: $e5
    or $f2                                        ; $5723: $f6 $f2
    nop                                           ; $5725: $00
    ld bc, $e4ff                                  ; $5726: $01 $ff $e4
    rst $30                                       ; $5729: $f7
    nop                                           ; $572a: $00
    inc bc                                        ; $572b: $03
    inc b                                         ; $572c: $04
    rst $38                                       ; $572d: $ff
    db $e4                                        ; $572e: $e4
    inc bc                                        ; $572f: $03
    dec b                                         ; $5730: $05
    ld b, $06                                     ; $5731: $06 $06
    rst $30                                       ; $5733: $f7
    ld b, $1e                                     ; $5734: $06 $1e
    rra                                           ; $5736: $1f
    ei                                            ; $5737: $fb
    ldh [rTIMA], a                                ; $5738: $e0 $05
    add hl, bc                                    ; $573a: $09
    inc b                                         ; $573b: $04
    inc b                                         ; $573c: $04
    rst $30                                       ; $573d: $f7
    inc h                                         ; $573e: $24
    dec h                                         ; $573f: $25
    ld h, $e7                                     ; $5740: $26 $e7
    ldh [$09], a                                  ; $5742: $e0 $09
    dec c                                         ; $5744: $0d
    ld b, $06                                     ; $5745: $06 $06
    ld a, a                                       ; $5747: $7f
    dec l                                         ; $5748: $2d
    ld l, $2f                                     ; $5749: $2e $2f
    jr nc, jr_036_5753                            ; $574b: $30 $06

    ld b, $0d                                     ; $574d: $06 $0d
    ret c                                         ; $574f: $d8

    ldh [$ef], a                                  ; $5750: $e0 $ef
    add hl, sp                                    ; $5752: $39

jr_036_5753:
    ld a, [hl-]                                   ; $5753: $3a
    dec sp                                        ; $5754: $3b
    inc a                                         ; $5755: $3c
    ret c                                         ; $5756: $d8

    db $e3                                        ; $5757: $e3
    ld b, l                                       ; $5758: $45
    ld b, [hl]                                    ; $5759: $46
    ld b, a                                       ; $575a: $47
    db $fd                                        ; $575b: $fd
    ld c, b                                       ; $575c: $48
    ret c                                         ; $575d: $d8

    ldh [rNR23], a                                ; $575e: $e0 $18
    add hl, de                                    ; $5760: $19
    add hl, de                                    ; $5761: $19
    ld d, c                                       ; $5762: $51
    ld d, d                                       ; $5763: $52
    ld d, e                                       ; $5764: $53
    rrca                                          ; $5765: $0f
    ld d, h                                       ; $5766: $54
    add hl, de                                    ; $5767: $19
    add hl, de                                    ; $5768: $19
    jr jr_036_576b                                ; $5769: $18 $00

jr_036_576b:
    nop                                           ; $576b: $00
    nop                                           ; $576c: $00
    rla                                           ; $576d: $17
    dec c                                         ; $576e: $0d
    dec c                                         ; $576f: $0d
    dec l                                         ; $5770: $2d
    cp $e3                                        ; $5771: $fe $e3
    dec l                                         ; $5773: $2d
    or $eb                                        ; $5774: $f6 $eb
    add sp, -$1e                                  ; $5776: $e8 $e2
    push hl                                       ; $5778: $e5
    pop hl                                        ; $5779: $e1
    ld h, b                                       ; $577a: $60
    rst $38                                       ; $577b: $ff
    pop hl                                        ; $577c: $e1
    db $dd                                        ; $577d: $dd
    db $e3                                        ; $577e: $e3
    or $e5                                        ; $577f: $f6 $e5
    db $eb                                        ; $5781: $eb
    push hl                                       ; $5782: $e5
    or $f2                                        ; $5783: $f6 $f2
    nop                                           ; $5785: $00
    ld bc, $e4ff                                  ; $5786: $01 $ff $e4
    rst $30                                       ; $5789: $f7
    nop                                           ; $578a: $00
    inc bc                                        ; $578b: $03
    inc b                                         ; $578c: $04
    rst $38                                       ; $578d: $ff
    db $e4                                        ; $578e: $e4
    inc bc                                        ; $578f: $03
    dec b                                         ; $5790: $05
    ld b, $06                                     ; $5791: $06 $06
    rst $30                                       ; $5793: $f7
    jr nz, jr_036_57b7                            ; $5794: $20 $21

    ld b, $ff                                     ; $5796: $06 $ff
    ldh [rTIMA], a                                ; $5798: $e0 $05
    add hl, bc                                    ; $579a: $09
    inc b                                         ; $579b: $04
    inc b                                         ; $579c: $04
    rst $30                                       ; $579d: $f7
    daa                                           ; $579e: $27
    jr z, @+$2b                                   ; $579f: $28 $29

    rst $20                                       ; $57a1: $e7
    ldh [$09], a                                  ; $57a2: $e0 $09
    dec c                                         ; $57a4: $0d
    ld b, $06                                     ; $57a5: $06 $06
    ld a, a                                       ; $57a7: $7f
    ld sp, $3332                                  ; $57a8: $31 $32 $33
    inc [hl]                                      ; $57ab: $34
    ld b, $06                                     ; $57ac: $06 $06
    dec c                                         ; $57ae: $0d
    ret c                                         ; $57af: $d8

    ldh [$ef], a                                  ; $57b0: $e0 $ef
    dec a                                         ; $57b2: $3d
    ld a, $3f                                     ; $57b3: $3e $3f
    ld b, b                                       ; $57b5: $40
    ret c                                         ; $57b6: $d8

jr_036_57b7:
    db $e3                                        ; $57b7: $e3
    ld c, c                                       ; $57b8: $49
    ld c, d                                       ; $57b9: $4a
    ld c, e                                       ; $57ba: $4b
    db $fd                                        ; $57bb: $fd
    ld c, h                                       ; $57bc: $4c
    ret c                                         ; $57bd: $d8

    ldh [rNR23], a                                ; $57be: $e0 $18
    add hl, de                                    ; $57c0: $19
    add hl, de                                    ; $57c1: $19
    ld d, l                                       ; $57c2: $55
    ld d, [hl]                                    ; $57c3: $56
    ld d, a                                       ; $57c4: $57
    rrca                                          ; $57c5: $0f
    ld e, b                                       ; $57c6: $58
    add hl, de                                    ; $57c7: $19
    add hl, de                                    ; $57c8: $19
    jr jr_036_57cb                                ; $57c9: $18 $00

jr_036_57cb:
    nop                                           ; $57cb: $00
    nop                                           ; $57cc: $00
    rla                                           ; $57cd: $17
    dec c                                         ; $57ce: $0d
    dec c                                         ; $57cf: $0d
    dec l                                         ; $57d0: $2d
    cp $e3                                        ; $57d1: $fe $e3
    dec l                                         ; $57d3: $2d
    or $eb                                        ; $57d4: $f6 $eb
    add sp, -$1e                                  ; $57d6: $e8 $e2
    push hl                                       ; $57d8: $e5
    pop hl                                        ; $57d9: $e1
    ld h, b                                       ; $57da: $60
    rst $38                                       ; $57db: $ff
    pop hl                                        ; $57dc: $e1
    db $dd                                        ; $57dd: $dd
    db $e3                                        ; $57de: $e3
    or $e5                                        ; $57df: $f6 $e5
    db $eb                                        ; $57e1: $eb
    push hl                                       ; $57e2: $e5
    or $f2                                        ; $57e3: $f6 $f2
    nop                                           ; $57e5: $00
    ld bc, $e4ff                                  ; $57e6: $01 $ff $e4
    rst $30                                       ; $57e9: $f7
    nop                                           ; $57ea: $00
    inc bc                                        ; $57eb: $03
    inc b                                         ; $57ec: $04
    rst $38                                       ; $57ed: $ff
    db $e4                                        ; $57ee: $e4
    inc bc                                        ; $57ef: $03
    dec b                                         ; $57f0: $05
    ld b, $06                                     ; $57f1: $06 $06
    rst $30                                       ; $57f3: $f7
    ld [hl+], a                                   ; $57f4: $22
    inc hl                                        ; $57f5: $23
    ld b, $ff                                     ; $57f6: $06 $ff
    ldh [rTIMA], a                                ; $57f8: $e0 $05
    add hl, bc                                    ; $57fa: $09
    inc b                                         ; $57fb: $04
    inc b                                         ; $57fc: $04
    rst $30                                       ; $57fd: $f7
    ld a, [hl+]                                   ; $57fe: $2a
    dec hl                                        ; $57ff: $2b
    inc l                                         ; $5800: $2c
    rst $20                                       ; $5801: $e7
    ldh [$09], a                                  ; $5802: $e0 $09
    dec c                                         ; $5804: $0d
    ld b, $06                                     ; $5805: $06 $06
    ld a, a                                       ; $5807: $7f
    dec [hl]                                      ; $5808: $35
    ld [hl], $37                                  ; $5809: $36 $37
    jr c, jr_036_5813                             ; $580b: $38 $06

    ld b, $0d                                     ; $580d: $06 $0d
    ret c                                         ; $580f: $d8

    ldh [$ef], a                                  ; $5810: $e0 $ef
    ld b, c                                       ; $5812: $41

jr_036_5813:
    ld b, d                                       ; $5813: $42
    ld b, e                                       ; $5814: $43
    ld b, h                                       ; $5815: $44
    ret c                                         ; $5816: $d8

    db $e3                                        ; $5817: $e3
    ld c, l                                       ; $5818: $4d
    ld c, [hl]                                    ; $5819: $4e
    ld c, a                                       ; $581a: $4f
    db $fd                                        ; $581b: $fd
    ld d, b                                       ; $581c: $50
    ret c                                         ; $581d: $d8

    ldh [rNR23], a                                ; $581e: $e0 $18
    add hl, de                                    ; $5820: $19
    add hl, de                                    ; $5821: $19
    ld e, c                                       ; $5822: $59
    ld e, d                                       ; $5823: $5a
    ld e, e                                       ; $5824: $5b
    rrca                                          ; $5825: $0f
    ld e, h                                       ; $5826: $5c
    add hl, de                                    ; $5827: $19
    add hl, de                                    ; $5828: $19
    jr jr_036_582b                                ; $5829: $18 $00

jr_036_582b:
    nop                                           ; $582b: $00
    nop                                           ; $582c: $00
    adc a                                         ; $582d: $8f
    dec c                                         ; $582e: $0d
    dec c                                         ; $582f: $0d
    dec c                                         ; $5830: $0d
    dec l                                         ; $5831: $2d
    db $fc                                        ; $5832: $fc
    ld [c], a                                     ; $5833: $e2
    ld a, [$f5e2]                                 ; $5834: $fa $e2 $f5
    ldh [$2d], a                                  ; $5837: $e0 $2d
    ld h, b                                       ; $5839: $60
    ei                                            ; $583a: $fb
    pop hl                                        ; $583b: $e1
    cp $e3                                        ; $583c: $fe $e3
    or $e6                                        ; $583e: $f6 $e6
    db $ec                                        ; $5840: $ec
    rst $20                                       ; $5841: $e7
    ld [c], a                                     ; $5842: $e2
    db $f4                                        ; $5843: $f4
    ld c, l                                       ; $5844: $4d
    ld c, l                                       ; $5845: $4d
    rst $08                                       ; $5846: $cf
    db $e3                                        ; $5847: $e3
    ld a, a                                       ; $5848: $7f
    ld c, l                                       ; $5849: $4d
    ld l, l                                       ; $584a: $6d
    nop                                           ; $584b: $00
    ld bc, $0202                                  ; $584c: $01 $02 $02
    ld bc, $e1fc                                  ; $584f: $01 $fc $e1
    cp a                                          ; $5852: $bf
    nop                                           ; $5853: $00
    inc b                                         ; $5854: $04
    dec b                                         ; $5855: $05
    ld b, $06                                     ; $5856: $06 $06
    dec b                                         ; $5858: $05
    db $fc                                        ; $5859: $fc
    pop hl                                        ; $585a: $e1
    inc b                                         ; $585b: $04
    rst $38                                       ; $585c: $ff
    rlca                                          ; $585d: $07
    ld [$0909], sp                                ; $585e: $08 $09 $09
    ld a, [bc]                                    ; $5861: $0a
    dec bc                                        ; $5862: $0b
    add hl, bc                                    ; $5863: $09
    add hl, bc                                    ; $5864: $09
    rst $38                                       ; $5865: $ff
    ld [$0c07], sp                                ; $5866: $08 $07 $0c
    dec c                                         ; $5869: $0d
    ld c, $0f                                     ; $586a: $0e $0f
    db $10                                        ; $586c: $10
    ld de, $0eef                                  ; $586d: $11 $ef $0e
    ld c, $0d                                     ; $5870: $0e $0d
    inc c                                         ; $5872: $0c
    ld [c], a                                     ; $5873: $e2
    ldh [rNR12], a                                ; $5874: $e0 $12
    inc de                                        ; $5876: $13
    inc d                                         ; $5877: $14
    cp l                                          ; $5878: $bd
    dec d                                         ; $5879: $15
    ld [c], a                                     ; $587a: $e2
    db $e3                                        ; $587b: $e3
    ld d, $17                                     ; $587c: $16 $17
    jr jr_036_5899                                ; $587e: $18 $19

    ld [c], a                                     ; $5880: $e2
    db $e3                                        ; $5881: $e3
    ld a, [de]                                    ; $5882: $1a
    rst $30                                       ; $5883: $f7
    dec de                                        ; $5884: $1b
    inc e                                         ; $5885: $1c
    dec e                                         ; $5886: $1d
    ld [c], a                                     ; $5887: $e2
    ldh [rP1], a                                  ; $5888: $e0 $00
    ld bc, $1f1e                                  ; $588a: $01 $1e $1f
    ccf                                           ; $588d: $3f
    jr nz, jr_036_58b1                            ; $588e: $20 $21

    ld [hl+], a                                   ; $5890: $22
    ld e, $01                                     ; $5891: $1e $01
    nop                                           ; $5893: $00
    nop                                           ; $5894: $00
    nop                                           ; $5895: $00
    nop                                           ; $5896: $00
    adc a                                         ; $5897: $8f
    dec c                                         ; $5898: $0d

jr_036_5899:
    dec c                                         ; $5899: $0d
    dec c                                         ; $589a: $0d
    dec l                                         ; $589b: $2d
    db $fc                                        ; $589c: $fc
    ld [c], a                                     ; $589d: $e2
    ld a, [$f5e2]                                 ; $589e: $fa $e2 $f5
    ldh [$2d], a                                  ; $58a1: $e0 $2d
    ld h, b                                       ; $58a3: $60
    ei                                            ; $58a4: $fb
    pop hl                                        ; $58a5: $e1
    cp $e3                                        ; $58a6: $fe $e3
    or $e6                                        ; $58a8: $f6 $e6
    db $ec                                        ; $58aa: $ec
    rst $20                                       ; $58ab: $e7
    ld [c], a                                     ; $58ac: $e2
    db $f4                                        ; $58ad: $f4
    ld c, l                                       ; $58ae: $4d
    ld c, l                                       ; $58af: $4d
    rst $08                                       ; $58b0: $cf

jr_036_58b1:
    db $e3                                        ; $58b1: $e3
    ld a, a                                       ; $58b2: $7f
    ld c, l                                       ; $58b3: $4d
    ld l, l                                       ; $58b4: $6d
    nop                                           ; $58b5: $00
    ld bc, $0202                                  ; $58b6: $01 $02 $02
    ld bc, $e1fc                                  ; $58b9: $01 $fc $e1
    cp a                                          ; $58bc: $bf
    nop                                           ; $58bd: $00
    inc b                                         ; $58be: $04
    dec b                                         ; $58bf: $05
    ld b, $06                                     ; $58c0: $06 $06
    dec b                                         ; $58c2: $05
    db $fc                                        ; $58c3: $fc
    pop hl                                        ; $58c4: $e1
    inc b                                         ; $58c5: $04
    rst $38                                       ; $58c6: $ff

jr_036_58c7:
    rlca                                          ; $58c7: $07
    ld [$2309], sp                                ; $58c8: $08 $09 $23
    inc h                                         ; $58cb: $24
    dec h                                         ; $58cc: $25
    ld h, $09                                     ; $58cd: $26 $09
    rst $38                                       ; $58cf: $ff
    ld [$0c07], sp                                ; $58d0: $08 $07 $0c
    dec c                                         ; $58d3: $0d
    ld c, $2a                                     ; $58d4: $0e $2a
    dec hl                                        ; $58d6: $2b
    inc l                                         ; $58d7: $2c
    rst $28                                       ; $58d8: $ef
    dec l                                         ; $58d9: $2d
    ld c, $0d                                     ; $58da: $0e $0d
    inc c                                         ; $58dc: $0c
    ld [c], a                                     ; $58dd: $e2
    ldh [$35], a                                  ; $58de: $e0 $35
    ld [hl], $37                                  ; $58e0: $36 $37
    cp l                                          ; $58e2: $bd
    jr c, jr_036_58c7                             ; $58e3: $38 $e2

    db $e3                                        ; $58e5: $e3
    ld b, c                                       ; $58e6: $41
    ld b, d                                       ; $58e7: $42
    ld b, e                                       ; $58e8: $43
    add hl, bc                                    ; $58e9: $09
    ld [c], a                                     ; $58ea: $e2
    db $e3                                        ; $58eb: $e3
    ld c, [hl]                                    ; $58ec: $4e
    rst $30                                       ; $58ed: $f7
    ld c, a                                       ; $58ee: $4f
    ld d, b                                       ; $58ef: $50
    ld c, $e2                                     ; $58f0: $0e $e2
    ldh [rP1], a                                  ; $58f2: $e0 $00
    ld bc, $571e                                  ; $58f4: $01 $1e $57
    ccf                                           ; $58f7: $3f
    ld e, b                                       ; $58f8: $58
    ld e, c                                       ; $58f9: $59
    ld [hl+], a                                   ; $58fa: $22
    ld e, $01                                     ; $58fb: $1e $01
    nop                                           ; $58fd: $00
    nop                                           ; $58fe: $00
    nop                                           ; $58ff: $00
    nop                                           ; $5900: $00
    adc a                                         ; $5901: $8f
    dec c                                         ; $5902: $0d
    dec c                                         ; $5903: $0d
    dec c                                         ; $5904: $0d
    dec l                                         ; $5905: $2d
    db $fc                                        ; $5906: $fc
    ld [c], a                                     ; $5907: $e2
    ld a, [$f5e2]                                 ; $5908: $fa $e2 $f5
    ldh [$2d], a                                  ; $590b: $e0 $2d
    ld h, b                                       ; $590d: $60
    ei                                            ; $590e: $fb
    pop hl                                        ; $590f: $e1
    cp $e3                                        ; $5910: $fe $e3
    or $e6                                        ; $5912: $f6 $e6
    db $ec                                        ; $5914: $ec
    rst $20                                       ; $5915: $e7
    ld [c], a                                     ; $5916: $e2
    db $f4                                        ; $5917: $f4
    ld c, l                                       ; $5918: $4d
    ld c, l                                       ; $5919: $4d
    rst $08                                       ; $591a: $cf
    db $e3                                        ; $591b: $e3
    ld a, a                                       ; $591c: $7f
    ld c, l                                       ; $591d: $4d
    ld l, l                                       ; $591e: $6d
    nop                                           ; $591f: $00
    ld bc, $0202                                  ; $5920: $01 $02 $02
    ld bc, $e1fc                                  ; $5923: $01 $fc $e1
    cp a                                          ; $5926: $bf
    nop                                           ; $5927: $00
    inc b                                         ; $5928: $04
    dec b                                         ; $5929: $05
    ld b, $06                                     ; $592a: $06 $06
    dec b                                         ; $592c: $05
    db $fc                                        ; $592d: $fc
    pop hl                                        ; $592e: $e1
    inc b                                         ; $592f: $04
    rst $38                                       ; $5930: $ff
    rlca                                          ; $5931: $07

jr_036_5932:
    ld [$2709], sp                                ; $5932: $08 $09 $27
    jr z, jr_036_5960                             ; $5935: $28 $29

    add hl, bc                                    ; $5937: $09
    add hl, bc                                    ; $5938: $09
    rst $38                                       ; $5939: $ff
    ld [$0c07], sp                                ; $593a: $08 $07 $0c
    dec c                                         ; $593d: $0d
    ld c, $2e                                     ; $593e: $0e $2e
    cpl                                           ; $5940: $2f
    jr nc, jr_036_5932                            ; $5941: $30 $ef

    ld sp, $0d0e                                  ; $5943: $31 $0e $0d
    inc c                                         ; $5946: $0c
    ld [c], a                                     ; $5947: $e2
    ldh [$39], a                                  ; $5948: $e0 $39
    ld a, [hl-]                                   ; $594a: $3a
    dec sp                                        ; $594b: $3b
    ld a, l                                       ; $594c: $7d
    inc a                                         ; $594d: $3c
    ld [c], a                                     ; $594e: $e2
    ld [c], a                                     ; $594f: $e2
    ld b, h                                       ; $5950: $44
    ld b, l                                       ; $5951: $45
    ld b, [hl]                                    ; $5952: $46
    ld b, a                                       ; $5953: $47
    ld c, b                                       ; $5954: $48
    ld [c], a                                     ; $5955: $e2
    ld [c], a                                     ; $5956: $e2
    rst $18                                       ; $5957: $df
    ld d, c                                       ; $5958: $51
    ld d, d                                       ; $5959: $52
    ld d, e                                       ; $595a: $53
    ld d, h                                       ; $595b: $54
    ld c, $e2                                     ; $595c: $0e $e2
    ldh [rP1], a                                  ; $595e: $e0 $00

jr_036_5960:
    ld bc, $1eff                                  ; $5960: $01 $ff $1e
    rra                                           ; $5963: $1f
    jr nz, jr_036_5987                            ; $5964: $20 $21

    ld [hl+], a                                   ; $5966: $22
    ld e, $01                                     ; $5967: $1e $01
    nop                                           ; $5969: $00
    nop                                           ; $596a: $00
    nop                                           ; $596b: $00
    nop                                           ; $596c: $00
    adc a                                         ; $596d: $8f
    dec c                                         ; $596e: $0d
    dec c                                         ; $596f: $0d
    dec c                                         ; $5970: $0d
    dec l                                         ; $5971: $2d
    db $fc                                        ; $5972: $fc
    ld [c], a                                     ; $5973: $e2
    ld a, [$f5e2]                                 ; $5974: $fa $e2 $f5
    ldh [$2d], a                                  ; $5977: $e0 $2d
    ld h, b                                       ; $5979: $60
    ei                                            ; $597a: $fb
    pop hl                                        ; $597b: $e1
    cp $e3                                        ; $597c: $fe $e3
    or $e6                                        ; $597e: $f6 $e6
    db $ec                                        ; $5980: $ec
    rst $20                                       ; $5981: $e7
    ld [c], a                                     ; $5982: $e2
    db $f4                                        ; $5983: $f4
    ld c, l                                       ; $5984: $4d
    ld c, l                                       ; $5985: $4d
    rst $08                                       ; $5986: $cf

jr_036_5987:
    db $e3                                        ; $5987: $e3
    ld a, a                                       ; $5988: $7f
    ld c, l                                       ; $5989: $4d
    ld l, l                                       ; $598a: $6d
    nop                                           ; $598b: $00
    ld bc, $0202                                  ; $598c: $01 $02 $02
    ld bc, $e1fc                                  ; $598f: $01 $fc $e1
    cp a                                          ; $5992: $bf
    nop                                           ; $5993: $00
    inc b                                         ; $5994: $04
    dec b                                         ; $5995: $05
    ld b, $06                                     ; $5996: $06 $06
    dec b                                         ; $5998: $05
    db $fc                                        ; $5999: $fc
    pop hl                                        ; $599a: $e1
    inc b                                         ; $599b: $04
    rst $38                                       ; $599c: $ff
    rlca                                          ; $599d: $07
    ld [$2709], sp                                ; $599e: $08 $09 $27
    jr z, jr_036_59cc                             ; $59a1: $28 $29

    add hl, bc                                    ; $59a3: $09
    add hl, bc                                    ; $59a4: $09
    rst $38                                       ; $59a5: $ff
    ld [$0c07], sp                                ; $59a6: $08 $07 $0c
    dec c                                         ; $59a9: $0d
    ld c, $2e                                     ; $59aa: $0e $2e
    ld [hl-], a                                   ; $59ac: $32
    inc sp                                        ; $59ad: $33
    rst $28                                       ; $59ae: $ef
    inc [hl]                                      ; $59af: $34
    ld c, $0d                                     ; $59b0: $0e $0d
    inc c                                         ; $59b2: $0c
    ld [c], a                                     ; $59b3: $e2
    ldh [$3d], a                                  ; $59b4: $e0 $3d
    ld a, $3f                                     ; $59b6: $3e $3f
    ld a, l                                       ; $59b8: $7d
    ld b, b                                       ; $59b9: $40
    ld [c], a                                     ; $59ba: $e2
    ld [c], a                                     ; $59bb: $e2
    ld c, c                                       ; $59bc: $49
    ld c, d                                       ; $59bd: $4a
    ld c, e                                       ; $59be: $4b
    ld c, h                                       ; $59bf: $4c
    ld c, l                                       ; $59c0: $4d
    ld [c], a                                     ; $59c1: $e2
    ld [c], a                                     ; $59c2: $e2
    rst $18                                       ; $59c3: $df
    ld d, l                                       ; $59c4: $55
    ld d, [hl]                                    ; $59c5: $56
    ld d, e                                       ; $59c6: $53
    ld d, h                                       ; $59c7: $54
    ld c, $e2                                     ; $59c8: $0e $e2
    ldh [rP1], a                                  ; $59ca: $e0 $00

jr_036_59cc:
    ld bc, $1eff                                  ; $59cc: $01 $ff $1e
    rra                                           ; $59cf: $1f
    jr nz, jr_036_59f3                            ; $59d0: $20 $21

    ld [hl+], a                                   ; $59d2: $22
    ld e, $01                                     ; $59d3: $1e $01
    nop                                           ; $59d5: $00
    nop                                           ; $59d6: $00
    nop                                           ; $59d7: $00
    nop                                           ; $59d8: $00
    adc a                                         ; $59d9: $8f
    dec c                                         ; $59da: $0d
    dec c                                         ; $59db: $0d
    dec c                                         ; $59dc: $0d
    dec l                                         ; $59dd: $2d
    db $fc                                        ; $59de: $fc
    ld [c], a                                     ; $59df: $e2
    ld a, [$f5e2]                                 ; $59e0: $fa $e2 $f5
    ldh [$2d], a                                  ; $59e3: $e0 $2d
    add b                                         ; $59e5: $80
    ei                                            ; $59e6: $fb
    pop hl                                        ; $59e7: $e1
    cp $e3                                        ; $59e8: $fe $e3
    rst $30                                       ; $59ea: $f7
    ld [c], a                                     ; $59eb: $e2
    add sp, -$1d                                  ; $59ec: $e8 $e3
    db $ec                                        ; $59ee: $ec
    push hl                                       ; $59ef: $e5
    ld [c], a                                     ; $59f0: $e2
    db $ed                                        ; $59f1: $ed
    db $ec                                        ; $59f2: $ec

jr_036_59f3:
    db $e4                                        ; $59f3: $e4
    ld c, l                                       ; $59f4: $4d
    db $fd                                        ; $59f5: $fd
    ld c, l                                       ; $59f6: $4d
    rst $08                                       ; $59f7: $cf
    db $e3                                        ; $59f8: $e3
    ld c, l                                       ; $59f9: $4d
    ld l, l                                       ; $59fa: $6d
    nop                                           ; $59fb: $00
    ld bc, $0202                                  ; $59fc: $01 $02 $02
    db $fd                                        ; $59ff: $fd
    ld bc, $e1fc                                  ; $5a00: $01 $fc $e1
    nop                                           ; $5a03: $00
    inc b                                         ; $5a04: $04
    dec b                                         ; $5a05: $05
    ld b, $06                                     ; $5a06: $06 $06
    dec b                                         ; $5a08: $05
    cp $fc                                        ; $5a09: $fe $fc
    pop hl                                        ; $5a0b: $e1
    inc b                                         ; $5a0c: $04
    rlca                                          ; $5a0d: $07
    ld [$0909], sp                                ; $5a0e: $08 $09 $09
    ld a, [bc]                                    ; $5a11: $0a
    dec bc                                        ; $5a12: $0b
    rst $38                                       ; $5a13: $ff
    add hl, bc                                    ; $5a14: $09
    add hl, bc                                    ; $5a15: $09
    ld [$0d0c], sp                                ; $5a16: $08 $0c $0d
    ld c, $0f                                     ; $5a19: $0e $0f
    rrca                                          ; $5a1b: $0f
    cp a                                          ; $5a1c: $bf
    db $10                                        ; $5a1d: $10
    ld de, $0f12                                  ; $5a1e: $11 $12 $0f
    ld c, $0d                                     ; $5a21: $0e $0d
    ld [c], a                                     ; $5a23: $e2
    ldh [rNR13], a                                ; $5a24: $e0 $13
    rst $30                                       ; $5a26: $f7
    inc d                                         ; $5a27: $14
    dec d                                         ; $5a28: $15
    ld d, $e2                                     ; $5a29: $16 $e2
    db $e3                                        ; $5a2b: $e3
    rla                                           ; $5a2c: $17
    jr jr_036_5a48                                ; $5a2d: $18 $19

    ld a, [de]                                    ; $5a2f: $1a
    sbc $e2                                       ; $5a30: $de $e2
    db $e3                                        ; $5a32: $e3
    dec de                                        ; $5a33: $1b
    inc e                                         ; $5a34: $1c
    dec e                                         ; $5a35: $1d
    ld e, $e2                                     ; $5a36: $1e $e2
    ldh [rP1], a                                  ; $5a38: $e0 $00
    ld bc, $1fff                                  ; $5a3a: $01 $ff $1f
    jr nz, jr_036_5a60                            ; $5a3d: $20 $21

    ld [hl+], a                                   ; $5a3f: $22
    inc hl                                        ; $5a40: $23
    rra                                           ; $5a41: $1f
    ld bc, $0000                                  ; $5a42: $01 $00 $00
    nop                                           ; $5a45: $00
    nop                                           ; $5a46: $00
    adc a                                         ; $5a47: $8f

jr_036_5a48:
    dec c                                         ; $5a48: $0d
    dec c                                         ; $5a49: $0d
    dec c                                         ; $5a4a: $0d
    dec l                                         ; $5a4b: $2d
    db $fc                                        ; $5a4c: $fc
    ld [c], a                                     ; $5a4d: $e2
    ld a, [$f5e2]                                 ; $5a4e: $fa $e2 $f5
    ldh [$2d], a                                  ; $5a51: $e0 $2d
    add b                                         ; $5a53: $80
    ei                                            ; $5a54: $fb
    pop hl                                        ; $5a55: $e1
    cp $e3                                        ; $5a56: $fe $e3
    rst $30                                       ; $5a58: $f7
    ld [c], a                                     ; $5a59: $e2
    add sp, -$1d                                  ; $5a5a: $e8 $e3
    db $ec                                        ; $5a5c: $ec
    push hl                                       ; $5a5d: $e5
    ld [c], a                                     ; $5a5e: $e2
    db $ed                                        ; $5a5f: $ed

jr_036_5a60:
    db $ec                                        ; $5a60: $ec
    db $e4                                        ; $5a61: $e4
    ld c, l                                       ; $5a62: $4d
    db $fd                                        ; $5a63: $fd
    ld c, l                                       ; $5a64: $4d
    rst $08                                       ; $5a65: $cf
    db $e3                                        ; $5a66: $e3
    ld c, l                                       ; $5a67: $4d
    ld l, l                                       ; $5a68: $6d
    nop                                           ; $5a69: $00
    ld bc, $0202                                  ; $5a6a: $01 $02 $02
    db $fd                                        ; $5a6d: $fd
    ld bc, $e1fc                                  ; $5a6e: $01 $fc $e1
    nop                                           ; $5a71: $00
    inc b                                         ; $5a72: $04
    dec b                                         ; $5a73: $05
    ld b, $06                                     ; $5a74: $06 $06
    dec b                                         ; $5a76: $05
    cp $fc                                        ; $5a77: $fe $fc
    pop hl                                        ; $5a79: $e1
    inc b                                         ; $5a7a: $04
    rlca                                          ; $5a7b: $07
    ld [$0909], sp                                ; $5a7c: $08 $09 $09
    ld a, [bc]                                    ; $5a7f: $0a
    dec bc                                        ; $5a80: $0b
    rst $38                                       ; $5a81: $ff
    add hl, bc                                    ; $5a82: $09
    add hl, bc                                    ; $5a83: $09
    ld [$0d0c], sp                                ; $5a84: $08 $0c $0d
    ld c, $0f                                     ; $5a87: $0e $0f
    rrca                                          ; $5a89: $0f
    cp a                                          ; $5a8a: $bf
    db $10                                        ; $5a8b: $10
    dec h                                         ; $5a8c: $25
    ld [de], a                                    ; $5a8d: $12
    rrca                                          ; $5a8e: $0f
    ld c, $0d                                     ; $5a8f: $0e $0d
    ld [c], a                                     ; $5a91: $e2
    ldh [rNR13], a                                ; $5a92: $e0 $13
    rst $30                                       ; $5a94: $f7
    inc d                                         ; $5a95: $14
    ld a, [hl+]                                   ; $5a96: $2a
    dec hl                                        ; $5a97: $2b
    ld [c], a                                     ; $5a98: $e2
    db $e3                                        ; $5a99: $e3
    ld [hl-], a                                   ; $5a9a: $32
    inc sp                                        ; $5a9b: $33
    add hl, de                                    ; $5a9c: $19
    inc [hl]                                      ; $5a9d: $34
    sbc $e2                                       ; $5a9e: $de $e2
    db $e3                                        ; $5aa0: $e3
    dec sp                                        ; $5aa1: $3b
    inc a                                         ; $5aa2: $3c
    dec e                                         ; $5aa3: $1d
    ld e, $e2                                     ; $5aa4: $1e $e2
    ldh [rP1], a                                  ; $5aa6: $e0 $00
    ld bc, $1fff                                  ; $5aa8: $01 $ff $1f
    jr nz, jr_036_5ace                            ; $5aab: $20 $21

    ld [hl+], a                                   ; $5aad: $22
    inc hl                                        ; $5aae: $23
    rra                                           ; $5aaf: $1f
    ld bc, $0000                                  ; $5ab0: $01 $00 $00
    nop                                           ; $5ab3: $00
    nop                                           ; $5ab4: $00
    adc a                                         ; $5ab5: $8f
    dec c                                         ; $5ab6: $0d
    dec c                                         ; $5ab7: $0d
    dec c                                         ; $5ab8: $0d
    dec l                                         ; $5ab9: $2d
    db $fc                                        ; $5aba: $fc
    ld [c], a                                     ; $5abb: $e2
    ld a, [$f5e2]                                 ; $5abc: $fa $e2 $f5
    ldh [$2d], a                                  ; $5abf: $e0 $2d
    add b                                         ; $5ac1: $80
    ei                                            ; $5ac2: $fb
    pop hl                                        ; $5ac3: $e1
    cp $e3                                        ; $5ac4: $fe $e3
    rst $30                                       ; $5ac6: $f7
    ld [c], a                                     ; $5ac7: $e2
    add sp, -$1d                                  ; $5ac8: $e8 $e3
    db $ec                                        ; $5aca: $ec
    push hl                                       ; $5acb: $e5
    ld [c], a                                     ; $5acc: $e2
    db $ed                                        ; $5acd: $ed

jr_036_5ace:
    db $ec                                        ; $5ace: $ec
    db $e4                                        ; $5acf: $e4
    ld c, l                                       ; $5ad0: $4d
    db $fd                                        ; $5ad1: $fd
    ld c, l                                       ; $5ad2: $4d
    rst $08                                       ; $5ad3: $cf
    db $e3                                        ; $5ad4: $e3
    ld c, l                                       ; $5ad5: $4d
    ld l, l                                       ; $5ad6: $6d
    nop                                           ; $5ad7: $00
    ld bc, $0202                                  ; $5ad8: $01 $02 $02
    db $fd                                        ; $5adb: $fd
    ld bc, $e1fc                                  ; $5adc: $01 $fc $e1
    nop                                           ; $5adf: $00
    inc b                                         ; $5ae0: $04
    dec b                                         ; $5ae1: $05
    ld b, $06                                     ; $5ae2: $06 $06
    dec b                                         ; $5ae4: $05
    cp $fc                                        ; $5ae5: $fe $fc
    pop hl                                        ; $5ae7: $e1
    inc b                                         ; $5ae8: $04
    rlca                                          ; $5ae9: $07
    ld [$0909], sp                                ; $5aea: $08 $09 $09
    ld a, [bc]                                    ; $5aed: $0a
    dec bc                                        ; $5aee: $0b
    rst $38                                       ; $5aef: $ff
    add hl, bc                                    ; $5af0: $09
    add hl, bc                                    ; $5af1: $09
    ld [$0d0c], sp                                ; $5af2: $08 $0c $0d
    ld c, $0f                                     ; $5af5: $0e $0f
    rrca                                          ; $5af7: $0f
    cp a                                          ; $5af8: $bf
    db $10                                        ; $5af9: $10
    dec h                                         ; $5afa: $25
    ld [de], a                                    ; $5afb: $12
    rrca                                          ; $5afc: $0f
    ld c, $0d                                     ; $5afd: $0e $0d
    ld [c], a                                     ; $5aff: $e2
    ldh [rNR13], a                                ; $5b00: $e0 $13
    rst $30                                       ; $5b02: $f7
    inc d                                         ; $5b03: $14
    inc l                                         ; $5b04: $2c
    dec l                                         ; $5b05: $2d
    ld [c], a                                     ; $5b06: $e2
    db $e3                                        ; $5b07: $e3
    ld [hl-], a                                   ; $5b08: $32
    inc sp                                        ; $5b09: $33
    dec [hl]                                      ; $5b0a: $35
    ld [hl], $de                                  ; $5b0b: $36 $de
    ld [c], a                                     ; $5b0d: $e2
    db $e3                                        ; $5b0e: $e3
    dec sp                                        ; $5b0f: $3b
    inc a                                         ; $5b10: $3c
    dec e                                         ; $5b11: $1d
    ld e, $e2                                     ; $5b12: $1e $e2
    ldh [rP1], a                                  ; $5b14: $e0 $00
    ld bc, $1fff                                  ; $5b16: $01 $ff $1f
    jr nz, jr_036_5b3c                            ; $5b19: $20 $21

    ld [hl+], a                                   ; $5b1b: $22
    inc hl                                        ; $5b1c: $23
    rra                                           ; $5b1d: $1f
    ld bc, $0000                                  ; $5b1e: $01 $00 $00
    nop                                           ; $5b21: $00
    nop                                           ; $5b22: $00
    adc a                                         ; $5b23: $8f
    dec c                                         ; $5b24: $0d
    dec c                                         ; $5b25: $0d
    dec c                                         ; $5b26: $0d
    dec l                                         ; $5b27: $2d
    db $fc                                        ; $5b28: $fc
    ld [c], a                                     ; $5b29: $e2
    ld a, [$f5e2]                                 ; $5b2a: $fa $e2 $f5
    ldh [$2d], a                                  ; $5b2d: $e0 $2d
    ld h, b                                       ; $5b2f: $60
    ei                                            ; $5b30: $fb
    pop hl                                        ; $5b31: $e1
    cp $e3                                        ; $5b32: $fe $e3
    rst $30                                       ; $5b34: $f7
    rst $20                                       ; $5b35: $e7
    db $ec                                        ; $5b36: $ec
    and $e2                                       ; $5b37: $e6 $e2
    db $f4                                        ; $5b39: $f4
    ld c, l                                       ; $5b3a: $4d
    ld c, l                                       ; $5b3b: $4d

jr_036_5b3c:
    rst $08                                       ; $5b3c: $cf
    db $e3                                        ; $5b3d: $e3
    ld a, a                                       ; $5b3e: $7f
    ld c, l                                       ; $5b3f: $4d
    ld l, l                                       ; $5b40: $6d
    nop                                           ; $5b41: $00
    ld bc, $0202                                  ; $5b42: $01 $02 $02
    ld bc, $e1fc                                  ; $5b45: $01 $fc $e1
    cp a                                          ; $5b48: $bf
    nop                                           ; $5b49: $00
    inc b                                         ; $5b4a: $04
    dec b                                         ; $5b4b: $05
    ld b, $06                                     ; $5b4c: $06 $06
    dec b                                         ; $5b4e: $05
    db $fc                                        ; $5b4f: $fc
    pop hl                                        ; $5b50: $e1
    inc b                                         ; $5b51: $04
    rst $38                                       ; $5b52: $ff
    rlca                                          ; $5b53: $07

jr_036_5b54:
    ld [$0909], sp                                ; $5b54: $08 $09 $09
    ld a, [bc]                                    ; $5b57: $0a
    inc h                                         ; $5b58: $24
    add hl, bc                                    ; $5b59: $09
    add hl, bc                                    ; $5b5a: $09
    rst $38                                       ; $5b5b: $ff
    ld [$0d0c], sp                                ; $5b5c: $08 $0c $0d
    ld c, $0f                                     ; $5b5f: $0e $0f
    ld h, $27                                     ; $5b61: $26 $27
    jr z, jr_036_5b54                             ; $5b63: $28 $ef

    add hl, hl                                    ; $5b65: $29
    rrca                                          ; $5b66: $0f
    ld c, $0d                                     ; $5b67: $0e $0d
    ld [c], a                                     ; $5b69: $e2
    ldh [$2e], a                                  ; $5b6a: $e0 $2e
    cpl                                           ; $5b6c: $2f
    jr nc, @-$41                                  ; $5b6d: $30 $bd

    ld sp, $e3e2                                  ; $5b6f: $31 $e2 $e3
    scf                                           ; $5b72: $37
    jr c, @+$3b                                   ; $5b73: $38 $39

    ld a, [hl-]                                   ; $5b75: $3a
    ld [c], a                                     ; $5b76: $e2
    db $e3                                        ; $5b77: $e3
    dec a                                         ; $5b78: $3d
    rst $30                                       ; $5b79: $f7
    ld a, $1d                                     ; $5b7a: $3e $1d
    ccf                                           ; $5b7c: $3f
    ld [c], a                                     ; $5b7d: $e2
    ldh [rP1], a                                  ; $5b7e: $e0 $00
    ld bc, $201f                                  ; $5b80: $01 $1f $20
    ccf                                           ; $5b83: $3f
    ld hl, $2322                                  ; $5b84: $21 $22 $23
    rra                                           ; $5b87: $1f
    ld bc, $0000                                  ; $5b88: $01 $00 $00
    nop                                           ; $5b8b: $00
    nop                                           ; $5b8c: $00
    ld h, l                                       ; $5b8d: $65
    dec c                                         ; $5b8e: $0d
    rst $38                                       ; $5b8f: $ff
    push hl                                       ; $5b90: $e5
    dec l                                         ; $5b91: $2d
    or $e6                                        ; $5b92: $f6 $e6
    rst $30                                       ; $5b94: $f7
    add sp, $4d                                   ; $5b95: $e8 $4d
    ld c, l                                       ; $5b97: $4d
    ld hl, sp-$15                                 ; $5b98: $f8 $eb
    db $fc                                        ; $5b9a: $fc
    ld [c], a                                     ; $5b9b: $e2
    push af                                       ; $5b9c: $f5
    ret c                                         ; $5b9d: $d8

    and $6d                                       ; $5b9e: $e6 $6d
    nop                                           ; $5ba0: $00
    ld bc, $0302                                  ; $5ba1: $01 $02 $03
    ld bc, $fc7e                                  ; $5ba4: $01 $7e $fc
    pop hl                                        ; $5ba7: $e1
    nop                                           ; $5ba8: $00
    dec b                                         ; $5ba9: $05
    ld b, $07                                     ; $5baa: $06 $07
    ld [$fc09], sp                                ; $5bac: $08 $09 $fc
    pop hl                                        ; $5baf: $e1
    rst $38                                       ; $5bb0: $ff
    ld a, [bc]                                    ; $5bb1: $0a
    dec bc                                        ; $5bb2: $0b
    inc c                                         ; $5bb3: $0c
    dec c                                         ; $5bb4: $0d
    dec c                                         ; $5bb5: $0d
    ld c, $0f                                     ; $5bb6: $0e $0f
    dec c                                         ; $5bb8: $0d
    rst $38                                       ; $5bb9: $ff
    dec c                                         ; $5bba: $0d
    db $10                                        ; $5bbb: $10
    ld de, $0605                                  ; $5bbc: $11 $05 $06
    ld [de], a                                    ; $5bbf: $12
    inc de                                        ; $5bc0: $13
    inc d                                         ; $5bc1: $14
    rst $18                                       ; $5bc2: $df
    dec d                                         ; $5bc3: $15
    ld d, $17                                     ; $5bc4: $16 $17
    add hl, bc                                    ; $5bc6: $09
    ld a, [bc]                                    ; $5bc7: $0a
    ld [c], a                                     ; $5bc8: $e2
    ldh [rNR23], a                                ; $5bc9: $e0 $18
    add hl, de                                    ; $5bcb: $19
    ld a, e                                       ; $5bcc: $7b
    ld a, [de]                                    ; $5bcd: $1a
    dec de                                        ; $5bce: $1b
    ld [c], a                                     ; $5bcf: $e2
    db $e3                                        ; $5bd0: $e3
    inc e                                         ; $5bd1: $1c
    dec e                                         ; $5bd2: $1d
    ld e, $1f                                     ; $5bd3: $1e $1f
    ld [c], a                                     ; $5bd5: $e2
    db $e3                                        ; $5bd6: $e3
    rst $28                                       ; $5bd7: $ef
    jr nz, jr_036_5bfb                            ; $5bd8: $20 $21

    ld [hl+], a                                   ; $5bda: $22
    inc hl                                        ; $5bdb: $23
    ld [c], a                                     ; $5bdc: $e2
    ldh [rP1], a                                  ; $5bdd: $e0 $00
    ld bc, $7f24                                  ; $5bdf: $01 $24 $7f
    dec h                                         ; $5be2: $25
    ld h, $27                                     ; $5be3: $26 $27
    jr z, jr_036_5c10                             ; $5be5: $28 $29

    ld bc, $0000                                  ; $5be7: $01 $00 $00
    nop                                           ; $5bea: $00
    nop                                           ; $5beb: $00
    ld h, l                                       ; $5bec: $65
    dec c                                         ; $5bed: $0d
    rst $38                                       ; $5bee: $ff
    push hl                                       ; $5bef: $e5
    dec l                                         ; $5bf0: $2d
    or $e6                                        ; $5bf1: $f6 $e6
    rst $30                                       ; $5bf3: $f7
    add sp, $4d                                   ; $5bf4: $e8 $4d
    ld c, l                                       ; $5bf6: $4d
    ld hl, sp-$15                                 ; $5bf7: $f8 $eb
    db $fc                                        ; $5bf9: $fc
    ld [c], a                                     ; $5bfa: $e2

jr_036_5bfb:
    push af                                       ; $5bfb: $f5
    ret c                                         ; $5bfc: $d8

    and $6d                                       ; $5bfd: $e6 $6d
    nop                                           ; $5bff: $00
    ld bc, $0302                                  ; $5c00: $01 $02 $03
    ld bc, $fc7e                                  ; $5c03: $01 $7e $fc
    pop hl                                        ; $5c06: $e1
    nop                                           ; $5c07: $00
    dec b                                         ; $5c08: $05
    ld b, $07                                     ; $5c09: $06 $07
    ld [$fc09], sp                                ; $5c0b: $08 $09 $fc
    pop hl                                        ; $5c0e: $e1
    cp a                                          ; $5c0f: $bf

jr_036_5c10:
    ld a, [bc]                                    ; $5c10: $0a
    dec bc                                        ; $5c11: $0b
    inc c                                         ; $5c12: $0c
    dec c                                         ; $5c13: $0d
    dec c                                         ; $5c14: $0d
    db $10                                        ; $5c15: $10
    db $fc                                        ; $5c16: $fc
    pop hl                                        ; $5c17: $e1
    ld de, $05ff                                  ; $5c18: $11 $ff $05
    ld b, $12                                     ; $5c1b: $06 $12
    ld a, [hl+]                                   ; $5c1d: $2a
    dec hl                                        ; $5c1e: $2b
    inc l                                         ; $5c1f: $2c
    dec l                                         ; $5c20: $2d
    rla                                           ; $5c21: $17
    ld a, e                                       ; $5c22: $7b
    add hl, bc                                    ; $5c23: $09
    ld a, [bc]                                    ; $5c24: $0a
    ld [c], a                                     ; $5c25: $e2
    ldh [$34], a                                  ; $5c26: $e0 $34
    dec [hl]                                      ; $5c28: $35
    ld [hl], $37                                  ; $5c29: $36 $37
    ld [c], a                                     ; $5c2b: $e2
    db $e3                                        ; $5c2c: $e3
    rst $28                                       ; $5c2d: $ef
    ld b, b                                       ; $5c2e: $40
    ld b, c                                       ; $5c2f: $41
    ld b, d                                       ; $5c30: $42
    ld b, e                                       ; $5c31: $43
    ld [c], a                                     ; $5c32: $e2
    db $e3                                        ; $5c33: $e3
    rla                                           ; $5c34: $17
    ld c, d                                       ; $5c35: $4a
    ld c, e                                       ; $5c36: $4b
    db $fd                                        ; $5c37: $fd
    ld [de], a                                    ; $5c38: $12
    ld [c], a                                     ; $5c39: $e2
    ldh [rP1], a                                  ; $5c3a: $e0 $00
    ld bc, $4f24                                  ; $5c3c: $01 $24 $4f
    ld d, b                                       ; $5c3f: $50
    ld d, c                                       ; $5c40: $51
    rrca                                          ; $5c41: $0f
    ld d, d                                       ; $5c42: $52
    add hl, hl                                    ; $5c43: $29
    ld bc, $0000                                  ; $5c44: $01 $00 $00
    nop                                           ; $5c47: $00
    nop                                           ; $5c48: $00
    ld h, l                                       ; $5c49: $65
    dec c                                         ; $5c4a: $0d
    rst $38                                       ; $5c4b: $ff
    push hl                                       ; $5c4c: $e5
    dec l                                         ; $5c4d: $2d
    or $e6                                        ; $5c4e: $f6 $e6
    rst $30                                       ; $5c50: $f7
    add sp, $4d                                   ; $5c51: $e8 $4d
    ld c, l                                       ; $5c53: $4d
    ld hl, sp-$15                                 ; $5c54: $f8 $eb
    db $fc                                        ; $5c56: $fc
    ld [c], a                                     ; $5c57: $e2
    push af                                       ; $5c58: $f5
    ret c                                         ; $5c59: $d8

    and $6d                                       ; $5c5a: $e6 $6d
    nop                                           ; $5c5c: $00
    ld bc, $0302                                  ; $5c5d: $01 $02 $03
    ld bc, $fc7e                                  ; $5c60: $01 $7e $fc
    pop hl                                        ; $5c63: $e1
    nop                                           ; $5c64: $00
    dec b                                         ; $5c65: $05
    ld b, $07                                     ; $5c66: $06 $07
    ld [$fc09], sp                                ; $5c68: $08 $09 $fc
    pop hl                                        ; $5c6b: $e1
    cp a                                          ; $5c6c: $bf
    ld a, [bc]                                    ; $5c6d: $0a
    dec bc                                        ; $5c6e: $0b
    inc c                                         ; $5c6f: $0c
    dec c                                         ; $5c70: $0d
    dec c                                         ; $5c71: $0d
    db $10                                        ; $5c72: $10
    db $fc                                        ; $5c73: $fc
    pop hl                                        ; $5c74: $e1
    ld de, $05ff                                  ; $5c75: $11 $ff $05
    ld b, $12                                     ; $5c78: $06 $12
    ld l, $2f                                     ; $5c7a: $2e $2f
    jr nc, jr_036_5cab                            ; $5c7c: $30 $2d

    rla                                           ; $5c7e: $17
    ld a, e                                       ; $5c7f: $7b
    add hl, bc                                    ; $5c80: $09
    ld a, [bc]                                    ; $5c81: $0a
    ld [c], a                                     ; $5c82: $e2
    ldh [$38], a                                  ; $5c83: $e0 $38
    add hl, sp                                    ; $5c85: $39
    ld a, [hl-]                                   ; $5c86: $3a
    dec sp                                        ; $5c87: $3b
    ld [c], a                                     ; $5c88: $e2
    db $e3                                        ; $5c89: $e3
    rst $28                                       ; $5c8a: $ef
    ld b, h                                       ; $5c8b: $44
    ld b, l                                       ; $5c8c: $45
    ld b, [hl]                                    ; $5c8d: $46
    ld b, a                                       ; $5c8e: $47
    ld [c], a                                     ; $5c8f: $e2
    db $e3                                        ; $5c90: $e3
    rla                                           ; $5c91: $17
    ld c, h                                       ; $5c92: $4c
    ld c, l                                       ; $5c93: $4d
    db $fd                                        ; $5c94: $fd
    ld [de], a                                    ; $5c95: $12
    ld [c], a                                     ; $5c96: $e2
    ldh [rP1], a                                  ; $5c97: $e0 $00
    ld bc, $4f24                                  ; $5c99: $01 $24 $4f
    ld d, b                                       ; $5c9c: $50
    ld d, c                                       ; $5c9d: $51
    rrca                                          ; $5c9e: $0f
    ld d, d                                       ; $5c9f: $52
    add hl, hl                                    ; $5ca0: $29
    ld bc, $0000                                  ; $5ca1: $01 $00 $00
    nop                                           ; $5ca4: $00
    nop                                           ; $5ca5: $00
    ld h, l                                       ; $5ca6: $65
    dec c                                         ; $5ca7: $0d
    rst $38                                       ; $5ca8: $ff
    push hl                                       ; $5ca9: $e5
    dec l                                         ; $5caa: $2d

jr_036_5cab:
    or $e6                                        ; $5cab: $f6 $e6
    rst $30                                       ; $5cad: $f7
    add sp, $4d                                   ; $5cae: $e8 $4d
    ld c, l                                       ; $5cb0: $4d
    ld hl, sp-$15                                 ; $5cb1: $f8 $eb
    sub b                                         ; $5cb3: $90
    call nc, $d3e5                                ; $5cb4: $d4 $e5 $d3
    db $e3                                        ; $5cb7: $e3
    ld [c], a                                     ; $5cb8: $e2
    ld [c], a                                     ; $5cb9: $e2
    ret z                                         ; $5cba: $c8

    ldh [rKEY1], a                                ; $5cbb: $e0 $4d
    rst $38                                       ; $5cbd: $ff
    ldh [$d0], a                                  ; $5cbe: $e0 $d0
    db $e4                                        ; $5cc0: $e4
    ld l, l                                       ; $5cc1: $6d
    rst $18                                       ; $5cc2: $df
    nop                                           ; $5cc3: $00
    ld bc, $0302                                  ; $5cc4: $01 $02 $03
    ld bc, $e1fc                                  ; $5cc7: $01 $fc $e1
    nop                                           ; $5cca: $00
    dec b                                         ; $5ccb: $05
    rst $28                                       ; $5ccc: $ef
    ld b, $07                                     ; $5ccd: $06 $07
    ld [$fc09], sp                                ; $5ccf: $08 $09 $fc
    pop hl                                        ; $5cd2: $e1
    ld a, [bc]                                    ; $5cd3: $0a
    dec bc                                        ; $5cd4: $0b
    inc c                                         ; $5cd5: $0c
    rst $30                                       ; $5cd6: $f7
    dec c                                         ; $5cd7: $0d
    dec c                                         ; $5cd8: $0d
    db $10                                        ; $5cd9: $10
    db $fc                                        ; $5cda: $fc
    pop hl                                        ; $5cdb: $e1
    ld de, $0605                                  ; $5cdc: $11 $05 $06
    ld [de], a                                    ; $5cdf: $12
    ld a, a                                       ; $5ce0: $7f
    ld a, [hl+]                                   ; $5ce1: $2a

Jump_036_5ce2:
    ld sp, $3332                                  ; $5ce2: $31 $32 $33
    rla                                           ; $5ce5: $17
    add hl, bc                                    ; $5ce6: $09
    ld a, [bc]                                    ; $5ce7: $0a
    ld [c], a                                     ; $5ce8: $e2
    ldh [$ef], a                                  ; $5ce9: $e0 $ef
    inc a                                         ; $5ceb: $3c
    dec a                                         ; $5cec: $3d
    ld a, $3f                                     ; $5ced: $3e $3f
    ld [c], a                                     ; $5cef: $e2
    db $e3                                        ; $5cf0: $e3
    ld b, a                                       ; $5cf1: $47
    ld b, [hl]                                    ; $5cf2: $46
    ld c, b                                       ; $5cf3: $48
    cp l                                          ; $5cf4: $bd
    ld c, c                                       ; $5cf5: $49
    ld [c], a                                     ; $5cf6: $e2
    db $e3                                        ; $5cf7: $e3
    rla                                           ; $5cf8: $17
    ld c, [hl]                                    ; $5cf9: $4e
    ld c, h                                       ; $5cfa: $4c
    ld [de], a                                    ; $5cfb: $12
    ld [c], a                                     ; $5cfc: $e2
    ldh [rP1], a                                  ; $5cfd: $e0 $00
    rst $38                                       ; $5cff: $ff
    ld bc, $4f24                                  ; $5d00: $01 $24 $4f
    ld d, b                                       ; $5d03: $50
    ld d, c                                       ; $5d04: $51
    ld d, d                                       ; $5d05: $52
    add hl, hl                                    ; $5d06: $29
    ld bc, $0001                                  ; $5d07: $01 $01 $00
    nop                                           ; $5d0a: $00
    nop                                           ; $5d0b: $00
    nop                                           ; $5d0c: $00
    jr nz, jr_036_5d6c                            ; $5d0d: $20 $5d

    db $10                                        ; $5d0f: $10
    ld h, d                                       ; $5d10: $62
    sub b                                         ; $5d11: $90
    ld h, l                                       ; $5d12: $65

    db $e0, $69

    ldh [$6d], a                                  ; $5d15: $e0 $6d
    nop                                           ; $5d17: $00
    nop                                           ; $5d18: $00
    nop                                           ; $5d19: $00
    nop                                           ; $5d1a: $00
    nop                                           ; $5d1b: $00
    nop                                           ; $5d1c: $00
    nop                                           ; $5d1d: $00
    nop                                           ; $5d1e: $00
    nop                                           ; $5d1f: $00
    rst $30                                       ; $5d20: $f7
    rst $38                                       ; $5d21: $ff
    rst $38                                       ; $5d22: $ff
    add b                                         ; $5d23: $80
    rst $38                                       ; $5d24: $ff
    ld [$ffff], a                                 ; $5d25: $ea $ff $ff
    rst $38                                       ; $5d28: $ff
    nop                                           ; $5d29: $00
    dec d                                         ; $5d2a: $15
    ld a, a                                       ; $5d2b: $7f
    cp $e0                                        ; $5d2c: $fe $e0
    ccf                                           ; $5d2e: $3f
    cp $e0                                        ; $5d2f: $fe $e0
    rra                                           ; $5d31: $1f
    cp $e0                                        ; $5d32: $fe $e0
    ldh a, [$e1]                                  ; $5d34: $f0 $e1
    cp $e9                                        ; $5d36: $fe $e9
    cp $d2                                        ; $5d38: $fe $d2
    db $eb                                        ; $5d3a: $eb
    add b                                         ; $5d3b: $80
    add b                                         ; $5d3c: $80
    rrca                                          ; $5d3d: $0f
    nop                                           ; $5d3e: $00
    rrca                                          ; $5d3f: $0f
    nop                                           ; $5d40: $00
    rlca                                          ; $5d41: $07
    jp z, $e0fe                                   ; $5d42: $ca $fe $e0

    inc bc                                        ; $5d45: $03
    cp $e0                                        ; $5d46: $fe $e0
    ld bc, $e0fe                                  ; $5d48: $01 $fe $e0
    jp nc, $ffeb                                  ; $5d4b: $d2 $eb $ff

    nop                                           ; $5d4e: $00
    ldh a, [rIE]                                  ; $5d4f: $f0 $ff
    db $ed                                        ; $5d51: $ed
    or d                                          ; $5d52: $b2
    pop hl                                        ; $5d53: $e1
    and b                                         ; $5d54: $a0
    jp hl                                         ; $5d55: $e9


    add d                                         ; $5d56: $82
    pop hl                                        ; $5d57: $e1
    ret nz                                        ; $5d58: $c0

    add b                                         ; $5d59: $80
    ldh [$80], a                                  ; $5d5a: $e0 $80
    rst $38                                       ; $5d5c: $ff
    ldh a, [$80]                                  ; $5d5d: $f0 $80
    ld hl, sp-$80                                 ; $5d5f: $f8 $80
    db $fc                                        ; $5d61: $fc
    add b                                         ; $5d62: $80
    cp $80                                        ; $5d63: $fe $80
    db $fd                                        ; $5d65: $fd
    rst $38                                       ; $5d66: $ff
    cp $ec                                        ; $5d67: $fe $ec
    nop                                           ; $5d69: $00
    nop                                           ; $5d6a: $00
    add b                                         ; $5d6b: $80

jr_036_5d6c:
    nop                                           ; $5d6c: $00
    ret nz                                        ; $5d6d: $c0

    nop                                           ; $5d6e: $00
    rst $38                                       ; $5d6f: $ff
    ldh [rP1], a                                  ; $5d70: $e0 $00
    ldh a, [rP1]                                  ; $5d72: $f0 $00
    ld hl, sp+$00                                 ; $5d74: $f8 $00
    db $fc                                        ; $5d76: $fc
    nop                                           ; $5d77: $00
    ei                                            ; $5d78: $fb
    cp $00                                        ; $5d79: $fe $00
    ldh [$e5], a                                  ; $5d7b: $e0 $e5
    cp a                                          ; $5d7d: $bf
    add b                                         ; $5d7e: $80
    adc a                                         ; $5d7f: $8f
    add b                                         ; $5d80: $80
    add e                                         ; $5d81: $83

jr_036_5d82:
    ld a, [bc]                                    ; $5d82: $0a
    ld b, l                                       ; $5d83: $45
    ldh [$3f], a                                  ; $5d84: $e0 $3f
    add b                                         ; $5d86: $80
    ldh [$03], a                                  ; $5d87: $e0 $03
    and b                                         ; $5d89: $a0
    db $ec                                        ; $5d8a: $ec
    ld c, [hl]                                    ; $5d8b: $4e
    pop hl                                        ; $5d8c: $e1
    add sp, -$13                                  ; $5d8d: $e8 $ed
    add d                                         ; $5d8f: $82
    db $e4                                        ; $5d90: $e4
    jr nz, @+$23                                  ; $5d91: $20 $21

    pop hl                                        ; $5d93: $e1
    ld e, b                                       ; $5d94: $58
    ld [c], a                                     ; $5d95: $e2
    ld d, b                                       ; $5d96: $50
    pop hl                                        ; $5d97: $e1
    ld c, b                                       ; $5d98: $48
    pop hl                                        ; $5d99: $e1
    db $10                                        ; $5d9a: $10
    ldh [rSB], a                                  ; $5d9b: $e0 $01
    cp $e9                                        ; $5d9d: $fe $e9
    jr nc, jr_036_5d82                            ; $5d9f: $30 $e1

    ret nz                                        ; $5da1: $c0

    ld [$00e1], sp                                ; $5da2: $08 $e1 $00
    pop hl                                        ; $5da5: $e1
    ld hl, sp-$3f                                 ; $5da6: $f8 $c1
    ccf                                           ; $5da8: $3f
    pop hl                                        ; $5da9: $e1
    ret nc                                        ; $5daa: $d0

    ld [$e0d2], a                                 ; $5dab: $ea $d2 $e0
    db $fd                                        ; $5dae: $fd
    ld bc, $f9ff                                  ; $5daf: $01 $ff $f9
    ld bc, $01f1                                  ; $5db2: $01 $f1 $01
    pop hl                                        ; $5db5: $e1
    ld bc, $01c1                                  ; $5db6: $01 $c1 $01
    ld d, a                                       ; $5db9: $57
    add c                                         ; $5dba: $81
    ld bc, $6cff                                  ; $5dbb: $01 $ff $6c
    ldh [$fc], a                                  ; $5dbe: $e0 $fc
    ld h, h                                       ; $5dc0: $64
    ldh [$f0], a                                  ; $5dc1: $e0 $f0
    ld e, h                                       ; $5dc3: $5c
    ldh [$f5], a                                  ; $5dc4: $e0 $f5
    ret nz                                        ; $5dc6: $c0

    ld d, h                                       ; $5dc7: $54
    ldh [rSB], a                                  ; $5dc8: $e0 $01
    rst $38                                       ; $5dca: $ff
    db $e4                                        ; $5dcb: $e4
    inc bc                                        ; $5dcc: $03
    ld bc, $010f                                  ; $5dcd: $01 $0f $01
    add hl, hl                                    ; $5dd0: $29
    ccf                                           ; $5dd1: $3f
    and [hl]                                      ; $5dd2: $a6
    ldh [rIE], a                                  ; $5dd3: $e0 $ff
    push bc                                       ; $5dd5: $c5
    inc bc                                        ; $5dd6: $03
    ret c                                         ; $5dd7: $d8

    ret nz                                        ; $5dd8: $c0

    ccf                                           ; $5dd9: $3f
    or [hl]                                       ; $5dda: $b6
    ret nz                                        ; $5ddb: $c0

    ld hl, sp-$1b                                 ; $5ddc: $f8 $e5
    cp [hl]                                       ; $5dde: $be
    cp $f0                                        ; $5ddf: $fe $f0
    inc e                                         ; $5de1: $1c
    di                                            ; $5de2: $f3
    ld e, $f9                                     ; $5de3: $1e $f9
    rra                                           ; $5de5: $1f
    sub d                                         ; $5de6: $92
    jp z, Jump_036_7b0f                           ; $5de7: $ca $0f $7b

    pop af                                        ; $5dea: $f1
    ccf                                           ; $5deb: $3f
    cp a                                          ; $5dec: $bf
    ret                                           ; $5ded: $c9


    ldh [$e0], a                                  ; $5dee: $e0 $e0
    add hl, de                                    ; $5df0: $19
    ld sp, hl                                     ; $5df1: $f9
    xor a                                         ; $5df2: $af
    ret                                           ; $5df3: $c9


    rst $28                                       ; $5df4: $ef
    ld [hl], b                                    ; $5df5: $70
    ld [hl], b                                    ; $5df6: $70
    sub b                                         ; $5df7: $90
    ldh a, [$9f]                                  ; $5df8: $f0 $9f
    ret                                           ; $5dfa: $c9


    ld e, $1e                                     ; $5dfb: $1e $1e
    ld de, $1f7d                                  ; $5dfd: $11 $7d $1f
    adc a                                         ; $5e00: $8f
    rst $00                                       ; $5e01: $c7
    rrca                                          ; $5e02: $0f
    rrca                                          ; $5e03: $0f
    ld sp, $c03f                                  ; $5e04: $31 $3f $c0
    ld b, d                                       ; $5e07: $42
    ret                                           ; $5e08: $c9


    ld e, a                                       ; $5e09: $5f
    ldh [$1f], a                                  ; $5e0a: $e0 $1f
    ld hl, sp+$07                                 ; $5e0c: $f8 $07
    db $fc                                        ; $5e0e: $fc
    ld h, b                                       ; $5e0f: $60
    call z, $2278                                 ; $5e10: $cc $78 $22
    ret z                                         ; $5e13: $c8

    adc a                                         ; $5e14: $8f
    inc c                                         ; $5e15: $0c
    ei                                            ; $5e16: $fb
    ld e, $f1                                     ; $5e17: $1e $f1
    ret nz                                        ; $5e19: $c0

    add sp, -$62                                  ; $5e1a: $e8 $9e
    db $e3                                        ; $5e1c: $e3
    or [hl]                                       ; $5e1d: $b6
    db $e3                                        ; $5e1e: $e3
    db $10                                        ; $5e1f: $10
    rst $38                                       ; $5e20: $ff
    rra                                           ; $5e21: $1f
    inc a                                         ; $5e22: $3c
    ccf                                           ; $5e23: $3f
    ld hl, $393f                                  ; $5e24: $21 $3f $39
    ccf                                           ; $5e27: $3f
    ld a, l                                       ; $5e28: $7d
    rst $30                                       ; $5e29: $f7
    ld l, a                                       ; $5e2a: $6f
    ld c, $0e                                     ; $5e2b: $0e $0e
    xor d                                         ; $5e2d: $aa
    pop hl                                        ; $5e2e: $e1
    sbc l                                         ; $5e2f: $9d
    rst $38                                       ; $5e30: $ff
    cp a                                          ; $5e31: $bf
    ld [c], a                                     ; $5e32: $e2
    rst $08                                       ; $5e33: $cf
    ld a, a                                       ; $5e34: $7f
    ret nz                                        ; $5e35: $c0

    ld a, a                                       ; $5e36: $7f
    ret c                                         ; $5e37: $d8

    ld d, d                                       ; $5e38: $52
    ret nz                                        ; $5e39: $c0

    xor d                                         ; $5e3a: $aa
    ld [c], a                                     ; $5e3b: $e2
    rst $20                                       ; $5e3c: $e7
    rst $38                                       ; $5e3d: $ff
    rst $38                                       ; $5e3e: $ff
    di                                            ; $5e3f: $f3
    rra                                           ; $5e40: $1f
    ld a, [$fd0f]                                 ; $5e41: $fa $0f $fd
    rst $00                                       ; $5e44: $c7
    db $fd                                        ; $5e45: $fd
    rlca                                          ; $5e46: $07
    cp $d2                                        ; $5e47: $fe $d2
    and h                                         ; $5e49: $a4
    ldh a, [rIF]                                  ; $5e4a: $f0 $0f
    ld hl, sp+$3f                                 ; $5e4c: $f8 $3f
    ld hl, sp+$0f                                 ; $5e4e: $f8 $0f
    cp $ff                                        ; $5e50: $fe $ff
    rra                                           ; $5e52: $1f
    push af                                       ; $5e53: $f5
    ldh [$3f], a                                  ; $5e54: $e0 $3f
    ldh a, [$1f]                                  ; $5e56: $f0 $1f
    ld hl, sp+$1f                                 ; $5e58: $f8 $1f
    xor a                                         ; $5e5a: $af
    pop hl                                        ; $5e5b: $e1
    ccf                                           ; $5e5c: $3f
    rst $38                                       ; $5e5d: $ff
    ccf                                           ; $5e5e: $3f
    sbc b                                         ; $5e5f: $98
    jp nz, $c403                                  ; $5e60: $c2 $03 $c4

    rst $20                                       ; $5e63: $e7
    ld a, a                                       ; $5e64: $7f
    ld a, l                                       ; $5e65: $7d
    ret nz                                        ; $5e66: $c0

    inc d                                         ; $5e67: $14
    pop bc                                        ; $5e68: $c1
    ld b, $ff                                     ; $5e69: $06 $ff
    db $e4                                        ; $5e6b: $e4

jr_036_5e6c:
    rst $38                                       ; $5e6c: $ff
    ld a, [c]                                     ; $5e6d: $f2
    call nz, $ffe0                                ; $5e6e: $c4 $e0 $ff
    ld sp, hl                                     ; $5e71: $f9
    rst $08                                       ; $5e72: $cf
    ld sp, hl                                     ; $5e73: $f9
    rrca                                          ; $5e74: $0f
    db $fd                                        ; $5e75: $fd
    rlca                                          ; $5e76: $07
    db $fd                                        ; $5e77: $fd
    ld h, a                                       ; $5e78: $67
    cp a                                          ; $5e79: $bf
    jr nc, jr_036_5e6c                            ; $5e7a: $30 $f0

    ld [$10f8], sp                                ; $5e7c: $08 $f8 $10
    ldh a, [$fa]                                  ; $5e7f: $f0 $fa
    pop hl                                        ; $5e81: $e1
    ld hl, sp-$03                                 ; $5e82: $f8 $fd
    ld hl, sp+$04                                 ; $5e84: $f8 $04
    ret nz                                        ; $5e86: $c0

    add b                                         ; $5e87: $80
    jr jr_036_5ea9                                ; $5e88: $18 $1f

    jr nz, jr_036_5ecb                            ; $5e8a: $20 $3f

    ld de, $1f5b                                  ; $5e8c: $11 $5b $1f
    add hl, sp                                    ; $5e8f: $39
    add d                                         ; $5e90: $82
    ldh [$1f], a                                  ; $5e91: $e0 $1f
    rra                                           ; $5e93: $1f
    xor d                                         ; $5e94: $aa
    ret nz                                        ; $5e95: $c0

    ld [bc], a                                    ; $5e96: $02
    jp nz, $c7eb                                  ; $5e97: $c2 $eb $c7

    rst $38                                       ; $5e9a: $ff
    ld h, b                                       ; $5e9b: $60
    rst $20                                       ; $5e9c: $e7
    jp nz, $c4e4                                  ; $5e9d: $c2 $e4 $c4

    ldh [$c2], a                                  ; $5ea0: $e0 $c2
    ldh [rIE], a                                  ; $5ea2: $e0 $ff
    jp nc, $8feb                                  ; $5ea4: $d2 $eb $8f

    ld hl, sp+$1a                                 ; $5ea7: $f8 $1a

jr_036_5ea9:
    pop hl                                        ; $5ea9: $e1
    rrca                                          ; $5eaa: $0f
    ld a, [$c7e0]                                 ; $5eab: $fa $e0 $c7
    db $fc                                        ; $5eae: $fc
    rst $38                                       ; $5eaf: $ff
    rst $38                                       ; $5eb0: $ff
    db $fc                                        ; $5eb1: $fc
    rst $38                                       ; $5eb2: $ff
    ld b, b                                       ; $5eb3: $40
    jp hl                                         ; $5eb4: $e9


    ccf                                           ; $5eb5: $3f
    ldh [$3f], a                                  ; $5eb6: $e0 $3f
    ld hl, sp-$43                                 ; $5eb8: $f8 $bd
    rra                                           ; $5eba: $1f
    ld a, d                                       ; $5ebb: $7a
    pop hl                                        ; $5ebc: $e1
    db $fd                                        ; $5ebd: $fd
    rrca                                          ; $5ebe: $0f
    rst $38                                       ; $5ebf: $ff
    inc bc                                        ; $5ec0: $03
    inc d                                         ; $5ec1: $14
    ret nz                                        ; $5ec2: $c0

    ld c, $df                                     ; $5ec3: $0e $df
    pop af                                        ; $5ec5: $f1
    cp a                                          ; $5ec6: $bf
    jp nz, $82ff                                  ; $5ec7: $c2 $ff $82

    sbc c                                         ; $5eca: $99

jr_036_5ecb:
    and b                                         ; $5ecb: $a0
    dec a                                         ; $5ecc: $3d
    rst $38                                       ; $5ecd: $ff
    rst $28                                       ; $5ece: $ef
    ld a, a                                       ; $5ecf: $7f
    jp nz, $c07f                                  ; $5ed0: $c2 $7f $c0

    xor h                                         ; $5ed3: $ac
    pop bc                                        ; $5ed4: $c1
    ld b, $ff                                     ; $5ed5: $06 $ff
    inc b                                         ; $5ed7: $04
    rst $38                                       ; $5ed8: $ff
    rst $38                                       ; $5ed9: $ff
    ld [bc], a                                    ; $5eda: $02
    rst $38                                       ; $5edb: $ff
    ld [c], a                                     ; $5edc: $e2
    rst $38                                       ; $5edd: $ff
    pop af                                        ; $5ede: $f1
    rra                                           ; $5edf: $1f
    ld sp, hl                                     ; $5ee0: $f9
    rst $38                                       ; $5ee1: $ff
    rrca                                          ; $5ee2: $0f
    sub b                                         ; $5ee3: $90
    ldh a, [$38]                                  ; $5ee4: $f0 $38
    ld hl, sp+$08                                 ; $5ee6: $f8 $08
    ld hl, sp+$38                                 ; $5ee8: $f8 $38
    cp $7c                                        ; $5eea: $fe $7c
    ldh [$08], a                                  ; $5eec: $e0 $08
    ld hl, sp+$78                                 ; $5eee: $f8 $78
    ld hl, sp-$40                                 ; $5ef0: $f8 $c0

jr_036_5ef2:
    ret nz                                        ; $5ef2: $c0

    ld a, a                                       ; $5ef3: $7f
    rst $38                                       ; $5ef4: $ff
    dec hl                                        ; $5ef5: $2b
    rst $38                                       ; $5ef6: $ff
    adc e                                         ; $5ef7: $8b
    rst $38                                       ; $5ef8: $ff
    or d                                          ; $5ef9: $b2
    rst $38                                       ; $5efa: $ff
    jp Jump_036_7f7f                              ; $5efb: $c3 $7f $7f


    ld b, [hl]                                    ; $5efe: $46

Call_036_5eff:
    ccf                                           ; $5eff: $3f
    dec sp                                        ; $5f00: $3b
    rra                                           ; $5f01: $1f
    ld de, $101f                                  ; $5f02: $11 $1f $10
    ld h, b                                       ; $5f05: $60
    and b                                         ; $5f06: $a0
    rst $38                                       ; $5f07: $ff
    or b                                          ; $5f08: $b0
    rst $38                                       ; $5f09: $ff
    add sp, -$01                                  ; $5f0a: $e8 $ff
    ld e, b                                       ; $5f0c: $58
    rst $38                                       ; $5f0d: $ff
    sbc h                                         ; $5f0e: $9c
    sbc a                                         ; $5f0f: $9f
    rst $08                                       ; $5f10: $cf
    ldh [rIE], a                                  ; $5f11: $e0 $ff
    adc a                                         ; $5f13: $8f
    db $fc                                        ; $5f14: $fc
    ld c, $e0                                     ; $5f15: $0e $e0
    adc d                                         ; $5f17: $8a
    pop hl                                        ; $5f18: $e1
    rst $38                                       ; $5f19: $ff
    ld [hl], c                                    ; $5f1a: $71
    rst $38                                       ; $5f1b: $ff
    rst $38                                       ; $5f1c: $ff
    ld h, d                                       ; $5f1d: $62
    rst $08                                       ; $5f1e: $cf
    ld [hl-], a                                   ; $5f1f: $32
    rst $38                                       ; $5f20: $ff
    add e                                         ; $5f21: $83
    rst $38                                       ; $5f22: $ff
    add a                                         ; $5f23: $87
    rst $38                                       ; $5f24: $ff
    cp a                                          ; $5f25: $bf
    push af                                       ; $5f26: $f5
    rst $38                                       ; $5f27: $ff
    db $e3                                        ; $5f28: $e3
    rst $38                                       ; $5f29: $ff
    pop de                                        ; $5f2a: $d1
    rst $38                                       ; $5f2b: $ff
    ld h, c                                       ; $5f2c: $61
    rst $38                                       ; $5f2d: $ff
    rst $38                                       ; $5f2e: $ff
    ld d, d                                       ; $5f2f: $52
    rst $38                                       ; $5f30: $ff
    adc h                                         ; $5f31: $8c
    rst $38                                       ; $5f32: $ff
    adc b                                         ; $5f33: $88
    rst $38                                       ; $5f34: $ff
    ld [$a7fe], sp                                ; $5f35: $08 $fe $a7
    ldh [$03], a                                  ; $5f38: $e0 $03
    ld a, a                                       ; $5f3a: $7f
    ld [bc], a                                    ; $5f3b: $02
    ld a, a                                       ; $5f3c: $7f
    dec b                                         ; $5f3d: $05
    ccf                                           ; $5f3e: $3f
    ld a, [bc]                                    ; $5f3f: $0a
    rst $38                                       ; $5f40: $ff
    ccf                                           ; $5f41: $3f
    ld a, [de]                                    ; $5f42: $1a
    ccf                                           ; $5f43: $3f
    ld a, [hl+]                                   ; $5f44: $2a
    ld a, a                                       ; $5f45: $7f
    ld c, [hl]                                    ; $5f46: $4e
    rst $38                                       ; $5f47: $ff
    ld h, b                                       ; $5f48: $60
    cp a                                          ; $5f49: $bf
    rst $38                                       ; $5f4a: $ff
    jr c, @+$01                                   ; $5f4b: $38 $ff

    add b                                         ; $5f4d: $80
    sbc a                                         ; $5f4e: $9f
    db $e4                                        ; $5f4f: $e4
    jr jr_036_5ef2                                ; $5f50: $18 $a0

    ld b, a                                       ; $5f52: $47
    di                                            ; $5f53: $f3
    cp $23                                        ; $5f54: $fe $23
    ret z                                         ; $5f56: $c8

    ldh [$c4], a                                  ; $5f57: $e0 $c4
    push hl                                       ; $5f59: $e5

jr_036_5f5a:
    inc bc                                        ; $5f5a: $03
    db $fc                                        ; $5f5b: $fc
    add h                                         ; $5f5c: $84
    db $fc                                        ; $5f5d: $fc
    rst $38                                       ; $5f5e: $ff
    adc h                                         ; $5f5f: $8c
    rst $38                                       ; $5f60: $ff
    inc sp                                        ; $5f61: $33
    ret nz                                        ; $5f62: $c0

    ld b, b                                       ; $5f63: $40
    ret nz                                        ; $5f64: $c0

    ld b, b                                       ; $5f65: $40
    pop bc                                        ; $5f66: $c1
    rst $38                                       ; $5f67: $ff
    ld b, b                                       ; $5f68: $40
    add c                                         ; $5f69: $81
    add b                                         ; $5f6a: $80
    inc bc                                        ; $5f6b: $03
    nop                                           ; $5f6c: $00
    dec sp                                        ; $5f6d: $3b
    jr c, jr_036_5fef                             ; $5f6e: $38 $7f

    rst $38                                       ; $5f70: $ff
    ld b, h                                       ; $5f71: $44
    rst $38                                       ; $5f72: $ff
    and h                                         ; $5f73: $a4
    inc bc                                        ; $5f74: $03
    inc bc                                        ; $5f75: $03
    inc bc                                        ; $5f76: $03
    ld [bc], a                                    ; $5f77: $02
    pop hl                                        ; $5f78: $e1
    rst $38                                       ; $5f79: $ff
    ld h, c                                       ; $5f7a: $61
    ldh a, [$50]                                  ; $5f7b: $f0 $50
    ld hl, sp+$28                                 ; $5f7d: $f8 $28
    db $fc                                        ; $5f7f: $fc
    ld d, h                                       ; $5f80: $54
    cp $f7                                        ; $5f81: $fe $f7
    sbc [hl]                                      ; $5f83: $9e
    rst $38                                       ; $5f84: $ff
    or e                                          ; $5f85: $b3
    jp nz, Jump_036_7fe5                          ; $5f86: $c2 $e5 $7f

    ld b, a                                       ; $5f89: $47
    ccf                                           ; $5f8a: $3f
    jr nz, @-$0f                                  ; $5f8b: $20 $ef

    ld a, a                                       ; $5f8d: $7f
    ld a, b                                       ; $5f8e: $78
    rst $38                                       ; $5f8f: $ff
    or a                                          ; $5f90: $b7
    add [hl]                                      ; $5f91: $86
    and $04                                       ; $5f92: $e6 $04
    rst $38                                       ; $5f94: $ff
    inc c                                         ; $5f95: $0c
    ei                                            ; $5f96: $fb
    rst $38                                       ; $5f97: $ff
    inc sp                                        ; $5f98: $33
    halt                                          ; $5f99: $76
    ldh [rLCDC], a                                ; $5f9a: $e0 $40
    rst $38                                       ; $5f9c: $ff
    ld b, b                                       ; $5f9d: $40
    cp $80                                        ; $5f9e: $fe $80
    cp $6c                                        ; $5fa0: $fe $6c
    and b                                         ; $5fa2: $a0
    inc e                                         ; $5fa3: $1c
    cp $22                                        ; $5fa4: $fe $22
    cp $52                                        ; $5fa6: $fe $52
    cp $d2                                        ; $5fa8: $fe $d2
    ld a, h                                       ; $5faa: $7c
    adc h                                         ; $5fab: $8c
    pop bc                                        ; $5fac: $c1
    add b                                         ; $5fad: $80
    ldh [$03], a                                  ; $5fae: $e0 $03
    ccf                                           ; $5fb0: $3f
    ld [bc], a                                    ; $5fb1: $02
    ccf                                           ; $5fb2: $3f
    ld bc, $8230                                  ; $5fb3: $01 $30 $82
    ld d, l                                       ; $5fb6: $55
    sbc b                                         ; $5fb7: $98
    sbc [hl]                                      ; $5fb8: $9e
    add d                                         ; $5fb9: $82
    nop                                           ; $5fba: $00
    ld a, b                                       ; $5fbb: $78
    ldh [$b8], a                                  ; $5fbc: $e0 $b8
    sub h                                         ; $5fbe: $94
    add b                                         ; $5fbf: $80
    ld [hl], h                                    ; $5fc0: $74
    ld c, h                                       ; $5fc1: $4c
    jp nz, $0275                                  ; $5fc2: $c2 $75 $02

    db $fc                                        ; $5fc5: $fc
    add b                                         ; $5fc6: $80
    ld [hl-], a                                   ; $5fc7: $32
    rst $38                                       ; $5fc8: $ff
    ret nz                                        ; $5fc9: $c0

    inc bc                                        ; $5fca: $03
    db $fc                                        ; $5fcb: $fc
    db $f4                                        ; $5fcc: $f4
    adc h                                         ; $5fcd: $8c
    pop bc                                        ; $5fce: $c1
    cp l                                          ; $5fcf: $bd
    pop bc                                        ; $5fd0: $c1
    ld a, [hl]                                    ; $5fd1: $7e
    ldh [$c3], a                                  ; $5fd2: $e0 $c3
    ld b, b                                       ; $5fd4: $40
    add e                                         ; $5fd5: $83
    add b                                         ; $5fd6: $80
    jr z, jr_036_5f5a                             ; $5fd7: $28 $81

    rrca                                          ; $5fd9: $0f
    rst $38                                       ; $5fda: $ff
    ld [$090f], sp                                ; $5fdb: $08 $0f $09
    add a                                         ; $5fde: $87
    ld b, $87                                     ; $5fdf: $06 $87
    inc b                                         ; $5fe1: $04
    jp $02cf                                      ; $5fe2: $c3 $cf $02


    pop bc                                        ; $5fe5: $c1
    ld bc, $78e0                                  ; $5fe6: $01 $e0 $78
    add b                                         ; $5fe9: $80
    dec d                                         ; $5fea: $15
    ret nz                                        ; $5feb: $c0

    inc sp                                        ; $5fec: $33
    rst $38                                       ; $5fed: $ff
    rst $38                                       ; $5fee: $ff

jr_036_5fef:
    ld e, h                                       ; $5fef: $5c
    rst $38                                       ; $5ff0: $ff
    ld d, a                                       ; $5ff1: $57
    rst $38                                       ; $5ff2: $ff
    ld d, l                                       ; $5ff3: $55

jr_036_5ff4:
    rst $38                                       ; $5ff4: $ff
    ld c, b                                       ; $5ff5: $48
    rst $38                                       ; $5ff6: $ff
    ld [hl], l                                    ; $5ff7: $75
    rst $00                                       ; $5ff8: $c7
    ld d, d                                       ; $5ff9: $52
    add b                                         ; $5ffa: $80
    adc a                                         ; $5ffb: $8f
    or a                                          ; $5ffc: $b7
    ret nz                                        ; $5ffd: $c0

    ret z                                         ; $5ffe: $c8

Jump_036_5fff:
    rst $38                                       ; $5fff: $ff
    jr z, jr_036_5ff4                             ; $6000: $28 $f2

    ldh [$f7], a                                  ; $6002: $e0 $f7
    add h                                         ; $6004: $84
    rst $38                                       ; $6005: $ff
    dec b                                         ; $6006: $05
    sbc [hl]                                      ; $6007: $9e
    ret nz                                        ; $6008: $c0

    db $10                                        ; $6009: $10
    rst $38                                       ; $600a: $ff
    db $10                                        ; $600b: $10
    cp $ff                                        ; $600c: $fe $ff
    and b                                         ; $600e: $a0
    cp $60                                        ; $600f: $fe $60
    db $fc                                        ; $6011: $fc
    jr nz, @-$02                                  ; $6012: $20 $fc

    ret nz                                        ; $6014: $c0

    ld hl, sp-$02                                 ; $6015: $f8 $fe
    ld c, h                                       ; $6017: $4c
    add b                                         ; $6018: $80
    ld a, a                                       ; $6019: $7f
    ld e, c                                       ; $601a: $59
    ccf                                           ; $601b: $3f
    cpl                                           ; $601c: $2f
    rra                                           ; $601d: $1f
    add hl, de                                    ; $601e: $19
    rra                                           ; $601f: $1f
    db $fd                                        ; $6020: $fd
    db $10                                        ; $6021: $10
    cp b                                          ; $6022: $b8
    ldh [$08], a                                  ; $6023: $e0 $08
    rlca                                          ; $6025: $07
    inc b                                         ; $6026: $04
    inc bc                                        ; $6027: $03
    inc bc                                        ; $6028: $03
    rst $38                                       ; $6029: $ff
    ld a, l                                       ; $602a: $7d
    cp h                                          ; $602b: $bc
    ld e, d                                       ; $602c: $5a
    ldh [$2a], a                                  ; $602d: $e0 $2a
    rst $38                                       ; $602f: $ff
    and h                                         ; $6030: $a4
    rst $38                                       ; $6031: $ff
    ld h, e                                       ; $6032: $63
    ld d, [hl]                                    ; $6033: $56
    ldh [$fd], a                                  ; $6034: $e0 $fd
    ret nz                                        ; $6036: $c0

    ld d, d                                       ; $6037: $52
    ldh [$d2], a                                  ; $6038: $e0 $d2
    rst $38                                       ; $603a: $ff
    ld [de], a                                    ; $603b: $12
    rst $38                                       ; $603c: $ff
    and d                                         ; $603d: $a2
    rst $38                                       ; $603e: $ff
    ld sp, hl                                     ; $603f: $f9
    ld b, d                                       ; $6040: $42
    ld l, l                                       ; $6041: $6d
    ret nz                                        ; $6042: $c0

    ld a, b                                       ; $6043: $78
    add e                                         ; $6044: $83
    and h                                         ; $6045: $a4
    rst $38                                       ; $6046: $ff
    ld h, h                                       ; $6047: $64
    rst $38                                       ; $6048: $ff
    ld b, h                                       ; $6049: $44
    ld a, [$e064]                                 ; $604a: $fa $64 $e0
    adc b                                         ; $604d: $88
    cp $e1                                        ; $604e: $fe $e1
    ld a, a                                       ; $6050: $7f
    ld [hl], b                                    ; $6051: $70
    rst $38                                       ; $6052: $ff
    ld e, a                                       ; $6053: $5f
    rst $38                                       ; $6054: $ff
    ld [hl], l                                    ; $6055: $75
    ld sp, $e0ac                                  ; $6056: $31 $ac $e0
    ld [$c0b6], sp                                ; $6059: $08 $b6 $c0
    inc b                                         ; $605c: $04
    rst $38                                       ; $605d: $ff
    inc bc                                        ; $605e: $03
    nop                                           ; $605f: $00
    add b                                         ; $6060: $80
    cp l                                          ; $6061: $bd
    ld sp, $e7c2                                  ; $6062: $31 $c2 $e7
    ld a, a                                       ; $6065: $7f
    ld b, b                                       ; $6066: $40
    ld a, a                                       ; $6067: $7f
    ld b, b                                       ; $6068: $40
    jp nz, Jump_000_01ec                          ; $6069: $c2 $ec $01

    cp a                                          ; $606c: $bf
    cp $32                                        ; $606d: $fe $32
    cp $62                                        ; $606f: $fe $62
    db $fc                                        ; $6071: $fc
    ld e, h                                       ; $6072: $5c
    or h                                          ; $6073: $b4
    ret nz                                        ; $6074: $c0

    add h                                         ; $6075: $84
    sbc a                                         ; $6076: $9f
    ld hl, sp-$78                                 ; $6077: $f8 $88
    ldh a, [rSVBK]                                ; $6079: $f0 $70
    add b                                         ; $607b: $80
    ld h, d                                       ; $607c: $62
    ld h, b                                       ; $607d: $60
    ld h, b                                       ; $607e: $60
    ld h, b                                       ; $607f: $60
    ld bc, $07ed                                  ; $6080: $01 $ed $07
    ld [hl], b                                    ; $6083: $70
    add b                                         ; $6084: $80
    inc bc                                        ; $6085: $03
    ld bc, $6060                                  ; $6086: $01 $60 $60
    ld bc, $4fff                                  ; $6089: $01 $ff $4f
    ei                                            ; $608c: $fb
    rst $38                                       ; $608d: $ff
    adc d                                         ; $608e: $8a
    cp $e0                                        ; $608f: $fe $e0
    add a                                         ; $6091: $87
    rst $38                                       ; $6092: $ff
    ld b, a                                       ; $6093: $47
    rst $38                                       ; $6094: $ff
    cp l                                          ; $6095: $bd
    cp [hl]                                       ; $6096: $be
    ld h, $c0                                     ; $6097: $26 $c0
    ld [$0efe], sp                                ; $6099: $08 $fe $0e
    rst $38                                       ; $609c: $ff
    adc l                                         ; $609d: $8d
    sub h                                         ; $609e: $94
    ld [c], a                                     ; $609f: $e2

Call_036_60a0:
    ld [$e6ee], sp                                ; $60a0: $08 $ee $e6
    ret nz                                        ; $60a3: $c0

    push hl                                       ; $60a4: $e5
    rst $38                                       ; $60a5: $ff
    add l                                         ; $60a6: $85
    jr nc, jr_036_610a                            ; $60a7: $30 $61

    sbc a                                         ; $60a9: $9f
    add b                                         ; $60aa: $80
    sbc a                                         ; $60ab: $9f
    and [hl]                                      ; $60ac: $a6
    and b                                         ; $60ad: $a0
    ld h, b                                       ; $60ae: $60
    cp a                                          ; $60af: $bf
    add b                                         ; $60b0: $80
    ld hl, sp+$41                                 ; $60b1: $f8 $41
    ld [hl], b                                    ; $60b3: $70
    ld h, e                                       ; $60b4: $63
    ld a, a                                       ; $60b5: $7f
    sub l                                         ; $60b6: $95
    pop hl                                        ; $60b7: $e1
    ld a, a                                       ; $60b8: $7f

jr_036_60b9:
    rst $08                                       ; $60b9: $cf
    ld b, d                                       ; $60ba: $42
    ld a, a                                       ; $60bb: $7f
    add e                                         ; $60bc: $83
    rst $38                                       ; $60bd: $ff
    rst $10                                       ; $60be: $d7
    and b                                         ; $60bf: $a0
    cp $e1                                        ; $60c0: $fe $e1
    cp $03                                        ; $60c2: $fe $03
    rrca                                          ; $60c4: $0f
    cp $01                                        ; $60c5: $fe $01
    rst $38                                       ; $60c7: $ff
    add c                                         ; $60c8: $81
    rla                                           ; $60c9: $17
    and c                                         ; $60ca: $a1
    ld b, $82                                     ; $60cb: $06 $82
    inc b                                         ; $60cd: $04
    add c                                         ; $60ce: $81
    ld [bc], a                                    ; $60cf: $02
    add c                                         ; $60d0: $81
    sbc $c0                                       ; $60d1: $de $c0
    ld b, b                                       ; $60d3: $40
    ld b, b                                       ; $60d4: $40
    rst $38                                       ; $60d5: $ff
    ccf                                           ; $60d6: $3f
    ld h, b                                       ; $60d7: $60
    cp $e0                                        ; $60d8: $fe $e0
    ld hl, $af3f                                  ; $60da: $21 $3f $af
    ld b, c                                       ; $60dd: $41
    ld a, a                                       ; $60de: $7f
    ld a, a                                       ; $60df: $7f
    ld a, a                                       ; $60e0: $7f
    ret nc                                        ; $60e1: $d0

    and b                                         ; $60e2: $a0
    ld bc, $619f                                  ; $60e3: $01 $9f $61
    nop                                           ; $60e6: $00
    call z, $c069                                 ; $60e7: $cc $69 $c0
    and l                                         ; $60ea: $a5
    ld b, c                                       ; $60eb: $41
    rst $38                                       ; $60ec: $ff
    jp Jump_036_64d0                              ; $60ed: $c3 $d0 $64


    db $10                                        ; $60f0: $10
    ld h, b                                       ; $60f1: $60
    ld h, b                                       ; $60f2: $60
    ret nz                                        ; $60f3: $c0

    rst $38                                       ; $60f4: $ff
    ret nz                                        ; $60f5: $c0

    ret nz                                        ; $60f6: $c0

    add b                                         ; $60f7: $80
    nop                                           ; $60f8: $00
    ccf                                           ; $60f9: $3f
    ccf                                           ; $60fa: $3f
    jr nz, jr_036_613c                            ; $60fb: $20 $3f

    rst $38                                       ; $60fd: $ff
    and b                                         ; $60fe: $a0

Jump_036_60ff:
    ccf                                           ; $60ff: $3f
    and c                                         ; $6100: $a1
    ccf                                           ; $6101: $3f
    pop bc                                        ; $6102: $c1
    ld a, a                                       ; $6103: $7f
    rst $38                                       ; $6104: $ff
    ld a, a                                       ; $6105: $7f
    cp h                                          ; $6106: $bc
    call nz, $d2c1                                ; $6107: $c4 $c1 $d2

jr_036_610a:
    jp hl                                         ; $610a: $e9


    cp $c2                                        ; $610b: $fe $c2
    rst $38                                       ; $610d: $ff
    jp Jump_036_6152                              ; $610e: $c3 $52 $61


    add e                                         ; $6111: $83
    ld a, a                                       ; $6112: $7f
    add b                                         ; $6113: $80
    add a                                         ; $6114: $87
    add b                                         ; $6115: $80
    ld c, a                                       ; $6116: $4f
    ret nz                                        ; $6117: $c0

    rst $18                                       ; $6118: $df
    ret nz                                        ; $6119: $c0

    ld l, [hl]                                    ; $611a: $6e
    ld h, c                                       ; $611b: $61
    jp hl                                         ; $611c: $e9


    ld bc, $608c                                  ; $611d: $01 $8c $60
    ldh a, [rWY]                                  ; $6120: $f0 $4a
    ld [$c008], sp                                ; $6122: $08 $08 $c0
    sbc a                                         ; $6125: $9f
    ld [hl], b                                    ; $6126: $70
    ld a, a                                       ; $6127: $7f
    adc c                                         ; $6128: $89
    jr nz, jr_036_60b9                            ; $6129: $20 $8e

    db $e4                                        ; $612b: $e4
    ld a, h                                       ; $612c: $7c
    and b                                         ; $612d: $a0
    ld b, e                                       ; $612e: $43
    adc [hl]                                      ; $612f: $8e
    ld [$6560], a                                 ; $6130: $ea $60 $65
    sbc h                                         ; $6133: $9c
    ld b, b                                       ; $6134: $40
    ld b, b                                       ; $6135: $40
    cp $8e                                        ; $6136: $fe $8e
    ldh [rIE], a                                  ; $6138: $e0 $ff
    rst $38                                       ; $613a: $ff
    ccf                                           ; $613b: $3f

jr_036_613c:
    ld hl, $21bf                                  ; $613c: $21 $bf $21
    cp a                                          ; $613f: $bf
    db $dd                                        ; $6140: $dd
    ccf                                           ; $6141: $3f
    ld e, [hl]                                    ; $6142: $5e
    and b                                         ; $6143: $a0
    ld h, e                                       ; $6144: $63
    call c, $6c7f                                 ; $6145: $dc $7f $6c
    ld [c], a                                     ; $6148: $e2
    add d                                         ; $6149: $82
    cp $ff                                        ; $614a: $fe $ff
    add [hl]                                      ; $614c: $86
    rst $38                                       ; $614d: $ff
    ld a, e                                       ; $614e: $7b
    rst $38                                       ; $614f: $ff
    ld b, c                                       ; $6150: $41
    rst $38                                       ; $6151: $ff

Jump_036_6152:
    and c                                         ; $6152: $a1
    cp $df                                        ; $6153: $fe $df
    cp a                                          ; $6155: $bf
    ldh [$bf], a                                  ; $6156: $e0 $bf
    add b                                         ; $6158: $80
    add b                                         ; $6159: $80
    db $e4                                        ; $615a: $e4
    ld b, c                                       ; $615b: $41
    rlca                                          ; $615c: $07
    nop                                           ; $615d: $00
    adc a                                         ; $615e: $8f
    adc a                                         ; $615f: $8f
    add b                                         ; $6160: $80
    ld e, a                                       ; $6161: $5f
    ret nz                                        ; $6162: $c0

    sbc [hl]                                      ; $6163: $9e
    ret nz                                        ; $6164: $c0

    adc h                                         ; $6165: $8c
    ldh [$a0], a                                  ; $6166: $e0 $a0
    ld b, b                                       ; $6168: $40
    ld bc, $02f7                                  ; $6169: $01 $f7 $02
    inc bc                                        ; $616c: $03
    ld [bc], a                                    ; $616d: $02
    ld [hl], a                                    ; $616e: $77
    and c                                         ; $616f: $a1
    inc bc                                        ; $6170: $03
    rst $38                                       ; $6171: $ff
    rst $38                                       ; $6172: $ff
    rra                                           ; $6173: $1f
    push bc                                       ; $6174: $c5
    rra                                           ; $6175: $1f
    inc h                                         ; $6176: $24
    add c                                         ; $6177: $81
    rlca                                          ; $6178: $07
    adc $80                                       ; $6179: $ce $80
    rst $20                                       ; $617b: $e7
    ld hl, $20d2                                  ; $617c: $21 $d2 $20
    rst $00                                       ; $617f: $c7
    cp a                                          ; $6180: $bf
    rst $38                                       ; $6181: $ff
    cp c                                          ; $6182: $b9
    cp a                                          ; $6183: $bf
    and c                                         ; $6184: $a1
    cp a                                          ; $6185: $bf
    cp a                                          ; $6186: $bf
    or b                                          ; $6187: $b0
    cp a                                          ; $6188: $bf
    and b                                         ; $6189: $a0
    cp a                                          ; $618a: $bf
    cp a                                          ; $618b: $bf
    ldh a, [$9f]                                  ; $618c: $f0 $9f
    rst $38                                       ; $618e: $ff
    rst $38                                       ; $618f: $ff
    add e                                         ; $6190: $83
    ld d, [hl]                                    ; $6191: $56
    ldh [$7f], a                                  ; $6192: $e0 $7f
    ld a, a                                       ; $6194: $7f
    ret nz                                        ; $6195: $c0

    cp a                                          ; $6196: $bf
    ldh [$7f], a                                  ; $6197: $e0 $7f
    ldh [$3f], a                                  ; $6199: $e0 $3f
    ldh [rNR34], a                                ; $619b: $e0 $1e
    add b                                         ; $619d: $80
    ld e, a                                       ; $619e: $5f
    rst $38                                       ; $619f: $ff
    ret nz                                        ; $61a0: $c0

    nop                                           ; $61a1: $00
    pop af                                        ; $61a2: $f1
    ld bc, $c0d3                                  ; $61a3: $01 $d3 $c0
    inc bc                                        ; $61a6: $03
    ld b, h                                       ; $61a7: $44
    ret nz                                        ; $61a8: $c0

    db $f4                                        ; $61a9: $f4
    add d                                         ; $61aa: $82
    add c                                         ; $61ab: $81
    and c                                         ; $61ac: $a1
    jr nz, @+$21                                  ; $61ad: $20 $1f

    ret nz                                        ; $61af: $c0

    ld [c], a                                     ; $61b0: $e2
    db $e4                                        ; $61b1: $e4
    rst $38                                       ; $61b2: $ff
    rra                                           ; $61b3: $1f
    rst $38                                       ; $61b4: $ff
    db $dd                                        ; $61b5: $dd
    ldh [$71], a                                  ; $61b6: $e0 $71
    ld b, c                                       ; $61b8: $41
    rst $38                                       ; $61b9: $ff
    rst $38                                       ; $61ba: $ff
    and c                                         ; $61bb: $a1
    cp $e0                                        ; $61bc: $fe $e0
    cp a                                          ; $61be: $bf
    ldh a, [$ba]                                  ; $61bf: $f0 $ba
    add h                                         ; $61c1: $84
    ldh [$90], a                                  ; $61c2: $e0 $90
    ret nz                                        ; $61c4: $c0

    ldh [$fc], a                                  ; $61c5: $e0 $fc
    add b                                         ; $61c7: $80
    ld [hl], b                                    ; $61c8: $70
    db $fd                                        ; $61c9: $fd
    add b                                         ; $61ca: $80
    and b                                         ; $61cb: $a0
    cp a                                          ; $61cc: $bf
    ldh [$60], a                                  ; $61cd: $e0 $60
    ldh [rNR41], a                                ; $61cf: $e0 $20
    ldh [rLCDC], a                                ; $61d1: $e0 $40
    ld d, d                                       ; $61d3: $52
    ld [c], a                                     ; $61d4: $e2
    rst $38                                       ; $61d5: $ff
    ld e, l                                       ; $61d6: $5d
    rst $38                                       ; $61d7: $ff
    sub b                                         ; $61d8: $90
    ld [$ffc3], a                                 ; $61d9: $ea $c3 $ff
    db $fd                                        ; $61dc: $fd
    sub b                                         ; $61dd: $90
    jp hl                                         ; $61de: $e9


    ret nz                                        ; $61df: $c0

    and $20                                       ; $61e0: $e6 $20
    jp hl                                         ; $61e2: $e9


    db $fc                                        ; $61e3: $fc
    ld e, [hl]                                    ; $61e4: $5e
    daa                                           ; $61e5: $27
    and c                                         ; $61e6: $a1
    and b                                         ; $61e7: $a0
    jp $c068                                      ; $61e8: $c3 $68 $c0


    add c                                         ; $61eb: $81
    rst $38                                       ; $61ec: $ff
    jp nz, Jump_036_7e37                          ; $61ed: $c2 $37 $7e

    db $fc                                        ; $61f0: $fc
    inc a                                         ; $61f1: $3c
    jp nc, $ff20                                  ; $61f2: $d2 $20 $ff

    rst $28                                       ; $61f5: $ef
    and [hl]                                      ; $61f6: $a6
    pop hl                                        ; $61f7: $e1
    ld a, h                                       ; $61f8: $7c
    ld h, b                                       ; $61f9: $60
    rst $30                                       ; $61fa: $f7
    rst $08                                       ; $61fb: $cf

jr_036_61fc:
    rrca                                          ; $61fc: $0f
    ret nc                                        ; $61fd: $d0

    or [hl]                                       ; $61fe: $b6

Jump_036_61ff:
    jr nz, @+$01                                  ; $61ff: $20 $ff

    rst $38                                       ; $6201: $ff
    ld a, h                                       ; $6202: $7c
    ret nz                                        ; $6203: $c0

    dec b                                         ; $6204: $05
    ldh a, [$9d]                                  ; $6205: $f0 $9d
    add b                                         ; $6207: $80
    add b                                         ; $6208: $80
    xor b                                         ; $6209: $a8
    jr nz, jr_036_61fc                            ; $620a: $20 $f0

    inc hl                                        ; $620c: $23
    nop                                           ; $620d: $00
    nop                                           ; $620e: $00
    nop                                           ; $620f: $00
    ld e, a                                       ; $6210: $5f
    rst $38                                       ; $6211: $ff
    nop                                           ; $6212: $00
    rst $38                                       ; $6213: $ff
    nop                                           ; $6214: $00
    ld a, a                                       ; $6215: $7f
    cp $e0                                        ; $6216: $fe $e0
    ccf                                           ; $6218: $3f
    cp $e0                                        ; $6219: $fe $e0
    xor a                                         ; $621b: $af
    rra                                           ; $621c: $1f
    inc e                                         ; $621d: $1c
    ld d, e                                       ; $621e: $53
    rra                                           ; $621f: $1f
    ldh a, [$e1]                                  ; $6220: $f0 $e1
    cp $fe                                        ; $6222: $fe $fe
    ldh [$fc], a                                  ; $6224: $e0 $fc
    sbc $fe                                       ; $6226: $de $fe
    ldh [$fe], a                                  ; $6228: $e0 $fe
    ld c, $b1                                     ; $622a: $0e $b1
    ccf                                           ; $622c: $3f
    ldh [$e9], a                                  ; $622d: $e0 $e9
    rst $38                                       ; $622f: $ff
    ldh [$7b], a                                  ; $6230: $e0 $7b
    add hl, de                                    ; $6232: $19
    ld sp, hl                                     ; $6233: $f9
    ldh [$e9], a                                  ; $6234: $e0 $e9
    ld hl, sp+$70                                 ; $6236: $f8 $70
    sub d                                         ; $6238: $92
    ldh a, [$c0]                                  ; $6239: $f0 $c0
    and $7f                                       ; $623b: $e6 $7f
    ld bc, HeaderManufacturerCode                 ; $623d: $01 $3f $01
    rra                                           ; $6240: $1f
    inc bc                                        ; $6241: $03
    ld b, d                                       ; $6242: $42
    inc bc                                        ; $6243: $03
    ret nz                                        ; $6244: $c0

    and $7f                                       ; $6245: $e6 $7f
    ldh [rNR33], a                                ; $6247: $e0 $1d
    pop af                                        ; $6249: $f1
    adc [hl]                                      ; $624a: $8e
    rst $38                                       ; $624b: $ff
    ld e, b                                       ; $624c: $58
    rst $38                                       ; $624d: $ff
    and b                                         ; $624e: $a0
    rst $20                                       ; $624f: $e7
    rst $20                                       ; $6250: $e7
    rst $38                                       ; $6251: $ff
    call c, $9323                                 ; $6252: $dc $23 $93
    ldh [$c0], a                                  ; $6255: $e0 $c0
    ld [$be00], a                                 ; $6257: $ea $00 $be
    cp [hl]                                       ; $625a: $be
    rst $38                                       ; $625b: $ff
    ld e, b                                       ; $625c: $58
    rra                                           ; $625d: $1f
    ld h, b                                       ; $625e: $60
    ccf                                           ; $625f: $3f
    db $10                                        ; $6260: $10
    rra                                           ; $6261: $1f
    add hl, de                                    ; $6262: $19
    rra                                           ; $6263: $1f
    rst $38                                       ; $6264: $ff
    ld hl, $bf3f                                  ; $6265: $21 $3f $bf
    ccf                                           ; $6268: $3f
    db $e3                                        ; $6269: $e3
    ld bc, $03f3                                  ; $626a: $01 $f3 $03
    rst $38                                       ; $626d: $ff
    ret nz                                        ; $626e: $c0

    rst $38                                       ; $626f: $ff
    sbc [hl]                                      ; $6270: $9e
    rst $38                                       ; $6271: $ff
    cp a                                          ; $6272: $bf
    pop hl                                        ; $6273: $e1
    ccf                                           ; $6274: $3f
    ldh [$ef], a                                  ; $6275: $e0 $ef
    ccf                                           ; $6277: $3f
    db $ec                                        ; $6278: $ec
    ld a, a                                       ; $6279: $7f
    ret nz                                        ; $627a: $c0

    cp $e0                                        ; $627b: $fe $e0
    ret c                                         ; $627d: $d8

    ld b, $ff                                     ; $627e: $06 $ff
    rst $38                                       ; $6280: $ff
    ld a, [c]                                     ; $6281: $f2
    rst $38                                       ; $6282: $ff
    ld a, [$f90f]                                 ; $6283: $fa $0f $f9
    rrca                                          ; $6286: $0f
    ld sp, hl                                     ; $6287: $f9
    ld l, a                                       ; $6288: $6f
    ei                                            ; $6289: $fb
    db $fd                                        ; $628a: $fd
    rlca                                          ; $628b: $07
    cp $e0                                        ; $628c: $fe $e0
    scf                                           ; $628e: $37
    ld [hl-], a                                   ; $628f: $32
    ldh a, [$0a]                                  ; $6290: $f0 $0a
    ld hl, sp-$01                                 ; $6292: $f8 $ff
    db $10                                        ; $6294: $10
    ldh a, [$30]                                  ; $6295: $f0 $30
    ldh a, [$08]                                  ; $6297: $f0 $08
    ld hl, sp-$07                                 ; $6299: $f8 $f9
    ld hl, sp-$01                                 ; $629b: $f8 $ff
    rst $00                                       ; $629d: $c7
    nop                                           ; $629e: $00
    rst $08                                       ; $629f: $cf
    add b                                         ; $62a0: $80
    ld e, e                                       ; $62a1: $5b
    dec de                                        ; $62a2: $1b
    ld e, h                                       ; $62a3: $5c
    rla                                           ; $62a4: $17
    rst $38                                       ; $62a5: $ff
    ccf                                           ; $62a6: $3f
    inc sp                                        ; $62a7: $33
    ld a, a                                       ; $62a8: $7f
    ld c, e                                       ; $62a9: $4b
    ld a, a                                       ; $62aa: $7f
    ld c, l                                       ; $62ab: $4d
    rst $38                                       ; $62ac: $ff
    ld d, c                                       ; $62ad: $51

jr_036_62ae:
    rst $38                                       ; $62ae: $ff
    rst $38                                       ; $62af: $ff
    inc hl                                        ; $62b0: $23

jr_036_62b1:
    rst $38                                       ; $62b1: $ff
    jr z, jr_036_62c7                             ; $62b2: $28 $13

    rst $38                                       ; $62b4: $ff
    sub a                                         ; $62b5: $97
    db $fc                                        ; $62b6: $fc
    rst $38                                       ; $62b7: $ff
    daa                                           ; $62b8: $27
    db $fc                                        ; $62b9: $fc
    rst $20                                       ; $62ba: $e7
    db $fd                                        ; $62bb: $fd
    rst $28                                       ; $62bc: $ef
    jr c, jr_036_62ae                             ; $62bd: $38 $ef

    cp b                                          ; $62bf: $b8
    rst $38                                       ; $62c0: $ff
    rst $28                                       ; $62c1: $ef
    ei                                            ; $62c2: $fb
    rst $38                                       ; $62c3: $ff
    sub [hl]                                      ; $62c4: $96
    sbc $ff                                       ; $62c5: $de $ff

jr_036_62c7:
    rst $38                                       ; $62c7: $ff
    ld hl, $ffef                                  ; $62c8: $21 $ef $ff
    ld bc, $8dff                                  ; $62cb: $01 $ff $8d
    jr jr_036_62b1                                ; $62ce: $18 $e1

    rst $38                                       ; $62d0: $ff
    ld b, $ff                                     ; $62d1: $06 $ff
    rst $28                                       ; $62d3: $ef
    adc e                                         ; $62d4: $8b
    ld b, c                                       ; $62d5: $41
    rst $38                                       ; $62d6: $ff
    ld b, a                                       ; $62d7: $47
    rst $28                                       ; $62d8: $ef
    ldh [rNR43], a                                ; $62d9: $e0 $22
    cp $a7                                        ; $62db: $fe $a7
    rst $38                                       ; $62dd: $ff
    rst $38                                       ; $62de: $ff
    or c                                          ; $62df: $b1
    rst $38                                       ; $62e0: $ff
    cp a                                          ; $62e1: $bf
    rst $38                                       ; $62e2: $ff
    rst $38                                       ; $62e3: $ff
    ld c, b                                       ; $62e4: $48
    jp c, $d8ff                                   ; $62e5: $da $ff $d8

    ld a, [hl-]                                   ; $62e8: $3a
    add sp, -$04                                  ; $62e9: $e8 $fc
    call z, $d2fe                                 ; $62eb: $cc $fe $d2
    cp $ff                                        ; $62ee: $fe $ff
    or d                                          ; $62f0: $b2
    rst $38                                       ; $62f1: $ff
    adc d                                         ; $62f2: $8a
    rst $38                                       ; $62f3: $ff
    add h                                         ; $62f4: $84
    rst $38                                       ; $62f5: $ff
    ld b, h                                       ; $62f6: $44
    rst $38                                       ; $62f7: $ff
    ld [hl], a                                    ; $62f8: $77
    inc b                                         ; $62f9: $04
    rst $38                                       ; $62fa: $ff
    dec b                                         ; $62fb: $05
    db $fc                                        ; $62fc: $fc
    ldh [rSC], a                                  ; $62fd: $e0 $02

Jump_036_62ff:
    db $fd                                        ; $62ff: $fd
    ld bc, $e160                                  ; $6300: $01 $60 $e1
    rst $38                                       ; $6303: $ff
    add d                                         ; $6304: $82
    nop                                           ; $6305: $00
    rst $38                                       ; $6306: $ff
    or h                                          ; $6307: $b4
    rst $38                                       ; $6308: $ff
    inc l                                         ; $6309: $2c
    rst $38                                       ; $630a: $ff
    adc h                                         ; $630b: $8c
    rst $38                                       ; $630c: $ff
    rst $08                                       ; $630d: $cf
    or c                                          ; $630e: $b1
    rst $38                                       ; $630f: $ff
    add h                                         ; $6310: $84
    ld a, a                                       ; $6311: $7f
    ld b, e                                       ; $6312: $43
    ccf                                           ; $6313: $3f
    jr nz, @+$01                                  ; $6314: $20 $ff

    ld a, a                                       ; $6316: $7f
    ld e, b                                       ; $6317: $58
    rst $38                                       ; $6318: $ff
    ld e, d                                       ; $6319: $5a
    rst $38                                       ; $631a: $ff
    ld l, c                                       ; $631b: $69
    rst $38                                       ; $631c: $ff
    ld h, d                                       ; $631d: $62
    rst $38                                       ; $631e: $ff
    rst $20                                       ; $631f: $e7
    ld a, [de]                                    ; $6320: $1a
    rst $38                                       ; $6321: $ff
    ld b, e                                       ; $6322: $43
    db $fc                                        ; $6323: $fc
    add h                                         ; $6324: $84
    ld hl, sp+$08                                 ; $6325: $f8 $08
    xor a                                         ; $6327: $af
    cp $34                                        ; $6328: $fe $34
    rst $38                                       ; $632a: $ff
    ld b, b                                       ; $632b: $40
    cp $e2                                        ; $632c: $fe $e2
    add b                                         ; $632e: $80
    ret nz                                        ; $632f: $c0

    jp nz, Jump_036_7b00                          ; $6330: $c2 $00 $7b

    ld b, c                                       ; $6333: $41
    nop                                           ; $6334: $00
    ret nz                                        ; $6335: $c0

    jp hl                                         ; $6336: $e9


    db $fc                                        ; $6337: $fc
    inc e                                         ; $6338: $1c
    cp [hl]                                       ; $6339: $be
    ld [hl+], a                                   ; $633a: $22
    ret nz                                        ; $633b: $c0

    db $eb                                        ; $633c: $eb
    db $eb                                        ; $633d: $eb
    rst $38                                       ; $633e: $ff
    ret c                                         ; $633f: $d8

    ret nz                                        ; $6340: $c0

    db $ec                                        ; $6341: $ec
    ld [hl], $c0                                  ; $6342: $36 $c0
    jp hl                                         ; $6344: $e9


    ccf                                           ; $6345: $3f
    jr c, jr_036_63c5                             ; $6346: $38 $7d

    rra                                           ; $6348: $1f
    ld b, h                                       ; $6349: $44
    rst $38                                       ; $634a: $ff
    db $10                                        ; $634b: $10
    rst $38                                       ; $634c: $ff
    ld [$e180], sp                                ; $634d: $08 $80 $e1
    ld a, [hl]                                    ; $6350: $7e
    pop hl                                        ; $6351: $e1
    add b                                         ; $6352: $80
    ld [c], a                                     ; $6353: $e2
    rst $38                                       ; $6354: $ff
    and l                                         ; $6355: $a5
    rst $38                                       ; $6356: $ff
    pop de                                        ; $6357: $d1
    ld sp, hl                                     ; $6358: $f9
    ld d, [hl]                                    ; $6359: $56
    rst $38                                       ; $635a: $ff
    jr nc, @+$01                                  ; $635b: $30 $ff

    db $dd                                        ; $635d: $dd
    jr z, jr_036_63c4                             ; $635e: $28 $64

    ldh [$8b], a                                  ; $6360: $e0 $8b
    ld a, a                                       ; $6362: $7f
    ld c, d                                       ; $6363: $4a
    ld [hl], $e0                                  ; $6364: $36 $e0
    adc h                                         ; $6366: $8c
    db $fc                                        ; $6367: $fc
    rst $38                                       ; $6368: $ff
    inc hl                                        ; $6369: $23
    rst $38                                       ; $636a: $ff
    adc b                                         ; $636b: $88
    rst $38                                       ; $636c: $ff
    ld hl, sp-$21                                 ; $636d: $f8 $df
    ld [hl], c                                    ; $636f: $71
    rst $38                                       ; $6370: $ff
    db $fd                                        ; $6371: $fd
    ld h, $4c                                     ; $6372: $26 $4c
    ldh [$28], a                                  ; $6374: $e0 $28
    rst $38                                       ; $6376: $ff
    ld c, b                                       ; $6377: $48
    rst $38                                       ; $6378: $ff
    ld d, b                                       ; $6379: $50
    rst $38                                       ; $637a: $ff
    rst $38                                       ; $637b: $ff
    ld h, b                                       ; $637c: $60
    cp a                                          ; $637d: $bf
    add b                                         ; $637e: $80
    cp a                                          ; $637f: $bf
    add b                                         ; $6380: $80
    rst $38                                       ; $6381: $ff
    ldh [$f1], a                                  ; $6382: $e0 $f1
    rst $10                                       ; $6384: $d7
    ld d, b                                       ; $6385: $50
    rst $38                                       ; $6386: $ff
    jr c, @-$40                                   ; $6387: $38 $be

    ldh [rNR41], a                                ; $6389: $e0 $20

jr_036_638b:
    ld l, d                                       ; $638b: $6a
    pop hl                                        ; $638c: $e1
    cp a                                          ; $638d: $bf
    add b                                         ; $638e: $80
    cp $70                                        ; $638f: $fe $70
    pop hl                                        ; $6391: $e1
    jp nz, $e300                                  ; $6392: $c2 $00 $e3

    ld bc, $01f1                                  ; $6395: $01 $f1 $01
    di                                            ; $6398: $f3
    rst $38                                       ; $6399: $ff
    ld [bc], a                                    ; $639a: $02
    db $e3                                        ; $639b: $e3
    ld [bc], a                                    ; $639c: $02
    db $e3                                        ; $639d: $e3
    inc bc                                        ; $639e: $03
    rst $00                                       ; $639f: $c7
    inc b                                         ; $63a0: $04
    rst $08                                       ; $63a1: $cf
    rst $10                                       ; $63a2: $d7
    inc b                                         ; $63a3: $04
    rst $38                                       ; $63a4: $ff
    rst $10                                       ; $63a5: $d7
    ret c                                         ; $63a6: $d8

    ret nz                                        ; $63a7: $c0

    ld c, d                                       ; $63a8: $4a
    jr jr_036_638b                                ; $63a9: $18 $e0

    ld b, e                                       ; $63ab: $43
    rst $38                                       ; $63ac: $ff
    cp l                                          ; $63ad: $bd
    add b                                         ; $63ae: $80
    cp $e1                                        ; $63af: $fe $e1
    cp $d6                                        ; $63b1: $fe $d6
    rst $38                                       ; $63b3: $ff
    dec d                                         ; $63b4: $15
    sbc h                                         ; $63b5: $9c
    ldh [rLY], a                                  ; $63b6: $e0 $44
    ld a, [$e004]                                 ; $63b8: $fa $04 $e0
    inc bc                                        ; $63bb: $03
    adc d                                         ; $63bc: $8a
    pop hl                                        ; $63bd: $e1
    ld b, e                                       ; $63be: $43
    nop                                           ; $63bf: $00
    ld b, a                                       ; $63c0: $47
    nop                                           ; $63c1: $00
    rrca                                          ; $63c2: $0f
    rst $28                                       ; $63c3: $ef

jr_036_63c4:
    nop                                           ; $63c4: $00

jr_036_63c5:
    adc a                                         ; $63c5: $8f
    add b                                         ; $63c6: $80
    add a                                         ; $63c7: $87
    cp $e0                                        ; $63c8: $fe $e0
    db $e3                                        ; $63ca: $e3
    ld b, b                                       ; $63cb: $40
    di                                            ; $63cc: $f3
    rst $30                                       ; $63cd: $f7
    ld b, b                                       ; $63ce: $40
    rst $38                                       ; $63cf: $ff
    dec h                                         ; $63d0: $25
    cp $e0                                        ; $63d1: $fe $e0
    daa                                           ; $63d3: $27
    rst $38                                       ; $63d4: $ff
    ld [de], a                                    ; $63d5: $12
    rst $28                                       ; $63d6: $ef
    rst $38                                       ; $63d7: $ff
    inc c                                         ; $63d8: $0c
    rst $20                                       ; $63d9: $e7
    inc b                                         ; $63da: $04
    rst $00                                       ; $63db: $c7
    ld [bc], a                                    ; $63dc: $02
    rst $08                                       ; $63dd: $cf
    ld bc, $7dff                                  ; $63de: $01 $ff $7d
    ld d, a                                       ; $63e1: $57

jr_036_63e2:
    sbc b                                         ; $63e2: $98
    ret nz                                        ; $63e3: $c0

    jp z, $c4ff                                   ; $63e4: $ca $ff $c4

    rst $38                                       ; $63e7: $ff
    jp $e3c0                                      ; $63e8: $c3 $c0 $e3


    dec sp                                        ; $63eb: $3b
    rst $38                                       ; $63ec: $ff
    push de                                       ; $63ed: $d5
    ret nz                                        ; $63ee: $c0

    ld [c], a                                     ; $63ef: $e2
    ld b, a                                       ; $63f0: $47
    rst $38                                       ; $63f1: $ff
    add [hl]                                      ; $63f2: $86
    ld c, h                                       ; $63f3: $4c
    pop hl                                        ; $63f4: $e1
    cp h                                          ; $63f5: $bc
    ldh [$fd], a                                  ; $63f6: $e0 $fd
    and h                                         ; $63f8: $a4
    cp $e0                                        ; $63f9: $fe $e0
    db $e4                                        ; $63fb: $e4
    rst $38                                       ; $63fc: $ff
    call z, $78ff                                 ; $63fd: $cc $ff $78
    rst $20                                       ; $6400: $e7
    rst $38                                       ; $6401: $ff
    ld h, b                                       ; $6402: $60
    db $e3                                        ; $6403: $e3
    add b                                         ; $6404: $80
    di                                            ; $6405: $f3
    add b                                         ; $6406: $80
    jp nz, $e200                                  ; $6407: $c2 $00 $e2

    ld a, e                                       ; $640a: $7b
    nop                                           ; $640b: $00
    ldh a, [$fe]                                  ; $640c: $f0 $fe
    ldh [$e0], a                                  ; $640e: $e0 $e0
    nop                                           ; $6410: $00
    pop hl                                        ; $6411: $e1
    nop                                           ; $6412: $00
    ld d, b                                       ; $6413: $50
    ret nz                                        ; $6414: $c0

    rst $38                                       ; $6415: $ff
    nop                                           ; $6416: $00
    ld a, a                                       ; $6417: $7f
    ld [hl-], a                                   ; $6418: $32
    ld e, a                                       ; $6419: $5f
    ld de, $313f                                  ; $641a: $11 $3f $31
    ccf                                           ; $641d: $3f
    rst $28                                       ; $641e: $ef
    jr nz, @+$41                                  ; $641f: $20 $3f

    jr nz, jr_036_63e2                            ; $6421: $20 $bf

    ld e, d                                       ; $6423: $5a
    ld [c], a                                     ; $6424: $e2
    rst $38                                       ; $6425: $ff
    db $f4                                        ; $6426: $f4
    rst $38                                       ; $6427: $ff
    push de                                       ; $6428: $d5
    xor b                                         ; $6429: $a8
    inc c                                         ; $642a: $0c
    ldh [$e0], a                                  ; $642b: $e0 $e0
    ld a, b                                       ; $642d: $78
    and b                                         ; $642e: $a0
    ld bc, $e2fe                                  ; $642f: $01 $fe $e2
    sbc h                                         ; $6432: $9c
    rst $38                                       ; $6433: $ff
    rst $30                                       ; $6434: $f7
    and d                                         ; $6435: $a2
    rst $38                                       ; $6436: $ff
    jp nc, $e0fe                                  ; $6437: $d2 $fe $e0

    ld a, [c]                                     ; $643a: $f2
    rst $38                                       ; $643b: $ff
    and [hl]                                      ; $643c: $a6
    rst $38                                       ; $643d: $ff
    rst $30                                       ; $643e: $f7
    sbc h                                         ; $643f: $9c
    di                                            ; $6440: $f3
    ldh a, [$f2]                                  ; $6441: $f0 $f2
    ret nz                                        ; $6443: $c0

    db $10                                        ; $6444: $10
    ld a, a                                       ; $6445: $7f
    ld h, c                                       ; $6446: $61
    rst $38                                       ; $6447: $ff
    ld a, a                                       ; $6448: $7f
    add c                                         ; $6449: $81
    ld a, a                                       ; $644a: $7f
    ld a, d                                       ; $644b: $7a
    ccf                                           ; $644c: $3f
    dec bc                                        ; $644d: $0b
    rra                                           ; $644e: $1f
    dec b                                         ; $644f: $05
    and b                                         ; $6450: $a0
    ret nz                                        ; $6451: $c0

    db $eb                                        ; $6452: $eb
    add b                                         ; $6453: $80
    rst $38                                       ; $6454: $ff
    ld b, a                                       ; $6455: $47
    ld [c], a                                     ; $6456: $e2
    add h                                         ; $6457: $84
    db $dd                                        ; $6458: $dd
    ret nz                                        ; $6459: $c0

    rst $38                                       ; $645a: $ff
    rst $38                                       ; $645b: $ff
    cp $ed                                        ; $645c: $fe $ed
    ld b, d                                       ; $645e: $42
    sub $c0                                       ; $645f: $d6 $c0
    cp $03                                        ; $6461: $fe $03
    ld b, l                                       ; $6463: $45
    ldh [rSCX], a                                 ; $6464: $e0 $43
    cp $81                                        ; $6466: $fe $81
    or $f0                                        ; $6468: $f6 $f0
    ldh [$fd], a                                  ; $646a: $e0 $fd
    add h                                         ; $646c: $84
    inc b                                         ; $646d: $04
    ldh [$d0], a                                  ; $646e: $e0 $d0
    cp $0c                                        ; $6470: $fe $0c
    cp $7f                                        ; $6472: $fe $7f
    ld [bc], a                                    ; $6474: $02
    db $fc                                        ; $6475: $fc
    cp h                                          ; $6476: $bc
    db $fc                                        ; $6477: $fc
    and b                                         ; $6478: $a0
    ld hl, sp+$40                                 ; $6479: $f8 $40
    ld b, b                                       ; $647b: $40
    ret nz                                        ; $647c: $c0

    ld c, $20                                     ; $647d: $0e $20
    and a                                         ; $647f: $a7
    ld bc, $011f                                  ; $6480: $01 $1f $01
    ld h, b                                       ; $6483: $60
    ret nz                                        ; $6484: $c0

    ret nc                                        ; $6485: $d0

    pop hl                                        ; $6486: $e1
    cp $e0                                        ; $6487: $fe $e0
    ret nc                                        ; $6489: $d0

    and $b8                                       ; $648a: $e6 $b8
    ld [hl], b                                    ; $648c: $70
    xor d                                         ; $648d: $aa
    ret nc                                        ; $648e: $d0

    add sp, $30                                   ; $648f: $e8 $30
    and c                                         ; $6491: $a1
    nop                                           ; $6492: $00
    ld b, c                                       ; $6493: $41
    ld bc, $e992                                  ; $6494: $01 $92 $e9
    db $fc                                        ; $6497: $fc
    scf                                           ; $6498: $37
    add h                                         ; $6499: $84
    ld a, [$c208]                                 ; $649a: $fa $08 $c2
    jp hl                                         ; $649d: $e9


    rst $38                                       ; $649e: $ff
    add h                                         ; $649f: $84
    ret nz                                        ; $64a0: $c0

    db $e3                                        ; $64a1: $e3
    ret nc                                        ; $64a2: $d0

    add sp, -$10                                  ; $64a3: $e8 $f0
    rra                                           ; $64a5: $1f
    and b                                         ; $64a6: $a0
    ld h, d                                       ; $64a7: $62
    jp hl                                         ; $64a8: $e9


    ld h, b                                       ; $64a9: $60
    ldh [$92], a                                  ; $64aa: $e0 $92
    add sp, $7f                                   ; $64ac: $e8 $7f
    ld b, d                                       ; $64ae: $42
    ld a, a                                       ; $64af: $7f
    ld hl, $a0fe                                  ; $64b0: $21 $fe $a0
    ret nz                                        ; $64b3: $c0

    inc bc                                        ; $64b4: $03
    inc c                                         ; $64b5: $0c
    rlca                                          ; $64b6: $07
    ld [$080f], sp                                ; $64b7: $08 $0f $08
    rrca                                          ; $64ba: $0f
    rst $28                                       ; $64bb: $ef
    adc a                                         ; $64bc: $8f
    rrca                                          ; $64bd: $0f
    add sp, $0f                                   ; $64be: $e8 $0f
    ld a, $e0                                     ; $64c0: $3e $e0
    ld a, [hl]                                    ; $64c2: $7e
    cp $c2                                        ; $64c3: $fe $c2

jr_036_64c5:
    ccf                                           ; $64c5: $3f
    ld a, $e2                                     ; $64c6: $3e $e2

jr_036_64c8:
    ld e, $fe                                     ; $64c8: $1e $fe
    ld [de], a                                    ; $64ca: $12
    cp $68                                        ; $64cb: $fe $68
    pop hl                                        ; $64cd: $e1
    sbc e                                         ; $64ce: $9b
    pop hl                                        ; $64cf: $e1

Jump_036_64d0:
    ld a, a                                       ; $64d0: $7f
    rst $38                                       ; $64d1: $ff
    add a                                         ; $64d2: $87
    ld hl, sp-$71                                 ; $64d3: $f8 $8f
    ldh a, [rIE]                                  ; $64d5: $f0 $ff
    sub b                                         ; $64d7: $90
    ld [hl+], a                                   ; $64d8: $22
    ldh [$fa], a                                  ; $64d9: $e0 $fa
    dec d                                         ; $64db: $15
    ldh [rIE], a                                  ; $64dc: $e0 $ff
    ret nz                                        ; $64de: $c0

    ret nz                                        ; $64df: $c0

    add b                                         ; $64e0: $80
    ld [hl], b                                    ; $64e1: $70
    ret nz                                        ; $64e2: $c0

    jr nc, jr_036_64c5                            ; $64e3: $30 $e0

    rst $38                                       ; $64e5: $ff
    jr nz, jr_036_64c8                            ; $64e6: $20 $e0

    pop hl                                        ; $64e8: $e1
    ldh [$27], a                                  ; $64e9: $e0 $27
    ldh [rIE], a                                  ; $64eb: $e0 $ff
    rst $38                                       ; $64ed: $ff
    rst $38                                       ; $64ee: $ff
    ld e, a                                       ; $64ef: $5f
    dec e                                         ; $64f0: $1d
    ld h, e                                       ; $64f1: $63
    ccf                                           ; $64f2: $3f
    ld b, b                                       ; $64f3: $40
    ld a, a                                       ; $64f4: $7f
    ld b, b                                       ; $64f5: $40
    ld a, a                                       ; $64f6: $7f
    rst $38                                       ; $64f7: $ff
    ld a, h                                       ; $64f8: $7c
    ld a, a                                       ; $64f9: $7f
    jp $f87f                                      ; $64fa: $c3 $7f $f8


    ccf                                           ; $64fd: $3f
    rst $38                                       ; $64fe: $ff
    rst $38                                       ; $64ff: $ff
    rst $38                                       ; $6500: $ff
    ld a, [$faf8]                                 ; $6501: $fa $f8 $fa
    ld [$88f8], sp                                ; $6504: $08 $f8 $88
    ldh a, [$f0]                                  ; $6507: $f0 $f0
    cp a                                          ; $6509: $bf
    sub b                                         ; $650a: $90
    ldh a, [$f1]                                  ; $650b: $f0 $f1
    ldh a, [rNR22]                                ; $650d: $f0 $17
    ldh a, [$9c]                                  ; $650f: $f0 $9c
    ldh [$3f], a                                  ; $6511: $e0 $3f
    rst $38                                       ; $6513: $ff
    ld a, a                                       ; $6514: $7f
    ld hl, $233e                                  ; $6515: $21 $3e $23
    ld e, $1f                                     ; $6518: $1e $1f
    ld [de], a                                    ; $651a: $12
    rra                                           ; $651b: $1f
    rst $38                                       ; $651c: $ff
    sbc a                                         ; $651d: $9f
    rra                                           ; $651e: $1f
    ldh a, [$1f]                                  ; $651f: $f0 $1f
    rst $38                                       ; $6521: $ff
    rst $38                                       ; $6522: $ff
    ld a, [c]                                     ; $6523: $f2
    ld [hl], b                                    ; $6524: $70
    rst $38                                       ; $6525: $ff
    adc d                                         ; $6526: $8a

jr_036_6527:
    ld hl, sp+$04                                 ; $6527: $f8 $04
    db $fc                                        ; $6529: $fc
    inc b                                         ; $652a: $04
    db $fc                                        ; $652b: $fc
    ld a, h                                       ; $652c: $7c
    db $fc                                        ; $652d: $fc
    adc a                                         ; $652e: $8f
    add l                                         ; $652f: $85
    db $fc                                        ; $6530: $fc
    ccf                                           ; $6531: $3f
    ld hl, sp+$4b                                 ; $6532: $f8 $4b
    pop hl                                        ; $6534: $e1
    ld [$d0c3], sp                                ; $6535: $08 $c3 $d0
    and c                                         ; $6538: $a1
    sbc a                                         ; $6539: $9f
    di                                            ; $653a: $f3
    add b                                         ; $653b: $80
    pop bc                                        ; $653c: $c1
    sbc l                                         ; $653d: $9d
    pop hl                                        ; $653e: $e1
    nop                                           ; $653f: $00
    ld [$80c2], a                                 ; $6540: $ea $c2 $80
    ld [c], a                                     ; $6543: $e2
    add b                                         ; $6544: $80
    ld a, l                                       ; $6545: $7d
    ldh a, [$fe]                                  ; $6546: $f0 $fe
    ldh [$e0], a                                  ; $6548: $e0 $e0
    add b                                         ; $654a: $80
    pop hl                                        ; $654b: $e1
    add b                                         ; $654c: $80
    rst $00                                       ; $654d: $c7
    sub h                                         ; $654e: $94
    ret nz                                        ; $654f: $c0

    cp $f0                                        ; $6550: $fe $f0
    and e                                         ; $6552: $a3
    rrca                                          ; $6553: $0f
    nop                                           ; $6554: $00
    rlca                                          ; $6555: $07
    nop                                           ; $6556: $00
    add a                                         ; $6557: $87
    nop                                           ; $6558: $00
    db $e3                                        ; $6559: $e3
    ld a, [bc]                                    ; $655a: $0a
    ld b, c                                       ; $655b: $41
    add b                                         ; $655c: $80
    jp $e0ea                                      ; $655d: $c3 $ea $e0


    adc a                                         ; $6560: $8f
    cp $e0                                        ; $6561: $fe $e0
    ldh [$a2], a                                  ; $6563: $e0 $a2
    jr nz, jr_036_6527                            ; $6565: $20 $c0

    cp h                                          ; $6567: $bc
    and d                                         ; $6568: $a2
    ld a, d                                       ; $6569: $7a
    cp $e0                                        ; $656a: $fe $e0
    db $fc                                        ; $656c: $fc
    cp $e0                                        ; $656d: $fe $e0
    ld hl, sp-$80                                 ; $656f: $f8 $80
    add d                                         ; $6571: $82
    add b                                         ; $6572: $80
    ret nz                                        ; $6573: $c0

    db $eb                                        ; $6574: $eb
    add hl, bc                                    ; $6575: $09
    rst $08                                       ; $6576: $cf
    call c, $90a3                                 ; $6577: $dc $a3 $90
    add sp, $00                                   ; $657a: $e8 $00
    rst $38                                       ; $657c: $ff
    db $ec                                        ; $657d: $ec
    nop                                           ; $657e: $00
    nop                                           ; $657f: $00
    nop                                           ; $6580: $00
    nop                                           ; $6581: $00
    nop                                           ; $6582: $00
    nop                                           ; $6583: $00
    nop                                           ; $6584: $00
    nop                                           ; $6585: $00
    nop                                           ; $6586: $00
    nop                                           ; $6587: $00
    nop                                           ; $6588: $00
    nop                                           ; $6589: $00
    nop                                           ; $658a: $00
    nop                                           ; $658b: $00
    nop                                           ; $658c: $00
    nop                                           ; $658d: $00
    nop                                           ; $658e: $00
    nop                                           ; $658f: $00
    ei                                            ; $6590: $fb
    rst $38                                       ; $6591: $ff
    nop                                           ; $6592: $00
    cp $e8                                        ; $6593: $fe $e8
    inc e                                         ; $6595: $1c
    di                                            ; $6596: $f3
    rra                                           ; $6597: $1f
    ld e, l                                       ; $6598: $5d
    nop                                           ; $6599: $00
    rst $38                                       ; $659a: $ff
    ld e, l                                       ; $659b: $5d
    nop                                           ; $659c: $00
    ld h, a                                       ; $659d: $67
    nop                                           ; $659e: $00
    cp b                                          ; $659f: $b8
    nop                                           ; $65a0: $00
    rst $08                                       ; $65a1: $cf
    nop                                           ; $65a2: $00
    rst $38                                       ; $65a3: $ff
    ldh a, [rP1]                                  ; $65a4: $f0 $00
    sbc [hl]                                      ; $65a6: $9e
    ld c, $b1                                     ; $65a7: $0e $b1
    ccf                                           ; $65a9: $3f
    cp d                                          ; $65aa: $ba
    nop                                           ; $65ab: $00
    rst $38                                       ; $65ac: $ff
    cp d                                          ; $65ad: $ba
    nop                                           ; $65ae: $00
    and $00                                       ; $65af: $e6 $00
    dec e                                         ; $65b1: $1d
    nop                                           ; $65b2: $00
    di                                            ; $65b3: $f3
    nop                                           ; $65b4: $00
    cp a                                          ; $65b5: $bf
    rrca                                          ; $65b6: $0f
    nop                                           ; $65b7: $00
    ld sp, hl                                     ; $65b8: $f9
    ldh [rNR24], a                                ; $65b9: $e0 $19
    ld sp, hl                                     ; $65bb: $f9
    ret nc                                        ; $65bc: $d0

    ld [$fb70], a                                 ; $65bd: $ea $70 $fb
    sbc a                                         ; $65c0: $9f
    ldh a, [$c0]                                  ; $65c1: $f0 $c0
    add sp, $0e                                   ; $65c3: $e8 $0e
    ld sp, hl                                     ; $65c5: $f9
    rrca                                          ; $65c6: $0f
    db $fc                                        ; $65c7: $fc
    rrca                                          ; $65c8: $0f
    ld a, [hl]                                    ; $65c9: $7e
    ret nz                                        ; $65ca: $c0

    rst $20                                       ; $65cb: $e7
    rst $30                                       ; $65cc: $f7
    rlca                                          ; $65cd: $07
    sbc b                                         ; $65ce: $98
    sbc a                                         ; $65cf: $9f
    ld h, b                                       ; $65d0: $60
    rst $38                                       ; $65d1: $ff
    ret nz                                        ; $65d2: $c0

    rst $20                                       ; $65d3: $e7
    cp a                                          ; $65d4: $bf
    ld a, a                                       ; $65d5: $7f
    ld [hl], b                                    ; $65d6: $70
    adc l                                         ; $65d7: $8d
    db $fc                                        ; $65d8: $fc
    inc bc                                        ; $65d9: $03
    rst $38                                       ; $65da: $ff
    sub b                                         ; $65db: $90
    add sp, $38                                   ; $65dc: $e8 $38
    xor a                                         ; $65de: $af
    rst $08                                       ; $65df: $cf
    ld hl, sp+$1f                                 ; $65e0: $f8 $1f
    ld hl, sp-$80                                 ; $65e2: $f8 $80
    and $01                                       ; $65e4: $e6 $01
    cp $e0                                        ; $65e6: $fe $e0
    inc bc                                        ; $65e8: $03
    ei                                            ; $65e9: $fb
    cp $03                                        ; $65ea: $fe $03
    add b                                         ; $65ec: $80
    push hl                                       ; $65ed: $e5
    rst $28                                       ; $65ee: $ef
    ldh [rNR11], a                                ; $65ef: $e0 $11
    pop af                                        ; $65f1: $f1
    adc [hl]                                      ; $65f2: $8e
    dec sp                                        ; $65f3: $3b
    rst $38                                       ; $65f4: $ff
    ld e, b                                       ; $65f5: $58
    ret nz                                        ; $65f6: $c0

    add sp, -$21                                  ; $65f7: $e8 $df
    call c, Call_036_5323                         ; $65f9: $dc $23 $53
    ldh [$50], a                                  ; $65fc: $e0 $50
    ld [$00f7], a                                 ; $65fe: $ea $f7 $00
    rst $38                                       ; $6601: $ff
    cp [hl]                                       ; $6602: $be
    ld b, b                                       ; $6603: $40
    and $07                                       ; $6604: $e6 $07
    db $fc                                        ; $6606: $fc
    rlca                                          ; $6607: $07
    cp $fb                                        ; $6608: $fe $fb
    rrca                                          ; $660a: $0f
    ld sp, hl                                     ; $660b: $f9
    add b                                         ; $660c: $80
    rst $20                                       ; $660d: $e7
    add b                                         ; $660e: $80
    ld [hl], a                                    ; $660f: $77
    rst $00                                       ; $6610: $c7
    jr c, @+$01                                   ; $6611: $38 $ff

    ld a, [$ee80]                                 ; $6613: $fa $80 $ee
    cp $c0                                        ; $6616: $fe $c0
    db $ec                                        ; $6618: $ec
    ld hl, sp+$18                                 ; $6619: $f8 $18
    rra                                           ; $661b: $1f
    ldh [$3f], a                                  ; $661c: $e0 $3f
    rst $38                                       ; $661e: $ff
    db $10                                        ; $661f: $10
    rra                                           ; $6620: $1f
    ld sp, hl                                     ; $6621: $f9
    rra                                           ; $6622: $1f
    and c                                         ; $6623: $a1
    ccf                                           ; $6624: $3f
    cp a                                          ; $6625: $bf
    ccf                                           ; $6626: $3f
    rst $38                                       ; $6627: $ff
    rst $20                                       ; $6628: $e7
    ld bc, $031f                                  ; $6629: $01 $1f $03
    ret nz                                        ; $662c: $c0

    rst $38                                       ; $662d: $ff
    sbc [hl]                                      ; $662e: $9e
    rst $38                                       ; $662f: $ff
    rst $38                                       ; $6630: $ff
    cp a                                          ; $6631: $bf
    pop hl                                        ; $6632: $e1
    ccf                                           ; $6633: $3f
    ldh [$3f], a                                  ; $6634: $e0 $3f
    db $ec                                        ; $6636: $ec
    ld a, a                                       ; $6637: $7f
    ret nz                                        ; $6638: $c0

    ld a, [hl]                                    ; $6639: $7e
    cp $e0                                        ; $663a: $fe $e0
    ret c                                         ; $663c: $d8

    ld b, $ff                                     ; $663d: $06 $ff
    ld a, [c]                                     ; $663f: $f2
    rst $38                                       ; $6640: $ff
    ld a, [$e0a8]                                 ; $6641: $fa $a8 $e0
    rst $28                                       ; $6644: $ef
    ld sp, hl                                     ; $6645: $f9
    ld l, a                                       ; $6646: $6f
    db $fd                                        ; $6647: $fd
    rlca                                          ; $6648: $07
    cp $e0                                        ; $6649: $fe $e0
    scf                                           ; $664b: $37
    jr nc, @-$0e                                  ; $664c: $30 $f0

    rst $38                                       ; $664e: $ff
    rrca                                          ; $664f: $0f
    ld hl, sp+$18                                 ; $6650: $f8 $18
    ldh a, [$37]                                  ; $6652: $f0 $37
    ldh a, [$0d]                                  ; $6654: $f0 $0d
    ld hl, sp-$05                                 ; $6656: $f8 $fb
    db $fd                                        ; $6658: $fd
    ld hl, sp-$28                                 ; $6659: $f8 $d8
    ret nz                                        ; $665b: $c0

    add b                                         ; $665c: $80
    db $10                                        ; $665d: $10
    rra                                           ; $665e: $1f
    ld hl, sp+$0f                                 ; $665f: $f8 $0f
    rst $38                                       ; $6661: $ff
    inc e                                         ; $6662: $1c
    rrca                                          ; $6663: $0f
    ldh a, [$1f]                                  ; $6664: $f0 $1f
    cp a                                          ; $6666: $bf
    rra                                           ; $6667: $1f
    cp d                                          ; $6668: $ba
    nop                                           ; $6669: $00
    cp $c0                                        ; $666a: $fe $c0
    ldh [rSC], a                                  ; $666c: $e0 $02
    ld c, a                                       ; $666e: $4f
    rst $38                                       ; $666f: $ff
    ld e, a                                       ; $6670: $5f
    ldh a, [$9f]                                  ; $6671: $f0 $9f
    ldh a, [$ef]                                  ; $6673: $f0 $ef
    sbc a                                         ; $6675: $9f
    or $bf                                        ; $6676: $f6 $bf
    ldh [$fe], a                                  ; $6678: $e0 $fe
    ldh [$ec], a                                  ; $667a: $e0 $ec
    rst $38                                       ; $667c: $ff
    ld e, d                                       ; $667d: $5a
    rst $38                                       ; $667e: $ff
    ld a, c                                       ; $667f: $79
    rst $38                                       ; $6680: $ff
    db $fd                                        ; $6681: $fd
    add a                                         ; $6682: $87
    db $fc                                        ; $6683: $fc
    rlca                                          ; $6684: $07
    db $fc                                        ; $6685: $fc
    scf                                           ; $6686: $37
    db $fd                                        ; $6687: $fd
    cp $24                                        ; $6688: $fe $24
    ldh [$fe], a                                  ; $668a: $e0 $fe
    dec de                                        ; $668c: $1b
    rst $38                                       ; $668d: $ff
    dec l                                         ; $668e: $2d
    inc b                                         ; $668f: $04
    db $fc                                        ; $6690: $fc
    rst $38                                       ; $6691: $ff
    rrca                                          ; $6692: $0f
    ld hl, sp-$68                                 ; $6693: $f8 $98
    ld hl, sp-$79                                 ; $6695: $f8 $87
    db $fc                                        ; $6697: $fc
    db $fd                                        ; $6698: $fd
    db $fc                                        ; $6699: $fc
    rst $38                                       ; $669a: $ff
    db $dd                                        ; $669b: $dd
    add b                                         ; $669c: $80
    rst $20                                       ; $669d: $e7
    ret nz                                        ; $669e: $c0

    ld hl, sp+$20                                 ; $669f: $f8 $20
    rrca                                          ; $66a1: $0f
    ld bc, $f2ff                                  ; $66a2: $01 $ff $f2
    inc bc                                        ; $66a5: $03
    rra                                           ; $66a6: $1f
    inc de                                        ; $66a7: $13
    cp $28                                        ; $66a8: $fe $28
    cp $66                                        ; $66aa: $fe $66
    rst $38                                       ; $66ac: $ff
    rst $38                                       ; $66ad: $ff
    ld d, l                                       ; $66ae: $55
    rst $38                                       ; $66af: $ff
    sbc e                                         ; $66b0: $9b
    rst $38                                       ; $66b1: $ff
    sub d                                         ; $66b2: $92
    inc de                                        ; $66b3: $13
    rst $38                                       ; $66b4: $ff
    rst $38                                       ; $66b5: $ff
    sub a                                         ; $66b6: $97
    db $fc                                        ; $66b7: $fc
    daa                                           ; $66b8: $27
    db $fc                                        ; $66b9: $fc
    rst $20                                       ; $66ba: $e7
    db $fd                                        ; $66bb: $fd
    rst $28                                       ; $66bc: $ef

jr_036_66bd:
    jr c, jr_036_66bd                             ; $66bd: $38 $fe

    cp $e0                                        ; $66bf: $fe $e0
    ld a, e                                       ; $66c1: $7b
    rst $38                                       ; $66c2: $ff
    sub [hl]                                      ; $66c3: $96
    sbc $ff                                       ; $66c4: $de $ff
    rst $38                                       ; $66c6: $ff
    ld hl, $e4fa                                  ; $66c7: $21 $fa $e4
    ret nz                                        ; $66ca: $c0

    adc l                                         ; $66cb: $8d
    ld e, b                                       ; $66cc: $58
    jp nz, $ff06                                  ; $66cd: $c2 $06 $ff

    adc e                                         ; $66d0: $8b
    ld b, c                                       ; $66d1: $41
    rst $38                                       ; $66d2: $ff
    db $fd                                        ; $66d3: $fd
    ld b, a                                       ; $66d4: $47
    rst $28                                       ; $66d5: $ef
    ldh [rNR44], a                                ; $66d6: $e0 $23
    cp $a7                                        ; $66d8: $fe $a7
    rst $38                                       ; $66da: $ff
    or c                                          ; $66db: $b1
    rst $38                                       ; $66dc: $ff
    rst $38                                       ; $66dd: $ff
    cp a                                          ; $66de: $bf
    rst $38                                       ; $66df: $ff
    ld hl, sp+$48                                 ; $66e0: $f8 $48
    ld c, $0f                                     ; $66e2: $0e $0f
    rst $38                                       ; $66e4: $ff
    add hl, bc                                    ; $66e5: $09
    rst $38                                       ; $66e6: $ff
    rra                                           ; $66e7: $1f
    inc e                                         ; $66e8: $1c
    rst $38                                       ; $66e9: $ff
    inc hl                                        ; $66ea: $23
    cp a                                          ; $66eb: $bf
    daa                                           ; $66ec: $27
    cp a                                          ; $66ed: $bf
    ld a, [hl+]                                   ; $66ee: $2a
    rst $28                                       ; $66ef: $ef
    rst $38                                       ; $66f0: $ff
    db $10                                        ; $66f1: $10
    rra                                           ; $66f2: $1f
    ld de, $e380                                  ; $66f3: $11 $80 $e3
    rst $18                                       ; $66f6: $df
    or $ff                                        ; $66f7: $f6 $ff
    rst $30                                       ; $66f9: $f7
    jr nz, @+$01                                  ; $66fa: $20 $ff

    ld h, b                                       ; $66fc: $60
    add b                                         ; $66fd: $80
    ldh [$da], a                                  ; $66fe: $e0 $da
    inc b                                         ; $6700: $04
    db $fc                                        ; $6701: $fc
    rra                                           ; $6702: $1f
    rst $38                                       ; $6703: $ff
    db $fc                                        ; $6704: $fc
    add h                                         ; $6705: $84
    db $fc                                        ; $6706: $fc
    adc a                                         ; $6707: $8f
    ld hl, sp-$63                                 ; $6708: $f8 $9d
    db $fc                                        ; $670a: $fc
    push bc                                       ; $670b: $c5
    rst $38                                       ; $670c: $ff
    db $fc                                        ; $670d: $fc
    rst $38                                       ; $670e: $ff
    db $fc                                        ; $670f: $fc
    ld hl, sp+$20                                 ; $6710: $f8 $20
    rst $30                                       ; $6712: $f7
    inc b                                         ; $6713: $04
    rrca                                          ; $6714: $0f
    rst $38                                       ; $6715: $ff
    dec b                                         ; $6716: $05
    ld a, a                                       ; $6717: $7f
    inc b                                         ; $6718: $04
    ld h, e                                       ; $6719: $63
    ld [bc], a                                    ; $671a: $02
    ld b, c                                       ; $671b: $41
    ld bc, $ff03                                  ; $671c: $01 $03 $ff
    nop                                           ; $671f: $00
    rlca                                          ; $6720: $07
    nop                                           ; $6721: $00
    rra                                           ; $6722: $1f
    nop                                           ; $6723: $00
    rst $38                                       ; $6724: $ff
    or h                                          ; $6725: $b4
    rst $38                                       ; $6726: $ff
    rst $38                                       ; $6727: $ff
    inc l                                         ; $6728: $2c
    rst $38                                       ; $6729: $ff
    adc h                                         ; $672a: $8c
    rst $08                                       ; $672b: $cf
    or c                                          ; $672c: $b1
    rst $38                                       ; $672d: $ff
    add b                                         ; $672e: $80
    rst $38                                       ; $672f: $ff
    rst $38                                       ; $6730: $ff
    ld b, a                                       ; $6731: $47
    cp [hl]                                       ; $6732: $be
    inc hl                                        ; $6733: $23
    ld a, a                                       ; $6734: $7f
    ld e, c                                       ; $6735: $59
    rst $38                                       ; $6736: $ff
    ld e, d                                       ; $6737: $5a
    rst $38                                       ; $6738: $ff
    rst $38                                       ; $6739: $ff
    ld l, c                                       ; $673a: $69
    rst $38                                       ; $673b: $ff
    ld h, d                                       ; $673c: $62
    rst $20                                       ; $673d: $e7
    ld a, [de]                                    ; $673e: $1a
    rst $38                                       ; $673f: $ff
    inc bc                                        ; $6740: $03
    rst $38                                       ; $6741: $ff
    rst $38                                       ; $6742: $ff
    call nz, $88fd                                ; $6743: $c4 $fd $88
    cp $34                                        ; $6746: $fe $34
    rst $08                                       ; $6748: $cf
    ld b, b                                       ; $6749: $40
    ldh a, [rIE]                                  ; $674a: $f0 $ff
    ld b, b                                       ; $674c: $40
    sbc $40                                       ; $674d: $de $40
    add [hl]                                      ; $674f: $86
    add b                                         ; $6750: $80
    add d                                         ; $6751: $82
    nop                                           ; $6752: $00
    ret nz                                        ; $6753: $c0

    rst $38                                       ; $6754: $ff
    nop                                           ; $6755: $00
    ldh [rP1], a                                  ; $6756: $e0 $00
    ld hl, sp+$00                                 ; $6758: $f8 $00
    di                                            ; $675a: $f3
    ld [bc], a                                    ; $675b: $02
    rrca                                          ; $675c: $0f
    rst $38                                       ; $675d: $ff
    ld [bc], a                                    ; $675e: $02
    ld a, c                                       ; $675f: $79
    ld bc, $1879                                  ; $6760: $01 $79 $18
    ld a, a                                       ; $6763: $7f
    ld h, $7f                                     ; $6764: $26 $7f
    rst $38                                       ; $6766: $ff
    ld d, l                                       ; $6767: $55
    rst $38                                       ; $6768: $ff
    set 7, a                                      ; $6769: $cb $ff
    or e                                          ; $676b: $b3
    rst $38                                       ; $676c: $ff
    sub [hl]                                      ; $676d: $96
    rst $38                                       ; $676e: $ff
    rst $38                                       ; $676f: $ff
    ld b, [hl]                                    ; $6770: $46
    rst $20                                       ; $6771: $e7
    ld e, b                                       ; $6772: $58
    rst $38                                       ; $6773: $ff
    ret nz                                        ; $6774: $c0

    rst $38                                       ; $6775: $ff
    inc hl                                        ; $6776: $23
    rst $38                                       ; $6777: $ff
    rst $38                                       ; $6778: $ff
    ld [hl], c                                    ; $6779: $71
    rst $38                                       ; $677a: $ff
    xor h                                         ; $677b: $ac
    rst $38                                       ; $677c: $ff
    ld a, [hl+]                                   ; $677d: $2a
    rst $38                                       ; $677e: $ff
    inc [hl]                                      ; $677f: $34
    rst $38                                       ; $6780: $ff
    rst $30                                       ; $6781: $f7
    ld sp, $8df3                                  ; $6782: $31 $f3 $8d
    ld [hl-], a                                   ; $6785: $32
    ret nz                                        ; $6786: $c0

    ld [c], a                                     ; $6787: $e2
    ld a, a                                       ; $6788: $7f
    call nz, Call_036_7fff                        ; $6789: $c4 $ff $7f
    sbc d                                         ; $678c: $9a
    rst $38                                       ; $678d: $ff
    dec hl                                        ; $678e: $2b
    rst $28                                       ; $678f: $ef
    and b                                         ; $6790: $a0
    ldh a, [rNR41]                                ; $6791: $f0 $20
    ret nz                                        ; $6793: $c0

    jp hl                                         ; $6794: $e9


    rst $38                                       ; $6795: $ff
    rst $38                                       ; $6796: $ff
    and l                                         ; $6797: $a5
    ld a, a                                       ; $6798: $7f
    ld d, c                                       ; $6799: $51
    ld a, a                                       ; $679a: $7f
    jr nz, jr_036_681c                            ; $679b: $20 $7f

    db $10                                        ; $679d: $10
    rst $38                                       ; $679e: $ff
    ld c, a                                       ; $679f: $4f
    ld [$0407], sp                                ; $67a0: $08 $07 $04
    rlca                                          ; $67a3: $07
    ld [bc], a                                    ; $67a4: $02
    rra                                           ; $67a5: $1f
    ld bc, $ffff                                  ; $67a6: $01 $ff $ff
    and l                                         ; $67a9: $a5
    rst $38                                       ; $67aa: $ff
    sub c                                         ; $67ab: $91
    ld sp, hl                                     ; $67ac: $f9
    sub $ff                                       ; $67ad: $d6 $ff
    ld [hl], b                                    ; $67af: $70
    rst $38                                       ; $67b0: $ff
    rst $38                                       ; $67b1: $ff
    jr z, @+$01                                   ; $67b2: $28 $ff

    ld b, h                                       ; $67b4: $44
    rst $38                                       ; $67b5: $ff
    add e                                         ; $67b6: $83
    rst $38                                       ; $67b7: $ff
    add d                                         ; $67b8: $82
    cp [hl]                                       ; $67b9: $be
    ld d, $e0                                     ; $67ba: $16 $e0
    adc h                                         ; $67bc: $8c
    db $fc                                        ; $67bd: $fc
    inc hl                                        ; $67be: $23
    rst $38                                       ; $67bf: $ff
    adc b                                         ; $67c0: $88
    xor $e0                                       ; $67c1: $ee $e0

jr_036_67c3:
    ld bc, $10fe                                  ; $67c3: $01 $fe $10
    ldh [$fa], a                                  ; $67c6: $e0 $fa
    rst $38                                       ; $67c8: $ff
    jr z, jr_036_67c3                             ; $67c9: $28 $f8

    ld c, b                                       ; $67cb: $48
    cp $50                                        ; $67cc: $fe $50
    rst $38                                       ; $67ce: $ff
    and $60                                       ; $67cf: $e6 $60
    add d                                         ; $67d1: $82
    add b                                         ; $67d2: $80
    ret nz                                        ; $67d3: $c0

    add b                                         ; $67d4: $80
    ldh [$c0], a                                  ; $67d5: $e0 $c0
    cp a                                          ; $67d7: $bf
    ld hl, sp+$40                                 ; $67d8: $f8 $40
    rst $38                                       ; $67da: $ff
    inc c                                         ; $67db: $0c
    rrca                                          ; $67dc: $0f
    inc b                                         ; $67dd: $04
    ld b, b                                       ; $67de: $40
    pop hl                                        ; $67df: $e1
    ld b, e                                       ; $67e0: $43
    rst $18                                       ; $67e1: $df
    ld [bc], a                                    ; $67e2: $02
    inc bc                                        ; $67e3: $03
    inc bc                                        ; $67e4: $03
    rlca                                          ; $67e5: $07
    ld bc, $e040                                  ; $67e6: $01 $40 $e0
    ld d, [hl]                                    ; $67e9: $56
    rst $38                                       ; $67ea: $ff
    rst $38                                       ; $67eb: $ff
    ld h, $e7                                     ; $67ec: $26 $e7
    jr c, @+$01                                   ; $67ee: $38 $ff

    ld [hl-], a                                   ; $67f0: $32
    rst $38                                       ; $67f1: $ff
    ld d, e                                       ; $67f2: $53
    rst $38                                       ; $67f3: $ff
    ld e, a                                       ; $67f4: $5f
    adc c                                         ; $67f5: $89
    rst $38                                       ; $67f6: $ff
    inc e                                         ; $67f7: $1c
    rst $38                                       ; $67f8: $ff
    xor d                                         ; $67f9: $aa
    add b                                         ; $67fa: $80
    db $e4                                        ; $67fb: $e4
    ld hl, $e080                                  ; $67fc: $21 $80 $e0
    ld d, l                                       ; $67ff: $55
    add $b0                                       ; $6800: $c6 $b0
    ret nz                                        ; $6802: $c0

    ld a, [hl+]                                   ; $6803: $2a
    add b                                         ; $6804: $80
    db $ec                                        ; $6805: $ec
    add b                                         ; $6806: $80
    sub [hl]                                      ; $6807: $96
    and h                                         ; $6808: $a4
    ld [bc], a                                    ; $6809: $02
    cp $e0                                        ; $680a: $fe $e0
    ld d, a                                       ; $680c: $57
    inc bc                                        ; $680d: $03
    rst $38                                       ; $680e: $ff
    inc b                                         ; $680f: $04
    cp $e0                                        ; $6810: $fe $e0
    call nc, $e0c6                                ; $6812: $d4 $c6 $e0
    ld c, d                                       ; $6815: $4a
    add h                                         ; $6816: $84
    ldh [$79], a                                  ; $6817: $e0 $79
    ld b, e                                       ; $6819: $43
    cp $c0                                        ; $681a: $fe $c0

jr_036_681c:
    cp $e0                                        ; $681c: $fe $e0
    cp $56                                        ; $681e: $fe $56
    rst $38                                       ; $6820: $ff
    sub l                                         ; $6821: $95
    ld l, h                                       ; $6822: $6c
    ldh [$87], a                                  ; $6823: $e0 $87
    ld b, h                                       ; $6825: $44
    rst $38                                       ; $6826: $ff
    add h                                         ; $6827: $84
    cp $c0                                        ; $6828: $fe $c0
    jp c, $e0e1                                   ; $682a: $da $e1 $e0

    add e                                         ; $682d: $83
    db $e4                                        ; $682e: $e4
    ld [c], a                                     ; $682f: $e2
    rst $38                                       ; $6830: $ff
    db $fd                                        ; $6831: $fd
    ld b, b                                       ; $6832: $40
    cp $e0                                        ; $6833: $fe $e0
    sub [hl]                                      ; $6835: $96
    rst $38                                       ; $6836: $ff
    ld b, l                                       ; $6837: $45
    rst $38                                       ; $6838: $ff
    jr c, @+$01                                   ; $6839: $38 $ff

    ld d, a                                       ; $683b: $57
    db $10                                        ; $683c: $10
    rst $38                                       ; $683d: $ff
    ld [$c072], sp                                ; $683e: $08 $72 $c0
    ld bc, $80c2                                  ; $6841: $01 $c2 $80
    add hl, hl                                    ; $6844: $29
    ld a, $e0                                     ; $6845: $3e $e0
    rst $10                                       ; $6847: $d7
    and d                                         ; $6848: $a2
    rst $38                                       ; $6849: $ff
    ld b, c                                       ; $684a: $41
    db $e4                                        ; $684b: $e4
    ld [c], a                                     ; $684c: $e2
    ret nz                                        ; $684d: $c0

    sbc $e0                                       ; $684e: $de $e0
    jp z, Jump_036_5fff                           ; $6850: $ca $ff $5f

    ld d, d                                       ; $6853: $52
    rst $38                                       ; $6854: $ff
    ld [hl+], a                                   ; $6855: $22
    rst $38                                       ; $6856: $ff
    jp nz, $e4c2                                  ; $6857: $c2 $c2 $e4

    ld [bc], a                                    ; $685a: $02
    ret z                                         ; $685b: $c8

    and $71                                       ; $685c: $e6 $71

jr_036_685e:
    ret nz                                        ; $685e: $c0

    ld l, [hl]                                    ; $685f: $6e
    ret nz                                        ; $6860: $c0

    cp $e1                                        ; $6861: $fe $e1
    ld b, b                                       ; $6863: $40
    xor e                                         ; $6864: $ab
    nop                                           ; $6865: $00
    rst $38                                       ; $6866: $ff
    sub d                                         ; $6867: $92
    ldh a, [$c0]                                  ; $6868: $f0 $c0
    ld [hl], e                                    ; $686a: $73
    ld hl, $e4bf                                  ; $686b: $21 $bf $e4
    db $e3                                        ; $686e: $e3
    and b                                         ; $686f: $a0
    pop hl                                        ; $6870: $e1
    db $f4                                        ; $6871: $f4
    rst $38                                       ; $6872: $ff
    xor b                                         ; $6873: $a8
    and d                                         ; $6874: $a2
    ldh [$5d], a                                  ; $6875: $e0 $5d
    ldh [$ee], a                                  ; $6877: $e0 $ee
    add h                                         ; $6879: $84
    ld bc, $a0ff                                  ; $687a: $01 $ff $a0
    cp $e0                                        ; $687d: $fe $e0
    sub b                                         ; $687f: $90
    cp $e0                                        ; $6880: $fe $e0
    db $fd                                        ; $6882: $fd
    ldh a, [$8c]                                  ; $6883: $f0 $8c
    ld [c], a                                     ; $6885: $e2
    adc b                                         ; $6886: $88
    ld a, a                                       ; $6887: $7f
    ld h, l                                       ; $6888: $65
    ld a, a                                       ; $6889: $7f
    inc hl                                        ; $688a: $23
    ld a, a                                       ; $688b: $7f
    jp hl                                         ; $688c: $e9


    ld h, d                                       ; $688d: $62
    sub b                                         ; $688e: $90
    db $e4                                        ; $688f: $e4
    ld [hl], b                                    ; $6890: $70
    pop hl                                        ; $6891: $e1
    ld [$e090], a                                 ; $6892: $ea $90 $e0
    ld hl, $c1ff                                  ; $6895: $21 $ff $c1
    xor d                                         ; $6898: $aa
    jp nc, Jump_000_03e4                          ; $6899: $d2 $e4 $03

    ld e, d                                       ; $689c: $5a
    db $e4                                        ; $689d: $e4
    jr nz, jr_036_685e                            ; $689e: $20 $be

    ldh [rNR41], a                                ; $68a0: $e0 $20
    ld e, d                                       ; $68a2: $5a
    ldh [$90], a                                  ; $68a3: $e0 $90
    rst $38                                       ; $68a5: $ff
    rrca                                          ; $68a6: $0f
    ld [$10ff], sp                                ; $68a7: $08 $ff $10
    ld a, a                                       ; $68aa: $7f
    ld h, c                                       ; $68ab: $61
    rst $38                                       ; $68ac: $ff
    add c                                         ; $68ad: $81
    ld a, a                                       ; $68ae: $7f
    cp $7a                                        ; $68af: $fe $7a
    cp a                                          ; $68b1: $bf
    dec bc                                        ; $68b2: $0b
    rst $20                                       ; $68b3: $e7
    dec b                                         ; $68b4: $05
    dec e                                         ; $68b5: $1d
    ld [hl], $e1                                  ; $68b6: $36 $e1
    jp nc, $e217                                  ; $68b8: $d2 $17 $e2

    add h                                         ; $68bb: $84
    db $fd                                        ; $68bc: $fd
    ret nz                                        ; $68bd: $c0

    rst $38                                       ; $68be: $ff
    ldh [rSCY], a                                 ; $68bf: $e0 $42
    or $c0                                        ; $68c1: $f6 $c0
    cp $03                                        ; $68c3: $fe $03
    xor $13                                       ; $68c5: $ee $13
    ret nz                                        ; $68c7: $c0

    ld b, e                                       ; $68c8: $43
    cp $81                                        ; $68c9: $fe $81
    ldh a, [$e1]                                  ; $68cb: $f0 $e1
    add h                                         ; $68cd: $84
    ldh a, [rNR41]                                ; $68ce: $f0 $20
    rst $38                                       ; $68d0: $ff
    rst $38                                       ; $68d1: $ff
    ret nc                                        ; $68d2: $d0

    db $fc                                        ; $68d3: $fc
    inc c                                         ; $68d4: $0c
    rst $38                                       ; $68d5: $ff
    ld [bc], a                                    ; $68d6: $02
    db $fd                                        ; $68d7: $fd
    cp h                                          ; $68d8: $bc
    ld e, a                                       ; $68d9: $5f
    db $fd                                        ; $68da: $fd
    and b                                         ; $68db: $a0
    ld h, a                                       ; $68dc: $67
    ld b, b                                       ; $68dd: $40
    cp b                                          ; $68de: $b8
    ld a, [bc]                                    ; $68df: $0a
    add b                                         ; $68e0: $80
    di                                            ; $68e1: $f3
    ld [bc], a                                    ; $68e2: $02
    add b                                         ; $68e3: $80
    add hl, hl                                    ; $68e4: $29
    and $fa                                       ; $68e5: $e6 $fa
    ld h, b                                       ; $68e7: $60
    ld hl, sp+$63                                 ; $68e8: $f8 $63
    rst $38                                       ; $68ea: $ff
    jp hl                                         ; $68eb: $e9


    add b                                         ; $68ec: $80
    add b                                         ; $68ed: $80
    ld e, c                                       ; $68ee: $59
    ret nz                                        ; $68ef: $c0

    jp nc, $e1e2                                  ; $68f0: $d2 $e2 $e1

    ld b, d                                       ; $68f3: $42
    ret nz                                        ; $68f4: $c0

    ldh [$d7], a                                  ; $68f5: $e0 $d7
    and b                                         ; $68f7: $a0
    jp nz, $c0e7                                  ; $68f8: $c2 $e7 $c0

    ldh [$90], a                                  ; $68fb: $e0 $90
    rst $38                                       ; $68fd: $ff
    inc c                                         ; $68fe: $0c
    scf                                           ; $68ff: $37
    cp $02                                        ; $6900: $fe $02
    rst $38                                       ; $6902: $ff
    jp nz, $5de0                                  ; $6903: $c2 $e0 $5d

    ld b, b                                       ; $6906: $40
    cp b                                          ; $6907: $b8
    ld h, c                                       ; $6908: $61
    ret nz                                        ; $6909: $c0

    push hl                                       ; $690a: $e5
    xor a                                         ; $690b: $af
    cp e                                          ; $690c: $bb
    ld bc, $01bb                                  ; $690d: $01 $bb $01
    cp b                                          ; $6910: $b8
    ld h, b                                       ; $6911: $60
    ld bc, $ea82                                  ; $6912: $01 $82 $ea
    add h                                         ; $6915: $84
    ld hl, sp-$46                                 ; $6916: $f8 $ba
    ret nz                                        ; $6918: $c0

    rst $20                                       ; $6919: $e7
    add d                                         ; $691a: $82
    ret nz                                        ; $691b: $c0

    rst $20                                       ; $691c: $e7
    ld hl, sp-$18                                 ; $691d: $f8 $e8
    rst $38                                       ; $691f: $ff
    add [hl]                                      ; $6920: $86
    rst $38                                       ; $6921: $ff
    ld a, a                                       ; $6922: $7f
    add c                                         ; $6923: $81
    ld a, a                                       ; $6924: $7f
    ld e, [hl]                                    ; $6925: $5e
    ld a, l                                       ; $6926: $7d
    ld d, b                                       ; $6927: $50
    ld a, l                                       ; $6928: $7d
    jr nz, jr_036_69a3                            ; $6929: $20 $78

    ld h, c                                       ; $692b: $61
    di                                            ; $692c: $f3
    ldh a, [$d0]                                  ; $692d: $f0 $d0
    or b                                          ; $692f: $b0
    db $eb                                        ; $6930: $eb
    ld a, b                                       ; $6931: $78
    ld h, b                                       ; $6932: $60
    inc bc                                        ; $6933: $03
    ld a, h                                       ; $6934: $7c
    rlca                                          ; $6935: $07
    ld l, b                                       ; $6936: $68
    ld a, a                                       ; $6937: $7f
    rrca                                          ; $6938: $0f
    ld c, b                                       ; $6939: $48
    rrca                                          ; $693a: $0f
    rrca                                          ; $693b: $0f

jr_036_693c:
    rrca                                          ; $693c: $0f
    ld [$3d0f], sp                                ; $693d: $08 $0f $3d
    ldh [rIE], a                                  ; $6940: $e0 $ff
    ld a, [hl]                                    ; $6942: $7e
    rst $38                                       ; $6943: $ff
    jp nz, $e23f                                  ; $6944: $c2 $3f $e2

    rra                                           ; $6947: $1f
    cp $13                                        ; $6948: $fe $13
    ld sp, hl                                     ; $694a: $f9
    cp $b6                                        ; $694b: $fe $b6
    pop hl                                        ; $694d: $e1
    dec l                                         ; $694e: $2d
    ldh [$fc], a                                  ; $694f: $e0 $fc
    rst $38                                       ; $6951: $ff
    add a                                         ; $6952: $87
    ld hl, sp-$71                                 ; $6953: $f8 $8f
    reti                                          ; $6955: $d9


    ldh a, [$cd]                                  ; $6956: $f0 $cd
    ret nz                                        ; $6958: $c0

    jr jr_036_693c                                ; $6959: $18 $e1

jr_036_695b:
    rst $38                                       ; $695b: $ff
    rst $38                                       ; $695c: $ff
    jr c, jr_036_69bf                             ; $695d: $38 $60

    add b                                         ; $695f: $80
    ld e, [hl]                                    ; $6960: $5e
    rst $38                                       ; $6961: $ff
    ret nz                                        ; $6962: $c0

    ld h, $e0                                     ; $6963: $26 $e0
    ld [hl+], a                                   ; $6965: $22
    ldh [$e0], a                                  ; $6966: $e0 $e0
    ldh [rNR41], a                                ; $6968: $e0 $20
    db $fd                                        ; $696a: $fd
    ldh [$0d], a                                  ; $696b: $e0 $0d
    ldh [rNR33], a                                ; $696d: $e0 $1d
    inc hl                                        ; $696f: $23
    ccf                                           ; $6970: $3f
    ld b, b                                       ; $6971: $40
    ld a, a                                       ; $6972: $7f
    ld b, b                                       ; $6973: $40
    ld a, a                                       ; $6974: $7f
    ld a, a                                       ; $6975: $7f
    ld a, h                                       ; $6976: $7c
    ld a, a                                       ; $6977: $7f
    ld b, e                                       ; $6978: $43
    ld a, a                                       ; $6979: $7f
    jr c, jr_036_69bb                             ; $697a: $38 $3f

    db $fd                                        ; $697c: $fd
    ret nz                                        ; $697d: $c0

    push af                                       ; $697e: $f5
    ld hl, sp-$56                                 ; $697f: $f8 $aa
    pop bc                                        ; $6981: $c1
    rst $38                                       ; $6982: $ff
    ld c, h                                       ; $6983: $4c
    add b                                         ; $6984: $80
    rst $38                                       ; $6985: $ff
    ldh a, [$1f]                                  ; $6986: $f0 $1f
    ldh a, [rNR41]                                ; $6988: $f0 $20
    db $ed                                        ; $698a: $ed
    pop bc                                        ; $698b: $c1
    inc d                                         ; $698c: $14
    call nz, $e5fa                                ; $698d: $c4 $fa $e5
    adc [hl]                                      ; $6990: $8e
    ld l, l                                       ; $6991: $6d
    xor [hl]                                      ; $6992: $ae
    ldh [$b8], a                                  ; $6993: $e0 $b8
    sbc $40                                       ; $6995: $de $40
    ret c                                         ; $6997: $d8

    ld c, d                                       ; $6998: $4a
    rst $20                                       ; $6999: $e7
    nop                                           ; $699a: $00
    add [hl]                                      ; $699b: $86
    nop                                           ; $699c: $00
    ldh [$83], a                                  ; $699d: $e0 $83
    jp nz, $f0e7                                  ; $699f: $c2 $e7 $f0

    add b                                         ; $69a2: $80

jr_036_69a3:
    rst $08                                       ; $69a3: $cf
    cp a                                          ; $69a4: $bf
    add b                                         ; $69a5: $80
    cp b                                          ; $69a6: $b8
    add b                                         ; $69a7: $80
    rst $20                                       ; $69a8: $e7
    add b                                         ; $69a9: $80
    db $dd                                        ; $69aa: $dd
    cp $e0                                        ; $69ab: $fe $e0
    rst $20                                       ; $69ad: $e7
    sbc d                                         ; $69ae: $9a
    or $e0                                        ; $69af: $f6 $e0
    rst $08                                       ; $69b1: $cf
    xor $e0                                       ; $69b2: $ee $e0
    sbc [hl]                                      ; $69b4: $9e
    add b                                         ; $69b5: $80
    cp b                                          ; $69b6: $b8
    add b                                         ; $69b7: $80
    jr c, jr_036_695b                             ; $69b8: $38 $a1

    add b                                         ; $69ba: $80

jr_036_69bb:
    jr nz, @+$7a                                  ; $69bb: $20 $78

    and b                                         ; $69bd: $a0
    sbc d                                         ; $69be: $9a

jr_036_69bf:
    push hl                                       ; $69bf: $e5
    add b                                         ; $69c0: $80
    ld b, h                                       ; $69c1: $44
    sbc b                                         ; $69c2: $98
    push bc                                       ; $69c3: $c5
    or b                                          ; $69c4: $b0
    db $eb                                        ; $69c5: $eb
    ld hl, sp-$78                                 ; $69c6: $f8 $88
    add $80                                       ; $69c8: $c6 $80
    ld b, c                                       ; $69ca: $41
    ccf                                           ; $69cb: $3f
    ld a, c                                       ; $69cc: $79
    nop                                           ; $69cd: $00
    ld h, c                                       ; $69ce: $61
    nop                                           ; $69cf: $00
    ld b, c                                       ; $69d0: $41
    nop                                           ; $69d1: $00
    ld c, b                                       ; $69d2: $48
    add h                                         ; $69d3: $84
    ld c, b                                       ; $69d4: $48
    ld b, h                                       ; $69d5: $44
    nop                                           ; $69d6: $00
    rst $38                                       ; $69d7: $ff
    db $ed                                        ; $69d8: $ed
    nop                                           ; $69d9: $00
    nop                                           ; $69da: $00
    nop                                           ; $69db: $00
    nop                                           ; $69dc: $00
    nop                                           ; $69dd: $00
    nop                                           ; $69de: $00
    nop                                           ; $69df: $00

    db $fb, $ff, $00, $fe, $e8, $70, $cf, $78, $cc, $00, $f7, $88, $00, $98, $fe, $e0
    db $bc, $00, $df, $00, $ff, $e0, $00, $ff, $3f, $33, $00, $11, $00, $fd, $19, $fe
    db $e0, $3d, $00, $fb, $00, $07, $00, $bb, $b7, $81, $d0, $ea, $00, $ff, $c0, $c0
    db $e6, $38, $bf, $e7, $3c, $f3, $3e, $c1, $7f, $c0, $e8, $1f, $ef, $e2, $7f, $80
    db $ff, $c0, $e8, $c0, $37, $f3, $fb, $0c, $ff, $90, $e8, $e0, $3f, $e0, $7f, $e0
    db $fe, $80, $e4, $1c, $f3, $1e, $f9, $1f, $e0, $3f, $7b, $f0, $1f, $80, $e8, $0f
    db $f1, $bf, $c0, $c0, $e9, $ef, $e0, $1f, $f9, $06, $c0, $e7, $70, $9f, $f0, $ef
    db $3f, $f0, $0f, $f8, $60, $e8, $f0, $8f, $fc, $fd, $03, $a0, $e9, $38, $cf, $f8
    db $1f, $f8, $e7, $ff, $7c, $83, $ff, $c2, $7f, $e2, $7f, $85, $ff, $ff, $fd, $ff
    db $1d, $07, $1f, $06, $c4, $5e, $0f, $e0, $77, $ff, $ff, $88, $08, $e0, $63, $04
    db $e1, $ff, $76, $e7, $18, $ff, $90, $ff, $c8, $7f, $ff, $e8, $3f, $e4, $3f, $f7
    db $1f, $f7, $1c, $ff, $7f, $c0, $fc, $c0, $33, $e0, $6f, $c0, $ff, $cc, $c0, $28
    db $e0, $f8, $e0, $98, $00, $ff, $e1, $3f, $31, $3f, $c2, $7f, $fe, $7f, $ff, $32
    db $03, $13, $03, $1f, $07, $1f, $04, $ff, $3b, $ff, $7f, $c4, $ff, $80, $ff, $b1
    db $fc, $fc, $e0, $c6, $c1, $c1, $c8, $ff, $e4, $3f, $f4, $ff, $1f, $f2, $9f, $fb
    db $0f, $fb, $0e, $fb, $ff, $cf, $ff, $a4, $1f, $f0, $3c, $e0, $73, $df, $e0, $1f
    db $f0, $fc, $f0, $b8, $c2, $80, $f8, $ff, $1f, $20, $3f, $ff, $3f, $f7, $01, $33
    db $ff, $01, $11, $01, $1b, $03, $1b, $02, $9d, $ff, $ff, $bf, $e2, $7f, $c0, $7f
    db $d8, $7f, $fd, $c0, $ba, $e0, $b0, $ff, $e8, $e4, $ff, $f2, $7f, $1f, $fa, $0f
    db $f9, $cf, $fd, $07, $fe, $e0, $f7, $67, $ff, $d2, $c0, $e0, $f0, $0b, $f8, $ff
    db $fd, $f8, $78, $c2, $80, $d8, $40, $f8, $0f, $3c, $df, $0f, $d0, $1f, $ff, $1f
    db $78, $c2, $01, $19, $ff, $01, $4e, $ff, $5f, $f1, $bf, $e0, $bf, $f7, $ec, $bf
    db $e0, $84, $c0, $d8, $ff, $74, $f2, $ff, $ff, $f9, $0f, $fd, $07, $fc, $67, $fe
    db $fd, $03, $fe, $e0, $33, $ff, $69, $07, $fc, $0c, $ff, $f8, $1b, $f8, $87, $fc
    db $fc, $fc, $88, $ff, $80, $d8, $c0, $f8, $20, $3f, $0e, $ff, $ff, $0b, $0f, $0d
    db $bf, $0a, $b6, $07, $ef, $f7, $02, $1f, $01, $4e, $e1, $ff, $a3, $ff, $61, $ff
    db $ff, $61, $7f, $90, $ff, $02, $ff, $1c, $ff, $ff, $80, $f7, $9e, $ff, $49, $ff
    db $c5, $bf, $ff, $89, $3f, $ca, $ff, $0c, $f0, $e0, $33, $ba, $08, $c3, $ed, $fe
    db $e0, $f7, $00, $f8, $e4, $a0, $3f, $ff, $06, $ff, $05, $07, $03, $b7, $01, $b7
    db $cf, $00, $ef, $00, $1f, $dc, $a2, $ec, $e0, $d0, $ff, $ff, $01, $ff, $9f, $fb
    db $4e, $ff, $24, $ff, $ff, $79, $ff, $e2, $ff, $c4, $9f, $65, $ff, $ff, $06, $ff
    db $08, $ff, $18, $ff, $6c, $ff, $df, $d2, $bc, $80, $df, $80, $c0, $ea, $03, $fb
    db $f3, $02, $07, $c2, $e0, $c0, $e6, $58, $ff, $98, $9f, $fd, $e8, $be, $c0, $4f
    db $fd, $27, $ff, $12, $ff, $ff, $3c, $ff, $71, $ff, $62, $cf, $32, $ff, $f7, $83
    db $ff, $84, $80, $e0, $36, $ff, $e9, $fc, $df, $40, $df, $40, $e0, $80, $80, $e7
    db $ff, $ac, $ff, $ff, $4c, $cf, $f4, $ff, $40, $ff, $27, $ff, $fe, $13, $ff, $09
    db $ff, $1e, $ff, $38, $ff, $ff, $31, $e7, $19, $ff, $41, $ff, $c2, $ff, $ff, $86
    db $ff, $1b, $ff, $74, $fc, $a0, $1f, $ff, $20, $e0, $40, $ed, $ce, $e0, $50, $e2
    db $6a, $c3, $f5, $01, $fe, $e2, $02, $1e, $e0, $04, $ff, $e0, $ff, $7f, $bf, $ff
    db $55, $ff, $5a, $ff, $4c, $54, $a0, $5f, $40, $ff, $60, $ff, $d0, $11, $c0, $10
    db $52, $e0, $5d, $07, $00, $e0, $01, $ff, $03, $34, $c0, $40, $a2, $e0, $c7, $c0
    db $ff, $20, $ea, $e0, $e8, $e1, $20, $ab, $00, $ff, $7f, $6e, $ff, $aa, $ff, $93
    db $ff, $8c, $0c, $c0, $be, $fe, $e1, $c0, $ff, $51, $ff, $91, $d6, $e2, $09, $4b
    db $ff, $0e, $be, $c0, $06, $c0, $82, $e4, $e1, $40, $be, $e0, $95, $20, $a0, $e0
    db $37, $92, $e0, $49, $64, $e0, $d0, $e5, $28, $bb, $ff, $48, $92, $a0, $08, $ff
    db $05, $8e, $e2, $06, $e6, $d4, $e4, $40, $ff, $48, $e0, $d0, $e2, $2b, $ff, $4a
    db $ef, $ff, $44, $ff, $43, $a0, $e4, $80, $ff, $94, $2f, $ff, $a4, $ff, $c4, $48
    db $e0, $02, $64, $e0, $40, $e1, $f4, $62, $e1, $a6, $e1, $e0, $ce, $e2, $40, $ff
    db $18, $3f, $d5, $22, $b0, $a0, $00, $68, $85, $ff, $bd, $80, $c2, $7f, $ef, $c1
    db $7f, $81, $ff, $ff, $e0, $11, $ff, $1f, $cd, $fd, $65, $c0, $c1, $ff, $59, $81
    db $ef, $e0, $82, $ff, $ff, $fe, $ff, $84, $fe, $42, $ff, $21, $ff, $9f, $2e, $dc
    db $98, $88, $80, $28, $81, $2e, $c0, $00, $a1, $cf, $24, $c0, $70, $a1, $c0, $e2
    db $33, $a0, $81, $b5, $c0, $02, $7e, $c0, $e1, $43, $ff, $7f, $ff, $fe, $03, $c1
    db $c4, $fe, $af, $e0, $08, $ff, $f8, $ff, $40, $fc, $80, $69, $f3, $04, $c0, $e8
    db $65, $bf, $d0, $eb, $7d, $fb, $d0, $e0, $9c, $85, $a1, $d0, $e6, $80, $fc, $00
    db $d0, $e9, $a0, $e1, $83, $0e, $d0, $e8, $ff, $fc, $07, $d0, $e1, $a0, $e6, $a8
    db $64, $e0, $a5, $fe, $8c, $e1, $1f, $f3, $1f, $e2, $3f, $e2, $3f, $af, $e3, $3f
    db $fe, $1f, $2b, $e0, $84, $ce, $e0, $fc, $54, $23, $a1, $66, $e0, $fe, $1b, $e0
    db $31, $e0, $ec, $08, $e0, $ec, $41, $21, $c0, $ec, $1f, $e1, $fe, $e9, $7e, $69
    db $04, $61, $ff, $50, $ec, $7c, $d2, $e6, $08, $e0, $80, $ef, $80, $cc, $80, $c8
    db $c0, $f4, $fe, $e0, $28, $a2, $80, $98, $a0, $80, $f7, $80, $f8, $be, $ae, $e8
    db $33, $01, $13, $01, $1b, $fe, $e0, $3f, $07, $01, $fb, $01, $18, $a0, $9e, $81
    db $ae, $44, $98, $c4, $c0, $4b, $d0, $f8, $87, $88, $46, $d0, $cb, $e0, $6a, $80
    db $50, $a0, $b8, $ff, $01, $80, $d0, $89, $00, $00

    nop                                           ; $6dda: $00
    nop                                           ; $6ddb: $00
    nop                                           ; $6ddc: $00
    nop                                           ; $6ddd: $00
    nop                                           ; $6dde: $00
    nop                                           ; $6ddf: $00
    ei                                            ; $6de0: $fb
    rst $38                                       ; $6de1: $ff
    nop                                           ; $6de2: $00
    cp $eb                                        ; $6de3: $fe $eb
    push hl                                       ; $6de5: $e5
    nop                                           ; $6de6: $00
    call z, $ac00                                 ; $6de7: $cc $00 $ac
    rst $38                                       ; $6dea: $ff
    nop                                           ; $6deb: $00
    cp b                                          ; $6dec: $b8
    nop                                           ; $6ded: $00
    add e                                         ; $6dee: $83
    nop                                           ; $6def: $00
    add a                                         ; $6df0: $87
    nop                                           ; $6df1: $00
    rst $00                                       ; $6df2: $c7
    rst $38                                       ; $6df3: $ff
    nop                                           ; $6df4: $00
    rst $28                                       ; $6df5: $ef
    ld c, $f3                                     ; $6df6: $0e $f3
    nop                                           ; $6df8: $00
    ld b, $00                                     ; $6df9: $06 $00
    inc b                                         ; $6dfb: $04
    rst $38                                       ; $6dfc: $ff
    nop                                           ; $6dfd: $00
    ld h, h                                       ; $6dfe: $64
    nop                                           ; $6dff: $00
    ld [hl], h                                    ; $6e00: $74
    nop                                           ; $6e01: $00
    db $f4                                        ; $6e02: $f4
    nop                                           ; $6e03: $00
    db $e4                                        ; $6e04: $e4
    or a                                          ; $6e05: $b7
    nop                                           ; $6e06: $00
    ldh [$e0], a                                  ; $6e07: $e0 $e0
    ldh [$eb], a                                  ; $6e09: $e0 $eb
    db $e3                                        ; $6e0b: $e3
    nop                                           ; $6e0c: $00
    ldh [$eb], a                                  ; $6e0d: $e0 $eb
    nop                                           ; $6e0f: $00
    rst $38                                       ; $6e10: $ff
    nop                                           ; $6e11: $00
    rst $38                                       ; $6e12: $ff
    ld c, $f1                                     ; $6e13: $0e $f1
    rra                                           ; $6e15: $1f
    ldh [$3f], a                                  ; $6e16: $e0 $3f
    db $10                                        ; $6e18: $10
    cp $fc                                        ; $6e19: $fe $fc
    ldh [$39], a                                  ; $6e1b: $e0 $39
    ccf                                           ; $6e1d: $3f
    ld de, $771f                                  ; $6e1e: $11 $1f $77
    rra                                           ; $6e21: $1f
    pop af                                        ; $6e22: $f1
    rst $38                                       ; $6e23: $ff
    ccf                                           ; $6e24: $3f
    ret nz                                        ; $6e25: $c0

    rst $38                                       ; $6e26: $ff
    add b                                         ; $6e27: $80
    rst $38                                       ; $6e28: $ff
    sbc [hl]                                      ; $6e29: $9e
    rst $38                                       ; $6e2a: $ff
    cp a                                          ; $6e2b: $bf
    rst $38                                       ; $6e2c: $ff
    pop hl                                        ; $6e2d: $e1
    ccf                                           ; $6e2e: $3f
    ldh [$7f], a                                  ; $6e2f: $e0 $7f
    call nz, $d87f                                ; $6e31: $c4 $7f $d8
    inc e                                         ; $6e34: $1c
    rst $38                                       ; $6e35: $ff
    ld hl, sp+$07                                 ; $6e36: $f8 $07
    rst $38                                       ; $6e38: $ff
    ld [bc], a                                    ; $6e39: $02
    rst $38                                       ; $6e3a: $ff
    ld a, [c]                                     ; $6e3b: $f2
    rst $38                                       ; $6e3c: $ff
    ld a, [$0fff]                                 ; $6e3d: $fa $ff $0f
    ld sp, hl                                     ; $6e40: $f9
    rrca                                          ; $6e41: $0f
    db $fd                                        ; $6e42: $fd
    ld b, a                                       ; $6e43: $47
    db $fd                                        ; $6e44: $fd
    scf                                           ; $6e45: $37
    rst $38                                       ; $6e46: $ff
    rst $38                                       ; $6e47: $ff
    ldh [$1f], a                                  ; $6e48: $e0 $1f
    ldh a, [rIF]                                  ; $6e4a: $f0 $0f
    ld hl, sp+$18                                 ; $6e4c: $f8 $18
    ldh a, [$0d]                                  ; $6e4e: $f0 $0d
    ld a, a                                       ; $6e50: $7f
    ld hl, sp+$3c                                 ; $6e51: $f8 $3c
    ld hl, sp+$1c                                 ; $6e53: $f8 $1c
    ldh a, [$d8]                                  ; $6e55: $f0 $d8
    ldh a, [rSVBK]                                ; $6e57: $f0 $70
    db $e3                                        ; $6e59: $e3
    db $fd                                        ; $6e5a: $fd
    inc b                                         ; $6e5b: $04
    cp b                                          ; $6e5c: $b8
    ldh [rNR11], a                                ; $6e5d: $e0 $11
    rra                                           ; $6e5f: $1f
    jr nz, jr_036_6ea1                            ; $6e60: $20 $3f

    ld [hl], b                                    ; $6e62: $70
    rra                                           ; $6e63: $1f
    cp l                                          ; $6e64: $bd
    ld hl, sp+$60                                 ; $6e65: $f8 $60
    db $e3                                        ; $6e67: $e3
    ld c, $f1                                     ; $6e68: $0e $f1
    ccf                                           ; $6e6a: $3f
    pop bc                                        ; $6e6b: $c1
    cp b                                          ; $6e6c: $b8
    ldh [$80], a                                  ; $6e6d: $e0 $80
    reti                                          ; $6e6f: $d9


    rst $38                                       ; $6e70: $ff
    and $e0                                       ; $6e71: $e6 $e0
    ld c, [hl]                                    ; $6e73: $4e
    pop hl                                        ; $6e74: $e1
    ldh [$1f], a                                  ; $6e75: $e0 $1f
    cp b                                          ; $6e77: $b8
    ld [c], a                                     ; $6e78: $e2
    ld [bc], a                                    ; $6e79: $02
    rst $38                                       ; $6e7a: $ff
    cp $40                                        ; $6e7b: $fe $40
    db $e3                                        ; $6e7d: $e3
    ld hl, sp+$00                                 ; $6e7e: $f8 $00
    push hl                                       ; $6e80: $e5
    ldh [rNR32], a                                ; $6e81: $e0 $1c
    ldh a, [$0c]                                  ; $6e83: $f0 $0c
    db $fc                                        ; $6e85: $fc
    cp b                                          ; $6e86: $b8
    ldh [$30], a                                  ; $6e87: $e0 $30
    db $e3                                        ; $6e89: $e3
    inc e                                         ; $6e8a: $1c
    inc e                                         ; $6e8b: $1c
    di                                            ; $6e8c: $f3
    ccf                                           ; $6e8d: $3f
    ld b, c                                       ; $6e8e: $41
    ld a, a                                       ; $6e8f: $7f
    rst $28                                       ; $6e90: $ef
    ld h, d                                       ; $6e91: $62
    ld a, a                                       ; $6e92: $7f
    ld b, h                                       ; $6e93: $44
    ld a, a                                       ; $6e94: $7f
    ret nz                                        ; $6e95: $c0

    db $e4                                        ; $6e96: $e4
    dec sp                                        ; $6e97: $3b

jr_036_6e98:
    call nz, $f5ff                                ; $6e98: $c4 $ff $f5
    ld [$e0fe], sp                                ; $6e9b: $08 $fe $e0
    nop                                           ; $6e9e: $00
    ret nz                                        ; $6e9f: $c0

    push hl                                       ; $6ea0: $e5

jr_036_6ea1:
    add b                                         ; $6ea1: $80
    ld a, a                                       ; $6ea2: $7f
    db $e3                                        ; $6ea3: $e3
    inc e                                         ; $6ea4: $1c
    ld a, [$e0ee]                                 ; $6ea5: $fa $ee $e0
    db $10                                        ; $6ea8: $10
    ret nz                                        ; $6ea9: $c0

    rst $20                                       ; $6eaa: $e7
    ret nz                                        ; $6eab: $c0

    inc a                                         ; $6eac: $3c
    ldh a, [rNR32]                                ; $6ead: $f0 $1c
    ldh a, [$fb]                                  ; $6eaf: $f0 $fb
    ld a, b                                       ; $6eb1: $78
    ldh [$80], a                                  ; $6eb2: $e0 $80
    push hl                                       ; $6eb4: $e5
    rst $30                                       ; $6eb5: $f7
    rlca                                          ; $6eb6: $07
    jr @+$21                                      ; $6eb7: $18 $1f

    db $10                                        ; $6eb9: $10
    rst $30                                       ; $6eba: $f7
    rra                                           ; $6ebb: $1f
    ld l, h                                       ; $6ebc: $6c
    rrca                                          ; $6ebd: $0f
    add b                                         ; $6ebe: $80
    db $e4                                        ; $6ebf: $e4
    inc bc                                        ; $6ec0: $03
    db $fc                                        ; $6ec1: $fc
    adc a                                         ; $6ec2: $8f
    ld [hl], b                                    ; $6ec3: $70
    di                                            ; $6ec4: $f3
    rst $38                                       ; $6ec5: $ff
    jr nz, jr_036_6e98                            ; $6ec6: $20 $d0

    ldh [$80], a                                  ; $6ec8: $e0 $80
    db $e4                                        ; $6eca: $e4
    cp b                                          ; $6ecb: $b8
    ld b, a                                       ; $6ecc: $47
    rst $38                                       ; $6ecd: $ff
    ld hl, $f0fa                                  ; $6ece: $21 $fa $f0
    ldh [rP1], a                                  ; $6ed1: $e0 $00
    add b                                         ; $6ed3: $80
    push hl                                       ; $6ed4: $e5
    ld [hl], b                                    ; $6ed5: $70
    sbc l                                         ; $6ed6: $9d
    ld hl, sp+$04                                 ; $6ed7: $f8 $04
    db $fc                                        ; $6ed9: $fc
    rst $38                                       ; $6eda: $ff
    adc h                                         ; $6edb: $8c
    db $fc                                        ; $6edc: $fc
    ld b, h                                       ; $6edd: $44
    db $fc                                        ; $6ede: $fc
    ld a, a                                       ; $6edf: $7f
    dec c                                         ; $6ee0: $0d
    rst $30                                       ; $6ee1: $f7
    inc b                                         ; $6ee2: $04
    rst $38                                       ; $6ee3: $ff
    rst $20                                       ; $6ee4: $e7
    dec b                                         ; $6ee5: $05
    inc bc                                        ; $6ee6: $03
    inc bc                                        ; $6ee7: $03
    rlca                                          ; $6ee8: $07
    ld [bc], a                                    ; $6ee9: $02
    rst $38                                       ; $6eea: $ff
    inc b                                         ; $6eeb: $04
    or $8d                                        ; $6eec: $f6 $8d
    ldh [$09], a                                  ; $6eee: $e0 $09
    ld a, a                                       ; $6ef0: $7f
    ld bc, $70e1                                  ; $6ef1: $01 $e1 $70
    rst $38                                       ; $6ef4: $ff
    adc h                                         ; $6ef5: $8c
    rst $38                                       ; $6ef6: $ff
    rst $38                                       ; $6ef7: $ff
    jr c, @+$01                                   ; $6ef8: $38 $ff

    ld d, c                                       ; $6efa: $51
    rst $38                                       ; $6efb: $ff
    ld h, b                                       ; $6efc: $60
    rst $38                                       ; $6efd: $ff
    and b                                         ; $6efe: $a0
    db $fd                                        ; $6eff: $fd
    xor $01                                       ; $6f00: $ee $01
    pop hl                                        ; $6f02: $e1
    dec e                                         ; $6f03: $1d
    rst $38                                       ; $6f04: $ff
    ld h, e                                       ; $6f05: $63
    ldh a, [$e0]                                  ; $6f06: $f0 $e0
    inc d                                         ; $6f08: $14
    rst $38                                       ; $6f09: $ff
    inc c                                         ; $6f0a: $0c
    rst $38                                       ; $6f0b: $ff
    rst $38                                       ; $6f0c: $ff
    dec bc                                        ; $6f0d: $0b
    db $e3                                        ; $6f0e: $e3
    ld h, b                                       ; $6f0f: $60
    rst $00                                       ; $6f10: $c7
    ld b, b                                       ; $6f11: $40
    rst $00                                       ; $6f12: $c7
    ld b, b                                       ; $6f13: $40
    cp a                                          ; $6f14: $bf
    db $e3                                        ; $6f15: $e3
    add b                                         ; $6f16: $80
    ld hl, sp-$80                                 ; $6f17: $f8 $80
    rst $38                                       ; $6f19: $ff
    ld b, b                                       ; $6f1a: $40
    sbc a                                         ; $6f1b: $9f
    ldh [rNR41], a                                ; $6f1c: $e0 $20
    rst $38                                       ; $6f1e: $ff
    ld h, b                                       ; $6f1f: $60
    ccf                                           ; $6f20: $3f
    ld sp, hl                                     ; $6f21: $f9
    ccf                                           ; $6f22: $3f
    pop af                                        ; $6f23: $f1
    rra                                           ; $6f24: $1f
    rla                                           ; $6f25: $17
    rra                                           ; $6f26: $1f
    ei                                            ; $6f27: $fb
    rrca                                          ; $6f28: $0f
    dec c                                         ; $6f29: $0d
    ret nz                                        ; $6f2a: $c0

    ldh [rTIMA], a                                ; $6f2b: $e0 $05
    rst $38                                       ; $6f2d: $ff
    inc bc                                        ; $6f2e: $03
    add b                                         ; $6f2f: $80
    rst $38                                       ; $6f30: $ff
    rst $08                                       ; $6f31: $cf
    ld e, $ff                                     ; $6f32: $1e $ff
    ccf                                           ; $6f34: $3f
    pop hl                                        ; $6f35: $e1
    add $c1                                       ; $6f36: $c6 $c1
    cp b                                          ; $6f38: $b8
    db $e3                                        ; $6f39: $e3
    ld [bc], a                                    ; $6f3a: $02
    rst $38                                       ; $6f3b: $ff
    di                                            ; $6f3c: $f3
    pop af                                        ; $6f3d: $f1
    rst $38                                       ; $6f3e: $ff
    add $c4                                       ; $6f3f: $c6 $c4
    cp b                                          ; $6f41: $b8
    ld [c], a                                     ; $6f42: $e2
    dec bc                                        ; $6f43: $0b
    ld hl, sp+$3f                                 ; $6f44: $f8 $3f
    ld hl, sp-$41                                 ; $6f46: $f8 $bf
    rla                                           ; $6f48: $17
    ldh a, [$d3]                                  ; $6f49: $f0 $d3
    ldh a, [$f8]                                  ; $6f4b: $f0 $f8
    ld h, b                                       ; $6f4d: $60
    ret nz                                        ; $6f4e: $c0

    ldh [rLCDC], a                                ; $6f4f: $e0 $40
    rst $38                                       ; $6f51: $ff
    rst $38                                       ; $6f52: $ff
    add b                                         ; $6f53: $80
    ld h, h                                       ; $6f54: $64
    ccf                                           ; $6f55: $3f
    db $f4                                        ; $6f56: $f4
    ccf                                           ; $6f57: $3f
    push hl                                       ; $6f58: $e5
    ccf                                           ; $6f59: $3f
    rst $38                                       ; $6f5a: $ff
    ccf                                           ; $6f5b: $3f
    ccf                                           ; $6f5c: $3f
    rra                                           ; $6f5d: $1f
    ld d, $ff                                     ; $6f5e: $16 $ff
    ld [de], a                                    ; $6f60: $12
    rst $38                                       ; $6f61: $ff
    rla                                           ; $6f62: $17
    cp a                                          ; $6f63: $bf
    rst $38                                       ; $6f64: $ff
    inc c                                         ; $6f65: $0c
    nop                                           ; $6f66: $00
    rst $38                                       ; $6f67: $ff
    rst $30                                       ; $6f68: $f7
    rst $38                                       ; $6f69: $ff
    dec b                                         ; $6f6a: $05
    ldh [rNR43], a                                ; $6f6b: $e0 $22
    ei                                            ; $6f6d: $fb
    rst $38                                       ; $6f6e: $ff
    pop bc                                        ; $6f6f: $c1
    ld d, $c0                                     ; $6f70: $16 $c0
    add c                                         ; $6f72: $81
    rst $38                                       ; $6f73: $ff
    ld h, e                                       ; $6f74: $63
    db $10                                        ; $6f75: $10
    rst $38                                       ; $6f76: $ff
    rst $38                                       ; $6f77: $ff
    ret z                                         ; $6f78: $c8

    rst $38                                       ; $6f79: $ff
    add sp, $3f                                   ; $6f7a: $e8 $3f
    rst $30                                       ; $6f7c: $f7
    rra                                           ; $6f7d: $1f
    rst $30                                       ; $6f7e: $f7
    sbc l                                         ; $6f7f: $9d
    rst $38                                       ; $6f80: $ff
    rst $38                                       ; $6f81: $ff
    add hl, bc                                    ; $6f82: $09
    rst $38                                       ; $6f83: $ff
    push af                                       ; $6f84: $f5
    cp $0e                                        ; $6f85: $fe $0e
    inc de                                        ; $6f87: $13
    ldh a, [rIE]                                  ; $6f88: $f0 $ff
    ld [hl], a                                    ; $6f8a: $77
    ldh a, [$27]                                  ; $6f8b: $f0 $27
    ldh [rNR44], a                                ; $6f8d: $e0 $23
    ldh [$f8], a                                  ; $6f8f: $e0 $f8
    ret nz                                        ; $6f91: $c0

    cp $f6                                        ; $6f92: $fe $f6
    and e                                         ; $6f94: $a3
    ld [hl], b                                    ; $6f95: $70
    rra                                           ; $6f96: $1f
    db $fc                                        ; $6f97: $fc
    rra                                           ; $6f98: $1f
    add sp, $0f                                   ; $6f99: $e8 $0f
    add hl, bc                                    ; $6f9b: $09
    rst $18                                       ; $6f9c: $df
    rrca                                          ; $6f9d: $0f
    rlca                                          ; $6f9e: $07
    rlca                                          ; $6f9f: $07
    rst $38                                       ; $6fa0: $ff
    ld bc, $e0fe                                  ; $6fa1: $01 $fe $e0
    nop                                           ; $6fa4: $00
    db $10                                        ; $6fa5: $10
    rst $38                                       ; $6fa6: $ff
    rst $38                                       ; $6fa7: $ff
    daa                                           ; $6fa8: $27
    rst $38                                       ; $6fa9: $ff
    cpl                                           ; $6faa: $2f
    ld hl, sp-$21                                 ; $6fab: $f8 $df
    ldh a, [$df]                                  ; $6fad: $f0 $df
    db $fd                                        ; $6faf: $fd
    ld [hl], e                                    ; $6fb0: $73
    ld bc, $5fe0                                  ; $6fb1: $01 $e0 $5f
    rst $38                                       ; $6fb4: $ff
    pop hl                                        ; $6fb5: $e1
    nop                                           ; $6fb6: $00
    rst $38                                       ; $6fb7: $ff
    sbc $dd                                       ; $6fb8: $de $dd
    rst $38                                       ; $6fba: $ff
    dec b                                         ; $6fbb: $05
    ldh [$88], a                                  ; $6fbc: $e0 $88
    rst $38                                       ; $6fbe: $ff
    ld b, $ea                                     ; $6fbf: $06 $ea
    pop bc                                        ; $6fc1: $c1
    rst $38                                       ; $6fc2: $ff
    adc h                                         ; $6fc3: $8c
    rst $38                                       ; $6fc4: $ff
    ld c, e                                       ; $6fc5: $4b
    ld hl, sp+$5f                                 ; $6fc6: $f8 $5f
    ld hl, sp+$4f                                 ; $6fc8: $f8 $4f
    ld hl, sp-$05                                 ; $6fca: $f8 $fb
    ld hl, sp-$41                                 ; $6fcc: $f8 $bf
    ld hl, sp-$30                                 ; $6fce: $f8 $d0
    rst $38                                       ; $6fd0: $ff
    sub b                                         ; $6fd1: $90
    rst $38                                       ; $6fd2: $ff
    ret nc                                        ; $6fd3: $d0

    ld e, $e0                                     ; $6fd4: $1e $e0
    ld de, $feba                                  ; $6fd6: $11 $ba $fe
    ldh [rNR43], a                                ; $6fd9: $e0 $22
    db $e3                                        ; $6fdb: $e3
    ret nz                                        ; $6fdc: $c0

    ld hl, $1fff                                  ; $6fdd: $21 $ff $1f
    and h                                         ; $6fe0: $a4
    and d                                         ; $6fe1: $a2
    pop af                                        ; $6fe2: $f1
    rst $38                                       ; $6fe3: $ff
    rst $38                                       ; $6fe4: $ff
    inc a                                         ; $6fe5: $3c
    rst $38                                       ; $6fe6: $ff
    dec hl                                        ; $6fe7: $2b
    rst $38                                       ; $6fe8: $ff
    ld a, [hl+]                                   ; $6fe9: $2a
    rst $38                                       ; $6fea: $ff
    ld b, h                                       ; $6feb: $44
    ei                                            ; $6fec: $fb
    rst $38                                       ; $6fed: $ff
    ld b, e                                       ; $6fee: $43
    ccf                                           ; $6fef: $3f
    jp nz, $ff1f                                  ; $6ff0: $c2 $1f $ff

    ld a, c                                       ; $6ff3: $79
    rst $38                                       ; $6ff4: $ff
    xor b                                         ; $6ff5: $a8
    rst $38                                       ; $6ff6: $ff
    rst $38                                       ; $6ff7: $ff
    xor c                                         ; $6ff8: $a9
    rst $38                                       ; $6ff9: $ff
    ld b, l                                       ; $6ffa: $45
    rst $38                                       ; $6ffb: $ff
    add l                                         ; $6ffc: $85
    cp $02                                        ; $6ffd: $fe $02
    dec bc                                        ; $6fff: $0b
    cp $02                                        ; $7000: $fe $02
    call z, Call_000_10e0                         ; $7002: $cc $e0 $10
    or d                                          ; $7005: $b2
    ldh [$63], a                                  ; $7006: $e0 $63
    pop bc                                        ; $7008: $c1
    inc b                                         ; $7009: $04
    jp $c4c8                                      ; $700a: $c3 $c8 $c4


    ld d, d                                       ; $700d: $52
    cp b                                          ; $700e: $b8
    ld [c], a                                     ; $700f: $e2
    inc hl                                        ; $7010: $23
    sbc e                                         ; $7011: $9b
    ret nz                                        ; $7012: $c0

    ret z                                         ; $7013: $c8

    jp $c0e1                                      ; $7014: $c3 $e1 $c0


    ret nz                                        ; $7017: $c0

    cpl                                           ; $7018: $2f
    cp d                                          ; $7019: $ba
    ld [c], a                                     ; $701a: $e2
    ld a, $c8                                     ; $701b: $3e $c8
    jp $ff0f                                      ; $701d: $c3 $0f $ff


    dec sp                                        ; $7020: $3b
    rst $38                                       ; $7021: $ff
    jp hl                                         ; $7022: $e9


    cp d                                          ; $7023: $ba
    ld [c], a                                     ; $7024: $e2
    ret z                                         ; $7025: $c8

    call nz, $b8d4                                ; $7026: $c4 $d4 $b8
    and $82                                       ; $7029: $e6 $82
    pop hl                                        ; $702b: $e1
    inc hl                                        ; $702c: $23
    ld c, e                                       ; $702d: $4b
    ldh [rNR50], a                                ; $702e: $e0 $24
    adc [hl]                                      ; $7030: $8e
    ldh [$4e], a                                  ; $7031: $e0 $4e
    rst $38                                       ; $7033: $ff
    push af                                       ; $7034: $f5
    ld b, d                                       ; $7035: $42
    ld [$90e0], sp                                ; $7036: $08 $e0 $90
    ld a, a                                       ; $7039: $7f
    and b                                         ; $703a: $a0
    adc b                                         ; $703b: $88
    rst $38                                       ; $703c: $ff
    ret nz                                        ; $703d: $c0

    rst $38                                       ; $703e: $ff
    ld [hl], a                                    ; $703f: $77
    cp a                                          ; $7040: $bf
    rst $38                                       ; $7041: $ff
    ld d, l                                       ; $7042: $55
    ld c, b                                       ; $7043: $48
    ldh [$c2], a                                  ; $7044: $e0 $c2
    rst $38                                       ; $7046: $ff
    and c                                         ; $7047: $a1
    ld a, b                                       ; $7048: $78
    ret nz                                        ; $7049: $c0

    rst $38                                       ; $704a: $ff
    jr c, @+$01                                   ; $704b: $38 $ff

    rst $28                                       ; $704d: $ef
    rst $38                                       ; $704e: $ff
    xor h                                         ; $704f: $ac
    rst $38                                       ; $7050: $ff
    ld d, a                                       ; $7051: $57
    rst $38                                       ; $7052: $ff
    sub c                                         ; $7053: $91
    adc d                                         ; $7054: $8a
    ld a, [c]                                     ; $7055: $f2
    and e                                         ; $7056: $a3
    cp d                                          ; $7057: $ba
    and $2d                                       ; $7058: $e6 $2d
    pop bc                                        ; $705a: $c1
    ld bc, $a2a7                                  ; $705b: $01 $a7 $a2
    ld a, d                                       ; $705e: $7a
    db $e3                                        ; $705f: $e3
    ld [$ffef], sp                                ; $7060: $08 $ef $ff
    add a                                         ; $7063: $87
    rst $38                                       ; $7064: $ff
    ld a, [bc]                                    ; $7065: $0a
    ld e, b                                       ; $7066: $58
    ret nz                                        ; $7067: $c0

    jr c, @+$01                                   ; $7068: $38 $ff

    ld l, [hl]                                    ; $706a: $6e
    rst $38                                       ; $706b: $ff
    rst $38                                       ; $706c: $ff
    ld l, e                                       ; $706d: $6b
    rst $38                                       ; $706e: $ff
    push de                                       ; $706f: $d5
    rst $38                                       ; $7070: $ff
    and d                                         ; $7071: $a2
    rst $38                                       ; $7072: $ff
    rlca                                          ; $7073: $07
    ld a, [$c0a8]                                 ; $7074: $fa $a8 $c0
    inc bc                                        ; $7077: $03
    ld h, [hl]                                    ; $7078: $66
    ldh [rTMA], a                                 ; $7079: $e0 $06
    rst $38                                       ; $707b: $ff
    ld a, [$54ff]                                 ; $707c: $fa $ff $54
    call nc, $c0a8                                ; $707f: $d4 $a8 $c0
    ld b, d                                       ; $7082: $42
    pop hl                                        ; $7083: $e1
    adc b                                         ; $7084: $88
    xor e                                         ; $7085: $ab
    ret nz                                        ; $7086: $c0

    ld a, b                                       ; $7087: $78
    ld e, $e0                                     ; $7088: $1e $e0
    db $e4                                        ; $708a: $e4
    rst $38                                       ; $708b: $ff
    db $fd                                        ; $708c: $fd
    add h                                         ; $708d: $84
    ld b, b                                       ; $708e: $40
    and l                                         ; $708f: $a5
    di                                            ; $7090: $f3
    nop                                           ; $7091: $00
    rlca                                          ; $7092: $07
    ld bc, $0105                                  ; $7093: $01 $05 $01
    jp hl                                         ; $7096: $e9


    ld h, h                                       ; $7097: $64
    and h                                         ; $7098: $a4
    pop hl                                        ; $7099: $e1
    ld c, b                                       ; $709a: $48
    and d                                         ; $709b: $a2
    add h                                         ; $709c: $84
    ld d, h                                       ; $709d: $54
    and c                                         ; $709e: $a1
    rst $38                                       ; $709f: $ff
    rst $38                                       ; $70a0: $ff
    ld b, d                                       ; $70a1: $42
    halt                                          ; $70a2: $76
    ld c, $e0                                     ; $70a3: $0e $e0
    cp $03                                        ; $70a5: $fe $03
    cp $e0                                        ; $70a7: $fe $e0
    ld b, e                                       ; $70a9: $43
    cp $81                                        ; $70aa: $fe $81
    ldh a, [$e1]                                  ; $70ac: $f0 $e1
    sub b                                         ; $70ae: $90
    ret nc                                        ; $70af: $d0

    db $e4                                        ; $70b0: $e4
    ld b, b                                       ; $70b1: $40
    and b                                         ; $70b2: $a0
    adc b                                         ; $70b3: $88
    add h                                         ; $70b4: $84
    xor c                                         ; $70b5: $a9
    and b                                         ; $70b6: $a0
    ld e, $c0                                     ; $70b7: $1e $c0
    db $e3                                        ; $70b9: $e3
    adc b                                         ; $70ba: $88
    add c                                         ; $70bb: $81
    ld h, l                                       ; $70bc: $65
    cp l                                          ; $70bd: $bd
    ld bc, $c2ca                                  ; $70be: $01 $ca $c2
    ret nz                                        ; $70c1: $c0

    cp a                                          ; $70c2: $bf
    ld hl, sp-$79                                 ; $70c3: $f8 $87
    cp h                                          ; $70c5: $bc
    ld [c], a                                     ; $70c6: $e2
    ld a, $f7                                     ; $70c7: $3e $f7

jr_036_70c9:
    rst $38                                       ; $70c9: $ff
    rst $38                                       ; $70ca: $ff
    add l                                         ; $70cb: $85
    adc d                                         ; $70cc: $8a
    ret nz                                        ; $70cd: $c0

    ld b, $fb                                     ; $70ce: $06 $fb
    ld a, $c3                                     ; $70d0: $3e $c3
    ld [c], a                                     ; $70d2: $e2
    cp h                                          ; $70d3: $bc
    ld [c], a                                     ; $70d4: $e2
    db $fd                                        ; $70d5: $fd
    inc h                                         ; $70d6: $24
    pop bc                                        ; $70d7: $c1
    call z, $c080                                 ; $70d8: $cc $80 $c0
    add sp, $42                                   ; $70db: $e8 $42
    rst $38                                       ; $70dd: $ff
    dec a                                         ; $70de: $3d
    ld l, e                                       ; $70df: $6b
    rst $38                                       ; $70e0: $ff
    ld bc, $e8c0                                  ; $70e1: $01 $c0 $e8
    add a                                         ; $70e4: $87
    jr nz, jr_036_70c9                            ; $70e5: $20 $e2

    ldh [$9f], a                                  ; $70e7: $e0 $9f
    ei                                            ; $70e9: $fb
    jp nz, Jump_036_7cfb                          ; $70ea: $c2 $fb $7c

    rst $38                                       ; $70ed: $ff
    ld [hl-], a                                   ; $70ee: $32
    ldh [rTAC], a                                 ; $70ef: $e0 $07
    rst $38                                       ; $70f1: $ff
    inc c                                         ; $70f2: $0c
    ei                                            ; $70f3: $fb
    ld a, [hl]                                    ; $70f4: $7e
    dec l                                         ; $70f5: $2d
    add e                                         ; $70f6: $83
    ld hl, $81c0                                  ; $70f7: $21 $c0 $81
    rst $38                                       ; $70fa: $ff
    ret nz                                        ; $70fb: $c0

    ldh [rNR41], a                                ; $70fc: $e0 $20
    and $c0                                       ; $70fe: $e6 $c0
    add b                                         ; $7100: $80
    jp hl                                         ; $7101: $e9


    ld c, c                                       ; $7102: $49
    ld [$e01e], sp                                ; $7103: $08 $1e $e0
    ld b, b                                       ; $7106: $40
    pop hl                                        ; $7107: $e1
    ld bc, $e140                                  ; $7108: $01 $40 $e1
    add b                                         ; $710b: $80
    ldh [$a1], a                                  ; $710c: $e0 $a1
    add $c0                                       ; $710e: $c6 $c0
    ld l, a                                       ; $7110: $6f
    ld h, b                                       ; $7111: $60
    cp a                                          ; $7112: $bf
    db $fc                                        ; $7113: $fc
    add e                                         ; $7114: $83
    ld h, l                                       ; $7115: $65
    jp nz, $ff7e                                  ; $7116: $c2 $7e $ff

    ret nz                                        ; $7119: $c0

    ret nz                                        ; $711a: $c0

    db $ed                                        ; $711b: $ed
    ld bc, $c008                                  ; $711c: $01 $08 $c0
    ld c, $f3                                     ; $711f: $0e $f3
    ld a, [hl-]                                   ; $7121: $3a
    ldh [rNR44], a                                ; $7122: $e0 $23
    cp $7d                                        ; $7124: $fe $7d
    ld a, [c]                                     ; $7126: $f2
    ld a, $e1                                     ; $7127: $3e $e1
    ld a, b                                       ; $7129: $78
    ld b, b                                       ; $712a: $40
    jp hl                                         ; $712b: $e9


    ret c                                         ; $712c: $d8

    ld h, c                                       ; $712d: $61
    push hl                                       ; $712e: $e5
    ld bc, $0101                                  ; $712f: $01 $01 $01
    rst $20                                       ; $7132: $e7

jr_036_7133:
    ld b, $03                                     ; $7133: $06 $03
    rst $38                                       ; $7135: $ff
    add hl, de                                    ; $7136: $19
    ldh [$0d], a                                  ; $7137: $e0 $0d
    ldh [$fe], a                                  ; $7139: $e0 $fe
    rst $38                                       ; $713b: $ff
    cp [hl]                                       ; $713c: $be
    sub a                                         ; $713d: $97
    jp $817e                                      ; $713e: $c3 $7e $81


    add l                                         ; $7141: $85
    and b                                         ; $7142: $a0
    rst $38                                       ; $7143: $ff
    xor a                                         ; $7144: $af
    and b                                         ; $7145: $a0
    ldh a, [$e2]                                  ; $7146: $f0 $e2
    ld a, [$8727]                                 ; $7148: $fa $27 $87
    db $fd                                        ; $714b: $fd
    inc bc                                        ; $714c: $03
    ld a, [c]                                     ; $714d: $f2
    jp nz, $80c2                                  ; $714e: $c2 $c2 $80

    rst $38                                       ; $7151: $ff
    cp b                                          ; $7152: $b8
    ld h, l                                       ; $7153: $65
    nop                                           ; $7154: $00
    and b                                         ; $7155: $a0
    xor $21                                       ; $7156: $ee $21
    add c                                         ; $7158: $81
    rst $38                                       ; $7159: $ff
    ld [hl], l                                    ; $715a: $75
    ld bc, $ecc0                                  ; $715b: $01 $c0 $ec
    jp $beff                                      ; $715e: $c3 $ff $be


    ld l, c                                       ; $7161: $69
    rst $38                                       ; $7162: $ff
    ld d, d                                       ; $7163: $52
    ldh [$c0], a                                  ; $7164: $e0 $c0
    and $87                                       ; $7166: $e6 $87
    adc b                                         ; $7168: $88
    ret nz                                        ; $7169: $c0

    db $fd                                        ; $716a: $fd
    add e                                         ; $716b: $83
    ret nz                                        ; $716c: $c0

    and $ab                                       ; $716d: $e6 $ab
    rst $38                                       ; $716f: $ff
    add e                                         ; $7170: $83
    jr z, jr_036_7133                             ; $7171: $28 $c0

    ld a, a                                       ; $7173: $7f
    ldh [$e8], a                                  ; $7174: $e0 $e8
    rlca                                          ; $7176: $07
    ldh [$ec], a                                  ; $7177: $e0 $ec
    pop bc                                        ; $7179: $c1
    ld [bc], a                                    ; $717a: $02
    ldh [$ec], a                                  ; $717b: $e0 $ec
    add e                                         ; $717d: $83
    ret nz                                        ; $717e: $c0

    db $ec                                        ; $717f: $ec
    ld h, c                                       ; $7180: $61
    jp $e7fc                                      ; $7181: $c3 $fc $e7


    xor [hl]                                      ; $7184: $ae
    ld h, h                                       ; $7185: $64
    add sp, $46                                   ; $7186: $e8 $46
    sbc [hl]                                      ; $7188: $9e
    ld h, d                                       ; $7189: $62
    ld c, b                                       ; $718a: $48
    ld h, b                                       ; $718b: $60
    ret z                                         ; $718c: $c8

    adc [hl]                                      ; $718d: $8e
    ld h, d                                       ; $718e: $62
    ld h, b                                       ; $718f: $60
    push bc                                       ; $7190: $c5
    ld h, h                                       ; $7191: $64
    ld hl, sp+$46                                 ; $7192: $f8 $46
    ld e, b                                       ; $7194: $58
    ld h, h                                       ; $7195: $64
    rst $38                                       ; $7196: $ff
    ld hl, sp+$45                                 ; $7197: $f8 $45
    db $fc                                        ; $7199: $fc
    ld e, b                                       ; $719a: $58
    ld h, h                                       ; $719b: $64
    and d                                         ; $719c: $a2
    db $ec                                        ; $719d: $ec
    ld hl, sp-$80                                 ; $719e: $f8 $80
    push hl                                       ; $71a0: $e5
    add b                                         ; $71a1: $80
    call z, $ff80                                 ; $71a2: $cc $80 $ff
    xor h                                         ; $71a5: $ac
    add b                                         ; $71a6: $80
    cp b                                          ; $71a7: $b8
    add b                                         ; $71a8: $80
    add e                                         ; $71a9: $83
    add b                                         ; $71aa: $80
    add a                                         ; $71ab: $87
    add b                                         ; $71ac: $80
    rst $08                                       ; $71ad: $cf
    rst $00                                       ; $71ae: $c7
    add b                                         ; $71af: $80
    db $e3                                        ; $71b0: $e3
    add b                                         ; $71b1: $80
    sbc d                                         ; $71b2: $9a
    add d                                         ; $71b3: $82
    db $fc                                        ; $71b4: $fc
    and $05                                       ; $71b5: $e6 $05
    ld bc, $889e                                  ; $71b7: $01 $9e $88
    push bc                                       ; $71ba: $c5
    ld [hl], l                                    ; $71bb: $75
    ld bc, $01f5                                  ; $71bc: $01 $f5 $01
    cp b                                          ; $71bf: $b8
    pop bc                                        ; $71c0: $c1
    ld h, b                                       ; $71c1: $60
    ld c, e                                       ; $71c2: $4b
    inc b                                         ; $71c3: $04
    nop                                           ; $71c4: $00
    sub b                                         ; $71c5: $90
    db $ed                                        ; $71c6: $ed
    adc b                                         ; $71c7: $88
    ld b, [hl]                                    ; $71c8: $46
    add sp, $44                                   ; $71c9: $e8 $44
    ld [hl-], a                                   ; $71cb: $32
    ld c, h                                       ; $71cc: $4c
    jp c, $50e5                                   ; $71cd: $da $e5 $50

    rst $20                                       ; $71d0: $e7
    rst $38                                       ; $71d1: $ff
    db $ed                                        ; $71d2: $ed
    nop                                           ; $71d3: $00
    nop                                           ; $71d4: $00
    nop                                           ; $71d5: $00
    ld h, $72                                     ; $71d6: $26 $72
    sbc d                                         ; $71d8: $9a
    ld [hl], d                                    ; $71d9: $72
    add hl, de                                    ; $71da: $19
    ld [hl], e                                    ; $71db: $73
    adc l                                         ; $71dc: $8d
    ld [hl], e                                    ; $71dd: $73
    nop                                           ; $71de: $00
    nop                                           ; $71df: $00
    nop                                           ; $71e0: $00
    nop                                           ; $71e1: $00
    nop                                           ; $71e2: $00
    nop                                           ; $71e3: $00
    nop                                           ; $71e4: $00
    nop                                           ; $71e5: $00
    ld c, $74                                     ; $71e6: $0e $74
    ld [hl], b                                    ; $71e8: $70
    ld [hl], h                                    ; $71e9: $74
    jp nc, Jump_000_3374                          ; $71ea: $d2 $74 $33

    ld [hl], l                                    ; $71ed: $75
    nop                                           ; $71ee: $00
    nop                                           ; $71ef: $00
    nop                                           ; $71f0: $00
    nop                                           ; $71f1: $00
    nop                                           ; $71f2: $00
    nop                                           ; $71f3: $00
    nop                                           ; $71f4: $00
    nop                                           ; $71f5: $00
    sbc [hl]                                      ; $71f6: $9e
    ld [hl], l                                    ; $71f7: $75
    ld a, [bc]                                    ; $71f8: $0a
    halt                                          ; $71f9: $76
    halt                                          ; $71fa: $76
    halt                                          ; $71fb: $76
    ld [c], a                                     ; $71fc: $e2
    halt                                          ; $71fd: $76
    nop                                           ; $71fe: $00
    nop                                           ; $71ff: $00
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    nop                                           ; $7202: $00
    nop                                           ; $7203: $00
    nop                                           ; $7204: $00
    nop                                           ; $7205: $00

    db $4e, $77, $b7, $77, $21, $78, $8b, $78, $fc, $78

    nop                                           ; $7210: $00
    nop                                           ; $7211: $00
    nop                                           ; $7212: $00
    nop                                           ; $7213: $00
    nop                                           ; $7214: $00
    nop                                           ; $7215: $00
    ld h, [hl]                                    ; $7216: $66
    ld a, c                                       ; $7217: $79
    push bc                                       ; $7218: $c5
    ld a, c                                       ; $7219: $79
    ld [hl+], a                                   ; $721a: $22
    ld a, d                                       ; $721b: $7a
    ld a, a                                       ; $721c: $7f
    ld a, d                                       ; $721d: $7a
    nop                                           ; $721e: $00
    nop                                           ; $721f: $00
    nop                                           ; $7220: $00
    nop                                           ; $7221: $00
    nop                                           ; $7222: $00
    nop                                           ; $7223: $00
    nop                                           ; $7224: $00
    nop                                           ; $7225: $00
    sbc l                                         ; $7226: $9d
    dec c                                         ; $7227: $0d
    rst $38                                       ; $7228: $ff
    pop hl                                        ; $7229: $e1
    ld c, l                                       ; $722a: $4d
    ld c, l                                       ; $722b: $4d
    ld c, l                                       ; $722c: $4d
    ld hl, sp-$1e                                 ; $722d: $f8 $e2
    ei                                            ; $722f: $fb
    db $e3                                        ; $7230: $e3
    dec l                                         ; $7231: $2d
    ldh [$f6], a                                  ; $7232: $e0 $f6
    ldh a, [$e2]                                  ; $7234: $f0 $e2
    pop af                                        ; $7236: $f1
    adc $e8                                       ; $7237: $ce $e8
    pop bc                                        ; $7239: $c1
    db $e4                                        ; $723a: $e4
    cp b                                          ; $723b: $b8
    ldh [rP1], a                                  ; $723c: $e0 $00
    ld bc, $ff02                                  ; $723e: $01 $02 $ff
    ld [bc], a                                    ; $7241: $02
    ld [bc], a                                    ; $7242: $02
    ld c, $0e                                     ; $7243: $0e $0e
    ld c, $0f                                     ; $7245: $0e $0f
    db $10                                        ; $7247: $10
    inc bc                                        ; $7248: $03
    rst $38                                       ; $7249: $ff
    inc b                                         ; $724a: $04
    dec b                                         ; $724b: $05
    dec b                                         ; $724c: $05
    dec b                                         ; $724d: $05
    ld b, $06                                     ; $724e: $06 $06
    ld b, $11                                     ; $7250: $06 $11
    rst $38                                       ; $7252: $ff
    add hl, bc                                    ; $7253: $09
    inc bc                                        ; $7254: $03
    ld b, $07                                     ; $7255: $06 $07
    jr jr_036_7272                                ; $7257: $18 $19

    ld a, [de]                                    ; $7259: $1a
    dec de                                        ; $725a: $1b
    rst $38                                       ; $725b: $ff
    ld [de], a                                    ; $725c: $12
    dec b                                         ; $725d: $05
    add hl, bc                                    ; $725e: $09
    ld [$0406], sp                                ; $725f: $08 $06 $04
    ld h, $27                                     ; $7262: $26 $27
    rst $38                                       ; $7264: $ff
    jr z, jr_036_7290                             ; $7265: $28 $29

    ld de, $1305                                  ; $7267: $11 $05 $13
    add hl, bc                                    ; $726a: $09
    ld a, [bc]                                    ; $726b: $0a
    ld b, $ff                                     ; $726c: $06 $ff
    ld [hl], $37                                  ; $726e: $36 $37
    jr c, jr_036_72ab                             ; $7270: $38 $39

jr_036_7272:
    dec b                                         ; $7272: $05
    inc d                                         ; $7273: $14
    inc bc                                        ; $7274: $03
    dec bc                                        ; $7275: $0b
    rst $38                                       ; $7276: $ff
    dec b                                         ; $7277: $05
    ld a, [bc]                                    ; $7278: $0a
    ld b, [hl]                                    ; $7279: $46
    ld b, a                                       ; $727a: $47
    ld c, b                                       ; $727b: $48
    ld c, c                                       ; $727c: $49
    inc d                                         ; $727d: $14
    ld b, $ff                                     ; $727e: $06 $ff
    dec d                                         ; $7280: $15
    inc bc                                        ; $7281: $03
    inc c                                         ; $7282: $0c
    dec c                                         ; $7283: $0d
    ld a, [bc]                                    ; $7284: $0a
    ld d, l                                       ; $7285: $55
    ld d, [hl]                                    ; $7286: $56
    ld d, a                                       ; $7287: $57
    rst $38                                       ; $7288: $ff
    ld d, $17                                     ; $7289: $16 $17
    add hl, bc                                    ; $728b: $09
    nop                                           ; $728c: $00
    ld c, $0e                                     ; $728d: $0e $0e
    ld h, d                                       ; $728f: $62

jr_036_7290:
    ld h, e                                       ; $7290: $63
    rra                                           ; $7291: $1f
    ld h, h                                       ; $7292: $64
    ld h, l                                       ; $7293: $65
    ld [bc], a                                    ; $7294: $02
    ld [bc], a                                    ; $7295: $02
    stop                                          ; $7296: $10 $00
    nop                                           ; $7298: $00
    nop                                           ; $7299: $00
    cp a                                          ; $729a: $bf
    dec l                                         ; $729b: $2d
    dec l                                         ; $729c: $2d
    ld l, l                                       ; $729d: $6d
    ld l, l                                       ; $729e: $6d
    ld l, l                                       ; $729f: $6d
    dec l                                         ; $72a0: $2d
    rst $38                                       ; $72a1: $ff
    pop hl                                        ; $72a2: $e1
    dec c                                         ; $72a3: $0d
    inc b                                         ; $72a4: $04
    ld a, [$f6e2]                                 ; $72a5: $fa $e2 $f6
    db $e4                                        ; $72a8: $e4
    dec c                                         ; $72a9: $0d
    rst $38                                       ; $72aa: $ff

jr_036_72ab:
    ldh [$f3], a                                  ; $72ab: $e0 $f3
    db $e4                                        ; $72ad: $e4
    or $e3                                        ; $72ae: $f6 $e3
    db $ec                                        ; $72b0: $ec
    db $f4                                        ; $72b1: $f4
    rst $10                                       ; $72b2: $d7
    pop hl                                        ; $72b3: $e1
    ld hl, sp-$3e                                 ; $72b4: $f8 $c2
    ldh [$bc], a                                  ; $72b6: $e0 $bc
    ldh [$ce], a                                  ; $72b8: $e0 $ce
    db $e3                                        ; $72ba: $e3
    ld l, l                                       ; $72bb: $6d
    db $10                                        ; $72bc: $10
    rrca                                          ; $72bd: $0f
    ld c, $0e                                     ; $72be: $0e $0e
    rst $38                                       ; $72c0: $ff
    ld c, $02                                     ; $72c1: $0e $02
    ld [bc], a                                    ; $72c3: $02
    ld [bc], a                                    ; $72c4: $02
    ld bc, $0900                                  ; $72c5: $01 $00 $09
    ld de, $06ff                                  ; $72c8: $11 $ff $06
    ld b, $06                                     ; $72cb: $06 $06
    dec b                                         ; $72cd: $05
    dec b                                         ; $72ce: $05
    dec b                                         ; $72cf: $05
    inc b                                         ; $72d0: $04
    inc bc                                        ; $72d1: $03
    rst $38                                       ; $72d2: $ff
    add hl, bc                                    ; $72d3: $09
    dec b                                         ; $72d4: $05
    ld [de], a                                    ; $72d5: $12
    inc e                                         ; $72d6: $1c
    dec e                                         ; $72d7: $1d
    ld e, $1f                                     ; $72d8: $1e $1f
    rlca                                          ; $72da: $07
    rst $38                                       ; $72db: $ff
    ld b, $03                                     ; $72dc: $06 $03
    inc de                                        ; $72de: $13
    dec b                                         ; $72df: $05
    ld de, $2b2a                                  ; $72e0: $11 $2a $2b
    inc l                                         ; $72e3: $2c
    rst $38                                       ; $72e4: $ff
    dec l                                         ; $72e5: $2d
    inc b                                         ; $72e6: $04
    ld b, $08                                     ; $72e7: $06 $08
    inc bc                                        ; $72e9: $03
    inc d                                         ; $72ea: $14
    dec b                                         ; $72eb: $05
    ld a, [hl-]                                   ; $72ec: $3a
    rst $38                                       ; $72ed: $ff
    dec sp                                        ; $72ee: $3b
    inc a                                         ; $72ef: $3c
    dec a                                         ; $72f0: $3d
    ld b, $0a                                     ; $72f1: $06 $0a
    add hl, bc                                    ; $72f3: $09
    dec d                                         ; $72f4: $15
    ld b, $ff                                     ; $72f5: $06 $ff
    inc d                                         ; $72f7: $14
    ld c, d                                       ; $72f8: $4a
    ld c, e                                       ; $72f9: $4b
    ld c, h                                       ; $72fa: $4c
    ld c, l                                       ; $72fb: $4d
    ld a, [bc]                                    ; $72fc: $0a
    dec b                                         ; $72fd: $05
    dec bc                                        ; $72fe: $0b
    rst $38                                       ; $72ff: $ff
    add hl, bc                                    ; $7300: $09
    rla                                           ; $7301: $17
    ld d, $14                                     ; $7302: $16 $14
    ld e, b                                       ; $7304: $58
    ld e, c                                       ; $7305: $59
    ld e, d                                       ; $7306: $5a
    dec c                                         ; $7307: $0d
    rst $38                                       ; $7308: $ff
    inc c                                         ; $7309: $0c
    inc bc                                        ; $730a: $03
    db $10                                        ; $730b: $10
    ld [bc], a                                    ; $730c: $02
    ld [bc], a                                    ; $730d: $02
    ld h, [hl]                                    ; $730e: $66
    ld h, a                                       ; $730f: $67
    ld l, b                                       ; $7310: $68
    rrca                                          ; $7311: $0f
    ld l, c                                       ; $7312: $69
    ld c, $0e                                     ; $7313: $0e $0e
    nop                                           ; $7315: $00
    nop                                           ; $7316: $00
    nop                                           ; $7317: $00
    nop                                           ; $7318: $00
    sbc l                                         ; $7319: $9d
    dec c                                         ; $731a: $0d
    rst $38                                       ; $731b: $ff
    pop hl                                        ; $731c: $e1
    ld c, l                                       ; $731d: $4d
    ld c, l                                       ; $731e: $4d
    ld c, l                                       ; $731f: $4d
    ld hl, sp-$1e                                 ; $7320: $f8 $e2
    ei                                            ; $7322: $fb
    db $e3                                        ; $7323: $e3
    dec l                                         ; $7324: $2d
    ldh [$f6], a                                  ; $7325: $e0 $f6
    ldh a, [$e2]                                  ; $7327: $f0 $e2
    pop af                                        ; $7329: $f1
    adc $e8                                       ; $732a: $ce $e8
    pop bc                                        ; $732c: $c1
    db $e4                                        ; $732d: $e4
    cp b                                          ; $732e: $b8
    ldh [rP1], a                                  ; $732f: $e0 $00
    ld bc, $ff02                                  ; $7331: $01 $02 $ff
    ld [bc], a                                    ; $7334: $02
    ld [bc], a                                    ; $7335: $02
    ld c, $0e                                     ; $7336: $0e $0e
    ld c, $0f                                     ; $7338: $0e $0f
    db $10                                        ; $733a: $10
    inc bc                                        ; $733b: $03
    rst $38                                       ; $733c: $ff
    inc b                                         ; $733d: $04
    dec b                                         ; $733e: $05
    dec b                                         ; $733f: $05
    dec b                                         ; $7340: $05
    ld b, $06                                     ; $7341: $06 $06
    ld b, $11                                     ; $7343: $06 $11
    rst $38                                       ; $7345: $ff
    add hl, bc                                    ; $7346: $09
    inc bc                                        ; $7347: $03
    ld b, $07                                     ; $7348: $06 $07
    jr nz, jr_036_7351                            ; $734a: $20 $05

    ld b, $21                                     ; $734c: $06 $21
    rst $38                                       ; $734e: $ff
    ld [de], a                                    ; $734f: $12
    dec b                                         ; $7350: $05

jr_036_7351:
    add hl, bc                                    ; $7351: $09
    ld [$0406], sp                                ; $7352: $08 $06 $04
    ld l, $2f                                     ; $7355: $2e $2f
    rst $38                                       ; $7357: $ff
    jr nc, jr_036_738b                            ; $7358: $30 $31

    ld de, $1305                                  ; $735a: $11 $05 $13
    add hl, bc                                    ; $735d: $09
    ld a, [bc]                                    ; $735e: $0a
    ld b, $ff                                     ; $735f: $06 $ff
    ld a, $3f                                     ; $7361: $3e $3f
    ld b, b                                       ; $7363: $40
    ld b, c                                       ; $7364: $41
    dec b                                         ; $7365: $05
    inc d                                         ; $7366: $14
    inc bc                                        ; $7367: $03
    dec bc                                        ; $7368: $0b
    rst $38                                       ; $7369: $ff
    dec b                                         ; $736a: $05
    ld a, [bc]                                    ; $736b: $0a
    ld c, [hl]                                    ; $736c: $4e
    ld c, a                                       ; $736d: $4f
    ld d, b                                       ; $736e: $50
    ld d, c                                       ; $736f: $51
    inc d                                         ; $7370: $14
    ld b, $ff                                     ; $7371: $06 $ff
    dec d                                         ; $7373: $15
    inc bc                                        ; $7374: $03
    inc c                                         ; $7375: $0c
    dec c                                         ; $7376: $0d
    ld e, e                                       ; $7377: $5b
    ld e, h                                       ; $7378: $5c
    ld e, l                                       ; $7379: $5d
    ld e, [hl]                                    ; $737a: $5e
    rst $38                                       ; $737b: $ff
    ld d, $17                                     ; $737c: $16 $17
    add hl, bc                                    ; $737e: $09
    nop                                           ; $737f: $00
    ld c, $0e                                     ; $7380: $0e $0e
    ld h, d                                       ; $7382: $62
    ld l, d                                       ; $7383: $6a
    rra                                           ; $7384: $1f
    ld l, e                                       ; $7385: $6b
    ld h, l                                       ; $7386: $65
    ld [bc], a                                    ; $7387: $02
    ld [bc], a                                    ; $7388: $02
    stop                                          ; $7389: $10 $00

jr_036_738b:
    nop                                           ; $738b: $00
    nop                                           ; $738c: $00
    cp a                                          ; $738d: $bf
    dec l                                         ; $738e: $2d
    dec l                                         ; $738f: $2d
    ld l, l                                       ; $7390: $6d
    ld l, l                                       ; $7391: $6d
    ld l, l                                       ; $7392: $6d
    dec l                                         ; $7393: $2d
    rst $38                                       ; $7394: $ff
    pop hl                                        ; $7395: $e1
    dec c                                         ; $7396: $0d
    inc b                                         ; $7397: $04
    ld a, [$f6e2]                                 ; $7398: $fa $e2 $f6
    db $e4                                        ; $739b: $e4
    dec c                                         ; $739c: $0d
    rst $38                                       ; $739d: $ff
    ldh [$f3], a                                  ; $739e: $e0 $f3
    db $e4                                        ; $73a0: $e4
    or $e3                                        ; $73a1: $f6 $e3
    db $ec                                        ; $73a3: $ec
    ld [$e1e1], a                                 ; $73a4: $ea $e1 $e1
    ldh a, [$ce]                                  ; $73a7: $f0 $ce
    db $e4                                        ; $73a9: $e4
    ret c                                         ; $73aa: $d8

    db $e3                                        ; $73ab: $e3
    cp h                                          ; $73ac: $bc
    ldh [$ce], a                                  ; $73ad: $e0 $ce
    db $e3                                        ; $73af: $e3
    ld l, l                                       ; $73b0: $6d
    db $10                                        ; $73b1: $10
    rrca                                          ; $73b2: $0f
    ld c, $ff                                     ; $73b3: $0e $ff
    ld c, $0e                                     ; $73b5: $0e $0e
    ld [bc], a                                    ; $73b7: $02
    ld [bc], a                                    ; $73b8: $02
    ld [bc], a                                    ; $73b9: $02
    ld bc, $0900                                  ; $73ba: $01 $00 $09
    rst $38                                       ; $73bd: $ff
    ld de, $0606                                  ; $73be: $11 $06 $06
    ld b, $05                                     ; $73c1: $06 $05
    dec b                                         ; $73c3: $05
    dec b                                         ; $73c4: $05
    inc b                                         ; $73c5: $04
    rst $38                                       ; $73c6: $ff
    inc bc                                        ; $73c7: $03
    add hl, bc                                    ; $73c8: $09
    dec b                                         ; $73c9: $05
    ld [de], a                                    ; $73ca: $12
    ld [hl+], a                                   ; $73cb: $22
    inc hl                                        ; $73cc: $23
    inc h                                         ; $73cd: $24
    dec h                                         ; $73ce: $25
    rst $38                                       ; $73cf: $ff
    rlca                                          ; $73d0: $07
    ld b, $03                                     ; $73d1: $06 $03
    inc de                                        ; $73d3: $13
    dec b                                         ; $73d4: $05
    ld de, $3332                                  ; $73d5: $11 $32 $33
    rst $38                                       ; $73d8: $ff
    inc [hl]                                      ; $73d9: $34
    dec [hl]                                      ; $73da: $35
    inc b                                         ; $73db: $04
    ld b, $08                                     ; $73dc: $06 $08
    inc bc                                        ; $73de: $03
    inc d                                         ; $73df: $14
    dec b                                         ; $73e0: $05
    rst $38                                       ; $73e1: $ff
    ld b, d                                       ; $73e2: $42
    ld b, e                                       ; $73e3: $43
    ld b, h                                       ; $73e4: $44
    ld b, l                                       ; $73e5: $45
    ld b, $0a                                     ; $73e6: $06 $0a
    add hl, bc                                    ; $73e8: $09
    dec d                                         ; $73e9: $15
    rst $38                                       ; $73ea: $ff
    ld b, $14                                     ; $73eb: $06 $14
    ld de, $5352                                  ; $73ed: $11 $52 $53
    ld d, h                                       ; $73f0: $54
    ld a, [bc]                                    ; $73f1: $0a
    dec b                                         ; $73f2: $05
    rst $38                                       ; $73f3: $ff
    dec bc                                        ; $73f4: $0b
    add hl, bc                                    ; $73f5: $09
    rla                                           ; $73f6: $17
    ld d, $14                                     ; $73f7: $16 $14
    ld e, a                                       ; $73f9: $5f
    ld h, b                                       ; $73fa: $60
    ld h, c                                       ; $73fb: $61
    rst $38                                       ; $73fc: $ff
    dec c                                         ; $73fd: $0d
    inc c                                         ; $73fe: $0c
    inc bc                                        ; $73ff: $03
    db $10                                        ; $7400: $10
    ld [bc], a                                    ; $7401: $02
    ld [bc], a                                    ; $7402: $02
    ld l, h                                       ; $7403: $6c
    ld l, l                                       ; $7404: $6d
    rra                                           ; $7405: $1f
    ld l, [hl]                                    ; $7406: $6e
    ld l, a                                       ; $7407: $6f
    ld c, $0e                                     ; $7408: $0e $0e
    nop                                           ; $740a: $00
    nop                                           ; $740b: $00
    nop                                           ; $740c: $00
    nop                                           ; $740d: $00
    rla                                           ; $740e: $17
    dec c                                         ; $740f: $0d
    dec c                                         ; $7410: $0d
    dec l                                         ; $7411: $2d
    cp $e3                                        ; $7412: $fe $e3
    dec l                                         ; $7414: $2d
    or $e8                                        ; $7415: $f6 $e8
    db $f4                                        ; $7417: $f4
    ldh [$fe], a                                  ; $7418: $e0 $fe
    ldh [$60], a                                  ; $741a: $e0 $60
    rst $20                                       ; $741c: $e7
    db $e3                                        ; $741d: $e3
    or $e5                                        ; $741e: $f6 $e5
    db $eb                                        ; $7420: $eb
    push hl                                       ; $7421: $e5
    or $e9                                        ; $7422: $f6 $e9
    ld [c], a                                     ; $7424: $e2
    ldh a, [$3f]                                  ; $7425: $f0 $3f
    ld b, b                                       ; $7427: $40
    rst $38                                       ; $7428: $ff
    db $e4                                        ; $7429: $e4
    rst $30                                       ; $742a: $f7
    ccf                                           ; $742b: $3f
    ld b, e                                       ; $742c: $43
    ld h, $ff                                     ; $742d: $26 $ff
    db $e4                                        ; $742f: $e4
    ld b, e                                       ; $7430: $43
    ld b, h                                       ; $7431: $44
    jr nc, jr_036_7464                            ; $7432: $30 $30

    rst $38                                       ; $7434: $ff
    nop                                           ; $7435: $00
    ld bc, $0302                                  ; $7436: $01 $02 $03
    jr nc, jr_036_746b                            ; $7439: $30 $30

    ld b, h                                       ; $743b: $44
    ld b, l                                       ; $743c: $45
    rst $38                                       ; $743d: $ff
    ld h, $26                                     ; $743e: $26 $26
    ld [$0a09], sp                                ; $7440: $08 $09 $0a
    dec bc                                        ; $7443: $0b
    ld h, $26                                     ; $7444: $26 $26
    rst $38                                       ; $7446: $ff
    ld b, l                                       ; $7447: $45
    ld b, [hl]                                    ; $7448: $46
    jr nc, @+$32                                  ; $7449: $30 $30

    ld de, $1312                                  ; $744b: $11 $12 $13
    inc d                                         ; $744e: $14
    rst $30                                       ; $744f: $f7
    jr nc, jr_036_7482                            ; $7450: $30 $30

    ld b, [hl]                                    ; $7452: $46
    ret c                                         ; $7453: $d8

    ldh [rNR34], a                                ; $7454: $e0 $1e
    rra                                           ; $7456: $1f
    jr nz, jr_036_747a                            ; $7457: $20 $21

    sbc $d8                                       ; $7459: $de $d8
    db $e3                                        ; $745b: $e3
    ld a, [hl+]                                   ; $745c: $2a
    dec hl                                        ; $745d: $2b
    inc l                                         ; $745e: $2c
    dec l                                         ; $745f: $2d
    ret c                                         ; $7460: $d8

    ldh [rSTAT], a                                ; $7461: $e0 $41
    ld b, d                                       ; $7463: $42

jr_036_7464:
    rst $38                                       ; $7464: $ff
    ld b, d                                       ; $7465: $42
    scf                                           ; $7466: $37
    jr c, jr_036_74a2                             ; $7467: $38 $39

    ld a, [hl-]                                   ; $7469: $3a
    ld b, d                                       ; $746a: $42

jr_036_746b:
    ld b, d                                       ; $746b: $42
    ld b, c                                       ; $746c: $41
    nop                                           ; $746d: $00
    nop                                           ; $746e: $00
    nop                                           ; $746f: $00
    rla                                           ; $7470: $17
    dec c                                         ; $7471: $0d
    dec c                                         ; $7472: $0d
    dec l                                         ; $7473: $2d
    cp $e3                                        ; $7474: $fe $e3
    dec l                                         ; $7476: $2d
    or $e8                                        ; $7477: $f6 $e8
    db $f4                                        ; $7479: $f4

jr_036_747a:
    ldh [$fe], a                                  ; $747a: $e0 $fe
    ldh [$60], a                                  ; $747c: $e0 $60
    rst $20                                       ; $747e: $e7
    db $e3                                        ; $747f: $e3
    or $e5                                        ; $7480: $f6 $e5

jr_036_7482:
    db $eb                                        ; $7482: $eb
    push hl                                       ; $7483: $e5
    or $e9                                        ; $7484: $f6 $e9
    ld [c], a                                     ; $7486: $e2
    ldh a, [$3f]                                  ; $7487: $f0 $3f
    ld b, b                                       ; $7489: $40
    rst $38                                       ; $748a: $ff
    db $e4                                        ; $748b: $e4
    rst $30                                       ; $748c: $f7
    ccf                                           ; $748d: $3f
    ld b, e                                       ; $748e: $43
    ld h, $ff                                     ; $748f: $26 $ff
    db $e4                                        ; $7491: $e4
    ld b, e                                       ; $7492: $43
    ld b, h                                       ; $7493: $44
    jr nc, jr_036_74c6                            ; $7494: $30 $30

    rst $38                                       ; $7496: $ff
    nop                                           ; $7497: $00
    ld bc, $0302                                  ; $7498: $01 $02 $03

jr_036_749b:
    jr nc, jr_036_74cd                            ; $749b: $30 $30

    ld b, h                                       ; $749d: $44
    ld b, l                                       ; $749e: $45
    rst $38                                       ; $749f: $ff
    ld h, $26                                     ; $74a0: $26 $26

jr_036_74a2:
    ld [$0a09], sp                                ; $74a2: $08 $09 $0a
    dec bc                                        ; $74a5: $0b
    ld h, $26                                     ; $74a6: $26 $26
    rst $38                                       ; $74a8: $ff

jr_036_74a9:
    ld b, l                                       ; $74a9: $45
    ld b, [hl]                                    ; $74aa: $46
    jr nc, @+$32                                  ; $74ab: $30 $30

    dec d                                         ; $74ad: $15
    ld d, $17                                     ; $74ae: $16 $17
    jr jr_036_74a9                                ; $74b0: $18 $f7

    jr nc, jr_036_74e4                            ; $74b2: $30 $30

    ld b, [hl]                                    ; $74b4: $46
    ret c                                         ; $74b5: $d8

    ldh [rNR43], a                                ; $74b6: $e0 $22
    inc hl                                        ; $74b8: $23
    inc h                                         ; $74b9: $24
    dec h                                         ; $74ba: $25
    sbc $d8                                       ; $74bb: $de $d8
    db $e3                                        ; $74bd: $e3
    ld l, $2b                                     ; $74be: $2e $2b
    cpl                                           ; $74c0: $2f
    jr nc, jr_036_749b                            ; $74c1: $30 $d8

    ldh [rSTAT], a                                ; $74c3: $e0 $41
    ld b, d                                       ; $74c5: $42

jr_036_74c6:
    rst $38                                       ; $74c6: $ff
    ld b, d                                       ; $74c7: $42
    scf                                           ; $74c8: $37
    jr c, jr_036_7504                             ; $74c9: $38 $39

    ld a, [hl-]                                   ; $74cb: $3a
    ld b, d                                       ; $74cc: $42

jr_036_74cd:
    ld b, d                                       ; $74cd: $42
    ld b, c                                       ; $74ce: $41
    nop                                           ; $74cf: $00
    nop                                           ; $74d0: $00
    nop                                           ; $74d1: $00
    rla                                           ; $74d2: $17
    dec c                                         ; $74d3: $0d
    dec c                                         ; $74d4: $0d
    dec l                                         ; $74d5: $2d
    cp $e3                                        ; $74d6: $fe $e3
    dec l                                         ; $74d8: $2d
    or $e8                                        ; $74d9: $f6 $e8
    db $f4                                        ; $74db: $f4
    ldh [$fe], a                                  ; $74dc: $e0 $fe
    ldh [$60], a                                  ; $74de: $e0 $60
    rst $20                                       ; $74e0: $e7
    db $e3                                        ; $74e1: $e3
    or $e5                                        ; $74e2: $f6 $e5

jr_036_74e4:
    db $eb                                        ; $74e4: $eb
    push hl                                       ; $74e5: $e5
    or $e9                                        ; $74e6: $f6 $e9
    ld [c], a                                     ; $74e8: $e2
    ldh a, [$3f]                                  ; $74e9: $f0 $3f
    ld b, b                                       ; $74eb: $40
    rst $38                                       ; $74ec: $ff
    db $e4                                        ; $74ed: $e4
    rst $30                                       ; $74ee: $f7
    ccf                                           ; $74ef: $3f
    ld b, e                                       ; $74f0: $43
    ld h, $ff                                     ; $74f1: $26 $ff
    db $e4                                        ; $74f3: $e4
    ld b, e                                       ; $74f4: $43
    ld b, h                                       ; $74f5: $44
    jr nc, jr_036_7528                            ; $74f6: $30 $30

    rst $38                                       ; $74f8: $ff
    inc b                                         ; $74f9: $04
    dec b                                         ; $74fa: $05
    ld b, $07                                     ; $74fb: $06 $07
    jr nc, jr_036_752f                            ; $74fd: $30 $30

    ld b, h                                       ; $74ff: $44
    ld b, l                                       ; $7500: $45
    rst $38                                       ; $7501: $ff
    ld h, $26                                     ; $7502: $26 $26

jr_036_7504:
    inc c                                         ; $7504: $0c
    dec c                                         ; $7505: $0d
    ld c, $0f                                     ; $7506: $0e $0f
    ld h, $26                                     ; $7508: $26 $26
    rst $38                                       ; $750a: $ff
    ld b, l                                       ; $750b: $45
    ld b, [hl]                                    ; $750c: $46
    jr nc, @+$32                                  ; $750d: $30 $30

    add hl, de                                    ; $750f: $19
    ld a, [de]                                    ; $7510: $1a
    dec de                                        ; $7511: $1b
    inc e                                         ; $7512: $1c
    ld [hl], a                                    ; $7513: $77
    jr nc, jr_036_7546                            ; $7514: $30 $30

    ld b, [hl]                                    ; $7516: $46
    ret c                                         ; $7517: $d8

    pop hl                                        ; $7518: $e1
    daa                                           ; $7519: $27
    jr z, jr_036_7545                             ; $751a: $28 $29

    ret c                                         ; $751c: $d8

    db $e3                                        ; $751d: $e3
    rst $28                                       ; $751e: $ef
    ld sp, $3332                                  ; $751f: $31 $32 $33
    jr nc, @-$26                                  ; $7522: $30 $d8

    ldh [rSTAT], a                                ; $7524: $e0 $41
    ld b, d                                       ; $7526: $42
    ld b, d                                       ; $7527: $42

jr_036_7528:
    ld a, a                                       ; $7528: $7f
    dec sp                                        ; $7529: $3b
    inc a                                         ; $752a: $3c
    add hl, sp                                    ; $752b: $39
    ld a, [hl-]                                   ; $752c: $3a
    ld b, d                                       ; $752d: $42
    ld b, d                                       ; $752e: $42

jr_036_752f:
    ld b, c                                       ; $752f: $41
    nop                                           ; $7530: $00
    nop                                           ; $7531: $00
    nop                                           ; $7532: $00
    rla                                           ; $7533: $17
    dec c                                         ; $7534: $0d
    dec c                                         ; $7535: $0d
    dec l                                         ; $7536: $2d
    cp $e3                                        ; $7537: $fe $e3
    dec l                                         ; $7539: $2d
    or $e8                                        ; $753a: $f6 $e8
    pop af                                        ; $753c: $f1
    pop hl                                        ; $753d: $e1
    cp $e0                                        ; $753e: $fe $e0
    nop                                           ; $7540: $00
    rst $20                                       ; $7541: $e7
    db $e4                                        ; $7542: $e4
    rst $18                                       ; $7543: $df
    db $e3                                        ; $7544: $e3

jr_036_7545:
    db $ed                                        ; $7545: $ed

jr_036_7546:
    ld [c], a                                     ; $7546: $e2
    ld a, [$f6e1]                                 ; $7547: $fa $e1 $f6
    db $e3                                        ; $754a: $e3
    ret c                                         ; $754b: $d8

    db $e4                                        ; $754c: $e4
    rst $38                                       ; $754d: $ff
    pop hl                                        ; $754e: $e1
    ld [c], a                                     ; $754f: $e2
    db $e3                                        ; $7550: $e3
    xor $f5                                       ; $7551: $ee $f5
    db $e3                                        ; $7553: $e3
    dec l                                         ; $7554: $2d
    ccf                                           ; $7555: $3f
    ld b, b                                       ; $7556: $40
    rst $38                                       ; $7557: $ff
    db $e4                                        ; $7558: $e4
    ccf                                           ; $7559: $3f
    ld b, e                                       ; $755a: $43
    ld h, $fe                                     ; $755b: $26 $fe
    rst $38                                       ; $755d: $ff
    db $e4                                        ; $755e: $e4
    ld b, e                                       ; $755f: $43
    ld b, h                                       ; $7560: $44
    jr nc, jr_036_7593                            ; $7561: $30 $30

    rlca                                          ; $7563: $07
    ld b, $05                                     ; $7564: $06 $05
    rst $38                                       ; $7566: $ff

jr_036_7567:
    inc b                                         ; $7567: $04
    jr nc, jr_036_759a                            ; $7568: $30 $30

    ld b, h                                       ; $756a: $44
    ld b, l                                       ; $756b: $45
    ld h, $26                                     ; $756c: $26 $26
    rrca                                          ; $756e: $0f
    rst $38                                       ; $756f: $ff
    ld c, $0d                                     ; $7570: $0e $0d
    db $10                                        ; $7572: $10
    ld h, $26                                     ; $7573: $26 $26
    ld b, l                                       ; $7575: $45
    ld b, [hl]                                    ; $7576: $46
    jr nc, @+$01                                  ; $7577: $30 $ff

    jr nc, jr_036_7597                            ; $7579: $30 $1c

    dec de                                        ; $757b: $1b
    ld a, [de]                                    ; $757c: $1a
    dec e                                         ; $757d: $1d
    jr nc, jr_036_75b0                            ; $757e: $30 $30

    ld b, [hl]                                    ; $7580: $46
    xor $d8                                       ; $7581: $ee $d8
    ldh [$29], a                                  ; $7583: $e0 $29
    jr z, @+$29                                   ; $7585: $28 $27

    ret c                                         ; $7587: $d8

    db $e4                                        ; $7588: $e4
    inc [hl]                                      ; $7589: $34
    dec [hl]                                      ; $758a: $35
    ld [hl], $fd                                  ; $758b: $36 $fd
    jr nc, jr_036_7567                            ; $758d: $30 $d8

    ldh [rSTAT], a                                ; $758f: $e0 $41
    ld b, d                                       ; $7591: $42
    ld b, d                                       ; $7592: $42

jr_036_7593:
    scf                                           ; $7593: $37
    jr c, jr_036_75d3                             ; $7594: $38 $3d

    rrca                                          ; $7596: $0f

jr_036_7597:
    ld a, $42                                     ; $7597: $3e $42
    ld b, d                                       ; $7599: $42

jr_036_759a:
    ld b, c                                       ; $759a: $41
    nop                                           ; $759b: $00
    nop                                           ; $759c: $00
    nop                                           ; $759d: $00
    adc a                                         ; $759e: $8f
    dec c                                         ; $759f: $0d
    dec c                                         ; $75a0: $0d
    dec c                                         ; $75a1: $0d
    dec l                                         ; $75a2: $2d
    db $fc                                        ; $75a3: $fc
    ld [c], a                                     ; $75a4: $e2
    ld a, [$f5e2]                                 ; $75a5: $fa $e2 $f5
    ldh [$2d], a                                  ; $75a8: $e0 $2d
    ret nz                                        ; $75aa: $c0

    ei                                            ; $75ab: $fb
    pop hl                                        ; $75ac: $e1
    cp $e3                                        ; $75ad: $fe $e3
    pop af                                        ; $75af: $f1

jr_036_75b0:
    ld [c], a                                     ; $75b0: $e2
    or $e6                                        ; $75b1: $f6 $e6
    db $ed                                        ; $75b3: $ed
    db $e4                                        ; $75b4: $e4
    ld [c], a                                     ; $75b5: $e2
    ld a, [c]                                     ; $75b6: $f2
    ld c, l                                       ; $75b7: $4d
    ld c, l                                       ; $75b8: $4d
    cp $cf                                        ; $75b9: $fe $cf
    db $e3                                        ; $75bb: $e3
    ld c, l                                       ; $75bc: $4d
    ld l, l                                       ; $75bd: $6d
    ld d, c                                       ; $75be: $51
    ld d, d                                       ; $75bf: $52
    ld d, e                                       ; $75c0: $53
    ld d, e                                       ; $75c1: $53
    ld d, d                                       ; $75c2: $52
    ld a, [hl]                                    ; $75c3: $7e
    db $fc                                        ; $75c4: $fc
    pop hl                                        ; $75c5: $e1
    ld d, c                                       ; $75c6: $51
    ld d, l                                       ; $75c7: $55
    ld e, b                                       ; $75c8: $58
    ld e, c                                       ; $75c9: $59
    ld e, c                                       ; $75ca: $59
    ld e, b                                       ; $75cb: $58
    db $fc                                        ; $75cc: $fc
    pop hl                                        ; $75cd: $e1
    rst $38                                       ; $75ce: $ff
    ld d, l                                       ; $75cf: $55
    ld d, [hl]                                    ; $75d0: $56
    ld e, d                                       ; $75d1: $5a
    scf                                           ; $75d2: $37

jr_036_75d3:
    nop                                           ; $75d3: $00
    ld bc, $0302                                  ; $75d4: $01 $02 $03
    rst $38                                       ; $75d7: $ff
    scf                                           ; $75d8: $37
    ld e, d                                       ; $75d9: $5a
    ld d, [hl]                                    ; $75da: $56
    ld d, a                                       ; $75db: $57
    ld e, e                                       ; $75dc: $5b
    ld b, d                                       ; $75dd: $42
    db $10                                        ; $75de: $10
    ld de, $12df                                  ; $75df: $11 $df $12
    inc de                                        ; $75e2: $13
    ld b, d                                       ; $75e3: $42
    ld e, e                                       ; $75e4: $5b
    ld d, a                                       ; $75e5: $57
    ld [c], a                                     ; $75e6: $e2
    ldh [$1f], a                                  ; $75e7: $e0 $1f
    jr nz, jr_036_7666                            ; $75e9: $20 $7b

    ld hl, $e222                                  ; $75eb: $21 $22 $e2
    db $e3                                        ; $75ee: $e3
    cpl                                           ; $75ef: $2f
    jr nc, jr_036_7623                            ; $75f0: $30 $31

    ld [hl-], a                                   ; $75f2: $32
    ld [c], a                                     ; $75f3: $e2
    db $e3                                        ; $75f4: $e3
    rst $28                                       ; $75f5: $ef
    ld a, $3f                                     ; $75f6: $3e $3f
    ld b, b                                       ; $75f8: $40
    ld b, c                                       ; $75f9: $41
    ld [c], a                                     ; $75fa: $e2
    ldh [rHDMA1], a                               ; $75fb: $e0 $51
    ld d, d                                       ; $75fd: $52
    ld d, h                                       ; $75fe: $54
    ld a, a                                       ; $75ff: $7f
    ld c, e                                       ; $7600: $4b
    ld c, h                                       ; $7601: $4c
    ld c, l                                       ; $7602: $4d
    ld c, [hl]                                    ; $7603: $4e
    ld d, h                                       ; $7604: $54
    ld d, d                                       ; $7605: $52
    ld d, c                                       ; $7606: $51
    nop                                           ; $7607: $00
    nop                                           ; $7608: $00
    nop                                           ; $7609: $00
    adc a                                         ; $760a: $8f
    dec c                                         ; $760b: $0d
    dec c                                         ; $760c: $0d
    dec c                                         ; $760d: $0d
    dec l                                         ; $760e: $2d
    db $fc                                        ; $760f: $fc
    ld [c], a                                     ; $7610: $e2
    ld a, [$f5e2]                                 ; $7611: $fa $e2 $f5
    ldh [$2d], a                                  ; $7614: $e0 $2d
    ret nz                                        ; $7616: $c0

    ei                                            ; $7617: $fb
    pop hl                                        ; $7618: $e1
    cp $e3                                        ; $7619: $fe $e3
    pop af                                        ; $761b: $f1
    ld [c], a                                     ; $761c: $e2
    or $e6                                        ; $761d: $f6 $e6
    db $ed                                        ; $761f: $ed
    db $e4                                        ; $7620: $e4
    ld [c], a                                     ; $7621: $e2
    ld a, [c]                                     ; $7622: $f2

jr_036_7623:
    ld c, l                                       ; $7623: $4d
    ld c, l                                       ; $7624: $4d
    cp $cf                                        ; $7625: $fe $cf
    db $e3                                        ; $7627: $e3
    ld c, l                                       ; $7628: $4d
    ld l, l                                       ; $7629: $6d
    ld d, c                                       ; $762a: $51
    ld d, d                                       ; $762b: $52
    ld d, e                                       ; $762c: $53
    ld d, e                                       ; $762d: $53
    ld d, d                                       ; $762e: $52
    ld a, [hl]                                    ; $762f: $7e
    db $fc                                        ; $7630: $fc
    pop hl                                        ; $7631: $e1
    ld d, c                                       ; $7632: $51
    ld d, l                                       ; $7633: $55
    ld e, b                                       ; $7634: $58
    ld e, c                                       ; $7635: $59
    ld e, c                                       ; $7636: $59
    ld e, b                                       ; $7637: $58
    db $fc                                        ; $7638: $fc
    pop hl                                        ; $7639: $e1
    rst $38                                       ; $763a: $ff
    ld d, l                                       ; $763b: $55
    ld d, [hl]                                    ; $763c: $56
    ld e, d                                       ; $763d: $5a
    scf                                           ; $763e: $37
    inc b                                         ; $763f: $04
    dec b                                         ; $7640: $05
    ld b, $07                                     ; $7641: $06 $07
    rst $38                                       ; $7643: $ff
    scf                                           ; $7644: $37
    ld e, d                                       ; $7645: $5a
    ld d, [hl]                                    ; $7646: $56
    ld d, a                                       ; $7647: $57
    ld e, e                                       ; $7648: $5b
    ld b, d                                       ; $7649: $42
    inc d                                         ; $764a: $14
    dec d                                         ; $764b: $15
    rst $18                                       ; $764c: $df
    ld d, $17                                     ; $764d: $16 $17
    ld b, d                                       ; $764f: $42
    ld e, e                                       ; $7650: $5b
    ld d, a                                       ; $7651: $57
    ld [c], a                                     ; $7652: $e2
    ldh [rNR44], a                                ; $7653: $e0 $23
    inc h                                         ; $7655: $24
    ld a, e                                       ; $7656: $7b
    dec h                                         ; $7657: $25
    ld h, $e2                                     ; $7658: $26 $e2
    db $e3                                        ; $765a: $e3
    inc sp                                        ; $765b: $33
    inc [hl]                                      ; $765c: $34
    dec [hl]                                      ; $765d: $35
    ld [hl], $e2                                  ; $765e: $36 $e2
    db $e3                                        ; $7660: $e3
    rst $28                                       ; $7661: $ef
    ld b, d                                       ; $7662: $42
    ld b, e                                       ; $7663: $43
    ld b, h                                       ; $7664: $44
    ld b, l                                       ; $7665: $45

jr_036_7666:
    ld [c], a                                     ; $7666: $e2
    ldh [rHDMA1], a                               ; $7667: $e0 $51
    ld d, d                                       ; $7669: $52
    ld d, h                                       ; $766a: $54
    ld a, a                                       ; $766b: $7f
    ld c, e                                       ; $766c: $4b
    ld c, h                                       ; $766d: $4c
    ld c, l                                       ; $766e: $4d
    ld c, [hl]                                    ; $766f: $4e
    ld d, h                                       ; $7670: $54
    ld d, d                                       ; $7671: $52
    ld d, c                                       ; $7672: $51
    nop                                           ; $7673: $00
    nop                                           ; $7674: $00
    nop                                           ; $7675: $00
    adc a                                         ; $7676: $8f
    dec c                                         ; $7677: $0d
    dec c                                         ; $7678: $0d
    dec c                                         ; $7679: $0d
    dec l                                         ; $767a: $2d
    db $fc                                        ; $767b: $fc
    ld [c], a                                     ; $767c: $e2
    ld a, [$f5e2]                                 ; $767d: $fa $e2 $f5
    ldh [$2d], a                                  ; $7680: $e0 $2d
    ret nz                                        ; $7682: $c0

    ei                                            ; $7683: $fb
    pop hl                                        ; $7684: $e1
    cp $e3                                        ; $7685: $fe $e3
    pop af                                        ; $7687: $f1
    ld [c], a                                     ; $7688: $e2
    or $e6                                        ; $7689: $f6 $e6
    db $ed                                        ; $768b: $ed
    db $e4                                        ; $768c: $e4
    ld [c], a                                     ; $768d: $e2
    ld a, [c]                                     ; $768e: $f2
    ld c, l                                       ; $768f: $4d
    ld c, l                                       ; $7690: $4d
    cp $cf                                        ; $7691: $fe $cf
    db $e3                                        ; $7693: $e3
    ld c, l                                       ; $7694: $4d
    ld l, l                                       ; $7695: $6d
    ld d, c                                       ; $7696: $51
    ld d, d                                       ; $7697: $52
    ld d, e                                       ; $7698: $53
    ld d, e                                       ; $7699: $53
    ld d, d                                       ; $769a: $52
    ld a, [hl]                                    ; $769b: $7e
    db $fc                                        ; $769c: $fc
    pop hl                                        ; $769d: $e1
    ld d, c                                       ; $769e: $51
    ld d, l                                       ; $769f: $55
    ld e, b                                       ; $76a0: $58
    ld e, c                                       ; $76a1: $59
    ld e, c                                       ; $76a2: $59
    ld e, b                                       ; $76a3: $58
    db $fc                                        ; $76a4: $fc
    pop hl                                        ; $76a5: $e1
    rst $38                                       ; $76a6: $ff
    ld d, l                                       ; $76a7: $55
    ld d, [hl]                                    ; $76a8: $56
    ld e, d                                       ; $76a9: $5a
    scf                                           ; $76aa: $37
    ld [$0a09], sp                                ; $76ab: $08 $09 $0a
    dec bc                                        ; $76ae: $0b
    rst $38                                       ; $76af: $ff
    scf                                           ; $76b0: $37
    ld e, d                                       ; $76b1: $5a
    ld d, [hl]                                    ; $76b2: $56
    ld d, a                                       ; $76b3: $57
    ld e, e                                       ; $76b4: $5b
    ld b, d                                       ; $76b5: $42
    jr jr_036_76d1                                ; $76b6: $18 $19

    rst $18                                       ; $76b8: $df
    ld a, [de]                                    ; $76b9: $1a
    dec de                                        ; $76ba: $1b
    ld b, d                                       ; $76bb: $42
    ld e, e                                       ; $76bc: $5b
    ld d, a                                       ; $76bd: $57
    ld [c], a                                     ; $76be: $e2
    ldh [$27], a                                  ; $76bf: $e0 $27
    jr z, jr_036_773e                             ; $76c1: $28 $7b

    add hl, hl                                    ; $76c3: $29
    ld a, [hl+]                                   ; $76c4: $2a
    ld [c], a                                     ; $76c5: $e2
    db $e3                                        ; $76c6: $e3
    scf                                           ; $76c7: $37
    jr c, jr_036_7703                             ; $76c8: $38 $39

    ld a, [hl-]                                   ; $76ca: $3a
    ld [c], a                                     ; $76cb: $e2
    db $e3                                        ; $76cc: $e3
    rst $28                                       ; $76cd: $ef
    ld b, [hl]                                    ; $76ce: $46
    ld b, a                                       ; $76cf: $47
    ld c, b                                       ; $76d0: $48

jr_036_76d1:
    ld c, c                                       ; $76d1: $49
    ld [c], a                                     ; $76d2: $e2
    ldh [rHDMA1], a                               ; $76d3: $e0 $51
    ld d, d                                       ; $76d5: $52
    ld d, h                                       ; $76d6: $54
    ld a, a                                       ; $76d7: $7f
    ld c, a                                       ; $76d8: $4f
    ld d, b                                       ; $76d9: $50
    ld c, l                                       ; $76da: $4d
    ld c, [hl]                                    ; $76db: $4e
    ld d, h                                       ; $76dc: $54
    ld d, d                                       ; $76dd: $52
    ld d, c                                       ; $76de: $51
    nop                                           ; $76df: $00
    nop                                           ; $76e0: $00
    nop                                           ; $76e1: $00
    adc a                                         ; $76e2: $8f
    dec c                                         ; $76e3: $0d
    dec c                                         ; $76e4: $0d
    dec c                                         ; $76e5: $0d
    dec l                                         ; $76e6: $2d
    db $fc                                        ; $76e7: $fc
    ld [c], a                                     ; $76e8: $e2
    ld a, [$f5e2]                                 ; $76e9: $fa $e2 $f5
    ldh [$2d], a                                  ; $76ec: $e0 $2d
    ret nz                                        ; $76ee: $c0

    ei                                            ; $76ef: $fb
    pop hl                                        ; $76f0: $e1
    cp $e3                                        ; $76f1: $fe $e3
    pop af                                        ; $76f3: $f1
    ld [c], a                                     ; $76f4: $e2
    or $e6                                        ; $76f5: $f6 $e6
    db $ed                                        ; $76f7: $ed
    db $e4                                        ; $76f8: $e4
    ld [c], a                                     ; $76f9: $e2
    ld a, [c]                                     ; $76fa: $f2
    ld c, l                                       ; $76fb: $4d
    ld c, l                                       ; $76fc: $4d
    cp $cf                                        ; $76fd: $fe $cf
    db $e3                                        ; $76ff: $e3
    ld c, l                                       ; $7700: $4d
    ld l, l                                       ; $7701: $6d
    ld d, c                                       ; $7702: $51

jr_036_7703:
    ld d, d                                       ; $7703: $52
    ld d, e                                       ; $7704: $53
    ld d, e                                       ; $7705: $53
    ld d, d                                       ; $7706: $52
    ld a, [hl]                                    ; $7707: $7e
    db $fc                                        ; $7708: $fc
    pop hl                                        ; $7709: $e1
    ld d, c                                       ; $770a: $51
    ld d, l                                       ; $770b: $55
    ld e, b                                       ; $770c: $58
    ld e, c                                       ; $770d: $59
    ld e, c                                       ; $770e: $59
    ld e, b                                       ; $770f: $58
    db $fc                                        ; $7710: $fc
    pop hl                                        ; $7711: $e1
    rst $38                                       ; $7712: $ff
    ld d, l                                       ; $7713: $55
    ld d, [hl]                                    ; $7714: $56
    ld e, d                                       ; $7715: $5a
    scf                                           ; $7716: $37
    inc c                                         ; $7717: $0c
    dec c                                         ; $7718: $0d
    ld c, $0f                                     ; $7719: $0e $0f
    rst $38                                       ; $771b: $ff
    scf                                           ; $771c: $37
    ld e, d                                       ; $771d: $5a
    ld d, [hl]                                    ; $771e: $56
    ld d, a                                       ; $771f: $57
    ld e, e                                       ; $7720: $5b
    ld b, d                                       ; $7721: $42
    inc e                                         ; $7722: $1c
    dec e                                         ; $7723: $1d
    rst $18                                       ; $7724: $df
    ld d, $1e                                     ; $7725: $16 $1e
    ld b, d                                       ; $7727: $42
    ld e, e                                       ; $7728: $5b
    ld d, a                                       ; $7729: $57
    ld [c], a                                     ; $772a: $e2
    ldh [$2b], a                                  ; $772b: $e0 $2b
    inc l                                         ; $772d: $2c
    ld a, e                                       ; $772e: $7b
    dec l                                         ; $772f: $2d
    ld l, $e2                                     ; $7730: $2e $e2
    db $e3                                        ; $7732: $e3
    scf                                           ; $7733: $37
    dec sp                                        ; $7734: $3b
    inc a                                         ; $7735: $3c
    dec a                                         ; $7736: $3d
    ld [c], a                                     ; $7737: $e2
    db $e3                                        ; $7738: $e3
    rst $28                                       ; $7739: $ef
    ld b, d                                       ; $773a: $42
    ld b, e                                       ; $773b: $43
    ld b, h                                       ; $773c: $44
    ld c, d                                       ; $773d: $4a

jr_036_773e:
    ld [c], a                                     ; $773e: $e2
    ldh [rHDMA1], a                               ; $773f: $e0 $51
    ld d, d                                       ; $7741: $52
    ld d, h                                       ; $7742: $54
    ld a, a                                       ; $7743: $7f
    ld c, e                                       ; $7744: $4b
    ld c, h                                       ; $7745: $4c
    ld c, l                                       ; $7746: $4d
    ld c, [hl]                                    ; $7747: $4e
    ld d, h                                       ; $7748: $54
    ld d, d                                       ; $7749: $52
    ld d, c                                       ; $774a: $51
    nop                                           ; $774b: $00
    nop                                           ; $774c: $00
    nop                                           ; $774d: $00

    db $8f, $0d, $0d, $0d, $2d, $fc, $e2, $fa, $e2, $f5, $e0, $2d, $60, $fb, $e1, $fe
    db $e3, $f7, $e7, $ec, $e6, $e2, $f4, $4d, $4d, $bb, $e3, $7f, $4d, $6d, $4e, $4f
    db $50, $50, $4f, $fc, $e1, $bf, $4e, $51, $55, $21, $21, $55, $fc, $e1, $51, $ff
    db $52, $56, $31, $00, $01, $02, $03, $31, $ff, $56, $54, $53, $57, $58, $0e, $0f
    db $10, $ef, $11, $58, $57, $53, $e2, $e0, $1e, $1f, $20, $de, $e2, $e4, $2d, $2e
    db $2f, $30, $e2, $e3, $3b, $3c, $fb, $3d, $3e, $e2, $e0, $4e, $4f, $48, $48, $49
    db $1f, $4a, $48, $48, $4f, $4e, $00, $00

    nop                                           ; $77b6: $00

    db $8f, $0d, $0d, $0d, $2d, $fc, $e2, $fa, $e2, $f5, $e0, $2d, $60, $fb, $e1, $fe
    db $e3, $f7, $e7, $ec, $e6, $e2, $f4, $4d, $4d, $bb, $e3, $7f, $4d, $6d, $4e, $4f
    db $50, $50, $4f, $fc, $e1, $bf, $4e, $51, $55, $21, $21, $55, $fc, $e1, $51, $ff
    db $52, $56, $31, $04, $05, $06, $07, $31, $ff, $56, $54, $53, $57, $58, $12, $13
    db $14, $ef, $15, $58, $57, $53, $e2, $e0, $22, $23, $24, $bd, $25, $e2, $e3, $31
    db $32, $33, $34, $e2, $e3, $3f, $f7, $40, $41, $42, $e2, $e0, $4e, $4f, $48, $48
    db $3f, $4b, $4c, $48, $48, $4f, $4e, $00, $00

    nop                                           ; $7820: $00

    db $8f, $0d, $0d, $0d, $2d, $fc, $e2, $fa, $e2, $f5, $e0, $2d, $60, $fb, $e1, $fe
    db $e3, $f7, $e7, $ec, $e6, $e2, $f4, $4d, $4d, $bb, $e3, $7f, $4d, $6d, $4e, $4f
    db $50, $50, $4f, $fc, $e1, $bf, $4e, $51, $55, $21, $21, $55, $fc, $e1, $51, $ff
    db $52, $56, $31, $08, $09, $0a, $0b, $31, $ff, $56, $54, $53, $57, $58, $16, $17
    db $18, $ef, $19, $58, $57, $53, $e2, $e0, $26, $27, $28, $bd, $29, $e2, $e3, $31
    db $35, $36, $37, $e2, $e3, $3f, $f7, $43, $44, $45, $e2, $e0, $4e, $4f, $48, $48
    db $3f, $4b, $4c, $48, $48, $4f, $4e, $00, $00

    nop                                           ; $788a: $00

    db $8f, $0d, $0d, $0d, $2d, $fc, $e2, $fa, $e2, $f5, $e0, $2d, $00, $fb, $e1, $f6
    db $e2, $e7, $e2, $fd, $e2, $ec, $e4, $f6, $e6, $eb, $e3, $e2, $e8, $fb, $4d, $4d
    db $bb, $e3, $4d, $6d, $4e, $4f, $50, $fb, $50, $4f, $fc, $e1, $4e, $51, $55, $21
    db $21, $fd, $55, $fc, $e1, $51, $52, $56, $31, $0b, $0a, $ff, $0c, $0d, $31, $56
    db $54, $53, $57, $58, $7f, $1a, $1b, $1c, $1d, $58, $57, $53, $e2, $e0, $ef, $25
    db $2a, $2b, $2c, $e2, $e3, $31, $38, $39, $bd, $3a, $e2, $e3, $3f, $46, $47, $45
    db $e2, $e0, $4e, $ff, $4f, $48, $48, $4d, $4c, $48, $48, $4f, $01, $4e, $00, $00

    nop                                           ; $78fb: $00

    db $8f, $0d, $0d, $0d, $2d, $fc, $e2, $fa, $e2, $f5, $e0, $2d, $60, $fb, $e1, $fe
    db $e3, $f7, $e7, $ec, $e6, $e2, $f4, $4d, $4d, $bb, $e3, $7f, $4d, $6d, $4e, $4f
    db $50, $50, $4f, $fc, $e1, $bf, $4e, $51, $55, $21, $21, $55, $fc, $e1, $51, $ff
    db $52, $56, $31, $08, $09, $0a, $0b, $31, $ff, $56, $54, $53, $57, $58, $16, $59
    db $18, $ef, $19, $58, $57, $53, $e2, $e0, $26, $5a, $28, $bd, $29, $e2, $e3, $31
    db $35, $36, $37, $e2, $e3, $3f, $f7, $43, $44, $45, $e2, $e0, $4e, $4f, $48, $48
    db $3f, $4b, $4c, $48, $48, $4f, $4e, $00, $00

    nop                                           ; $7965: $00
    ld h, l                                       ; $7966: $65
    dec c                                         ; $7967: $0d
    rst $38                                       ; $7968: $ff
    push hl                                       ; $7969: $e5
    dec l                                         ; $796a: $2d
    or $e6                                        ; $796b: $f6 $e6
    rst $30                                       ; $796d: $f7
    add sp, $4d                                   ; $796e: $e8 $4d
    ld c, l                                       ; $7970: $4d
    ld hl, sp-$15                                 ; $7971: $f8 $eb
    db $fc                                        ; $7973: $fc
    ld [c], a                                     ; $7974: $e2
    push af                                       ; $7975: $f5
    ret c                                         ; $7976: $d8

    and $6d                                       ; $7977: $e6 $6d
    ld d, b                                       ; $7979: $50
    ld d, c                                       ; $797a: $51
    ld d, d                                       ; $797b: $52
    ld d, e                                       ; $797c: $53
    ld d, c                                       ; $797d: $51
    ld a, [hl]                                    ; $797e: $7e
    db $fc                                        ; $797f: $fc
    pop hl                                        ; $7980: $e1
    ld d, b                                       ; $7981: $50
    ld d, [hl]                                    ; $7982: $56
    ld e, d                                       ; $7983: $5a
    ld e, e                                       ; $7984: $5b
    ld e, h                                       ; $7985: $5c
    ld e, l                                       ; $7986: $5d
    db $fc                                        ; $7987: $fc
    pop hl                                        ; $7988: $e1
    rst $38                                       ; $7989: $ff
    ld e, b                                       ; $798a: $58

jr_036_798b:
    ld d, a                                       ; $798b: $57
    inc b                                         ; $798c: $04
    nop                                           ; $798d: $00
    nop                                           ; $798e: $00
    ld bc, $0002                                  ; $798f: $01 $02 $00
    rst $38                                       ; $7992: $ff
    nop                                           ; $7993: $00
    inc bc                                        ; $7994: $03
    ld e, c                                       ; $7995: $59
    ld d, [hl]                                    ; $7996: $56
    ld e, d                                       ; $7997: $5a

jr_036_7998:
    jr c, @+$07                                   ; $7998: $38 $05

    ld b, $df                                     ; $799a: $06 $df
    rlca                                          ; $799c: $07
    ld [$5d5e], sp                                ; $799d: $08 $5e $5d
    ld e, b                                       ; $79a0: $58
    ld [c], a                                     ; $79a1: $e2
    ldh [$15], a                                  ; $79a2: $e0 $15
    ld d, $7b                                     ; $79a4: $16 $7b
    rla                                           ; $79a6: $17
    jr jr_036_798b                                ; $79a7: $18 $e2

    db $e3                                        ; $79a9: $e3
    dec h                                         ; $79aa: $25
    ld h, $27                                     ; $79ab: $26 $27
    jr z, @-$1c                                   ; $79ad: $28 $e2

    db $e3                                        ; $79af: $e3
    rst $28                                       ; $79b0: $ef
    dec [hl]                                      ; $79b1: $35
    ld [hl], $37                                  ; $79b2: $36 $37
    jr c, jr_036_7998                             ; $79b4: $38 $e2

    ldh [$50], a                                  ; $79b6: $e0 $50
    ld d, c                                       ; $79b8: $51
    ld d, h                                       ; $79b9: $54
    ld a, a                                       ; $79ba: $7f
    ld b, l                                       ; $79bb: $45
    ld b, [hl]                                    ; $79bc: $46
    ld b, a                                       ; $79bd: $47
    ld c, b                                       ; $79be: $48
    ld d, l                                       ; $79bf: $55
    ld d, c                                       ; $79c0: $51
    ld d, b                                       ; $79c1: $50
    nop                                           ; $79c2: $00
    nop                                           ; $79c3: $00
    nop                                           ; $79c4: $00
    ld h, l                                       ; $79c5: $65
    dec c                                         ; $79c6: $0d
    rst $38                                       ; $79c7: $ff
    push hl                                       ; $79c8: $e5
    dec l                                         ; $79c9: $2d
    or $e6                                        ; $79ca: $f6 $e6
    rst $30                                       ; $79cc: $f7
    add sp, $4d                                   ; $79cd: $e8 $4d
    ld c, l                                       ; $79cf: $4d
    ld hl, sp-$15                                 ; $79d0: $f8 $eb
    db $fc                                        ; $79d2: $fc
    ld [c], a                                     ; $79d3: $e2
    push af                                       ; $79d4: $f5
    ret c                                         ; $79d5: $d8

    and $6d                                       ; $79d6: $e6 $6d
    ld d, b                                       ; $79d8: $50
    ld d, c                                       ; $79d9: $51
    ld d, d                                       ; $79da: $52
    ld d, e                                       ; $79db: $53
    ld d, c                                       ; $79dc: $51
    ld a, [hl]                                    ; $79dd: $7e
    db $fc                                        ; $79de: $fc
    pop hl                                        ; $79df: $e1
    ld d, b                                       ; $79e0: $50
    ld d, [hl]                                    ; $79e1: $56
    ld e, d                                       ; $79e2: $5a
    ld e, e                                       ; $79e3: $5b
    ld e, h                                       ; $79e4: $5c
    ld e, l                                       ; $79e5: $5d
    db $fc                                        ; $79e6: $fc
    pop hl                                        ; $79e7: $e1
    cp a                                          ; $79e8: $bf
    ld e, b                                       ; $79e9: $58
    ld d, a                                       ; $79ea: $57
    inc b                                         ; $79eb: $04
    nop                                           ; $79ec: $00
    nop                                           ; $79ed: $00
    inc bc                                        ; $79ee: $03
    db $fc                                        ; $79ef: $fc
    pop hl                                        ; $79f0: $e1
    ld e, c                                       ; $79f1: $59
    rst $38                                       ; $79f2: $ff
    ld d, [hl]                                    ; $79f3: $56
    ld e, d                                       ; $79f4: $5a
    jr c, @+$0b                                   ; $79f5: $38 $09

    ld a, [bc]                                    ; $79f7: $0a
    dec bc                                        ; $79f8: $0b
    inc c                                         ; $79f9: $0c
    ld e, [hl]                                    ; $79fa: $5e
    ld a, e                                       ; $79fb: $7b
    ld e, l                                       ; $79fc: $5d
    ld e, b                                       ; $79fd: $58
    ld [c], a                                     ; $79fe: $e2
    ldh [rNR24], a                                ; $79ff: $e0 $19
    ld a, [de]                                    ; $7a01: $1a
    dec de                                        ; $7a02: $1b
    inc e                                         ; $7a03: $1c
    ld [c], a                                     ; $7a04: $e2
    db $e3                                        ; $7a05: $e3
    rst $28                                       ; $7a06: $ef
    add hl, hl                                    ; $7a07: $29
    ld a, [hl+]                                   ; $7a08: $2a
    dec hl                                        ; $7a09: $2b
    inc l                                         ; $7a0a: $2c
    ld [c], a                                     ; $7a0b: $e2
    db $e3                                        ; $7a0c: $e3
    add hl, sp                                    ; $7a0d: $39
    ld a, [hl-]                                   ; $7a0e: $3a
    dec sp                                        ; $7a0f: $3b
    db $fd                                        ; $7a10: $fd
    inc a                                         ; $7a11: $3c
    ld [c], a                                     ; $7a12: $e2
    ldh [$50], a                                  ; $7a13: $e0 $50
    ld d, c                                       ; $7a15: $51
    ld d, h                                       ; $7a16: $54
    ld c, c                                       ; $7a17: $49
    ld c, d                                       ; $7a18: $4a
    ld c, e                                       ; $7a19: $4b
    rrca                                          ; $7a1a: $0f
    ld c, b                                       ; $7a1b: $48
    ld d, l                                       ; $7a1c: $55
    ld d, c                                       ; $7a1d: $51
    ld d, b                                       ; $7a1e: $50
    nop                                           ; $7a1f: $00
    nop                                           ; $7a20: $00
    nop                                           ; $7a21: $00
    ld h, l                                       ; $7a22: $65
    dec c                                         ; $7a23: $0d
    rst $38                                       ; $7a24: $ff
    push hl                                       ; $7a25: $e5
    dec l                                         ; $7a26: $2d
    or $e6                                        ; $7a27: $f6 $e6
    rst $30                                       ; $7a29: $f7
    add sp, $4d                                   ; $7a2a: $e8 $4d
    ld c, l                                       ; $7a2c: $4d
    ld hl, sp-$15                                 ; $7a2d: $f8 $eb
    db $fc                                        ; $7a2f: $fc
    ld [c], a                                     ; $7a30: $e2
    push af                                       ; $7a31: $f5
    ret c                                         ; $7a32: $d8

    and $6d                                       ; $7a33: $e6 $6d
    ld d, b                                       ; $7a35: $50
    ld d, c                                       ; $7a36: $51
    ld d, d                                       ; $7a37: $52
    ld d, e                                       ; $7a38: $53
    ld d, c                                       ; $7a39: $51
    ld a, [hl]                                    ; $7a3a: $7e
    db $fc                                        ; $7a3b: $fc
    pop hl                                        ; $7a3c: $e1
    ld d, b                                       ; $7a3d: $50
    ld d, [hl]                                    ; $7a3e: $56
    ld e, d                                       ; $7a3f: $5a
    ld e, e                                       ; $7a40: $5b
    ld e, h                                       ; $7a41: $5c
    ld e, l                                       ; $7a42: $5d
    db $fc                                        ; $7a43: $fc

jr_036_7a44:
    pop hl                                        ; $7a44: $e1
    cp a                                          ; $7a45: $bf
    ld e, b                                       ; $7a46: $58
    ld d, a                                       ; $7a47: $57
    inc b                                         ; $7a48: $04
    nop                                           ; $7a49: $00
    nop                                           ; $7a4a: $00

jr_036_7a4b:
    inc bc                                        ; $7a4b: $03
    db $fc                                        ; $7a4c: $fc
    pop hl                                        ; $7a4d: $e1
    ld e, c                                       ; $7a4e: $59
    rst $38                                       ; $7a4f: $ff
    ld d, [hl]                                    ; $7a50: $56
    ld e, d                                       ; $7a51: $5a
    jr c, @+$0f                                   ; $7a52: $38 $0d

    ld c, $0f                                     ; $7a54: $0e $0f
    db $10                                        ; $7a56: $10
    ld e, [hl]                                    ; $7a57: $5e
    ld a, e                                       ; $7a58: $7b
    ld e, l                                       ; $7a59: $5d
    ld e, b                                       ; $7a5a: $58
    ld [c], a                                     ; $7a5b: $e2
    ldh [rNR33], a                                ; $7a5c: $e0 $1d
    ld e, $1f                                     ; $7a5e: $1e $1f
    jr nz, jr_036_7a44                            ; $7a60: $20 $e2

    db $e3                                        ; $7a62: $e3
    rst $28                                       ; $7a63: $ef
    dec l                                         ; $7a64: $2d
    ld l, $2f                                     ; $7a65: $2e $2f
    jr nc, jr_036_7a4b                            ; $7a67: $30 $e2

    db $e3                                        ; $7a69: $e3
    dec a                                         ; $7a6a: $3d
    ld a, $3f                                     ; $7a6b: $3e $3f
    db $fd                                        ; $7a6d: $fd
    ld b, b                                       ; $7a6e: $40
    ld [c], a                                     ; $7a6f: $e2
    ldh [$50], a                                  ; $7a70: $e0 $50
    ld d, c                                       ; $7a72: $51
    ld d, h                                       ; $7a73: $54
    ld c, c                                       ; $7a74: $49
    ld c, h                                       ; $7a75: $4c
    ld c, l                                       ; $7a76: $4d
    rrca                                          ; $7a77: $0f
    ld c, b                                       ; $7a78: $48
    ld d, l                                       ; $7a79: $55
    ld d, c                                       ; $7a7a: $51
    ld d, b                                       ; $7a7b: $50
    nop                                           ; $7a7c: $00
    nop                                           ; $7a7d: $00
    nop                                           ; $7a7e: $00
    ld h, l                                       ; $7a7f: $65
    dec c                                         ; $7a80: $0d
    rst $38                                       ; $7a81: $ff
    push hl                                       ; $7a82: $e5
    dec l                                         ; $7a83: $2d
    or $e6                                        ; $7a84: $f6 $e6
    rst $30                                       ; $7a86: $f7
    add sp, $4d                                   ; $7a87: $e8 $4d
    ld c, l                                       ; $7a89: $4d
    ld hl, sp-$15                                 ; $7a8a: $f8 $eb
    db $fc                                        ; $7a8c: $fc
    ld [c], a                                     ; $7a8d: $e2
    push af                                       ; $7a8e: $f5
    ret c                                         ; $7a8f: $d8

    and $6d                                       ; $7a90: $e6 $6d
    ld d, b                                       ; $7a92: $50
    ld d, c                                       ; $7a93: $51
    ld d, d                                       ; $7a94: $52
    ld d, e                                       ; $7a95: $53
    ld d, c                                       ; $7a96: $51
    ld a, [hl]                                    ; $7a97: $7e
    db $fc                                        ; $7a98: $fc
    pop hl                                        ; $7a99: $e1
    ld d, b                                       ; $7a9a: $50
    ld d, [hl]                                    ; $7a9b: $56
    ld e, d                                       ; $7a9c: $5a
    ld e, e                                       ; $7a9d: $5b
    ld e, h                                       ; $7a9e: $5c
    ld e, l                                       ; $7a9f: $5d
    db $fc                                        ; $7aa0: $fc
    pop hl                                        ; $7aa1: $e1
    cp a                                          ; $7aa2: $bf
    ld e, b                                       ; $7aa3: $58
    ld d, a                                       ; $7aa4: $57
    inc b                                         ; $7aa5: $04
    nop                                           ; $7aa6: $00
    nop                                           ; $7aa7: $00
    inc bc                                        ; $7aa8: $03
    db $fc                                        ; $7aa9: $fc
    pop hl                                        ; $7aaa: $e1
    ld e, c                                       ; $7aab: $59
    rst $38                                       ; $7aac: $ff
    ld d, [hl]                                    ; $7aad: $56
    ld e, d                                       ; $7aae: $5a
    jr c, @+$13                                   ; $7aaf: $38 $11

    ld [de], a                                    ; $7ab1: $12
    inc de                                        ; $7ab2: $13
    inc d                                         ; $7ab3: $14
    ld e, [hl]                                    ; $7ab4: $5e
    ld a, e                                       ; $7ab5: $7b
    ld e, l                                       ; $7ab6: $5d
    ld e, b                                       ; $7ab7: $58
    ld [c], a                                     ; $7ab8: $e2
    ldh [rNR42], a                                ; $7ab9: $e0 $21
    ld [hl+], a                                   ; $7abb: $22
    inc hl                                        ; $7abc: $23
    inc h                                         ; $7abd: $24
    ld [c], a                                     ; $7abe: $e2
    db $e3                                        ; $7abf: $e3
    rst $28                                       ; $7ac0: $ef
    ld sp, $3332                                  ; $7ac1: $31 $32 $33
    inc [hl]                                      ; $7ac4: $34
    ld [c], a                                     ; $7ac5: $e2
    db $e3                                        ; $7ac6: $e3
    ld b, c                                       ; $7ac7: $41
    ld b, d                                       ; $7ac8: $42
    ld b, e                                       ; $7ac9: $43
    db $fd                                        ; $7aca: $fd
    ld b, h                                       ; $7acb: $44
    ld [c], a                                     ; $7acc: $e2
    ldh [$50], a                                  ; $7acd: $e0 $50
    ld d, c                                       ; $7acf: $51
    ld d, h                                       ; $7ad0: $54
    ld c, c                                       ; $7ad1: $49
    ld c, [hl]                                    ; $7ad2: $4e
    ld c, a                                       ; $7ad3: $4f
    rrca                                          ; $7ad4: $0f
    ld c, b                                       ; $7ad5: $48
    ld d, l                                       ; $7ad6: $55
    ld d, c                                       ; $7ad7: $51
    ld d, b                                       ; $7ad8: $50
    nop                                           ; $7ad9: $00
    nop                                           ; $7ada: $00
    nop                                           ; $7adb: $00
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

Jump_036_7b00:
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

Jump_036_7b0f:
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

Jump_036_7cfb:
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

Call_036_7dff:
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

Jump_036_7e37:
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

Jump_036_7ef1:
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

Jump_036_7f7f:
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

Jump_036_7fe5:
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

Call_036_7fff:
    rst $38                                       ; $7fff: $ff
