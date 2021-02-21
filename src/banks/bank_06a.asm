; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $06a", ROMX[$4000], BANK[$6a]

    ld a, [bc]                                    ; $4000: $0a
    ld b, b                                       ; $4001: $40
    adc d                                         ; $4002: $8a
    ld c, l                                       ; $4003: $4d
    ld e, l                                       ; $4004: $5d
    ld e, b                                       ; $4005: $58
    pop hl                                        ; $4006: $e1
    ld h, l                                       ; $4007: $65

    db $9f, $74

    ld [de], a                                    ; $400a: $12
    ld b, b                                       ; $400b: $40
    nop                                           ; $400c: $00
    ld b, [hl]                                    ; $400d: $46
    dec d                                         ; $400e: $15
    ld c, l                                       ; $400f: $4d
    scf                                           ; $4010: $37
    ld c, l                                       ; $4011: $4d
    adc a                                         ; $4012: $8f
    ld c, l                                       ; $4013: $4d
    ld c, l                                       ; $4014: $4d
    ld c, l                                       ; $4015: $4d
    dec c                                         ; $4016: $0d
    db $fc                                        ; $4017: $fc
    ldh [$fb], a                                  ; $4018: $e0 $fb
    ld [c], a                                     ; $401a: $e2
    rst $30                                       ; $401b: $f7
    ld [c], a                                     ; $401c: $e2
    ld c, l                                       ; $401d: $4d
    rst $38                                       ; $401e: $ff
    ld c, l                                       ; $401f: $4d
    ld l, $6e                                     ; $4020: $2e $6e
    ld l, $2e                                     ; $4022: $2e $2e
    ld l, $0e                                     ; $4024: $2e $0e
    ld c, $1e                                     ; $4026: $0e $1e
    jp hl                                         ; $4028: $e9


    ldh [$0d], a                                  ; $4029: $e0 $0d
    ld l, [hl]                                    ; $402b: $6e
    ld c, $0e                                     ; $402c: $0e $0e
    db $ec                                        ; $402e: $ec
    db $e3                                        ; $402f: $e3
    db $eb                                        ; $4030: $eb
    push hl                                       ; $4031: $e5
    pop hl                                        ; $4032: $e1
    pop hl                                        ; $4033: $e1
    sub c                                         ; $4034: $91
    ld c, $eb                                     ; $4035: $0e $eb
    and $cd                                       ; $4037: $e6 $cd
    and $fa                                       ; $4039: $e6 $fa
    jp hl                                         ; $403b: $e9


    dec c                                         ; $403c: $0d
    jp nz, $d5e1                                  ; $403d: $c2 $e1 $d5

    db $e3                                        ; $4040: $e3
    ld c, l                                       ; $4041: $4d
    ld a, b                                       ; $4042: $78
    cp b                                          ; $4043: $b8
    ldh [$c0], a                                  ; $4044: $e0 $c0
    push hl                                       ; $4046: $e5
    db $eb                                        ; $4047: $eb
    db $e4                                        ; $4048: $e4
    ld l, $0e                                     ; $4049: $2e $0e
    ld l, [hl]                                    ; $404b: $6e
    ld l, $aa                                     ; $404c: $2e $aa
    ldh [rNR34], a                                ; $404e: $e0 $1e
    cp l                                          ; $4050: $bd
    jp hl                                         ; $4051: $e9


Jump_06a_4052:
    dec c                                         ; $4052: $0d
    ld c, l                                       ; $4053: $4d
    dec c                                         ; $4054: $0d
    ld l, l                                       ; $4055: $6d
    rst $38                                       ; $4056: $ff
    ldh [$8b], a                                  ; $4057: $e0 $8b
    pop hl                                        ; $4059: $e1
    ld hl, sp-$20                                 ; $405a: $f8 $e0
    ret nz                                        ; $405c: $c0

    push de                                       ; $405d: $d5
    and $69                                       ; $405e: $e6 $69
    pop hl                                        ; $4060: $e1
    ld a, c                                       ; $4061: $79
    ld [c], a                                     ; $4062: $e2
    rst $18                                       ; $4063: $df
    ldh [$ab], a                                  ; $4064: $e0 $ab
    rst $20                                       ; $4066: $e7
    ld h, l                                       ; $4067: $65
    ldh [$6e], a                                  ; $4068: $e0 $6e
    ld c, $eb                                     ; $406a: $0e $eb
    ld c, [hl]                                    ; $406c: $4e
    ld c, [hl]                                    ; $406d: $4e
    ld a, l                                       ; $406e: $7d
    db $eb                                        ; $406f: $eb
    dec c                                         ; $4070: $0d
    jp Jump_000_2ee1                              ; $4071: $c3 $e1 $2e


    ld c, [hl]                                    ; $4074: $4e
    ld c, $01                                     ; $4075: $0e $01
    ld c, [hl]                                    ; $4077: $4e
    sub c                                         ; $4078: $91
    ldh [$dd], a                                  ; $4079: $e0 $dd
    ld [c], a                                     ; $407b: $e2
    add b                                         ; $407c: $80
    ldh [$b7], a                                  ; $407d: $e0 $b7
    ldh [$75], a                                  ; $407f: $e0 $75
    ldh [$8e], a                                  ; $4081: $e0 $8e
    ld [c], a                                     ; $4083: $e2
    ld c, d                                       ; $4084: $4a

Call_06a_4085:
    ld [c], a                                     ; $4085: $e2
    ld [$e4eb], sp                                ; $4086: $08 $eb $e4
    rst $10                                       ; $4089: $d7
    pop hl                                        ; $408a: $e1
    ld a, $e1                                     ; $408b: $3e $e1
    ld c, [hl]                                    ; $408d: $4e
    daa                                           ; $408e: $27

jr_06a_408f:
    ld [c], a                                     ; $408f: $e2
    and l                                         ; $4090: $a5
    pop hl                                        ; $4091: $e1
    ld [bc], a                                    ; $4092: $02
    pop hl                                        ; $4093: $e1
    add e                                         ; $4094: $83
    ldh [$03], a                                  ; $4095: $e0 $03
    ld l, [hl]                                    ; $4097: $6e
    ld l, [hl]                                    ; $4098: $6e
    cp a                                          ; $4099: $bf
    ldh [rNR11], a                                ; $409a: $e0 $11
    ld [c], a                                     ; $409c: $e2
    halt                                          ; $409d: $76
    ldh [rPCM34], a                               ; $409e: $e0 $77
    ldh [rLYC], a                                 ; $40a0: $e0 $45
    push hl                                       ; $40a2: $e5
    sub c                                         ; $40a3: $91
    pop hl                                        ; $40a4: $e1
    inc b                                         ; $40a5: $04
    ld a, [$ebc0]                                 ; $40a6: $fa $c0 $eb
    db $e3                                        ; $40a9: $e3
    dec c                                         ; $40aa: $0d
    ret nz                                        ; $40ab: $c0

    and $e7                                       ; $40ac: $e6 $e7
    call nz, $cbcd                                ; $40ae: $c4 $cd $cb
    and $c1                                       ; $40b1: $e6 $c1
    xor $c5                                       ; $40b3: $ee $c5
    add b                                         ; $40b5: $80
    push bc                                       ; $40b6: $c5
    jp $e14f                                      ; $40b7: $c3 $4f $e1


    sub d                                         ; $40ba: $92
    and $f8                                       ; $40bb: $e6 $f8
    call nz, $e9c0                                ; $40bd: $c4 $c0 $e9
    ld [$6def], a                                 ; $40c0: $ea $ef $6d
    ld [c], a                                     ; $40c3: $e2
    dec c                                         ; $40c4: $0d
    jr c, jr_06a_408f                             ; $40c5: $38 $c8

    ld [c], a                                     ; $40c7: $e2
    ld b, $e2                                     ; $40c8: $06 $e2
    or e                                          ; $40ca: $b3
    jp Jump_000_0d0e                              ; $40cb: $c3 $0e $0d


    dec c                                         ; $40ce: $0d
    db $ec                                        ; $40cf: $ec
    ldh [$c0], a                                  ; $40d0: $e0 $c0
    db $ec                                        ; $40d2: $ec
    nop                                           ; $40d3: $00
    set 0, c                                      ; $40d4: $cb $c1
    xor d                                         ; $40d6: $aa
    db $ed                                        ; $40d7: $ed
    ld l, $e3                                     ; $40d8: $2e $e3
    add hl, bc                                    ; $40da: $09
    db $e3                                        ; $40db: $e3
    call z, $c0e0                                 ; $40dc: $cc $e0 $c0
    and $99                                       ; $40df: $e6 $99
    jp nz, $c4f7                                  ; $40e1: $c2 $f7 $c4

    nop                                           ; $40e4: $00
    ret nz                                        ; $40e5: $c0

    and $b4                                       ; $40e6: $e6 $b4
    ret nz                                        ; $40e8: $c0

    ret nz                                        ; $40e9: $c0

    ldh a, [$08]                                  ; $40ea: $f0 $08
    db $e4                                        ; $40ec: $e4
    ld [hl], h                                    ; $40ed: $74
    push hl                                       ; $40ee: $e5
    ret nz                                        ; $40ef: $c0

    rst $20                                       ; $40f0: $e7
    or a                                          ; $40f1: $b7
    push bc                                       ; $40f2: $c5
    nop                                           ; $40f3: $00
    push hl                                       ; $40f4: $e5
    db $10                                        ; $40f5: $10
    rst $10                                       ; $40f6: $d7
    and c                                         ; $40f7: $a1
    ld b, c                                       ; $40f8: $41
    jp nz, $c10d                                  ; $40f9: $c2 $0d $c1

    ld [$6dc3], a                                 ; $40fc: $ea $c3 $6d
    xor [hl]                                      ; $40ff: $ae
    call nz, $e285                                ; $4100: $c4 $85 $e2

Jump_06a_4103:
    inc hl                                        ; $4103: $23
    jp nz, $8c00                                  ; $4104: $c2 $00 $8c

    pop bc                                        ; $4107: $c1
    add hl, hl                                    ; $4108: $29
    db $e4                                        ; $4109: $e4
    ret c                                         ; $410a: $d8

    pop hl                                        ; $410b: $e1
    cp [hl]                                       ; $410c: $be
    xor c                                         ; $410d: $a9
    sbc c                                         ; $410e: $99
    and c                                         ; $410f: $a1
    ld [$9dcc], a                                 ; $4110: $ea $cc $9d
    pop bc                                        ; $4113: $c1
    ld [hl], b                                    ; $4114: $70
    and b                                         ; $4115: $a0
    ld bc, $ea2d                                  ; $4116: $01 $2d $ea
    and d                                         ; $4119: $a2
    ld [hl], $e3                                  ; $411a: $36 $e3
    sbc a                                         ; $411c: $9f
    ld [c], a                                     ; $411d: $e2
    xor e                                         ; $411e: $ab
    ret z                                         ; $411f: $c8

    add a                                         ; $4120: $87
    rst $00                                       ; $4121: $c7
    ret nz                                        ; $4122: $c0

    db $e4                                        ; $4123: $e4
    ld l, c                                       ; $4124: $69
    and d                                         ; $4125: $a2
    ld h, $c2                                     ; $4126: $26 $c2
    and h                                         ; $4128: $a4

Call_06a_4129:
    ld l, l                                       ; $4129: $6d
    dec c                                         ; $412a: $0d
    ld a, [hl]                                    ; $412b: $7e
    ldh [$ae], a                                  ; $412c: $e0 $ae
    and b                                         ; $412e: $a0
    dec l                                         ; $412f: $2d
    res 4, d                                      ; $4130: $cb $a2
    inc hl                                        ; $4132: $23
    and b                                         ; $4133: $a0
    ld bc, $6e2d                                  ; $4134: $01 $2d $6e
    pop hl                                        ; $4137: $e1
    dec sp                                        ; $4138: $3b
    and c                                         ; $4139: $a1
    cp b                                          ; $413a: $b8
    and c                                         ; $413b: $a1
    add b                                         ; $413c: $80
    pop hl                                        ; $413d: $e1
    ld c, [hl]                                    ; $413e: $4e
    xor b                                         ; $413f: $a8
    add hl, de                                    ; $4140: $19
    and c                                         ; $4141: $a1
    ld b, h                                       ; $4142: $44
    ldh [$38], a                                  ; $4143: $e0 $38
    rra                                           ; $4145: $1f
    jp $a474                                      ; $4146: $c3 $74 $a4


    ccf                                           ; $4149: $3f
    ldh [$0a], a                                  ; $414a: $e0 $0a
    ld a, [bc]                                    ; $414c: $0a
    ld l, d                                       ; $414d: $6a
    cp a                                          ; $414e: $bf
    pop hl                                        ; $414f: $e1
    push bc                                       ; $4150: $c5
    ldh [rTAC], a                                 ; $4151: $e0 $07
    dec bc                                        ; $4153: $0b
    dec bc                                        ; $4154: $0b
    dec bc                                        ; $4155: $0b
    or [hl]                                       ; $4156: $b6
    push hl                                       ; $4157: $e5
    ld b, c                                       ; $4158: $41
    ld [c], a                                     ; $4159: $e2
    inc b                                         ; $415a: $04
    and c                                         ; $415b: $a1
    ld d, [hl]                                    ; $415c: $56
    and [hl]                                      ; $415d: $a6
    rst $10                                       ; $415e: $d7
    and e                                         ; $415f: $a3
    db $e4                                        ; $4160: $e4
    inc e                                         ; $4161: $1c
    and d                                         ; $4162: $a2
    or c                                          ; $4163: $b1
    and c                                         ; $4164: $a1
    dec c                                         ; $4165: $0d
    add l                                         ; $4166: $85
    jp nz, $c059                                  ; $4167: $c2 $59 $c0

    ld a, [bc]                                    ; $416a: $0a
    ld a, [hl+]                                   ; $416b: $2a

Call_06a_416c:
    ld a, [bc]                                    ; $416c: $0a
    rrca                                          ; $416d: $0f
    ld a, [hl+]                                   ; $416e: $2a
    ld c, e                                       ; $416f: $4b
    dec c                                         ; $4170: $0d
    ld c, l                                       ; $4171: $4d
    ld a, b                                       ; $4172: $78
    ld [c], a                                     ; $4173: $e2
    ld [hl], l                                    ; $4174: $75
    ld [c], a                                     ; $4175: $e2
    sbc a                                         ; $4176: $9f
    add e                                         ; $4177: $83
    dec l                                         ; $4178: $2d
    ld [c], a                                     ; $4179: $e2
    ret nz                                        ; $417a: $c0

    xor c                                         ; $417b: $a9
    add b                                         ; $417c: $80
    ld d, [hl]                                    ; $417d: $56
    and [hl]                                      ; $417e: $a6
    push bc                                       ; $417f: $c5
    add l                                         ; $4180: $85
    ld e, a                                       ; $4181: $5f
    push bc                                       ; $4182: $c5
    call nc, $c1c1                                ; $4183: $d4 $c1 $c1
    pop hl                                        ; $4186: $e1
    ld a, [bc]                                    ; $4187: $0a
    dec bc                                        ; $4188: $0b
    add hl, sp                                    ; $4189: $39
    dec hl                                        ; $418a: $2b
    adc b                                         ; $418b: $88
    ldh [rNR10], a                                ; $418c: $e0 $10
    ret nz                                        ; $418e: $c0

    ld l, e                                       ; $418f: $6b
    ld a, [bc]                                    ; $4190: $0a
    ld l, d                                       ; $4191: $6a
    ld hl, sp-$1f                                 ; $4192: $f8 $e1
    dec a                                         ; $4194: $3d
    ld [c], a                                     ; $4195: $e2
    ret nz                                        ; $4196: $c0

    cp b                                          ; $4197: $b8
    ld [c], a                                     ; $4198: $e2
    ld d, a                                       ; $4199: $57
    and c                                         ; $419a: $a1
    ld d, [hl]                                    ; $419b: $56
    xor d                                         ; $419c: $aa
    ret nz                                        ; $419d: $c0

    jp hl                                         ; $419e: $e9


    ld a, [hl-]                                   ; $419f: $3a
    add b                                         ; $41a0: $80
    jp c, $0ba2                                   ; $41a1: $da $a2 $0b

    ld a, [bc]                                    ; $41a4: $0a
    inc de                                        ; $41a5: $13
    ld c, e                                       ; $41a6: $4b
    dec bc                                        ; $41a7: $0b
    cp [hl]                                       ; $41a8: $be
    ldh [$fe], a                                  ; $41a9: $e0 $fe
    ldh [$2b], a                                  ; $41ab: $e0 $2b
    scf                                           ; $41ad: $37
    ldh [$b7], a                                  ; $41ae: $e0 $b7
    pop hl                                        ; $41b0: $e1
    or h                                          ; $41b1: $b4
    pop hl                                        ; $41b2: $e1
    ld b, $77                                     ; $41b3: $06 $77
    db $e4                                        ; $41b5: $e4
    ld c, $6d                                     ; $41b6: $0e $6d
    ld d, [hl]                                    ; $41b8: $56
    and a                                         ; $41b9: $a7
    ld b, a                                       ; $41ba: $47
    jp nz, $a1dd                                  ; $41bb: $c2 $dd $a1

    rst $18                                       ; $41be: $df
    and [hl]                                      ; $41bf: $a6
    ld [bc], a                                    ; $41c0: $02
    push hl                                       ; $41c1: $e5
    ld sp, hl                                     ; $41c2: $f9
    ld c, e                                       ; $41c3: $4b
    rst $38                                       ; $41c4: $ff
    pop hl                                        ; $41c5: $e1
    cp a                                          ; $41c6: $bf
    pop hl                                        ; $41c7: $e1
    ld c, e                                       ; $41c8: $4b
    ld a, [bc]                                    ; $41c9: $0a
    ld c, d                                       ; $41ca: $4a
    ld c, d                                       ; $41cb: $4a
    dec bc                                        ; $41cc: $0b
    ld b, $c0                                     ; $41cd: $06 $c0
    push hl                                       ; $41cf: $e5
    dec c                                         ; $41d0: $0d
    dec l                                         ; $41d1: $2d
    xor c                                         ; $41d2: $a9
    and d                                         ; $41d3: $a2
    nop                                           ; $41d4: $00
    xor c                                         ; $41d5: $a9
    inc l                                         ; $41d6: $2c
    jp nz, $e068                                  ; $41d7: $c2 $68 $e0

    ld h, a                                       ; $41da: $67
    add e                                         ; $41db: $83
    db $fc                                        ; $41dc: $fc
    cp l                                          ; $41dd: $bd
    db $e3                                        ; $41de: $e3
    pop bc                                        ; $41df: $c1
    ret nz                                        ; $41e0: $c0

    ld c, e                                       ; $41e1: $4b
    ld l, e                                       ; $41e2: $6b
    dec hl                                        ; $41e3: $2b
    ld c, e                                       ; $41e4: $4b
    ld c, e                                       ; $41e5: $4b
    ld l, e                                       ; $41e6: $6b
    dec e                                         ; $41e7: $1d
    ld c, e                                       ; $41e8: $4b
    ld a, b                                       ; $41e9: $78
    pop hl                                        ; $41ea: $e1
    ld a, [hl+]                                   ; $41eb: $2a
    ld a, [bc]                                    ; $41ec: $0a
    ld c, d                                       ; $41ed: $4a
    ld l, [hl]                                    ; $41ee: $6e
    jp $e43e                                      ; $41ef: $c3 $3e $e4


    ld d, a                                       ; $41f2: $57
    add d                                         ; $41f3: $82
    inc b                                         ; $41f4: $04
    ret nz                                        ; $41f5: $c0

    add h                                         ; $41f6: $84
    db $e3                                        ; $41f7: $e3
    ld h, d                                       ; $41f8: $62
    ld l, l                                       ; $41f9: $6d
    add hl, hl                                    ; $41fa: $29
    pop hl                                        ; $41fb: $e1
    ld a, [hl]                                    ; $41fc: $7e
    ld h, c                                       ; $41fd: $61
    sub l                                         ; $41fe: $95
    ld h, b                                       ; $41ff: $60
    ld b, a                                       ; $4200: $47
    call nz, $e195                                ; $4201: $c4 $95 $e1
    rst $38                                       ; $4204: $ff
    dec c                                         ; $4205: $0d
    ld l, e                                       ; $4206: $6b
    ld c, e                                       ; $4207: $4b
    dec c                                         ; $4208: $0d
    ld l, e                                       ; $4209: $6b
    ld l, e                                       ; $420a: $6b

Call_06a_420b:
    dec bc                                        ; $420b: $0b
    dec bc                                        ; $420c: $0b
    scf                                           ; $420d: $37
    ld c, e                                       ; $420e: $4b
    ld a, [bc]                                    ; $420f: $0a
    ld a, [bc]                                    ; $4210: $0a
    cp b                                          ; $4211: $b8
    jp nz, Jump_000_0b0b                          ; $4212: $c2 $0b $0b

    ld l, $c0                                     ; $4215: $2e $c0
    cp $c1                                        ; $4217: $fe $c1
    and b                                         ; $4219: $a0
    add b                                         ; $421a: $80
    adc b                                         ; $421b: $88
    ld h, e                                       ; $421c: $63
    ld h, h                                       ; $421d: $64
    ld c, d                                       ; $421e: $4a
    ld h, l                                       ; $421f: $65
    add b                                         ; $4220: $80
    db $e3                                        ; $4221: $e3
    inc l                                         ; $4222: $2c
    db $e3                                        ; $4223: $e3
    dec l                                         ; $4224: $2d
    cp [hl]                                       ; $4225: $be
    ldh [$0d], a                                  ; $4226: $e0 $0d
    rlca                                          ; $4228: $07
    dec bc                                        ; $4229: $0b
    ld l, e                                       ; $422a: $6b
    dec bc                                        ; $422b: $0b
    ld a, e                                       ; $422c: $7b
    ldh [$af], a                                  ; $422d: $e0 $af
    pop hl                                        ; $422f: $e1
    cp $c2                                        ; $4230: $fe $c2
    db $ec                                        ; $4232: $ec
    ldh [$96], a                                  ; $4233: $e0 $96
    xor d                                         ; $4235: $aa
    and b                                         ; $4236: $a0
    di                                            ; $4237: $f3
    and d                                         ; $4238: $a2
    ld b, b                                       ; $4239: $40
    ld h, a                                       ; $423a: $67
    dec h                                         ; $423b: $25
    pop bc                                        ; $423c: $c1
    or $61                                        ; $423d: $f6 $61
    push af                                       ; $423f: $f5
    ld b, h                                       ; $4240: $44
    dec l                                         ; $4241: $2d
    ret                                           ; $4242: $c9


    ret nz                                        ; $4243: $c0

Jump_06a_4244:
    ld l, e                                       ; $4244: $6b
    xor l                                         ; $4245: $ad
    dec bc                                        ; $4246: $0b
    jp nz, Jump_000_2de0                          ; $4247: $c2 $e0 $2d

    dec l                                         ; $424a: $2d
    ld [hl], h                                    ; $424b: $74
    pop bc                                        ; $424c: $c1
    ld a, [bc]                                    ; $424d: $0a
    ld sp, hl                                     ; $424e: $f9
    ret nz                                        ; $424f: $c0

    dec bc                                        ; $4250: $0b
    nop                                           ; $4251: $00
    ld l, d                                       ; $4252: $6a
    and c                                         ; $4253: $a1
    ld d, $a7                                     ; $4254: $16 $a7
    and a                                         ; $4256: $a7
    ld h, h                                       ; $4257: $64
    ld h, c                                       ; $4258: $61
    and l                                         ; $4259: $a5
    ret nz                                        ; $425a: $c0

    add sp, -$08                                  ; $425b: $e8 $f8
    and e                                         ; $425d: $a3
    ld a, [hl-]                                   ; $425e: $3a
    pop hl                                        ; $425f: $e1
    jp nz, Jump_000_02e0                          ; $4260: $c2 $e0 $02

    inc sp                                        ; $4263: $33

Call_06a_4264:
    ret nz                                        ; $4264: $c0

    dec c                                         ; $4265: $0d
    halt                                          ; $4266: $76
    pop bc                                        ; $4267: $c1
    ld h, [hl]                                    ; $4268: $66
    ret nz                                        ; $4269: $c0

    ld a, [hl+]                                   ; $426a: $2a
    and c                                         ; $426b: $a1
    jr jr_06a_42d4                                ; $426c: $18 $66

    ret nz                                        ; $426e: $c0

    and $b9                                       ; $426f: $e6 $b9
    call nz, Call_000_3280                        ; $4271: $c4 $80 $32
    add d                                         ; $4274: $82
    cp $40                                        ; $4275: $fe $40
    db $10                                        ; $4277: $10
    ld h, c                                       ; $4278: $61
    ld a, [hl-]                                   ; $4279: $3a
    add c                                         ; $427a: $81
    jp Jump_000_36e2                              ; $427b: $c3 $e2 $36


    pop bc                                        ; $427e: $c1
    inc b                                         ; $427f: $04
    ldh [$0b], a                                  ; $4280: $e0 $0b
    inc de                                        ; $4282: $13
    dec bc                                        ; $4283: $0b
    ld c, d                                       ; $4284: $4a
    ld a, a                                       ; $4285: $7f

Call_06a_4286:
    pop hl                                        ; $4286: $e1
    ld a, [hl+]                                   ; $4287: $2a
    and c                                         ; $4288: $a1
    ld l, l                                       ; $4289: $6d
    call c, $c044                                 ; $428a: $dc $44 $c0
    ld l, d                                       ; $428d: $6a
    add h                                         ; $428e: $84
    and d                                         ; $428f: $a2
    nop                                           ; $4290: $00
    inc a                                         ; $4291: $3c
    ld h, c                                       ; $4292: $61
    db $fc                                        ; $4293: $fc
    ld b, b                                       ; $4294: $40
    add h                                         ; $4295: $84
    db $e3                                        ; $4296: $e3
    ld de, $4ca3                                  ; $4297: $11 $a3 $4c
    ret nz                                        ; $429a: $c0

    cp b                                          ; $429b: $b8
    ret nz                                        ; $429c: $c0

    ret nz                                        ; $429d: $c0

    pop hl                                        ; $429e: $e1
    ld a, b                                       ; $429f: $78
    pop bc                                        ; $42a0: $c1
    nop                                           ; $42a1: $00

Jump_06a_42a2:
    cp a                                          ; $42a2: $bf
    pop hl                                        ; $42a3: $e1
    adc a                                         ; $42a4: $8f
    ld b, h                                       ; $42a5: $44
    dec hl                                        ; $42a6: $2b
    ld h, h                                       ; $42a7: $64

jr_06a_42a8:
    adc d                                         ; $42a8: $8a
    ld [c], a                                     ; $42a9: $e2
    sbc e                                         ; $42aa: $9b
    add l                                         ; $42ab: $85
    ld e, $4f                                     ; $42ac: $1e $4f
    or a                                          ; $42ae: $b7
    add d                                         ; $42af: $82
    ld [hl], a                                    ; $42b0: $77
    ret nz                                        ; $42b1: $c0

    nop                                           ; $42b2: $00
    ldh a, [$a1]                                  ; $42b3: $f0 $a1
    ld a, a                                       ; $42b5: $7f
    pop hl                                        ; $42b6: $e1
    ld a, [hl]                                    ; $42b7: $7e
    pop hl                                        ; $42b8: $e1
    ld a, d                                       ; $42b9: $7a
    and b                                         ; $42ba: $a0
    ld hl, sp-$7f                                 ; $42bb: $f8 $81
    inc c                                         ; $42bd: $0c
    and h                                         ; $42be: $a4
    ld b, [hl]                                    ; $42bf: $46
    ld b, c                                       ; $42c0: $41
    ld l, c                                       ; $42c1: $69
    and e                                         ; $42c2: $a3
    jr jr_06a_42e3                                ; $42c3: $18 $1e

    ld d, c                                       ; $42c5: $51
    ld c, e                                       ; $42c6: $4b
    ld h, c                                       ; $42c7: $61
    add d                                         ; $42c8: $82
    and d                                         ; $42c9: $a2
    ld l, e                                       ; $42ca: $6b
    ld l, e                                       ; $42cb: $6b
    ld [hl], h                                    ; $42cc: $74
    and b                                         ; $42cd: $a0
    inc l                                         ; $42ce: $2c
    and b                                         ; $42cf: $a0
    ld [hl-], a                                   ; $42d0: $32
    and d                                         ; $42d1: $a2
    ld h, b                                       ; $42d2: $60
    ret nz                                        ; $42d3: $c0

jr_06a_42d4:
    db $e4                                        ; $42d4: $e4
    cp c                                          ; $42d5: $b9
    inc h                                         ; $42d6: $24
    or d                                          ; $42d7: $b2
    add a                                         ; $42d8: $87
    ld e, $50                                     ; $42d9: $1e $50
    ld l, [hl]                                    ; $42db: $6e
    and e                                         ; $42dc: $a3
    dec c                                         ; $42dd: $0d
    dec c                                         ; $42de: $0d
    halt                                          ; $42df: $76
    and c                                         ; $42e0: $a1
    inc bc                                        ; $42e1: $03
    ld a, [bc]                                    ; $42e2: $0a

jr_06a_42e3:
    ld a, [hl+]                                   ; $42e3: $2a
    cp l                                          ; $42e4: $bd
    ret nz                                        ; $42e5: $c0

    add hl, hl                                    ; $42e6: $29
    add c                                         ; $42e7: $81
    ld a, [$c0a3]                                 ; $42e8: $fa $a3 $c0
    push hl                                       ; $42eb: $e5
    ld [$1e46], sp                                ; $42ec: $08 $46 $1e
    ld d, b                                       ; $42ef: $50
    inc c                                         ; $42f0: $0c
    add c                                         ; $42f1: $81
    push hl                                       ; $42f2: $e5
    or b                                          ; $42f3: $b0
    add c                                         ; $42f4: $81
    dec hl                                        ; $42f5: $2b

jr_06a_42f6:
    ld c, d                                       ; $42f6: $4a
    and a                                         ; $42f7: $a7
    add b                                         ; $42f8: $80
    ld l, l                                       ; $42f9: $6d
    jp Jump_06a_42a2                              ; $42fa: $c3 $a2 $42


    db $eb                                        ; $42fd: $eb
    ld b, h                                       ; $42fe: $44
    nop                                           ; $42ff: $00
    inc de                                        ; $4300: $13
    jr nz, jr_06a_430b                            ; $4301: $20 $08

    ld b, e                                       ; $4303: $43
    ld b, $80                                     ; $4304: $06 $80
    add d                                         ; $4306: $82
    jp nz, $a91e                                  ; $4307: $c2 $1e $a9

    or a                                          ; $430a: $b7

jr_06a_430b:
    jp $81ac                                      ; $430b: $c3 $ac $81


    ld l, [hl]                                    ; $430e: $6e
    add c                                         ; $430f: $81
    inc a                                         ; $4310: $3c
    dec [hl]                                      ; $4311: $35
    and b                                         ; $4312: $a0
    db $f4                                        ; $4313: $f4
    add d                                         ; $4314: $82
    dec l                                         ; $4315: $2d
    dec c                                         ; $4316: $0d
    ld c, $0e                                     ; $4317: $0e $0e
    inc c                                         ; $4319: $0c
    and h                                         ; $431a: $a4
    jr z, jr_06a_4341                             ; $431b: $28 $24

    jr nz, @+$15                                  ; $431d: $20 $13

    db $e3                                        ; $431f: $e3
    jp $de02                                      ; $4320: $c3 $02 $de


    adc d                                         ; $4323: $8a
    jr nc, jr_06a_42a8                            ; $4324: $30 $82

    ld hl, $2b20                                  ; $4326: $21 $20 $2b
    ld a, l                                       ; $4329: $7d
    call nz, $a1bb                                ; $432a: $c4 $bb $a1
    nop                                           ; $432d: $00
    ld a, [hl-]                                   ; $432e: $3a
    and e                                         ; $432f: $a3
    rst $20                                       ; $4330: $e7
    ld hl, $2382                                  ; $4331: $21 $82 $23
    or d                                          ; $4334: $b2
    ld a, [hl+]                                   ; $4335: $2a
    ld h, c                                       ; $4336: $61
    ld h, d                                       ; $4337: $62
    sbc [hl]                                      ; $4338: $9e
    daa                                           ; $4339: $27
    ld a, [hl]                                    ; $433a: $7e
    db $e3                                        ; $433b: $e3
    ld bc, $00e0                                  ; $433c: $01 $e0 $00
    db $fd                                        ; $433f: $fd
    and c                                         ; $4340: $a1

jr_06a_4341:
    xor h                                         ; $4341: $ac
    add c                                         ; $4342: $81
    ld l, e                                       ; $4343: $6b
    and c                                         ; $4344: $a1
    ld a, c                                       ; $4345: $79
    add c                                         ; $4346: $81
    ld c, l                                       ; $4347: $4d

Jump_06a_4348:
    inc b                                         ; $4348: $04
    add [hl]                                      ; $4349: $86
    ld b, h                                       ; $434a: $44
    ld [hl], d                                    ; $434b: $72
    daa                                           ; $434c: $27
    cp h                                          ; $434d: $bc
    add c                                         ; $434e: $81
    nop                                           ; $434f: $00
    ld e, $48                                     ; $4350: $1e $48
    ld a, [hl]                                    ; $4352: $7e
    ld h, h                                       ; $4353: $64
    jr c, jr_06a_42f6                             ; $4354: $38 $a0

    cp l                                          ; $4356: $bd
    and c                                         ; $4357: $a1
    ld b, c                                       ; $4358: $41
    pop hl                                        ; $4359: $e1
    ld a, [c]                                     ; $435a: $f2
    ld b, c                                       ; $435b: $41
    ld [hl], b                                    ; $435c: $70
    ld h, h                                       ; $435d: $64
    inc bc                                        ; $435e: $03

jr_06a_435f:
    inc h                                         ; $435f: $24
    ld b, b                                       ; $4360: $40
    ret z                                         ; $4361: $c8

    ld h, $29                                     ; $4362: $26 $29
    call nz, Call_000_29de                        ; $4364: $c4 $de $29
    ret nz                                        ; $4367: $c0

    push hl                                       ; $4368: $e5
    ld a, [hl]                                    ; $4369: $7e
    and d                                         ; $436a: $a2
    halt                                          ; $436b: $76
    add b                                         ; $436c: $80
    ld c, d                                       ; $436d: $4a
    or l                                          ; $436e: $b5
    ld h, d                                       ; $436f: $62
    ld bc, $566d                                  ; $4370: $01 $6d $56
    and [hl]                                      ; $4373: $a6
    ret nz                                        ; $4374: $c0

    add sp, $49                                   ; $4375: $e8 $49
    and d                                         ; $4377: $a2
    call z, Call_06a_4129                         ; $4378: $cc $29 $41
    ret z                                         ; $437b: $c8

    ld sp, $3661                                  ; $437c: $31 $61 $36
    add d                                         ; $437f: $82
    ld bc, $750a                                  ; $4380: $01 $0a $75
    ld h, c                                       ; $4383: $61
    sbc $20                                       ; $4384: $de $20
    ld d, [hl]                                    ; $4386: $56
    and [hl]                                      ; $4387: $a6
    ret nz                                        ; $4388: $c0

    add sp, -$5f                                  ; $4389: $e8 $a1
    ld b, l                                       ; $438b: $45
    ld e, b                                       ; $438c: $58
    inc h                                         ; $438d: $24
    ld d, e                                       ; $438e: $53
    ld hl, $7318                                  ; $438f: $21 $18 $73
    ld b, d                                       ; $4392: $42
    rst $30                                       ; $4393: $f7
    ld b, b                                       ; $4394: $40
    ret nz                                        ; $4395: $c0

    ld [c], a                                     ; $4396: $e2
    ld l, e                                       ; $4397: $6b
    dec bc                                        ; $4398: $0b
    pop bc                                        ; $4399: $c1
    jp $827c                                      ; $439a: $c3 $7c $82


    ld d, [hl]                                    ; $439d: $56
    and e                                         ; $439e: $a3
    nop                                           ; $439f: $00
    sbc a                                         ; $43a0: $9f
    ld b, d                                       ; $43a1: $42
    or d                                          ; $43a2: $b2
    add [hl]                                      ; $43a3: $86

Jump_06a_43a4:
    db $f4                                        ; $43a4: $f4
    add [hl]                                      ; $43a5: $86
    rst $10                                       ; $43a6: $d7
    nop                                           ; $43a7: $00
    ret z                                         ; $43a8: $c8

    call nz, Call_000_21f5                        ; $43a9: $c4 $f5 $21
    or a                                          ; $43ac: $b7
    jr nz, jr_06a_435f                            ; $43ad: $20 $b0

    ld b, d                                       ; $43af: $42
    ld [bc], a                                    ; $43b0: $02
    inc [hl]                                      ; $43b1: $34
    ld h, b                                       ; $43b2: $60
    ld a, [hl+]                                   ; $43b3: $2a
    inc l                                         ; $43b4: $2c
    add c                                         ; $43b5: $81
    inc a                                         ; $43b6: $3c
    add h                                         ; $43b7: $84
    sub [hl]                                      ; $43b8: $96
    and c                                         ; $43b9: $a1
    ld d, [hl]                                    ; $43ba: $56
    dec h                                         ; $43bb: $25
    or e                                          ; $43bc: $b3
    ld [hl+], a                                   ; $43bd: $22
    ld l, h                                       ; $43be: $6c
    inc h                                         ; $43bf: $24
    ld h, h                                       ; $43c0: $64
    or b                                          ; $43c1: $b0
    ld h, $04                                     ; $43c2: $26 $04
    and $4d                                       ; $43c4: $e6 $4d
    cp c                                          ; $43c6: $b9
    ld h, b                                       ; $43c7: $60
    nop                                           ; $43c8: $00
    db $e3                                        ; $43c9: $e3
    dec l                                         ; $43ca: $2d
    dec l                                         ; $43cb: $2d
    or e                                          ; $43cc: $b3
    jr nz, jr_06a_43cf                            ; $43cd: $20 $00

jr_06a_43cf:
    ld a, h                                       ; $43cf: $7c
    ld h, h                                       ; $43d0: $64
    ld d, [hl]                                    ; $43d1: $56
    and d                                         ; $43d2: $a2
    ld [hl], a                                    ; $43d3: $77
    ld h, $0c                                     ; $43d4: $26 $0c
    xor b                                         ; $43d6: $a8
    ld [$b001], a                                 ; $43d7: $ea $01 $b0
    ld hl, $45a2                                  ; $43da: $21 $a2 $45
    ld a, c                                       ; $43dd: $79
    ld h, d                                       ; $43de: $62
    nop                                           ; $43df: $00
    add b                                         ; $43e0: $80
    ld [c], a                                     ; $43e1: $e2
    pop bc                                        ; $43e2: $c1
    ld [c], a                                     ; $43e3: $e2
    ld h, c                                       ; $43e4: $61
    jr nz, jr_06a_4405                            ; $43e5: $20 $1e

    and d                                         ; $43e7: $a2
    ld d, [hl]                                    ; $43e8: $56
    and c                                         ; $43e9: $a1
    halt                                          ; $43ea: $76
    dec hl                                        ; $43eb: $2b
    inc c                                         ; $43ec: $0c
    and [hl]                                      ; $43ed: $a6
    and h                                         ; $43ee: $a4
    add h                                         ; $43ef: $84
    inc b                                         ; $43f0: $04
    inc e                                         ; $43f1: $1c
    ret nz                                        ; $43f2: $c0

    db $f4                                        ; $43f3: $f4
    ld b, e                                       ; $43f4: $43
    ld c, l                                       ; $43f5: $4d
    ld b, c                                       ; $43f6: $41
    jp Jump_06a_6077                              ; $43f7: $c3 $77 $60


    push bc                                       ; $43fa: $c5
    pop bc                                        ; $43fb: $c1
    ei                                            ; $43fc: $fb
    ld [hl+], a                                   ; $43fd: $22
    add b                                         ; $43fe: $80
    ld [hl+], a                                   ; $43ff: $22
    ld b, b                                       ; $4400: $40
    or e                                          ; $4401: $b3
    inc b                                         ; $4402: $04
    nop                                           ; $4403: $00
    add d                                         ; $4404: $82

jr_06a_4405:
    inc c                                         ; $4405: $0c
    and a                                         ; $4406: $a7
    ret nz                                        ; $4407: $c0

    ld [c], a                                     ; $4408: $e2
    ld c, a                                       ; $4409: $4f
    dec b                                         ; $440a: $05
    or e                                          ; $440b: $b3
    ld b, e                                       ; $440c: $43
    dec hl                                        ; $440d: $2b
    rst $28                                       ; $440e: $ef
    jr nz, jr_06a_4411                            ; $440f: $20 $00

jr_06a_4411:
    xor h                                         ; $4411: $ac
    inc h                                         ; $4412: $24
    ld e, $61                                     ; $4413: $1e $61
    ld d, $e6                                     ; $4415: $16 $e6
    adc [hl]                                      ; $4417: $8e
    ld b, d                                       ; $4418: $42
    add b                                         ; $4419: $80
    inc c                                         ; $441a: $0c
    jr nc, jr_06a_4440                            ; $441b: $30 $23

    ldh a, [rNR52]                                ; $441d: $f0 $26
    pop bc                                        ; $441f: $c1
    and a                                         ; $4420: $a7
    inc bc                                        ; $4421: $03
    ld c, e                                       ; $4422: $4b
    ld c, e                                       ; $4423: $4b
    dec b                                         ; $4424: $05
    jp nz, $e916                                  ; $4425: $c2 $16 $e9

    add b                                         ; $4428: $80

Call_06a_4429:
    rst $20                                       ; $4429: $e7
    ld [$802b], a                                 ; $442a: $ea $2b $80
    rst $20                                       ; $442d: $e7
    ld b, l                                       ; $442e: $45
    ld b, e                                       ; $442f: $43
    ld [bc], a                                    ; $4430: $02
    nop                                           ; $4431: $00
    jp nz, Jump_000_3f4b                          ; $4432: $c2 $4b $3f

    ld b, c                                       ; $4435: $41
    add $62                                       ; $4436: $c6 $62
    ld [hl+], a                                   ; $4438: $22
    add [hl]                                      ; $4439: $86
    inc a                                         ; $443a: $3c
    ld l, b                                       ; $443b: $68
    xor d                                         ; $443c: $aa
    jr z, jr_06a_44a2                             ; $443d: $28 $63

    add b                                         ; $443f: $80

jr_06a_4440:
    nop                                           ; $4440: $00
    ld [hl+], a                                   ; $4441: $22
    ld h, [hl]                                    ; $4442: $66
    add h                                         ; $4443: $84
    add e                                         ; $4444: $83
    pop af                                        ; $4445: $f1
    ld bc, $20b3                                  ; $4446: $01 $b3 $20
    add $65                                       ; $4449: $c6 $65
    ld d, $e6                                     ; $444b: $16 $e6
    ld e, b                                       ; $444d: $58
    call nz, $85b9                                ; $444e: $c4 $b9 $85
    jr nz, jr_06a_447d                            ; $4451: $20 $2a

    ld h, $3a                                     ; $4453: $26 $3a
    and d                                         ; $4455: $a2
    add a                                         ; $4456: $87
    add d                                         ; $4457: $82
    jp $8161                                      ; $4458: $c3 $61 $81


    call nz, Call_06a_5e0b                        ; $445b: $c4 $0b $5e
    and b                                         ; $445e: $a0
    dec [hl]                                      ; $445f: $35
    ld bc, $4000                                  ; $4460: $01 $00 $40
    ld a, [hl+]                                   ; $4463: $2a
    db $fd                                        ; $4464: $fd
    add e                                         ; $4465: $83
    ccf                                           ; $4466: $3f
    push hl                                       ; $4467: $e5
    ld [$a805], a                                 ; $4468: $ea $05 $a8

jr_06a_446b:
    ld hl, $a482                                  ; $446b: $21 $82 $a4
    ld b, c                                       ; $446e: $41
    and $79                                       ; $446f: $e6 $79
    ld b, b                                       ; $4471: $40
    nop                                           ; $4472: $00
    add $83                                       ; $4473: $c6 $83
    nop                                           ; $4475: $00
    dec l                                         ; $4476: $2d
    ld c, c                                       ; $4477: $49
    ld b, l                                       ; $4478: $45
    inc c                                         ; $4479: $0c
    and a                                         ; $447a: $a7
    ld a, [hl-]                                   ; $447b: $3a
    add d                                         ; $447c: $82

jr_06a_447d:
    add e                                         ; $447d: $83
    add a                                         ; $447e: $87
    add h                                         ; $447f: $84
    add d                                         ; $4480: $82

Jump_06a_4481:
    ld bc, $80e0                                  ; $4481: $01 $e0 $80
    inc hl                                        ; $4484: $23
    inc hl                                        ; $4485: $23
    ld d, $ea                                     ; $4486: $16 $ea
    cp $22                                        ; $4488: $fe $22
    ld c, c                                       ; $448a: $49
    ld b, h                                       ; $448b: $44
    add [hl]                                      ; $448c: $86
    ld h, b                                       ; $448d: $60
    and a                                         ; $448e: $a7
    add b                                         ; $448f: $80

Call_06a_4490:
    ei                                            ; $4490: $fb
    ld hl, $040d                                  ; $4491: $21 $0d $04
    dec h                                         ; $4494: $25
    and l                                         ; $4495: $a5
    ret nz                                        ; $4496: $c0

    add sp, $6b                                   ; $4497: $e8 $6b
    ret nz                                        ; $4499: $c0

    ld [c], a                                     ; $449a: $e2
    rst $38                                       ; $449b: $ff
    ld b, $56                                     ; $449c: $06 $56
    push bc                                       ; $449e: $c5
    ret c                                         ; $449f: $d8

    ld b, b                                       ; $44a0: $40
    di                                            ; $44a1: $f3

jr_06a_44a2:
    add l                                         ; $44a2: $85
    ld bc, $416d                                  ; $44a3: $01 $6d $41
    jr nz, @-$49                                  ; $44a6: $20 $b5

    ld b, h                                       ; $44a8: $44
    dec sp                                        ; $44a9: $3b
    ld b, c                                       ; $44aa: $41
    ld b, c                                       ; $44ab: $41
    and $fa                                       ; $44ac: $e6 $fa
    ld bc, $0074                                  ; $44ae: $01 $74 $00
    inc bc                                        ; $44b1: $03
    pop bc                                        ; $44b2: $c1
    nop                                           ; $44b3: $00
    xor c                                         ; $44b4: $a9
    ld bc, $ebc0                                  ; $44b5: $01 $c0 $eb
    cp e                                          ; $44b8: $bb
    add c                                         ; $44b9: $81
    adc c                                         ; $44ba: $89
    ld b, h                                       ; $44bb: $44

jr_06a_44bc:
    ld a, b                                       ; $44bc: $78
    ld b, d                                       ; $44bd: $42
    or l                                          ; $44be: $b5
    ld b, l                                       ; $44bf: $45
    add c                                         ; $44c0: $81
    ld [$01ba], a                                 ; $44c1: $ea $ba $01
    ld bc, $c10b                                  ; $44c4: $01 $0b $c1
    ret nz                                        ; $44c7: $c0

    rst $38                                       ; $44c8: $ff
    jp Jump_000_29e0                              ; $44c9: $c3 $e0 $29


    ld c, a                                       ; $44cc: $4f
    ld b, c                                       ; $44cd: $41
    add hl, bc                                    ; $44ce: $09
    ld b, l                                       ; $44cf: $45
    jr c, jr_06a_4513                             ; $44d0: $38 $41

    or l                                          ; $44d2: $b5
    ld b, [hl]                                    ; $44d3: $46
    db $10                                        ; $44d4: $10
    add e                                         ; $44d5: $83
    add l                                         ; $44d6: $85
    inc bc                                        ; $44d7: $03
    db $e4                                        ; $44d8: $e4
    pop bc                                        ; $44d9: $c1
    and b                                         ; $44da: $a0
    or h                                          ; $44db: $b4
    jp $966d                                      ; $44dc: $c3 $6d $96


    jr nz, jr_06a_44bc                            ; $44df: $20 $db

    ld b, $16                                     ; $44e1: $06 $16
    ld b, c                                       ; $44e3: $41
    db $10                                        ; $44e4: $10
    ret nz                                        ; $44e5: $c0

    and $f9                                       ; $44e6: $e6 $f9
    jr nz, jr_06a_446b                            ; $44e8: $20 $81

    inc hl                                        ; $44ea: $23
    dec bc                                        ; $44eb: $0b
    ld h, l                                       ; $44ec: $65
    ld l, l                                       ; $44ed: $6d
    push bc                                       ; $44ee: $c5
    and $c2                                       ; $44ef: $e6 $c2
    and $03                                       ; $44f1: $e6 $03
    and c                                         ; $44f3: $a1
    nop                                           ; $44f4: $00
    sub d                                         ; $44f5: $92
    push bc                                       ; $44f6: $c5
    dec de                                        ; $44f7: $1b
    add c                                         ; $44f8: $81
    sub [hl]                                      ; $44f9: $96
    and d                                         ; $44fa: $a2
    di                                            ; $44fb: $f3
    add l                                         ; $44fc: $85
    ld b, c                                       ; $44fd: $41
    ld [c], a                                     ; $44fe: $e2
    cp l                                          ; $44ff: $bd
    and l                                         ; $4500: $a5
    add [hl]                                      ; $4501: $86
    jp hl                                         ; $4502: $e9


    call nz, Call_000_0082                        ; $4503: $c4 $82 $00
    pop af                                        ; $4506: $f1
    ld h, l                                       ; $4507: $65
    db $db                                        ; $4508: $db
    dec b                                         ; $4509: $05
    ld l, c                                       ; $450a: $69
    ld b, d                                       ; $450b: $42
    ld a, [c]                                     ; $450c: $f2
    ld bc, $e0c0                                  ; $450d: $01 $c0 $e0
    ld a, e                                       ; $4510: $7b
    ld [hl+], a                                   ; $4511: $22
    ret nz                                        ; $4512: $c0

jr_06a_4513:
    ld [$012b], a                                 ; $4513: $ea $2b $01
    nop                                           ; $4516: $00
    ld c, d                                       ; $4517: $4a
    and e                                         ; $4518: $a3
    ret                                           ; $4519: $c9


    add h                                         ; $451a: $84
    add e                                         ; $451b: $83
    db $e4                                        ; $451c: $e4
    db $db                                        ; $451d: $db
    ld [$a6c7], sp                                ; $451e: $08 $c7 $a6
    ld a, h                                       ; $4521: $7c
    dec b                                         ; $4522: $05
    add b                                         ; $4523: $80
    jp hl                                         ; $4524: $e9


    dec b                                         ; $4525: $05
    ld h, c                                       ; $4526: $61
    nop                                           ; $4527: $00
    ret nz                                        ; $4528: $c0

    db $e4                                        ; $4529: $e4
    ld b, a                                       ; $452a: $47
    add c                                         ; $452b: $81
    ld d, d                                       ; $452c: $52
    ldh [$d8], a                                  ; $452d: $e0 $d8
    ld h, d                                       ; $452f: $62
    ld h, h                                       ; $4530: $64
    and e                                         ; $4531: $a3
    sub d                                         ; $4532: $92
    call nz, Call_000_2708                        ; $4533: $c4 $08 $27
    or a                                          ; $4536: $b7
    add e                                         ; $4537: $83
    db $10                                        ; $4538: $10
    ld b, b                                       ; $4539: $40
    rst $20                                       ; $453a: $e7
    xor a                                         ; $453b: $af
    ld [bc], a                                    ; $453c: $02
    ld c, $41                                     ; $453d: $0e $41
    ld a, [bc]                                    ; $453f: $0a
    ld b, b                                       ; $4540: $40
    dec l                                         ; $4541: $2d
    jp Jump_000_0980                              ; $4542: $c3 $80 $09


    and d                                         ; $4545: $a2
    rst $10                                       ; $4546: $d7
    ld l, b                                       ; $4547: $68
    nop                                           ; $4548: $00
    ld d, d                                       ; $4549: $52
    jp nz, $c853                                  ; $454a: $c2 $53 $c8

    add hl, bc                                    ; $454d: $09
    ld b, d                                       ; $454e: $42
    ret nz                                        ; $454f: $c0

    ld [$41c0], a                                 ; $4550: $ea $c0 $41
    add [hl]                                      ; $4553: $86
    push bc                                       ; $4554: $c5
    ret nz                                        ; $4555: $c0

    push hl                                       ; $4556: $e5
    pop de                                        ; $4557: $d1
    rlca                                          ; $4558: $07
    nop                                           ; $4559: $00
    sub d                                         ; $455a: $92
    jp Jump_000_2508                              ; $455b: $c3 $08 $25


    add b                                         ; $455e: $80
    and $77                                       ; $455f: $e6 $77
    dec b                                         ; $4561: $05
    cpl                                           ; $4562: $2f
    nop                                           ; $4563: $00
    rst $20                                       ; $4564: $e7
    ld bc, $640a                                  ; $4565: $01 $0a $64
    ld c, b                                       ; $4568: $48
    add c                                         ; $4569: $81
    add b                                         ; $456a: $80
    adc $41                                       ; $456b: $ce $41
    inc l                                         ; $456d: $2c
    dec b                                         ; $456e: $05
    add l                                         ; $456f: $85
    ld h, l                                       ; $4570: $65
    ld d, e                                       ; $4571: $53
    add $02                                       ; $4572: $c6 $02
    ld h, e                                       ; $4574: $63
    rst $30                                       ; $4575: $f7
    ld h, [hl]                                    ; $4576: $66
    dec hl                                        ; $4577: $2b
    add [hl]                                      ; $4578: $86
    dec l                                         ; $4579: $2d
    dec de                                        ; $457a: $1b
    ld l, e                                       ; $457b: $6b
    ld c, e                                       ; $457c: $4b
    rst $38                                       ; $457d: $ff

jr_06a_457e:
    pop hl                                        ; $457e: $e1
    ld l, e                                       ; $457f: $6b
    ld c, e                                       ; $4580: $4b
    adc h                                         ; $4581: $8c
    ld h, e                                       ; $4582: $63
    inc l                                         ; $4583: $2c
    rlca                                          ; $4584: $07
    ret nc                                        ; $4585: $d0

    ld l, h                                       ; $4586: $6c
    ld h, b                                       ; $4587: $60
    ld de, $7441                                  ; $4588: $11 $41 $74
    ld b, h                                       ; $458b: $44
    pop hl                                        ; $458c: $e1
    ld h, d                                       ; $458d: $62
    jp $de42                                      ; $458e: $c3 $42 $de


    and c                                         ; $4591: $a1
    dec c                                         ; $4592: $0d
    dec l                                         ; $4593: $2d
    ld b, [hl]                                    ; $4594: $46
    jp $cc00                                      ; $4595: $c3 $00 $cc


    and b                                         ; $4598: $a0
    and b                                         ; $4599: $a0
    ld h, a                                       ; $459a: $67
    inc l                                         ; $459b: $2c
    ld [bc], a                                    ; $459c: $02
    ldh a, [$e8]                                  ; $459d: $f0 $e8
    ld a, e                                       ; $459f: $7b
    ld c, b                                       ; $45a0: $48
    add hl, sp                                    ; $45a1: $39
    ld b, c                                       ; $45a2: $41
    add h                                         ; $45a3: $84
    add d                                         ; $45a4: $82
    jp Jump_000_0043                              ; $45a5: $c3 $43 $00


    pop af                                        ; $45a8: $f1
    ld [c], a                                     ; $45a9: $e2
    ret nc                                        ; $45aa: $d0

    ld b, h                                       ; $45ab: $44
    and b                                         ; $45ac: $a0
    ld l, e                                       ; $45ad: $6b
    ld a, [bc]                                    ; $45ae: $0a
    inc h                                         ; $45af: $24
    ret nz                                        ; $45b0: $c0

    ld [$24f9], a                                 ; $45b1: $ea $f9 $24
    or c                                          ; $45b4: $b1
    ld hl, $6603                                  ; $45b5: $21 $03 $66
    nop                                           ; $45b8: $00
    db $ed                                        ; $45b9: $ed
    add sp, -$40                                  ; $45ba: $e8 $c0
    db $eb                                        ; $45bc: $eb
    cp d                                          ; $45bd: $ba
    ld l, c                                       ; $45be: $69
    adc b                                         ; $45bf: $88
    ld h, $6e                                     ; $45c0: $26 $6e
    inc b                                         ; $45c2: $04
    add e                                         ; $45c3: $83
    ld b, h                                       ; $45c4: $44
    inc de                                        ; $45c5: $13
    add c                                         ; $45c6: $81
    dec [hl]                                      ; $45c7: $35
    ld h, d                                       ; $45c8: $62
    nop                                           ; $45c9: $00
    ld [hl], d                                    ; $45ca: $72
    jr nz, jr_06a_457e                            ; $45cb: $20 $b1

    ld h, c                                       ; $45cd: $61
    ld d, b                                       ; $45ce: $50
    db $ed                                        ; $45cf: $ed
    inc de                                        ; $45d0: $13
    rst $00                                       ; $45d1: $c7
    reti                                          ; $45d2: $d9


    ld [hl+], a                                   ; $45d3: $22
    dec b                                         ; $45d4: $05
    ld [c], a                                     ; $45d5: $e2
    ld l, $03                                     ; $45d6: $2e $03
    ld b, e                                       ; $45d8: $43
    ld b, l                                       ; $45d9: $45
    nop                                           ; $45da: $00
    cp $02                                        ; $45db: $fe $02
    ld a, e                                       ; $45dd: $7b
    ld b, d                                       ; $45de: $42
    ld l, e                                       ; $45df: $6b
    ld [bc], a                                    ; $45e0: $02
    db $10                                        ; $45e1: $10
    db $ec                                        ; $45e2: $ec
    ld d, e                                       ; $45e3: $53
    rst $00                                       ; $45e4: $c7
    rst $10                                       ; $45e5: $d7
    pop hl                                        ; $45e6: $e1
    ccf                                           ; $45e7: $3f
    ld [hl+], a                                   ; $45e8: $22
    db $fd                                        ; $45e9: $fd
    ld bc, $de80                                  ; $45ea: $01 $80 $de
    ld h, d                                       ; $45ed: $62
    cp e                                          ; $45ee: $bb
    ld [bc], a                                    ; $45ef: $02
    cp $e4                                        ; $45f0: $fe $e4
    cp b                                          ; $45f2: $b8
    ld bc, $42d9                                  ; $45f3: $01 $d9 $42
    ret nz                                        ; $45f6: $c0

    xor $ba                                       ; $45f7: $ee $ba
    db $e3                                        ; $45f9: $e3
    ld l, l                                       ; $45fa: $6d
    ld bc, $006d                                  ; $45fb: $01 $6d $00
    nop                                           ; $45fe: $00
    nop                                           ; $45ff: $00
    db $fd                                        ; $4600: $fd

Jump_06a_4601:
    and b                                         ; $4601: $a0
    rst $38                                       ; $4602: $ff
    rst $28                                       ; $4603: $ef
    ret c                                         ; $4604: $d8

    jp nc, $d1d0                                  ; $4605: $d2 $d0 $d1

    ret nc                                        ; $4608: $d0

    jp nc, $d7dd                                  ; $4609: $d2 $dd $d7

    and $e1                                       ; $460c: $e6 $e1
    db $d3                                        ; $460e: $d3
    ret nc                                        ; $460f: $d0

    db $d3                                        ; $4610: $d3
    db $eb                                        ; $4611: $eb
    xor $d8                                       ; $4612: $ee $d8
    push de                                       ; $4614: $d5
    di                                            ; $4615: $f3
    push de                                       ; $4616: $d5
    ret c                                         ; $4617: $d8

    jp z, $b7f0                                   ; $4618: $ca $f0 $b7

    rst $20                                       ; $461b: $e7
    rst $10                                       ; $461c: $d7
    jp nc, $d2d0                                  ; $461d: $d2 $d0 $d2

    sub a                                         ; $4620: $97
    call nc, $dad7                                ; $4621: $d4 $d7 $da
    push af                                       ; $4624: $f5
    ld [c], a                                     ; $4625: $e2
    call nc, $e2b9                                ; $4626: $d4 $b9 $e2
    db $eb                                        ; $4629: $eb
    add sp, -$28                                  ; $462a: $e8 $d8
    sbc a                                         ; $462c: $9f
    push de                                       ; $462d: $d5
    jp nc, $d4d6                                  ; $462e: $d2 $d6 $d4

    sub $bd                                       ; $4631: $d6 $bd
    pop af                                        ; $4633: $f1
    xor b                                         ; $4634: $a8
    and $da                                       ; $4635: $e6 $da
    ld l, $ca                                     ; $4637: $2e $ca
    ldh [$d9], a                                  ; $4639: $e0 $d9
    jp c, $f5dc                                   ; $463b: $da $dc $f5

    ld [c], a                                     ; $463e: $e2
    reti                                          ; $463f: $d9


    cp c                                          ; $4640: $b9
    ld [c], a                                     ; $4641: $e2
    db $eb                                        ; $4642: $eb
    add sp, $17                                   ; $4643: $e8 $17
    db $d3                                        ; $4645: $d3
    ret nc                                        ; $4646: $d0

    sub $a1                                       ; $4647: $d6 $a1
    pop hl                                        ; $4649: $e1
    sub $68                                       ; $464a: $d6 $68
    push hl                                       ; $464c: $e5
    jp $a9e7                                      ; $464d: $c3 $e7 $a9


    ldh [$5d], a                                  ; $4650: $e0 $5d
    jp nc, $e066                                  ; $4652: $d2 $66 $e0

    ld [$dca0], a                                 ; $4655: $ea $a0 $dc
    jp z, $dbe0                                   ; $4658: $ca $e0 $db

    pop bc                                        ; $465b: $c1
    ld [c], a                                     ; $465c: $e2
    res 4, b                                      ; $465d: $cb $a0
    call c, $e0f8                                 ; $465f: $dc $f8 $e0
    ret c                                         ; $4662: $d8

    ld d, c                                       ; $4663: $51
    ld [c], a                                     ; $4664: $e2
    db $eb                                        ; $4665: $eb
    push hl                                       ; $4666: $e5
    db $d3                                        ; $4667: $d3
    ret nc                                        ; $4668: $d0

    db $db                                        ; $4669: $db
    rst $10                                       ; $466a: $d7
    call nc, $e060                                ; $466b: $d4 $60 $e0
    rst $10                                       ; $466e: $d7
    jp nc, $eb3c                                  ; $466f: $d2 $3c $eb

    db $d3                                        ; $4672: $d3
    sub $02                                       ; $4673: $d6 $02
    ld [$d6e1], a                                 ; $4675: $ea $e1 $d6
    ld de, $cae3                                  ; $4678: $11 $e3 $ca
    pop hl                                        ; $467b: $e1
    ret                                           ; $467c: $c9


    db $e4                                        ; $467d: $e4
    ld a, [c]                                     ; $467e: $f2
    jp nz, $e1a9                                  ; $467f: $c2 $a9 $e1

    db $eb                                        ; $4682: $eb
    db $e3                                        ; $4683: $e3
    ld d, $23                                     ; $4684: $16 $23
    pop hl                                        ; $4686: $e1
    db $dd                                        ; $4687: $dd
    reti                                          ; $4688: $d9


    ld a, [hl+]                                   ; $4689: $2a
    ldh [$dd], a                                  ; $468a: $e0 $dd
    rst $20                                       ; $468c: $e7
    add $cd                                       ; $468d: $c6 $cd
    call nz, $e30b                                ; $468f: $c4 $0b $e3
    call nz, $e8ea                                ; $4692: $c4 $ea $e8
    push bc                                       ; $4695: $c5
    jp $f2ea                                      ; $4696: $c3 $ea $f2


    pop bc                                        ; $4699: $c1
    or d                                          ; $469a: $b2
    ret nz                                        ; $469b: $c0

    adc $c6                                       ; $469c: $ce $c6
    jp c, $bfd3                                   ; $469e: $da $d3 $bf

    ret nc                                        ; $46a1: $d0

    ret nc                                        ; $46a2: $d0

    db $dd                                        ; $46a3: $dd
    reti                                          ; $46a4: $d9


    db $dd                                        ; $46a5: $dd
    pop de                                        ; $46a6: $d1
    ret nz                                        ; $46a7: $c0

    db $eb                                        ; $46a8: $eb
    db $d3                                        ; $46a9: $d3
    ld c, e                                       ; $46aa: $4b
    ret nc                                        ; $46ab: $d0

    db $dd                                        ; $46ac: $dd
    dec bc                                        ; $46ad: $0b
    pop hl                                        ; $46ae: $e1
    db $dd                                        ; $46af: $dd
    adc d                                         ; $46b0: $8a
    jp $c06c                                      ; $46b1: $c3 $6c $c0


    db $eb                                        ; $46b4: $eb
    push bc                                       ; $46b5: $c5
    jp nz, $def3                                  ; $46b6: $c2 $f3 $de

    rst $18                                       ; $46b9: $df
    ld a, [c]                                     ; $46ba: $f2
    jp nz, $e150                                  ; $46bb: $c2 $50 $e1

    and b                                         ; $46be: $a0
    db $e4                                        ; $46bf: $e4
    push hl                                       ; $46c0: $e5
    ld [$2e86], a                                 ; $46c1: $ea $86 $2e
    ld [c], a                                     ; $46c4: $e2
    rst $10                                       ; $46c5: $d7
    call nc, $e040                                ; $46c6: $d4 $40 $e0
    sbc a                                         ; $46c9: $9f
    pop bc                                        ; $46ca: $c1
    ld d, h                                       ; $46cb: $54
    jp $e593                                      ; $46cc: $c3 $93 $e5


    pop de                                        ; $46cf: $d1
    ld a, [hl]                                    ; $46d0: $7e
    xor e                                         ; $46d1: $ab
    ldh [$d0], a                                  ; $46d2: $e0 $d0
    ret nc                                        ; $46d4: $d0

    db $d3                                        ; $46d5: $d3
    jp c, $e5e4                                   ; $46d6: $da $e4 $e5

    ld l, $c1                                     ; $46d9: $2e $c1
    sbc e                                         ; $46db: $9b
    db $ec                                        ; $46dc: $ec
    db $ed                                        ; $46dd: $ed
    push bc                                       ; $46de: $c5
    jp nz, $e1e0                                  ; $46df: $c2 $e0 $e1

    rlca                                          ; $46e2: $07
    ld [c], a                                     ; $46e3: $e2
    ld a, d                                       ; $46e4: $7a
    ret nz                                        ; $46e5: $c0

    jp c, $a007                                   ; $46e6: $da $07 $a0

    and $e7                                       ; $46e9: $e6 $e7
    xor d                                         ; $46eb: $aa
    pop hl                                        ; $46ec: $e1
    xor l                                         ; $46ed: $ad
    pop bc                                        ; $46ee: $c1
    ld b, b                                       ; $46ef: $40
    ldh [$9f], a                                  ; $46f0: $e0 $9f
    pop bc                                        ; $46f2: $c1
    dec [hl]                                      ; $46f3: $35
    jp nz, $d239                                  ; $46f4: $c2 $39 $d2

    ld c, l                                       ; $46f7: $4d
    call nz, $e3ac                                ; $46f8: $c4 $ac $e3
    call nc, $dcd7                                ; $46fb: $d4 $d7 $dc
    reti                                          ; $46fe: $d9


    ldh [$98], a                                  ; $46ff: $e0 $98
    ld [c], a                                     ; $4701: $e2
    and $c5                                       ; $4702: $e6 $c5
    jp nz, $e3e2                                  ; $4704: $c2 $e2 $e3

    cp h                                          ; $4707: $bc
    jp nz, $c07a                                  ; $4708: $c2 $7a $c0

    call c, $e8a0                                 ; $470b: $dc $a0 $e8
    ld bc, $aae9                                  ; $470e: $01 $e9 $aa
    pop hl                                        ; $4711: $e1
    xor l                                         ; $4712: $ad
    pop bc                                        ; $4713: $c1
    ldh a, [$e0]                                  ; $4714: $f0 $e0
    sbc a                                         ; $4716: $9f
    jp $a1d7                                      ; $4717: $c3 $d7 $a1


    ld h, d                                       ; $471a: $62
    call nz, $e3ac                                ; $471b: $c4 $ac $e3
    nop                                           ; $471e: $00
    ld d, d                                       ; $471f: $52
    ret nz                                        ; $4720: $c0

    reti                                          ; $4721: $d9


    ldh [$ad], a                                  ; $4722: $e0 $ad
    and d                                         ; $4724: $a2
    ld b, l                                       ; $4725: $45
    pop hl                                        ; $4726: $e1
    ld [hl], $e4                                  ; $4727: $36 $e4
    push bc                                       ; $4729: $c5
    push bc                                       ; $472a: $c5
    call nz, $74a2                                ; $472b: $c4 $a2 $74
    jp nz, $db85                                  ; $472e: $c2 $85 $db

    or h                                          ; $4731: $b4
    push bc                                       ; $4732: $c5
    ret nc                                        ; $4733: $d0

    add b                                         ; $4734: $80
    db $e4                                        ; $4735: $e4
    sbc h                                         ; $4736: $9c
    pop hl                                        ; $4737: $e1
    ld c, e                                       ; $4738: $4b
    ret nz                                        ; $4739: $c0

    ld c, d                                       ; $473a: $4a
    pop bc                                        ; $473b: $c1
    sbc a                                         ; $473c: $9f
    rra                                           ; $473d: $1f
    sbc l                                         ; $473e: $9d
    and d                                         ; $473f: $a2
    sbc l                                         ; $4740: $9d
    sbc l                                         ; $4741: $9d
    sbc a                                         ; $4742: $9f
    ld b, l                                       ; $4743: $45
    ld [c], a                                     ; $4744: $e2
    ld [hl], $e3                                  ; $4745: $36 $e3
    ld l, $e3                                     ; $4747: $2e $e3
    ldh [$ab], a                                  ; $4749: $e0 $ab
    rst $00                                       ; $474b: $c7
    ld h, c                                       ; $474c: $61
    db $e3                                        ; $474d: $e3
    rst $10                                       ; $474e: $d7
    and l                                         ; $474f: $a5
    xor e                                         ; $4750: $ab
    push hl                                       ; $4751: $e5
    xor h                                         ; $4752: $ac
    push hl                                       ; $4753: $e5
    sbc a                                         ; $4754: $9f
    sbc h                                         ; $4755: $9c
    ld a, c                                       ; $4756: $79
    rst $18                                       ; $4757: $df
    ld a, d                                       ; $4758: $7a
    ld a, e                                       ; $4759: $7b
    ld a, h                                       ; $475a: $7c
    sbc h                                         ; $475b: $9c
    sbc a                                         ; $475c: $9f
    ld b, l                                       ; $475d: $45
    pop hl                                        ; $475e: $e1
    sbc a                                         ; $475f: $9f
    sbc l                                         ; $4760: $9d
    nop                                           ; $4761: $00
    or [hl]                                       ; $4762: $b6
    pop hl                                        ; $4763: $e1
    ld l, $e6                                     ; $4764: $2e $e6
    or d                                          ; $4766: $b2
    ret nz                                        ; $4767: $c0

    ld [hl], b                                    ; $4768: $70
    and a                                         ; $4769: $a7
    ld [c], a                                     ; $476a: $e2
    and d                                         ; $476b: $a2
    and c                                         ; $476c: $a1
    and d                                         ; $476d: $a2
    rra                                           ; $476e: $1f
    push bc                                       ; $476f: $c5
    or $82                                        ; $4770: $f6 $82
    cp $c1                                        ; $4772: $fe $c1
    ldh [$7e], a                                  ; $4774: $e0 $7e
    ld c, b                                       ; $4776: $48
    ld c, [hl]                                    ; $4777: $4e
    ld d, e                                       ; $4778: $53
    ld a, a                                       ; $4779: $7f
    sbc h                                         ; $477a: $9c
    sbc a                                         ; $477b: $9f
    ld a, [hl]                                    ; $477c: $7e
    ld a, b                                       ; $477d: $78
    ldh [$9c], a                                  ; $477e: $e0 $9c
    ld b, [hl]                                    ; $4780: $46
    ld b, [hl]                                    ; $4781: $46
    ld b, [hl]                                    ; $4782: $46
    sbc h                                         ; $4783: $9c
    sbc a                                         ; $4784: $9f
    ld l, $e5                                     ; $4785: $2e $e5
    ret nz                                        ; $4787: $c0

    or d                                          ; $4788: $b2
    pop bc                                        ; $4789: $c1
    ld [hl], b                                    ; $478a: $70
    and e                                         ; $478b: $a3
    cp $86                                        ; $478c: $fe $86
    rst $10                                       ; $478e: $d7
    and d                                         ; $478f: $a2
    rra                                           ; $4790: $1f
    push bc                                       ; $4791: $c5
    ld h, c                                       ; $4792: $61
    jp nz, $799e                                  ; $4793: $c2 $9e $79

    rst $38                                       ; $4796: $ff
    ld a, [hl]                                    ; $4797: $7e
    ld b, a                                       ; $4798: $47
    ld d, h                                       ; $4799: $54
    ld d, h                                       ; $479a: $54
    ld d, h                                       ; $479b: $54
    ld b, h                                       ; $479c: $44
    ld a, a                                       ; $479d: $7f
    sbc h                                         ; $479e: $9c
    ld a, [hl]                                    ; $479f: $7e
    ld a, b                                       ; $47a0: $78
    pop hl                                        ; $47a1: $e1
    ld a, e                                       ; $47a2: $7b
    ld a, e                                       ; $47a3: $7b
    ld a, h                                       ; $47a4: $7c
    ld a, l                                       ; $47a5: $7d
    sbc h                                         ; $47a6: $9c
    sbc a                                         ; $47a7: $9f
    ld a, b                                       ; $47a8: $78
    ld [c], a                                     ; $47a9: $e2
    add b                                         ; $47aa: $80
    dec l                                         ; $47ab: $2d
    ldh [$b2], a                                  ; $47ac: $e0 $b2
    ret nz                                        ; $47ae: $c0

    ld [hl], b                                    ; $47af: $70
    and b                                         ; $47b0: $a0
    ld d, [hl]                                    ; $47b1: $56
    and a                                         ; $47b2: $a7
    ld h, $a7                                     ; $47b3: $26 $a7
    rra                                           ; $47b5: $1f
    jp nz, $c20a                                  ; $47b6: $c2 $0a $c2

    sbc [hl]                                      ; $47b9: $9e
    rst $38                                       ; $47ba: $ff
    add b                                         ; $47bb: $80
    ld d, c                                       ; $47bc: $51
    ld d, [hl]                                    ; $47bd: $56
    ld a, [hl+]                                   ; $47be: $2a
    inc l                                         ; $47bf: $2c
    inc l                                         ; $47c0: $2c
    dec l                                         ; $47c1: $2d
    ld b, l                                       ; $47c2: $45
    rst $38                                       ; $47c3: $ff
    adc [hl]                                      ; $47c4: $8e
    ld a, e                                       ; $47c5: $7b
    adc a                                         ; $47c6: $8f
    ld b, h                                       ; $47c7: $44
    ld c, [hl]                                    ; $47c8: $4e
    ld d, e                                       ; $47c9: $53
    ld b, l                                       ; $47ca: $45
    ld b, [hl]                                    ; $47cb: $46
    cp a                                          ; $47cc: $bf
    ld a, a                                       ; $47cd: $7f
    ld a, l                                       ; $47ce: $7d
    sbc h                                         ; $47cf: $9c
    and d                                         ; $47d0: $a2
    or [hl]                                       ; $47d1: $b6
    sub b                                         ; $47d2: $90
    rst $38                                       ; $47d3: $ff
    ldh [$b6], a                                  ; $47d4: $e0 $b6
    pop hl                                        ; $47d6: $e1
    sbc a                                         ; $47d7: $9f
    ld d, [hl]                                    ; $47d8: $56
    or b                                          ; $47d9: $b0
    ld a, [hl-]                                   ; $47da: $3a
    db $e4                                        ; $47db: $e4
    rra                                           ; $47dc: $1f
    jp nz, $c20a                                  ; $47dd: $c2 $0a $c2

    sbc [hl]                                      ; $47e0: $9e
    add b                                         ; $47e1: $80
    ld b, [hl]                                    ; $47e2: $46
    rst $38                                       ; $47e3: $ff
    ld d, b                                       ; $47e4: $50
    ld a, [hl+]                                   ; $47e5: $2a
    jr nz, jr_06a_4808                            ; $47e6: $20 $20

    add hl, hl                                    ; $47e8: $29
    dec a                                         ; $47e9: $3d
    scf                                           ; $47ea: $37
    ld b, l                                       ; $47eb: $45
    rst $38                                       ; $47ec: $ff
    ld b, l                                       ; $47ed: $45
    ld b, e                                       ; $47ee: $43
    ld d, h                                       ; $47ef: $54
    ld h, c                                       ; $47f0: $61
    ld d, h                                       ; $47f1: $54
    ld b, e                                       ; $47f2: $43
    ld b, e                                       ; $47f3: $43
    ld a, a                                       ; $47f4: $7f
    cpl                                           ; $47f5: $2f
    ld a, l                                       ; $47f6: $7d
    ld b, [hl]                                    ; $47f7: $46
    sub b                                         ; $47f8: $90
    jp $e5bf                                      ; $47f9: $c3 $bf $e5


    db $eb                                        ; $47fc: $eb
    ld d, [hl]                                    ; $47fd: $56
    or c                                          ; $47fe: $b1
    rra                                           ; $47ff: $1f
    call nz, $f6fc                                ; $4800: $c4 $fc $f6
    ld h, d                                       ; $4803: $62
    add b                                         ; $4804: $80
    ldh [$5f], a                                  ; $4805: $e0 $5f
    ld d, d                                       ; $4807: $52

jr_06a_4808:
    ld a, [hl+]                                   ; $4808: $2a
    ld h, $24                                     ; $4809: $26 $24
    dec [hl]                                      ; $480b: $35
    rst $38                                       ; $480c: $ff
    dec [hl]                                      ; $480d: $35
    jr c, jr_06a_4848                             ; $480e: $38 $38

    jr c, @+$39                                   ; $4810: $38 $37

    ccf                                           ; $4812: $3f
    ld e, e                                       ; $4813: $5b
    ld c, a                                       ; $4814: $4f
    cp a                                          ; $4815: $bf
    ld d, [hl]                                    ; $4816: $56
    ld b, l                                       ; $4817: $45
    add c                                         ; $4818: $81
    ld b, [hl]                                    ; $4819: $46
    sub b                                         ; $481a: $90
    call nz, $e0bf                                ; $481b: $c4 $bf $e0
    jp $90e3                                      ; $481e: $c3 $e3 $90


    and c                                         ; $4821: $a1
    xor c                                         ; $4822: $a9
    and c                                         ; $4823: $a1
    ld d, [hl]                                    ; $4824: $56
    xor [hl]                                      ; $4825: $ae
    sbc c                                         ; $4826: $99
    adc c                                         ; $4827: $89
    sbc $df                                       ; $4828: $de $df
    and c                                         ; $482a: $a1
    rst $38                                       ; $482b: $ff
    add d                                         ; $482c: $82
    add e                                         ; $482d: $83
    ld d, e                                       ; $482e: $53
    ld e, c                                       ; $482f: $59
    ld b, e                                       ; $4830: $43
    ld b, c                                       ; $4831: $41
    ccf                                           ; $4832: $3f
    scf                                           ; $4833: $37
    rst $38                                       ; $4834: $ff
    jr c, jr_06a_486f                             ; $4835: $38 $38

    dec a                                         ; $4837: $3d
    jr c, jr_06a_486f                             ; $4838: $38 $35

    dec [hl]                                      ; $483a: $35
    ld [hl], $55                                  ; $483b: $36 $55
    rst $38                                       ; $483d: $ff
    ld h, c                                       ; $483e: $61
    ld d, l                                       ; $483f: $55
    add c                                         ; $4840: $81
    sub c                                         ; $4841: $91
    jp $c490                                      ; $4842: $c3 $90 $c4


    sub b                                         ; $4845: $90
    ldh [$fd], a                                  ; $4846: $e0 $fd

jr_06a_4848:
    ldh [$3e], a                                  ; $4848: $e0 $3e
    ld [c], a                                     ; $484a: $e2
    ld d, [hl]                                    ; $484b: $56
    and a                                         ; $484c: $a7
    sbc [hl]                                      ; $484d: $9e
    add [hl]                                      ; $484e: $86
    ret nc                                        ; $484f: $d0

    add a                                         ; $4850: $87
    ldh [$e1], a                                  ; $4851: $e0 $e1
    sbc a                                         ; $4853: $9f
    rst $30                                       ; $4854: $f7
    sbc h                                         ; $4855: $9c
    add a                                         ; $4856: $87
    adc b                                         ; $4857: $88
    rst $38                                       ; $4858: $ff
    ldh [$89], a                                  ; $4859: $e0 $89
    add e                                         ; $485b: $83
    ld b, l                                       ; $485c: $45
    ld b, l                                       ; $485d: $45
    rst $38                                       ; $485e: $ff
    xor [hl]                                      ; $485f: $ae
    ld b, l                                       ; $4860: $45
    ld a, [hl-]                                   ; $4861: $3a
    dec [hl]                                      ; $4862: $35
    dec [hl]                                      ; $4863: $35
    ld b, b                                       ; $4864: $40
    ld e, [hl]                                    ; $4865: $5e
    ld d, l                                       ; $4866: $55
    db $fd                                        ; $4867: $fd
    add c                                         ; $4868: $81
    jp nz, $91e0                                  ; $4869: $c2 $e0 $91

    ld b, [hl]                                    ; $486c: $46
    ld b, [hl]                                    ; $486d: $46
    sub c                                         ; $486e: $91

jr_06a_486f:
    sub b                                         ; $486f: $90
    sub b                                         ; $4870: $90
    pop bc                                        ; $4871: $c1
    sbc [hl]                                      ; $4872: $9e
    ld d, [hl]                                    ; $4873: $56
    xor d                                         ; $4874: $aa
    ld h, e                                       ; $4875: $63
    ld l, b                                       ; $4876: $68
    sub l                                         ; $4877: $95
    ld h, l                                       ; $4878: $65
    ld d, b                                       ; $4879: $50
    and b                                         ; $487a: $a0
    sub h                                         ; $487b: $94
    jp nz, $9c9d                                  ; $487c: $c2 $9d $9c

    rst $38                                       ; $487f: $ff
    add a                                         ; $4880: $87
    adc c                                         ; $4881: $89
    add e                                         ; $4882: $83
    xor a                                         ; $4883: $af
    ld b, [hl]                                    ; $4884: $46
    add hl, sp                                    ; $4885: $39
    dec [hl]                                      ; $4886: $35
    ld [hl], $ef                                  ; $4887: $36 $ef
    ld b, l                                       ; $4889: $45
    ld b, e                                       ; $488a: $43
    add e                                         ; $488b: $83
    add h                                         ; $488c: $84
    jp nz, $79e0                                  ; $488d: $c2 $e0 $79

    ld a, d                                       ; $4890: $7a
    ld a, h                                       ; $4891: $7c
    add e                                         ; $4892: $83
    ld a, l                                       ; $4893: $7d
    sub c                                         ; $4894: $91
    ret nz                                        ; $4895: $c0

    ld [c], a                                     ; $4896: $e2
    ld d, [hl]                                    ; $4897: $56
    and a                                         ; $4898: $a7
    di                                            ; $4899: $f3
    xor h                                         ; $489a: $ac
    sub l                                         ; $489b: $95
    ld h, a                                       ; $489c: $67
    cp d                                          ; $489d: $ba
    and c                                         ; $489e: $a1
    sbc l                                         ; $489f: $9d
    rst $38                                       ; $48a0: $ff
    sbc h                                         ; $48a1: $9c
    adc e                                         ; $48a2: $8b
    ld b, [hl]                                    ; $48a3: $46
    xor [hl]                                      ; $48a4: $ae
    ld b, l                                       ; $48a5: $45
    ccf                                           ; $48a6: $3f
    ld b, l                                       ; $48a7: $45
    add e                                         ; $48a8: $83
    or a                                          ; $48a9: $b7
    adc c                                         ; $48aa: $89
    add a                                         ; $48ab: $87
    add l                                         ; $48ac: $85
    jp nz, $8fe0                                  ; $48ad: $c2 $e0 $8f

    ld d, b                                       ; $48b0: $50
    ld sp, hl                                     ; $48b1: $f9
    ret nz                                        ; $48b2: $c0

    ld b, [hl]                                    ; $48b3: $46
    add c                                         ; $48b4: $81
    sbc [hl]                                      ; $48b5: $9e
    ld a, e                                       ; $48b6: $7b
    add b                                         ; $48b7: $80
    ld d, [hl]                                    ; $48b8: $56
    xor b                                         ; $48b9: $a8
    adc $ea                                       ; $48ba: $ce $ea
    dec de                                        ; $48bc: $1b
    xor b                                         ; $48bd: $a8
    ld a, l                                       ; $48be: $7d
    add d                                         ; $48bf: $82
    rst $30                                       ; $48c0: $f7
    ret nz                                        ; $48c1: $c0

    xor a                                         ; $48c2: $af
    rst $38                                       ; $48c3: $ff

jr_06a_48c4:
    add e                                         ; $48c4: $83
    adc c                                         ; $48c5: $89
    adc b                                         ; $48c6: $88
    add a                                         ; $48c7: $87
    add l                                         ; $48c8: $85
    ld b, l                                       ; $48c9: $45
    scf                                           ; $48ca: $37
    dec a                                         ; $48cb: $3d
    dec de                                        ; $48cc: $1b
    add b                                         ; $48cd: $80
    scf                                           ; $48ce: $37
    xor e                                         ; $48cf: $ab
    ret nz                                        ; $48d0: $c0

    adc h                                         ; $48d1: $8c
    ld a, l                                       ; $48d2: $7d
    ret nz                                        ; $48d3: $c0

    ldh [$7b], a                                  ; $48d4: $e0 $7b
    add c                                         ; $48d6: $81
    ld [bc], a                                    ; $48d7: $02
    and l                                         ; $48d8: $a5
    jr jr_06a_48c4                                ; $48d9: $18 $e9

    adc b                                         ; $48db: $88
    call z, $55e4                                 ; $48dc: $cc $e4 $55
    ld h, h                                       ; $48df: $64
    and $e7                                       ; $48e0: $e6 $e7
    ld d, $80                                     ; $48e2: $16 $80
    rst $30                                       ; $48e4: $f7
    pop bc                                        ; $48e5: $c1
    add l                                         ; $48e6: $85
    ldh [rIE], a                                  ; $48e7: $e0 $ff
    ld b, [hl]                                    ; $48e9: $46
    ld b, l                                       ; $48ea: $45
    ld [hl], $ac                                  ; $48eb: $36 $ac
    dec [hl]                                      ; $48ed: $35
    ld l, c                                       ; $48ee: $69
    dec [hl]                                      ; $48ef: $35
    add hl, sp                                    ; $48f0: $39
    adc a                                         ; $48f1: $8f
    ld c, e                                       ; $48f2: $4b
    ld e, b                                       ; $48f3: $58
    ld b, h                                       ; $48f4: $44
    add c                                         ; $48f5: $81
    ld [hl], h                                    ; $48f6: $74
    and e                                         ; $48f7: $a3
    ld h, d                                       ; $48f8: $62
    add e                                         ; $48f9: $83
    call nz, $a0cb                                ; $48fa: $c4 $cb $a0
    pop bc                                        ; $48fd: $c1
    db $eb                                        ; $48fe: $eb
    ld [hl+], a                                   ; $48ff: $22
    add c                                         ; $4900: $81
    and l                                         ; $4901: $a5
    ld b, b                                       ; $4902: $40
    sub a                                         ; $4903: $97
    ld h, d                                       ; $4904: $62
    ld a, l                                       ; $4905: $7d
    add e                                         ; $4906: $83
    rst $30                                       ; $4907: $f7
    call nz, Call_000_3645                        ; $4908: $c4 $45 $36
    rra                                           ; $490b: $1f
    xor l                                         ; $490c: $ad
    ld h, d                                       ; $490d: $62
    halt                                          ; $490e: $76
    dec [hl]                                      ; $490f: $35
    ld a, [hl-]                                   ; $4910: $3a
    ld a, b                                       ; $4911: $78
    ret nz                                        ; $4912: $c0

    ld a, a                                       ; $4913: $7f
    ldh [$74], a                                  ; $4914: $e0 $74
    and b                                         ; $4916: $a0
    ldh [$65], a                                  ; $4917: $e0 $65
    add e                                         ; $4919: $83
    inc c                                         ; $491a: $0c
    xor d                                         ; $491b: $aa
    pop de                                        ; $491c: $d1
    ld h, c                                       ; $491d: $61
    ld [hl+], a                                   ; $491e: $22
    add b                                         ; $491f: $80
    ld e, $52                                     ; $4920: $1e $52
    sbc a                                         ; $4922: $9f
    sbc h                                         ; $4923: $9c
    ld b, l                                       ; $4924: $45
    rst $38                                       ; $4925: $ff
    scf                                           ; $4926: $37
    add b                                         ; $4927: $80
    dec a                                         ; $4928: $3d
    jr c, jr_06a_4966                             ; $4929: $38 $3b

    ld b, b                                       ; $492b: $40
    ld c, l                                       ; $492c: $4d
    ld e, d                                       ; $492d: $5a
    ld c, $75                                     ; $492e: $0e $75
    and b                                         ; $4930: $a0
    ld b, [hl]                                    ; $4931: $46
    or [hl]                                       ; $4932: $b6
    and d                                         ; $4933: $a2
    ld a, d                                       ; $4934: $7a
    and b                                         ; $4935: $a0
    xor d                                         ; $4936: $aa

jr_06a_4937:
    ld h, b                                       ; $4937: $60
    dec hl                                        ; $4938: $2b
    ld l, h                                       ; $4939: $6c
    ld e, $54                                     ; $493a: $1e $54
    db $fd                                        ; $493c: $fd
    ld [$6040], a                                 ; $493d: $ea $40 $60
    and c                                         ; $4940: $a1
    ld b, [hl]                                    ; $4941: $46
    ld a, c                                       ; $4942: $79
    adc l                                         ; $4943: $8d
    xor [hl]                                      ; $4944: $ae
    ld b, l                                       ; $4945: $45
    rra                                           ; $4946: $1f
    ld b, e                                       ; $4947: $43
    ld b, h                                       ; $4948: $44
    ld e, [hl]                                    ; $4949: $5e
    ld d, l                                       ; $494a: $55
    ld b, e                                       ; $494b: $43
    or [hl]                                       ; $494c: $b6
    and c                                         ; $494d: $a1
    add hl, sp                                    ; $494e: $39
    and c                                         ; $494f: $a1
    xor d                                         ; $4950: $aa

jr_06a_4951:
    ld h, b                                       ; $4951: $60
    ldh a, [$0c]                                  ; $4952: $f0 $0c
    xor b                                         ; $4954: $a8
    or b                                          ; $4955: $b0
    ld h, $1e                                     ; $4956: $26 $1e
    ld d, b                                       ; $4958: $50
    ldh a, [$a1]                                  ; $4959: $f0 $a1
    ld a, c                                       ; $495b: $79
    ld a, [hl]                                    ; $495c: $7e
    xor [hl]                                      ; $495d: $ae
    xor a                                         ; $495e: $af
    ccf                                           ; $495f: $3f
    ld b, l                                       ; $4960: $45
    ld b, e                                       ; $4961: $43
    ccf                                           ; $4962: $3f
    ld e, e                                       ; $4963: $5b
    ld c, d                                       ; $4964: $4a
    ld c, h                                       ; $4965: $4c

jr_06a_4966:
    cp l                                          ; $4966: $bd
    ret nz                                        ; $4967: $c0

    ei                                            ; $4968: $fb
    and b                                         ; $4969: $a0
    ldh a, [$f8]                                  ; $496a: $f0 $f8
    add d                                         ; $496c: $82
    inc c                                         ; $496d: $0c
    and a                                         ; $496e: $a7
    or d                                          ; $496f: $b2
    add a                                         ; $4970: $87
    ld e, $50                                     ; $4971: $1e $50
    ld [c], a                                     ; $4973: $e2
    db $e3                                        ; $4974: $e3
    sbc [hl]                                      ; $4975: $9e
    ld b, [hl]                                    ; $4976: $46
    cp $78                                        ; $4977: $fe $78
    ret nz                                        ; $4979: $c0

    ld b, l                                       ; $497a: $45
    ld [hl], $3b                                  ; $497b: $36 $3b
    dec [hl]                                      ; $497d: $35
    ld [hl], $4a                                  ; $497e: $36 $4a
    ld h, c                                       ; $4980: $61
    daa                                           ; $4981: $27
    ld e, b                                       ; $4982: $58
    ld b, h                                       ; $4983: $44
    ld a, a                                       ; $4984: $7f
    cp a                                          ; $4985: $bf
    pop hl                                        ; $4986: $e1
    cp d                                          ; $4987: $ba
    and b                                         ; $4988: $a0
    db $eb                                        ; $4989: $eb
    inc c                                         ; $498a: $0c
    and a                                         ; $498b: $a7
    ld [$b848], sp                                ; $498c: $08 $48 $b8
    add hl, bc                                    ; $498f: $09
    ld b, d                                       ; $4990: $42
    add a                                         ; $4991: $87
    ld b, b                                       ; $4992: $40
    ld e, $49                                     ; $4993: $1e $49
    sbc [hl]                                      ; $4995: $9e
    sub c                                         ; $4996: $91
    add l                                         ; $4997: $85
    ld l, a                                       ; $4998: $6f
    and b                                         ; $4999: $a0
    ld [hl], c                                    ; $499a: $71
    rst $38                                       ; $499b: $ff
    ld [hl], d                                    ; $499c: $72
    ld l, h                                       ; $499d: $6c
    dec [hl]                                      ; $499e: $35
    add hl, sp                                    ; $499f: $39
    ld d, [hl]                                    ; $49a0: $56
    ld h, c                                       ; $49a1: $61
    ld d, l                                       ; $49a2: $55
    ld b, [hl]                                    ; $49a3: $46
    ld [bc], a                                    ; $49a4: $02
    ld a, $e1                                     ; $49a5: $3e $e1
    sbc [hl]                                      ; $49a7: $9e
    ld hl, sp+$45                                 ; $49a8: $f8 $45
    inc a                                         ; $49aa: $3c
    ld h, [hl]                                    ; $49ab: $66
    ld [$ca42], sp                                ; $49ac: $08 $42 $ca
    ld b, e                                       ; $49af: $43
    add a                                         ; $49b0: $87
    ld b, c                                       ; $49b1: $41
    ld e, $47                                     ; $49b2: $1e $47
    ld a, h                                       ; $49b4: $7c
    jr nc, jr_06a_4937                            ; $49b5: $30 $80

    rst $00                                       ; $49b7: $c7
    add b                                         ; $49b8: $80
    sub c                                         ; $49b9: $91
    ld b, b                                       ; $49ba: $40
    xor h                                         ; $49bb: $ac
    ld l, [hl]                                    ; $49bc: $6e
    ld [hl], h                                    ; $49bd: $74
    ld a, l                                       ; $49be: $7d
    ret nz                                        ; $49bf: $c0

    ld bc, $c057                                  ; $49c0: $01 $57 $c0
    push hl                                       ; $49c3: $e5
    adc h                                         ; $49c4: $8c
    ld bc, $653a                                  ; $49c5: $01 $3a $65
    ld [$364a], sp                                ; $49c8: $08 $4a $36
    ld h, e                                       ; $49cb: $63
    ld e, $46                                     ; $49cc: $1e $46
    jr nc, jr_06a_4951                            ; $49ce: $30 $81

    cp a                                          ; $49d0: $bf
    sub b                                         ; $49d1: $90
    jp $90c4                                      ; $49d2: $c3 $c4 $90


    ld b, d                                       ; $49d5: $42
    xor l                                         ; $49d6: $ad
    db $fd                                        ; $49d7: $fd
    and b                                         ; $49d8: $a0
    ld [hl], $1f                                  ; $49d9: $36 $1f
    ld b, e                                       ; $49db: $43
    ld b, e                                       ; $49dc: $43
    ld b, l                                       ; $49dd: $45
    add e                                         ; $49de: $83
    add h                                         ; $49df: $84
    add b                                         ; $49e0: $80
    ld [c], a                                     ; $49e1: $e2
    cp $44                                        ; $49e2: $fe $44
    sbc l                                         ; $49e4: $9d
    ld b, d                                       ; $49e5: $42
    ld l, b                                       ; $49e6: $68
    or d                                          ; $49e7: $b2
    add [hl]                                      ; $49e8: $86
    ld d, c                                       ; $49e9: $51
    rlca                                          ; $49ea: $07
    ld e, $49                                     ; $49eb: $1e $49
    sbc [hl]                                      ; $49ed: $9e
    jp Jump_06a_4481                              ; $49ee: $c3 $81 $44


    inc a                                         ; $49f1: $3c
    db $fd                                        ; $49f2: $fd
    and b                                         ; $49f3: $a0
    call Call_000_3539                            ; $49f4: $cd $39 $35
    add b                                         ; $49f7: $80
    adc d                                         ; $49f8: $8a
    add l                                         ; $49f9: $85
    cp d                                          ; $49fa: $ba
    add h                                         ; $49fb: $84
    jr nc, jr_06a_4a63                            ; $49fc: $30 $65

    and b                                         ; $49fe: $a0
    and b                                         ; $49ff: $a0
    and b                                         ; $4a00: $a0
    or d                                          ; $4a01: $b2
    add [hl]                                      ; $4a02: $86
    ld c, c                                       ; $4a03: $49
    and c                                         ; $4a04: $a1
    ld d, c                                       ; $4a05: $51
    inc bc                                        ; $4a06: $03
    ld e, $48                                     ; $4a07: $1e $48
    ld b, b                                       ; $4a09: $40
    ldh [$91], a                                  ; $4a0a: $e0 $91
    or b                                          ; $4a0c: $b0
    ld b, b                                       ; $4a0d: $40
    ld h, h                                       ; $4a0e: $64
    inc bc                                        ; $4a0f: $03
    ld a, b                                       ; $4a10: $78
    dec [hl]                                      ; $4a11: $35
    ret nz                                        ; $4a12: $c0

    ldh [$35], a                                  ; $4a13: $e0 $35
    add b                                         ; $4a15: $80
    ccf                                           ; $4a16: $3f
    jp $4437                                      ; $4a17: $c3 $37 $44


    ld [c], a                                     ; $4a1a: $e2
    ld [hl+], a                                   ; $4a1b: $22
    or d                                          ; $4a1c: $b2
    add [hl]                                      ; $4a1d: $86

jr_06a_4a1e:
    ldh a, [$9f]                                  ; $4a1e: $f0 $9f
    ld hl, $0151                                  ; $4a20: $21 $51 $01
    rlca                                          ; $4a23: $07
    ld b, d                                       ; $4a24: $42
    ld e, $44                                     ; $4a25: $1e $44
    sbc a                                         ; $4a27: $9f
    and d                                         ; $4a28: $a2
    or [hl]                                       ; $4a29: $b6
    sub c                                         ; $4a2a: $91
    ld e, a                                       ; $4a2b: $5f
    ld a, c                                       ; $4a2c: $79
    ld a, [hl]                                    ; $4a2d: $7e
    ld b, l                                       ; $4a2e: $45
    ld [hl], $35                                  ; $4a2f: $36 $35
    rst $38                                       ; $4a31: $ff
    ldh [rLCDC], a                                ; $4a32: $e0 $40
    ret nz                                        ; $4a34: $c0

    db $e3                                        ; $4a35: $e3
    inc bc                                        ; $4a36: $03
    or [hl]                                       ; $4a37: $b6
    sbc a                                         ; $4a38: $9f
    ld e, [hl]                                    ; $4a39: $5e
    jr nz, jr_06a_4a92                            ; $4a3a: $20 $56

    and l                                         ; $4a3c: $a5
    ld [hl], c                                    ; $4a3d: $71
    inc hl                                        ; $4a3e: $23
    ld [$9f43], sp                                ; $4a3f: $08 $43 $9f
    ld hl, $0151                                  ; $4a42: $21 $51 $01
    ld c, b                                       ; $4a45: $48
    ld c, h                                       ; $4a46: $4c
    ld hl, $2158                                  ; $4a47: $21 $58 $21
    scf                                           ; $4a4a: $37
    nop                                           ; $4a4b: $00
    sbc a                                         ; $4a4c: $9f
    rlca                                          ; $4a4d: $07
    ld h, b                                       ; $4a4e: $60
    ld b, b                                       ; $4a4f: $40
    ret nz                                        ; $4a50: $c0

    add hl, sp                                    ; $4a51: $39
    pop bc                                        ; $4a52: $c1
    pop hl                                        ; $4a53: $e1
    inc sp                                        ; $4a54: $33
    inc a                                         ; $4a55: $3c
    ld b, h                                       ; $4a56: $44
    db $fd                                        ; $4a57: $fd
    add d                                         ; $4a58: $82
    ld a, e                                       ; $4a59: $7b
    ld h, b                                       ; $4a5a: $60
    and $e7                                       ; $4a5b: $e6 $e7
    ld d, [hl]                                    ; $4a5d: $56
    and a                                         ; $4a5e: $a7
    or d                                          ; $4a5f: $b2
    adc b                                         ; $4a60: $88
    jr nz, @+$45                                  ; $4a61: $20 $43

jr_06a_4a63:
    add l                                         ; $4a63: $85
    ld c, h                                       ; $4a64: $4c
    jr nz, @+$5a                                  ; $4a65: $20 $58

    ld hl, $00f8                                  ; $4a67: $21 $f8 $00
    pop bc                                        ; $4a6a: $c1
    pop hl                                        ; $4a6b: $e1
    jp $c040                                      ; $4a6c: $c3 $40 $c0


    ld b, d                                       ; $4a6f: $42
    pop bc                                        ; $4a70: $c1
    ld a, [bc]                                    ; $4a71: $0a
    or [hl]                                       ; $4a72: $b6
    ld h, c                                       ; $4a73: $61
    ld d, d                                       ; $4a74: $52
    pop bc                                        ; $4a75: $c1
    pop bc                                        ; $4a76: $c1
    sbc [hl]                                      ; $4a77: $9e
    scf                                           ; $4a78: $37
    jr nz, jr_06a_4ad1                            ; $4a79: $20 $56

    and l                                         ; $4a7b: $a5
    ld a, $0a                                     ; $4a7c: $3e $0a
    inc c                                         ; $4a7e: $0c
    and e                                         ; $4a7f: $a3
    jr nz, jr_06a_4a1e                            ; $4a80: $20 $9c

    ld bc, $6268                                  ; $4a82: $01 $68 $62
    pop de                                        ; $4a85: $d1
    nop                                           ; $4a86: $00
    ld b, h                                       ; $4a87: $44
    pop bc                                        ; $4a88: $c1
    add l                                         ; $4a89: $85
    ld h, c                                       ; $4a8a: $61
    add hl, sp                                    ; $4a8b: $39
    ld b, d                                       ; $4a8c: $42
    ret nz                                        ; $4a8d: $c0

    halt                                          ; $4a8e: $76
    ld h, b                                       ; $4a8f: $60
    rlca                                          ; $4a90: $07
    ld e, e                                       ; $4a91: $5b

jr_06a_4a92:
    add e                                         ; $4a92: $83
    add [hl]                                      ; $4a93: $86
    pop bc                                        ; $4a94: $c1
    ret nz                                        ; $4a95: $c0

    cp h                                          ; $4a96: $bc
    ld h, d                                       ; $4a97: $62
    ld d, [hl]                                    ; $4a98: $56
    and h                                         ; $4a99: $a4
    jp nz, Jump_000_0ce9                          ; $4a9a: $c2 $e9 $0c

    and l                                         ; $4a9d: $a5
    add sp, -$50                                  ; $4a9e: $e8 $b0
    dec h                                         ; $4aa0: $25
    pop de                                        ; $4aa1: $d1
    nop                                           ; $4aa2: $00
    inc b                                         ; $4aa3: $04
    ret nz                                        ; $4aa4: $c0

    call nz, Call_06a_4085                        ; $4aa5: $c4 $85 $40
    ld b, [hl]                                    ; $4aa8: $46
    ld b, b                                       ; $4aa9: $40
    dec [hl]                                      ; $4aaa: $35
    inc hl                                        ; $4aab: $23
    ld l, e                                       ; $4aac: $6b
    ld l, h                                       ; $4aad: $6c
    ld b, b                                       ; $4aae: $40
    ldh [$c1], a                                  ; $4aaf: $e0 $c1
    ld [c], a                                     ; $4ab1: $e2
    ld a, [hl-]                                   ; $4ab2: $3a
    ld b, b                                       ; $4ab3: $40
    ld [$a656], a                                 ; $4ab4: $ea $56 $a6
    jr z, jr_06a_4ae2                             ; $4ab7: $28 $29

    ldh a, [$0c]                                  ; $4ab9: $f0 $0c
    and [hl]                                      ; $4abb: $a6
    and h                                         ; $4abc: $a4
    add a                                         ; $4abd: $87
    ld bc, $04e1                                  ; $4abe: $01 $e1 $04
    ld h, c                                       ; $4ac1: $61
    ld b, d                                       ; $4ac2: $42
    dec [hl]                                      ; $4ac3: $35
    ld l, [hl]                                    ; $4ac4: $6e
    ld [hl], b                                    ; $4ac5: $70
    inc bc                                        ; $4ac6: $03
    ld [hl], c                                    ; $4ac7: $71
    ld [hl], c                                    ; $4ac8: $71
    or l                                          ; $4ac9: $b5

jr_06a_4aca:
    ld h, b                                       ; $4aca: $60
    pop bc                                        ; $4acb: $c1
    ld [c], a                                     ; $4acc: $e2
    sub h                                         ; $4acd: $94
    ld h, a                                       ; $4ace: $67
    ret nz                                        ; $4acf: $c0

    ld c, b                                       ; $4ad0: $48

jr_06a_4ad1:
    inc c                                         ; $4ad1: $0c
    xor b                                         ; $4ad2: $a8
    or b                                          ; $4ad3: $b0
    ld h, $7b                                     ; $4ad4: $26 $7b
    sbc $df                                       ; $4ad6: $de $df
    cp a                                          ; $4ad8: $bf
    ld [c], a                                     ; $4ad9: $e2
    sub b                                         ; $4ada: $90
    sub b                                         ; $4adb: $90
    ld b, h                                       ; $4adc: $44
    inc a                                         ; $4add: $3c
    ret nz                                        ; $4ade: $c0

    jp nz, Jump_06a_4601                          ; $4adf: $c2 $01 $46

jr_06a_4ae2:
    add e                                         ; $4ae2: $83
    pop bc                                        ; $4ae3: $c1
    ld d, $e9                                     ; $4ae4: $16 $e9
    ret nz                                        ; $4ae6: $c0

    ld c, b                                       ; $4ae7: $48
    inc c                                         ; $4ae8: $0c
    xor c                                         ; $4ae9: $a9
    or b                                          ; $4aea: $b0
    dec h                                         ; $4aeb: $25
    pop hl                                        ; $4aec: $e1
    and b                                         ; $4aed: $a0
    ld b, d                                       ; $4aee: $42
    and b                                         ; $4aef: $a0
    add hl, sp                                    ; $4af0: $39
    sub b                                         ; $4af1: $90
    add b                                         ; $4af2: $80
    pop hl                                        ; $4af3: $e1
    ld b, b                                       ; $4af4: $40
    ret nz                                        ; $4af5: $c0

jr_06a_4af6:
    ld a, [hl-]                                   ; $4af6: $3a
    ld b, l                                       ; $4af7: $45
    sbc h                                         ; $4af8: $9c
    ld l, c                                       ; $4af9: $69
    ld bc, $e916                                  ; $4afa: $01 $16 $e9
    db $10                                        ; $4afd: $10
    or e                                          ; $4afe: $b3
    ld [$a80c], sp                                ; $4aff: $08 $0c $a8
    or b                                          ; $4b02: $b0
    ld h, $e1                                     ; $4b03: $26 $e1

Jump_06a_4b05:
    and b                                         ; $4b05: $a0

Jump_06a_4b06:
    and c                                         ; $4b06: $a1
    add [hl]                                      ; $4b07: $86
    jr nz, jr_06a_4aca                            ; $4b08: $20 $c0

    ret nz                                        ; $4b0a: $c0

    ld bc, $07c1                                  ; $4b0b: $01 $c1 $07
    add hl, sp                                    ; $4b0e: $39
    ld b, [hl]                                    ; $4b0f: $46
    and c                                         ; $4b10: $a1
    ld a, [hl]                                    ; $4b11: $7e
    ld [bc], a                                    ; $4b12: $02
    ld [hl+], a                                   ; $4b13: $22
    adc b                                         ; $4b14: $88
    ret nz                                        ; $4b15: $c0

    ld c, b                                       ; $4b16: $48
    inc c                                         ; $4b17: $0c
    and a                                         ; $4b18: $a7
    ld a, l                                       ; $4b19: $7d
    jp nz, $e604                                  ; $4b1a: $c2 $04 $e6

    ld b, l                                       ; $4b1d: $45
    ld b, d                                       ; $4b1e: $42
    and c                                         ; $4b1f: $a1
    ld b, [hl]                                    ; $4b20: $46
    ld sp, hl                                     ; $4b21: $f9
    ld hl, $e081                                  ; $4b22: $21 $81 $e0
    ld b, e                                       ; $4b25: $43
    ld h, c                                       ; $4b26: $61
    ld c, [hl]                                    ; $4b27: $4e
    and b                                         ; $4b28: $a0
    ld [hl+], a                                   ; $4b29: $22
    adc b                                         ; $4b2a: $88
    or b                                          ; $4b2b: $b0
    ret nz                                        ; $4b2c: $c0

    ld c, c                                       ; $4b2d: $49
    inc c                                         ; $4b2e: $0c
    and [hl]                                      ; $4b2f: $a6
    and d                                         ; $4b30: $a2
    and d                                         ; $4b31: $a2
    ld [hl-], a                                   ; $4b32: $32
    inc bc                                        ; $4b33: $03
    sbc a                                         ; $4b34: $9f
    sbc l                                         ; $4b35: $9d
    rst $00                                       ; $4b36: $c7
    ld bc, $1a46                                  ; $4b37: $01 $46 $1a
    ld bc, $3ee2                                  ; $4b3a: $01 $e2 $3e
    ret nz                                        ; $4b3d: $c0

    jr nz, jr_06a_4af6                            ; $4b3e: $20 $b6

    sbc a                                         ; $4b40: $9f
    ld c, [hl]                                    ; $4b41: $4e
    and b                                         ; $4b42: $a0
    ld [hl+], a                                   ; $4b43: $22
    adc d                                         ; $4b44: $8a

Jump_06a_4b45:
    ld a, $29                                     ; $4b45: $3e $29
    adc b                                         ; $4b47: $88
    inc c                                         ; $4b48: $0c
    and h                                         ; $4b49: $a4
    ld e, [hl]                                    ; $4b4a: $5e
    ld b, b                                       ; $4b4b: $40
    xor b                                         ; $4b4c: $a8
    ld [hl+], a                                   ; $4b4d: $22
    db $eb                                        ; $4b4e: $eb
    add c                                         ; $4b4f: $81
    jp $a07f                                      ; $4b50: $c3 $7f $a0


    add c                                         ; $4b53: $81
    and d                                         ; $4b54: $a2
    ld a, $00                                     ; $4b55: $3e $00
    ld b, l                                       ; $4b57: $45
    ld h, b                                       ; $4b58: $60
    ret nz                                        ; $4b59: $c0

    inc hl                                        ; $4b5a: $23
    ld d, $e9                                     ; $4b5b: $16 $e9
    call nz, $d1a6                                ; $4b5d: $c4 $a6 $d1
    ld b, c                                       ; $4b60: $41
    inc c                                         ; $4b61: $0c
    and e                                         ; $4b62: $a3
    ld e, [hl]                                    ; $4b63: $5e
    ld b, b                                       ; $4b64: $40
    xor b                                         ; $4b65: $a8
    ld hl, $450c                                  ; $4b66: $21 $0c $45
    add d                                         ; $4b69: $82
    adc b                                         ; $4b6a: $88
    ld [bc], a                                    ; $4b6b: $02
    ld b, [hl]                                    ; $4b6c: $46
    ld a, $01                                     ; $4b6d: $3e $01
    db $e3                                        ; $4b6f: $e3
    dec a                                         ; $4b70: $3d
    inc b                                         ; $4b71: $04
    ld d, $e9                                     ; $4b72: $16 $e9
    cp $03                                        ; $4b74: $fe $03
    ret nz                                        ; $4b76: $c0

    ld c, c                                       ; $4b77: $49
    ld b, l                                       ; $4b78: $45
    dec bc                                        ; $4b79: $0b
    and d                                         ; $4b7a: $a2
    halt                                          ; $4b7b: $76
    jr z, @-$3d                                   ; $4b7c: $28 $c1

    and c                                         ; $4b7e: $a1
    ld b, a                                       ; $4b7f: $47
    nop                                           ; $4b80: $00
    ret nz                                        ; $4b81: $c0

    ld [c], a                                     ; $4b82: $e2
    ld [hl], $45                                  ; $4b83: $36 $45
    ld [bc], a                                    ; $4b85: $02
    push bc                                       ; $4b86: $c5
    ld b, b                                       ; $4b87: $40
    jp Jump_000_243f                              ; $4b88: $c3 $3f $24


    ld [hl+], a                                   ; $4b8b: $22
    add [hl]                                      ; $4b8c: $86
    ld a, [hl-]                                   ; $4b8d: $3a
    ld b, c                                       ; $4b8e: $41
    ld c, c                                       ; $4b8f: $49
    ld b, [hl]                                    ; $4b90: $46
    ld l, e                                       ; $4b91: $6b
    ld h, c                                       ; $4b92: $61
    ld b, a                                       ; $4b93: $47
    ld b, e                                       ; $4b94: $43
    sub b                                         ; $4b95: $90
    jr c, jr_06a_4bf9                             ; $4b96: $38 $61

    jp $8882                                      ; $4b98: $c3 $82 $88


    ld bc, $c181                                  ; $4b9b: $01 $81 $c1
    dec sp                                        ; $4b9e: $3b
    pop bc                                        ; $4b9f: $c1
    ldh [$85], a                                  ; $4ba0: $e0 $85
    ld b, b                                       ; $4ba2: $40
    call nz, $bf80                                ; $4ba3: $c4 $80 $bf
    ld [bc], a                                    ; $4ba6: $02
    ld [hl+], a                                   ; $4ba7: $22
    adc b                                         ; $4ba8: $88
    ld a, [hl-]                                   ; $4ba9: $3a
    ld b, c                                       ; $4baa: $41

jr_06a_4bab:
    ld c, c                                       ; $4bab: $49
    ld b, [hl]                                    ; $4bac: $46
    ld a, [bc]                                    ; $4bad: $0a
    ld b, c                                       ; $4bae: $41
    or l                                          ; $4baf: $b5
    ld b, l                                       ; $4bb0: $45
    rst $30                                       ; $4bb1: $f7
    ld bc, $9ca1                                  ; $4bb2: $01 $a1 $9c
    ld c, l                                       ; $4bb5: $4d
    ld bc, $0187                                  ; $4bb6: $01 $87 $01
    ld b, l                                       ; $4bb9: $45
    ccf                                           ; $4bba: $3f
    ld b, e                                       ; $4bbb: $43
    pop bc                                        ; $4bbc: $c1
    ldh [$81], a                                  ; $4bbd: $e0 $81
    nop                                           ; $4bbf: $00
    sub b                                         ; $4bc0: $90
    jr nz, @-$7b                                  ; $4bc1: $20 $83

    add b                                         ; $4bc3: $80
    ld h, l                                       ; $4bc4: $65
    add d                                         ; $4bc5: $82
    ld a, $25                                     ; $4bc6: $3e $25
    sub [hl]                                      ; $4bc8: $96
    and c                                         ; $4bc9: $a1
    di                                            ; $4bca: $f3
    add a                                         ; $4bcb: $87
    db $d3                                        ; $4bcc: $d3
    or l                                          ; $4bcd: $b5
    ld b, [hl]                                    ; $4bce: $46
    inc sp                                        ; $4bcf: $33
    ld hl, $4300                                  ; $4bd0: $21 $00 $43
    and d                                         ; $4bd3: $a2
    ld c, c                                       ; $4bd4: $49
    nop                                           ; $4bd5: $00
    cp $e4                                        ; $4bd6: $fe $e4
    pop bc                                        ; $4bd8: $c1
    ld [c], a                                     ; $4bd9: $e2
    nop                                           ; $4bda: $00
    ldh [$c5], a                                  ; $4bdb: $e0 $c5
    ld b, d                                       ; $4bdd: $42
    ld c, h                                       ; $4bde: $4c
    inc h                                         ; $4bdf: $24
    sub [hl]                                      ; $4be0: $96
    and d                                         ; $4be1: $a2
    ld h, d                                       ; $4be2: $62
    ld c, c                                       ; $4be3: $49
    ld b, [hl]                                    ; $4be4: $46
    ret c                                         ; $4be5: $d8

    ld c, [hl]                                    ; $4be6: $4e
    ld b, b                                       ; $4be7: $40
    or l                                          ; $4be8: $b5
    ld b, h                                       ; $4be9: $44
    jp c, $9f00                                   ; $4bea: $da $00 $9f

    sbc h                                         ; $4bed: $9c
    push bc                                       ; $4bee: $c5
    and $18                                       ; $4bef: $e6 $18
    jp nz, Jump_000_03e5                          ; $4bf1: $c2 $e5 $03

    and l                                         ; $4bf4: $a5
    dec b                                         ; $4bf5: $05
    ld [hl+], a                                   ; $4bf6: $22
    db $e4                                        ; $4bf7: $e4
    push hl                                       ; $4bf8: $e5

jr_06a_4bf9:
    ld a, e                                       ; $4bf9: $7b
    ld b, c                                       ; $4bfa: $41
    ld a, [hl-]                                   ; $4bfb: $3a
    ld b, b                                       ; $4bfc: $40
    ld [hl], a                                    ; $4bfd: $77
    ld b, [hl]                                    ; $4bfe: $46
    jp $d0d3                                      ; $4bff: $c3 $d3 $d0


    or l                                          ; $4c02: $b5
    ld b, [hl]                                    ; $4c03: $46
    add h                                         ; $4c04: $84
    add c                                         ; $4c05: $81
    pop bc                                        ; $4c06: $c1
    jp hl                                         ; $4c07: $e9


    ld b, h                                       ; $4c08: $44
    pop bc                                        ; $4c09: $c1
    sub b                                         ; $4c0a: $90
    or [hl]                                       ; $4c0b: $b6
    add c                                         ; $4c0c: $81
    sbc l                                         ; $4c0d: $9d
    add [hl]                                      ; $4c0e: $86
    ld h, c                                       ; $4c0f: $61
    db $db                                        ; $4c10: $db
    dec b                                         ; $4c11: $05
    ld [hl], a                                    ; $4c12: $77
    ld bc, $82b6                                  ; $4c13: $01 $b6 $82
    ld a, l                                       ; $4c16: $7d
    adc b                                         ; $4c17: $88
    or l                                          ; $4c18: $b5
    ld c, c                                       ; $4c19: $49
    sbc [hl]                                      ; $4c1a: $9e
    add hl, bc                                    ; $4c1b: $09
    ld b, [hl]                                    ; $4c1c: $46
    ld c, b                                       ; $4c1d: $48
    nop                                           ; $4c1e: $00
    rst $38                                       ; $4c1f: $ff
    ldh [$37], a                                  ; $4c20: $e0 $37
    add $c0                                       ; $4c22: $c6 $c0
    rlca                                          ; $4c24: $07
    and b                                         ; $4c25: $a0
    or l                                          ; $4c26: $b5
    nop                                           ; $4c27: $00
    rlca                                          ; $4c28: $07
    jr nz, jr_06a_4bab                            ; $4c29: $20 $80

jr_06a_4c2b:
    ld b, d                                       ; $4c2b: $42
    nop                                           ; $4c2c: $00
    db $db                                        ; $4c2d: $db
    dec b                                         ; $4c2e: $05
    sbc h                                         ; $4c2f: $9c
    inc bc                                        ; $4c30: $03
    ld bc, $4b2a                                  ; $4c31: $01 $2a $4b

jr_06a_4c34:
    ld b, e                                       ; $4c34: $43
    or l                                          ; $4c35: $b5
    ld b, c                                       ; $4c36: $41
    cp e                                          ; $4c37: $bb
    ld h, b                                       ; $4c38: $60
    sbc [hl]                                      ; $4c39: $9e
    ld l, a                                       ; $4c3a: $6f
    ld b, [hl]                                    ; $4c3b: $46
    add hl, sp                                    ; $4c3c: $39
    and h                                         ; $4c3d: $a4
    ld h, h                                       ; $4c3e: $64
    rst $38                                       ; $4c3f: $ff
    ldh [$a5], a                                  ; $4c40: $e0 $a5
    add hl, sp                                    ; $4c42: $39
    adc e                                         ; $4c43: $8b
    inc b                                         ; $4c44: $04
    nop                                           ; $4c45: $00
    and h                                         ; $4c46: $a4
    ld h, c                                       ; $4c47: $61
    db $e4                                        ; $4c48: $e4
    and c                                         ; $4c49: $a1
    add l                                         ; $4c4a: $85
    ld h, a                                       ; $4c4b: $67
    sbc d                                         ; $4c4c: $9a
    rlca                                          ; $4c4d: $07
    inc sp                                        ; $4c4e: $33
    ld [bc], a                                    ; $4c4f: $02
    ld l, $21                                     ; $4c50: $2e $21
    or l                                          ; $4c52: $b5
    ld b, l                                       ; $4c53: $45
    add b                                         ; $4c54: $80
    pop hl                                        ; $4c55: $e1
    rst $38                                       ; $4c56: $ff
    ld a, $69                                     ; $4c57: $3e $69
    and e                                         ; $4c59: $a3
    dec [hl]                                      ; $4c5a: $35
    dec [hl]                                      ; $4c5b: $35
    and e                                         ; $4c5c: $a3
    ld l, d                                       ; $4c5d: $6a
    ld a, $00                                     ; $4c5e: $3e $00
    ret z                                         ; $4c60: $c8

    add b                                         ; $4c61: $80
    xor l                                         ; $4c62: $ad
    ld b, d                                       ; $4c63: $42
    sub a                                         ; $4c64: $97
    add h                                         ; $4c65: $84
    db $db                                        ; $4c66: $db
    inc b                                         ; $4c67: $04
    ld d, e                                       ; $4c68: $53
    jp z, $a24f                                   ; $4c69: $ca $4f $a2

jr_06a_4c6c:
    ld l, $21                                     ; $4c6c: $2e $21
    or l                                          ; $4c6e: $b5
    ld b, l                                       ; $4c6f: $45
    db $10                                        ; $4c70: $10
    adc b                                         ; $4c71: $88
    jr nz, jr_06a_4c34                            ; $4c72: $20 $c0

    ldh [$8a], a                                  ; $4c74: $e0 $8a
    ld b, c                                       ; $4c76: $41
    ret nz                                        ; $4c77: $c0

    ldh [$9e], a                                  ; $4c78: $e0 $9e
    rla                                           ; $4c7a: $17
    ld b, d                                       ; $4c7b: $42
    inc l                                         ; $4c7c: $2c
    inc b                                         ; $4c7d: $04
    db $db                                        ; $4c7e: $db
    ld b, $f0                                     ; $4c7f: $06 $f0
    ld [$3728], sp                                ; $4c81: $08 $28 $37
    add l                                         ; $4c84: $85
    or l                                          ; $4c85: $b5
    ld b, [hl]                                    ; $4c86: $46
    dec sp                                        ; $4c87: $3b
    jr nz, jr_06a_4c2b                            ; $4c88: $20 $a1

    ld b, [hl]                                    ; $4c8a: $46
    add hl, sp                                    ; $4c8b: $39
    ld l, e                                       ; $4c8c: $6b
    ld l, l                                       ; $4c8d: $6d
    ld [hl], c                                    ; $4c8e: $71
    rst $38                                       ; $4c8f: $ff
    ldh [$6d], a                                  ; $4c90: $e0 $6d
    add hl, sp                                    ; $4c92: $39
    ret nz                                        ; $4c93: $c0

    ldh [$e2], a                                  ; $4c94: $e0 $e2
    db $e3                                        ; $4c96: $e3
    inc l                                         ; $4c97: $2c
    rlca                                          ; $4c98: $07
    nop                                           ; $4c99: $00
    add l                                         ; $4c9a: $85
    ld h, h                                       ; $4c9b: $64
    ld d, e                                       ; $4c9c: $53
    rst $00                                       ; $4c9d: $c7
    ld c, a                                       ; $4c9e: $4f
    and a                                         ; $4c9f: $a7
    db $f4                                        ; $4ca0: $f4
    adc b                                         ; $4ca1: $88
    ld b, b                                       ; $4ca2: $40
    ret nz                                        ; $4ca3: $c0

    ret nz                                        ; $4ca4: $c0

    push bc                                       ; $4ca5: $c5
    ld bc, $20e2                                  ; $4ca6: $01 $e2 $20
    ld l, c                                       ; $4ca9: $69
    ld b, b                                       ; $4caa: $40
    ld d, e                                       ; $4cab: $53
    call z, Call_000_07b5                         ; $4cac: $cc $b5 $07
    push bc                                       ; $4caf: $c5
    ld hl, $43c3                                  ; $4cb0: $21 $c3 $43
    ld b, e                                       ; $4cb3: $43
    add d                                         ; $4cb4: $82
    cp $a2                                        ; $4cb5: $fe $a2
    sbc h                                         ; $4cb7: $9c
    adc h                                         ; $4cb8: $8c
    ld h, b                                       ; $4cb9: $60
    inc c                                         ; $4cba: $0c
    ld l, h                                       ; $4cbb: $6c
    ld b, b                                       ; $4cbc: $40
    inc l                                         ; $4cbd: $2c
    ld [$dfde], sp                                ; $4cbe: $08 $de $df
    ldh a, [$e2]                                  ; $4cc1: $f0 $e2
    ld [$2f2a], sp                                ; $4cc3: $08 $2a $2f
    daa                                           ; $4cc6: $27
    jp $0245                                      ; $4cc7: $c3 $45 $02


    ld a, d                                       ; $4cca: $7a
    jr nz, jr_06a_4c6c                            ; $4ccb: $20 $9f

    ld c, d                                       ; $4ccd: $4a
    call nz, $6c20                                ; $4cce: $c4 $20 $6c
    ld a, [bc]                                    ; $4cd1: $0a
    ld [hl+], a                                   ; $4cd2: $22
    ld d, e                                       ; $4cd3: $53
    ret z                                         ; $4cd4: $c8

    push bc                                       ; $4cd5: $c5
    dec hl                                        ; $4cd6: $2b
    jp Jump_000_0045                              ; $4cd7: $c3 $45 $00


    db $e4                                        ; $4cda: $e4

jr_06a_4cdb:
    ld [bc], a                                    ; $4cdb: $02
    cp d                                          ; $4cdc: $ba
    ld h, b                                       ; $4cdd: $60
    or c                                          ; $4cde: $b1
    ld h, h                                       ; $4cdf: $64
    inc l                                         ; $4ce0: $2c
    ld [$220a], sp                                ; $4ce1: $08 $0a $22
    ld d, e                                       ; $4ce4: $53
    res 7, b                                      ; $4ce5: $cb $b8
    ld l, c                                       ; $4ce7: $69
    jp Jump_000_0444                              ; $4ce8: $c3 $44 $04


    db $e4                                        ; $4ceb: $e4
    nop                                           ; $4cec: $00
    or l                                          ; $4ced: $b5
    jr nz, jr_06a_4cdb                            ; $4cee: $20 $eb

    sbc b                                         ; $4cf0: $98
    and c                                         ; $4cf1: $a1
    or c                                          ; $4cf2: $b1
    ld h, c                                       ; $4cf3: $61
    ld a, [bc]                                    ; $4cf4: $0a
    adc d                                         ; $4cf5: $8a
    db $dd                                        ; $4cf6: $dd
    ld b, h                                       ; $4cf7: $44
    ld [$0025], sp                                ; $4cf8: $08 $25 $00
    cp a                                          ; $4cfb: $bf
    db $ec                                        ; $4cfc: $ec
    jp $7843                                      ; $4cfd: $c3 $43 $78


    push bc                                       ; $4d00: $c5
    or c                                          ; $4d01: $b1
    ld h, h                                       ; $4d02: $64
    inc l                                         ; $4d03: $2c
    ld a, [bc]                                    ; $4d04: $0a
    ld [$3533], sp                                ; $4d05: $08 $33 $35
    ld l, b                                       ; $4d08: $68
    rst $28                                       ; $4d09: $ef
    dec bc                                        ; $4d0a: $0b
    nop                                           ; $4d0b: $00
    or c                                          ; $4d0c: $b1
    ld h, d                                       ; $4d0d: $62
    inc l                                         ; $4d0e: $2c
    add hl, bc                                    ; $4d0f: $09
    ld c, b                                       ; $4d10: $48
    xor d                                         ; $4d11: $aa
    nop                                           ; $4d12: $00
    nop                                           ; $4d13: $00
    nop                                           ; $4d14: $00
    pop bc                                        ; $4d15: $c1
    nop                                           ; $4d16: $00
    rst $38                                       ; $4d17: $ff
    rst $38                                       ; $4d18: $ff
    rst $38                                       ; $4d19: $ff
    rst $38                                       ; $4d1a: $ff
    rst $38                                       ; $4d1b: $ff
    rst $38                                       ; $4d1c: $ff
    rst $38                                       ; $4d1d: $ff
    rst $38                                       ; $4d1e: $ff
    rst $38                                       ; $4d1f: $ff
    rst $38                                       ; $4d20: $ff
    nop                                           ; $4d21: $00
    nop                                           ; $4d22: $00
    dec c                                         ; $4d23: $0d
    add b                                         ; $4d24: $80
    cp $e0                                        ; $4d25: $fe $e0
    nop                                           ; $4d27: $00
    ld b, b                                       ; $4d28: $40
    ret c                                         ; $4d29: $d8

    push hl                                       ; $4d2a: $e5
    rst $30                                       ; $4d2b: $f7
    and $eb                                       ; $4d2c: $e6 $eb
    ldh [rIE], a                                  ; $4d2e: $e0 $ff
    rst $38                                       ; $4d30: $ff
    nop                                           ; $4d31: $00
    rst $38                                       ; $4d32: $ff
    db $f4                                        ; $4d33: $f4
    nop                                           ; $4d34: $00
    nop                                           ; $4d35: $00
    nop                                           ; $4d36: $00
    ld [bc], a                                    ; $4d37: $02
    nop                                           ; $4d38: $00
    dec h                                         ; $4d39: $25
    db $10                                        ; $4d3a: $10
    ld [bc], a                                    ; $4d3b: $02
    ld bc, $1126                                  ; $4d3c: $01 $26 $11
    ld [bc], a                                    ; $4d3f: $02
    ld [bc], a                                    ; $4d40: $02
    add hl, hl                                    ; $4d41: $29
    ld de, $0302                                  ; $4d42: $11 $02 $03
    inc h                                         ; $4d45: $24
    ld [de], a                                    ; $4d46: $12
    ld [bc], a                                    ; $4d47: $02
    inc b                                         ; $4d48: $04
    ld a, [de]                                    ; $4d49: $1a
    inc de                                        ; $4d4a: $13
    ld [bc], a                                    ; $4d4b: $02
    dec b                                         ; $4d4c: $05
    dec de                                        ; $4d4d: $1b
    dec d                                         ; $4d4e: $15
    ld [bc], a                                    ; $4d4f: $02
    ld b, $22                                     ; $4d50: $06 $22
    rla                                           ; $4d52: $17
    ld [bc], a                                    ; $4d53: $02
    rlca                                          ; $4d54: $07
    inc h                                         ; $4d55: $24
    ld a, [de]                                    ; $4d56: $1a
    ld [bc], a                                    ; $4d57: $02
    ld [$1b23], sp                                ; $4d58: $08 $23 $1b
    ld [bc], a                                    ; $4d5b: $02
    add hl, bc                                    ; $4d5c: $09
    ld [hl+], a                                   ; $4d5d: $22
    ld e, $02                                     ; $4d5e: $1e $02
    ld a, [bc]                                    ; $4d60: $0a
    dec h                                         ; $4d61: $25
    ld e, $02                                     ; $4d62: $1e $02
    dec bc                                        ; $4d64: $0b
    ld hl, $021f                                  ; $4d65: $21 $1f $02
    inc c                                         ; $4d68: $0c
    rra                                           ; $4d69: $1f
    inc h                                         ; $4d6a: $24
    ld [bc], a                                    ; $4d6b: $02
    dec c                                         ; $4d6c: $0d
    ld e, $25                                     ; $4d6d: $1e $25
    ld [bc], a                                    ; $4d6f: $02
    ld c, $20                                     ; $4d70: $0e $20
    ld h, $02                                     ; $4d72: $26 $02
    rrca                                          ; $4d74: $0f
    rra                                           ; $4d75: $1f
    ld a, [hl+]                                   ; $4d76: $2a
    ld [bc], a                                    ; $4d77: $02
    db $10                                        ; $4d78: $10
    dec e                                         ; $4d79: $1d
    ld l, $02                                     ; $4d7a: $2e $02
    ld de, $2f1e                                  ; $4d7c: $11 $1e $2f
    ld [bc], a                                    ; $4d7f: $02
    ld [de], a                                    ; $4d80: $12
    dec hl                                        ; $4d81: $2b
    cpl                                           ; $4d82: $2f
    ld [bc], a                                    ; $4d83: $02
    inc de                                        ; $4d84: $13
    inc e                                         ; $4d85: $1c
    jr nc, @+$01                                  ; $4d86: $30 $ff

    rst $38                                       ; $4d88: $ff
    rst $38                                       ; $4d89: $ff
    sub d                                         ; $4d8a: $92
    ld c, l                                       ; $4d8b: $4d
    db $f4                                        ; $4d8c: $f4
    ld d, c                                       ; $4d8d: $51
    ld b, h                                       ; $4d8e: $44
    ld d, a                                       ; $4d8f: $57
    ld h, [hl]                                    ; $4d90: $66
    ld d, a                                       ; $4d91: $57
    rra                                           ; $4d92: $1f
    ld l, $0e                                     ; $4d93: $2e $0e
    ld c, $0e                                     ; $4d95: $0e $0e
    ld c, l                                       ; $4d97: $4d
    rst $38                                       ; $4d98: $ff
    add sp, -$10                                  ; $4d99: $e8 $f0
    db $ed                                        ; $4d9b: $ed
    db $f4                                        ; $4d9c: $f4
    db $ed                                        ; $4d9d: $ed
    adc $d0                                       ; $4d9e: $ce $d0
    db $ed                                        ; $4da0: $ed
    ld l, [hl]                                    ; $4da1: $6e
    ld l, $6e                                     ; $4da2: $2e $6e
    cp [hl]                                       ; $4da4: $be
    ldh [$bd], a                                  ; $4da5: $e0 $bd
    ldh [$0d], a                                  ; $4da7: $e0 $0d
    dec c                                         ; $4da9: $0d
    or b                                          ; $4daa: $b0
    jp nz, $f0e2                                  ; $4dab: $c2 $e2 $f0

    db $eb                                        ; $4dae: $eb
    and [hl]                                      ; $4daf: $a6
    add sp, -$20                                  ; $4db0: $e8 $e0
    ld a, [c]                                     ; $4db2: $f2
    ld l, $0e                                     ; $4db3: $2e $0e
    pop bc                                        ; $4db5: $c1
    ldh [$4e], a                                  ; $4db6: $e0 $4e
    ld [hl], l                                    ; $4db8: $75
    ld c, [hl]                                    ; $4db9: $4e
    ret nz                                        ; $4dba: $c0

    rst $20                                       ; $4dbb: $e7
    ld l, $f0                                     ; $4dbc: $2e $f0
    jp hl                                         ; $4dbe: $e9


    dec c                                         ; $4dbf: $0d
    ld l, l                                       ; $4dc0: $6d
    dec l                                         ; $4dc1: $2d
    ret nz                                        ; $4dc2: $c0

    db $ed                                        ; $4dc3: $ed
    or h                                          ; $4dc4: $b4
    ldh [$ea], a                                  ; $4dc5: $e0 $ea
    ret nc                                        ; $4dc7: $d0

    ld [c], a                                     ; $4dc8: $e2
    ld l, $3e                                     ; $4dc9: $2e $3e
    pop hl                                        ; $4dcb: $e1
    ld c, [hl]                                    ; $4dcc: $4e
    ld c, $f0                                     ; $4dcd: $0e $f0
    ldh a, [$0d]                                  ; $4dcf: $f0 $0d
    rlca                                          ; $4dd1: $07
    ld l, l                                       ; $4dd2: $6d
    dec c                                         ; $4dd3: $0d
    ld c, l                                       ; $4dd4: $4d
    cp a                                          ; $4dd5: $bf
    db $e3                                        ; $4dd6: $e3
    call c, $d0e0                                 ; $4dd7: $dc $e0 $d0
    ei                                            ; $4dda: $fb
    ccf                                           ; $4ddb: $3f
    ld [c], a                                     ; $4ddc: $e2
    ld hl, sp-$40                                 ; $4ddd: $f8 $c0
    ld [bc], a                                    ; $4ddf: $02

Call_06a_4de0:
    ldh a, [$ea]                                  ; $4de0: $f0 $ea
    ld l, l                                       ; $4de2: $6d
    cp l                                          ; $4de3: $bd
    pop hl                                        ; $4de4: $e1
    dec de                                        ; $4de5: $1b
    db $e3                                        ; $4de6: $e3
    ldh [$f2], a                                  ; $4de7: $e0 $f2
    ret nc                                        ; $4de9: $d0

    db $ec                                        ; $4dea: $ec
    cp b                                          ; $4deb: $b8
    pop bc                                        ; $4dec: $c1
    or b                                          ; $4ded: $b0
    add sp, $00                                   ; $4dee: $e8 $00
    pop bc                                        ; $4df0: $c1
    ld [c], a                                     ; $4df1: $e2
    ld b, b                                       ; $4df2: $40
    ldh [$e8], a                                  ; $4df3: $e0 $e8
    pop bc                                        ; $4df5: $c1

jr_06a_4df6:
    add b                                         ; $4df6: $80
    pop hl                                        ; $4df7: $e1
    ldh [$ed], a                                  ; $4df8: $e0 $ed
    ldh a, [$ee]                                  ; $4dfa: $f0 $ee
    cp l                                          ; $4dfc: $bd
    ret nz                                        ; $4dfd: $c0

    ld [hl], b                                    ; $4dfe: $70
    ld [$2d01], a                                 ; $4dff: $ea $01 $2d
    ld a, $e0                                     ; $4e02: $3e $e0
    ld b, b                                       ; $4e04: $40
    ldh [$c0], a                                  ; $4e05: $e0 $c0
    ld [c], a                                     ; $4e07: $e2
    ldh [$f1], a                                  ; $4e08: $e0 $f1
    ldh a, [$f1]                                  ; $4e0a: $f0 $f1
    rst $28                                       ; $4e0c: $ef
    jp nz, $e5b0                                  ; $4e0d: $c2 $b0 $e5

    nop                                           ; $4e10: $00
    cp a                                          ; $4e11: $bf
    db $e3                                        ; $4e12: $e3
    ret nz                                        ; $4e13: $c0

    ld [$eae0], a                                 ; $4e14: $ea $e0 $ea
    ldh a, [$ee]                                  ; $4e17: $f0 $ee
    xor a                                         ; $4e19: $af
    call nz, $e670                                ; $4e1a: $c4 $70 $e6
    ld a, [hl]                                    ; $4e1d: $7e
    db $e4                                        ; $4e1e: $e4
    pop hl                                        ; $4e1f: $e1
    xor d                                         ; $4e20: $aa
    nop                                           ; $4e21: $00
    ret nc                                        ; $4e22: $d0

    db $ed                                        ; $4e23: $ed
    adc $a6                                       ; $4e24: $ce $a6
    ld e, h                                       ; $4e26: $5c
    db $e4                                        ; $4e27: $e4
    cp [hl]                                       ; $4e28: $be
    xor c                                         ; $4e29: $a9
    ld a, l                                       ; $4e2a: $7d
    ret nz                                        ; $4e2b: $c0

    cp a                                          ; $4e2c: $bf
    rst $20                                       ; $4e2d: $e7
    ldh [$ed], a                                  ; $4e2e: $e0 $ed
    inc l                                         ; $4e30: $2c
    push hl                                       ; $4e31: $e5
    nop                                           ; $4e32: $00
    jr jr_06a_4df6                                ; $4e33: $18 $c1

    jp $f8a0                                      ; $4e35: $c3 $a0 $f8


    and c                                         ; $4e38: $a1
    cp c                                          ; $4e39: $b9
    and e                                         ; $4e3a: $a3
    ldh a, [$e3]                                  ; $4e3b: $f0 $e3
    adc $a1                                       ; $4e3d: $ce $a1
    ld a, a                                       ; $4e3f: $7f
    pop bc                                        ; $4e40: $c1
    ld a, l                                       ; $4e41: $7d
    pop bc                                        ; $4e42: $c1
    nop                                           ; $4e43: $00
    ldh [$f1], a                                  ; $4e44: $e0 $f1
    ret nc                                        ; $4e46: $d0

    push hl                                       ; $4e47: $e5
    and h                                         ; $4e48: $a4
    jp $e0c0                                      ; $4e49: $c3 $c0 $e0


    ld sp, hl                                     ; $4e4c: $f9
    and h                                         ; $4e4d: $a4
    ldh a, [$e5]                                  ; $4e4e: $f0 $e5
    pop bc                                        ; $4e50: $c1
    add sp, -$7d                                  ; $4e51: $e8 $83
    and d                                         ; $4e53: $a2
    nop                                           ; $4e54: $00
    ldh [$ed], a                                  ; $4e55: $e0 $ed
    ret nc                                        ; $4e57: $d0

    and $24                                       ; $4e58: $e6 $24
    pop bc                                        ; $4e5a: $c1
    call nc, $b9a0                                ; $4e5b: $d4 $a0 $b9
    and b                                         ; $4e5e: $a0
    push af                                       ; $4e5f: $f5
    add e                                         ; $4e60: $83
    ldh a, [$e4]                                  ; $4e61: $f0 $e4
    add d                                         ; $4e63: $82
    push hl                                       ; $4e64: $e5
    nop                                           ; $4e65: $00
    ld a, [hl]                                    ; $4e66: $7e
    and d                                         ; $4e67: $a2
    ldh [$f0], a                                  ; $4e68: $e0 $f0
    ret nc                                        ; $4e6a: $d0

    push hl                                       ; $4e6b: $e5
    add a                                         ; $4e6c: $87
    pop hl                                        ; $4e6d: $e1
    ld d, a                                       ; $4e6e: $57
    pop bc                                        ; $4e6f: $c1
    ldh a, [$ed]                                  ; $4e70: $f0 $ed
    ld b, e                                       ; $4e72: $43
    db $e4                                        ; $4e73: $e4
    ld a, [hl]                                    ; $4e74: $7e
    and d                                         ; $4e75: $a2
    nop                                           ; $4e76: $00
    ldh [$f1], a                                  ; $4e77: $e0 $f1
    sub b                                         ; $4e79: $90
    and $7f                                       ; $4e7a: $e6 $7f
    add b                                         ; $4e7c: $80
    add [hl]                                      ; $4e7d: $86
    and c                                         ; $4e7e: $a1
    push af                                       ; $4e7f: $f5
    add c                                         ; $4e80: $81
    ld [hl], l                                    ; $4e81: $75
    add b                                         ; $4e82: $80
    db $fd                                        ; $4e83: $fd
    and b                                         ; $4e84: $a0
    ldh a, [$e4]                                  ; $4e85: $f0 $e4
    nop                                           ; $4e87: $00
    ld bc, $c0c1                                  ; $4e88: $01 $c1 $c0
    call nz, $f2e0                                ; $4e8b: $c4 $e0 $f2
    ret nc                                        ; $4e8e: $d0

    jp hl                                         ; $4e8f: $e9


    sub h                                         ; $4e90: $94
    add e                                         ; $4e91: $83
    jp c, $f0a1                                   ; $4e92: $da $a1 $f0

    add sp, -$41                                  ; $4e95: $e8 $bf
    rst $20                                       ; $4e97: $e7
    add h                                         ; $4e98: $84
    ldh [$f3], a                                  ; $4e99: $e0 $f3
    ret nc                                        ; $4e9b: $d0

    db $e3                                        ; $4e9c: $e3
    ld l, l                                       ; $4e9d: $6d
    rst $38                                       ; $4e9e: $ff
    add sp, -$4c                                  ; $4e9f: $e8 $b4
    add c                                         ; $4ea1: $81
    ldh a, [$e7]                                  ; $4ea2: $f0 $e7
    ld a, [hl]                                    ; $4ea4: $7e
    push hl                                       ; $4ea5: $e5
    dec l                                         ; $4ea6: $2d
    inc bc                                        ; $4ea7: $03
    ld c, l                                       ; $4ea8: $4d
    dec l                                         ; $4ea9: $2d
    ld a, [c]                                     ; $4eaa: $f2
    pop hl                                        ; $4eab: $e1
    db $db                                        ; $4eac: $db
    ld h, b                                       ; $4ead: $60
    call nc, $d0e9                                ; $4eae: $d4 $e9 $d0
    push hl                                       ; $4eb1: $e5
    adc $e2                                       ; $4eb2: $ce $e2
    sub l                                         ; $4eb4: $95
    add b                                         ; $4eb5: $80
    ld e, $c3                                     ; $4eb6: $1e $c3
    pop hl                                        ; $4eb8: $e1
    ld l, $4e                                     ; $4eb9: $2e $4e
    ld c, $4e                                     ; $4ebb: $0e $4e
    ldh a, [$e6]                                  ; $4ebd: $f0 $e6
    ld [$7ce1], a                                 ; $4ebf: $ea $e1 $7c
    add b                                         ; $4ec2: $80
    ld b, c                                       ; $4ec3: $41
    ld l, e                                       ; $4ec4: $6b
    cp $e0                                        ; $4ec5: $fe $e0
    ret nz                                        ; $4ec7: $c0

    ld [c], a                                     ; $4ec8: $e2
    ldh [$60], a                                  ; $4ec9: $e0 $60
    sbc l                                         ; $4ecb: $9d
    ld [c], a                                     ; $4ecc: $e2
    ret nc                                        ; $4ecd: $d0

    db $ec                                        ; $4ece: $ec
    ld c, $c0                                     ; $4ecf: $0e $c0
    rst $20                                       ; $4ed1: $e7
    db $d3                                        ; $4ed2: $d3
    ld l, [hl]                                    ; $4ed3: $6e
    ld l, [hl]                                    ; $4ed4: $6e
    cp a                                          ; $4ed5: $bf
    ldh [$f0], a                                  ; $4ed6: $e0 $f0
    and $6d                                       ; $4ed8: $e6 $6d
    add b                                         ; $4eda: $80
    add c                                         ; $4edb: $81
    dec bc                                        ; $4edc: $0b
    ld a, [bc]                                    ; $4edd: $0a
    rlca                                          ; $4ede: $07
    ld c, d                                       ; $4edf: $4a
    ld a, [bc]                                    ; $4ee0: $0a
    ld a, [hl+]                                   ; $4ee1: $2a
    ld a, [hl-]                                   ; $4ee2: $3a
    add b                                         ; $4ee3: $80
    ret nz                                        ; $4ee4: $c0

    db $e4                                        ; $4ee5: $e4
    ld [c], a                                     ; $4ee6: $e2
    ld h, b                                       ; $4ee7: $60
    sbc h                                         ; $4ee8: $9c
    ldh [$d0], a                                  ; $4ee9: $e0 $d0
    ld a, [c]                                     ; $4eeb: $f2
    ret nc                                        ; $4eec: $d0

    and $e0                                       ; $4eed: $e6 $e0
    ld [hl], $84                                  ; $4eef: $36 $84
    ld [hl], b                                    ; $4ef1: $70
    db $e4                                        ; $4ef2: $e4
    ld b, c                                       ; $4ef3: $41
    add c                                         ; $4ef4: $81
    ld a, [bc]                                    ; $4ef5: $0a
    rst $38                                       ; $4ef6: $ff
    pop hl                                        ; $4ef7: $e1
    ld a, [hl+]                                   ; $4ef8: $2a
    dec bc                                        ; $4ef9: $0b
    ld hl, $3e4b                                  ; $4efa: $21 $4b $3e
    ldh [$60], a                                  ; $4efd: $e0 $60
    ld h, c                                       ; $4eff: $61
    call c, $d0e4                                 ; $4f00: $dc $e4 $d0
    db $ed                                        ; $4f03: $ed
    dec c                                         ; $4f04: $0d
    dec bc                                        ; $4f05: $0b
    pop hl                                        ; $4f06: $e1
    or $67                                        ; $4f07: $f6 $67
    ld a, h                                       ; $4f09: $7c
    ldh a, [$e2]                                  ; $4f0a: $f0 $e2
    ld d, e                                       ; $4f0c: $53
    ldh [$0d], a                                  ; $4f0d: $e0 $0d
    dec c                                         ; $4f0f: $0d
    ld c, d                                       ; $4f10: $4a
    ld c, d                                       ; $4f11: $4a
    ld a, [hl+]                                   ; $4f12: $2a
    dec a                                         ; $4f13: $3d
    and c                                         ; $4f14: $a1
    inc bc                                        ; $4f15: $03
    ld a, [hl+]                                   ; $4f16: $2a
    dec bc                                        ; $4f17: $0b
    ld a, [hl]                                    ; $4f18: $7e
    ld [c], a                                     ; $4f19: $e2
    db $10                                        ; $4f1a: $10
    push hl                                       ; $4f1b: $e5
    ld d, c                                       ; $4f1c: $51
    ret nz                                        ; $4f1d: $c0

    ret nc                                        ; $4f1e: $d0

    db $eb                                        ; $4f1f: $eb
    dec a                                         ; $4f20: $3d
    ld [c], a                                     ; $4f21: $e2
    ldh a, [$eb]                                  ; $4f22: $f0 $eb
    ld a, [$a345]                                 ; $4f24: $fa $45 $a3
    dec hl                                        ; $4f27: $2b
    pop bc                                        ; $4f28: $c1
    ldh [$0b], a                                  ; $4f29: $e0 $0b
    dec hl                                        ; $4f2b: $2b
    dec c                                         ; $4f2c: $0d
    ld c, d                                       ; $4f2d: $4a
    ld l, d                                       ; $4f2e: $6a
    ret nz                                        ; $4f2f: $c0

    scf                                           ; $4f30: $37
    add c                                         ; $4f31: $81
    ret nz                                        ; $4f32: $c0

    rst $20                                       ; $4f33: $e7
    ret nc                                        ; $4f34: $d0

    db $ed                                        ; $4f35: $ed
    and h                                         ; $4f36: $a4
    push hl                                       ; $4f37: $e5
    ldh a, [$e7]                                  ; $4f38: $f0 $e7
    ld b, $a4                                     ; $4f3a: $06 $a4
    ld a, [bc]                                    ; $4f3c: $0a
    ld c, d                                       ; $4f3d: $4a
    cpl                                           ; $4f3e: $2f
    dec c                                         ; $4f3f: $0d
    dec hl                                        ; $4f40: $2b
    dec bc                                        ; $4f41: $0b
    ld l, e                                       ; $4f42: $6b
    ld a, [hl-]                                   ; $4f43: $3a
    ldh [rWX], a                                  ; $4f44: $e0 $4b
    cp a                                          ; $4f46: $bf
    db $e3                                        ; $4f47: $e3
    sub b                                         ; $4f48: $90

jr_06a_4f49:
    call nz, $d0f2                                ; $4f49: $c4 $f2 $d0
    db $eb                                        ; $4f4c: $eb
    ld l, l                                       ; $4f4d: $6d
    ldh a, [$ef]                                  ; $4f4e: $f0 $ef

jr_06a_4f50:
    rst $00                                       ; $4f50: $c7
    add h                                         ; $4f51: $84
    ld l, e                                       ; $4f52: $6b
    ld c, d                                       ; $4f53: $4a
    ld a, [bc]                                    ; $4f54: $0a
    dec c                                         ; $4f55: $0d
    ccf                                           ; $4f56: $3f
    ld l, e                                       ; $4f57: $6b
    ld l, e                                       ; $4f58: $6b
    dec l                                         ; $4f59: $2d
    dec c                                         ; $4f5a: $0d
    ld c, d                                       ; $4f5b: $4a
    ld a, [bc]                                    ; $4f5c: $0a
    ld [hl], $61                                  ; $4f5d: $36 $61
    cp a                                          ; $4f5f: $bf
    db $e3                                        ; $4f60: $e3
    and b                                         ; $4f61: $a0
    jr nz, @-$3d                                  ; $4f62: $20 $c1

    ret nz                                        ; $4f64: $c0

    db $ed                                        ; $4f65: $ed
    inc b                                         ; $4f66: $04
    push bc                                       ; $4f67: $c5
    ldh a, [$e6]                                  ; $4f68: $f0 $e6
    add h                                         ; $4f6a: $84
    and h                                         ; $4f6b: $a4
    dec hl                                        ; $4f6c: $2b
    add b                                         ; $4f6d: $80
    ldh [$0d], a                                  ; $4f6e: $e0 $0d
    rlca                                          ; $4f70: $07
    dec l                                         ; $4f71: $2d
    dec l                                         ; $4f72: $2d
    dec l                                         ; $4f73: $2d
    ld a, [hl]                                    ; $4f74: $7e
    ret nz                                        ; $4f75: $c0

    ld a, b                                       ; $4f76: $78
    add d                                         ; $4f77: $82
    inc b                                         ; $4f78: $04
    call Call_06a_4286                            ; $4f79: $cd $86 $42
    ret z                                         ; $4f7c: $c8

    and e                                         ; $4f7d: $a3
    jr nc, jr_06a_4f49                            ; $4f7e: $30 $c9

    and b                                         ; $4f80: $a0
    ld b, h                                       ; $4f81: $44
    ld b, c                                       ; $4f82: $41
    jp nz, Jump_06a_43a4                          ; $4f83: $c2 $a4 $43

    and l                                         ; $4f86: $a5
    ld a, [bc]                                    ; $4f87: $0a
    ld a, [bc]                                    ; $4f88: $0a
    ret nz                                        ; $4f89: $c0

    pop hl                                        ; $4f8a: $e1
    ld a, [hl]                                    ; $4f8b: $7e

jr_06a_4f8c:
    ret nz                                        ; $4f8c: $c0

    jr nc, jr_06a_4f50                            ; $4f8d: $30 $c1

    db $ec                                        ; $4f8f: $ec
    ret nc                                        ; $4f90: $d0

    db $eb                                        ; $4f91: $eb
    dec hl                                        ; $4f92: $2b
    jp Jump_06a_4052                              ; $4f93: $c3 $52 $40


    dec l                                         ; $4f96: $2d
    ld l, l                                       ; $4f97: $6d
    sub e                                         ; $4f98: $93
    ldh [$d7], a                                  ; $4f99: $e0 $d7
    and d                                         ; $4f9b: $a2
    ld a, $02                                     ; $4f9c: $3e $02
    and h                                         ; $4f9e: $a4
    ld l, e                                       ; $4f9f: $6b
    ld a, [bc]                                    ; $4fa0: $0a
    dec hl                                        ; $4fa1: $2b
    dec bc                                        ; $4fa2: $0b
    dec bc                                        ; $4fa3: $0b
    inc a                                         ; $4fa4: $3c
    ret nz                                        ; $4fa5: $c0

    ld [hl], a                                    ; $4fa6: $77
    ld b, d                                       ; $4fa7: $42
    nop                                           ; $4fa8: $00
    jr jr_06a_4f8c                                ; $4fa9: $18 $e1

    ldh [$e1], a                                  ; $4fab: $e0 $e1
    ret nc                                        ; $4fad: $d0

    db $ed                                        ; $4fae: $ed
    rlca                                          ; $4faf: $07
    call nz, $a27d                                ; $4fb0: $c4 $7d $a2
    or e                                          ; $4fb3: $b3
    and c                                         ; $4fb4: $a1
    add a                                         ; $4fb5: $87
    inc h                                         ; $4fb6: $24
    jp nz, $0542                                  ; $4fb7: $c2 $42 $05

    ld c, e                                       ; $4fba: $4b
    ret nz                                        ; $4fbb: $c0

    pop hl                                        ; $4fbc: $e1
    ld a, [hl+]                                   ; $4fbd: $2a
    pop bc                                        ; $4fbe: $c1
    db $e4                                        ; $4fbf: $e4
    ldh [$e4], a                                  ; $4fc0: $e0 $e4
    ret nc                                        ; $4fc2: $d0

    db $ed                                        ; $4fc3: $ed
    dec hl                                        ; $4fc4: $2b
    push bc                                       ; $4fc5: $c5
    ld e, d                                       ; $4fc6: $5a
    and b                                         ; $4fc7: $a0
    jr jr_06a_5009                                ; $4fc8: $18 $3f

    and b                                         ; $4fca: $a0
    ret nz                                        ; $4fcb: $c0

    and $81                                       ; $4fcc: $e6 $81
    ld b, d                                       ; $4fce: $42
    ld c, e                                       ; $4fcf: $4b
    dec bc                                        ; $4fd0: $0b
    rst $38                                       ; $4fd1: $ff
    ldh [$39], a                                  ; $4fd2: $e0 $39
    ld b, c                                       ; $4fd4: $41
    jp c, Jump_000_0081                           ; $4fd5: $da $81 $00

    ldh [$e4], a                                  ; $4fd8: $e0 $e4
    ret nc                                        ; $4fda: $d0

    db $ed                                        ; $4fdb: $ed
    db $eb                                        ; $4fdc: $eb
    and h                                         ; $4fdd: $a4
    ld b, h                                       ; $4fde: $44
    pop hl                                        ; $4fdf: $e1
    or h                                          ; $4fe0: $b4
    nop                                           ; $4fe1: $00
    sub a                                         ; $4fe2: $97
    and b                                         ; $4fe3: $a0
    inc d                                         ; $4fe4: $14
    inc hl                                        ; $4fe5: $23
    ld c, d                                       ; $4fe6: $4a
    ld h, b                                       ; $4fe7: $60
    add d                                         ; $4fe8: $82
    ccf                                           ; $4fe9: $3f
    ld b, b                                       ; $4fea: $40
    ld l, e                                       ; $4feb: $6b
    ret nz                                        ; $4fec: $c0

    ld [c], a                                     ; $4fed: $e2
    ld e, l                                       ; $4fee: $5d
    ret nz                                        ; $4fef: $c0

    inc h                                         ; $4ff0: $24
    ld [c], a                                     ; $4ff1: $e2
    ldh [$e2], a                                  ; $4ff2: $e0 $e2
    ret nc                                        ; $4ff4: $d0

    db $ec                                        ; $4ff5: $ec
    dec l                                         ; $4ff6: $2d
    ld [bc], a                                    ; $4ff7: $02
    cp e                                          ; $4ff8: $bb
    add [hl]                                      ; $4ff9: $86
    ld c, $f5                                     ; $4ffa: $0e $f5
    ldh [$f3], a                                  ; $4ffc: $e0 $f3
    and b                                         ; $4ffe: $a0
    ld [hl], d                                    ; $4fff: $72
    ld bc, $e311                                  ; $5000: $01 $11 $e3
    cp $20                                        ; $5003: $fe $20
    nop                                           ; $5005: $00
    ldh [rSB], a                                  ; $5006: $e0 $01
    ld c, e                                       ; $5008: $4b

jr_06a_5009:
    db $f4                                        ; $5009: $f4
    add d                                         ; $500a: $82
    ld l, b                                       ; $500b: $68
    add b                                         ; $500c: $80
    ldh [$e4], a                                  ; $500d: $e0 $e4
    ret nc                                        ; $500f: $d0

    db $ed                                        ; $5010: $ed
    xor l                                         ; $5011: $ad
    add h                                         ; $5012: $84
    add b                                         ; $5013: $80
    ld [c], a                                     ; $5014: $e2
    db $e3                                        ; $5015: $e3
    and c                                         ; $5016: $a1
    inc l                                         ; $5017: $2c
    sub h                                         ; $5018: $94
    inc bc                                        ; $5019: $03
    ldh a, [$e2]                                  ; $501a: $f0 $e2
    ld c, l                                       ; $501c: $4d
    dec l                                         ; $501d: $2d
    ret nz                                        ; $501e: $c0

    ret nz                                        ; $501f: $c0

    ld l, e                                       ; $5020: $6b
    ld b, d                                       ; $5021: $42
    add c                                         ; $5022: $81
    ld h, b                                       ; $5023: $60
    db $e4                                        ; $5024: $e4
    ld a, b                                       ; $5025: $78
    ret nc                                        ; $5026: $d0

    ldh a, [$30]                                  ; $5027: $f0 $30
    dec c                                         ; $5029: $0d
    ldh a, [$eb]                                  ; $502a: $f0 $eb
    dec l                                         ; $502c: $2d
    ld l, e                                       ; $502d: $6b
    dec bc                                        ; $502e: $0b
    ld l, e                                       ; $502f: $6b
    cp $2b                                        ; $5030: $fe $2b
    nop                                           ; $5032: $00
    ret nc                                        ; $5033: $d0

    db $ed                                        ; $5034: $ed
    jr nc, jr_06a_5044                            ; $5035: $30 $0d

    ldh a, [$e9]                                  ; $5037: $f0 $e9
    ld l, e                                       ; $5039: $6b
    nop                                           ; $503a: $00
    cp a                                          ; $503b: $bf
    pop bc                                        ; $503c: $c1
    ld b, c                                       ; $503d: $41
    add d                                         ; $503e: $82
    ldh [$f1], a                                  ; $503f: $e0 $f1
    dec hl                                        ; $5041: $2b
    ld h, d                                       ; $5042: $62
    db $fc                                        ; $5043: $fc

jr_06a_5044:
    jr nc, jr_06a_5053                            ; $5044: $30 $0d

    ldh a, [$e9]                                  ; $5046: $f0 $e9
    dec c                                         ; $5048: $0d
    ld l, l                                       ; $5049: $6d
    dec bc                                        ; $504a: $0b
    dec bc                                        ; $504b: $0b
    dec hl                                        ; $504c: $2b
    dec bc                                        ; $504d: $0b
    ldh a, [$c0]                                  ; $504e: $f0 $c0
    ld h, c                                       ; $5050: $61
    ldh [$f3], a                                  ; $5051: $e0 $f3

jr_06a_5053:
    jr nc, jr_06a_506b                            ; $5053: $30 $16

    ldh a, [$e3]                                  ; $5055: $f0 $e3
    dec c                                         ; $5057: $0d
    ld l, l                                       ; $5058: $6d
    ld c, e                                       ; $5059: $4b
    ld l, e                                       ; $505a: $6b
    add a                                         ; $505b: $87
    dec bc                                        ; $505c: $0b
    ld c, e                                       ; $505d: $4b
    ld c, e                                       ; $505e: $4b
    ret nz                                        ; $505f: $c0

    ld h, [hl]                                    ; $5060: $66
    ret nc                                        ; $5061: $d0

    rst $30                                       ; $5062: $f7
    jr nc, jr_06a_5076                            ; $5063: $30 $11

    ld l, d                                       ; $5065: $6a
    ld hl, $834b                                  ; $5066: $21 $4b $83
    ld l, e                                       ; $5069: $6b
    ld c, e                                       ; $506a: $4b

jr_06a_506b:
    ret nz                                        ; $506b: $c0

    ldh [$7f], a                                  ; $506c: $e0 $7f
    ld h, c                                       ; $506e: $61
    ldh [$f0], a                                  ; $506f: $e0 $f0
    jr nc, @+$1f                                  ; $5071: $30 $1d

    ei                                            ; $5073: $fb
    ld h, b                                       ; $5074: $60
    ld c, e                                       ; $5075: $4b

jr_06a_5076:
    nop                                           ; $5076: $00
    cp a                                          ; $5077: $bf
    pop hl                                        ; $5078: $e1
    ld a, l                                       ; $5079: $7d
    ld bc, $00fb                                  ; $507a: $01 $fb $00
    ldh [$ed], a                                  ; $507d: $e0 $ed
    ret nc                                        ; $507f: $d0

    xor $30                                       ; $5080: $ee $30
    inc c                                         ; $5082: $0c
    cp h                                          ; $5083: $bc
    ld h, b                                       ; $5084: $60
    ld bc, $0ea0                                  ; $5085: $01 $a0 $0e
    ld a, [hl]                                    ; $5088: $7e
    and b                                         ; $5089: $a0
    dec hl                                        ; $508a: $2b
    dec bc                                        ; $508b: $0b
    dec l                                         ; $508c: $2d
    ld a, c                                       ; $508d: $79
    inc bc                                        ; $508e: $03
    ldh [$eb], a                                  ; $508f: $e0 $eb
    ldh a, [$f1]                                  ; $5091: $f0 $f1
    ld h, b                                       ; $5093: $60
    ld [$7d00], sp                                ; $5094: $08 $00 $7d
    ld h, c                                       ; $5097: $61
    ret nz                                        ; $5098: $c0

    db $e3                                        ; $5099: $e3
    dec a                                         ; $509a: $3d
    and d                                         ; $509b: $a2
    ld l, b                                       ; $509c: $68
    and c                                         ; $509d: $a1
    ldh [$ea], a                                  ; $509e: $e0 $ea
    ldh a, [$f0]                                  ; $50a0: $f0 $f0
    xor a                                         ; $50a2: $af
    call nz, $c4f0                                ; $50a3: $c4 $f0 $c4
    inc e                                         ; $50a6: $1c
    rst $38                                       ; $50a7: $ff
    add b                                         ; $50a8: $80
    inc bc                                        ; $50a9: $03
    and b                                         ; $50aa: $a0
    dec bc                                        ; $50ab: $0b
    dec bc                                        ; $50ac: $0b
    dec l                                         ; $50ad: $2d
    dec a                                         ; $50ae: $3d
    ld h, b                                       ; $50af: $60
    cp d                                          ; $50b0: $ba
    inc bc                                        ; $50b1: $03
    ldh [$eb], a                                  ; $50b2: $e0 $eb
    ld [$0333], sp                                ; $50b4: $08 $33 $03
    jr nc, jr_06a_50c6                            ; $50b7: $30 $0d

    cp [hl]                                       ; $50b9: $be
    xor b                                         ; $50ba: $a8
    dec l                                         ; $50bb: $2d
    ld [bc], a                                    ; $50bc: $02
    jp nz, $e13f                                  ; $50bd: $c2 $3f $e1

    inc a                                         ; $50c0: $3c
    ld bc, $812a                                  ; $50c1: $01 $2a $81
    ld b, b                                       ; $50c4: $40
    sbc d                                         ; $50c5: $9a

jr_06a_50c6:
    ld [c], a                                     ; $50c6: $e2
    ret nc                                        ; $50c7: $d0

    db $eb                                        ; $50c8: $eb
    jr nc, jr_06a_50d8                            ; $50c9: $30 $0d

    ldh a, [$e5]                                  ; $50cb: $f0 $e5
    add d                                         ; $50cd: $82
    and h                                         ; $50ce: $a4
    rst $38                                       ; $50cf: $ff
    jp nz, $bc4b                                  ; $50d0: $c2 $4b $bc

    ld [bc], a                                    ; $50d3: $02
    nop                                           ; $50d4: $00
    ld a, e                                       ; $50d5: $7b
    and e                                         ; $50d6: $a3
    ret nc                                        ; $50d7: $d0

jr_06a_50d8:
    db $ed                                        ; $50d8: $ed
    jr nc, jr_06a_50e9                            ; $50d9: $30 $0e

    ldh a, [$e4]                                  ; $50db: $f0 $e4
    ld b, c                                       ; $50dd: $41
    and e                                         ; $50de: $a3
    ld b, d                                       ; $50df: $42
    ret nz                                        ; $50e0: $c0

    ld a, l                                       ; $50e1: $7d
    pop bc                                        ; $50e2: $c1
    cp h                                          ; $50e3: $bc
    ld bc, $c000                                  ; $50e4: $01 $00 $c0
    db $e4                                        ; $50e7: $e4
    ret nc                                        ; $50e8: $d0

jr_06a_50e9:
    xor $30                                       ; $50e9: $ee $30
    inc c                                         ; $50eb: $0c
    ldh a, [$e5]                                  ; $50ec: $f0 $e5
    ld a, a                                       ; $50ee: $7f
    and e                                         ; $50ef: $a3
    ld a, e                                       ; $50f0: $7b
    ld [bc], a                                    ; $50f1: $02
    push af                                       ; $50f2: $f5
    jr nz, jr_06a_5076                            ; $50f3: $20 $81

    jp $db00                                      ; $50f5: $c3 $00 $db


    jp nz, $ecd0                                  ; $50f8: $c2 $d0 $ec

    jr nc, jr_06a_510a                            ; $50fb: $30 $0d

    ldh a, [$e5]                                  ; $50fd: $f0 $e5
    rrca                                          ; $50ff: $0f
    and h                                         ; $5100: $a4
    ld a, [hl-]                                   ; $5101: $3a
    ld [$a2df], sp                                ; $5102: $08 $df $a2
    ret nc                                        ; $5105: $d0

    xor $00                                       ; $5106: $ee $00
    jr nc, jr_06a_511c                            ; $5108: $30 $12

jr_06a_510a:
    and $c4                                       ; $510a: $e6 $c4
    ld a, [hl]                                    ; $510c: $7e
    add d                                         ; $510d: $82
    add hl, sp                                    ; $510e: $39
    inc b                                         ; $510f: $04
    ld a, d                                       ; $5110: $7a
    add e                                         ; $5111: $83
    sub a                                         ; $5112: $97
    pop hl                                        ; $5113: $e1
    ret nc                                        ; $5114: $d0

    ldh a, [$30]                                  ; $5115: $f0 $30
    ld [$f080], sp                                ; $5117: $08 $80 $f0
    add sp, -$13                                  ; $511a: $e8 $ed

jr_06a_511c:
    and h                                         ; $511c: $a4
    cp a                                          ; $511d: $bf
    jp hl                                         ; $511e: $e9


    ret nz                                        ; $511f: $c0

    db $e4                                        ; $5120: $e4
    ret nc                                        ; $5121: $d0

    add sp, $30                                   ; $5122: $e8 $30
    dec c                                         ; $5124: $0d
    ld e, c                                       ; $5125: $59
    ld c, h                                       ; $5126: $4c
    ld c, l                                       ; $5127: $4d
    nop                                           ; $5128: $00
    scf                                           ; $5129: $37
    ld h, b                                       ; $512a: $60
    ld a, [hl]                                    ; $512b: $7e
    add sp, $64                                   ; $512c: $e8 $64
    ld b, c                                       ; $512e: $41
    ret nc                                        ; $512f: $d0

    db $eb                                        ; $5130: $eb
    jr nc, jr_06a_5140                            ; $5131: $30 $0d

    ldh a, [$e8]                                  ; $5133: $f0 $e8
    ld d, h                                       ; $5135: $54
    ld bc, $60fc                                  ; $5136: $01 $fc $60
    nop                                           ; $5139: $00
    ld [hl], e                                    ; $513a: $73
    inc hl                                        ; $513b: $23
    ld a, l                                       ; $513c: $7d
    and h                                         ; $513d: $a4
    or [hl]                                       ; $513e: $b6
    ld h, b                                       ; $513f: $60

jr_06a_5140:
    ret nc                                        ; $5140: $d0

    db $eb                                        ; $5141: $eb
    ld d, b                                       ; $5142: $50
    ld b, $30                                     ; $5143: $06 $30
    inc de                                        ; $5145: $13
    cp c                                          ; $5146: $b9
    add e                                         ; $5147: $83
    pop bc                                        ; $5148: $c1
    push hl                                       ; $5149: $e5
    nop                                           ; $514a: $00
    ld e, d                                       ; $514b: $5a
    and d                                         ; $514c: $a2
    ret nc                                        ; $514d: $d0

    ld a, [$e7c0]                                 ; $514e: $fa $c0 $e7
    ld l, a                                       ; $5151: $6f
    jp $eac1                                      ; $5152: $c3 $c1 $ea


    add b                                         ; $5155: $80
    jp hl                                         ; $5156: $e9


    ret nc                                        ; $5157: $d0

    add sp, $30                                   ; $5158: $e8 $30
    dec c                                         ; $515a: $0d
    nop                                           ; $515b: $00
    ldh a, [$e5]                                  ; $515c: $f0 $e5
    ret nz                                        ; $515e: $c0

    ld [c], a                                     ; $515f: $e2
    or h                                          ; $5160: $b4
    inc b                                         ; $5161: $04
    jr z, jr_06a_51a7                             ; $5162: $28 $43

    ld b, b                                       ; $5164: $40
    db $e3                                        ; $5165: $e3
    ret nc                                        ; $5166: $d0

    db $ed                                        ; $5167: $ed
    jr nc, @+$0f                                  ; $5168: $30 $0d

    ldh a, [$e5]                                  ; $516a: $f0 $e5
    nop                                           ; $516c: $00
    ld e, c                                       ; $516d: $59
    ld b, c                                       ; $516e: $41
    ld [hl], l                                    ; $516f: $75
    inc b                                         ; $5170: $04
    xor c                                         ; $5171: $a9
    inc h                                         ; $5172: $24
    dec h                                         ; $5173: $25
    ld [hl+], a                                   ; $5174: $22
    ret nc                                        ; $5175: $d0

    xor $30                                       ; $5176: $ee $30
    dec bc                                        ; $5178: $0b
    ldh a, [$e4]                                  ; $5179: $f0 $e4
    ld d, h                                       ; $517b: $54
    inc b                                         ; $517c: $04
    nop                                           ; $517d: $00
    or [hl]                                       ; $517e: $b6
    inc bc                                        ; $517f: $03
    ld b, b                                       ; $5180: $40
    ld h, e                                       ; $5181: $63
    push hl                                       ; $5182: $e5
    inc b                                         ; $5183: $04
    ld b, b                                       ; $5184: $40
    ld c, $f0                                     ; $5185: $0e $f0
    ld a, [c]                                     ; $5187: $f2
    db $d3                                        ; $5188: $d3
    add h                                         ; $5189: $84
    rst $30                                       ; $518a: $f7
    inc b                                         ; $518b: $04
    xor c                                         ; $518c: $a9
    ld [bc], a                                    ; $518d: $02
    nop                                           ; $518e: $00
    ret nz                                        ; $518f: $c0

    push af                                       ; $5190: $f5
    jr nc, jr_06a_519d                            ; $5191: $30 $0a

    rst $38                                       ; $5193: $ff
    and l                                         ; $5194: $a5
    ret nz                                        ; $5195: $c0

    and $bf                                       ; $5196: $e6 $bf
    db $e4                                        ; $5198: $e4
    ld [$41c1], sp                                ; $5199: $08 $c1 $41
    push bc                                       ; $519c: $c5

jr_06a_519d:
    ld d, b                                       ; $519d: $50
    jp hl                                         ; $519e: $e9


    nop                                           ; $519f: $00
    jr nc, jr_06a_51b1                            ; $51a0: $30 $0f

    rst $00                                       ; $51a2: $c7
    and l                                         ; $51a3: $a5
    ld hl, sp+$04                                 ; $51a4: $f8 $04
    ret nz                                        ; $51a6: $c0

jr_06a_51a7:
    and e                                         ; $51a7: $a3
    cp a                                          ; $51a8: $bf
    ld [c], a                                     ; $51a9: $e2
    call nz, $d0a5                                ; $51aa: $c4 $a5 $d0
    db $eb                                        ; $51ad: $eb
    jr nc, jr_06a_51bc                            ; $51ae: $30 $0c

    nop                                           ; $51b0: $00

jr_06a_51b1:
    ldh a, [$e9]                                  ; $51b1: $f0 $e9
    jp nc, $bda2                                  ; $51b3: $d2 $a2 $bd

    add e                                         ; $51b6: $83
    ld a, a                                       ; $51b7: $7f
    ld [bc], a                                    ; $51b8: $02
    ldh [$ed], a                                  ; $51b9: $e0 $ed
    ret nc                                        ; $51bb: $d0

jr_06a_51bc:
    pop hl                                        ; $51bc: $e1
    jr nc, jr_06a_51cd                            ; $51bd: $30 $0e

    ldh a, [$ec]                                  ; $51bf: $f0 $ec
    ld bc, $3e2d                                  ; $51c1: $01 $2d $3e
    jp nz, $a32f                                  ; $51c4: $c2 $2f $a3

    ldh [$f1], a                                  ; $51c7: $e0 $f1
    jr nc, @+$16                                  ; $51c9: $30 $14

    ldh a, [$e6]                                  ; $51cb: $f0 $e6

jr_06a_51cd:
    ld a, c                                       ; $51cd: $79
    ld bc, $e364                                  ; $51ce: $01 $64 $e3
    nop                                           ; $51d1: $00
    ldh [$f3], a                                  ; $51d2: $e0 $f3
    jr nc, jr_06a_51e2                            ; $51d4: $30 $0c

    ldh a, [$ee]                                  ; $51d6: $f0 $ee
    ld a, c                                       ; $51d8: $79
    nop                                           ; $51d9: $00
    dec h                                         ; $51da: $25
    ldh [rIE], a                                  ; $51db: $e0 $ff
    ld [c], a                                     ; $51dd: $e2
    ldh [$f1], a                                  ; $51de: $e0 $f1
    jr nc, jr_06a_51f0                            ; $51e0: $30 $0e

jr_06a_51e2:
    nop                                           ; $51e2: $00
    ldh a, [$ed]                                  ; $51e3: $f0 $ed
    push bc                                       ; $51e5: $c5
    db $e3                                        ; $51e6: $e3
    ldh [$f7], a                                  ; $51e7: $e0 $f7
    jr nc, jr_06a_51f7                            ; $51e9: $30 $0c

    ldh a, [$ee]                                  ; $51eb: $f0 $ee
    jp nz, $e0e4                                  ; $51ed: $c2 $e4 $e0

jr_06a_51f0:
    push af                                       ; $51f0: $f5
    nop                                           ; $51f1: $00
    nop                                           ; $51f2: $00
    nop                                           ; $51f3: $00
    rra                                           ; $51f4: $1f
    ret c                                         ; $51f5: $d8

    push de                                       ; $51f6: $d5

jr_06a_51f7:
    push de                                       ; $51f7: $d5
    ret c                                         ; $51f8: $d8

    and b                                         ; $51f9: $a0
    rst $38                                       ; $51fa: $ff
    add sp, -$10                                  ; $51fb: $e8 $f0
    db $ed                                        ; $51fd: $ed
    db $f4                                        ; $51fe: $f4
    db $ed                                        ; $51ff: $ed
    sbc $d0                                       ; $5200: $de $d0
    db $ed                                        ; $5202: $ed
    jp nc, $d4d6                                  ; $5203: $d2 $d6 $d4

    sub $bd                                       ; $5206: $d6 $bd
    ld [c], a                                     ; $5208: $e2
    sbc $df                                       ; $5209: $de $df
    ldh a, [$c2]                                  ; $520b: $f0 $c2
    ld [c], a                                     ; $520d: $e2
    ldh a, [$eb]                                  ; $520e: $f0 $eb
    and [hl]                                      ; $5210: $a6
    add sp, -$20                                  ; $5211: $e8 $e0
    ld a, [c]                                     ; $5213: $f2
    ret c                                         ; $5214: $d8

    push de                                       ; $5215: $d5
    sub $d2                                       ; $5216: $d6 $d2
    rst $38                                       ; $5218: $ff
    ret nc                                        ; $5219: $d0

    jp nc, $d6d4                                  ; $521a: $d2 $d4 $d6

    db $d3                                        ; $521d: $d3
    and b                                         ; $521e: $a0
    and b                                         ; $521f: $a0
    ldh [$ed], a                                  ; $5220: $e0 $ed
    pop hl                                        ; $5222: $e1
    ld a, c                                       ; $5223: $79
    ldh [$d3], a                                  ; $5224: $e0 $d3
    ret nc                                        ; $5226: $d0

    ldh a, [$e9]                                  ; $5227: $f0 $e9
    sbc a                                         ; $5229: $9f
    sbc l                                         ; $522a: $9d
    sbc a                                         ; $522b: $9f
    ret c                                         ; $522c: $d8

    ld h, l                                       ; $522d: $65
    rst $20                                       ; $522e: $e7
    ldh [$f0], a                                  ; $522f: $e0 $f0
    ret nc                                        ; $5231: $d0

    pop hl                                        ; $5232: $e1
    rst $10                                       ; $5233: $d7
    call nc, $e0bf                                ; $5234: $d4 $bf $e0
    rst $10                                       ; $5237: $d7
    jp nc, $d8ef                                  ; $5238: $d2 $ef $d8

    and b                                         ; $523b: $a0
    ld [c], a                                     ; $523c: $e2
    db $e3                                        ; $523d: $e3
    ldh a, [$ed]                                  ; $523e: $f0 $ed
    sbc a                                         ; $5240: $9f
    or [hl]                                       ; $5241: $b6
    jp $b6c5                                      ; $5242: $c3 $c5 $b6


    cp a                                          ; $5245: $bf
    db $e3                                        ; $5246: $e3
    ret c                                         ; $5247: $d8

    inc e                                         ; $5248: $1c
    ldh [$e0], a                                  ; $5249: $e0 $e0
    rst $28                                       ; $524b: $ef
    sub b                                         ; $524c: $90
    ld [c], a                                     ; $524d: $e2
    db $dd                                        ; $524e: $dd
    reti                                          ; $524f: $d9


    rst $18                                       ; $5250: $df
    rst $10                                       ; $5251: $d7
    call nc, $ddd7                                ; $5252: $d4 $d7 $dd
    ret nc                                        ; $5255: $d0

    ld a, a                                       ; $5256: $7f
    ldh [$a0], a                                  ; $5257: $e0 $a0
    db $eb                                        ; $5259: $eb
    rst $28                                       ; $525a: $ef
    and b                                         ; $525b: $a0
    and b                                         ; $525c: $a0
    rst $10                                       ; $525d: $d7
    jp nc, $e7f0                                  ; $525e: $d2 $f0 $e7

    sbc a                                         ; $5261: $9f
    or [hl]                                       ; $5262: $b6
    sub b                                         ; $5263: $90
    ld c, e                                       ; $5264: $4b
    call nz, Call_06a_7f9c                        ; $5265: $c4 $9c $7f
    db $e3                                        ; $5268: $e3
    db $d3                                        ; $5269: $d3
    ldh [$f1], a                                  ; $526a: $e0 $f1
    ret nc                                        ; $526c: $d0

    db $e3                                        ; $526d: $e3
    ret nc                                        ; $526e: $d0

    cp [hl]                                       ; $526f: $be
    ldh [$fb], a                                  ; $5270: $e0 $fb
    db $dd                                        ; $5272: $dd
    pop de                                        ; $5273: $d1
    ret nz                                        ; $5274: $c0

    pop hl                                        ; $5275: $e1
    db $ec                                        ; $5276: $ec
    db $ed                                        ; $5277: $ed
    and b                                         ; $5278: $a0
    and b                                         ; $5279: $a0
    jp c, $d339                                   ; $527a: $da $39 $d3

    ldh a, [$e6]                                  ; $527d: $f0 $e6
    add d                                         ; $527f: $82
    ldh [$90], a                                  ; $5280: $e0 $90
    sub b                                         ; $5282: $90
    and c                                         ; $5283: $a1
    add sp, -$3d                                  ; $5284: $e8 $c3
    sbc l                                         ; $5286: $9d
    ldh [$84], a                                  ; $5287: $e0 $84
    ldh [$ee], a                                  ; $5289: $e0 $ee
    ret nc                                        ; $528b: $d0

    db $e4                                        ; $528c: $e4
    call nc, $e040                                ; $528d: $d4 $40 $e0
    cp $c0                                        ; $5290: $fe $c0
    ldh [$e0], a                                  ; $5292: $e0 $e0
    ld a, d                                       ; $5294: $7a
    pop bc                                        ; $5295: $c1
    call c, $d77d                                 ; $5296: $dc $7d $d7
    ldh a, [$e6]                                  ; $5299: $f0 $e6
    sbc a                                         ; $529b: $9f
    or [hl]                                       ; $529c: $b6
    call nz, $90c3                                ; $529d: $c4 $c3 $90
    ld b, b                                       ; $52a0: $40
    ldh [$4e], a                                  ; $52a1: $e0 $4e
    add sp, -$3f                                  ; $52a3: $e8 $c1
    jp c, $dad9                                   ; $52a5: $da $d9 $da

    ldh [$ee], a                                  ; $52a8: $e0 $ee
    ret nc                                        ; $52aa: $d0

    db $e4                                        ; $52ab: $e4
    reti                                          ; $52ac: $d9


    ld b, b                                       ; $52ad: $40

Call_06a_52ae:
    ldh [rSCX], a                                 ; $52ae: $e0 $43
    call nc, $e0d7                                ; $52b0: $d4 $d7 $e0
    push hl                                       ; $52b3: $e5
    sub $e0                                       ; $52b4: $d6 $e0
    ldh a, [$e6]                                  ; $52b6: $f0 $e6
    cp a                                          ; $52b8: $bf
    ldh [$90], a                                  ; $52b9: $e0 $90
    cp a                                          ; $52bb: $bf
    ldh [$ce], a                                  ; $52bc: $e0 $ce
    add sp, -$3f                                  ; $52be: $e8 $c1
    call c, $dcdb                                 ; $52c0: $dc $db $dc
    ldh [$ef], a                                  ; $52c3: $e0 $ef
    ret nc                                        ; $52c5: $d0

    db $e3                                        ; $52c6: $e3
    db $db                                        ; $52c7: $db
    db $db                                        ; $52c8: $db
    ld a, [bc]                                    ; $52c9: $0a
    call $dae0                                    ; $52ca: $cd $e0 $da
    ldh [$e6], a                                  ; $52cd: $e0 $e6
    call c, $e8f0                                 ; $52cf: $dc $f0 $e8
    rst $38                                       ; $52d2: $ff
    ret nz                                        ; $52d3: $c0

    ld a, [hl]                                    ; $52d4: $7e
    ld [c], a                                     ; $52d5: $e2
    pop hl                                        ; $52d6: $e1
    xor c                                         ; $52d7: $a9
    add b                                         ; $52d8: $80
    ldh [$e9], a                                  ; $52d9: $e0 $e9
    ld c, a                                       ; $52db: $4f
    ld [c], a                                     ; $52dc: $e2
    call $a2e2                                    ; $52dd: $cd $e2 $a2
    pop hl                                        ; $52e0: $e1
    sbc h                                         ; $52e1: $9c
    pop bc                                        ; $52e2: $c1
    cp l                                          ; $52e3: $bd
    push hl                                       ; $52e4: $e5
    sub d                                         ; $52e5: $92
    db $e4                                        ; $52e6: $e4
    and c                                         ; $52e7: $a1
    add a                                         ; $52e8: $87
    sub b                                         ; $52e9: $90
    call nz, $7d90                                ; $52ea: $c4 $90 $7d
    push bc                                       ; $52ed: $c5
    ldh [$ee], a                                  ; $52ee: $e0 $ee
    ret nc                                        ; $52f0: $d0

    and $82                                       ; $52f1: $e6 $82
    and c                                         ; $52f3: $a1
    db $e4                                        ; $52f4: $e4
    or e                                          ; $52f5: $b3
    push hl                                       ; $52f6: $e5
    ret c                                         ; $52f7: $d8

    ld hl, sp-$60                                 ; $52f8: $f8 $a0
    halt                                          ; $52fa: $76
    and a                                         ; $52fb: $a7
    db $e4                                        ; $52fc: $e4
    push hl                                       ; $52fd: $e5
    add b                                         ; $52fe: $80
    db $e3                                        ; $52ff: $e3
    sub b                                         ; $5300: $90
    or b                                          ; $5301: $b0
    ld a, l                                       ; $5302: $7d
    call nz, $efe0                                ; $5303: $c4 $e0 $ef
    ret nc                                        ; $5306: $d0

    and $88                                       ; $5307: $e6 $88
    ld [c], a                                     ; $5309: $e2
    and $e7                                       ; $530a: $e6 $e7
    halt                                          ; $530c: $76
    ret nz                                        ; $530d: $c0

    pop de                                        ; $530e: $d1
    ld hl, $f9d0                                  ; $530f: $21 $d0 $f9
    and b                                         ; $5312: $a0
    ldh a, [$e5]                                  ; $5313: $f0 $e5
    ld b, b                                       ; $5315: $40
    pop bc                                        ; $5316: $c1
    ld a, a                                       ; $5317: $7f
    ret nz                                        ; $5318: $c0

    sub b                                         ; $5319: $90
    ld a, $c3                                     ; $531a: $3e $c3
    ldh [$ef], a                                  ; $531c: $e0 $ef
    inc e                                         ; $531e: $1c
    ret nc                                        ; $531f: $d0

    and $24                                       ; $5320: $e6 $24
    jp nz, $e9e8                                  ; $5322: $c2 $e8 $e9

    jp c, $a3b7                                   ; $5325: $da $b7 $a3

    ldh a, [$e6]                                  ; $5328: $f0 $e6
    ld bc, $07c2                                  ; $532a: $01 $c2 $07
    sub b                                         ; $532d: $90
    sub b                                         ; $532e: $90
    jp $c03e                                      ; $532f: $c3 $3e $c0


    pop hl                                        ; $5332: $e1
    add b                                         ; $5333: $80
    ldh [$ef], a                                  ; $5334: $e0 $ef
    ret nc                                        ; $5336: $d0

    and $24                                       ; $5337: $e6 $24
    jp nz, $46c2                                  ; $5339: $c2 $c2 $46

    ret nz                                        ; $533c: $c0

    jp c, $a1b7                                   ; $533d: $da $b7 $a1

    ld e, c                                       ; $5340: $59
    ret nz                                        ; $5341: $c0

    ldh a, [$e4]                                  ; $5342: $f0 $e4
    add d                                         ; $5344: $82
    db $e3                                        ; $5345: $e3
    jp Jump_000_10c4                              ; $5346: $c3 $c4 $10


    ret nz                                        ; $5349: $c0

    push bc                                       ; $534a: $c5
    ldh [$ed], a                                  ; $534b: $e0 $ed
    ret nc                                        ; $534d: $d0

    and $24                                       ; $534e: $e6 $24
    pop bc                                        ; $5350: $c1
    ld [$c286], a                                 ; $5351: $ea $86 $c2
    ld a, [de]                                    ; $5354: $1a
    ret nz                                        ; $5355: $c0

    ld e, c                                       ; $5356: $59
    ret nz                                        ; $5357: $c0

    inc e                                         ; $5358: $1c
    ldh a, [$e4]                                  ; $5359: $f0 $e4
    ld bc, $90c2                                  ; $535b: $01 $c2 $90
    call nz, Call_000_3dc3                        ; $535e: $c4 $c3 $3d
    and d                                         ; $5361: $a2
    ldh [$f0], a                                  ; $5362: $e0 $f0
    ret nc                                        ; $5364: $d0

    and $f0                                       ; $5365: $e6 $f0
    inc h                                         ; $5367: $24
    rst $00                                       ; $5368: $c7
    ld a, [de]                                    ; $5369: $1a
    jp $c514                                      ; $536a: $c3 $14 $c5


    ld bc, $c3c1                                  ; $536d: $01 $c1 $c3
    sub b                                         ; $5370: $90
    call nz, $c0c4                                ; $5371: $c4 $c4 $c0
    ld a, $c7                                     ; $5374: $3e $c7
    ldh [$eb], a                                  ; $5376: $e0 $eb
    ld [$04a9], a                                 ; $5378: $ea $a9 $04
    sub d                                         ; $537b: $92
    pop bc                                        ; $537c: $c1
    add b                                         ; $537d: $80
    ld a, [hl]                                    ; $537e: $7e
    and b                                         ; $537f: $a0
    sub c                                         ; $5380: $91
    xor [hl]                                      ; $5381: $ae
    ld bc, $fd91                                  ; $5382: $01 $91 $fd
    xor h                                         ; $5385: $ac
    call nc, $c26b                                ; $5386: $d4 $6b $c2
    ld h, d                                       ; $5389: $62
    inc b                                         ; $538a: $04
    add c                                         ; $538b: $81
    or a                                          ; $538c: $b7
    ld h, b                                       ; $538d: $60
    push af                                       ; $538e: $f5
    ld h, b                                       ; $538f: $60
    inc a                                         ; $5390: $3c
    jp $04fe                                      ; $5391: $c3 $fe $04


    add e                                         ; $5394: $83
    and c                                         ; $5395: $a1
    call nz, $c490                                ; $5396: $c4 $90 $c4
    sub c                                         ; $5399: $91
    ld b, [hl]                                    ; $539a: $46
    xor a                                         ; $539b: $af
    add e                                         ; $539c: $83
    ld b, [hl]                                    ; $539d: $46
    xor [hl]                                      ; $539e: $ae
    cp h                                          ; $539f: $bc
    jp nz, Jump_06a_63f0                          ; $53a0: $c2 $f0 $63

    ret nc                                        ; $53a3: $d0

    xor $86                                       ; $53a4: $ee $86
    add d                                         ; $53a6: $82
    inc b                                         ; $53a7: $04
    add c                                         ; $53a8: $81
    db $d3                                        ; $53a9: $d3
    push hl                                       ; $53aa: $e5
    sub $36                                       ; $53ab: $d6 $36
    add c                                         ; $53ad: $81
    sub $f0                                       ; $53ae: $d6 $f0
    and $80                                       ; $53b0: $e6 $80
    add c                                         ; $53b2: $81
    sub c                                         ; $53b3: $91
    ld b, e                                       ; $53b4: $43
    ld b, a                                       ; $53b5: $47
    rrca                                          ; $53b6: $0f
    ld d, l                                       ; $53b7: $55
    ld c, b                                       ; $53b8: $48
    ld c, b                                       ; $53b9: $48
    xor a                                         ; $53ba: $af
    ld a, d                                       ; $53bb: $7a
    add d                                         ; $53bc: $82
    ldh [$61], a                                  ; $53bd: $e0 $61
    and c                                         ; $53bf: $a1
    ld h, b                                       ; $53c0: $60
    inc e                                         ; $53c1: $1c
    jp nz, $d084                                  ; $53c2: $c2 $84 $d0

    db $ed                                        ; $53c5: $ed
    inc b                                         ; $53c6: $04
    add b                                         ; $53c7: $80
    ret c                                         ; $53c8: $d8

    ei                                            ; $53c9: $fb
    ld h, b                                       ; $53ca: $60
    cp b                                          ; $53cb: $b8
    add c                                         ; $53cc: $81
    ldh a, [$e5]                                  ; $53cd: $f0 $e5
    pop bc                                        ; $53cf: $c1
    ld [c], a                                     ; $53d0: $e2
    ld b, a                                       ; $53d1: $47
    ld a, a                                       ; $53d2: $7f
    ld c, h                                       ; $53d3: $4c
    ld d, a                                       ; $53d4: $57
    ld d, l                                       ; $53d5: $55
    ld d, h                                       ; $53d6: $54
    ld d, h                                       ; $53d7: $54
    ld b, h                                       ; $53d8: $44
    ld b, [hl]                                    ; $53d9: $46
    add hl, sp                                    ; $53da: $39
    add c                                         ; $53db: $81
    nop                                           ; $53dc: $00
    call c, $dce2                                 ; $53dd: $dc $e2 $dc
    and c                                         ; $53e0: $a1
    ld [hl], l                                    ; $53e1: $75
    add b                                         ; $53e2: $80
    ret nc                                        ; $53e3: $d0

    add sp, $0d                                   ; $53e4: $e8 $0d
    pop bc                                        ; $53e6: $c1
    rlca                                          ; $53e7: $07
    add b                                         ; $53e8: $80
    or $61                                        ; $53e9: $f6 $61
    rst $30                                       ; $53eb: $f7
    ld h, b                                       ; $53ec: $60
    db $db                                        ; $53ed: $db
    reti                                          ; $53ee: $d9


    db $dd                                        ; $53ef: $dd
    ldh a, [$e4]                                  ; $53f0: $f0 $e4
    sbc a                                         ; $53f2: $9f
    sbc l                                         ; $53f3: $9d
    inc bc                                        ; $53f4: $03
    and b                                         ; $53f5: $a0
    ld d, c                                       ; $53f6: $51
    ld e, [hl]                                    ; $53f7: $5e
    rst $38                                       ; $53f8: $ff
    ld d, d                                       ; $53f9: $52
    ld a, c                                       ; $53fa: $79
    ld a, d                                       ; $53fb: $7a
    ld a, h                                       ; $53fc: $7c
    ld a, l                                       ; $53fd: $7d
    ld c, c                                       ; $53fe: $49
    ld b, l                                       ; $53ff: $45
    xor [hl]                                      ; $5400: $ae
    inc [hl]                                      ; $5401: $34
    cp b                                          ; $5402: $b8
    ld h, e                                       ; $5403: $63
    sbc [hl]                                      ; $5404: $9e
    db $e3                                        ; $5405: $e3
    jp c, $ead0                                   ; $5406: $da $d0 $ea

    db $d3                                        ; $5409: $d3
    jp c, $8207                                   ; $540a: $da $07 $82

    ld b, [hl]                                    ; $540d: $46
    ld h, b                                       ; $540e: $60
    call $f7d1                                    ; $540f: $cd $d1 $f7
    ld h, b                                       ; $5412: $60
    ret nc                                        ; $5413: $d0

    ret nc                                        ; $5414: $d0

    ldh a, [$e3]                                  ; $5415: $f0 $e3
    inc bc                                        ; $5417: $03
    add d                                         ; $5418: $82
    call nz, $ff44                                ; $5419: $c4 $44 $ff
    ld d, [hl]                                    ; $541c: $56
    ld a, c                                       ; $541d: $79
    ld a, [hl]                                    ; $541e: $7e
    ld a, [hl+]                                   ; $541f: $2a
    ld a, [hl+]                                   ; $5420: $2a
    add c                                         ; $5421: $81
    ld c, e                                       ; $5422: $4b
    ld d, d                                       ; $5423: $52
    ld d, c                                       ; $5424: $51
    xor a                                         ; $5425: $af
    cp c                                          ; $5426: $b9
    add e                                         ; $5427: $83
    sbc h                                         ; $5428: $9c
    and b                                         ; $5429: $a0
    ld d, [hl]                                    ; $542a: $56
    add b                                         ; $542b: $80
    call c, $ead0                                 ; $542c: $dc $d0 $ea
    rst $10                                       ; $542f: $d7
    ld h, [hl]                                    ; $5430: $66
    add h                                         ; $5431: $84
    and h                                         ; $5432: $a4
    jr c, jr_06a_5496                             ; $5433: $38 $61

    or $40                                        ; $5435: $f6 $40
    call nc, $e2f0                                ; $5437: $d4 $f0 $e2
    add l                                         ; $543a: $85
    pop bc                                        ; $543b: $c1
    sub b                                         ; $543c: $90
    ld b, c                                       ; $543d: $41
    ldh [rHDMA5], a                               ; $543e: $e0 $55
    rst $38                                       ; $5440: $ff
    add b                                         ; $5441: $80
    dec l                                         ; $5442: $2d
    jr nz, jr_06a_546f                            ; $5443: $20 $2a

    add c                                         ; $5445: $81
    ld c, a                                       ; $5446: $4f
    ld d, [hl]                                    ; $5447: $56
    ld b, l                                       ; $5448: $45
    nop                                           ; $5449: $00
    cp c                                          ; $544a: $b9
    add e                                         ; $544b: $83
    sbc h                                         ; $544c: $9c
    and b                                         ; $544d: $a0
    ld d, [hl]                                    ; $544e: $56
    add [hl]                                      ; $544f: $86
    ret nc                                        ; $5450: $d0

    push hl                                       ; $5451: $e5
    rlca                                          ; $5452: $07
    add a                                         ; $5453: $87
    ld hl, sp+$62                                 ; $5454: $f8 $62
    rst $10                                       ; $5456: $d7
    ld h, d                                       ; $5457: $62
    pop bc                                        ; $5458: $c1
    db $e3                                        ; $5459: $e3
    rst $38                                       ; $545a: $ff
    sub b                                         ; $545b: $90
    ld b, l                                       ; $545c: $45
    ld c, e                                       ; $545d: $4b
    ld e, d                                       ; $545e: $5a
    add b                                         ; $545f: $80
    dec l                                         ; $5460: $2d
    ld a, [hl+]                                   ; $5461: $2a
    add e                                         ; $5462: $83
    rrca                                          ; $5463: $0f
    add h                                         ; $5464: $84
    ld c, d                                       ; $5465: $4a
    ld d, l                                       ; $5466: $55
    sub c                                         ; $5467: $91
    ld [hl], $c0                                  ; $5468: $36 $c0
    cp a                                          ; $546a: $bf
    ld [c], a                                     ; $546b: $e2
    ld c, $c7                                     ; $546c: $0e $c7
    ret nc                                        ; $546e: $d0

jr_06a_546f:
    push hl                                       ; $546f: $e5
    ldh a, [rTAC]                                 ; $5470: $f0 $07
    add a                                         ; $5472: $87
    ld hl, sp+$62                                 ; $5473: $f8 $62
    rlca                                          ; $5475: $07
    add h                                         ; $5476: $84
    add h                                         ; $5477: $84
    and c                                         ; $5478: $a1
    jp Jump_06a_4b45                              ; $5479: $c3 $45 $4b


    ld d, [hl]                                    ; $547c: $56
    ld a, a                                       ; $547d: $7f
    add d                                         ; $547e: $82
    add e                                         ; $547f: $83

Jump_06a_5480:
    add e                                         ; $5480: $83
    add [hl]                                      ; $5481: $86
    add l                                         ; $5482: $85
    ld c, b                                       ; $5483: $48
    ld c, b                                       ; $5484: $48
    ld a, b                                       ; $5485: $78
    and b                                         ; $5486: $a0
    ldh [$37], a                                  ; $5487: $e0 $37
    and [hl]                                      ; $5489: $a6
    ret nc                                        ; $548a: $d0

    db $ec                                        ; $548b: $ec
    dec h                                         ; $548c: $25
    add a                                         ; $548d: $87
    ld [$8487], sp                                ; $548e: $08 $87 $84
    and e                                         ; $5491: $a3
    call nz, Call_06a_52ae                        ; $5492: $c4 $ae $52
    rst $38                                       ; $5495: $ff

jr_06a_5496:
    ld e, b                                       ; $5496: $58
    add l                                         ; $5497: $85
    add a                                         ; $5498: $87
    add a                                         ; $5499: $87
    add l                                         ; $549a: $85
    ld c, e                                       ; $549b: $4b
    ld d, a                                       ; $549c: $57
    ld d, d                                       ; $549d: $52
    add b                                         ; $549e: $80
    add hl, sp                                    ; $549f: $39
    add b                                         ; $54a0: $80
    cp b                                          ; $54a1: $b8
    ld l, c                                       ; $54a2: $69
    ret nc                                        ; $54a3: $d0

    db $eb                                        ; $54a4: $eb
    dec hl                                        ; $54a5: $2b
    jp $820e                                      ; $54a6: $c3 $0e $82


    inc b                                         ; $54a9: $04
    add [hl]                                      ; $54aa: $86
    add h                                         ; $54ab: $84
    ld b, c                                       ; $54ac: $41
    jp $afff                                      ; $54ad: $c3 $ff $af


    ld b, l                                       ; $54b0: $45
    ld e, e                                       ; $54b1: $5b
    ld b, l                                       ; $54b2: $45
    ld [hl], $39                                  ; $54b3: $36 $39
    ld b, a                                       ; $54b5: $47
    ld h, b                                       ; $54b6: $60
    inc bc                                        ; $54b7: $03
    ld e, h                                       ; $54b8: $5c
    sub c                                         ; $54b9: $91
    ld a, c                                       ; $54ba: $79
    ld l, d                                       ; $54bb: $6a
    ret nc                                        ; $54bc: $d0

    db $ec                                        ; $54bd: $ec
    dec hl                                        ; $54be: $2b
    call nz, $810e                                ; $54bf: $c4 $0e $81
    ld a, l                                       ; $54c2: $7d
    ld h, e                                       ; $54c3: $63
    inc b                                         ; $54c4: $04
    add c                                         ; $54c5: $81
    cp $42                                        ; $54c6: $fe $42

jr_06a_54c8:
    add e                                         ; $54c8: $83
    sub c                                         ; $54c9: $91
    ld b, [hl]                                    ; $54ca: $46
    add hl, sp                                    ; $54cb: $39
    dec [hl]                                      ; $54cc: $35
    ld a, [hl-]                                   ; $54cd: $3a
    ld d, e                                       ; $54ce: $53
    ld d, e                                       ; $54cf: $53
    ld bc, $8291                                  ; $54d0: $01 $91 $82
    push hl                                       ; $54d3: $e5
    ld e, l                                       ; $54d4: $5d
    ld h, d                                       ; $54d5: $62
    ret nc                                        ; $54d6: $d0

    db $ed                                        ; $54d7: $ed
    dec hl                                        ; $54d8: $2b
    call nz, $800e                                ; $54d9: $c4 $0e $80
    add hl, de                                    ; $54dc: $19
    ld b, h                                       ; $54dd: $44
    or $e1                                        ; $54de: $f6 $e1
    cp $83                                        ; $54e0: $fe $83
    ld h, e                                       ; $54e2: $63
    jp Jump_000_3e46                              ; $54e3: $c3 $46 $3e


    dec [hl]                                      ; $54e6: $35
    dec [hl]                                      ; $54e7: $35
    add hl, sp                                    ; $54e8: $39
    xor [hl]                                      ; $54e9: $ae
    inc bc                                        ; $54ea: $03
    sub b                                         ; $54eb: $90
    or [hl]                                       ; $54ec: $b6
    ld a, b                                       ; $54ed: $78
    inc h                                         ; $54ee: $24
    ld sp, hl                                     ; $54ef: $f9
    ld [hl+], a                                   ; $54f0: $22
    ret nc                                        ; $54f1: $d0

    db $ed                                        ; $54f2: $ed
    dec hl                                        ; $54f3: $2b
    call nz, $c33c                                ; $54f4: $c4 $3c $c3
    add hl, sp                                    ; $54f7: $39
    ld b, h                                       ; $54f8: $44
    db $fc                                        ; $54f9: $fc
    db $f4                                        ; $54fa: $f4
    ld bc, $a0be                                  ; $54fb: $01 $be $a0
    call nz, Call_000_39ae                        ; $54fe: $c4 $ae $39
    dec [hl]                                      ; $5501: $35
    dec [hl]                                      ; $5502: $35

jr_06a_5503:
    ld a, [hl-]                                   ; $5503: $3a
    ld hl, $bdaf                                  ; $5504: $21 $af $bd
    ld b, [hl]                                    ; $5507: $46
    ld sp, hl                                     ; $5508: $f9
    ld [hl+], a                                   ; $5509: $22
    ret nc                                        ; $550a: $d0

    db $ed                                        ; $550b: $ed
    dec hl                                        ; $550c: $2b
    add $ea                                       ; $550d: $c6 $ea
    add hl, de                                    ; $550f: $19
    ld b, e                                       ; $5510: $43
    db $f4                                        ; $5511: $f4
    ld h, c                                       ; $5512: $61
    ld a, h                                       ; $5513: $7c
    db $f4                                        ; $5514: $f4
    ld [bc], a                                    ; $5515: $02
    ld a, a                                       ; $5516: $7f
    jr nz, jr_06a_54c8                            ; $5517: $20 $af

    ld b, h                                       ; $5519: $44
    inc a                                         ; $551a: $3c
    dec [hl]                                      ; $551b: $35
    ld a, [hl-]                                   ; $551c: $3a
    ld a, h                                       ; $551d: $7c
    ld [hl+], a                                   ; $551e: $22
    ret nz                                        ; $551f: $c0

    ld h, h                                       ; $5520: $64
    jr nz, jr_06a_5503                            ; $5521: $20 $e0

    db $e4                                        ; $5523: $e4
    ret nc                                        ; $5524: $d0

    db $ed                                        ; $5525: $ed
    cpl                                           ; $5526: $2f
    sub c                                         ; $5527: $91
    db $f4                                        ; $5528: $f4
    ld [bc], a                                    ; $5529: $02
    ld a, $20                                     ; $552a: $3e $20
    sbc h                                         ; $552c: $9c
    ld b, d                                       ; $552d: $42
    rrca                                          ; $552e: $0f
    dec [hl]                                      ; $552f: $35
    dec [hl]                                      ; $5530: $35
    ld a, $9e                                     ; $5531: $3e $9e
    dec e                                         ; $5533: $1d
    add b                                         ; $5534: $80
    ld e, l                                       ; $5535: $5d
    and d                                         ; $5536: $a2
    rst $38                                       ; $5537: $ff
    ld [hl], d                                    ; $5538: $72
    jr nc, jr_06a_5548                            ; $5539: $30 $0d

    ld a, $fc                                     ; $553b: $3e $fc
    ld l, d                                       ; $553d: $6a
    sbc a                                         ; $553e: $9f
    sbc h                                         ; $553f: $9c
    ld a, [hl-]                                   ; $5540: $3a
    dec [hl]                                      ; $5541: $35
    ld a, $fc                                     ; $5542: $3e $fc
    inc b                                         ; $5544: $04
    call c, $f372                                 ; $5545: $dc $72 $f3

jr_06a_5548:
    and b                                         ; $5548: $a0
    and b                                         ; $5549: $a0
    jr nc, @+$0f                                  ; $554a: $30 $0d

    ldh a, [$e9]                                  ; $554c: $f0 $e9
    ld [$9ea0], a                                 ; $554e: $ea $a0 $9e
    ld a, $07                                     ; $5551: $3e $07
    dec [hl]                                      ; $5553: $35
    ld a, [hl-]                                   ; $5554: $3a
    ld b, l                                       ; $5555: $45
    ld a, e                                       ; $5556: $7b
    inc bc                                        ; $5557: $03
    ldh [$f0], a                                  ; $5558: $e0 $f0
    adc [hl]                                      ; $555a: $8e
    ld h, c                                       ; $555b: $61
    jr nc, jr_06a_556b                            ; $555c: $30 $0d

    ldh a, [$ea]                                  ; $555e: $f0 $ea
    ccf                                           ; $5560: $3f
    sbc a                                         ; $5561: $9f
    sbc h                                         ; $5562: $9c
    ld a, $35                                     ; $5563: $3e $35
    inc a                                         ; $5565: $3c
    ld b, h                                       ; $5566: $44
    cp d                                          ; $5567: $ba
    ld bc, $f3e0                                  ; $5568: $01 $e0 $f3

jr_06a_556b:
    inc l                                         ; $556b: $2c

jr_06a_556c:
    jr nc, jr_06a_557e                            ; $556c: $30 $10

    ldh a, [$e9]                                  ; $556e: $f0 $e9
    sbc a                                         ; $5570: $9f
    sbc h                                         ; $5571: $9c
    rst $38                                       ; $5572: $ff
    and c                                         ; $5573: $a1
    ld b, l                                       ; $5574: $45
    ld a, l                                       ; $5575: $7d
    inc hl                                        ; $5576: $23
    ldh [$f0], a                                  ; $5577: $e0 $f0
    ld a, b                                       ; $5579: $78
    ld a, [hl-]                                   ; $557a: $3a
    add d                                         ; $557b: $82
    jr nc, @+$0e                                  ; $557c: $30 $0c

jr_06a_557e:
    ldh a, [$e8]                                  ; $557e: $f0 $e8
    and b                                         ; $5580: $a0
    and c                                         ; $5581: $a1
    xor [hl]                                      ; $5582: $ae
    ld b, [hl]                                    ; $5583: $46
    ld a, a                                       ; $5584: $7f
    and b                                         ; $5585: $a0
    add c                                         ; $5586: $81
    ld b, [hl]                                    ; $5587: $46
    call nz, $e083                                ; $5588: $c4 $83 $e0
    rst $28                                       ; $558b: $ef
    ret nc                                        ; $558c: $d0

    ld [c], a                                     ; $558d: $e2
    jr nc, jr_06a_559d                            ; $558e: $30 $0d

    ldh a, [$e7]                                  ; $5590: $f0 $e7
    ld b, b                                       ; $5592: $40
    pop bc                                        ; $5593: $c1
    ld b, [hl]                                    ; $5594: $46
    rra                                           ; $5595: $1f
    ld b, [hl]                                    ; $5596: $46
    ld b, l                                       ; $5597: $45
    ld b, l                                       ; $5598: $45
    ld b, [hl]                                    ; $5599: $46
    sub c                                         ; $559a: $91
    ld a, h                                       ; $559b: $7c
    ld b, e                                       ; $559c: $43

jr_06a_559d:
    ldh [$ed], a                                  ; $559d: $e0 $ed
    ret nc                                        ; $559f: $d0

    db $e3                                        ; $55a0: $e3
    cp b                                          ; $55a1: $b8
    jr nc, jr_06a_55b1                            ; $55a2: $30 $0d

    ldh a, [$e7]                                  ; $55a4: $f0 $e7
    cp h                                          ; $55a6: $bc
    ld h, b                                       ; $55a7: $60
    ld b, l                                       ; $55a8: $45
    scf                                           ; $55a9: $37
    dec a                                         ; $55aa: $3d
    rst $38                                       ; $55ab: $ff
    ldh [$37], a                                  ; $55ac: $e0 $37
    inc bc                                        ; $55ae: $03
    ld b, l                                       ; $55af: $45
    sub c                                         ; $55b0: $91

jr_06a_55b1:
    cp d                                          ; $55b1: $ba
    dec b                                         ; $55b2: $05
    ldh [$e9], a                                  ; $55b3: $e0 $e9
    ret nc                                        ; $55b5: $d0

    db $e3                                        ; $55b6: $e3
    jr nc, jr_06a_55c6                            ; $55b7: $30 $0d

    ldh a, [$e6]                                  ; $55b9: $f0 $e6
    ld b, c                                       ; $55bb: $41
    ld b, c                                       ; $55bc: $41
    ld [hl], a                                    ; $55bd: $77
    add hl, sp                                    ; $55be: $39
    and h                                         ; $55bf: $a4
    ld h, h                                       ; $55c0: $64
    rst $38                                       ; $55c1: $ff
    ldh [$a5], a                                  ; $55c2: $e0 $a5
    add hl, sp                                    ; $55c4: $39
    xor [hl]                                      ; $55c5: $ae

jr_06a_55c6:
    ld a, c                                       ; $55c6: $79
    ld h, $e0                                     ; $55c7: $26 $e0
    ldh [$e7], a                                  ; $55c9: $e0 $e7
    ld sp, hl                                     ; $55cb: $f9
    ld h, h                                       ; $55cc: $64
    jr nc, @+$0f                                  ; $55cd: $30 $0d

    ldh a, [$e6]                                  ; $55cf: $f0 $e6
    ret nz                                        ; $55d1: $c0

    ld hl, $693e                                  ; $55d2: $21 $3e $69
    and e                                         ; $55d5: $a3
    rra                                           ; $55d6: $1f
    dec [hl]                                      ; $55d7: $35
    dec [hl]                                      ; $55d8: $35
    and e                                         ; $55d9: $a3
    ld l, d                                       ; $55da: $6a
    ld a, $3d                                     ; $55db: $3e $3d
    and a                                         ; $55dd: $a7
    ldh [$e7], a                                  ; $55de: $e0 $e7
    ld c, a                                       ; $55e0: $4f
    db $e4                                        ; $55e1: $e4
    cp b                                          ; $55e2: $b8
    jr nc, @+$11                                  ; $55e3: $30 $0f

    jr z, jr_06a_556c                             ; $55e5: $28 $85

    ld a, l                                       ; $55e7: $7d
    add b                                         ; $55e8: $80
    ld a, $69                                     ; $55e9: $3e $69
    dec [hl]                                      ; $55eb: $35
    rst $38                                       ; $55ec: $ff
    ldh [rOCPS], a                                ; $55ed: $e0 $6a
    add b                                         ; $55ef: $80
    cp l                                          ; $55f0: $bd
    and c                                         ; $55f1: $a1
    ld bc, $1842                                  ; $55f2: $01 $42 $18
    ld hl, $eed0                                  ; $55f5: $21 $d0 $ee
    jr nc, jr_06a_5606                            ; $55f8: $30 $0c

    db $fc                                        ; $55fa: $fc
    ld h, [hl]                                    ; $55fb: $66
    inc a                                         ; $55fc: $3c
    add b                                         ; $55fd: $80
    add hl, sp                                    ; $55fe: $39
    dec de                                        ; $55ff: $1b
    ld l, e                                       ; $5600: $6b
    ld [hl], c                                    ; $5601: $71
    rst $38                                       ; $5602: $ff
    ldh [$6d], a                                  ; $5603: $e0 $6d
    add hl, sp                                    ; $5605: $39

jr_06a_5606:
    rst $38                                       ; $5606: $ff
    and b                                         ; $5607: $a0
    db $ed                                        ; $5608: $ed
    add e                                         ; $5609: $83
    ret nc                                        ; $560a: $d0

    ldh a, [rP1]                                  ; $560b: $f0 $00
    jr nc, @+$0f                                  ; $560d: $30 $0d

    ldh a, [$e4]                                  ; $560f: $f0 $e4
    nop                                           ; $5611: $00
    and e                                         ; $5612: $a3
    ret nz                                        ; $5613: $c0

    call nz, Call_000_007b                        ; $5614: $c4 $7b $00
    db $ed                                        ; $5617: $ed
    add h                                         ; $5618: $84
    ret nc                                        ; $5619: $d0

    rst $28                                       ; $561a: $ef
    jr nc, jr_06a_562a                            ; $561b: $30 $0d

    ld a, b                                       ; $561d: $78
    ldh a, [$e4]                                  ; $561e: $f0 $e4
    ld c, a                                       ; $5620: $4f
    ld [hl+], a                                   ; $5621: $22
    cp d                                          ; $5622: $ba
    ld h, b                                       ; $5623: $60
    jp $c390                                      ; $5624: $c3 $90 $c3


    sub c                                         ; $5627: $91
    add c                                         ; $5628: $81
    push bc                                       ; $5629: $c5

jr_06a_562a:
    nop                                           ; $562a: $00
    ld [$d041], sp                                ; $562b: $08 $41 $d0
    xor $30                                       ; $562e: $ee $30
    dec c                                         ; $5630: $0d
    ei                                            ; $5631: $fb
    ld h, [hl]                                    ; $5632: $66
    ccf                                           ; $5633: $3f
    and d                                         ; $5634: $a2
    ld a, e                                       ; $5635: $7b
    nop                                           ; $5636: $00
    push af                                       ; $5637: $f5
    ld b, c                                       ; $5638: $41
    ld a, [hl-]                                   ; $5639: $3a

jr_06a_563a:
    ld [bc], a                                    ; $563a: $02
    nop                                           ; $563b: $00
    ld a, e                                       ; $563c: $7b
    add e                                         ; $563d: $83
    ret nc                                        ; $563e: $d0

    db $ed                                        ; $563f: $ed
    jr nc, jr_06a_564f                            ; $5640: $30 $0d

    ldh a, [$e5]                                  ; $5642: $f0 $e5
    dec sp                                        ; $5644: $3b
    add e                                         ; $5645: $83
    ld a, b                                       ; $5646: $78
    ld [hl+], a                                   ; $5647: $22
    add d                                         ; $5648: $82
    ld b, b                                       ; $5649: $40
    ld a, [hl-]                                   ; $564a: $3a
    inc b                                         ; $564b: $04
    nop                                           ; $564c: $00

jr_06a_564d:
    ld a, [bc]                                    ; $564d: $0a
    ld h, b                                       ; $564e: $60

jr_06a_564f:
    ret nc                                        ; $564f: $d0

    db $ed                                        ; $5650: $ed
    ld bc, $2a8d                                  ; $5651: $01 $8d $2a
    dec c                                         ; $5654: $0d
    ld a, l                                       ; $5655: $7d
    db $e4                                        ; $5656: $e4
    cp [hl]                                       ; $5657: $be
    ld b, e                                       ; $5658: $43
    ld a, [bc]                                    ; $5659: $0a
    ld h, b                                       ; $565a: $60
    pop de                                        ; $565b: $d1
    ld [hl], b                                    ; $565c: $70
    nop                                           ; $565d: $00
    inc h                                         ; $565e: $24
    sub h                                         ; $565f: $94
    ld l, $c4                                     ; $5660: $2e $c4
    or $41                                        ; $5662: $f6 $41
    dec sp                                        ; $5664: $3b
    pop hl                                        ; $5665: $e1
    cp l                                          ; $5666: $bd
    and c                                         ; $5667: $a1
    db $e4                                        ; $5668: $e4
    ld b, e                                       ; $5669: $43
    call nc, Call_000_3069                        ; $566a: $d4 $69 $30
    dec c                                         ; $566d: $0d
    ld [$e8f0], sp                                ; $566e: $08 $f0 $e8
    ld d, h                                       ; $5671: $54
    ld [bc], a                                    ; $5672: $02
    dec c                                         ; $5673: $0d
    ret nz                                        ; $5674: $c0

    and c                                         ; $5675: $a1
    cp e                                          ; $5676: $bb
    ret nz                                        ; $5677: $c0

    pop af                                        ; $5678: $f1
    jr nz, jr_06a_563a                            ; $5679: $20 $bf

    jr z, jr_06a_564d                             ; $567b: $28 $d0

    add sp, $00                                   ; $567d: $e8 $00
    adc l                                         ; $567f: $8d
    ld b, d                                       ; $5680: $42
    jr nc, jr_06a_5690                            ; $5681: $30 $0d

    nop                                           ; $5683: $00
    ld h, b                                       ; $5684: $60
    ld d, h                                       ; $5685: $54
    ld b, $f4                                     ; $5686: $06 $f4
    inc hl                                        ; $5688: $23
    cp a                                          ; $5689: $bf
    inc hl                                        ; $568a: $23
    ret nz                                        ; $568b: $c0

    and d                                         ; $568c: $a2
    ret nc                                        ; $568d: $d0

    ldh a, [rP1]                                  ; $568e: $f0 $00

jr_06a_5690:
    jr nc, jr_06a_569a                            ; $5690: $30 $08

    ldh a, [$e5]                                  ; $5692: $f0 $e5
    ld d, h                                       ; $5694: $54
    dec b                                         ; $5695: $05
    ld b, c                                       ; $5696: $41
    push hl                                       ; $5697: $e5
    ld b, c                                       ; $5698: $41
    ld a, [hl+]                                   ; $5699: $2a

jr_06a_569a:
    ret nc                                        ; $569a: $d0

    add sp, $0d                                   ; $569b: $e8 $0d
    pop bc                                        ; $569d: $c1
    jr nc, jr_06a_56a9                            ; $569e: $30 $09

    ret nz                                        ; $56a0: $c0

    ldh a, [$e5]                                  ; $56a1: $f0 $e5
    add hl, hl                                    ; $56a3: $29
    ld b, l                                       ; $56a4: $45
    ld [hl], $02                                  ; $56a5: $36 $02
    cp $26                                        ; $56a7: $fe $26

jr_06a_56a9:
    sub $43                                       ; $56a9: $d6 $43
    ret nc                                        ; $56ab: $d0

    jp hl                                         ; $56ac: $e9


    db $d3                                        ; $56ad: $d3
    jp c, $a300                                   ; $56ae: $da $00 $a3

    ld b, e                                       ; $56b1: $43
    jr nc, @+$07                                  ; $56b2: $30 $05

    ldh a, [$e5]                                  ; $56b4: $f0 $e5
    ld d, h                                       ; $56b6: $54
    inc b                                         ; $56b7: $04
    ld [hl], $01                                  ; $56b8: $36 $01
    ld b, d                                       ; $56ba: $42
    inc hl                                        ; $56bb: $23
    ld c, a                                       ; $56bc: $4f
    ld hl, $42dc                                  ; $56bd: $21 $dc $42
    jp nz, $ebd0                                  ; $56c0: $c2 $d0 $eb

    rst $10                                       ; $56c3: $d7
    jr nc, jr_06a_56d2                            ; $56c4: $30 $0c

    ldh a, [$e5]                                  ; $56c6: $f0 $e5
    ld d, h                                       ; $56c8: $54
    inc b                                         ; $56c9: $04
    ld [hl], l                                    ; $56ca: $75
    ld bc, $90c4                                  ; $56cb: $01 $c4 $90
    nop                                           ; $56ce: $00
    dec a                                         ; $56cf: $3d
    ld b, c                                       ; $56d0: $41
    ld c, a                                       ; $56d1: $4f

jr_06a_56d2:
    ld hl, $88fb                                  ; $56d2: $21 $fb $88
    ret nc                                        ; $56d5: $d0

    push hl                                       ; $56d6: $e5
    rlca                                          ; $56d7: $07
    add a                                         ; $56d8: $87
    jr nc, jr_06a_56de                            ; $56d9: $30 $03

    rst $30                                       ; $56db: $f7
    ld h, l                                       ; $56dc: $65
    ld a, b                                       ; $56dd: $78

jr_06a_56de:
    dec h                                         ; $56de: $25
    nop                                           ; $56df: $00
    add hl, sp                                    ; $56e0: $39
    add c                                         ; $56e1: $81
    add c                                         ; $56e2: $81
    ld h, d                                       ; $56e3: $62
    ld c, a                                       ; $56e4: $4f
    ld hl, $86fb                                  ; $56e5: $21 $fb $86
    ret nc                                        ; $56e8: $d0

    rst $20                                       ; $56e9: $e7
    db $f4                                        ; $56ea: $f4
    daa                                           ; $56eb: $27
    jr nc, jr_06a_56f1                            ; $56ec: $30 $03

    db $ed                                        ; $56ee: $ed
    xor d                                         ; $56ef: $aa
    nop                                           ; $56f0: $00

jr_06a_56f1:
    dec a                                         ; $56f1: $3d
    and e                                         ; $56f2: $a3
    jp $a9a5                                      ; $56f3: $c3 $a5 $a9


    xor d                                         ; $56f6: $aa
    ret nc                                        ; $56f7: $d0

    push hl                                       ; $56f8: $e5
    jr nc, jr_06a_570a                            ; $56f9: $30 $0f

    push af                                       ; $56fb: $f5
    ld l, b                                       ; $56fc: $68
    dec a                                         ; $56fd: $3d
    and e                                         ; $56fe: $a3
    or a                                          ; $56ff: $b7
    ld h, b                                       ; $5700: $60
    nop                                           ; $5701: $00
    ld b, b                                       ; $5702: $40
    ld h, l                                       ; $5703: $65
    and a                                         ; $5704: $a7
    xor c                                         ; $5705: $a9
    ret nc                                        ; $5706: $d0

    push hl                                       ; $5707: $e5
    jr nc, @+$0e                                  ; $5708: $30 $0c

jr_06a_570a:
    ldh a, [$ee]                                  ; $570a: $f0 $ee
    ret nz                                        ; $570c: $c0

    and c                                         ; $570d: $a1
    jp $d0a9                                      ; $570e: $c3 $a9 $d0


    db $ec                                        ; $5711: $ec
    nop                                           ; $5712: $00
    jr nc, jr_06a_5722                            ; $5713: $30 $0d

    ldh a, [$ed]                                  ; $5715: $f0 $ed
    ret nz                                        ; $5717: $c0

    and d                                         ; $5718: $a2
    ld bc, $e063                                  ; $5719: $01 $63 $e0
    ld a, [c]                                     ; $571c: $f2
    jr nc, jr_06a_572c                            ; $571d: $30 $0d

    ldh a, [$ed]                                  ; $571f: $f0 $ed
    ei                                            ; $5721: $fb

jr_06a_5722:
    ld h, c                                       ; $5722: $61
    nop                                           ; $5723: $00
    jp nz, $e044                                  ; $5724: $c2 $44 $e0

    ld a, [c]                                     ; $5727: $f2
    jr nc, jr_06a_5737                            ; $5728: $30 $0d

    ldh a, [$ed]                                  ; $572a: $f0 $ed

jr_06a_572c:
    inc a                                         ; $572c: $3c
    add c                                         ; $572d: $81
    jp $e0a4                                      ; $572e: $c3 $a4 $e0


    ld a, [c]                                     ; $5731: $f2
    jr nc, jr_06a_5741                            ; $5732: $30 $0d

    nop                                           ; $5734: $00
    ldh a, [$ed]                                  ; $5735: $f0 $ed

jr_06a_5737:
    ld h, e                                       ; $5737: $63
    ld b, $e0                                     ; $5738: $06 $e0
    push af                                       ; $573a: $f5
    rst $38                                       ; $573b: $ff
    ld [hl], a                                    ; $573c: $77
    rra                                           ; $573d: $1f
    adc l                                         ; $573e: $8d
    ldh [$f1], a                                  ; $573f: $e0 $f1

jr_06a_5741:
    nop                                           ; $5741: $00
    nop                                           ; $5742: $00
    nop                                           ; $5743: $00
    pop bc                                        ; $5744: $c1
    nop                                           ; $5745: $00
    rst $38                                       ; $5746: $ff
    rst $38                                       ; $5747: $ff
    rst $38                                       ; $5748: $ff
    rst $38                                       ; $5749: $ff
    rst $38                                       ; $574a: $ff
    rst $38                                       ; $574b: $ff
    rst $38                                       ; $574c: $ff
    rst $38                                       ; $574d: $ff
    rst $38                                       ; $574e: $ff
    rst $38                                       ; $574f: $ff
    nop                                           ; $5750: $00
    nop                                           ; $5751: $00
    dec c                                         ; $5752: $0d
    add b                                         ; $5753: $80
    cp $e0                                        ; $5754: $fe $e0
    nop                                           ; $5756: $00
    ld b, b                                       ; $5757: $40
    ret c                                         ; $5758: $d8

    push hl                                       ; $5759: $e5
    rst $30                                       ; $575a: $f7
    and $eb                                       ; $575b: $e6 $eb
    ldh [rIE], a                                  ; $575d: $e0 $ff
    rst $38                                       ; $575f: $ff
    nop                                           ; $5760: $00
    rst $38                                       ; $5761: $ff
    db $f4                                        ; $5762: $f4
    nop                                           ; $5763: $00
    nop                                           ; $5764: $00
    nop                                           ; $5765: $00
    ld [bc], a                                    ; $5766: $02
    nop                                           ; $5767: $00
    dec e                                         ; $5768: $1d
    inc b                                         ; $5769: $04
    ld [bc], a                                    ; $576a: $02
    ld bc, $061b                                  ; $576b: $01 $1b $06
    ld [bc], a                                    ; $576e: $02
    ld [bc], a                                    ; $576f: $02
    inc e                                         ; $5770: $1c
    rlca                                          ; $5771: $07
    ld [bc], a                                    ; $5772: $02
    inc bc                                        ; $5773: $03
    ld e, $09                                     ; $5774: $1e $09
    ld [bc], a                                    ; $5776: $02
    inc b                                         ; $5777: $04
    jr nz, jr_06a_5784                            ; $5778: $20 $0a

    ld [bc], a                                    ; $577a: $02
    dec b                                         ; $577b: $05
    inc e                                         ; $577c: $1c
    inc c                                         ; $577d: $0c
    ld [bc], a                                    ; $577e: $02
    ld b, $1f                                     ; $577f: $06 $1f
    dec c                                         ; $5781: $0d
    ld [bc], a                                    ; $5782: $02
    rlca                                          ; $5783: $07

jr_06a_5784:
    ld a, [de]                                    ; $5784: $1a
    ld c, $02                                     ; $5785: $0e $02
    ld [$0e1e], sp                                ; $5787: $08 $1e $0e
    ld [bc], a                                    ; $578a: $02
    add hl, bc                                    ; $578b: $09
    dec de                                        ; $578c: $1b
    rrca                                          ; $578d: $0f
    ld [bc], a                                    ; $578e: $02
    ld a, [bc]                                    ; $578f: $0a
    rra                                           ; $5790: $1f
    rrca                                          ; $5791: $0f
    ld [bc], a                                    ; $5792: $02
    dec bc                                        ; $5793: $0b
    jr nz, @+$11                                  ; $5794: $20 $0f

    ld [bc], a                                    ; $5796: $02
    inc c                                         ; $5797: $0c
    dec e                                         ; $5798: $1d
    db $10                                        ; $5799: $10
    ld [bc], a                                    ; $579a: $02
    dec c                                         ; $579b: $0d
    inc e                                         ; $579c: $1c
    ld de, $0e02                                  ; $579d: $11 $02 $0e
    ld e, $11                                     ; $57a0: $1e $11
    ld [bc], a                                    ; $57a2: $02
    rrca                                          ; $57a3: $0f
    ld hl, $0211                                  ; $57a4: $21 $11 $02
    db $10                                        ; $57a7: $10
    inc hl                                        ; $57a8: $23
    ld [de], a                                    ; $57a9: $12
    ld [bc], a                                    ; $57aa: $02
    ld de, $151b                                  ; $57ab: $11 $1b $15
    ld [bc], a                                    ; $57ae: $02
    ld [de], a                                    ; $57af: $12
    dec h                                         ; $57b0: $25
    dec d                                         ; $57b1: $15
    ld [bc], a                                    ; $57b2: $02
    inc de                                        ; $57b3: $13
    jr jr_06a_57cc                                ; $57b4: $18 $16

    ld [bc], a                                    ; $57b6: $02
    inc d                                         ; $57b7: $14
    rla                                           ; $57b8: $17
    rla                                           ; $57b9: $17
    ld [bc], a                                    ; $57ba: $02
    dec d                                         ; $57bb: $15
    daa                                           ; $57bc: $27
    rla                                           ; $57bd: $17
    ld [bc], a                                    ; $57be: $02
    ld d, $16                                     ; $57bf: $16 $16
    jr @+$04                                      ; $57c1: $18 $02

    rla                                           ; $57c3: $17
    ld h, $18                                     ; $57c4: $26 $18
    ld [bc], a                                    ; $57c6: $02
    jr jr_06a_57f1                                ; $57c7: $18 $28

    jr jr_06a_57cd                                ; $57c9: $18 $02

    add hl, de                                    ; $57cb: $19

jr_06a_57cc:
    rla                                           ; $57cc: $17

jr_06a_57cd:
    add hl, de                                    ; $57cd: $19
    ld [bc], a                                    ; $57ce: $02
    ld a, [de]                                    ; $57cf: $1a
    ld a, [de]                                    ; $57d0: $1a
    add hl, de                                    ; $57d1: $19
    ld [bc], a                                    ; $57d2: $02
    dec de                                        ; $57d3: $1b
    daa                                           ; $57d4: $27
    add hl, de                                    ; $57d5: $19
    ld [bc], a                                    ; $57d6: $02
    inc e                                         ; $57d7: $1c
    add hl, de                                    ; $57d8: $19
    ld a, [de]                                    ; $57d9: $1a
    ld [bc], a                                    ; $57da: $02
    dec e                                         ; $57db: $1d
    dec de                                        ; $57dc: $1b
    ld a, [de]                                    ; $57dd: $1a
    ld [bc], a                                    ; $57de: $02
    ld e, $1a                                     ; $57df: $1e $1a
    dec de                                        ; $57e1: $1b
    ld [bc], a                                    ; $57e2: $02
    rra                                           ; $57e3: $1f
    dec h                                         ; $57e4: $25
    dec de                                        ; $57e5: $1b
    ld [bc], a                                    ; $57e6: $02
    jr nz, @+$1e                                  ; $57e7: $20 $1c

    dec e                                         ; $57e9: $1d
    ld [bc], a                                    ; $57ea: $02
    ld hl, $1d22                                  ; $57eb: $21 $22 $1d
    ld [bc], a                                    ; $57ee: $02
    ld [hl+], a                                   ; $57ef: $22
    dec e                                         ; $57f0: $1d

jr_06a_57f1:
    ld e, $02                                     ; $57f1: $1e $02
    inc hl                                        ; $57f3: $23
    inc hl                                        ; $57f4: $23
    inc h                                         ; $57f5: $24
    ld [bc], a                                    ; $57f6: $02
    inc h                                         ; $57f7: $24
    dec e                                         ; $57f8: $1d
    dec h                                         ; $57f9: $25
    ld [bc], a                                    ; $57fa: $02
    dec h                                         ; $57fb: $25
    inc h                                         ; $57fc: $24
    dec h                                         ; $57fd: $25
    ld [bc], a                                    ; $57fe: $02
    ld h, $1c                                     ; $57ff: $26 $1c
    daa                                           ; $5801: $27
    ld [bc], a                                    ; $5802: $02
    daa                                           ; $5803: $27
    ld h, $27                                     ; $5804: $26 $27
    ld [bc], a                                    ; $5806: $02
    jr z, jr_06a_5824                             ; $5807: $28 $1b

    jr z, jr_06a_580d                             ; $5809: $28 $02

    add hl, hl                                    ; $580b: $29
    dec h                                         ; $580c: $25

jr_06a_580d:
    jr z, @+$04                                   ; $580d: $28 $02

    ld a, [hl+]                                   ; $580f: $2a
    jr nz, jr_06a_583f                            ; $5810: $20 $2d

    ld [bc], a                                    ; $5812: $02
    dec hl                                        ; $5813: $2b
    ld [hl+], a                                   ; $5814: $22
    dec l                                         ; $5815: $2d
    ld [bc], a                                    ; $5816: $02
    inc l                                         ; $5817: $2c
    dec h                                         ; $5818: $25
    dec l                                         ; $5819: $2d
    ld [bc], a                                    ; $581a: $02
    dec l                                         ; $581b: $2d
    inc h                                         ; $581c: $24
    ld l, $02                                     ; $581d: $2e $02
    ld l, $26                                     ; $581f: $2e $26
    ld l, $02                                     ; $5821: $2e $02
    cpl                                           ; $5823: $2f

jr_06a_5824:
    inc hl                                        ; $5824: $23
    cpl                                           ; $5825: $2f
    ld [bc], a                                    ; $5826: $02
    jr nc, jr_06a_584e                            ; $5827: $30 $25

    cpl                                           ; $5829: $2f
    ld [bc], a                                    ; $582a: $02
    ld sp, $3027                                  ; $582b: $31 $27 $30
    ld [bc], a                                    ; $582e: $02
    ld [hl-], a                                   ; $582f: $32
    add hl, hl                                    ; $5830: $29
    ld sp, $3302                                  ; $5831: $31 $02 $33
    dec h                                         ; $5834: $25
    ld [hl-], a                                   ; $5835: $32
    ld [bc], a                                    ; $5836: $02
    inc [hl]                                      ; $5837: $34
    jr z, @+$34                                   ; $5838: $28 $32

    ld [bc], a                                    ; $583a: $02
    dec [hl]                                      ; $583b: $35
    ld h, $33                                     ; $583c: $26 $33
    ld [bc], a                                    ; $583e: $02

jr_06a_583f:
    ld [hl], $22                                  ; $583f: $36 $22
    dec [hl]                                      ; $5841: $35
    ld [bc], a                                    ; $5842: $02
    scf                                           ; $5843: $37
    ld hl, $0236                                  ; $5844: $21 $36 $02
    jr c, @+$25                                   ; $5847: $38 $23

    ld [hl], $02                                  ; $5849: $36 $02
    add hl, sp                                    ; $584b: $39
    ld [hl+], a                                   ; $584c: $22
    scf                                           ; $584d: $37

jr_06a_584e:
    ld [bc], a                                    ; $584e: $02
    ld a, [hl-]                                   ; $584f: $3a
    inc h                                         ; $5850: $24
    add hl, sp                                    ; $5851: $39
    ld [bc], a                                    ; $5852: $02
    dec sp                                        ; $5853: $3b
    ld h, $3a                                     ; $5854: $26 $3a
    ld [bc], a                                    ; $5856: $02
    inc a                                         ; $5857: $3c
    dec h                                         ; $5858: $25
    dec sp                                        ; $5859: $3b
    rst $38                                       ; $585a: $ff
    rst $38                                       ; $585b: $ff
    rst $38                                       ; $585c: $ff
    ld h, l                                       ; $585d: $65
    ld e, b                                       ; $585e: $58
    ld c, $5e                                     ; $585f: $0e $5e
    ld hl, sp+$64                                 ; $5861: $f8 $64
    ld a, [de]                                    ; $5863: $1a
    ld h, l                                       ; $5864: $65
    ld a, l                                       ; $5865: $7d
    ld c, l                                       ; $5866: $4d
    rst $38                                       ; $5867: $ff
    push hl                                       ; $5868: $e5
    dec c                                         ; $5869: $0d
    ld c, l                                       ; $586a: $4d
    ld l, $0e                                     ; $586b: $2e $0e
    ld c, $f7                                     ; $586d: $0e $f7
    db $e3                                        ; $586f: $e3
    ld a, e                                       ; $5870: $7b
    ld c, l                                       ; $5871: $4d
    dec c                                         ; $5872: $0d
    push af                                       ; $5873: $f5
    ld [c], a                                     ; $5874: $e2
    ld l, $2e                                     ; $5875: $2e $2e
    ld l, $0e                                     ; $5877: $2e $0e
    db $ec                                        ; $5879: $ec
    pop hl                                        ; $587a: $e1
    daa                                           ; $587b: $27
    dec c                                         ; $587c: $0d
    dec c                                         ; $587d: $0d
    dec c                                         ; $587e: $0d
    ld [c], a                                     ; $587f: $e2
    ldh [$fb], a                                  ; $5880: $e0 $fb
    pop hl                                        ; $5882: $e1
    ld c, $f6                                     ; $5883: $0e $f6
    ldh [$e9], a                                  ; $5885: $e0 $e9
    ldh [$e0], a                                  ; $5887: $e0 $e0
    reti                                          ; $5889: $d9


    pop hl                                        ; $588a: $e1
    db $ed                                        ; $588b: $ed
    ld [c], a                                     ; $588c: $e2
    ld sp, hl                                     ; $588d: $f9
    ld [c], a                                     ; $588e: $e2
    ret nc                                        ; $588f: $d0

    pop hl                                        ; $5890: $e1
    call z, Call_06a_4de0                         ; $5891: $cc $e0 $4d
    ld l, $6e                                     ; $5894: $2e $6e
    ld c, e                                       ; $5896: $4b
    ld c, $4e                                     ; $5897: $0e $4e
    cp [hl]                                       ; $5899: $be
    pop hl                                        ; $589a: $e1
    dec c                                         ; $589b: $0d
    push bc                                       ; $589c: $c5
    pop hl                                        ; $589d: $e1
    ret nz                                        ; $589e: $c0

    rst $20                                       ; $589f: $e7
    ld l, l                                       ; $58a0: $6d
    push bc                                       ; $58a1: $c5
    db $e3                                        ; $58a2: $e3
    ld a, [bc]                                    ; $58a3: $0a
    rst $38                                       ; $58a4: $ff
    pop hl                                        ; $58a5: $e1
    ld c, $c0                                     ; $58a6: $0e $c0
    ld [c], a                                     ; $58a8: $e2
    ld l, [hl]                                    ; $58a9: $6e
    ld sp, hl                                     ; $58aa: $f9
    pop hl                                        ; $58ab: $e1
    rst $08                                       ; $58ac: $cf
    pop hl                                        ; $58ad: $e1
    sub l                                         ; $58ae: $95
    ld [c], a                                     ; $58af: $e2
    db $fc                                        ; $58b0: $fc
    push hl                                       ; $58b1: $e5
    add sp, -$7f                                  ; $58b2: $e8 $81
    ldh [$80], a                                  ; $58b4: $e0 $80
    ldh [$be], a                                  ; $58b6: $e0 $be
    ldh [rKEY1], a                                ; $58b8: $e0 $4d
    pop hl                                        ; $58ba: $e1
    ld [c], a                                     ; $58bb: $e2
    ld l, l                                       ; $58bc: $6d
    ld l, l                                       ; $58bd: $6d
    ld c, $7b                                     ; $58be: $0e $7b
    ld c, l                                       ; $58c0: $4d
    ld l, l                                       ; $58c1: $6d
    add b                                         ; $58c2: $80
    ldh [$6d], a                                  ; $58c3: $e0 $6d
    ld l, l                                       ; $58c5: $6d
    ld l, l                                       ; $58c6: $6d
    ld c, l                                       ; $58c7: $4d
    pop de                                        ; $58c8: $d1
    push hl                                       ; $58c9: $e5
    ld bc, $962d                                  ; $58ca: $01 $2d $96
    db $e3                                        ; $58cd: $e3
    add b                                         ; $58ce: $80
    db $e4                                        ; $58cf: $e4
    xor [hl]                                      ; $58d0: $ae
    pop hl                                        ; $58d1: $e1
    ld b, e                                       ; $58d2: $43
    and $3a                                       ; $58d3: $e6 $3a

jr_06a_58d5:
    pop hl                                        ; $58d5: $e1

jr_06a_58d6:
    ld d, d                                       ; $58d6: $52
    db $e3                                        ; $58d7: $e3
    dec a                                         ; $58d8: $3d
    pop hl                                        ; $58d9: $e1
    jr nz, jr_06a_58d5                            ; $58da: $20 $f9

    db $e4                                        ; $58dc: $e4
    ld l, b                                       ; $58dd: $68
    pop hl                                        ; $58de: $e1
    ld [hl], b                                    ; $58df: $70
    pop hl                                        ; $58e0: $e1
    or c                                          ; $58e1: $b1
    pop hl                                        ; $58e2: $e1
    jp nc, $2de2                                  ; $58e3: $d2 $e2 $2d

    call z, $19e2                                 ; $58e6: $cc $e2 $19
    ldh [$e0], a                                  ; $58e9: $e0 $e0
    ld a, [hl-]                                   ; $58eb: $3a
    pop hl                                        ; $58ec: $e1
    call c, $b9e4                                 ; $58ed: $dc $e4 $b9
    db $e4                                        ; $58f0: $e4
    jr z, jr_06a_58d6                             ; $58f1: $28 $e3

    ld a, [hl]                                    ; $58f3: $7e
    pop hl                                        ; $58f4: $e1
    ld l, l                                       ; $58f5: $6d
    ld l, $0e                                     ; $58f6: $2e $0e
    add hl, bc                                    ; $58f8: $09
    ld l, [hl]                                    ; $58f9: $6e
    dec [hl]                                      ; $58fa: $35
    ldh [$b6], a                                  ; $58fb: $e0 $b6
    pop hl                                        ; $58fd: $e1
    dec c                                         ; $58fe: $0d
    ld [hl], h                                    ; $58ff: $74
    ld [c], a                                     ; $5900: $e2
    push hl                                       ; $5901: $e5
    ret nz                                        ; $5902: $c0

    pop bc                                        ; $5903: $c1
    ld [c], a                                     ; $5904: $e2
    cp a                                          ; $5905: $bf
    db $e4                                        ; $5906: $e4
    ld b, h                                       ; $5907: $44
    reti                                          ; $5908: $d9


    jp nz, $e8dc                                  ; $5909: $c2 $dc $e8

    dec c                                         ; $590c: $0d
    ldh a, [$c2]                                  ; $590d: $f0 $c2
    and a                                         ; $590f: $a7
    db $e3                                        ; $5910: $e3
    ret nz                                        ; $5911: $c0

    db $e3                                        ; $5912: $e3
    ld l, $f6                                     ; $5913: $2e $f6
    pop bc                                        ; $5915: $c1
    nop                                           ; $5916: $00
    push af                                       ; $5917: $f5
    pop bc                                        ; $5918: $c1
    and $c2                                       ; $5919: $e6 $c2
    call nz, $bbe4                                ; $591b: $c4 $e4 $bb
    ret nz                                        ; $591e: $c0

    ld b, b                                       ; $591f: $40
    ldh [$7e], a                                  ; $5920: $e0 $7e
    ldh [$b0], a                                  ; $5922: $e0 $b0
    jp nz, $e7dc                                  ; $5924: $c2 $dc $e7

    inc b                                         ; $5927: $04
    ldh a, [$c2]                                  ; $5928: $f0 $c2
    ld a, e                                       ; $592a: $7b
    ret nz                                        ; $592b: $c0

    ld l, l                                       ; $592c: $6d
    dec a                                         ; $592d: $3d
    ld [c], a                                     ; $592e: $e2
    ld a, [hl]                                    ; $592f: $7e
    ret nz                                        ; $5930: $c0

    ret nz                                        ; $5931: $c0

    pop hl                                        ; $5932: $e1
    push af                                       ; $5933: $f5
    call nz, $e885                                ; $5934: $c4 $85 $e8
    rla                                           ; $5937: $17
    ld a, [bc]                                    ; $5938: $0a
    ld a, [bc]                                    ; $5939: $0a
    ld l, d                                       ; $593a: $6a
    cp a                                          ; $593b: $bf
    db $e3                                        ; $593c: $e3
    dec l                                         ; $593d: $2d
    rst $10                                       ; $593e: $d7
    db $e3                                        ; $593f: $e3
    call c, Call_06a_70e6                         ; $5940: $dc $e6 $70
    call nz, Call_06a_6d81                        ; $5943: $c4 $81 $6d
    adc c                                         ; $5946: $89
    pop hl                                        ; $5947: $e1
    jp nc, $e0c0                                  ; $5948: $d2 $c0 $e0

    jp nz, $e3c0                                  ; $594b: $c2 $c0 $e3

    add hl, de                                    ; $594e: $19
    pop hl                                        ; $594f: $e1
    add h                                         ; $5950: $84
    push hl                                       ; $5951: $e5
    ld a, [bc]                                    ; $5952: $0a
    rrca                                          ; $5953: $0f
    ld a, [bc]                                    ; $5954: $0a
    ld a, [bc]                                    ; $5955: $0a
    ld a, [hl+]                                   ; $5956: $2a
    ld c, e                                       ; $5957: $4b
    inc a                                         ; $5958: $3c
    db $e4                                        ; $5959: $e4
    add b                                         ; $595a: $80
    db $e4                                        ; $595b: $e4
    call c, $14e4                                 ; $595c: $dc $e4 $14
    jp nz, $8c8e                                  ; $595f: $c2 $8e $8c

    ld [c], a                                     ; $5962: $e2
    ld c, [hl]                                    ; $5963: $4e
    ld c, $4e                                     ; $5964: $0e $4e
    ld h, $c0                                     ; $5966: $26 $c0
    db $e4                                        ; $5968: $e4
    jp hl                                         ; $5969: $e9


    ret nz                                        ; $596a: $c0

    and $2b                                       ; $596b: $e6 $2b
    ccf                                           ; $596d: $3f
    ld a, [bc]                                    ; $596e: $0a
    ld a, [hl+]                                   ; $596f: $2a
    dec bc                                        ; $5970: $0b
    dec hl                                        ; $5971: $2b
    dec bc                                        ; $5972: $0b
    dec bc                                        ; $5973: $0b
    ei                                            ; $5974: $fb
    push bc                                       ; $5975: $c5
    add b                                         ; $5976: $80
    rst $20                                       ; $5977: $e7
    add [hl]                                      ; $5978: $86
    ret nz                                        ; $5979: $c0

    rst $20                                       ; $597a: $e7
    ld l, [hl]                                    ; $597b: $6e
    ld l, [hl]                                    ; $597c: $6e
    cp a                                          ; $597d: $bf
    ldh [$f0], a                                  ; $597e: $e0 $f0
    call nz, $e680                                ; $5980: $c4 $80 $e6
    adc h                                         ; $5983: $8c
    push bc                                       ; $5984: $c5
    ld a, [bc]                                    ; $5985: $0a
    adc c                                         ; $5986: $89
    ld a, [bc]                                    ; $5987: $0a
    jp nz, $c0e0                                  ; $5988: $c2 $e0 $c0

    db $e4                                        ; $598b: $e4
    dec c                                         ; $598c: $0d
    ld a, a                                       ; $598d: $7f
    pop hl                                        ; $598e: $e1
    add b                                         ; $598f: $80
    add sp, -$7a                                  ; $5990: $e8 $86
    and d                                         ; $5992: $a2
    ld l, [hl]                                    ; $5993: $6e
    ld hl, sp-$33                                 ; $5994: $f8 $cd
    jp hl                                         ; $5996: $e9


    ld h, h                                       ; $5997: $64
    add sp, -$3c                                  ; $5998: $e8 $c4
    call nz, Call_000_2a2a                        ; $599a: $c4 $2a $2a
    dec hl                                        ; $599d: $2b
    dec bc                                        ; $599e: $0b
    ld l, e                                       ; $599f: $6b
    ld bc, $416b                                  ; $59a0: $01 $6b $41
    jp nz, $e3c0                                  ; $59a3: $c2 $c0 $e3

    call c, $a7e7                                 ; $59a6: $dc $e7 $a7
    and d                                         ; $59a9: $a2
    adc l                                         ; $59aa: $8d
    jp hl                                         ; $59ab: $e9


    db $e3                                        ; $59ac: $e3
    jp $ebc0                                      ; $59ad: $c3 $c0 $eb


    ccf                                           ; $59b0: $3f
    ld l, e                                       ; $59b1: $6b
    dec hl                                        ; $59b2: $2b
    ld c, e                                       ; $59b3: $4b
    ld l, e                                       ; $59b4: $6b
    ld a, [bc]                                    ; $59b5: $0a
    ld c, d                                       ; $59b6: $4a
    ld a, a                                       ; $59b7: $7f
    ret nz                                        ; $59b8: $c0

    ret nz                                        ; $59b9: $c0

    rst $28                                       ; $59ba: $ef
    and b                                         ; $59bb: $a0
    push bc                                       ; $59bc: $c5
    and h                                         ; $59bd: $a4
    pop af                                        ; $59be: $f1
    add $22                                       ; $59bf: $c6 $22
    and e                                         ; $59c1: $a3
    or a                                          ; $59c2: $b7
    and h                                         ; $59c3: $a4
    add $a5                                       ; $59c4: $c6 $a5
    dec c                                         ; $59c6: $0d
    inc bc                                        ; $59c7: $03
    ldh [$0a], a                                  ; $59c8: $e0 $0a
    dec e                                         ; $59ca: $1d
    ld a, [bc]                                    ; $59cb: $0a
    ld sp, hl                                     ; $59cc: $f9
    and h                                         ; $59cd: $a4
    ld c, l                                       ; $59ce: $4d
    dec l                                         ; $59cf: $2d
    ld l, l                                       ; $59d0: $6d
    dec e                                         ; $59d1: $1d
    and c                                         ; $59d2: $a1
    sbc d                                         ; $59d3: $9a
    and h                                         ; $59d4: $a4
    push hl                                       ; $59d5: $e5
    add d                                         ; $59d6: $82
    ret nc                                        ; $59d7: $d0

    or c                                          ; $59d8: $b1
    ret z                                         ; $59d9: $c8

    ld [hl-], a                                   ; $59da: $32
    pop bc                                        ; $59db: $c1
    inc hl                                        ; $59dc: $23
    and d                                         ; $59dd: $a2
    rla                                           ; $59de: $17
    jp nz, $c64d                                  ; $59df: $c2 $4d $c6

    and h                                         ; $59e2: $a4
    dec hl                                        ; $59e3: $2b
    dec bc                                        ; $59e4: $0b
    add e                                         ; $59e5: $83
    ld c, e                                       ; $59e6: $4b
    ld a, [bc]                                    ; $59e7: $0a
    ld b, c                                       ; $59e8: $41
    db $e4                                        ; $59e9: $e4
    rst $38                                       ; $59ea: $ff
    pop bc                                        ; $59eb: $c1
    xor e                                         ; $59ec: $ab
    add d                                         ; $59ed: $82
    ld b, l                                       ; $59ee: $45
    xor d                                         ; $59ef: $aa
    ld c, l                                       ; $59f0: $4d
    call nz, $a06d                                ; $59f1: $c4 $6d $a0
    or d                                          ; $59f4: $b2
    and d                                         ; $59f5: $a2
    or c                                          ; $59f6: $b1
    add d                                         ; $59f7: $82
    db $d3                                        ; $59f8: $d3
    add c                                         ; $59f9: $81
    adc b                                         ; $59fa: $88
    and l                                         ; $59fb: $a5
    add h                                         ; $59fc: $84
    jp nz, $bf2d                                  ; $59fd: $c2 $2d $bf

    push hl                                       ; $5a00: $e5
    dec l                                         ; $5a01: $2d
    nop                                           ; $5a02: $00
    ld bc, $62a3                                  ; $5a03: $01 $a3 $62
    add b                                         ; $5a06: $80
    cp b                                          ; $5a07: $b8
    add l                                         ; $5a08: $85
    ret nz                                        ; $5a09: $c0

    jp hl                                         ; $5a0a: $e9


    and d                                         ; $5a0b: $a2
    add d                                         ; $5a0c: $82
    jp hl                                         ; $5a0d: $e9


    jp $a349                                      ; $5a0e: $c3 $49 $a3


    ld a, [bc]                                    ; $5a11: $0a
    and b                                         ; $5a12: $a0
    or a                                          ; $5a13: $b7
    ld c, l                                       ; $5a14: $4d
    ld c, e                                       ; $5a15: $4b
    ld l, e                                       ; $5a16: $6b
    ld a, c                                       ; $5a17: $79
    and a                                         ; $5a18: $a7
    dec c                                         ; $5a19: $0d
    ld l, l                                       ; $5a1a: $6d
    ld a, d                                       ; $5a1b: $7a
    and c                                         ; $5a1c: $a1
    dec c                                         ; $5a1d: $0d
    ld bc, $560d                                  ; $5a1e: $01 $0d $56
    db $e3                                        ; $5a21: $e3
    rst $10                                       ; $5a22: $d7
    db $e3                                        ; $5a23: $e3
    jp nz, $8ba4                                  ; $5a24: $c2 $a4 $8b

    add b                                         ; $5a27: $80
    ret nz                                        ; $5a28: $c0

    db $e3                                        ; $5a29: $e3
    ld a, [bc]                                    ; $5a2a: $0a
    and [hl]                                      ; $5a2b: $a6
    adc c                                         ; $5a2c: $89
    and c                                         ; $5a2d: $a1
    ld [bc], a                                    ; $5a2e: $02
    cp $ec                                        ; $5a2f: $fe $ec
    ld l, l                                       ; $5a31: $6d
    add b                                         ; $5a32: $80
    ldh [$dc], a                                  ; $5a33: $e0 $dc
    ld h, d                                       ; $5a35: $62
    ld hl, sp+$62                                 ; $5a36: $f8 $62
    ret nz                                        ; $5a38: $c0

    ld l, b                                       ; $5a39: $68
    or [hl]                                       ; $5a3a: $b6
    ld h, [hl]                                    ; $5a3b: $66
    ret                                           ; $5a3c: $c9


    add $00                                       ; $5a3d: $c6 $00
    ld c, c                                       ; $5a3f: $49
    and b                                         ; $5a40: $a0
    adc c                                         ; $5a41: $89
    and h                                         ; $5a42: $a4
    add d                                         ; $5a43: $82
    jp hl                                         ; $5a44: $e9


    inc l                                         ; $5a45: $2c
    add b                                         ; $5a46: $80
    ld h, $81                                     ; $5a47: $26 $81
    sub c                                         ; $5a49: $91
    ld h, e                                       ; $5a4a: $63
    ld a, b                                       ; $5a4b: $78
    add [hl]                                      ; $5a4c: $86
    jp z, Jump_000_0465                           ; $5a4d: $ca $65 $04

    ld [hl], h                                    ; $5a50: $74
    ld h, d                                       ; $5a51: $62
    adc a                                         ; $5a52: $8f
    add h                                         ; $5a53: $84
    ld l, e                                       ; $5a54: $6b
    adc b                                         ; $5a55: $88
    and c                                         ; $5a56: $a1
    ld c, c                                       ; $5a57: $49
    call nz, $e543                                ; $5a58: $c4 $43 $e5
    dec d                                         ; $5a5b: $15
    and d                                         ; $5a5c: $a2
    sub e                                         ; $5a5d: $93
    and c                                         ; $5a5e: $a1
    jp nz, $8238                                  ; $5a5f: $c2 $38 $82

    dec c                                         ; $5a62: $0d
    ld d, h                                       ; $5a63: $54
    add l                                         ; $5a64: $85
    ld l, e                                       ; $5a65: $6b
    add c                                         ; $5a66: $81
    ld a, a                                       ; $5a67: $7f
    ld h, h                                       ; $5a68: $64
    ld a, [bc]                                    ; $5a69: $0a
    and [hl]                                      ; $5a6a: $a6
    dec c                                         ; $5a6b: $0d
    dec c                                         ; $5a6c: $0d
    db $10                                        ; $5a6d: $10
    adc d                                         ; $5a6e: $8a
    and c                                         ; $5a6f: $a1
    ld c, b                                       ; $5a70: $48
    and h                                         ; $5a71: $a4
    sbc a                                         ; $5a72: $9f
    add d                                         ; $5a73: $82
    rst $10                                       ; $5a74: $d7
    add c                                         ; $5a75: $81
    ld l, l                                       ; $5a76: $6d
    sub d                                         ; $5a77: $92
    and h                                         ; $5a78: $a4
    add d                                         ; $5a79: $82
    ld h, e                                       ; $5a7a: $63
    ld d, h                                       ; $5a7b: $54
    adc b                                         ; $5a7c: $88
    nop                                           ; $5a7d: $00
    xor [hl]                                      ; $5a7e: $ae
    add [hl]                                      ; $5a7f: $86
    cp a                                          ; $5a80: $bf
    rst $20                                       ; $5a81: $e7
    ld a, [bc]                                    ; $5a82: $0a
    and b                                         ; $5a83: $a0
    ld b, l                                       ; $5a84: $45
    ret nz                                        ; $5a85: $c0

    pop bc                                        ; $5a86: $c1
    push hl                                       ; $5a87: $e5
    ld hl, sp+$40                                 ; $5a88: $f8 $40
    and c                                         ; $5a8a: $a1
    ld h, d                                       ; $5a8b: $62
    add sp, $45                                   ; $5a8c: $e8 $45
    ldh [rPCM12], a                               ; $5a8e: $e0 $76
    add h                                         ; $5a90: $84
    jp z, Jump_06a_7fe5                           ; $5a91: $ca $e5 $7f

    ld h, [hl]                                    ; $5a94: $66
    jp z, $ce85                                   ; $5a95: $ca $85 $ce

    add b                                         ; $5a98: $80
    ld c, e                                       ; $5a99: $4b
    dec bc                                        ; $5a9a: $0b
    dec hl                                        ; $5a9b: $2b
    ld bc, $c46b                                  ; $5a9c: $01 $6b $c4
    db $e3                                        ; $5a9f: $e3
    halt                                          ; $5aa0: $76
    ld h, d                                       ; $5aa1: $62
    ccf                                           ; $5aa2: $3f
    ld h, h                                       ; $5aa3: $64
    xor b                                         ; $5aa4: $a8
    ld b, e                                       ; $5aa5: $43
    ld d, [hl]                                    ; $5aa6: $56
    ld h, d                                       ; $5aa7: $62
    ld d, h                                       ; $5aa8: $54
    add a                                         ; $5aa9: $87
    ccf                                           ; $5aaa: $3f
    ld h, l                                       ; $5aab: $65
    and $8c                                       ; $5aac: $e6 $8c
    add l                                         ; $5aae: $85
    dec c                                         ; $5aaf: $0d
    dec l                                         ; $5ab0: $2d
    inc b                                         ; $5ab1: $04
    ldh [$0d], a                                  ; $5ab2: $e0 $0d
    db $e3                                        ; $5ab4: $e3
    dec l                                         ; $5ab5: $2d
    dec l                                         ; $5ab6: $2d
    dec l                                         ; $5ab7: $2d
    db $10                                        ; $5ab8: $10
    xor b                                         ; $5ab9: $a8
    db $e4                                        ; $5aba: $e4
    add e                                         ; $5abb: $83
    ld b, c                                       ; $5abc: $41
    xor b                                         ; $5abd: $a8
    ld b, h                                       ; $5abe: $44
    add l                                         ; $5abf: $85
    ld h, c                                       ; $5ac0: $61
    ld l, [hl]                                    ; $5ac1: $6e
    ret nz                                        ; $5ac2: $c0

    jp hl                                         ; $5ac3: $e9


    ld a, a                                       ; $5ac4: $7f
    ld h, h                                       ; $5ac5: $64
    ld c, l                                       ; $5ac6: $4d
    add l                                         ; $5ac7: $85
    ld [bc], a                                    ; $5ac8: $02
    adc h                                         ; $5ac9: $8c
    add c                                         ; $5aca: $81
    dec hl                                        ; $5acb: $2b
    call nc, Call_000_0ca1                        ; $5acc: $d4 $a1 $0c
    pop hl                                        ; $5acf: $e1
    ldh [$65], a                                  ; $5ad0: $e0 $65
    sub e                                         ; $5ad2: $93
    ld h, c                                       ; $5ad3: $61
    xor b                                         ; $5ad4: $a8
    ld b, e                                       ; $5ad5: $43
    ld e, c                                       ; $5ad6: $59
    ld b, d                                       ; $5ad7: $42
    nop                                           ; $5ad8: $00
    add b                                         ; $5ad9: $80
    ld [$6424], a                                 ; $5ada: $ea $24 $64
    pop de                                        ; $5add: $d1
    ld b, h                                       ; $5ade: $44
    ld c, h                                       ; $5adf: $4c
    add e                                         ; $5ae0: $83
    sub e                                         ; $5ae1: $93
    add d                                         ; $5ae2: $82
    and e                                         ; $5ae3: $a3
    ld h, d                                       ; $5ae4: $62
    ldh [$63], a                                  ; $5ae5: $e0 $63
    dec bc                                        ; $5ae7: $0b
    call nz, $d500                                ; $5ae8: $c4 $00 $d5
    and c                                         ; $5aeb: $a1
    cp d                                          ; $5aec: $ba
    ld b, b                                       ; $5aed: $40
    ret nz                                        ; $5aee: $c0

    xor $ef                                       ; $5aef: $ee $ef
    inc hl                                        ; $5af1: $23
    pop de                                        ; $5af2: $d1
    ld b, e                                       ; $5af3: $43
    add h                                         ; $5af4: $84
    jp nz, Jump_06a_620e                          ; $5af5: $c2 $0e $62

    ld c, [hl]                                    ; $5af8: $4e
    jp nz, $e000                                  ; $5af9: $c2 $00 $e0

    ld h, e                                       ; $5afc: $63
    dec bc                                        ; $5afd: $0b
    res 0, b                                      ; $5afe: $cb $80
    add sp, -$02                                  ; $5b00: $e8 $fe
    ld b, b                                       ; $5b02: $40
    sbc e                                         ; $5b03: $9b
    ld b, e                                       ; $5b04: $43
    add c                                         ; $5b05: $81
    and h                                         ; $5b06: $a4
    add h                                         ; $5b07: $84
    jp nz, $e17f                                  ; $5b08: $c2 $7f $e1

    add b                                         ; $5b0b: $80
    ld c, l                                       ; $5b0c: $4d
    ld b, d                                       ; $5b0d: $42
    ldh [$66], a                                  ; $5b0e: $e0 $66
    add e                                         ; $5b10: $83
    ld c, e                                       ; $5b11: $4b
    ld c, l                                       ; $5b12: $4d
    jr nz, jr_06a_5b8d                            ; $5b13: $20 $78

    add a                                         ; $5b15: $87
    adc b                                         ; $5b16: $88
    add e                                         ; $5b17: $83
    ret nz                                        ; $5b18: $c0

jr_06a_5b19:
    push bc                                       ; $5b19: $c5
    ld c, l                                       ; $5b1a: $4d
    dec de                                        ; $5b1b: $1b
    ld l, e                                       ; $5b1c: $6b
    ld c, e                                       ; $5b1d: $4b
    adc l                                         ; $5b1e: $8d
    ld h, b                                       ; $5b1f: $60
    dec hl                                        ; $5b20: $2b
    ld c, e                                       ; $5b21: $4b
    jp nc, $9166                                  ; $5b22: $d2 $66 $91

    ld h, l                                       ; $5b25: $65
    add e                                         ; $5b26: $83
    ld c, c                                       ; $5b27: $49
    db $10                                        ; $5b28: $10
    cp [hl]                                       ; $5b29: $be
    dec h                                         ; $5b2a: $25
    dec de                                        ; $5b2b: $1b
    ld b, e                                       ; $5b2c: $43
    inc l                                         ; $5b2d: $2c
    inc h                                         ; $5b2e: $24
    dec c                                         ; $5b2f: $0d
    add [hl]                                      ; $5b30: $86
    ld c, e                                       ; $5b31: $4b
    adc e                                         ; $5b32: $8b
    ld b, b                                       ; $5b33: $40
    ccf                                           ; $5b34: $3f
    ld [c], a                                     ; $5b35: $e2
    ld de, $c06a                                  ; $5b36: $11 $6a $c0
    sbc a                                         ; $5b39: $9f
    ld b, a                                       ; $5b3a: $47
    ld e, a                                       ; $5b3b: $5f
    ld b, c                                       ; $5b3c: $41
    xor d                                         ; $5b3d: $aa
    add a                                         ; $5b3e: $87
    ld sp, hl                                     ; $5b3f: $f9
    inc h                                         ; $5b40: $24
    pop bc                                        ; $5b41: $c1
    and $cd                                       ; $5b42: $e6 $cd
    ld h, c                                       ; $5b44: $61
    ld a, [hl+]                                   ; $5b45: $2a
    ld a, [bc]                                    ; $5b46: $0a
    inc bc                                        ; $5b47: $03
    ld a, [bc]                                    ; $5b48: $0a
    ld c, d                                       ; $5b49: $4a
    ld d, d                                       ; $5b4a: $52
    add c                                         ; $5b4b: $81
    ret nz                                        ; $5b4c: $c0

    di                                            ; $5b4d: $f3
    pop bc                                        ; $5b4e: $c1
    ld h, e                                       ; $5b4f: $63
    add c                                         ; $5b50: $81
    dec b                                         ; $5b51: $05
    jp hl                                         ; $5b52: $e9


    inc bc                                        ; $5b53: $03
    ret nc                                        ; $5b54: $d0

    ld h, $21                                     ; $5b55: $26 $21
    ld l, e                                       ; $5b57: $6b
    ld b, l                                       ; $5b58: $45
    and d                                         ; $5b59: $a2
    ld a, [hl-]                                   ; $5b5a: $3a
    ret nz                                        ; $5b5b: $c0

    ret nz                                        ; $5b5c: $c0

    ld [$c10b], a                                 ; $5b5d: $ea $0b $c1
    dec l                                         ; $5b60: $2d
    jp $b24b                                      ; $5b61: $c3 $4b $b2


    add h                                         ; $5b64: $84
    ld [$0369], sp                                ; $5b65: $08 $69 $03
    ld d, e                                       ; $5b68: $53
    adc b                                         ; $5b69: $88
    dec b                                         ; $5b6a: $05
    and e                                         ; $5b6b: $a3
    dec bc                                        ; $5b6c: $0b
    ld [$c0a2], sp                                ; $5b6d: $08 $a2 $c0
    add sp, $72                                   ; $5b70: $e8 $72
    db $ec                                        ; $5b72: $ec
    add a                                         ; $5b73: $87
    jr nz, @+$12                                  ; $5b74: $20 $10

    or d                                          ; $5b76: $b2
    add e                                         ; $5b77: $83
    ld c, l                                       ; $5b78: $4d
    inc bc                                        ; $5b79: $03
    inc de                                        ; $5b7a: $13
    adc b                                         ; $5b7b: $88
    ld a, a                                       ; $5b7c: $7f
    db $e3                                        ; $5b7d: $e3
    ld c, e                                       ; $5b7e: $4b
    dec c                                         ; $5b7f: $0d
    ld [hl+], a                                   ; $5b80: $22
    and d                                         ; $5b81: $a2
    dec h                                         ; $5b82: $25
    ld e, [hl]                                    ; $5b83: $5e
    add h                                         ; $5b84: $84
    jr nz, jr_06a_5b19                            ; $5b85: $20 $92

    ld c, e                                       ; $5b87: $4b
    or d                                          ; $5b88: $b2
    add h                                         ; $5b89: $84
    ld h, $c2                                     ; $5b8a: $26 $c2
    dec [hl]                                      ; $5b8c: $35

jr_06a_5b8d:
    add b                                         ; $5b8d: $80
    ld e, d                                       ; $5b8e: $5a
    ld b, h                                       ; $5b8f: $44
    dec bc                                        ; $5b90: $0b
    ccf                                           ; $5b91: $3f
    db $e3                                        ; $5b92: $e3
    ld b, b                                       ; $5b93: $40
    jp nz, $7900                                  ; $5b94: $c2 $00 $79

    ld [bc], a                                    ; $5b97: $02
    sub e                                         ; $5b98: $93
    add l                                         ; $5b99: $85
    sbc h                                         ; $5b9a: $9c
    ld b, d                                       ; $5b9b: $42
    ld b, e                                       ; $5b9c: $43
    ld c, b                                       ; $5b9d: $48
    ld a, [c]                                     ; $5b9e: $f2
    adc b                                         ; $5b9f: $88
    rlca                                          ; $5ba0: $07
    ld h, e                                       ; $5ba1: $63
    add hl, de                                    ; $5ba2: $19
    ld b, h                                       ; $5ba3: $44
    ld b, b                                       ; $5ba4: $40
    jp nz, $c000                                  ; $5ba5: $c2 $00 $c0

    db $e4                                        ; $5ba8: $e4
    xor d                                         ; $5ba9: $aa
    ld [bc], a                                    ; $5baa: $02
    inc e                                         ; $5bab: $1c
    db $e3                                        ; $5bac: $e3
    sub h                                         ; $5bad: $94
    add l                                         ; $5bae: $85
    sub a                                         ; $5baf: $97
    add l                                         ; $5bb0: $85
    or d                                          ; $5bb1: $b2
    add a                                         ; $5bb2: $87
    xor e                                         ; $5bb3: $ab
    and l                                         ; $5bb4: $a5
    cp a                                          ; $5bb5: $bf
    and $01                                       ; $5bb6: $e6 $01
    ld l, e                                       ; $5bb8: $6b
    ld c, h                                       ; $5bb9: $4c
    ld hl, $2251                                  ; $5bba: $21 $51 $22
    inc e                                         ; $5bbd: $1c
    and $9e                                       ; $5bbe: $e6 $9e
    add h                                         ; $5bc0: $84
    ccf                                           ; $5bc1: $3f
    ld h, e                                       ; $5bc2: $63
    jr jr_06a_5c28                                ; $5bc3: $18 $63

    or d                                          ; $5bc5: $b2
    add h                                         ; $5bc6: $84
    ld a, [bc]                                    ; $5bc7: $0a
    xor e                                         ; $5bc8: $ab
    xor b                                         ; $5bc9: $a8
    ld c, l                                       ; $5bca: $4d
    rst $10                                       ; $5bcb: $d7
    inc h                                         ; $5bcc: $24
    dec hl                                        ; $5bcd: $2b
    rst $38                                       ; $5bce: $ff
    ldh [$7f], a                                  ; $5bcf: $e0 $7f
    and c                                         ; $5bd1: $a1
    and [hl]                                      ; $5bd2: $a6
    ld h, c                                       ; $5bd3: $61
    adc $62                                       ; $5bd4: $ce $62
    nop                                           ; $5bd6: $00
    add d                                         ; $5bd7: $82
    add c                                         ; $5bd8: $81
    ret nz                                        ; $5bd9: $c0

    db $e3                                        ; $5bda: $e3
    ret z                                         ; $5bdb: $c8

    ld b, c                                       ; $5bdc: $41
    inc de                                        ; $5bdd: $13
    jp nz, $c2c0                                  ; $5bde: $c2 $c0 $c2

    add $41                                       ; $5be1: $c6 $41
    ld l, $09                                     ; $5be3: $2e $09
    ei                                            ; $5be5: $fb
    pop bc                                        ; $5be6: $c1
    ret nz                                        ; $5be7: $c0

    ccf                                           ; $5be8: $3f
    and d                                         ; $5be9: $a2
    add hl, bc                                    ; $5bea: $09
    ld b, b                                       ; $5beb: $40
    cp a                                          ; $5bec: $bf
    pop bc                                        ; $5bed: $c1
    ld e, h                                       ; $5bee: $5c
    jp hl                                         ; $5bef: $e9


    jp z, Jump_06a_6a25                           ; $5bf0: $ca $25 $6a

    add e                                         ; $5bf3: $83
    ld l, $2e                                     ; $5bf4: $2e $2e
    nop                                           ; $5bf6: $00
    ld [hl], h                                    ; $5bf7: $74
    ld [c], a                                     ; $5bf8: $e2
    xor [hl]                                      ; $5bf9: $ae
    ld [$6280], sp                                ; $5bfa: $08 $80 $62
    cp d                                          ; $5bfd: $ba
    jp nz, $e040                                  ; $5bfe: $c2 $40 $e0

    add b                                         ; $5c01: $80
    ret nz                                        ; $5c02: $c0

    rst $38                                       ; $5c03: $ff
    add b                                         ; $5c04: $80
    adc [hl]                                      ; $5c05: $8e
    ld h, [hl]                                    ; $5c06: $66

jr_06a_5c07:
    add h                                         ; $5c07: $84
    inc hl                                        ; $5c08: $23
    ld [hl+], a                                   ; $5c09: $22
    ld b, a                                       ; $5c0a: $47
    ld h, l                                       ; $5c0b: $65
    dec c                                         ; $5c0c: $0d
    ld c, e                                       ; $5c0d: $4b
    inc bc                                        ; $5c0e: $03
    xor e                                         ; $5c0f: $ab
    ld h, e                                       ; $5c10: $63
    ld a, l                                       ; $5c11: $7d
    ld a, [hl+]                                   ; $5c12: $2a
    jp hl                                         ; $5c13: $e9


    jp nz, Jump_000_062d                          ; $5c14: $c2 $2d $06

    inc b                                         ; $5c17: $04
    ld h, d                                       ; $5c18: $62
    ld c, e                                       ; $5c19: $4b
    ld c, e                                       ; $5c1a: $4b
    nop                                           ; $5c1b: $00
    push bc                                       ; $5c1c: $c5
    adc $61                                       ; $5c1d: $ce $61

jr_06a_5c1f:
    pop de                                        ; $5c1f: $d1
    inc h                                         ; $5c20: $24
    and c                                         ; $5c21: $a1
    add d                                         ; $5c22: $82
    ld hl, $0040                                  ; $5c23: $21 $40 $00
    ld c, e                                       ; $5c26: $4b
    ld [bc], a                                    ; $5c27: $02

jr_06a_5c28:
    inc a                                         ; $5c28: $3c
    ld [c], a                                     ; $5c29: $e2
    ld c, d                                       ; $5c2a: $4a
    dec bc                                        ; $5c2b: $0b
    ld b, b                                       ; $5c2c: $40
    ld h, h                                       ; $5c2d: $64
    ld a, $a1                                     ; $5c2e: $3e $a1
    pop bc                                        ; $5c30: $c1
    ldh [rP1], a                                  ; $5c31: $e0 $00
    jp nz, Jump_000_22e2                          ; $5c33: $c2 $e2 $22

    nop                                           ; $5c36: $00
    and a                                         ; $5c37: $a7
    ld [hl+], a                                   ; $5c38: $22
    rst $18                                       ; $5c39: $df
    inc b                                         ; $5c3a: $04
    rlca                                          ; $5c3b: $07
    add $91                                       ; $5c3c: $c6 $91
    ld b, d                                       ; $5c3e: $42
    ld [hl], a                                    ; $5c3f: $77
    jr nz, jr_06a_5c1f                            ; $5c40: $20 $dd

    adc d                                         ; $5c42: $8a
    add h                                         ; $5c43: $84
    ld [hl+], a                                   ; $5c44: $22
    pop bc                                        ; $5c45: $c1
    pop hl                                        ; $5c46: $e1
    nop                                           ; $5c47: $00
    ld b, c                                       ; $5c48: $41
    add e                                         ; $5c49: $83
    ld a, [$e300]                                 ; $5c4a: $fa $00 $e3
    inc h                                         ; $5c4d: $24
    rst $18                                       ; $5c4e: $df
    add hl, bc                                    ; $5c4f: $09
    cp c                                          ; $5c50: $b9
    add e                                         ; $5c51: $83
    halt                                          ; $5c52: $76
    pop bc                                        ; $5c53: $c1
    or a                                          ; $5c54: $b7
    and d                                         ; $5c55: $a2
    xor e                                         ; $5c56: $ab
    xor b                                         ; $5c57: $a8
    nop                                           ; $5c58: $00
    ld b, a                                       ; $5c59: $47
    nop                                           ; $5c5a: $00
    pop bc                                        ; $5c5b: $c1
    ldh [rSTAT], a                                ; $5c5c: $e0 $41
    ld h, c                                       ; $5c5e: $61
    ret nz                                        ; $5c5f: $c0

    push hl                                       ; $5c60: $e5
    ccf                                           ; $5c61: $3f
    ld h, a                                       ; $5c62: $67
    jr jr_06a_5c07                                ; $5c63: $18 $a2

    ld b, a                                       ; $5c65: $47
    push bc                                       ; $5c66: $c5
    db $fd                                        ; $5c67: $fd
    ld bc, $bc00                                  ; $5c68: $01 $00 $bc
    add hl, bc                                    ; $5c6b: $09
    ld e, l                                       ; $5c6c: $5d
    add e                                         ; $5c6d: $83
    db $fd                                        ; $5c6e: $fd
    ld h, e                                       ; $5c6f: $63
    jp nz, $c062                                  ; $5c70: $c2 $62 $c0

    and $3f                                       ; $5c73: $e6 $3f
    ld h, [hl]                                    ; $5c75: $66
    rst $18                                       ; $5c76: $df
    ld bc, $6355                                  ; $5c77: $01 $55 $63
    nop                                           ; $5c7a: $00
    add hl, sp                                    ; $5c7b: $39
    add e                                         ; $5c7c: $83
    and a                                         ; $5c7d: $a7
    rst $20                                       ; $5c7e: $e7
    or [hl]                                       ; $5c7f: $b6
    ld h, a                                       ; $5c80: $67
    dec b                                         ; $5c81: $05
    ld [hl+], a                                   ; $5c82: $22
    add c                                         ; $5c83: $81
    jp nz, Jump_06a_6040                          ; $5c84: $c2 $40 $60

    ld hl, $bfe1                                  ; $5c87: $21 $e1 $bf
    and d                                         ; $5c8a: $a2
    ld b, b                                       ; $5c8b: $40
    ccf                                           ; $5c8c: $3f
    ld h, e                                       ; $5c8d: $63
    sbc a                                         ; $5c8e: $9f
    inc bc                                        ; $5c8f: $03
    ld c, e                                       ; $5c90: $4b
    rlca                                          ; $5c91: $07
    and $46                                       ; $5c92: $e6 $46
    push hl                                       ; $5c94: $e5
    ld [hl+], a                                   ; $5c95: $22
    ld b, c                                       ; $5c96: $41
    jr z, jr_06a_5ce6                             ; $5c97: $28 $4d

    ld a, $81                                     ; $5c99: $3e $81
    ld bc, $442b                                  ; $5c9b: $01 $2b $44
    ld b, b                                       ; $5c9e: $40
    ld b, d                                       ; $5c9f: $42
    and b                                         ; $5ca0: $a0
    ccf                                           ; $5ca1: $3f
    ld l, b                                       ; $5ca2: $68
    rst $00                                       ; $5ca3: $c7
    and h                                         ; $5ca4: $a4
    adc [hl]                                      ; $5ca5: $8e
    add $e6                                       ; $5ca6: $c6 $e6
    ld b, [hl]                                    ; $5ca8: $46
    ld a, [c]                                     ; $5ca9: $f2
    ld b, d                                       ; $5caa: $42
    nop                                           ; $5cab: $00
    push de                                       ; $5cac: $d5
    add d                                         ; $5cad: $82
    ld a, a                                       ; $5cae: $7f
    ld h, [hl]                                    ; $5caf: $66
    add b                                         ; $5cb0: $80
    pop bc                                        ; $5cb1: $c1
    ld [hl], $c0                                  ; $5cb2: $36 $c0
    ld c, l                                       ; $5cb4: $4d
    adc e                                         ; $5cb5: $8b
    jp c, Jump_06a_4b05                           ; $5cb6: $da $05 $4b

    inc b                                         ; $5cb9: $04
    and $46                                       ; $5cba: $e6 $46
    inc d                                         ; $5cbc: $14
    cpl                                           ; $5cbd: $2f
    inc b                                         ; $5cbe: $04
    ld b, b                                       ; $5cbf: $40
    ld h, l                                       ; $5cc0: $65
    ld c, l                                       ; $5cc1: $4d
    add c                                         ; $5cc2: $81
    ld hl, $836b                                  ; $5cc3: $21 $6b $83
    ld bc, $6b3f                                  ; $5cc6: $01 $3f $6b
    ld a, h                                       ; $5cc9: $7c
    add l                                         ; $5cca: $85
    nop                                           ; $5ccb: $00
    ld hl, sp-$5c                                 ; $5ccc: $f8 $a4
    inc [hl]                                      ; $5cce: $34
    adc c                                         ; $5ccf: $89
    add b                                         ; $5cd0: $80
    db $e3                                        ; $5cd1: $e3
    sub l                                         ; $5cd2: $95
    ld b, $43                                     ; $5cd3: $06 $43
    and c                                         ; $5cd5: $a1
    inc [hl]                                      ; $5cd6: $34
    ld h, c                                       ; $5cd7: $61
    ld a, a                                       ; $5cd8: $7f
    and h                                         ; $5cd9: $a4
    ret nz                                        ; $5cda: $c0

    and $20                                       ; $5cdb: $e6 $20
    db $10                                        ; $5cdd: $10
    inc h                                         ; $5cde: $24
    adc b                                         ; $5cdf: $88
    xor b                                         ; $5ce0: $a8
    ld h, a                                       ; $5ce1: $67
    rst $20                                       ; $5ce2: $e7
    xor c                                         ; $5ce3: $a9
    add [hl]                                      ; $5ce4: $86
    ccf                                           ; $5ce5: $3f

jr_06a_5ce6:
    add d                                         ; $5ce6: $82
    ld c, e                                       ; $5ce7: $4b
    add [hl]                                      ; $5ce8: $86
    ld [bc], a                                    ; $5ce9: $02
    ret nz                                        ; $5cea: $c0

    ld [$5800], a                                 ; $5ceb: $ea $00 $58
    ld h, d                                       ; $5cee: $62
    ld a, h                                       ; $5cef: $7c
    add h                                         ; $5cf0: $84
    ld c, c                                       ; $5cf1: $49
    call z, Call_06a_64a3                         ; $5cf2: $cc $a3 $64
    ld b, l                                       ; $5cf5: $45
    and c                                         ; $5cf6: $a1
    ld a, $45                                     ; $5cf7: $3e $45
    or l                                          ; $5cf9: $b5
    ld b, d                                       ; $5cfa: $42
    ld d, [hl]                                    ; $5cfb: $56
    ld hl, $ff00                                  ; $5cfc: $21 $00 $ff
    ld b, a                                       ; $5cff: $47
    ld b, e                                       ; $5d00: $43
    ld hl, $897c                                  ; $5d01: $21 $7c $89
    ld h, $69                                     ; $5d04: $26 $69
    cp c                                          ; $5d06: $b9
    ld h, l                                       ; $5d07: $65
    cp a                                          ; $5d08: $bf
    push hl                                       ; $5d09: $e5
    halt                                          ; $5d0a: $76
    ld b, e                                       ; $5d0b: $43
    ld [hl], e                                    ; $5d0c: $73
    add c                                         ; $5d0d: $81
    nop                                           ; $5d0e: $00
    dec de                                        ; $5d0f: $1b
    push bc                                       ; $5d10: $c5
    ld d, a                                       ; $5d11: $57
    add b                                         ; $5d12: $80
    ld a, h                                       ; $5d13: $7c
    adc b                                         ; $5d14: $88
    ld c, h                                       ; $5d15: $4c
    ld hl, $48e6                                  ; $5d16: $21 $e6 $48
    and $c5                                       ; $5d19: $e6 $c5
    ld a, [hl]                                    ; $5d1b: $7e
    and $f3                                       ; $5d1c: $e6 $f3
    ld b, h                                       ; $5d1e: $44
    nop                                           ; $5d1f: $00
    ld a, l                                       ; $5d20: $7d
    ld h, c                                       ; $5d21: $61
    rst $00                                       ; $5d22: $c7
    ld b, d                                       ; $5d23: $42
    ld h, a                                       ; $5d24: $67
    and d                                         ; $5d25: $a2
    sbc b                                         ; $5d26: $98
    rst $20                                       ; $5d27: $e7
    ld c, $42                                     ; $5d28: $0e $42
    and a                                         ; $5d2a: $a7
    push hl                                       ; $5d2b: $e5
    and $83                                       ; $5d2c: $e6 $83
    ld b, b                                       ; $5d2e: $40
    add d                                         ; $5d2f: $82
    nop                                           ; $5d30: $00
    cp d                                          ; $5d31: $ba
    jp z, $e5c0                                   ; $5d32: $ca $c0 $e5

    pop hl                                        ; $5d35: $e1
    ld hl, $43da                                  ; $5d36: $21 $da $43
    add h                                         ; $5d39: $84
    push bc                                       ; $5d3a: $c5
    ld c, $43                                     ; $5d3b: $0e $43
    add a                                         ; $5d3d: $87
    and d                                         ; $5d3e: $a2
    ld e, [hl]                                    ; $5d3f: $5e
    nop                                           ; $5d40: $00
    ld [$42e9], sp                                ; $5d41: $08 $e9 $42
    ld [c], a                                     ; $5d44: $e2
    ld h, l                                       ; $5d45: $65
    ld b, c                                       ; $5d46: $41
    and [hl]                                      ; $5d47: $a6
    dec hl                                        ; $5d48: $2b
    cp [hl]                                       ; $5d49: $be
    pop bc                                        ; $5d4a: $c1
    ld a, l                                       ; $5d4b: $7d
    ld hl, $0247                                  ; $5d4c: $21 $47 $02
    ld b, h                                       ; $5d4f: $44
    and b                                         ; $5d50: $a0
    nop                                           ; $5d51: $00
    ld b, $25                                     ; $5d52: $06 $25
    adc [hl]                                      ; $5d54: $8e
    inc h                                         ; $5d55: $24
    ccf                                           ; $5d56: $3f
    dec h                                         ; $5d57: $25
    db $ed                                        ; $5d58: $ed
    ld h, d                                       ; $5d59: $62
    ret nz                                        ; $5d5a: $c0

    ldh a, [rP1]                                  ; $5d5b: $f0 $00
    ld b, b                                       ; $5d5d: $40
    cp $a6                                        ; $5d5e: $fe $a6
    ret nz                                        ; $5d60: $c0

    pop hl                                        ; $5d61: $e1
    ret nz                                        ; $5d62: $c0

    ld e, e                                       ; $5d63: $5b
    ld l, d                                       ; $5d64: $6a
    or a                                          ; $5d65: $b7
    and a                                         ; $5d66: $a7
    cp h                                          ; $5d67: $bc
    inc h                                         ; $5d68: $24
    add b                                         ; $5d69: $80
    jp hl                                         ; $5d6a: $e9


    add $20                                       ; $5d6b: $c6 $20
    inc b                                         ; $5d6d: $04
    ld h, b                                       ; $5d6e: $60
    dec bc                                        ; $5d6f: $0b
    dec hl                                        ; $5d70: $2b
    nop                                           ; $5d71: $00
    ret nz                                        ; $5d72: $c0

    and $de                                       ; $5d73: $e6 $de
    and e                                         ; $5d75: $a3
    ld e, e                                       ; $5d76: $5b
    ld l, c                                       ; $5d77: $69
    ld c, d                                       ; $5d78: $4a
    ld b, l                                       ; $5d79: $45
    ld [bc], a                                    ; $5d7a: $02
    ld h, d                                       ; $5d7b: $62
    and b                                         ; $5d7c: $a0
    ld b, d                                       ; $5d7d: $42
    ld h, d                                       ; $5d7e: $62
    ld h, e                                       ; $5d7f: $63
    ld a, [hl]                                    ; $5d80: $7e
    ld [bc], a                                    ; $5d81: $02
    nop                                           ; $5d82: $00
    add c                                         ; $5d83: $81
    inc h                                         ; $5d84: $24
    ret nz                                        ; $5d85: $c0

    ld [c], a                                     ; $5d86: $e2
    ld c, d                                       ; $5d87: $4a
    ld hl, $eac0                                  ; $5d88: $21 $c0 $ea
    cp l                                          ; $5d8b: $bd
    ld b, l                                       ; $5d8c: $45
    sub l                                         ; $5d8d: $95
    ld h, e                                       ; $5d8e: $63
    jp $bc40                                      ; $5d8f: $c3 $40 $bc


    inc h                                         ; $5d92: $24
    nop                                           ; $5d93: $00
    call c, Call_06a_4264                         ; $5d94: $dc $64 $42
    ld h, c                                       ; $5d97: $61
    pop bc                                        ; $5d98: $c1
    inc h                                         ; $5d99: $24
    ccf                                           ; $5d9a: $3f
    and c                                         ; $5d9b: $a1
    ld h, a                                       ; $5d9c: $67
    inc bc                                        ; $5d9d: $03
    ret nz                                        ; $5d9e: $c0

jr_06a_5d9f:
    ld [hl+], a                                   ; $5d9f: $22
    ld e, e                                       ; $5da0: $5b
    ld l, b                                       ; $5da1: $68
    cp e                                          ; $5da2: $bb
    ld b, e                                       ; $5da3: $43
    sub b                                         ; $5da4: $90
    ld d, e                                       ; $5da5: $53
    ld h, c                                       ; $5da6: $61
    ld a, $83                                     ; $5da7: $3e $83
    ret nz                                        ; $5da9: $c0

    and $a0                                       ; $5daa: $e6 $a0
    add d                                         ; $5dac: $82
    dec l                                         ; $5dad: $2d
    add d                                         ; $5dae: $82
    and b                                         ; $5daf: $a0
    cp $e0                                        ; $5db0: $fe $e0
    ld l, e                                       ; $5db2: $6b
    add b                                         ; $5db3: $80
    add d                                         ; $5db4: $82
    db $e3                                        ; $5db5: $e3
    ld d, d                                       ; $5db6: $52
    and h                                         ; $5db7: $a4
    db $db                                        ; $5db8: $db
    ld c, d                                       ; $5db9: $4a
    cp $e7                                        ; $5dba: $fe $e7
    ret nz                                        ; $5dbc: $c0

    and $b4                                       ; $5dbd: $e6 $b4
    ld h, e                                       ; $5dbf: $63
    ld h, a                                       ; $5dc0: $67
    rst $20                                       ; $5dc1: $e7
    dec c                                         ; $5dc2: $0d

Call_06a_5dc3:
    ld bc, $3f2d                                  ; $5dc3: $01 $2d $3f
    and b                                         ; $5dc6: $a0
    ret nz                                        ; $5dc7: $c0

    nop                                           ; $5dc8: $00
    ld c, c                                       ; $5dc9: $49
    inc bc                                        ; $5dca: $03
    ld b, $2c                                     ; $5dcb: $06 $2c
    sub $06                                       ; $5dcd: $d6 $06
    ret nz                                        ; $5dcf: $c0

    and $1a                                       ; $5dd0: $e6 $1a
    ld h, h                                       ; $5dd2: $64
    ld b, $61                                     ; $5dd3: $06 $61
    ld h, d                                       ; $5dd5: $62
    dec l                                         ; $5dd6: $2d
    dec l                                         ; $5dd7: $2d
    ld b, a                                       ; $5dd8: $47
    jr nz, jr_06a_5d9f                            ; $5dd9: $20 $c4

    ld h, c                                       ; $5ddb: $61
    add c                                         ; $5ddc: $81
    nop                                           ; $5ddd: $00
    sub h                                         ; $5dde: $94
    inc hl                                        ; $5ddf: $23
    adc h                                         ; $5de0: $8c
    ld h, [hl]                                    ; $5de1: $66
    nop                                           ; $5de2: $00
    add $05                                       ; $5de3: $c6 $05
    ld a, [$a263]                                 ; $5de5: $fa $63 $a2
    ld [bc], a                                    ; $5de8: $02
    cp h                                          ; $5de9: $bc
    inc h                                         ; $5dea: $24
    inc a                                         ; $5deb: $3c
    dec hl                                        ; $5dec: $2b
    add sp, $40                                   ; $5ded: $e8 $40
    rst $30                                       ; $5def: $f7
    ld h, b                                       ; $5df0: $60
    ld e, d                                       ; $5df1: $5a
    add e                                         ; $5df2: $83
    nop                                           ; $5df3: $00
    ld d, c                                       ; $5df4: $51
    add sp, $19                                   ; $5df5: $e8 $19
    inc h                                         ; $5df7: $24
    rlca                                          ; $5df8: $07
    add $c0                                       ; $5df9: $c6 $c0
    ld [c], a                                     ; $5dfb: $e2
    ld a, d                                       ; $5dfc: $7a
    call nz, Call_000_273c                        ; $5dfd: $c4 $3c $27
    ret nz                                        ; $5e00: $c0

    ld [c], a                                     ; $5e01: $e2
    ld l, d                                       ; $5e02: $6a
    and b                                         ; $5e03: $a0
    nop                                           ; $5e04: $00
    ret nz                                        ; $5e05: $c0

    rst $28                                       ; $5e06: $ef
    rst $08                                       ; $5e07: $cf
    xor b                                         ; $5e08: $a8
    ld b, d                                       ; $5e09: $42
    pop bc                                        ; $5e0a: $c1

Call_06a_5e0b:
    nop                                           ; $5e0b: $00
    nop                                           ; $5e0c: $00
    nop                                           ; $5e0d: $00
    db $dd                                        ; $5e0e: $dd
    and b                                         ; $5e0f: $a0
    rst $38                                       ; $5e10: $ff
    rst $20                                       ; $5e11: $e7
    ret c                                         ; $5e12: $d8

    push de                                       ; $5e13: $d5
    ret c                                         ; $5e14: $d8

    ld a, [c]                                     ; $5e15: $f2
    push hl                                       ; $5e16: $e5
    jp c, $fdd9                                   ; $5e17: $da $d9 $fd

    jp c, $e0fb                                   ; $5e1a: $da $fb $e0

    rst $10                                       ; $5e1d: $d7
    call nc, $d9d7                                ; $5e1e: $d4 $d7 $d9
    jp c, $efdc                                   ; $5e21: $da $dc $ef

    and b                                         ; $5e24: $a0
    and b                                         ; $5e25: $a0
    and $e7                                       ; $5e26: $e6 $e7
    jp c, $e2e0                                   ; $5e28: $da $e0 $e2

    db $e3                                        ; $5e2b: $e3
    and b                                         ; $5e2c: $a0
    di                                            ; $5e2d: $f3
    and b                                         ; $5e2e: $a0
    db $eb                                        ; $5e2f: $eb
    reti                                          ; $5e30: $d9


    db $ec                                        ; $5e31: $ec
    ld hl, sp-$16                                 ; $5e32: $f8 $ea
    ret c                                         ; $5e34: $d8

    jp nc, $d2d0                                  ; $5e35: $d2 $d0 $d2

    inc l                                         ; $5e38: $2c
    cp [hl]                                       ; $5e39: $be
    ld [c], a                                     ; $5e3a: $e2
    jp c, $dce0                                   ; $5e3b: $da $e0 $dc

    db $db                                        ; $5e3e: $db
    ret                                           ; $5e3f: $c9


    ldh [$dc], a                                  ; $5e40: $e0 $dc
    cp d                                          ; $5e42: $ba
    ldh [$f8], a                                  ; $5e43: $e0 $f8
    pop hl                                        ; $5e45: $e1
    or a                                          ; $5e46: $b7
    and b                                         ; $5e47: $a0
    add sp, -$17                                  ; $5e48: $e8 $e9
    sbc d                                         ; $5e4a: $9a
    db $e3                                        ; $5e4b: $e3
    db $ec                                        ; $5e4c: $ec
    db $ed                                        ; $5e4d: $ed
    sub d                                         ; $5e4e: $92
    pop hl                                        ; $5e4f: $e1
    db $d3                                        ; $5e50: $d3
    ei                                            ; $5e51: $fb
    ret nc                                        ; $5e52: $d0

    db $d3                                        ; $5e53: $d3
    ret nz                                        ; $5e54: $c0

    ld a, [c]                                     ; $5e55: $f2
    rst $10                                       ; $5e56: $d7
    jp nc, $d1d0                                  ; $5e57: $d2 $d0 $d1

    ret nc                                        ; $5e5a: $d0

    sbc e                                         ; $5e5b: $9b
    jp nc, $dad8                                  ; $5e5c: $d2 $d8 $da

    db $e4                                        ; $5e5f: $e4
    and b                                         ; $5e60: $a0
    ld [$e4ba], a                                 ; $5e61: $ea $ba $e4
    or $e2                                        ; $5e64: $f6 $e2
    sbc a                                         ; $5e66: $9f
    ld [hl], l                                    ; $5e67: $75
    sbc l                                         ; $5e68: $9d
    rst $38                                       ; $5e69: $ff
    ldh [$9f], a                                  ; $5e6a: $e0 $9f
    ld d, h                                       ; $5e6c: $54
    ldh [$e4], a                                  ; $5e6d: $e0 $e4
    push hl                                       ; $5e6f: $e5
    and b                                         ; $5e70: $a0
    ld l, d                                       ; $5e71: $6a
    ldh [$30], a                                  ; $5e72: $e0 $30
    add b                                         ; $5e74: $80
    ld a, [c]                                     ; $5e75: $f2
    ld d, c                                       ; $5e76: $51
    ldh [$7e], a                                  ; $5e77: $e0 $7e
    ldh [$e4], a                                  ; $5e79: $e0 $e4
    pop hl                                        ; $5e7b: $e1
    ret c                                         ; $5e7c: $d8

    push de                                       ; $5e7d: $d5
    ld [hl], $e6                                  ; $5e7e: $36 $e6
    ld c, [hl]                                    ; $5e80: $4e
    ld [c], a                                     ; $5e81: $e2
    rst $38                                       ; $5e82: $ff
    and b                                         ; $5e83: $a0
    sbc a                                         ; $5e84: $9f
    or [hl]                                       ; $5e85: $b6
    sub b                                         ; $5e86: $90
    sub b                                         ; $5e87: $90
    sub b                                         ; $5e88: $90
    jp $80b6                                      ; $5e89: $c3 $b6 $80


    cp a                                          ; $5e8c: $bf
    ldh [$35], a                                  ; $5e8d: $e0 $35
    ldh [rNR50], a                                ; $5e8f: $e0 $24
    ld [c], a                                     ; $5e91: $e2
    call c, $fde9                                 ; $5e92: $dc $e9 $fd
    call nz, $e051                                ; $5e95: $c4 $51 $e0
    rrca                                          ; $5e98: $0f
    ldh [$da], a                                  ; $5e99: $e0 $da
    ld e, $f9                                     ; $5e9b: $1e $f9
    ret nz                                        ; $5e9d: $c0

    jp nc, $d4d6                                  ; $5e9e: $d2 $d6 $d4

    sub $bd                                       ; $5ea1: $d6 $bd
    db $e3                                        ; $5ea3: $e3
    ld c, [hl]                                    ; $5ea4: $4e
    ldh [$85], a                                  ; $5ea5: $e0 $85
    ldh [rNR33], a                                ; $5ea7: $e0 $1d
    and d                                         ; $5ea9: $a2
    pop bc                                        ; $5eaa: $c1
    pop hl                                        ; $5eab: $e1
    sub b                                         ; $5eac: $90
    call nz, $bf90                                ; $5ead: $c4 $90 $bf
    ldh [$35], a                                  ; $5eb0: $e0 $35
    ldh [rNR50], a                                ; $5eb2: $e0 $24
    pop hl                                        ; $5eb4: $e1
    xor h                                         ; $5eb5: $ac
    call c, $c9e9                                 ; $5eb6: $dc $e9 $c9

jr_06a_5eb9:
    add $dc                                       ; $5eb9: $c6 $dc
    db $db                                        ; $5ebb: $db
    ret                                           ; $5ebc: $c9


    ret nz                                        ; $5ebd: $c0

    call c, $e020                                 ; $5ebe: $dc $20 $e0
    sub $e6                                       ; $5ec1: $d6 $e6
    or $c0                                        ; $5ec3: $f6 $c0
    call nc, Call_000_1ad6                        ; $5ec5: $d4 $d6 $1a
    db $e3                                        ; $5ec8: $e3
    add l                                         ; $5ec9: $85
    pop hl                                        ; $5eca: $e1
    jp $7991                                      ; $5ecb: $c3 $91 $79


    rra                                           ; $5ece: $1f
    ld a, d                                       ; $5ecf: $7a
    ld a, e                                       ; $5ed0: $7b
    ld a, h                                       ; $5ed1: $7c
    ld a, l                                       ; $5ed2: $7d
    sub c                                         ; $5ed3: $91
    cp a                                          ; $5ed4: $bf
    pop hl                                        ; $5ed5: $e1
    jr z, jr_06a_5eb9                             ; $5ed6: $28 $e1

    db $fc                                        ; $5ed8: $fc
    pop bc                                        ; $5ed9: $c1
    jr @-$22                                      ; $5eda: $18 $dc

    rst $20                                       ; $5edc: $e7
    ldh a, [$c8]                                  ; $5edd: $f0 $c8
    ret                                           ; $5edf: $c9


    jp nz, $d0d3                                  ; $5ee0: $c2 $d3 $d0

    scf                                           ; $5ee3: $37
    db $e3                                        ; $5ee4: $e3
    push af                                       ; $5ee5: $f5
    ret nz                                        ; $5ee6: $c0

    ld b, [hl]                                    ; $5ee7: $46
    db $e4                                        ; $5ee8: $e4
    rst $38                                       ; $5ee9: $ff
    call nz, $7e79                                ; $5eea: $c4 $79 $7e
    ld c, b                                       ; $5eed: $48
    ld c, [hl]                                    ; $5eee: $4e
    ld d, e                                       ; $5eef: $53
    ld a, a                                       ; $5ef0: $7f
    ld a, l                                       ; $5ef1: $7d
    rrca                                          ; $5ef2: $0f
    sub c                                         ; $5ef3: $91
    jp $a2b6                                      ; $5ef4: $c3 $b6 $a2


    ei                                            ; $5ef7: $fb
    pop bc                                        ; $5ef8: $c1
    call c, $f0eb                                 ; $5ef9: $dc $eb $f0
    call nz, $e60b                                ; $5efc: $c4 $0b $e6
    rst $10                                       ; $5eff: $d7
    rst $10                                       ; $5f00: $d7
    jp nc, Jump_000_37dd                          ; $5f01: $d2 $dd $37

    pop hl                                        ; $5f04: $e1
    db $dd                                        ; $5f05: $dd
    sbc c                                         ; $5f06: $99
    jp nz, $909e                                  ; $5f07: $c2 $9e $90

    rst $30                                       ; $5f0a: $f7
    jp $9090                                      ; $5f0b: $c3 $90 $90


    pop bc                                        ; $5f0e: $c1
    ldh [$60], a                                  ; $5f0f: $e0 $60
    ld d, a                                       ; $5f11: $57
    ld d, d                                       ; $5f12: $52
    ld b, l                                       ; $5f13: $45
    rrca                                          ; $5f14: $0f
    ld a, a                                       ; $5f15: $7f
    ld a, l                                       ; $5f16: $7d
    call nz, $7d90                                ; $5f17: $c4 $90 $7d
    ld [c], a                                     ; $5f1a: $e2
    call c, $14eb                                 ; $5f1b: $dc $eb $14
    pop bc                                        ; $5f1e: $c1
    adc $c0                                       ; $5f1f: $ce $c0
    db $fc                                        ; $5f21: $fc
    inc c                                         ; $5f22: $0c
    ldh [rSTAT], a                                ; $5f23: $e0 $41
    pop bc                                        ; $5f25: $c1
    db $e4                                        ; $5f26: $e4
    push hl                                       ; $5f27: $e5
    jp c, $d0d3                                   ; $5f28: $da $d3 $d0

    ret nc                                        ; $5f2b: $d0

    rst $08                                       ; $5f2c: $cf
    db $dd                                        ; $5f2d: $dd
    reti                                          ; $5f2e: $d9


    db $dd                                        ; $5f2f: $dd
    pop de                                        ; $5f30: $d1
    ret nz                                        ; $5f31: $c0

    db $e4                                        ; $5f32: $e4
    call z, $80e0                                 ; $5f33: $cc $e0 $80
    ld b, h                                       ; $5f36: $44
    ld a, a                                       ; $5f37: $7f
    ld e, [hl]                                    ; $5f38: $5e
    ld d, d                                       ; $5f39: $52
    inc l                                         ; $5f3a: $2c
    ld a, [hl+]                                   ; $5f3b: $2a
    ld b, l                                       ; $5f3c: $45
    ld b, [hl]                                    ; $5f3d: $46
    add c                                         ; $5f3e: $81
    cp d                                          ; $5f3f: $ba
    push bc                                       ; $5f40: $c5
    ld e, c                                       ; $5f41: $59
    and b                                         ; $5f42: $a0
    call c, $14e9                                 ; $5f43: $dc $e9 $14
    pop bc                                        ; $5f46: $c1
    db $d3                                        ; $5f47: $d3
    sub $84                                       ; $5f48: $d6 $84
    pop bc                                        ; $5f4a: $c1
    sub $26                                       ; $5f4b: $d6 $26
    ret nz                                        ; $5f4d: $c0

    sbc a                                         ; $5f4e: $9f
    and $e7                                       ; $5f4f: $e6 $e7
    call c, $d4d7                                 ; $5f51: $dc $d7 $d4
    ld [hl], a                                    ; $5f54: $77
    ret nz                                        ; $5f55: $c0

    cp $c0                                        ; $5f56: $fe $c0
    rst $10                                       ; $5f58: $d7
    rst $30                                       ; $5f59: $f7
    and b                                         ; $5f5a: $a0
    sbc $df                                       ; $5f5b: $de $df
    add [hl]                                      ; $5f5d: $86
    ret nz                                        ; $5f5e: $c0

    jp $8090                                      ; $5f5f: $c3 $90 $80


    ld c, d                                       ; $5f62: $4a
    rst $18                                       ; $5f63: $df
    ld h, b                                       ; $5f64: $60
    dec l                                         ; $5f65: $2d
    jr nz, jr_06a_5f88                            ; $5f66: $20 $20

    dec l                                         ; $5f68: $2d
    ret nz                                        ; $5f69: $c0

    ld [c], a                                     ; $5f6a: $e2
    call nz, Call_000_0190                        ; $5f6b: $c4 $90 $01
    sbc [hl]                                      ; $5f6e: $9e
    jp hl                                         ; $5f6f: $e9


    ldh [$dc], a                                  ; $5f70: $e0 $dc
    add sp, -$3b                                  ; $5f72: $e8 $c5
    and e                                         ; $5f74: $a3
    inc bc                                        ; $5f75: $03
    ret nz                                        ; $5f76: $c0

    rst $08                                       ; $5f77: $cf
    ldh [$e6], a                                  ; $5f78: $e0 $e6
    and b                                         ; $5f7a: $a0
    call nc, Call_06a_73a0                        ; $5f7b: $d4 $a0 $73
    jp c, $77d9                                   ; $5f7e: $da $d9 $77

    ret nz                                        ; $5f81: $c0

    add l                                         ; $5f82: $85
    and c                                         ; $5f83: $a1
    and b                                         ; $5f84: $a0
    ldh [$e1], a                                  ; $5f85: $e0 $e1
    ld a, a                                       ; $5f87: $7f

jr_06a_5f88:
    ld [c], a                                     ; $5f88: $e2
    rst $38                                       ; $5f89: $ff
    add b                                         ; $5f8a: $80
    ld d, l                                       ; $5f8b: $55
    ld d, d                                       ; $5f8c: $52
    ld l, $20                                     ; $5f8d: $2e $20
    inc l                                         ; $5f8f: $2c
    cp l                                          ; $5f90: $bd
    add e                                         ; $5f91: $83
    ld b, c                                       ; $5f92: $41
    add h                                         ; $5f93: $84
    ld a, c                                       ; $5f94: $79
    pop bc                                        ; $5f95: $c1
    ret nz                                        ; $5f96: $c0

    ldh [$e9], a                                  ; $5f97: $e0 $e9
    ldh [$dc], a                                  ; $5f99: $e0 $dc
    rst $20                                       ; $5f9b: $e7
    xor l                                         ; $5f9c: $ad
    and e                                         ; $5f9d: $a3
    db $dd                                        ; $5f9e: $dd
    ld d, h                                       ; $5f9f: $54
    and c                                         ; $5fa0: $a1
    ld b, c                                       ; $5fa1: $41
    db $dd                                        ; $5fa2: $dd
    ld [bc], a                                    ; $5fa3: $02
    jp nz, $a083                                  ; $5fa4: $c2 $83 $a0

    ld [hl], a                                    ; $5fa7: $77
    ret nz                                        ; $5fa8: $c0

    add l                                         ; $5fa9: $85
    and d                                         ; $5faa: $a2
    ld c, h                                       ; $5fab: $4c
    and b                                         ; $5fac: $a0
    and c                                         ; $5fad: $a1
    ld b, $c0                                     ; $5fae: $06 $c0
    rst $38                                       ; $5fb0: $ff
    add b                                         ; $5fb1: $80
    ld b, l                                       ; $5fb2: $45
    add hl, sp                                    ; $5fb3: $39
    ld hl, $4b2a                                  ; $5fb4: $21 $2a $4b
    ld d, l                                       ; $5fb7: $55
    adc d                                         ; $5fb8: $8a
    ld b, c                                       ; $5fb9: $41
    add l                                         ; $5fba: $85
    di                                            ; $5fbb: $f3
    pop bc                                        ; $5fbc: $c1
    add b                                         ; $5fbd: $80
    ldh [$35], a                                  ; $5fbe: $e0 $35
    and b                                         ; $5fc0: $a0
    call c, Call_06a_6de7                         ; $5fc1: $dc $e7 $6d
    and e                                         ; $5fc4: $a3
    pop de                                        ; $5fc5: $d1
    ld c, $e0                                     ; $5fc6: $0e $e0
    rlca                                          ; $5fc8: $07
    ret nc                                        ; $5fc9: $d0

    ret nc                                        ; $5fca: $d0

    db $d3                                        ; $5fcb: $d3
    ld [bc], a                                    ; $5fcc: $02
    pop bc                                        ; $5fcd: $c1
    ei                                            ; $5fce: $fb
    add c                                         ; $5fcf: $81
    cp l                                          ; $5fd0: $bd
    ldh [$e6], a                                  ; $5fd1: $e0 $e6
    db $e3                                        ; $5fd3: $e3
    ld b, b                                       ; $5fd4: $40
    ld [c], a                                     ; $5fd5: $e2
    rst $38                                       ; $5fd6: $ff
    add d                                         ; $5fd7: $82
    add e                                         ; $5fd8: $83
    ld a, [hl-]                                   ; $5fd9: $3a
    dec [hl]                                      ; $5fda: $35
    add hl, sp                                    ; $5fdb: $39
    ld h, b                                       ; $5fdc: $60
    ld d, l                                       ; $5fdd: $55
    add c                                         ; $5fde: $81
    dec b                                         ; $5fdf: $05
    sub c                                         ; $5fe0: $91
    db $fc                                        ; $5fe1: $fc
    and b                                         ; $5fe2: $a0
    jp $c23b                                      ; $5fe3: $c3 $3b $c2


    rst $30                                       ; $5fe6: $f7
    add c                                         ; $5fe7: $81
    call c, $7de6                                 ; $5fe8: $dc $e6 $7d
    pop bc                                        ; $5feb: $c1
    rrca                                          ; $5fec: $0f
    ld [c], a                                     ; $5fed: $e2
    db $e3                                        ; $5fee: $e3
    call nc, $02d7                                ; $5fef: $d4 $d7 $02
    pop bc                                        ; $5ff2: $c1
    ld [hl+], a                                   ; $5ff3: $22
    and l                                         ; $5ff4: $a5
    db $d3                                        ; $5ff5: $d3
    add b                                         ; $5ff6: $80
    sbc a                                         ; $5ff7: $9f
    sbc l                                         ; $5ff8: $9d
    or [hl]                                       ; $5ff9: $b6
    db $fd                                        ; $5ffa: $fd
    jp $a0c8                                      ; $5ffb: $c3 $c8 $a0


    add l                                         ; $5ffe: $85
    add a                                         ; $5fff: $87
    ld [hl], d                                    ; $6000: $72
    ld l, h                                       ; $6001: $6c
    add hl, sp                                    ; $6002: $39
    ld e, e                                       ; $6003: $5b
    ld a, $41                                     ; $6004: $3e $41
    ldh [$c3], a                                  ; $6006: $e0 $c3

Jump_06a_6008:
    sub b                                         ; $6008: $90
    jp $c3c4                                      ; $6009: $c3 $c4 $c3


    rst $38                                       ; $600c: $ff
    ret nz                                        ; $600d: $c0

Jump_06a_600e:
    rst $30                                       ; $600e: $f7
    add b                                         ; $600f: $80
    nop                                           ; $6010: $00
    scf                                           ; $6011: $37
    and b                                         ; $6012: $a0
    ld b, l                                       ; $6013: $45
    xor b                                         ; $6014: $a8
    rrca                                          ; $6015: $0f
    db $e3                                        ; $6016: $e3
    adc e                                         ; $6017: $8b
    add c                                         ; $6018: $81
    ld [hl+], a                                   ; $6019: $22
    and c                                         ; $601a: $a1
    db $e4                                        ; $601b: $e4
    ld [c], a                                     ; $601c: $e2
    add l                                         ; $601d: $85
    and c                                         ; $601e: $a1
    ld c, c                                       ; $601f: $49
    and b                                         ; $6020: $a0
    cp $4d                                        ; $6021: $fe $4d
    ret nz                                        ; $6023: $c0

    sub b                                         ; $6024: $90
    sub c                                         ; $6025: $91
    ld b, b                                       ; $6026: $40
    ld l, [hl]                                    ; $6027: $6e
    ld [hl], b                                    ; $6028: $70
    adc b                                         ; $6029: $88
    adc b                                         ; $602a: $88
    rst $28                                       ; $602b: $ef
    add a                                         ; $602c: $87
    add l                                         ; $602d: $85
    sub b                                         ; $602e: $90
    call nz, $e0c1                                ; $602f: $c4 $c1 $e0
    call nz, $a190                                ; $6032: $c4 $90 $a1
    ld b, $4c                                     ; $6035: $06 $4c
    add c                                         ; $6037: $81
    and $e7                                       ; $6038: $e6 $e7
    ld d, c                                       ; $603a: $51
    adc b                                         ; $603b: $88
    add [hl]                                      ; $603c: $86
    and c                                         ; $603d: $a1
    sub h                                         ; $603e: $94
    add b                                         ; $603f: $80

Jump_06a_6040:
    adc e                                         ; $6040: $8b
    add c                                         ; $6041: $81
    ld b, [hl]                                    ; $6042: $46
    add c                                         ; $6043: $81
    sbc e                                         ; $6044: $9b
    and $e7                                       ; $6045: $e6 $e7
    sbc e                                         ; $6047: $9b
    and d                                         ; $6048: $a2
    sbc a                                         ; $6049: $9f
    or [hl]                                       ; $604a: $b6
    adc b                                         ; $604b: $88
    and b                                         ; $604c: $a0
    adc c                                         ; $604d: $89
    and c                                         ; $604e: $a1
    sub b                                         ; $604f: $90
    add a                                         ; $6050: $87
    sub c                                         ; $6051: $91
    scf                                           ; $6052: $37
    scf                                           ; $6053: $37
    ld a, [$3ce0]                                 ; $6054: $fa $e0 $3c
    and c                                         ; $6057: $a1
    pop bc                                        ; $6058: $c1
    ldh [$fe], a                                  ; $6059: $e0 $fe
    and d                                         ; $605b: $a2
    ld [$e813], a                                 ; $605c: $ea $13 $e8
    jp hl                                         ; $605f: $e9


    ld a, b                                       ; $6060: $78
    adc d                                         ; $6061: $8a
    rrca                                          ; $6062: $0f
    db $e4                                        ; $6063: $e4
    ld [$8246], a                                 ; $6064: $ea $46 $82
    ld d, b                                       ; $6067: $50
    add b                                         ; $6068: $80
    ld a, [bc]                                    ; $6069: $0a
    and d                                         ; $606a: $a2
    ld bc, $8891                                  ; $606b: $01 $91 $88
    and b                                         ; $606e: $a0
    adc c                                         ; $606f: $89
    and b                                         ; $6070: $a0
    set 0, c                                      ; $6071: $cb $c1
    ret nz                                        ; $6073: $c0

    add c                                         ; $6074: $81
    ei                                            ; $6075: $fb
    add [hl]                                      ; $6076: $86

Jump_06a_6077:
    dec bc                                        ; $6077: $0b
    push hl                                       ; $6078: $e5
    ld a, b                                       ; $6079: $78
    sub e                                         ; $607a: $93
    inc e                                         ; $607b: $1c
    adc a                                         ; $607c: $8f
    add [hl]                                      ; $607d: $86
    adc b                                         ; $607e: $88
    and d                                         ; $607f: $a2
    ld d, h                                       ; $6080: $54
    ld b, h                                       ; $6081: $44
    add c                                         ; $6082: $81
    adc d                                         ; $6083: $8a
    and b                                         ; $6084: $a0
    adc b                                         ; $6085: $88
    pop bc                                        ; $6086: $c1
    ld [hl], $e1                                  ; $6087: $36 $e1
    add b                                         ; $6089: $80
    add b                                         ; $608a: $80
    and l                                         ; $608b: $a5
    sub l                                         ; $608c: $95
    ld h, c                                       ; $608d: $61
    ld a, b                                       ; $608e: $78
    adc h                                         ; $608f: $8c
    and h                                         ; $6090: $a4
    ld h, b                                       ; $6091: $60
    ld a, a                                       ; $6092: $7f
    ld h, [hl]                                    ; $6093: $66
    res 0, d                                      ; $6094: $cb $82
    adc b                                         ; $6096: $88
    and c                                         ; $6097: $a1
    ld d, h                                       ; $6098: $54
    rra                                           ; $6099: $1f
    ld d, h                                       ; $609a: $54
    ld [hl], $36                                  ; $609b: $36 $36
    add c                                         ; $609d: $81
    sub c                                         ; $609e: $91
    cp h                                          ; $609f: $bc
    ret nz                                        ; $60a0: $c0

    adc c                                         ; $60a1: $89
    ret nz                                        ; $60a2: $c0

    db $fd                                        ; $60a3: $fd
    ld h, c                                       ; $60a4: $61
    add b                                         ; $60a5: $80
    ei                                            ; $60a6: $fb
    ld h, e                                       ; $60a7: $63
    ld e, [hl]                                    ; $60a8: $5e

jr_06a_60a9:
    add b                                         ; $60a9: $80
    rst $10                                       ; $60aa: $d7
    ld h, b                                       ; $60ab: $60
    ld [c], a                                     ; $60ac: $e2
    ld h, e                                       ; $60ad: $63
    ld d, h                                       ; $60ae: $54
    add l                                         ; $60af: $85
    and h                                         ; $60b0: $a4
    ld h, b                                       ; $60b1: $60
    ld a, a                                       ; $60b2: $7f
    ld h, [hl]                                    ; $60b3: $66
    and b                                         ; $60b4: $a0
    ld sp, hl                                     ; $60b5: $f9
    sbc [hl]                                      ; $60b6: $9e
    dec bc                                        ; $60b7: $0b
    and b                                         ; $60b8: $a0
    inc d                                         ; $60b9: $14
    and b                                         ; $60ba: $a0
    add d                                         ; $60bb: $82
    add e                                         ; $60bc: $83
    ld [hl], $3b                                  ; $60bd: $36 $3b
    dec [hl]                                      ; $60bf: $35
    rla                                           ; $60c0: $17
    dec [hl]                                      ; $60c1: $35
    ld l, d                                       ; $60c2: $6a
    add hl, sp                                    ; $60c3: $39
    add hl, bc                                    ; $60c4: $09
    and b                                         ; $60c5: $a0
    call nz, $e649                                ; $60c6: $c4 $49 $e6
    ld d, a                                       ; $60c9: $57
    ld h, d                                       ; $60ca: $62
    sub a                                         ; $60cb: $97
    ld h, b                                       ; $60cc: $60
    ldh [$bb], a                                  ; $60cd: $e0 $bb
    ld h, h                                       ; $60cf: $64
    ld d, h                                       ; $60d0: $54
    adc b                                         ; $60d1: $88
    ld a, a                                       ; $60d2: $7f
    ld h, l                                       ; $60d3: $65
    jp z, Jump_06a_5480                           ; $60d4: $ca $80 $54

    ld [c], a                                     ; $60d7: $e2
    sub c                                         ; $60d8: $91
    add l                                         ; $60d9: $85
    add a                                         ; $60da: $87
    ccf                                           ; $60db: $3f
    ld [hl], c                                    ; $60dc: $71

Call_06a_60dd:
    ld [hl], d                                    ; $60dd: $72
    ld l, h                                       ; $60de: $6c
    ld l, h                                       ; $60df: $6c

Jump_06a_60e0:
    ld l, l                                       ; $60e0: $6d
    add hl, sp                                    ; $60e1: $39
    add l                                         ; $60e2: $85
    pop hl                                        ; $60e3: $e1
    add e                                         ; $60e4: $83
    ld h, h                                       ; $60e5: $64
    ret nz                                        ; $60e6: $c0

    ld b, d                                       ; $60e7: $42
    add c                                         ; $60e8: $81
    ld d, h                                       ; $60e9: $54
    and e                                         ; $60ea: $a3
    add [hl]                                      ; $60eb: $86
    and e                                         ; $60ec: $a3
    dec b                                         ; $60ed: $05
    jp nz, $8454                                  ; $60ee: $c2 $54 $84

    ld a, a                                       ; $60f1: $7f
    ld h, a                                       ; $60f2: $67
    sbc [hl]                                      ; $60f3: $9e
    sub b                                         ; $60f4: $90
    cp $0e                                        ; $60f5: $fe $0e
    add b                                         ; $60f7: $80
    ld a, l                                       ; $60f8: $7d
    ld b, l                                       ; $60f9: $45
    scf                                           ; $60fa: $37
    jr c, jr_06a_60a9                             ; $60fb: $38 $ac

    dec sp                                        ; $60fd: $3b
    ld [hl], b                                    ; $60fe: $70
    rlca                                          ; $60ff: $07
    ld [hl], b                                    ; $6100: $70
    ld [hl], $9c                                  ; $6101: $36 $9c
    ld c, h                                       ; $6103: $4c
    add d                                         ; $6104: $82
    call nz, $b840                                ; $6105: $c4 $40 $b8
    ld b, d                                       ; $6108: $42
    xor b                                         ; $6109: $a8
    ld c, b                                       ; $610a: $48

Jump_06a_610b:
    adc l                                         ; $610b: $8d
    ld b, c                                       ; $610c: $41
    db $ec                                        ; $610d: $ec
    ld d, h                                       ; $610e: $54
    adc b                                         ; $610f: $88
    ld a, a                                       ; $6110: $7f
    ld h, h                                       ; $6111: $64
    sbc $df                                       ; $6112: $de $df
    ld c, d                                       ; $6114: $4a
    add b                                         ; $6115: $80
    ld a, c                                       ; $6116: $79
    ld a, [hl]                                    ; $6117: $7e
    ld b, l                                       ; $6118: $45
    ccf                                           ; $6119: $3f
    adc [hl]                                      ; $611a: $8e
    ld a, e                                       ; $611b: $7b
    ld h, [hl]                                    ; $611c: $66
    inc a                                         ; $611d: $3c
    xor a                                         ; $611e: $af
    sbc h                                         ; $611f: $9c
    ld [$c464], sp                                ; $6120: $08 $64 $c4
    ld b, d                                       ; $6123: $42
    add b                                         ; $6124: $80
    cp b                                          ; $6125: $b8
    ld b, b                                       ; $6126: $40
    ld e, h                                       ; $6127: $5c
    ld b, c                                       ; $6128: $41
    xor b                                         ; $6129: $a8
    ld b, [hl]                                    ; $612a: $46
    adc l                                         ; $612b: $8d
    ld b, c                                       ; $612c: $41
    ld d, h                                       ; $612d: $54
    adc b                                         ; $612e: $88
    ld a, a                                       ; $612f: $7f
    ld h, h                                       ; $6130: $64
    res 0, b                                      ; $6131: $cb $80
    and c                                         ; $6133: $a1
    ld a, [hl]                                    ; $6134: $7e
    dec c                                         ; $6135: $0d
    and b                                         ; $6136: $a0
    ld b, a                                       ; $6137: $47
    ld c, h                                       ; $6138: $4c
    add hl, sp                                    ; $6139: $39
    ld l, b                                       ; $613a: $68
    ld h, [hl]                                    ; $613b: $66
    ld [hl], $d4                                  ; $613c: $36 $d4
    and d                                         ; $613e: $a2
    nop                                           ; $613f: $00
    ld [hl+], a                                   ; $6140: $22
    ld b, h                                       ; $6141: $44
    ld hl, $8341                                  ; $6142: $21 $41 $83
    ld b, d                                       ; $6145: $42
    xor b                                         ; $6146: $a8
    ld b, e                                       ; $6147: $43
    inc sp                                        ; $6148: $33
    ld b, b                                       ; $6149: $40
    adc l                                         ; $614a: $8d
    ld b, b                                       ; $614b: $40
    ld a, b                                       ; $614c: $78
    adc b                                         ; $614d: $88
    add a                                         ; $614e: $87
    ldh [$f6], a                                  ; $614f: $e0 $f6
    ld c, b                                       ; $6151: $48
    ld b, c                                       ; $6152: $41
    ld [c], a                                     ; $6153: $e2
    db $e3                                        ; $6154: $e3
    pop de                                        ; $6155: $d1
    ld b, b                                       ; $6156: $40
    add d                                         ; $6157: $82
    add e                                         ; $6158: $83
    ld d, d                                       ; $6159: $52
    ld d, [hl]                                    ; $615a: $56
    rrca                                          ; $615b: $0f
    ld a, [hl-]                                   ; $615c: $3a
    dec [hl]                                      ; $615d: $35
    ld l, b                                       ; $615e: $68
    ld h, [hl]                                    ; $615f: $66
    ld d, e                                       ; $6160: $53
    add c                                         ; $6161: $81
    xor [hl]                                      ; $6162: $ae
    ld b, e                                       ; $6163: $43
    ldh [$63], a                                  ; $6164: $e0 $63
    add e                                         ; $6166: $83
    ld b, a                                       ; $6167: $47
    ldh [$33], a                                  ; $6168: $e0 $33
    ld b, c                                       ; $616a: $41
    sbc $20                                       ; $616b: $de $20
    ld a, b                                       ; $616d: $78

jr_06a_616e:
    adc b                                         ; $616e: $88
    ld d, d                                       ; $616f: $52
    add b                                         ; $6170: $80
    sub d                                         ; $6171: $92
    ld b, [hl]                                    ; $6172: $46
    add l                                         ; $6173: $85
    add [hl]                                      ; $6174: $86
    add e                                         ; $6175: $83
    ld a, e                                       ; $6176: $7b
    ld [hl], $35                                  ; $6177: $36 $35
    add h                                         ; $6179: $84
    ret nz                                        ; $617a: $c0

    sbc h                                         ; $617b: $9c
    sbc a                                         ; $617c: $9f
    ldh [$e1], a                                  ; $617d: $e0 $e1
    ld [hl], $40                                  ; $617f: $36 $40
    ld b, b                                       ; $6181: $40
    ldh [$66], a                                  ; $6182: $e0 $66
    add e                                         ; $6184: $83
    ld c, e                                       ; $6185: $4b
    sbc $20                                       ; $6186: $de $20
    ld a, b                                       ; $6188: $78
    adc b                                         ; $6189: $88
    sbc [hl]                                      ; $618a: $9e
    ld hl, $219c                                  ; $618b: $21 $9c $21
    sbc [hl]                                      ; $618e: $9e
    add h                                         ; $618f: $84
    add $62                                       ; $6190: $c6 $62
    ld b, h                                       ; $6192: $44
    ret nz                                        ; $6193: $c0

    sbc [hl]                                      ; $6194: $9e
    adc b                                         ; $6195: $88
    ld hl, $67e0                                  ; $6196: $21 $e0 $67
    add e                                         ; $6199: $83
    ld c, h                                       ; $619a: $4c
    call c, $54db                                 ; $619b: $dc $db $54
    add a                                         ; $619e: $87
    ld hl, sp-$59                                 ; $619f: $f8 $a7
    ld b, d                                       ; $61a1: $42
    sbc h                                         ; $61a2: $9c
    ld hl, $e1c0                                  ; $61a3: $21 $c0 $e1
    sub b                                         ; $61a6: $90
    sub c                                         ; $61a7: $91
    ld b, h                                       ; $61a8: $44
    inc a                                         ; $61a9: $3c
    ld l, [hl]                                    ; $61aa: $6e
    rra                                           ; $61ab: $1f
    ld [hl], b                                    ; $61ac: $70
    ld [hl], c                                    ; $61ad: $71
    ld [hl], b                                    ; $61ae: $70
    add hl, sp                                    ; $61af: $39
    sbc [hl]                                      ; $61b0: $9e
    ldh [$6f], a                                  ; $61b1: $e0 $6f
    ld e, a                                       ; $61b3: $5f
    ld c, e                                       ; $61b4: $4b
    ld b, h                                       ; $61b5: $44
    or c                                          ; $61b6: $b1
    ld e, [hl]                                    ; $61b7: $5e
    call z, $9140                                 ; $61b8: $cc $40 $91
    add hl, sp                                    ; $61bb: $39
    dec [hl]                                      ; $61bc: $35
    ld a, [hl-]                                   ; $61bd: $3a
    adc e                                         ; $61be: $8b
    ld b, b                                       ; $61bf: $40
    ld b, e                                       ; $61c0: $43
    ld b, e                                       ; $61c1: $43
    jp nz, $e0a0                                  ; $61c2: $c2 $a0 $e0

    ld l, b                                       ; $61c5: $68
    ld h, d                                       ; $61c6: $62
    ret nz                                        ; $61c7: $c0

    ld e, a                                       ; $61c8: $5f
    ld c, d                                       ; $61c9: $4a
    jp nz, Jump_06a_610b                          ; $61ca: $c2 $0b $61

    jr nz, jr_06a_616e                            ; $61cd: $20 $9f

    dec c                                         ; $61cf: $0d
    add c                                         ; $61d0: $81
    jp $90ff                                      ; $61d1: $c3 $ff $90


Jump_06a_61d4:
    ld b, l                                       ; $61d4: $45
    ld a, [hl-]                                   ; $61d5: $3a
    dec [hl]                                      ; $61d6: $35
    ld a, [hl-]                                   ; $61d7: $3a
    ld d, d                                       ; $61d8: $52
    ld d, h                                       ; $61d9: $54
    ld d, h                                       ; $61da: $54
    inc bc                                        ; $61db: $03
    ld c, h                                       ; $61dc: $4c
    ld d, l                                       ; $61dd: $55
    ld a, a                                       ; $61de: $7f
    pop hl                                        ; $61df: $e1
    ldh [rBCPS], a                                ; $61e0: $e0 $68
    dec l                                         ; $61e2: $2d
    ld h, b                                       ; $61e3: $60
    ld e, a                                       ; $61e4: $5f
    ld c, d                                       ; $61e5: $4a
    add b                                         ; $61e6: $80
    ld b, $e9                                     ; $61e7: $06 $e9
    ld [bc], a                                    ; $61e9: $02
    di                                            ; $61ea: $f3
    and $e7                                       ; $61eb: $e6 $e7
    pop bc                                        ; $61ed: $c1
    ldh [$dd], a                                  ; $61ee: $e0 $dd
    ld h, b                                       ; $61f0: $60
    call nz, Call_06a_4490                        ; $61f1: $c4 $90 $44
    inc a                                         ; $61f4: $3c
    ccf                                           ; $61f5: $3f
    dec [hl]                                      ; $61f6: $35
    ld h, d                                       ; $61f7: $62
    ld h, l                                       ; $61f8: $65
    ld h, [hl]                                    ; $61f9: $66
    ld [hl], $52                                  ; $61fa: $36 $52
    ret nz                                        ; $61fc: $c0

    ld [c], a                                     ; $61fd: $e2
    ldh [rBCPS], a                                ; $61fe: $e0 $68
    ld [hl], b                                    ; $6200: $70
    ld a, c                                       ; $6201: $79
    nop                                           ; $6202: $00
    ld e, a                                       ; $6203: $5f
    ld c, d                                       ; $6204: $4a
    ld b, a                                       ; $6205: $47
    ld b, $e9                                     ; $6206: $06 $e9
    ld [bc], a                                    ; $6208: $02
    add sp, -$17                                  ; $6209: $e8 $e9
    and c                                         ; $620b: $a1
    inc e                                         ; $620c: $1c
    add d                                         ; $620d: $82

Jump_06a_620e:
    ld l, $80                                     ; $620e: $2e $80
    and b                                         ; $6210: $a0
    ld h, e                                       ; $6211: $63
    ld h, h                                       ; $6212: $64
    ld a, b                                       ; $6213: $78
    ld b, b                                       ; $6214: $40
    ret nz                                        ; $6215: $c0

    add hl, sp                                    ; $6216: $39
    add e                                         ; $6217: $83
    and d                                         ; $6218: $a2
    ldh [rBCPS], a                                ; $6219: $e0 $68
    ret nz                                        ; $621b: $c0

    rla                                           ; $621c: $17
    ld hl, $4c83                                  ; $621d: $21 $83 $4c
    or d                                          ; $6220: $b2
    add d                                         ; $6221: $82
    ld [hl], c                                    ; $6222: $71
    add h                                         ; $6223: $84
    add e                                         ; $6224: $83
    pop bc                                        ; $6225: $c1
    dec de                                        ; $6226: $1b
    ld h, c                                       ; $6227: $61
    ld a, c                                       ; $6228: $79
    ld a, [hl]                                    ; $6229: $7e
    add hl, bc                                    ; $622a: $09
    ld a, [hl-]                                   ; $622b: $3a
    ld b, c                                       ; $622c: $41
    ret nz                                        ; $622d: $c0

    call nz, $a180                                ; $622e: $c4 $80 $a1
    ld d, [hl]                                    ; $6231: $56
    ld h, e                                       ; $6232: $63
    rst $28                                       ; $6233: $ef
    ld b, h                                       ; $6234: $44
    ld e, [hl]                                    ; $6235: $5e
    add e                                         ; $6236: $83
    add e                                         ; $6237: $83
    ld c, d                                       ; $6238: $4a
    db $f4                                        ; $6239: $f4
    or d                                          ; $623a: $b2
    add l                                         ; $623b: $85
    ld b, h                                       ; $623c: $44
    ld [hl+], a                                   ; $623d: $22
    ld [$244f], a                                 ; $623e: $ea $4f $24
    sub b                                         ; $6241: $90
    add b                                         ; $6242: $80
    ld b, [hl]                                    ; $6243: $46
    add hl, sp                                    ; $6244: $39
    ld b, $c0                                     ; $6245: $06 $c0
    ld [c], a                                     ; $6247: $e2
    ld b, d                                       ; $6248: $42
    sbc [hl]                                      ; $6249: $9e
    ld a, [bc]                                    ; $624a: $0a
    and d                                         ; $624b: $a2
    ld a, c                                       ; $624c: $79
    inc bc                                        ; $624d: $03
    ld e, [hl]                                    ; $624e: $5e
    add l                                         ; $624f: $85
    add e                                         ; $6250: $83
    ld c, d                                       ; $6251: $4a
    or d                                          ; $6252: $b2
    adc d                                         ; $6253: $8a
    ld c, $c5                                     ; $6254: $0e $c5
    ld h, [hl]                                    ; $6256: $66
    add d                                         ; $6257: $82
    add e                                         ; $6258: $83
    ld b, l                                       ; $6259: $45
    ret nz                                        ; $625a: $c0

    and d                                         ; $625b: $a2
    ret nz                                        ; $625c: $c0

    ldh [$72], a                                  ; $625d: $e0 $72
    ld h, b                                       ; $625f: $60
    inc hl                                        ; $6260: $23
    add c                                         ; $6261: $81
    nop                                           ; $6262: $00
    inc e                                         ; $6263: $1c
    ld [c], a                                     ; $6264: $e2
    ld e, [hl]                                    ; $6265: $5e
    add [hl]                                      ; $6266: $86
    add e                                         ; $6267: $83
    ld b, a                                       ; $6268: $47
    or d                                          ; $6269: $b2
    add [hl]                                      ; $626a: $86
    ld l, $05                                     ; $626b: $2e $05
    cp a                                          ; $626d: $bf
    ld [c], a                                     ; $626e: $e2
    add b                                         ; $626f: $80
    and b                                         ; $6270: $a0
    ld a, [hl]                                    ; $6271: $7e
    ret nz                                        ; $6272: $c0

    nop                                           ; $6273: $00
    ld b, h                                       ; $6274: $44
    add b                                         ; $6275: $80
    add e                                         ; $6276: $83
    add e                                         ; $6277: $83
    inc e                                         ; $6278: $1c
    push hl                                       ; $6279: $e5
    ld e, [hl]                                    ; $627a: $5e
    add [hl]                                      ; $627b: $86
    ld b, $68                                     ; $627c: $06 $68
    or d                                          ; $627e: $b2
    add e                                         ; $627f: $83
    ld l, $08                                     ; $6280: $2e $08
    ld c, d                                       ; $6282: $4a
    ld b, b                                       ; $6283: $40
    ei                                            ; $6284: $fb
    sub b                                         ; $6285: $90
    jp $a03f                                      ; $6286: $c3 $3f $a0


    ld a, [hl-]                                   ; $6289: $3a
    ld l, h                                       ; $628a: $6c
    ld l, a                                       ; $628b: $6f
    ld l, [hl]                                    ; $628c: $6e
    ld a, [hl-]                                   ; $628d: $3a
    inc bc                                        ; $628e: $03
    ld b, l                                       ; $628f: $45
    sbc [hl]                                      ; $6290: $9e
    inc c                                         ; $6291: $0c
    add b                                         ; $6292: $80
    inc e                                         ; $6293: $1c
    and $5e                                       ; $6294: $e6 $5e
    add e                                         ; $6296: $83
    add hl, bc                                    ; $6297: $09
    ld l, e                                       ; $6298: $6b
    ld a, b                                       ; $6299: $78
    ld h, e                                       ; $629a: $63

jr_06a_629b:
    xor e                                         ; $629b: $ab
    xor d                                         ; $629c: $aa
    ld [hl], a                                    ; $629d: $77
    sbc a                                         ; $629e: $9f
    or [hl]                                       ; $629f: $b6
    call nz, $61c3                                ; $62a0: $c4 $c3 $61
    ld [hl], b                                    ; $62a3: $70
    ld l, [hl]                                    ; $62a4: $6e
    dec [hl]                                      ; $62a5: $35
    ret nz                                        ; $62a6: $c0

    pop hl                                        ; $62a7: $e1
    add b                                         ; $62a8: $80
    adc $68                                       ; $62a9: $ce $68
    ld e, [hl]                                    ; $62ab: $5e
    add e                                         ; $62ac: $83
    res 5, c                                      ; $62ad: $cb $a9
    ld bc, $abc7                                  ; $62af: $01 $c7 $ab
    xor c                                         ; $62b2: $a9
    ret                                           ; $62b3: $c9


jr_06a_62b4:
    ld bc, $a0be                                  ; $62b4: $01 $be $a0
    dec [hl]                                      ; $62b7: $35
    rlca                                          ; $62b8: $07
    dec [hl]                                      ; $62b9: $35
    add hl, sp                                    ; $62ba: $39
    ld b, [hl]                                    ; $62bb: $46
    nop                                           ; $62bc: $00
    jp nz, $63ce                                  ; $62bd: $c2 $ce $63

    add sp, $21                                   ; $62c0: $e8 $21
    ld b, h                                       ; $62c2: $44
    add e                                         ; $62c3: $83
    ld l, $85                                     ; $62c4: $2e $85
    jp $d4d6                                      ; $62c6: $c3 $d6 $d4


    cp [hl]                                       ; $62c9: $be
    and l                                         ; $62ca: $a5
    ld l, $09                                     ; $62cb: $2e $09
    cp [hl]                                       ; $62cd: $be
    ld h, b                                       ; $62ce: $60
    ld a, [hl]                                    ; $62cf: $7e
    ldh [rDMA], a                                 ; $62d0: $e0 $46
    ld a, $01                                     ; $62d2: $3e $01
    dec [hl]                                      ; $62d4: $35
    add c                                         ; $62d5: $81
    ldh [rP1], a                                  ; $62d6: $e0 $00
    jp $63ce                                      ; $62d8: $c3 $ce $63


    add b                                         ; $62db: $80
    ld h, h                                       ; $62dc: $64
    adc [hl]                                      ; $62dd: $8e
    and [hl]                                      ; $62de: $a6
    ld l, e                                       ; $62df: $6b
    add c                                         ; $62e0: $81
    ld a, [hl]                                    ; $62e1: $7e
    and e                                         ; $62e2: $a3
    ld d, e                                       ; $62e3: $53

jr_06a_62e4:
    db $e4                                        ; $62e4: $e4
    push hl                                       ; $62e5: $e5
    ld l, $09                                     ; $62e6: $2e $09
    scf                                           ; $62e8: $37
    add c                                         ; $62e9: $81
    and c                                         ; $62ea: $a1
    ld a, $a1                                     ; $62eb: $3e $a1

jr_06a_62ed:
    dec [hl]                                      ; $62ed: $35
    pop bc                                        ; $62ee: $c1
    call nz, $23c4                                ; $62ef: $c4 $c4 $23
    call nz, Call_000_20e8                        ; $62f2: $c4 $e8 $20
    db $eb                                        ; $62f5: $eb
    ld e, e                                       ; $62f6: $5b
    ld b, a                                       ; $62f7: $47
    ld c, e                                       ; $62f8: $4b
    inc bc                                        ; $62f9: $03
    dec d                                         ; $62fa: $15
    inc hl                                        ; $62fb: $23
    and $e7                                       ; $62fc: $e6 $e7
    ld [hl], b                                    ; $62fe: $70
    xor e                                         ; $62ff: $ab
    xor c                                         ; $6300: $a9
    ld c, l                                       ; $6301: $4d
    add b                                         ; $6302: $80
    add h                                         ; $6303: $84
    jr nz, @+$01                                  ; $6304: $20 $ff

    and b                                         ; $6306: $a0
    ld a, [hl-]                                   ; $6307: $3a
    ld b, h                                       ; $6308: $44
    and c                                         ; $6309: $a1
    ret nz                                        ; $630a: $c0

    ld h, e                                       ; $630b: $63
    add b                                         ; $630c: $80
    jr jr_06a_62b4                                ; $630d: $18 $a5

    dec hl                                        ; $630f: $2b
    jr nz, jr_06a_629b                            ; $6310: $20 $89

    ld h, $4b                                     ; $6312: $26 $4b
    inc bc                                        ; $6314: $03
    ld c, h                                       ; $6315: $4c
    add e                                         ; $6316: $83
    adc [hl]                                      ; $6317: $8e
    jr nz, @-$53                                  ; $6318: $20 $ab

    xor b                                         ; $631a: $a8
    db $eb                                        ; $631b: $eb
    inc b                                         ; $631c: $04
    cp e                                          ; $631d: $bb
    add c                                         ; $631e: $81
    ld bc, $3ee1                                  ; $631f: $01 $e1 $3e
    ld [bc], a                                    ; $6322: $02
    ldh [$aa], a                                  ; $6323: $e0 $aa
    ld h, l                                       ; $6325: $65
    jr nz, jr_06a_62ed                            ; $6326: $20 $c5

    adc c                                         ; $6328: $89
    ld h, $6b                                     ; $6329: $26 $6b
    add e                                         ; $632b: $83
    ld [$293e], sp                                ; $632c: $08 $3e $29
    ld l, $04                                     ; $632f: $2e $04
    db $fd                                        ; $6331: $fd
    ld h, d                                       ; $6332: $62
    call nz, $80bf                                ; $6333: $c4 $bf $80
    add d                                         ; $6336: $82
    jp nz, Jump_06a_63aa                          ; $6337: $c2 $aa $63

    ccf                                           ; $633a: $3f
    ld h, [hl]                                    ; $633b: $66
    nop                                           ; $633c: $00
    jr jr_06a_62e4                                ; $633d: $18 $a5

    ld c, e                                       ; $633f: $4b
    dec b                                         ; $6340: $05
    ld a, l                                       ; $6341: $7d
    add hl, hl                                    ; $6342: $29
    ld l, $06                                     ; $6343: $2e $06
    ld a, h                                       ; $6345: $7c
    and c                                         ; $6346: $a1
    add c                                         ; $6347: $81
    jp Jump_06a_4244                              ; $6348: $c3 $44 $42


    ld [hl], $00                                  ; $634b: $36 $00
    add b                                         ; $634d: $80
    ccf                                           ; $634e: $3f
    ld h, [hl]                                    ; $634f: $66
    ld a, a                                       ; $6350: $7f
    rst $00                                       ; $6351: $c7
    ld l, e                                       ; $6352: $6b
    add e                                         ; $6353: $83
    and a                                         ; $6354: $a7
    rst $20                                       ; $6355: $e7
    add b                                         ; $6356: $80
    ld h, e                                       ; $6357: $63
    dec a                                         ; $6358: $3d
    and [hl]                                      ; $6359: $a6
    nop                                           ; $635a: $00
    pop hl                                        ; $635b: $e1
    dec [hl]                                      ; $635c: $35
    inc bc                                        ; $635d: $03
    ld a, $91                                     ; $635e: $3e $91
    sub d                                         ; $6360: $92
    nop                                           ; $6361: $00
    ld h, l                                       ; $6362: $65
    ld [hl+], a                                   ; $6363: $22
    ccf                                           ; $6364: $3f
    ld h, l                                       ; $6365: $65
    adc l                                         ; $6366: $8d
    add hl, bc                                    ; $6367: $09
    ld c, e                                       ; $6368: $4b
    ld bc, $e7a7                                  ; $6369: $01 $a7 $e7
    ld d, [hl]                                    ; $636c: $56
    ld bc, $e422                                  ; $636d: $01 $22 $e4
    push hl                                       ; $6370: $e5
    cp l                                          ; $6371: $bd
    add c                                         ; $6372: $81
    jp $617e                                      ; $6373: $c3 $7e $61


    ld b, b                                       ; $6376: $40
    ld bc, $00c1                                  ; $6377: $01 $c1 $00
    ld [$7f20], sp                                ; $637a: $08 $20 $7f
    ld h, e                                       ; $637d: $63
    ccf                                           ; $637e: $3f
    ld h, a                                       ; $637f: $67
    jp c, Jump_06a_4b06                           ; $6380: $da $06 $4b

    ld [bc], a                                    ; $6383: $02
    and a                                         ; $6384: $a7
    add sp, -$42                                  ; $6385: $e8 $be
    ld h, c                                       ; $6387: $61
    sbc l                                         ; $6388: $9d
    jr nz, jr_06a_63bf                            ; $6389: $20 $34

    cp a                                          ; $638b: $bf
    add b                                         ; $638c: $80
    db $fd                                        ; $638d: $fd
    ld h, b                                       ; $638e: $60
    sub c                                         ; $638f: $91
    cp [hl]                                       ; $6390: $be
    ld h, c                                       ; $6391: $61
    ld [hl], $45                                  ; $6392: $36 $45
    push af                                       ; $6394: $f5
    ld h, b                                       ; $6395: $60
    cp $41                                        ; $6396: $fe $41
    ld b, b                                       ; $6398: $40
    ccf                                           ; $6399: $3f
    ld l, b                                       ; $639a: $68
    jp c, $8307                                   ; $639b: $da $07 $83

    ld h, d                                       ; $639e: $62
    and $48                                       ; $639f: $e6 $48
    cpl                                           ; $63a1: $2f
    ld bc, $209d                                  ; $63a2: $01 $9d $20
    and c                                         ; $63a5: $a1
    ld bc, $1660                                  ; $63a6: $01 $60 $16
    ccf                                           ; $63a9: $3f

Jump_06a_63aa:
    ld h, b                                       ; $63aa: $60
    sub b                                         ; $63ab: $90
    ld b, d                                       ; $63ac: $42
    ld b, e                                       ; $63ad: $43
    and b                                         ; $63ae: $a0
    sub c                                         ; $63af: $91
    ld c, [hl]                                    ; $63b0: $4e
    nop                                           ; $63b1: $00
    cp l                                          ; $63b2: $bd
    ld hl, $683f                                  ; $63b3: $21 $3f $68
    ldh [$da], a                                  ; $63b6: $e0 $da
    rlca                                          ; $63b8: $07
    ret nz                                        ; $63b9: $c0

    db $e3                                        ; $63ba: $e3
    and $46                                       ; $63bb: $e6 $46
    cp [hl]                                       ; $63bd: $be
    ld h, a                                       ; $63be: $67

jr_06a_63bf:
    ccf                                           ; $63bf: $3f
    ld h, d                                       ; $63c0: $62
    sub b                                         ; $63c1: $90
    ld b, l                                       ; $63c2: $45
    ld [hl], $03                                  ; $63c3: $36 $03
    add hl, sp                                    ; $63c5: $39
    ld b, [hl]                                    ; $63c6: $46
    cp c                                          ; $63c7: $b9
    ld bc, $6c3f                                  ; $63c8: $01 $3f $6c
    ld a, h                                       ; $63cb: $7c
    adc h                                         ; $63cc: $8c
    and $47                                       ; $63cd: $e6 $47
    dec h                                         ; $63cf: $25
    and l                                         ; $63d0: $a5
    ld b, b                                       ; $63d1: $40
    pop hl                                        ; $63d2: $e1
    ld c, [hl]                                    ; $63d3: $4e
    adc c                                         ; $63d4: $89
    ldh [$c3], a                                  ; $63d5: $e0 $c3

Call_06a_63d7:
    sub c                                         ; $63d7: $91
    ld b, l                                       ; $63d8: $45
    add c                                         ; $63d9: $81
    ld [c], a                                     ; $63da: $e2
    ld b, b                                       ; $63db: $40
    ldh [$ea], a                                  ; $63dc: $e0 $ea
    ccf                                           ; $63de: $3f
    ld l, c                                       ; $63df: $69
    ld [hl], b                                    ; $63e0: $70
    ld a, h                                       ; $63e1: $7c
    adc h                                         ; $63e2: $8c
    and $47                                       ; $63e3: $e6 $47
    and $c6                                       ; $63e5: $e6 $c6
    cp [hl]                                       ; $63e7: $be

Jump_06a_63e8:
    ld h, e                                       ; $63e8: $63
    call nz, $9190                                ; $63e9: $c4 $90 $91
    ld b, d                                       ; $63ec: $42
    pop hl                                        ; $63ed: $e1
    nop                                           ; $63ee: $00
    cp a                                          ; $63ef: $bf

Jump_06a_63f0:
    call nz, Call_06a_68cf                        ; $63f0: $c4 $cf $68
    ld a, h                                       ; $63f3: $7c
    adc e                                         ; $63f4: $8b
    and $48                                       ; $63f5: $e6 $48
    and $c6                                       ; $63f7: $e6 $c6
    ld a, l                                       ; $63f9: $7d
    ld h, e                                       ; $63fa: $63
    db $fc                                        ; $63fb: $fc
    db $e3                                        ; $63fc: $e3
    dec [hl]                                      ; $63fd: $35
    ld b, b                                       ; $63fe: $40
    ld b, c                                       ; $63ff: $41
    sbc [hl]                                      ; $6400: $9e
    db $fd                                        ; $6401: $fd
    ld b, e                                       ; $6402: $43
    call $0e03                                    ; $6403: $cd $03 $0e
    add a                                         ; $6406: $87
    di                                            ; $6407: $f3
    ld b, h                                       ; $6408: $44
    res 4, l                                      ; $6409: $cb $a5
    db $eb                                        ; $640b: $eb
    ld h, d                                       ; $640c: $62
    ld h, [hl]                                    ; $640d: $66
    rlca                                          ; $640e: $07
    ld [$9ea0], a                                 ; $640f: $ea $a0 $9e
    pop bc                                        ; $6412: $c1
    ret nz                                        ; $6413: $c0

    cp a                                          ; $6414: $bf
    and $7f                                       ; $6415: $e6 $7f
    ret nz                                        ; $6417: $c0

    add a                                         ; $6418: $87
    add b                                         ; $6419: $80
    add $41                                       ; $641a: $c6 $41
    ldh [$39], a                                  ; $641c: $e0 $39
    ld h, d                                       ; $641e: $62
    add h                                         ; $641f: $84
    rst $00                                       ; $6420: $c7
    or $86                                        ; $6421: $f6 $86
    ld c, b                                       ; $6423: $48
    inc h                                         ; $6424: $24
    and $c7                                       ; $6425: $e6 $c7
    sbc [hl]                                      ; $6427: $9e
    call nz, $b790                                ; $6428: $c4 $90 $b7
    ld b, l                                       ; $642b: $45
    scf                                           ; $642c: $37
    dec a                                         ; $642d: $3d
    rst $38                                       ; $642e: $ff
    ldh [$37], a                                  ; $642f: $e0 $37
    ld b, l                                       ; $6431: $45
    ld a, a                                       ; $6432: $7f
    ret nz                                        ; $6433: $c0

    or [hl]                                       ; $6434: $b6
    add c                                         ; $6435: $81
    sbc a                                         ; $6436: $9f
    ld l, d                                       ; $6437: $6a
    ret nz                                        ; $6438: $c0

    pop hl                                        ; $6439: $e1
    ld [hl+], a                                   ; $643a: $22
    ld e, e                                       ; $643b: $5b
    ld l, b                                       ; $643c: $68
    or $89                                        ; $643d: $f6 $89
    ld [hl], $67                                  ; $643f: $36 $67
    and $c4                                       ; $6441: $e6 $c4
    sbc [hl]                                      ; $6443: $9e
    ld e, a                                       ; $6444: $5f
    sub b                                         ; $6445: $90
    jp $a439                                      ; $6446: $c3 $39 $a4


    ld h, h                                       ; $6449: $64

jr_06a_644a:
    rst $38                                       ; $644a: $ff
    ldh [$a5], a                                  ; $644b: $e0 $a5
    cp a                                          ; $644d: $bf
    and b                                         ; $644e: $a0
    add b                                         ; $644f: $80
    cp $a3                                        ; $6450: $fe $a3
    ld b, a                                       ; $6452: $47
    ld [bc], a                                    ; $6453: $02
    ld b, $2b                                     ; $6454: $06 $2b
    or $86                                        ; $6456: $f6 $86
    ld b, c                                       ; $6458: $41
    dec h                                         ; $6459: $25
    ld h, d                                       ; $645a: $62
    ld h, [hl]                                    ; $645b: $66
    pop bc                                        ; $645c: $c1
    add b                                         ; $645d: $80
    ld a, $7f                                     ; $645e: $3e $7f
    ld l, c                                       ; $6460: $69
    and e                                         ; $6461: $a3
    dec [hl]                                      ; $6462: $35
    dec [hl]                                      ; $6463: $35
    and e                                         ; $6464: $a3
    ld l, d                                       ; $6465: $6a
    ld a, $f3                                     ; $6466: $3e $f3
    ld hl, $fe40                                  ; $6468: $21 $40 $fe
    and c                                         ; $646b: $a1
    ld b, a                                       ; $646c: $47
    ld [bc], a                                    ; $646d: $02
    ld b, $2b                                     ; $646e: $06 $2b
    ld [hl], l                                    ; $6470: $75
    ld l, d                                       ; $6471: $6a
    cp h                                          ; $6472: $bc
    ld [hl+], a                                   ; $6473: $22
    db $f4                                        ; $6474: $f4
    ld b, e                                       ; $6475: $43
    db $eb                                        ; $6476: $eb
    jp Jump_000_1760                              ; $6477: $c3 $60 $17


    sub b                                         ; $647a: $90
    ld a, $69                                     ; $647b: $3e $69
    ret nz                                        ; $647d: $c0

    ld [hl+], a                                   ; $647e: $22
    ld a, $f3                                     ; $647f: $3e $f3
    jr nz, jr_06a_64c1                            ; $6481: $20 $3e

    and d                                         ; $6483: $a2
    jp c, Jump_06a_7042                           ; $6484: $da $42 $70

    ld b, $33                                     ; $6487: $06 $33
    cp h                                          ; $6489: $bc
    daa                                           ; $648a: $27
    ld a, $05                                     ; $648b: $3e $05
    db $fc                                        ; $648d: $fc
    jr nz, jr_06a_64c9                            ; $648e: $20 $39

    ld l, e                                       ; $6490: $6b
    ld [hl], c                                    ; $6491: $71
    rst $38                                       ; $6492: $ff
    ldh [$83], a                                  ; $6493: $e0 $83
    ld l, l                                       ; $6495: $6d
    add hl, sp                                    ; $6496: $39
    ld bc, $dae1                                  ; $6497: $01 $e1 $da
    ld b, $06                                     ; $649a: $06 $06
    ld l, $03                                     ; $649c: $2e $03
    ld h, [hl]                                    ; $649e: $66
    cp h                                          ; $649f: $bc
    ld a, [hl+]                                   ; $64a0: $2a
    sbc $57                                       ; $64a1: $de $57

Call_06a_64a3:
    rst $18                                       ; $64a3: $df
    sbc a                                         ; $64a4: $9f
    or [hl]                                       ; $64a5: $b6
    ret nz                                        ; $64a6: $c0

    call nz, $c0ae                                ; $64a7: $c4 $ae $c0
    add d                                         ; $64aa: $82
    db $eb                                        ; $64ab: $eb
    ld a, d                                       ; $64ac: $7a
    ld h, h                                       ; $64ad: $64
    ld h, b                                       ; $64ae: $60
    ld b, $2c                                     ; $64af: $06 $2c
    xor b                                         ; $64b1: $a8
    rst $20                                       ; $64b2: $e7
    cp h                                          ; $64b3: $bc
    dec h                                         ; $64b4: $25
    ld [hl], b                                    ; $64b5: $70
    inc bc                                        ; $64b6: $03
    ld e, h                                       ; $64b7: $5c
    nop                                           ; $64b8: $00
    sbc a                                         ; $64b9: $9f
    sbc l                                         ; $64ba: $9d
    rst $38                                       ; $64bb: $ff
    pop hl                                        ; $64bc: $e1
    rlca                                          ; $64bd: $07
    sbc h                                         ; $64be: $9c
    ld b, [hl]                                    ; $64bf: $46
    xor a                                         ; $64c0: $af

jr_06a_64c1:
    add c                                         ; $64c1: $81
    add c                                         ; $64c2: $81
    xor a                                         ; $64c3: $af
    ld h, b                                       ; $64c4: $60
    ld c, c                                       ; $64c5: $49
    nop                                           ; $64c6: $00
    jr nz, jr_06a_644a                            ; $64c7: $20 $81

jr_06a_64c9:
    ld b, $2a                                     ; $64c9: $06 $2a
    ld h, h                                       ; $64cb: $64
    cp h                                          ; $64cc: $bc
    ld l, $32                                     ; $64cd: $2e $32
    inc bc                                        ; $64cf: $03
    ld [$648d], a                                 ; $64d0: $ea $8d $64
    inc [hl]                                      ; $64d3: $34
    ld hl, $9d9d                                  ; $64d4: $21 $9d $9d
    ld b, e                                       ; $64d7: $43
    db $e4                                        ; $64d8: $e4
    nop                                           ; $64d9: $00
    db $ed                                        ; $64da: $ed
    db $e4                                        ; $64db: $e4
    ld b, $2a                                     ; $64dc: $06 $2a
    cp h                                          ; $64de: $bc
    ld l, $75                                     ; $64df: $2e $75
    ld l, b                                       ; $64e1: $68
    adc d                                         ; $64e2: $8a
    ld [bc], a                                    ; $64e3: $02
    xor [hl]                                      ; $64e4: $ae
    ld h, d                                       ; $64e5: $62
    ret nz                                        ; $64e6: $c0

    ld c, d                                       ; $64e7: $4a
    ld b, $2a                                     ; $64e8: $06 $2a
    nop                                           ; $64ea: $00
    ld a, [$e1ee]                                 ; $64eb: $fa $ee $e1
    xor c                                         ; $64ee: $a9
    inc d                                         ; $64ef: $14
    ld b, [hl]                                    ; $64f0: $46
    ret nz                                        ; $64f1: $c0

    ld b, [hl]                                    ; $64f2: $46
    ld sp, hl                                     ; $64f3: $f9
    di                                            ; $64f4: $f3
    nop                                           ; $64f5: $00
    nop                                           ; $64f6: $00
    nop                                           ; $64f7: $00
    pop bc                                        ; $64f8: $c1
    nop                                           ; $64f9: $00
    rst $38                                       ; $64fa: $ff
    rst $38                                       ; $64fb: $ff
    rst $38                                       ; $64fc: $ff
    rst $38                                       ; $64fd: $ff
    rst $38                                       ; $64fe: $ff
    rst $38                                       ; $64ff: $ff
    rst $38                                       ; $6500: $ff
    rst $38                                       ; $6501: $ff
    rst $38                                       ; $6502: $ff
    rst $38                                       ; $6503: $ff
    nop                                           ; $6504: $00
    nop                                           ; $6505: $00
    dec c                                         ; $6506: $0d
    add b                                         ; $6507: $80
    cp $e0                                        ; $6508: $fe $e0
    nop                                           ; $650a: $00
    ld b, b                                       ; $650b: $40
    ret c                                         ; $650c: $d8

    push hl                                       ; $650d: $e5
    rst $30                                       ; $650e: $f7
    and $eb                                       ; $650f: $e6 $eb
    ldh [rIE], a                                  ; $6511: $e0 $ff
    rst $38                                       ; $6513: $ff
    nop                                           ; $6514: $00
    rst $38                                       ; $6515: $ff
    db $f4                                        ; $6516: $f4
    nop                                           ; $6517: $00
    nop                                           ; $6518: $00
    nop                                           ; $6519: $00
    ld [bc], a                                    ; $651a: $02
    nop                                           ; $651b: $00
    ld a, [hl+]                                   ; $651c: $2a
    inc b                                         ; $651d: $04
    ld [bc], a                                    ; $651e: $02
    ld bc, $0624                                  ; $651f: $01 $24 $06
    ld [bc], a                                    ; $6522: $02
    ld [bc], a                                    ; $6523: $02
    dec l                                         ; $6524: $2d
    rlca                                          ; $6525: $07
    ld [bc], a                                    ; $6526: $02
    inc bc                                        ; $6527: $03
    ld hl, $0208                                  ; $6528: $21 $08 $02
    inc b                                         ; $652b: $04
    jr nc, jr_06a_6537                            ; $652c: $30 $09

    ld [bc], a                                    ; $652e: $02
    dec b                                         ; $652f: $05
    ld [hl+], a                                   ; $6530: $22
    ld a, [bc]                                    ; $6531: $0a
    ld [bc], a                                    ; $6532: $02
    ld b, $2e                                     ; $6533: $06 $2e
    inc c                                         ; $6535: $0c
    ld [bc], a                                    ; $6536: $02

jr_06a_6537:
    rlca                                          ; $6537: $07
    ld [hl+], a                                   ; $6538: $22
    dec c                                         ; $6539: $0d
    ld [bc], a                                    ; $653a: $02
    ld [$0d30], sp                                ; $653b: $08 $30 $0d
    ld [bc], a                                    ; $653e: $02
    add hl, bc                                    ; $653f: $09
    jr nz, jr_06a_6550                            ; $6540: $20 $0e

    ld [bc], a                                    ; $6542: $02
    ld a, [bc]                                    ; $6543: $0a
    dec l                                         ; $6544: $2d
    ld c, $02                                     ; $6545: $0e $02
    dec bc                                        ; $6547: $0b
    cpl                                           ; $6548: $2f
    ld c, $02                                     ; $6549: $0e $02
    inc c                                         ; $654b: $0c
    ld sp, $020e                                  ; $654c: $31 $0e $02
    dec c                                         ; $654f: $0d

jr_06a_6550:
    ld l, $0f                                     ; $6550: $2e $0f
    ld [bc], a                                    ; $6552: $02
    ld c, $30                                     ; $6553: $0e $30
    rrca                                          ; $6555: $0f
    ld [bc], a                                    ; $6556: $02
    rrca                                          ; $6557: $0f
    cpl                                           ; $6558: $2f
    db $10                                        ; $6559: $10
    ld [bc], a                                    ; $655a: $02
    db $10                                        ; $655b: $10
    inc hl                                        ; $655c: $23
    ld de, $1102                                  ; $655d: $11 $02 $11
    ld a, [hl+]                                   ; $6560: $2a
    ld de, $1202                                  ; $6561: $11 $02 $12
    ld h, $12                                     ; $6564: $26 $12
    ld [bc], a                                    ; $6566: $02
    inc de                                        ; $6567: $13
    add hl, de                                    ; $6568: $19
    inc de                                        ; $6569: $13
    ld [bc], a                                    ; $656a: $02
    inc d                                         ; $656b: $14
    inc h                                         ; $656c: $24
    inc de                                        ; $656d: $13
    ld [bc], a                                    ; $656e: $02
    dec d                                         ; $656f: $15
    daa                                           ; $6570: $27
    inc de                                        ; $6571: $13
    ld [bc], a                                    ; $6572: $02
    ld d, $16                                     ; $6573: $16 $16
    inc d                                         ; $6575: $14
    ld [bc], a                                    ; $6576: $02
    rla                                           ; $6577: $17
    ld e, $16                                     ; $6578: $1e $16
    ld [bc], a                                    ; $657a: $02
    jr @+$17                                      ; $657b: $18 $15

    dec e                                         ; $657d: $1d
    ld [bc], a                                    ; $657e: $02
    add hl, de                                    ; $657f: $19
    inc de                                        ; $6580: $13
    ld e, $02                                     ; $6581: $1e $02
    ld a, [de]                                    ; $6583: $1a
    ld d, $1e                                     ; $6584: $16 $1e
    ld [bc], a                                    ; $6586: $02
    dec de                                        ; $6587: $1b
    ld [de], a                                    ; $6588: $12
    rra                                           ; $6589: $1f
    ld [bc], a                                    ; $658a: $02
    inc e                                         ; $658b: $1c
    inc d                                         ; $658c: $14
    rra                                           ; $658d: $1f
    ld [bc], a                                    ; $658e: $02
    dec e                                         ; $658f: $1d
    inc de                                        ; $6590: $13
    jr nz, jr_06a_6595                            ; $6591: $20 $02

    ld e, $15                                     ; $6593: $1e $15

jr_06a_6595:
    ld hl, $1f02                                  ; $6595: $21 $02 $1f
    rla                                           ; $6598: $17
    dec h                                         ; $6599: $25
    ld [bc], a                                    ; $659a: $02
    jr nz, @+$1b                                  ; $659b: $20 $19

    daa                                           ; $659d: $27
    ld [bc], a                                    ; $659e: $02
    ld hl, $2b18                                  ; $659f: $21 $18 $2b
    ld [bc], a                                    ; $65a2: $02
    ld [hl+], a                                   ; $65a3: $22
    dec d                                         ; $65a4: $15
    cpl                                           ; $65a5: $2f
    ld [bc], a                                    ; $65a6: $02
    inc hl                                        ; $65a7: $23
    rla                                           ; $65a8: $17
    cpl                                           ; $65a9: $2f
    ld [bc], a                                    ; $65aa: $02
    inc h                                         ; $65ab: $24
    rra                                           ; $65ac: $1f
    cpl                                           ; $65ad: $2f
    ld [bc], a                                    ; $65ae: $02
    dec h                                         ; $65af: $25
    ld d, $30                                     ; $65b0: $16 $30
    ld [bc], a                                    ; $65b2: $02
    ld h, $14                                     ; $65b3: $26 $14
    ld sp, $2702                                  ; $65b5: $31 $02 $27
    rla                                           ; $65b8: $17
    ld sp, $2802                                  ; $65b9: $31 $02 $28
    dec d                                         ; $65bc: $15
    ld [hl-], a                                   ; $65bd: $32
    ld [bc], a                                    ; $65be: $02
    add hl, hl                                    ; $65bf: $29
    add hl, de                                    ; $65c0: $19
    inc sp                                        ; $65c1: $33
    ld [bc], a                                    ; $65c2: $02
    ld a, [hl+]                                   ; $65c3: $2a
    jr nz, jr_06a_65fa                            ; $65c4: $20 $34

    ld [bc], a                                    ; $65c6: $02
    dec hl                                        ; $65c7: $2b
    ld hl, $0235                                  ; $65c8: $21 $35 $02
    inc l                                         ; $65cb: $2c
    ld d, $36                                     ; $65cc: $16 $36
    ld [bc], a                                    ; $65ce: $02
    dec l                                         ; $65cf: $2d
    rla                                           ; $65d0: $17
    jr c, jr_06a_65d5                             ; $65d1: $38 $02

    ld l, $20                                     ; $65d3: $2e $20

jr_06a_65d5:
    jr c, jr_06a_65d9                             ; $65d5: $38 $02

    cpl                                           ; $65d7: $2f
    ld [hl+], a                                   ; $65d8: $22

jr_06a_65d9:
    add hl, sp                                    ; $65d9: $39
    ld [bc], a                                    ; $65da: $02
    jr nc, @+$21                                  ; $65db: $30 $1f

    inc a                                         ; $65dd: $3c
    rst $38                                       ; $65de: $ff
    rst $38                                       ; $65df: $ff
    rst $38                                       ; $65e0: $ff
    jp hl                                         ; $65e1: $e9


    ld h, l                                       ; $65e2: $65
    add [hl]                                      ; $65e3: $86
    ld l, e                                       ; $65e4: $6b
    jp nc, $f472                                  ; $65e5: $d2 $72 $f4

    ld [hl], d                                    ; $65e8: $72
    rra                                           ; $65e9: $1f
    ld l, $0e                                     ; $65ea: $2e $0e
    ld c, $0e                                     ; $65ec: $0e $0e
    ld c, l                                       ; $65ee: $4d
    rst $38                                       ; $65ef: $ff
    add sp, -$10                                  ; $65f0: $e8 $f0
    db $ed                                        ; $65f2: $ed
    db $e4                                        ; $65f3: $e4
    and $f3                                       ; $65f4: $e6 $f3
    ld l, l                                       ; $65f6: $6d
    dec l                                         ; $65f7: $2d
    ld sp, hl                                     ; $65f8: $f9
    db $e3                                        ; $65f9: $e3

jr_06a_65fa:
    rst $38                                       ; $65fa: $ff
    ldh [$2e], a                                  ; $65fb: $e0 $2e
    ld l, $0e                                     ; $65fd: $2e $0e
    ld l, l                                       ; $65ff: $6d
    adc $cc                                       ; $6600: $ce $cc
    push hl                                       ; $6602: $e5
    ld l, [hl]                                    ; $6603: $6e
    ld l, $6e                                     ; $6604: $2e $6e
    cp [hl]                                       ; $6606: $be
    ldh [$bd], a                                  ; $6607: $e0 $bd
    ldh [$0d], a                                  ; $6609: $e0 $0d
    dec c                                         ; $660b: $0d
    add b                                         ; $660c: $80
    jp nz, $f0e2                                  ; $660d: $c2 $e2 $f0

    ld [$e2ec], a                                 ; $6610: $ea $ec $e2
    ret nz                                        ; $6613: $c0

    push hl                                       ; $6614: $e5
    cp a                                          ; $6615: $bf
    ldh [$dc], a                                  ; $6616: $e0 $dc
    ldh [$c2], a                                  ; $6618: $e0 $c2
    pop hl                                        ; $661a: $e1
    ld l, [hl]                                    ; $661b: $6e
    ld h, a                                       ; $661c: $67
    ld l, $4e                                     ; $661d: $2e $4e
    ld c, $d0                                     ; $661f: $0e $d0
    push hl                                       ; $6621: $e5
    pop bc                                        ; $6622: $c1
    ldh [$4e], a                                  ; $6623: $e0 $4e
    ld c, [hl]                                    ; $6625: $4e
    ret nz                                        ; $6626: $c0

    rst $20                                       ; $6627: $e7
    ldh [$e3], a                                  ; $6628: $e0 $e3
    ldh [$f0], a                                  ; $662a: $e0 $f0
    add sp, -$54                                  ; $662c: $e8 $ac
    pop hl                                        ; $662e: $e1
    sub $e0                                       ; $662f: $d6 $e0
    adc h                                         ; $6631: $8c
    pop hl                                        ; $6632: $e1
    ld l, l                                       ; $6633: $6d
    dec l                                         ; $6634: $2d
    ld l, l                                       ; $6635: $6d
    ld bc, $c06d                                  ; $6636: $01 $6d $c0
    ld [c], a                                     ; $6639: $e2
    jp nz, $80e0                                  ; $663a: $c2 $e0 $80

    ldh [$c0], a                                  ; $663d: $e0 $c0
    push hl                                       ; $663f: $e5
    rst $38                                       ; $6640: $ff
    pop hl                                        ; $6641: $e1
    ld a, $e0                                     ; $6642: $3e $e0
    or b                                          ; $6644: $b0
    and $5c                                       ; $6645: $e6 $5c
    ldh a, [$eb]                                  ; $6647: $f0 $eb
    ld l, h                                       ; $6649: $6c
    ld [c], a                                     ; $664a: $e2
    dec c                                         ; $664b: $0d
    ld l, l                                       ; $664c: $6d
    dec c                                         ; $664d: $0d
    rst $38                                       ; $664e: $ff
    pop hl                                        ; $664f: $e1
    ld c, l                                       ; $6650: $4d
    ld b, b                                       ; $6651: $40
    ldh [rP1], a                                  ; $6652: $e0 $00
    ret nz                                        ; $6654: $c0

    ld [c], a                                     ; $6655: $e2
    ld b, d                                       ; $6656: $42
    ldh [$c0], a                                  ; $6657: $e0 $c0
    xor $3f                                       ; $6659: $ee $3f
    ld [c], a                                     ; $665b: $e2
    ld hl, sp-$40                                 ; $665c: $f8 $c0
    ldh a, [$ed]                                  ; $665e: $f0 $ed
    add hl, hl                                    ; $6660: $29
    pop hl                                        ; $6661: $e1
    pop bc                                        ; $6662: $c1
    db $e3                                        ; $6663: $e3
    nop                                           ; $6664: $00
    cp a                                          ; $6665: $bf
    db $e3                                        ; $6666: $e3
    inc bc                                        ; $6667: $03
    ld [c], a                                     ; $6668: $e2
    ret nz                                        ; $6669: $c0

    db $e3                                        ; $666a: $e3
    ret nc                                        ; $666b: $d0

    xor $b8                                       ; $666c: $ee $b8
    pop bc                                        ; $666e: $c1
    ldh a, [$ed]                                  ; $666f: $f0 $ed
    add e                                         ; $6671: $83
    push hl                                       ; $6672: $e5
    ld a, [hl]                                    ; $6673: $7e
    db $e4                                        ; $6674: $e4
    add b                                         ; $6675: $80
    ld a, [hl-]                                   ; $6676: $3a
    pop hl                                        ; $6677: $e1
    add b                                         ; $6678: $80
    db $e3                                        ; $6679: $e3
    ret nz                                        ; $667a: $c0

    ret nz                                        ; $667b: $c0

    ret nc                                        ; $667c: $d0

    db $ed                                        ; $667d: $ed
    cp l                                          ; $667e: $bd
    ret nz                                        ; $667f: $c0

    ldh a, [$ee]                                  ; $6680: $f0 $ee
    add e                                         ; $6682: $83
    and $2d                                       ; $6683: $e6 $2d
    add b                                         ; $6685: $80
    cp h                                          ; $6686: $bc
    rst $20                                       ; $6687: $e7
    add d                                         ; $6688: $82
    pop bc                                        ; $6689: $c1
    db $f4                                        ; $668a: $f4
    ret nz                                        ; $668b: $c0

    ret nc                                        ; $668c: $d0

    ld a, [c]                                     ; $668d: $f2
    rst $28                                       ; $668e: $ef
    jp nz, $e9c0                                  ; $668f: $c2 $c0 $e9

    dec b                                         ; $6692: $05
    ld [c], a                                     ; $6693: $e2
    ld a, [bc]                                    ; $6694: $0a
    rlca                                          ; $6695: $07
    dec hl                                        ; $6696: $2b
    dec c                                         ; $6697: $0d
    dec bc                                        ; $6698: $0b
    cp a                                          ; $6699: $bf
    add sp, -$4f                                  ; $669a: $e8 $b1
    jp nz, $f1d0                                  ; $669c: $c2 $d0 $f1

    xor a                                         ; $669f: $af
    call nz, $e8f0                                ; $66a0: $c4 $f0 $e8
    ld e, $c1                                     ; $66a3: $1e $c1
    db $e3                                        ; $66a5: $e3
    ld a, [bc]                                    ; $66a6: $0a
    dec bc                                        ; $66a7: $0b
    dec hl                                        ; $66a8: $2b
    dec bc                                        ; $66a9: $0b
    cp a                                          ; $66aa: $bf
    jp hl                                         ; $66ab: $e9


    cp l                                          ; $66ac: $bd
    pop hl                                        ; $66ad: $e1
    pop de                                        ; $66ae: $d1
    and l                                         ; $66af: $a5
    ld h, b                                       ; $66b0: $60
    adc $a6                                       ; $66b1: $ce $a6
    db $ec                                        ; $66b3: $ec
    jp nz, $aabe                                  ; $66b4: $c2 $be $aa

    xor $a0                                       ; $66b7: $ee $a0
    add c                                         ; $66b9: $81
    db $e3                                        ; $66ba: $e3
    ld c, d                                       ; $66bb: $4a
    ld c, e                                       ; $66bc: $4b
    cp a                                          ; $66bd: $bf
    pop hl                                        ; $66be: $e1
    nop                                           ; $66bf: $00
    rst $30                                       ; $66c0: $f7
    push bc                                       ; $66c1: $c5
    ld a, a                                       ; $66c2: $7f
    ld [c], a                                     ; $66c3: $e2
    ret nc                                        ; $66c4: $d0

    and $66                                       ; $66c5: $e6 $66
    pop bc                                        ; $66c7: $c1
    ld e, b                                       ; $66c8: $58
    pop hl                                        ; $66c9: $e1
    ld hl, sp-$5f                                 ; $66ca: $f8 $a1
    cp c                                          ; $66cc: $b9
    and e                                         ; $66cd: $a3
    ldh a, [$e3]                                  ; $66ce: $f0 $e3
    ld [hl], $c0                                  ; $66d0: $36 $c0
    add sp, $4a                                   ; $66d2: $e8 $4a
    ld a, [bc]                                    ; $66d4: $0a
    add c                                         ; $66d5: $81
    ldh [$0a], a                                  ; $66d6: $e0 $0a
    ld l, d                                       ; $66d8: $6a
    db $fd                                        ; $66d9: $fd
    push bc                                       ; $66da: $c5
    cp c                                          ; $66db: $b9
    and b                                         ; $66dc: $a0
    ret nz                                        ; $66dd: $c0

    ret nc                                        ; $66de: $d0

    add sp, -$33                                  ; $66df: $e8 $cd
    and b                                         ; $66e1: $a0
    add e                                         ; $66e2: $83
    and d                                         ; $66e3: $a2
    ld sp, hl                                     ; $66e4: $f9
    and l                                         ; $66e5: $a5
    ldh a, [$e5]                                  ; $66e6: $f0 $e5
    add b                                         ; $66e8: $80
    add sp, $4d                                   ; $66e9: $e8 $4d
    ld a, [bc]                                    ; $66eb: $0a
    rra                                           ; $66ec: $1f
    ld l, e                                       ; $66ed: $6b
    ld l, e                                       ; $66ee: $6b
    ld l, e                                       ; $66ef: $6b
    ld c, d                                       ; $66f0: $4a
    ld a, [hl+]                                   ; $66f1: $2a
    or l                                          ; $66f2: $b5
    add $77                                       ; $66f3: $c6 $77
    and d                                         ; $66f5: $a2
    ret nc                                        ; $66f6: $d0

    and $c0                                       ; $66f7: $e6 $c0
    ld b, c                                       ; $66f9: $41
    and b                                         ; $66fa: $a0
    reti                                          ; $66fb: $d9


    pop bc                                        ; $66fc: $c1
    ld [$f0a3], a                                 ; $66fd: $ea $a3 $f0
    rst $20                                       ; $6700: $e7
    db $ec                                        ; $6701: $ec
    add h                                         ; $6702: $84
    adc b                                         ; $6703: $88
    jp nz, Jump_06a_6b4d                          ; $6704: $c2 $4d $6b

    rrca                                          ; $6707: $0f
    ld l, e                                       ; $6708: $6b
    dec bc                                        ; $6709: $0b
    dec hl                                        ; $670a: $2b
    ld c, e                                       ; $670b: $4b
    ld a, l                                       ; $670c: $7d
    push bc                                       ; $670d: $c5
    cp $80                                        ; $670e: $fe $80
    ret nc                                        ; $6710: $d0

    add sp, -$79                                  ; $6711: $e8 $87
    pop hl                                        ; $6713: $e1
    jr nc, @-$5c                                  ; $6714: $30 $a2

    and c                                         ; $6716: $a1
    ldh a, [$ed]                                  ; $6717: $f0 $ed
    xor h                                         ; $6719: $ac
    add l                                         ; $671a: $85
    ld b, a                                       ; $671b: $47
    jp $0b6b                                      ; $671c: $c3 $6b $0b


    cp l                                          ; $671f: $bd
    ret nz                                        ; $6720: $c0

    add c                                         ; $6721: $81
    and $00                                       ; $6722: $e6 $00
    ret nc                                        ; $6724: $d0

    jp hl                                         ; $6725: $e9


    adc a                                         ; $6726: $8f
    add c                                         ; $6727: $81
    sub [hl]                                      ; $6728: $96
    and d                                         ; $6729: $a2
    add b                                         ; $672a: $80
    db $e3                                        ; $672b: $e3
    db $fd                                        ; $672c: $fd
    and b                                         ; $672d: $a0
    ldh a, [$e4]                                  ; $672e: $f0 $e4
    sub h                                         ; $6730: $94
    add d                                         ; $6731: $82
    db $ed                                        ; $6732: $ed
    and b                                         ; $6733: $a0
    dec b                                         ; $6734: $05
    dec l                                         ; $6735: $2d
    rst $38                                       ; $6736: $ff
    ldh [$0d], a                                  ; $6737: $e0 $0d
    add b                                         ; $6739: $80
    ret nz                                        ; $673a: $c0

    ld a, h                                       ; $673b: $7c
    ret nz                                        ; $673c: $c0

    ei                                            ; $673d: $fb
    and d                                         ; $673e: $a2
    ld hl, sp-$80                                 ; $673f: $f8 $80
    ret nc                                        ; $6741: $d0

    xor $20                                       ; $6742: $ee $20
    sbc b                                         ; $6744: $98
    add e                                         ; $6745: $83
    ld [$f082], a                                 ; $6746: $ea $82 $f0
    db $e4                                        ; $6749: $e4
    ld e, c                                       ; $674a: $59
    add e                                         ; $674b: $83
    ld e, b                                       ; $674c: $58
    add l                                         ; $674d: $85
    dec l                                         ; $674e: $2d
    ccf                                           ; $674f: $3f
    ldh [$7f], a                                  ; $6750: $e0 $7f
    pop bc                                        ; $6752: $c1
    nop                                           ; $6753: $00
    cp d                                          ; $6754: $ba
    and c                                         ; $6755: $a1
    ret nz                                        ; $6756: $c0

    pop hl                                        ; $6757: $e1
    ret nc                                        ; $6758: $d0

    add sp, -$0e                                  ; $6759: $e8 $f2
    and e                                         ; $675b: $a3
    db $ec                                        ; $675c: $ec
    and e                                         ; $675d: $a3
    rst $08                                       ; $675e: $cf
    ld [c], a                                     ; $675f: $e2
    db $f4                                        ; $6760: $f4
    rst $20                                       ; $6761: $e7
    ld e, d                                       ; $6762: $5a
    add b                                         ; $6763: $80
    dec b                                         ; $6764: $05
    ld c, [hl]                                    ; $6765: $4e
    ld d, $82                                     ; $6766: $16 $82
    ld l, l                                       ; $6768: $6d
    cp $c0                                        ; $6769: $fe $c0
    ld a, a                                       ; $676b: $7f
    ldh [$bf], a                                  ; $676c: $e0 $bf
    db $e3                                        ; $676e: $e3
    ret nz                                        ; $676f: $c0

    and h                                         ; $6770: $a4
    adc $ea                                       ; $6771: $ce $ea
    ldh [$eb], a                                  ; $6773: $e0 $eb
    pop bc                                        ; $6775: $c1
    rst $08                                       ; $6776: $cf
    rst $20                                       ; $6777: $e7
    ldh a, [$e2]                                  ; $6778: $f0 $e2
    ld a, [de]                                    ; $677a: $1a
    add b                                         ; $677b: $80
    add hl, de                                    ; $677c: $19
    add c                                         ; $677d: $81
    ld c, $0e                                     ; $677e: $0e $0e
    ld l, l                                       ; $6780: $6d
    ld [bc], a                                    ; $6781: $02
    ld d, d                                       ; $6782: $52
    and b                                         ; $6783: $a0
    dec c                                         ; $6784: $0d
    ccf                                           ; $6785: $3f
    ld [c], a                                     ; $6786: $e2
    ld a, [hl]                                    ; $6787: $7e
    db $e3                                        ; $6788: $e3
    add b                                         ; $6789: $80
    and c                                         ; $678a: $a1

jr_06a_678b:
    ld h, b                                       ; $678b: $60
    and $de                                       ; $678c: $e6 $de
    pop hl                                        ; $678e: $e1
    ret nz                                        ; $678f: $c0

    and $e0                                       ; $6790: $e6 $e0
    rst $08                                       ; $6792: $cf
    push hl                                       ; $6793: $e5
    and b                                         ; $6794: $a0
    pop bc                                        ; $6795: $c1
    ld a, [de]                                    ; $6796: $1a
    add h                                         ; $6797: $84
    pop af                                        ; $6798: $f1
    db $e3                                        ; $6799: $e3
    ret nz                                        ; $679a: $c0

    db $e4                                        ; $679b: $e4
    dec hl                                        ; $679c: $2b
    ld c, e                                       ; $679d: $4b
    ld c, e                                       ; $679e: $4b
    nop                                           ; $679f: $00
    ld hl, sp-$80                                 ; $67a0: $f8 $80
    cp d                                          ; $67a2: $ba
    add c                                         ; $67a3: $81
    jr nz, jr_06a_678b                            ; $67a4: $20 $e5

    sbc l                                         ; $67a6: $9d
    ldh [$c0], a                                  ; $67a7: $e0 $c0
    push hl                                       ; $67a9: $e5
    rst $08                                       ; $67aa: $cf
    ld [$a1f1], a                                 ; $67ab: $ea $f1 $a1
    ret nz                                        ; $67ae: $c0

    db $eb                                        ; $67af: $eb
    dec bc                                        ; $67b0: $0b
    dec c                                         ; $67b1: $0d
    ld c, e                                       ; $67b2: $4b
    cp [hl]                                       ; $67b3: $be
    pop bc                                        ; $67b4: $c1
    dec hl                                        ; $67b5: $2b
    ld a, c                                       ; $67b6: $79
    add h                                         ; $67b7: $84
    dec sp                                        ; $67b8: $3b
    jp nz, $e59d                                  ; $67b9: $c2 $9d $e5

    or c                                          ; $67bc: $b1
    ret nz                                        ; $67bd: $c0

    or b                                          ; $67be: $b0
    db $10                                        ; $67bf: $10
    db $e4                                        ; $67c0: $e4
    adc a                                         ; $67c1: $8f
    db $e4                                        ; $67c2: $e4
    ldh a, [$e1]                                  ; $67c3: $f0 $e1
    ret nz                                        ; $67c5: $c0

    jp hl                                         ; $67c6: $e9


    dec c                                         ; $67c7: $0d
    ld l, l                                       ; $67c8: $6d
    ld sp, hl                                     ; $67c9: $f9
    and b                                         ; $67ca: $a0
    ld l, e                                       ; $67cb: $6b
    db $10                                        ; $67cc: $10
    cp a                                          ; $67cd: $bf
    pop hl                                        ; $67ce: $e1
    dec sp                                        ; $67cf: $3b
    and e                                         ; $67d0: $a3
    cp l                                          ; $67d1: $bd
    add h                                         ; $67d2: $84
    add h                                         ; $67d3: $84
    ld h, l                                       ; $67d4: $65
    ld l, l                                       ; $67d5: $6d
    dec a                                         ; $67d6: $3d
    ld [c], a                                     ; $67d7: $e2
    adc a                                         ; $67d8: $8f
    add sp, $2d                                   ; $67d9: $e8 $2d
    pop hl                                        ; $67db: $e1
    nop                                           ; $67dc: $00
    or c                                          ; $67dd: $b1
    db $ec                                        ; $67de: $ec
    add e                                         ; $67df: $83
    ld h, b                                       ; $67e0: $60
    cp a                                          ; $67e1: $bf
    db $e3                                        ; $67e2: $e3
    ld [hl], $82                                  ; $67e3: $36 $82
    or h                                          ; $67e5: $b4
    ld b, b                                       ; $67e6: $40
    ret nz                                        ; $67e7: $c0

    jp hl                                         ; $67e8: $e9


    ld l, [hl]                                    ; $67e9: $6e
    add d                                         ; $67ea: $82
    ld c, a                                       ; $67eb: $4f
    add sp, $00                                   ; $67ec: $e8 $00
    db $e3                                        ; $67ee: $e3
    jp hl                                         ; $67ef: $e9


    dec d                                         ; $67f0: $15
    add b                                         ; $67f1: $80
    sbc $c2                                       ; $67f2: $de $c2
    ld b, d                                       ; $67f4: $42
    ld h, b                                       ; $67f5: $60
    cp l                                          ; $67f6: $bd

jr_06a_67f7:
    jp nz, $e03e                                  ; $67f7: $c2 $3e $e0

    pop bc                                        ; $67fa: $c1
    and d                                         ; $67fb: $a2
    ld a, [c]                                     ; $67fc: $f2
    ld b, b                                       ; $67fd: $40
    nop                                           ; $67fe: $00
    inc b                                         ; $67ff: $04
    ld h, h                                       ; $6800: $64
    and $42                                       ; $6801: $e6 $42
    rst $08                                       ; $6803: $cf
    ld [$ecc0], a                                 ; $6804: $ea $c0 $ec
    and b                                         ; $6807: $a0
    db $e3                                        ; $6808: $e3
    db $fc                                        ; $6809: $fc
    and b                                         ; $680a: $a0
    ld a, $e2                                     ; $680b: $3e $e2
    db $fd                                        ; $680d: $fd
    jp nz, $b800                                  ; $680e: $c2 $00 $b8

    ld h, h                                       ; $6811: $64
    ret nz                                        ; $6812: $c0

    db $e4                                        ; $6813: $e4
    ld [hl-], a                                   ; $6814: $32
    ld [$a5ff], a                                 ; $6815: $ea $ff $a5
    ld [hl], l                                    ; $6818: $75
    ld b, c                                       ; $6819: $41
    db $f4                                        ; $681a: $f4
    and $34                                       ; $681b: $e6 $34
    ld b, d                                       ; $681d: $42
    ei                                            ; $681e: $fb
    ld h, c                                       ; $681f: $61
    nop                                           ; $6820: $00
    cp a                                          ; $6821: $bf
    rst $20                                       ; $6822: $e7
    ret nz                                        ; $6823: $c0

    push hl                                       ; $6824: $e5
    ldh a, [rNR51]                                ; $6825: $f0 $25
    rst $08                                       ; $6827: $cf
    add sp, -$30                                  ; $6828: $e8 $d0
    and b                                         ; $682a: $a0
    ld c, l                                       ; $682b: $4d
    ld b, b                                       ; $682c: $40
    sub $22                                       ; $682d: $d6 $22
    call nc, Call_000_0820                        ; $682f: $d4 $20 $08
    cp $a0                                        ; $6832: $fe $a0
    ret nz                                        ; $6834: $c0

    ld [$64f7], a                                 ; $6835: $ea $f7 $64
    dec l                                         ; $6838: $2d
    or $22                                        ; $6839: $f6 $22
    dec [hl]                                      ; $683b: $35
    ld h, c                                       ; $683c: $61
    ldh a, [rNR44]                                ; $683d: $f0 $23
    sbc b                                         ; $683f: $98
    ld b, b                                       ; $6840: $40
    ld [bc], a                                    ; $6841: $02
    and a                                         ; $6842: $a7
    ld h, b                                       ; $6843: $60
    dec l                                         ; $6844: $2d
    sbc e                                         ; $6845: $9b
    ld [hl+], a                                   ; $6846: $22
    or b                                          ; $6847: $b0
    and d                                         ; $6848: $a2
    ld a, [bc]                                    ; $6849: $0a
    ld b, b                                       ; $684a: $40
    rst $28                                       ; $684b: $ef
    pop hl                                        ; $684c: $e1
    ld a, d                                       ; $684d: $7a
    and b                                         ; $684e: $a0
    or [hl]                                       ; $684f: $b6
    ld h, e                                       ; $6850: $63
    ld bc, $c16d                                  ; $6851: $01 $6d $c1
    db $e4                                        ; $6854: $e4
    ei                                            ; $6855: $fb
    and b                                         ; $6856: $a0
    ld a, [hl-]                                   ; $6857: $3a
    add h                                         ; $6858: $84
    ret nc                                        ; $6859: $d0

    ld [c], a                                     ; $685a: $e2
    ldh a, [rNR51]                                ; $685b: $f0 $25
    ld a, l                                       ; $685d: $7d
    and d                                         ; $685e: $a2
    sub h                                         ; $685f: $94
    pop hl                                        ; $6860: $e1
    sbc [hl]                                      ; $6861: $9e
    ret nz                                        ; $6862: $c0

    db $e4                                        ; $6863: $e4
    dec c                                         ; $6864: $0d
    ld l, l                                       ; $6865: $6d
    dec bc                                        ; $6866: $0b
    dec bc                                        ; $6867: $0b
    dec c                                         ; $6868: $0d
    ld b, c                                       ; $6869: $41
    sbc c                                         ; $686a: $99
    ld h, l                                       ; $686b: $65
    ld l, l                                       ; $686c: $6d
    add d                                         ; $686d: $82
    ld a, l                                       ; $686e: $7d
    and h                                         ; $686f: $a4
    dec bc                                        ; $6870: $0b
    jr c, jr_06a_67f7                             ; $6871: $38 $84

    ld a, [hl]                                    ; $6873: $7e
    jp nz, $c456                                  ; $6874: $c2 $56 $c4

    ldh a, [rNR42]                                ; $6877: $f0 $21
    ld l, $e3                                     ; $6879: $2e $e3
    ld c, [hl]                                    ; $687b: $4e
    add b                                         ; $687c: $80
    jr z, jr_06a_689f                             ; $687d: $28 $20

    ld [$9142], sp                                ; $687f: $08 $42 $91
    pop hl                                        ; $6882: $e1
    adc a                                         ; $6883: $8f
    add b                                         ; $6884: $80
    and c                                         ; $6885: $a1
    ld h, h                                       ; $6886: $64
    cp h                                          ; $6887: $bc
    ld [hl+], a                                   ; $6888: $22
    dec a                                         ; $6889: $3d
    and d                                         ; $688a: $a2
    ld l, e                                       ; $688b: $6b
    ld bc, $716b                                  ; $688c: $01 $6b $71
    add c                                         ; $688f: $81
    ret nz                                        ; $6890: $c0

jr_06a_6891:
    push hl                                       ; $6891: $e5
    ret nc                                        ; $6892: $d0

    ldh [$b0], a                                  ; $6893: $e0 $b0
    dec h                                         ; $6895: $25
    ld b, h                                       ; $6896: $44
    pop hl                                        ; $6897: $e1
    or h                                          ; $6898: $b4
    nop                                           ; $6899: $00
    db $db                                        ; $689a: $db
    nop                                           ; $689b: $00
    jr nc, jr_06a_6891                            ; $689c: $30 $f3

    ld [bc], a                                    ; $689e: $02

jr_06a_689f:
    ld d, d                                       ; $689f: $52
    pop hl                                        ; $68a0: $e1
    ld d, d                                       ; $68a1: $52
    and b                                         ; $68a2: $a0
    ret nz                                        ; $68a3: $c0

    and $0d                                       ; $68a4: $e6 $0d
    dec c                                         ; $68a6: $0d
    inc b                                         ; $68a7: $04
    push hl                                       ; $68a8: $e5
    ld c, c                                       ; $68a9: $49
    ldh [rP1], a                                  ; $68aa: $e0 $00
    cpl                                           ; $68ac: $2f
    ld b, d                                       ; $68ad: $42
    ret nc                                        ; $68ae: $d0

    db $e4                                        ; $68af: $e4
    rra                                           ; $68b0: $1f
    ldh [$f0], a                                  ; $68b1: $e0 $f0
    ld [hl+], a                                   ; $68b3: $22
    jr @-$3e                                      ; $68b4: $18 $c0

    inc d                                         ; $68b6: $14
    ldh [$a8], a                                  ; $68b7: $e0 $a8
    dec b                                         ; $68b9: $05
    rst $08                                       ; $68ba: $cf
    add d                                         ; $68bb: $82
    inc d                                         ; $68bc: $14
    ret nz                                        ; $68bd: $c0

    ld [c], a                                     ; $68be: $e2
    ld a, c                                       ; $68bf: $79
    ld b, e                                       ; $68c0: $43
    ld l, l                                       ; $68c1: $6d
    pop bc                                        ; $68c2: $c1
    db $e4                                        ; $68c3: $e4
    ld l, e                                       ; $68c4: $6b
    inc bc                                        ; $68c5: $03
    db $e3                                        ; $68c6: $e3
    cp d                                          ; $68c7: $ba
    ld b, d                                       ; $68c8: $42
    ret nc                                        ; $68c9: $d0

    db $e3                                        ; $68ca: $e3
    db $10                                        ; $68cb: $10
    ldh a, [rNR51]                                ; $68cc: $f0 $25
    add b                                         ; $68ce: $80

Call_06a_68cf:
    ld [c], a                                     ; $68cf: $e2
    ldh a, [$e2]                                  ; $68d0: $f0 $e2
    cp a                                          ; $68d2: $bf
    jp $d46b                                      ; $68d3: $c3 $6b $d4


    ldh [rKEY1], a                                ; $68d6: $e0 $4d
    ld bc, $e273                                  ; $68d8: $01 $73 $e2
    ret nz                                        ; $68db: $c0

    inc bc                                        ; $68dc: $03
    push hl                                       ; $68dd: $e5
    ld a, d                                       ; $68de: $7a
    ld c, b                                       ; $68df: $48
    ret nc                                        ; $68e0: $d0

    push hl                                       ; $68e1: $e5
    ld d, d                                       ; $68e2: $52
    ld b, [hl]                                    ; $68e3: $46
    ei                                            ; $68e4: $fb
    db $eb                                        ; $68e5: $eb
    adc $60                                       ; $68e6: $ce $60
    ld c, e                                       ; $68e8: $4b
    ld l, l                                       ; $68e9: $6d
    ld h, b                                       ; $68ea: $60
    add b                                         ; $68eb: $80
    db $e3                                        ; $68ec: $e3
    ret nz                                        ; $68ed: $c0

    ld [bc], a                                    ; $68ee: $02
    ld b, h                                       ; $68ef: $44
    call nz, Call_000_2677                        ; $68f0: $c4 $77 $26
    nop                                           ; $68f3: $00
    ld b, l                                       ; $68f4: $45
    ld c, l                                       ; $68f5: $4d
    ld l, [hl]                                    ; $68f6: $6e
    ccf                                           ; $68f7: $3f
    nop                                           ; $68f8: $00
    nop                                           ; $68f9: $00
    pop bc                                        ; $68fa: $c1
    inc bc                                        ; $68fb: $03
    jr nc, jr_06a_68fe                            ; $68fc: $30 $00

jr_06a_68fe:
    db $f4                                        ; $68fe: $f4
    and h                                         ; $68ff: $a4
    rst $00                                       ; $6900: $c7
    ld b, e                                       ; $6901: $43
    ld c, c                                       ; $6902: $49
    ld h, b                                       ; $6903: $60
    adc h                                         ; $6904: $8c
    ld [bc], a                                    ; $6905: $02
    add c                                         ; $6906: $81
    ld bc, $c406                                  ; $6907: $01 $06 $c4
    ld de, $fb6b                                  ; $690a: $11 $6b $fb
    dec h                                         ; $690d: $25
    sbc c                                         ; $690e: $99
    pop bc                                        ; $690f: $c1
    ld b, b                                       ; $6910: $40
    ld [bc], a                                    ; $6911: $02
    ld c, $38                                     ; $6912: $0e $38
    ld b, c                                       ; $6914: $41
    rlca                                          ; $6915: $07
    ld b, h                                       ; $6916: $44
    sub a                                         ; $6917: $97
    ld h, b                                       ; $6918: $60
    nop                                           ; $6919: $00
    db $f4                                        ; $691a: $f4
    and e                                         ; $691b: $a3
    add [hl]                                      ; $691c: $86
    ld h, $51                                     ; $691d: $26 $51
    nop                                           ; $691f: $00
    ld b, d                                       ; $6920: $42
    ld bc, $a4c8                                  ; $6921: $01 $c8 $a4
    ld [bc], a                                    ; $6924: $02
    ldh [$ba], a                                  ; $6925: $e0 $ba
    inc h                                         ; $6927: $24
    ld [de], a                                    ; $6928: $12
    ldh [$80], a                                  ; $6929: $e0 $80
    ld b, b                                       ; $692b: $40
    dec bc                                        ; $692c: $0b
    rlca                                          ; $692d: $07
    ld b, b                                       ; $692e: $40
    ld e, a                                       ; $692f: $5f
    ld bc, $64ca                                  ; $6930: $01 $ca $64
    ret nz                                        ; $6933: $c0

    rst $20                                       ; $6934: $e7
    sub c                                         ; $6935: $91
    ld h, b                                       ; $6936: $60
    add [hl]                                      ; $6937: $86
    jp Jump_000_076b                              ; $6938: $c3 $6b $07


    ld c, e                                       ; $693b: $4b
    ld c, e                                       ; $693c: $4b
    ld c, e                                       ; $693d: $4b
    dec a                                         ; $693e: $3d
    add c                                         ; $693f: $81
    ld b, h                                       ; $6940: $44
    add $c0                                       ; $6941: $c6 $c0
    db $eb                                        ; $6943: $eb
    jr nc, @+$06                                  ; $6944: $30 $04

    inc h                                         ; $6946: $24
    ld b, $04                                     ; $6947: $06 $04
    ld b, $24                                     ; $6949: $06 $24
    add [hl]                                      ; $694b: $86
    ld b, b                                       ; $694c: $40
    dec l                                         ; $694d: $2d
    ld b, a                                       ; $694e: $47
    jp nz, Jump_06a_4103                          ; $694f: $c2 $03 $41

    or $e1                                        ; $6952: $f6 $e1
    inc bc                                        ; $6954: $03
    jp $2300                                      ; $6955: $c3 $00 $23


    nop                                           ; $6958: $00
    ld c, d                                       ; $6959: $4a
    ld b, c                                       ; $695a: $41
    ret nz                                        ; $695b: $c0

    jp hl                                         ; $695c: $e9


    cp h                                          ; $695d: $bc
    nop                                           ; $695e: $00
    ret nz                                        ; $695f: $c0

    rst $20                                       ; $6960: $e7
    ld b, a                                       ; $6961: $47
    inc bc                                        ; $6962: $03
    ret nc                                        ; $6963: $d0

    ldh [rTMA], a                                 ; $6964: $e0 $06
    ld h, e                                       ; $6966: $63
    ld b, a                                       ; $6967: $47
    ld h, b                                       ; $6968: $60
    nop                                           ; $6969: $00
    nop                                           ; $696a: $00
    ld hl, $a8c4                                  ; $696b: $21 $c4 $a8
    ret c                                         ; $696e: $d8

    and e                                         ; $696f: $a3
    ld b, b                                       ; $6970: $40
    dec bc                                        ; $6971: $0b
    add b                                         ; $6972: $80
    db $e4                                        ; $6973: $e4
    ld a, h                                       ; $6974: $7c
    and c                                         ; $6975: $a1
    ld d, e                                       ; $6976: $53
    ld [hl+], a                                   ; $6977: $22
    ld a, l                                       ; $6978: $7d
    and c                                         ; $6979: $a1
    ld de, $054b                                  ; $697a: $11 $4b $05
    ld b, c                                       ; $697d: $41
    inc c                                         ; $697e: $0c
    and h                                         ; $697f: $a4
    ld b, h                                       ; $6980: $44
    rst $00                                       ; $6981: $c7
    ld l, l                                       ; $6982: $6d
    call nz, $c003                                ; $6983: $c4 $03 $c0
    db $ec                                        ; $6986: $ec
    db $f4                                        ; $6987: $f4
    and l                                         ; $6988: $a5
    nop                                           ; $6989: $00
    ld c, $c0                                     ; $698a: $0e $c0
    ld d, d                                       ; $698c: $52
    ld bc, $8590                                  ; $698d: $01 $90 $85

Jump_06a_6990:
    inc c                                         ; $6990: $0c
    and [hl]                                      ; $6991: $a6
    ccf                                           ; $6992: $3f
    ld h, $fd                                     ; $6993: $26 $fd
    ld bc, $e2c0                                  ; $6995: $01 $c0 $e2
    ccf                                           ; $6998: $3f
    ld [c], a                                     ; $6999: $e2
    db $10                                        ; $699a: $10
    add b                                         ; $699b: $80
    rst $20                                       ; $699c: $e7
    sub c                                         ; $699d: $91
    and a                                         ; $699e: $a7
    ld b, a                                       ; $699f: $47
    push hl                                       ; $69a0: $e5
    adc a                                         ; $69a1: $8f
    add c                                         ; $69a2: $81
    dec bc                                        ; $69a3: $0b
    inc c                                         ; $69a4: $0c
    and l                                         ; $69a5: $a5
    nop                                           ; $69a6: $00
    ld h, $3f                                     ; $69a7: $26 $3f
    ld [bc], a                                    ; $69a9: $02
    nop                                           ; $69aa: $00
    ld c, [hl]                                    ; $69ab: $4e
    db $e3                                        ; $69ac: $e3
    ccf                                           ; $69ad: $3f
    ld [hl+], a                                   ; $69ae: $22
    ld c, c                                       ; $69af: $49
    and l                                         ; $69b0: $a5
    add a                                         ; $69b1: $87
    ld b, $89                                     ; $69b2: $06 $89
    ret nz                                        ; $69b4: $c0

    add d                                         ; $69b5: $82
    rst $20                                       ; $69b6: $e7
    call $8381                                    ; $69b7: $cd $81 $83
    dec b                                         ; $69ba: $05
    nop                                           ; $69bb: $00
    pop bc                                        ; $69bc: $c1
    rst $20                                       ; $69bd: $e7
    ld e, b                                       ; $69be: $58
    rst $00                                       ; $69bf: $c7
    jr nc, jr_06a_69c4                            ; $69c0: $30 $02

    ret nz                                        ; $69c2: $c0

    db $eb                                        ; $69c3: $eb

jr_06a_69c4:
    adc d                                         ; $69c4: $8a
    ret nz                                        ; $69c5: $c0

    ld b, d                                       ; $69c6: $42
    rst $20                                       ; $69c7: $e7
    call $cb85                                    ; $69c8: $cd $85 $cb
    add d                                         ; $69cb: $82
    nop                                           ; $69cc: $00
    add sp, $61                                   ; $69cd: $e8 $61
    jr z, jr_06a_69d2                             ; $69cf: $28 $01

    ret z                                         ; $69d1: $c8

jr_06a_69d2:
    and c                                         ; $69d2: $a1
    jp z, $5fc2                                   ; $69d3: $ca $c2 $5f

    add d                                         ; $69d6: $82
    xor h                                         ; $69d7: $ac
    pop bc                                        ; $69d8: $c1
    add b                                         ; $69d9: $80
    and $24                                       ; $69da: $e6 $24
    and c                                         ; $69dc: $a1
    add e                                         ; $69dd: $83
    dec c                                         ; $69de: $0d
    dec hl                                        ; $69df: $2b
    ld [bc], a                                    ; $69e0: $02
    and $37                                       ; $69e1: $e6 $37
    and c                                         ; $69e3: $a1
    rlca                                          ; $69e4: $07
    and $d0                                       ; $69e5: $e6 $d0
    and $c9                                       ; $69e7: $e6 $c9
    and l                                         ; $69e9: $a5
    ld c, l                                       ; $69ea: $4d
    nop                                           ; $69eb: $00
    ld b, c                                       ; $69ec: $41
    and b                                         ; $69ed: $a0
    ld a, e                                       ; $69ee: $7b
    ld [c], a                                     ; $69ef: $e2
    ld [$9383], sp                                ; $69f0: $08 $83 $93
    add d                                         ; $69f3: $82
    inc bc                                        ; $69f4: $03
    add sp, -$3f                                  ; $69f5: $e8 $c1
    db $eb                                        ; $69f7: $eb
    ld [$d0a1], sp                                ; $69f8: $08 $a1 $d0
    db $e4                                        ; $69fb: $e4
    nop                                           ; $69fc: $00
    ld b, b                                       ; $69fd: $40
    dec b                                         ; $69fe: $05
    or a                                          ; $69ff: $b7
    pop hl                                        ; $6a00: $e1
    or b                                          ; $6a01: $b0
    inc bc                                        ; $6a02: $03
    ret z                                         ; $6a03: $c8

    and l                                         ; $6a04: $a5
    ld c, a                                       ; $6a05: $4f
    and c                                         ; $6a06: $a1
    pop bc                                        ; $6a07: $c1
    jp hl                                         ; $6a08: $e9


    ld c, [hl]                                    ; $6a09: $4e
    add a                                         ; $6a0a: $87
    ld l, b                                       ; $6a0b: $68
    ld h, d                                       ; $6a0c: $62
    nop                                           ; $6a0d: $00
    ret nc                                        ; $6a0e: $d0

    db $e4                                        ; $6a0f: $e4
    ret nz                                        ; $6a10: $c0

    push hl                                       ; $6a11: $e5
    ld d, b                                       ; $6a12: $50
    ld [bc], a                                    ; $6a13: $02
    ld a, [hl]                                    ; $6a14: $7e
    add h                                         ; $6a15: $84
    ld b, h                                       ; $6a16: $44
    add c                                         ; $6a17: $81
    sub [hl]                                      ; $6a18: $96
    ld h, [hl]                                    ; $6a19: $66
    ld [de], a                                    ; $6a1a: $12
    add d                                         ; $6a1b: $82
    ld a, d                                       ; $6a1c: $7a
    add e                                         ; $6a1d: $83
    nop                                           ; $6a1e: $00
    ret nz                                        ; $6a1f: $c0

    jp hl                                         ; $6a20: $e9


    ret nc                                        ; $6a21: $d0

    and $80                                       ; $6a22: $e6 $80
    db $e3                                        ; $6a24: $e3

Jump_06a_6a25:
    db $fd                                        ; $6a25: $fd
    and b                                         ; $6a26: $a0
    inc b                                         ; $6a27: $04
    ld h, c                                       ; $6a28: $61
    ld [$1701], a                                 ; $6a29: $ea $01 $17
    add d                                         ; $6a2c: $82
    ld hl, sp+$60                                 ; $6a2d: $f8 $60
    ld [bc], a                                    ; $6a2f: $02
    sub h                                         ; $6a30: $94
    inc b                                         ; $6a31: $04
    ld l, e                                       ; $6a32: $6b
    ld a, $80                                     ; $6a33: $3e $80
    dec b                                         ; $6a35: $05
    ld [c], a                                     ; $6a36: $e2
    ld b, e                                       ; $6a37: $43
    push bc                                       ; $6a38: $c5
    jr z, jr_06a_6a80                             ; $6a39: $28 $45

    ret nc                                        ; $6a3b: $d0

    db $e3                                        ; $6a3c: $e3
    add e                                         ; $6a3d: $83
    add d                                         ; $6a3e: $82
    nop                                           ; $6a3f: $00
    ld b, c                                       ; $6a40: $41
    ldh [$33], a                                  ; $6a41: $e0 $33
    ld [$c209], sp                                ; $6a43: $08 $09 $c2
    ld c, a                                       ; $6a46: $4f
    and h                                         ; $6a47: $a4
    jp nz, $8be1                                  ; $6a48: $c2 $e1 $8b

    add $b9                                       ; $6a4b: $c6 $b9
    add d                                         ; $6a4d: $82
    ld c, a                                       ; $6a4e: $4f
    inc bc                                        ; $6a4f: $03
    nop                                           ; $6a50: $00
    pop de                                        ; $6a51: $d1
    dec h                                         ; $6a52: $25
    cp $05                                        ; $6a53: $fe $05
    ld b, l                                       ; $6a55: $45
    ld h, e                                       ; $6a56: $63
    ld d, b                                       ; $6a57: $50
    ld b, h                                       ; $6a58: $44
    rst $08                                       ; $6a59: $cf
    add d                                         ; $6a5a: $82
    db $10                                        ; $6a5b: $10
    and e                                         ; $6a5c: $a3
    adc h                                         ; $6a5d: $8c
    add $ce                                       ; $6a5e: $c6 $ce
    ld h, l                                       ; $6a60: $65
    ld c, $d1                                     ; $6a61: $0e $d1
    ld [hl+], a                                   ; $6a63: $22
    ld c, [hl]                                    ; $6a64: $4e
    ld c, $4e                                     ; $6a65: $0e $4e
    ret nc                                        ; $6a67: $d0

    and $f0                                       ; $6a68: $e6 $f0
    db $e4                                        ; $6a6a: $e4
    ld b, b                                       ; $6a6b: $40
    dec b                                         ; $6a6c: $05
    ld c, e                                       ; $6a6d: $4b
    jp nz, $8a02                                  ; $6a6e: $c2 $02 $8a

    and [hl]                                      ; $6a71: $a6
    ld c, e                                       ; $6a72: $4b
    ld e, b                                       ; $6a73: $58
    ld h, [hl]                                    ; $6a74: $66
    cp c                                          ; $6a75: $b9
    ld h, c                                       ; $6a76: $61
    ld c, h                                       ; $6a77: $4c
    and d                                         ; $6a78: $a2
    reti                                          ; $6a79: $d9


    jr nz, @-$26                                  ; $6a7a: $20 $d8

    ld hl, $e5d0                                  ; $6a7c: $21 $d0 $e5
    nop                                           ; $6a7f: $00

jr_06a_6a80:
    ldh a, [$ec]                                  ; $6a80: $f0 $ec
    ld de, $4341                                  ; $6a82: $11 $41 $43
    and $0d                                       ; $6a85: $e6 $0d
    ret z                                         ; $6a87: $c8

    sbc c                                         ; $6a88: $99
    ld b, c                                       ; $6a89: $41
    ld b, h                                       ; $6a8a: $44
    and b                                         ; $6a8b: $a0
    inc d                                         ; $6a8c: $14
    ld b, b                                       ; $6a8d: $40
    reti                                          ; $6a8e: $d9


    inc hl                                        ; $6a8f: $23
    nop                                           ; $6a90: $00
    ret nz                                        ; $6a91: $c0

    and $f0                                       ; $6a92: $e6 $f0
    add sp, $5f                                   ; $6a94: $e8 $5f
    nop                                           ; $6a96: $00
    jp nc, $a120                                  ; $6a97: $d2 $20 $a1

    inc bc                                        ; $6a9a: $03
    inc e                                         ; $6a9b: $1c
    ld b, e                                       ; $6a9c: $43
    adc $a8                                       ; $6a9d: $ce $a8
    cp h                                          ; $6a9f: $bc
    ld b, b                                       ; $6aa0: $40
    add b                                         ; $6aa1: $80
    ld c, [hl]                                    ; $6aa2: $4e
    ld b, c                                       ; $6aa3: $41
    ld d, $88                                     ; $6aa4: $16 $88
    cpl                                           ; $6aa6: $2f
    ld [bc], a                                    ; $6aa7: $02
    ld d, b                                       ; $6aa8: $50
    add hl, bc                                    ; $6aa9: $09
    adc d                                         ; $6aaa: $8a
    ld hl, $41a5                                  ; $6aab: $21 $a5 $41
    db $fd                                        ; $6aae: $fd
    pop hl                                        ; $6aaf: $e1
    dec hl                                        ; $6ab0: $2b
    ld [bc], a                                    ; $6ab1: $02
    adc c                                         ; $6ab2: $89
    pop bc                                        ; $6ab3: $c1
    dec bc                                        ; $6ab4: $0b
    ld e, $45                                     ; $6ab5: $1e $45
    and l                                         ; $6ab7: $a5
    call nz, Call_06a_416c                        ; $6ab8: $c4 $6c $41
    ret nc                                        ; $6abb: $d0

    db $eb                                        ; $6abc: $eb
    ret nz                                        ; $6abd: $c0

    ld [$0034], a                                 ; $6abe: $ea $34 $00
    nop                                           ; $6ac1: $00
    inc hl                                        ; $6ac2: $23
    inc b                                         ; $6ac3: $04
    rst $18                                       ; $6ac4: $df
    ld b, b                                       ; $6ac5: $40
    ld e, d                                       ; $6ac6: $5a
    ld bc, $82d3                                  ; $6ac7: $01 $d3 $82
    ret                                           ; $6aca: $c9


    ld [c], a                                     ; $6acb: $e2
    ld [$6002], a                                 ; $6acc: $ea $02 $60
    dec bc                                        ; $6acf: $0b
    ret nc                                        ; $6ad0: $d0

    ld [c], a                                     ; $6ad1: $e2

Call_06a_6ad2:
    nop                                           ; $6ad2: $00
    ld d, b                                       ; $6ad3: $50
    ld a, [bc]                                    ; $6ad4: $0a
    ret nz                                        ; $6ad5: $c0

    pop hl                                        ; $6ad6: $e1
    ld h, h                                       ; $6ad7: $64
    ld b, c                                       ; $6ad8: $41
    ld b, c                                       ; $6ad9: $41
    db $e3                                        ; $6ada: $e3
    inc bc                                        ; $6adb: $03
    and c                                         ; $6adc: $a1
    ld e, d                                       ; $6add: $5a
    add l                                         ; $6ade: $85
    ld [hl], d                                    ; $6adf: $72
    and c                                         ; $6ae0: $a1
    ldh [$e2], a                                  ; $6ae1: $e0 $e2
    nop                                           ; $6ae3: $00
    ret nc                                        ; $6ae4: $d0

    db $ed                                        ; $6ae5: $ed
    ret nz                                        ; $6ae6: $c0

    jp hl                                         ; $6ae7: $e9


    add hl, bc                                    ; $6ae8: $09
    add d                                         ; $6ae9: $82
    ld h, l                                       ; $6aea: $65
    inc b                                         ; $6aeb: $04
    rst $18                                       ; $6aec: $df
    jr nz, @+$1f                                  ; $6aed: $20 $1d

    ld h, c                                       ; $6aef: $61
    ld b, [hl]                                    ; $6af0: $46
    db $e3                                        ; $6af1: $e3
    ld d, a                                       ; $6af2: $57
    ld [hl+], a                                   ; $6af3: $22
    nop                                           ; $6af4: $00
    add b                                         ; $6af5: $80
    xor $04                                       ; $6af6: $ee $04
    rst $00                                       ; $6af8: $c7
    cp l                                          ; $6af9: $bd
    add d                                         ; $6afa: $82
    bit 4, h                                      ; $6afb: $cb $64
    and l                                         ; $6afd: $a5
    ld b, b                                       ; $6afe: $40
    ld a, [hl]                                    ; $6aff: $7e
    db $e4                                        ; $6b00: $e4
    push de                                       ; $6b01: $d5
    and e                                         ; $6b02: $a3
    xor [hl]                                      ; $6b03: $ae
    and h                                         ; $6b04: $a4
    nop                                           ; $6b05: $00
    ccf                                           ; $6b06: $3f
    ld b, b                                       ; $6b07: $40
    db $ec                                        ; $6b08: $ec
    inc h                                         ; $6b09: $24
    jp nz, $f0a9                                  ; $6b0a: $c2 $a9 $f0

    jp hl                                         ; $6b0d: $e9


    ld e, a                                       ; $6b0e: $5f
    ld hl, $6087                                  ; $6b0f: $21 $87 $60
    dec h                                         ; $6b12: $25
    ld b, c                                       ; $6b13: $41
    jp nz, Jump_000_01c0                          ; $6b14: $c2 $c0 $01

    dec hl                                        ; $6b17: $2b
    rra                                           ; $6b18: $1f
    ld hl, $e4c5                                  ; $6b19: $21 $c5 $e4
    dec [hl]                                      ; $6b1c: $35
    inc h                                         ; $6b1d: $24
    db $ec                                        ; $6b1e: $ec
    inc h                                         ; $6b1f: $24
    ld a, [bc]                                    ; $6b20: $0a
    ld h, d                                       ; $6b21: $62
    xor l                                         ; $6b22: $ad
    jp nz, $ebf0                                  ; $6b23: $c2 $f0 $eb

    nop                                           ; $6b26: $00
    ld d, b                                       ; $6b27: $50
    ld h, $23                                     ; $6b28: $26 $23
    ld b, b                                       ; $6b2a: $40
    pop bc                                        ; $6b2b: $c1
    ld [c], a                                     ; $6b2c: $e2
    adc e                                         ; $6b2d: $8b
    call nz, $c20c                                ; $6b2e: $c4 $0c $c2
    and e                                         ; $6b31: $a3
    and c                                         ; $6b32: $a1
    db $ec                                        ; $6b33: $ec
    inc h                                         ; $6b34: $24
    ldh a, [$f5]                                  ; $6b35: $f0 $f5
    add [hl]                                      ; $6b37: $86
    rrca                                          ; $6b38: $0f
    daa                                           ; $6b39: $27
    ld c, e                                       ; $6b3a: $4b
    dec bc                                        ; $6b3b: $0b
    add d                                         ; $6b3c: $82
    pop hl                                        ; $6b3d: $e1
    ld h, [hl]                                    ; $6b3e: $66
    ld [hl+], a                                   ; $6b3f: $22

Jump_06a_6b40:
    cp h                                          ; $6b40: $bc
    jp nz, Jump_000_01a6                          ; $6b41: $c2 $a6 $01

    ld c, [hl]                                    ; $6b44: $4e
    nop                                           ; $6b45: $00
    dec de                                        ; $6b46: $1b
    and l                                         ; $6b47: $a5
    inc e                                         ; $6b48: $1c
    add b                                         ; $6b49: $80
    ldh a, [$f3]                                  ; $6b4a: $f0 $f3
    ld b, l                                       ; $6b4c: $45

Jump_06a_6b4d:
    ld h, [hl]                                    ; $6b4d: $66
    add sp, $05                                   ; $6b4e: $e8 $05
    push bc                                       ; $6b50: $c5
    ld [c], a                                     ; $6b51: $e2
    ld e, b                                       ; $6b52: $58
    ld h, b                                       ; $6b53: $60
    and b                                         ; $6b54: $a0
    ld bc, $0e03                                  ; $6b55: $01 $03 $0e
    ld c, $61                                     ; $6b58: $0e $61
    ld bc, $62d6                                  ; $6b5a: $01 $d6 $62
    ldh a, [$f5]                                  ; $6b5d: $f0 $f5
    dec b                                         ; $6b5f: $05
    ld h, h                                       ; $6b60: $64
    ld l, c                                       ; $6b61: $69
    pop bc                                        ; $6b62: $c1
    ld d, h                                       ; $6b63: $54
    and c                                         ; $6b64: $a1
    ld b, $c0                                     ; $6b65: $06 $c0
    rst $20                                       ; $6b67: $e7
    ld l, l                                       ; $6b68: $6d
    ld c, $30                                     ; $6b69: $0e $30
    inc bc                                        ; $6b6b: $03
    sbc e                                         ; $6b6c: $9b
    add [hl]                                      ; $6b6d: $86
    ldh a, [$f3]                                  ; $6b6e: $f0 $f3
    adc $41                                       ; $6b70: $ce $41
    dec b                                         ; $6b72: $05
    ld h, b                                       ; $6b73: $60
    nop                                           ; $6b74: $00
    pop bc                                        ; $6b75: $c1
    db $e4                                        ; $6b76: $e4
    ret nz                                        ; $6b77: $c0

    ld [c], a                                     ; $6b78: $e2
    ld c, a                                       ; $6b79: $4f
    and c                                         ; $6b7a: $a1
    or c                                          ; $6b7b: $b1
    ld [c], a                                     ; $6b7c: $e2
    ret nz                                        ; $6b7d: $c0

    ld [c], a                                     ; $6b7e: $e2
    db $ec                                        ; $6b7f: $ec
    inc h                                         ; $6b80: $24
    ldh a, [$f5]                                  ; $6b81: $f0 $f5
    nop                                           ; $6b83: $00
    nop                                           ; $6b84: $00
    nop                                           ; $6b85: $00
    rra                                           ; $6b86: $1f
    ret c                                         ; $6b87: $d8

    push de                                       ; $6b88: $d5
    push de                                       ; $6b89: $d5
    ret c                                         ; $6b8a: $d8

    and b                                         ; $6b8b: $a0
    rst $38                                       ; $6b8c: $ff
    add sp, -$10                                  ; $6b8d: $e8 $f0
    db $ed                                        ; $6b8f: $ed
    db $f4                                        ; $6b90: $f4
    pop af                                        ; $6b91: $f1
    cp l                                          ; $6b92: $bd
    ret c                                         ; $6b93: $d8

    call $d2e8                                    ; $6b94: $cd $e8 $d2
    sub $d4                                       ; $6b97: $d6 $d4
    sub $bd                                       ; $6b99: $d6 $bd
    ld [c], a                                     ; $6b9b: $e2
    sbc $c1                                       ; $6b9c: $de $c1
    rst $18                                       ; $6b9e: $df
    jp nz, $f0e2                                  ; $6b9f: $c2 $e2 $f0

    ld [$e2ec], a                                 ; $6ba2: $ea $ec $e2
    and d                                         ; $6ba5: $a2
    add sp, -$24                                  ; $6ba6: $e8 $dc
    push hl                                       ; $6ba8: $e5
    ret nc                                        ; $6ba9: $d0

    jp nc, $d8f5                                  ; $6baa: $d2 $f5 $d8

    ret nc                                        ; $6bad: $d0

    push hl                                       ; $6bae: $e5
    sub $f3                                       ; $6baf: $d6 $f3
    ldh [$d4], a                                  ; $6bb1: $e0 $d4
    sub $d3                                       ; $6bb3: $d6 $d3
    and b                                         ; $6bb5: $a0
    scf                                           ; $6bb6: $37
    and b                                         ; $6bb7: $a0
    ldh [$e1], a                                  ; $6bb8: $e0 $e1
    ld a, c                                       ; $6bba: $79
    ldh [$d3], a                                  ; $6bbb: $e0 $d3
    ret nc                                        ; $6bbd: $d0

    ldh a, [$ea]                                  ; $6bbe: $f0 $ea
    db $ec                                        ; $6bc0: $ec
    pop hl                                        ; $6bc1: $e1
    cpl                                           ; $6bc2: $2f
    ld [$9fa0], a                                 ; $6bc3: $ea $a0 $9f
    sbc l                                         ; $6bc6: $9d
    rst $38                                       ; $6bc7: $ff
    pop hl                                        ; $6bc8: $e1
    sbc a                                         ; $6bc9: $9f
    ld e, d                                       ; $6bca: $5a
    ldh [$dc], a                                  ; $6bcb: $e0 $dc
    pop hl                                        ; $6bcd: $e1
    ld a, a                                       ; $6bce: $7f
    ret c                                         ; $6bcf: $d8

    jp nc, $d1d0                                  ; $6bd0: $d2 $d0 $d1

    ret nc                                        ; $6bd3: $d0

    jp nc, $d0d7                                  ; $6bd4: $d2 $d7 $d0

    push hl                                       ; $6bd7: $e5
    ld l, e                                       ; $6bd8: $6b
    rst $10                                       ; $6bd9: $d7
    call nc, $e0b2                                ; $6bda: $d4 $b2 $e0
    rst $10                                       ; $6bdd: $d7
    or b                                          ; $6bde: $b0
    ldh [$e2], a                                  ; $6bdf: $e0 $e2
    db $e3                                        ; $6be1: $e3
    ldh a, [$ef]                                  ; $6be2: $f0 $ef
    cp $ec                                        ; $6be4: $fe $ec
    ld [c], a                                     ; $6be6: $e2
    sbc a                                         ; $6be7: $9f
    or [hl]                                       ; $6be8: $b6
    jp $c390                                      ; $6be9: $c3 $90 $c3


    jp Jump_06a_6990                              ; $6bec: $c3 $90 $69


    or [hl]                                       ; $6bef: $b6
    cp a                                          ; $6bf0: $bf
    ldh [$dc], a                                  ; $6bf1: $e0 $dc
    pop hl                                        ; $6bf3: $e1
    rst $10                                       ; $6bf4: $d7
    adc a                                         ; $6bf5: $8f
    pop hl                                        ; $6bf6: $e1
    rst $10                                       ; $6bf7: $d7
    jp c, $e5d0                                   ; $6bf8: $da $d0 $e5

    ld a, a                                       ; $6bfb: $7f
    db $dd                                        ; $6bfc: $dd
    reti                                          ; $6bfd: $d9


    rst $10                                       ; $6bfe: $d7
    call nc, $ddd7                                ; $6bff: $d4 $d7 $dd
    ret nc                                        ; $6c02: $d0

    ld a, a                                       ; $6c03: $7f
    ldh [$e3], a                                  ; $6c04: $e0 $e3
    and b                                         ; $6c06: $a0
    db $eb                                        ; $6c07: $eb
    db $e3                                        ; $6c08: $e3
    pop hl                                        ; $6c09: $e1
    ldh a, [$eb]                                  ; $6c0a: $f0 $eb
    jp nz, $a2e0                                  ; $6c0c: $c2 $e0 $a2

    or [hl]                                       ; $6c0f: $b6
    sub b                                         ; $6c10: $90
    ld c, a                                       ; $6c11: $4f
    call nz, $c4c3                                ; $6c12: $c4 $c3 $c4
    call nz, $e3bf                                ; $6c15: $c4 $bf $e3
    sub $c0                                       ; $6c18: $d6 $c0
    jp c, $e0d0                                   ; $6c1a: $da $d0 $e0

    rst $10                                       ; $6c1d: $d7
    reti                                          ; $6c1e: $d9


    jp c, $d0dc                                   ; $6c1f: $da $dc $d0

    push hl                                       ; $6c22: $e5
    ret nc                                        ; $6c23: $d0

    cp [hl]                                       ; $6c24: $be
    ldh [$dd], a                                  ; $6c25: $e0 $dd
    pop de                                        ; $6c27: $d1
    sub [hl]                                      ; $6c28: $96
    ret nz                                        ; $6c29: $c0

    pop hl                                        ; $6c2a: $e1
    db $ec                                        ; $6c2b: $ec
    db $ed                                        ; $6c2c: $ed
    db $e3                                        ; $6c2d: $e3
    ldh [$d3], a                                  ; $6c2e: $e0 $d3
    ldh a, [$eb]                                  ; $6c30: $f0 $eb
    add e                                         ; $6c32: $83
    db $e3                                        ; $6c33: $e3
    sub b                                         ; $6c34: $90
    cp e                                          ; $6c35: $bb
    call nz, $fd90                                ; $6c36: $c4 $90 $fd
    ldh [$c3], a                                  ; $6c39: $e0 $c3
    or [hl]                                       ; $6c3b: $b6
    and d                                         ; $6c3c: $a2
    ld a, [hl-]                                   ; $6c3d: $3a
    pop hl                                        ; $6c3e: $e1
    call c, $da4f                                 ; $6c3f: $dc $4f $da
    reti                                          ; $6c42: $d9


    jp c, $c1db                                   ; $6c43: $da $db $c1

    pop hl                                        ; $6c46: $e1
    ret nc                                        ; $6c47: $d0

    db $e3                                        ; $6c48: $e3
    call nc, $e040                                ; $6c49: $d4 $40 $e0
    ld c, h                                       ; $6c4c: $4c
    ld l, a                                       ; $6c4d: $6f
    pop hl                                        ; $6c4e: $e1
    ld a, h                                       ; $6c4f: $7c
    jp $d7dc                                      ; $6c50: $c3 $dc $d7


    ldh a, [$eb]                                  ; $6c53: $f0 $eb
    ld b, h                                       ; $6c55: $44
    ldh [$c4], a                                  ; $6c56: $e0 $c4
    jp nz, $17e0                                  ; $6c58: $c2 $e0 $17

    sub c                                         ; $6c5b: $91
    xor [hl]                                      ; $6c5c: $ae
    sub c                                         ; $6c5d: $91
    cp [hl]                                       ; $6c5e: $be
    pop hl                                        ; $6c5f: $e1
    sub b                                         ; $6c60: $90
    cp h                                          ; $6c61: $bc
    ldh [$bf], a                                  ; $6c62: $e0 $bf
    ldh [$c2], a                                  ; $6c64: $e0 $c2
    ld [c], a                                     ; $6c66: $e2
    and d                                         ; $6c67: $a2
    ret nc                                        ; $6c68: $d0

    push hl                                       ; $6c69: $e5
    reti                                          ; $6c6a: $d9


    ld b, b                                       ; $6c6b: $40
    ldh [$6f], a                                  ; $6c6c: $e0 $6f
    pop hl                                        ; $6c6e: $e1
    inc a                                         ; $6c6f: $3c
    call nz, $f0da                                ; $6c70: $c4 $da $f0
    db $eb                                        ; $6c73: $eb
    and d                                         ; $6c74: $a2
    ld a, [hl]                                    ; $6c75: $7e
    pop bc                                        ; $6c76: $c1

jr_06a_6c77:
    ldh [$90], a                                  ; $6c77: $e0 $90
    sub c                                         ; $6c79: $91
    ld c, b                                       ; $6c7a: $48
    ld b, e                                       ; $6c7b: $43
    xor a                                         ; $6c7c: $af
    ld b, [hl]                                    ; $6c7d: $46
    cp a                                          ; $6c7e: $bf
    ldh [$72], a                                  ; $6c7f: $e0 $72
    pop bc                                        ; $6c81: $c1
    ldh [$c4], a                                  ; $6c82: $e0 $c4
    cp a                                          ; $6c84: $bf
    pop hl                                        ; $6c85: $e1
    ld de, $dac9                                  ; $6c86: $11 $c9 $da
    db $db                                        ; $6c89: $db
    db $db                                        ; $6c8a: $db
    call $e8e0                                    ; $6c8b: $cd $e0 $e8
    ld l, a                                       ; $6c8e: $6f
    db $e3                                        ; $6c8f: $e3
    ld a, a                                       ; $6c90: $7f
    ld [c], a                                     ; $6c91: $e2
    ldh a, [$eb]                                  ; $6c92: $f0 $eb
    sbc [hl]                                      ; $6c94: $9e
    ld [$90e0], sp                                ; $6c95: $08 $e0 $90
    ld c, d                                       ; $6c98: $4a
    ld d, [hl]                                    ; $6c99: $56
    rlca                                          ; $6c9a: $07
    ld a, [hl+]                                   ; $6c9b: $2a
    inc l                                         ; $6c9c: $2c
    ld b, l                                       ; $6c9d: $45
    cp a                                          ; $6c9e: $bf
    ldh [$38], a                                  ; $6c9f: $e0 $38
    pop hl                                        ; $6ca1: $e1
    cp a                                          ; $6ca2: $bf
    db $ed                                        ; $6ca3: $ed
    ld hl, sp-$40                                 ; $6ca4: $f8 $c0
    call $d0e0                                    ; $6ca6: $cd $e0 $d0
    ld a, [c]                                     ; $6ca9: $f2
    pop bc                                        ; $6caa: $c1
    db $eb                                        ; $6cab: $eb
    and [hl]                                      ; $6cac: $a6
    ldh a, [$e4]                                  ; $6cad: $f0 $e4
    xor $a2                                       ; $6caf: $ee $a2
    sbc [hl]                                      ; $6cb1: $9e
    ld [$4fe1], sp                                ; $6cb2: $08 $e1 $4f
    ld d, [hl]                                    ; $6cb5: $56
    rst $18                                       ; $6cb6: $df
    ld a, [hl+]                                   ; $6cb7: $2a
    jr nz, jr_06a_6c77                            ; $6cb8: $20 $bd

    ld b, e                                       ; $6cba: $43
    ld b, l                                       ; $6cbb: $45
    ccf                                           ; $6cbc: $3f
    db $e3                                        ; $6cbd: $e3
    call nz, Call_06a_5dc3                        ; $6cbe: $c4 $c3 $5d
    sbc [hl]                                      ; $6cc1: $9e
    cp e                                          ; $6cc2: $bb
    xor a                                         ; $6cc3: $af
    and b                                         ; $6cc4: $a0
    db $e4                                        ; $6cc5: $e4
    push hl                                       ; $6cc6: $e5
    add hl, hl                                    ; $6cc7: $29
    ret nz                                        ; $6cc8: $c0

    jp nc, $a776                                  ; $6cc9: $d2 $76 $a7

    db $eb                                        ; $6ccc: $eb
    db $e4                                        ; $6ccd: $e4
    push hl                                       ; $6cce: $e5
    ld [de], a                                    ; $6ccf: $12
    jp $819e                                      ; $6cd0: $c3 $9e $81


    ldh [$c4], a                                  ; $6cd3: $e0 $c4
    ld c, d                                       ; $6cd5: $4a
    ld h, c                                       ; $6cd6: $61
    sbc a                                         ; $6cd7: $9f
    dec l                                         ; $6cd8: $2d
    jr nz, jr_06a_6d09                            ; $6cd9: $20 $2e

    ld c, a                                       ; $6cdb: $4f
    ld d, d                                       ; $6cdc: $52
    db $fd                                        ; $6cdd: $fd
    ret nz                                        ; $6cde: $c0

    or [hl]                                       ; $6cdf: $b6
    ret nz                                        ; $6ce0: $c0

    jp $c431                                      ; $6ce1: $c3 $31 $c4


    ret nz                                        ; $6ce4: $c0

    pop hl                                        ; $6ce5: $e1
    ret nc                                        ; $6ce6: $d0

    add sp, $73                                   ; $6ce7: $e8 $73
    and d                                         ; $6ce9: $a2
    and $e7                                       ; $6cea: $e6 $e7
    add hl, hl                                    ; $6cec: $29
    ret nz                                        ; $6ced: $c0

    jp hl                                         ; $6cee: $e9


    and b                                         ; $6cef: $a0
    ret nc                                        ; $6cf0: $d0

    dec [hl]                                      ; $6cf1: $35
    and b                                         ; $6cf2: $a0
    ldh a, [$e4]                                  ; $6cf3: $f0 $e4
    inc l                                         ; $6cf5: $2c
    and b                                         ; $6cf6: $a0
    xor $a0                                       ; $6cf7: $ee $a0
    sbc [hl]                                      ; $6cf9: $9e
    set 0, c                                      ; $6cfa: $cb $c1
    sub c                                         ; $6cfc: $91
    ld e, e                                       ; $6cfd: $5b
    rrca                                          ; $6cfe: $0f
    dec l                                         ; $6cff: $2d
    ld h, $21                                     ; $6d00: $26 $21
    ld c, d                                       ; $6d02: $4a
    ret nz                                        ; $6d03: $c0

    pop hl                                        ; $6d04: $e1
    ld a, b                                       ; $6d05: $78
    jp nz, $e180                                  ; $6d06: $c2 $80 $e1

jr_06a_6d09:
    ret nc                                        ; $6d09: $d0

    add sp, $0d                                   ; $6d0a: $e8 $0d
    db $d3                                        ; $6d0c: $d3
    inc b                                         ; $6d0d: $04
    pop bc                                        ; $6d0e: $c1
    add sp, -$17                                  ; $6d0f: $e8 $e9
    add hl, hl                                    ; $6d11: $29
    ret nz                                        ; $6d12: $c0

    or a                                          ; $6d13: $b7
    and c                                         ; $6d14: $a1
    ldh a, [$e6]                                  ; $6d15: $f0 $e6
    add b                                         ; $6d17: $80
    push bc                                       ; $6d18: $c5
    cp $8b                                        ; $6d19: $fe $8b
    pop bc                                        ; $6d1b: $c1
    sub c                                         ; $6d1c: $91
    ld b, e                                       ; $6d1d: $43
    ld a, [hl-]                                   ; $6d1e: $3a
    dec [hl]                                      ; $6d1f: $35
    ld [hl], $44                                  ; $6d20: $36 $44
    sub c                                         ; $6d22: $91
    ld b, b                                       ; $6d23: $40
    push af                                       ; $6d24: $f5
    ret nz                                        ; $6d25: $c0

    ld a, l                                       ; $6d26: $7d
    ret nz                                        ; $6d27: $c0

    ld sp, hl                                     ; $6d28: $f9
    and d                                         ; $6d29: $a2
    ret nc                                        ; $6d2a: $d0

    add sp, -$3f                                  ; $6d2b: $e8 $c1
    and b                                         ; $6d2d: $a0
    ld b, [hl]                                    ; $6d2e: $46
    jp nz, $b7da                                  ; $6d2f: $c2 $da $b7

    and c                                         ; $6d32: $a1
    ldh [$79], a                                  ; $6d33: $e0 $79
    ret nz                                        ; $6d35: $c0

    ldh a, [$e4]                                  ; $6d36: $f0 $e4
    xor h                                         ; $6d38: $ac
    add h                                         ; $6d39: $84
    cp a                                          ; $6d3a: $bf
    pop hl                                        ; $6d3b: $e1
    dec b                                         ; $6d3c: $05
    ret nz                                        ; $6d3d: $c0

    add hl, sp                                    ; $6d3e: $39
    dec [hl]                                      ; $6d3f: $35
    dec [hl]                                      ; $6d40: $35
    inc bc                                        ; $6d41: $03
    ld [hl], $45                                  ; $6d42: $36 $45
    db $fd                                        ; $6d44: $fd
    and b                                         ; $6d45: $a0
    ld a, $c0                                     ; $6d46: $3e $c0
    ld bc, $d0e4                                  ; $6d48: $01 $e4 $d0
    and $f1                                       ; $6d4b: $e6 $f1
    and b                                         ; $6d4d: $a0
    inc e                                         ; $6d4e: $1c
    and b                                         ; $6d4f: $a0
    ret nz                                        ; $6d50: $c0

    add [hl]                                      ; $6d51: $86
    pop bc                                        ; $6d52: $c1
    rst $20                                       ; $6d53: $e7
    and b                                         ; $6d54: $a0
    xor c                                         ; $6d55: $a9
    and b                                         ; $6d56: $a0
    ldh a, [$e5]                                  ; $6d57: $f0 $e5
    cp a                                          ; $6d59: $bf
    push hl                                       ; $6d5a: $e5
    inc bc                                        ; $6d5b: $03
    and b                                         ; $6d5c: $a0
    or [hl]                                       ; $6d5d: $b6
    call nz, Call_06a_420b                        ; $6d5e: $c4 $0b $42
    dec [hl]                                      ; $6d61: $35

jr_06a_6d62:
    cp a                                          ; $6d62: $bf
    pop hl                                        ; $6d63: $e1
    sub c                                         ; $6d64: $91
    cp e                                          ; $6d65: $bb
    and b                                         ; $6d66: $a0
    ld bc, $d0e2                                  ; $6d67: $01 $e2 $d0
    jp hl                                         ; $6d6a: $e9


    pop af                                        ; $6d6b: $f1
    and a                                         ; $6d6c: $a7
    ld hl, sp-$19                                 ; $6d6d: $f8 $e7
    and e                                         ; $6d6f: $a3
    pop hl                                        ; $6d70: $e1
    and a                                         ; $6d71: $a7
    dec h                                         ; $6d72: $25
    add [hl]                                      ; $6d73: $86
    sbc a                                         ; $6d74: $9f
    or [hl]                                       ; $6d75: $b6
    ld b, l                                       ; $6d76: $45
    ld a, [hl-]                                   ; $6d77: $3a
    dec [hl]                                      ; $6d78: $35
    ld e, a                                       ; $6d79: $5f
    ld h, d                                       ; $6d7a: $62
    ld h, e                                       ; $6d7b: $63
    ld a, h                                       ; $6d7c: $7c
    ld a, l                                       ; $6d7d: $7d
    sub c                                         ; $6d7e: $91
    dec [hl]                                      ; $6d7f: $35
    and b                                         ; $6d80: $a0

Call_06a_6d81:
    and c                                         ; $6d81: $a1
    jp $e0a7                                      ; $6d82: $c3 $a7 $e0


    or a                                          ; $6d85: $b7
    xor b                                         ; $6d86: $a8
    inc b                                         ; $6d87: $04
    adc [hl]                                      ; $6d88: $8e
    add sp, $60                                   ; $6d89: $e8 $60
    ld h, $80                                     ; $6d8b: $26 $80
    ld l, l                                       ; $6d8d: $6d
    call nz, $91a1                                ; $6d8e: $c4 $a1 $91
    add hl, sp                                    ; $6d91: $39
    rra                                           ; $6d92: $1f
    ld h, d                                       ; $6d93: $62
    ld h, a                                       ; $6d94: $67
    dec [hl]                                      ; $6d95: $35
    add hl, sp                                    ; $6d96: $39
    ld a, a                                       ; $6d97: $7f
    cp a                                          ; $6d98: $bf
    pop hl                                        ; $6d99: $e1
    ld b, c                                       ; $6d9a: $41
    call nz, Call_06a_6ad2                        ; $6d9b: $c4 $d2 $6a
    ld e, b                                       ; $6d9e: $58
    inc b                                         ; $6d9f: $04
    add c                                         ; $6da0: $81
    rst $08                                       ; $6da1: $cf
    jp hl                                         ; $6da2: $e9


    db $f4                                        ; $6da3: $f4
    ld h, b                                       ; $6da4: $60
    db $d3                                        ; $6da5: $d3
    sub $67                                       ; $6da6: $d6 $67
    add c                                         ; $6da8: $81
    sub $a7                                       ; $6da9: $d6 $a7
    add b                                         ; $6dab: $80
    cp $23                                        ; $6dac: $fe $23
    ldh [$9e], a                                  ; $6dae: $e0 $9e
    jp Jump_06a_6b40                              ; $6db0: $c3 $40 $6b


    ld l, h                                       ; $6db3: $6c
    dec [hl]                                      ; $6db4: $35
    ld a, [hl-]                                   ; $6db5: $3a
    rrca                                          ; $6db6: $0f
    ld b, l                                       ; $6db7: $45
    ld a, a                                       ; $6db8: $7f
    ld a, l                                       ; $6db9: $7d
    sub b                                         ; $6dba: $90
    add c                                         ; $6dbb: $81
    jp nz, Jump_06a_63e8                          ; $6dbc: $c2 $e8 $63

    sbc l                                         ; $6dbf: $9d
    ld [c], a                                     ; $6dc0: $e2
    add [hl]                                      ; $6dc1: $86
    add d                                         ; $6dc2: $82
    ld [$8104], sp                                ; $6dc3: $08 $04 $81
    rst $08                                       ; $6dc6: $cf
    rst $20                                       ; $6dc7: $e7
    db $f4                                        ; $6dc8: $f4
    ld h, c                                       ; $6dc9: $61
    ret c                                         ; $6dca: $d8

    inc l                                         ; $6dcb: $2c
    add b                                         ; $6dcc: $80
    ld e, b                                       ; $6dcd: $58
    add c                                         ; $6dce: $81
    ld h, a                                       ; $6dcf: $67
    add d                                         ; $6dd0: $82
    ld a, c                                       ; $6dd1: $79
    and b                                         ; $6dd2: $a0
    rst $38                                       ; $6dd3: $ff
    ld b, h                                       ; $6dd4: $44
    ld l, [hl]                                    ; $6dd5: $6e
    ld l, a                                       ; $6dd6: $6f
    ld l, h                                       ; $6dd7: $6c
    inc a                                         ; $6dd8: $3c

jr_06a_6dd9:
    ld b, h                                       ; $6dd9: $44
    ld b, [hl]                                    ; $6dda: $46
    add c                                         ; $6ddb: $81

jr_06a_6ddc:
    add c                                         ; $6ddc: $81
    sub c                                         ; $6ddd: $91
    jr c, jr_06a_6d62                             ; $6dde: $38 $82

    call nc, $9d62                                ; $6de0: $d4 $62 $9d
    db $e3                                        ; $6de3: $e3
    ld b, [hl]                                    ; $6de4: $46
    add d                                         ; $6de5: $82
    inc b                                         ; $6de6: $04

Call_06a_6de7:
    add b                                         ; $6de7: $80
    rst $08                                       ; $6de8: $cf
    ld [$c9e2], a                                 ; $6de9: $ea $e2 $c9
    db $e3                                        ; $6dec: $e3
    daa                                           ; $6ded: $27
    add b                                         ; $6dee: $80
    ld e, b                                       ; $6def: $58
    add c                                         ; $6df0: $81
    db $dd                                        ; $6df1: $dd
    ld l, $c1                                     ; $6df2: $2e $c1
    add hl, sp                                    ; $6df4: $39
    and b                                         ; $6df5: $a0
    sub b                                         ; $6df6: $90
    xor [hl]                                      ; $6df7: $ae
    dec a                                         ; $6df8: $3d
    ld [hl], $bf                                  ; $6df9: $36 $bf
    ldh [$38], a                                  ; $6dfb: $e0 $38
    scf                                           ; $6dfd: $37
    adc h                                         ; $6dfe: $8c
    ld a, l                                       ; $6dff: $7d
    cp l                                          ; $6e00: $bd
    add d                                         ; $6e01: $82
    call nc, $e062                                ; $6e02: $d4 $62 $e0
    sbc l                                         ; $6e05: $9d
    db $e3                                        ; $6e06: $e3
    dec c                                         ; $6e07: $0d
    pop bc                                        ; $6e08: $c1
    rla                                           ; $6e09: $17
    add c                                         ; $6e0a: $81
    rst $08                                       ; $6e0b: $cf
    jp hl                                         ; $6e0c: $e9


    rst $30                                       ; $6e0d: $f7
    ld h, b                                       ; $6e0e: $60
    db $d3                                        ; $6e0f: $d3
    ret nc                                        ; $6e10: $d0

    pop de                                        ; $6e11: $d1
    ld hl, sp+$28                                 ; $6e12: $f8 $28
    add b                                         ; $6e14: $80
    and d                                         ; $6e15: $a2
    ldh [$a7], a                                  ; $6e16: $e0 $a7
    add d                                         ; $6e18: $82
    sbc a                                         ; $6e19: $9f
    or [hl]                                       ; $6e1a: $b6
    xor a                                         ; $6e1b: $af
    ld b, l                                       ; $6e1c: $45
    ld [hl], $3f                                  ; $6e1d: $36 $3f
    ld l, [hl]                                    ; $6e1f: $6e
    ld [hl], h                                    ; $6e20: $74
    dec [hl]                                      ; $6e21: $35
    dec [hl]                                      ; $6e22: $35
    add hl, sp                                    ; $6e23: $39
    add c                                         ; $6e24: $81
    cp $87                                        ; $6e25: $fe $87
    sbc l                                         ; $6e27: $9d
    db $e3                                        ; $6e28: $e3
    ret nz                                        ; $6e29: $c0

    rst $18                                       ; $6e2a: $df
    ldh [rNR22], a                                ; $6e2b: $e0 $17
    add d                                         ; $6e2d: $82
    rst $08                                       ; $6e2e: $cf
    add sp, -$09                                  ; $6e2f: $e8 $f7
    ld h, c                                       ; $6e31: $61
    ld l, c                                       ; $6e32: $69
    ld h, c                                       ; $6e33: $61
    daa                                           ; $6e34: $27
    ld h, b                                       ; $6e35: $60
    call nc, $7cd7                                ; $6e36: $d4 $d7 $7c
    rst $10                                       ; $6e39: $d7
    ld h, b                                       ; $6e3a: $60
    xor b                                         ; $6e3b: $a8
    ld h, b                                       ; $6e3c: $60
    sbc a                                         ; $6e3d: $9f
    or [hl]                                       ; $6e3e: $b6
    sub c                                         ; $6e3f: $91
    ld b, l                                       ; $6e40: $45
    ld [hl], $fd                                  ; $6e41: $36 $fd
    pop bc                                        ; $6e43: $c1
    ld c, $bd                                     ; $6e44: $0e $bd
    ret nz                                        ; $6e46: $c0

    call nz, $b690                                ; $6e47: $c4 $90 $b6
    inc sp                                        ; $6e4a: $33
    ld h, d                                       ; $6e4b: $62
    sbc l                                         ; $6e4c: $9d
    db $e3                                        ; $6e4d: $e3
    rst $18                                       ; $6e4e: $df
    pop hl                                        ; $6e4f: $e1
    add b                                         ; $6e50: $80
    ld b, c                                       ; $6e51: $41
    ld h, b                                       ; $6e52: $60
    rst $08                                       ; $6e53: $cf
    jp hl                                         ; $6e54: $e9


    jr c, jr_06a_6dd9                             ; $6e55: $38 $82

    add hl, hl                                    ; $6e57: $29
    add d                                         ; $6e58: $82
    jr z, jr_06a_6ddc                             ; $6e59: $28 $81

    cp b                                          ; $6e5b: $b8
    ld h, h                                       ; $6e5c: $64
    sub c                                         ; $6e5d: $91
    ld b, b                                       ; $6e5e: $40
    ld a, a                                       ; $6e5f: $7f
    pop hl                                        ; $6e60: $e1
    ld bc, $7c36                                  ; $6e61: $01 $36 $7c
    ret nz                                        ; $6e64: $c0

    ld sp, $3360                                  ; $6e65: $31 $60 $33
    ld h, c                                       ; $6e68: $61
    sbc l                                         ; $6e69: $9d
    db $e3                                        ; $6e6a: $e3
    rlca                                          ; $6e6b: $07
    add a                                         ; $6e6c: $87
    rst $08                                       ; $6e6d: $cf
    and $38                                       ; $6e6e: $e6 $38
    add e                                         ; $6e70: $83
    ret c                                         ; $6e71: $d8

    add hl, hl                                    ; $6e72: $29
    add d                                         ; $6e73: $82
    push de                                       ; $6e74: $d5
    ld h, a                                       ; $6e75: $67
    db $fc                                        ; $6e76: $fc
    and b                                         ; $6e77: $a0
    ld [hl], $69                                  ; $6e78: $36 $69
    cp d                                          ; $6e7a: $ba
    and c                                         ; $6e7b: $a1
    ld a, a                                       ; $6e7c: $7f
    ld a, l                                       ; $6e7d: $7d
    ret nz                                        ; $6e7e: $c0

    ld a, [hl-]                                   ; $6e7f: $3a
    add h                                         ; $6e80: $84
    sbc l                                         ; $6e81: $9d
    db $e3                                        ; $6e82: $e3
    rlca                                          ; $6e83: $07
    add a                                         ; $6e84: $87
    rst $08                                       ; $6e85: $cf
    db $ec                                        ; $6e86: $ec
    add hl, sp                                    ; $6e87: $39
    add [hl]                                      ; $6e88: $86
    ld c, b                                       ; $6e89: $48
    ld b, h                                       ; $6e8a: $44
    and c                                         ; $6e8b: $a1
    ld b, [hl]                                    ; $6e8c: $46
    ld de, $c044                                  ; $6e8d: $11 $44 $c0
    pop hl                                        ; $6e90: $e1
    ld a, [hl]                                    ; $6e91: $7e
    pop hl                                        ; $6e92: $e1
    cp b                                          ; $6e93: $b8
    ld h, c                                       ; $6e94: $61
    and c                                         ; $6e95: $a1
    sbc l                                         ; $6e96: $9d
    db $e4                                        ; $6e97: $e4
    ldh a, [$27]                                  ; $6e98: $f0 $27
    rst $08                                       ; $6e9a: $cf
    add sp, -$48                                  ; $6e9b: $e8 $b8
    ld [$d448], sp                                ; $6e9d: $08 $48 $d4
    ld [hl+], a                                   ; $6ea0: $22
    inc h                                         ; $6ea1: $24
    ld b, c                                       ; $6ea2: $41
    sbc [hl]                                      ; $6ea3: $9e
    ld b, [hl]                                    ; $6ea4: $46
    ld b, b                                       ; $6ea5: $40
    ret nz                                        ; $6ea6: $c0

    ld [c], a                                     ; $6ea7: $e2
    dec [hl]                                      ; $6ea8: $35
    ld bc, $bc40                                  ; $6ea9: $01 $40 $bc
    ret nz                                        ; $6eac: $c0

    cp c                                          ; $6ead: $b9
    and e                                         ; $6eae: $a3
    add $63                                       ; $6eaf: $c6 $63
    ldh a, [rNR44]                                ; $6eb1: $f0 $23
    ld c, $82                                     ; $6eb3: $0e $82
    ld [hl], a                                    ; $6eb5: $77
    dec h                                         ; $6eb6: $25
    db $f4                                        ; $6eb7: $f4
    ld hl, $0a30                                  ; $6eb8: $21 $30 $0a
    ld b, b                                       ; $6ebb: $40
    jp c, $e4c3                                   ; $6ebc: $da $c3 $e4

    jr nz, jr_06a_6ee5                            ; $6ebf: $20 $24

    ld b, b                                       ; $6ec1: $40
    sbc a                                         ; $6ec2: $9f
    sbc h                                         ; $6ec3: $9c
    ld b, b                                       ; $6ec4: $40
    db $e3                                        ; $6ec5: $e3
    cp d                                          ; $6ec6: $ba
    and b                                         ; $6ec7: $a0
    add c                                         ; $6ec8: $81
    add c                                         ; $6ec9: $81
    dec [hl]                                      ; $6eca: $35
    ld h, c                                       ; $6ecb: $61
    ld a, c                                       ; $6ecc: $79
    and [hl]                                      ; $6ecd: $a6
    ldh a, [rNR50]                                ; $6ece: $f0 $24
    ld c, $81                                     ; $6ed0: $0e $81
    ld l, b                                       ; $6ed2: $68
    ld h, $d0                                     ; $6ed3: $26 $d0
    ld [c], a                                     ; $6ed5: $e2
    ld b, [hl]                                    ; $6ed6: $46
    di                                            ; $6ed7: $f3
    ld b, [hl]                                    ; $6ed8: $46
    sbc h                                         ; $6ed9: $9c
    jp c, $a5c2                                   ; $6eda: $da $c2 $a5

    ld b, d                                       ; $6edd: $42
    sbc a                                         ; $6ede: $9f
    sbc h                                         ; $6edf: $9c
    xor [hl]                                      ; $6ee0: $ae
    add hl, sp                                    ; $6ee1: $39
    add hl, de                                    ; $6ee2: $19
    dec [hl]                                      ; $6ee3: $35
    ld a, h                                       ; $6ee4: $7c

jr_06a_6ee5:
    and b                                         ; $6ee5: $a0
    dec a                                         ; $6ee6: $3d
    ret nz                                        ; $6ee7: $c0

    add e                                         ; $6ee8: $83
    add h                                         ; $6ee9: $84
    or a                                          ; $6eea: $b7
    ld b, c                                       ; $6eeb: $41
    ld a, d                                       ; $6eec: $7a
    ld h, c                                       ; $6eed: $61
    jr c, jr_06a_6f12                             ; $6eee: $38 $22

    ldh [$f0], a                                  ; $6ef0: $e0 $f0
    inc h                                         ; $6ef2: $24
    ld c, $81                                     ; $6ef3: $0e $81
    push af                                       ; $6ef5: $f5
    ld h, d                                       ; $6ef6: $62
    ld [$9143], sp                                ; $6ef7: $08 $43 $91
    ldh [$37], a                                  ; $6efa: $e0 $37
    scf                                           ; $6efc: $37
    ld b, l                                       ; $6efd: $45
    cp b                                          ; $6efe: $b8
    ld d, l                                       ; $6eff: $55
    ld h, b                                       ; $6f00: $60
    ld h, c                                       ; $6f01: $61
    add c                                         ; $6f02: $81
    pop bc                                        ; $6f03: $c1
    ld [c], a                                     ; $6f04: $e2
    xor a                                         ; $6f05: $af
    ld a, [hl-]                                   ; $6f06: $3a
    dec [hl]                                      ; $6f07: $35
    cp l                                          ; $6f08: $bd
    and d                                         ; $6f09: $a2
    add e                                         ; $6f0a: $83
    inc bc                                        ; $6f0b: $03
    add [hl]                                      ; $6f0c: $86
    add l                                         ; $6f0d: $85
    or b                                          ; $6f0e: $b0
    jr nz, jr_06a_6f8b                            ; $6f0f: $20 $7a

    ld h, d                                       ; $6f11: $62

jr_06a_6f12:
    push bc                                       ; $6f12: $c5
    ld h, d                                       ; $6f13: $62
    ldh a, [$27]                                  ; $6f14: $f0 $27
    push af                                       ; $6f16: $f5
    ld h, h                                       ; $6f17: $64
    ld hl, sp+$21                                 ; $6f18: $f8 $21
    adc $52                                       ; $6f1a: $ce $52
    pop hl                                        ; $6f1c: $e1
    dec [hl]                                      ; $6f1d: $35
    ld a, [hl-]                                   ; $6f1e: $3a
    xor [hl]                                      ; $6f1f: $ae
    dec d                                         ; $6f20: $15
    ld h, b                                       ; $6f21: $60
    ld d, d                                       ; $6f22: $52
    ld b, e                                       ; $6f23: $43
    sbc [hl]                                      ; $6f24: $9e
    xor [hl]                                      ; $6f25: $ae
    ei                                            ; $6f26: $fb
    xor a                                         ; $6f27: $af
    ld [hl], $3d                                  ; $6f28: $36 $3d
    add b                                         ; $6f2a: $80
    ld l, [hl]                                    ; $6f2b: $6e
    ld [hl], b                                    ; $6f2c: $70
    adc b                                         ; $6f2d: $88
    adc b                                         ; $6f2e: $88
    add a                                         ; $6f2f: $87
    ld hl, $3985                                  ; $6f30: $21 $85 $39
    add b                                         ; $6f33: $80
    ld a, [$c543]                                 ; $6f34: $fa $43 $c5
    ld h, d                                       ; $6f37: $62
    ldh a, [rNR52]                                ; $6f38: $f0 $26
    ld [$e494], a                                 ; $6f3a: $ea $94 $e4
    adc b                                         ; $6f3d: $88
    ld b, d                                       ; $6f3e: $42
    xor $52                                       ; $6f3f: $ee $52
    ldh [$35], a                                  ; $6f41: $e0 $35
    add hl, sp                                    ; $6f43: $39
    xor a                                         ; $6f44: $af
    sub h                                         ; $6f45: $94
    add l                                         ; $6f46: $85
    sbc a                                         ; $6f47: $9f
    sbc h                                         ; $6f48: $9c
    xor a                                         ; $6f49: $af
    rrca                                          ; $6f4a: $0f
    ld [hl], $62                                  ; $6f4b: $36 $62
    ld h, e                                       ; $6f4d: $63
    ld h, [hl]                                    ; $6f4e: $66
    cp e                                          ; $6f4f: $bb
    ld h, c                                       ; $6f50: $61

jr_06a_6f51:
    ld a, e                                       ; $6f51: $7b
    ld h, e                                       ; $6f52: $63
    ld a, [$d041]                                 ; $6f53: $fa $41 $d0
    push hl                                       ; $6f56: $e5
    adc h                                         ; $6f57: $8c
    rst $38                                       ; $6f58: $ff
    ld l, l                                       ; $6f59: $6d
    ld c, b                                       ; $6f5a: $48
    ld b, d                                       ; $6f5b: $42
    xor a                                         ; $6f5c: $af
    add hl, sp                                    ; $6f5d: $39
    ret nc                                        ; $6f5e: $d0

    ld h, c                                       ; $6f5f: $61
    sub l                                         ; $6f60: $95
    ld b, b                                       ; $6f61: $40
    and l                                         ; $6f62: $a5
    ld h, b                                       ; $6f63: $60
    sbc a                                         ; $6f64: $9f
    add hl, de                                    ; $6f65: $19
    sbc l                                         ; $6f66: $9d
    inc bc                                        ; $6f67: $03
    ldh [rLCDC], a                                ; $6f68: $e0 $40
    add b                                         ; $6f6a: $80
    ld l, b                                       ; $6f6b: $68
    ld h, [hl]                                    ; $6f6c: $66
    cp [hl]                                       ; $6f6d: $be
    add b                                         ; $6f6e: $80
    cp d                                          ; $6f6f: $ba
    ld hl, $20f8                                  ; $6f70: $21 $f8 $20
    ldh a, [$33]                                  ; $6f73: $f0 $33
    ld [hl+], a                                   ; $6f75: $22
    or [hl]                                       ; $6f76: $b6
    ld hl, $890c                                  ; $6f77: $21 $0c $89
    ld c, c                                       ; $6f7a: $49
    ld l, b                                       ; $6f7b: $68
    sbc h                                         ; $6f7c: $9c
    ld b, l                                       ; $6f7d: $45
    ld b, c                                       ; $6f7e: $41
    ld b, l                                       ; $6f7f: $45
    ld h, c                                       ; $6f80: $61
    sub c                                         ; $6f81: $91
    ld d, l                                       ; $6f82: $55
    ld b, e                                       ; $6f83: $43
    push bc                                       ; $6f84: $c5
    ret nz                                        ; $6f85: $c0

    inc bc                                        ; $6f86: $03
    ldh [$c4], a                                  ; $6f87: $e0 $c4
    and c                                         ; $6f89: $a1
    ld [hl], a                                    ; $6f8a: $77

jr_06a_6f8b:
    ld h, h                                       ; $6f8b: $64
    cp l                                          ; $6f8c: $bd
    ld h, c                                       ; $6f8d: $61
    ld [$2079], sp                                ; $6f8e: $08 $79 $20
    pop bc                                        ; $6f91: $c1
    db $e3                                        ; $6f92: $e3
    dec h                                         ; $6f93: $25
    ld [bc], a                                    ; $6f94: $02
    jp nc, $800b                                  ; $6f95: $d2 $0b $80

    sbc b                                         ; $6f98: $98
    ld h, d                                       ; $6f99: $62
    inc c                                         ; $6f9a: $0c
    call nz, Call_06a_4429                        ; $6f9b: $c4 $29 $44
    ld b, [hl]                                    ; $6f9e: $46
    adc e                                         ; $6f9f: $8b
    ld bc, $c490                                  ; $6fa0: $01 $90 $c4
    ld a, a                                       ; $6fa3: $7f
    pop bc                                        ; $6fa4: $c1
    push bc                                       ; $6fa5: $c5
    pop bc                                        ; $6fa6: $c1
    ld b, d                                       ; $6fa7: $42
    ldh [rPCM12], a                               ; $6fa8: $e0 $76
    call nz, $e3a1                                ; $6faa: $c4 $a1 $e3
    jr c, jr_06a_6ff3                             ; $6fad: $38 $44

    cp $61                                        ; $6faf: $fe $61
    ld [hl], h                                    ; $6fb1: $74
    inc bc                                        ; $6fb2: $03
    db $fc                                        ; $6fb3: $fc
    ld h, d                                       ; $6fb4: $62
    ret c                                         ; $6fb5: $d8

    push de                                       ; $6fb6: $d5
    sub $82                                       ; $6fb7: $d6 $82
    ld [hl], c                                    ; $6fb9: $71
    ld bc, $b8d6                                  ; $6fba: $01 $d6 $b8
    ret nz                                        ; $6fbd: $c0

    inc l                                         ; $6fbe: $2c
    add d                                         ; $6fbf: $82
    db $f4                                        ; $6fc0: $f4
    and e                                         ; $6fc1: $a3
    add [hl]                                      ; $6fc2: $86
    inc hl                                        ; $6fc3: $23
    ld de, $9c21                                  ; $6fc4: $11 $21 $9c
    sbc e                                         ; $6fc7: $9b
    sbc l                                         ; $6fc8: $9d
    and d                                         ; $6fc9: $a2
    add [hl]                                      ; $6fca: $86
    ret nz                                        ; $6fcb: $c0

    scf                                           ; $6fcc: $37
    jr c, jr_06a_6f51                             ; $6fcd: $38 $82

    ld h, b                                       ; $6fcf: $60
    cp $42                                        ; $6fd0: $fe $42
    ld b, [hl]                                    ; $6fd2: $46
    inc sp                                        ; $6fd3: $33
    ld b, [hl]                                    ; $6fd4: $46
    add c                                         ; $6fd5: $81
    ld b, e                                       ; $6fd6: $43
    push hl                                       ; $6fd7: $e5
    db $fc                                        ; $6fd8: $fc
    ld h, d                                       ; $6fd9: $62
    db $d3                                        ; $6fda: $d3
    ret nc                                        ; $6fdb: $d0

    ld a, c                                       ; $6fdc: $79
    ld b, e                                       ; $6fdd: $43
    rlca                                          ; $6fde: $07
    ld b, b                                       ; $6fdf: $40
    ret nz                                        ; $6fe0: $c0

    inc h                                         ; $6fe1: $24
    ld bc, $a4f4                                  ; $6fe2: $01 $f4 $a4
    dec c                                         ; $6fe5: $0d
    add e                                         ; $6fe6: $83
    ld e, b                                       ; $6fe7: $58
    pop hl                                        ; $6fe8: $e1
    add h                                         ; $6fe9: $84
    nop                                           ; $6fea: $00
    add [hl]                                      ; $6feb: $86
    pop bc                                        ; $6fec: $c1
    ld h, d                                       ; $6fed: $62
    ld h, a                                       ; $6fee: $67
    rra                                           ; $6fef: $1f
    jr c, jr_06a_702f                             ; $6ff0: $38 $3d

    dec a                                         ; $6ff2: $3d

jr_06a_6ff3:
    dec a                                         ; $6ff3: $3d
    scf                                           ; $6ff4: $37
    pop bc                                        ; $6ff5: $c1
    ldh [$03], a                                  ; $6ff6: $e0 $03
    ret nz                                        ; $6ff8: $c0

jr_06a_6ff9:
    db $fd                                        ; $6ff9: $fd
    ld b, h                                       ; $6ffa: $44
    jr z, jr_06a_6ff9                             ; $6ffb: $28 $fc

    ld h, d                                       ; $6ffd: $62
    ld a, [bc]                                    ; $6ffe: $0a
    add b                                         ; $6fff: $80
    ld a, c                                       ; $7000: $79
    ld b, c                                       ; $7001: $41
    db $dd                                        ; $7002: $dd
    jp z, $eb62                                   ; $7003: $ca $62 $eb

    db $f4                                        ; $7006: $f4
    and l                                         ; $7007: $a5
    ret nz                                        ; $7008: $c0

    and $fc                                       ; $7009: $e6 $fc
    ld c, c                                       ; $700b: $49
    ld bc, $c186                                  ; $700c: $01 $86 $c1
    ld a, b                                       ; $700f: $78
    ld a, [hl-]                                   ; $7010: $3a
    add e                                         ; $7011: $83
    adc c                                         ; $7012: $89
    adc b                                         ; $7013: $88
    adc c                                         ; $7014: $89
    dec c                                         ; $7015: $0d
    add e                                         ; $7016: $83
    pop bc                                        ; $7017: $c1
    ldh [$86], a                                  ; $7018: $e0 $86
    add l                                         ; $701a: $85
    dec [hl]                                      ; $701b: $35
    nop                                           ; $701c: $00
    ld a, $24                                     ; $701d: $3e $24
    ret c                                         ; $701f: $d8

    and b                                         ; $7020: $a0
    jp $86a0                                      ; $7021: $c3 $a0 $86


    cp [hl]                                       ; $7024: $be
    ldh [$dd], a                                  ; $7025: $e0 $dd
    pop de                                        ; $7027: $d1
    adc d                                         ; $7028: $8a
    ld h, c                                       ; $7029: $61
    add hl, bc                                    ; $702a: $09
    add b                                         ; $702b: $80
    db $f4                                        ; $702c: $f4
    and a                                         ; $702d: $a7
    nop                                           ; $702e: $00

jr_06a_702f:
    pop hl                                        ; $702f: $e1
    jp $91f9                                      ; $7030: $c3 $f9 $91


    adc d                                         ; $7033: $8a
    nop                                           ; $7034: $00
    add $42                                       ; $7035: $c6 $42
    dec [hl]                                      ; $7037: $35
    add hl, sp                                    ; $7038: $39
    adc d                                         ; $7039: $8a
    add l                                         ; $703a: $85
    ld b, [hl]                                    ; $703b: $46
    jp $8785                                      ; $703c: $c3 $85 $87


    inc bc                                        ; $703f: $03
    pop bc                                        ; $7040: $c1
    cp e                                          ; $7041: $bb

Jump_06a_7042:
    ld hl, $03fe                                  ; $7042: $21 $fe $03
    reti                                          ; $7045: $d9


    ld h, c                                       ; $7046: $61
    jp c, $81d3                                   ; $7047: $da $d3 $81

    call nc, Call_06a_63d7                        ; $704a: $d4 $d7 $63
    call z, $f423                                 ; $704d: $cc $23 $f4
    and [hl]                                      ; $7050: $a6
    pop bc                                        ; $7051: $c1
    ret nz                                        ; $7052: $c0

    ld d, $20                                     ; $7053: $16 $20
    ld a, l                                       ; $7055: $7d
    and b                                         ; $7056: $a0
    ld b, e                                       ; $7057: $43
    ld b, c                                       ; $7058: $41
    ccf                                           ; $7059: $3f

jr_06a_705a:
    add [hl]                                      ; $705a: $86
    pop bc                                        ; $705b: $c1
    inc c                                         ; $705c: $0c
    and h                                         ; $705d: $a4
    add l                                         ; $705e: $85
    jp nz, $c3c2                                  ; $705f: $c2 $c2 $c3

    sbc $24                                       ; $7062: $de $24
    call c, Call_06a_60dd                         ; $7064: $dc $dd $60
    ret nz                                        ; $7067: $c0

    rst $10                                       ; $7068: $d7
    ld h, d                                       ; $7069: $62
    add hl, bc                                    ; $706a: $09
    add [hl]                                      ; $706b: $86
    dec l                                         ; $706c: $2d
    ld b, d                                       ; $706d: $42
    ld c, c                                       ; $706e: $49
    jr nz, @-$3d                                  ; $706f: $20 $c1

    pop hl                                        ; $7071: $e1
    adc l                                         ; $7072: $8d
    and b                                         ; $7073: $a0
    dec sp                                        ; $7074: $3b
    dec [hl]                                      ; $7075: $35
    nop                                           ; $7076: $00
    add [hl]                                      ; $7077: $86
    pop bc                                        ; $7078: $c1
    inc c                                         ; $7079: $0c
    and h                                         ; $707a: $a4
    cp a                                          ; $707b: $bf
    ld bc, $c405                                  ; $707c: $01 $05 $c4
    ld [$dd45], sp                                ; $707f: $08 $45 $dd
    ld h, b                                       ; $7082: $60
    ld [$f682], sp                                ; $7083: $08 $82 $f6
    ld a, [hl+]                                   ; $7086: $2a
    db $10                                        ; $7087: $10
    ld b, e                                       ; $7088: $43
    jp $e1c1                                      ; $7089: $c3 $c1 $e1


    adc c                                         ; $708c: $89
    jr nz, jr_06a_705a                            ; $708d: $20 $cb

    ld h, b                                       ; $708f: $60
    ld [hl], $09                                  ; $7090: $36 $09
    ld [c], a                                     ; $7092: $e2
    or d                                          ; $7093: $b2
    pop bc                                        ; $7094: $c1
    add c                                         ; $7095: $81
    nop                                           ; $7096: $00
    ld [c], a                                     ; $7097: $e2
    pop bc                                        ; $7098: $c1
    ld [$7fa0], a                                 ; $7099: $ea $a0 $7f
    ld [hl+], a                                   ; $709c: $22
    cp b                                          ; $709d: $b8
    jr z, jr_06a_70c6                             ; $709e: $28 $26

    ld b, d                                       ; $70a0: $42
    sbc [hl]                                      ; $70a1: $9e
    jp Jump_000_01c4                              ; $70a2: $c3 $c4 $01


    sub b                                         ; $70a5: $90
    db $10                                        ; $70a6: $10
    ld h, b                                       ; $70a7: $60
    ld [de], a                                    ; $70a8: $12
    add d                                         ; $70a9: $82
    adc e                                         ; $70aa: $8b
    add b                                         ; $70ab: $80
    call $c381                                    ; $70ac: $cd $81 $c3
    inc bc                                        ; $70af: $03
    rlca                                          ; $70b0: $07
    and b                                         ; $70b1: $a0
    add $a6                                       ; $70b2: $c6 $a6
    ld d, b                                       ; $70b4: $50
    ld d, e                                       ; $70b5: $53
    add [hl]                                      ; $70b6: $86
    ld a, l                                       ; $70b7: $7d
    ld hl, $8602                                  ; $70b8: $21 $02 $86
    ld h, $42                                     ; $70bb: $26 $42
    and c                                         ; $70bd: $a1
    ld c, b                                       ; $70be: $48
    ret nz                                        ; $70bf: $c0

    ld b, [hl]                                    ; $70c0: $46

jr_06a_70c1:
    call $9000                                    ; $70c1: $cd $00 $90
    pop de                                        ; $70c4: $d1
    ld h, d                                       ; $70c5: $62

jr_06a_70c6:
    call z, $cd80                                 ; $70c6: $cc $80 $cd
    add b                                         ; $70c9: $80
    dec [hl]                                      ; $70ca: $35
    jp nz, $f4b6                                  ; $70cb: $c2 $b6 $f4

    nop                                           ; $70ce: $00
    add h                                         ; $70cf: $84
    ld b, e                                       ; $70d0: $43
    db $e4                                        ; $70d1: $e4
    ld bc, $09e5                                  ; $70d2: $01 $e5 $09
    add b                                         ; $70d5: $80
    ld h, e                                       ; $70d6: $63
    inc hl                                        ; $70d7: $23
    adc a                                         ; $70d8: $8f
    and d                                         ; $70d9: $a2
    ld [bc], a                                    ; $70da: $02
    add c                                         ; $70db: $81
    ld b, $85                                     ; $70dc: $06 $85
    adc h                                         ; $70de: $8c
    inc bc                                        ; $70df: $03
    ld c, $20                                     ; $70e0: $0e $20
    nop                                           ; $70e2: $00
    cp a                                          ; $70e3: $bf
    db $e4                                        ; $70e4: $e4
    ret z                                         ; $70e5: $c8

Call_06a_70e6:
    nop                                           ; $70e6: $00
    dec [hl]                                      ; $70e7: $35
    jp Jump_06a_4348                              ; $70e8: $c3 $48 $43


    ret nc                                        ; $70eb: $d0

    db $e4                                        ; $70ec: $e4
    add hl, bc                                    ; $70ed: $09
    add b                                         ; $70ee: $80
    ret                                           ; $70ef: $c9


    ld h, b                                       ; $70f0: $60
    ldh [rP1], a                                  ; $70f1: $e0 $00
    nop                                           ; $70f3: $00
    sbc a                                         ; $70f4: $9f
    ld h, d                                       ; $70f5: $62
    ld [bc], a                                    ; $70f6: $02
    add c                                         ; $70f7: $81
    ld [$4d82], sp                                ; $70f8: $08 $82 $4d
    inc b                                         ; $70fb: $04
    ld b, d                                       ; $70fc: $42
    and $89                                       ; $70fd: $e6 $89
    ld [bc], a                                    ; $70ff: $02
    adc h                                         ; $7100: $8c
    add c                                         ; $7101: $81
    ld c, e                                       ; $7102: $4b
    and d                                         ; $7103: $a2
    add b                                         ; $7104: $80
    ld c, b                                       ; $7105: $48
    ld hl, $e4d0                                  ; $7106: $21 $d0 $e4
    add hl, bc                                    ; $7109: $09
    add b                                         ; $710a: $80
    add a                                         ; $710b: $87
    and c                                         ; $710c: $a1
    sbc a                                         ; $710d: $9f
    ld h, [hl]                                    ; $710e: $66
    ld e, b                                       ; $710f: $58
    ld b, h                                       ; $7110: $44
    ld b, $a2                                     ; $7111: $06 $a2
    sub c                                         ; $7113: $91
    dec b                                         ; $7114: $05
    ld b, [hl]                                    ; $7115: $46
    pop bc                                        ; $7116: $c1
    jp hl                                         ; $7117: $e9


    jp $a279                                      ; $7118: $c3 $79 $a2


    add a                                         ; $711b: $87
    ld [bc], a                                    ; $711c: $02
    ld c, b                                       ; $711d: $48
    ld hl, $646f                                  ; $711e: $21 $6f $64
    add hl, bc                                    ; $7121: $09
    add b                                         ; $7122: $80
    ld b, b                                       ; $7123: $40
    sub b                                         ; $7124: $90
    jr nz, jr_06a_7148                            ; $7125: $20 $21

    ld b, b                                       ; $7127: $40
    dec sp                                        ; $7128: $3b
    add c                                         ; $7129: $81
    ld [hl-], a                                   ; $712a: $32
    call nz, $84c7                                ; $712b: $c4 $c7 $84
    ld [$38c0], sp                                ; $712e: $08 $c0 $38
    sub $42                                       ; $7131: $d6 $42
    rra                                           ; $7133: $1f
    jr c, @+$3a                                   ; $7134: $38 $38

    jr c, @+$39                                   ; $7136: $38 $37

    ld b, l                                       ; $7138: $45
    ret nc                                        ; $7139: $d0

    jr nz, jr_06a_70c1                            ; $713a: $20 $85

    jp Jump_06a_600e                              ; $713c: $c3 $0e $60


    ld b, b                                       ; $713f: $40
    ld c, b                                       ; $7140: $48
    ld hl, $e5d0                                  ; $7141: $21 $d0 $e5
    ld c, a                                       ; $7144: $4f
    ld b, c                                       ; $7145: $41
    adc c                                         ; $7146: $89
    ld h, c                                       ; $7147: $61

jr_06a_7148:
    ld a, [hl-]                                   ; $7148: $3a
    ld [$40cd], sp                                ; $7149: $08 $cd $40
    sbc l                                         ; $714c: $9d
    ld b, $c0                                     ; $714d: $06 $c0
    ld a, [bc]                                    ; $714f: $0a
    ld b, a                                       ; $7150: $47
    jp $c43b                                      ; $7151: $c3 $3b $c4


    ldh [rLYC], a                                 ; $7154: $e0 $45
    dec b                                         ; $7156: $05
    db $e4                                        ; $7157: $e4
    ld c, l                                       ; $7158: $4d
    adc c                                         ; $7159: $89
    pop de                                        ; $715a: $d1
    ld [hl], c                                    ; $715b: $71
    add hl, bc                                    ; $715c: $09
    ret z                                         ; $715d: $c8

    ld c, $47                                     ; $715e: $0e $47
    call nz, Call_000_3738                        ; $7160: $c4 $38 $37
    ld b, e                                       ; $7163: $43
    ret                                           ; $7164: $c9


    call nz, $a3ca                                ; $7165: $c4 $ca $a3
    adc c                                         ; $7168: $89
    ld [bc], a                                    ; $7169: $02
    call nc, $986d                                ; $716a: $d4 $6d $98
    call nz, Call_000_1161                        ; $716d: $c4 $61 $11
    add d                                         ; $7170: $82
    jr nc, jr_06a_7174                            ; $7171: $30 $01

    sbc a                                         ; $7173: $9f

jr_06a_7174:
    sbc l                                         ; $7174: $9d
    ld c, h                                       ; $7175: $4c
    and b                                         ; $7176: $a0
    add $c5                                       ; $7177: $c6 $c5
    ld a, [hl-]                                   ; $7179: $3a
    nop                                           ; $717a: $00
    set 0, l                                      ; $717b: $cb $c5
    ld d, d                                       ; $717d: $52
    add b                                         ; $717e: $80
    jp z, $97a4                                   ; $717f: $ca $a4 $97

    ld h, b                                       ; $7182: $60
    push de                                       ; $7183: $d5
    ld h, b                                       ; $7184: $60
    ld c, h                                       ; $7185: $4c
    jp Jump_06a_61d4                              ; $7186: $c3 $d4 $61


    ldh a, [$e4]                                  ; $7189: $f0 $e4
    call z, Call_000_0250                         ; $718b: $cc $50 $02
    jr nc, jr_06a_7190                            ; $718e: $30 $00

jr_06a_7190:
    sbc a                                         ; $7190: $9f
    sbc h                                         ; $7191: $9c
    ld d, c                                       ; $7192: $51
    add c                                         ; $7193: $81
    ret                                           ; $7194: $c9


    and l                                         ; $7195: $a5
    add hl, sp                                    ; $7196: $39
    ld b, [hl]                                    ; $7197: $46
    ld e, b                                       ; $7198: $58
    set 0, e                                      ; $7199: $cb $c3
    db $ec                                        ; $719b: $ec
    ld [c], a                                     ; $719c: $e2
    adc e                                         ; $719d: $8b
    and e                                         ; $719e: $a3
    db $d3                                        ; $719f: $d3
    sub $16                                       ; $71a0: $d6 $16
    add c                                         ; $71a2: $81
    sub $d0                                       ; $71a3: $d6 $d0
    push hl                                       ; $71a5: $e5
    ld b, $f0                                     ; $71a6: $06 $f0
    ld [$e3e2], a                                 ; $71a8: $ea $e2 $e3
    ld de, $6541                                  ; $71ab: $11 $41 $65
    ld h, b                                       ; $71ae: $60
    adc d                                         ; $71af: $8a
    and h                                         ; $71b0: $a4
    dec c                                         ; $71b1: $0d
    jp $81d5                                      ; $71b2: $c3 $d5 $81


    inc b                                         ; $71b5: $04
    xor $c3                                       ; $71b6: $ee $c3
    sub b                                         ; $71b8: $90
    ld h, b                                       ; $71b9: $60
    ret c                                         ; $71ba: $d8

    db $db                                        ; $71bb: $db
    ld h, b                                       ; $71bc: $60
    sbc b                                         ; $71bd: $98
    add c                                         ; $71be: $81
    ret nc                                        ; $71bf: $d0

    db $e4                                        ; $71c0: $e4
    ldh a, [$e6]                                  ; $71c1: $f0 $e6
    dec a                                         ; $71c3: $3d
    pop bc                                        ; $71c4: $c1
    add hl, bc                                    ; $71c5: $09
    db $eb                                        ; $71c6: $eb
    jp nc, Jump_000_0f21                          ; $71c7: $d2 $21 $0f

    ld h, b                                       ; $71ca: $60
    ld b, [hl]                                    ; $71cb: $46
    ld c, b                                       ; $71cc: $48
    jp $c18b                                      ; $71cd: $c3 $8b $c1


    db $d3                                        ; $71d0: $d3
    add c                                         ; $71d1: $81
    add hl, de                                    ; $71d2: $19
    ld h, h                                       ; $71d3: $64
    ret z                                         ; $71d4: $c8

    ld [hl], a                                    ; $71d5: $77
    inc hl                                        ; $71d6: $23
    sub $60                                       ; $71d7: $d6 $60
    rla                                           ; $71d9: $17
    ld b, c                                       ; $71da: $41
    db $dd                                        ; $71db: $dd
    ret nc                                        ; $71dc: $d0

    db $e3                                        ; $71dd: $e3
    ldh a, [$e7]                                  ; $71de: $f0 $e7
    db $d3                                        ; $71e0: $d3
    jp c, Jump_000_07aa                           ; $71e1: $da $aa $07

    pop bc                                        ; $71e4: $c1
    sbc [hl]                                      ; $71e5: $9e
    ld c, $c0                                     ; $71e6: $0e $c0
    and [hl]                                      ; $71e8: $a6
    ld h, c                                       ; $71e9: $61
    ld h, b                                       ; $71ea: $60
    ld b, d                                       ; $71eb: $42
    adc c                                         ; $71ec: $89
    jp nz, Jump_06a_7246                          ; $71ed: $c2 $46 $72

    ld e, l                                       ; $71f0: $5d
    nop                                           ; $71f1: $00
    call nz, $a753                                ; $71f2: $c4 $53 $a7
    and c                                         ; $71f5: $a1
    ld b, d                                       ; $71f6: $42
    db $d3                                        ; $71f7: $d3
    ret nc                                        ; $71f8: $d0

    pop de                                        ; $71f9: $d1
    rst $10                                       ; $71fa: $d7
    ld h, b                                       ; $71fb: $60
    db $e3                                        ; $71fc: $e3
    ret nc                                        ; $71fd: $d0

    ret nc                                        ; $71fe: $d0

    ret nc                                        ; $71ff: $d0

    db $e3                                        ; $7200: $e3
    ldh a, [$e7]                                  ; $7201: $f0 $e7
    ld a, a                                       ; $7203: $7f
    inc bc                                        ; $7204: $03
    sbc [hl]                                      ; $7205: $9e
    ld b, l                                       ; $7206: $45
    ld [hl], $ff                                  ; $7207: $36 $ff
    ld h, d                                       ; $7209: $62
    and a                                         ; $720a: $a7
    ld h, [hl]                                    ; $720b: $66
    ld [hl], $45                                  ; $720c: $36 $45
    ld b, l                                       ; $720e: $45
    ccf                                           ; $720f: $3f
    ld b, e                                       ; $7210: $43
    ld [bc], a                                    ; $7211: $02
    ld e, e                                       ; $7212: $5b
    ld h, b                                       ; $7213: $60
    sub c                                         ; $7214: $91
    ret nz                                        ; $7215: $c0

    add b                                         ; $7216: $80
    ld d, c                                       ; $7217: $51
    jp Jump_000_07ea                              ; $7218: $c3 $ea $07


    jr @+$63                                      ; $721b: $18 $61

    ret c                                         ; $721d: $d8

    ld h, b                                       ; $721e: $60
    ld c, a                                       ; $721f: $4f
    ld b, $fc                                     ; $7220: $06 $fc
    ldh a, [$e5]                                  ; $7222: $f0 $e5
    adc $23                                       ; $7224: $ce $23
    sbc [hl]                                      ; $7226: $9e
    ld [hl], $62                                  ; $7227: $36 $62
    ld h, a                                       ; $7229: $67
    and e                                         ; $722a: $a3
    ld l, b                                       ; $722b: $68
    nop                                           ; $722c: $00
    cp a                                          ; $722d: $bf
    ldh [$fa], a                                  ; $722e: $e0 $fa
    jp nz, Jump_06a_6008                          ; $7230: $c2 $08 $60

    ld [de], a                                    ; $7233: $12
    call nz, $86e8                                ; $7234: $c4 $e8 $86
    jr c, jr_06a_7259                             ; $7237: $38 $20

    ret c                                         ; $7239: $d8

    ld h, d                                       ; $723a: $62
    sbc [hl]                                      ; $723b: $9e
    ld h, $1c                                     ; $723c: $26 $1c
    ldh a, [$e5]                                  ; $723e: $f0 $e5
    rlca                                          ; $7240: $07
    add e                                         ; $7241: $83
    sbc [hl]                                      ; $7242: $9e
    xor b                                         ; $7243: $a8
    xor c                                         ; $7244: $a9
    db $e4                                        ; $7245: $e4

Jump_06a_7246:
    nop                                           ; $7246: $00
    cp a                                          ; $7247: $bf
    ld [c], a                                     ; $7248: $e2

jr_06a_7249:
    db $e3                                        ; $7249: $e3
    nop                                           ; $724a: $00
    nop                                           ; $724b: $00
    jp z, $d3c0                                   ; $724c: $ca $c0 $d3

    and h                                         ; $724f: $a4
    add sp, -$7e                                  ; $7250: $e8 $82
    and h                                         ; $7252: $a4
    inc h                                         ; $7253: $24
    ret c                                         ; $7254: $d8

    ld h, d                                       ; $7255: $62
    sub h                                         ; $7256: $94
    jr z, jr_06a_7249                             ; $7257: $28 $f0

jr_06a_7259:
    db $e3                                        ; $7259: $e3
    sub b                                         ; $725a: $90
    inc h                                         ; $725b: $24
    dec a                                         ; $725c: $3d
    ld [hl], $e4                                  ; $725d: $36 $e4
    nop                                           ; $725f: $00
    dec [hl]                                      ; $7260: $35
    and e                                         ; $7261: $a3
    xor d                                         ; $7262: $aa
    xor e                                         ; $7263: $ab
    ld e, a                                       ; $7264: $5f
    ld hl, $6bde                                  ; $7265: $21 $de $6b
    ret nz                                        ; $7268: $c0

    db $ec                                        ; $7269: $ec
    ld h, $d8                                     ; $726a: $26 $d8
    ld h, a                                       ; $726c: $67
    ldh a, [$ea]                                  ; $726d: $f0 $ea
    ld [hl], $62                                  ; $726f: $36 $62
    nop                                           ; $7271: $00
    ldh [$a3], a                                  ; $7272: $e0 $a3
    nop                                           ; $7274: $00
    ld l, h                                       ; $7275: $6c
    ld l, a                                       ; $7276: $6f
    rlca                                          ; $7277: $07
    ld l, [hl]                                    ; $7278: $6e
    ld [hl], $45                                  ; $7279: $36 $45
    and h                                         ; $727b: $a4
    inc h                                         ; $727c: $24
    ld b, $e7                                     ; $727d: $06 $e7
    db $ec                                        ; $727f: $ec
    inc hl                                        ; $7280: $23
    ldh a, [$f7]                                  ; $7281: $f0 $f7
    ld d, b                                       ; $7283: $50
    inc h                                         ; $7284: $24
    inc b                                         ; $7285: $04
    ld a, [hl]                                    ; $7286: $7e
    ldh [$c1], a                                  ; $7287: $e0 $c1
    pop hl                                        ; $7289: $e1
    sbc h                                         ; $728a: $9c
    sbc $64                                       ; $728b: $de $64
    xor $61                                       ; $728d: $ee $61
    ld [hl], h                                    ; $728f: $74
    ld [hl+], a                                   ; $7290: $22
    db $ec                                        ; $7291: $ec
    inc h                                         ; $7292: $24
    ldh a, [$f6]                                  ; $7293: $f0 $f6
    nop                                           ; $7295: $00
    cp a                                          ; $7296: $bf
    add sp, -$3f                                  ; $7297: $e8 $c1
    pop hl                                        ; $7299: $e1
    ld h, [hl]                                    ; $729a: $66
    dec h                                         ; $729b: $25
    xor $61                                       ; $729c: $ee $61
    push hl                                       ; $729e: $e5
    ld h, d                                       ; $729f: $62
    db $ec                                        ; $72a0: $ec
    inc h                                         ; $72a1: $24
    ldh a, [$f6]                                  ; $72a2: $f0 $f6
    ld [$0024], sp                                ; $72a4: $08 $24 $00
    add h                                         ; $72a7: $84
    add c                                         ; $72a8: $81
    ld h, c                                       ; $72a9: $61
    ld h, h                                       ; $72aa: $64
    ld [hl], $22                                  ; $72ab: $36 $22
    ld e, h                                       ; $72ad: $5c
    jp Jump_06a_60e0                              ; $72ae: $c3 $e0 $60


    db $ec                                        ; $72b1: $ec
    daa                                           ; $72b2: $27
    ldh a, [$f3]                                  ; $72b3: $f0 $f3
    jp nc, Jump_000_00e3                          ; $72b5: $d2 $e3 $00

    cp $68                                        ; $72b8: $fe $68
    ld h, [hl]                                    ; $72ba: $66
    inc hl                                        ; $72bb: $23
    dec e                                         ; $72bc: $1d
    ld b, c                                       ; $72bd: $41
    push hl                                       ; $72be: $e5
    ld h, c                                       ; $72bf: $61
    db $ec                                        ; $72c0: $ec
    daa                                           ; $72c1: $27
    ldh a, [$f4]                                  ; $72c2: $f0 $f4
    jp nc, $fbe4                                  ; $72c4: $d2 $e4 $fb

    pop af                                        ; $72c7: $f1
    nop                                           ; $72c8: $00
    push hl                                       ; $72c9: $e5
    ld h, e                                       ; $72ca: $63
    rrca                                          ; $72cb: $0f
    adc l                                         ; $72cc: $8d
    rst $38                                       ; $72cd: $ff
    ld l, e                                       ; $72ce: $6b
    nop                                           ; $72cf: $00
    nop                                           ; $72d0: $00
    nop                                           ; $72d1: $00
    pop bc                                        ; $72d2: $c1
    nop                                           ; $72d3: $00
    rst $38                                       ; $72d4: $ff
    rst $38                                       ; $72d5: $ff
    rst $38                                       ; $72d6: $ff
    rst $38                                       ; $72d7: $ff
    rst $38                                       ; $72d8: $ff
    rst $38                                       ; $72d9: $ff
    rst $38                                       ; $72da: $ff
    rst $38                                       ; $72db: $ff
    rst $38                                       ; $72dc: $ff
    rst $38                                       ; $72dd: $ff
    nop                                           ; $72de: $00
    nop                                           ; $72df: $00
    dec c                                         ; $72e0: $0d
    add b                                         ; $72e1: $80
    cp $e0                                        ; $72e2: $fe $e0
    nop                                           ; $72e4: $00
    ld b, b                                       ; $72e5: $40
    ret c                                         ; $72e6: $d8

    push hl                                       ; $72e7: $e5
    rst $30                                       ; $72e8: $f7
    and $eb                                       ; $72e9: $e6 $eb
    ldh [rIE], a                                  ; $72eb: $e0 $ff
    rst $38                                       ; $72ed: $ff
    nop                                           ; $72ee: $00
    rst $38                                       ; $72ef: $ff
    db $f4                                        ; $72f0: $f4
    nop                                           ; $72f1: $00
    nop                                           ; $72f2: $00
    nop                                           ; $72f3: $00
    ld [bc], a                                    ; $72f4: $02
    nop                                           ; $72f5: $00
    inc h                                         ; $72f6: $24
    inc b                                         ; $72f7: $04
    ld [bc], a                                    ; $72f8: $02
    ld bc, $0426                                  ; $72f9: $01 $26 $04
    ld [bc], a                                    ; $72fc: $02
    ld [bc], a                                    ; $72fd: $02
    daa                                           ; $72fe: $27
    inc b                                         ; $72ff: $04
    ld [bc], a                                    ; $7300: $02
    inc bc                                        ; $7301: $03
    dec h                                         ; $7302: $25
    dec b                                         ; $7303: $05
    ld [bc], a                                    ; $7304: $02
    inc b                                         ; $7305: $04
    jr z, jr_06a_730d                             ; $7306: $28 $05

    ld [bc], a                                    ; $7308: $02
    dec b                                         ; $7309: $05
    ld hl, $0206                                  ; $730a: $21 $06 $02

jr_06a_730d:
    ld b, $23                                     ; $730d: $06 $23
    ld b, $02                                     ; $730f: $06 $02
    rlca                                          ; $7311: $07
    ld a, [hl+]                                   ; $7312: $2a
    ld b, $02                                     ; $7313: $06 $02
    ld [$0720], sp                                ; $7315: $08 $20 $07
    ld [bc], a                                    ; $7318: $02
    add hl, bc                                    ; $7319: $09
    ld h, $07                                     ; $731a: $26 $07
    ld [bc], a                                    ; $731c: $02
    ld a, [bc]                                    ; $731d: $0a
    ld l, $07                                     ; $731e: $2e $07
    ld [bc], a                                    ; $7320: $02
    dec bc                                        ; $7321: $0b
    rra                                           ; $7322: $1f
    ld [$0c02], sp                                ; $7323: $08 $02 $0c
    dec l                                         ; $7326: $2d
    ld [$0d02], sp                                ; $7327: $08 $02 $0d
    cpl                                           ; $732a: $2f
    ld [$0e02], sp                                ; $732b: $08 $02 $0e
    jr nz, jr_06a_7339                            ; $732e: $20 $09

    ld [bc], a                                    ; $7330: $02
    rrca                                          ; $7331: $0f
    dec hl                                        ; $7332: $2b
    add hl, bc                                    ; $7333: $09
    ld [bc], a                                    ; $7334: $02
    db $10                                        ; $7335: $10
    jr nc, jr_06a_7341                            ; $7336: $30 $09

    ld [bc], a                                    ; $7338: $02

jr_06a_7339:
    ld de, $0a22                                  ; $7339: $11 $22 $0a
    ld [bc], a                                    ; $733c: $02
    ld [de], a                                    ; $733d: $12
    cpl                                           ; $733e: $2f
    ld a, [bc]                                    ; $733f: $0a
    ld [bc], a                                    ; $7340: $02

jr_06a_7341:
    inc de                                        ; $7341: $13
    ld sp, $020a                                  ; $7342: $31 $0a $02
    inc d                                         ; $7345: $14
    rra                                           ; $7346: $1f
    dec bc                                        ; $7347: $0b
    ld [bc], a                                    ; $7348: $02
    dec d                                         ; $7349: $15
    dec l                                         ; $734a: $2d
    dec bc                                        ; $734b: $0b
    ld [bc], a                                    ; $734c: $02
    ld d, $30                                     ; $734d: $16 $30
    dec bc                                        ; $734f: $0b
    ld [bc], a                                    ; $7350: $02
    rla                                           ; $7351: $17
    inc hl                                        ; $7352: $23
    dec c                                         ; $7353: $0d
    ld [bc], a                                    ; $7354: $02
    jr jr_06a_7382                                ; $7355: $18 $2b

    dec c                                         ; $7357: $0d
    ld [bc], a                                    ; $7358: $02
    add hl, de                                    ; $7359: $19
    dec h                                         ; $735a: $25
    ld c, $02                                     ; $735b: $0e $02
    ld a, [de]                                    ; $735d: $1a
    dec l                                         ; $735e: $2d
    ld c, $02                                     ; $735f: $0e $02
    dec de                                        ; $7361: $1b
    jr nc, jr_06a_7372                            ; $7362: $30 $0e

    ld [bc], a                                    ; $7364: $02
    inc e                                         ; $7365: $1c
    cpl                                           ; $7366: $2f
    rrca                                          ; $7367: $0f
    ld [bc], a                                    ; $7368: $02
    dec e                                         ; $7369: $1d
    jr nc, jr_06a_737c                            ; $736a: $30 $10

    ld [bc], a                                    ; $736c: $02
    ld e, $26                                     ; $736d: $1e $26
    ld [de], a                                    ; $736f: $12
    ld [bc], a                                    ; $7370: $02
    rra                                           ; $7371: $1f

jr_06a_7372:
    daa                                           ; $7372: $27
    inc d                                         ; $7373: $14
    ld [bc], a                                    ; $7374: $02
    jr nz, @+$33                                  ; $7375: $20 $31

    inc d                                         ; $7377: $14
    ld [bc], a                                    ; $7378: $02
    ld hl, $1532                                  ; $7379: $21 $32 $15

jr_06a_737c:
    ld [bc], a                                    ; $737c: $02
    ld [hl+], a                                   ; $737d: $22
    inc sp                                        ; $737e: $33
    rla                                           ; $737f: $17
    ld [bc], a                                    ; $7380: $02
    inc hl                                        ; $7381: $23

jr_06a_7382:
    dec [hl]                                      ; $7382: $35
    rla                                           ; $7383: $17
    ld [bc], a                                    ; $7384: $02
    inc h                                         ; $7385: $24
    ld [hl], $18                                  ; $7386: $36 $18
    ld [bc], a                                    ; $7388: $02
    dec h                                         ; $7389: $25
    dec [hl]                                      ; $738a: $35
    add hl, de                                    ; $738b: $19
    ld [bc], a                                    ; $738c: $02
    ld h, $37                                     ; $738d: $26 $37
    add hl, de                                    ; $738f: $19
    ld [bc], a                                    ; $7390: $02
    daa                                           ; $7391: $27
    add hl, hl                                    ; $7392: $29
    inc e                                         ; $7393: $1c
    ld [bc], a                                    ; $7394: $02
    jr z, jr_06a_73ce                             ; $7395: $28 $37

    inc e                                         ; $7397: $1c
    ld [bc], a                                    ; $7398: $02
    add hl, hl                                    ; $7399: $29
    jr z, jr_06a_73b9                             ; $739a: $28 $1d

    ld [bc], a                                    ; $739c: $02
    ld a, [hl+]                                   ; $739d: $2a
    inc [hl]                                      ; $739e: $34
    dec e                                         ; $739f: $1d

Call_06a_73a0:
    ld [bc], a                                    ; $73a0: $02
    dec hl                                        ; $73a1: $2b
    ld [hl], $1d                                  ; $73a2: $36 $1d
    ld [bc], a                                    ; $73a4: $02
    inc l                                         ; $73a5: $2c
    inc e                                         ; $73a6: $1c
    ld e, $02                                     ; $73a7: $1e $02
    dec l                                         ; $73a9: $2d
    daa                                           ; $73aa: $27
    ld e, $02                                     ; $73ab: $1e $02
    ld l, $37                                     ; $73ad: $2e $37
    ld e, $02                                     ; $73af: $1e $02
    cpl                                           ; $73b1: $2f
    rla                                           ; $73b2: $17
    rra                                           ; $73b3: $1f
    ld [bc], a                                    ; $73b4: $02
    jr nc, jr_06a_73e7                            ; $73b5: $30 $30

    rra                                           ; $73b7: $1f
    ld [bc], a                                    ; $73b8: $02

jr_06a_73b9:
    ld sp, $1f36                                  ; $73b9: $31 $36 $1f
    ld [bc], a                                    ; $73bc: $02
    ld [hl-], a                                   ; $73bd: $32
    ld h, $20                                     ; $73be: $26 $20
    ld [bc], a                                    ; $73c0: $02
    inc sp                                        ; $73c1: $33
    dec [hl]                                      ; $73c2: $35
    jr nz, jr_06a_73c7                            ; $73c3: $20 $02

    inc [hl]                                      ; $73c5: $34
    inc e                                         ; $73c6: $1c

jr_06a_73c7:
    ld hl, $3502                                  ; $73c7: $21 $02 $35
    inc h                                         ; $73ca: $24
    ld hl, $3602                                  ; $73cb: $21 $02 $36

jr_06a_73ce:
    dec h                                         ; $73ce: $25
    ld hl, $3702                                  ; $73cf: $21 $02 $37
    add hl, de                                    ; $73d2: $19
    ld [hl+], a                                   ; $73d3: $22
    ld [bc], a                                    ; $73d4: $02
    jr c, jr_06a_73fa                             ; $73d5: $38 $23

    ld [hl+], a                                   ; $73d7: $22
    ld [bc], a                                    ; $73d8: $02
    add hl, sp                                    ; $73d9: $39
    inc sp                                        ; $73da: $33
    ld [hl+], a                                   ; $73db: $22
    ld [bc], a                                    ; $73dc: $02
    ld a, [hl-]                                   ; $73dd: $3a
    dec e                                         ; $73de: $1d
    inc hl                                        ; $73df: $23
    ld [bc], a                                    ; $73e0: $02
    dec sp                                        ; $73e1: $3b
    ld [hl+], a                                   ; $73e2: $22
    inc hl                                        ; $73e3: $23
    ld [bc], a                                    ; $73e4: $02
    inc a                                         ; $73e5: $3c
    ld [hl-], a                                   ; $73e6: $32

jr_06a_73e7:
    inc hl                                        ; $73e7: $23
    ld [bc], a                                    ; $73e8: $02
    dec a                                         ; $73e9: $3d
    rra                                           ; $73ea: $1f
    inc h                                         ; $73eb: $24
    ld [bc], a                                    ; $73ec: $02
    ld a, $21                                     ; $73ed: $3e $21
    inc h                                         ; $73ef: $24
    ld [bc], a                                    ; $73f0: $02
    ccf                                           ; $73f1: $3f
    inc sp                                        ; $73f2: $33
    inc h                                         ; $73f3: $24
    ld [bc], a                                    ; $73f4: $02
    ld b, b                                       ; $73f5: $40
    add hl, de                                    ; $73f6: $19
    ld h, $02                                     ; $73f7: $26 $02
    ld b, c                                       ; $73f9: $41

jr_06a_73fa:
    dec de                                        ; $73fa: $1b
    ld h, $02                                     ; $73fb: $26 $02
    ld b, d                                       ; $73fd: $42
    jr nc, jr_06a_7426                            ; $73fe: $30 $26

    ld [bc], a                                    ; $7400: $02
    ld b, e                                       ; $7401: $43
    jr jr_06a_742b                                ; $7402: $18 $27

    ld [bc], a                                    ; $7404: $02
    ld b, h                                       ; $7405: $44
    ld a, [de]                                    ; $7406: $1a
    daa                                           ; $7407: $27
    ld [bc], a                                    ; $7408: $02
    ld b, l                                       ; $7409: $45
    ld sp, $0227                                  ; $740a: $31 $27 $02
    ld b, [hl]                                    ; $740d: $46
    add hl, de                                    ; $740e: $19
    jr z, jr_06a_7413                             ; $740f: $28 $02

    ld b, a                                       ; $7411: $47
    dec hl                                        ; $7412: $2b

jr_06a_7413:
    jr z, @+$04                                   ; $7413: $28 $02

    ld c, b                                       ; $7415: $48
    ld l, $28                                     ; $7416: $2e $28
    ld [bc], a                                    ; $7418: $02
    ld c, c                                       ; $7419: $49
    jr nc, @+$2a                                  ; $741a: $30 $28

    ld [bc], a                                    ; $741c: $02
    ld c, d                                       ; $741d: $4a
    ld d, $29                                     ; $741e: $16 $29
    ld [bc], a                                    ; $7420: $02
    ld c, e                                       ; $7421: $4b
    dec l                                         ; $7422: $2d
    add hl, hl                                    ; $7423: $29
    ld [bc], a                                    ; $7424: $02
    ld c, h                                       ; $7425: $4c

jr_06a_7426:
    cpl                                           ; $7426: $2f
    add hl, hl                                    ; $7427: $29
    ld [bc], a                                    ; $7428: $02
    ld c, l                                       ; $7429: $4d
    dec d                                         ; $742a: $15

jr_06a_742b:
    ld a, [hl+]                                   ; $742b: $2a
    ld [bc], a                                    ; $742c: $02
    ld c, [hl]                                    ; $742d: $4e
    jr z, jr_06a_745a                             ; $742e: $28 $2a

    ld [bc], a                                    ; $7430: $02
    ld c, a                                       ; $7431: $4f
    rla                                           ; $7432: $17
    dec hl                                        ; $7433: $2b
    ld [bc], a                                    ; $7434: $02
    ld d, b                                       ; $7435: $50
    ld a, [hl+]                                   ; $7436: $2a
    dec hl                                        ; $7437: $2b
    ld [bc], a                                    ; $7438: $02
    ld d, c                                       ; $7439: $51
    inc h                                         ; $743a: $24
    dec l                                         ; $743b: $2d
    ld [bc], a                                    ; $743c: $02
    ld d, d                                       ; $743d: $52
    jr z, jr_06a_746d                             ; $743e: $28 $2d

    ld [bc], a                                    ; $7440: $02
    ld d, e                                       ; $7441: $53
    inc de                                        ; $7442: $13
    ld l, $02                                     ; $7443: $2e $02
    ld d, h                                       ; $7445: $54
    ld [hl+], a                                   ; $7446: $22
    ld l, $02                                     ; $7447: $2e $02
    ld d, l                                       ; $7449: $55
    ld h, $2e                                     ; $744a: $26 $2e
    ld [bc], a                                    ; $744c: $02
    ld d, [hl]                                    ; $744d: $56
    add hl, hl                                    ; $744e: $29
    ld l, $02                                     ; $744f: $2e $02
    ld d, a                                       ; $7451: $57
    ld [de], a                                    ; $7452: $12
    cpl                                           ; $7453: $2f
    ld [bc], a                                    ; $7454: $02
    ld e, b                                       ; $7455: $58
    jr z, jr_06a_7487                             ; $7456: $28 $2f

    ld [bc], a                                    ; $7458: $02
    ld e, c                                       ; $7459: $59

jr_06a_745a:
    dec c                                         ; $745a: $0d
    ld sp, $5a02                                  ; $745b: $31 $02 $5a
    ld hl, $0231                                  ; $745e: $21 $31 $02
    ld e, e                                       ; $7461: $5b
    inc h                                         ; $7462: $24
    ld sp, $5c02                                  ; $7463: $31 $02 $5c
    ld h, $31                                     ; $7466: $26 $31
    ld [bc], a                                    ; $7468: $02
    ld e, l                                       ; $7469: $5d
    inc c                                         ; $746a: $0c
    ld [hl-], a                                   ; $746b: $32
    ld [bc], a                                    ; $746c: $02

jr_06a_746d:
    ld e, [hl]                                    ; $746d: $5e
    add hl, de                                    ; $746e: $19
    ld [hl-], a                                   ; $746f: $32
    ld [bc], a                                    ; $7470: $02
    ld e, a                                       ; $7471: $5f
    dec e                                         ; $7472: $1d
    ld [hl-], a                                   ; $7473: $32
    ld [bc], a                                    ; $7474: $02
    ld h, b                                       ; $7475: $60
    jr nz, @+$34                                  ; $7476: $20 $32

    ld [bc], a                                    ; $7478: $02
    ld h, c                                       ; $7479: $61
    inc hl                                        ; $747a: $23
    ld [hl-], a                                   ; $747b: $32
    ld [bc], a                                    ; $747c: $02
    ld h, d                                       ; $747d: $62
    dec h                                         ; $747e: $25
    ld [hl-], a                                   ; $747f: $32
    ld [bc], a                                    ; $7480: $02
    ld h, e                                       ; $7481: $63
    dec de                                        ; $7482: $1b
    inc sp                                        ; $7483: $33
    ld [bc], a                                    ; $7484: $02
    ld h, h                                       ; $7485: $64
    inc h                                         ; $7486: $24

jr_06a_7487:
    inc sp                                        ; $7487: $33
    ld [bc], a                                    ; $7488: $02
    ld h, l                                       ; $7489: $65
    inc e                                         ; $748a: $1c
    inc [hl]                                      ; $748b: $34
    ld [bc], a                                    ; $748c: $02
    ld h, [hl]                                    ; $748d: $66
    jr @+$37                                      ; $748e: $18 $35

    ld [bc], a                                    ; $7490: $02
    ld h, a                                       ; $7491: $67
    ld d, $36                                     ; $7492: $16 $36
    ld [bc], a                                    ; $7494: $02
    ld l, b                                       ; $7495: $68
    dec d                                         ; $7496: $15
    scf                                           ; $7497: $37
    ld [bc], a                                    ; $7498: $02
    ld l, c                                       ; $7499: $69
    ld de, $ff3a                                  ; $749a: $11 $3a $ff
    rst $38                                       ; $749d: $ff
    rst $38                                       ; $749e: $ff

    db $a7, $74, $e1, $77, $83, $7c, $9e, $7c, $2f, $0d, $0e, $0e, $0e, $fc, $ed, $4d
    db $eb, $e0, $fc, $f1, $0c, $d4, $f1, $fd, $f9, $4d, $4d, $fc, $e3, $ff, $ff, $c6
    db $ee, $7e, $e2, $3f, $0d, $0d, $4d, $4d, $2d, $4d, $72, $e9, $ff, $ff, $06, $bc
    db $e9, $6d, $6b, $be, $e0, $bf, $e0, $59, $fb, $02, $ef, $82, $e4, $c0, $c1, $e1
    db $bf, $e3, $f0, $c6, $fe, $df, $0e, $e5, $82, $e1, $6b, $0d, $8a, $7f, $e0, $6b
    db $3c, $e0, $2d, $52, $ff, $04, $ee, $43, $e0, $2b, $6f, $0a, $6a, $0d, $6b, $ff
    db $e1, $4d, $2d, $00, $ff, $3c, $2a, $ed, $82, $e0, $0a, $4a, $2a, $0b, $c0, $e2
    db $fa, $c0, $b0, $02, $ff, $04, $c4, $4c, $c1, $00, $c1, $6b, $6b, $c1, $e1, $2b
    db $84, $bf, $e0, $3a, $e1, $6d, $ec, $a3, $fe, $cf, $04, $d6, $47, $e0, $0a, $0f
    db $0b, $0b, $4b, $4b, $c0, $e4, $e4, $c9, $00, $ff, $44, $c0, $5a, $06, $e0, $2b
    db $c0, $e0, $0a, $4a, $40, $e1, $6b, $c0, $e0, $f8, $fc, $bf, $86, $a9, $87, $c0
    db $6b, $6b, $4b, $6b, $2b, $c3, $2a, $0a, $be, $c2, $80, $f8, $04, $d1, $c0, $e5
    db $0b, $0b, $c9, $2b, $fe, $c0, $7b, $c0, $2d, $00, $df, $20, $e9, $4d, $4d, $84
    db $cb, $e1, $bf, $e2, $0b, $c0, $e2, $38, $a0, $4a, $ff, $86, $88, $4d, $19, $2d
    db $c2, $a1, $03, $c0, $0b, $0d, $bf, $e0, $3f, $e1, $f8, $82, $94, $ff, $ff, $84
    db $86, $2d, $49, $e1, $0d, $c0, $e1, $3e, $e2, $6d, $00, $80, $f4, $08, $97, $c8
    db $a1, $41, $a0, $3c, $c2, $7f, $c0, $00, $df, $04, $8c, $00, $c0, $e3, $ff, $c0
    db $fd, $a0, $40, $e1, $00, $df, $86, $69, $09, $80, $7f, $e2, $c0, $7f, $a0, $c0
    db $e4, $00, $df, $8a, $69, $bf, $a0, $82, $80, $6b, $0d, $62, $42, $e3, $6b, $3f
    db $a0, $00, $dd, $04, $c9, $4d, $4d, $42, $83, $80, $7e, $a1, $fa, $62, $00, $a4
    db $00, $99, $08, $84, $85, $e1, $4d, $a2, $2b, $00, $c3, $80, $01, $c0, $fc, $61
    db $82, $e4, $04, $ff, $86, $a2, $05, $a1, $85, $e2, $02, $c3, $a1, $2b, $39, $e2
    db $00, $9f, $0a, $68, $4a, $c1, $c1, $e3, $3f, $a1, $40, $3c, $c1, $02, $d6, $04
    db $48, $08, $85, $46, $a0, $c0, $e5, $4b, $7c, $81, $c0, $ba, $c1, $82, $a4, $02
    db $7f, $c8, $a3, $45, $83, $44, $e3, $6b, $0d, $81, $2d, $35, $a0, $00, $ff, $08
    db $67, $0d, $61, $03, $e4, $43, $e1, $0d, $43, $0d, $2d, $82, $a5, $bc, $ff, $0c
    db $43, $c2, $e5, $2b, $c0, $e3, $00, $41, $62, $00, $5b, $0c, $47, $c8, $41, $04
    db $e2, $09, $a2, $c3, $e2, $83, $82, $00, $00, $db, $64, $e3, $8e, $22, $49, $60
    db $08, $c1, $48, $c1, $c0, $c0, $45, $c0, $80, $01, $e2, $08, $bd, $8a, $42, $0c
    db $a2, $c7, $a1, $05, $e5, $03, $40, $2d, $00, $c1, $c1, $82, $64, $d0, $1b, $0a
    db $62, $c7, $a1, $c6, $a4, $c6, $c2, $82, $c2, $00, $82, $45, $00, $59, $0c, $84
    db $8c, $63, $84, $c3, $84, $e3, $c4, $81, $7e, $04, $00, $02, $7f, $4c, $e3, $44
    db $c5, $c1, $e5, $48, $df, $3c, $e3, $c0, $e2, $0e, $20, $00, $ca, $42, $09, $63
    db $82, $e8, $00, $df, $96, $00, $3e, $e3, $bf, $e7, $c5, $80, $00, $64, $4d, $00
    db $d9, $89, $41, $87, $42, $c1, $a4, $46, $23, $04, $97, $00, $cb, $00, $88, $22
    db $47, $43, $bd, $c5, $06, $26, $00, $df, $86, $25, $8c, $c2, $7c, $c4, $00, $86
    db $07, $c4, $9f, $02, $65, $3c, $e3, $bd, $c5, $86, $9d, $04, $4e, $bf, $e1, $00
    db $7c, $c5, $43, $00, $c8, $21, $ec, $04, $02, $3e, $fa, $aa, $c4, $01, $80, $ea
    db $00, $04, $5f, $04, $46, $79, $a6, $06, $60, $08, $46, $fc, $de, $96, $e7, $3c
    db $c6, $00, $08, $21, $88, $fd, $34, $8b, $96, $82, $40, $43, $fd, $40, $47, $02
    db $7e, $e8, $00, $fe, $df, $84, $07, $7e, $43, $bf, $e3, $01, $7f, $fc, $2b, $7e
    db $c1, $3f, $e0, $02, $bf, $c1, $6b, $2a, $a0, $04, $3f, $7c, $2d, $fc, $a5, $7f
    db $82, $3c, $e1, $18, $02, $ff, $f8, $69, $7a, $a3, $4b, $4b, $c0, $e3, $bf, $e2
    db $00, $9f, $00, $f6, $6b, $43, $82, $45, $02, $40, $21, $ff, $df, $f8, $0d, $01
    db $e2, $f9, $24, $00, $00, $5f, $b0, $4e, $bc, $a0, $f9, $27, $80, $3a, $30, $4f
    db $f2, $21, $ba, $00, $f0, $c0, $ea, $00, $df, $30, $4b, $38, $43, $0d, $0b, $0b
    db $2d, $00, $40, $e2, $00, $ff, $f8, $0c, $fb, $08, $c0, $e4, $00, $ff, $f6, $4a
    db $bb, $07, $30, $3d, $00, $80, $f7, $00, $d5, $f6, $41, $4b, $6b, $bd, $40, $ba
    db $40, $18, $7a, $85, $02, $ff, $7a, $68, $4d, $2d, $3f, $44, $b5, $60, $80, $1a
    db $00, $fc, $95, $92, $c0, $b4, $43, $be, $20, $00, $bf, $ae, $12, $77, $81, $3c
    db $40, $00, $82, $fb, $00, $d1, $0c, $66, $bf, $e1, $82, $e6, $00, $df, $f4, $51
    db $04, $ff, $60, $f8, $55, $f8, $c5, $00, $7f, $f8, $53, $8a, $5f, $0e, $0e, $00
    db $00

    nop                                           ; $77e0: $00

    db $ef, $a0, $dc, $dd, $de, $fc, $ee, $a0, $d8, $d9, $0f, $a0, $a0, $d2, $d3, $fc
    db $e7, $f0, $e1, $ec, $e0, $d4, $f0, $ef, $df, $e0, $e1, $e2, $fc, $ed, $d6, $d7
    db $da, $7f, $db, $d0, $d1, $d4, $d5, $a0, $a0, $fc, $e3, $cf, $d0, $d1, $da, $db
    db $ec, $e1, $d4, $f1, $e3, $e4, $f3, $e5, $e6, $fc, $ed, $82, $e5, $9f, $a2, $9d
    db $9d, $f3, $9f, $a0, $7e, $e7, $d4, $f1, $e7, $e8, $e9, $ea, $fc, $fc, $ed, $82
    db $e4, $9f, $9c, $46, $ae, $ae, $9c, $c0, $bf, $e0, $7e, $e5, $d4, $f1, $02, $f1
    db $82, $e4, $c1, $e0, $af, $af, $f0, $bf, $e2, $fc, $c6, $d2, $cf, $02, $ef, $a0
    db $a0, $d6, $d7, $f6, $82, $e3, $46, $af, $be, $e0, $46, $9c, $9d, $a2, $c1, $9f
    db $fc, $c5, $d2, $cf, $02, $ef, $82, $c3, $43, $e1, $45, $48, $07, $53, $af, $46
    db $ff, $e1, $3b, $e0, $7a, $c3, $d2, $cf, $02, $ef, $7a, $82, $c3, $a1, $82, $e0
    db $48, $5e, $54, $45, $c0, $e2, $c6, $fa, $c0, $d4, $d5, $6a, $c1, $d2, $cf, $04
    db $d5, $9e, $46, $bf, $46, $51, $5e, $52, $2a, $2a, $bf, $e0, $ae, $0f, $46, $af
    db $ae, $9e, $00, $e4, $fe, $ce, $04, $d5, $c0, $e0, $9f, $45, $53, $2a, $20, $2e
    db $7f, $e0, $fa, $c1, $9e, $e6, $fc, $a3, $a0, $a0, $00, $dd, $86, $a4, $9f, $9c
    db $ae, $ff, $46, $46, $2d, $20, $20, $2d, $49, $55, $8e, $fe, $c0, $af, $46, $9e
    db $fc, $b5, $04, $cf, $82, $c2, $9e, $7e, $87, $c0, $46, $2d, $26, $21, $36, $56
    db $c0, $e1, $37, $46, $46, $9e, $7a, $a3, $a0, $a0, $00, $dc, $92, $a0, $f6, $18
    db $c2, $9e, $af, $80, $e0, $45, $41, $35, $35, $37, $38, $37, $45, $ff, $c0, $46
    db $a1, $f0, $83, $00, $dd, $cc, $04, $c1, $04, $a1, $a0, $9e, $04, $c0, $fe, $c0
    db $36, $35, $07, $35, $35, $39, $f5, $e1, $79, $a0, $7e, $c1, $00, $dd, $86, $86
    db $3c, $c2, $a1, $7e, $e1, $3a, $35, $ac, $3a, $3c, $c2, $7f, $c0, $98, $00, $df
    db $04, $c2, $82, $a1, $d0, $d1, $03, $a0, $c4, $a0, $ae, $df, $39, $35, $ad, $35
    db $36, $3e, $e1, $9e, $a0, $c0, $7a, $81, $00, $dc, $18, $85, $04, $81, $bf, $a0
    db $00, $a0, $ae, $3a, $03, $35, $35, $7f, $e0, $7f, $c0, $00, $e3, $00, $da, $08
    db $83, $04, $84, $0c, $bf, $a0, $c8, $a0, $af, $3e, $ff, $c1, $40, $e2, $7e, $a1
    db $00, $db, $08, $8a, $69, $3e, $c0, $bf, $e2, $3a, $41, $e1, $00, $e6, $00, $db
    db $8a, $69, $13, $9f, $9c, $3e, $c0, $46, $a0, $3c, $c1, $c0, $b5, $a0, $f9, $60
    db $70, $00, $de, $96, $64, $88, $63, $42, $82, $af, $45, $37, $41, $c0, $c0, $fa
    db $c0, $ba, $61, $00, $dd, $08, $84, $c7, $62, $cb, $81, $45, $37, $3f, $37, $41
    db $36, $62, $63, $7d, $fa, $c1, $82, $c1, $e0, $00, $dd, $9e, $85, $05, $a2, $85
    db $e0, $c4, $e0, $64, $64, $78, $03, $3c, $7f, $bf, $e0, $81, $a0, $00, $9f, $86
    db $a4, $c6, $80, $06, $e1, $fe, $c1, $e0, $67, $35, $38, $38, $35, $35, $ae, $c0
    db $bf, $e0, $82, $c4, $00, $9a, $0c, $45, $46, $a0, $4b, $60, $af, $42, $fe, $c1
    db $e0, $3a, $ae, $45, $3a, $3c, $af, $46, $c1, $81, $82, $c6, $00, $58, $0c, $46
    db $87, $61, $06, $a1, $69, $35, $ff, $35, $3e, $af, $ae, $39, $36, $ae, $83, $81
    db $87, $42, $a1, $fc, $21, $00, $59, $0c, $46, $02, $e2, $03, $e0, $76, $7e, $87
    db $a1, $af, $ae, $ae, $af, $8a, $85, $42, $a1, $f8, $72, $21, $00, $59, $0c, $47
    db $af, $ae, $45, $37, $38, $de, $03, $e0, $35, $35, $3c, $44, $3f, $41, $81, $46
    db $e1, $af, $82, $84, $00, $58, $0c, $46, $89, $60, $af, $39, $35, $7f, $35, $69
    db $3a, $3f, $37, $38, $36, $b6, $c1, $c1, $af, $01, $e4, $00, $5a, $0c, $47, $04
    db $e1, $cc, $80, $69, $3e, $2f, $ae, $ae, $45, $45, $be, $a0, $46, $01, $e3, $82
    db $82, $18, $00, $97, $8a, $65, $0b, $60, $ae, $46, $81, $e0, $80, $e0, $85, $20
    db $ce, $fe, $81, $83, $86, $85, $82, $66, $00, $97, $a0, $a0, $f4, $8a, $63, $d1
    db $20, $af, $81, $e1, $35, $69, $35, $39, $de, $43, $20, $83, $89, $88, $87, $c1
    db $e0, $9c, $9f, $f0, $82, $a3, $00, $db, $0c, $82, $8c, $63, $35, $35, $6b, $6c
    db $01, $3a, $45, $e0, $84, $e1, $82, $28, $00, $db, $8a, $43, $49, $40, $40, $e1
    db $0f, $6e, $70, $71, $88, $84, $e2, $82, $e9, $00, $dd, $8a, $41, $00, $88, $40
    db $ca, $42, $c9, $64, $82, $e9, $00, $de, $0b, $81, $83, $a3, $bf, $e1, $0e, $c8
    db $42, $ae, $46, $a1, $04, $e5, $04, $4f, $00, $d1, $d1, $02, $00, $bd, $c2, $c8
    db $40, $06, $22, $86, $25, $02, $b1, $00, $cb, $82, $81, $c7, $63, $00, $3d, $c1
    db $06, $40, $06, $22, $86, $03, $04, $51, $00, $cd, $9e, $22, $c2, $62, $00, $7f
    db $e3, $87, $41, $86, $61, $6a, $43, $02, $b1, $00, $c9, $7e, $e4, $81, $63, $00
    db $7f, $e4, $86, $85, $04, $93, $00, $92, $7f, $63, $7c, $c3, $c0, $e2, $00, $e6
    db $68, $fe, $d2, $04, $49, $7e, $e5, $a1, $3b, $c4, $3c, $44, $08, $43, $40, $04
    db $a3, $04, $4f, $00, $8d, $00, $45, $c3, $02, $ba, $81, $40, $41, $c0, $20, $6a
    db $44, $00, $df, $fc, $c7, $85, $21, $b9, $82, $42, $48, $21, $f0, $21, $60, $82
    db $83, $00, $d8, $fa, $04, $7e, $23, $45, $22, $46, $40, $46, $22, $80, $06, $41
    db $7e, $e7, $00, $59, $f6, $01, $82, $03, $43, $00, $44, $00, $44, $01, $3c, $7d
    db $a2, $bf, $e3, $fc, $c4, $00, $59, $fc, $28, $38, $a1, $b9, $61, $0e, $bf, $c1
    db $46, $9c, $9d, $7d, $e1, $00, $5f, $f8, $68, $fc, $a6, $81, $42, $31, $a2, $42
    db $21, $00, $9e, $f8, $69, $3c, $23, $b9, $40, $40, $40, $7d, $81, $01, $23, $00
    db $5c, $f8, $69, $fc, $a2, $43, $81, $45, $45, $02, $f0, $40, $22, $00, $5d, $f8
    db $2d, $7c, $c1, $45, $43, $41, $43, $a0, $fd, $e0, $38, $80, $00, $5f, $f8, $27
    db $7a, $03, $9e, $fd, $01, $3b, $1b, $35, $3b, $fd, $e0, $36, $45, $00, $24, $00
    db $df, $fc, $a5, $5e, $ba, $02, $44, $3c, $a4, $64, $ff, $e0, $a5, $39, $a0, $e0
    db $00, $24, $00, $de, $fc, $a3, $76, $41, $4b, $00, $42, $35, $69, $1f, $a3, $35
    db $35, $a3, $6a, $7a, $c0, $7a, $85, $00, $dd, $04, $fc, $a3, $76, $42, $46, $c0
    db $e1, $f7, $41, $c0, $e3, $00, $df, $24, $85, $6c, $76, $25, $7f, $a0, $6b, $71
    db $ff, $e0, $6d, $3c, $c0, $01, $00, $00, $df, $f8, $69, $f6, $42, $c0, $c6, $40
    db $c1, $00, $df, $f8, $67, $fc, $61, $40, $bf, $e2, $40, $c5, $c0, $a0, $00, $df
    db $00, $cb, $fb, $80, $9d, $b4, $41, $00, $fc, $01, $81, $a1, $00, $df, $00, $c9
    db $7a, $61, $f0, $22, $3f, $40, $82, $e3, $00, $00, $df, $fc, $6b, $f0, $26, $7e
    db $42, $00, $9f, $fc, $6d, $f0, $26, $42, $80, $00, $82, $05, $00, $df, $fc, $67
    db $f8, $c7, $00, $67, $00, $df, $f4, $27, $f8, $c9, $00, $7e, $25, $00, $d1, $00
    db $00

    nop                                           ; $7c82: $00

    db $c1, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $01, $80
    db $fe, $e0, $ff, $ff, $ff, $ff, $ff, $e8, $00, $00

    nop                                           ; $7c9d: $00

    db $02, $00, $1e, $04, $02, $01, $1f, $04, $02, $02, $1d, $05, $02, $03, $20, $05
    db $02, $04, $1f, $06, $02, $05, $1b, $07, $02, $06, $25, $08, $02, $07, $23, $09
    db $02, $08, $26, $09, $02, $09, $25, $0a, $02, $0a, $19, $0b, $02, $0b, $18, $0c
    db $02, $0c, $19, $0d, $02, $0d, $24, $0d, $02, $0e, $1b, $0f, $02, $0f, $21, $0f
    db $02, $10, $1e, $10, $02, $11, $26, $10, $02, $12, $1d, $11, $02, $13, $1f, $11
    db $02, $14, $1e, $12, $02, $15, $1a, $13, $02, $16, $1f, $13, $02, $17, $1b, $14
    db $02, $18, $1d, $14, $02, $19, $24, $14, $02, $1a, $23, $15, $02, $1b, $25, $15
    db $02, $1c, $18, $16, $02, $1d, $24, $16, $02, $1e, $14, $17, $02, $1f, $13, $18
    db $02, $20, $15, $18, $02, $21, $17, $18, $02, $22, $21, $18, $02, $23, $14, $19
    db $02, $24, $1d, $19, $02, $25, $1e, $1a, $02, $26, $21, $1a, $02, $27, $12, $1b
    db $02, $28, $1f, $1b, $02, $29, $20, $1b, $02, $2a, $24, $1b, $02, $2b, $13, $1c
    db $02, $2c, $1e, $1c, $02, $2d, $21, $1c, $02, $2e, $10, $1d, $02, $2f, $1d, $1d
    db $02, $30, $1f, $1d, $02, $31, $19, $1e, $02, $32, $1a, $1e, $02, $33, $0e, $1f
    db $02, $34, $11, $1f, $02, $35, $1b, $1f, $02, $36, $1c, $1f, $02, $37, $1a, $20
    db $02, $38, $0f, $21, $02, $39, $0e, $22, $02, $3a, $10, $22, $02, $3b, $0f, $23
    db $02, $3c, $11, $23, $02, $3d, $1f, $24, $02, $3e, $14, $25, $02, $3f, $1d, $25
    db $02, $40, $20, $25, $02, $41, $1f, $26, $02, $42, $15, $29, $02, $43, $16, $2a
    db $02, $44, $1e, $2b, $02, $45, $18, $2c, $02, $46, $17, $2e, $02, $47, $23, $30
    db $02, $48, $24, $31, $02, $49, $1a, $34, $02, $4a, $19, $35, $02, $4b, $24, $38
    db $02, $4c, $20, $3b, $02, $4d, $21, $3c, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

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

Call_06a_7f9c:
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

Jump_06a_7fe5:
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
