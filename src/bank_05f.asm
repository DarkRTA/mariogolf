; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05f", ROMX[$4000], BANK[$5f]

    ld c, $40                                     ; $4000: $0e $40
    pop hl                                        ; $4002: $e1
    ld c, c                                       ; $4003: $49
    rst $00                                       ; $4004: $c7
    ld d, e                                       ; $4005: $53
    inc l                                         ; $4006: $2c
    ld e, b                                       ; $4007: $58
    call c, Call_000_3b61                         ; $4008: $dc $61 $3b
    ld l, h                                       ; $400b: $6c
    dec bc                                        ; $400c: $0b
    ld [hl], b                                    ; $400d: $70
    ld d, $40                                     ; $400e: $16 $40
    ld c, a                                       ; $4010: $4f
    ld b, h                                       ; $4011: $44
    rst $38                                       ; $4012: $ff
    ld c, b                                       ; $4013: $48
    ld a, [de]                                    ; $4014: $1a
    ld c, c                                       ; $4015: $49
    cp a                                          ; $4016: $bf
    dec c                                         ; $4017: $0d
    dec c                                         ; $4018: $0d
    dec c                                         ; $4019: $0d
    ld c, $0e                                     ; $401a: $0e $0e
    ld c, $fa                                     ; $401c: $0e $fa
    ld [$2e4d], a                                 ; $401e: $ea $4d $2e
    ldh a, [$e1]                                  ; $4021: $f0 $e1
    ld c, $0e                                     ; $4023: $0e $0e
    ld c, l                                       ; $4025: $4d
    ld hl, sp-$20                                 ; $4026: $f8 $e0
    ld c, l                                       ; $4028: $4d
    db $e3                                        ; $4029: $e3
    ldh [$f4], a                                  ; $402a: $e0 $f4
    db $eb                                        ; $402c: $eb
    nop                                           ; $402d: $00
    ret nc                                        ; $402e: $d0

    rst $28                                       ; $402f: $ef
    db $fd                                        ; $4030: $fd
    xor $eb                                       ; $4031: $ee $eb
    db $e4                                        ; $4033: $e4
    ret nz                                        ; $4034: $c0

    ld [c], a                                     ; $4035: $e2
    or h                                          ; $4036: $b4
    pop hl                                        ; $4037: $e1
    db $fc                                        ; $4038: $fc
    db $e4                                        ; $4039: $e4
    db $e3                                        ; $403a: $e3
    ld [$f9fa], a                                 ; $403b: $ea $fa $f9
    ld a, $6d                                     ; $403e: $3e $6d
    ld [c], a                                     ; $4040: $e2
    dec c                                         ; $4041: $0d
    dec c                                         ; $4042: $0d
    ld c, l                                       ; $4043: $4d
    ld c, l                                       ; $4044: $4d
    ld c, l                                       ; $4045: $4d
    db $fc                                        ; $4046: $fc
    pop hl                                        ; $4047: $e1
    db $fd                                        ; $4048: $fd
    db $e3                                        ; $4049: $e3
    pop bc                                        ; $404a: $c1
    dec l                                         ; $404b: $2d
    halt                                          ; $404c: $76
    and $d0                                       ; $404d: $e6 $d0
    db $f4                                        ; $404f: $f4
    dec a                                         ; $4050: $3d
    rst $20                                       ; $4051: $e7
    ld l, e                                       ; $4052: $6b
    db $e3                                        ; $4053: $e3
    call nz, Call_000_0de1                        ; $4054: $c4 $e1 $0d
    ld l, l                                       ; $4057: $6d
    rst $38                                       ; $4058: $ff
    ld l, e                                       ; $4059: $6b
    inc l                                         ; $405a: $2c
    inc c                                         ; $405b: $0c
    inc c                                         ; $405c: $0c
    inc l                                         ; $405d: $2c
    inc l                                         ; $405e: $2c
    ld l, e                                       ; $405f: $6b
    ld l, e                                       ; $4060: $6b
    ld [c], a                                     ; $4061: $e2
    or e                                          ; $4062: $b3
    ldh [$2d], a                                  ; $4063: $e0 $2d
    ret nc                                        ; $4065: $d0

    di                                            ; $4066: $f3
    add e                                         ; $4067: $83
    rst $28                                       ; $4068: $ef
    ld b, h                                       ; $4069: $44
    db $e3                                        ; $406a: $e3
    dec c                                         ; $406b: $0d
    ld l, l                                       ; $406c: $6d
    dec bc                                        ; $406d: $0b
    rst $20                                       ; $406e: $e7
    ld l, e                                       ; $406f: $6b
    ld l, e                                       ; $4070: $6b
    ld l, e                                       ; $4071: $6b
    jp nz, $bfe1                                  ; $4072: $c2 $e1 $bf

    pop hl                                        ; $4075: $e1
    dec c                                         ; $4076: $0d
    ld l, e                                       ; $4077: $6b
    ld l, e                                       ; $4078: $6b
    add hl, sp                                    ; $4079: $39
    dec l                                         ; $407a: $2d
    inc de                                        ; $407b: $13
    di                                            ; $407c: $f3
    ret nz                                        ; $407d: $c0

    push af                                       ; $407e: $f5
    ld c, l                                       ; $407f: $4d
    dec bc                                        ; $4080: $0b
    dec c                                         ; $4081: $0d
    jp nz, $fee0                                  ; $4082: $c2 $e0 $fe

    db $e3                                        ; $4085: $e3
    ld c, $7e                                     ; $4086: $0e $7e
    pop hl                                        ; $4088: $e1
    ld l, e                                       ; $4089: $6b
    ld c, l                                       ; $408a: $4d
    dec l                                         ; $408b: $2d
    db $d3                                        ; $408c: $d3
    db $d3                                        ; $408d: $d3
    or b                                          ; $408e: $b0
    ret nc                                        ; $408f: $d0

    inc b                                         ; $4090: $04
    ldh [$81], a                                  ; $4091: $e0 $81
    ldh [$8d], a                                  ; $4093: $e0 $8d
    dec c                                         ; $4095: $0d
    pop bc                                        ; $4096: $c1
    ldh [$6c], a                                  ; $4097: $e0 $6c
    ld c, h                                       ; $4099: $4c
    rst $38                                       ; $409a: $ff
    ldh [$3d], a                                  ; $409b: $e0 $3d
    ldh [$7f], a                                  ; $409d: $e0 $7f
    ld [c], a                                     ; $409f: $e2
    ld c, l                                       ; $40a0: $4d
    ldh a, [$e7]                                  ; $40a1: $f0 $e7
    call nz, $df80                                ; $40a3: $c4 $80 $df
    ld c, b                                       ; $40a6: $48
    ret nz                                        ; $40a7: $c0

    ld b, e                                       ; $40a8: $43
    ldh [rOCPD], a                                ; $40a9: $e0 $6b
    ld c, h                                       ; $40ab: $4c
    ld c, h                                       ; $40ac: $4c
    ld l, h                                       ; $40ad: $6c
    rlca                                          ; $40ae: $07
    dec bc                                        ; $40af: $0b
    dec bc                                        ; $40b0: $0b
    dec hl                                        ; $40b1: $2b
    cp a                                          ; $40b2: $bf
    ldh [$c0], a                                  ; $40b3: $e0 $c0
    db $e4                                        ; $40b5: $e4
    add d                                         ; $40b6: $82
    rst $18                                       ; $40b7: $df
    ld b, a                                       ; $40b8: $47
    jp $c104                                      ; $40b9: $c3 $04 $c1


    sbc l                                         ; $40bc: $9d
    dec l                                         ; $40bd: $2d
    set 0, b                                      ; $40be: $cb $c0
    ld l, e                                       ; $40c0: $6b
    dec hl                                        ; $40c1: $2b
    dec bc                                        ; $40c2: $0b
    rst $38                                       ; $40c3: $ff
    pop hl                                        ; $40c4: $e1
    ld a, c                                       ; $40c5: $79
    ldh [$6c], a                                  ; $40c6: $e0 $6c
    ldh [$f4], a                                  ; $40c8: $e0 $f4
    ret nz                                        ; $40ca: $c0

    ret nz                                        ; $40cb: $c0

    or $ed                                        ; $40cc: $f6 $ed
    or d                                          ; $40ce: $b2
    adc $c0                                       ; $40cf: $ce $c0
    set 0, b                                      ; $40d1: $cb $c0
    ld c, e                                       ; $40d3: $4b
    ld c, e                                       ; $40d4: $4b
    dec bc                                        ; $40d5: $0b
    dec de                                        ; $40d6: $1b
    dec bc                                        ; $40d7: $0b
    ld c, e                                       ; $40d8: $4b
    pop bc                                        ; $40d9: $c1
    db $e3                                        ; $40da: $e3
    dec c                                         ; $40db: $0d
    ld l, l                                       ; $40dc: $6d
    xor b                                         ; $40dd: $a8
    and h                                         ; $40de: $a4
    add b                                         ; $40df: $80
    db $db                                        ; $40e0: $db
    adc $a2                                       ; $40e1: $ce $a2
    nop                                           ; $40e3: $00
    adc d                                         ; $40e4: $8a
    and c                                         ; $40e5: $a1
    ccf                                           ; $40e6: $3f
    pop hl                                        ; $40e7: $e1
    cp a                                          ; $40e8: $bf
    pop hl                                        ; $40e9: $e1
    ld a, h                                       ; $40ea: $7c
    pop bc                                        ; $40eb: $c1
    ld bc, $00e3                                  ; $40ec: $01 $e3 $00
    ldh [rSCX], a                                 ; $40ef: $e0 $43
    rst $38                                       ; $40f1: $ff
    ld a, e                                       ; $40f2: $7b
    and [hl]                                      ; $40f3: $a6
    ld b, $c0                                     ; $40f4: $06 $c0
    db $e3                                        ; $40f6: $e3
    dec bc                                        ; $40f7: $0b
    dec hl                                        ; $40f8: $2b
    ld b, c                                       ; $40f9: $41
    pop hl                                        ; $40fa: $e1
    ld b, b                                       ; $40fb: $40
    jp $b0c5                                      ; $40fc: $c3 $c5 $b0


    di                                            ; $40ff: $f3
    xor [hl]                                      ; $4100: $ae
    add d                                         ; $4101: $82
    push hl                                       ; $4102: $e5
    inc l                                         ; $4103: $2c
    push bc                                       ; $4104: $c5
    and b                                         ; $4105: $a0
    dec bc                                        ; $4106: $0b
    pop bc                                        ; $4107: $c1
    dec hl                                        ; $4108: $2b
    dec hl                                        ; $4109: $2b
    ret nz                                        ; $410a: $c0

    ldh [$6c], a                                  ; $410b: $e0 $6c
    ld b, c                                       ; $410d: $41
    pop bc                                        ; $410e: $c1
    ret nz                                        ; $410f: $c0

    db $e3                                        ; $4110: $e3
    ld l, b                                       ; $4111: $68
    ld h, [hl]                                    ; $4112: $66
    pop bc                                        ; $4113: $c1
    add b                                         ; $4114: $80
    jp c, $e502                                   ; $4115: $da $02 $e5

    ld c, l                                       ; $4118: $4d
    ld c, $e1                                     ; $4119: $0e $e1
    ld l, e                                       ; $411b: $6b
    ld c, e                                       ; $411c: $4b
    ret nz                                        ; $411d: $c0

    pop hl                                        ; $411e: $e1
    ld b, c                                       ; $411f: $41
    ld c, h                                       ; $4120: $4c
    jp $c0c1                                      ; $4121: $c3 $c1 $c0


    and b                                         ; $4124: $a0
    and e                                         ; $4125: $a3
    add $04                                       ; $4126: $c6 $04
    cp a                                          ; $4128: $bf
    ld b, [hl]                                    ; $4129: $46
    and c                                         ; $412a: $a1
    ld c, e                                       ; $412b: $4b
    dec b                                         ; $412c: $05
    ldh [rP1], a                                  ; $412d: $e0 $00
    ret nz                                        ; $412f: $c0

    ld [c], a                                     ; $4130: $e2
    rst $30                                       ; $4131: $f7
    ldh [$32], a                                  ; $4132: $e0 $32
    pop bc                                        ; $4134: $c1
    ld b, b                                       ; $4135: $40
    and b                                         ; $4136: $a0
    nop                                           ; $4137: $00
    cp a                                          ; $4138: $bf
    add h                                         ; $4139: $84
    add e                                         ; $413a: $83
    ld d, l                                       ; $413b: $55
    and b                                         ; $413c: $a0
    add l                                         ; $413d: $85
    pop bc                                        ; $413e: $c1
    add d                                         ; $413f: $82
    ret nz                                        ; $4140: $c0

    ldh [$0b], a                                  ; $4141: $e0 $0b
    ccf                                           ; $4143: $3f
    ldh [rPCM12], a                               ; $4144: $e0 $76
    ld [c], a                                     ; $4146: $e2
    add c                                         ; $4147: $81
    ret nz                                        ; $4148: $c0

    nop                                           ; $4149: $00
    cp a                                          ; $414a: $bf
    add c                                         ; $414b: $81
    add l                                         ; $414c: $85
    dec l                                         ; $414d: $2d
    add b                                         ; $414e: $80
    ld [bc], a                                    ; $414f: $02
    pop hl                                        ; $4150: $e1
    add [hl]                                      ; $4151: $86
    ret nz                                        ; $4152: $c0

    ld bc, $c0e1                                  ; $4153: $01 $e1 $c0
    ld [c], a                                     ; $4156: $e2
    ld [bc], a                                    ; $4157: $02
    jp nz, $d3c0                                  ; $4158: $c2 $c0 $d3

    rst $38                                       ; $415b: $ff
    ld [hl], c                                    ; $415c: $71
    dec l                                         ; $415d: $2d
    cp $06                                        ; $415e: $fe $06
    ldh [$0d], a                                  ; $4160: $e0 $0d
    ld l, e                                       ; $4162: $6b
    dec c                                         ; $4163: $0d
    ld c, e                                       ; $4164: $4b
    dec c                                         ; $4165: $0d
    dec hl                                        ; $4166: $2b
    dec bc                                        ; $4167: $0b
    rrca                                          ; $4168: $0f
    dec hl                                        ; $4169: $2b
    ld l, e                                       ; $416a: $6b
    dec bc                                        ; $416b: $0b
    dec bc                                        ; $416c: $0b
    jp nz, $8281                                  ; $416d: $c2 $81 $82

    and d                                         ; $4170: $a2
    add b                                         ; $4171: $80
    rst $18                                       ; $4172: $df
    ld [hl], a                                    ; $4173: $77
    ld h, e                                       ; $4174: $63
    db $e4                                        ; $4175: $e4
    ld b, d                                       ; $4176: $42
    and b                                         ; $4177: $a0
    sub a                                         ; $4178: $97
    ld h, d                                       ; $4179: $62
    dec c                                         ; $417a: $0d
    ld b, d                                       ; $417b: $42
    ld [c], a                                     ; $417c: $e2
    ret nz                                        ; $417d: $c0

    pop hl                                        ; $417e: $e1
    dec bc                                        ; $417f: $0b
    dec c                                         ; $4180: $0d
    ld l, l                                       ; $4181: $6d
    and h                                         ; $4182: $a4
    db $e3                                        ; $4183: $e3
    push hl                                       ; $4184: $e5
    add b                                         ; $4185: $80
    rst $18                                       ; $4186: $df
    ld c, $c3                                     ; $4187: $0e $c3
    add c                                         ; $4189: $81
    ld d, [hl]                                    ; $418a: $56
    ld h, c                                       ; $418b: $61
    ld c, e                                       ; $418c: $4b
    add b                                         ; $418d: $80
    pop hl                                        ; $418e: $e1
    ld l, e                                       ; $418f: $6b
    rra                                           ; $4190: $1f
    ld c, e                                       ; $4191: $4b
    ld l, e                                       ; $4192: $6b
    ld a, [bc]                                    ; $4193: $0a
    ld a, [bc]                                    ; $4194: $0a
    dec bc                                        ; $4195: $0b
    ld [bc], a                                    ; $4196: $02
    add h                                         ; $4197: $84
    cp a                                          ; $4198: $bf
    cp [hl]                                       ; $4199: $be
    inc c                                         ; $419a: $0c
    ld h, d                                       ; $419b: $62
    adc e                                         ; $419c: $8b
    dec c                                         ; $419d: $0d
    dec bc                                        ; $419e: $0b
    ret nz                                        ; $419f: $c0

    ldh [$2b], a                                  ; $41a0: $e0 $2b
    add c                                         ; $41a2: $81
    ldh [$c1], a                                  ; $41a3: $e0 $c1
    ret nz                                        ; $41a5: $c0

    cp h                                          ; $41a6: $bc
    ret nz                                        ; $41a7: $c0

    dec bc                                        ; $41a8: $0b
    add e                                         ; $41a9: $83
    ld a, [bc]                                    ; $41aa: $0a
    ld a, [bc]                                    ; $41ab: $0a
    jp nz, Jump_05f_6ac1                          ; $41ac: $c2 $c1 $6a

    ld h, d                                       ; $41af: $62
    nop                                           ; $41b0: $00
    cp b                                          ; $41b1: $b8
    and c                                         ; $41b2: $a1
    add l                                         ; $41b3: $85
    push bc                                       ; $41b4: $c5
    ld h, c                                       ; $41b5: $61
    dec bc                                        ; $41b6: $0b
    rrca                                          ; $41b7: $0f
    dec c                                         ; $41b8: $0d
    dec hl                                        ; $41b9: $2b
    ld a, [bc]                                    ; $41ba: $0a
    ld l, d                                       ; $41bb: $6a
    ret nz                                        ; $41bc: $c0

    ld [c], a                                     ; $41bd: $e2
    cp [hl]                                       ; $41be: $be
    add b                                         ; $41bf: $80
    or c                                          ; $41c0: $b1
    ldh [rSCY], a                                 ; $41c1: $e0 $42
    pop hl                                        ; $41c3: $e1
    and b                                         ; $41c4: $a0
    and d                                         ; $41c5: $a2
    ld h, [hl]                                    ; $41c6: $66
    add b                                         ; $41c7: $80
    ld [hl], h                                    ; $41c8: $74
    ld h, c                                       ; $41c9: $61
    add e                                         ; $41ca: $83
    inc c                                         ; $41cb: $0c
    ld h, b                                       ; $41cc: $60
    inc d                                         ; $41cd: $14
    ldh [rKEY1], a                                ; $41ce: $e0 $4d
    adc h                                         ; $41d0: $8c
    ldh [$0a], a                                  ; $41d1: $e0 $0a
    ld [bc], a                                    ; $41d3: $02
    ld b, h                                       ; $41d4: $44
    add b                                         ; $41d5: $80
    dec hl                                        ; $41d6: $2b
    ld a, l                                       ; $41d7: $7d
    add c                                         ; $41d8: $81
    ret nz                                        ; $41d9: $c0

    ld [c], a                                     ; $41da: $e2
    dec b                                         ; $41db: $05
    and $49                                       ; $41dc: $e6 $49
    sbc c                                         ; $41de: $99
    ld b, $64                                     ; $41df: $06 $64

Call_05f_41e1:
    inc l                                         ; $41e1: $2c
    ld b, b                                       ; $41e2: $40
    rst $18                                       ; $41e3: $df
    dec bc                                        ; $41e4: $0b
    dec hl                                        ; $41e5: $2b
    ld a, [bc]                                    ; $41e6: $0a
    ld a, [bc]                                    ; $41e7: $0a
    dec hl                                        ; $41e8: $2b
    add c                                         ; $41e9: $81
    and b                                         ; $41ea: $a0
    dec bc                                        ; $41eb: $0b
    ld a, [bc]                                    ; $41ec: $0a
    add c                                         ; $41ed: $81
    ld c, d                                       ; $41ee: $4a
    inc a                                         ; $41ef: $3c
    add c                                         ; $41f0: $81
    add h                                         ; $41f1: $84
    ld [hl], e                                    ; $41f2: $73
    jp Jump_05f_504f                              ; $41f3: $c3 $4f $50


    ld b, d                                       ; $41f6: $42
    sub e                                         ; $41f7: $93
    pop hl                                        ; $41f8: $e1
    pop bc                                        ; $41f9: $c1
    ldh [$2a], a                                  ; $41fa: $e0 $2a
    ld [bc], a                                    ; $41fc: $02
    ld b, d                                       ; $41fd: $42
    jp nz, $c04a                                  ; $41fe: $c2 $4a $c0

    ld [c], a                                     ; $4201: $e2
    add d                                         ; $4202: $82
    jp nz, $22e8                                  ; $4203: $c2 $e8 $22

    nop                                           ; $4206: $00
    ld e, d                                       ; $4207: $5a
    add d                                         ; $4208: $82
    call nz, Call_000_20ac                        ; $4209: $c4 $ac $20
    scf                                           ; $420c: $37
    ld l, e                                       ; $420d: $6b
    ld a, [bc]                                    ; $420e: $0a
    ld a, [hl+]                                   ; $420f: $2a
    dec b                                         ; $4210: $05
    add b                                         ; $4211: $80
    dec bc                                        ; $4212: $0b
    ld l, e                                       ; $4213: $6b
    ld a, c                                       ; $4214: $79
    ldh [rIE], a                                  ; $4215: $e0 $ff
    pop bc                                        ; $4217: $c1
    ret nz                                        ; $4218: $c0

    add d                                         ; $4219: $82
    ld b, a                                       ; $421a: $47
    dec a                                         ; $421b: $3d
    db $fd                                        ; $421c: $fd
    dec bc                                        ; $421d: $0b
    ld b, b                                       ; $421e: $40
    sub [hl]                                      ; $421f: $96
    ld b, b                                       ; $4220: $40
    add $a0                                       ; $4221: $c6 $a0
    add l                                         ; $4223: $85
    ld h, d                                       ; $4224: $62
    ld l, e                                       ; $4225: $6b
    ld l, e                                       ; $4226: $6b
    ld bc, $3f4a                                  ; $4227: $01 $4a $3f
    ldh [$bf], a                                  ; $422a: $e0 $bf
    pop bc                                        ; $422c: $c1
    halt                                          ; $422d: $76
    dec h                                         ; $422e: $25
    ld c, a                                       ; $422f: $4f
    or d                                          ; $4230: $b2
    dec a                                         ; $4231: $3d
    inc hl                                        ; $4232: $23
    db $e3                                        ; $4233: $e3
    add h                                         ; $4234: $84
    ld b, d                                       ; $4235: $42
    ret nz                                        ; $4236: $c0

    ld b, [hl]                                    ; $4237: $46
    ld a, [bc]                                    ; $4238: $0a
    ld h, b                                       ; $4239: $60
    ld c, e                                       ; $423a: $4b
    dec c                                         ; $423b: $0d
    ret z                                         ; $423c: $c8

    add c                                         ; $423d: $81
    cp c                                          ; $423e: $b9
    pop bc                                        ; $423f: $c1
    cp b                                          ; $4240: $b8
    ret nz                                        ; $4241: $c0

    dec bc                                        ; $4242: $0b
    ld a, a                                       ; $4243: $7f
    ldh [$80], a                                  ; $4244: $e0 $80
    rst $00                                       ; $4246: $c7
    daa                                           ; $4247: $27
    nop                                           ; $4248: $00
    ld d, h                                       ; $4249: $54
    dec c                                         ; $424a: $0d
    ld [hl+], a                                   ; $424b: $22
    inc b                                         ; $424c: $04
    ld hl, $620b                                  ; $424d: $21 $0b $62
    ret nz                                        ; $4250: $c0

    db $e3                                        ; $4251: $e3
    cp d                                          ; $4252: $ba
    ret nz                                        ; $4253: $c0

    ld a, [bc]                                    ; $4254: $0a
    jr nz, jr_05f_428f                            ; $4255: $20 $38

    pop hl                                        ; $4257: $e1
    ld a, $c1                                     ; $4258: $3e $c1
    ldh a, [rSB]                                  ; $425a: $f0 $01
    ret                                           ; $425c: $c9


    ld e, l                                       ; $425d: $5d
    ld [$2d22], sp                                ; $425e: $08 $22 $2d
    ret nz                                        ; $4261: $c0

    ld [c], a                                     ; $4262: $e2
    dec b                                         ; $4263: $05
    ld h, b                                       ; $4264: $60
    ld b, h                                       ; $4265: $44
    add b                                         ; $4266: $80
    and b                                         ; $4267: $a0
    add hl, sp                                    ; $4268: $39
    pop bc                                        ; $4269: $c1
    dec c                                         ; $426a: $0d
    cp $a9                                        ; $426b: $fe $a9
    ld b, e                                       ; $426d: $43
    ld a, [hl-]                                   ; $426e: $3a
    jp nc, Jump_05f_4d02                          ; $426f: $d2 $02 $4d

    ccf                                           ; $4272: $3f
    ld [c], a                                     ; $4273: $e2
    ld [bc], a                                    ; $4274: $02
    ld bc, $4b80                                  ; $4275: $01 $80 $4b
    ret nz                                        ; $4278: $c0

    db $e3                                        ; $4279: $e3
    ld sp, $00c2                                  ; $427a: $31 $c2 $00
    cp a                                          ; $427d: $bf
    ld [bc], a                                    ; $427e: $02
    xor c                                         ; $427f: $a9
    adc h                                         ; $4280: $8c

Call_05f_4281:
    add b                                         ; $4281: $80
    ret nz                                        ; $4282: $c0

    db $e4                                        ; $4283: $e4
    dec c                                         ; $4284: $0d
    ld l, e                                       ; $4285: $6b
    pop bc                                        ; $4286: $c1
    ld [c], a                                     ; $4287: $e2
    dec c                                         ; $4288: $0d
    ld c, e                                       ; $4289: $4b
    cp a                                          ; $428a: $bf
    and b                                         ; $428b: $a0
    nop                                           ; $428c: $00
    cp a                                          ; $428d: $bf
    add e                                         ; $428e: $83

jr_05f_428f:
    pop hl                                        ; $428f: $e1
    xor $40                                       ; $4290: $ee $40
    nop                                           ; $4292: $00
    sub b                                         ; $4293: $90
    ld h, b                                       ; $4294: $60
    add l                                         ; $4295: $85
    ld h, b                                       ; $4296: $60
    ld a, a                                       ; $4297: $7f
    ld [c], a                                     ; $4298: $e2
    rst $30                                       ; $4299: $f7
    add c                                         ; $429a: $81
    or [hl]                                       ; $429b: $b6
    add d                                         ; $429c: $82
    jp nz, Jump_000_3440                          ; $429d: $c2 $40 $34

    ld [bc], a                                    ; $42a0: $02
    nop                                           ; $42a1: $00
    cp a                                          ; $42a2: $bf
    nop                                           ; $42a3: $00
    ret nz                                        ; $42a4: $c0

    db $e3                                        ; $42a5: $e3
    cp a                                          ; $42a6: $bf
    db $e4                                        ; $42a7: $e4
    inc bc                                        ; $42a8: $03
    and c                                         ; $42a9: $a1
    halt                                          ; $42aa: $76
    add d                                         ; $42ab: $82
    add b                                         ; $42ac: $80
    call nz, $bf00                                ; $42ad: $c4 $00 $bf
    ld d, [hl]                                    ; $42b0: $56
    ld bc, $c405                                  ; $42b1: $01 $05 $c4
    ld a, [bc]                                    ; $42b4: $0a
    cp $c3                                        ; $42b5: $fe $c3
    dec hl                                        ; $42b7: $2b
    ret nz                                        ; $42b8: $c0

    pop bc                                        ; $42b9: $c1
    ld c, e                                       ; $42ba: $4b
    cp a                                          ; $42bb: $bf
    ldh [rP1], a                                  ; $42bc: $e0 $00
    cp a                                          ; $42be: $bf
    add b                                         ; $42bf: $80
    add l                                         ; $42c0: $85
    adc c                                         ; $42c1: $89
    db $e3                                        ; $42c2: $e3
    nop                                           ; $42c3: $00
    cp [hl]                                       ; $42c4: $be
    db $e4                                        ; $42c5: $e4
    ld a, c                                       ; $42c6: $79
    and c                                         ; $42c7: $a1
    or e                                          ; $42c8: $b3
    pop bc                                        ; $42c9: $c1
    nop                                           ; $42ca: $00
    ld h, a                                       ; $42cb: $67
    nop                                           ; $42cc: $00
    cp h                                          ; $42cd: $bc
    ld a, a                                       ; $42ce: $7f
    pop hl                                        ; $42cf: $e1
    add $a0                                       ; $42d0: $c6 $a0
    cp e                                          ; $42d2: $bb
    ret z                                         ; $42d3: $c8

    ld [bc], a                                    ; $42d4: $02
    ld a, $80                                     ; $42d5: $3e $80
    ld c, e                                       ; $42d7: $4b
    ld l, e                                       ; $42d8: $6b
    add c                                         ; $42d9: $81
    nop                                           ; $42da: $00
    ld e, [hl]                                    ; $42db: $5e
    inc b                                         ; $42dc: $04
    dec h                                         ; $42dd: $25
    push bc                                       ; $42de: $c5
    jp nz, $807c                                  ; $42df: $c2 $7c $80

    ld a, [hl-]                                   ; $42e2: $3a
    jp nz, $fe00                                  ; $42e3: $c2 $00 $fe

    ld h, c                                       ; $42e6: $61
    add c                                         ; $42e7: $81
    ldh [$80], a                                  ; $42e8: $e0 $80
    and h                                         ; $42ea: $a4
    nop                                           ; $42eb: $00
    ld e, d                                       ; $42ec: $5a
    nop                                           ; $42ed: $00
    and d                                         ; $42ee: $a2
    cp [hl]                                       ; $42ef: $be
    and c                                         ; $42f0: $a1
    add $c3                                       ; $42f1: $c6 $c3
    db $fd                                        ; $42f3: $fd
    jp $be00                                      ; $42f4: $c3 $00 $be


    ld b, b                                       ; $42f7: $40
    db $fc                                        ; $42f8: $fc
    jr nz, @-$3c                                  ; $42f9: $20 $c2

    dec b                                         ; $42fb: $05
    nop                                           ; $42fc: $00
    ld e, a                                       ; $42fd: $5f
    ld d, [hl]                                    ; $42fe: $56
    add c                                         ; $42ff: $81

Call_05f_4300:
    cp a                                          ; $4300: $bf
    ld [c], a                                     ; $4301: $e2
    cp e                                          ; $4302: $bb
    and [hl]                                      ; $4303: $a6
    ld sp, $00a1                                  ; $4304: $31 $a1 $00
    ld a, [hl]                                    ; $4307: $7e
    add a                                         ; $4308: $87
    nop                                           ; $4309: $00
    ld e, a                                       ; $430a: $5f
    cp $42                                        ; $430b: $fe $42
    cp e                                          ; $430d: $bb
    add c                                         ; $430e: $81
    push bc                                       ; $430f: $c5
    db $e3                                        ; $4310: $e3
    dec [hl]                                      ; $4311: $35
    ldh [$73], a                                  ; $4312: $e0 $73
    jr nz, @-$3e                                  ; $4314: $20 $c0

    inc d                                         ; $4316: $14
    nop                                           ; $4317: $00
    cp c                                          ; $4318: $b9
    or h                                          ; $4319: $b4
    db $fc                                        ; $431a: $fc
    add b                                         ; $431b: $80
    ld a, h                                       ; $431c: $7c
    ld h, b                                       ; $431d: $60
    ld a, e                                       ; $431e: $7b
    db $e4                                        ; $431f: $e4
    cp $41                                        ; $4320: $fe $41
    ld a, [hl]                                    ; $4322: $7e
    ld b, l                                       ; $4323: $45
    nop                                           ; $4324: $00
    ld e, a                                       ; $4325: $5f
    db $fc                                        ; $4326: $fc
    add l                                         ; $4327: $85
    nop                                           ; $4328: $00
    ret nz                                        ; $4329: $c0

    pop bc                                        ; $432a: $c1
    rst $30                                       ; $432b: $f7
    add l                                         ; $432c: $85
    ei                                            ; $432d: $fb
    nop                                           ; $432e: $00
    ret nz                                        ; $432f: $c0

    nop                                           ; $4330: $00
    ld a, l                                       ; $4331: $7d
    and e                                         ; $4332: $a3
    nop                                           ; $4333: $00
    ld e, a                                       ; $4334: $5f
    ld a, [hl+]                                   ; $4335: $2a
    ld bc, $e606                                  ; $4336: $01 $06 $e6
    jr nz, @-$47                                  ; $4339: $20 $b7

    nop                                           ; $433b: $00
    push af                                       ; $433c: $f5
    ld h, d                                       ; $433d: $62
    nop                                           ; $433e: $00
    ld [hl+], a                                   ; $433f: $22
    nop                                           ; $4340: $00
    ld e, [hl]                                    ; $4341: $5e
    sbc d                                         ; $4342: $9a
    ld h, l                                       ; $4343: $65
    ld l, l                                       ; $4344: $6d
    add $c7                                       ; $4345: $c6 $c7
    push af                                       ; $4347: $f5
    ld h, c                                       ; $4348: $61
    ld hl, $400b                                  ; $4349: $21 $0b $40
    ret nz                                        ; $434c: $c0

    ld a, [hl]                                    ; $434d: $7e
    ld h, c                                       ; $434e: $61
    ld b, d                                       ; $434f: $42
    ld [de], a                                    ; $4350: $12
    or b                                          ; $4351: $b0
    ld [hl], b                                    ; $4352: $70
    ld c, l                                       ; $4353: $4d
    db $fc                                        ; $4354: $fc
    add d                                         ; $4355: $82
    jp nz, Jump_000_00c4                          ; $4356: $c2 $c4 $00

    ld b, b                                       ; $4359: $40
    jp Jump_05f_43e4                              ; $435a: $c3 $e4 $43


    nop                                           ; $435d: $00
    ld e, b                                       ; $435e: $58
    sbc $27                                       ; $435f: $de $27
    db $fc                                        ; $4361: $fc
    add b                                         ; $4362: $80
    ld b, h                                       ; $4363: $44
    ld h, c                                       ; $4364: $61
    cp $43                                        ; $4365: $fe $43
    jp nz, Jump_000_20a2                          ; $4367: $c2 $a2 $20

    add c                                         ; $436a: $81
    and c                                         ; $436b: $a1
    ld h, $41                                     ; $436c: $26 $41
    add h                                         ; $436e: $84
    rst $18                                       ; $436f: $df
    or a                                          ; $4370: $b7
    and h                                         ; $4371: $a4
    cp [hl]                                       ; $4372: $be
    and b                                         ; $4373: $a0
    ld c, e                                       ; $4374: $4b
    call nz, Call_05f_41e1                        ; $4375: $c4 $e1 $41
    ldh [rP1], a                                  ; $4378: $e0 $00
    ld b, d                                       ; $437a: $42
    call nz, Call_05f_7f80                        ; $437b: $c4 $80 $7f
    and b                                         ; $437e: $a0
    add h                                         ; $437f: $84
    ld a, [hl]                                    ; $4380: $7e
    jp $a286                                      ; $4381: $c3 $86 $a2


    cp l                                          ; $4384: $bd
    ldh [$83], a                                  ; $4385: $e0 $83
    jp $8040                                      ; $4387: $c3 $40 $80


    nop                                           ; $438a: $00
    db $e3                                        ; $438b: $e3
    jr nz, jr_05f_43f0                            ; $438c: $20 $62

    inc hl                                        ; $438e: $23
    nop                                           ; $438f: $00
    cp a                                          ; $4390: $bf
    ld a, [hl-]                                   ; $4391: $3a
    ld b, c                                       ; $4392: $41
    ei                                            ; $4393: $fb
    ld h, e                                       ; $4394: $63
    add hl, sp                                    ; $4395: $39
    ld h, e                                       ; $4396: $63
    ld [hl], l                                    ; $4397: $75
    ld b, c                                       ; $4398: $41
    cp $05                                        ; $4399: $fe $05
    nop                                           ; $439b: $00
    cp e                                          ; $439c: $bb
    cp d                                          ; $439d: $ba
    inc e                                         ; $439e: $1c
    ld b, l                                       ; $439f: $45
    db $fd                                        ; $43a0: $fd
    nop                                           ; $43a1: $00
    ld c, d                                       ; $43a2: $4a
    jp Jump_05f_637a                              ; $43a3: $c3 $7a $63


    ret nz                                        ; $43a6: $c0

    push hl                                       ; $43a7: $e5
    ld a, [hl]                                    ; $43a8: $7e
    ld [c], a                                     ; $43a9: $e2
    add b                                         ; $43aa: $80
    rst $18                                       ; $43ab: $df
    nop                                           ; $43ac: $00
    ret nz                                        ; $43ad: $c0

    pop hl                                        ; $43ae: $e1
    call nz, $bbe6                                ; $43af: $c4 $e6 $bb
    push hl                                       ; $43b2: $e5
    nop                                           ; $43b3: $00
    cp a                                          ; $43b4: $bf
    nop                                           ; $43b5: $00
    xor c                                         ; $43b6: $a9
    ld bc, $79c2                                  ; $43b7: $01 $c2 $79
    ld b, [hl]                                    ; $43ba: $46
    ld [hl], h                                    ; $43bb: $74
    ld b, d                                       ; $43bc: $42
    nop                                           ; $43bd: $00
    ld a, [hl]                                    ; $43be: $7e
    ld [hl+], a                                   ; $43bf: $22
    rst $38                                       ; $43c0: $ff
    rst $38                                       ; $43c1: $ff
    ld [bc], a                                    ; $43c2: $02
    push hl                                       ; $43c3: $e5
    ld bc, $3b81                                  ; $43c4: $01 $81 $3b
    inc h                                         ; $43c7: $24
    ld a, $c3                                     ; $43c8: $3e $c3
    add b                                         ; $43ca: $80
    ld a, a                                       ; $43cb: $7f
    nop                                           ; $43cc: $00
    and [hl]                                      ; $43cd: $a6
    add b                                         ; $43ce: $80
    ld b, c                                       ; $43cf: $41
    pop hl                                        ; $43d0: $e1
    ld bc, $34a5                                  ; $43d1: $01 $a5 $34
    ld hl, $e5c0                                  ; $43d4: $21 $c0 $e5
    add d                                         ; $43d7: $82
    ret nz                                        ; $43d8: $c0

    nop                                           ; $43d9: $00
    cp a                                          ; $43da: $bf
    add d                                         ; $43db: $82
    jp nz, $802d                                  ; $43dc: $c2 $2d $80

    add e                                         ; $43df: $83
    ld bc, $e7c0                                  ; $43e0: $01 $c0 $e7
    ld [hl], d                                    ; $43e3: $72

Jump_05f_43e4:
    jr nz, jr_05f_43e6                            ; $43e4: $20 $00

jr_05f_43e6:
    cp a                                          ; $43e6: $bf
    nop                                           ; $43e7: $00
    and a                                         ; $43e8: $a7
    nop                                           ; $43e9: $00
    add h                                         ; $43ea: $84
    rlca                                          ; $43eb: $07
    ld h, d                                       ; $43ec: $62
    dec bc                                        ; $43ed: $0b
    ld [bc], a                                    ; $43ee: $02
    ld [hl-], a                                   ; $43ef: $32

jr_05f_43f0:
    inc h                                         ; $43f0: $24
    dec l                                         ; $43f1: $2d
    nop                                           ; $43f2: $00
    cp a                                          ; $43f3: $bf
    nop                                           ; $43f4: $00
    and [hl]                                      ; $43f5: $a6
    ld b, c                                       ; $43f6: $41
    adc c                                         ; $43f7: $89
    nop                                           ; $43f8: $00
    push hl                                       ; $43f9: $e5
    nop                                           ; $43fa: $00
    ld h, e                                       ; $43fb: $63
    nop                                           ; $43fc: $00
    cp a                                          ; $43fd: $bf
    add d                                         ; $43fe: $82
    nop                                           ; $43ff: $00
    add h                                         ; $4400: $84
    dec l                                         ; $4401: $2d
    nop                                           ; $4402: $00
    db $ed                                        ; $4403: $ed
    nop                                           ; $4404: $00
    push bc                                       ; $4405: $c5
    rst $38                                       ; $4406: $ff
    rst $38                                       ; $4407: $ff
    db $fc                                        ; $4408: $fc
    inc hl                                        ; $4409: $23

jr_05f_440a:
    db $fc                                        ; $440a: $fc
    ld [bc], a                                    ; $440b: $02
    ld l, e                                       ; $440c: $6b
    ret nz                                        ; $440d: $c0

    db $fc                                        ; $440e: $fc
    jr nz, jr_05f_440a                            ; $440f: $20 $f9

    ld hl, $4241                                  ; $4411: $21 $41 $42
    add b                                         ; $4414: $80
    rst $18                                       ; $4415: $df
    nop                                           ; $4416: $00
    and a                                         ; $4417: $a7
    inc de                                        ; $4418: $13
    ldh [$0d], a                                  ; $4419: $e0 $0d
    dec l                                         ; $441b: $2d
    inc de                                        ; $441c: $13
    dec hl                                        ; $441d: $2b
    ld l, e                                       ; $441e: $6b
    rst $38                                       ; $441f: $ff
    db $e3                                        ; $4420: $e3
    nop                                           ; $4421: $00
    ld h, b                                       ; $4422: $60
    dec c                                         ; $4423: $0d
    ld [bc], a                                    ; $4424: $02
    ret nz                                        ; $4425: $c0

    nop                                           ; $4426: $00
    pop hl                                        ; $4427: $e1
    ld h, d                                       ; $4428: $62
    ld bc, $0000                                  ; $4429: $01 $00 $00
    cp a                                          ; $442c: $bf
    cp $83                                        ; $442d: $fe $83
    sub $e0                                       ; $442f: $d6 $e0
    cp $e5                                        ; $4431: $fe $e5
    ld b, h                                       ; $4433: $44
    pop bc                                        ; $4434: $c1
    nop                                           ; $4435: $00
    ld e, a                                       ; $4436: $5f
    nop                                           ; $4437: $00
    xor b                                         ; $4438: $a8
    ret nz                                        ; $4439: $c0

    db $e3                                        ; $443a: $e3
    nop                                           ; $443b: $00
    sub d                                         ; $443c: $92
    add b                                         ; $443d: $80
    ld a, [$86e1]                                 ; $443e: $fa $e1 $86
    inc bc                                        ; $4441: $03
    db $fc                                        ; $4442: $fc
    db $e4                                        ; $4443: $e4
    nop                                           ; $4444: $00
    cp a                                          ; $4445: $bf
    or [hl]                                       ; $4446: $b6
    ld l, d                                       ; $4447: $6a
    jp z, Jump_000_3dd1                           ; $4448: $ca $d1 $3d

    ld [$0000], a                                 ; $444b: $ea $00 $00
    nop                                           ; $444e: $00
    cp a                                          ; $444f: $bf
    and b                                         ; $4450: $a0
    and b                                         ; $4451: $a0
    and b                                         ; $4452: $a0
    call c, $dedd                                 ; $4453: $dc $dd $de
    ld a, [$d8eb]                                 ; $4456: $fa $eb $d8
    rra                                           ; $4459: $1f
    reti                                          ; $445a: $d9


    and b                                         ; $445b: $a0
    and b                                         ; $445c: $a0
    jp nc, $fcd3                                  ; $445d: $d2 $d3 $fc

    rst $28                                       ; $4460: $ef
    add sp, -$1f                                  ; $4461: $e8 $e1
    ret nc                                        ; $4463: $d0

    db $ed                                        ; $4464: $ed
    cp a                                          ; $4465: $bf
    db $e4                                        ; $4466: $e4
    rst $18                                       ; $4467: $df
    ldh [$e1], a                                  ; $4468: $e0 $e1
    ld [c], a                                     ; $446a: $e2
    db $e3                                        ; $446b: $e3
    ld a, [$a0ea]                                 ; $446c: $fa $ea $a0
    rst $38                                       ; $446f: $ff
    jp c, $d0db                                   ; $4470: $da $db $d0

    pop de                                        ; $4473: $d1
    call nc, $a0d5                                ; $4474: $d4 $d5 $a0
    and b                                         ; $4477: $a0
    cp $fc                                        ; $4478: $fe $fc
    db $eb                                        ; $447a: $eb
    ret nc                                        ; $447b: $d0

    pop de                                        ; $447c: $d1
    jp c, $d6db                                   ; $447d: $da $db $d6

    rst $10                                       ; $4480: $d7
    and b                                         ; $4481: $a0
    ld a, [hl]                                    ; $4482: $7e
    ret nc                                        ; $4483: $d0

    db $ec                                        ; $4484: $ec
    ld [$e6e5], a                                 ; $4485: $ea $e5 $e6
    rst $20                                       ; $4488: $e7
    add sp, -$17                                  ; $4489: $e8 $e9
    ld a, [$58ea]                                 ; $448b: $fa $ea $58
    ld l, l                                       ; $448e: $6d
    ldh [$82], a                                  ; $448f: $e0 $82
    pop hl                                        ; $4491: $e1
    ld h, [hl]                                    ; $4492: $66
    ldh [$9f], a                                  ; $4493: $e0 $9f
    sbc l                                         ; $4495: $9d
    rst $38                                       ; $4496: $ff
    push hl                                       ; $4497: $e5
    sbc a                                         ; $4498: $9f
    ld a, [hl]                                    ; $4499: $7e
    and $e0                                       ; $449a: $e6 $e0
    ret nc                                        ; $449c: $d0

    db $ec                                        ; $449d: $ec
    ld b, e                                       ; $449e: $43
    xor $2f                                       ; $449f: $ee $2f
    ldh [$82], a                                  ; $44a1: $e0 $82
    ld [c], a                                     ; $44a3: $e2
    call nz, $a2e0                                ; $44a4: $c4 $e0 $a2
    sbc h                                         ; $44a7: $9c
    ld b, [hl]                                    ; $44a8: $46
    rst $38                                       ; $44a9: $ff
    dec bc                                        ; $44aa: $0b
    inc bc                                        ; $44ab: $03
    add hl, bc                                    ; $44ac: $09
    inc bc                                        ; $44ad: $03
    dec bc                                        ; $44ae: $0b
    ld b, [hl]                                    ; $44af: $46
    ld b, [hl]                                    ; $44b0: $46
    xor [hl]                                      ; $44b1: $ae
    rst $00                                       ; $44b2: $c7
    sbc h                                         ; $44b3: $9c
    sbc l                                         ; $44b4: $9d
    sbc a                                         ; $44b5: $9f
    ld a, [hl]                                    ; $44b6: $7e
    db $e3                                        ; $44b7: $e3
    inc de                                        ; $44b8: $13
    db $ed                                        ; $44b9: $ed
    ld b, e                                       ; $44ba: $43
    xor $a0                                       ; $44bb: $ee $a0
    sub $dd                                       ; $44bd: $d6 $dd
    rst $10                                       ; $44bf: $d7
    inc b                                         ; $44c0: $04
    pop hl                                        ; $44c1: $e1
    sbc a                                         ; $44c2: $9f
    sbc h                                         ; $44c3: $9c
    ld b, [hl]                                    ; $44c4: $46
    rst $38                                       ; $44c5: $ff
    ldh [rSC], a                                  ; $44c6: $e0 $02
    dec c                                         ; $44c8: $0d
    rst $38                                       ; $44c9: $ff
    ld bc, $9800                                  ; $44ca: $01 $00 $98
    dec c                                         ; $44cd: $0d
    ld [bc], a                                    ; $44ce: $02
    ld b, [hl]                                    ; $44cf: $46
    xor a                                         ; $44d0: $af
    ld b, [hl]                                    ; $44d1: $46
    ld h, e                                       ; $44d2: $63
    ld b, [hl]                                    ; $44d3: $46
    sbc [hl]                                      ; $44d4: $9e
    db $ec                                        ; $44d5: $ec
    pop bc                                        ; $44d6: $c1
    inc de                                        ; $44d7: $13
    rst $28                                       ; $44d8: $ef
    ld b, e                                       ; $44d9: $43
    rst $28                                       ; $44da: $ef
    ret c                                         ; $44db: $d8

    reti                                          ; $44dc: $d9


    inc b                                         ; $44dd: $04
    pop hl                                        ; $44de: $e1
    rst $38                                       ; $44df: $ff
    sbc [hl]                                      ; $44e0: $9e
    ld b, [hl]                                    ; $44e1: $46
    xor [hl]                                      ; $44e2: $ae
    ld b, [hl]                                    ; $44e3: $46
    ld [bc], a                                    ; $44e4: $02
    rlca                                          ; $44e5: $07
    rrca                                          ; $44e6: $0f
    sbc b                                         ; $44e7: $98
    cp a                                          ; $44e8: $bf
    sbc c                                         ; $44e9: $99
    sbc b                                         ; $44ea: $98
    sbc b                                         ; $44eb: $98
    sbc b                                         ; $44ec: $98
    ld c, $0c                                     ; $44ed: $0e $0c
    or h                                          ; $44ef: $b4
    ldh [$9c], a                                  ; $44f0: $e0 $9c
    or c                                          ; $44f2: $b1
    sbc a                                         ; $44f3: $9f
    ldh a, [$c0]                                  ; $44f4: $f0 $c0
    inc de                                        ; $44f6: $13
    ld a, [c]                                     ; $44f7: $f2
    add b                                         ; $44f8: $80
    call z, $dbda                                 ; $44f9: $cc $da $db
    ld b, $e1                                     ; $44fc: $06 $e1
    sbc h                                         ; $44fe: $9c
    rst $38                                       ; $44ff: $ff
    ld b, [hl]                                    ; $4500: $46
    xor a                                         ; $4501: $af
    inc c                                         ; $4502: $0c
    ld c, $9b                                     ; $4503: $0e $9b
    rrca                                          ; $4505: $0f
    rlca                                          ; $4506: $07
    rlca                                          ; $4507: $07
    ld b, $bc                                     ; $4508: $06 $bc
    ldh [$98], a                                  ; $450a: $e0 $98
    ld [bc], a                                    ; $450c: $02
    or e                                          ; $450d: $b3
    ldh [$7f], a                                  ; $450e: $e0 $7f
    pop hl                                        ; $4510: $e1
    ld h, e                                       ; $4511: $63
    pop hl                                        ; $4512: $e1
    add b                                         ; $4513: $80
    rst $18                                       ; $4514: $df
    nop                                           ; $4515: $00
    ldh [$fc], a                                  ; $4516: $e0 $fc
    add c                                         ; $4518: $81
    ldh [rSCY], a                                 ; $4519: $e0 $42
    pop hl                                        ; $451b: $e1
    rlca                                          ; $451c: $07
    ld [bc], a                                    ; $451d: $02
    ld b, c                                       ; $451e: $41
    dec hl                                        ; $451f: $2b
    dec hl                                        ; $4520: $2b
    ld [bc], a                                    ; $4521: $02
    rst $10                                       ; $4522: $d7
    rrca                                          ; $4523: $0f
    sbc b                                         ; $4524: $98
    ld [$e13f], sp                                ; $4525: $08 $3f $e1
    and c                                         ; $4528: $a1
    add sp, -$1f                                  ; $4529: $e8 $e1
    ret c                                         ; $452b: $d8

    reti                                          ; $452c: $d9


    ld hl, sp-$80                                 ; $452d: $f8 $80
    rst $18                                       ; $452f: $df
    inc b                                         ; $4530: $04
    pop bc                                        ; $4531: $c1
    ld bc, $aee1                                  ; $4532: $01 $e1 $ae
    ld b, [hl]                                    ; $4535: $46
    ld b, l                                       ; $4536: $45
    ld a, [hl+]                                   ; $4537: $2a
    ld h, $5f                                     ; $4538: $26 $5f
    jr nz, jr_05f_455c                            ; $453a: $20 $20

    dec l                                         ; $453c: $2d
    ld [$3f9a], sp                                ; $453d: $08 $9a $3f
    ld [c], a                                     ; $4540: $e2
    sbc [hl]                                      ; $4541: $9e
    db $ec                                        ; $4542: $ec
    and c                                         ; $4543: $a1
    db $db                                        ; $4544: $db
    jp c, $80db                                   ; $4545: $da $db $80

    sbc $d6                                       ; $4548: $de $d6
    rst $10                                       ; $454a: $d7
    inc d                                         ; $454b: $14
    pop bc                                        ; $454c: $c1
    and c                                         ; $454d: $a1
    ld b, [hl]                                    ; $454e: $46
    inc c                                         ; $454f: $0c
    set 0, b                                      ; $4550: $cb $c0
    ret nz                                        ; $4552: $c0

    db $e4                                        ; $4553: $e4
    rrca                                          ; $4554: $0f
    ld [bc], a                                    ; $4555: $02
    nop                                           ; $4556: $00
    push hl                                       ; $4557: $e5
    sub e                                         ; $4558: $93
    xor a                                         ; $4559: $af
    add b                                         ; $455a: $80
    rst $08                                       ; $455b: $cf

jr_05f_455c:
    add d                                         ; $455c: $82
    and e                                         ; $455d: $a3
    ld e, [hl]                                    ; $455e: $5e
    ccf                                           ; $455f: $3f
    ld [c], a                                     ; $4560: $e2
    ld b, [hl]                                    ; $4561: $46
    ld b, l                                       ; $4562: $45
    ld a, $22                                     ; $4563: $3e $22
    ld b, b                                       ; $4565: $40
    ldh [$08], a                                  ; $4566: $e0 $08
    ld bc, $e6e6                                  ; $4568: $01 $e6 $e6
    add b                                         ; $456b: $80
    rst $18                                       ; $456c: $df
    sub $d7                                       ; $456d: $d6 $d7
    add d                                         ; $456f: $82
    and e                                         ; $4570: $a3
    ret nz                                        ; $4571: $c0

    db $e3                                        ; $4572: $e3
    ld b, [hl]                                    ; $4573: $46
    ld a, $35                                     ; $4574: $3e $35
    inc sp                                        ; $4576: $33
    ld b, d                                       ; $4577: $42
    ld [$c0c1], sp                                ; $4578: $08 $c1 $c0
    ld b, b                                       ; $457b: $40
    jp $d1d0                                      ; $457c: $c3 $d0 $d1


    add b                                         ; $457f: $80
    call c, $a061                                 ; $4580: $dc $61 $a0
    db $fc                                        ; $4583: $fc
    inc b                                         ; $4584: $04
    and h                                         ; $4585: $a4
    nop                                           ; $4586: $00
    db $e3                                        ; $4587: $e3
    ld b, [hl]                                    ; $4588: $46
    ld b, l                                       ; $4589: $45
    ld a, [hl-]                                   ; $458a: $3a
    dec [hl]                                      ; $458b: $35
    ld b, b                                       ; $458c: $40
    ld [$4180], sp                                ; $458d: $08 $80 $41
    jp nz, $c300                                  ; $4590: $c2 $00 $c3

    nop                                           ; $4593: $00
    cp h                                          ; $4594: $bc
    rst $00                                       ; $4595: $c7
    add b                                         ; $4596: $80
    inc b                                         ; $4597: $04
    and h                                         ; $4598: $a4
    add b                                         ; $4599: $80
    pop bc                                        ; $459a: $c1
    res 4, b                                      ; $459b: $cb $a0
    ld b, d                                       ; $459d: $42
    rrca                                          ; $459e: $0f
    dec [hl]                                      ; $459f: $35
    dec [hl]                                      ; $45a0: $35
    ld b, d                                       ; $45a1: $42
    ld [bc], a                                    ; $45a2: $02
    ld [bc], a                                    ; $45a3: $02
    pop hl                                        ; $45a4: $e1
    ret nz                                        ; $45a5: $c0

    and b                                         ; $45a6: $a0
    db $ec                                        ; $45a7: $ec
    add c                                         ; $45a8: $81
    nop                                           ; $45a9: $00
    cp h                                          ; $45aa: $bc
    db $fc                                        ; $45ab: $fc
    dec b                                         ; $45ac: $05
    jp nz, $a782                                  ; $45ad: $c2 $82 $a7

    ld b, [hl]                                    ; $45b0: $46
    ld b, [hl]                                    ; $45b1: $46
    add hl, sp                                    ; $45b2: $39
    dec [hl]                                      ; $45b3: $35
    dec [hl]                                      ; $45b4: $35
    add hl, sp                                    ; $45b5: $39
    inc c                                         ; $45b6: $0c
    ld a, b                                       ; $45b7: $78
    and b                                         ; $45b8: $a0
    ld [bc], a                                    ; $45b9: $02
    ret nz                                        ; $45ba: $c0

    ld b, [hl]                                    ; $45bb: $46
    sbc [hl]                                      ; $45bc: $9e
    nop                                           ; $45bd: $00
    cp a                                          ; $45be: $bf
    dec a                                         ; $45bf: $3d
    db $e3                                        ; $45c0: $e3
    add [hl]                                      ; $45c1: $86
    add c                                         ; $45c2: $81
    add d                                         ; $45c3: $82
    ret nz                                        ; $45c4: $c0

    ld d, $01                                     ; $45c5: $16 $01
    db $e4                                        ; $45c7: $e4
    dec [hl]                                      ; $45c8: $35
    ld a, $76                                     ; $45c9: $3e $76
    db $e3                                        ; $45cb: $e3
    sbc h                                         ; $45cc: $9c
    nop                                           ; $45cd: $00
    and b                                         ; $45ce: $a0
    db $e4                                        ; $45cf: $e4
    pop bc                                        ; $45d0: $c1
    add b                                         ; $45d1: $80
    db $dd                                        ; $45d2: $dd
    jr nz, jr_05f_45f1                            ; $45d3: $20 $1c

    add d                                         ; $45d5: $82
    add c                                         ; $45d6: $81
    push hl                                       ; $45d7: $e5
    ld bc, $c0e0                                  ; $45d8: $01 $e0 $c0
    ld [c], a                                     ; $45db: $e2
    push af                                       ; $45dc: $f5
    add b                                         ; $45dd: $80
    and c                                         ; $45de: $a1
    rst $10                                       ; $45df: $d7
    ld h, b                                       ; $45e0: $60
    jp $e8ae                                      ; $45e1: $c3 $ae $e8


    nop                                           ; $45e4: $00
    or b                                          ; $45e5: $b0
    inc b                                         ; $45e6: $04
    add c                                         ; $45e7: $81
    add d                                         ; $45e8: $82
    and c                                         ; $45e9: $a1
    xor [hl]                                      ; $45ea: $ae
    cp $e1                                        ; $45eb: $fe $e1
    ld b, h                                       ; $45ed: $44
    inc a                                         ; $45ee: $3c
    dec [hl]                                      ; $45ef: $35
    rlca                                          ; $45f0: $07

jr_05f_45f1:
    dec [hl]                                      ; $45f1: $35
    ld a, [hl-]                                   ; $45f2: $3a
    ld b, l                                       ; $45f3: $45
    ld b, c                                       ; $45f4: $41
    db $e3                                        ; $45f5: $e3
    ld l, d                                       ; $45f6: $6a
    add b                                         ; $45f7: $80
    jp $80ae                                      ; $45f8: $c3 $ae $80


    ret nc                                        ; $45fb: $d0

    add [hl]                                      ; $45fc: $86
    ld h, d                                       ; $45fd: $62
    ld e, d                                       ; $45fe: $5a
    jp $af80                                      ; $45ff: $c3 $80 $af


    cp $e1                                        ; $4602: $fe $e1
    ld b, b                                       ; $4604: $40
    dec [hl]                                      ; $4605: $35
    rst $38                                       ; $4606: $ff
    ldh [rLCDC], a                                ; $4607: $e0 $40
    ld b, c                                       ; $4609: $41
    db $e3                                        ; $460a: $e3
    ld b, b                                       ; $460b: $40
    db $ec                                        ; $460c: $ec
    ld h, e                                       ; $460d: $63
    nop                                           ; $460e: $00
    cp e                                          ; $460f: $bb
    ld b, a                                       ; $4610: $47
    ld h, b                                       ; $4611: $60
    add [hl]                                      ; $4612: $86
    ld h, c                                       ; $4613: $61
    jp $bf81                                      ; $4614: $c3 $81 $bf


    pop hl                                        ; $4617: $e1
    ld b, [hl]                                    ; $4618: $46
    add b                                         ; $4619: $80
    pop hl                                        ; $461a: $e1
    rra                                           ; $461b: $1f
    ld [hl], $45                                  ; $461c: $36 $45
    ld b, [hl]                                    ; $461e: $46
    db $eb                                        ; $461f: $eb
    db $ec                                        ; $4620: $ec
    add d                                         ; $4621: $82
    add $00                                       ; $4622: $c6 $00
    cp e                                          ; $4624: $bb
    add l                                         ; $4625: $85
    add b                                         ; $4626: $80
    db $fc                                        ; $4627: $fc
    ld [$4161], sp                                ; $4628: $08 $61 $41
    pop hl                                        ; $462b: $e1
    xor a                                         ; $462c: $af
    ld b, l                                       ; $462d: $45
    xor a                                         ; $462e: $af
    xor [hl]                                      ; $462f: $ae
    ld b, l                                       ; $4630: $45
    ld [hl], $3e                                  ; $4631: $36 $3e
    pop bc                                        ; $4633: $c1
    ld [c], a                                     ; $4634: $e2
    ld b, [hl]                                    ; $4635: $46
    db $ed                                        ; $4636: $ed
    xor $9c                                       ; $4637: $ee $9c
    sbc a                                         ; $4639: $9f
    nop                                           ; $463a: $00
    ld h, h                                       ; $463b: $64
    nop                                           ; $463c: $00
    cp c                                          ; $463d: $b9
    ld hl, sp+$23                                 ; $463e: $f8 $23
    ld h, b                                       ; $4640: $60
    add d                                         ; $4641: $82
    jp nz, Jump_05f_61c5                          ; $4642: $c2 $c5 $61

    xor a                                         ; $4645: $af
    ld b, l                                       ; $4646: $45
    ld b, a                                       ; $4647: $47
    ld d, d                                       ; $4648: $52
    xor a                                         ; $4649: $af
    ld a, [bc]                                    ; $464a: $0a
    ld bc, $40e1                                  ; $464b: $01 $e1 $40
    cp b                                          ; $464e: $b8
    and d                                         ; $464f: $a2
    sbc [hl]                                      ; $4650: $9e
    db $f4                                        ; $4651: $f4
    ld b, b                                       ; $4652: $40
    ld h, [hl]                                    ; $4653: $66
    and c                                         ; $4654: $a1
    nop                                           ; $4655: $00
    cp c                                          ; $4656: $b9
    adc c                                         ; $4657: $89
    ld b, c                                       ; $4658: $41
    cp $9e                                        ; $4659: $fe $9e
    ld b, d                                       ; $465b: $42
    and c                                         ; $465c: $a1
    sub c                                         ; $465d: $91
    sub b                                         ; $465e: $90
    sub c                                         ; $465f: $91
    ld b, [hl]                                    ; $4660: $46
    ld d, c                                       ; $4661: $51
    ld e, [hl]                                    ; $4662: $5e
    dec bc                                        ; $4663: $0b
    ld e, b                                       ; $4664: $58
    ld b, h                                       ; $4665: $44
    add c                                         ; $4666: $81
    ld [c], a                                     ; $4667: $e2
    ld b, l                                       ; $4668: $45
    add e                                         ; $4669: $83
    ld h, h                                       ; $466a: $64
    ld l, d                                       ; $466b: $6a
    ld b, d                                       ; $466c: $42
    add b                                         ; $466d: $80
    reti                                          ; $466e: $d9


    adc c                                         ; $466f: $89
    ld b, b                                       ; $4670: $40
    cp $86                                        ; $4671: $fe $86
    ld b, d                                       ; $4673: $42
    and b                                         ; $4674: $a0
    sbc [hl]                                      ; $4675: $9e
    sub b                                         ; $4676: $90
    sub b                                         ; $4677: $90
    sub b                                         ; $4678: $90
    ld b, [hl]                                    ; $4679: $46
    ld b, h                                       ; $467a: $44
    ld a, e                                       ; $467b: $7b
    ld c, l                                       ; $467c: $4d
    ld h, c                                       ; $467d: $61
    jp nz, Jump_000_3cc0                          ; $467e: $c2 $c0 $3c

    ld b, h                                       ; $4681: $44
    ld b, a                                       ; $4682: $47
    ld d, l                                       ; $4683: $55
    ld b, d                                       ; $4684: $42
    jp $82f8                                      ; $4685: $c3 $f8 $82


    ld b, e                                       ; $4688: $43
    add b                                         ; $4689: $80
    ld a, [hl]                                    ; $468a: $7e
    ld [$9f40], sp                                ; $468b: $08 $40 $9f
    sbc h                                         ; $468e: $9c
    sub b                                         ; $468f: $90
    or b                                          ; $4690: $b0
    sub b                                         ; $4691: $90
    ld l, a                                       ; $4692: $6f
    ld b, l                                       ; $4693: $45
    ld b, a                                       ; $4694: $47
    ld h, b                                       ; $4695: $60
    ld d, d                                       ; $4696: $52
    ld b, c                                       ; $4697: $41
    ld [c], a                                     ; $4698: $e2
    ld e, [hl]                                    ; $4699: $5e
    ld d, [hl]                                    ; $469a: $56
    rst $38                                       ; $469b: $ff
    ret nz                                        ; $469c: $c0

    ret c                                         ; $469d: $d8

    inc b                                         ; $469e: $04
    add e                                         ; $469f: $83
    nop                                           ; $46a0: $00
    ld e, a                                       ; $46a1: $5f
    inc b                                         ; $46a2: $04
    add d                                         ; $46a3: $82
    sbc [hl]                                      ; $46a4: $9e
    sub c                                         ; $46a5: $91
    add b                                         ; $46a6: $80
    ldh [rLYC], a                                 ; $46a7: $e0 $45
    ld d, e                                       ; $46a9: $53
    ld a, l                                       ; $46aa: $7d
    ld d, e                                       ; $46ab: $53
    jp nz, Jump_000_3cc1                          ; $46ac: $c2 $c1 $3c

    ld b, h                                       ; $46af: $44
    ld c, l                                       ; $46b0: $4d
    ld e, b                                       ; $46b1: $58
    ld b, h                                       ; $46b2: $44
    or $40                                        ; $46b3: $f6 $40
    db $e4                                        ; $46b5: $e4
    add d                                         ; $46b6: $82
    and c                                         ; $46b7: $a1
    nop                                           ; $46b8: $00
    ld e, a                                       ; $46b9: $5f
    ld [$2286], a                                 ; $46ba: $ea $86 $22
    ret nz                                        ; $46bd: $c0

    pop hl                                        ; $46be: $e1
    sub c                                         ; $46bf: $91
    ld b, l                                       ; $46c0: $45
    scf                                           ; $46c1: $37
    ei                                            ; $46c2: $fb
    dec a                                         ; $46c3: $3d
    jr c, jr_05f_46c9                             ; $46c4: $38 $03

    ret nz                                        ; $46c6: $c0

    ld [hl], $42                                  ; $46c7: $36 $42

jr_05f_46c9:
    ld e, [hl]                                    ; $46c9: $5e
    ld h, c                                       ; $46ca: $61
    ld d, l                                       ; $46cb: $55
    ldh [$82], a                                  ; $46cc: $e0 $82
    ld b, [hl]                                    ; $46ce: $46
    nop                                           ; $46cf: $00
    cp h                                          ; $46d0: $bc
    and e                                         ; $46d1: $a3
    jr nz, @-$78                                  ; $46d2: $20 $86

    ld hl, $6205                                  ; $46d4: $21 $05 $62
    add hl, sp                                    ; $46d7: $39
    dec [hl]                                      ; $46d8: $35
    xor h                                         ; $46d9: $ac
    ld e, $c4                                     ; $46da: $1e $c4
    and b                                         ; $46dc: $a0
    xor h                                         ; $46dd: $ac
    ld b, b                                       ; $46de: $40
    ld b, a                                       ; $46df: $47
    ld h, b                                       ; $46e0: $60

Call_05f_46e1:
    ret nz                                        ; $46e1: $c0

    ldh [$82], a                                  ; $46e2: $e0 $82
    ld b, l                                       ; $46e4: $45
    nop                                           ; $46e5: $00
    cp e                                          ; $46e6: $bb
    call c, $e321                                 ; $46e7: $dc $21 $e3
    add [hl]                                      ; $46ea: $86
    ld h, h                                       ; $46eb: $64
    ld a, $35                                     ; $46ec: $3e $35
    xor l                                         ; $46ee: $ad
    add h                                         ; $46ef: $84
    and b                                         ; $46f0: $a0
    xor l                                         ; $46f1: $ad
    ld b, h                                       ; $46f2: $44
    inc bc                                        ; $46f3: $03
    ld c, l                                       ; $46f4: $4d
    or h                                          ; $46f5: $b4
    nop                                           ; $46f6: $00
    ld [c], a                                     ; $46f7: $e2
    ld a, [hl]                                    ; $46f8: $7e
    push bc                                       ; $46f9: $c5
    add b                                         ; $46fa: $80
    db $dd                                        ; $46fb: $dd
    inc b                                         ; $46fc: $04
    ld h, c                                       ; $46fd: $61
    add $22                                       ; $46fe: $c6 $22

Jump_05f_4700:
    add a                                         ; $4700: $87
    add b                                         ; $4701: $80
    dec de                                        ; $4702: $1b
    dec [hl]                                      ; $4703: $35
    or c                                          ; $4704: $b1
    pop bc                                        ; $4705: $c1
    pop bc                                        ; $4706: $c1
    ld h, c                                       ; $4707: $61
    ld e, d                                       ; $4708: $5a
    push af                                       ; $4709: $f5
    add d                                         ; $470a: $82
    nop                                           ; $470b: $00
    cp a                                          ; $470c: $bf
    add [hl]                                      ; $470d: $86
    ld b, $38                                     ; $470e: $06 $38
    ld b, e                                       ; $4710: $43
    add d                                         ; $4711: $82
    ret nz                                        ; $4712: $c0

    pop hl                                        ; $4713: $e1
    inc b                                         ; $4714: $04
    and c                                         ; $4715: $a1
    ld d, d                                       ; $4716: $52
    ld h, c                                       ; $4717: $61
    ld d, l                                       ; $4718: $55
    ld [hl], $a2                                  ; $4719: $36 $a2
    nop                                           ; $471b: $00
    cp a                                          ; $471c: $bf
    ld [hl], b                                    ; $471d: $70
    add [hl]                                      ; $471e: $86
    ld b, $46                                     ; $471f: $06 $46
    ld [hl+], a                                   ; $4721: $22
    rst $00                                       ; $4722: $c7
    ld h, b                                       ; $4723: $60
    call nz, Call_05f_4281                        ; $4724: $c4 $81 $42
    ld b, l                                       ; $4727: $45
    ld e, e                                       ; $4728: $5b
    or [hl]                                       ; $4729: $b6
    add d                                         ; $472a: $82
    ld b, b                                       ; $472b: $40
    ld b, d                                       ; $472c: $42
    ld hl, $bf00                                  ; $472d: $21 $00 $bf
    add [hl]                                      ; $4730: $86
    inc bc                                        ; $4731: $03
    ld b, e                                       ; $4732: $43
    add d                                         ; $4733: $82
    dec b                                         ; $4734: $05
    and c                                         ; $4735: $a1
    add e                                         ; $4736: $83
    add b                                         ; $4737: $80
    add hl, sp                                    ; $4738: $39
    ld [hl], a                                    ; $4739: $77
    add h                                         ; $473a: $84
    ld [hl], b                                    ; $473b: $70
    ld bc, $0082                                  ; $473c: $01 $82 $00
    cp a                                          ; $473f: $bf
    nop                                           ; $4740: $00
    jp Jump_05f_6206                              ; $4741: $c3 $06 $62


    ld b, l                                       ; $4744: $45
    ld [hl], $3b                                  ; $4745: $36 $3b
    ld b, e                                       ; $4747: $43
    add b                                         ; $4748: $80
    rlca                                          ; $4749: $07
    ld a, [hl-]                                   ; $474a: $3a
    ld b, l                                       ; $474b: $45
    xor a                                         ; $474c: $af
    ld [hl], l                                    ; $474d: $75
    add d                                         ; $474e: $82
    ld [bc], a                                    ; $474f: $02
    ld hl, $c100                                  ; $4750: $21 $00 $c1
    nop                                           ; $4753: $00
    cp a                                          ; $4754: $bf
    inc b                                         ; $4755: $04
    ld h, [hl]                                    ; $4756: $66
    dec sp                                        ; $4757: $3b
    ld b, l                                       ; $4758: $45
    ld b, e                                       ; $4759: $43
    ld a, l                                       ; $475a: $7d
    pop hl                                        ; $475b: $e1
    jr c, @+$3f                                   ; $475c: $38 $3d

    scf                                           ; $475e: $37
    cp l                                          ; $475f: $bd
    pop hl                                        ; $4760: $e1
    pop bc                                        ; $4761: $c1
    ld bc, $0038                                  ; $4762: $01 $38 $00
    pop hl                                        ; $4765: $e1
    nop                                           ; $4766: $00
    cp a                                          ; $4767: $bf
    inc b                                         ; $4768: $04
    inc h                                         ; $4769: $24
    xor [hl]                                      ; $476a: $ae
    ld b, [hl]                                    ; $476b: $46
    or e                                          ; $476c: $b3
    ld b, d                                       ; $476d: $42
    ld h, d                                       ; $476e: $62
    inc a                                         ; $476f: $3c
    ld [c], a                                     ; $4770: $e2
    nop                                           ; $4771: $00
    add b                                         ; $4772: $80
    ld b, e                                       ; $4773: $43
    add d                                         ; $4774: $82
    ld b, c                                       ; $4775: $41
    nop                                           ; $4776: $00
    cp a                                          ; $4777: $bf
    inc b                                         ; $4778: $04
    inc h                                         ; $4779: $24
    adc l                                         ; $477a: $8d
    and b                                         ; $477b: $a0
    cp e                                          ; $477c: $bb
    push bc                                       ; $477d: $c5
    cp a                                          ; $477e: $bf
    ld b, b                                       ; $477f: $40
    add d                                         ; $4780: $82
    nop                                           ; $4781: $00
    nop                                           ; $4782: $00
    ld b, c                                       ; $4783: $41
    nop                                           ; $4784: $00
    nop                                           ; $4785: $00
    cp a                                          ; $4786: $bf
    inc b                                         ; $4787: $04
    daa                                           ; $4788: $27
    ld c, e                                       ; $4789: $4b
    ld b, d                                       ; $478a: $42
    ld bc, $ff61                                  ; $478b: $01 $61 $ff
    ld b, d                                       ; $478e: $42
    ccf                                           ; $478f: $3f
    and d                                         ; $4790: $a2
    nop                                           ; $4791: $00
    cp a                                          ; $4792: $bf
    nop                                           ; $4793: $00
    nop                                           ; $4794: $00
    and e                                         ; $4795: $a3
    ld a, [hl]                                    ; $4796: $7e
    add c                                         ; $4797: $81
    ld b, d                                       ; $4798: $42
    ld bc, $00c1                                  ; $4799: $01 $c1 $00
    ccf                                           ; $479c: $3f
    db $e3                                        ; $479d: $e3
    cp l                                          ; $479e: $bd
    ld h, b                                       ; $479f: $60
    ld a, [hl]                                    ; $47a0: $7e
    adc b                                         ; $47a1: $88
    nop                                           ; $47a2: $00
    ld e, a                                       ; $47a3: $5f
    nop                                           ; $47a4: $00
    ld a, [hl]                                    ; $47a5: $7e
    ld h, e                                       ; $47a6: $63
    ld bc, $fc44                                  ; $47a7: $01 $44 $fc
    ld h, c                                       ; $47aa: $61
    rst $38                                       ; $47ab: $ff
    add e                                         ; $47ac: $83
    nop                                           ; $47ad: $00
    ld e, a                                       ; $47ae: $5f
    nop                                           ; $47af: $00
    ld b, [hl]                                    ; $47b0: $46
    ld b, c                                       ; $47b1: $41
    ld [hl+], a                                   ; $47b2: $22
    ld bc, $0043                                  ; $47b3: $01 $43 $00
    ccf                                           ; $47b6: $3f
    ld b, [hl]                                    ; $47b7: $46
    rst $38                                       ; $47b8: $ff
    jr nz, jr_05f_47bb                            ; $47b9: $20 $00

jr_05f_47bb:
    ld e, a                                       ; $47bb: $5f
    nop                                           ; $47bc: $00
    ld b, h                                       ; $47bd: $44
    pop bc                                        ; $47be: $c1
    inc b                                         ; $47bf: $04
    ld b, c                                       ; $47c0: $41
    ld b, d                                       ; $47c1: $42
    ccf                                           ; $47c2: $3f
    ld hl, $c1b2                                  ; $47c3: $21 $b2 $c1
    nop                                           ; $47c6: $00
    nop                                           ; $47c7: $00
    jr nz, jr_05f_47ca                            ; $47c8: $20 $00

jr_05f_47ca:
    ld e, a                                       ; $47ca: $5f
    nop                                           ; $47cb: $00
    ld b, h                                       ; $47cc: $44
    ld a, l                                       ; $47cd: $7d
    ld b, d                                       ; $47ce: $42
    ld b, c                                       ; $47cf: $41
    ld b, e                                       ; $47d0: $43
    ret nz                                        ; $47d1: $c0

    ld hl, $03c0                                  ; $47d2: $21 $c0 $03
    nop                                           ; $47d5: $00
    cp a                                          ; $47d6: $bf
    nop                                           ; $47d7: $00
    add b                                         ; $47d8: $80
    ld bc, $c37e                                  ; $47d9: $01 $7e $c3
    rst $38                                       ; $47dc: $ff
    inc bc                                        ; $47dd: $03
    add d                                         ; $47de: $82
    nop                                           ; $47df: $00
    ld b, c                                       ; $47e0: $41
    push bc                                       ; $47e1: $c5
    nop                                           ; $47e2: $00
    db $e4                                        ; $47e3: $e4
    nop                                           ; $47e4: $00
    ld e, a                                       ; $47e5: $5f
    ld a, [hl]                                    ; $47e6: $7e
    ret                                           ; $47e7: $c9


    nop                                           ; $47e8: $00
    cp e                                          ; $47e9: $bb
    add d                                         ; $47ea: $82
    ld b, c                                       ; $47eb: $41
    push hl                                       ; $47ec: $e5
    nop                                           ; $47ed: $00
    cp a                                          ; $47ee: $bf
    or a                                          ; $47ef: $b7
    and d                                         ; $47f0: $a2
    inc e                                         ; $47f1: $1c
    pop bc                                        ; $47f2: $c1
    db $fc                                        ; $47f3: $fc
    add d                                         ; $47f4: $82
    call z, $fba0                                 ; $47f5: $cc $a0 $fb
    ld h, c                                       ; $47f8: $61
    nop                                           ; $47f9: $00
    ld b, c                                       ; $47fa: $41
    and $00                                       ; $47fb: $e6 $00
    cp [hl]                                       ; $47fd: $be
    dec a                                         ; $47fe: $3d
    add h                                         ; $47ff: $84
    db $fc                                        ; $4800: $fc
    ld b, e                                       ; $4801: $43
    ld c, h                                       ; $4802: $4c
    ld [bc], a                                    ; $4803: $02
    cp e                                          ; $4804: $bb
    ld h, c                                       ; $4805: $61
    ld b, c                                       ; $4806: $41
    and $00                                       ; $4807: $e6 $00
    add d                                         ; $4809: $82
    nop                                           ; $480a: $00
    add b                                         ; $480b: $80
    rst $18                                       ; $480c: $df
    sbc d                                         ; $480d: $9a
    ld hl, $64fc                                  ; $480e: $21 $fc $64
    ld b, b                                       ; $4811: $40
    ld [c], a                                     ; $4812: $e2
    add d                                         ; $4813: $82
    call nz, $0041                                ; $4814: $c4 $41 $00
    nop                                           ; $4817: $00
    cp a                                          ; $4818: $bf
    cp l                                          ; $4819: $bd
    ld b, c                                       ; $481a: $41
    nop                                           ; $481b: $00
    ld a, [hl]                                    ; $481c: $7e
    and e                                         ; $481d: $a3
    rst $38                                       ; $481e: $ff
    and e                                         ; $481f: $a3
    nop                                           ; $4820: $00
    jr nz, @+$03                                  ; $4821: $20 $01

    ld hl, $44c0                                  ; $4823: $21 $c0 $44
    nop                                           ; $4826: $00
    cp a                                          ; $4827: $bf
    dec a                                         ; $4828: $3d
    ld hl, $c100                                  ; $4829: $21 $00 $c1
    inc c                                         ; $482c: $0c
    db $fc                                        ; $482d: $fc
    nop                                           ; $482e: $00
    rst $38                                       ; $482f: $ff
    jp Jump_000_3f45                              ; $4830: $c3 $45 $3f


    jp $8042                                      ; $4833: $c3 $42 $80


    pop bc                                        ; $4836: $c1
    nop                                           ; $4837: $00
    cp a                                          ; $4838: $bf
    dec a                                         ; $4839: $3d
    inc h                                         ; $483a: $24
    nop                                           ; $483b: $00
    jr jr_05f_48a0                                ; $483c: $18 $62

    ld a, l                                       ; $483e: $7d
    add [hl]                                      ; $483f: $86
    ld a, b                                       ; $4840: $78
    and d                                         ; $4841: $a2
    add b                                         ; $4842: $80
    jp $bf00                                      ; $4843: $c3 $00 $bf


    nop                                           ; $4846: $00
    and [hl]                                      ; $4847: $a6

Jump_05f_4848:
    ld bc, $fcc3                                  ; $4848: $01 $c3 $fc
    ld [$0000], a                                 ; $484b: $ea $00 $00
    cp a                                          ; $484e: $bf
    nop                                           ; $484f: $00
    xor b                                         ; $4850: $a8
    ret nz                                        ; $4851: $c0

    add l                                         ; $4852: $85
    cp d                                          ; $4853: $ba
    jp hl                                         ; $4854: $e9


    ld a, [hl]                                    ; $4855: $7e
    jr nz, jr_05f_4858                            ; $4856: $20 $00

jr_05f_4858:
    cp a                                          ; $4858: $bf
    nop                                           ; $4859: $00
    and h                                         ; $485a: $a4
    ld a, [hl]                                    ; $485b: $7e
    ld h, e                                       ; $485c: $63
    ld b, $3d                                     ; $485d: $06 $3d
    ld h, b                                       ; $485f: $60
    ld b, c                                       ; $4860: $41
    ld b, e                                       ; $4861: $43
    db $fd                                        ; $4862: $fd
    ldh [$c0], a                                  ; $4863: $e0 $c0
    add e                                         ; $4865: $83
    nop                                           ; $4866: $00
    cp a                                          ; $4867: $bf
    nop                                           ; $4868: $00
    and a                                         ; $4869: $a7
    add c                                         ; $486a: $81
    add c                                         ; $486b: $81
    inc d                                         ; $486c: $14

Jump_05f_486d:
    ld bc, $bd80                                  ; $486d: $01 $80 $bd
    ld b, b                                       ; $4870: $40
    dec sp                                        ; $4871: $3b
    db $fd                                        ; $4872: $fd
    ldh [$36], a                                  ; $4873: $e0 $36
    cp e                                          ; $4875: $bb
    ld b, b                                       ; $4876: $40
    nop                                           ; $4877: $00
    cp a                                          ; $4878: $bf
    nop                                           ; $4879: $00
    xor b                                         ; $487a: $a8
    ld e, [hl]                                    ; $487b: $5e
    nop                                           ; $487c: $00
    add h                                         ; $487d: $84
    ld b, h                                       ; $487e: $44
    inc a                                         ; $487f: $3c
    and h                                         ; $4880: $a4
    ld h, h                                       ; $4881: $64
    rst $38                                       ; $4882: $ff
    ldh [$a5], a                                  ; $4883: $e0 $a5
    rst $38                                       ; $4885: $ff
    ld h, d                                       ; $4886: $62
    ld hl, sp+$00                                 ; $4887: $f8 $00
    cp a                                          ; $4889: $bf
    nop                                           ; $488a: $00
    and a                                         ; $488b: $a7
    nop                                           ; $488c: $00
    add h                                         ; $488d: $84
    ld b, d                                       ; $488e: $42
    dec [hl]                                      ; $488f: $35
    ld l, c                                       ; $4890: $69
    and e                                         ; $4891: $a3
    dec [hl]                                      ; $4892: $35
    rra                                           ; $4893: $1f
    dec [hl]                                      ; $4894: $35
    and e                                         ; $4895: $a3
    ld l, d                                       ; $4896: $6a
    dec [hl]                                      ; $4897: $35
    ld b, d                                       ; $4898: $42
    ld bc, $0083                                  ; $4899: $01 $83 $00
    cp a                                          ; $489c: $bf
    nop                                           ; $489d: $00
    and d                                         ; $489e: $a2
    nop                                           ; $489f: $00

jr_05f_48a0:
    nop                                           ; $48a0: $00
    add c                                         ; $48a1: $81
    nop                                           ; $48a2: $00
    and d                                         ; $48a3: $a2
    ret nz                                        ; $48a4: $c0

    ldh [rSTAT], a                                ; $48a5: $e0 $41
    ld h, c                                       ; $48a7: $61
    ret nz                                        ; $48a8: $c0

    ldh [rP1], a                                  ; $48a9: $e0 $00
    ld h, $00                                     ; $48ab: $26 $00
    cp a                                          ; $48ad: $bf
    nop                                           ; $48ae: $00
    add $76                                       ; $48af: $c6 $76
    ld bc, $6b81                                  ; $48b1: $01 $81 $6b
    ld [hl], c                                    ; $48b4: $71
    rst $38                                       ; $48b5: $ff
    ldh [$6d], a                                  ; $48b6: $e0 $6d
    inc a                                         ; $48b8: $3c
    ld b, h                                       ; $48b9: $44
    ret nz                                        ; $48ba: $c0

    ld b, d                                       ; $48bb: $42
    add b                                         ; $48bc: $80
    nop                                           ; $48bd: $00
    cp a                                          ; $48be: $bf
    nop                                           ; $48bf: $00
    and e                                         ; $48c0: $a3
    nop                                           ; $48c1: $00
    add [hl]                                      ; $48c2: $86
    ret nz                                        ; $48c3: $c0

    rst $00                                       ; $48c4: $c7
    ret nz                                        ; $48c5: $c0

    add d                                         ; $48c6: $82
    nop                                           ; $48c7: $00
    cp a                                          ; $48c8: $bf
    nop                                           ; $48c9: $00
    xor b                                         ; $48ca: $a8
    sbc a                                         ; $48cb: $9f
    scf                                           ; $48cc: $37
    sbc l                                         ; $48cd: $9d
    sbc l                                         ; $48ce: $9d
    sbc h                                         ; $48cf: $9c
    ld b, b                                       ; $48d0: $40
    rst $00                                       ; $48d1: $c7
    sbc h                                         ; $48d2: $9c
    sbc l                                         ; $48d3: $9d
    ld bc, $00a1                                  ; $48d4: $01 $a1 $00
    cp a                                          ; $48d7: $bf
    stop                                          ; $48d8: $10 $00
    and d                                         ; $48da: $a2
    ld a, [hl]                                    ; $48db: $7e
    ld h, h                                       ; $48dc: $64
    cp l                                          ; $48dd: $bd
    pop hl                                        ; $48de: $e1
    cp $e5                                        ; $48df: $fe $e5
    sbc a                                         ; $48e1: $9f
    db $ec                                        ; $48e2: $ec
    ld b, c                                       ; $48e3: $41
    nop                                           ; $48e4: $00
    cp a                                          ; $48e5: $bf
    nop                                           ; $48e6: $00
    and e                                         ; $48e7: $a3
    nop                                           ; $48e8: $00
    ld a, [hl]                                    ; $48e9: $7e
    add h                                         ; $48ea: $84
    rst $38                                       ; $48eb: $ff
    ld [$c104], a                                 ; $48ec: $ea $04 $c1
    nop                                           ; $48ef: $00
    cp a                                          ; $48f0: $bf
    cp l                                          ; $48f1: $bd
    ld b, e                                       ; $48f2: $43
    ld a, [hl]                                    ; $48f3: $7e
    rst $20                                       ; $48f4: $e7
    db $fc                                        ; $48f5: $fc
    rst $20                                       ; $48f6: $e7
    inc b                                         ; $48f7: $04
    pop bc                                        ; $48f8: $c1
    nop                                           ; $48f9: $00
    nop                                           ; $48fa: $00
    or e                                          ; $48fb: $b3
    nop                                           ; $48fc: $00
    nop                                           ; $48fd: $00
    nop                                           ; $48fe: $00
    pop bc                                        ; $48ff: $c1
    nop                                           ; $4900: $00
    rst $38                                       ; $4901: $ff
    rst $38                                       ; $4902: $ff
    rst $38                                       ; $4903: $ff
    rst $38                                       ; $4904: $ff
    rst $38                                       ; $4905: $ff
    rst $38                                       ; $4906: $ff
    rst $38                                       ; $4907: $ff
    rst $38                                       ; $4908: $ff
    rst $38                                       ; $4909: $ff
    rst $38                                       ; $490a: $ff
    nop                                           ; $490b: $00
    nop                                           ; $490c: $00
    ld bc, $fe80                                  ; $490d: $01 $80 $fe
    ldh [rIE], a                                  ; $4910: $e0 $ff
    rst $38                                       ; $4912: $ff
    rst $38                                       ; $4913: $ff
    rst $38                                       ; $4914: $ff
    rst $38                                       ; $4915: $ff
    add sp, $00                                   ; $4916: $e8 $00
    nop                                           ; $4918: $00
    nop                                           ; $4919: $00
    ld [bc], a                                    ; $491a: $02
    nop                                           ; $491b: $00
    ld h, $04                                     ; $491c: $26 $04
    ld [bc], a                                    ; $491e: $02
    ld bc, $061a                                  ; $491f: $01 $1a $06
    ld [bc], a                                    ; $4922: $02
    ld [bc], a                                    ; $4923: $02
    daa                                           ; $4924: $27
    rlca                                          ; $4925: $07
    ld [bc], a                                    ; $4926: $02
    inc bc                                        ; $4927: $03
    dec de                                        ; $4928: $1b
    add hl, bc                                    ; $4929: $09
    ld [bc], a                                    ; $492a: $02
    inc b                                         ; $492b: $04
    ld h, $0b                                     ; $492c: $26 $0b
    ld [bc], a                                    ; $492e: $02
    dec b                                         ; $492f: $05
    dec de                                        ; $4930: $1b
    dec c                                         ; $4931: $0d
    ld [bc], a                                    ; $4932: $02
    ld b, $25                                     ; $4933: $06 $25
    rrca                                          ; $4935: $0f
    ld [bc], a                                    ; $4936: $02
    rlca                                          ; $4937: $07
    jr jr_05f_494c                                ; $4938: $18 $12

    ld [bc], a                                    ; $493a: $02
    ld [$121a], sp                                ; $493b: $08 $1a $12
    ld [bc], a                                    ; $493e: $02
    add hl, bc                                    ; $493f: $09
    inc e                                         ; $4940: $1c
    ld [de], a                                    ; $4941: $12
    ld [bc], a                                    ; $4942: $02
    ld a, [bc]                                    ; $4943: $0a
    inc h                                         ; $4944: $24
    ld [de], a                                    ; $4945: $12
    ld [bc], a                                    ; $4946: $02
    dec bc                                        ; $4947: $0b
    rla                                           ; $4948: $17
    inc de                                        ; $4949: $13
    ld [bc], a                                    ; $494a: $02
    inc c                                         ; $494b: $0c

jr_05f_494c:
    add hl, de                                    ; $494c: $19
    inc de                                        ; $494d: $13
    ld [bc], a                                    ; $494e: $02
    dec c                                         ; $494f: $0d
    dec de                                        ; $4950: $1b
    inc de                                        ; $4951: $13
    ld [bc], a                                    ; $4952: $02
    ld c, $18                                     ; $4953: $0e $18
    inc d                                         ; $4955: $14
    ld [bc], a                                    ; $4956: $02
    rrca                                          ; $4957: $0f
    ld a, [de]                                    ; $4958: $1a
    inc d                                         ; $4959: $14
    ld [bc], a                                    ; $495a: $02
    db $10                                        ; $495b: $10
    rla                                           ; $495c: $17
    dec d                                         ; $495d: $15
    ld [bc], a                                    ; $495e: $02
    ld de, $151b                                  ; $495f: $11 $1b $15
    ld [bc], a                                    ; $4962: $02
    ld [de], a                                    ; $4963: $12
    inc hl                                        ; $4964: $23
    ld d, $02                                     ; $4965: $16 $02
    inc de                                        ; $4967: $13
    inc h                                         ; $4968: $24
    ld a, [de]                                    ; $4969: $1a
    ld [bc], a                                    ; $496a: $02
    inc d                                         ; $496b: $14
    add hl, de                                    ; $496c: $19
    inc e                                         ; $496d: $1c
    ld [bc], a                                    ; $496e: $02
    dec d                                         ; $496f: $15
    dec e                                         ; $4970: $1d
    inc e                                         ; $4971: $1c
    ld [bc], a                                    ; $4972: $02
    ld d, $23                                     ; $4973: $16 $23
    ld e, $02                                     ; $4975: $1e $02
    rla                                           ; $4977: $17
    dec h                                         ; $4978: $25
    ld e, $02                                     ; $4979: $1e $02
    jr @+$24                                      ; $497b: $18 $22

    rra                                           ; $497d: $1f
    ld [bc], a                                    ; $497e: $02
    add hl, de                                    ; $497f: $19
    inc h                                         ; $4980: $24
    rra                                           ; $4981: $1f
    ld [bc], a                                    ; $4982: $02
    ld a, [de]                                    ; $4983: $1a
    ld hl, $0220                                  ; $4984: $21 $20 $02
    dec de                                        ; $4987: $1b
    inc hl                                        ; $4988: $23
    jr nz, jr_05f_498d                            ; $4989: $20 $02

    inc e                                         ; $498b: $1c
    dec h                                         ; $498c: $25

jr_05f_498d:
    jr nz, jr_05f_4991                            ; $498d: $20 $02

    dec e                                         ; $498f: $1d
    dec d                                         ; $4990: $15

jr_05f_4991:
    ld hl, $1e02                                  ; $4991: $21 $02 $1e
    jr nz, jr_05f_49b7                            ; $4994: $20 $21

    ld [bc], a                                    ; $4996: $02
    rra                                           ; $4997: $1f
    ld [hl+], a                                   ; $4998: $22
    ld hl, $2002                                  ; $4999: $21 $02 $20
    inc h                                         ; $499c: $24
    ld hl, $2102                                  ; $499d: $21 $02 $21
    inc hl                                        ; $49a0: $23
    ld [hl+], a                                   ; $49a1: $22
    ld [bc], a                                    ; $49a2: $02
    ld [hl+], a                                   ; $49a3: $22
    dec h                                         ; $49a4: $25
    ld [hl+], a                                   ; $49a5: $22
    ld [bc], a                                    ; $49a6: $02
    inc hl                                        ; $49a7: $23
    rla                                           ; $49a8: $17
    inc h                                         ; $49a9: $24
    ld [bc], a                                    ; $49aa: $02
    inc h                                         ; $49ab: $24
    dec h                                         ; $49ac: $25
    dec h                                         ; $49ad: $25
    ld [bc], a                                    ; $49ae: $02
    dec h                                         ; $49af: $25
    ld a, [de]                                    ; $49b0: $1a
    ld h, $02                                     ; $49b1: $26 $02
    ld h, $25                                     ; $49b3: $26 $25
    add hl, hl                                    ; $49b5: $29
    ld [bc], a                                    ; $49b6: $02

jr_05f_49b7:
    daa                                           ; $49b7: $27
    ld a, [de]                                    ; $49b8: $1a
    ld a, [hl+]                                   ; $49b9: $2a
    ld [bc], a                                    ; $49ba: $02
    jr z, jr_05f_49e1                             ; $49bb: $28 $24

    inc l                                         ; $49bd: $2c
    ld [bc], a                                    ; $49be: $02
    add hl, hl                                    ; $49bf: $29
    add hl, de                                    ; $49c0: $19
    ld l, $02                                     ; $49c1: $2e $02
    ld a, [hl+]                                   ; $49c3: $2a
    inc hl                                        ; $49c4: $23
    cpl                                           ; $49c5: $2f
    ld [bc], a                                    ; $49c6: $02
    dec hl                                        ; $49c7: $2b
    ld a, [de]                                    ; $49c8: $1a
    ld [hl-], a                                   ; $49c9: $32
    ld [bc], a                                    ; $49ca: $02
    inc l                                         ; $49cb: $2c
    inc h                                         ; $49cc: $24
    ld [hl-], a                                   ; $49cd: $32
    ld [bc], a                                    ; $49ce: $02
    dec l                                         ; $49cf: $2d
    add hl, de                                    ; $49d0: $19
    ld [hl], $02                                  ; $49d1: $36 $02
    ld l, $25                                     ; $49d3: $2e $25
    ld [hl], $02                                  ; $49d5: $36 $02
    cpl                                           ; $49d7: $2f
    add hl, de                                    ; $49d8: $19
    ld a, [hl-]                                   ; $49d9: $3a
    ld [bc], a                                    ; $49da: $02
    jr nc, jr_05f_4a02                            ; $49db: $30 $25

    ld a, [hl-]                                   ; $49dd: $3a
    rst $38                                       ; $49de: $ff
    rst $38                                       ; $49df: $ff
    rst $38                                       ; $49e0: $ff

jr_05f_49e1:
    jp hl                                         ; $49e1: $e9


    ld c, c                                       ; $49e2: $49
    inc d                                         ; $49e3: $14
    ld c, [hl]                                    ; $49e4: $4e
    db $fd                                        ; $49e5: $fd
    ld d, d                                       ; $49e6: $52
    jr jr_05f_4a3c                                ; $49e7: $18 $53

    ld l, a                                       ; $49e9: $6f
    dec c                                         ; $49ea: $0d
    ld c, $0e                                     ; $49eb: $0e $0e
    ld c, $fc                                     ; $49ed: $0e $fc
    pop af                                        ; $49ef: $f1
    ld c, l                                       ; $49f0: $4d
    ld c, l                                       ; $49f1: $4d
    db $fc                                        ; $49f2: $fc
    ldh a, [rP1]                                  ; $49f3: $f0 $00
    db $d3                                        ; $49f5: $d3
    ldh [$fc], a                                  ; $49f6: $e0 $fc
    pop hl                                        ; $49f8: $e1
    call z, $fee9                                 ; $49f9: $cc $e9 $fe
    db $fd                                        ; $49fc: $fd
    ret nc                                        ; $49fd: $d0

    ld [c], a                                     ; $49fe: $e2
    call z, $b0e1                                 ; $49ff: $cc $e1 $b0

jr_05f_4a02:
    ldh [rIE], a                                  ; $4a02: $e0 $ff
    rst $38                                       ; $4a04: $ff
    call c, $eac6                                 ; $4a05: $dc $c6 $ea
    ld a, [hl]                                    ; $4a08: $7e
    ld [c], a                                     ; $4a09: $e2
    ld c, l                                       ; $4a0a: $4d
    ld c, l                                       ; $4a0b: $4d
    dec c                                         ; $4a0c: $0d
    cp $e0                                        ; $4a0d: $fe $e0
    ld c, l                                       ; $4a0f: $4d
    ld c, l                                       ; $4a10: $4d
    pop hl                                        ; $4a11: $e1
    dec l                                         ; $4a12: $2d
    ld hl, sp-$20                                 ; $4a13: $f8 $e0
    ld a, [hl]                                    ; $4a15: $7e
    db $e3                                        ; $4a16: $e3
    rst $38                                       ; $4a17: $ff
    rst $38                                       ; $4a18: $ff
    add d                                         ; $4a19: $82
    jp hl                                         ; $4a1a: $e9


    dec c                                         ; $4a1b: $0d
    dec c                                         ; $4a1c: $0d
    ld l, l                                       ; $4a1d: $6d
    dec c                                         ; $4a1e: $0d
    ld l, e                                       ; $4a1f: $6b
    rst $38                                       ; $4a20: $ff
    pop hl                                        ; $4a21: $e1
    ld c, l                                       ; $4a22: $4d
    dec l                                         ; $4a23: $2d
    ld a, [hl]                                    ; $4a24: $7e
    push hl                                       ; $4a25: $e5
    cp h                                          ; $4a26: $bc
    db $ed                                        ; $4a27: $ed
    ld b, $ef                                     ; $4a28: $06 $ef
    cp $e3                                        ; $4a2a: $fe $e3
    ld a, h                                       ; $4a2c: $7c
    ld c, h                                       ; $4a2d: $4c
    pop hl                                        ; $4a2e: $e1
    jp nz, Jump_000_2be0                          ; $4a2f: $c2 $e0 $2b

    ld a, [bc]                                    ; $4a32: $0a
    ld a, [bc]                                    ; $4a33: $0a
    dec bc                                        ; $4a34: $0b
    dec bc                                        ; $4a35: $0b
    cp a                                          ; $4a36: $bf
    ld [c], a                                     ; $4a37: $e2
    add b                                         ; $4a38: $80
    ld [hl], l                                    ; $4a39: $75
    ldh [$ae], a                                  ; $4a3a: $e0 $ae

jr_05f_4a3c:
    ld [c], a                                     ; $4a3c: $e2
    adc $cc                                       ; $4a3d: $ce $cc
    ld a, d                                       ; $4a3f: $7a
    db $ed                                        ; $4a40: $ed
    ld [de], a                                    ; $4a41: $12
    pop hl                                        ; $4a42: $e1
    jp nz, Jump_000_0cc1                          ; $4a43: $c2 $c1 $0c

    pop hl                                        ; $4a46: $e1
    ld c, l                                       ; $4a47: $4d
    cp $c1                                        ; $4a48: $fe $c1
    ldh [$2a], a                                  ; $4a4a: $e0 $2a
    ld a, [bc]                                    ; $4a4c: $0a
    ld a, [bc]                                    ; $4a4d: $0a
    ld l, d                                       ; $4a4e: $6a
    dec bc                                        ; $4a4f: $0b
    dec c                                         ; $4a50: $0d
    ld l, e                                       ; $4a51: $6b
    rlca                                          ; $4a52: $07
    ld l, e                                       ; $4a53: $6b
    dec l                                         ; $4a54: $2d

jr_05f_4a55:
    dec c                                         ; $4a55: $0d
    db $fc                                        ; $4a56: $fc
    rst $18                                       ; $4a57: $df
    jp z, $82e3                                   ; $4a58: $ca $e3 $82

    jp $e246                                      ; $4a5b: $c3 $46 $e2


    add d                                         ; $4a5e: $82
    ldh [rTMA], a                                 ; $4a5f: $e0 $06
    ret nz                                        ; $4a61: $c0

    ldh [$2a], a                                  ; $4a62: $e0 $2a
    ld c, e                                       ; $4a64: $4b
    ret nz                                        ; $4a65: $c0

    ldh [$3e], a                                  ; $4a66: $e0 $3e
    ldh [$f7], a                                  ; $4a68: $e0 $f7
    ret nz                                        ; $4a6a: $c0

    ret nz                                        ; $4a6b: $c0

    rst $38                                       ; $4a6c: $ff
    jr z, jr_05f_4a55                             ; $4a6d: $28 $e6

    ld l, $07                                     ; $4a6f: $2e $07
    ld [c], a                                     ; $4a71: $e2
    ld a, [bc]                                    ; $4a72: $0a
    ld a, [hl+]                                   ; $4a73: $2a
    dec bc                                        ; $4a74: $0b
    rst $38                                       ; $4a75: $ff
    ldh [$2b], a                                  ; $4a76: $e0 $2b
    ld a, $e4                                     ; $4a78: $3e $e4
    ld d, d                                       ; $4a7a: $52
    ldh a, [$88]                                  ; $4a7b: $f0 $88
    ld [$4dd6], sp                                ; $4a7d: $08 $d6 $4d

Jump_05f_4a80:
    ldh [rWY], a                                  ; $4a80: $e0 $4a
    ldh [$2b], a                                  ; $4a82: $e0 $2b
    pop bc                                        ; $4a84: $c1
    pop hl                                        ; $4a85: $e1
    ret nz                                        ; $4a86: $c0

    ldh [$3e], a                                  ; $4a87: $e0 $3e
    pop hl                                        ; $4a89: $e1
    ld l, l                                       ; $4a8a: $6d
    xor b                                         ; $4a8b: $a8
    nop                                           ; $4a8c: $00
    rst $18                                       ; $4a8d: $df
    ld [$88c8], sp                                ; $4a8e: $08 $c8 $88
    ret nz                                        ; $4a91: $c0

    dec c                                         ; $4a92: $0d
    pop bc                                        ; $4a93: $c1
    ldh [rWX], a                                  ; $4a94: $e0 $4b
    add b                                         ; $4a96: $80
    ldh [rWX], a                                  ; $4a97: $e0 $4b
    rlca                                          ; $4a99: $07
    ld l, e                                       ; $4a9a: $6b
    ld a, [bc]                                    ; $4a9b: $0a
    ld c, d                                       ; $4a9c: $4a
    ret nz                                        ; $4a9d: $c0

    db $e4                                        ; $4a9e: $e4
    rst $38                                       ; $4a9f: $ff
    rst $38                                       ; $4aa0: $ff
    jp c, $d5c1                                   ; $4aa1: $da $c1 $d5

    ret nz                                        ; $4aa4: $c0

    ld c, c                                       ; $4aa5: $49
    jp Jump_000_2b47                              ; $4aa6: $c3 $47 $2b


    ld c, e                                       ; $4aa9: $4b
    ld c, e                                       ; $4aaa: $4b
    jp $ffe0                                      ; $4aab: $c3 $e0 $ff


    pop hl                                        ; $4aae: $e1
    ld [hl], d                                    ; $4aaf: $72
    ldh [$6d], a                                  ; $4ab0: $e0 $6d
    ld a, [hl]                                    ; $4ab2: $7e
    jp nz, $ffc4                                  ; $4ab3: $c2 $c4 $ff

    rst $38                                       ; $4ab6: $ff
    inc b                                         ; $4ab7: $04
    db $e3                                        ; $4ab8: $e3
    dec c                                         ; $4ab9: $0d
    ld [$c0e1], sp                                ; $4aba: $08 $e1 $c0
    pop hl                                        ; $4abd: $e1
    pop bc                                        ; $4abe: $c1
    pop hl                                        ; $4abf: $e1
    ld a, [hl+]                                   ; $4ac0: $2a
    ld c, e                                       ; $4ac1: $4b
    ld b, b                                       ; $4ac2: $40
    ld b, c                                       ; $4ac3: $41
    pop hl                                        ; $4ac4: $e1
    ld l, d                                       ; $4ac5: $6a
    call nz, $d700                                ; $4ac6: $c4 $00 $d7
    ld [$8dc3], sp                                ; $4ac9: $08 $c3 $8d
    and b                                         ; $4acc: $a0
    call z, $0da0                                 ; $4acd: $cc $a0 $0d
    ld a, [bc]                                    ; $4ad0: $0a
    pop hl                                        ; $4ad1: $e1
    add hl, bc                                    ; $4ad2: $09
    dec bc                                        ; $4ad3: $0b
    add b                                         ; $4ad4: $80
    db $e3                                        ; $4ad5: $e3
    ld a, a                                       ; $4ad6: $7f
    jp nz, Jump_000_006d                          ; $4ad7: $c2 $6d $00

    rst $18                                       ; $4ada: $df
    ld [$8cc4], sp                                ; $4adb: $08 $c4 $8c
    and c                                         ; $4ade: $a1
    set 0, d                                      ; $4adf: $cb $c2
    ld h, [hl]                                    ; $4ae1: $66
    pop bc                                        ; $4ae2: $c1
    ldh [rOCPD], a                                ; $4ae3: $e0 $6b
    ld c, e                                       ; $4ae5: $4b
    cp c                                          ; $4ae6: $b9
    ret nz                                        ; $4ae7: $c0

    cp $e1                                        ; $4ae8: $fe $e1
    ld l, e                                       ; $4aea: $6b
    dec l                                         ; $4aeb: $2d
    ld c, b                                       ; $4aec: $48
    rst $38                                       ; $4aed: $ff
    nop                                           ; $4aee: $00
    inc e                                         ; $4aef: $1c
    and e                                         ; $4af0: $a3
    ld b, d                                       ; $4af1: $42
    db $e3                                        ; $4af2: $e3
    add [hl]                                      ; $4af3: $86
    jp nz, $e2c1                                  ; $4af4: $c2 $c1 $e2

    jp nz, Jump_000_01e2                          ; $4af7: $c2 $e2 $01

    ldh [rP1], a                                  ; $4afa: $e0 $00
    cp a                                          ; $4afc: $bf
    add d                                         ; $4afd: $82
    db $e4                                        ; $4afe: $e4
    jr nz, @+$52                                  ; $4aff: $20 $50

    and b                                         ; $4b01: $a0
    add l                                         ; $4b02: $85
    pop bc                                        ; $4b03: $c1
    add b                                         ; $4b04: $80
    db $e3                                        ; $4b05: $e3
    pop bc                                        ; $4b06: $c1
    ldh [$fe], a                                  ; $4b07: $e0 $fe
    add c                                         ; $4b09: $81
    dec c                                         ; $4b0a: $0d
    ld b, d                                       ; $4b0b: $42
    jp nz, $aec0                                  ; $4b0c: $c2 $c0 $ae

    ld l, h                                       ; $4b0f: $6c
    nop                                           ; $4b10: $00
    adc d                                         ; $4b11: $8a
    ld b, [hl]                                    ; $4b12: $46
    and d                                         ; $4b13: $a2
    ld c, l                                       ; $4b14: $4d
    dec c                                         ; $4b15: $0d
    ld de, $6ba1                                  ; $4b16: $11 $a1 $6b
    dec hl                                        ; $4b19: $2b
    ld b, $c3                                     ; $4b1a: $06 $c3
    pop bc                                        ; $4b1c: $c1
    dec bc                                        ; $4b1d: $0b
    pop bc                                        ; $4b1e: $c1
    pop hl                                        ; $4b1f: $e1
    cp d                                          ; $4b20: $ba
    add b                                         ; $4b21: $80
    pop bc                                        ; $4b22: $c1
    ld [c], a                                     ; $4b23: $e2
    inc b                                         ; $4b24: $04
    call z, $f373                                 ; $4b25: $cc $73 $f3
    ld c, l                                       ; $4b28: $4d
    ld c, l                                       ; $4b29: $4d
    inc c                                         ; $4b2a: $0c
    ld [de], a                                    ; $4b2b: $12
    and c                                         ; $4b2c: $a1
    ld b, c                                       ; $4b2d: $41
    db $e3                                        ; $4b2e: $e3
    dec bc                                        ; $4b2f: $0b
    ld l, e                                       ; $4b30: $6b
    ld b, $a1                                     ; $4b31: $06 $a1
    add l                                         ; $4b33: $85
    ldh [$b2], a                                  ; $4b34: $e0 $b2
    add c                                         ; $4b36: $81
    xor e                                         ; $4b37: $ab
    ld h, b                                       ; $4b38: $60
    inc e                                         ; $4b39: $1c
    nop                                           ; $4b3a: $00
    rst $38                                       ; $4b3b: $ff
    sub $61                                       ; $4b3c: $d6 $61
    dec bc                                        ; $4b3e: $0b
    dec c                                         ; $4b3f: $0d
    dec hl                                        ; $4b40: $2b
    ld b, [hl]                                    ; $4b41: $46
    ret nz                                        ; $4b42: $c0

    add c                                         ; $4b43: $81
    db $e3                                        ; $4b44: $e3
    add h                                         ; $4b45: $84
    add c                                         ; $4b46: $81
    jr nz, jr_05f_4b8e                            ; $4b47: $20 $45

    add b                                         ; $4b49: $80
    jp Jump_000_02e3                              ; $4b4a: $c3 $e3 $02


    cp a                                          ; $4b4d: $bf
    ld b, [hl]                                    ; $4b4e: $46
    ld h, d                                       ; $4b4f: $62
    jp z, Jump_05f_4a80                           ; $4b50: $ca $80 $4a

    ld c, b                                       ; $4b53: $48
    and e                                         ; $4b54: $a3
    add d                                         ; $4b55: $82
    ret nz                                        ; $4b56: $c0

    ld h, b                                       ; $4b57: $60
    ld b, a                                       ; $4b58: $47
    jp nz, $8368                                  ; $4b59: $c2 $68 $83

    ld a, [hl+]                                   ; $4b5c: $2a
    add e                                         ; $4b5d: $83
    cp $99                                        ; $4b5e: $fe $99
    ld [$6da2], sp                                ; $4b60: $08 $a2 $6d
    dec bc                                        ; $4b63: $0b
    inc c                                         ; $4b64: $0c
    add c                                         ; $4b65: $81
    adc b                                         ; $4b66: $88
    pop bc                                        ; $4b67: $c1
    and c                                         ; $4b68: $a1
    ld [bc], a                                    ; $4b69: $02
    ret nz                                        ; $4b6a: $c0

    cp a                                          ; $4b6b: $bf
    ld h, b                                       ; $4b6c: $60
    dec bc                                        ; $4b6d: $0b
    ld [$d6a3], sp                                ; $4b6e: $08 $a3 $d6
    ld d, l                                       ; $4b71: $55
    ld c, $6e                                     ; $4b72: $0e $6e
    dec bc                                        ; $4b74: $0b
    rla                                           ; $4b75: $17
    dec bc                                        ; $4b76: $0b
    ld a, [bc]                                    ; $4b77: $0a
    ld c, d                                       ; $4b78: $4a
    ret nz                                        ; $4b79: $c0

    pop hl                                        ; $4b7a: $e1
    dec c                                         ; $4b7b: $0d
    pop bc                                        ; $4b7c: $c1
    db $e3                                        ; $4b7d: $e3
    ret nz                                        ; $4b7e: $c0

    db $e3                                        ; $4b7f: $e3
    rst $38                                       ; $4b80: $ff
    rst $38                                       ; $4b81: $ff
    ld c, h                                       ; $4b82: $4c
    inc b                                         ; $4b83: $04
    add [hl]                                      ; $4b84: $86
    ld bc, $0ae0                                  ; $4b85: $01 $e0 $0a
    ld c, d                                       ; $4b88: $4a
    ret nz                                        ; $4b89: $c0

    and b                                         ; $4b8a: $a0
    ld a, b                                       ; $4b8b: $78
    ret nz                                        ; $4b8c: $c0

    ld c, e                                       ; $4b8d: $4b

jr_05f_4b8e:
    cp d                                          ; $4b8e: $ba
    pop hl                                        ; $4b8f: $e1
    ld hl, sp+$08                                 ; $4b90: $f8 $08
    and b                                         ; $4b92: $a0
    add $7f                                       ; $4b93: $c6 $7f
    add b                                         ; $4b95: $80
    jp hl                                         ; $4b96: $e9


    dec c                                         ; $4b97: $0d
    ld l, e                                       ; $4b98: $6b
    ld c, d                                       ; $4b99: $4a
    ld a, [bc]                                    ; $4b9a: $0a
    dec hl                                        ; $4b9b: $2b
    ld b, $7f                                     ; $4b9c: $06 $7f
    and b                                         ; $4b9e: $a0
    ld c, e                                       ; $4b9f: $4b
    ld c, e                                       ; $4ba0: $4b
    ld b, d                                       ; $4ba1: $42
    add d                                         ; $4ba2: $82
    ld [$92a4], sp                                ; $4ba3: $08 $a4 $92
    ld [hl], h                                    ; $4ba6: $74
    nop                                           ; $4ba7: $00
    ld c, c                                       ; $4ba8: $49
    adc [hl]                                      ; $4ba9: $8e
    ld b, e                                       ; $4baa: $43
    sub [hl]                                      ; $4bab: $96
    rst $08                                       ; $4bac: $cf
    ld h, b                                       ; $4bad: $60
    ld a, [hl+]                                   ; $4bae: $2a
    ld a, [hl+]                                   ; $4baf: $2a
    ld b, [hl]                                    ; $4bb0: $46
    ret nz                                        ; $4bb1: $c0

    dec bc                                        ; $4bb2: $0b
    add $80                                       ; $4bb3: $c6 $80
    ld b, [hl]                                    ; $4bb5: $46
    ld h, b                                       ; $4bb6: $60
    dec bc                                        ; $4bb7: $0b
    jr nc, @+$49                                  ; $4bb8: $30 $47

    ld h, b                                       ; $4bba: $60
    ld [$008f], sp                                ; $4bbb: $08 $8f $00
    ld d, a                                       ; $4bbe: $57

jr_05f_4bbf:
    adc b                                         ; $4bbf: $88
    add d                                         ; $4bc0: $82
    ld a, [bc]                                    ; $4bc1: $0a
    ld l, d                                       ; $4bc2: $6a
    cp $a0                                        ; $4bc3: $fe $a0
    add [hl]                                      ; $4bc5: $86
    add c                                         ; $4bc6: $81
    ld b, a                                       ; $4bc7: $47
    ld c, d                                       ; $4bc8: $4a
    dec c                                         ; $4bc9: $0d
    dec bc                                        ; $4bca: $0b
    adc b                                         ; $4bcb: $88
    ld [hl], d                                    ; $4bcc: $72
    nop                                           ; $4bcd: $00
    ld sp, hl                                     ; $4bce: $f9
    ret nz                                        ; $4bcf: $c0

    pop hl                                        ; $4bd0: $e1
    ld a, [bc]                                    ; $4bd1: $0a
    push bc                                       ; $4bd2: $c5
    and b                                         ; $4bd3: $a0
    dec b                                         ; $4bd4: $05
    dec hl                                        ; $4bd5: $2b
    ld b, $80                                     ; $4bd6: $06 $80
    ld c, d                                       ; $4bd8: $4a
    ld b, c                                       ; $4bd9: $41
    ld h, b                                       ; $4bda: $60
    inc bc                                        ; $4bdb: $03
    ld b, c                                       ; $4bdc: $41
    call nz, Call_000_00ff                        ; $4bdd: $c4 $ff $00
    add sp, $7f                                   ; $4be0: $e8 $7f
    pop bc                                        ; $4be2: $c1
    inc b                                         ; $4be3: $04
    ld a, a                                       ; $4be4: $7f
    ldh [rSB], a                                  ; $4be5: $e0 $01
    ldh [rWY], a                                  ; $4be7: $e0 $4a
    ld [hl], $c2                                  ; $4be9: $36 $c2
    add $80                                       ; $4beb: $c6 $80
    inc b                                         ; $4bed: $04
    or c                                          ; $4bee: $b1
    nop                                           ; $4bef: $00
    db $d3                                        ; $4bf0: $d3
    ret nz                                        ; $4bf1: $c0

    pop hl                                        ; $4bf2: $e1
    ld a, [hl-]                                   ; $4bf3: $3a
    dec bc                                        ; $4bf4: $0b
    ld b, b                                       ; $4bf5: $40
    ld a, [bc]                                    ; $4bf6: $0a
    add l                                         ; $4bf7: $85
    ld h, c                                       ; $4bf8: $61
    dec bc                                        ; $4bf9: $0b
    ld a, [bc]                                    ; $4bfa: $0a
    ld a, [bc]                                    ; $4bfb: $0a
    jr c, jr_05f_4bbf                             ; $4bfc: $38 $c1

    add [hl]                                      ; $4bfe: $86
    add d                                         ; $4bff: $82
    call nc, $df00                                ; $4c00: $d4 $00 $df
    nop                                           ; $4c03: $00
    push bc                                       ; $4c04: $c5
    dec hl                                        ; $4c05: $2b
    pop bc                                        ; $4c06: $c1
    pop hl                                        ; $4c07: $e1
    ld a, [hl+]                                   ; $4c08: $2a

jr_05f_4c09:
    ld b, l                                       ; $4c09: $45
    ld h, c                                       ; $4c0a: $61
    dec hl                                        ; $4c0b: $2b
    ld a, [hl+]                                   ; $4c0c: $2a
    ld b, c                                       ; $4c0d: $41
    ld a, [hl+]                                   ; $4c0e: $2a
    ld a, c                                       ; $4c0f: $79
    ld h, c                                       ; $4c10: $61
    add b                                         ; $4c11: $80
    ld [c], a                                     ; $4c12: $e2
    rst $38                                       ; $4c13: $ff
    rst $38                                       ; $4c14: $ff
    inc b                                         ; $4c15: $04
    ld b, h                                       ; $4c16: $44
    add e                                         ; $4c17: $83
    pop hl                                        ; $4c18: $e1
    ld a, [bc]                                    ; $4c19: $0a
    add b                                         ; $4c1a: $80
    add b                                         ; $4c1b: $80
    ld b, $05                                     ; $4c1c: $06 $05
    ld h, b                                       ; $4c1e: $60
    ld c, e                                       ; $4c1f: $4b
    dec hl                                        ; $4c20: $2b
    pop bc                                        ; $4c21: $c1
    ld b, c                                       ; $4c22: $41
    rst $38                                       ; $4c23: $ff
    and c                                         ; $4c24: $a1
    call nz, $8eff                                ; $4c25: $c4 $ff $8e
    ld b, $cc                                     ; $4c28: $06 $cc
    ld hl, $4904                                  ; $4c2a: $21 $04 $49
    ld b, b                                       ; $4c2d: $40
    add $41                                       ; $4c2e: $c6 $41
    ld c, e                                       ; $4c30: $4b
    ret nz                                        ; $4c31: $c0

    ret nz                                        ; $4c32: $c0

    add b                                         ; $4c33: $80
    cp e                                          ; $4c34: $bb
    inc b                                         ; $4c35: $04
    ld c, d                                       ; $4c36: $4a
    nop                                           ; $4c37: $00
    add e                                         ; $4c38: $83
    jp nz, Jump_000_22a0                          ; $4c39: $c2 $a0 $22

    ld c, e                                       ; $4c3c: $4b
    ld b, b                                       ; $4c3d: $40
    ld c, e                                       ; $4c3e: $4b
    ld b, [hl]                                    ; $4c3f: $46
    ld b, b                                       ; $4c40: $40
    ld sp, hl                                     ; $4c41: $f9
    pop bc                                        ; $4c42: $c1
    nop                                           ; $4c43: $00
    and b                                         ; $4c44: $a0
    dec l                                         ; $4c45: $2d
    ld [$fe23], sp                                ; $4c46: $08 $23 $fe
    jp nc, $8c8e                                  ; $4c49: $d2 $8e $8c

    db $10                                        ; $4c4c: $10
    dec l                                         ; $4c4d: $2d
    ld a, [hl+]                                   ; $4c4e: $2a
    ld a, [bc]                                    ; $4c4f: $0a
    add c                                         ; $4c50: $81
    db $e3                                        ; $4c51: $e3
    ld c, b                                       ; $4c52: $48
    ld b, d                                       ; $4c53: $42
    ld a, c                                       ; $4c54: $79
    ld b, b                                       ; $4c55: $40
    ld c, l                                       ; $4c56: $4d
    db $10                                        ; $4c57: $10
    ld b, $62                                     ; $4c58: $06 $62
    rst $00                                       ; $4c5a: $c7
    ld [bc], a                                    ; $4c5b: $02
    ld b, h                                       ; $4c5c: $44
    ld a, [hl]                                    ; $4c5d: $7e
    ret nz                                        ; $4c5e: $c0

    ld bc, $cc6b                                  ; $4c5f: $01 $6b $cc
    inc hl                                        ; $4c62: $23
    add e                                         ; $4c63: $83
    ret nz                                        ; $4c64: $c0

    ld b, $21                                     ; $4c65: $06 $21
    nop                                           ; $4c67: $00
    ld b, b                                       ; $4c68: $40
    pop bc                                        ; $4c69: $c1
    add [hl]                                      ; $4c6a: $86
    ld b, e                                       ; $4c6b: $43

jr_05f_4c6c:
    ret nz                                        ; $4c6c: $c0

    rst $38                                       ; $4c6d: $ff
    adc d                                         ; $4c6e: $8a
    inc bc                                        ; $4c6f: $03
    jp $c765                                      ; $4c70: $c3 $65 $c7


    ld [bc], a                                    ; $4c73: $02
    ld b, b                                       ; $4c74: $40
    jp nz, $9ffe                                  ; $4c75: $c2 $fe $9f

    inc c                                         ; $4c78: $0c
    nop                                           ; $4c79: $00
    adc e                                         ; $4c7a: $8b
    jp nz, Jump_000_0d67                          ; $4c7b: $c2 $67 $0d

    dec c                                         ; $4c7e: $0d
    ccf                                           ; $4c7f: $3f
    jr nz, jr_05f_4c09                            ; $4c80: $20 $87

    jr nz, jr_05f_4c88                            ; $4c82: $20 $04

    ld d, e                                       ; $4c84: $53
    nop                                           ; $4c85: $00
    sub h                                         ; $4c86: $94
    adc b                                         ; $4c87: $88

jr_05f_4c88:
    push bc                                       ; $4c88: $c5
    ld b, h                                       ; $4c89: $44
    add c                                         ; $4c8a: $81
    add b                                         ; $4c8b: $80
    nop                                           ; $4c8c: $00
    add d                                         ; $4c8d: $82
    ld c, e                                       ; $4c8e: $4b
    ld b, l                                       ; $4c8f: $45
    nop                                           ; $4c90: $00
    ld c, b                                       ; $4c91: $48
    rst $38                                       ; $4c92: $ff
    nop                                           ; $4c93: $00
    add a                                         ; $4c94: $87
    dec l                                         ; $4c95: $2d
    inc c                                         ; $4c96: $0c
    jp nz, $8821                                  ; $4c97: $c2 $21 $88

    inc b                                         ; $4c9a: $04
    dec c                                         ; $4c9b: $0d
    ld c, e                                       ; $4c9c: $4b
    cp $e1                                        ; $4c9d: $fe $e1
    ld a, $61                                     ; $4c9f: $3e $61

Jump_05f_4ca1:
    nop                                           ; $4ca1: $00
    rst $38                                       ; $4ca2: $ff
    add b                                         ; $4ca3: $80
    and h                                         ; $4ca4: $a4
    inc bc                                        ; $4ca5: $03
    ld c, e                                       ; $4ca6: $4b
    dec l                                         ; $4ca7: $2d
    ld b, e                                       ; $4ca8: $43
    add c                                         ; $4ca9: $81
    cp a                                          ; $4caa: $bf
    db $e4                                        ; $4cab: $e4
    ld a, a                                       ; $4cac: $7f
    nop                                           ; $4cad: $00
    cp [hl]                                       ; $4cae: $be
    ldh [$7e], a                                  ; $4caf: $e0 $7e
    jp $df00                                      ; $4cb1: $c3 $00 $df


    ld [hl+], a                                   ; $4cb4: $22
    nop                                           ; $4cb5: $00
    ld b, d                                       ; $4cb6: $42
    dec l                                         ; $4cb7: $2d
    rst $00                                       ; $4cb8: $c7
    add c                                         ; $4cb9: $81
    rst $38                                       ; $4cba: $ff
    and $bf                                       ; $4cbb: $e6 $bf
    pop hl                                        ; $4cbd: $e1
    ld c, e                                       ; $4cbe: $4b
    ld a, $e0                                     ; $4cbf: $3e $e0
    ld h, [hl]                                    ; $4cc1: $66
    inc hl                                        ; $4cc2: $23
    jr nz, jr_05f_4cc7                            ; $4cc3: $20 $02

    ld a, [hl-]                                   ; $4cc5: $3a
    add b                                         ; $4cc6: $80

jr_05f_4cc7:
    add $93                                       ; $4cc7: $c6 $93
    nop                                           ; $4cc9: $00
    cp a                                          ; $4cca: $bf
    rst $20                                       ; $4ccb: $e7
    ret nz                                        ; $4ccc: $c0

    ld [c], a                                     ; $4ccd: $e2
    ld c, e                                       ; $4cce: $4b
    db $fc                                        ; $4ccf: $fc
    ld h, e                                       ; $4cd0: $63
    db $fc                                        ; $4cd1: $fc
    cp l                                          ; $4cd2: $bd
    stop                                          ; $4cd3: $10 $00
    ld b, e                                       ; $4cd5: $43
    add l                                         ; $4cd6: $85
    and b                                         ; $4cd7: $a0
    ret nz                                        ; $4cd8: $c0

    add sp, -$08                                  ; $4cd9: $e8 $f8
    add b                                         ; $4cdb: $80
    dec c                                         ; $4cdc: $0d
    ld a, a                                       ; $4cdd: $7f
    ld [c], a                                     ; $4cde: $e2
    db $fc                                        ; $4cdf: $fc
    cp a                                          ; $4ce0: $bf
    cp h                                          ; $4ce1: $bc
    and h                                         ; $4ce2: $a4
    jr c, jr_05f_4c6c                             ; $4ce3: $38 $87

    add c                                         ; $4ce5: $81
    ld a, $e7                                     ; $4ce6: $3e $e7
    ret nz                                        ; $4ce8: $c0

    pop hl                                        ; $4ce9: $e1
    inc c                                         ; $4cea: $0c
    inc c                                         ; $4ceb: $0c
    inc l                                         ; $4cec: $2c
    ld a, h                                       ; $4ced: $7c
    sub $00                                       ; $4cee: $d6 $00
    ld c, a                                       ; $4cf0: $4f
    ld l, h                                       ; $4cf1: $6c
    dec b                                         ; $4cf2: $05
    and b                                         ; $4cf3: $a0
    rst $38                                       ; $4cf4: $ff
    ret                                           ; $4cf5: $c9


    ld c, e                                       ; $4cf6: $4b
    inc c                                         ; $4cf7: $0c
    rst $38                                       ; $4cf8: $ff
    ldh [$2c], a                                  ; $4cf9: $e0 $2c
    inc l                                         ; $4cfb: $2c
    ld a, d                                       ; $4cfc: $7a
    ld b, e                                       ; $4cfd: $43
    ld [hl], b                                    ; $4cfe: $70
    ld [hl], l                                    ; $4cff: $75
    ld [hl+], a                                   ; $4d00: $22
    nop                                           ; $4d01: $00

Jump_05f_4d02:
    ld e, l                                       ; $4d02: $5d
    add [hl]                                      ; $4d03: $86
    add b                                         ; $4d04: $80
    rst $38                                       ; $4d05: $ff
    rst $00                                       ; $4d06: $c7
    dec hl                                        ; $4d07: $2b
    ld c, e                                       ; $4d08: $4b
    ld c, h                                       ; $4d09: $4c
    rst $38                                       ; $4d0a: $ff
    ldh [$93], a                                  ; $4d0b: $e0 $93
    ld l, h                                       ; $4d0d: $6c
    ld l, h                                       ; $4d0e: $6c
    ld a, d                                       ; $4d0f: $7a
    inc hl                                        ; $4d10: $23
    nop                                           ; $4d11: $00
    rst $38                                       ; $4d12: $ff
    ld c, l                                       ; $4d13: $4d
    db $10                                        ; $4d14: $10
    ld [c], a                                     ; $4d15: $e2
    cp a                                          ; $4d16: $bf
    jp z, $0f4c                                   ; $4d17: $ca $4c $0f

    dec c                                         ; $4d1a: $0d
    ld c, h                                       ; $4d1b: $4c
    ld l, h                                       ; $4d1c: $6c
    ld c, e                                       ; $4d1d: $4b
    ld b, b                                       ; $4d1e: $40
    inc de                                        ; $4d1f: $13
    add b                                         ; $4d20: $80
    sub c                                         ; $4d21: $91
    ret nz                                        ; $4d22: $c0

    ld [c], a                                     ; $4d23: $e2
    ld b, e                                       ; $4d24: $43
    ld h, b                                       ; $4d25: $60
    inc b                                         ; $4d26: $04
    ret nz                                        ; $4d27: $c0

    inc b                                         ; $4d28: $04
    cp $a2                                        ; $4d29: $fe $a2
    ld c, e                                       ; $4d2b: $4b
    cp h                                          ; $4d2c: $bc
    and d                                         ; $4d2d: $a2
    nop                                           ; $4d2e: $00
    call c, Call_05f_4300                         ; $4d2f: $dc $00 $43
    ld a, a                                       ; $4d32: $7f
    ldh [$85], a                                  ; $4d33: $e0 $85
    ld h, c                                       ; $4d35: $61
    inc b                                         ; $4d36: $04
    ld a, d                                       ; $4d37: $7a
    add d                                         ; $4d38: $82
    ccf                                           ; $4d39: $3f
    rst $00                                       ; $4d3a: $c7
    ld c, e                                       ; $4d3b: $4b
    rst $20                                       ; $4d3c: $e7
    and b                                         ; $4d3d: $a0
    ld h, d                                       ; $4d3e: $62
    ld [bc], a                                    ; $4d3f: $02
    nop                                           ; $4d40: $00
    rst $18                                       ; $4d41: $df
    ld b, a                                       ; $4d42: $47
    ld h, c                                       ; $4d43: $61
    ld a, l                                       ; $4d44: $7d
    ld [c], a                                     ; $4d45: $e2
    add b                                         ; $4d46: $80
    cp $a8                                        ; $4d47: $fe $a8
    ld l, e                                       ; $4d49: $6b
    pop bc                                        ; $4d4a: $c1
    ld a, d                                       ; $4d4b: $7a
    or a                                          ; $4d4c: $b7
    nop                                           ; $4d4d: $00
    ld l, d                                       ; $4d4e: $6a
    ret nz                                        ; $4d4f: $c0

    push hl                                       ; $4d50: $e5
    inc a                                         ; $4d51: $3c
    rst $20                                       ; $4d52: $e7
    ret nz                                        ; $4d53: $c0

    db $e4                                        ; $4d54: $e4
    ld c, e                                       ; $4d55: $4b
    nop                                           ; $4d56: $00
    halt                                          ; $4d57: $76
    ld [hl+], a                                   ; $4d58: $22
    nop                                           ; $4d59: $00
    rst $18                                       ; $4d5a: $df
    rst $00                                       ; $4d5b: $c7
    ld b, c                                       ; $4d5c: $41
    adc c                                         ; $4d5d: $89
    and e                                         ; $4d5e: $a3
    or [hl]                                       ; $4d5f: $b6
    ld h, d                                       ; $4d60: $62
    ld a, $a3                                     ; $4d61: $3e $a3
    ld sp, hl                                     ; $4d63: $f9
    add c                                         ; $4d64: $81
    ld hl, sp+$32                                 ; $4d65: $f8 $32
    sub b                                         ; $4d67: $90
    nop                                           ; $4d68: $00
    ld c, [hl]                                    ; $4d69: $4e
    cp a                                          ; $4d6a: $bf
    ret nz                                        ; $4d6b: $c0

    ld c, l                                       ; $4d6c: $4d
    and d                                         ; $4d6d: $a2
    cp [hl]                                       ; $4d6e: $be
    ld b, e                                       ; $4d6f: $43
    ld c, e                                       ; $4d70: $4b
    ld a, d                                       ; $4d71: $7a
    nop                                           ; $4d72: $00
    or c                                          ; $4d73: $b1
    and b                                         ; $4d74: $a0
    dec hl                                        ; $4d75: $2b
    ld d, e                                       ; $4d76: $53
    dec bc                                        ; $4d77: $0b
    dec hl                                        ; $4d78: $2b
    ret nz                                        ; $4d79: $c0

    ld [c], a                                     ; $4d7a: $e2
    nop                                           ; $4d7b: $00
    rst $18                                       ; $4d7c: $df
    dec c                                         ; $4d7d: $0d
    db $dd                                        ; $4d7e: $dd
    ldh [$0d], a                                  ; $4d7f: $e0 $0d
    cp l                                          ; $4d81: $bd
    pop hl                                        ; $4d82: $e1
    ld b, b                                       ; $4d83: $40
    ld b, h                                       ; $4d84: $44
    add b                                         ; $4d85: $80
    rst $30                                       ; $4d86: $f7
    and d                                         ; $4d87: $a2
    ld hl, sp+$21                                 ; $4d88: $f8 $21
    cp b                                          ; $4d8a: $b8
    add e                                         ; $4d8b: $83
    ld hl, sp+$3e                                 ; $4d8c: $f8 $3e
    sbc [hl]                                      ; $4d8e: $9e
    and h                                         ; $4d8f: $a4
    dec c                                         ; $4d90: $0d
    ld a, h                                       ; $4d91: $7c
    db $e3                                        ; $4d92: $e3
    ld [$e20c], sp                                ; $4d93: $08 $0c $e2
    add e                                         ; $4d96: $83
    db $e3                                        ; $4d97: $e3
    ld [hl], a                                    ; $4d98: $77
    add e                                         ; $4d99: $83
    ld l, l                                       ; $4d9a: $6d
    nop                                           ; $4d9b: $00
    db $fd                                        ; $4d9c: $fd
    inc e                                         ; $4d9d: $1c
    inc hl                                        ; $4d9e: $23
    ld d, b                                       ; $4d9f: $50
    inc bc                                        ; $4da0: $03
    ld a, [hl-]                                   ; $4da1: $3a
    db $e4                                        ; $4da2: $e4
    ld [bc], a                                    ; $4da3: $02
    db $f4                                        ; $4da4: $f4
    add h                                         ; $4da5: $84
    dec l                                         ; $4da6: $2d

jr_05f_4da7:
    or e                                          ; $4da7: $b3
    ld h, c                                       ; $4da8: $61
    ld a, b                                       ; $4da9: $78
    jr nc, @+$2c                                  ; $4daa: $30 $2a

    dec l                                         ; $4dac: $2d
    db $fc                                        ; $4dad: $fc
    and e                                         ; $4dae: $a3
    ld hl, sp+$02                                 ; $4daf: $f8 $02
    dec sp                                        ; $4db1: $3b
    ld [c], a                                     ; $4db2: $e2
    ld [$8085], sp                                ; $4db3: $08 $85 $80
    ld [hl-], a                                   ; $4db6: $32
    ld h, c                                       ; $4db7: $61

jr_05f_4db8:
    ld a, h                                       ; $4db8: $7c
    ld [c], a                                     ; $4db9: $e2
    dec c                                         ; $4dba: $0d
    nop                                           ; $4dbb: $00
    ld [c], a                                     ; $4dbc: $e2
    nop                                           ; $4dbd: $00
    ld e, l                                       ; $4dbe: $5d
    ld [hl], h                                    ; $4dbf: $74
    rst $20                                       ; $4dc0: $e7
    or a                                          ; $4dc1: $b7
    pop bc                                        ; $4dc2: $c1
    dec [hl]                                      ; $4dc3: $35
    dec c                                         ; $4dc4: $0d
    or l                                          ; $4dc5: $b5
    add d                                         ; $4dc6: $82
    dec l                                         ; $4dc7: $2d
    cp a                                          ; $4dc8: $bf
    ret nz                                        ; $4dc9: $c0

    dec hl                                        ; $4dca: $2b
    ld l, e                                       ; $4dcb: $6b
    cp $9f                                        ; $4dcc: $fe $9f
    db $fc                                        ; $4dce: $fc
    ld h, a                                       ; $4dcf: $67

jr_05f_4dd0:
    nop                                           ; $4dd0: $00
    halt                                          ; $4dd1: $76
    add d                                         ; $4dd2: $82
    halt                                          ; $4dd3: $76
    jp nz, $c33c                                  ; $4dd4: $c2 $3c $c3

    pop bc                                        ; $4dd7: $c1
    ldh [rSB], a                                  ; $4dd8: $e0 $01
    pop bc                                        ; $4dda: $c1
    nop                                           ; $4ddb: $00
    rst $18                                       ; $4ddc: $df
    jr nz, jr_05f_4da7                            ; $4ddd: $20 $c8

    halt                                          ; $4ddf: $76
    ret nz                                        ; $4de0: $c0

    nop                                           ; $4de1: $00
    cp a                                          ; $4de2: $bf
    push hl                                       ; $4de3: $e5
    pop bc                                        ; $4de4: $c1
    pop hl                                        ; $4de5: $e1
    cp c                                          ; $4de6: $b9
    nop                                           ; $4de7: $00
    ld a, h                                       ; $4de8: $7c
    ld [hl], c                                    ; $4de9: $71
    inc l                                         ; $4dea: $2c
    ld d, e                                       ; $4deb: $53
    jp c, Jump_05f_78a1                           ; $4dec: $da $a1 $78

    pop bc                                        ; $4def: $c1
    rst $38                                       ; $4df0: $ff
    jr nz, jr_05f_4df4                            ; $4df1: $20 $01

    dec l                                         ; $4df3: $2d

jr_05f_4df4:
    ld [hl], b                                    ; $4df4: $70
    jr nz, jr_05f_4db8                            ; $4df5: $20 $c1

    ld [c], a                                     ; $4df7: $e2
    nop                                           ; $4df8: $00
    sbc a                                         ; $4df9: $9f
    jr nc, jr_05f_4e2d                            ; $4dfa: $30 $31

    cp h                                          ; $4dfc: $bc
    ld [c], a                                     ; $4dfd: $e2
    cp b                                          ; $4dfe: $b8
    jr nz, jr_05f_4e03                            ; $4dff: $20 $02

    rst $38                                       ; $4e01: $ff
    nop                                           ; $4e02: $00

jr_05f_4e03:
    jr c, jr_05f_4dd0                             ; $4e03: $38 $cb

    halt                                          ; $4e05: $76
    push bc                                       ; $4e06: $c5
    jp nz, $ece2                                  ; $4e07: $c2 $e2 $ec

    and d                                         ; $4e0a: $a2
    nop                                           ; $4e0b: $00
    sbc a                                         ; $4e0c: $9f
    xor d                                         ; $4e0d: $aa
    jr c, jr_05f_4e12                             ; $4e0e: $38 $02

    ld [hl], h                                    ; $4e10: $74
    nop                                           ; $4e11: $00

jr_05f_4e12:
    nop                                           ; $4e12: $00
    nop                                           ; $4e13: $00
    rst $28                                       ; $4e14: $ef
    and b                                         ; $4e15: $a0
    call c, $dedd                                 ; $4e16: $dc $dd $de
    db $fc                                        ; $4e19: $fc
    ld a, [c]                                     ; $4e1a: $f2
    and b                                         ; $4e1b: $a0
    ret c                                         ; $4e1c: $d8

    reti                                          ; $4e1d: $d9


    rst $08                                       ; $4e1e: $cf
    and b                                         ; $4e1f: $a0
    and b                                         ; $4e20: $a0
    jp nc, $fcd3                                  ; $4e21: $d2 $d3 $fc

    db $eb                                        ; $4e24: $eb
    db $ec                                        ; $4e25: $ec
    pop hl                                        ; $4e26: $e1
    sub $d7                                       ; $4e27: $d6 $d7
    sbc $cc                                       ; $4e29: $de $cc
    jp hl                                         ; $4e2b: $e9


    rst $18                                       ; $4e2c: $df

jr_05f_4e2d:
    ldh [$e1], a                                  ; $4e2d: $e0 $e1
    ld [c], a                                     ; $4e2f: $e2
    db $fc                                        ; $4e30: $fc
    pop af                                        ; $4e31: $f1
    sub $d7                                       ; $4e32: $d6 $d7
    rst $38                                       ; $4e34: $ff
    jp c, $d0db                                   ; $4e35: $da $db $d0

    pop de                                        ; $4e38: $d1
    call nc, $a0d5                                ; $4e39: $d4 $d5 $a0
    and b                                         ; $4e3c: $a0
    cp $fc                                        ; $4e3d: $fe $fc
    rst $20                                       ; $4e3f: $e7
    ret nc                                        ; $4e40: $d0

    pop de                                        ; $4e41: $d1
    jp c, $d6db                                   ; $4e42: $da $db $d6

    rst $10                                       ; $4e45: $d7
    ret c                                         ; $4e46: $d8

    dec a                                         ; $4e47: $3d
    reti                                          ; $4e48: $d9


    call z, $e3e9                                 ; $4e49: $cc $e9 $e3
    db $e4                                        ; $4e4c: $e4
    push hl                                       ; $4e4d: $e5
    and $fc                                       ; $4e4e: $e6 $fc
    pop af                                        ; $4e50: $f1
    add d                                         ; $4e51: $82
    push hl                                       ; $4e52: $e5
    rst $38                                       ; $4e53: $ff
    and b                                         ; $4e54: $a0
    and b                                         ; $4e55: $a0
    sbc a                                         ; $4e56: $9f
    sbc l                                         ; $4e57: $9d
    and d                                         ; $4e58: $a2
    sbc l                                         ; $4e59: $9d
    sbc l                                         ; $4e5a: $9d
    sbc l                                         ; $4e5b: $9d
    reti                                          ; $4e5c: $d9


    sbc a                                         ; $4e5d: $9f
    push af                                       ; $4e5e: $f5
    ldh [$7e], a                                  ; $4e5f: $e0 $7e
    db $e3                                        ; $4e61: $e3
    jp c, $ccdb                                   ; $4e62: $da $db $cc

    jp hl                                         ; $4e65: $e9


    rst $20                                       ; $4e66: $e7
    add sp, -$0d                                  ; $4e67: $e8 $f3
    jp hl                                         ; $4e69: $e9


    ld [$f1fc], a                                 ; $4e6a: $ea $fc $f1
    add d                                         ; $4e6d: $82
    push hl                                       ; $4e6e: $e5
    sbc a                                         ; $4e6f: $9f
    and d                                         ; $4e70: $a2
    sbc h                                         ; $4e71: $9c
    ld b, [hl]                                    ; $4e72: $46
    ld [hl-], a                                   ; $4e73: $32
    rst $38                                       ; $4e74: $ff
    pop hl                                        ; $4e75: $e1
    sbc h                                         ; $4e76: $9c
    cp a                                          ; $4e77: $bf
    ldh [$7e], a                                  ; $4e78: $e0 $7e
    db $e3                                        ; $4e7a: $e3
    and b                                         ; $4e7b: $a0
    and b                                         ; $4e7c: $a0
    call z, Call_000_06e9                         ; $4e7d: $cc $e9 $06
    pop af                                        ; $4e80: $f1
    db $fc                                        ; $4e81: $fc
    cp $e3                                        ; $4e82: $fe $e3
    add d                                         ; $4e84: $82
    ld [c], a                                     ; $4e85: $e2
    sbc a                                         ; $4e86: $9f
    sbc h                                         ; $4e87: $9c
    ld b, l                                       ; $4e88: $45
    ld d, b                                       ; $4e89: $50
    ld d, b                                       ; $4e8a: $50
    ld b, e                                       ; $4e8b: $43
    ld b, c                                       ; $4e8c: $41
    ld b, l                                       ; $4e8d: $45
    cp a                                          ; $4e8e: $bf
    db $e4                                        ; $4e8f: $e4
    ld l, [hl]                                    ; $4e90: $6e
    db $e3                                        ; $4e91: $e3
    adc $ca                                       ; $4e92: $ce $ca
    ld [bc], a                                    ; $4e94: $02
    rst $28                                       ; $4e95: $ef
    sbc $c2                                       ; $4e96: $de $c2
    and b                                         ; $4e98: $a0
    inc b                                         ; $4e99: $04
    pop hl                                        ; $4e9a: $e1
    rst $38                                       ; $4e9b: $ff
    sbc a                                         ; $4e9c: $9f
    sbc l                                         ; $4e9d: $9d
    sbc l                                         ; $4e9e: $9d
    sbc h                                         ; $4e9f: $9c
    ld b, l                                       ; $4ea0: $45
    ld b, a                                       ; $4ea1: $47
    ld e, l                                       ; $4ea2: $5d
    ld e, l                                       ; $4ea3: $5d
    ld a, a                                       ; $4ea4: $7f
    ld c, h                                       ; $4ea5: $4c
    ld d, d                                       ; $4ea6: $52
    ld b, l                                       ; $4ea7: $45
    xor [hl]                                      ; $4ea8: $ae
    ld b, [hl]                                    ; $4ea9: $46
    ld b, [hl]                                    ; $4eaa: $46
    and c                                         ; $4eab: $a1
    inc sp                                        ; $4eac: $33
    ldh [$8f], a                                  ; $4ead: $e0 $8f
    call nc, $d6d5                                ; $4eaf: $d4 $d5 $d6
    rst $10                                       ; $4eb2: $d7
    adc $cb                                       ; $4eb3: $ce $cb
    ld [bc], a                                    ; $4eb5: $02
    rst $28                                       ; $4eb6: $ef
    add [hl]                                      ; $4eb7: $86
    add $9f                                       ; $4eb8: $c6 $9f
    cp $46                                        ; $4eba: $fe $46
    ldh [rLYC], a                                 ; $4ebc: $e0 $45
    ld b, a                                       ; $4ebe: $47
    ld h, b                                       ; $4ebf: $60
    ld d, h                                       ; $4ec0: $54
    ld e, c                                       ; $4ec1: $59
    ld e, c                                       ; $4ec2: $59
    ld d, e                                       ; $4ec3: $53
    inc bc                                        ; $4ec4: $03
    ld b, l                                       ; $4ec5: $45
    xor a                                         ; $4ec6: $af
    ld a, a                                       ; $4ec7: $7f
    db $e4                                        ; $4ec8: $e4
    ld l, d                                       ; $4ec9: $6a
    ret nz                                        ; $4eca: $c0

    adc $cb                                       ; $4ecb: $ce $cb
    ld [bc], a                                    ; $4ecd: $02
    rst $28                                       ; $4ece: $ef
    add [hl]                                      ; $4ecf: $86
    push bc                                       ; $4ed0: $c5
    pop bc                                        ; $4ed1: $c1
    pop hl                                        ; $4ed2: $e1
    rst $38                                       ; $4ed3: $ff
    ld b, [hl]                                    ; $4ed4: $46
    ld b, l                                       ; $4ed5: $45
    ld d, e                                       ; $4ed6: $53
    ld d, e                                       ; $4ed7: $53
    ld a, [hl+]                                   ; $4ed8: $2a
    ld h, $20                                     ; $4ed9: $26 $20
    ld h, $e1                                     ; $4edb: $26 $e1
    ld a, [hl+]                                   ; $4edd: $2a
    ld a, $e4                                     ; $4ede: $3e $e4
    ld a, [hl]                                    ; $4ee0: $7e
    pop bc                                        ; $4ee1: $c1
    adc $cb                                       ; $4ee2: $ce $cb
    ld [$a1d7], sp                                ; $4ee4: $08 $d7 $a1
    ld b, [hl]                                    ; $4ee7: $46
    ld b, [hl]                                    ; $4ee8: $46
    cp $4a                                        ; $4ee9: $fe $4a
    ldh [rLYC], a                                 ; $4eeb: $e0 $45
    scf                                           ; $4eed: $37
    daa                                           ; $4eee: $27
    jr nz, jr_05f_4f11                            ; $4eef: $20 $20

    jr nz, @+$32                                  ; $4ef1: $20 $30

    add l                                         ; $4ef3: $85
    ld b, h                                       ; $4ef4: $44
    ld a, $e1                                     ; $4ef5: $3e $e1
    sbc [hl]                                      ; $4ef7: $9e
    ldh a, [$a2]                                  ; $4ef8: $f0 $a2
    nop                                           ; $4efa: $00
    db $db                                        ; $4efb: $db
    ld [$42c6], sp                                ; $4efc: $08 $c6 $42
    pop hl                                        ; $4eff: $e1
    xor a                                         ; $4f00: $af
    rst $28                                       ; $4f01: $ef
    ld b, [hl]                                    ; $4f02: $46
    ld b, l                                       ; $4f03: $45
    ld [hl], $35                                  ; $4f04: $36 $35
    ret nz                                        ; $4f06: $c0

    ldh [rNR52], a                                ; $4f07: $e0 $26
    ld a, [hl+]                                   ; $4f09: $2a
    ld b, a                                       ; $4f0a: $47
    ld b, l                                       ; $4f0b: $45
    ld d, l                                       ; $4f0c: $55
    ld a, $e0                                     ; $4f0d: $3e $e0
    sbc [hl]                                      ; $4f0f: $9e
    nop                                           ; $4f10: $00

jr_05f_4f11:
    ld [c], a                                     ; $4f11: $e2
    nop                                           ; $4f12: $00
    db $db                                        ; $4f13: $db
    inc b                                         ; $4f14: $04
    push hl                                       ; $4f15: $e5
    sbc l                                         ; $4f16: $9d
    ld c, c                                       ; $4f17: $49
    jp Jump_000_39ff                              ; $4f18: $c3 $ff $39


    dec [hl]                                      ; $4f1b: $35
    dec [hl]                                      ; $4f1c: $35
    ld hl, $482a                                  ; $4f1d: $21 $2a $48
    ld c, [hl]                                    ; $4f20: $4e
    ld c, c                                       ; $4f21: $49
    jp Jump_05f_5560                              ; $4f22: $c3 $60 $55


    ld a, [hl]                                    ; $4f25: $7e
    call nz, $dd00                                ; $4f26: $c4 $00 $dd
    inc b                                         ; $4f29: $04
    rst $20                                       ; $4f2a: $e7
    adc l                                         ; $4f2b: $8d
    ret nz                                        ; $4f2c: $c0

    ld b, [hl]                                    ; $4f2d: $46
    ld b, l                                       ; $4f2e: $45
    rst $38                                       ; $4f2f: $ff
    ld a, [hl-]                                   ; $4f30: $3a
    dec [hl]                                      ; $4f31: $35
    dec [hl]                                      ; $4f32: $35
    ld a, [hl-]                                   ; $4f33: $3a
    ld d, c                                       ; $4f34: $51
    ld e, a                                       ; $4f35: $5f
    ld h, c                                       ; $4f36: $61
    ld h, c                                       ; $4f37: $61
    ld b, l                                       ; $4f38: $45
    ld d, d                                       ; $4f39: $52
    dec a                                         ; $4f3a: $3d
    ret nz                                        ; $4f3b: $c0

    sbc [hl]                                      ; $4f3c: $9e
    ld l, d                                       ; $4f3d: $6a
    pop bc                                        ; $4f3e: $c1
    nop                                           ; $4f3f: $00
    call c, $a49a                                 ; $4f40: $dc $9a $a4
    sbc [hl]                                      ; $4f43: $9e
    call z, $fea0                                 ; $4f44: $cc $a0 $fe
    ld b, e                                       ; $4f47: $43
    ldh [$37], a                                  ; $4f48: $e0 $37
    jr c, jr_05f_4f81                             ; $4f4a: $38 $35

    dec [hl]                                      ; $4f4c: $35
    dec [hl]                                      ; $4f4d: $35
    add hl, sp                                    ; $4f4e: $39
    ld b, l                                       ; $4f4f: $45
    add c                                         ; $4f50: $81
    ld d, e                                       ; $4f51: $53
    ld a, a                                       ; $4f52: $7f
    ret nz                                        ; $4f53: $c0

    ld bc, $00e2                                  ; $4f54: $01 $e2 $00
    sbc $08                                       ; $4f57: $de $08
    jp $c246                                      ; $4f59: $c3 $46 $c2


    ld b, h                                       ; $4f5c: $44
    ret nz                                        ; $4f5d: $c0

    ld [hl], $ae                                  ; $4f5e: $36 $ae
    jp nz, Jump_000_35e0                          ; $4f60: $c2 $e0 $35

    ld [hl], $45                                  ; $4f63: $36 $45
    cp c                                          ; $4f65: $b9
    ret nz                                        ; $4f66: $c0

    xor [hl]                                      ; $4f67: $ae
    push af                                       ; $4f68: $f5
    ret nz                                        ; $4f69: $c0

    ld b, [hl]                                    ; $4f6a: $46
    ld b, c                                       ; $4f6b: $41
    and c                                         ; $4f6c: $a1
    ldh a, [$81]                                  ; $4f6d: $f0 $81
    nop                                           ; $4f6f: $00
    db $db                                        ; $4f70: $db
    adc [hl]                                      ; $4f71: $8e
    add e                                         ; $4f72: $83
    ld b, d                                       ; $4f73: $42
    db $e3                                        ; $4f74: $e3
    pop bc                                        ; $4f75: $c1
    rst $20                                       ; $4f76: $e7
    xor a                                         ; $4f77: $af
    jp nz, $58e1                                  ; $4f78: $c2 $e1 $58

    ld a, $a0                                     ; $4f7b: $3e $a0
    ld a, [hl]                                    ; $4f7d: $7e
    add e                                         ; $4f7e: $83
    nop                                           ; $4f7f: $00
    reti                                          ; $4f80: $d9


jr_05f_4f81:
    sub $d7                                       ; $4f81: $d6 $d7
    add d                                         ; $4f83: $82
    push hl                                       ; $4f84: $e5
    xor a                                         ; $4f85: $af
    push bc                                       ; $4f86: $c5
    pop bc                                        ; $4f87: $c1
    ld [bc], a                                    ; $4f88: $02
    ld b, d                                       ; $4f89: $42
    ldh [rLCDC], a                                ; $4f8a: $e0 $40
    pop bc                                        ; $4f8c: $c1
    pop hl                                        ; $4f8d: $e1
    rst $38                                       ; $4f8e: $ff
    add h                                         ; $4f8f: $84
    ld [hl], d                                    ; $4f90: $72
    add c                                         ; $4f91: $81
    nop                                           ; $4f92: $00
    jp c, $820c                                   ; $4f93: $da $0c $82

    rlca                                          ; $4f96: $07
    pop bc                                        ; $4f97: $c1
    call nc, $c4c5                                ; $4f98: $d4 $c5 $c4
    ld [bc], a                                    ; $4f9b: $02
    ldh [rSCY], a                                 ; $4f9c: $e0 $42
    pop bc                                        ; $4f9e: $c1

Call_05f_4f9f:
    pop hl                                        ; $4f9f: $e1
    sbc h                                         ; $4fa0: $9c
    ld a, a                                       ; $4fa1: $7f
    add d                                         ; $4fa2: $82
    ret nc                                        ; $4fa3: $d0

    pop de                                        ; $4fa4: $d1
    ret nz                                        ; $4fa5: $c0

    inc b                                         ; $4fa6: $04
    adc h                                         ; $4fa7: $8c
    nop                                           ; $4fa8: $00
    adc l                                         ; $4fa9: $8d
    inc c                                         ; $4faa: $0c
    add e                                         ; $4fab: $83
    jp $85c0                                      ; $4fac: $c3 $c0 $85


    pop bc                                        ; $4faf: $c1
    add c                                         ; $4fb0: $81
    db $e3                                        ; $4fb1: $e3
    inc a                                         ; $4fb2: $3c
    ld b, h                                       ; $4fb3: $44
    ret nz                                        ; $4fb4: $c0

    ld b, [hl]                                    ; $4fb5: $46
    and h                                         ; $4fb6: $a4
    jp $b3e0                                      ; $4fb7: $c3 $e0 $b3


    ld h, b                                       ; $4fba: $60
    inc b                                         ; $4fbb: $04
    adc e                                         ; $4fbc: $8b
    nop                                           ; $4fbd: $00
    adc l                                         ; $4fbe: $8d
    adc [hl]                                      ; $4fbf: $8e
    ld h, h                                       ; $4fc0: $64
    sbc [hl]                                      ; $4fc1: $9e
    ld b, [hl]                                    ; $4fc2: $46
    scf                                           ; $4fc3: $37
    xor a                                         ; $4fc4: $af
    ld b, l                                       ; $4fc5: $45
    ld b, l                                       ; $4fc6: $45
    add c                                         ; $4fc7: $81
    db $e4                                        ; $4fc8: $e4
    dec [hl]                                      ; $4fc9: $35
    ld b, d                                       ; $4fca: $42
    ld b, d                                       ; $4fcb: $42
    add b                                         ; $4fcc: $80
    add $81                                       ; $4fcd: $c6 $81
    ld b, b                                       ; $4fcf: $40
    halt                                          ; $4fd0: $76
    ld h, b                                       ; $4fd1: $60
    or e                                          ; $4fd2: $b3
    ld h, b                                       ; $4fd3: $60
    inc b                                         ; $4fd4: $04
    adc e                                         ; $4fd5: $8b
    nop                                           ; $4fd6: $00
    adc l                                         ; $4fd7: $8d
    and d                                         ; $4fd8: $a2
    ld h, c                                       ; $4fd9: $61
    adc [hl]                                      ; $4fda: $8e
    ld h, b                                       ; $4fdb: $60
    sbc [hl]                                      ; $4fdc: $9e
    jp z, Jump_000_0180                           ; $4fdd: $ca $80 $01

    ld d, l                                       ; $4fe0: $55
    ld [bc], a                                    ; $4fe1: $02
    db $e3                                        ; $4fe2: $e3
    add d                                         ; $4fe3: $82
    ret nz                                        ; $4fe4: $c0

    ld c, b                                       ; $4fe5: $48
    and d                                         ; $4fe6: $a2
    halt                                          ; $4fe7: $76
    ld h, e                                       ; $4fe8: $63
    or d                                          ; $4fe9: $b2
    ld h, c                                       ; $4fea: $61
    ret nc                                        ; $4feb: $d0

    ld l, l                                       ; $4fec: $6d
    ld [bc], a                                    ; $4fed: $02
    ld l, e                                       ; $4fee: $6b
    ld a, h                                       ; $4fef: $7c
    inc c                                         ; $4ff0: $0c
    ld h, c                                       ; $4ff1: $61
    adc c                                         ; $4ff2: $89
    add b                                         ; $4ff3: $80
    ld b, h                                       ; $4ff4: $44
    ld c, l                                       ; $4ff5: $4d
    ld e, d                                       ; $4ff6: $5a
    ld a, $ac                                     ; $4ff7: $3e $ac
    ld b, e                                       ; $4ff9: $43
    pop bc                                        ; $4ffa: $c1
    rra                                           ; $4ffb: $1f
    ld a, [hl-]                                   ; $4ffc: $3a
    ld b, l                                       ; $4ffd: $45
    xor [hl]                                      ; $4ffe: $ae
    xor a                                         ; $4fff: $af
    xor [hl]                                      ; $5000: $ae
    ld [$d6a4], sp                                ; $5001: $08 $a4 $d6
    ld d, e                                       ; $5004: $53
    ld [bc], a                                    ; $5005: $02
    ld l, e                                       ; $5006: $6b
    db $fc                                        ; $5007: $fc
    inc c                                         ; $5008: $0c
    ld h, c                                       ; $5009: $61
    call nz, Call_05f_51a0                        ; $500a: $c4 $a0 $51
    ld e, [hl]                                    ; $500d: $5e
    ld e, d                                       ; $500e: $5a
    ld a, $ad                                     ; $500f: $3e $ad
    dec [hl]                                      ; $5011: $35
    ld a, [bc]                                    ; $5012: $0a
    cp [hl]                                       ; $5013: $be
    ldh [$39], a                                  ; $5014: $e0 $39
    pop bc                                        ; $5016: $c1
    ldh [$af], a                                  ; $5017: $e0 $af
    ld [$d6a4], sp                                ; $5019: $08 $a4 $d6
    ld d, e                                       ; $501c: $53
    nop                                           ; $501d: $00
    rst $08                                       ; $501e: $cf
    pop bc                                        ; $501f: $c1
    ret nz                                        ; $5020: $c0

    rla                                           ; $5021: $17
    ld b, h                                       ; $5022: $44
    ld c, l                                       ; $5023: $4d
    ld d, [hl]                                    ; $5024: $56
    rlca                                          ; $5025: $07
    and b                                         ; $5026: $a0
    xor l                                         ; $5027: $ad
    call nz, $05a0                                ; $5028: $c4 $a0 $05
    pop bc                                        ; $502b: $c1
    ld [$b8a4], sp                                ; $502c: $08 $a4 $b8
    sub $53                                       ; $502f: $d6 $53
    nop                                           ; $5031: $00
    rst $08                                       ; $5032: $cf
    pop bc                                        ; $5033: $c1
    pop bc                                        ; $5034: $c1
    ld c, e                                       ; $5035: $4b
    ld e, b                                       ; $5036: $58
    ld b, h                                       ; $5037: $44
    ld b, $a1                                     ; $5038: $06 $a1
    ld b, l                                       ; $503a: $45
    ldh [rDMA], a                                 ; $503b: $e0 $46
    ld h, d                                       ; $503d: $62
    ld [$d6a4], sp                                ; $503e: $08 $a4 $d6
    ld d, e                                       ; $5041: $53
    inc c                                         ; $5042: $0c
    ld c, a                                       ; $5043: $4f
    inc b                                         ; $5044: $04
    and c                                         ; $5045: $a1
    ld d, l                                       ; $5046: $55
    ld d, d                                       ; $5047: $52
    ld b, h                                       ; $5048: $44
    ld b, $86                                     ; $5049: $06 $86
    add b                                         ; $504b: $80
    add hl, sp                                    ; $504c: $39
    ld b, a                                       ; $504d: $47
    ld b, [hl]                                    ; $504e: $46

Jump_05f_504f:
    ld h, d                                       ; $504f: $62
    ld b, a                                       ; $5050: $47
    ld h, b                                       ; $5051: $60
    ld [$008f], sp                                ; $5052: $08 $8f $00
    rst $10                                       ; $5055: $d7
    pop bc                                        ; $5056: $c1
    and c                                         ; $5057: $a1
    rst $28                                       ; $5058: $ef
    ld b, h                                       ; $5059: $44
    ld b, a                                       ; $505a: $47
    ld d, d                                       ; $505b: $52
    ld b, b                                       ; $505c: $40
    add h                                         ; $505d: $84
    and b                                         ; $505e: $a0
    ld d, d                                       ; $505f: $52
    ld h, c                                       ; $5060: $61
    ld h, c                                       ; $5061: $61
    ld h, b                                       ; $5062: $60
    ld [$8680], sp                                ; $5063: $08 $80 $86
    and d                                         ; $5066: $a2
    ld [$004d], sp                                ; $5067: $08 $4d $00
    rst $10                                       ; $506a: $d7
    add h                                         ; $506b: $84
    add c                                         ; $506c: $81
    ld b, h                                       ; $506d: $44
    ld c, l                                       ; $506e: $4d
    ccf                                           ; $506f: $3f
    pop hl                                        ; $5070: $e1
    rra                                           ; $5071: $1f
    ld [hl], $45                                  ; $5072: $36 $45
    ld d, d                                       ; $5074: $52
    ld h, c                                       ; $5075: $61
    ld d, [hl]                                    ; $5076: $56
    add h                                         ; $5077: $84
    ld b, b                                       ; $5078: $40
    ld b, h                                       ; $5079: $44
    ld b, c                                       ; $507a: $41
    ld [$bc4d], sp                                ; $507b: $08 $4d $bc
    nop                                           ; $507e: $00
    rst $10                                       ; $507f: $d7
    add c                                         ; $5080: $81
    and c                                         ; $5081: $a1
    ld d, c                                       ; $5082: $51
    ld e, [hl]                                    ; $5083: $5e
    ld h, c                                       ; $5084: $61
    ld d, d                                       ; $5085: $52
    push bc                                       ; $5086: $c5
    ld h, b                                       ; $5087: $60
    ld [hl], $2f                                  ; $5088: $36 $2f
    ld b, l                                       ; $508a: $45
    ld c, e                                       ; $508b: $4b
    ld h, c                                       ; $508c: $61
    ld e, h                                       ; $508d: $5c
    ld a, [hl-]                                   ; $508e: $3a
    ld h, b                                       ; $508f: $60
    sbc [hl]                                      ; $5090: $9e
    ld [$004f], sp                                ; $5091: $08 $4f $00
    rst $10                                       ; $5094: $d7
    db $ec                                        ; $5095: $ec
    add c                                         ; $5096: $81
    and b                                         ; $5097: $a0
    rst $38                                       ; $5098: $ff
    and b                                         ; $5099: $a0
    ld h, c                                       ; $509a: $61
    ld e, b                                       ; $509b: $58
    ccf                                           ; $509c: $3f
    ldh [$35], a                                  ; $509d: $e0 $35
    add hl, sp                                    ; $509f: $39
    ld c, a                                       ; $50a0: $4f
    push hl                                       ; $50a1: $e5
    ld e, b                                       ; $50a2: $58
    ld b, l                                       ; $50a3: $45
    add c                                         ; $50a4: $81
    sbc [hl]                                      ; $50a5: $9e
    nop                                           ; $50a6: $00
    rst $18                                       ; $50a7: $df
    nop                                           ; $50a8: $00
    ret                                           ; $50a9: $c9


    ld b, l                                       ; $50aa: $45
    ld b, e                                       ; $50ab: $43
    ld d, b                                       ; $50ac: $50
    ld a, e                                       ; $50ad: $7b
    ld d, d                                       ; $50ae: $52
    ld d, a                                       ; $50af: $57
    add b                                         ; $50b0: $80
    pop hl                                        ; $50b1: $e1
    dec [hl]                                      ; $50b2: $35
    ld a, $55                                     ; $50b3: $3e $55
    ld d, d                                       ; $50b5: $52
    ld b, l                                       ; $50b6: $45
    add c                                         ; $50b7: $81
    ld sp, hl                                     ; $50b8: $f9
    sbc [hl]                                      ; $50b9: $9e
    nop                                           ; $50ba: $00
    rst $18                                       ; $50bb: $df
    nop                                           ; $50bc: $00
    ret z                                         ; $50bd: $c8

    ld b, l                                       ; $50be: $45
    ld b, a                                       ; $50bf: $47
    ld c, h                                       ; $50c0: $4c
    ld e, l                                       ; $50c1: $5d
    ld e, h                                       ; $50c2: $5c
    dec de                                        ; $50c3: $1b
    ld b, e                                       ; $50c4: $43
    ld b, e                                       ; $50c5: $43
    add b                                         ; $50c6: $80
    add c                                         ; $50c7: $81
    add hl, sp                                    ; $50c8: $39
    ld b, l                                       ; $50c9: $45
    add l                                         ; $50ca: $85
    dec h                                         ; $50cb: $25
    nop                                           ; $50cc: $00
    rst $18                                       ; $50cd: $df
    nop                                           ; $50ce: $00
    add $de                                       ; $50cf: $c6 $de
    ld b, e                                       ; $50d1: $43
    ldh [rHDMA2], a                               ; $50d2: $e0 $52
    ld b, l                                       ; $50d4: $45
    ld [hl], $3b                                  ; $50d5: $36 $3b
    add h                                         ; $50d7: $84
    ld h, d                                       ; $50d8: $62
    ld b, a                                       ; $50d9: $47
    ld d, l                                       ; $50da: $55
    cp b                                          ; $50db: $b8
    ld bc, $00e1                                  ; $50dc: $01 $e1 $00
    rst $18                                       ; $50df: $df
    nop                                           ; $50e0: $00
    ret                                           ; $50e1: $c9


    ld b, l                                       ; $50e2: $45
    ld c, e                                       ; $50e3: $4b
    ld d, [hl]                                    ; $50e4: $56
    ld b, l                                       ; $50e5: $45
    ld h, d                                       ; $50e6: $62
    ld a, [hl-]                                   ; $50e7: $3a
    dec d                                         ; $50e8: $15
    ccf                                           ; $50e9: $3f
    add d                                         ; $50ea: $82
    jr nz, jr_05f_5147                            ; $50eb: $20 $5a

    add d                                         ; $50ed: $82
    ld h, b                                       ; $50ee: $60
    and c                                         ; $50ef: $a1
    halt                                          ; $50f0: $76
    inc b                                         ; $50f1: $04
    nop                                           ; $50f2: $00
    rst $18                                       ; $50f3: $df
    adc d                                         ; $50f4: $8a
    ld bc, $9f27                                  ; $50f5: $01 $27 $9f
    sbc h                                         ; $50f8: $9c
    ld d, l                                       ; $50f9: $55
    add d                                         ; $50fa: $82
    add e                                         ; $50fb: $83
    pop bc                                        ; $50fc: $c1
    and b                                         ; $50fd: $a0
    ld h, b                                       ; $50fe: $60
    nop                                           ; $50ff: $00
    pop bc                                        ; $5100: $c1
    add h                                         ; $5101: $84
    nop                                           ; $5102: $00
    and $86                                       ; $5103: $e6 $86
    ld bc, $a0a0                                  ; $5105: $01 $a0 $a0
    nop                                           ; $5108: $00
    rst $18                                       ; $5109: $df
    add [hl]                                      ; $510a: $86
    ld [hl+], a                                   ; $510b: $22
    and c                                         ; $510c: $a1
    ld b, l                                       ; $510d: $45
    ld b, l                                       ; $510e: $45
    dec b                                         ; $510f: $05
    ld a, $45                                     ; $5110: $3e $45
    ld h, d                                       ; $5112: $62
    ld c, l                                       ; $5113: $4d
    ld c, b                                       ; $5114: $48
    ld b, c                                       ; $5115: $41
    jp $8641                                      ; $5116: $c3 $41 $86


    ld b, h                                       ; $5119: $44
    nop                                           ; $511a: $00
    rst $18                                       ; $511b: $df
    nop                                           ; $511c: $00
    add l                                         ; $511d: $85
    ld [bc], a                                    ; $511e: $02
    ld b, h                                       ; $511f: $44
    ld h, d                                       ; $5120: $62
    add hl, sp                                    ; $5121: $39
    ld a, e                                       ; $5122: $7b
    ret nz                                        ; $5123: $c0

    ld b, b                                       ; $5124: $40
    add b                                         ; $5125: $80
    ld b, b                                       ; $5126: $40
    pop bc                                        ; $5127: $c1
    add [hl]                                      ; $5128: $86
    inc bc                                        ; $5129: $03
    nop                                           ; $512a: $00
    rst $18                                       ; $512b: $df
    nop                                           ; $512c: $00
    add h                                         ; $512d: $84
    dec e                                         ; $512e: $1d
    ld b, d                                       ; $512f: $42
    push bc                                       ; $5130: $c5
    ld b, d                                       ; $5131: $42
    ld a, [hl-]                                   ; $5132: $3a
    ccf                                           ; $5133: $3f
    ld b, e                                       ; $5134: $43
    ld bc, $c682                                  ; $5135: $01 $82 $c6
    ld [hl+], a                                   ; $5138: $22
    db $e4                                        ; $5139: $e4
    ld b, h                                       ; $513a: $44
    inc c                                         ; $513b: $0c
    nop                                           ; $513c: $00
    rst $18                                       ; $513d: $df
    nop                                           ; $513e: $00
    add c                                         ; $513f: $81
    ld b, h                                       ; $5140: $44
    inc a                                         ; $5141: $3c
    add d                                         ; $5142: $82
    ld h, l                                       ; $5143: $65
    ld bc, $c780                                  ; $5144: $01 $80 $c7

jr_05f_5147:
    nop                                           ; $5147: $00
    add [hl]                                      ; $5148: $86
    inc b                                         ; $5149: $04
    nop                                           ; $514a: $00
    db $fc                                        ; $514b: $fc
    or c                                          ; $514c: $b1
    nop                                           ; $514d: $00
    sub d                                         ; $514e: $92
    inc bc                                        ; $514f: $03
    ld h, l                                       ; $5150: $65
    rst $38                                       ; $5151: $ff
    ld h, h                                       ; $5152: $64
    ld a, [hl]                                    ; $5153: $7e
    ld h, l                                       ; $5154: $65
    db $fc                                        ; $5155: $fc
    or c                                          ; $5156: $b1
    nop                                           ; $5157: $00
    sub d                                         ; $5158: $92
    inc b                                         ; $5159: $04
    ld b, h                                       ; $515a: $44
    ld b, $43                                     ; $515b: $06 $43
    jr nz, @+$3a                                  ; $515d: $20 $38

    scf                                           ; $515f: $37
    cp a                                          ; $5160: $bf
    and b                                         ; $5161: $a0
    cp l                                          ; $5162: $bd
    ld h, c                                       ; $5163: $61
    ld a, [hl]                                    ; $5164: $7e
    pop bc                                        ; $5165: $c1
    db $fc                                        ; $5166: $fc
    or c                                          ; $5167: $b1
    nop                                           ; $5168: $00
    ld c, a                                       ; $5169: $4f
    nop                                           ; $516a: $00
    ld b, a                                       ; $516b: $47
    ld bc, $e53f                                  ; $516c: $01 $3f $e5
    ld b, b                                       ; $516f: $40
    inc hl                                        ; $5170: $23
    ld a, l                                       ; $5171: $7d
    and e                                         ; $5172: $a3
    db $fc                                        ; $5173: $fc
    or e                                          ; $5174: $b3
    nop                                           ; $5175: $00
    ld d, d                                       ; $5176: $52
    jp Jump_05f_7e25                              ; $5177: $c3 $25 $7e


    ld [hl+], a                                   ; $517a: $22
    dec b                                         ; $517b: $05
    add hl, sp                                    ; $517c: $39
    or c                                          ; $517d: $b1
    ld [hl+], a                                   ; $517e: $22
    and c                                         ; $517f: $a1
    ld b, c                                       ; $5180: $41
    ld b, b                                       ; $5181: $40
    db $fc                                        ; $5182: $fc
    or c                                          ; $5183: $b1
    nop                                           ; $5184: $00
    ld d, d                                       ; $5185: $52
    jp nz, Jump_000_3e25                          ; $5186: $c2 $25 $3e

    ld [hl+], a                                   ; $5189: $22
    ld bc, $353e                                  ; $518a: $01 $3e $35
    ld [bc], a                                    ; $518d: $02
    cp h                                          ; $518e: $bc
    ld hl, $b1fc                                  ; $518f: $21 $fc $b1
    nop                                           ; $5192: $00
    ld d, b                                       ; $5193: $50
    ld b, b                                       ; $5194: $40
    ld hl, $c33e                                  ; $5195: $21 $3e $c3
    ret nz                                        ; $5198: $c0

    push hl                                       ; $5199: $e5
    rrca                                          ; $519a: $0f
    xor a                                         ; $519b: $af
    dec bc                                        ; $519c: $0b
    inc bc                                        ; $519d: $03
    inc bc                                        ; $519e: $03
    ld a, d                                       ; $519f: $7a

Call_05f_51a0:
    ld h, h                                       ; $51a0: $64
    nop                                           ; $51a1: $00
    rst $18                                       ; $51a2: $df
    ld b, e                                       ; $51a3: $43
    ld [bc], a                                    ; $51a4: $02
    rst $38                                       ; $51a5: $ff
    ret z                                         ; $51a6: $c8

    rst $38                                       ; $51a7: $ff
    ld a, $46                                     ; $51a8: $3e $46
    ld [bc], a                                    ; $51aa: $02
    rlca                                          ; $51ab: $07
    dec c                                         ; $51ac: $0d
    sbc d                                         ; $51ad: $9a
    dec c                                         ; $51ae: $0d
    ld [bc], a                                    ; $51af: $02
    ldh [$fb], a                                  ; $51b0: $e0 $fb
    and c                                         ; $51b2: $a1
    db $fc                                        ; $51b3: $fc
    xor a                                         ; $51b4: $af
    nop                                           ; $51b5: $00
    ld d, d                                       ; $51b6: $52
    rst $38                                       ; $51b7: $ff
    jp z, $e0c0                                   ; $51b8: $ca $c0 $e0

    dec c                                         ; $51bb: $0d
    rlca                                          ; $51bc: $07
    dec c                                         ; $51bd: $0d
    ldh [$c0], a                                  ; $51be: $e0 $c0
    pop hl                                        ; $51c0: $e1
    db $fc                                        ; $51c1: $fc
    or c                                          ; $51c2: $b1
    nop                                           ; $51c3: $00
    pop de                                        ; $51c4: $d1
    ret nz                                        ; $51c5: $c0

    ld bc, $c7ff                                  ; $51c6: $01 $ff $c7
    ld a, [hl-]                                   ; $51c9: $3a
    ld b, l                                       ; $51ca: $45
    ld b, [hl]                                    ; $51cb: $46
    rrca                                          ; $51cc: $0f
    dec bc                                        ; $51cd: $0b
    xor [hl]                                      ; $51ce: $ae
    inc bc                                        ; $51cf: $03
    inc bc                                        ; $51d0: $03
    db $fc                                        ; $51d1: $fc
    or h                                          ; $51d2: $b4
    nop                                           ; $51d3: $00
    rst $08                                       ; $51d4: $cf
    ld b, b                                       ; $51d5: $40
    jr nz, jr_05f_5225                            ; $51d6: $20 $4d

    nop                                           ; $51d8: $00
    rla                                           ; $51d9: $17

jr_05f_51da:
    ld b, l                                       ; $51da: $45
    scf                                           ; $51db: $37
    jr c, jr_05f_51da                             ; $51dc: $38 $fc

    and l                                         ; $51de: $a5
    ld b, b                                       ; $51df: $40
    cp $a1                                        ; $51e0: $fe $a1
    ld a, [$fc01]                                 ; $51e2: $fa $01 $fc
    or c                                          ; $51e5: $b1
    ldh [rP1], a                                  ; $51e6: $e0 $00
    rst $08                                       ; $51e8: $cf
    rst $38                                       ; $51e9: $ff
    ld [hl+], a                                   ; $51ea: $22
    dec a                                         ; $51eb: $3d
    pop hl                                        ; $51ec: $e1
    db $fc                                        ; $51ed: $fc
    ld h, c                                       ; $51ee: $61
    ccf                                           ; $51ef: $3f
    rst $00                                       ; $51f0: $c7
    ld b, [hl]                                    ; $51f1: $46
    sbc h                                         ; $51f2: $9c
    sbc l                                         ; $51f3: $9d
    nop                                           ; $51f4: $00
    db $fc                                        ; $51f5: $fc
    and e                                         ; $51f6: $a3
    ld hl, sp+$2b                                 ; $51f7: $f8 $2b
    nop                                           ; $51f9: $00
    db $d3                                        ; $51fa: $d3
    ld c, l                                       ; $51fb: $4d
    jp nz, $e5bf                                  ; $51fc: $c2 $bf $e5

    ccf                                           ; $51ff: $3f
    ldh [$3d], a                                  ; $5200: $e0 $3d
    jp nz, Jump_05f_62f8                          ; $5202: $c2 $f8 $62

    db $10                                        ; $5205: $10
    ld hl, sp+$2d                                 ; $5206: $f8 $2d
    nop                                           ; $5208: $00
    call nc, $e24e                                ; $5209: $d4 $4e $e2
    inc a                                         ; $520c: $3c
    push hl                                       ; $520d: $e5
    ld b, d                                       ; $520e: $42
    ldh a, [$e4]                                  ; $520f: $f0 $e4
    halt                                          ; $5211: $76
    ld hl, $2df8                                  ; $5212: $21 $f8 $2d
    jr jr_05f_5217                                ; $5215: $18 $00

jr_05f_5217:
    call nc, $e4fd                                ; $5217: $d4 $fd $e4
    jr c, jr_05f_527e                             ; $521a: $38 $62

    inc a                                         ; $521c: $3c
    ld b, h                                       ; $521d: $44
    cpl                                           ; $521e: $2f
    db $e3                                        ; $521f: $e3
    ld hl, sp+$32                                 ; $5220: $f8 $32
    nop                                           ; $5222: $00
    adc a                                         ; $5223: $8f
    ld [hl], h                                    ; $5224: $74

jr_05f_5225:
    rst $38                                       ; $5225: $ff
    and e                                         ; $5226: $a3
    cp a                                          ; $5227: $bf
    and $3b                                       ; $5228: $e6 $3b
    cp $82                                        ; $522a: $fe $82
    ld b, l                                       ; $522c: $45
    ld b, c                                       ; $522d: $41
    ld b, l                                       ; $522e: $45
    ld hl, sp+$33                                 ; $522f: $f8 $33
    call z, $cf00                                 ; $5231: $cc $00 $cf
    cp [hl]                                       ; $5234: $be
    and b                                         ; $5235: $a0
    sbc l                                         ; $5236: $9d
    sbc l                                         ; $5237: $9d
    cp l                                          ; $5238: $bd
    ld [c], a                                     ; $5239: $e2
    push bc                                       ; $523a: $c5
    ld h, c                                       ; $523b: $61
    ld b, l                                       ; $523c: $45
    ld b, e                                       ; $523d: $43
    dec c                                         ; $523e: $0d
    ccf                                           ; $523f: $3f
    pop bc                                        ; $5240: $c1
    pop hl                                        ; $5241: $e1
    ld [hl], $a6                                  ; $5242: $36 $a6
    cp b                                          ; $5244: $b8
    add c                                         ; $5245: $81
    ld hl, sp+$30                                 ; $5246: $f8 $30
    nop                                           ; $5248: $00
    adc a                                         ; $5249: $8f
    sbc d                                         ; $524a: $9a
    add d                                         ; $524b: $82
    jr c, jr_05f_52c9                             ; $524c: $38 $7b

    and d                                         ; $524e: $a2
    inc c                                         ; $524f: $0c
    ld [c], a                                     ; $5250: $e2
    ld [hl], l                                    ; $5251: $75
    jp $a762                                      ; $5252: $c3 $62 $a7


    ld h, [hl]                                    ; $5255: $66
    ld [hl], a                                    ; $5256: $77
    add b                                         ; $5257: $80
    ld a, b                                       ; $5258: $78
    ld h, b                                       ; $5259: $60
    ret nz                                        ; $525a: $c0

    nop                                           ; $525b: $00
    db $db                                        ; $525c: $db
    jr jr_05f_52c0                                ; $525d: $18 $61

    sub [hl]                                      ; $525f: $96
    ld b, c                                       ; $5260: $41
    ld a, d                                       ; $5261: $7a
    ld b, b                                       ; $5262: $40
    ld a, l                                       ; $5263: $7d
    db $e3                                        ; $5264: $e3
    pop bc                                        ; $5265: $c1
    push hl                                       ; $5266: $e5
    ld h, a                                       ; $5267: $67
    and e                                         ; $5268: $a3
    ld bc, $bf68                                  ; $5269: $01 $68 $bf
    ldh [$f8], a                                  ; $526c: $e0 $f8
    ld [bc], a                                    ; $526e: $02
    nop                                           ; $526f: $00
    sbc b                                         ; $5270: $98
    db $fc                                        ; $5271: $fc
    ld h, d                                       ; $5272: $62
    inc d                                         ; $5273: $14
    ld hl, $2110                                  ; $5274: $21 $10 $21
    cp [hl]                                       ; $5277: $be
    db $e3                                        ; $5278: $e3
    cp $38                                        ; $5279: $fe $38
    jp nz, $6762                                  ; $527b: $c2 $62 $67

jr_05f_527e:
    dec [hl]                                      ; $527e: $35
    dec [hl]                                      ; $527f: $35
    ld l, h                                       ; $5280: $6c
    or a                                          ; $5281: $b7
    cp b                                          ; $5282: $b8
    add e                                         ; $5283: $83
    sbc h                                         ; $5284: $9c
    sbc a                                         ; $5285: $9f
    nop                                           ; $5286: $00
    db $db                                        ; $5287: $db
    db $fc                                        ; $5288: $fc
    and e                                         ; $5289: $a3
    inc d                                         ; $528a: $14
    ld hl, $4310                                  ; $528b: $21 $10 $43
    or [hl]                                       ; $528e: $b6
    add c                                         ; $528f: $81
    xor a                                         ; $5290: $af
    cp $b8                                        ; $5291: $fe $b8
    and b                                         ; $5293: $a0
    cp c                                          ; $5294: $b9
    cp d                                          ; $5295: $ba
    and e                                         ; $5296: $a3
    dec [hl]                                      ; $5297: $35
    ld l, h                                       ; $5298: $6c
    ld l, a                                       ; $5299: $6f
    ld l, [hl]                                    ; $529a: $6e
    pop bc                                        ; $529b: $c1
    ld [hl], $7e                                  ; $529c: $36 $7e
    and c                                         ; $529e: $a1
    nop                                           ; $529f: $00
    reti                                          ; $52a0: $d9


    db $fc                                        ; $52a1: $fc
    ld h, l                                       ; $52a2: $65
    ld hl, sp+$64                                 ; $52a3: $f8 $64
    ld [hl], l                                    ; $52a5: $75
    add h                                         ; $52a6: $84
    ld b, l                                       ; $52a7: $45
    ld [hl], $17                                  ; $52a8: $36 $17
    ld l, [hl]                                    ; $52aa: $6e
    ld l, a                                       ; $52ab: $6f
    ld l, h                                       ; $52ac: $6c
    pop bc                                        ; $52ad: $c1
    pop hl                                        ; $52ae: $e1
    ld b, l                                       ; $52af: $45
    ld bc, $00c0                                  ; $52b0: $01 $c0 $00
    jp c, $63fc                                   ; $52b3: $da $fc $63

    inc bc                                        ; $52b6: $03
    and b                                         ; $52b7: $a0
    and b                                         ; $52b8: $a0
    ld hl, sp+$23                                 ; $52b9: $f8 $23
    ld a, [hl]                                    ; $52bb: $7e
    push hl                                       ; $52bc: $e5
    cp a                                          ; $52bd: $bf
    ld [c], a                                     ; $52be: $e2
    pop bc                                        ; $52bf: $c1

jr_05f_52c0:
    pop hl                                        ; $52c0: $e1
    ld a, d                                       ; $52c1: $7a
    ld b, h                                       ; $52c2: $44
    nop                                           ; $52c3: $00
    reti                                          ; $52c4: $d9


    inc b                                         ; $52c5: $04
    ld hl, sp+$29                                 ; $52c6: $f8 $29
    ld a, [hl]                                    ; $52c8: $7e

jr_05f_52c9:
    db $e3                                        ; $52c9: $e3
    sbc l                                         ; $52ca: $9d
    inc [hl]                                      ; $52cb: $34
    ret nz                                        ; $52cc: $c0

    ld a, [hl]                                    ; $52cd: $7e
    ldh [$c1], a                                  ; $52ce: $e0 $c1
    db $e3                                        ; $52d0: $e3
    db $fc                                        ; $52d1: $fc
    ld b, e                                       ; $52d2: $43
    nop                                           ; $52d3: $00
    sbc b                                         ; $52d4: $98
    nop                                           ; $52d5: $00
    ld hl, sp+$67                                 ; $52d6: $f8 $67
    db $fc                                        ; $52d8: $fc
    push bc                                       ; $52d9: $c5
    inc c                                         ; $52da: $0c
    ld h, b                                       ; $52db: $60
    cp h                                          ; $52dc: $bc
    pop hl                                        ; $52dd: $e1
    cp c                                          ; $52de: $b9
    ldh [$fc], a                                  ; $52df: $e0 $fc
    ld hl, $dd00                                  ; $52e1: $21 $00 $dd
    ld hl, sp+$27                                 ; $52e4: $f8 $27
    nop                                           ; $52e6: $00
    db $fc                                        ; $52e7: $fc
    push bc                                       ; $52e8: $c5
    adc d                                         ; $52e9: $8a
    ld b, h                                       ; $52ea: $44
    add l                                         ; $52eb: $85
    ld b, d                                       ; $52ec: $42
    nop                                           ; $52ed: $00
    sbc a                                         ; $52ee: $9f
    ld hl, sp+$27                                 ; $52ef: $f8 $27
    db $f4                                        ; $52f1: $f4
    inc bc                                        ; $52f2: $03
    ld a, d                                       ; $52f3: $7a
    add sp, -$7e                                  ; $52f4: $e8 $82
    db $e4                                        ; $52f6: $e4
    nop                                           ; $52f7: $00
    nop                                           ; $52f8: $00
    adc l                                         ; $52f9: $8d
    nop                                           ; $52fa: $00
    nop                                           ; $52fb: $00
    nop                                           ; $52fc: $00
    pop bc                                        ; $52fd: $c1
    nop                                           ; $52fe: $00
    rst $38                                       ; $52ff: $ff
    rst $38                                       ; $5300: $ff
    rst $38                                       ; $5301: $ff
    rst $38                                       ; $5302: $ff
    rst $38                                       ; $5303: $ff
    rst $38                                       ; $5304: $ff
    rst $38                                       ; $5305: $ff
    rst $38                                       ; $5306: $ff
    rst $38                                       ; $5307: $ff
    rst $38                                       ; $5308: $ff
    nop                                           ; $5309: $00
    nop                                           ; $530a: $00
    ld bc, $fe80                                  ; $530b: $01 $80 $fe
    ldh [rIE], a                                  ; $530e: $e0 $ff
    rst $38                                       ; $5310: $ff
    rst $38                                       ; $5311: $ff
    rst $38                                       ; $5312: $ff
    rst $38                                       ; $5313: $ff
    add sp, $00                                   ; $5314: $e8 $00
    nop                                           ; $5316: $00
    nop                                           ; $5317: $00
    ld [bc], a                                    ; $5318: $02
    nop                                           ; $5319: $00
    daa                                           ; $531a: $27
    ld b, $02                                     ; $531b: $06 $02
    ld bc, $091d                                  ; $531d: $01 $1d $09
    ld [bc], a                                    ; $5320: $02
    ld [bc], a                                    ; $5321: $02
    add hl, hl                                    ; $5322: $29
    add hl, bc                                    ; $5323: $09
    ld [bc], a                                    ; $5324: $02
    inc bc                                        ; $5325: $03
    ld a, [de]                                    ; $5326: $1a
    inc c                                         ; $5327: $0c
    ld [bc], a                                    ; $5328: $02
    inc b                                         ; $5329: $04
    jr z, jr_05f_5339                             ; $532a: $28 $0d

    ld [bc], a                                    ; $532c: $02
    dec b                                         ; $532d: $05
    inc h                                         ; $532e: $24
    ld c, $02                                     ; $532f: $0e $02
    ld b, $26                                     ; $5331: $06 $26
    ld c, $02                                     ; $5333: $0e $02
    rlca                                          ; $5335: $07
    jr jr_05f_5347                                ; $5336: $18 $0f

    ld [bc], a                                    ; $5338: $02

jr_05f_5339:
    ld [$0f23], sp                                ; $5339: $08 $23 $0f
    ld [bc], a                                    ; $533c: $02
    add hl, bc                                    ; $533d: $09
    ld [hl+], a                                   ; $533e: $22
    db $10                                        ; $533f: $10
    ld [bc], a                                    ; $5340: $02
    ld a, [bc]                                    ; $5341: $0a
    ld hl, $0211                                  ; $5342: $21 $11 $02
    dec bc                                        ; $5345: $0b
    dec d                                         ; $5346: $15

jr_05f_5347:
    ld [de], a                                    ; $5347: $12
    ld [bc], a                                    ; $5348: $02
    inc c                                         ; $5349: $0c
    ld hl, $0214                                  ; $534a: $21 $14 $02
    dec c                                         ; $534d: $0d
    add hl, de                                    ; $534e: $19
    dec d                                         ; $534f: $15
    ld [bc], a                                    ; $5350: $02
    ld c, $20                                     ; $5351: $0e $20
    dec d                                         ; $5353: $15
    ld [bc], a                                    ; $5354: $02
    rrca                                          ; $5355: $0f
    ld [hl+], a                                   ; $5356: $22
    dec d                                         ; $5357: $15
    ld [bc], a                                    ; $5358: $02
    db $10                                        ; $5359: $10
    dec de                                        ; $535a: $1b
    ld d, $02                                     ; $535b: $16 $02
    ld de, $161f                                  ; $535d: $11 $1f $16
    ld [bc], a                                    ; $5360: $02
    ld [de], a                                    ; $5361: $12
    ld hl, $0216                                  ; $5362: $21 $16 $02
    inc de                                        ; $5365: $13
    inc d                                         ; $5366: $14
    rla                                           ; $5367: $17
    ld [bc], a                                    ; $5368: $02
    inc d                                         ; $5369: $14
    ld hl, $0219                                  ; $536a: $21 $19 $02
    dec d                                         ; $536d: $15
    inc d                                         ; $536e: $14
    inc e                                         ; $536f: $1c
    ld [bc], a                                    ; $5370: $02
    ld d, $23                                     ; $5371: $16 $23
    inc e                                         ; $5373: $1c
    ld [bc], a                                    ; $5374: $02
    rla                                           ; $5375: $17
    ld hl, $021d                                  ; $5376: $21 $1d $02
    jr jr_05f_539d                                ; $5379: $18 $22

    jr nz, @+$04                                  ; $537b: $20 $02

    add hl, de                                    ; $537d: $19
    ld hl, $0221                                  ; $537e: $21 $21 $02
    ld a, [de]                                    ; $5381: $1a
    ld hl, $0223                                  ; $5382: $21 $23 $02
    dec de                                        ; $5385: $1b
    inc hl                                        ; $5386: $23
    inc hl                                        ; $5387: $23
    ld [bc], a                                    ; $5388: $02
    inc e                                         ; $5389: $1c
    jr nz, jr_05f_53b0                            ; $538a: $20 $24

    ld [bc], a                                    ; $538c: $02
    dec e                                         ; $538d: $1d
    rra                                           ; $538e: $1f
    dec h                                         ; $538f: $25
    ld [bc], a                                    ; $5390: $02
    ld e, $21                                     ; $5391: $1e $21
    dec h                                         ; $5393: $25
    ld [bc], a                                    ; $5394: $02
    rra                                           ; $5395: $1f
    jr nz, jr_05f_53be                            ; $5396: $20 $26

    ld [bc], a                                    ; $5398: $02
    jr nz, jr_05f_53bd                            ; $5399: $20 $22

    ld h, $02                                     ; $539b: $26 $02

jr_05f_539d:
    ld hl, $2714                                  ; $539d: $21 $14 $27
    ld [bc], a                                    ; $53a0: $02
    ld [hl+], a                                   ; $53a1: $22
    inc h                                         ; $53a2: $24
    daa                                           ; $53a3: $27
    ld [bc], a                                    ; $53a4: $02
    inc hl                                        ; $53a5: $23
    dec h                                         ; $53a6: $25
    dec hl                                        ; $53a7: $2b
    ld [bc], a                                    ; $53a8: $02
    inc h                                         ; $53a9: $24
    dec d                                         ; $53aa: $15
    cpl                                           ; $53ab: $2f
    ld [bc], a                                    ; $53ac: $02
    dec h                                         ; $53ad: $25
    ld h, $2f                                     ; $53ae: $26 $2f

jr_05f_53b0:
    ld [bc], a                                    ; $53b0: $02
    ld h, $18                                     ; $53b1: $26 $18
    ld [hl-], a                                   ; $53b3: $32
    ld [bc], a                                    ; $53b4: $02
    daa                                           ; $53b5: $27
    jr z, jr_05f_53ea                             ; $53b6: $28 $32

    ld [bc], a                                    ; $53b8: $02
    jr z, jr_05f_53e6                             ; $53b9: $28 $2b

    inc [hl]                                      ; $53bb: $34
    ld [bc], a                                    ; $53bc: $02

jr_05f_53bd:
    add hl, hl                                    ; $53bd: $29

jr_05f_53be:
    inc e                                         ; $53be: $1c
    ld [hl], $02                                  ; $53bf: $36 $02
    ld a, [hl+]                                   ; $53c1: $2a
    jr nz, jr_05f_53fd                            ; $53c2: $20 $39

    rst $38                                       ; $53c4: $ff
    rst $38                                       ; $53c5: $ff
    rst $38                                       ; $53c6: $ff
    rst $08                                       ; $53c7: $cf
    ld d, e                                       ; $53c8: $53
    rst $00                                       ; $53c9: $c7
    ld d, l                                       ; $53ca: $55
    add hl, bc                                    ; $53cb: $09
    ld e, b                                       ; $53cc: $58
    add hl, hl                                    ; $53cd: $29
    ld e, b                                       ; $53ce: $58
    ccf                                           ; $53cf: $3f
    dec c                                         ; $53d0: $0d
    dec c                                         ; $53d1: $0d
    dec c                                         ; $53d2: $0d
    ld c, $0e                                     ; $53d3: $0e $0e
    ld c, $fa                                     ; $53d5: $0e $fa
    rst $38                                       ; $53d7: $ff
    db $f4                                        ; $53d8: $f4
    rst $30                                       ; $53d9: $f7
    nop                                           ; $53da: $00
    rst $38                                       ; $53db: $ff
    rst $38                                       ; $53dc: $ff
    rst $38                                       ; $53dd: $ff
    rst $38                                       ; $53de: $ff
    rst $38                                       ; $53df: $ff
    rst $38                                       ; $53e0: $ff
    ld sp, hl                                     ; $53e1: $f9
    ld hl, sp+$5b                                 ; $53e2: $f8 $5b
    rst $38                                       ; $53e4: $ff
    db $f4                                        ; $53e5: $f4

jr_05f_53e6:
    ld hl, sp-$5f                                 ; $53e6: $f8 $a1
    rst $38                                       ; $53e8: $ff
    rst $38                                       ; $53e9: $ff

jr_05f_53ea:
    rst $38                                       ; $53ea: $ff
    nop                                           ; $53eb: $00
    rst $38                                       ; $53ec: $ff
    rst $38                                       ; $53ed: $ff
    ld b, e                                       ; $53ee: $43
    rst $38                                       ; $53ef: $ff
    ld a, [$80ff]                                 ; $53f0: $fa $ff $80
    rst $18                                       ; $53f3: $df
    rst $38                                       ; $53f4: $ff
    rst $38                                       ; $53f5: $ff
    rst $38                                       ; $53f6: $ff
    rst $38                                       ; $53f7: $ff
    rst $38                                       ; $53f8: $ff
    rst $38                                       ; $53f9: $ff
    dec a                                         ; $53fa: $3d
    rst $38                                       ; $53fb: $ff
    nop                                           ; $53fc: $00

jr_05f_53fd:
    ld a, [$80ff]                                 ; $53fd: $fa $ff $80
    rst $18                                       ; $5400: $df
    rst $38                                       ; $5401: $ff
    rst $38                                       ; $5402: $ff
    rst $38                                       ; $5403: $ff
    rst $38                                       ; $5404: $ff
    rst $38                                       ; $5405: $ff
    rst $38                                       ; $5406: $ff
    ld e, e                                       ; $5407: $5b
    rst $38                                       ; $5408: $ff
    ld a, [$ffff]                                 ; $5409: $fa $ff $ff
    rst $38                                       ; $540c: $ff
    nop                                           ; $540d: $00
    rst $38                                       ; $540e: $ff
    rst $38                                       ; $540f: $ff
    rst $38                                       ; $5410: $ff
    rst $38                                       ; $5411: $ff
    dec a                                         ; $5412: $3d
    rst $38                                       ; $5413: $ff
    ld a, [$80ff]                                 ; $5414: $fa $ff $80
    rst $18                                       ; $5417: $df
    rst $38                                       ; $5418: $ff
    rst $38                                       ; $5419: $ff
    rst $38                                       ; $541a: $ff
    rst $38                                       ; $541b: $ff
    rst $38                                       ; $541c: $ff
    rst $38                                       ; $541d: $ff
    ld a, h                                       ; $541e: $7c
    ld b, e                                       ; $541f: $43
    rst $38                                       ; $5420: $ff
    ld b, e                                       ; $5421: $43
    and $2d                                       ; $5422: $e6 $2d
    dec c                                         ; $5424: $0d
    dec l                                         ; $5425: $2d
    dec l                                         ; $5426: $2d
    dec l                                         ; $5427: $2d
    add b                                         ; $5428: $80
    rst $18                                       ; $5429: $df
    nop                                           ; $542a: $00
    sbc b                                         ; $542b: $98
    or $c2                                        ; $542c: $f6 $c2
    ldh [$bf], a                                  ; $542e: $e0 $bf
    ldh [$79], a                                  ; $5430: $e0 $79
    rst $38                                       ; $5432: $ff
    ret nz                                        ; $5433: $c0

    rst $38                                       ; $5434: $ff
    dec a                                         ; $5435: $3d
    rst $38                                       ; $5436: $ff
    sub d                                         ; $5437: $92
    ret                                           ; $5438: $c9


    ld c, b                                       ; $5439: $48
    ld [c], a                                     ; $543a: $e2
    ld b, b                                       ; $543b: $40
    push bc                                       ; $543c: $c5
    db $e3                                        ; $543d: $e3
    cp l                                          ; $543e: $bd
    db $e3                                        ; $543f: $e3
    add b                                         ; $5440: $80
    rst $18                                       ; $5441: $df
    adc c                                         ; $5442: $89
    pop af                                        ; $5443: $f1
    ld b, l                                       ; $5444: $45
    pop hl                                        ; $5445: $e1
    ld a, [hl-]                                   ; $5446: $3a
    pop bc                                        ; $5447: $c1
    dec c                                         ; $5448: $0d
    dec a                                         ; $5449: $3d
    rst $38                                       ; $544a: $ff
    nop                                           ; $544b: $00
    ld l, e                                       ; $544c: $6b
    db $ed                                        ; $544d: $ed
    adc $ea                                       ; $544e: $ce $ea
    db $fd                                        ; $5450: $fd
    rst $10                                       ; $5451: $d7
    db $db                                        ; $5452: $db
    xor h                                         ; $5453: $ac
    sub b                                         ; $5454: $90
    ret nz                                        ; $5455: $c0

    res 4, b                                      ; $5456: $cb $a0
    adc d                                         ; $5458: $8a
    pop hl                                        ; $5459: $e1
    adc [hl]                                      ; $545a: $8e
    db $e4                                        ; $545b: $e4
    nop                                           ; $545c: $00
    pop af                                        ; $545d: $f1
    pop hl                                        ; $545e: $e1
    rst $28                                       ; $545f: $ef
    ld [c], a                                     ; $5460: $e2
    ld a, d                                       ; $5461: $7a
    sub $8b                                       ; $5462: $d6 $8b
    ld [$e154], a                                 ; $5464: $ea $54 $e1
    ret nz                                        ; $5467: $c0

    ld [c], a                                     ; $5468: $e2

jr_05f_5469:
    adc d                                         ; $5469: $8a
    push hl                                       ; $546a: $e5
    cp $c2                                        ; $546b: $fe $c2
    ldh [$7d], a                                  ; $546d: $e0 $7d
    ei                                            ; $546f: $fb
    sub d                                         ; $5470: $92
    ret z                                         ; $5471: $c8

    ld c, [hl]                                    ; $5472: $4e
    and c                                         ; $5473: $a1
    jp nc, $8ce3                                  ; $5474: $d2 $e3 $8c

    db $e3                                        ; $5477: $e3
    ld c, l                                       ; $5478: $4d
    dec c                                         ; $5479: $0d
    dec c                                         ; $547a: $0d
    rlca                                          ; $547b: $07
    ld c, l                                       ; $547c: $4d
    dec l                                         ; $547d: $2d
    ld c, l                                       ; $547e: $4d
    add b                                         ; $547f: $80
    rst $18                                       ; $5480: $df
    adc h                                         ; $5481: $8c
    push bc                                       ; $5482: $c5
    ret c                                         ; $5483: $d8

    pop bc                                        ; $5484: $c1
    ld a, $e5                                     ; $5485: $3e $e5
    sub b                                         ; $5487: $90
    ldh [$3f], a                                  ; $5488: $e0 $3f
    ld c, l                                       ; $548a: $4d
    dec c                                         ; $548b: $0d
    ld l, l                                       ; $548c: $6d
    dec bc                                        ; $548d: $0b
    dec bc                                        ; $548e: $0b
    ld c, l                                       ; $548f: $4d
    cp e                                          ; $5490: $bb
    jp nz, $e23e                                  ; $5491: $c2 $3e $e2

    ld h, b                                       ; $5494: $60
    ld a, d                                       ; $5495: $7a
    ret nc                                        ; $5496: $d0

    dec d                                         ; $5497: $15
    ret                                           ; $5498: $c9


    ld c, c                                       ; $5499: $49
    pop bc                                        ; $549a: $c1
    adc [hl]                                      ; $549b: $8e
    and d                                         ; $549c: $a2
    ld [$4dc1], sp                                ; $549d: $08 $c1 $4d
    ld c, l                                       ; $54a0: $4d
    cp [hl]                                       ; $54a1: $be
    add b                                         ; $54a2: $80
    rrca                                          ; $54a3: $0f
    ld l, l                                       ; $54a4: $6d
    dec bc                                        ; $54a5: $0b
    dec hl                                        ; $54a6: $2b
    dec bc                                        ; $54a7: $0b
    cp [hl]                                       ; $54a8: $be
    pop hl                                        ; $54a9: $e1
    ei                                            ; $54aa: $fb
    jp $fb3d                                      ; $54ab: $c3 $3d $fb


    ld d, l                                       ; $54ae: $55
    ldh [$b3], a                                  ; $54af: $e0 $b3
    ld l, l                                       ; $54b1: $6d
    ld c, l                                       ; $54b2: $4d
    rst $38                                       ; $54b3: $ff
    ldh [$fb], a                                  ; $54b4: $e0 $fb
    pop hl                                        ; $54b6: $e1
    dec l                                         ; $54b7: $2d
    dec c                                         ; $54b8: $0d
    db $fc                                        ; $54b9: $fc
    ldh [rKEY1], a                                ; $54ba: $e0 $4d
    dec hl                                        ; $54bc: $2b
    ld c, l                                       ; $54bd: $4d
    dec c                                         ; $54be: $0d
    jp Jump_000_2be0                              ; $54bf: $c3 $e0 $2b


    cp l                                          ; $54c2: $bd
    ldh [$6d], a                                  ; $54c3: $e0 $6d
    xor h                                         ; $54c5: $ac
    pop bc                                        ; $54c6: $c1
    jr c, jr_05f_5469                             ; $54c7: $38 $a0

    and h                                         ; $54c9: $a4
    db $fd                                        ; $54ca: $fd
    ret nc                                        ; $54cb: $d0

    rst $08                                       ; $54cc: $cf
    and a                                         ; $54cd: $a7
    dec c                                         ; $54ce: $0d
    inc de                                        ; $54cf: $13
    ldh [$c7], a                                  ; $54d0: $e0 $c7
    and b                                         ; $54d2: $a0
    dec bc                                        ; $54d3: $0b
    ld a, d                                       ; $54d4: $7a
    pop bc                                        ; $54d5: $c1
    ld c, l                                       ; $54d6: $4d
    inc b                                         ; $54d7: $04
    ld c, b                                       ; $54d8: $48
    pop hl                                        ; $54d9: $e1
    or l                                          ; $54da: $b5
    ldh [$2b], a                                  ; $54db: $e0 $2b
    rst $38                                       ; $54dd: $ff
    pop hl                                        ; $54de: $e1
    dec a                                         ; $54df: $3d
    pop hl                                        ; $54e0: $e1
    push de                                       ; $54e1: $d5
    add e                                         ; $54e2: $83
    nop                                           ; $54e3: $00
    or a                                          ; $54e4: $b7
    inc h                                         ; $54e5: $24
    ld [c], a                                     ; $54e6: $e2
    ldh a, [$c0]                                  ; $54e7: $f0 $c0
    pop hl                                        ; $54e9: $e1
    dec c                                         ; $54ea: $0d
    ldh [rLY], a                                  ; $54eb: $e0 $44
    ldh [$f4], a                                  ; $54ed: $e0 $f4
    ld [c], a                                     ; $54ef: $e2
    dec l                                         ; $54f0: $2d
    dec bc                                        ; $54f1: $0b
    dec bc                                        ; $54f2: $0b
    ld l, e                                       ; $54f3: $6b
    dec e                                         ; $54f4: $1d
    ld l, e                                       ; $54f5: $6b
    cp [hl]                                       ; $54f6: $be
    ldh [rWX], a                                  ; $54f7: $e0 $4b
    ld c, e                                       ; $54f9: $4b
    dec bc                                        ; $54fa: $0b
    add c                                         ; $54fb: $81
    and e                                         ; $54fc: $a3
    cp h                                          ; $54fd: $bc
    jp c, $e102                                   ; $54fe: $da $02 $e1

    or h                                          ; $5501: $b4
    db $fc                                        ; $5502: $fc
    db $e3                                        ; $5503: $e3
    or d                                          ; $5504: $b2
    push hl                                       ; $5505: $e5
    ld c, l                                       ; $5506: $4d
    ld [hl], e                                    ; $5507: $73
    ldh [rOCPD], a                                ; $5508: $e0 $6b
    ld c, e                                       ; $550a: $4b
    cp $e0                                        ; $550b: $fe $e0
    dec bc                                        ; $550d: $0b
    ld b, e                                       ; $550e: $43
    dec c                                         ; $550f: $0d
    ld l, l                                       ; $5510: $6d
    add b                                         ; $5511: $80
    rst $18                                       ; $5512: $df
    or b                                          ; $5513: $b0
    ld h, [hl]                                    ; $5514: $66
    add d                                         ; $5515: $82
    add $44                                       ; $5516: $c6 $44
    pop bc                                        ; $5518: $c1
    ld l, e                                       ; $5519: $6b
    add e                                         ; $551a: $83
    ldh [rP1], a                                  ; $551b: $e0 $00
    pop bc                                        ; $551d: $c1
    ldh [$3d], a                                  ; $551e: $e0 $3d
    and d                                         ; $5520: $a2
    scf                                           ; $5521: $37
    sub d                                         ; $5522: $92
    adc l                                         ; $5523: $8d
    sub b                                         ; $5524: $90
    add b                                         ; $5525: $80
    and e                                         ; $5526: $a3
    ccf                                           ; $5527: $3f
    call nz, $c1ef                                ; $5528: $c4 $ef $c1
    add d                                         ; $552b: $82
    db $e4                                        ; $552c: $e4
    nop                                           ; $552d: $00
    ld h, l                                       ; $552e: $65
    and d                                         ; $552f: $a2
    rst $38                                       ; $5530: $ff
    rst $38                                       ; $5531: $ff
    sub a                                         ; $5532: $97
    and e                                         ; $5533: $a3
    cp d                                          ; $5534: $ba
    and $ef                                       ; $5535: $e6 $ef
    pop bc                                        ; $5537: $c1
    add hl, sp                                    ; $5538: $39
    and e                                         ; $5539: $a3
    dec h                                         ; $553a: $25
    ld [c], a                                     ; $553b: $e2
    ld b, e                                       ; $553c: $43
    sbc a                                         ; $553d: $9f
    nop                                           ; $553e: $00
    ld a, h                                       ; $553f: $7c
    and h                                         ; $5540: $a4
    ld [$31a5], sp                                ; $5541: $08 $a5 $31
    and a                                         ; $5544: $a7
    nop                                           ; $5545: $00
    cp a                                          ; $5546: $bf
    dec l                                         ; $5547: $2d
    ld h, h                                       ; $5548: $64
    ld b, c                                       ; $5549: $41
    and [hl]                                      ; $554a: $a6
    push bc                                       ; $554b: $c5
    add h                                         ; $554c: $84
    db $ec                                        ; $554d: $ec
    add e                                         ; $554e: $83
    nop                                           ; $554f: $00
    nop                                           ; $5550: $00
    cp a                                          ; $5551: $bf
    push hl                                       ; $5552: $e5
    db $e4                                        ; $5553: $e4
    ld c, a                                       ; $5554: $4f
    and b                                         ; $5555: $a0
    rst $38                                       ; $5556: $ff
    add $7a                                       ; $5557: $c6 $7a
    add l                                         ; $5559: $85
    dec a                                         ; $555a: $3d
    sbc a                                         ; $555b: $9f
    jp Jump_000_3651                              ; $555c: $c3 $51 $36


    add [hl]                                      ; $555f: $86

Jump_05f_5560:
    nop                                           ; $5560: $00
    add b                                         ; $5561: $80
    ld a, a                                       ; $5562: $7f
    inc bc                                        ; $5563: $03
    ld [hl], l                                    ; $5564: $75
    db $fd                                        ; $5565: $fd
    ld e, a                                       ; $5566: $5f
    jp $c05d                                      ; $5567: $c3 $5d $c0


    ei                                            ; $556a: $fb
    ld e, e                                       ; $556b: $5b
    ccf                                           ; $556c: $3f
    add b                                         ; $556d: $80
    rra                                           ; $556e: $1f
    rst $38                                       ; $556f: $ff
    rst $38                                       ; $5570: $ff
    nop                                           ; $5571: $00
    rst $38                                       ; $5572: $ff
    rst $38                                       ; $5573: $ff
    rst $38                                       ; $5574: $ff
    rst $38                                       ; $5575: $ff
    nop                                           ; $5576: $00
    cp a                                          ; $5577: $bf
    ld a, [$80ff]                                 ; $5578: $fa $ff $80
    rst $18                                       ; $557b: $df
    rst $38                                       ; $557c: $ff
    rst $38                                       ; $557d: $ff
    rst $38                                       ; $557e: $ff
    rst $38                                       ; $557f: $ff
    rst $38                                       ; $5580: $ff
    rst $38                                       ; $5581: $ff
    nop                                           ; $5582: $00
    ld b, e                                       ; $5583: $43
    rst $38                                       ; $5584: $ff
    ld a, [$80ff]                                 ; $5585: $fa $ff $80
    rst $18                                       ; $5588: $df
    rst $38                                       ; $5589: $ff
    rst $38                                       ; $558a: $ff
    rst $38                                       ; $558b: $ff
    rst $38                                       ; $558c: $ff
    rst $38                                       ; $558d: $ff
    rst $38                                       ; $558e: $ff
    ld e, e                                       ; $558f: $5b
    rst $38                                       ; $5590: $ff
    add b                                         ; $5591: $80
    rst $18                                       ; $5592: $df
    nop                                           ; $5593: $00
    rst $38                                       ; $5594: $ff
    rst $38                                       ; $5595: $ff
    rst $38                                       ; $5596: $ff
    rst $38                                       ; $5597: $ff
    rst $38                                       ; $5598: $ff
    rst $38                                       ; $5599: $ff
    ld b, e                                       ; $559a: $43
    rst $38                                       ; $559b: $ff
    ld a, [$80ff]                                 ; $559c: $fa $ff $80
    rst $18                                       ; $559f: $df
    rst $38                                       ; $55a0: $ff
    rst $38                                       ; $55a1: $ff
    rst $38                                       ; $55a2: $ff
    rst $38                                       ; $55a3: $ff
    nop                                           ; $55a4: $00
    rst $38                                       ; $55a5: $ff
    rst $38                                       ; $55a6: $ff
    dec a                                         ; $55a7: $3d
    rst $38                                       ; $55a8: $ff
    ld a, [$80ff]                                 ; $55a9: $fa $ff $80
    rst $18                                       ; $55ac: $df
    rst $38                                       ; $55ad: $ff
    rst $38                                       ; $55ae: $ff
    rst $38                                       ; $55af: $ff
    rst $38                                       ; $55b0: $ff
    ld b, e                                       ; $55b1: $43
    rst $38                                       ; $55b2: $ff
    ld a, [$00ff]                                 ; $55b3: $fa $ff $00
    add b                                         ; $55b6: $80
    rst $18                                       ; $55b7: $df
    rst $38                                       ; $55b8: $ff
    rst $38                                       ; $55b9: $ff
    rst $38                                       ; $55ba: $ff
    rst $38                                       ; $55bb: $ff
    rst $38                                       ; $55bc: $ff
    rst $38                                       ; $55bd: $ff
    dec a                                         ; $55be: $3d
    rst $38                                       ; $55bf: $ff
    ld a, [$80ff]                                 ; $55c0: $fa $ff $80
    rlc b                                         ; $55c3: $cb $00
    nop                                           ; $55c5: $00

Jump_05f_55c6:
    nop                                           ; $55c6: $00
    ccf                                           ; $55c7: $3f
    add hl, de                                    ; $55c8: $19

jr_05f_55c9:
    add hl, de                                    ; $55c9: $19
    add hl, de                                    ; $55ca: $19
    ld h, $27                                     ; $55cb: $26 $27
    jr z, jr_05f_55c9                             ; $55cd: $28 $fa

    rst $38                                       ; $55cf: $ff
    db $f4                                        ; $55d0: $f4
    push af                                       ; $55d1: $f5
    ccf                                           ; $55d2: $3f
    ld l, $29                                     ; $55d3: $2e $29
    ld a, [hl+]                                   ; $55d5: $2a
    dec hl                                        ; $55d6: $2b
    inc l                                         ; $55d7: $2c
    dec l                                         ; $55d8: $2d
    ld a, [$f4ff]                                 ; $55d9: $fa $ff $f4
    push af                                       ; $55dc: $f5
    ccf                                           ; $55dd: $3f
    inc [hl]                                      ; $55de: $34
    cpl                                           ; $55df: $2f
    jr nc, jr_05f_5613                            ; $55e0: $30 $31

    ld [hl-], a                                   ; $55e2: $32
    inc sp                                        ; $55e3: $33
    ld a, [$f4ff]                                 ; $55e4: $fa $ff $f4
    push af                                       ; $55e7: $f5
    nop                                           ; $55e8: $00
    ld e, e                                       ; $55e9: $5b
    rst $38                                       ; $55ea: $ff
    ld a, [$5bfb]                                 ; $55eb: $fa $fb $5b
    rst $38                                       ; $55ee: $ff
    ld a, [$5bfb]                                 ; $55ef: $fa $fb $5b
    rst $38                                       ; $55f2: $ff
    ld a, [$5bfb]                                 ; $55f3: $fa $fb $5b
    rst $38                                       ; $55f6: $ff
    add b                                         ; $55f7: $80
    rst $18                                       ; $55f8: $df
    nop                                           ; $55f9: $00
    ld d, l                                       ; $55fa: $55
    rst $38                                       ; $55fb: $ff
    add b                                         ; $55fc: $80
    rst $18                                       ; $55fd: $df
    ld a, [$80ff]                                 ; $55fe: $fa $ff $80
    rst $18                                       ; $5601: $df
    ld a, [$80ff]                                 ; $5602: $fa $ff $80
    rst $18                                       ; $5605: $df
    ld a, [$80ff]                                 ; $5606: $fa $ff $80
    rst $18                                       ; $5609: $df
    nop                                           ; $560a: $00
    ld a, [$80ff]                                 ; $560b: $fa $ff $80
    rst $18                                       ; $560e: $df
    ld a, [$80ff]                                 ; $560f: $fa $ff $80
    rst $18                                       ; $5612: $df

jr_05f_5613:
    ld a, [$80ff]                                 ; $5613: $fa $ff $80
    rst $18                                       ; $5616: $df
    add b                                         ; $5617: $80
    rst $18                                       ; $5618: $df
    ld e, e                                       ; $5619: $5b
    rst $38                                       ; $561a: $ff
    nop                                           ; $561b: $00
    add b                                         ; $561c: $80
    rst $18                                       ; $561d: $df
    ld a, [$80ff]                                 ; $561e: $fa $ff $80
    rst $18                                       ; $5621: $df
    ld a, [$80ff]                                 ; $5622: $fa $ff $80
    rst $18                                       ; $5625: $df
    ld c, a                                       ; $5626: $4f
    ldh a, [$fd]                                  ; $5627: $f0 $fd
    db $e3                                        ; $5629: $e3
    add b                                         ; $562a: $80
    rst $18                                       ; $562b: $df
    add b                                         ; $562c: $80
    ld d, l                                       ; $562d: $55
    di                                            ; $562e: $f3
    cp a                                          ; $562f: $bf
    db $e3                                        ; $5630: $e3
    add b                                         ; $5631: $80
    rst $18                                       ; $5632: $df
    ld h, c                                       ; $5633: $61
    ld hl, sp-$47                                 ; $5634: $f8 $b9
    ret nz                                        ; $5636: $c0

    add b                                         ; $5637: $80
    rst $18                                       ; $5638: $df
    ld c, c                                       ; $5639: $49
    db $f4                                        ; $563a: $f4
    add hl, de                                    ; $563b: $19
    rst $00                                       ; $563c: $c7
    add hl, de                                    ; $563d: $19
    jr nz, @+$23                                  ; $563e: $20 $21

    dec a                                         ; $5640: $3d
    ei                                            ; $5641: $fb
    ld c, c                                       ; $5642: $49
    ld sp, hl                                     ; $5643: $f9
    call nz, Call_000_22e1                        ; $5644: $c4 $e1 $22
    inc hl                                        ; $5647: $23
    ldh a, [$bc]                                  ; $5648: $f0 $bc
    db $e3                                        ; $564a: $e3
    add b                                         ; $564b: $80
    rst $18                                       ; $564c: $df
    sub d                                         ; $564d: $92
    ret                                           ; $564e: $c9


    adc d                                         ; $564f: $8a
    pop hl                                        ; $5650: $e1
    jr nz, jr_05f_5674                            ; $5651: $20 $21

    ld [hl+], a                                   ; $5653: $22
    inc hl                                        ; $5654: $23
    ccf                                           ; $5655: $3f
    ld a, [de]                                    ; $5656: $1a
    dec de                                        ; $5657: $1b
    inc h                                         ; $5658: $24
    dec h                                         ; $5659: $25
    ld a, [de]                                    ; $565a: $1a
    dec de                                        ; $565b: $1b
    cp h                                          ; $565c: $bc
    pop hl                                        ; $565d: $e1
    add b                                         ; $565e: $80
    rst $18                                       ; $565f: $df
    ld hl, sp-$6e                                 ; $5660: $f8 $92
    add $4d                                       ; $5662: $c6 $4d
    ldh [$8a], a                                  ; $5664: $e0 $8a
    pop hl                                        ; $5666: $e1
    ld [hl+], a                                   ; $5667: $22
    inc hl                                        ; $5668: $23
    inc h                                         ; $5669: $24
    dec h                                         ; $566a: $25
    inc e                                         ; $566b: $1c
    ld a, a                                       ; $566c: $7f
    dec e                                         ; $566d: $1d
    add hl, de                                    ; $566e: $19
    add hl, de                                    ; $566f: $19
    inc e                                         ; $5670: $1c
    dec e                                         ; $5671: $1d
    inc h                                         ; $5672: $24
    dec h                                         ; $5673: $25

jr_05f_5674:
    add hl, sp                                    ; $5674: $39
    db $e4                                        ; $5675: $e4
    ld [hl], b                                    ; $5676: $70
    add b                                         ; $5677: $80
    db $dd                                        ; $5678: $dd
    jp $8ae6                                      ; $5679: $c3 $e6 $8a


    pop hl                                        ; $567c: $e1
    jp z, $19e0                                   ; $567d: $ca $e0 $19

    ld e, $1f                                     ; $5680: $1e $1f
    db $fc                                        ; $5682: $fc
    ld [c], a                                     ; $5683: $e2
    ret nz                                        ; $5684: $c0

    ld a, l                                       ; $5685: $7d
    db $e3                                        ; $5686: $e3
    add b                                         ; $5687: $80
    rst $18                                       ; $5688: $df
    ld c, [hl]                                    ; $5689: $4e
    and b                                         ; $568a: $a0
    jp $8ae4                                      ; $568b: $c3 $e4 $8a


    ldh [$ca], a                                  ; $568e: $e0 $ca
    ldh [rNR24], a                                ; $5690: $e0 $19
    add hl, de                                    ; $5692: $19
    ld l, a                                       ; $5693: $6f
    ld d, $18                                     ; $5694: $16 $18
    inc d                                         ; $5696: $14
    ld d, $7d                                     ; $5697: $16 $7d
    db $e3                                        ; $5699: $e3

jr_05f_569a:
    jr nz, @+$23                                  ; $569a: $20 $21

    add b                                         ; $569c: $80
    sbc $e0                                       ; $569d: $de $e0
    jp nc, $8aa1                                  ; $569f: $d2 $a1 $8a

    pop hl                                        ; $56a2: $e1
    jp $86e1                                      ; $56a3: $c3 $e1 $86


    ldh [rSCX], a                                 ; $56a6: $e0 $43
    ldh [rNR21], a                                ; $56a8: $e0 $16
    inc de                                        ; $56aa: $13
    ld de, $110f                                  ; $56ab: $11 $0f $11
    inc de                                        ; $56ae: $13
    jr jr_05f_56c7                                ; $56af: $18 $16

    ld a, c                                       ; $56b1: $79
    pop hl                                        ; $56b2: $e1
    or a                                          ; $56b3: $b7
    pop bc                                        ; $56b4: $c1
    add b                                         ; $56b5: $80
    jp c, $80d1                                   ; $56b6: $da $d1 $80

    pop bc                                        ; $56b9: $c1
    ld d, $94                                     ; $56ba: $16 $94
    ldh [$fb], a                                  ; $56bc: $e0 $fb
    pop hl                                        ; $56be: $e1
    ld c, c                                       ; $56bf: $49
    pop hl                                        ; $56c0: $e1
    ld b, e                                       ; $56c1: $43
    pop hl                                        ; $56c2: $e1
    pop bc                                        ; $56c3: $c1
    ldh [rNR10], a                                ; $56c4: $e0 $10
    db $10                                        ; $56c6: $10

jr_05f_56c7:
    ld [c], a                                     ; $56c7: $e2
    cp [hl]                                       ; $56c8: $be
    ldh [rNR21], a                                ; $56c9: $e0 $16
    ld a, $e0                                     ; $56cb: $3e $e0
    and a                                         ; $56cd: $a7
    ld [c], a                                     ; $56ce: $e2
    add b                                         ; $56cf: $80
    reti                                          ; $56d0: $d9


    add hl, de                                    ; $56d1: $19
    ld d, $14                                     ; $56d2: $16 $14
    ld l, a                                       ; $56d4: $6f
    inc de                                        ; $56d5: $13
    inc de                                        ; $56d6: $13
    inc d                                         ; $56d7: $14
    inc d                                         ; $56d8: $14
    ei                                            ; $56d9: $fb
    ld [c], a                                     ; $56da: $e2
    ld d, $16                                     ; $56db: $16 $16
    db $fc                                        ; $56dd: $fc
    ldh [rIE], a                                  ; $56de: $e0 $ff
    add hl, de                                    ; $56e0: $19
    add hl, de                                    ; $56e1: $19
    rla                                           ; $56e2: $17
    ld de, $0312                                  ; $56e3: $11 $12 $03
    inc bc                                        ; $56e6: $03
    ld [$1207], sp                                ; $56e7: $08 $07 $12
    ld de, $3115                                  ; $56ea: $11 $15 $31
    pop hl                                        ; $56ed: $e1
    or a                                          ; $56ee: $b7
    or e                                          ; $56ef: $b3
    jr jr_05f_569a                                ; $56f0: $18 $a8

    call z, $c2e0                                 ; $56f2: $cc $e0 $c2
    ldh [$cd], a                                  ; $56f5: $e0 $cd
    ld de, $e0bc                                  ; $56f7: $11 $bc $e0
    inc de                                        ; $56fa: $13
    inc de                                        ; $56fb: $13
    ld c, b                                       ; $56fc: $48
    pop hl                                        ; $56fd: $e1
    or l                                          ; $56fe: $b5
    ldh [rNR10], a                                ; $56ff: $e0 $10
    dec b                                         ; $5701: $05
    ccf                                           ; $5702: $3f
    nop                                           ; $5703: $00
    nop                                           ; $5704: $00
    nop                                           ; $5705: $00
    dec b                                         ; $5706: $05
    db $10                                        ; $5707: $10
    inc de                                        ; $5708: $13
    ld a, $e0                                     ; $5709: $3e $e0
    or a                                          ; $570b: $b7
    and c                                         ; $570c: $a1
    ld b, h                                       ; $570d: $44
    nop                                           ; $570e: $00
    or a                                          ; $570f: $b7
    rst $10                                       ; $5710: $d7
    add [hl]                                      ; $5711: $86
    ld d, $d0                                     ; $5712: $16 $d0
    pop bc                                        ; $5714: $c1
    or [hl]                                       ; $5715: $b6
    ld [c], a                                     ; $5716: $e2
    or l                                          ; $5717: $b5
    ldh [rNR11], a                                ; $5718: $e0 $11
    ret nz                                        ; $571a: $c0

    db $e4                                        ; $571b: $e4
    add e                                         ; $571c: $83
    ld de, $b717                                  ; $571d: $11 $17 $b7
    and c                                         ; $5720: $a1
    add b                                         ; $5721: $80
    reti                                          ; $5722: $d9


    ld c, [hl]                                    ; $5723: $4e
    xor b                                         ; $5724: $a8
    adc b                                         ; $5725: $88
    jp nz, $e370                                  ; $5726: $c2 $70 $e3

    inc de                                        ; $5729: $13
    scf                                           ; $572a: $37
    ld de, $0604                                  ; $572b: $11 $04 $06
    ld b, b                                       ; $572e: $40
    pop hl                                        ; $572f: $e1
    inc de                                        ; $5730: $13
    ld d, $b7                                     ; $5731: $16 $b7
    and c                                         ; $5733: $a1
    nop                                           ; $5734: $00
    cp a                                          ; $5735: $bf
    ld [hl], b                                    ; $5736: $70
    adc h                                         ; $5737: $8c
    ld h, b                                       ; $5738: $60
    db $10                                        ; $5739: $10
    and b                                         ; $573a: $a0
    ld b, l                                       ; $573b: $45
    jp $c242                                      ; $573c: $c3 $42 $c2


    inc de                                        ; $573f: $13
    db $10                                        ; $5740: $10
    ld c, $c0                                     ; $5741: $0e $c0
    jp $0000                                      ; $5743: $c3 $00 $00


    db $e4                                        ; $5746: $e4
    nop                                           ; $5747: $00
    cp a                                          ; $5748: $bf
    db $10                                        ; $5749: $10
    and b                                         ; $574a: $a0
    ld b, l                                       ; $574b: $45
    jp $a2ff                                      ; $574c: $c3 $ff $a2


    cp c                                          ; $574f: $b9
    ret nz                                        ; $5750: $c0

    rst $28                                       ; $5751: $ef
    ret nz                                        ; $5752: $c0

    add d                                         ; $5753: $82
    ldh [$30], a                                  ; $5754: $e0 $30
    nop                                           ; $5756: $00
    db $e3                                        ; $5757: $e3
    add b                                         ; $5758: $80
    jp c, Jump_05f_6392                           ; $5759: $da $92 $63

    adc d                                         ; $575c: $8a
    and c                                         ; $575d: $a1
    jr nz, jr_05f_5781                            ; $575e: $20 $21

    adc b                                         ; $5760: $88
    and b                                         ; $5761: $a0
    rst $38                                       ; $5762: $ff
    and e                                         ; $5763: $a3
    nop                                           ; $5764: $00
    cp l                                          ; $5765: $bd
    pop hl                                        ; $5766: $e1
    add d                                         ; $5767: $82
    db $e3                                        ; $5768: $e3
    nop                                           ; $5769: $00
    jp nz, Jump_05f_7f80                          ; $576a: $c2 $80 $7f

    ret                                           ; $576d: $c9


    ld b, c                                       ; $576e: $41
    adc h                                         ; $576f: $8c
    add b                                         ; $5770: $80
    ld c, c                                       ; $5771: $49
    add b                                         ; $5772: $80
    cp d                                          ; $5773: $ba
    ld [c], a                                     ; $5774: $e2
    nop                                           ; $5775: $00
    ld a, c                                       ; $5776: $79
    and e                                         ; $5777: $a3
    add d                                         ; $5778: $82
    pop bc                                        ; $5779: $c1
    ld sp, $80a1                                  ; $577a: $31 $a1 $80
    ld a, a                                       ; $577d: $7f
    adc h                                         ; $577e: $8c
    ld h, d                                       ; $577f: $62
    ret nc                                        ; $5780: $d0

jr_05f_5781:
    add b                                         ; $5781: $80
    ld c, c                                       ; $5782: $49
    add b                                         ; $5783: $80
    cp d                                          ; $5784: $ba
    ld [c], a                                     ; $5785: $e2
    nop                                           ; $5786: $00
    ld a, c                                       ; $5787: $79
    and d                                         ; $5788: $a2
    xor a                                         ; $5789: $af
    add h                                         ; $578a: $84
    nop                                           ; $578b: $00
    cp a                                          ; $578c: $bf
    adc h                                         ; $578d: $8c
    ld h, a                                       ; $578e: $67
    adc l                                         ; $578f: $8d
    add b                                         ; $5790: $80
    cp d                                          ; $5791: $ba
    db $e3                                        ; $5792: $e3
    inc [hl]                                      ; $5793: $34
    pop hl                                        ; $5794: $e1
    xor a                                         ; $5795: $af
    add d                                         ; $5796: $82
    nop                                           ; $5797: $00
    ld a, d                                       ; $5798: $7a
    ld [hl], h                                    ; $5799: $74
    ld e, $5a                                     ; $579a: $1e $5a
    ld [hl], a                                    ; $579c: $77
    db $e3                                        ; $579d: $e3
    db $ec                                        ; $579e: $ec
    add e                                         ; $579f: $83
    add b                                         ; $57a0: $80
    ld a, a                                       ; $57a1: $7f
    jp $c452                                      ; $57a2: $c3 $52 $c4


    db $e3                                        ; $57a5: $e3
    add b                                         ; $57a6: $80
    ld a, a                                       ; $57a7: $7f
    nop                                           ; $57a8: $00
    jp $bd57                                      ; $57a9: $c3 $57 $bd


    ld e, e                                       ; $57ac: $5b
    ld e, e                                       ; $57ad: $5b
    ccf                                           ; $57ae: $3f
    add b                                         ; $57af: $80
    rra                                           ; $57b0: $1f
    ld d, l                                       ; $57b1: $55
    ccf                                           ; $57b2: $3f
    nop                                           ; $57b3: $00
    ld e, a                                       ; $57b4: $5f
    ld a, [$00ff]                                 ; $57b5: $fa $ff $00
    ld e, a                                       ; $57b8: $5f
    nop                                           ; $57b9: $00
    ld a, [$80ff]                                 ; $57ba: $fa $ff $80
    rst $18                                       ; $57bd: $df
    ld a, [$80ff]                                 ; $57be: $fa $ff $80
    rst $18                                       ; $57c1: $df
    ld a, [$80ff]                                 ; $57c2: $fa $ff $80
    rst $18                                       ; $57c5: $df
    ld a, [$80ff]                                 ; $57c6: $fa $ff $80
    rst $18                                       ; $57c9: $df
    nop                                           ; $57ca: $00
    ld a, [$80ff]                                 ; $57cb: $fa $ff $80
    rst $18                                       ; $57ce: $df
    add b                                         ; $57cf: $80
    rst $18                                       ; $57d0: $df
    ld e, e                                       ; $57d1: $5b
    rst $38                                       ; $57d2: $ff
    add b                                         ; $57d3: $80
    rst $18                                       ; $57d4: $df
    ld a, [$80ff]                                 ; $57d5: $fa $ff $80
    rst $18                                       ; $57d8: $df
    ld a, [$00ff]                                 ; $57d9: $fa $ff $00
    add b                                         ; $57dc: $80
    rst $18                                       ; $57dd: $df
    ld a, [$80ff]                                 ; $57de: $fa $ff $80
    rst $18                                       ; $57e1: $df
    ld a, [$80ff]                                 ; $57e2: $fa $ff $80
    rst $18                                       ; $57e5: $df
    ld a, [$80ff]                                 ; $57e6: $fa $ff $80
    rst $18                                       ; $57e9: $df
    ld a, [$00ff]                                 ; $57ea: $fa $ff $00
    add b                                         ; $57ed: $80
    rst $18                                       ; $57ee: $df
    ld a, [$5bff]                                 ; $57ef: $fa $ff $5b
    rst $38                                       ; $57f2: $ff
    add b                                         ; $57f3: $80
    rst $18                                       ; $57f4: $df
    ld d, l                                       ; $57f5: $55
    rst $38                                       ; $57f6: $ff
    add b                                         ; $57f7: $80
    rst $18                                       ; $57f8: $df
    ld a, [$80ff]                                 ; $57f9: $fa $ff $80
    rst $18                                       ; $57fc: $df
    nop                                           ; $57fd: $00
    ld a, [$80ff]                                 ; $57fe: $fa $ff $80
    rst $18                                       ; $5801: $df
    ld a, [$e8ff]                                 ; $5802: $fa $ff $e8
    db $eb                                        ; $5805: $eb
    nop                                           ; $5806: $00
    nop                                           ; $5807: $00
    nop                                           ; $5808: $00
    ld sp, hl                                     ; $5809: $f9
    nop                                           ; $580a: $00
    rst $38                                       ; $580b: $ff
    rst $38                                       ; $580c: $ff
    xor $ed                                       ; $580d: $ee $ed
    ld d, $10                                     ; $580f: $16 $10
    rla                                           ; $5811: $17
    ld h, $20                                     ; $5812: $26 $20
    rrca                                          ; $5814: $0f
    daa                                           ; $5815: $27
    jr nc, jr_05f_584e                            ; $5816: $30 $36

    scf                                           ; $5818: $37
    push de                                       ; $5819: $d5
    rst $38                                       ; $581a: $ff
    rst $38                                       ; $581b: $ff
    rst $38                                       ; $581c: $ff
    rst $38                                       ; $581d: $ff
    rst $38                                       ; $581e: $ff
    rst $38                                       ; $581f: $ff
    rst $38                                       ; $5820: $ff
    nop                                           ; $5821: $00
    rst $38                                       ; $5822: $ff
    rst $38                                       ; $5823: $ff
    rst $38                                       ; $5824: $ff
    rst $30                                       ; $5825: $f7
    nop                                           ; $5826: $00
    nop                                           ; $5827: $00
    nop                                           ; $5828: $00
    rst $38                                       ; $5829: $ff
    rst $38                                       ; $582a: $ff
    rst $38                                       ; $582b: $ff
    inc [hl]                                      ; $582c: $34
    ld e, b                                       ; $582d: $58
    ret nc                                        ; $582e: $d0

    ld e, e                                       ; $582f: $5b
    add $60                                       ; $5830: $c6 $60
    pop hl                                        ; $5832: $e1
    ld h, b                                       ; $5833: $60
    sbc l                                         ; $5834: $9d
    dec c                                         ; $5835: $0d
    rst $38                                       ; $5836: $ff
    cp $0e                                        ; $5837: $fe $0e
    ld c, $0e                                     ; $5839: $0e $0e
    db $db                                        ; $583b: $db
    rst $38                                       ; $583c: $ff
    ret                                           ; $583d: $c9


    pop af                                        ; $583e: $f1
    ld l, $00                                     ; $583f: $2e $00
    ret nz                                        ; $5841: $c0

    add sp, -$0d                                  ; $5842: $e8 $f3
    ldh [$b9], a                                  ; $5844: $e0 $b9
    rst $38                                       ; $5846: $ff
    sub e                                         ; $5847: $93
    ei                                            ; $5848: $fb
    ret nz                                        ; $5849: $c0

    db $e4                                        ; $584a: $e4
    xor b                                         ; $584b: $a8
    and $c0                                       ; $584c: $e6 $c0

jr_05f_584e:
    or $de                                        ; $584e: $f6 $de
    db $ed                                        ; $5850: $ed
    nop                                           ; $5851: $00
    halt                                          ; $5852: $76
    db $e4                                        ; $5853: $e4
    add b                                         ; $5854: $80
    and $be                                       ; $5855: $e6 $be
    di                                            ; $5857: $f3
    ld d, b                                       ; $5858: $50
    db $e3                                        ; $5859: $e3
    inc de                                        ; $585a: $13
    db $e3                                        ; $585b: $e3
    ld b, h                                       ; $585c: $44
    pop hl                                        ; $585d: $e1
    or [hl]                                       ; $585e: $b6
    ld [c], a                                     ; $585f: $e2
    ld c, d                                       ; $5860: $4a
    db $e4                                        ; $5861: $e4
    nop                                           ; $5862: $00
    adc h                                         ; $5863: $8c
    ld [$f680], a                                 ; $5864: $ea $80 $f6
    jp z, $dee5                                   ; $5867: $ca $e5 $de

    db $e3                                        ; $586a: $e3
    ret                                           ; $586b: $c9


    call nz, $e6f0                                ; $586c: $c4 $f0 $e6
    pop hl                                        ; $586f: $e1
    rst $20                                       ; $5870: $e7
    dec b                                         ; $5871: $05
    push af                                       ; $5872: $f5
    nop                                           ; $5873: $00
    ld c, d                                       ; $5874: $4a
    db $ed                                        ; $5875: $ed
    ret nz                                        ; $5876: $c0

    and $7d                                       ; $5877: $e6 $7d
    rst $00                                       ; $5879: $c7
    ld h, c                                       ; $587a: $61
    push hl                                       ; $587b: $e5
    cp d                                          ; $587c: $ba
    sbc $f6                                       ; $587d: $de $f6
    set 0, b                                      ; $587f: $cb $c0
    rst $38                                       ; $5881: $ff
    ld d, l                                       ; $5882: $55
    db $ed                                        ; $5883: $ed
    ld c, $71                                     ; $5884: $0e $71
    push bc                                       ; $5886: $c5
    ld l, [hl]                                    ; $5887: $6e
    ld l, [hl]                                    ; $5888: $6e
    ld l, [hl]                                    ; $5889: $6e
    add hl, sp                                    ; $588a: $39
    ret nz                                        ; $588b: $c0

    db $f4                                        ; $588c: $f4
    call nz, $ffc0                                ; $588d: $c4 $c0 $ff
    ld d, l                                       ; $5890: $55
    rst $00                                       ; $5891: $c7
    ei                                            ; $5892: $fb
    ld c, $2e                                     ; $5893: $0e $2e
    call nz, $6ee1                                ; $5895: $c4 $e1 $6e
    dec bc                                        ; $5898: $0b
    dec bc                                        ; $5899: $0b
    dec bc                                        ; $589a: $0b
    ld c, [hl]                                    ; $589b: $4e

jr_05f_589c:
    inc d                                         ; $589c: $14
    add hl, bc                                    ; $589d: $09
    ei                                            ; $589e: $fb
    rra                                           ; $589f: $1f
    push de                                       ; $58a0: $d5
    ld c, $c4                                     ; $58a1: $0e $c4
    pop hl                                        ; $58a3: $e1
    dec bc                                        ; $58a4: $0b
    jp z, $bfe1                                   ; $58a5: $ca $e1 $bf

    ldh [$ab], a                                  ; $58a8: $e0 $ab
    push hl                                       ; $58aa: $e5
    ld h, h                                       ; $58ab: $64
    inc b                                         ; $58ac: $04
    jp c, $abb7                                   ; $58ad: $da $b7 $ab

    ld l, [hl]                                    ; $58b0: $6e
    call c, $bde3                                 ; $58b1: $dc $e3 $bd
    pop hl                                        ; $58b4: $e1
    ld c, [hl]                                    ; $58b5: $4e
    ld l, $2f                                     ; $58b6: $2e $2f
    jp Jump_05f_6af0                              ; $58b8: $c3 $f0 $6a


    xor b                                         ; $58bb: $a8
    sbc b                                         ; $58bc: $98
    cp d                                          ; $58bd: $ba
    ld d, b                                       ; $58be: $50
    and c                                         ; $58bf: $a1
    pop bc                                        ; $58c0: $c1
    ldh [$0b], a                                  ; $58c1: $e0 $0b
    inc c                                         ; $58c3: $0c
    inc l                                         ; $58c4: $2c
    dec bc                                        ; $58c5: $0b
    rrca                                          ; $58c6: $0f
    dec bc                                        ; $58c7: $0b
    inc c                                         ; $58c8: $0c
    inc c                                         ; $58c9: $0c
    inc l                                         ; $58ca: $2c
    ld a, [hl]                                    ; $58cb: $7e
    db $e4                                        ; $58cc: $e4
    ld [hl], $c7                                  ; $58cd: $36 $c7
    db $eb                                        ; $58cf: $eb
    sub l                                         ; $58d0: $95
    cp l                                          ; $58d1: $bd
    and a                                         ; $58d2: $a7
    ld a, [bc]                                    ; $58d3: $0a
    add d                                         ; $58d4: $82
    pop hl                                        ; $58d5: $e1
    inc c                                         ; $58d6: $0c
    push bc                                       ; $58d7: $c5
    ldh [$2c], a                                  ; $58d8: $e0 $2c
    db $fc                                        ; $58da: $fc
    pop hl                                        ; $58db: $e1
    cp a                                          ; $58dc: $bf
    pop hl                                        ; $58dd: $e1
    cp d                                          ; $58de: $ba
    pop bc                                        ; $58df: $c1
    jr jr_05f_589c                                ; $58e0: $18 $ba

    call z, $a581                                 ; $58e2: $cc $81 $a5
    add a                                         ; $58e5: $87
    and h                                         ; $58e6: $a4
    dec bc                                        ; $58e7: $0b
    dec c                                         ; $58e8: $0d
    push bc                                       ; $58e9: $c5
    ldh [$fe], a                                  ; $58ea: $e0 $fe
    db $e4                                        ; $58ec: $e4
    inc l                                         ; $58ed: $2c
    inc c                                         ; $58ee: $0c

jr_05f_58ef:
    ldh [$39], a                                  ; $58ef: $e0 $39
    ldh [$3c], a                                  ; $58f1: $e0 $3c
    ldh [$c1], a                                  ; $58f3: $e0 $c1
    and l                                         ; $58f5: $a5
    or a                                          ; $58f6: $b7
    or a                                          ; $58f7: $b7
    add b                                         ; $58f8: $80
    rst $20                                       ; $58f9: $e7
    dec bc                                        ; $58fa: $0b
    dec c                                         ; $58fb: $0d
    ld l, h                                       ; $58fc: $6c
    ld b, $c0                                     ; $58fd: $06 $c0
    and $6c                                       ; $58ff: $e6 $6c
    ld c, h                                       ; $5901: $4c
    ld sp, hl                                     ; $5902: $f9
    ret nz                                        ; $5903: $c0

    cp d                                          ; $5904: $ba
    jp nz, $da78                                  ; $5905: $c2 $78 $da

    ld e, e                                       ; $5908: $5b
    ret z                                         ; $5909: $c8

    jp Jump_05f_7ec1                              ; $590a: $c3 $c1 $7e


    add b                                         ; $590d: $80
    db $e3                                        ; $590e: $e3
    ld l, h                                       ; $590f: $6c
    ld l, h                                       ; $5910: $6c
    ld c, h                                       ; $5911: $4c
    ld l, h                                       ; $5912: $6c
    ld l, h                                       ; $5913: $6c
    dec l                                         ; $5914: $2d
    pop bc                                        ; $5915: $c1
    ldh [$78], a                                  ; $5916: $e0 $78
    ld a, c                                       ; $5918: $79
    jp nz, $ffc0                                  ; $5919: $c2 $c0 $ff

    db $10                                        ; $591c: $10
    and e                                         ; $591d: $a3
    ld l, [hl]                                    ; $591e: $6e
    dec bc                                        ; $591f: $0b
    dec c                                         ; $5920: $0d
    dec bc                                        ; $5921: $0b
    inc b                                         ; $5922: $04
    pop hl                                        ; $5923: $e1
    inc e                                         ; $5924: $1c
    pop bc                                        ; $5925: $c1
    ldh [rIE], a                                  ; $5926: $e0 $ff
    and b                                         ; $5928: $a0
    dec l                                         ; $5929: $2d
    dec l                                         ; $592a: $2d
    dec l                                         ; $592b: $2d
    jr c, jr_05f_58ef                             ; $592c: $38 $c1

    dec a                                         ; $592e: $3d
    pop hl                                        ; $592f: $e1
    and d                                         ; $5930: $a2
    add e                                         ; $5931: $83
    cp b                                          ; $5932: $b8
    ccf                                           ; $5933: $3f
    sub e                                         ; $5934: $93
    ret nz                                        ; $5935: $c0

    add sp, $08                                   ; $5936: $e8 $08
    pop bc                                        ; $5938: $c1
    ld c, h                                       ; $5939: $4c
    ld c, h                                       ; $593a: $4c
    inc c                                         ; $593b: $0c
    add l                                         ; $593c: $85
    ld [c], a                                     ; $593d: $e2
    dec c                                         ; $593e: $0d
    inc bc                                        ; $593f: $03
    dec c                                         ; $5940: $0d
    dec l                                         ; $5941: $2d
    add b                                         ; $5942: $80
    ld [c], a                                     ; $5943: $e2
    xor l                                         ; $5944: $ad
    ldh [$7b], a                                  ; $5945: $e0 $7b
    adc c                                         ; $5947: $89
    xor a                                         ; $5948: $af
    xor a                                         ; $5949: $af
    ret nz                                        ; $594a: $c0

    jp hl                                         ; $594b: $e9


    ld b, $c2                                     ; $594c: $06 $c2
    ld bc, $850c                                  ; $594e: $01 $0c $85
    ld [c], a                                     ; $5951: $e2
    cp $a0                                        ; $5952: $fe $a0
    ld [hl], d                                    ; $5954: $72
    ldh [$f8], a                                  ; $5955: $e0 $f8
    and c                                         ; $5957: $a1
    db $ed                                        ; $5958: $ed
    and d                                         ; $5959: $a2
    di                                            ; $595a: $f3
    ld l, l                                       ; $595b: $6d
    xor h                                         ; $595c: $ac
    ld [hl], c                                    ; $595d: $71
    ldh [$4e], a                                  ; $595e: $e0 $4e
    and b                                         ; $5960: $a0
    add a                                         ; $5961: $87
    and c                                         ; $5962: $a1
    adc c                                         ; $5963: $89
    ret nz                                        ; $5964: $c0

    ld b, [hl]                                    ; $5965: $46
    pop hl                                        ; $5966: $e1
    ld a, c                                       ; $5967: $79
    and c                                         ; $5968: $a1
    dec bc                                        ; $5969: $0b
    ld c, $2e                                     ; $596a: $0e $2e
    rst $00                                       ; $596c: $c7
    ld l, $2e                                     ; $596d: $2e $2e
    ld l, [hl]                                    ; $596f: $6e
    ld e, $ab                                     ; $5970: $1e $ab
    ld [de], a                                    ; $5972: $12
    ld [hl], d                                    ; $5973: $72
    ld a, [bc]                                    ; $5974: $0a
    ld h, e                                       ; $5975: $63
    ld c, [hl]                                    ; $5976: $4e
    ld l, $1c                                     ; $5977: $2e $1c
    adc a                                         ; $5979: $8f
    pop hl                                        ; $597a: $e1
    add b                                         ; $597b: $80
    ldh [$0b], a                                  ; $597c: $e0 $0b
    dec bc                                        ; $597e: $0b
    ld c, h                                       ; $597f: $4c
    add b                                         ; $5980: $80
    ret nz                                        ; $5981: $c0

    pop bc                                        ; $5982: $c1

Jump_05f_5983:
    ldh [$72], a                                  ; $5983: $e0 $72
    and e                                         ; $5985: $a3
    ld [c], a                                     ; $5986: $e2
    ld sp, hl                                     ; $5987: $f9
    add b                                         ; $5988: $80
    ld c, l                                       ; $5989: $4d
    add $b3                                       ; $598a: $c6 $b3
    dec h                                         ; $598c: $25

jr_05f_598d:
    ld [$c200], a                                 ; $598d: $ea $00 $c2
    dec bc                                        ; $5990: $0b
    ld c, h                                       ; $5991: $4c
    inc l                                         ; $5992: $2c
    ld e, $c3                                     ; $5993: $1e $c3
    pop hl                                        ; $5995: $e1
    inc l                                         ; $5996: $2c
    dec bc                                        ; $5997: $0b
    dec c                                         ; $5998: $0d
    inc c                                         ; $5999: $0c
    pop bc                                        ; $599a: $c1
    db $e3                                        ; $599b: $e3
    cp l                                          ; $599c: $bd
    ld b, e                                       ; $599d: $43
    ret nz                                        ; $599e: $c0

    di                                            ; $599f: $f3
    ld [$6920], sp                                ; $59a0: $08 $20 $69
    ret nz                                        ; $59a3: $c0

    and e                                         ; $59a4: $a3
    pop bc                                        ; $59a5: $c1
    pop hl                                        ; $59a6: $e1
    dec bc                                        ; $59a7: $0b
    rst $00                                       ; $59a8: $c7
    and b                                         ; $59a9: $a0
    jr c, jr_05f_598d                             ; $59aa: $38 $e1

    rst $00                                       ; $59ac: $c7
    ret nz                                        ; $59ad: $c0

    ld a, [hl]                                    ; $59ae: $7e
    add [hl]                                      ; $59af: $86
    ret z                                         ; $59b0: $c8

    add b                                         ; $59b1: $80
    ld [c], a                                     ; $59b2: $e2
    cp h                                          ; $59b3: $bc
    ld d, d                                       ; $59b4: $52
    inc e                                         ; $59b5: $1c
    adc c                                         ; $59b6: $89
    ld c, $82                                     ; $59b7: $0e $82
    pop hl                                        ; $59b9: $e1
    rst $38                                       ; $59ba: $ff
    add b                                         ; $59bb: $80
    dec c                                         ; $59bc: $0d
    dec bc                                        ; $59bd: $0b
    inc bc                                        ; $59be: $03
    dec hl                                        ; $59bf: $2b
    dec c                                         ; $59c0: $0d
    ld a, b                                       ; $59c1: $78
    ldh [$f2], a                                  ; $59c2: $e0 $f2
    ld b, h                                       ; $59c4: $44
    ld l, $41                                     ; $59c5: $2e $41
    ld b, b                                       ; $59c7: $40
    db $e4                                        ; $59c8: $e4
    ld a, d                                       ; $59c9: $7a
    ld d, b                                       ; $59ca: $50
    add b                                         ; $59cb: $80
    db $eb                                        ; $59cc: $eb
    dec l                                         ; $59cd: $2d
    inc c                                         ; $59ce: $0c
    cp [hl]                                       ; $59cf: $be
    jp $2b4b                                      ; $59d0: $c3 $4b $2b


    ld b, c                                       ; $59d3: $41
    ldh [$0d], a                                  ; $59d4: $e0 $0d
    ld b, [hl]                                    ; $59d6: $46
    xor c                                         ; $59d7: $a9
    cp h                                          ; $59d8: $bc
    ld e, e                                       ; $59d9: $5b
    inc c                                         ; $59da: $0c
    adc c                                         ; $59db: $89
    ld h, l                                       ; $59dc: $65
    ret nz                                        ; $59dd: $c0

    push hl                                       ; $59de: $e5
    dec c                                         ; $59df: $0d
    dec l                                         ; $59e0: $2d
    ret nz                                        ; $59e1: $c0

    add sp, $06                                   ; $59e2: $e8 $06
    ld e, c                                       ; $59e4: $59
    dec de                                        ; $59e5: $1b
    ld b, l                                       ; $59e6: $45
    dec d                                         ; $59e7: $15
    ld b, e                                       ; $59e8: $43
    nop                                           ; $59e9: $00
    set 0, c                                      ; $59ea: $cb $c1
    ld b, b                                       ; $59ec: $40
    ld [c], a                                     ; $59ed: $e2
    jp $80a0                                      ; $59ee: $c3 $a0 $80


    ret nz                                        ; $59f1: $c0

    add c                                         ; $59f2: $81
    add l                                         ; $59f3: $85
    or d                                          ; $59f4: $b2
    and b                                         ; $59f5: $a0
    db $f4                                        ; $59f6: $f4
    dec h                                         ; $59f7: $25
    sbc c                                         ; $59f8: $99
    ld a, [hl-]                                   ; $59f9: $3a
    ld [bc], a                                    ; $59fa: $02
    ret nz                                        ; $59fb: $c0

    pop hl                                        ; $59fc: $e1
    ld l, h                                       ; $59fd: $6c
    nop                                           ; $59fe: $00
    pop hl                                        ; $59ff: $e1
    jp $f980                                      ; $5a00: $c3 $80 $f9


    ld h, b                                       ; $5a03: $60
    dec sp                                        ; $5a04: $3b
    and b                                         ; $5a05: $a0
    jp nz, Jump_05f_5983                          ; $5a06: $c2 $83 $59

    add hl, sp                                    ; $5a09: $39
    nop                                           ; $5a0a: $00
    inc e                                         ; $5a0b: $1c
    ld h, l                                       ; $5a0c: $65
    dec d                                         ; $5a0d: $15
    ld h, c                                       ; $5a0e: $61
    nop                                           ; $5a0f: $00
    ret nz                                        ; $5a10: $c0

    rst $38                                       ; $5a11: $ff
    jp $c2bd                                      ; $5a12: $c3 $bd $c2


    rst $30                                       ; $5a15: $f7
    and d                                         ; $5a16: $a2
    ld a, [$c042]                                 ; $5a17: $fa $42 $c0
    rst $38                                       ; $5a1a: $ff
    nop                                           ; $5a1b: $00
    add hl, de                                    ; $5a1c: $19
    inc h                                         ; $5a1d: $24
    cp a                                          ; $5a1e: $bf
    and b                                         ; $5a1f: $a0
    add [hl]                                      ; $5a20: $86
    ldh [rSCX], a                                 ; $5a21: $e0 $43
    jp nz, $a0c1                                  ; $5a23: $c2 $c1 $a0

    cp l                                          ; $5a26: $bd

jr_05f_5a27:
    and d                                         ; $5a27: $a2
    cp a                                          ; $5a28: $bf
    ld [bc], a                                    ; $5a29: $02
    ld b, c                                       ; $5a2a: $41
    ld a, b                                       ; $5a2b: $78
    nop                                           ; $5a2c: $00
    sbc c                                         ; $5a2d: $99
    inc bc                                        ; $5a2e: $03
    adc e                                         ; $5a2f: $8b
    ld b, $03                                     ; $5a30: $06 $03
    push bc                                       ; $5a32: $c5
    ld sp, hl                                     ; $5a33: $f9
    add d                                         ; $5a34: $82
    push af                                       ; $5a35: $f5
    add c                                         ; $5a36: $81
    ld a, $3d                                     ; $5a37: $3e $3d
    ld d, b                                       ; $5a39: $50
    ld h, $05                                     ; $5a3a: $26 $05
    ld [hl+], a                                   ; $5a3c: $22
    nop                                           ; $5a3d: $00
    ld a, a                                       ; $5a3e: $7f
    pop hl                                        ; $5a3f: $e1
    adc $c3                                       ; $5a40: $ce $c3
    ld bc, $c0e2                                  ; $5a42: $01 $e2 $c0
    ld [c], a                                     ; $5a45: $e2
    add [hl]                                      ; $5a46: $86
    cp b                                          ; $5a47: $b8
    ld l, l                                       ; $5a48: $6d
    ld b, $7e                                     ; $5a49: $06 $7e
    ld l, b                                       ; $5a4b: $68
    ccf                                           ; $5a4c: $3f
    ld [c], a                                     ; $5a4d: $e2
    ld [bc], a                                    ; $5a4e: $02
    ld b, h                                       ; $5a4f: $44
    add c                                         ; $5a50: $81
    inc c                                         ; $5a51: $0c
    ld [hl], h                                    ; $5a52: $74
    and d                                         ; $5a53: $a2
    cp h                                          ; $5a54: $bc
    xor b                                         ; $5a55: $a8
    dec a                                         ; $5a56: $3d
    cpl                                           ; $5a57: $2f
    dec hl                                        ; $5a58: $2b
    dec bc                                        ; $5a59: $0b
    cp $44                                        ; $5a5a: $fe $44
    ld b, l                                       ; $5a5c: $45
    ld h, c                                       ; $5a5d: $61
    add d                                         ; $5a5e: $82
    rlca                                          ; $5a5f: $07
    add c                                         ; $5a60: $81
    inc c                                         ; $5a61: $0c
    or e                                          ; $5a62: $b3
    and c                                         ; $5a63: $a1
    inc a                                         ; $5a64: $3c
    and [hl]                                      ; $5a65: $a6
    ld e, b                                       ; $5a66: $58
    dec b                                         ; $5a67: $05
    ld [$d96f], sp                                ; $5a68: $08 $6f $d9
    jr z, @+$10                                   ; $5a6b: $28 $0e

    add b                                         ; $5a6d: $80
    ld a, l                                       ; $5a6e: $7d
    ld h, c                                       ; $5a6f: $61
    dec bc                                        ; $5a70: $0b
    ld h, b                                       ; $5a71: $60
    ld b, c                                       ; $5a72: $41
    pop bc                                        ; $5a73: $c1
    cp b                                          ; $5a74: $b8
    add b                                         ; $5a75: $80
    ret nz                                        ; $5a76: $c0

    add sp, -$80                                  ; $5a77: $e8 $80
    di                                            ; $5a79: $f3
    call nz, Call_05f_6e0d                        ; $5a7a: $c4 $0d $6e
    nop                                           ; $5a7d: $00
    ld bc, $bc41                                  ; $5a7e: $01 $41 $bc
    ld h, d                                       ; $5a81: $62
    ld a, [hl]                                    ; $5a82: $7e
    add c                                         ; $5a83: $81
    ld a, a                                       ; $5a84: $7f
    jp nz, $473d                                  ; $5a85: $c2 $3d $47

    inc b                                         ; $5a88: $04
    ld d, h                                       ; $5a89: $54
    ld b, c                                       ; $5a8a: $41
    ld b, [hl]                                    ; $5a8b: $46
    ld b, l                                       ; $5a8c: $45
    ld [hl+], a                                   ; $5a8d: $22
    add b                                         ; $5a8e: $80
    ret nz                                        ; $5a8f: $c0

    ld [c], a                                     ; $5a90: $e2
    add a                                         ; $5a91: $87
    ld h, e                                       ; $5a92: $63
    jr c, jr_05f_5ab6                             ; $5a93: $38 $21

    db $fd                                        ; $5a95: $fd
    and h                                         ; $5a96: $a4
    ld h, [hl]                                    ; $5a97: $66
    ld b, $c3                                     ; $5a98: $06 $c3
    jr jr_05f_5a27                                ; $5a9a: $18 $8b

    nop                                           ; $5a9c: $00
    dec hl                                        ; $5a9d: $2b
    inc d                                         ; $5a9e: $14
    adc h                                         ; $5a9f: $8c
    ld h, d                                       ; $5aa0: $62
    ccf                                           ; $5aa1: $3f
    dec h                                         ; $5aa2: $25
    dec bc                                        ; $5aa3: $0b
    ei                                            ; $5aa4: $fb
    ld b, b                                       ; $5aa5: $40
    inc c                                         ; $5aa6: $0c
    halt                                          ; $5aa7: $76
    pop bc                                        ; $5aa8: $c1
    cp h                                          ; $5aa9: $bc
    and h                                         ; $5aaa: $a4
    ret nz                                        ; $5aab: $c0

    ld sp, hl                                     ; $5aac: $f9
    ld [$8222], sp                                ; $5aad: $08 $22 $82
    adc h                                         ; $5ab0: $8c
    db $e4                                        ; $5ab1: $e4
    ld a, [$0d43]                                 ; $5ab2: $fa $43 $0d
    add b                                         ; $5ab5: $80

jr_05f_5ab6:
    ld b, d                                       ; $5ab6: $42
    ld [hl], c                                    ; $5ab7: $71
    add d                                         ; $5ab8: $82
    ld a, [hl]                                    ; $5ab9: $7e
    ld b, d                                       ; $5aba: $42
    ld a, [$0a3b]                                 ; $5abb: $fa $3b $0a
    ret nz                                        ; $5abe: $c0

    ld [$be2b], a                                 ; $5abf: $ea $2b $be
    db $e4                                        ; $5ac2: $e4
    dec l                                         ; $5ac3: $2d
    ld a, d                                       ; $5ac4: $7a
    ld [hl+], a                                   ; $5ac5: $22
    or h                                          ; $5ac6: $b4
    ld bc, $2701                                  ; $5ac7: $01 $01 $27
    ccf                                           ; $5aca: $3f
    adc d                                         ; $5acb: $8a
    db $10                                        ; $5acc: $10
    ld l, b                                       ; $5acd: $68
    rlca                                          ; $5ace: $07
    and d                                         ; $5acf: $a2
    ld h, d                                       ; $5ad0: $62
    ld b, c                                       ; $5ad1: $41
    ldh [$88], a                                  ; $5ad2: $e0 $88
    nop                                           ; $5ad4: $00
    dec l                                         ; $5ad5: $2d
    ld b, c                                       ; $5ad6: $41
    inc bc                                        ; $5ad7: $03
    inc a                                         ; $5ad8: $3c
    nop                                           ; $5ad9: $00
    dec [hl]                                      ; $5ada: $35
    inc hl                                        ; $5adb: $23
    add c                                         ; $5adc: $81
    inc l                                         ; $5add: $2c
    ret nz                                        ; $5ade: $c0

    ld [c], a                                     ; $5adf: $e2
    rst $10                                       ; $5ae0: $d7

jr_05f_5ae1:
    ld c, e                                       ; $5ae1: $4b
    jp $0113                                      ; $5ae2: $c3 $13 $01


    db $e3                                        ; $5ae5: $e3
    pop bc                                        ; $5ae6: $c1
    db $e4                                        ; $5ae7: $e4
    ld b, l                                       ; $5ae8: $45
    jr nz, jr_05f_5b57                            ; $5ae9: $20 $6c

    ld bc, $3c4c                                  ; $5aeb: $01 $4c $3c
    jr nz, jr_05f_5ae1                            ; $5aee: $20 $f1

    add b                                         ; $5af0: $80
    cp c                                          ; $5af1: $b9
    ld b, l                                       ; $5af2: $45
    cp a                                          ; $5af3: $bf
    ld [hl], h                                    ; $5af4: $74
    dec h                                         ; $5af5: $25
    ld b, l                                       ; $5af6: $45
    pop bc                                        ; $5af7: $c1
    call nz, $e040                                ; $5af8: $c4 $40 $e0
    ld [bc], a                                    ; $5afb: $02
    ret nz                                        ; $5afc: $c0

    db $e4                                        ; $5afd: $e4
    dec c                                         ; $5afe: $0d
    inc a                                         ; $5aff: $3c
    jr nz, @-$40                                  ; $5b00: $20 $be

    ld hl, $006a                                  ; $5b02: $21 $6a $00
    ld [bc], a                                    ; $5b05: $02
    ld h, d                                       ; $5b06: $62
    add b                                         ; $5b07: $80
    inc [hl]                                      ; $5b08: $34
    cp e                                          ; $5b09: $bb
    and e                                         ; $5b0a: $a3
    ld a, $43                                     ; $5b0b: $3e $43
    jr nz, jr_05f_5b7a                            ; $5b0d: $20 $6b

    ld c, e                                       ; $5b0f: $4b
    ld l, e                                       ; $5b10: $6b
    dec bc                                        ; $5b11: $0b
    ld l, e                                       ; $5b12: $6b
    db $fd                                        ; $5b13: $fd
    pop hl                                        ; $5b14: $e1
    add c                                         ; $5b15: $81
    jp $ba60                                      ; $5b16: $c3 $60 $ba


    jp nz, $e482                                  ; $5b19: $c2 $82 $e4

    cp $14                                        ; $5b1c: $fe $14
    jp $8386                                      ; $5b1e: $c3 $86 $83


    ld [hl+], a                                   ; $5b21: $22
    dec hl                                        ; $5b22: $2b
    ld l, e                                       ; $5b23: $6b
    push bc                                       ; $5b24: $c5
    pop hl                                        ; $5b25: $e1
    nop                                           ; $5b26: $00
    jp nz, $82e2                                  ; $5b27: $c2 $e2 $82

    inc h                                         ; $5b2a: $24
    add hl, sp                                    ; $5b2b: $39
    pop bc                                        ; $5b2c: $c1
    add c                                         ; $5b2d: $81
    inc h                                         ; $5b2e: $24
    db $db                                        ; $5b2f: $db
    dec b                                         ; $5b30: $05
    ret nz                                        ; $5b31: $c0

    ld hl, sp+$04                                 ; $5b32: $f8 $04
    add $02                                       ; $5b34: $c6 $02
    jp nz, $bf02                                  ; $5b36: $c2 $02 $bf

    and e                                         ; $5b39: $a3
    ld c, $81                                     ; $5b3a: $0e $81
    ld hl, $87fc                                  ; $5b3c: $21 $fc $87
    add b                                         ; $5b3f: $80
    rst $30                                       ; $5b40: $f7
    add h                                         ; $5b41: $84
    ld h, c                                       ; $5b42: $61
    ld a, [bc]                                    ; $5b43: $0a
    db $e3                                        ; $5b44: $e3
    ld c, e                                       ; $5b45: $4b
    db $e3                                        ; $5b46: $e3
    nop                                           ; $5b47: $00

jr_05f_5b48:
    ld b, a                                       ; $5b48: $47
    jr nz, jr_05f_5b48                            ; $5b49: $20 $fd

    pop hl                                        ; $5b4b: $e1
    add $c6                                       ; $5b4c: $c6 $c6
    jp nz, Jump_000_2712                          ; $5b4e: $c2 $12 $27

    add hl, bc                                    ; $5b51: $09
    ld b, e                                       ; $5b52: $43
    inc hl                                        ; $5b53: $23
    adc $02                                       ; $5b54: $ce $02
    ld b, a                                       ; $5b56: $47

jr_05f_5b57:
    ld h, $00                                     ; $5b57: $26 $00
    sbc $27                                       ; $5b59: $de $27
    ld b, [hl]                                    ; $5b5b: $46
    ld d, [hl]                                    ; $5b5c: $56
    add [hl]                                      ; $5b5d: $86
    ld h, c                                       ; $5b5e: $61
    ld [bc], a                                    ; $5b5f: $02
    ld h, $cc                                     ; $5b60: $26 $cc
    ld [$85e6], sp                                ; $5b62: $08 $e6 $85
    ld b, a                                       ; $5b65: $47
    and d                                         ; $5b66: $a2
    add $33                                       ; $5b67: $c6 $33
    nop                                           ; $5b69: $00
    ld a, a                                       ; $5b6a: $7f
    xor [hl]                                      ; $5b6b: $ae
    adc l                                         ; $5b6c: $8d
    inc bc                                        ; $5b6d: $03
    inc de                                        ; $5b6e: $13
    call nz, $ebc0                                ; $5b6f: $c4 $c0 $eb
    ld [bc], a                                    ; $5b72: $02
    add h                                         ; $5b73: $84
    ret nz                                        ; $5b74: $c0

    ld [hl], $1b                                  ; $5b75: $36 $1b
    add c                                         ; $5b77: $81
    ld a, a                                       ; $5b78: $7f
    ld [c], a                                     ; $5b79: $e2

jr_05f_5b7a:
    nop                                           ; $5b7a: $00
    inc de                                        ; $5b7b: $13
    call nz, $e980                                ; $5b7c: $c4 $80 $e9
    rst $38                                       ; $5b7f: $ff
    cp $9f                                        ; $5b80: $fe $9f
    push bc                                       ; $5b82: $c5
    ld b, b                                       ; $5b83: $40
    nop                                           ; $5b84: $00
    inc de                                        ; $5b85: $13
    call z, Call_000_06ca                         ; $5b86: $cc $ca $06
    add $33                                       ; $5b89: $c6 $33
    nop                                           ; $5b8b: $00
    rst $38                                       ; $5b8c: $ff
    adc e                                         ; $5b8d: $8b
    cp h                                          ; $5b8e: $bc
    pop bc                                        ; $5b8f: $c1
    inc de                                        ; $5b90: $13
    push bc                                       ; $5b91: $c5
    rst $10                                       ; $5b92: $d7
    dec c                                         ; $5b93: $0d
    add [hl]                                      ; $5b94: $86
    dec [hl]                                      ; $5b95: $35
    ldh a, [$8f]                                  ; $5b96: $f0 $8f
    rrca                                          ; $5b98: $0f
    ld l, d                                       ; $5b99: $6a
    and b                                         ; $5b9a: $a0
    db $ec                                        ; $5b9b: $ec
    nop                                           ; $5b9c: $00
    ld b, e                                       ; $5b9d: $43
    or h                                          ; $5b9e: $b4
    ldh [rHDMA1], a                               ; $5b9f: $e0 $51
    add b                                         ; $5ba1: $80
    rst $38                                       ; $5ba2: $ff
    cp h                                          ; $5ba3: $bc
    ld l, a                                       ; $5ba4: $6f
    sub h                                         ; $5ba5: $94
    ld a, [hl+]                                   ; $5ba6: $2a
    res 6, [hl]                                   ; $5ba7: $cb $b6
    inc a                                         ; $5ba9: $3c
    ld [hl], h                                    ; $5baa: $74
    ld h, b                                       ; $5bab: $60
    ld d, b                                       ; $5bac: $50
    nop                                           ; $5bad: $00
    jp nz, Jump_05f_6dbf                          ; $5bae: $c2 $bf $6d

    sbc $c2                                       ; $5bb1: $de $c2
    cp a                                          ; $5bb3: $bf
    ld h, [hl]                                    ; $5bb4: $66
    ld l, b                                       ; $5bb5: $68
    or h                                          ; $5bb6: $b4
    ld a, [bc]                                    ; $5bb7: $0a
    adc b                                         ; $5bb8: $88
    add hl, hl                                    ; $5bb9: $29
    add b                                         ; $5bba: $80
    rst $38                                       ; $5bbb: $ff
    ld [hl], h                                    ; $5bbc: $74
    rrca                                          ; $5bbd: $0f
    nop                                           ; $5bbe: $00
    call nz, $c0bf                                ; $5bbf: $c4 $bf $c0
    rst $38                                       ; $5bc2: $ff
    call $5bff                                    ; $5bc3: $cd $ff $5b
    rst $18                                       ; $5bc6: $df
    rst $38                                       ; $5bc7: $ff
    rst $38                                       ; $5bc8: $ff
    rst $38                                       ; $5bc9: $ff
    rst $38                                       ; $5bca: $ff
    adc h                                         ; $5bcb: $8c
    rst $28                                       ; $5bcc: $ef
    nop                                           ; $5bcd: $00
    nop                                           ; $5bce: $00
    nop                                           ; $5bcf: $00
    sbc l                                         ; $5bd0: $9d
    and b                                         ; $5bd1: $a0
    rst $38                                       ; $5bd2: $ff
    cp $dc                                        ; $5bd3: $fe $dc
    db $dd                                        ; $5bd5: $dd
    sbc $db                                       ; $5bd6: $de $db
    rst $38                                       ; $5bd8: $ff
    ldh a, [$ef]                                  ; $5bd9: $f0 $ef
    call nc, $d5bb                                ; $5bdb: $d4 $bb $d5
    call nc, $e3db                                ; $5bde: $d4 $db $e3
    rst $18                                       ; $5be1: $df
    ldh [$e1], a                                  ; $5be2: $e0 $e1
    ld a, [c]                                     ; $5be4: $f2
    ldh [$d4], a                                  ; $5be5: $e0 $d4
    rst $30                                       ; $5be7: $f7
    and b                                         ; $5be8: $a0
    ld [c], a                                     ; $5be9: $e2
    db $e3                                        ; $5bea: $e3
    set 7, a                                      ; $5beb: $cb $ff
    and b                                         ; $5bed: $a0
    sub $d7                                       ; $5bee: $d6 $d7
    ret c                                         ; $5bf0: $d8

    and $db                                       ; $5bf1: $e6 $db
    push af                                       ; $5bf3: $f5
    db $e4                                        ; $5bf4: $e4
    push hl                                       ; $5bf5: $e5
    xor b                                         ; $5bf6: $a8
    db $eb                                        ; $5bf7: $eb
    or e                                          ; $5bf8: $b3
    ld a, [c]                                     ; $5bf9: $f2
    reti                                          ; $5bfa: $d9


    jp c, Jump_000_0cdb                           ; $5bfb: $da $db $0c

    sbc $ee                                       ; $5bfe: $de $ee
    halt                                          ; $5c00: $76
    db $e4                                        ; $5c01: $e4
    and $e7                                       ; $5c02: $e6 $e7
    ld h, [hl]                                    ; $5c04: $66
    db $ed                                        ; $5c05: $ed
    ld d, b                                       ; $5c06: $50
    ldh a, [rNR13]                                ; $5c07: $f0 $13
    db $e3                                        ; $5c09: $e3
    ld b, h                                       ; $5c0a: $44
    pop hl                                        ; $5c0b: $e1
    nop                                           ; $5c0c: $00
    halt                                          ; $5c0d: $76
    pop hl                                        ; $5c0e: $e1
    ld c, d                                       ; $5c0f: $4a
    push hl                                       ; $5c10: $e5
    adc h                                         ; $5c11: $8c
    ld [$e035], a                                 ; $5c12: $ea $35 $e0
    ld c, $f7                                     ; $5c15: $0e $f7
    inc de                                        ; $5c17: $13
    push hl                                       ; $5c18: $e5
    halt                                          ; $5c19: $76
    db $e3                                        ; $5c1a: $e3
    ld c, d                                       ; $5c1b: $4a
    db $e4                                        ; $5c1c: $e4
    nop                                           ; $5c1d: $00
    adc $e3                                       ; $5c1e: $ce $e3
    xor e                                         ; $5c20: $ab
    push hl                                       ; $5c21: $e5
    rst $08                                       ; $5c22: $cf
    sub $28                                       ; $5c23: $d6 $28
    db $eb                                        ; $5c25: $eb
    adc c                                         ; $5c26: $89
    call nz, $e24a                                ; $5c27: $c4 $4a $e2
    ld [$abc6], a                                 ; $5c2a: $ea $c6 $ab
    db $e3                                        ; $5c2d: $e3
    nop                                           ; $5c2e: $00
    or [hl]                                       ; $5c2f: $b6
    sbc $95                                       ; $5c30: $de $95
    pop bc                                        ; $5c32: $c1
    adc c                                         ; $5c33: $89
    pop bc                                        ; $5c34: $c1
    ld a, h                                       ; $5c35: $7c
    push bc                                       ; $5c36: $c5
    ld [hl], h                                    ; $5c37: $74
    db $e4                                        ; $5c38: $e4
    inc [hl]                                      ; $5c39: $34
    push bc                                       ; $5c3a: $c5
    or [hl]                                       ; $5c3b: $b6
    call nz, $f1ca                                ; $5c3c: $c4 $ca $f1
    ld a, h                                       ; $5c3f: $7c
    inc hl                                        ; $5c40: $23
    db $e3                                        ; $5c41: $e3
    rst $18                                       ; $5c42: $df
    and $9f                                       ; $5c43: $e6 $9f
    sbc l                                         ; $5c45: $9d
    sbc l                                         ; $5c46: $9d
    sbc l                                         ; $5c47: $9d
    sbc a                                         ; $5c48: $9f
    db $fd                                        ; $5c49: $fd
    and e                                         ; $5c4a: $a3
    ld h, b                                       ; $5c4b: $60
    add hl, bc                                    ; $5c4c: $09
    ld [c], a                                     ; $5c4d: $e2
    inc [hl]                                      ; $5c4e: $34
    jp nz, $c7b6                                  ; $5c4f: $c2 $b6 $c7

    ld e, a                                       ; $5c52: $5f
    jp nc, $c395                                  ; $5c53: $d2 $95 $c3

    call nc, $c4d4                                ; $5c56: $d4 $d4 $c4
    pop hl                                        ; $5c59: $e1
    ccf                                           ; $5c5a: $3f
    sbc h                                         ; $5c5b: $9c
    ld b, [hl]                                    ; $5c5c: $46
    ld b, [hl]                                    ; $5c5d: $46
    ld b, [hl]                                    ; $5c5e: $46
    sbc h                                         ; $5c5f: $9c
    sbc a                                         ; $5c60: $9f
    ret                                           ; $5c61: $c9


    db $e4                                        ; $5c62: $e4
    cp $fd                                        ; $5c63: $fe $fd
    db $f4                                        ; $5c65: $f4
    ld e, a                                       ; $5c66: $5f
    call nz, $a4c7                                ; $5c67: $c4 $c7 $a4
    sbc a                                         ; $5c6a: $9f
    call nz, Call_05f_46e1                        ; $5c6b: $c4 $e1 $46
    ld a, c                                       ; $5c6e: $79
    ld a, d                                       ; $5c6f: $7a
    ld a, h                                       ; $5c70: $7c
    pop hl                                        ; $5c71: $e1
    ld a, l                                       ; $5c72: $7d
    cp a                                          ; $5c73: $bf
    ldh [$2b], a                                  ; $5c74: $e0 $2b
    db $e4                                        ; $5c76: $e4
    inc b                                         ; $5c77: $04
    db $db                                        ; $5c78: $db
    db $eb                                        ; $5c79: $eb
    ld [$9c9f], a                                 ; $5c7a: $ea $9f $9c
    ld a, c                                       ; $5c7d: $79
    rst $38                                       ; $5c7e: $ff
    ld a, d                                       ; $5c7f: $7a
    ld a, e                                       ; $5c80: $7b
    ld a, e                                       ; $5c81: $7b
    ld a, e                                       ; $5c82: $7b
    adc a                                         ; $5c83: $8f
    ld b, [hl]                                    ; $5c84: $46
    ld b, [hl]                                    ; $5c85: $46
    ld a, a                                       ; $5c86: $7f
    add b                                         ; $5c87: $80
    cp a                                          ; $5c88: $bf
    ldh [$73], a                                  ; $5c89: $e0 $73
    and c                                         ; $5c8b: $a1
    ret nz                                        ; $5c8c: $c0

    and d                                         ; $5c8d: $a2
    ld l, d                                       ; $5c8e: $6a
    and l                                         ; $5c8f: $a5
    sbc b                                         ; $5c90: $98
    cp b                                          ; $5c91: $b8
    ld a, l                                       ; $5c92: $7d
    and d                                         ; $5c93: $a2
    pop bc                                        ; $5c94: $c1
    ldh [$7e], a                                  ; $5c95: $e0 $7e
    rst $38                                       ; $5c97: $ff
    ld b, [hl]                                    ; $5c98: $46
    inc bc                                        ; $5c99: $03
    inc bc                                        ; $5c9a: $03
    ld b, [hl]                                    ; $5c9b: $46
    ld b, [hl]                                    ; $5c9c: $46
    inc bc                                        ; $5c9d: $03
    inc b                                         ; $5c9e: $04
    ld [bc], a                                    ; $5c9f: $02
    add b                                         ; $5ca0: $80
    cp a                                          ; $5ca1: $bf
    pop hl                                        ; $5ca2: $e1
    ret nz                                        ; $5ca3: $c0

    and h                                         ; $5ca4: $a4
    inc b                                         ; $5ca5: $04
    add $ae                                       ; $5ca6: $c6 $ae
    add $0d                                       ; $5ca8: $c6 $0d
    xor a                                         ; $5caa: $af
    ld a, l                                       ; $5cab: $7d
    and c                                         ; $5cac: $a1
    pop bc                                        ; $5cad: $c1
    pop hl                                        ; $5cae: $e1
    inc bc                                        ; $5caf: $03
    rst $38                                       ; $5cb0: $ff
    inc b                                         ; $5cb1: $04
    dec c                                         ; $5cb2: $0d
    dec c                                         ; $5cb3: $0d
    inc b                                         ; $5cb4: $04
    inc b                                         ; $5cb5: $04
    dec c                                         ; $5cb6: $0d
    sbc e                                         ; $5cb7: $9b
    rrca                                          ; $5cb8: $0f
    ret nz                                        ; $5cb9: $c0

    cp a                                          ; $5cba: $bf
    pop hl                                        ; $5cbb: $e1
    cp d                                          ; $5cbc: $ba
    pop bc                                        ; $5cbd: $c1
    xor e                                         ; $5cbe: $ab
    sbc d                                         ; $5cbf: $9a
    pop de                                        ; $5cc0: $d1
    add e                                         ; $5cc1: $83
    res 0, c                                      ; $5cc2: $cb $81
    sub b                                         ; $5cc4: $90
    add c                                         ; $5cc5: $81
    sbc [hl]                                      ; $5cc6: $9e
    ld b, [hl]                                    ; $5cc7: $46
    rst $38                                       ; $5cc8: $ff
    add b                                         ; $5cc9: $80
    dec b                                         ; $5cca: $05
    stop                                          ; $5ccb: $10 $00
    ld bc, $9899                                  ; $5ccd: $01 $99 $98
    sbc b                                         ; $5cd0: $98
    ld a, a                                       ; $5cd1: $7f
    sbc b                                         ; $5cd2: $98
    sbc c                                         ; $5cd3: $99
    sbc c                                         ; $5cd4: $99
    ld c, $05                                     ; $5cd5: $0e $05
    add c                                         ; $5cd7: $81
    xor [hl]                                      ; $5cd8: $ae
    cp d                                          ; $5cd9: $ba
    ret nz                                        ; $5cda: $c0

    ld b, b                                       ; $5cdb: $40
    cp l                                          ; $5cdc: $bd
    add b                                         ; $5cdd: $80
    ld [c], a                                     ; $5cde: $e2
    add e                                         ; $5cdf: $83
    sbc b                                         ; $5ce0: $98
    and [hl]                                      ; $5ce1: $a6
    cp l                                          ; $5ce2: $bd
    or e                                          ; $5ce3: $b3
    sub b                                         ; $5ce4: $90
    add c                                         ; $5ce5: $81
    ret nz                                        ; $5ce6: $c0

    pop hl                                        ; $5ce7: $e1
    sbc c                                         ; $5ce8: $99
    jp nz, $ffe0                                  ; $5ce9: $c2 $e0 $ff

    sub a                                         ; $5cec: $97
    sbc b                                         ; $5ced: $98
    sbc c                                         ; $5cee: $99
    nop                                           ; $5cef: $00
    ld bc, $0510                                  ; $5cf0: $01 $10 $05
    add c                                         ; $5cf3: $81
    add a                                         ; $5cf4: $87
    xor a                                         ; $5cf5: $af
    ld b, [hl]                                    ; $5cf6: $46
    xor [hl]                                      ; $5cf7: $ae
    cp d                                          ; $5cf8: $ba
    pop bc                                        ; $5cf9: $c1
    ld c, d                                       ; $5cfa: $4a
    ld a, [c]                                     ; $5cfb: $f2
    add l                                         ; $5cfc: $85
    sub b                                         ; $5cfd: $90
    jp $8dc0                                      ; $5cfe: $c3 $c0 $8d


    db $fd                                        ; $5d01: $fd
    dec b                                         ; $5d02: $05
    add e                                         ; $5d03: $83
    ldh [$99], a                                  ; $5d04: $e0 $99
    sbc b                                         ; $5d06: $98
    rrca                                          ; $5d07: $0f
    inc b                                         ; $5d08: $04
    inc b                                         ; $5d09: $04
    inc b                                         ; $5d0a: $04
    ccf                                           ; $5d0b: $3f
    inc bc                                        ; $5d0c: $03
    add e                                         ; $5d0d: $83
    add h                                         ; $5d0e: $84
    ld b, [hl]                                    ; $5d0f: $46
    xor [hl]                                      ; $5d10: $ae
    xor a                                         ; $5d11: $af
    cp a                                          ; $5d12: $bf
    pop hl                                        ; $5d13: $e1
    push af                                       ; $5d14: $f5
    ld a, d                                       ; $5d15: $7a
    cp h                                          ; $5d16: $bc
    ld h, h                                       ; $5d17: $64
    and a                                         ; $5d18: $a7
    ld b, l                                       ; $5d19: $45
    ret nz                                        ; $5d1a: $c0

    add b                                         ; $5d1b: $80
    ld b, [hl]                                    ; $5d1c: $46
    ld b, $9a                                     ; $5d1d: $06 $9a
    add l                                         ; $5d1f: $85
    ldh [$0d], a                                  ; $5d20: $e0 $0d
    db $fd                                        ; $5d22: $fd
    ld [bc], a                                    ; $5d23: $02
    rst $38                                       ; $5d24: $ff
    and b                                         ; $5d25: $a0
    add e                                         ; $5d26: $83
    add [hl]                                      ; $5d27: $86
    add l                                         ; $5d28: $85
    ld b, [hl]                                    ; $5d29: $46
    xor a                                         ; $5d2a: $af
    xor [hl]                                      ; $5d2b: $ae
    pop hl                                        ; $5d2c: $e1
    xor a                                         ; $5d2d: $af
    rst $30                                       ; $5d2e: $f7
    and b                                         ; $5d2f: $a0
    pop bc                                        ; $5d30: $c1
    and e                                         ; $5d31: $a3
    cp a                                          ; $5d32: $bf
    sub h                                         ; $5d33: $94
    ld h, h                                       ; $5d34: $64
    and a                                         ; $5d35: $a7
    sbc [hl]                                      ; $5d36: $9e
    ld b, [hl]                                    ; $5d37: $46
    ld b, [hl]                                    ; $5d38: $46
    cp a                                          ; $5d39: $bf
    add d                                         ; $5d3a: $82
    add e                                         ; $5d3b: $83
    ld [bc], a                                    ; $5d3c: $02
    rlca                                          ; $5d3d: $07
    sbc c                                         ; $5d3e: $99
    rlca                                          ; $5d3f: $07
    add l                                         ; $5d40: $85
    ldh [$89], a                                  ; $5d41: $e0 $89
    rst $18                                       ; $5d43: $df
    adc b                                         ; $5d44: $88
    adc b                                         ; $5d45: $88
    add a                                         ; $5d46: $87
    add l                                         ; $5d47: $85
    xor [hl]                                      ; $5d48: $ae
    add b                                         ; $5d49: $80
    ldh [rDMA], a                                 ; $5d4a: $e0 $46
    xor [hl]                                      ; $5d4c: $ae
    db $e3                                        ; $5d4d: $e3
    ld b, [hl]                                    ; $5d4e: $46
    sbc [hl]                                      ; $5d4f: $9e
    ld e, $ab                                     ; $5d50: $1e $ab
    ei                                            ; $5d52: $fb
    xor h                                         ; $5d53: $ac
    ld h, h                                       ; $5d54: $64
    and a                                         ; $5d55: $a7
    sbc [hl]                                      ; $5d56: $9e
    ld b, [hl]                                    ; $5d57: $46
    xor [hl]                                      ; $5d58: $ae
    ld e, a                                       ; $5d59: $5f
    add l                                         ; $5d5a: $85
    add [hl]                                      ; $5d5b: $86
    add e                                         ; $5d5c: $83
    ld b, [hl]                                    ; $5d5d: $46
    ld de, $e285                                  ; $5d5e: $11 $85 $e2
    xor [hl]                                      ; $5d61: $ae
    ld a, l                                       ; $5d62: $7d
    and b                                         ; $5d63: $a0
    dec e                                         ; $5d64: $1d
    xor a                                         ; $5d65: $af
    cp $e0                                        ; $5d66: $fe $e0
    ld b, [hl]                                    ; $5d68: $46
    xor a                                         ; $5d69: $af
    ret nc                                        ; $5d6a: $d0

    cp b                                          ; $5d6b: $b8
    and c                                         ; $5d6c: $a1
    ld l, c                                       ; $5d6d: $69
    ld h, h                                       ; $5d6e: $64
    db $fd                                        ; $5d6f: $fd
    adc e                                         ; $5d70: $8b
    cp $ac                                        ; $5d71: $fe $ac
    ld l, h                                       ; $5d73: $6c
    sbc a                                         ; $5d74: $9f
    ret nc                                        ; $5d75: $d0

    xor a                                         ; $5d76: $af
    ld b, [hl]                                    ; $5d77: $46
    add l                                         ; $5d78: $85
    add a                                         ; $5d79: $87
    adc b                                         ; $5d7a: $88
    pop af                                        ; $5d7b: $f1

jr_05f_5d7c:
    ld de, $e185                                  ; $5d7c: $11 $85 $e1
    add $e1                                       ; $5d7f: $c6 $e1
    dec sp                                        ; $5d81: $3b
    and b                                         ; $5d82: $a0
    ret nc                                        ; $5d83: $d0

    pop de                                        ; $5d84: $d1
    pop de                                        ; $5d85: $d1
    pop de                                        ; $5d86: $d1
    ld h, c                                       ; $5d87: $61
    db $d3                                        ; $5d88: $d3
    add a                                         ; $5d89: $87
    adc b                                         ; $5d8a: $88
    db $fd                                        ; $5d8b: $fd
    adc l                                         ; $5d8c: $8d
    ld [de], a                                    ; $5d8d: $12
    ld h, l                                       ; $5d8e: $65
    ld a, [bc]                                    ; $5d8f: $0a
    ld h, e                                       ; $5d90: $63
    db $d3                                        ; $5d91: $d3
    ret nc                                        ; $5d92: $d0

    ld d, d                                       ; $5d93: $52
    ldh [$7e], a                                  ; $5d94: $e0 $7e
    add b                                         ; $5d96: $80
    pop hl                                        ; $5d97: $e1
    ld b, [hl]                                    ; $5d98: $46
    ld b, [hl]                                    ; $5d99: $46
    ld [de], a                                    ; $5d9a: $12
    inc de                                        ; $5d9b: $13
    inc de                                        ; $5d9c: $13
    ld [de], a                                    ; $5d9d: $12
    pop bc                                        ; $5d9e: $c1
    ldh [$a1], a                                  ; $5d9f: $e0 $a1
    db $d3                                        ; $5da1: $d3
    dec a                                         ; $5da2: $3d
    ld h, [hl]                                    ; $5da3: $66
    ld e, $72                                     ; $5da4: $1e $72
    xor h                                         ; $5da6: $ac
    ld l, c                                       ; $5da7: $69
    db $fd                                        ; $5da8: $fd
    ld b, c                                       ; $5da9: $41
    jp nc, $e04d                                  ; $5daa: $d2 $4d $e0

    ld [de], a                                    ; $5dad: $12
    dec c                                         ; $5dae: $0d
    ld [de], a                                    ; $5daf: $12
    jp $aee3                                      ; $5db0: $c3 $e3 $ae


    ld de, $e3c1                                  ; $5db3: $11 $c1 $e3
    cp l                                          ; $5db6: $bd
    ld b, b                                       ; $5db7: $40
    dec a                                         ; $5db8: $3d
    ld h, c                                       ; $5db9: $61
    inc a                                         ; $5dba: $3c
    sub $b0                                       ; $5dbb: $d6 $b0
    and b                                         ; $5dbd: $a0
    ld b, l                                       ; $5dbe: $45
    db $fd                                        ; $5dbf: $fd
    ld b, c                                       ; $5dc0: $41
    cp [hl]                                       ; $5dc1: $be
    ret nz                                        ; $5dc2: $c0

    pop bc                                        ; $5dc3: $c1
    ldh [rDMA], a                                 ; $5dc4: $e0 $46
    ld de, $81c1                                  ; $5dc6: $11 $c1 $81
    xor a                                         ; $5dc9: $af
    rlca                                          ; $5dca: $07
    ld de, $d246                                  ; $5dcb: $11 $46 $d2
    xor b                                         ; $5dce: $a8
    ld c, b                                       ; $5dcf: $48
    inc [hl]                                      ; $5dd0: $34
    add d                                         ; $5dd1: $82
    cp h                                          ; $5dd2: $bc
    ld d, c                                       ; $5dd3: $51
    and b                                         ; $5dd4: $a0
    ld b, b                                       ; $5dd5: $40
    dec h                                         ; $5dd6: $25
    ld h, d                                       ; $5dd7: $62
    db $fc                                        ; $5dd8: $fc
    add b                                         ; $5dd9: $80
    and e                                         ; $5dda: $a3
    add d                                         ; $5ddb: $82
    ldh [$ae], a                                  ; $5ddc: $e0 $ae
    ld b, [hl]                                    ; $5dde: $46
    ld de, $3080                                  ; $5ddf: $11 $80 $30
    ld a, [hl+]                                   ; $5de2: $2a
    dec b                                         ; $5de3: $05
    add c                                         ; $5de4: $81
    ld a, b                                       ; $5de5: $78
    ldh [$9e], a                                  ; $5de6: $e0 $9e
    xor b                                         ; $5de8: $a8
    ld c, b                                       ; $5de9: $48
    inc a                                         ; $5dea: $3c
    call nz, $4f7a                                ; $5deb: $c4 $7a $4f
    and b                                         ; $5dee: $a0
    ld b, l                                       ; $5def: $45
    add b                                         ; $5df0: $80
    and e                                         ; $5df1: $a3
    ld a, l                                       ; $5df2: $7d
    ld de, $a1cd                                  ; $5df3: $11 $cd $a1
    ld de, $2c80                                  ; $5df6: $11 $80 $2c
    jr nc, jr_05f_5d7c                            ; $5df9: $30 $81

    or $e0                                        ; $5dfb: $f6 $e0
    pop bc                                        ; $5dfd: $c1
    sbc [hl]                                      ; $5dfe: $9e
    xor b                                         ; $5dff: $a8
    ld c, b                                       ; $5e00: $48
    cp h                                          ; $5e01: $bc
    ld e, e                                       ; $5e02: $5b
    ld b, e                                       ; $5e03: $43
    add l                                         ; $5e04: $85
    ld b, e                                       ; $5e05: $43
    ret nz                                        ; $5e06: $c0

    call Call_000_11a0                            ; $5e07: $cd $a0 $11
    add d                                         ; $5e0a: $82
    rla                                           ; $5e0b: $17
    add e                                         ; $5e0c: $83
    add e                                         ; $5e0d: $83
    add h                                         ; $5e0e: $84
    or $e0                                        ; $5e0f: $f6 $e0
    sbc [hl]                                      ; $5e11: $9e
    xor b                                         ; $5e12: $a8
    ld c, b                                       ; $5e13: $48
    sub c                                         ; $5e14: $91
    dec sp                                        ; $5e15: $3b
    ld h, e                                       ; $5e16: $63
    ld b, e                                       ; $5e17: $43
    db $fc                                        ; $5e18: $fc
    rst $38                                       ; $5e19: $ff
    and b                                         ; $5e1a: $a0
    inc bc                                        ; $5e1b: $03
    ret nz                                        ; $5e1c: $c0

    xor a                                         ; $5e1d: $af
    ld b, [hl]                                    ; $5e1e: $46
    ld de, $8785                                  ; $5e1f: $11 $85 $87
    add a                                         ; $5e22: $87
    pop bc                                        ; $5e23: $c1
    add l                                         ; $5e24: $85
    cp b                                          ; $5e25: $b8
    ret nz                                        ; $5e26: $c0

    add c                                         ; $5e27: $81
    adc b                                         ; $5e28: $88
    ld b, d                                       ; $5e29: $42
    ld b, e                                       ; $5e2a: $43
    sbc c                                         ; $5e2b: $99
    jr c, jr_05f_5e87                             ; $5e2c: $38 $59

    ld hl, $469e                                  ; $5e2e: $21 $9e $46
    ld bc, $00af                                  ; $5e31: $01 $af $00
    ld [c], a                                     ; $5e34: $e2
    ld b, e                                       ; $5e35: $43
    pop bc                                        ; $5e36: $c1
    ld a, [$3fe0]                                 ; $5e37: $fa $e0 $3f
    ret nz                                        ; $5e3a: $c0

    ld a, h                                       ; $5e3b: $7c
    ld h, c                                       ; $5e3c: $61
    ccf                                           ; $5e3d: $3f
    jr z, jr_05f_5e41                             ; $5e3e: $28 $01

    sub b                                         ; $5e40: $90

jr_05f_5e41:
    db $ec                                        ; $5e41: $ec
    ld b, [hl]                                    ; $5e42: $46
    dec h                                         ; $5e43: $25
    ld e, c                                       ; $5e44: $59
    ld hl, $d09f                                  ; $5e45: $21 $9f $d0
    ld [bc], a                                    ; $5e48: $02
    pop bc                                        ; $5e49: $c1
    xor a                                         ; $5e4a: $af
    ld a, c                                       ; $5e4b: $79
    ld a, d                                       ; $5e4c: $7a
    rlca                                          ; $5e4d: $07
    ld a, l                                       ; $5e4e: $7d
    ld b, [hl]                                    ; $5e4f: $46
    ld de, $a086                                  ; $5e50: $11 $86 $a0
    rst $30                                       ; $5e53: $f7
    and c                                         ; $5e54: $a1
    ld a, [$8940]                                 ; $5e55: $fa $40 $89
    ld c, b                                       ; $5e58: $48
    xor h                                         ; $5e59: $ac
    db $10                                        ; $5e5a: $10
    ld hl, sp+$5c                                 ; $5e5b: $f8 $5c
    ld b, l                                       ; $5e5d: $45
    ld e, c                                       ; $5e5e: $59
    ld [hl+], a                                   ; $5e5f: $22
    cp a                                          ; $5e60: $bf
    and b                                         ; $5e61: $a0
    ld [de], a                                    ; $5e62: $12
    ld [de], a                                    ; $5e63: $12
    ld a, c                                       ; $5e64: $79
    ld a, [hl]                                    ; $5e65: $7e
    xor [hl]                                      ; $5e66: $ae
    rlca                                          ; $5e67: $07
    ld a, a                                       ; $5e68: $7f
    ld a, l                                       ; $5e69: $7d
    ld [de], a                                    ; $5e6a: $12
    pop bc                                        ; $5e6b: $c1
    and b                                         ; $5e6c: $a0
    db $fc                                        ; $5e6d: $fc
    pop hl                                        ; $5e6e: $e1
    inc bc                                        ; $5e6f: $03
    and b                                         ; $5e70: $a0
    xor d                                         ; $5e71: $aa
    ld b, c                                       ; $5e72: $41
    xor e                                         ; $5e73: $ab
    inc b                                         ; $5e74: $04
    add sp, -$51                                  ; $5e75: $e8 $af
    ld d, b                                       ; $5e77: $50
    ld e, c                                       ; $5e78: $59
    ld [bc], a                                    ; $5e79: $02
    adc e                                         ; $5e7a: $8b
    ld b, $d2                                     ; $5e7b: $06 $d2
    add c                                         ; $5e7d: $81
    and b                                         ; $5e7e: $a0
    add d                                         ; $5e7f: $82
    add e                                         ; $5e80: $83
    xor a                                         ; $5e81: $af
    nop                                           ; $5e82: $00
    cp a                                          ; $5e83: $bf
    ldh [$79], a                                  ; $5e84: $e0 $79
    and d                                         ; $5e86: $a2

jr_05f_5e87:
    push af                                       ; $5e87: $f5
    add b                                         ; $5e88: $80
    jp Jump_000_3e88                              ; $5e89: $c3 $88 $3e


    ld [hl-], a                                   ; $5e8c: $32
    ld e, h                                       ; $5e8d: $5c
    ld b, h                                       ; $5e8e: $44
    dec b                                         ; $5e8f: $05
    inc h                                         ; $5e90: $24
    ld a, $e0                                     ; $5e91: $3e $e0
    dec b                                         ; $5e93: $05
    ld de, $80bc                                  ; $5e94: $11 $bc $80
    xor a                                         ; $5e97: $af
    dec b                                         ; $5e98: $05
    add b                                         ; $5e99: $80
    or a                                          ; $5e9a: $b7
    and d                                         ; $5e9b: $a2
    add b                                         ; $5e9c: $80
    pop hl                                        ; $5e9d: $e1
    ld h, h                                       ; $5e9e: $64
    ld d, $6d                                     ; $5e9f: $16 $6d

Jump_05f_5ea1:
    ld [$0522], sp                                ; $5ea1: $08 $22 $05
    ld h, $d2                                     ; $5ea4: $26 $d2
    ld b, b                                       ; $5ea6: $40
    and b                                         ; $5ea7: $a0
    cp h                                          ; $5ea8: $bc
    add b                                         ; $5ea9: $80
    ld b, h                                       ; $5eaa: $44
    add c                                         ; $5eab: $81
    ld de, $a274                                  ; $5eac: $11 $74 $a2
    cp h                                          ; $5eaf: $bc
    xor c                                         ; $5eb0: $a9
    ld [$2e3d], sp                                ; $5eb1: $08 $3d $2e
    dec hl                                        ; $5eb4: $2b
    dec bc                                        ; $5eb5: $0b
    cp $43                                        ; $5eb6: $fe $43
    xor [hl]                                      ; $5eb8: $ae
    ld [bc], a                                    ; $5eb9: $02
    and e                                         ; $5eba: $a3
    ld a, [hl-]                                   ; $5ebb: $3a
    ret nz                                        ; $5ebc: $c0

    or e                                          ; $5ebd: $b3
    and c                                         ; $5ebe: $a1
    inc bc                                        ; $5ebf: $03
    add b                                         ; $5ec0: $80
    ld b, b                                       ; $5ec1: $40
    cp h                                          ; $5ec2: $bc
    xor c                                         ; $5ec3: $a9
    ld b, b                                       ; $5ec4: $40
    adc h                                         ; $5ec5: $8c
    call nz, $a642                                ; $5ec6: $c4 $42 $a6
    and $7b                                       ; $5ec9: $e6 $7b
    nop                                           ; $5ecb: $00
    jp nz, $af20                                  ; $5ecc: $c2 $20 $af

    jp z, Jump_000_0360                           ; $5ecf: $ca $60 $03

    ld [de], a                                    ; $5ed2: $12
    ld [de], a                                    ; $5ed3: $12
    cp b                                          ; $5ed4: $b8
    add d                                         ; $5ed5: $82
    or e                                          ; $5ed6: $b3
    and b                                         ; $5ed7: $a0
    jp $bc60                                      ; $5ed8: $c3 $60 $bc


    xor c                                         ; $5edb: $a9
    dec a                                         ; $5edc: $3d
    inc [hl]                                      ; $5edd: $34
    ld b, b                                       ; $5ede: $40
    push bc                                       ; $5edf: $c5
    rrca                                          ; $5ee0: $0f
    sbc l                                         ; $5ee1: $9d
    sbc h                                         ; $5ee2: $9c
    xor [hl]                                      ; $5ee3: $ae
    xor [hl]                                      ; $5ee4: $ae
    ld c, h                                       ; $5ee5: $4c
    ld h, d                                       ; $5ee6: $62
    ld b, c                                       ; $5ee7: $41
    add e                                         ; $5ee8: $83
    ld a, e                                       ; $5ee9: $7b
    pop bc                                        ; $5eea: $c1
    dec a                                         ; $5eeb: $3d
    ld b, a                                       ; $5eec: $47
    jr nz, @-$3b                                  ; $5eed: $20 $c3

    or d                                          ; $5eef: $b2
    add d                                         ; $5ef0: $82
    add d                                         ; $5ef1: $82
    jr nz, @-$5d                                  ; $5ef2: $20 $a1

    and $60                                       ; $5ef4: $e6 $60
    ld b, l                                       ; $5ef6: $45
    ld hl, $8daf                                  ; $5ef7: $21 $af $8d
    ld b, b                                       ; $5efa: $40
    ld c, h                                       ; $5efb: $4c
    ld h, c                                       ; $5efc: $61
    ldh [$81], a                                  ; $5efd: $e0 $81
    ld h, c                                       ; $5eff: $61
    ld a, a                                       ; $5f00: $7f
    jp $a6bc                                      ; $5f01: $c3 $bc $a6


    call nz, Call_05f_6c32                        ; $5f04: $c4 $32 $6c
    ld [$9c9f], sp                                ; $5f07: $08 $9f $9c
    ld b, l                                       ; $5f0a: $45
    ld a, a                                       ; $5f0b: $7f
    ld b, e                                       ; $5f0c: $43
    ld b, c                                       ; $5f0d: $41
    ld b, e                                       ; $5f0e: $43
    ld b, e                                       ; $5f0f: $43
    ld b, c                                       ; $5f10: $41
    xor a                                         ; $5f11: $af
    xor [hl]                                      ; $5f12: $ae
    adc d                                         ; $5f13: $8a
    ld b, b                                       ; $5f14: $40
    inc a                                         ; $5f15: $3c
    add c                                         ; $5f16: $81
    ld h, c                                       ; $5f17: $61
    ei                                            ; $5f18: $fb
    ld b, b                                       ; $5f19: $40
    ld de, $8988                                  ; $5f1a: $11 $88 $89
    add e                                         ; $5f1d: $83
    cp h                                          ; $5f1e: $bc
    and l                                         ; $5f1f: $a5
    ld a, d                                       ; $5f20: $7a
    ld d, d                                       ; $5f21: $52
    db $fc                                        ; $5f22: $fc
    ld l, a                                       ; $5f23: $6f
    ld h, h                                       ; $5f24: $64
    daa                                           ; $5f25: $27
    and c                                         ; $5f26: $a1
    sbc [hl]                                      ; $5f27: $9e
    xor [hl]                                      ; $5f28: $ae
    ld [hl], $3b                                  ; $5f29: $36 $3b
    dec [hl]                                      ; $5f2b: $35
    dec sp                                        ; $5f2c: $3b
    ld l, d                                       ; $5f2d: $6a
    db $fd                                        ; $5f2e: $fd
    ldh [$ad], a                                  ; $5f2f: $e0 $ad
    adc d                                         ; $5f31: $8a
    ld b, c                                       ; $5f32: $41
    xor [hl]                                      ; $5f33: $ae
    add b                                         ; $5f34: $80
    ld b, d                                       ; $5f35: $42
    ld de, $ee46                                  ; $5f36: $11 $46 $ee
    ld b, c                                       ; $5f39: $41
    db $e3                                        ; $5f3a: $e3
    sbc h                                         ; $5f3b: $9c
    sbc a                                         ; $5f3c: $9f
    ld c, b                                       ; $5f3d: $48
    ld h, c                                       ; $5f3e: $61
    ld [hl], d                                    ; $5f3f: $72
    add hl, de                                    ; $5f40: $19
    jp $af62                                      ; $5f41: $c3 $62 $af


    inc a                                         ; $5f44: $3c
    and h                                         ; $5f45: $a4
    db $dd                                        ; $5f46: $dd
    ld h, h                                       ; $5f47: $64
    rst $38                                       ; $5f48: $ff
    ldh [$a5], a                                  ; $5f49: $e0 $a5
    inc a                                         ; $5f4b: $3c
    ld b, h                                       ; $5f4c: $44
    ld a, l                                       ; $5f4d: $7d
    pop hl                                        ; $5f4e: $e1
    ld b, [hl]                                    ; $5f4f: $46
    adc d                                         ; $5f50: $8a
    rst $38                                       ; $5f51: $ff
    add l                                         ; $5f52: $85
    inc bc                                        ; $5f53: $03
    inc b                                         ; $5f54: $04
    sbc c                                         ; $5f55: $99
    rlca                                          ; $5f56: $07
    ld [bc], a                                    ; $5f57: $02
    add l                                         ; $5f58: $85
    adc e                                         ; $5f59: $8b
    ldh a, [$bb]                                  ; $5f5a: $f0 $bb
    and a                                         ; $5f5c: $a7
    ld [hl], a                                    ; $5f5d: $77
    inc c                                         ; $5f5e: $0c
    ld l, b                                       ; $5f5f: $68
    rlca                                          ; $5f60: $07
    ld b, e                                       ; $5f61: $43
    ld [hl+], a                                   ; $5f62: $22
    ld b, d                                       ; $5f63: $42
    dec [hl]                                      ; $5f64: $35
    ld l, c                                       ; $5f65: $69
    and e                                         ; $5f66: $a3
    ld a, a                                       ; $5f67: $7f
    dec [hl]                                      ; $5f68: $35
    dec [hl]                                      ; $5f69: $35
    and e                                         ; $5f6a: $a3
    ld l, d                                       ; $5f6b: $6a
    dec [hl]                                      ; $5f6c: $35
    ld b, d                                       ; $5f6d: $42
    xor [hl]                                      ; $5f6e: $ae
    ld sp, hl                                     ; $5f6f: $f9
    ret nz                                        ; $5f70: $c0

    ld l, a                                       ; $5f71: $6f
    ld b, [hl]                                    ; $5f72: $46
    add c                                         ; $5f73: $81
    dec b                                         ; $5f74: $05
    db $10                                        ; $5f75: $10

jr_05f_5f76:
    jr c, jr_05f_5f99                             ; $5f76: $38 $21

    inc c                                         ; $5f78: $0c
    add b                                         ; $5f79: $80
    dec sp                                        ; $5f7a: $3b
    and c                                         ; $5f7b: $a1
    ret nc                                        ; $5f7c: $d0

    rst $10                                       ; $5f7d: $d7
    ld c, e                                       ; $5f7e: $4b
    ld a, h                                       ; $5f7f: $7c
    ld c, [hl]                                    ; $5f80: $4e
    ld b, e                                       ; $5f81: $43
    ld [hl+], a                                   ; $5f82: $22
    ret nz                                        ; $5f83: $c0

    ldh [$35], a                                  ; $5f84: $e0 $35
    rst $38                                       ; $5f86: $ff
    ldh [rOCPS], a                                ; $5f87: $e0 $6a
    dec [hl]                                      ; $5f89: $35
    db $fc                                        ; $5f8a: $fc
    adc d                                         ; $5f8b: $8a
    jr nz, jr_05f_5f97                            ; $5f8c: $20 $09

    ld b, b                                       ; $5f8e: $40
    add c                                         ; $5f8f: $81
    dec b                                         ; $5f90: $05
    ld c, $98                                     ; $5f91: $0e $98
    dec c                                         ; $5f93: $0d
    rlca                                          ; $5f94: $07
    adc a                                         ; $5f95: $8f
    ld [bc], a                                    ; $5f96: $02

jr_05f_5f97:
    ld a, c                                       ; $5f97: $79
    adc l                                         ; $5f98: $8d

jr_05f_5f99:
    ld b, [hl]                                    ; $5f99: $46
    ld a, $42                                     ; $5f9a: $3e $42
    cp a                                          ; $5f9c: $bf
    halt                                          ; $5f9d: $76
    and d                                         ; $5f9e: $a2
    ld h, h                                       ; $5f9f: $64
    sbc a                                         ; $5fa0: $9f
    rst $18                                       ; $5fa1: $df
    sbc h                                         ; $5fa2: $9c
    ld b, h                                       ; $5fa3: $44
    inc a                                         ; $5fa4: $3c
    ld l, e                                       ; $5fa5: $6b
    ld [hl], c                                    ; $5fa6: $71
    rst $38                                       ; $5fa7: $ff
    ldh [$6d], a                                  ; $5fa8: $e0 $6d
    inc a                                         ; $5faa: $3c
    cp $8a                                        ; $5fab: $fe $8a
    ld hl, $46af                                  ; $5fad: $21 $af $46
    adc h                                         ; $5fb0: $8c
    ld a, l                                       ; $5fb1: $7d
    ld [bc], a                                    ; $5fb2: $02
    inc b                                         ; $5fb3: $04
    inc bc                                        ; $5fb4: $03
    add c                                         ; $5fb5: $81
    ld b, [hl]                                    ; $5fb6: $46
    jr nc, jr_05f_5fb9                            ; $5fb7: $30 $00

jr_05f_5fb9:
    ld a, d                                       ; $5fb9: $7a
    ld b, b                                       ; $5fba: $40
    rlca                                          ; $5fbb: $07
    add c                                         ; $5fbc: $81
    cp c                                          ; $5fbd: $b9
    ld [hl], h                                    ; $5fbe: $74
    cp e                                          ; $5fbf: $bb
    and h                                         ; $5fc0: $a4
    add h                                         ; $5fc1: $84
    ld h, b                                       ; $5fc2: $60
    ld b, l                                       ; $5fc3: $45
    jp c, $c4c0                                   ; $5fc4: $da $c0 $c4

    ld [hl], $80                                  ; $5fc7: $36 $80
    pop hl                                        ; $5fc9: $e1

jr_05f_5fca:
    ld b, [hl]                                    ; $5fca: $46
    ld b, [hl]                                    ; $5fcb: $46
    cp e                                          ; $5fcc: $bb
    add c                                         ; $5fcd: $81
    ld a, c                                       ; $5fce: $79
    ld a, d                                       ; $5fcf: $7a
    ld h, c                                       ; $5fd0: $61
    adc a                                         ; $5fd1: $8f
    dec sp                                        ; $5fd2: $3b
    ld b, d                                       ; $5fd3: $42
    add d                                         ; $5fd4: $82
    ld d, h                                       ; $5fd5: $54
    or b                                          ; $5fd6: $b0
    ld h, h                                       ; $5fd7: $64
    call nz, $ae63                                ; $5fd8: $c4 $63 $ae
    ld b, [hl]                                    ; $5fdb: $46
    ld b, b                                       ; $5fdc: $40
    ret nz                                        ; $5fdd: $c0

    db $e3                                        ; $5fde: $e3
    xor [hl]                                      ; $5fdf: $ae
    xor [hl]                                      ; $5fe0: $ae
    db $fd                                        ; $5fe1: $fd
    ldh [$88], a                                  ; $5fe2: $e0 $88
    ld [hl+], a                                   ; $5fe4: $22
    add d                                         ; $5fe5: $82
    jr nz, jr_05f_5f76                            ; $5fe6: $20 $8e

    ld a, e                                       ; $5fe8: $7b
    adc a                                         ; $5fe9: $8f
    nop                                           ; $5fea: $00
    db $fc                                        ; $5feb: $fc
    inc h                                         ; $5fec: $24
    inc a                                         ; $5fed: $3c
    and e                                         ; $5fee: $a3
    ld b, d                                       ; $5fef: $42
    ld l, $03                                     ; $5ff0: $2e $03
    add h                                         ; $5ff2: $84
    inc bc                                        ; $5ff3: $03
    inc hl                                        ; $5ff4: $23
    adc [hl]                                      ; $5ff5: $8e
    ld hl, $c0c7                                  ; $5ff6: $21 $c7 $c0
    db $fd                                        ; $5ff9: $fd
    pop hl                                        ; $5ffa: $e1
    inc b                                         ; $5ffb: $04
    jp nz, Jump_05f_7fa4                          ; $5ffc: $c2 $a4 $7f

    ld [hl+], a                                   ; $5fff: $22
    db $d3                                        ; $6000: $d3
    ld h, c                                       ; $6001: $61
    ld b, c                                       ; $6002: $41
    dec de                                        ; $6003: $1b
    inc hl                                        ; $6004: $23
    ld b, d                                       ; $6005: $42
    dec hl                                        ; $6006: $2b
    or b                                          ; $6007: $b0
    ld h, a                                       ; $6008: $67
    ld l, d                                       ; $6009: $6a
    ld hl, $8400                                  ; $600a: $21 $00 $84
    ld h, c                                       ; $600d: $61
    ld b, h                                       ; $600e: $44
    and b                                         ; $600f: $a0
    adc $02                                       ; $6010: $ce $02
    ld a, e                                       ; $6012: $7b
    and b                                         ; $6013: $a0
    ld b, a                                       ; $6014: $47
    ld hl, $e1fd                                  ; $6015: $21 $fd $e1
    ld a, a                                       ; $6018: $7f
    inc hl                                        ; $6019: $23
    ld b, d                                       ; $601a: $42
    inc [hl]                                      ; $601b: $34
    nop                                           ; $601c: $00
    db $ed                                        ; $601d: $ed
    xor d                                         ; $601e: $aa
    ld b, e                                       ; $601f: $43
    jr nz, @+$4c                                  ; $6020: $20 $4a

    db $e3                                        ; $6022: $e3
    rlc c                                         ; $6023: $cb $01
    ld b, a                                       ; $6025: $47
    inc h                                         ; $6026: $24
    inc e                                         ; $6027: $1c
    and [hl]                                      ; $6028: $a6
    add $32                                       ; $6029: $c6 $32
    dec l                                         ; $602b: $2d
    ld b, [hl]                                    ; $602c: $46
    nop                                           ; $602d: $00
    ld [bc], a                                    ; $602e: $02
    ld h, $cc                                     ; $602f: $26 $cc
    ld [$2368], sp                                ; $6031: $08 $68 $23
    adc a                                         ; $6034: $8f
    ld b, d                                       ; $6035: $42
    rst $38                                       ; $6036: $ff
    ld b, d                                       ; $6037: $42
    cp [hl]                                       ; $6038: $be
    rst $30                                       ; $6039: $f7
    ld [bc], a                                    ; $603a: $02
    jr z, jr_05f_5fca                             ; $603b: $28 $8d

    ld [bc], a                                    ; $603d: $02
    nop                                           ; $603e: $00
    ld c, l                                       ; $603f: $4d
    db $e4                                        ; $6040: $e4
    ret                                           ; $6041: $c9


    ld b, d                                       ; $6042: $42
    ld [c], a                                     ; $6043: $e2
    ld b, d                                       ; $6044: $42
    adc e                                         ; $6045: $8b
    ld bc, $8315                                  ; $6046: $01 $15 $83
    cp h                                          ; $6049: $bc
    rst $30                                       ; $604a: $f7
    add h                                         ; $604b: $84
    ld h, c                                       ; $604c: $61
    add c                                         ; $604d: $81
    ld b, c                                       ; $604e: $41
    nop                                           ; $604f: $00
    inc de                                        ; $6050: $13
    push bc                                       ; $6051: $c5
    ld d, l                                       ; $6052: $55
    inc b                                         ; $6053: $04
    call z, $fd92                                 ; $6054: $cc $92 $fd
    or c                                          ; $6057: $b1
    sbc e                                         ; $6058: $9b
    ld h, d                                       ; $6059: $62
    ld b, b                                       ; $605a: $40
    nop                                           ; $605b: $00
    inc de                                        ; $605c: $13
    call z, Call_05f_61c4                         ; $605d: $cc $c4 $61
    db $10                                        ; $6060: $10
    ld b, d                                       ; $6061: $42
    ld [hl+], a                                   ; $6062: $22
    add $33                                       ; $6063: $c6 $33
    pop af                                        ; $6065: $f1
    rlca                                          ; $6066: $07
    ld e, a                                       ; $6067: $5f
    jp $90d3                                      ; $6068: $c3 $d3 $90


    jp nz, Jump_000_1195                          ; $606b: $c2 $95 $11

    ld b, c                                       ; $606e: $41
    dec d                                         ; $606f: $15
    nop                                           ; $6070: $00
    ldh a, [$8f]                                  ; $6071: $f0 $8f
    inc de                                        ; $6073: $13
    push bc                                       ; $6074: $c5
    rlc d                                         ; $6075: $cb $02
    dec b                                         ; $6077: $05
    ld h, $37                                     ; $6078: $26 $37
    db $f4                                        ; $607a: $f4
    ld b, [hl]                                    ; $607b: $46
    ld [bc], a                                    ; $607c: $02
    ld a, h                                       ; $607d: $7c
    ld h, [hl]                                    ; $607e: $66
    ld d, h                                       ; $607f: $54
    add hl, hl                                    ; $6080: $29
    nop                                           ; $6081: $00
    rrc h                                         ; $6082: $cb $0c
    inc bc                                        ; $6084: $03
    sbc c                                         ; $6085: $99
    ld e, a                                       ; $6086: $5f
    inc h                                         ; $6087: $24
    ld e, d                                       ; $6088: $5a
    ld bc, $2054                                  ; $6089: $01 $54 $20
    dec d                                         ; $608c: $15
    call $ae4b                                    ; $608d: $cd $4b $ae
    ld a, h                                       ; $6090: $7c
    ld [hl], h                                    ; $6091: $74
    nop                                           ; $6092: $00
    db $fd                                        ; $6093: $fd
    ld [hl+], a                                   ; $6094: $22
    and b                                         ; $6095: $a0
    ld d, b                                       ; $6096: $50
    xor l                                         ; $6097: $ad
    ldh a, [rIE]                                  ; $6098: $f0 $ff
    rst $38                                       ; $609a: $ff
    xor a                                         ; $609b: $af
    ld hl, $0453                                  ; $609c: $21 $53 $04
    ld c, e                                       ; $609f: $4b
    and d                                         ; $60a0: $a2
    cp [hl]                                       ; $60a1: $be
    cp $00                                        ; $60a2: $fe $00
    ld e, e                                       ; $60a4: $5b
    jp z, $034e                                   ; $60a5: $ca $4e $03

    adc b                                         ; $60a8: $88
    jr z, jr_05f_60b0                             ; $60a9: $28 $05

    sub h                                         ; $60ab: $94
    ld [hl], h                                    ; $60ac: $74
    dec d                                         ; $60ad: $15
    ld c, [hl]                                    ; $60ae: $4e
    inc bc                                        ; $60af: $03

jr_05f_60b0:
    call nz, $74bf                                ; $60b0: $c4 $bf $74
    ld [de], a                                    ; $60b3: $12
    nop                                           ; $60b4: $00
    sbc b                                         ; $60b5: $98
    add [hl]                                      ; $60b6: $86
    sub b                                         ; $60b7: $90
    ld e, c                                       ; $60b8: $59
    ld [hl], h                                    ; $60b9: $74
    or e                                          ; $60ba: $b3
    adc $ff                                       ; $60bb: $ce $ff
    rst $38                                       ; $60bd: $ff
    rst $38                                       ; $60be: $ff
    rst $38                                       ; $60bf: $ff
    rst $38                                       ; $60c0: $ff
    db $fd                                        ; $60c1: $fd
    ld h, d                                       ; $60c2: $62
    nop                                           ; $60c3: $00
    nop                                           ; $60c4: $00
    nop                                           ; $60c5: $00
    pop bc                                        ; $60c6: $c1
    nop                                           ; $60c7: $00
    rst $38                                       ; $60c8: $ff
    rst $38                                       ; $60c9: $ff
    rst $38                                       ; $60ca: $ff
    rst $38                                       ; $60cb: $ff
    rst $38                                       ; $60cc: $ff
    rst $38                                       ; $60cd: $ff
    rst $38                                       ; $60ce: $ff
    rst $38                                       ; $60cf: $ff
    rst $38                                       ; $60d0: $ff
    rst $38                                       ; $60d1: $ff
    nop                                           ; $60d2: $00
    nop                                           ; $60d3: $00
    ld bc, $fe80                                  ; $60d4: $01 $80 $fe
    ldh [rIE], a                                  ; $60d7: $e0 $ff
    rst $38                                       ; $60d9: $ff
    rst $38                                       ; $60da: $ff
    rst $38                                       ; $60db: $ff
    rst $38                                       ; $60dc: $ff
    add sp, $00                                   ; $60dd: $e8 $00
    nop                                           ; $60df: $00
    nop                                           ; $60e0: $00
    ld [bc], a                                    ; $60e1: $02
    nop                                           ; $60e2: $00
    ld h, $0f                                     ; $60e3: $26 $0f
    ld [bc], a                                    ; $60e5: $02
    ld bc, $1028                                  ; $60e6: $01 $28 $10
    ld [bc], a                                    ; $60e9: $02
    ld [bc], a                                    ; $60ea: $02
    daa                                           ; $60eb: $27
    ld de, $0302                                  ; $60ec: $11 $02 $03
    add hl, hl                                    ; $60ef: $29
    ld de, $0402                                  ; $60f0: $11 $02 $04
    jr z, jr_05f_6107                             ; $60f3: $28 $12

    ld [bc], a                                    ; $60f5: $02
    dec b                                         ; $60f6: $05
    dec h                                         ; $60f7: $25
    inc de                                        ; $60f8: $13
    ld [bc], a                                    ; $60f9: $02
    ld b, $27                                     ; $60fa: $06 $27
    inc de                                        ; $60fc: $13
    ld [bc], a                                    ; $60fd: $02
    rlca                                          ; $60fe: $07
    ld a, [hl+]                                   ; $60ff: $2a
    inc de                                        ; $6100: $13
    ld [bc], a                                    ; $6101: $02
    ld [$1416], sp                                ; $6102: $08 $16 $14
    ld [bc], a                                    ; $6105: $02
    add hl, bc                                    ; $6106: $09

jr_05f_6107:
    ld hl, $0214                                  ; $6107: $21 $14 $02
    ld a, [bc]                                    ; $610a: $0a
    jr jr_05f_6123                                ; $610b: $18 $16

    ld [bc], a                                    ; $610d: $02
    dec bc                                        ; $610e: $0b
    ld [hl+], a                                   ; $610f: $22
    rla                                           ; $6110: $17
    ld [bc], a                                    ; $6111: $02
    inc c                                         ; $6112: $0c
    dec de                                        ; $6113: $1b
    add hl, de                                    ; $6114: $19
    ld [bc], a                                    ; $6115: $02
    dec c                                         ; $6116: $0d
    ld a, [de]                                    ; $6117: $1a
    ld a, [de]                                    ; $6118: $1a
    ld [bc], a                                    ; $6119: $02
    ld c, $1c                                     ; $611a: $0e $1c
    ld a, [de]                                    ; $611c: $1a
    ld [bc], a                                    ; $611d: $02
    rrca                                          ; $611e: $0f
    inc h                                         ; $611f: $24
    ld a, [de]                                    ; $6120: $1a
    ld [bc], a                                    ; $6121: $02
    db $10                                        ; $6122: $10

jr_05f_6123:
    dec de                                        ; $6123: $1b
    dec de                                        ; $6124: $1b
    ld [bc], a                                    ; $6125: $02
    ld de, $1c17                                  ; $6126: $11 $17 $1c
    ld [bc], a                                    ; $6129: $02
    ld [de], a                                    ; $612a: $12
    dec de                                        ; $612b: $1b
    dec e                                         ; $612c: $1d
    ld [bc], a                                    ; $612d: $02
    inc de                                        ; $612e: $13
    ld hl, $021d                                  ; $612f: $21 $1d $02
    inc d                                         ; $6132: $14
    dec e                                         ; $6133: $1d
    rra                                           ; $6134: $1f
    ld [bc], a                                    ; $6135: $02
    dec d                                         ; $6136: $15
    ld e, $20                                     ; $6137: $1e $20
    ld [bc], a                                    ; $6139: $02
    ld d, $21                                     ; $613a: $16 $21
    ld [hl+], a                                   ; $613c: $22
    ld [bc], a                                    ; $613d: $02
    rla                                           ; $613e: $17
    ld a, [de]                                    ; $613f: $1a
    inc hl                                        ; $6140: $23
    ld [bc], a                                    ; $6141: $02
    jr jr_05f_6164                                ; $6142: $18 $20

    inc hl                                        ; $6144: $23
    ld [bc], a                                    ; $6145: $02
    add hl, de                                    ; $6146: $19
    daa                                           ; $6147: $27
    inc hl                                        ; $6148: $23
    ld [bc], a                                    ; $6149: $02
    ld a, [de]                                    ; $614a: $1a
    dec de                                        ; $614b: $1b
    inc h                                         ; $614c: $24
    ld [bc], a                                    ; $614d: $02
    dec de                                        ; $614e: $1b
    dec e                                         ; $614f: $1d
    inc h                                         ; $6150: $24
    ld [bc], a                                    ; $6151: $02
    inc e                                         ; $6152: $1c
    jr jr_05f_617a                                ; $6153: $18 $25

    ld [bc], a                                    ; $6155: $02
    dec e                                         ; $6156: $1d
    add hl, de                                    ; $6157: $19
    dec h                                         ; $6158: $25
    ld [bc], a                                    ; $6159: $02
    ld e, $1c                                     ; $615a: $1e $1c
    dec h                                         ; $615c: $25
    ld [bc], a                                    ; $615d: $02
    rra                                           ; $615e: $1f
    dec de                                        ; $615f: $1b
    ld h, $02                                     ; $6160: $26 $02
    jr nz, jr_05f_6182                            ; $6162: $20 $1e

jr_05f_6164:
    ld h, $02                                     ; $6164: $26 $02
    ld hl, $2620                                  ; $6166: $21 $20 $26
    ld [bc], a                                    ; $6169: $02
    ld [hl+], a                                   ; $616a: $22
    inc e                                         ; $616b: $1c
    daa                                           ; $616c: $27
    ld [bc], a                                    ; $616d: $02
    inc hl                                        ; $616e: $23
    dec e                                         ; $616f: $1d
    daa                                           ; $6170: $27
    ld [bc], a                                    ; $6171: $02
    inc h                                         ; $6172: $24
    rra                                           ; $6173: $1f
    daa                                           ; $6174: $27
    ld [bc], a                                    ; $6175: $02
    dec h                                         ; $6176: $25
    inc d                                         ; $6177: $14
    jr z, jr_05f_617c                             ; $6178: $28 $02

jr_05f_617a:
    ld h, $1e                                     ; $617a: $26 $1e

jr_05f_617c:
    jr z, @+$04                                   ; $617c: $28 $02

    daa                                           ; $617e: $27
    ld hl, $0228                                  ; $617f: $21 $28 $02

jr_05f_6182:
    jr z, @+$21                                   ; $6182: $28 $1f

    add hl, hl                                    ; $6184: $29
    ld [bc], a                                    ; $6185: $02
    add hl, hl                                    ; $6186: $29
    jr nz, jr_05f_61b2                            ; $6187: $20 $29

    ld [bc], a                                    ; $6189: $02
    ld a, [hl+]                                   ; $618a: $2a
    ld e, $2a                                     ; $618b: $1e $2a
    ld [bc], a                                    ; $618d: $02
    dec hl                                        ; $618e: $2b
    dec e                                         ; $618f: $1d
    dec hl                                        ; $6190: $2b
    ld [bc], a                                    ; $6191: $02
    inc l                                         ; $6192: $2c
    rra                                           ; $6193: $1f
    dec hl                                        ; $6194: $2b
    ld [bc], a                                    ; $6195: $02
    dec l                                         ; $6196: $2d
    ld hl, $022b                                  ; $6197: $21 $2b $02
    ld l, $1e                                     ; $619a: $2e $1e
    inc l                                         ; $619c: $2c
    ld [bc], a                                    ; $619d: $02
    cpl                                           ; $619e: $2f
    dec e                                         ; $619f: $1d
    dec l                                         ; $61a0: $2d
    ld [bc], a                                    ; $61a1: $02
    jr nc, @+$21                                  ; $61a2: $30 $1f

    dec l                                         ; $61a4: $2d
    ld [bc], a                                    ; $61a5: $02
    ld sp, $2d23                                  ; $61a6: $31 $23 $2d
    ld [bc], a                                    ; $61a9: $02
    ld [hl-], a                                   ; $61aa: $32
    inc de                                        ; $61ab: $13
    ld l, $02                                     ; $61ac: $2e $02
    inc sp                                        ; $61ae: $33
    jr @+$30                                      ; $61af: $18 $2e

    ld [bc], a                                    ; $61b1: $02

jr_05f_61b2:
    inc [hl]                                      ; $61b2: $34
    add hl, de                                    ; $61b3: $19
    ld l, $02                                     ; $61b4: $2e $02
    dec [hl]                                      ; $61b6: $35
    dec de                                        ; $61b7: $1b
    ld l, $02                                     ; $61b8: $2e $02
    ld [hl], $1c                                  ; $61ba: $36 $1c
    ld l, $02                                     ; $61bc: $2e $02
    scf                                           ; $61be: $37
    rla                                           ; $61bf: $17
    cpl                                           ; $61c0: $2f
    ld [bc], a                                    ; $61c1: $02
    jr c, jr_05f_61de                             ; $61c2: $38 $1a

Call_05f_61c4:
    cpl                                           ; $61c4: $2f

Jump_05f_61c5:
    ld [bc], a                                    ; $61c5: $02
    add hl, sp                                    ; $61c6: $39
    dec e                                         ; $61c7: $1d
    cpl                                           ; $61c8: $2f
    ld [bc], a                                    ; $61c9: $02
    ld a, [hl-]                                   ; $61ca: $3a
    ld e, $2f                                     ; $61cb: $1e $2f
    ld [bc], a                                    ; $61cd: $02
    dec sp                                        ; $61ce: $3b
    dec d                                         ; $61cf: $15
    jr nc, jr_05f_61d4                            ; $61d0: $30 $02

    inc a                                         ; $61d2: $3c
    add hl, de                                    ; $61d3: $19

jr_05f_61d4:
    jr nc, jr_05f_61d8                            ; $61d4: $30 $02

    dec a                                         ; $61d6: $3d
    inc e                                         ; $61d7: $1c

jr_05f_61d8:
    jr nc, @+$01                                  ; $61d8: $30 $ff

    rst $38                                       ; $61da: $ff
    rst $38                                       ; $61db: $ff
    db $e4                                        ; $61dc: $e4
    ld h, c                                       ; $61dd: $61

jr_05f_61de:
    ld e, $66                                     ; $61de: $1e $66
    adc l                                         ; $61e0: $8d
    ld l, e                                       ; $61e1: $6b
    xor b                                         ; $61e2: $a8
    ld l, e                                       ; $61e3: $6b
    sbc l                                         ; $61e4: $9d
    dec c                                         ; $61e5: $0d
    rst $38                                       ; $61e6: $ff
    pop hl                                        ; $61e7: $e1
    ld c, $0e                                     ; $61e8: $0e $0e
    ld l, $f8                                     ; $61ea: $2e $f8
    ld [c], a                                     ; $61ec: $e2
    push af                                       ; $61ed: $f5
    ld [c], a                                     ; $61ee: $e2
    ld c, $01                                     ; $61ef: $0e $01
    dec c                                         ; $61f1: $0d
    ld a, [c]                                     ; $61f2: $f2
    rst $20                                       ; $61f3: $e7
    ld hl, sp-$19                                 ; $61f4: $f8 $e7
    db $ec                                        ; $61f6: $ec
    pop af                                        ; $61f7: $f1
    pop hl                                        ; $61f8: $e1
    jp hl                                         ; $61f9: $e9


    cp [hl]                                       ; $61fa: $be
    push hl                                       ; $61fb: $e5
    ret nz                                        ; $61fc: $c0

    pop hl                                        ; $61fd: $e1
    db $ec                                        ; $61fe: $ec
    db $ed                                        ; $61ff: $ed
    db $10                                        ; $6200: $10
    rst $38                                       ; $6201: $ff
    rst $38                                       ; $6202: $ff
    add b                                         ; $6203: $80
    db $e3                                        ; $6204: $e3
    push bc                                       ; $6205: $c5

Jump_05f_6206:
    pop hl                                        ; $6206: $e1
    add b                                         ; $6207: $80
    ld [c], a                                     ; $6208: $e2
    ld l, [hl]                                    ; $6209: $6e
    rst $38                                       ; $620a: $ff
    ldh [$6e], a                                  ; $620b: $e0 $6e
    pop hl                                        ; $620d: $e1
    ld l, b                                       ; $620e: $68
    push hl                                       ; $620f: $e5
    ldh a, [$ac]                                  ; $6210: $f0 $ac
    db $e3                                        ; $6212: $e3
    and l                                         ; $6213: $a5
    add sp, $7b                                   ; $6214: $e8 $7b
    push af                                       ; $6216: $f5
    ld b, b                                       ; $6217: $40
    ld [c], a                                     ; $6218: $e2
    ld c, $6e                                     ; $6219: $0e $6e
    inc c                                         ; $621b: $0c
    inc c                                         ; $621c: $0c
    rrca                                          ; $621d: $0f
    inc l                                         ; $621e: $2c
    dec bc                                        ; $621f: $0b
    ld c, [hl]                                    ; $6220: $4e
    ld l, $38                                     ; $6221: $2e $38
    rst $20                                       ; $6223: $e7
    ret nz                                        ; $6224: $c0

    rst $38                                       ; $6225: $ff
    reti                                          ; $6226: $d9


    jp hl                                         ; $6227: $e9


    pop bc                                        ; $6228: $c1
    ldh [rIF], a                                  ; $6229: $e0 $0f
    inc c                                         ; $622b: $0c
    inc l                                         ; $622c: $2c
    inc l                                         ; $622d: $2c
    inc l                                         ; $622e: $2c
    cp a                                          ; $622f: $bf
    ldh [$30], a                                  ; $6230: $e0 $30
    push hl                                       ; $6232: $e5
    ret nz                                        ; $6233: $c0

    db $ed                                        ; $6234: $ed
    ld h, $fa                                     ; $6235: $26 $fa
    inc de                                        ; $6237: $13
    ld c, $2c                                     ; $6238: $0e $2c
    ret nz                                        ; $623a: $c0

    ldh [$7e], a                                  ; $623b: $e0 $7e
    ldh [$0c], a                                  ; $623d: $e0 $0c
    ret nz                                        ; $623f: $c0

    rst $20                                       ; $6240: $e7
    push hl                                       ; $6241: $e5
    adc $e4                                       ; $6242: $ce $e4
    sub $fe                                       ; $6244: $d6 $fe
    ld [hl], a                                    ; $6246: $77
    ret nz                                        ; $6247: $c0

    ld c, $0c                                     ; $6248: $0e $0c
    inc c                                         ; $624a: $0c
    ld l, h                                       ; $624b: $6c
    ld c, h                                       ; $624c: $4c
    ld l, h                                       ; $624d: $6c
    ld c, h                                       ; $624e: $4c
    jp $0c4c                                      ; $624f: $c3 $4c $0c


    ld a, a                                       ; $6252: $7f
    ld [c], a                                     ; $6253: $e2
    ld c, e                                       ; $6254: $4b
    di                                            ; $6255: $f3
    ld e, [hl]                                    ; $6256: $5e
    adc $3e                                       ; $6257: $ce $3e
    rst $00                                       ; $6259: $c7
    ld c, $6e                                     ; $625a: $0e $6e
    sbc $c2                                       ; $625c: $de $c2
    ldh [$0a], a                                  ; $625e: $e0 $0a
    ld a, [hl+]                                   ; $6260: $2a
    dec bc                                        ; $6261: $0b
    ld l, h                                       ; $6262: $6c
    ld a, $e0                                     ; $6263: $3e $e0
    ld c, [hl]                                    ; $6265: $4e
    ld c, [hl]                                    ; $6266: $4e
    pop hl                                        ; $6267: $e1
    ld l, $70                                     ; $6268: $2e $70
    jp $df75                                      ; $626a: $c3 $75 $df


    sub h                                         ; $626d: $94
    rst $00                                       ; $626e: $c7
    call nz, Call_000_2be0                        ; $626f: $c4 $e0 $2b
    ld c, d                                       ; $6272: $4a
    ld a, [bc]                                    ; $6273: $0a
    ccf                                           ; $6274: $3f
    ld l, d                                       ; $6275: $6a
    ld l, h                                       ; $6276: $6c
    ld c, h                                       ; $6277: $4c
    inc l                                         ; $6278: $2c

jr_05f_6279:
    inc l                                         ; $6279: $2c
    dec bc                                        ; $627a: $0b

Jump_05f_627b:
    cp d                                          ; $627b: $ba
    pop bc                                        ; $627c: $c1
    jp nz, Jump_05f_7cc3                          ; $627d: $c2 $c3 $7c

    cp [hl]                                       ; $6280: $be
    db $fd                                        ; $6281: $fd
    sub h                                         ; $6282: $94
    rst $00                                       ; $6283: $c7
    ld c, d                                       ; $6284: $4a
    ld c, d                                       ; $6285: $4a
    ld c, e                                       ; $6286: $4b
    dec bc                                        ; $6287: $0b
    dec hl                                        ; $6288: $2b
    cp [hl]                                       ; $6289: $be
    ldh [$c0], a                                  ; $628a: $e0 $c0
    cp e                                          ; $628c: $bb
    jp nz, $c279                                  ; $628d: $c2 $79 $c2

    add hl, hl                                    ; $6290: $29
    pop bc                                        ; $6291: $c1
    ld sp, $f6c3                                  ; $6292: $31 $c3 $f6
    cp a                                          ; $6295: $bf
    add b                                         ; $6296: $80
    ldh [$0a], a                                  ; $6297: $e0 $0a
    ld l, d                                       ; $6299: $6a
    inc hl                                        ; $629a: $23
    ld c, e                                       ; $629b: $4b
    dec bc                                        ; $629c: $0b
    rst $38                                       ; $629d: $ff
    ldh [$fe], a                                  ; $629e: $e0 $fe
    ret nz                                        ; $62a0: $c0

    ld a, c                                       ; $62a1: $79
    ret nz                                        ; $62a2: $c0

    dec bc                                        ; $62a3: $0b
    ret nz                                        ; $62a4: $c0

    db $e3                                        ; $62a5: $e3
    add hl, sp                                    ; $62a6: $39
    rst $00                                       ; $62a7: $c7
    db $ec                                        ; $62a8: $ec
    dec [hl]                                      ; $62a9: $35
    ld hl, sp-$7c                                 ; $62aa: $f8 $84
    and d                                         ; $62ac: $a2
    ld c, [hl]                                    ; $62ad: $4e
    ld l, $bf                                     ; $62ae: $2e $bf
    pop hl                                        ; $62b0: $e1
    ld l, e                                       ; $62b1: $6b
    dec hl                                        ; $62b2: $2b
    dec bc                                        ; $62b3: $0b
    dec sp                                        ; $62b4: $3b
    dec c                                         ; $62b5: $0d
    ld l, h                                       ; $62b6: $6c
    jr c, jr_05f_6279                             ; $62b7: $38 $c0

    ld c, h                                       ; $62b9: $4c
    ld c, $6e                                     ; $62ba: $0e $6e
    jr nz, @-$31                                  ; $62bc: $20 $cd

    di                                            ; $62be: $f3
    rst $10                                       ; $62bf: $d7
    db $fc                                        ; $62c0: $fc
    ld b, h                                       ; $62c1: $44
    and e                                         ; $62c2: $a3
    cp a                                          ; $62c3: $bf
    ldh [$2a], a                                  ; $62c4: $e0 $2a
    dec c                                         ; $62c6: $0d
    ld l, e                                       ; $62c7: $6b
    dec bc                                        ; $62c8: $0b
    dec hl                                        ; $62c9: $2b
    dec c                                         ; $62ca: $0d
    add [hl]                                      ; $62cb: $86
    jr c, @-$3e                                   ; $62cc: $38 $c0

    ld l, h                                       ; $62ce: $6c
    ld c, h                                       ; $62cf: $4c
    dec sp                                        ; $62d0: $3b
    call $91f6                                    ; $62d1: $cd $f6 $91
    dec c                                         ; $62d4: $0d
    and l                                         ; $62d5: $a5
    inc b                                         ; $62d6: $04
    and h                                         ; $62d7: $a4
    ld c, [hl]                                    ; $62d8: $4e
    dec de                                        ; $62d9: $1b
    ld l, $0b                                     ; $62da: $2e $0b
    ret nz                                        ; $62dc: $c0

    ldh [$0b], a                                  ; $62dd: $e0 $0b
    dec bc                                        ; $62df: $0b
    add b                                         ; $62e0: $80
    ldh [$79], a                                  ; $62e1: $e0 $79
    and d                                         ; $62e3: $a2
    db $eb                                        ; $62e4: $eb
    add a                                         ; $62e5: $87
    jr z, jr_05f_62f3                             ; $62e6: $28 $0b

    push de                                       ; $62e8: $d5
    ret nz                                        ; $62e9: $c0

    db $eb                                        ; $62ea: $eb
    cp a                                          ; $62eb: $bf
    pop hl                                        ; $62ec: $e1
    dec hl                                        ; $62ed: $2b
    ret nz                                        ; $62ee: $c0

    pop hl                                        ; $62ef: $e1
    ld c, h                                       ; $62f0: $4c
    ld a, c                                       ; $62f1: $79
    and d                                         ; $62f2: $a2

jr_05f_62f3:
    cp [hl]                                       ; $62f3: $be
    jp nz, Jump_05f_7bf8                          ; $62f4: $c2 $f8 $7b

    and [hl]                                      ; $62f7: $a6

Jump_05f_62f8:
    adc l                                         ; $62f8: $8d
    db $ec                                        ; $62f9: $ec
    di                                            ; $62fa: $f3
    di                                            ; $62fb: $f3
    ld c, $0d                                     ; $62fc: $0e $0d
    ld l, e                                       ; $62fe: $6b
    ld l, e                                       ; $62ff: $6b
    ld a, [bc]                                    ; $6300: $0a
    dec bc                                        ; $6301: $0b
    dec bc                                        ; $6302: $0b
    dec c                                         ; $6303: $0d
    cp [hl]                                       ; $6304: $be
    jp nz, $ee0c                                  ; $6305: $c2 $0c $ee

    ret nz                                        ; $6308: $c0

    dec sp                                        ; $6309: $3b
    xor a                                         ; $630a: $af
    push af                                       ; $630b: $f5
    sub c                                         ; $630c: $91
    ld a, [$3463]                                 ; $630d: $fa $63 $34
    ret nz                                        ; $6310: $c0

    db $e3                                        ; $6311: $e3
    ccf                                           ; $6312: $3f
    pop hl                                        ; $6313: $e1
    dec c                                         ; $6314: $0d
    cp [hl]                                       ; $6315: $be
    jp nz, Jump_000_0d0c                          ; $6316: $c2 $0c $0d

    inc a                                         ; $6319: $3c
    db $e3                                        ; $631a: $e3
    ret nz                                        ; $631b: $c0

    rst $38                                       ; $631c: $ff
    ld b, h                                       ; $631d: $44
    cp b                                          ; $631e: $b8
    ld h, e                                       ; $631f: $63
    ld a, h                                       ; $6320: $7c
    jp Jump_000_3f0d                              ; $6321: $c3 $0d $3f


    pop hl                                        ; $6324: $e1
    cp [hl]                                       ; $6325: $be
    pop bc                                        ; $6326: $c1
    or [hl]                                       ; $6327: $b6
    add b                                         ; $6328: $80
    inc c                                         ; $6329: $0c
    ld [hl], a                                    ; $632a: $77
    and c                                         ; $632b: $a1
    ld [$83b2], sp                                ; $632c: $08 $b2 $83
    cp e                                          ; $632f: $bb
    sbc e                                         ; $6330: $9b
    ld a, d                                       ; $6331: $7a
    ld h, [hl]                                    ; $6332: $66
    ld c, l                                       ; $6333: $4d
    cp l                                          ; $6334: $bd
    ret nz                                        ; $6335: $c0

    ret nz                                        ; $6336: $c0

    pop hl                                        ; $6337: $e1
    or a                                          ; $6338: $b7
    add d                                         ; $6339: $82
    cp b                                          ; $633a: $b8
    and e                                         ; $633b: $a3
    ld hl, sp-$54                                 ; $633c: $f8 $ac
    pop hl                                        ; $633e: $e1
    cp e                                          ; $633f: $bb
    sbc c                                         ; $6340: $99
    ld h, h                                       ; $6341: $64
    adc b                                         ; $6342: $88
    ld c, $0d                                     ; $6343: $0e $0d
    ld c, l                                       ; $6345: $4d
    ld c, l                                       ; $6346: $4d
    ld c, $02                                     ; $6347: $0e $02
    cp [hl]                                       ; $6349: $be
    and b                                         ; $634a: $a0
    ld l, e                                       ; $634b: $6b
    ld b, b                                       ; $634c: $40
    db $e3                                        ; $634d: $e3
    cp [hl]                                       ; $634e: $be
    db $e3                                        ; $634f: $e3
    ld a, [hl-]                                   ; $6350: $3a
    push hl                                       ; $6351: $e5
    ld d, c                                       ; $6352: $51
    ret                                           ; $6353: $c9


    add hl, de                                    ; $6354: $19
    ld l, c                                       ; $6355: $69
    ret nz                                        ; $6356: $c0

    ld [$ee24], a                                 ; $6357: $ea $24 $ee
    ld b, b                                       ; $635a: $40
    pop bc                                        ; $635b: $c1
    ldh [rWX], a                                  ; $635c: $e0 $4b
    ld b, b                                       ; $635e: $40
    ld [c], a                                     ; $635f: $e2
    ld a, l                                       ; $6360: $7d
    and $0d                                       ; $6361: $e6 $0d
    push af                                       ; $6363: $f5
    add c                                         ; $6364: $81
    add hl, sp                                    ; $6365: $39
    or [hl]                                       ; $6366: $b6
    inc e                                         ; $6367: $1c
    ld b, h                                       ; $6368: $44
    ld h, l                                       ; $6369: $65
    ret nz                                        ; $636a: $c0

    rst $20                                       ; $636b: $e7
    dec bc                                        ; $636c: $0b
    dec l                                         ; $636d: $2d
    dec c                                         ; $636e: $0d
    ei                                            ; $636f: $fb
    ld h, b                                       ; $6370: $60
    cp [hl]                                       ; $6371: $be
    rst $20                                       ; $6372: $e7
    ret nz                                        ; $6373: $c0

    pop hl                                        ; $6374: $e1
    ld c, b                                       ; $6375: $48
    ld b, h                                       ; $6376: $44
    rst $08                                       ; $6377: $cf
    ld b, b                                       ; $6378: $40
    xor [hl]                                      ; $6379: $ae

Jump_05f_637a:
    add b                                         ; $637a: $80
    and $0d                                       ; $637b: $e6 $0d
    ld bc, $fbe5                                  ; $637d: $01 $e5 $fb
    call nz, $bc0c                                ; $6380: $c4 $0c $bc
    add $02                                       ; $6383: $c6 $02
    nop                                           ; $6385: $00
    cp d                                          ; $6386: $ba
    ld c, l                                       ; $6387: $4d
    ld l, $43                                     ; $6388: $2e $43
    cp l                                          ; $638a: $bd
    add b                                         ; $638b: $80
    pop bc                                        ; $638c: $c1
    ld [$602c], a                                 ; $638d: $ea $2c $60
    ld [hl-], a                                   ; $6390: $32
    add l                                         ; $6391: $85

Jump_05f_6392:
    ld b, c                                       ; $6392: $41
    di                                            ; $6393: $f3
    adc b                                         ; $6394: $88
    push hl                                       ; $6395: $e5
    push hl                                       ; $6396: $e5
    ret nz                                        ; $6397: $c0

    ldh [$fd], a                                  ; $6398: $e0 $fd
    ld hl, $7f0d                                  ; $639a: $21 $0d $7f
    add c                                         ; $639d: $81
    ld a, l                                       ; $639e: $7d
    add c                                         ; $639f: $81
    db $fd                                        ; $63a0: $fd
    add $4c                                       ; $63a1: $c6 $4c
    ld h, b                                       ; $63a3: $60
    xor $a0                                       ; $63a4: $ee $a0
    ld [hl], h                                    ; $63a6: $74
    and l                                         ; $63a7: $a5
    cp $39                                        ; $63a8: $fe $39
    ret nz                                        ; $63aa: $c0

    db $e4                                        ; $63ab: $e4
    ld a, a                                       ; $63ac: $7f
    and b                                         ; $63ad: $a0
    dec hl                                        ; $63ae: $2b
    dec hl                                        ; $63af: $2b
    jr c, jr_05f_6413                             ; $63b0: $38 $61

    nop                                           ; $63b2: $00
    cp e                                          ; $63b3: $bb
    and $ae                                       ; $63b4: $e6 $ae
    and c                                         ; $63b6: $a1
    ret nz                                        ; $63b7: $c0

    or $54                                        ; $63b8: $f6 $54
    ld b, a                                       ; $63ba: $47
    rst $08                                       ; $63bb: $cf
    ld h, d                                       ; $63bc: $62
    ld a, $a0                                     ; $63bd: $3e $a0
    db $fc                                        ; $63bf: $fc
    ld h, c                                       ; $63c0: $61
    ld sp, hl                                     ; $63c1: $f9
    add b                                         ; $63c2: $80
    adc b                                         ; $63c3: $88
    cp e                                          ; $63c4: $bb
    ldh [$7a], a                                  ; $63c5: $e0 $7a
    db $e3                                        ; $63c7: $e3
    ld [hl], $a0                                  ; $63c8: $36 $a0
    dec bc                                        ; $63ca: $0b
    ret nz                                        ; $63cb: $c0

    push hl                                       ; $63cc: $e5
    jr nc, jr_05f_644d                            ; $63cd: $30 $7e

    ld a, e                                       ; $63cf: $7b
    jr nz, jr_05f_641d                            ; $63d0: $20 $4b

    rst $08                                       ; $63d2: $cf
    ld c, e                                       ; $63d3: $4b
    ld c, e                                       ; $63d4: $4b
    dec bc                                        ; $63d5: $0b
    ld a, [bc]                                    ; $63d6: $0a
    cp e                                          ; $63d7: $bb
    ld [c], a                                     ; $63d8: $e2
    scf                                           ; $63d9: $37
    db $e4                                        ; $63da: $e4
    inc l                                         ; $63db: $2c
    dec c                                         ; $63dc: $0d

jr_05f_63dd:
    pop af                                        ; $63dd: $f1
    dec c                                         ; $63de: $0d
    or d                                          ; $63df: $b2
    ld h, b                                       ; $63e0: $60
    sbc b                                         ; $63e1: $98
    ld h, $2f                                     ; $63e2: $26 $2f
    inc sp                                        ; $63e4: $33
    dec l                                         ; $63e5: $2d
    dec l                                         ; $63e6: $2d
    dec l                                         ; $63e7: $2d
    ld l, $eb                                     ; $63e8: $2e $eb
    ld l, $2e                                     ; $63ea: $2e $2e
    sub d                                         ; $63ec: $92
    and e                                         ; $63ed: $a3
    ld l, e                                       ; $63ee: $6b
    ld a, b                                       ; $63ef: $78
    ld h, d                                       ; $63f0: $62
    dec bc                                        ; $63f1: $0b
    ld a, [bc]                                    ; $63f2: $0a
    dec hl                                        ; $63f3: $2b
    dec c                                         ; $63f4: $0d
    ld c, e                                       ; $63f5: $4b
    ld [hl], e                                    ; $63f6: $73
    ld h, d                                       ; $63f7: $62
    inc c                                         ; $63f8: $0c
    dec bc                                        ; $63f9: $0b
    ld h, [hl]                                    ; $63fa: $66
    jr nz, jr_05f_63dd                            ; $63fb: $20 $e0

    ld [bc], a                                    ; $63fd: $02
    db $dd                                        ; $63fe: $dd
    ld [de], a                                    ; $63ff: $12
    ld b, $23                                     ; $6400: $06 $23
    call nz, $e4c0                                ; $6402: $c4 $c0 $e4
    ld d, c                                       ; $6405: $51
    and d                                         ; $6406: $a2
    ld a, [bc]                                    ; $6407: $0a
    ld a, e                                       ; $6408: $7b
    pop hl                                        ; $6409: $e1
    cp l                                          ; $640a: $bd
    ld [c], a                                     ; $640b: $e2
    dec sp                                        ; $640c: $3b
    pop hl                                        ; $640d: $e1
    ld c, h                                       ; $640e: $4c
    ld c, h                                       ; $640f: $4c
    add c                                         ; $6410: $81
    dec bc                                        ; $6411: $0b
    ld [hl], e                                    ; $6412: $73

jr_05f_6413:
    ld h, b                                       ; $6413: $60
    ret nz                                        ; $6414: $c0

    db $e4                                        ; $6415: $e4
    add d                                         ; $6416: $82
    halt                                          ; $6417: $76
    ret nz                                        ; $6418: $c0

    push hl                                       ; $6419: $e5
    jr c, jr_05f_647c                             ; $641a: $38 $60

    ld sp, hl                                     ; $641c: $f9

jr_05f_641d:
    ld [c], a                                     ; $641d: $e2
    dec c                                         ; $641e: $0d
    db $10                                        ; $641f: $10
    ld a, h                                       ; $6420: $7c
    push hl                                       ; $6421: $e5
    ldh a, [rLCDC]                                ; $6422: $f0 $40
    inc [hl]                                      ; $6424: $34
    ld h, c                                       ; $6425: $61
    and b                                         ; $6426: $a0
    inc b                                         ; $6427: $04
    ld c, l                                       ; $6428: $4d
    add hl, de                                    ; $6429: $19
    jp Jump_000_0942                              ; $642a: $c3 $42 $09


    add [hl]                                      ; $642d: $86
    inc bc                                        ; $642e: $03
    inc bc                                        ; $642f: $03
    ld l, $2e                                     ; $6430: $2e $2e
    ret nz                                        ; $6432: $c0

    db $e4                                        ; $6433: $e4
    ld [hl], $62                                  ; $6434: $36 $62
    ld [hl+], a                                   ; $6436: $22
    ld bc, $c2b7                                  ; $6437: $01 $b7 $c2
    ld [hl-], a                                   ; $643a: $32
    add b                                         ; $643b: $80
    jp $80c1                                      ; $643c: $c3 $c1 $80


    ret nz                                        ; $643f: $c0

    ld a, [c]                                     ; $6440: $f2
    ld [bc], a                                    ; $6441: $02
    ret                                           ; $6442: $c9


    ret nz                                        ; $6443: $c0

    pop hl                                        ; $6444: $e1
    db $fd                                        ; $6445: $fd
    ret nz                                        ; $6446: $c0

    ld l, l                                       ; $6447: $6d
    inc b                                         ; $6448: $04
    dec [hl]                                      ; $6449: $35
    nop                                           ; $644a: $00
    dec [hl]                                      ; $644b: $35
    ld h, e                                       ; $644c: $63

jr_05f_644d:
    dec bc                                        ; $644d: $0b
    inc bc                                        ; $644e: $03
    dec bc                                        ; $644f: $0b
    ld c, e                                       ; $6450: $4b
    or b                                          ; $6451: $b0
    and $5e                                       ; $6452: $e6 $5e
    add e                                         ; $6454: $83
    ret nz                                        ; $6455: $c0

    jp hl                                         ; $6456: $e9


    or l                                          ; $6457: $b5
    ret                                           ; $6458: $c9


    add h                                         ; $6459: $84
    push hl                                       ; $645a: $e5
    ld a, d                                       ; $645b: $7a
    push bc                                       ; $645c: $c5
    sub e                                         ; $645d: $93
    dec c                                         ; $645e: $0d
    dec bc                                        ; $645f: $0b
    ld [hl], l                                    ; $6460: $75
    ld h, c                                       ; $6461: $61
    ret nz                                        ; $6462: $c0

    ldh [$2d], a                                  ; $6463: $e0 $2d
    xor [hl]                                      ; $6465: $ae
    and b                                         ; $6466: $a0
    db $f4                                        ; $6467: $f4
    ld hl, $284d                                  ; $6468: $21 $4d $28
    add l                                         ; $646b: $85
    db $eb                                        ; $646c: $eb
    or [hl]                                       ; $646d: $b6
    cp d                                          ; $646e: $ba
    ld a, l                                       ; $646f: $7d
    ld [bc], a                                    ; $6470: $02
    dec hl                                        ; $6471: $2b
    db $f4                                        ; $6472: $f4
    ld b, c                                       ; $6473: $41
    ld l, e                                       ; $6474: $6b
    ld l, b                                       ; $6475: $68
    ret nz                                        ; $6476: $c0

    pop bc                                        ; $6477: $c1
    jp Jump_05f_7f00                              ; $6478: $c3 $00 $7f


    rra                                           ; $647b: $1f

jr_05f_647c:
    ld [hl-], a                                   ; $647c: $32
    xor b                                         ; $647d: $a8
    add h                                         ; $647e: $84
    ld [bc], a                                    ; $647f: $02
    pop bc                                        ; $6480: $c1
    add sp, -$4c                                  ; $6481: $e8 $b4
    add hl, hl                                    ; $6483: $29
    nop                                           ; $6484: $00
    call z, Call_000_0963                         ; $6485: $cc $63 $09
    or b                                          ; $6488: $b0
    add $84                                       ; $6489: $c6 $84
    rst $38                                       ; $648b: $ff
    pop bc                                        ; $648c: $c1
    ld [hl], $62                                  ; $648d: $36 $62
    dec c                                         ; $648f: $0d
    ld b, c                                       ; $6490: $41
    ldh [$3e], a                                  ; $6491: $e0 $3e
    ld l, c                                       ; $6493: $69
    ei                                            ; $6494: $fb
    scf                                           ; $6495: $37
    ld [hl], d                                    ; $6496: $72
    ld a, [hl+]                                   ; $6497: $2a
    ld c, $20                                     ; $6498: $0e $20
    adc c                                         ; $649a: $89
    ret nz                                        ; $649b: $c0

    add b                                         ; $649c: $80
    add $b5                                       ; $649d: $c6 $b5
    ld [bc], a                                    ; $649f: $02
    rst $38                                       ; $64a0: $ff
    sub a                                         ; $64a1: $97
    add b                                         ; $64a2: $80
    db $e3                                        ; $64a3: $e3
    ld c, l                                       ; $64a4: $4d
    cp a                                          ; $64a5: $bf
    add $c0                                       ; $64a6: $c6 $c0
    db $e3                                        ; $64a8: $e3
    inc e                                         ; $64a9: $1c
    add hl, sp                                    ; $64aa: $39
    ld h, b                                       ; $64ab: $60
    or h                                          ; $64ac: $b4
    jr nz, jr_05f_64da                            ; $64ad: $20 $2b

    ld a, [bc]                                    ; $64af: $0a
    ld a, [bc]                                    ; $64b0: $0a
    ld b, c                                       ; $64b1: $41
    ld [c], a                                     ; $64b2: $e2
    ld e, a                                       ; $64b3: $5f
    ld l, b                                       ; $64b4: $68
    cp d                                          ; $64b5: $ba
    sub h                                         ; $64b6: $94
    ld h, h                                       ; $64b7: $64
    ret nz                                        ; $64b8: $c0

    rst $20                                       ; $64b9: $e7
    ld a, [$6e41]                                 ; $64ba: $fa $41 $6e
    rst $38                                       ; $64bd: $ff
    add d                                         ; $64be: $82
    ld b, d                                       ; $64bf: $42
    ret nz                                        ; $64c0: $c0

    ld a, [bc]                                    ; $64c1: $0a
    ld a, [bc]                                    ; $64c2: $0a
    rst $30                                       ; $64c3: $f7
    ld [bc], a                                    ; $64c4: $02
    ret nz                                        ; $64c5: $c0

    ld b, d                                       ; $64c6: $42
    and e                                         ; $64c7: $a3
    ret nz                                        ; $64c8: $c0

    rst $28                                       ; $64c9: $ef
    ld b, e                                       ; $64ca: $43
    add a                                         ; $64cb: $87
    add b                                         ; $64cc: $80
    ldh [$c2], a                                  ; $64cd: $e0 $c2
    ld b, b                                       ; $64cf: $40
    ld e, $a3                                     ; $64d0: $1e $a3
    ld c, $6e                                     ; $64d2: $0e $6e
    nop                                           ; $64d4: $00
    push bc                                       ; $64d5: $c5
    and e                                         ; $64d6: $a3
    ld a, [$f782]                                 ; $64d7: $fa $82 $f7

jr_05f_64da:
    inc c                                         ; $64da: $0c
    inc [hl]                                      ; $64db: $34
    dec c                                         ; $64dc: $0d
    ld h, $e5                                     ; $64dd: $26 $e5
    ld hl, $c0c0                                  ; $64df: $21 $c0 $c0
    ld [c], a                                     ; $64e2: $e2
    cp c                                          ; $64e3: $b9
    ld h, c                                       ; $64e4: $61
    nop                                           ; $64e5: $00
    pop bc                                        ; $64e6: $c1
    and $b7                                       ; $64e7: $e6 $b7
    add c                                         ; $64e9: $81
    or a                                          ; $64ea: $b7
    add hl, bc                                    ; $64eb: $09
    dec b                                         ; $64ec: $05
    ld d, h                                       ; $64ed: $54
    ret nz                                        ; $64ee: $c0

    ld [$403c], a                                 ; $64ef: $ea $3c $40
    ld b, [hl]                                    ; $64f2: $46
    pop bc                                        ; $64f3: $c1
    add c                                         ; $64f4: $81
    add b                                         ; $64f5: $80

jr_05f_64f6:
    ld bc, $786b                                  ; $64f6: $01 $6b $78
    add d                                         ; $64f9: $82
    ld l, h                                       ; $64fa: $6c
    rst $00                                       ; $64fb: $c7
    ld b, c                                       ; $64fc: $41
    db $e3                                        ; $64fd: $e3
    ld b, c                                       ; $64fe: $41
    sub b                                         ; $64ff: $90
    ret nz                                        ; $6500: $c0

    rst $28                                       ; $6501: $ef
    cp [hl]                                       ; $6502: $be
    ld [c], a                                     ; $6503: $e2
    add hl, sp                                    ; $6504: $39
    add d                                         ; $6505: $82
    ret nz                                        ; $6506: $c0

    jp nz, $56c5                                  ; $6507: $c2 $c5 $56

    ld b, h                                       ; $650a: $44
    inc bc                                        ; $650b: $03
    sub d                                         ; $650c: $92
    ld b, b                                       ; $650d: $40
    and $fb                                       ; $650e: $e6 $fb
    db $e3                                        ; $6510: $e3
    ld b, e                                       ; $6511: $43
    ret nz                                        ; $6512: $c0

    dec c                                         ; $6513: $0d
    dec bc                                        ; $6514: $0b
    inc b                                         ; $6515: $04
    add a                                         ; $6516: $87
    ret nz                                        ; $6517: $c0

    jp nz, Jump_000_2ee1                          ; $6518: $c2 $e1 $2e

    add l                                         ; $651b: $85
    add a                                         ; $651c: $87
    ld b, c                                       ; $651d: $41
    ld d, [hl]                                    ; $651e: $56
    rst $20                                       ; $651f: $e7
    add h                                         ; $6520: $84
    add e                                         ; $6521: $83
    jr nz, @-$41                                  ; $6522: $20 $bd

    jp Jump_05f_4700                              ; $6524: $c3 $00 $47


    nop                                           ; $6527: $00
    jp Jump_05f_7d60                              ; $6528: $c3 $60 $7d


    ld h, c                                       ; $652b: $61
    ld b, l                                       ; $652c: $45
    jp Jump_05f_55c6                              ; $652d: $c3 $c6 $55


    ret nz                                        ; $6530: $c0

    xor $bd                                       ; $6531: $ee $bd
    push bc                                       ; $6533: $c5
    ld a, [$0000]                                 ; $6534: $fa $00 $00
    db $fd                                        ; $6537: $fd
    jp Jump_000_2f05                              ; $6538: $c3 $05 $2f


    ld a, [hl]                                    ; $653b: $7e
    ld d, l                                       ; $653c: $55
    call nz, $bdc5                                ; $653d: $c4 $c5 $bd
    jp $a181                                      ; $6540: $c3 $81 $a1


    ret nz                                        ; $6543: $c0

    db $ec                                        ; $6544: $ec
    ld a, e                                       ; $6545: $7b
    ld a, [$3c04]                                 ; $6546: $fa $04 $3c
    ld b, b                                       ; $6549: $40
    ret nz                                        ; $654a: $c0

    add sp, $0d                                   ; $654b: $e8 $0d
    cp d                                          ; $654d: $ba
    ld [bc], a                                    ; $654e: $02
    inc bc                                        ; $654f: $03
    add c                                         ; $6550: $81
    add hl, bc                                    ; $6551: $09
    ld b, d                                       ; $6552: $42
    add b                                         ; $6553: $80
    dec c                                         ; $6554: $0d
    db $fd                                        ; $6555: $fd
    sub b                                         ; $6556: $90
    ld [$e780], sp                                ; $6557: $08 $80 $e7
    rst $30                                       ; $655a: $f7
    jp nz, $a4ff                                  ; $655b: $c2 $ff $a4

    ld a, [bc]                                    ; $655e: $0a
    add [hl]                                      ; $655f: $86
    ld h, l                                       ; $6560: $65
    add b                                         ; $6561: $80
    ld l, b                                       ; $6562: $68
    push bc                                       ; $6563: $c5
    dec [hl]                                      ; $6564: $35
    ret nz                                        ; $6565: $c0

    and $06                                       ; $6566: $e6 $06
    cp e                                          ; $6568: $bb
    ret nz                                        ; $6569: $c0

    dec c                                         ; $656a: $0d
    ld c, [hl]                                    ; $656b: $4e
    rst $38                                       ; $656c: $ff
    and e                                         ; $656d: $a3
    ret z                                         ; $656e: $c8

    jr nz, jr_05f_64f6                            ; $656f: $20 $85

    dec b                                         ; $6571: $05
    ld b, c                                       ; $6572: $41
    ld a, [hl-]                                   ; $6573: $3a
    ret nz                                        ; $6574: $c0

    rst $00                                       ; $6575: $c7
    nop                                           ; $6576: $00
    db $fd                                        ; $6577: $fd

jr_05f_6578:
    jp $a0bf                                      ; $6578: $c3 $bf $a0


    cp a                                          ; $657b: $bf
    push hl                                       ; $657c: $e5
    rst $00                                       ; $657d: $c7
    dec e                                         ; $657e: $1d
    daa                                           ; $657f: $27
    ld l, c                                       ; $6580: $69
    ret nz                                        ; $6581: $c0

    db $ec                                        ; $6582: $ec
    ld a, e                                       ; $6583: $7b
    and d                                         ; $6584: $a2
    rst $00                                       ; $6585: $c7
    dec b                                         ; $6586: $05
    nop                                           ; $6587: $00
    ld b, c                                       ; $6588: $41
    or l                                          ; $6589: $b5
    ld a, [hl]                                    ; $658a: $7e
    rlca                                          ; $658b: $07
    add b                                         ; $658c: $80
    push hl                                       ; $658d: $e5
    add d                                         ; $658e: $82
    ld h, e                                       ; $658f: $63
    adc b                                         ; $6590: $88
    ld b, d                                       ; $6591: $42
    ret nz                                        ; $6592: $c0

    ld h, c                                       ; $6593: $61
    rst $00                                       ; $6594: $c7
    inc b                                         ; $6595: $04
    sbc e                                         ; $6596: $9b
    ld h, l                                       ; $6597: $65
    nop                                           ; $6598: $00
    ld b, b                                       ; $6599: $40
    ld [hl], l                                    ; $659a: $75
    rst $00                                       ; $659b: $c7
    ld [c], a                                     ; $659c: $e2
    cp b                                          ; $659d: $b8
    nop                                           ; $659e: $00
    ld a, l                                       ; $659f: $7d
    add h                                         ; $65a0: $84
    cp [hl]                                       ; $65a1: $be
    nop                                           ; $65a2: $00
    cp $e2                                        ; $65a3: $fe $e2
    jp $c662                                      ; $65a5: $c3 $62 $c6


    jr z, jr_05f_65aa                             ; $65a8: $28 $00

jr_05f_65aa:
    ld b, h                                       ; $65aa: $44
    ld [hl-], a                                   ; $65ab: $32
    inc c                                         ; $65ac: $0c
    ld h, e                                       ; $65ad: $63
    ld b, c                                       ; $65ae: $41
    ld [bc], a                                    ; $65af: $02
    dec a                                         ; $65b0: $3d
    add l                                         ; $65b1: $85
    add h                                         ; $65b2: $84
    ld h, l                                       ; $65b3: $65
    dec a                                         ; $65b4: $3d
    jp nz, $bf81                                  ; $65b5: $c2 $81 $bf

    add b                                         ; $65b8: $80
    and d                                         ; $65b9: $a2
    ld [$0276], sp                                ; $65ba: $08 $76 $02
    add b                                         ; $65bd: $80
    and $be                                       ; $65be: $e6 $be
    add c                                         ; $65c0: $81
    dec l                                         ; $65c1: $2d
    ld a, l                                       ; $65c2: $7d
    push bc                                       ; $65c3: $c5
    ld b, l                                       ; $65c4: $45
    ld e, a                                       ; $65c5: $5f
    add b                                         ; $65c6: $80
    jp z, $e2c0                                   ; $65c7: $ca $c0 $e2

    nop                                           ; $65ca: $00
    ld a, $c5                                     ; $65cb: $3e $c5
    dec a                                         ; $65cd: $3d
    ret nz                                        ; $65ce: $c0

    xor b                                         ; $65cf: $a8
    ld h, c                                       ; $65d0: $61
    ret nz                                        ; $65d1: $c0

    rst $38                                       ; $65d2: $ff
    ld b, b                                       ; $65d3: $40
    ret                                           ; $65d4: $c9


    ld b, b                                       ; $65d5: $40
    rst $20                                       ; $65d6: $e7
    add [hl]                                      ; $65d7: $86
    nop                                           ; $65d8: $00
    add l                                         ; $65d9: $85
    sbc l                                         ; $65da: $9d
    ld e, h                                       ; $65db: $5c
    ld l, $43                                     ; $65dc: $2e $43
    nop                                           ; $65de: $00
    ret                                           ; $65df: $c9


    ld c, [hl]                                    ; $65e0: $4e
    ld l, $6b                                     ; $65e1: $2e $6b
    rst $38                                       ; $65e3: $ff
    db $e3                                        ; $65e4: $e3
    ld c, e                                       ; $65e5: $4b
    ld a, [hl]                                    ; $65e6: $7e
    add [hl]                                      ; $65e7: $86
    nop                                           ; $65e8: $00
    cp a                                          ; $65e9: $bf
    sbc a                                         ; $65ea: $9f
    dec sp                                        ; $65eb: $3b
    ld h, e                                       ; $65ec: $63
    pop hl                                        ; $65ed: $e1
    inc hl                                        ; $65ee: $23
    ld a, a                                       ; $65ef: $7f
    add b                                         ; $65f0: $80
    jp $8603                                      ; $65f1: $c3 $03 $86


    rlca                                          ; $65f4: $07
    add [hl]                                      ; $65f5: $86
    jr c, jr_05f_6578                             ; $65f6: $38 $80

    db $e3                                        ; $65f8: $e3
    nop                                           ; $65f9: $00
    ei                                            ; $65fa: $fb
    ld b, e                                       ; $65fb: $43
    ld a, d                                       ; $65fc: $7a
    call nz, $013b                                ; $65fd: $c4 $3b $01
    db $fd                                        ; $6600: $fd
    pop hl                                        ; $6601: $e1
    add h                                         ; $6602: $84
    ld b, l                                       ; $6603: $45
    ld h, e                                       ; $6604: $63
    daa                                           ; $6605: $27
    ld b, b                                       ; $6606: $40
    dec [hl]                                      ; $6607: $35
    ret nz                                        ; $6608: $c0

    push hl                                       ; $6609: $e5
    nop                                           ; $660a: $00
    inc sp                                        ; $660b: $33
    db $e3                                        ; $660c: $e3
    ld e, [hl]                                    ; $660d: $5e
    xor c                                         ; $660e: $a9
    add c                                         ; $660f: $81
    ld h, l                                       ; $6610: $65
    inc [hl]                                      ; $6611: $34
    cp e                                          ; $6612: $bb
    ld b, b                                       ; $6613: $40
    db $e4                                        ; $6614: $e4
    add hl, sp                                    ; $6615: $39
    ld h, h                                       ; $6616: $64
    ld h, $a9                                     ; $6617: $26 $a9
    ld b, $93                                     ; $6619: $06 $93
    nop                                           ; $661b: $00
    nop                                           ; $661c: $00
    nop                                           ; $661d: $00
    sbc l                                         ; $661e: $9d
    and b                                         ; $661f: $a0
    rst $38                                       ; $6620: $ff
    pop hl                                        ; $6621: $e1
    call nc, $d4d5                                ; $6622: $d4 $d5 $d4
    ld hl, sp-$1e                                 ; $6625: $f8 $e2
    di                                            ; $6627: $f3
    ldh [$d6], a                                  ; $6628: $e0 $d6
    rrca                                          ; $662a: $0f
    rst $10                                       ; $662b: $d7
    ret c                                         ; $662c: $d8

    and b                                         ; $662d: $a0
    call nc, $e6f2                                ; $662e: $d4 $f2 $e6
    ld hl, sp-$19                                 ; $6631: $f8 $e7
    db $ec                                        ; $6633: $ec
    pop af                                        ; $6634: $f1
    pop hl                                        ; $6635: $e1
    jp hl                                         ; $6636: $e9


    adc [hl]                                      ; $6637: $8e
    cp [hl]                                       ; $6638: $be
    push hl                                       ; $6639: $e5
    reti                                          ; $663a: $d9


    jp c, $ecdb                                   ; $663b: $da $db $ec

    xor $ff                                       ; $663e: $ee $ff
    rst $38                                       ; $6640: $ff
    adc [hl]                                      ; $6641: $8e
    db $e3                                        ; $6642: $e3
    ld [c], a                                     ; $6643: $e2
    rst $38                                       ; $6644: $ff
    db $e3                                        ; $6645: $e3
    and b                                         ; $6646: $a0
    and b                                         ; $6647: $a0
    call c, $dedd                                 ; $6648: $dc $dd $de
    and b                                         ; $664b: $a0
    sbc a                                         ; $664c: $9f
    add l                                         ; $664d: $85
    sbc l                                         ; $664e: $9d
    rst $38                                       ; $664f: $ff
    ldh [$9f], a                                  ; $6650: $e0 $9f
    ld l, b                                       ; $6652: $68
    add sp, -$19                                  ; $6653: $e8 $e7
    pop hl                                        ; $6655: $e1
    ld h, l                                       ; $6656: $65
    db $e3                                        ; $6657: $e3
    ld a, e                                       ; $6658: $7b
    ld a, [$ffe4]                                 ; $6659: $fa $e4 $ff
    push hl                                       ; $665c: $e5
    and b                                         ; $665d: $a0
    and b                                         ; $665e: $a0
    rst $18                                       ; $665f: $df
    ldh [$e1], a                                  ; $6660: $e0 $e1
    sbc a                                         ; $6662: $9f
    sbc h                                         ; $6663: $9c
    ccf                                           ; $6664: $3f
    inc bc                                        ; $6665: $03
    add hl, bc                                    ; $6666: $09
    inc bc                                        ; $6667: $03
    ld b, [hl]                                    ; $6668: $46
    sbc h                                         ; $6669: $9c
    sbc a                                         ; $666a: $9f
    jr c, @-$17                                   ; $666b: $38 $e7

    rst $20                                       ; $666d: $e7
    pop hl                                        ; $666e: $e1
    db $ec                                        ; $666f: $ec
    ld h, l                                       ; $6670: $65
    ld [$f334], a                                 ; $6671: $ea $34 $f3
    and $e7                                       ; $6674: $e6 $e7
    ld a, [c]                                     ; $6676: $f2
    pop bc                                        ; $6677: $c1
    sbc a                                         ; $6678: $9f
    sbc h                                         ; $6679: $9c
    ld [bc], a                                    ; $667a: $02
    rra                                           ; $667b: $1f
    dec c                                         ; $667c: $0d
    sbc c                                         ; $667d: $99
    dec c                                         ; $667e: $0d
    inc b                                         ; $667f: $04
    inc bc                                        ; $6680: $03
    cp a                                          ; $6681: $bf
    ldh [$8b], a                                  ; $6682: $e0 $8b
    push hl                                       ; $6684: $e5
    rst $20                                       ; $6685: $e7
    db $e3                                        ; $6686: $e3
    db $fc                                        ; $6687: $fc
    ld h, l                                       ; $6688: $65
    pop hl                                        ; $6689: $e1
    ld h, $ff                                     ; $668a: $26 $ff
    and b                                         ; $668c: $a0
    sbc [hl]                                      ; $668d: $9e
    dec b                                         ; $668e: $05
    ld c, $00                                     ; $668f: $0e $00
    ld bc, $991f                                  ; $6691: $01 $1f $99
    sbc b                                         ; $6694: $98
    dec c                                         ; $6695: $0d
    dec b                                         ; $6696: $05
    sbc [hl]                                      ; $6697: $9e
    ldh a, [$cc]                                  ; $6698: $f0 $cc
    ld h, l                                       ; $669a: $65
    ldh [$d0], a                                  ; $669b: $e0 $d0
    rst $08                                       ; $669d: $cf
    cp $99                                        ; $669e: $fe $99
    rst $08                                       ; $66a0: $cf
    sbc [hl]                                      ; $66a1: $9e
    ld a, [bc]                                    ; $66a2: $0a
    sbc b                                         ; $66a3: $98
    rrca                                          ; $66a4: $0f
    rlca                                          ; $66a5: $07
    inc b                                         ; $66a6: $04
    inc b                                         ; $66a7: $04
    jp $060f                                      ; $66a8: $c3 $0f $06


    ld a, a                                       ; $66ab: $7f
    ld [c], a                                     ; $66ac: $e2
    adc e                                         ; $66ad: $8b
    rst $20                                       ; $66ae: $e7
    ld [hl], d                                    ; $66af: $72
    jp c, $c73e                                   ; $66b0: $da $3e $c7

    sbc a                                         ; $66b3: $9f
    sbc h                                         ; $66b4: $9c
    rst $38                                       ; $66b5: $ff
    dec b                                         ; $66b6: $05
    rlca                                          ; $66b7: $07
    ld [bc], a                                    ; $66b8: $02
    ld c, b                                       ; $66b9: $48
    ld c, b                                       ; $66ba: $48
    ld b, l                                       ; $66bb: $45
    ld b, $0f                                     ; $66bc: $06 $0f
    jp $9c02                                      ; $66be: $c3 $02 $9c


    cp d                                          ; $66c1: $ba
    ret nz                                        ; $66c2: $c0

    adc e                                         ; $66c3: $8b
    db $e3                                        ; $66c4: $e3
    ld [hl], l                                    ; $66c5: $75
    rst $18                                       ; $66c6: $df
    db $fc                                        ; $66c7: $fc
    and [hl]                                      ; $66c8: $a6
    sbc [hl]                                      ; $66c9: $9e
    ld c, d                                       ; $66ca: $4a
    rst $38                                       ; $66cb: $ff
    ld c, c                                       ; $66cc: $49
    ld a, [hl+]                                   ; $66cd: $2a
    ld a, [hl+]                                   ; $66ce: $2a
    ld c, e                                       ; $66cf: $4b
    ld h, c                                       ; $66d0: $61
    ld d, d                                       ; $66d1: $52
    dec b                                         ; $66d2: $05
    ld c, $87                                     ; $66d3: $0e $87
    rrca                                          ; $66d5: $0f
    ld [bc], a                                    ; $66d6: $02
    ld b, [hl]                                    ; $66d7: $46
    cp d                                          ; $66d8: $ba
    pop bc                                        ; $66d9: $c1
    add d                                         ; $66da: $82
    jp $fdbe                                      ; $66db: $c3 $be $fd


    call z, $9ea6                                 ; $66de: $cc $a6 $9e
    rst $38                                       ; $66e1: $ff
    ld c, d                                       ; $66e2: $4a
    ld h, b                                       ; $66e3: $60
    ld a, [hl+]                                   ; $66e4: $2a
    jr nz, jr_05f_6713                            ; $66e5: $20 $2c

    dec hl                                        ; $66e7: $2b
    ld c, e                                       ; $66e8: $4b
    ld e, h                                       ; $66e9: $5c
    rrca                                          ; $66ea: $0f
    ld [$0f98], sp                                ; $66eb: $08 $98 $0f
    inc b                                         ; $66ee: $04
    ld a, c                                       ; $66ef: $79
    jp nz, $c169                                  ; $66f0: $c2 $69 $c1

    xor l                                         ; $66f3: $ad
    and d                                         ; $66f4: $a2
    add hl, sp                                    ; $66f5: $39
    jp $fdfe                                      ; $66f6: $c3 $fe $fd


    db $fc                                        ; $66f9: $fc
    sbc [hl]                                      ; $66fa: $9e
    ld d, c                                       ; $66fb: $51
    ld e, [hl]                                    ; $66fc: $5e
    ld d, h                                       ; $66fd: $54
    ld a, [hl+]                                   ; $66fe: $2a
    jr nz, jr_05f_6721                            ; $66ff: $20 $20

    cp a                                          ; $6701: $bf
    ld b, d                                       ; $6702: $42
    ld b, [hl]                                    ; $6703: $46
    ld [bc], a                                    ; $6704: $02
    rrca                                          ; $6705: $0f
    sbc b                                         ; $6706: $98
    sbc b                                         ; $6707: $98
    ld a, l                                       ; $6708: $7d
    ldh [$9e], a                                  ; $6709: $e0 $9e
    ldh a, [rBCPD]                                ; $670b: $f0 $69
    call nz, $c539                                ; $670d: $c4 $39 $c5
    dec [hl]                                      ; $6710: $35
    ld hl, sp-$21                                 ; $6711: $f8 $df

jr_05f_6713:
    and d                                         ; $6713: $a2
    sbc a                                         ; $6714: $9f
    ret nc                                        ; $6715: $d0

    ld d, d                                       ; $6716: $52
    ld h, c                                       ; $6717: $61
    rst $38                                       ; $6718: $ff
    ld d, h                                       ; $6719: $54
    ld a, [hl+]                                   ; $671a: $2a
    ld hl, $4536                                  ; $671b: $21 $36 $45
    xor [hl]                                      ; $671e: $ae
    ld b, $98                                     ; $671f: $06 $98

jr_05f_6721:
    rrca                                          ; $6721: $0f
    nop                                           ; $6722: $00
    ld bc, $d006                                  ; $6723: $01 $06 $d0
    ld a, [hl-]                                   ; $6726: $3a
    jp nz, $c920                                  ; $6727: $c2 $20 $c9

    di                                            ; $672a: $f3

jr_05f_672b:
    rst $10                                       ; $672b: $d7
    ld b, h                                       ; $672c: $44
    and e                                         ; $672d: $a3

jr_05f_672e:
    rst $38                                       ; $672e: $ff
    db $d3                                        ; $672f: $d3
    ret nc                                        ; $6730: $d0

    ld d, e                                       ; $6731: $53
    ld d, e                                       ; $6732: $53
    xor [hl]                                      ; $6733: $ae
    ld a, [hl-]                                   ; $6734: $3a
    dec [hl]                                      ; $6735: $35
    ld [hl], $7f                                  ; $6736: $36 $7f
    xor a                                         ; $6738: $af
    ld b, $99                                     ; $6739: $06 $99
    sbc c                                         ; $673b: $99
    db $10                                        ; $673c: $10
    dec b                                         ; $673d: $05
    jp nc, $ae86                                  ; $673e: $d2 $86 $ae

    ld hl, sp-$1e                                 ; $6741: $f8 $e2
    adc a                                         ; $6743: $8f
    jr z, jr_05f_672b                             ; $6744: $28 $e5

    rst $18                                       ; $6746: $df
    and h                                         ; $6747: $a4
    db $d3                                        ; $6748: $d3
    ret nc                                        ; $6749: $d0

    ld b, [hl]                                    ; $674a: $46
    xor a                                         ; $674b: $af
    add hl, sp                                    ; $674c: $39
    ld a, a                                       ; $674d: $7f
    dec [hl]                                      ; $674e: $35
    dec [hl]                                      ; $674f: $35
    add hl, sp                                    ; $6750: $39
    ld b, $99                                     ; $6751: $06 $99
    sbc b                                         ; $6753: $98
    ld [$c2bf], sp                                ; $6754: $08 $bf $c2
    ldh [$eb], a                                  ; $6757: $e0 $eb
    add [hl]                                      ; $6759: $86
    cp e                                          ; $675a: $bb
    sub h                                         ; $675b: $94
    ld h, c                                       ; $675c: $61
    and e                                         ; $675d: $a3
    rst $18                                       ; $675e: $df
    and a                                         ; $675f: $a7
    cp a                                          ; $6760: $bf
    ldh [rLCDC], a                                ; $6761: $e0 $40
    dec [hl]                                      ; $6763: $35
    dec [hl]                                      ; $6764: $35
    rla                                           ; $6765: $17
    ld a, [hl-]                                   ; $6766: $3a
    dec b                                         ; $6767: $05
    ld c, $be                                     ; $6768: $0e $be
    pop bc                                        ; $676a: $c1
    sbc h                                         ; $676b: $9c
    or $80                                        ; $676c: $f6 $80
    add [hl]                                      ; $676e: $86
    and d                                         ; $676f: $a2
    jp nz, $f8ca                                  ; $6770: $c2 $ca $f8

    or l                                          ; $6773: $b5
    jp z, $c6df                                   ; $6774: $ca $df $c6

    cp e                                          ; $6777: $bb
    add l                                         ; $6778: $85
    jp nc, $45ae                                  ; $6779: $d2 $ae $45

    ld a, [hl-]                                   ; $677c: $3a
    jp Jump_05f_627b                              ; $677d: $c3 $7b $62


    ld a, l                                       ; $6780: $7d
    cp [hl]                                       ; $6781: $be
    pop bc                                        ; $6782: $c1
    ld c, $05                                     ; $6783: $0e $05
    xor [hl]                                      ; $6785: $ae
    sbc h                                         ; $6786: $9c
    ei                                            ; $6787: $fb
    and e                                         ; $6788: $a3
    ldh [$fb], a                                  ; $6789: $e0 $fb
    add e                                         ; $678b: $83
    cp e                                          ; $678c: $bb

jr_05f_678d:
    add h                                         ; $678d: $84
    adc l                                         ; $678e: $8d
    push hl                                       ; $678f: $e5
    inc a                                         ; $6790: $3c
    adc a                                         ; $6791: $8f
    cp e                                          ; $6792: $bb
    add c                                         ; $6793: $81
    sbc [hl]                                      ; $6794: $9e
    xor a                                         ; $6795: $af
    xor [hl]                                      ; $6796: $ae
    rst $38                                       ; $6797: $ff
    add hl, sp                                    ; $6798: $39
    ld h, d                                       ; $6799: $62
    ld h, a                                       ; $679a: $67
    ld a, a                                       ; $679b: $7f
    ld a, l                                       ; $679c: $7d
    ld b, $98                                     ; $679d: $06 $98
    sbc b                                         ; $679f: $98
    rlca                                          ; $67a0: $07
    sbc b                                         ; $67a1: $98
    ld b, $af                                     ; $67a2: $06 $af
    inc a                                         ; $67a4: $3c
    db $e3                                        ; $67a5: $e3
    ld [c], a                                     ; $67a6: $e2
    add h                                         ; $67a7: $84
    jr nz, jr_05f_672e                            ; $67a8: $20 $84

    adc l                                         ; $67aa: $8d
    ld [$6afa], a                                 ; $67ab: $ea $fa $6a
    cp $bb                                        ; $67ae: $fe $bb
    add c                                         ; $67b0: $81
    sbc a                                         ; $67b1: $9f
    ret nc                                        ; $67b2: $d0

    xor a                                         ; $67b3: $af
    ld b, b                                       ; $67b4: $40
    ld l, c                                       ; $67b5: $69
    dec [hl]                                      ; $67b6: $35
    add hl, sp                                    ; $67b7: $39
    add hl, bc                                    ; $67b8: $09
    add c                                         ; $67b9: $81
    cp $c0                                        ; $67ba: $fe $c0
    ei                                            ; $67bc: $fb
    and b                                         ; $67bd: $a0
    inc b                                         ; $67be: $04
    ld [hl], a                                    ; $67bf: $77
    and c                                         ; $67c0: $a1
    jr nc, @-$7c                                  ; $67c1: $30 $82

    cp e                                          ; $67c3: $bb
    sbc h                                         ; $67c4: $9c
    adc b                                         ; $67c5: $88
    ld h, a                                       ; $67c6: $67
    rst $38                                       ; $67c7: $ff
    db $d3                                        ; $67c8: $d3
    ret nc                                        ; $67c9: $d0

    ld [hl], $69                                  ; $67ca: $36 $69
    dec [hl]                                      ; $67cc: $35
    ld a, [hl-]                                   ; $67cd: $3a
    add c                                         ; $67ce: $81
    ld [$983f], sp                                ; $67cf: $08 $3f $98
    sbc b                                         ; $67d2: $98
    sub a                                         ; $67d3: $97
    sbc b                                         ; $67d4: $98
    sbc b                                         ; $67d5: $98
    sbc c                                         ; $67d6: $99
    cp b                                          ; $67d7: $b8
    and c                                         ; $67d8: $a1
    ld a, [hl-]                                   ; $67d9: $3a
    ldh [$f8], a                                  ; $67da: $e0 $f8
    cp e                                          ; $67dc: $bb
    sbc d                                         ; $67dd: $9a
    and h                                         ; $67de: $a4
    and [hl]                                      ; $67df: $a6
    jp c, $d263                                   ; $67e0: $da $63 $d2

    ld h, d                                       ; $67e3: $62
    ld h, a                                       ; $67e4: $67
    dec [hl]                                      ; $67e5: $35
    ld [hl], $36                                  ; $67e6: $36 $36
    add b                                         ; $67e8: $80
    ld [c], a                                     ; $67e9: $e2
    sbc b                                         ; $67ea: $98
    sbc c                                         ; $67eb: $99
    ld [hl], d                                    ; $67ec: $72
    add b                                         ; $67ed: $80
    dec c                                         ; $67ee: $0d
    ld [bc], a                                    ; $67ef: $02
    ld a, [hl-]                                   ; $67f0: $3a
    push hl                                       ; $67f1: $e5
    ld a, c                                       ; $67f2: $79
    xor b                                         ; $67f3: $a8
    ld hl, sp+$19                                 ; $67f4: $f8 $19
    ld l, d                                       ; $67f6: $6a
    rst $28                                       ; $67f7: $ef
    add $3f                                       ; $67f8: $c6 $3f
    ld h, e                                       ; $67fa: $63
    sbc [hl]                                      ; $67fb: $9e
    ld l, c                                       ; $67fc: $69
    dec [hl]                                      ; $67fd: $35
    ld [hl], $45                                  ; $67fe: $36 $45
    ld h, [hl]                                    ; $6800: $66
    ld b, b                                       ; $6801: $40
    ldh [$99], a                                  ; $6802: $e0 $99
    sbc d                                         ; $6804: $9a
    cp l                                          ; $6805: $bd
    pop hl                                        ; $6806: $e1
    ld a, [hl-]                                   ; $6807: $3a
    pop hl                                        ; $6808: $e1
    inc bc                                        ; $6809: $03
    xor [hl]                                      ; $680a: $ae
    jr nc, jr_05f_678d                            ; $680b: $30 $80

    ldh [$e6], a                                  ; $680d: $e0 $e6
    ld b, d                                       ; $680f: $42
    call nz, $c4d1                                ; $6810: $c4 $d1 $c4
    ld h, d                                       ; $6813: $62
    ld e, a                                       ; $6814: $5f
    ld h, d                                       ; $6815: $62
    jp c, $9e63                                   ; $6816: $da $63 $9e

    ld l, e                                       ; $6819: $6b
    ld l, h                                       ; $681a: $6c
    cp a                                          ; $681b: $bf
    ld b, b                                       ; $681c: $40
    add e                                         ; $681d: $83
    add h                                         ; $681e: $84
    ld [$999a], sp                                ; $681f: $08 $9a $99
    cp $c0                                        ; $6822: $fe $c0
    sub a                                         ; $6824: $97
    ld e, $3c                                     ; $6825: $1e $3c
    ldh [$98], a                                  ; $6827: $e0 $98
    sbc b                                         ; $6829: $98
    ld [$f0af], sp                                ; $682a: $08 $af $f0
    ld h, d                                       ; $682d: $62
    call nz, $c4d6                                ; $682e: $c4 $d6 $c4
    ld b, l                                       ; $6831: $45
    cp $da                                        ; $6832: $fe $da
    ld h, e                                       ; $6834: $63
    sbc [hl]                                      ; $6835: $9e
    ld l, [hl]                                    ; $6836: $6e
    ld [hl], b                                    ; $6837: $70
    adc b                                         ; $6838: $88
    add h                                         ; $6839: $84
    ld [bc], a                                    ; $683a: $02
    rrca                                          ; $683b: $0f
    ld l, [hl]                                    ; $683c: $6e
    ld b, b                                       ; $683d: $40
    pop hl                                        ; $683e: $e1
    sub a                                         ; $683f: $97
    sub [hl]                                      ; $6840: $96
    sub [hl]                                      ; $6841: $96
    ei                                            ; $6842: $fb
    pop bc                                        ; $6843: $c1
    ld c, $05                                     ; $6844: $0e $05
    or $a1                                        ; $6846: $f6 $a1
    db $fc                                        ; $6848: $fc
    dec a                                         ; $6849: $3d
    sbc d                                         ; $684a: $9a
    call nc, $9e68                                ; $684b: $d4 $68 $9e
    ld [hl], $35                                  ; $684e: $36 $35
    add hl, sp                                    ; $6850: $39
    ld [bc], a                                    ; $6851: $02
    rrca                                          ; $6852: $0f
    ld [hl+], a                                   ; $6853: $22
    ld a, b                                       ; $6854: $78
    ld h, b                                       ; $6855: $60
    sbc c                                         ; $6856: $99
    add c                                         ; $6857: $81
    ldh [$bc], a                                  ; $6858: $e0 $bc
    ret nz                                        ; $685a: $c0

    ld l, [hl]                                    ; $685b: $6e
    ld h, b                                       ; $685c: $60
    ld b, $32                                     ; $685d: $06 $32
    add e                                         ; $685f: $83
    cp d                                          ; $6860: $ba
    ld d, e                                       ; $6861: $53
    ld hl, sp-$02                                 ; $6862: $f8 $fe
    ld [hl+], a                                   ; $6864: $22
    ld e, a                                       ; $6865: $5f
    ld h, l                                       ; $6866: $65
    ld a, b                                       ; $6867: $78
    ld b, b                                       ; $6868: $40
    sbc [hl]                                      ; $6869: $9e
    xor [hl]                                      ; $686a: $ae
    inc a                                         ; $686b: $3c
    ld a, [hl-]                                   ; $686c: $3a
    inc bc                                        ; $686d: $03
    inc de                                        ; $686e: $13
    inc b                                         ; $686f: $04
    rlca                                          ; $6870: $07
    ld a, a                                       ; $6871: $7f
    ld [c], a                                     ; $6872: $e2
    rst $38                                       ; $6873: $ff
    jp nz, $c099                                  ; $6874: $c2 $99 $c0

    pop hl                                        ; $6877: $e1
    ld a, e                                       ; $6878: $7b
    pop bc                                        ; $6879: $c1
    cp d                                          ; $687a: $ba
    ld d, l                                       ; $687b: $55
    db $fc                                        ; $687c: $fc
    cp h                                          ; $687d: $bc
    jr z, @+$7a                                   ; $687e: $28 $78

    ld b, b                                       ; $6880: $40
    sbc [hl]                                      ; $6881: $9e
    xor a                                         ; $6882: $af
    ld a, [hl-]                                   ; $6883: $3a
    jp Jump_000_383b                              ; $6884: $c3 $3b $38


    ld c, a                                       ; $6887: $4f
    scf                                           ; $6888: $37
    ld [bc], a                                    ; $6889: $02
    inc b                                         ; $688a: $04
    add hl, bc                                    ; $688b: $09
    cp e                                          ; $688c: $bb
    ldh [$f1], a                                  ; $688d: $e0 $f1
    ld b, c                                       ; $688f: $41
    sbc b                                         ; $6890: $98
    add b                                         ; $6891: $80
    pop hl                                        ; $6892: $e1
    pop bc                                        ; $6893: $c1
    xor a                                         ; $6894: $af
    cp h                                          ; $6895: $bc
    ret nz                                        ; $6896: $c0

    cpl                                           ; $6897: $2f
    ld [hl], e                                    ; $6898: $73
    adc h                                         ; $6899: $8c
    daa                                           ; $689a: $27
    add e                                         ; $689b: $83
    jr nz, @+$7a                                  ; $689c: $20 $78

    ld b, b                                       ; $689e: $40
    sbc [hl]                                      ; $689f: $9e
    xor [hl]                                      ; $68a0: $ae
    sbc [hl]                                      ; $68a1: $9e
    cp [hl]                                       ; $68a2: $be
    add b                                         ; $68a3: $80
    dec [hl]                                      ; $68a4: $35
    dec [hl]                                      ; $68a5: $35
    jr c, jr_05f_68e0                             ; $68a6: $38 $38

    cp e                                          ; $68a8: $bb
    pop hl                                        ; $68a9: $e1
    ld sp, hl                                     ; $68aa: $f9
    jp nz, $c29a                                  ; $68ab: $c2 $9a $c2

    ld [hl], $a0                                  ; $68ae: $36 $a0
    ld b, [hl]                                    ; $68b0: $46
    cp h                                          ; $68b1: $bc
    ret nz                                        ; $68b2: $c0

    cp d                                          ; $68b3: $ba
    ld b, d                                       ; $68b4: $42
    jr nc, jr_05f_6935                            ; $68b5: $30 $7e

    ld a, $a0                                     ; $68b7: $3e $a0
    scf                                           ; $68b9: $37
    jr c, @+$01                                   ; $68ba: $38 $ff

    dec sp                                        ; $68bc: $3b
    dec [hl]                                      ; $68bd: $35
    jp $6362                                      ; $68be: $c3 $62 $63


    ld h, [hl]                                    ; $68c1: $66
    dec [hl]                                      ; $68c2: $35
    ld [hl], $1c                                  ; $68c3: $36 $1c
    scf                                           ; $68c5: $37
    pop hl                                        ; $68c6: $e1
    cp c                                          ; $68c7: $b9
    and b                                         ; $68c8: $a0
    ld a, [bc]                                    ; $68c9: $0a
    xor a                                         ; $68ca: $af
    xor [hl]                                      ; $68cb: $ae
    or d                                          ; $68cc: $b2
    ld h, b                                       ; $68cd: $60
    sbc b                                         ; $68ce: $98

jr_05f_68cf:
    inc h                                         ; $68cf: $24
    xor $58                                       ; $68d0: $ee $58
    rst $30                                       ; $68d2: $f7
    ret c                                         ; $68d3: $d8

    rst $10                                       ; $68d4: $d7
    sub $3e                                       ; $68d5: $d6 $3e
    and c                                         ; $68d7: $a1
    xor [hl]                                      ; $68d8: $ae
    xor [hl]                                      ; $68d9: $ae
    ld b, l                                       ; $68da: $45
    ld [hl], $fe                                  ; $68db: $36 $fe
    cp d                                          ; $68dd: $ba
    and b                                         ; $68de: $a0
    ld l, b                                       ; $68df: $68

jr_05f_68e0:
    ld h, [hl]                                    ; $68e0: $66
    jp Jump_000_3f36                              ; $68e1: $c3 $36 $3f


    ld b, l                                       ; $68e4: $45
    ld [bc], a                                    ; $68e5: $02
    dec e                                         ; $68e6: $1d
    ld c, $3f                                     ; $68e7: $0e $3f
    pop hl                                        ; $68e9: $e1
    xor a                                         ; $68ea: $af
    ret nc                                        ; $68eb: $d0

    sbc a                                         ; $68ec: $9f
    ldh [rSB], a                                  ; $68ed: $e0 $01
    sbc b                                         ; $68ef: $98
    jr nz, jr_05f_68cf                            ; $68f0: $20 $dd

    db $10                                        ; $68f2: $10
    xor $61                                       ; $68f3: $ee $61
    ld h, $db                                     ; $68f5: $26 $db
    jp c, $bad9                                   ; $68f7: $da $d9 $ba

    ld h, c                                       ; $68fa: $61
    xor a                                         ; $68fb: $af
    xor a                                         ; $68fc: $af
    jp $aeff                                      ; $68fd: $c3 $ff $ae


    add b                                         ; $6900: $80
    scf                                           ; $6901: $37
    jr c, jr_05f_6939                             ; $6902: $38 $35

    ld [hl], a                                    ; $6904: $77
    ld h, h                                       ; $6905: $64
    ld h, l                                       ; $6906: $65
    db $fd                                        ; $6907: $fd
    ld h, [hl]                                    ; $6908: $66
    or $c0                                        ; $6909: $f6 $c0
    rlca                                          ; $690b: $07
    rrca                                          ; $690c: $0f
    ld b, $46                                     ; $690d: $06 $46
    ret nc                                        ; $690f: $d0

    db $d3                                        ; $6910: $d3
    cp b                                          ; $6911: $b8
    ldh [rSC], a                                  ; $6912: $e0 $02
    jp $c693                                      ; $6914: $c3 $93 $c6


    ld b, $de                                     ; $6917: $06 $de
    db $dd                                        ; $6919: $dd
    call c, $6179                                 ; $691a: $dc $79 $61
    pop de                                        ; $691d: $d1
    ld a, a                                       ; $691e: $7f
    pop de                                        ; $691f: $d1
    ret nc                                        ; $6920: $d0

    xor a                                         ; $6921: $af
    add b                                         ; $6922: $80
    xor [hl]                                      ; $6923: $ae
    xor [hl]                                      ; $6924: $ae
    ld [hl], $f8                                  ; $6925: $36 $f8
    ret nz                                        ; $6927: $c0

    ld c, $7c                                     ; $6928: $0e $7c
    pop hl                                        ; $692a: $e1
    ld b, l                                       ; $692b: $45
    ld [bc], a                                    ; $692c: $02
    dec b                                         ; $692d: $05
    pop bc                                        ; $692e: $c1
    ldh [$f0], a                                  ; $692f: $e0 $f0
    ld sp, $0442                                  ; $6931: $31 $42 $04
    ld h, c                                       ; $6934: $61

jr_05f_6935:
    inc hl                                        ; $6935: $23
    cp a                                          ; $6936: $bf
    db $e3                                        ; $6937: $e3
    ld [c], a                                     ; $6938: $e2

jr_05f_6939:
    and b                                         ; $6939: $a0
    pop hl                                        ; $693a: $e1
    ldh [$df], a                                  ; $693b: $e0 $df
    cp d                                          ; $693d: $ba
    add l                                         ; $693e: $85
    add b                                         ; $693f: $80
    db $eb                                        ; $6940: $eb
    xor a                                         ; $6941: $af
    xor a                                         ; $6942: $af
    dec [hl]                                      ; $6943: $35
    ld h, b                                       ; $6944: $60
    dec [hl]                                      ; $6945: $35
    ld a, h                                       ; $6946: $7c
    pop hl                                        ; $6947: $e1
    ld a, l                                       ; $6948: $7d
    ld b, [hl]                                    ; $6949: $46
    xor [hl]                                      ; $694a: $ae
    ret c                                         ; $694b: $d8

    inc [hl]                                      ; $694c: $34
    ld h, c                                       ; $694d: $61
    ld a, e                                       ; $694e: $7b

jr_05f_694f:
    add hl, hl                                    ; $694f: $29
    ld [bc], a                                    ; $6950: $02
    pop de                                        ; $6951: $d1
    push hl                                       ; $6952: $e5
    db $e4                                        ; $6953: $e4
    cpl                                           ; $6954: $2f
    ld c, b                                       ; $6955: $48
    jp nc, Jump_05f_7982                          ; $6956: $d2 $82 $79

    add e                                         ; $6959: $83
    dec [hl]                                      ; $695a: $35
    ld h, d                                       ; $695b: $62
    ld [hl], l                                    ; $695c: $75
    ret nz                                        ; $695d: $c0

    ld a, [hl-]                                   ; $695e: $3a
    ld a, a                                       ; $695f: $7f
    ld a, l                                       ; $6960: $7d
    xor a                                         ; $6961: $af
    cp [hl]                                       ; $6962: $be
    add [hl]                                      ; $6963: $86
    or $72                                        ; $6964: $f6 $72
    jr c, jr_05f_694f                             ; $6966: $38 $e7

    and $f5                                       ; $6968: $e6 $f5
    add hl, bc                                    ; $696a: $09
    add l                                         ; $696b: $85
    add [hl]                                      ; $696c: $86
    add e                                         ; $696d: $83
    ld b, [hl]                                    ; $696e: $46
    inc a                                         ; $696f: $3c
    ld [hl], l                                    ; $6970: $75
    ld h, b                                       ; $6971: $60
    dec [hl]                                      ; $6972: $35
    ret nz                                        ; $6973: $c0

    add hl, sp                                    ; $6974: $39
    add e                                         ; $6975: $83
    add h                                         ; $6976: $84
    ld b, [hl]                                    ; $6977: $46
    inc [hl]                                      ; $6978: $34
    ld b, b                                       ; $6979: $40
    db $fd                                        ; $697a: $fd
    ccf                                           ; $697b: $3f
    ld [$2a34], a                                 ; $697c: $ea $34 $2a
    ret nc                                        ; $697f: $d0

    cp a                                          ; $6980: $bf
    ldh [rLYC], a                                 ; $6981: $e0 $45
    ccf                                           ; $6983: $3f
    pop hl                                        ; $6984: $e1
    ld [hl], $83                                  ; $6985: $36 $83
    add [hl]                                      ; $6987: $86
    add e                                         ; $6988: $83
    add l                                         ; $6989: $85
    ld b, [hl]                                    ; $698a: $46
    inc [hl]                                      ; $698b: $34
    ld b, b                                       ; $698c: $40
    push de                                       ; $698d: $d5
    ld b, h                                       ; $698e: $44
    jr nc, jr_05f_69cd                            ; $698f: $30 $3c

    rst $20                                       ; $6991: $e7
    ld h, d                                       ; $6992: $62
    ld b, [hl]                                    ; $6993: $46
    ld bc, $3fd2                                  ; $6994: $01 $d2 $3f
    xor [hl]                                      ; $6997: $ae
    add l                                         ; $6998: $85
    add a                                         ; $6999: $87
    adc b                                         ; $699a: $88
    ld [hl], b                                    ; $699b: $70
    ld l, h                                       ; $699c: $6c
    pop bc                                        ; $699d: $c1
    db $e4                                        ; $699e: $e4
    pop bc                                        ; $699f: $c1
    ret nz                                        ; $69a0: $c0

    ret nz                                        ; $69a1: $c0

jr_05f_69a2:
    or h                                          ; $69a2: $b4
    ld h, $ee                                     ; $69a3: $26 $ee
    ld c, $66                                     ; $69a5: $0e $66
    add sp, $59                                   ; $69a7: $e8 $59
    ld b, e                                       ; $69a9: $43
    rla                                           ; $69aa: $17
    and c                                         ; $69ab: $a1
    rst $30                                       ; $69ac: $f7
    ld b, b                                       ; $69ad: $40
    ld b, [hl]                                    ; $69ae: $46
    add hl, sp                                    ; $69af: $39
    rst $38                                       ; $69b0: $ff
    ld l, [hl]                                    ; $69b1: $6e
    ld [hl], b                                    ; $69b2: $70
    ld [hl], c                                    ; $69b3: $71
    adc b                                         ; $69b4: $88
    add h                                         ; $69b5: $84
    add l                                         ; $69b6: $85
    xor [hl]                                      ; $69b7: $ae
    ld b, [hl]                                    ; $69b8: $46
    ldh [$f5], a                                  ; $69b9: $e0 $f5
    ld [hl+], a                                   ; $69bb: $22
    ld a, [de]                                    ; $69bc: $1a
    add h                                         ; $69bd: $84
    ld [hl], $4f                                  ; $69be: $36 $4f
    xor [hl]                                      ; $69c0: $ae
    ld c, [hl]                                    ; $69c1: $4e
    ld d, [hl]                                    ; $69c2: $56
    pop bc                                        ; $69c3: $c1
    sbc [hl]                                      ; $69c4: $9e
    ld b, [hl]                                    ; $69c5: $46
    xor a                                         ; $69c6: $af
    dec b                                         ; $69c7: $05
    ld b, [hl]                                    ; $69c8: $46
    scf                                           ; $69c9: $37
    and c                                         ; $69ca: $a1
    add hl, sp                                    ; $69cb: $39
    inc b                                         ; $69cc: $04

jr_05f_69cd:
    and b                                         ; $69cd: $a0
    add h                                         ; $69ce: $84
    and c                                         ; $69cf: $a1
    ld c, [hl]                                    ; $69d0: $4e
    ld h, c                                       ; $69d1: $61
    cp a                                          ; $69d2: $bf
    sub h                                         ; $69d3: $94
    ld a, [de]                                    ; $69d4: $1a
    dec h                                         ; $69d5: $25
    call c, $c03f                                 ; $69d6: $dc $3f $c0
    ld a, [c]                                     ; $69d9: $f2
    daa                                           ; $69da: $27
    sbc [hl]                                      ; $69db: $9e
    ld b, [hl]                                    ; $69dc: $46
    ld b, [hl]                                    ; $69dd: $46
    ret nz                                        ; $69de: $c0

    ret nz                                        ; $69df: $c0

    dec [hl]                                      ; $69e0: $35
    dec [hl]                                      ; $69e1: $35
    rlca                                          ; $69e2: $07
    ld a, $c6                                     ; $69e3: $3e $c6
    rst $00                                       ; $69e5: $c7
    ld [bc], a                                    ; $69e6: $02
    pop hl                                        ; $69e7: $e1
    sbc d                                         ; $69e8: $9a
    jr z, jr_05f_69a2                             ; $69e9: $28 $b7

    db $d3                                        ; $69eb: $d3
    sbc a                                         ; $69ec: $9f
    jr nz, jr_05f_6a2e                            ; $69ed: $20 $3f

    add $d6                                       ; $69ef: $c6 $d6
    ret nz                                        ; $69f1: $c0

    pop bc                                        ; $69f2: $c1
    sbc h                                         ; $69f3: $9c
    jp $e0bf                                      ; $69f4: $c3 $bf $e0


    ld a, $74                                     ; $69f7: $3e $74
    jr nz, @-$3a                                  ; $69f9: $20 $c4

    push bc                                       ; $69fb: $c5
    nop                                           ; $69fc: $00
    jp Jump_05f_5ea1                              ; $69fd: $c3 $a1 $5e


    ld h, d                                       ; $6a00: $62
    cp $a3                                        ; $6a01: $fe $a3
    rst $38                                       ; $6a03: $ff
    dec hl                                        ; $6a04: $2b
    or [hl]                                       ; $6a05: $b6
    ld c, b                                       ; $6a06: $48
    ccf                                           ; $6a07: $3f
    pop bc                                        ; $6a08: $c1
    scf                                           ; $6a09: $37
    ld h, c                                       ; $6a0a: $61
    ld d, h                                       ; $6a0b: $54
    jr nz, jr_05f_6a41                            ; $6a0c: $20 $33

    sbc a                                         ; $6a0e: $9f
    sbc h                                         ; $6a0f: $9c
    add c                                         ; $6a10: $81
    ldh [$c0], a                                  ; $6a11: $e0 $c0
    ld [c], a                                     ; $6a13: $e2
    ld b, b                                       ; $6a14: $40
    ld b, [hl]                                    ; $6a15: $46
    ld [bc], a                                    ; $6a16: $02
    db $e3                                        ; $6a17: $e3
    inc bc                                        ; $6a18: $03
    add a                                         ; $6a19: $87
    ret nz                                        ; $6a1a: $c0

    rst $38                                       ; $6a1b: $ff
    dec l                                         ; $6a1c: $2d
    ld [hl], h                                    ; $6a1d: $74
    ld b, c                                       ; $6a1e: $41
    reti                                          ; $6a1f: $d9


    ld b, $dc                                     ; $6a20: $06 $dc
    ld h, e                                       ; $6a22: $63
    pop bc                                        ; $6a23: $c1
    db $e4                                        ; $6a24: $e4
    add b                                         ; $6a25: $80
    ldh [$36], a                                  ; $6a26: $e0 $36
    ld b, l                                       ; $6a28: $45
    and b                                         ; $6a29: $a0
    inc b                                         ; $6a2a: $04
    pop bc                                        ; $6a2b: $c1
    ld e, [hl]                                    ; $6a2c: $5e
    ld h, a                                       ; $6a2d: $67

jr_05f_6a2e:
    dec b                                         ; $6a2e: $05
    ld d, h                                       ; $6a2f: $54
    and l                                         ; $6a30: $a5
    ld h, [hl]                                    ; $6a31: $66
    cp h                                          ; $6a32: $bc
    ld b, h                                       ; $6a33: $44
    xor [hl]                                      ; $6a34: $ae
    add c                                         ; $6a35: $81
    ld [c], a                                     ; $6a36: $e2
    jp Jump_000_3901                              ; $6a37: $c3 $01 $39


jr_05f_6a3a:
    pop bc                                        ; $6a3a: $c1
    pop hl                                        ; $6a3b: $e1
    ld b, [hl]                                    ; $6a3c: $46
    add e                                         ; $6a3d: $83
    ld b, d                                       ; $6a3e: $42
    and c                                         ; $6a3f: $a1
    sub d                                         ; $6a40: $92

jr_05f_6a41:
    ld [bc], a                                    ; $6a41: $02
    rst $38                                       ; $6a42: $ff
    ld [hl], d                                    ; $6a43: $72
    db $e4                                        ; $6a44: $e4
    add [hl]                                      ; $6a45: $86
    cp h                                          ; $6a46: $bc
    ld b, h                                       ; $6a47: $44
    dec bc                                        ; $6a48: $0b
    xor a                                         ; $6a49: $af
    ld b, [hl]                                    ; $6a4a: $46

jr_05f_6a4b:
    cp [hl]                                       ; $6a4b: $be
    ld [c], a                                     ; $6a4c: $e2
    ld b, l                                       ; $6a4d: $45
    pop bc                                        ; $6a4e: $c1
    pop hl                                        ; $6a4f: $e1
    jp nz, $f8c5                                  ; $6a50: $c2 $c5 $f8

    inc bc                                        ; $6a53: $03
    ld [hl], a                                    ; $6a54: $77
    inc de                                        ; $6a55: $13
    ld a, $e4                                     ; $6a56: $3e $e4
    adc h                                         ; $6a58: $8c
    sbc [hl]                                      ; $6a59: $9e
    ld b, [hl]                                    ; $6a5a: $46
    xor [hl]                                      ; $6a5b: $ae
    xor a                                         ; $6a5c: $af
    ld b, [hl]                                    ; $6a5d: $46
    add a                                         ; $6a5e: $87
    ret nz                                        ; $6a5f: $c0

    jp nz, $81e1                                  ; $6a60: $c2 $e1 $81

    pop de                                        ; $6a63: $d1
    add l                                         ; $6a64: $85
    add b                                         ; $6a65: $80
    add $44                                       ; $6a66: $c6 $44
    ld b, c                                       ; $6a68: $41

jr_05f_6a69:
    ld d, [hl]                                    ; $6a69: $56
    inc [hl]                                      ; $6a6a: $34
    ld l, d                                       ; $6a6b: $6a
    db $f4                                        ; $6a6c: $f4
    jr nz, jr_05f_6a69                            ; $6a6d: $20 $fa

    nop                                           ; $6a6f: $00
    ld b, [hl]                                    ; $6a70: $46
    add a                                         ; $6a71: $87
    ld b, [hl]                                    ; $6a72: $46
    call nz, $83c5                                ; $6a73: $c4 $c5 $83
    pop hl                                        ; $6a76: $e1
    add h                                         ; $6a77: $84
    pop bc                                        ; $6a78: $c1
    add $56                                       ; $6a79: $c6 $56
    db $f4                                        ; $6a7b: $f4
    ld [hl], $d3                                  ; $6a7c: $36 $d3
    add c                                         ; $6a7e: $81
    ret nc                                        ; $6a7f: $d0

    ccf                                           ; $6a80: $3f
    db $e3                                        ; $6a81: $e3
    add [hl]                                      ; $6a82: $86
    and h                                         ; $6a83: $a4
    add $54                                       ; $6a84: $c6 $54
    ld a, [hl]                                    ; $6a86: $7e
    ld c, h                                       ; $6a87: $4c
    jr nz, jr_05f_6ace                            ; $6a88: $20 $44

    ret c                                         ; $6a8a: $d8

    ld h, d                                       ; $6a8b: $62
    jp nc, $8100                                  ; $6a8c: $d2 $00 $81

    and b                                         ; $6a8f: $a0
    dec a                                         ; $6a90: $3d
    pop bc                                        ; $6a91: $c1
    add [hl]                                      ; $6a92: $86
    inc hl                                        ; $6a93: $23
    dec b                                         ; $6a94: $05
    add d                                         ; $6a95: $82
    ld bc, $3c53                                  ; $6a96: $01 $53 $3c
    ld c, b                                       ; $6a99: $48
    jr nz, jr_05f_6ae0                            ; $6a9a: $20 $44

    ret c                                         ; $6a9c: $d8

    ld h, d                                       ; $6a9d: $62
    nop                                           ; $6a9e: $00
    add c                                         ; $6a9f: $81
    and c                                         ; $6aa0: $a1
    db $fd                                        ; $6aa1: $fd
    and c                                         ; $6aa2: $a1
    ret z                                         ; $6aa3: $c8

    jr nz, jr_05f_6a3a                            ; $6aa4: $20 $94

    dec b                                         ; $6aa6: $05
    ld bc, $fd47                                  ; $6aa7: $01 $47 $fd
    adc a                                         ; $6aaa: $8f
    inc a                                         ; $6aab: $3c
    ld b, d                                       ; $6aac: $42
    ld e, a                                       ; $6aad: $5f
    ld l, b                                       ; $6aae: $68
    ld b, $c0                                     ; $6aaf: $06 $c0
    and h                                         ; $6ab1: $a4
    jp $c546                                      ; $6ab2: $c3 $46 $c5


    ld bc, $0452                                  ; $6ab5: $01 $52 $04
    ld bc, $3251                                  ; $6ab8: $01 $51 $32
    ld c, d                                       ; $6abb: $4a
    ld e, a                                       ; $6abc: $5f
    ld h, l                                       ; $6abd: $65
    nop                                           ; $6abe: $00
    add b                                         ; $6abf: $80
    and b                                         ; $6ac0: $a0

Jump_05f_6ac1:
    rst $38                                       ; $6ac1: $ff
    and h                                         ; $6ac2: $a4

jr_05f_6ac3:
    ret z                                         ; $6ac3: $c8

    jr nz, jr_05f_6a4b                            ; $6ac4: $20 $85

    dec b                                         ; $6ac6: $05
    ld b, b                                       ; $6ac7: $40
    ld [hl], h                                    ; $6ac8: $74
    ldh a, [$2d]                                  ; $6ac9: $f0 $2d
    inc [hl]                                      ; $6acb: $34
    add h                                         ; $6acc: $84
    ld b, d                                       ; $6acd: $42

jr_05f_6ace:
    add c                                         ; $6ace: $81
    db $10                                        ; $6acf: $10
    ld a, l                                       ; $6ad0: $7d
    and e                                         ; $6ad1: $a3
    add l                                         ; $6ad2: $85
    dec b                                         ; $6ad3: $05
    ld c, a                                       ; $6ad4: $4f
    ret c                                         ; $6ad5: $d8

    inc [hl]                                      ; $6ad6: $34
    sub b                                         ; $6ad7: $90
    sbc [hl]                                      ; $6ad8: $9e
    nop                                           ; $6ad9: $00
    ret nz                                        ; $6ada: $c0

    ld a, [hl]                                    ; $6adb: $7e
    jp $05c7                                      ; $6adc: $c3 $c7 $05


    nop                                           ; $6adf: $00

jr_05f_6ae0:
    db $db                                        ; $6ae0: $db
    ld h, e                                       ; $6ae1: $63
    add d                                         ; $6ae2: $82
    scf                                           ; $6ae3: $37
    cp e                                          ; $6ae4: $bb
    ld h, h                                       ; $6ae5: $64
    ccf                                           ; $6ae6: $3f
    jr nz, jr_05f_6ac3                            ; $6ae7: $20 $da

    ld h, c                                       ; $6ae9: $61
    ld a, a                                       ; $6aea: $7f
    and b                                         ; $6aeb: $a0
    ld [$3c81], sp                                ; $6aec: $08 $81 $3c
    add b                                         ; $6aef: $80

Jump_05f_6af0:
    ret nz                                        ; $6af0: $c0

    rst $00                                       ; $6af1: $c7
    dec b                                         ; $6af2: $05
    db $db                                        ; $6af3: $db
    ld h, l                                       ; $6af4: $65
    ld b, b                                       ; $6af5: $40
    dec [hl]                                      ; $6af6: $35
    and [hl]                                      ; $6af7: $a6
    ld hl, $c3f3                                  ; $6af8: $21 $f3 $c3
    add d                                         ; $6afb: $82
    ld h, d                                       ; $6afc: $62
    ld b, [hl]                                    ; $6afd: $46
    ld b, l                                       ; $6afe: $45
    dec b                                         ; $6aff: $05
    ld b, e                                       ; $6b00: $43
    rst $38                                       ; $6b01: $ff
    ld [c], a                                     ; $6b02: $e2
    ld b, l                                       ; $6b03: $45
    jp Jump_000_0661                              ; $6b04: $c3 $61 $06


    ld b, c                                       ; $6b07: $41
    db $db                                        ; $6b08: $db
    ld h, h                                       ; $6b09: $64
    ld b, c                                       ; $6b0a: $41
    or d                                          ; $6b0b: $b2
    cp [hl]                                       ; $6b0c: $be
    ld bc, $bbb8                                  ; $6b0d: $01 $b8 $bb
    ld h, d                                       ; $6b10: $62
    or c                                          ; $6b11: $b1
    jp nz, $6382                                  ; $6b12: $c2 $82 $63

    ld b, h                                       ; $6b15: $44
    and h                                         ; $6b16: $a4
    ld h, h                                       ; $6b17: $64
    rst $38                                       ; $6b18: $ff
    ldh [$a5], a                                  ; $6b19: $e0 $a5
    pop hl                                        ; $6b1b: $e1
    ld b, h                                       ; $6b1c: $44
    dec a                                         ; $6b1d: $3d
    pop bc                                        ; $6b1e: $c1
    add $d3                                       ; $6b1f: $c6 $d3
    halt                                          ; $6b21: $76
    dec d                                         ; $6b22: $15
    add d                                         ; $6b23: $82
    ld h, e                                       ; $6b24: $63
    ld b, b                                       ; $6b25: $40
    ld l, c                                       ; $6b26: $69
    and e                                         ; $6b27: $a3
    rrca                                          ; $6b28: $0f
    dec [hl]                                      ; $6b29: $35
    dec [hl]                                      ; $6b2a: $35
    and e                                         ; $6b2b: $a3
    ld l, d                                       ; $6b2c: $6a
    ret nz                                        ; $6b2d: $c0

    ldh [$3d], a                                  ; $6b2e: $e0 $3d
    jp nz, $ffff                                  ; $6b30: $c2 $ff $ff

    add b                                         ; $6b33: $80
    res 1, b                                      ; $6b34: $cb $88
    ret nz                                        ; $6b36: $c0

    ldh [$3a], a                                  ; $6b37: $e0 $3a
    ld bc, $e0c0                                  ; $6b39: $01 $c0 $e0
    xor [hl]                                      ; $6b3c: $ae
    dec a                                         ; $6b3d: $3d
    pop bc                                        ; $6b3e: $c1
    ld [bc], a                                    ; $6b3f: $02
    ld e, a                                       ; $6b40: $5f
    add b                                         ; $6b41: $80
    call z, Call_000_3746                         ; $6b42: $cc $46 $37
    ld b, h                                       ; $6b45: $44
    ld l, e                                       ; $6b46: $6b
    ld [hl], c                                    ; $6b47: $71
    rst $38                                       ; $6b48: $ff
    ldh [$6d], a                                  ; $6b49: $e0 $6d
    ld b, h                                       ; $6b4b: $44
    add [hl]                                      ; $6b4c: $86
    ld bc, $519c                                  ; $6b4d: $01 $9c $51
    inc c                                         ; $6b50: $0c
    cp d                                          ; $6b51: $ba
    or h                                          ; $6b52: $b4
    or h                                          ; $6b53: $b4
    ld b, h                                       ; $6b54: $44
    sbc a                                         ; $6b55: $9f
    ret nc                                        ; $6b56: $d0

    ret nz                                        ; $6b57: $c0

    push bc                                       ; $6b58: $c5
    ld a, [hl]                                    ; $6b59: $7e
    add h                                         ; $6b5a: $84
    ld b, l                                       ; $6b5b: $45
    sbc h                                         ; $6b5c: $9c
    ret                                           ; $6b5d: $c9


    ld h, $00                                     ; $6b5e: $26 $00
    ld l, l                                       ; $6b60: $6d
    and l                                         ; $6b61: $a5
    ld a, a                                       ; $6b62: $7f
    add b                                         ; $6b63: $80
    dec a                                         ; $6b64: $3d
    ld h, e                                       ; $6b65: $63
    add [hl]                                      ; $6b66: $86
    ld bc, $e9e7                                  ; $6b67: $01 $e7 $e9
    ld sp, hl                                     ; $6b6a: $f9
    jr jr_05f_6b87                                ; $6b6b: $18 $1a

    add l                                         ; $6b6d: $85
    dec hl                                        ; $6b6e: $2b
    and d                                         ; $6b6f: $a2
    nop                                           ; $6b70: $00
    dec sp                                        ; $6b71: $3b
    nop                                           ; $6b72: $00
    cp $e2                                        ; $6b73: $fe $e2
    add h                                         ; $6b75: $84
    ld b, c                                       ; $6b76: $41
    rst $20                                       ; $6b77: $e7
    ld [$737f], a                                 ; $6b78: $ea $7f $73
    db $dd                                        ; $6b7b: $dd
    ld c, c                                       ; $6b7c: $49
    rra                                           ; $6b7d: $1f
    dec hl                                        ; $6b7e: $2b
    ld [hl], d                                    ; $6b7f: $72
    ld b, b                                       ; $6b80: $40
    nop                                           ; $6b81: $00
    rst $20                                       ; $6b82: $e7
    di                                            ; $6b83: $f3
    dec sp                                        ; $6b84: $3b
    ld a, h                                       ; $6b85: $7c
    ld h, l                                       ; $6b86: $65

jr_05f_6b87:
    ld [$d300], sp                                ; $6b87: $08 $00 $d3
    nop                                           ; $6b8a: $00
    nop                                           ; $6b8b: $00
    nop                                           ; $6b8c: $00
    pop bc                                        ; $6b8d: $c1
    nop                                           ; $6b8e: $00
    rst $38                                       ; $6b8f: $ff
    rst $38                                       ; $6b90: $ff
    rst $38                                       ; $6b91: $ff
    rst $38                                       ; $6b92: $ff
    rst $38                                       ; $6b93: $ff
    rst $38                                       ; $6b94: $ff
    rst $38                                       ; $6b95: $ff
    rst $38                                       ; $6b96: $ff
    rst $38                                       ; $6b97: $ff
    rst $38                                       ; $6b98: $ff
    nop                                           ; $6b99: $00
    nop                                           ; $6b9a: $00
    ld bc, $fe80                                  ; $6b9b: $01 $80 $fe
    ldh [rIE], a                                  ; $6b9e: $e0 $ff
    rst $38                                       ; $6ba0: $ff
    rst $38                                       ; $6ba1: $ff
    rst $38                                       ; $6ba2: $ff
    rst $38                                       ; $6ba3: $ff
    add sp, $00                                   ; $6ba4: $e8 $00
    nop                                           ; $6ba6: $00
    nop                                           ; $6ba7: $00
    ld [bc], a                                    ; $6ba8: $02
    nop                                           ; $6ba9: $00
    ld a, [de]                                    ; $6baa: $1a
    inc c                                         ; $6bab: $0c
    ld [bc], a                                    ; $6bac: $02
    ld bc, $0d16                                  ; $6bad: $01 $16 $0d
    ld [bc], a                                    ; $6bb0: $02
    ld [bc], a                                    ; $6bb1: $02
    ld d, $10                                     ; $6bb2: $16 $10
    ld [bc], a                                    ; $6bb4: $02
    inc bc                                        ; $6bb5: $03
    ld [hl+], a                                   ; $6bb6: $22
    db $10                                        ; $6bb7: $10
    ld [bc], a                                    ; $6bb8: $02
    inc b                                         ; $6bb9: $04
    rla                                           ; $6bba: $17
    ld de, $0502                                  ; $6bbb: $11 $02 $05
    jr z, @+$15                                   ; $6bbe: $28 $13

    ld [bc], a                                    ; $6bc0: $02
    ld b, $2a                                     ; $6bc1: $06 $2a
    dec d                                         ; $6bc3: $15
    ld [bc], a                                    ; $6bc4: $02
    rlca                                          ; $6bc5: $07
    jr jr_05f_6be1                                ; $6bc6: $18 $19

    ld [bc], a                                    ; $6bc8: $02
    ld [$192d], sp                                ; $6bc9: $08 $2d $19
    ld [bc], a                                    ; $6bcc: $02
    add hl, bc                                    ; $6bcd: $09
    ld l, $1a                                     ; $6bce: $2e $1a
    ld [bc], a                                    ; $6bd0: $02
    ld a, [bc]                                    ; $6bd1: $0a
    jr @+$1d                                      ; $6bd2: $18 $1b

    ld [bc], a                                    ; $6bd4: $02
    dec bc                                        ; $6bd5: $0b
    inc l                                         ; $6bd6: $2c
    dec de                                        ; $6bd7: $1b
    ld [bc], a                                    ; $6bd8: $02
    inc c                                         ; $6bd9: $0c
    add hl, de                                    ; $6bda: $19
    inc e                                         ; $6bdb: $1c
    ld [bc], a                                    ; $6bdc: $02
    dec c                                         ; $6bdd: $0d
    dec l                                         ; $6bde: $2d
    inc e                                         ; $6bdf: $1c
    ld [bc], a                                    ; $6be0: $02

jr_05f_6be1:
    ld c, $1a                                     ; $6be1: $0e $1a
    dec e                                         ; $6be3: $1d
    ld [bc], a                                    ; $6be4: $02
    rrca                                          ; $6be5: $0f
    dec de                                        ; $6be6: $1b
    dec e                                         ; $6be7: $1d
    ld [bc], a                                    ; $6be8: $02
    db $10                                        ; $6be9: $10
    dec e                                         ; $6bea: $1d
    ld e, $02                                     ; $6beb: $1e $02
    ld de, $1f1f                                  ; $6bed: $11 $1f $1f
    ld [bc], a                                    ; $6bf0: $02
    ld [de], a                                    ; $6bf1: $12
    jr nz, jr_05f_6c13                            ; $6bf2: $20 $1f

    ld [bc], a                                    ; $6bf4: $02
    inc de                                        ; $6bf5: $13
    ld hl, $0220                                  ; $6bf6: $21 $20 $02
    inc d                                         ; $6bf9: $14
    dec hl                                        ; $6bfa: $2b
    jr nz, jr_05f_6bff                            ; $6bfb: $20 $02

    dec d                                         ; $6bfd: $15
    rra                                           ; $6bfe: $1f

jr_05f_6bff:
    inc h                                         ; $6bff: $24
    ld [bc], a                                    ; $6c00: $02
    ld d, $20                                     ; $6c01: $16 $20
    dec h                                         ; $6c03: $25
    ld [bc], a                                    ; $6c04: $02
    rla                                           ; $6c05: $17
    add hl, hl                                    ; $6c06: $29
    dec h                                         ; $6c07: $25
    ld [bc], a                                    ; $6c08: $02
    jr jr_05f_6c27                                ; $6c09: $18 $1c

    dec hl                                        ; $6c0b: $2b
    ld [bc], a                                    ; $6c0c: $02
    add hl, de                                    ; $6c0d: $19
    ld e, $2c                                     ; $6c0e: $1e $2c
    ld [bc], a                                    ; $6c10: $02
    ld a, [de]                                    ; $6c11: $1a
    dec e                                         ; $6c12: $1d

jr_05f_6c13:
    dec l                                         ; $6c13: $2d
    ld [bc], a                                    ; $6c14: $02
    dec de                                        ; $6c15: $1b
    rra                                           ; $6c16: $1f
    cpl                                           ; $6c17: $2f
    ld [bc], a                                    ; $6c18: $02
    inc e                                         ; $6c19: $1c
    dec h                                         ; $6c1a: $25
    ld [hl-], a                                   ; $6c1b: $32
    ld [bc], a                                    ; $6c1c: $02
    dec e                                         ; $6c1d: $1d
    dec e                                         ; $6c1e: $1d
    inc sp                                        ; $6c1f: $33
    ld [bc], a                                    ; $6c20: $02
    ld e, $1e                                     ; $6c21: $1e $1e
    inc [hl]                                      ; $6c23: $34
    ld [bc], a                                    ; $6c24: $02
    rra                                           ; $6c25: $1f
    dec e                                         ; $6c26: $1d

jr_05f_6c27:
    dec [hl]                                      ; $6c27: $35
    ld [bc], a                                    ; $6c28: $02
    jr nz, @+$23                                  ; $6c29: $20 $21

    dec [hl]                                      ; $6c2b: $35
    ld [bc], a                                    ; $6c2c: $02
    ld hl, $3626                                  ; $6c2d: $21 $26 $36
    ld [bc], a                                    ; $6c30: $02
    ld [hl+], a                                   ; $6c31: $22

Call_05f_6c32:
    jr z, @+$3b                                   ; $6c32: $28 $39

    ld [bc], a                                    ; $6c34: $02
    inc hl                                        ; $6c35: $23
    daa                                           ; $6c36: $27
    ld a, [hl-]                                   ; $6c37: $3a
    rst $38                                       ; $6c38: $ff
    rst $38                                       ; $6c39: $ff
    rst $38                                       ; $6c3a: $ff
    ld b, e                                       ; $6c3b: $43
    ld l, h                                       ; $6c3c: $6c
    ld [hl], e                                    ; $6c3d: $73
    ld l, h                                       ; $6c3e: $6c
    ld [bc], a                                    ; $6c3f: $02
    ld l, [hl]                                    ; $6c40: $6e
    rst $10                                       ; $6c41: $d7
    ld l, a                                       ; $6c42: $6f
    ld [$c503], a                                 ; $6c43: $ea $03 $c5
    ld b, $e2                                     ; $6c46: $06 $e2
    ld bc, $00a0                                  ; $6c48: $01 $a0 $00
    ld [$f003], a                                 ; $6c4b: $ea $03 $f0
    inc bc                                        ; $6c4e: $03
    push bc                                       ; $6c4f: $c5
    ld b, $e2                                     ; $6c50: $06 $e2
    ld bc, $023f                                  ; $6c52: $01 $3f $02
    xor e                                         ; $6c55: $ab
    nop                                           ; $6c56: $00
    inc sp                                        ; $6c57: $33
    ld bc, $06c5                                  ; $6c58: $01 $c5 $06
    ld [$0825], sp                                ; $6c5b: $08 $25 $08
    dec h                                         ; $6c5e: $25
    ld [$0825], sp                                ; $6c5f: $08 $25 $08
    dec h                                         ; $6c62: $25
    ld [$0825], sp                                ; $6c63: $08 $25 $08
    dec h                                         ; $6c66: $25
    ld [$0825], sp                                ; $6c67: $08 $25 $08
    dec h                                         ; $6c6a: $25
    ld [$0825], sp                                ; $6c6b: $08 $25 $08
    dec h                                         ; $6c6e: $25
    ld [$0825], sp                                ; $6c6f: $08 $25 $08
    dec h                                         ; $6c72: $25
    dec hl                                        ; $6c73: $2b
    ld a, [bc]                                    ; $6c74: $0a
    dec bc                                        ; $6c75: $0b
    rst $38                                       ; $6c76: $ff
    ld [$f14b], a                                 ; $6c77: $ea $4b $f1
    pop hl                                        ; $6c7a: $e1
    inc c                                         ; $6c7b: $0c
    rst $38                                       ; $6c7c: $ff
    rst $38                                       ; $6c7d: $ff
    rst $20                                       ; $6c7e: $e7
    and $f7                                       ; $6c7f: $e6 $f7
    dec bc                                        ; $6c81: $0b
    dec bc                                        ; $6c82: $0b
    ld l, e                                       ; $6c83: $6b
    db $fd                                        ; $6c84: $fd
    ldh [rOCPD], a                                ; $6c85: $e0 $6b
    ld c, e                                       ; $6c87: $4b
    ld l, e                                       ; $6c88: $6b
    ld c, e                                       ; $6c89: $4b
    ld h, b                                       ; $6c8a: $60
    rst $38                                       ; $6c8b: $ff
    pop hl                                        ; $6c8c: $e1
    ret nz                                        ; $6c8d: $c0

    ldh [$af], a                                  ; $6c8e: $e0 $af
    ldh [$ca], a                                  ; $6c90: $e0 $ca
    rst $38                                       ; $6c92: $ff
    ret nz                                        ; $6c93: $c0

    add sp, $0a                                   ; $6c94: $e8 $0a
    ld l, e                                       ; $6c96: $6b
    pop bc                                        ; $6c97: $c1
    ldh [$f9], a                                  ; $6c98: $e0 $f9
    dec bc                                        ; $6c9a: $0b
    call nz, $82e1                                ; $6c9b: $c4 $e1 $82
    ldh [rWX], a                                  ; $6c9e: $e0 $4b
    dec bc                                        ; $6ca0: $0b
    dec hl                                        ; $6ca1: $2b
    dec bc                                        ; $6ca2: $0b
    ld a, [bc]                                    ; $6ca3: $0a
    add hl, bc                                    ; $6ca4: $09
    ld a, [bc]                                    ; $6ca5: $0a
    jp z, $80ff                                   ; $6ca6: $ca $ff $80

    jp hl                                         ; $6ca9: $e9


    dec hl                                        ; $6caa: $2b
    ld a, [hl]                                    ; $6cab: $7e
    pop hl                                        ; $6cac: $e1
    call nz, $81e2                                ; $6cad: $c4 $e2 $81
    pop hl                                        ; $6cb0: $e1
    ld b, b                                       ; $6cb1: $40
    rst $38                                       ; $6cb2: $ff
    ret nz                                        ; $6cb3: $c0

    ret nz                                        ; $6cb4: $c0

    rst $28                                       ; $6cb5: $ef
    db $fc                                        ; $6cb6: $fc
    db $e3                                        ; $6cb7: $e3
    ld b, c                                       ; $6cb8: $41
    pop hl                                        ; $6cb9: $e1
    or [hl]                                       ; $6cba: $b6
    ld [c], a                                     ; $6cbb: $e2
    ret nz                                        ; $6cbc: $c0

    rst $38                                       ; $6cbd: $ff
    ld b, b                                       ; $6cbe: $40
    ld [$0b2b], a                                 ; $6cbf: $ea $2b $0b
    ld d, e                                       ; $6cc2: $53
    ld c, e                                       ; $6cc3: $4b
    dec hl                                        ; $6cc4: $2b
    cp h                                          ; $6cc5: $bc
    pop hl                                        ; $6cc6: $e1
    inc a                                         ; $6cc7: $3c
    pop hl                                        ; $6cc8: $e1
    dec hl                                        ; $6cc9: $2b
    call nz, Call_000_2ce1                        ; $6cca: $c4 $e1 $2c
    jp z, Jump_000_0eff                           ; $6ccd: $ca $ff $0e

    add sp, -$19                                  ; $6cd0: $e8 $e7
    ld a, [bc]                                    ; $6cd2: $0a
    dec bc                                        ; $6cd3: $0b
    dec hl                                        ; $6cd4: $2b
    ret                                           ; $6cd5: $c9


    ldh [$c0], a                                  ; $6cd6: $e0 $c0
    ld [c], a                                     ; $6cd8: $e2
    ld bc, $c0e1                                  ; $6cd9: $01 $e1 $c0
    rst $38                                       ; $6cdc: $ff
    ld [hl], b                                    ; $6cdd: $70
    add b                                         ; $6cde: $80
    rst $28                                       ; $6cdf: $ef
    set 0, b                                      ; $6ce0: $cb $c0
    ret nz                                        ; $6ce2: $c0

    db $e3                                        ; $6ce3: $e3
    ld [hl], l                                    ; $6ce4: $75
    pop bc                                        ; $6ce5: $c1
    inc c                                         ; $6ce6: $0c
    inc c                                         ; $6ce7: $0c
    ld c, h                                       ; $6ce8: $4c
    set 7, a                                      ; $6ce9: $cb $ff
    nop                                           ; $6ceb: $00
    ret nz                                        ; $6cec: $c0

    set 0, b                                      ; $6ced: $cb $c0
    pop hl                                        ; $6cef: $e1
    add c                                         ; $6cf0: $81
    jp nz, $c1b8                                  ; $6cf1: $c2 $b8 $c1

    ret nz                                        ; $6cf4: $c0

    rst $38                                       ; $6cf5: $ff
    ret nz                                        ; $6cf6: $c0

    pop af                                        ; $6cf7: $f1
    ld b, l                                       ; $6cf8: $45
    jp nz, $e282                                  ; $6cf9: $c2 $82 $e2

    db $10                                        ; $6cfc: $10
    rst $38                                       ; $6cfd: $ff
    rst $38                                       ; $6cfe: $ff
    add b                                         ; $6cff: $80
    ret nc                                        ; $6d00: $d0

    call nz, $c3a2                                ; $6d01: $c4 $a2 $c3
    ret nz                                        ; $6d04: $c0

    ld l, h                                       ; $6d05: $6c
    ret nc                                        ; $6d06: $d0

    rst $38                                       ; $6d07: $ff
    ret nz                                        ; $6d08: $c0

    ret nc                                        ; $6d09: $d0

    cp [hl]                                       ; $6d0a: $be
    pop bc                                        ; $6d0b: $c1
    nop                                           ; $6d0c: $00
    add e                                         ; $6d0d: $83
    and d                                         ; $6d0e: $a2
    add c                                         ; $6d0f: $81
    rst $38                                       ; $6d10: $ff
    ret nz                                        ; $6d11: $c0

    di                                            ; $6d12: $f3
    cp a                                          ; $6d13: $bf
    db $e3                                        ; $6d14: $e3
    add l                                         ; $6d15: $85
    and b                                         ; $6d16: $a0
    pop de                                        ; $6d17: $d1
    db $e3                                        ; $6d18: $e3
    add b                                         ; $6d19: $80
    rst $18                                       ; $6d1a: $df
    ret nz                                        ; $6d1b: $c0

    xor l                                         ; $6d1c: $ad
    adc b                                         ; $6d1d: $88
    nop                                           ; $6d1e: $00
    ret nz                                        ; $6d1f: $c0

    cp d                                          ; $6d20: $ba
    pop hl                                        ; $6d21: $e1
    add b                                         ; $6d22: $80
    db $e3                                        ; $6d23: $e3
    ld l, h                                       ; $6d24: $6c
    ld a, [hl-]                                   ; $6d25: $3a
    rst $38                                       ; $6d26: $ff
    ret nz                                        ; $6d27: $c0

    xor h                                         ; $6d28: $ac
    ld a, l                                       ; $6d29: $7d
    add h                                         ; $6d2a: $84
    dec hl                                        ; $6d2b: $2b
    pop hl                                        ; $6d2c: $e1
    dec bc                                        ; $6d2d: $0b
    add l                                         ; $6d2e: $85
    jp nz, $ffc1                                  ; $6d2f: $c2 $c1 $ff

    ld b, b                                       ; $6d32: $40
    xor $c0                                       ; $6d33: $ee $c0
    push hl                                       ; $6d35: $e5
    dec bc                                        ; $6d36: $0b
    inc l                                         ; $6d37: $2c
    inc l                                         ; $6d38: $2c
    nop                                           ; $6d39: $00
    ld b, d                                       ; $6d3a: $42
    ret nz                                        ; $6d3b: $c0

    ld sp, hl                                     ; $6d3c: $f9
    rst $18                                       ; $6d3d: $df
    rst $38                                       ; $6d3e: $ff
    rst $38                                       ; $6d3f: $ff
    rst $38                                       ; $6d40: $ff
    rst $38                                       ; $6d41: $ff
    rst $38                                       ; $6d42: $ff
    rst $38                                       ; $6d43: $ff
    rst $38                                       ; $6d44: $ff
    rst $38                                       ; $6d45: $ff
    rst $38                                       ; $6d46: $ff
    rst $38                                       ; $6d47: $ff
    rst $38                                       ; $6d48: $ff
    rst $38                                       ; $6d49: $ff
    nop                                           ; $6d4a: $00
    rst $38                                       ; $6d4b: $ff
    rst $38                                       ; $6d4c: $ff
    rst $38                                       ; $6d4d: $ff
    rst $38                                       ; $6d4e: $ff
    rst $38                                       ; $6d4f: $ff
    rst $38                                       ; $6d50: $ff
    rst $38                                       ; $6d51: $ff
    rst $38                                       ; $6d52: $ff
    rst $38                                       ; $6d53: $ff
    rst $38                                       ; $6d54: $ff
    rst $38                                       ; $6d55: $ff
    rst $38                                       ; $6d56: $ff
    rst $38                                       ; $6d57: $ff
    rst $38                                       ; $6d58: $ff
    rst $38                                       ; $6d59: $ff
    rst $38                                       ; $6d5a: $ff
    nop                                           ; $6d5b: $00
    rst $38                                       ; $6d5c: $ff
    rst $38                                       ; $6d5d: $ff
    rst $38                                       ; $6d5e: $ff
    rst $38                                       ; $6d5f: $ff
    rst $38                                       ; $6d60: $ff
    rst $38                                       ; $6d61: $ff
    rst $38                                       ; $6d62: $ff
    rst $38                                       ; $6d63: $ff
    rst $38                                       ; $6d64: $ff
    rst $38                                       ; $6d65: $ff
    rst $38                                       ; $6d66: $ff
    rst $38                                       ; $6d67: $ff
    rst $38                                       ; $6d68: $ff
    rst $38                                       ; $6d69: $ff
    rst $38                                       ; $6d6a: $ff
    rst $38                                       ; $6d6b: $ff
    nop                                           ; $6d6c: $00
    rst $38                                       ; $6d6d: $ff
    rst $38                                       ; $6d6e: $ff
    rst $38                                       ; $6d6f: $ff
    rst $38                                       ; $6d70: $ff
    rst $38                                       ; $6d71: $ff
    rst $38                                       ; $6d72: $ff
    rst $38                                       ; $6d73: $ff
    rst $38                                       ; $6d74: $ff
    rst $38                                       ; $6d75: $ff
    rst $38                                       ; $6d76: $ff
    rst $38                                       ; $6d77: $ff
    rst $38                                       ; $6d78: $ff
    rst $38                                       ; $6d79: $ff
    rst $38                                       ; $6d7a: $ff
    rst $38                                       ; $6d7b: $ff
    rst $38                                       ; $6d7c: $ff
    nop                                           ; $6d7d: $00
    rst $38                                       ; $6d7e: $ff
    rst $38                                       ; $6d7f: $ff
    rst $38                                       ; $6d80: $ff
    rst $38                                       ; $6d81: $ff
    rst $38                                       ; $6d82: $ff
    rst $38                                       ; $6d83: $ff
    rst $38                                       ; $6d84: $ff
    rst $38                                       ; $6d85: $ff
    rst $38                                       ; $6d86: $ff
    rst $38                                       ; $6d87: $ff
    rst $38                                       ; $6d88: $ff
    rst $38                                       ; $6d89: $ff
    rst $38                                       ; $6d8a: $ff
    rst $38                                       ; $6d8b: $ff
    rst $38                                       ; $6d8c: $ff
    rst $38                                       ; $6d8d: $ff
    nop                                           ; $6d8e: $00
    rst $38                                       ; $6d8f: $ff
    rst $38                                       ; $6d90: $ff
    rst $38                                       ; $6d91: $ff
    rst $38                                       ; $6d92: $ff
    rst $38                                       ; $6d93: $ff
    rst $38                                       ; $6d94: $ff
    rst $38                                       ; $6d95: $ff
    rst $38                                       ; $6d96: $ff
    rst $38                                       ; $6d97: $ff
    rst $38                                       ; $6d98: $ff
    rst $38                                       ; $6d99: $ff
    rst $38                                       ; $6d9a: $ff
    rst $38                                       ; $6d9b: $ff
    rst $38                                       ; $6d9c: $ff
    rst $38                                       ; $6d9d: $ff
    rst $38                                       ; $6d9e: $ff
    nop                                           ; $6d9f: $00
    rst $38                                       ; $6da0: $ff
    rst $38                                       ; $6da1: $ff
    rst $38                                       ; $6da2: $ff
    rst $38                                       ; $6da3: $ff
    rst $38                                       ; $6da4: $ff
    rst $38                                       ; $6da5: $ff
    rst $38                                       ; $6da6: $ff
    rst $38                                       ; $6da7: $ff
    rst $38                                       ; $6da8: $ff
    rst $38                                       ; $6da9: $ff
    rst $38                                       ; $6daa: $ff
    rst $38                                       ; $6dab: $ff
    rst $38                                       ; $6dac: $ff
    rst $38                                       ; $6dad: $ff
    rst $38                                       ; $6dae: $ff
    rst $38                                       ; $6daf: $ff
    nop                                           ; $6db0: $00
    rst $38                                       ; $6db1: $ff
    rst $38                                       ; $6db2: $ff
    rst $38                                       ; $6db3: $ff
    rst $38                                       ; $6db4: $ff
    rst $38                                       ; $6db5: $ff
    rst $38                                       ; $6db6: $ff
    rst $38                                       ; $6db7: $ff
    rst $38                                       ; $6db8: $ff
    rst $38                                       ; $6db9: $ff
    rst $38                                       ; $6dba: $ff
    rst $38                                       ; $6dbb: $ff
    rst $38                                       ; $6dbc: $ff
    rst $38                                       ; $6dbd: $ff
    rst $38                                       ; $6dbe: $ff

Jump_05f_6dbf:
    rst $38                                       ; $6dbf: $ff
    rst $38                                       ; $6dc0: $ff
    nop                                           ; $6dc1: $00
    rst $38                                       ; $6dc2: $ff
    rst $38                                       ; $6dc3: $ff
    rst $38                                       ; $6dc4: $ff
    rst $38                                       ; $6dc5: $ff
    rst $38                                       ; $6dc6: $ff
    rst $38                                       ; $6dc7: $ff
    rst $38                                       ; $6dc8: $ff
    rst $38                                       ; $6dc9: $ff
    rst $38                                       ; $6dca: $ff
    rst $38                                       ; $6dcb: $ff
    rst $38                                       ; $6dcc: $ff
    rst $38                                       ; $6dcd: $ff
    rst $38                                       ; $6dce: $ff
    rst $38                                       ; $6dcf: $ff
    rst $38                                       ; $6dd0: $ff
    rst $38                                       ; $6dd1: $ff
    nop                                           ; $6dd2: $00
    rst $38                                       ; $6dd3: $ff
    rst $38                                       ; $6dd4: $ff
    rst $38                                       ; $6dd5: $ff
    rst $38                                       ; $6dd6: $ff
    rst $38                                       ; $6dd7: $ff
    rst $38                                       ; $6dd8: $ff
    rst $38                                       ; $6dd9: $ff
    rst $38                                       ; $6dda: $ff
    rst $38                                       ; $6ddb: $ff
    rst $38                                       ; $6ddc: $ff
    rst $38                                       ; $6ddd: $ff
    rst $38                                       ; $6dde: $ff
    rst $38                                       ; $6ddf: $ff
    rst $38                                       ; $6de0: $ff
    rst $38                                       ; $6de1: $ff
    rst $38                                       ; $6de2: $ff
    nop                                           ; $6de3: $00
    rst $38                                       ; $6de4: $ff
    rst $38                                       ; $6de5: $ff
    rst $38                                       ; $6de6: $ff
    rst $38                                       ; $6de7: $ff
    rst $38                                       ; $6de8: $ff
    rst $38                                       ; $6de9: $ff
    rst $38                                       ; $6dea: $ff
    rst $38                                       ; $6deb: $ff
    rst $38                                       ; $6dec: $ff
    rst $38                                       ; $6ded: $ff
    rst $38                                       ; $6dee: $ff
    rst $38                                       ; $6def: $ff
    rst $38                                       ; $6df0: $ff
    rst $38                                       ; $6df1: $ff
    rst $38                                       ; $6df2: $ff
    rst $38                                       ; $6df3: $ff
    nop                                           ; $6df4: $00
    rst $38                                       ; $6df5: $ff
    rst $38                                       ; $6df6: $ff
    rst $38                                       ; $6df7: $ff
    rst $38                                       ; $6df8: $ff
    rst $38                                       ; $6df9: $ff
    rst $38                                       ; $6dfa: $ff
    rst $38                                       ; $6dfb: $ff
    rst $38                                       ; $6dfc: $ff
    rst $38                                       ; $6dfd: $ff
    db $f4                                        ; $6dfe: $f4
    nop                                           ; $6dff: $00
    nop                                           ; $6e00: $00
    nop                                           ; $6e01: $00
    rst $18                                       ; $6e02: $df
    ld e, d                                       ; $6e03: $5a
    ld e, e                                       ; $6e04: $5b
    ld e, e                                       ; $6e05: $5b
    ld h, b                                       ; $6e06: $60
    ld sp, $e7ff                                  ; $6e07: $31 $ff $e7
    ld e, a                                       ; $6e0a: $5f
    ld e, e                                       ; $6e0b: $5b
    ld a, [c]                                     ; $6e0c: $f2

Call_05f_6e0d:
    rst $38                                       ; $6e0d: $ff
    ldh [rP1], a                                  ; $6e0e: $e0 $00
    rst $38                                       ; $6e10: $ff
    rst $38                                       ; $6e11: $ff
    rst $20                                       ; $6e12: $e7
    and $5b                                       ; $6e13: $e6 $5b
    ld e, e                                       ; $6e15: $5b
    ld e, a                                       ; $6e16: $5f
    ld sp, $31ff                                  ; $6e17: $31 $ff $31
    ld c, l                                       ; $6e1a: $4d
    ld a, [hl-]                                   ; $6e1b: $3a
    ld d, l                                       ; $6e1c: $55
    ld d, h                                       ; $6e1d: $54
    ld d, h                                       ; $6e1e: $54
    ld d, l                                       ; $6e1f: $55
    ld d, l                                       ; $6e20: $55
    rra                                           ; $6e21: $1f
    dec sp                                        ; $6e22: $3b
    ld c, l                                       ; $6e23: $4d
    ld sp, $5b5e                                  ; $6e24: $31 $5e $5b
    xor a                                         ; $6e27: $af
    ldh [$ca], a                                  ; $6e28: $e0 $ca
    rst $38                                       ; $6e2a: $ff
    ret nz                                        ; $6e2b: $c0

    add sp, -$41                                  ; $6e2c: $e8 $bf
    ld e, d                                       ; $6e2e: $5a
    ld e, [hl]                                    ; $6e2f: $5e
    ld sp, $324d                                  ; $6e30: $31 $4d $32
    jr nc, @+$01                                  ; $6e33: $30 $ff

    db $e3                                        ; $6e35: $e3
    ld [hl-], a                                   ; $6e36: $32
    ccf                                           ; $6e37: $3f
    ld c, l                                       ; $6e38: $4d
    ld sp, $5b60                                  ; $6e39: $31 $60 $5b
    ld e, d                                       ; $6e3c: $5a
    ld e, d                                       ; $6e3d: $5a
    jp z, $80ff                                   ; $6e3e: $ca $ff $80

    jp hl                                         ; $6e41: $e9


    ld a, a                                       ; $6e42: $7f
    ld h, c                                       ; $6e43: $61
    ld sp, $3039                                  ; $6e44: $31 $39 $30
    jr nc, @+$6e                                  ; $6e47: $30 $6c

    ld l, h                                       ; $6e49: $6c
    cp l                                          ; $6e4a: $bd
    ld [c], a                                     ; $6e4b: $e2
    ccf                                           ; $6e4c: $3f
    add hl, sp                                    ; $6e4d: $39
    ld sp, $6231                                  ; $6e4e: $31 $31 $62
    ld h, d                                       ; $6e51: $62
    ld h, d                                       ; $6e52: $62
    jp z, $c0ff                                   ; $6e53: $ca $ff $c0

    db $eb                                        ; $6e56: $eb
    cp a                                          ; $6e57: $bf
    ld d, e                                       ; $6e58: $53
    jr nc, @+$6f                                  ; $6e59: $30 $6d

    ld l, h                                       ; $6e5b: $6c
    ld l, h                                       ; $6e5c: $6c
    ld l, d                                       ; $6e5d: $6a
    ld a, h                                       ; $6e5e: $7c
    pop hl                                        ; $6e5f: $e1
    ld d, d                                       ; $6e60: $52
    ld a, b                                       ; $6e61: $78
    push af                                       ; $6e62: $f5
    jp nz, $ffca                                  ; $6e63: $c2 $ca $ff

    ld b, b                                       ; $6e66: $40
    jp hl                                         ; $6e67: $e9


    ld h, c                                       ; $6e68: $61
    ld sp, $6d52                                  ; $6e69: $31 $52 $6d
    ret nz                                        ; $6e6c: $c0

    pop hl                                        ; $6e6d: $e1
    ld a, [hl]                                    ; $6e6e: $7e
    cp a                                          ; $6e6f: $bf
    pop hl                                        ; $6e70: $e1
    ld d, d                                       ; $6e71: $52
    ld sp, $1429                                  ; $6e72: $31 $29 $14
    inc d                                         ; $6e75: $14
    add hl, hl                                    ; $6e76: $29
    jp z, $e2ff                                   ; $6e77: $ca $ff $e2

    add sp, -$19                                  ; $6e7a: $e8 $e7
    ld e, d                                       ; $6e7c: $5a
    ld b, b                                       ; $6e7d: $40
    ldh [$c0], a                                  ; $6e7e: $e0 $c0
    db $e4                                        ; $6e80: $e4
    ld a, [hl]                                    ; $6e81: $7e
    ldh [$39], a                                  ; $6e82: $e0 $39
    ld sp, $a72b                                  ; $6e84: $31 $2b $a7
    inc h                                         ; $6e87: $24
    inc h                                         ; $6e88: $24
    dec hl                                        ; $6e89: $2b
    jp z, $80ff                                   ; $6e8a: $ca $ff $80

    db $eb                                        ; $6e8d: $eb
    ld d, e                                       ; $6e8e: $53
    ret nz                                        ; $6e8f: $c0

    db $e4                                        ; $6e90: $e4
    ld l, d                                       ; $6e91: $6a
    ccf                                           ; $6e92: $3f
    ld b, d                                       ; $6e93: $42
    scf                                           ; $6e94: $37
    ld sp, $2c2b                                  ; $6e95: $31 $2b $2c
    jr nz, @-$33                                  ; $6e98: $20 $cb

    rst $38                                       ; $6e9a: $ff
    nop                                           ; $6e9b: $00
    db $ed                                        ; $6e9c: $ed
    ld l, a                                       ; $6e9d: $6f
    ld l, l                                       ; $6e9e: $6d
    ld l, l                                       ; $6e9f: $6d
    jr nc, jr_05f_6ed2                            ; $6ea0: $30 $30

    pop bc                                        ; $6ea2: $c1
    pop hl                                        ; $6ea3: $e1
    inc a                                         ; $6ea4: $3c
    ld sp, $ffc0                                  ; $6ea5: $31 $c0 $ff
    ld [c], a                                     ; $6ea8: $e2
    add b                                         ; $6ea9: $80
    ret nc                                        ; $6eaa: $d0

    ld d, d                                       ; $6eab: $52
    pop bc                                        ; $6eac: $c1
    ldh [$bf], a                                  ; $6ead: $e0 $bf
    ldh [$c1], a                                  ; $6eaf: $e0 $c1
    ldh [rNR11], a                                ; $6eb1: $e0 $11
    ld [de], a                                    ; $6eb3: $12
    ld d, $f1                                     ; $6eb4: $16 $f1
    jr nz, @-$3e                                  ; $6eb6: $20 $c0

    rst $38                                       ; $6eb8: $ff
    ret nz                                        ; $6eb9: $c0

    xor $01                                       ; $6eba: $ee $01
    jp Jump_000_3152                              ; $6ebc: $c3 $52 $31


    dec d                                         ; $6ebf: $15
    ld d, $b3                                     ; $6ec0: $16 $b3
    jr z, jr_05f_6ee4                             ; $6ec2: $28 $20

    ret nz                                        ; $6ec4: $c0

    rst $38                                       ; $6ec5: $ff
    ret nz                                        ; $6ec6: $c0

    adc $39                                       ; $6ec7: $ce $39
    ld l, h                                       ; $6ec9: $6c
    rst $38                                       ; $6eca: $ff

jr_05f_6ecb:
    ld [c], a                                     ; $6ecb: $e2
    add hl, sp                                    ; $6ecc: $39
    ld h, e                                       ; $6ecd: $63
    ld sp, $c117                                  ; $6ece: $31 $17 $c1
    pop hl                                        ; $6ed1: $e1

jr_05f_6ed2:
    ret nz                                        ; $6ed2: $c0

    rst $38                                       ; $6ed3: $ff
    add b                                         ; $6ed4: $80
    call Call_000_36af                            ; $6ed5: $cd $af $36
    cp a                                          ; $6ed8: $bf
    pop hl                                        ; $6ed9: $e1
    jp $af36                                      ; $6eda: $c3 $36 $af


    inc bc                                        ; $6edd: $03
    pop hl                                        ; $6ede: $e1
    ret nz                                        ; $6edf: $c0

    ldh [$80], a                                  ; $6ee0: $e0 $80
    rst $18                                       ; $6ee2: $df
    add b                                         ; $6ee3: $80

jr_05f_6ee4:
    xor h                                         ; $6ee4: $ac
    add c                                         ; $6ee5: $81
    ld l, a                                       ; $6ee6: $6f
    cp a                                          ; $6ee7: $bf
    ld l, [hl]                                    ; $6ee8: $6e
    ld d, l                                       ; $6ee9: $55
    ld d, h                                       ; $6eea: $54
    ld l, [hl]                                    ; $6eeb: $6e
    ld l, a                                       ; $6eec: $6f
    add c                                         ; $6eed: $81
    ret nz                                        ; $6eee: $c0

    db $e3                                        ; $6eef: $e3
    jr z, jr_05f_6ecb                             ; $6ef0: $28 $d9

    rla                                           ; $6ef2: $17
    jp z, $c0ff                                   ; $6ef3: $ca $ff $c0

    xor e                                         ; $6ef6: $ab
    and b                                         ; $6ef7: $a0
    add b                                         ; $6ef8: $80
    rst $38                                       ; $6ef9: $ff
    ld [c], a                                     ; $6efa: $e2
    and b                                         ; $6efb: $a0
    ld sp, $178d                                  ; $6efc: $31 $8d $17
    add b                                         ; $6eff: $80
    pop hl                                        ; $6f00: $e1
    ld d, $15                                     ; $6f01: $16 $15
    jp z, $c0ff                                   ; $6f03: $ca $ff $c0

    xor e                                         ; $6f06: $ab
    ret nz                                        ; $6f07: $c0

    and $31                                       ; $6f08: $e6 $31
    rra                                           ; $6f0a: $1f
    dec bc                                        ; $6f0b: $0b
    ld a, [bc]                                    ; $6f0c: $0a
    dec b                                         ; $6f0d: $05
    ld a, [bc]                                    ; $6f0e: $0a
    dec bc                                        ; $6f0f: $0b
    ld b, b                                       ; $6f10: $40
    cp a                                          ; $6f11: $bf
    rst $38                                       ; $6f12: $ff
    rst $38                                       ; $6f13: $ff
    rst $38                                       ; $6f14: $ff
    rst $38                                       ; $6f15: $ff
    nop                                           ; $6f16: $00
    rst $38                                       ; $6f17: $ff
    rst $38                                       ; $6f18: $ff
    rst $38                                       ; $6f19: $ff
    rst $38                                       ; $6f1a: $ff
    rst $38                                       ; $6f1b: $ff
    rst $38                                       ; $6f1c: $ff
    rst $38                                       ; $6f1d: $ff
    rst $38                                       ; $6f1e: $ff
    rst $38                                       ; $6f1f: $ff
    rst $38                                       ; $6f20: $ff
    rst $38                                       ; $6f21: $ff
    rst $38                                       ; $6f22: $ff
    rst $38                                       ; $6f23: $ff
    rst $38                                       ; $6f24: $ff
    rst $38                                       ; $6f25: $ff
    rst $38                                       ; $6f26: $ff
    nop                                           ; $6f27: $00
    rst $38                                       ; $6f28: $ff
    rst $38                                       ; $6f29: $ff
    rst $38                                       ; $6f2a: $ff
    rst $38                                       ; $6f2b: $ff
    rst $38                                       ; $6f2c: $ff
    rst $38                                       ; $6f2d: $ff
    rst $38                                       ; $6f2e: $ff
    rst $38                                       ; $6f2f: $ff
    rst $38                                       ; $6f30: $ff
    rst $38                                       ; $6f31: $ff
    rst $38                                       ; $6f32: $ff
    rst $38                                       ; $6f33: $ff
    rst $38                                       ; $6f34: $ff
    rst $38                                       ; $6f35: $ff
    rst $38                                       ; $6f36: $ff
    rst $38                                       ; $6f37: $ff
    nop                                           ; $6f38: $00
    rst $38                                       ; $6f39: $ff
    rst $38                                       ; $6f3a: $ff
    rst $38                                       ; $6f3b: $ff
    rst $38                                       ; $6f3c: $ff
    rst $38                                       ; $6f3d: $ff
    rst $38                                       ; $6f3e: $ff
    rst $38                                       ; $6f3f: $ff
    rst $38                                       ; $6f40: $ff
    rst $38                                       ; $6f41: $ff
    rst $38                                       ; $6f42: $ff
    rst $38                                       ; $6f43: $ff
    rst $38                                       ; $6f44: $ff
    rst $38                                       ; $6f45: $ff
    rst $38                                       ; $6f46: $ff
    rst $38                                       ; $6f47: $ff
    rst $38                                       ; $6f48: $ff
    nop                                           ; $6f49: $00
    rst $38                                       ; $6f4a: $ff
    rst $38                                       ; $6f4b: $ff
    rst $38                                       ; $6f4c: $ff
    rst $38                                       ; $6f4d: $ff
    rst $38                                       ; $6f4e: $ff
    rst $38                                       ; $6f4f: $ff
    rst $38                                       ; $6f50: $ff
    rst $38                                       ; $6f51: $ff
    rst $38                                       ; $6f52: $ff
    rst $38                                       ; $6f53: $ff
    rst $38                                       ; $6f54: $ff
    rst $38                                       ; $6f55: $ff
    rst $38                                       ; $6f56: $ff
    rst $38                                       ; $6f57: $ff
    rst $38                                       ; $6f58: $ff
    rst $38                                       ; $6f59: $ff
    nop                                           ; $6f5a: $00
    rst $38                                       ; $6f5b: $ff
    rst $38                                       ; $6f5c: $ff
    rst $38                                       ; $6f5d: $ff
    rst $38                                       ; $6f5e: $ff
    rst $38                                       ; $6f5f: $ff
    rst $38                                       ; $6f60: $ff
    rst $38                                       ; $6f61: $ff
    rst $38                                       ; $6f62: $ff
    rst $38                                       ; $6f63: $ff
    rst $38                                       ; $6f64: $ff
    rst $38                                       ; $6f65: $ff
    rst $38                                       ; $6f66: $ff
    rst $38                                       ; $6f67: $ff
    rst $38                                       ; $6f68: $ff
    rst $38                                       ; $6f69: $ff
    rst $38                                       ; $6f6a: $ff
    nop                                           ; $6f6b: $00
    rst $38                                       ; $6f6c: $ff
    rst $38                                       ; $6f6d: $ff
    rst $38                                       ; $6f6e: $ff
    rst $38                                       ; $6f6f: $ff
    rst $38                                       ; $6f70: $ff
    rst $38                                       ; $6f71: $ff
    rst $38                                       ; $6f72: $ff
    rst $38                                       ; $6f73: $ff
    rst $38                                       ; $6f74: $ff
    rst $38                                       ; $6f75: $ff
    rst $38                                       ; $6f76: $ff
    rst $38                                       ; $6f77: $ff
    rst $38                                       ; $6f78: $ff
    rst $38                                       ; $6f79: $ff
    rst $38                                       ; $6f7a: $ff
    rst $38                                       ; $6f7b: $ff
    nop                                           ; $6f7c: $00
    rst $38                                       ; $6f7d: $ff
    rst $38                                       ; $6f7e: $ff
    rst $38                                       ; $6f7f: $ff
    rst $38                                       ; $6f80: $ff
    rst $38                                       ; $6f81: $ff
    rst $38                                       ; $6f82: $ff
    rst $38                                       ; $6f83: $ff
    rst $38                                       ; $6f84: $ff
    rst $38                                       ; $6f85: $ff
    rst $38                                       ; $6f86: $ff
    rst $38                                       ; $6f87: $ff
    rst $38                                       ; $6f88: $ff
    rst $38                                       ; $6f89: $ff
    rst $38                                       ; $6f8a: $ff
    rst $38                                       ; $6f8b: $ff
    rst $38                                       ; $6f8c: $ff
    nop                                           ; $6f8d: $00
    rst $38                                       ; $6f8e: $ff
    rst $38                                       ; $6f8f: $ff
    rst $38                                       ; $6f90: $ff
    rst $38                                       ; $6f91: $ff
    rst $38                                       ; $6f92: $ff
    rst $38                                       ; $6f93: $ff
    rst $38                                       ; $6f94: $ff
    rst $38                                       ; $6f95: $ff
    rst $38                                       ; $6f96: $ff
    rst $38                                       ; $6f97: $ff
    rst $38                                       ; $6f98: $ff
    rst $38                                       ; $6f99: $ff
    rst $38                                       ; $6f9a: $ff
    rst $38                                       ; $6f9b: $ff
    rst $38                                       ; $6f9c: $ff
    rst $38                                       ; $6f9d: $ff
    nop                                           ; $6f9e: $00
    rst $38                                       ; $6f9f: $ff
    rst $38                                       ; $6fa0: $ff
    rst $38                                       ; $6fa1: $ff
    rst $38                                       ; $6fa2: $ff
    rst $38                                       ; $6fa3: $ff
    rst $38                                       ; $6fa4: $ff
    rst $38                                       ; $6fa5: $ff
    rst $38                                       ; $6fa6: $ff
    rst $38                                       ; $6fa7: $ff
    rst $38                                       ; $6fa8: $ff
    rst $38                                       ; $6fa9: $ff
    rst $38                                       ; $6faa: $ff
    rst $38                                       ; $6fab: $ff
    rst $38                                       ; $6fac: $ff
    rst $38                                       ; $6fad: $ff
    rst $38                                       ; $6fae: $ff
    nop                                           ; $6faf: $00
    rst $38                                       ; $6fb0: $ff
    rst $38                                       ; $6fb1: $ff
    rst $38                                       ; $6fb2: $ff
    rst $38                                       ; $6fb3: $ff
    rst $38                                       ; $6fb4: $ff
    rst $38                                       ; $6fb5: $ff
    rst $38                                       ; $6fb6: $ff
    rst $38                                       ; $6fb7: $ff
    rst $38                                       ; $6fb8: $ff
    rst $38                                       ; $6fb9: $ff
    rst $38                                       ; $6fba: $ff
    rst $38                                       ; $6fbb: $ff
    rst $38                                       ; $6fbc: $ff
    rst $38                                       ; $6fbd: $ff
    rst $38                                       ; $6fbe: $ff
    rst $38                                       ; $6fbf: $ff
    nop                                           ; $6fc0: $00
    rst $38                                       ; $6fc1: $ff
    rst $38                                       ; $6fc2: $ff
    rst $38                                       ; $6fc3: $ff
    rst $38                                       ; $6fc4: $ff
    rst $38                                       ; $6fc5: $ff
    rst $38                                       ; $6fc6: $ff
    rst $38                                       ; $6fc7: $ff

Jump_05f_6fc8:
    rst $38                                       ; $6fc8: $ff
    rst $38                                       ; $6fc9: $ff
    rst $38                                       ; $6fca: $ff
    rst $38                                       ; $6fcb: $ff
    rst $38                                       ; $6fcc: $ff
    rst $38                                       ; $6fcd: $ff
    rst $38                                       ; $6fce: $ff
    rst $38                                       ; $6fcf: $ff
    rst $38                                       ; $6fd0: $ff
    nop                                           ; $6fd1: $00
    rst $38                                       ; $6fd2: $ff
    db $f4                                        ; $6fd3: $f4
    nop                                           ; $6fd4: $00
    nop                                           ; $6fd5: $00
    nop                                           ; $6fd6: $00
    and l                                         ; $6fd7: $a5
    nop                                           ; $6fd8: $00
    rst $38                                       ; $6fd9: $ff
    push hl                                       ; $6fda: $e5
    ld [hl-], a                                   ; $6fdb: $32
    or $e6                                        ; $6fdc: $f6 $e6
    rst $30                                       ; $6fde: $f7
    rst $20                                       ; $6fdf: $e7
    dec [hl]                                      ; $6fe0: $35
    db $ec                                        ; $6fe1: $ec
    xor $37                                       ; $6fe2: $ee $37
    db $ec                                        ; $6fe4: $ec
    jp c, $c7f0                                   ; $6fe5: $da $f0 $c7

    add sp, $33                                   ; $6fe8: $e8 $33
    ld sp, $f2e0                                  ; $6fea: $31 $e0 $f2
    ld [hl], $30                                  ; $6fed: $36 $30
    scf                                           ; $6fef: $37
    cp a                                          ; $6ff0: $bf
    ld h, $20                                     ; $6ff1: $26 $20
    daa                                           ; $6ff3: $27
    db $10                                        ; $6ff4: $10
    ld d, $17                                     ; $6ff5: $16 $17
    jp nz, Jump_000_34f6                          ; $6ff7: $c2 $f6 $34

    rst $38                                       ; $6ffa: $ff
    ld [hl], $32                                  ; $6ffb: $36 $32
    jr nc, jr_05f_7036                            ; $6ffd: $30 $37

    ld sp, $3133                                  ; $6fff: $31 $33 $31
    inc sp                                        ; $7002: $33
    nop                                           ; $7003: $00
    and b                                         ; $7004: $a0
    ei                                            ; $7005: $fb
    rst $38                                       ; $7006: $ff
    rst $28                                       ; $7007: $ef
    nop                                           ; $7008: $00
    nop                                           ; $7009: $00
    nop                                           ; $700a: $00
    ld de, $6870                                  ; $700b: $11 $70 $68
    ld a, c                                       ; $700e: $79
    ld l, b                                       ; $700f: $68
    ld a, e                                       ; $7010: $7b
    rst $38                                       ; $7011: $ff
    ld b, d                                       ; $7012: $42
    ld b, c                                       ; $7013: $41
    nop                                           ; $7014: $00
    dec b                                         ; $7015: $05
    ld bc, $0103                                  ; $7016: $01 $03 $01
    ld [bc], a                                    ; $7019: $02
    rst $38                                       ; $701a: $ff
    ld bc, $1102                                  ; $701b: $01 $02 $11
    ld [de], a                                    ; $701e: $12
    nop                                           ; $701f: $00
    ld [bc], a                                    ; $7020: $02
    ld [bc], a                                    ; $7021: $02
    ld bc, $deff                                  ; $7022: $01 $ff $de
    db $fd                                        ; $7025: $fd
    db $fc                                        ; $7026: $fc
    push af                                       ; $7027: $f5
    db $fd                                        ; $7028: $fd
    ld e, a                                       ; $7029: $5f
    db $fd                                        ; $702a: $fd
    cp d                                          ; $702b: $ba
    rst $38                                       ; $702c: $ff
    db $fd                                        ; $702d: $fd
    ld a, [$bef9]                                 ; $702e: $fa $f9 $be
    db $fc                                        ; $7031: $fc
    sub $be                                       ; $7032: $d6 $be
    db $ed                                        ; $7034: $ed
    rst $38                                       ; $7035: $ff

jr_05f_7036:
    rrca                                          ; $7036: $0f
    rla                                           ; $7037: $17
    rlca                                          ; $7038: $07
    ld d, [hl]                                    ; $7039: $56
    rla                                           ; $703a: $17
    rra                                           ; $703b: $1f
    rla                                           ; $703c: $17
    dec c                                         ; $703d: $0d
    cp $fe                                        ; $703e: $fe $fe
    ldh [rNR31], a                                ; $7040: $e0 $1b
    daa                                           ; $7042: $27
    scf                                           ; $7043: $37
    rrca                                          ; $7044: $0f
    rla                                           ; $7045: $17
    ld [bc], a                                    ; $7046: $02
    ld [bc], a                                    ; $7047: $02
    rst $38                                       ; $7048: $ff
    nop                                           ; $7049: $00
    ld b, b                                       ; $704a: $40
    nop                                           ; $704b: $00
    inc b                                         ; $704c: $04
    ld b, c                                       ; $704d: $41
    ld a, e                                       ; $704e: $7b
    ld a, [hl-]                                   ; $704f: $3a
    rst $20                                       ; $7050: $e7
    rst $38                                       ; $7051: $ff
    sbc l                                         ; $7052: $9d
    cp a                                          ; $7053: $bf
    rst $38                                       ; $7054: $ff
    db $eb                                        ; $7055: $eb
    rst $38                                       ; $7056: $ff
    rst $30                                       ; $7057: $f7
    ld h, $99                                     ; $7058: $26 $99
    rst $38                                       ; $705a: $ff
    adc b                                         ; $705b: $88
    ld h, [hl]                                    ; $705c: $66
    rst $38                                       ; $705d: $ff
    ld [$fdff], a                                 ; $705e: $ea $ff $fd
    rst $30                                       ; $7061: $f7
    rst $38                                       ; $7062: $ff
    rst $30                                       ; $7063: $f7
    ld a, a                                       ; $7064: $7f
    db $fd                                        ; $7065: $fd
    db $fd                                        ; $7066: $fd
    ldh a, [$e2]                                  ; $7067: $f0 $e2
    adc c                                         ; $7069: $89
    ld h, a                                       ; $706a: $67
    ld b, d                                       ; $706b: $42
    ld d, d                                       ; $706c: $52
    ld a, a                                       ; $706d: $7f
    nop                                           ; $706e: $00
    nop                                           ; $706f: $00
    jr nz, jr_05f_7076                            ; $7070: $20 $04

    inc b                                         ; $7072: $04
    inc b                                         ; $7073: $04
    nop                                           ; $7074: $00
    rst $38                                       ; $7075: $ff

jr_05f_7076:
    ld [c], a                                     ; $7076: $e2
    rst $38                                       ; $7077: $ff
    db $10                                        ; $7078: $10
    db $10                                        ; $7079: $10
    ld bc, $0c11                                  ; $707a: $01 $11 $0c
    rlca                                          ; $707d: $07
    inc de                                        ; $707e: $13
    adc h                                         ; $707f: $8c
    rst $38                                       ; $7080: $ff
    daa                                           ; $7081: $27
    inc sp                                        ; $7082: $33
    sbc a                                         ; $7083: $9f
    db $eb                                        ; $7084: $eb
    ld a, a                                       ; $7085: $7f
    sbc a                                         ; $7086: $9f
    ld b, $03                                     ; $7087: $06 $03
    rst $38                                       ; $7089: $ff
    add hl, de                                    ; $708a: $19
    ld l, $23                                     ; $708b: $2e $23
    add hl, sp                                    ; $708d: $39
    rrca                                          ; $708e: $0f
    db $e3                                        ; $708f: $e3
    rst $38                                       ; $7090: $ff
    dec [hl]                                      ; $7091: $35
    rst $38                                       ; $7092: $ff
    rst $38                                       ; $7093: $ff
    ld e, a                                       ; $7094: $5f
    rst $38                                       ; $7095: $ff
    or $df                                        ; $7096: $f6 $df
    rst $38                                       ; $7098: $ff
    ld [bc], a                                    ; $7099: $02
    inc bc                                        ; $709a: $03
    rst $38                                       ; $709b: $ff
    dec b                                         ; $709c: $05
    ld a, [bc]                                    ; $709d: $0a
    dec b                                         ; $709e: $05
    ld b, $13                                     ; $709f: $06 $13
    dec d                                         ; $70a1: $15
    dec bc                                        ; $70a2: $0b
    dec c                                         ; $70a3: $0d
    rst $38                                       ; $70a4: $ff
    inc de                                        ; $70a5: $13
    dec hl                                        ; $70a6: $2b
    rla                                           ; $70a7: $17
    dec de                                        ; $70a8: $1b
    cpl                                           ; $70a9: $2f
    rla                                           ; $70aa: $17
    ld [hl], d                                    ; $70ab: $72
    xor a                                         ; $70ac: $af
    rst $38                                       ; $70ad: $ff
    xor l                                         ; $70ae: $ad
    db $db                                        ; $70af: $db
    ld l, a                                       ; $70b0: $6f
    rst $30                                       ; $70b1: $f7
    jp c, $55ff                                   ; $70b2: $da $ff $55

    rst $38                                       ; $70b5: $ff
    rst $38                                       ; $70b6: $ff
    xor d                                         ; $70b7: $aa
    rst $38                                       ; $70b8: $ff
    sbc e                                         ; $70b9: $9b
    rst $30                                       ; $70ba: $f7
    ld l, l                                       ; $70bb: $6d
    rst $38                                       ; $70bc: $ff
    db $10                                        ; $70bd: $10
    db $10                                        ; $70be: $10
    cp $ba                                        ; $70bf: $fe $ba
    ldh [rDIV], a                                 ; $70c1: $e0 $04
    ld bc, $0401                                  ; $70c3: $01 $01 $04
    rla                                           ; $70c6: $17
    inc hl                                        ; $70c7: $23
    cp h                                          ; $70c8: $bc
    ld a, a                                       ; $70c9: $7f
    sbc e                                         ; $70ca: $9b
    db $e3                                        ; $70cb: $e3
    ld a, a                                       ; $70cc: $7f
    sbc a                                         ; $70cd: $9f
    ld [bc], a                                    ; $70ce: $02
    inc bc                                        ; $70cf: $03
    add hl, bc                                    ; $70d0: $09
    ret nz                                        ; $70d1: $c0

    ldh [$ef], a                                  ; $70d2: $e0 $ef
    rra                                           ; $70d4: $1f
    rst $20                                       ; $70d5: $e7
    ld a, a                                       ; $70d6: $7f
    dec sp                                        ; $70d7: $3b
    db $dd                                        ; $70d8: $dd
    ldh [$f7], a                                  ; $70d9: $e0 $f7
    rst $18                                       ; $70db: $df
    cp $ff                                        ; $70dc: $fe $ff
    ld [bc], a                                    ; $70de: $02
    dec bc                                        ; $70df: $0b
    dec b                                         ; $70e0: $05
    ld b, $09                                     ; $70e1: $06 $09
    dec e                                         ; $70e3: $1d
    ld b, a                                       ; $70e4: $47
    ld c, e                                       ; $70e5: $4b
    rst $18                                       ; $70e6: $df
    rla                                           ; $70e7: $17
    dec de                                        ; $70e8: $1b
    rlca                                          ; $70e9: $07
    rla                                           ; $70ea: $17
    rrca                                          ; $70eb: $0f
    ld h, b                                       ; $70ec: $60
    ldh [rNR22], a                                ; $70ed: $e0 $17
    rrca                                          ; $70ef: $0f
    rst $38                                       ; $70f0: $ff
    ld d, e                                       ; $70f1: $53
    ld c, a                                       ; $70f2: $4f
    rla                                           ; $70f3: $17
    ld e, a                                       ; $70f4: $5f
    cpl                                           ; $70f5: $2f
    dec e                                         ; $70f6: $1d
    cpl                                           ; $70f7: $2f
    ccf                                           ; $70f8: $3f
    cp a                                          ; $70f9: $bf
    sub [hl]                                      ; $70fa: $96
    cp a                                          ; $70fb: $bf
    cp a                                          ; $70fc: $bf
    ld a, a                                       ; $70fd: $7f
    ld a, a                                       ; $70fe: $7f
    rst $30                                       ; $70ff: $f7
    ret nc                                        ; $7100: $d0

    ldh [$0e], a                                  ; $7101: $e0 $0e
    rst $38                                       ; $7103: $ff
    inc hl                                        ; $7104: $23
    add hl, de                                    ; $7105: $19
    rra                                           ; $7106: $1f
    daa                                           ; $7107: $27
    ld c, e                                       ; $7108: $4b
    ld l, a                                       ; $7109: $6f
    ccf                                           ; $710a: $3f
    ld e, l                                       ; $710b: $5d
    rst $28                                       ; $710c: $ef
    cp a                                          ; $710d: $bf
    bit 7, a                                      ; $710e: $cb $7f
    or a                                          ; $7110: $b7
    sub b                                         ; $7111: $90
    ldh [rNR12], a                                ; $7112: $e0 $12
    dec d                                         ; $7114: $15
    ld d, $ff                                     ; $7115: $16 $ff
    add hl, bc                                    ; $7117: $09
    dec b                                         ; $7118: $05
    ld e, e                                       ; $7119: $5b
    ld c, l                                       ; $711a: $4d
    ld h, a                                       ; $711b: $67
    dec sp                                        ; $711c: $3b
    sbc a                                         ; $711d: $9f
    rst $20                                       ; $711e: $e7
    rst $38                                       ; $711f: $ff
    ld e, a                                       ; $7120: $5f
    sbc a                                         ; $7121: $9f
    sub h                                         ; $7122: $94
    sub [hl]                                      ; $7123: $96
    ld c, d                                       ; $7124: $4a
    ld l, d                                       ; $7125: $6a
    and b                                         ; $7126: $a0
    and b                                         ; $7127: $a0
    rst $38                                       ; $7128: $ff
    dec d                                         ; $7129: $15
    sub l                                         ; $712a: $95
    ld c, b                                       ; $712b: $48
    ld c, b                                       ; $712c: $48
    ld bc, $a011                                  ; $712d: $01 $11 $a0
    and b                                         ; $7130: $a0
    rst $38                                       ; $7131: $ff
    ld c, b                                       ; $7132: $48
    ld c, b                                       ; $7133: $48
    ei                                            ; $7134: $fb
    ld a, a                                       ; $7135: $7f
    rst $38                                       ; $7136: $ff
    rst $28                                       ; $7137: $ef
    db $fc                                        ; $7138: $fc
    sbc e                                         ; $7139: $9b
    rst $38                                       ; $713a: $ff
    or [hl]                                       ; $713b: $b6
    ret c                                         ; $713c: $d8

    cp b                                          ; $713d: $b8
    rst $20                                       ; $713e: $e7
    ld b, h                                       ; $713f: $44
    sbc [hl]                                      ; $7140: $9e
    sub e                                         ; $7141: $93
    ld [hl], a                                    ; $7142: $77
    rst $38                                       ; $7143: $ff
    inc h                                         ; $7144: $24
    db $fc                                        ; $7145: $fc
    cp [hl]                                       ; $7146: $be
    ld sp, hl                                     ; $7147: $f9
    reti                                          ; $7148: $d9


    rst $00                                       ; $7149: $c7
    add $3f                                       ; $714a: $c6 $3f
    rst $38                                       ; $714c: $ff
    inc [hl]                                      ; $714d: $34
    rst $38                                       ; $714e: $ff
    ret                                           ; $714f: $c9


    ei                                            ; $7150: $fb
    ld [hl+], a                                   ; $7151: $22
    cp $ce                                        ; $7152: $fe $ce
    cp $f7                                        ; $7154: $fe $f7
    ld a, [de]                                    ; $7156: $1a
    sbc e                                         ; $7157: $9b
    rst $38                                       ; $7158: $ff
    rst $38                                       ; $7159: $ff
    ldh [$fb], a                                  ; $715a: $e0 $fb
    xor c                                         ; $715c: $a9
    ld b, [hl]                                    ; $715d: $46
    rst $18                                       ; $715e: $df
    rst $38                                       ; $715f: $ff
    sbc c                                         ; $7160: $99
    rst $30                                       ; $7161: $f7
    xor [hl]                                      ; $7162: $ae
    cp [hl]                                       ; $7163: $be
    ld hl, $8865                                  ; $7164: $21 $65 $88
    sbc c                                         ; $7167: $99
    rst $38                                       ; $7168: $ff
    ld h, d                                       ; $7169: $62
    sbc l                                         ; $716a: $9d
    sbc c                                         ; $716b: $99
    ld a, a                                       ; $716c: $7f
    ld h, d                                       ; $716d: $62
    rst $38                                       ; $716e: $ff
    ld de, $ff5b                                  ; $716f: $11 $5b $ff
    ld c, [hl]                                    ; $7172: $4e
    rst $28                                       ; $7173: $ef
    sub c                                         ; $7174: $91
    push de                                       ; $7175: $d5
    adc d                                         ; $7176: $8a
    sbc e                                         ; $7177: $9b
    inc d                                         ; $7178: $14
    ld d, h                                       ; $7179: $54
    rst $38                                       ; $717a: $ff
    cpl                                           ; $717b: $2f
    rla                                           ; $717c: $17
    xor a                                         ; $717d: $af
    rst $30                                       ; $717e: $f7
    dec bc                                        ; $717f: $0b
    xor a                                         ; $7180: $af
    ld e, a                                       ; $7181: $5f
    ld l, e                                       ; $7182: $6b
    rst $38                                       ; $7183: $ff
    ld e, a                                       ; $7184: $5f
    push hl                                       ; $7185: $e5
    sub a                                         ; $7186: $97
    rst $18                                       ; $7187: $df
    cp a                                          ; $7188: $bf
    sbc $7f                                       ; $7189: $de $7f
    cp a                                          ; $718b: $bf
    rst $38                                       ; $718c: $ff
    ld h, h                                       ; $718d: $64
    ld h, [hl]                                    ; $718e: $66
    inc h                                         ; $718f: $24
    xor h                                         ; $7190: $ac
    jp nc, Jump_000_00d2                          ; $7191: $d2 $d2 $00

    ld c, b                                       ; $7194: $48
    rst $38                                       ; $7195: $ff
    sbc b                                         ; $7196: $98
    sbc b                                         ; $7197: $98
    jr nz, jr_05f_71be                            ; $7198: $20 $24

    add b                                         ; $719a: $80
    sub b                                         ; $719b: $90
    nop                                           ; $719c: $00
    ld b, b                                       ; $719d: $40
    rst $38                                       ; $719e: $ff
    db $f4                                        ; $719f: $f4
    ld [$deee], a                                 ; $71a0: $ea $ee $de
    call $d0d5                                    ; $71a3: $cd $d5 $d0
    cp d                                          ; $71a6: $ba
    rst $38                                       ; $71a7: $ff
    call c, $a9b4                                 ; $71a8: $dc $b4 $a9
    ld a, l                                       ; $71ab: $7d
    xor b                                         ; $71ac: $a8
    ld d, c                                       ; $71ad: $51
    ld [hl], h                                    ; $71ae: $74
    db $e4                                        ; $71af: $e4
    adc $dc                                       ; $71b0: $ce $dc
    ret nz                                        ; $71b2: $c0

    ld [bc], a                                    ; $71b3: $02
    ld bc, $8103                                  ; $71b4: $01 $03 $81
    ret nz                                        ; $71b7: $c0

    ld a, h                                       ; $71b8: $7c
    ret nz                                        ; $71b9: $c0

    dec b                                         ; $71ba: $05
    ld a, [bc]                                    ; $71bb: $0a
    rst $38                                       ; $71bc: $ff
    dec bc                                        ; $71bd: $0b

jr_05f_71be:
    dec c                                         ; $71be: $0d
    cp e                                          ; $71bf: $bb
    rst $38                                       ; $71c0: $ff
    ccf                                           ; $71c1: $3f
    xor a                                         ; $71c2: $af
    ld a, a                                       ; $71c3: $7f
    cp d                                          ; $71c4: $ba
    rst $38                                       ; $71c5: $ff
    ld a, a                                       ; $71c6: $7f
    dec a                                         ; $71c7: $3d
    rst $38                                       ; $71c8: $ff
    ld a, a                                       ; $71c9: $7f
    rst $18                                       ; $71ca: $df
    db $fd                                        ; $71cb: $fd
    rst $38                                       ; $71cc: $ff
    db $eb                                        ; $71cd: $eb
    rst $38                                       ; $71ce: $ff
    db $fd                                        ; $71cf: $fd
    rst $30                                       ; $71d0: $f7
    rla                                           ; $71d1: $17
    ld c, a                                       ; $71d2: $4f
    rrca                                          ; $71d3: $0f
    rla                                           ; $71d4: $17
    cpl                                           ; $71d5: $2f
    ld a, [de]                                    ; $71d6: $1a
    rst $38                                       ; $71d7: $ff
    cpl                                           ; $71d8: $2f
    dec a                                         ; $71d9: $3d
    rrca                                          ; $71da: $0f
    cpl                                           ; $71db: $2f
    ld e, a                                       ; $71dc: $5f
    ld l, l                                       ; $71dd: $6d
    ccf                                           ; $71de: $3f
    ld c, e                                       ; $71df: $4b
    rst $38                                       ; $71e0: $ff
    dec a                                         ; $71e1: $3d
    ld [hl], a                                    ; $71e2: $77
    ei                                            ; $71e3: $fb
    rst $38                                       ; $71e4: $ff
    rst $38                                       ; $71e5: $ff
    ld l, a                                       ; $71e6: $6f
    rst $38                                       ; $71e7: $ff
    ld a, [$ffff]                                 ; $71e8: $fa $ff $ff
    xor l                                         ; $71eb: $ad
    rst $38                                       ; $71ec: $ff
    rst $18                                       ; $71ed: $df
    rst $18                                       ; $71ee: $df
    cp $fe                                        ; $71ef: $fe $fe
    push af                                       ; $71f1: $f5
    rst $38                                       ; $71f2: $ff
    db $fc                                        ; $71f3: $fc
    ld a, [c]                                     ; $71f4: $f2
    nop                                           ; $71f5: $00
    nop                                           ; $71f6: $00
    ld [$0008], sp                                ; $71f7: $08 $08 $00
    ld [$bbee], sp                                ; $71fa: $08 $ee $bb
    pop hl                                        ; $71fd: $e1
    dec h                                         ; $71fe: $25
    daa                                           ; $71ff: $27
    dec bc                                        ; $7200: $0b
    ld e, h                                       ; $7201: $5c
    ret nz                                        ; $7202: $c0

    dec d                                         ; $7203: $15
    xor $01                                       ; $7204: $ee $01
    rst $38                                       ; $7206: $ff
    cp e                                          ; $7207: $bb
    xor d                                         ; $7208: $aa
    ld a, l                                       ; $7209: $7d
    dec a                                         ; $720a: $3d
    rst $10                                       ; $720b: $d7
    adc e                                         ; $720c: $8b
    ld a, l                                       ; $720d: $7d
    ld d, [hl]                                    ; $720e: $56
    rst $38                                       ; $720f: $ff
    rst $38                                       ; $7210: $ff
    dec sp                                        ; $7211: $3b
    xor a                                         ; $7212: $af
    db $dd                                        ; $7213: $dd
    ld a, a                                       ; $7214: $7f
    cpl                                           ; $7215: $2f
    scf                                           ; $7216: $37
    ld e, a                                       ; $7217: $5f
    rst $18                                       ; $7218: $df
    ld h, a                                       ; $7219: $67
    sbc e                                         ; $721a: $9b
    rst $28                                       ; $721b: $ef
    ccf                                           ; $721c: $3f
    sbc e                                         ; $721d: $9b
    sub b                                         ; $721e: $90
    push bc                                       ; $721f: $c5
    cp $01                                        ; $7220: $fe $01
    rst $38                                       ; $7222: $ff
    ld hl, sp+$07                                 ; $7223: $f8 $07
    ldh [$1f], a                                  ; $7225: $e0 $1f
    ret nz                                        ; $7227: $c0

    ccf                                           ; $7228: $3f
    ret nz                                        ; $7229: $c0

    ccf                                           ; $722a: $3f
    rst $38                                       ; $722b: $ff
    add b                                         ; $722c: $80
    ld a, a                                       ; $722d: $7f
    add b                                         ; $722e: $80
    ld a, a                                       ; $722f: $7f
    nop                                           ; $7230: $00
    rst $38                                       ; $7231: $ff
    ld b, b                                       ; $7232: $40
    ld b, b                                       ; $7233: $40
    db $fc                                        ; $7234: $fc
    ld l, $c0                                     ; $7235: $2e $c0
    ld e, h                                       ; $7237: $5c
    ret nz                                        ; $7238: $c0

    nop                                           ; $7239: $00
    nop                                           ; $723a: $00
    ld bc, $2001                                  ; $723b: $01 $01 $20
    jr nz, @+$01                                  ; $723e: $20 $ff

    nop                                           ; $7240: $00
    nop                                           ; $7241: $00
    sbc l                                         ; $7242: $9d
    rst $38                                       ; $7243: $ff
    ld h, h                                       ; $7244: $64
    db $ec                                        ; $7245: $ec
    db $db                                        ; $7246: $db
    ei                                            ; $7247: $fb
    rst $38                                       ; $7248: $ff
    sub b                                         ; $7249: $90
    jp c, Jump_05f_4848                           ; $724a: $da $48 $48

    ld sp, $8035                                  ; $724d: $31 $35 $80
    sub c                                         ; $7250: $91
    rst $38                                       ; $7251: $ff
    inc b                                         ; $7252: $04
    ld b, h                                       ; $7253: $44
    ld d, b                                       ; $7254: $50
    ld [hl], d                                    ; $7255: $72
    ld h, h                                       ; $7256: $64
    db $ec                                        ; $7257: $ec
    sub e                                         ; $7258: $93
    sub e                                         ; $7259: $93
    rst $38                                       ; $725a: $ff
    jr nz, jr_05f_72c7                            ; $725b: $20 $6a

    ret z                                         ; $725d: $c8

    ret z                                         ; $725e: $c8

    inc h                                         ; $725f: $24
    inc [hl]                                      ; $7260: $34
    add b                                         ; $7261: $80
    add b                                         ; $7262: $80
    rst $38                                       ; $7263: $ff
    ld [bc], a                                    ; $7264: $02
    ld [bc], a                                    ; $7265: $02
    inc b                                         ; $7266: $04
    ld b, h                                       ; $7267: $44
    nop                                           ; $7268: $00
    adc b                                         ; $7269: $88
    sub c                                         ; $726a: $91
    sub c                                         ; $726b: $91
    ei                                            ; $726c: $fb
    nop                                           ; $726d: $00
    ld c, d                                       ; $726e: $4a
    adc d                                         ; $726f: $8a
    ldh [rP1], a                                  ; $7270: $e0 $00
    ld b, b                                       ; $7272: $40
    ld b, b                                       ; $7273: $40
    inc b                                         ; $7274: $04
    inc b                                         ; $7275: $04
    rst $38                                       ; $7276: $ff
    xor h                                         ; $7277: $ac
    xor [hl]                                      ; $7278: $ae
    ld b, c                                       ; $7279: $41
    ret                                           ; $727a: $c9


    sub d                                         ; $727b: $92
    sub d                                         ; $727c: $92
    inc h                                         ; $727d: $24
    ld h, $ff                                     ; $727e: $26 $ff
    ld de, $8011                                  ; $7280: $11 $11 $80
    add b                                         ; $7283: $80
    inc h                                         ; $7284: $24

jr_05f_7285:
    inc h                                         ; $7285: $24
    add c                                         ; $7286: $81
    add c                                         ; $7287: $81
    rst $38                                       ; $7288: $ff
    ld [bc], a                                    ; $7289: $02
    ld [bc], a                                    ; $728a: $02
    add hl, bc                                    ; $728b: $09
    dec e                                         ; $728c: $1d
    add l                                         ; $728d: $85
    rst $00                                       ; $728e: $c7
    ld [$ff1b], sp                                ; $728f: $08 $1b $ff
    ld [hl+], a                                   ; $7292: $22
    daa                                           ; $7293: $27
    rlca                                          ; $7294: $07
    xor [hl]                                      ; $7295: $ae
    rrca                                          ; $7296: $0f
    ld a, [de]                                    ; $7297: $1a
    inc de                                        ; $7298: $13
    ld h, l                                       ; $7299: $65
    ld a, [$e430]                                 ; $729a: $fa $30 $e4
    ld a, l                                       ; $729d: $7d
    jr nc, jr_05f_7285                            ; $729e: $30 $e5

    sub l                                         ; $72a0: $95
    rst $38                                       ; $72a1: $ff
    ld c, b                                       ; $72a2: $48
    db $fc                                        ; $72a3: $fc
    ld [hl], l                                    ; $72a4: $75
    rst $38                                       ; $72a5: $ff
    rst $30                                       ; $72a6: $f7
    sbc h                                         ; $72a7: $9c
    call c, $da52                                 ; $72a8: $dc $52 $da
    inc b                                         ; $72ab: $04
    ld h, l                                       ; $72ac: $65
    ret nc                                        ; $72ad: $d0

    and a                                         ; $72ae: $a7
    ret c                                         ; $72af: $d8

    xor l                                         ; $72b0: $ad
    db $ed                                        ; $72b1: $ed
    adc h                                         ; $72b2: $8c
    ldh [$b0], a                                  ; $72b3: $e0 $b0
    pop hl                                        ; $72b5: $e1
    ld b, b                                       ; $72b6: $40
    adc $a0                                       ; $72b7: $ce $a0
    jr nz, @+$01                                  ; $72b9: $20 $ff

    add h                                         ; $72bb: $84
    add h                                         ; $72bc: $84
    nop                                           ; $72bd: $00
    ld b, b                                       ; $72be: $40
    or [hl]                                       ; $72bf: $b6
    cp a                                          ; $72c0: $bf
    ld hl, sp-$11                                 ; $72c1: $f8 $ef
    rst $38                                       ; $72c3: $ff
    db $d3                                        ; $72c4: $d3
    reti                                          ; $72c5: $d9


    db $d3                                        ; $72c6: $d3

jr_05f_72c7:
    cp a                                          ; $72c7: $bf
    db $e4                                        ; $72c8: $e4
    push af                                       ; $72c9: $f5
    rra                                           ; $72ca: $1f
    ld [hl], a                                    ; $72cb: $77
    rst $38                                       ; $72cc: $ff
    adc e                                         ; $72cd: $8b
    rst $18                                       ; $72ce: $df
    ld e, a                                       ; $72cf: $5f
    cp a                                          ; $72d0: $bf
    add sp, -$26                                  ; $72d1: $e8 $da
    xor $de                                       ; $72d3: $ee $de
    rst $38                                       ; $72d5: $ff
    call nc, $d1ed                                ; $72d6: $d4 $ed $d1
    db $ed                                        ; $72d9: $ed
    sub $ee                                       ; $72da: $d6 $ee
    db $ec                                        ; $72dc: $ec
    push de                                       ; $72dd: $d5
    rst $38                                       ; $72de: $ff
    ldh [$fa], a                                  ; $72df: $e0 $fa
    jp hl                                         ; $72e1: $e9


    db $dd                                        ; $72e2: $dd
    ld d, b                                       ; $72e3: $50
    cp b                                          ; $72e4: $b8
    ld c, c                                       ; $72e5: $49
    db $eb                                        ; $72e6: $eb
    rst $38                                       ; $72e7: $ff
    nop                                           ; $72e8: $00
    ld d, h                                       ; $72e9: $54
    sbc b                                         ; $72ea: $98
    ld a, d                                       ; $72eb: $7a
    xor d                                         ; $72ec: $aa
    ld a, d                                       ; $72ed: $7a
    cp b                                          ; $72ee: $b8
    ld e, c                                       ; $72ef: $59
    rst $38                                       ; $72f0: $ff
    or b                                          ; $72f1: $b0
    db $e4                                        ; $72f2: $e4
    ld c, b                                       ; $72f3: $48
    xor c                                         ; $72f4: $a9
    jr nz, jr_05f_7317                            ; $72f5: $20 $20

    ld [$fe88], sp                                ; $72f7: $08 $88 $fe
    xor b                                         ; $72fa: $a8
    pop bc                                        ; $72fb: $c1
    ld [$2008], sp                                ; $72fc: $08 $08 $20
    jr nz, @-$7e                                  ; $72ff: $20 $80

    sub b                                         ; $7301: $90
    db $10                                        ; $7302: $10
    rst $38                                       ; $7303: $ff
    ld e, b                                       ; $7304: $58
    inc b                                         ; $7305: $04
    ld b, $00                                     ; $7306: $06 $00
    ld [$1111], sp                                ; $7308: $08 $11 $11
    nop                                           ; $730b: $00
    rst $38                                       ; $730c: $ff
    ld a, [bc]                                    ; $730d: $0a
    ld [$2108], sp                                ; $730e: $08 $08 $21
    dec h                                         ; $7311: $25
    nop                                           ; $7312: $00
    ld de, $ff04                                  ; $7313: $11 $04 $ff
    ld b, h                                       ; $7316: $44

jr_05f_7317:
    inc de                                        ; $7317: $13
    cpl                                           ; $7318: $2f
    ld l, a                                       ; $7319: $6f
    ld [hl], a                                    ; $731a: $77
    xor a                                         ; $731b: $af
    sbc d                                         ; $731c: $9a
    xor a                                         ; $731d: $af
    rst $38                                       ; $731e: $ff
    ld a, l                                       ; $731f: $7d
    ld c, a                                       ; $7320: $4f
    ld l, a                                       ; $7321: $6f
    ld e, a                                       ; $7322: $5f
    db $ed                                        ; $7323: $ed
    cp a                                          ; $7324: $bf
    res 3, l                                      ; $7325: $cb $9d
    rst $38                                       ; $7327: $ff
    rst $10                                       ; $7328: $d7
    and [hl]                                      ; $7329: $a6
    ld a, [$fd0a]                                 ; $732a: $fa $0a $fd
    db $d3                                        ; $732d: $d3
    ld l, e                                       ; $732e: $6b
    cpl                                           ; $732f: $2f
    rst $38                                       ; $7330: $ff
    push de                                       ; $7331: $d5
    ld d, $bf                                     ; $7332: $16 $bf
    xor e                                         ; $7334: $ab
    adc $1f                                       ; $7335: $ce $1f
    or a                                          ; $7337: $b7
    db $ed                                        ; $7338: $ed
    rst $30                                       ; $7339: $f7
    ld a, a                                       ; $733a: $7f
    rst $38                                       ; $733b: $ff
    nop                                           ; $733c: $00
    cp $eb                                        ; $733d: $fe $eb
    ld [hl+], a                                   ; $733f: $22
    rst $18                                       ; $7340: $df
    nop                                           ; $7341: $00
    xor a                                         ; $7342: $af
    rst $38                                       ; $7343: $ff
    ld d, b                                       ; $7344: $50
    jp c, $fd25                                   ; $7345: $da $25 $fd

    ld b, d                                       ; $7348: $42
    cp a                                          ; $7349: $bf
    ld [hl+], a                                   ; $734a: $22
    db $fd                                        ; $734b: $fd
    rst $38                                       ; $734c: $ff
    adc b                                         ; $734d: $88
    db $eb                                        ; $734e: $eb
    dec d                                         ; $734f: $15
    rst $30                                       ; $7350: $f7
    push af                                       ; $7351: $f5
    inc bc                                        ; $7352: $03
    and $0e                                       ; $7353: $e6 $0e
    rst $38                                       ; $7355: $ff
    ret c                                         ; $7356: $d8

    add hl, de                                    ; $7357: $19
    pop hl                                        ; $7358: $e1
    daa                                           ; $7359: $27
    and [hl]                                      ; $735a: $a6
    ld l, a                                       ; $735b: $6f
    ret z                                         ; $735c: $c8

    ld e, l                                       ; $735d: $5d
    rst $38                                       ; $735e: $ff
    ld c, h                                       ; $735f: $4c
    db $db                                        ; $7360: $db
    sub b                                         ; $7361: $90
    cp a                                          ; $7362: $bf

jr_05f_7363:
    db $fd                                        ; $7363: $fd
    inc bc                                        ; $7364: $03
    ld a, [$ff02]                                 ; $7365: $fa $02 $ff
    ld a, [$f406]                                 ; $7368: $fa $06 $f4
    dec b                                         ; $736b: $05
    db $e4                                        ; $736c: $e4
    dec c                                         ; $736d: $0d
    reti                                          ; $736e: $d9


    dec sp                                        ; $736f: $3b
    rst $18                                       ; $7370: $df
    ld h, d                                       ; $7371: $62
    rst $20                                       ; $7372: $e7
    add h                                         ; $7373: $84
    sbc a                                         ; $7374: $9f
    jr z, @-$2e                                   ; $7375: $28 $d0

    ldh [rP1], a                                  ; $7377: $e0 $00
    jp c, Jump_000_00ff                           ; $7379: $da $ff $00

    db $fd                                        ; $737c: $fd
    inc b                                         ; $737d: $04
    ei                                            ; $737e: $fb
    ld hl, $46ff                                  ; $737f: $21 $ff $46
    and a                                         ; $7382: $a7
    rst $28                                       ; $7383: $ef

jr_05f_7384:
    jr c, jr_05f_7384                             ; $7384: $38 $fe

    ld c, a                                       ; $7386: $4f
    add sp, -$02                                  ; $7387: $e8 $fe
    pop hl                                        ; $7389: $e1
    sub a                                         ; $738a: $97
    ret c                                         ; $738b: $d8

    sub a                                         ; $738c: $97
    ld a, a                                       ; $738d: $7f
    ret nc                                        ; $738e: $d0

    cpl                                           ; $738f: $2f
    or b                                          ; $7390: $b0
    ld e, a                                       ; $7391: $5f
    ld h, b                                       ; $7392: $60
    sbc a                                         ; $7393: $9f
    ret nz                                        ; $7394: $c0

    and b                                         ; $7395: $a0
    push hl                                       ; $7396: $e5
    rst $38                                       ; $7397: $ff
    cp $01                                        ; $7398: $fe $01
    pop af                                        ; $739a: $f1
    inc bc                                        ; $739b: $03
    and $0f                                       ; $739c: $e6 $0f
    cp b                                          ; $739e: $b8
    ld a, [hl]                                    ; $739f: $7e
    rst $38                                       ; $73a0: $ff
    ret z                                         ; $73a1: $c8

    ld l, a                                       ; $73a2: $6f
    jp z, Jump_05f_486d                           ; $73a3: $ca $6d $48

    ld [$dd90], a                                 ; $73a6: $ea $90 $dd
    rst $38                                       ; $73a9: $ff
    sub b                                         ; $73aa: $90
    rst $18                                       ; $73ab: $df
    jr z, jr_05f_7363                             ; $73ac: $28 $b5

    ld b, b                                       ; $73ae: $40
    ld l, e                                       ; $73af: $6b
    add b                                         ; $73b0: $80
    rst $30                                       ; $73b1: $f7
    db $eb                                        ; $73b2: $eb
    rst $38                                       ; $73b3: $ff
    nop                                           ; $73b4: $00
    xor [hl]                                      ; $73b5: $ae
    ldh [$03], a                                  ; $73b6: $e0 $03
    xor [hl]                                      ; $73b8: $ae
    ldh [$0d], a                                  ; $73b9: $e0 $0d
    ret                                           ; $73bb: $c9


    dec de                                        ; $73bc: $1b
    rst $38                                       ; $73bd: $ff
    or d                                          ; $73be: $b2
    ld [hl], a                                    ; $73bf: $77
    call nz, $c96f                                ; $73c0: $c4 $6f $c9
    dec c                                         ; $73c3: $0d
    jp nc, $ff1b                                  ; $73c4: $d2 $1b $ff

    jp nc, $e43b                                  ; $73c7: $d2 $3b $e4

    scf                                           ; $73ca: $37
    db $e4                                        ; $73cb: $e4
    scf                                           ; $73cc: $37
    and [hl]                                      ; $73cd: $a6
    ld [hl], l                                    ; $73ce: $75
    rst $18                                       ; $73cf: $df
    ret z                                         ; $73d0: $c8

    ld l, a                                       ; $73d1: $6f
    ret z                                         ; $73d2: $c8

    ld l, a                                       ; $73d3: $6f
    ld sp, hl                                     ; $73d4: $f9
    add b                                         ; $73d5: $80
    pop hl                                        ; $73d6: $e1
    add hl, sp                                    ; $73d7: $39
    pop hl                                        ; $73d8: $e1
    rst $38                                       ; $73d9: $ff
    rst $20                                       ; $73da: $e7
    ld b, $1f                                     ; $73db: $06 $1f
    add hl, de                                    ; $73dd: $19
    rst $38                                       ; $73de: $ff
    ld [c], a                                     ; $73df: $e2
    db $fd                                        ; $73e0: $fd
    db $10                                        ; $73e1: $10
    rst $38                                       ; $73e2: $ff
    ld a, [$00fb]                                 ; $73e3: $fa $fb $00
    rst $30                                       ; $73e6: $f7
    rlca                                          ; $73e7: $07
    ret c                                         ; $73e8: $d8

    rra                                           ; $73e9: $1f
    ldh [rIE], a                                  ; $73ea: $e0 $ff
    ld a, b                                       ; $73ec: $78
    add a                                         ; $73ed: $87
    rst $20                                       ; $73ee: $e7
    ld a, [de]                                    ; $73ef: $1a
    sbc l                                         ; $73f0: $9d
    ld h, b                                       ; $73f1: $60
    ld a, d                                       ; $73f2: $7a
    add b                                         ; $73f3: $80
    ld sp, hl                                     ; $73f4: $f9
    db $fd                                        ; $73f5: $fd
    jp nc, $d0e0                                  ; $73f6: $d2 $e0 $d0

    pop hl                                        ; $73f9: $e1
    rst $30                                       ; $73fa: $f7
    inc b                                         ; $73fb: $04
    rst $28                                       ; $73fc: $ef
    jr jr_05f_741c                                ; $73fd: $18 $1d

    rst $28                                       ; $73ff: $ef
    ldh [$ef], a                                  ; $7400: $e0 $ef
    nop                                           ; $7402: $00
    rst $10                                       ; $7403: $d7
    ldh [$e0], a                                  ; $7404: $e0 $e0
    rrca                                          ; $7406: $0f
    ret c                                         ; $7407: $d8

    jr c, @+$01                                   ; $7408: $38 $ff

    ldh [$37], a                                  ; $740a: $e0 $37
    and a                                         ; $740c: $a7
    ld l, a                                       ; $740d: $6f
    ret z                                         ; $740e: $c8

    ld e, a                                       ; $740f: $5f
    ret z                                         ; $7410: $c8

    ld e, d                                       ; $7411: $5a
    rst $38                                       ; $7412: $ff
    ret z                                         ; $7413: $c8

    ld e, l                                       ; $7414: $5d
    nop                                           ; $7415: $00
    rst $38                                       ; $7416: $ff
    db $10                                        ; $7417: $10
    ld a, [$ad00]                                 ; $7418: $fa $00 $ad
    rst $38                                       ; $741b: $ff

jr_05f_741c:
    nop                                           ; $741c: $00
    rst $18                                       ; $741d: $df
    db $e4                                        ; $741e: $e4

jr_05f_741f:
    rst $38                                       ; $741f: $ff
    jr jr_05f_741f                                ; $7420: $18 $fd

    inc b                                         ; $7422: $04

jr_05f_7423:
    rra                                           ; $7423: $1f
    ei                                            ; $7424: $fb
    ld [c], a                                     ; $7425: $e2
    rst $20                                       ; $7426: $e7
    db $10                                        ; $7427: $10
    push hl                                       ; $7428: $e5
    rst $28                                       ; $7429: $ef
    ldh a, [rNR31]                                ; $742a: $f0 $1b
    db $fc                                        ; $742c: $fc
    dec b                                         ; $742d: $05
    rst $38                                       ; $742e: $ff
    ld e, $e3                                     ; $742f: $1e $e3
    and $4f                                       ; $7431: $e6 $4f
    add sp, -$71                                  ; $7433: $e8 $8f
    ret z                                         ; $7435: $c8

    cpl                                           ; $7436: $2f
    rst $18                                       ; $7437: $df
    sbc b                                         ; $7438: $98
    rla                                           ; $7439: $17
    jr c, jr_05f_7423                             ; $743a: $38 $e7

    ldh a, [$f6]                                  ; $743c: $f0 $f6
    jp Jump_05f_6fc8                              ; $743e: $c3 $c8 $6f


jr_05f_7441:
    rst $38                                       ; $7441: $ff
    ld [$48cd], a                                 ; $7442: $ea $cd $48
    sbc d                                         ; $7445: $9a
    db $10                                        ; $7446: $10
    dec a                                         ; $7447: $3d
    ldh [rIE], a                                  ; $7448: $e0 $ff

jr_05f_744a:
    rst $38                                       ; $744a: $ff
    jr nz, jr_05f_744a                            ; $744b: $20 $fd

    ld [de], a                                    ; $744d: $12
    db $eb                                        ; $744e: $eb
    nop                                           ; $744f: $00
    rst $30                                       ; $7450: $f7
    sub e                                         ; $7451: $93
    cp b                                          ; $7452: $b8
    rst $28                                       ; $7453: $ef
    cpl                                           ; $7454: $2f
    ld h, b                                       ; $7455: $60
    ld e, a                                       ; $7456: $5f
    ret nz                                        ; $7457: $c0

    jr c, jr_05f_7441                             ; $7458: $38 $e7

jr_05f_745a:
    ld [$309f], sp                                ; $745a: $08 $9f $30
    rst $38                                       ; $745d: $ff
    ld a, a                                       ; $745e: $7f
    ld d, b                                       ; $745f: $50
    ld l, d                                       ; $7460: $6a
    ld b, h                                       ; $7461: $44
    db $fd                                        ; $7462: $fd
    add b                                         ; $7463: $80
    rst $38                                       ; $7464: $ff
    jr z, jr_05f_745a                             ; $7465: $28 $f3

    push af                                       ; $7467: $f5
    nop                                           ; $7468: $00
    ldh [$e0], a                                  ; $7469: $e0 $e0
    ret nz                                        ; $746b: $c0

    jp Jump_000_01fc                              ; $746c: $c3 $fc $01


    db $e3                                        ; $746f: $e3
    rlca                                          ; $7470: $07
    cp a                                          ; $7471: $bf
    sbc h                                         ; $7472: $9c
    inc a                                         ; $7473: $3c
    ld h, b                                       ; $7474: $60
    db $e3                                        ; $7475: $e3
    add e                                         ; $7476: $83
    sbc a                                         ; $7477: $9f

jr_05f_7478:
    ld d, b                                       ; $7478: $50
    pop hl                                        ; $7479: $e1
    sbc b                                         ; $747a: $98

jr_05f_747b:
    cp [hl]                                       ; $747b: $be
    ld d, b                                       ; $747c: $50
    ld [c], a                                     ; $747d: $e2
    jr jr_05f_747b                                ; $747e: $18 $fb

    ld [c], a                                     ; $7480: $e2
    push af                                       ; $7481: $f5
    nop                                           ; $7482: $00
    sub b                                         ; $7483: $90
    and b                                         ; $7484: $a0
    rst $20                                       ; $7485: $e7
    rst $38                                       ; $7486: $ff
    rrca                                          ; $7487: $0f
    ret c                                         ; $7488: $d8

    ccf                                           ; $7489: $3f
    ld h, b                                       ; $748a: $60
    ld hl, sp-$79                                 ; $748b: $f8 $87

jr_05f_748d:
    rst $20                                       ; $748d: $e7
    jr jr_05f_748d                                ; $748e: $18 $fd

    sbc a                                         ; $7490: $9f
    ld d, b                                       ; $7491: $50
    pop hl                                        ; $7492: $e1
    pop bc                                        ; $7493: $c1
    ld sp, hl                                     ; $7494: $f9
    ld b, $c7                                     ; $7495: $06 $c7
    jr c, jr_05f_74d3                             ; $7497: $38 $3a

    cp a                                          ; $7499: $bf
    ret nz                                        ; $749a: $c0

    db $dd                                        ; $749b: $dd
    inc b                                         ; $749c: $04

jr_05f_749d:
    ei                                            ; $749d: $fb
    jr nz, jr_05f_749d                            ; $749e: $20 $fd

    ret nz                                        ; $74a0: $c0

    push hl                                       ; $74a1: $e5
    cp $ef                                        ; $74a2: $fe $ef
    ld bc, $01ff                                  ; $74a4: $01 $ff $01
    ld sp, hl                                     ; $74a7: $f9
    ld a, [$07c1]                                 ; $74a8: $fa $c1 $07
    db $f4                                        ; $74ab: $f4
    ld b, $ff                                     ; $74ac: $06 $ff
    ld c, b                                       ; $74ae: $48
    rst $28                                       ; $74af: $ef
    sub b                                         ; $74b0: $90
    jp c, $dd90                                   ; $74b1: $da $90 $dd

    inc h                                         ; $74b4: $24
    xor e                                         ; $74b5: $ab
    rst $08                                       ; $74b6: $cf
    jr nz, jr_05f_7478                            ; $74b7: $20 $bf

    ld d, b                                       ; $74b9: $50
    ld a, l                                       ; $74ba: $7d
    ldh [$c3], a                                  ; $74bb: $e0 $c3
    ld e, [hl]                                    ; $74bd: $5e
    jp $0fe7                                      ; $74be: $c3 $e7 $0f


    rst $38                                       ; $74c1: $ff
    sbc b                                         ; $74c2: $98
    jr c, jr_05f_7525                             ; $74c3: $38 $60

    rst $20                                       ; $74c5: $e7
    add a                                         ; $74c6: $87
    sbc a                                         ; $74c7: $9f
    ld [$ffff], sp                                ; $74c8: $08 $ff $ff
    nop                                           ; $74cb: $00
    xor a                                         ; $74cc: $af
    jr nz, @-$24                                  ; $74cd: $20 $da

    ld b, b                                       ; $74cf: $40
    db $ed                                        ; $74d0: $ed
    rlca                                          ; $74d1: $07
    rst $38                                       ; $74d2: $ff

jr_05f_74d3:
    ei                                            ; $74d3: $fb
    jr @-$06                                      ; $74d4: $18 $f8

    ldh a, [$e1]                                  ; $74d6: $f0 $e1
    dec bc                                        ; $74d8: $0b
    sbc h                                         ; $74d9: $9c
    inc sp                                        ; $74da: $33
    ld a, b                                       ; $74db: $78
    ld b, a                                       ; $74dc: $47
    sbc $5e                                       ; $74dd: $de $5e
    ldh [$bf], a                                  ; $74df: $e0 $bf
    ret nz                                        ; $74e1: $c0

    ld a, a                                       ; $74e2: $7f
    add b                                         ; $74e3: $80
    inc [hl]                                      ; $74e4: $34
    pop bc                                        ; $74e5: $c1
    sub b                                         ; $74e6: $90
    or a                                          ; $74e7: $b7
    rst $38                                       ; $74e8: $ff
    inc h                                         ; $74e9: $24
    ld l, a                                       ; $74ea: $6f
    ld b, h                                       ; $74eb: $44
    ei                                            ; $74ec: $fb
    add b                                         ; $74ed: $80
    rst $38                                       ; $74ee: $ff
    ld b, b                                       ; $74ef: $40
    cp a                                          ; $74f0: $bf
    rst $30                                       ; $74f1: $f7
    ld [bc], a                                    ; $74f2: $02
    ld e, e                                       ; $74f3: $5b
    ld [hl+], a                                   ; $74f4: $22
    add b                                         ; $74f5: $80
    ldh [$a5], a                                  ; $74f6: $e0 $a5
    ld e, d                                       ; $74f8: $5a
    ld d, b                                       ; $74f9: $50
    xor l                                         ; $74fa: $ad
    rst $38                                       ; $74fb: $ff
    sbc d                                         ; $74fc: $9a
    ld h, l                                       ; $74fd: $65
    dec h                                         ; $74fe: $25
    jp c, $15aa                                   ; $74ff: $da $aa $15

    ld d, l                                       ; $7502: $55
    xor d                                         ; $7503: $aa
    rst $38                                       ; $7504: $ff
    ld l, b                                       ; $7505: $68
    db $d3                                        ; $7506: $d3
    sbc d                                         ; $7507: $9a
    ld h, l                                       ; $7508: $65
    ld e, e                                       ; $7509: $5b
    rst $38                                       ; $750a: $ff
    xor a                                         ; $750b: $af
    rst $38                                       ; $750c: $ff
    ei                                            ; $750d: $fb
    ld h, a                                       ; $750e: $67
    rst $38                                       ; $750f: $ff
    and b                                         ; $7510: $a0
    ld h, e                                       ; $7511: $63
    db $d3                                        ; $7512: $d3
    db $fd                                        ; $7513: $fd
    ld l, l                                       ; $7514: $6d
    rst $38                                       ; $7515: $ff
    ld c, b                                       ; $7516: $48
    rst $38                                       ; $7517: $ff
    rst $08                                       ; $7518: $cf
    ld c, b                                       ; $7519: $48
    rst $18                                       ; $751a: $df
    sub h                                         ; $751b: $94
    cp c                                          ; $751c: $b9
    sub b                                         ; $751d: $90
    cp e                                          ; $751e: $bb
    sub b                                         ; $751f: $90
    rst $38                                       ; $7520: $ff
    cp a                                          ; $7521: $bf
    ld d, b                                       ; $7522: $50
    db $fd                                        ; $7523: $fd
    ld c, b                                       ; $7524: $48

jr_05f_7525:
    rst $18                                       ; $7525: $df
    ld c, d                                       ; $7526: $4a
    rst $08                                       ; $7527: $cf
    sub b                                         ; $7528: $90
    rst $38                                       ; $7529: $ff
    sbc a                                         ; $752a: $9f
    sub b                                         ; $752b: $90
    rst $18                                       ; $752c: $df
    ld c, b                                       ; $752d: $48
    ld [$6d4a], a                                 ; $752e: $ea $4a $6d
    ld c, b                                       ; $7531: $48
    rst $38                                       ; $7532: $ff
    ld l, a                                       ; $7533: $6f
    ld d, b                                       ; $7534: $50
    push af                                       ; $7535: $f5
    sub b                                         ; $7536: $90
    rst $10                                       ; $7537: $d7
    sub d                                         ; $7538: $92
    sub a                                         ; $7539: $97
    ld c, e                                       ; $753a: $4b
    rst $38                                       ; $753b: $ff
    ret z                                         ; $753c: $c8

    ld c, e                                       ; $753d: $4b
    ret c                                         ; $753e: $d8

    sub a                                         ; $753f: $97
    cp b                                          ; $7540: $b8
    sub a                                         ; $7541: $97
    or b                                          ; $7542: $b0
    sub a                                         ; $7543: $97
    rst $38                                       ; $7544: $ff
    or b                                          ; $7545: $b0
    ld d, a                                       ; $7546: $57
    ret c                                         ; $7547: $d8

    ld c, e                                       ; $7548: $4b
    ret c                                         ; $7549: $d8

    ld c, e                                       ; $754a: $4b
    ret z                                         ; $754b: $c8

    sub a                                         ; $754c: $97
    rst $30                                       ; $754d: $f7
    sub b                                         ; $754e: $90
    sub a                                         ; $754f: $97
    ret c                                         ; $7550: $d8

    inc e                                         ; $7551: $1c
    ret nz                                        ; $7552: $c0

    ld l, b                                       ; $7553: $68
    ld c, a                                       ; $7554: $4f
    ld l, b                                       ; $7555: $68
    ld d, a                                       ; $7556: $57
    rst $18                                       ; $7557: $df
    ld hl, sp-$61                                 ; $7558: $f8 $9f
    ret nc                                        ; $755a: $d0

    sbc a                                         ; $755b: $9f
    sub b                                         ; $755c: $90
    ret nz                                        ; $755d: $c0

    and e                                         ; $755e: $a3
    cp l                                          ; $755f: $bd
    ld a, [hl]                                    ; $7560: $7e
    ld a, a                                       ; $7561: $7f
    jp Jump_000_00ff                              ; $7562: $c3 $ff $00


    jp Jump_000_3c3c                              ; $7565: $c3 $3c $3c


    jp $e0f9                                      ; $7568: $c3 $f9 $e0


    cp $52                                        ; $756b: $fe $52
    ld [c], a                                     ; $756d: $e2
    halt                                          ; $756e: $76
    sbc c                                         ; $756f: $99
    rst $38                                       ; $7570: $ff
    nop                                           ; $7571: $00
    sbc c                                         ; $7572: $99
    ld h, [hl]                                    ; $7573: $66
    ld h, [hl]                                    ; $7574: $66
    db $fd                                        ; $7575: $fd
    sbc c                                         ; $7576: $99
    ld d, b                                       ; $7577: $50
    ldh [rSC], a                                  ; $7578: $e0 $02
    xor l                                         ; $757a: $ad
    ld [bc], a                                    ; $757b: $02
    jp c, $fd3c                                   ; $757c: $da $3c $fd

    ld a, [$e4e0]                                 ; $757f: $fa $e0 $e4
    ei                                            ; $7582: $fb
    ldh a, [$e0]                                  ; $7583: $f0 $e0
    xor a                                         ; $7585: $af
    nop                                           ; $7586: $00
    reti                                          ; $7587: $d9


    halt                                          ; $7588: $76
    rst $28                                       ; $7589: $ef
    ld a, [hl]                                    ; $758a: $7e
    ldh [$e4], a                                  ; $758b: $e0 $e4
    rst $18                                       ; $758d: $df
    ld bc, $0603                                  ; $758e: $01 $03 $06
    ld c, $18                                     ; $7591: $0e $18
    ret nc                                        ; $7593: $d0

    ret z                                         ; $7594: $c8

    sbc a                                         ; $7595: $9f
    dec de                                        ; $7596: $1b
    ld a, b                                       ; $7597: $78
    ld h, a                                       ; $7598: $67
    ldh [$df], a                                  ; $7599: $e0 $df
    ld [hl], $e2                                  ; $759b: $36 $e2
    ld h, [hl]                                    ; $759d: $66
    and e                                         ; $759e: $a3
    ld d, b                                       ; $759f: $50
    rst $38                                       ; $75a0: $ff
    xor a                                         ; $75a1: $af
    dec h                                         ; $75a2: $25
    jp c, $b807                                   ; $75a3: $da $07 $b8

    rlca                                          ; $75a6: $07
    db $fd                                        ; $75a7: $fd
    and d                                         ; $75a8: $a2
    rst $38                                       ; $75a9: $ff
    ld e, a                                       ; $75aa: $5f
    ldh [rNR22], a                                ; $75ab: $e0 $17
    push hl                                       ; $75ad: $e5
    cp d                                          ; $75ae: $ba
    ld b, d                                       ; $75af: $42
    db $fd                                        ; $75b0: $fd
    db $fd                                        ; $75b1: $fd
    rst $30                                       ; $75b2: $f7
    db $fd                                        ; $75b3: $fd
    rst $18                                       ; $75b4: $df
    rst $38                                       ; $75b5: $ff
    db $fc                                        ; $75b6: $fc
    ld h, b                                       ; $75b7: $60
    rst $38                                       ; $75b8: $ff
    ld a, l                                       ; $75b9: $7d
    rst $38                                       ; $75ba: $ff
    rst $28                                       ; $75bb: $ef
    db $fd                                        ; $75bc: $fd
    rst $28                                       ; $75bd: $ef
    halt                                          ; $75be: $76
    ld h, b                                       ; $75bf: $60
    rst $38                                       ; $75c0: $ff
    xor l                                         ; $75c1: $ad
    rst $28                                       ; $75c2: $ef
    halt                                          ; $75c3: $76
    rst $38                                       ; $75c4: $ff
    and $fe                                       ; $75c5: $e6 $fe
    xor $e0                                       ; $75c7: $ee $e0
    db $e4                                        ; $75c9: $e4
    db $eb                                        ; $75ca: $eb
    ld [hl], h                                    ; $75cb: $74
    rst $30                                       ; $75cc: $f7
    ld c, b                                       ; $75cd: $48
    rst $38                                       ; $75ce: $ff
    add b                                         ; $75cf: $80
    rst $38                                       ; $75d0: $ff
    cp e                                          ; $75d1: $bb
    db $eb                                        ; $75d2: $eb
    rst $38                                       ; $75d3: $ff
    ld a, h                                       ; $75d4: $7c
    rst $38                                       ; $75d5: $ff
    ld d, b                                       ; $75d6: $50
    rst $10                                       ; $75d7: $d7
    xor h                                         ; $75d8: $ac
    db $fd                                        ; $75d9: $fd
    db $eb                                        ; $75da: $eb
    ld h, a                                       ; $75db: $67
    pop hl                                        ; $75dc: $e1
    ld b, b                                       ; $75dd: $40
    or l                                          ; $75de: $b5
    nop                                           ; $75df: $00
    ei                                            ; $75e0: $fb
    ld bc, $ffff                                  ; $75e1: $01 $ff $ff
    ld [bc], a                                    ; $75e4: $02
    rst $10                                       ; $75e5: $d7
    db $10                                        ; $75e6: $10
    db $ed                                        ; $75e7: $ed
    dec b                                         ; $75e8: $05
    rst $38                                       ; $75e9: $ff
    inc bc                                        ; $75ea: $03
    rst $38                                       ; $75eb: $ff
    rst $38                                       ; $75ec: $ff
    ld a, [hl+]                                   ; $75ed: $2a
    jp c, $bd08                                   ; $75ee: $da $08 $bd

    dec d                                         ; $75f1: $15
    rst $38                                       ; $75f2: $ff
    ld c, $ff                                     ; $75f3: $0e $ff
    rst $38                                       ; $75f5: $ff
    ld b, l                                       ; $75f6: $45
    rst $30                                       ; $75f7: $f7
    ld a, [bc]                                    ; $75f8: $0a
    cp $25                                        ; $75f9: $fe $25
    rst $28                                       ; $75fb: $ef
    sbc e                                         ; $75fc: $9b
    rst $30                                       ; $75fd: $f7
    rst $38                                       ; $75fe: $ff
    ld e, $ff                                     ; $75ff: $1e $ff
    halt                                          ; $7601: $76
    cp [hl]                                       ; $7602: $be
    db $db                                        ; $7603: $db
    rst $38                                       ; $7604: $ff
    cp $ff                                        ; $7605: $fe $ff
    rst $38                                       ; $7607: $ff
    push af                                       ; $7608: $f5
    push af                                       ; $7609: $f5
    ld l, b                                       ; $760a: $68
    rst $28                                       ; $760b: $ef
    call nc, $b8ff                                ; $760c: $d4 $ff $b8
    xor a                                         ; $760f: $af
    rst $38                                       ; $7610: $ff
    ret nc                                        ; $7611: $d0

    jp c, $fda5                                   ; $7612: $da $a5 $fd

    ld d, d                                       ; $7615: $52
    rst $38                                       ; $7616: $ff
    ld [bc], a                                    ; $7617: $02
    ei                                            ; $7618: $fb
    rst $38                                       ; $7619: $ff
    ld b, l                                       ; $761a: $45
    xor a                                         ; $761b: $af
    ld d, [hl]                                    ; $761c: $56
    jp c, $fe22                                   ; $761d: $da $22 $fe

    dec b                                         ; $7620: $05
    rst $38                                       ; $7621: $ff
    rst $38                                       ; $7622: $ff
    ld h, $fd                                     ; $7623: $26 $fd
    inc bc                                        ; $7625: $03
    cp e                                          ; $7626: $bb
    ld bc, $b9fd                                  ; $7627: $01 $fd $b9
    ei                                            ; $762a: $fb
    rst $38                                       ; $762b: $ff
    ld [hl], h                                    ; $762c: $74
    rst $10                                       ; $762d: $d7
    ld a, [hl+]                                   ; $762e: $2a
    db $ed                                        ; $762f: $ed
    ld [bc], a                                    ; $7630: $02
    rst $38                                       ; $7631: $ff
    jr nz, @-$24                                  ; $7632: $20 $da

    cp $ba                                        ; $7634: $fe $ba
    and c                                         ; $7636: $a1

jr_05f_7637:
    nop                                           ; $7637: $00
    ei                                            ; $7638: $fb
    call c, $faff                                 ; $7639: $dc $ff $fa
    ei                                            ; $763c: $fb
    db $f4                                        ; $763d: $f4
    rst $38                                       ; $763e: $ff
    rst $38                                       ; $763f: $ff
    and $eb                                       ; $7640: $e6 $eb
    db $f4                                        ; $7642: $f4
    rst $30                                       ; $7643: $f7
    ld l, b                                       ; $7644: $68
    rst $38                                       ; $7645: $ff
    jp nc, $fffb                                  ; $7646: $d2 $fb $ff

    add sp, -$0f                                  ; $7649: $e8 $f1
    ld b, b                                       ; $764b: $40
    ld a, [$adfe]                                 ; $764c: $fa $fe $ad
    db $fd                                        ; $764f: $fd
    ld e, e                                       ; $7650: $5b
    rst $08                                       ; $7651: $cf
    rst $18                                       ; $7652: $df

jr_05f_7653:
    adc b                                         ; $7653: $88
    push af                                       ; $7654: $f5
    db $10                                        ; $7655: $10
    or l                                          ; $7656: $b5
    add d                                         ; $7657: $82
    ld d, [hl]                                    ; $7658: $56
    ret nz                                        ; $7659: $c0

    jr jr_05f_7637                                ; $765a: $18 $db

    rst $38                                       ; $765c: $ff
    inc a                                         ; $765d: $3c
    and l                                         ; $765e: $a5
    ld a, [hl]                                    ; $765f: $7e
    jp $c366                                      ; $7660: $c3 $66 $c3


    ld h, [hl]                                    ; $7663: $66
    sbc c                                         ; $7664: $99

jr_05f_7665:
    db $fd                                        ; $7665: $fd
    ld b, d                                       ; $7666: $42
    and d                                         ; $7667: $a2
    add c                                         ; $7668: $81
    or a                                          ; $7669: $b7
    ld a, b                                       ; $766a: $78
    adc e                                         ; $766b: $8b
    inc a                                         ; $766c: $3c
    push bc                                       ; $766d: $c5
    ld c, $bf                                     ; $766e: $0e $bf
    push bc                                       ; $7670: $c5
    ld c, $8b                                     ; $7671: $0e $8b
    inc a                                         ; $7673: $3c
    or a                                          ; $7674: $b7
    ld a, b                                       ; $7675: $78
    sub d                                         ; $7676: $92
    add c                                         ; $7677: $81
    rst $18                                       ; $7678: $df
    rst $38                                       ; $7679: $ff
    ld a, $e7                                     ; $767a: $3e $e7
    ld a, [hl]                                    ; $767c: $7e
    inc bc                                        ; $767d: $03
    adc $33                                       ; $767e: $ce $33
    add [hl]                                      ; $7680: $86
    push af                                       ; $7681: $f5
    rst $18                                       ; $7682: $df
    ld b, $e7                                     ; $7683: $06 $e7
    inc c                                         ; $7685: $0c
    rst $20                                       ; $7686: $e7
    jr jr_05f_76ff                                ; $7687: $18 $76

    and b                                         ; $7689: $a0
    db $10                                        ; $768a: $10
    rst $10                                       ; $768b: $d7
    ld a, a                                       ; $768c: $7f
    jr c, @-$53                                   ; $768d: $38 $ab

    ld a, h                                       ; $768f: $7c
    rst $00                                       ; $7690: $c7
    ld l, h                                       ; $7691: $6c
    sub e                                         ; $7692: $93
    ld b, h                                       ; $7693: $44
    ld [hl], h                                    ; $7694: $74
    add l                                         ; $7695: $85
    rst $38                                       ; $7696: $ff
    rst $10                                       ; $7697: $d7
    jr c, jr_05f_7665                             ; $7698: $38 $cb

    inc e                                         ; $769a: $1c
    push hl                                       ; $769b: $e5
    ld c, $cb                                     ; $769c: $0e $cb
    inc e                                         ; $769e: $1c
    ei                                            ; $769f: $fb
    rst $10                                       ; $76a0: $d7
    jr c, jr_05f_7705                             ; $76a1: $38 $62

    add h                                         ; $76a3: $84
    inc a                                         ; $76a4: $3c
    add a                                         ; $76a5: $87
    ld a, h                                       ; $76a6: $7c
    rst $30                                       ; $76a7: $f7

jr_05f_76a8:
    inc c                                         ; $76a8: $0c
    ld hl, sp-$02                                 ; $76a9: $f8 $fe

jr_05f_76ab:
    ldh [$03], a                                  ; $76ab: $e0 $03
    ret nz                                        ; $76ad: $c0

    ld b, h                                       ; $76ae: $44
    and d                                         ; $76af: $a2
    db $10                                        ; $76b0: $10
    rst $28                                       ; $76b1: $ef
    jr jr_05f_76ab                                ; $76b2: $18 $f7

    inc c                                         ; $76b4: $0c
    rst $20                                       ; $76b5: $e7
    rst $28                                       ; $76b6: $ef
    jr jr_05f_76a8                                ; $76b7: $18 $ef

    adc l                                         ; $76b9: $8d
    db $e3                                        ; $76ba: $e3
    dec e                                         ; $76bb: $1d
    and b                                         ; $76bc: $a0
    rst $28                                       ; $76bd: $ef
    jr c, jr_05f_7653                             ; $76be: $38 $93

    ld a, l                                       ; $76c0: $7d
    ld l, h                                       ; $76c1: $6c
    ld [hl], $87                                  ; $76c2: $36 $87
    rst $08                                       ; $76c4: $cf
    inc a                                         ; $76c5: $3c
    rst $38                                       ; $76c6: $ff
    inc b                                         ; $76c7: $04
    ei                                            ; $76c8: $fb
    cp $e0                                        ; $76c9: $fe $e0
    sbc $24                                       ; $76cb: $de $24
    add c                                         ; $76cd: $81
    ldh a, [rSB]                                  ; $76ce: $f0 $01
    rst $20                                       ; $76d0: $e7
    rra                                           ; $76d1: $1f
    add b                                         ; $76d2: $80
    and h                                         ; $76d3: $a4
    sbc h                                         ; $76d4: $9c
    ld h, b                                       ; $76d5: $60
    rst $30                                       ; $76d6: $f7
    ld a, b                                       ; $76d7: $78
    add b                                         ; $76d8: $80
    ret c                                         ; $76d9: $d8

    add b                                         ; $76da: $80
    and b                                         ; $76db: $a0
    add $38                                       ; $76dc: $c6 $38
    inc a                                         ; $76de: $3c
    ret nz                                        ; $76df: $c0

    rst $38                                       ; $76e0: $ff
    db $fc                                        ; $76e1: $fc
    nop                                           ; $76e2: $00
    and h                                         ; $76e3: $a4
    nop                                           ; $76e4: $00
    inc h                                         ; $76e5: $24
    nop                                           ; $76e6: $00
    jr jr_05f_76e9                                ; $76e7: $18 $00

jr_05f_76e9:
    rst $38                                       ; $76e9: $ff
    jr jr_05f_76f5                                ; $76ea: $18 $09

    dec e                                         ; $76ec: $1d
    ld [de], a                                    ; $76ed: $12
    ld a, [de]                                    ; $76ee: $1a
    ld d, $3f                                     ; $76ef: $16 $3f
    ld h, h                                       ; $76f1: $64

jr_05f_76f2:
    cp e                                          ; $76f2: $bb
    ld [hl], l                                    ; $76f3: $75
    add h                                         ; $76f4: $84

jr_05f_76f5:
    or b                                          ; $76f5: $b0
    add c                                         ; $76f6: $81
    ld l, a                                       ; $76f7: $6f
    add b                                         ; $76f8: $80
    cp a                                          ; $76f9: $bf
    ldh a, [$e0]                                  ; $76fa: $f0 $e0
    dec de                                        ; $76fc: $1b
    rst $38                                       ; $76fd: $ff
    inc de                                        ; $76fe: $13

jr_05f_76ff:
    ld a, d                                       ; $76ff: $7a
    ld h, l                                       ; $7700: $65
    or $87                                        ; $7701: $f6 $87
    db $e4                                        ; $7703: $e4
    dec de                                        ; $7704: $1b

jr_05f_7705:
    sbc b                                         ; $7705: $98
    rst $38                                       ; $7706: $ff
    ld h, a                                       ; $7707: $67
    ld [hl], b                                    ; $7708: $70
    xor a                                         ; $7709: $af
    ret nz                                        ; $770a: $c0

    ret nz                                        ; $770b: $c0

    rlca                                          ; $770c: $07
    rst $00                                       ; $770d: $c7
    rra                                           ; $770e: $1f
    rst $38                                       ; $770f: $ff
    sbc b                                         ; $7710: $98
    jr c, jr_05f_7733                             ; $7711: $38 $20

    ld [hl], a                                    ; $7713: $77
    daa                                           ; $7714: $27
    ld l, a                                       ; $7715: $6f
    ld c, e                                       ; $7716: $4b
    call c, Call_05f_4f9f                         ; $7717: $dc $9f $4f
    ret c                                         ; $771a: $d8

    ld c, a                                       ; $771b: $4f
    ret c                                         ; $771c: $d8

    di                                            ; $771d: $f3
    halt                                          ; $771e: $76
    and b                                         ; $771f: $a0
    and b                                         ; $7720: $a0
    add h                                         ; $7721: $84
    ld e, d                                       ; $7722: $5a
    rst $08                                       ; $7723: $cf
    ret z                                         ; $7724: $c8

    ld e, h                                       ; $7725: $5c
    ret z                                         ; $7726: $c8

    ld e, h                                       ; $7727: $5c
    cp h                                          ; $7728: $bc
    pop hl                                        ; $7729: $e1
    or [hl]                                       ; $772a: $b6
    ldh [$a4], a                                  ; $772b: $e0 $a4
    ldh [$df], a                                  ; $772d: $e0 $df
    db $fc                                        ; $772f: $fc
    jr @-$02                                      ; $7730: $18 $fc

    inc b                                         ; $7732: $04

jr_05f_7733:
    ld e, $a0                                     ; $7733: $1e $a0
    add l                                         ; $7735: $85
    rrca                                          ; $7736: $0f
    ret nz                                        ; $7737: $c0

    rst $38                                       ; $7738: $ff
    rst $20                                       ; $7739: $e7
    ld hl, sp+$18                                 ; $773a: $f8 $18
    ld e, $06                                     ; $773c: $1e $06
    rst $20                                       ; $773e: $e7
    pop hl                                        ; $773f: $e1
    ld sp, hl                                     ; $7740: $f9
    ei                                            ; $7741: $fb
    sub b                                         ; $7742: $90
    ret c                                         ; $7743: $d8

    cp $e0                                        ; $7744: $fe $e0
    call c, $dc90                                 ; $7746: $dc $90 $dc
    and b                                         ; $7749: $a0
    db $f4                                        ; $774a: $f4
    ld [hl], a                                    ; $774b: $77
    jr nz, jr_05f_76f2                            ; $774c: $20 $a4

    ld b, b                                       ; $774e: $40
    add b                                         ; $774f: $80
    ldh [$97], a                                  ; $7750: $e0 $97
    or b                                          ; $7752: $b0
    sbc a                                         ; $7753: $9f
    cp $e0                                        ; $7754: $fe $e0
    ei                                            ; $7756: $fb
    xor a                                         ; $7757: $af
    or b                                          ; $7758: $b0
    xor d                                         ; $7759: $aa
    add b                                         ; $775a: $80
    ldh [$9f], a                                  ; $775b: $e0 $9f
    ret nz                                        ; $775d: $c0

    cp a                                          ; $775e: $bf
    add b                                         ; $775f: $80
    cp $c0                                        ; $7760: $fe $c0
    db $e3                                        ; $7762: $e3
    ld bc, $0225                                  ; $7763: $01 $25 $02
    daa                                           ; $7766: $27
    ld [bc], a                                    ; $7767: $02
    ld h, $0c                                     ; $7768: $26 $0c
    rst $30                                       ; $776a: $f7
    rra                                           ; $776b: $1f
    ld de, $b01b                                  ; $776c: $11 $1b $b0
    db $e4                                        ; $776f: $e4
    inc h                                         ; $7770: $24
    ld bc, $0227                                  ; $7771: $01 $27 $02
    rst $38                                       ; $7774: $ff
    daa                                           ; $7775: $27
    inc b                                         ; $7776: $04
    ld e, $09                                     ; $7777: $1e $09
    dec e                                         ; $7779: $1d
    ld c, b                                       ; $777a: $48
    call z, $f748                                 ; $777b: $cc $48 $f7
    ret c                                         ; $777e: $d8

    sub b                                         ; $777f: $90
    cp b                                          ; $7780: $b8
    cp $e1                                        ; $7781: $fe $e1
    ld d, b                                       ; $7783: $50
    ld hl, sp+$48                                 ; $7784: $f8 $48
    ret c                                         ; $7786: $d8

    rst $38                                       ; $7787: $ff
    ld c, b                                       ; $7788: $48
    call z, $b890                                 ; $7789: $cc $90 $b8
    adc b                                         ; $778c: $88
    add sp, $48                                   ; $778d: $e8 $48
    db $ec                                        ; $778f: $ec
    xor e                                         ; $7790: $ab
    ld c, b                                       ; $7791: $48
    ld l, h                                       ; $7792: $6c
    cp $e0                                        ; $7793: $fe $e0
    db $ec                                        ; $7795: $ec
    and h                                         ; $7796: $a4
    ldh [$98], a                                  ; $7797: $e0 $98
    add b                                         ; $7799: $80
    ld [c], a                                     ; $779a: $e2
    inc a                                         ; $779b: $3c
    srl h                                         ; $779c: $cb $3c
    rst $38                                       ; $779e: $ff
    add b                                         ; $779f: $80
    and b                                         ; $77a0: $a0
    db $e3                                        ; $77a1: $e3
    and b                                         ; $77a2: $a0

jr_05f_77a3:
    and c                                         ; $77a3: $a1
    ld [hl], b                                    ; $77a4: $70
    ld [c], a                                     ; $77a5: $e2
    ld h, [hl]                                    ; $77a6: $66
    ld h, [hl]                                    ; $77a7: $66
    dec d                                         ; $77a8: $15
    rst $38                                       ; $77a9: $ff
    add b                                         ; $77aa: $80
    and l                                         ; $77ab: $a5
    ldh [rLCDC], a                                ; $77ac: $e0 $40
    pop hl                                        ; $77ae: $e1
    ld a, a                                       ; $77af: $7f
    nop                                           ; $77b0: $00
    rst $20                                       ; $77b1: $e7
    sub b                                         ; $77b2: $90
    push hl                                       ; $77b3: $e5
    adc [hl]                                      ; $77b4: $8e
    ld [c], a                                     ; $77b5: $e2
    rst $00                                       ; $77b6: $c7
    dec de                                        ; $77b7: $1b
    inc b                                         ; $77b8: $04
    ld e, $90                                     ; $77b9: $1e $90
    push hl                                       ; $77bb: $e5
    db $fc                                        ; $77bc: $fc
    ld [c], a                                     ; $77bd: $e2
    ldh a, [$c1]                                  ; $77be: $f0 $c1
    db $ed                                        ; $77c0: $ed
    ld [de], a                                    ; $77c1: $12
    ld e, a                                       ; $77c2: $5f
    ei                                            ; $77c3: $fb
    ld [de], a                                    ; $77c4: $12
    jp c, $f624                                   ; $77c5: $da $24 $f6

    cp $e0                                        ; $77c8: $fe $e0
    or h                                          ; $77ca: $b4
    sbc b                                         ; $77cb: $98
    ldh [$fd], a                                  ; $77cc: $e0 $fd
    db $ec                                        ; $77ce: $ec
    ldh [$e6], a                                  ; $77cf: $e0 $e6
    dec h                                         ; $77d1: $25
    ld bc, $0627                                  ; $77d2: $01 $27 $06
    rra                                           ; $77d5: $1f
    ld [$1efb], sp                                ; $77d6: $08 $fb $1e
    jp hl                                         ; $77d9: $e9


    ld h, b                                       ; $77da: $60
    ld h, c                                       ; $77db: $61
    ld a, [hl-]                                   ; $77dc: $3a
    db $e4                                        ; $77dd: $e4
    ld [hl], $e4                                  ; $77de: $36 $e4
    ld [hl], $df                                  ; $77e0: $36 $df
    and h                                         ; $77e2: $a4
    ld [hl], h                                    ; $77e3: $74
    ret z                                         ; $77e4: $c8

    ld l, h                                       ; $77e5: $6c
    ret z                                         ; $77e6: $c8

    ld a, d                                       ; $77e7: $7a
    db $e3                                        ; $77e8: $e3
    call nc, $ff20                                ; $77e9: $d4 $20 $ff
    or h                                          ; $77ec: $b4
    jr nz, jr_05f_77a3                            ; $77ed: $20 $b4

    ld b, b                                       ; $77ef: $40
    ld h, h                                       ; $77f0: $64
    ld b, b                                       ; $77f1: $40
    ld e, b                                       ; $77f2: $58
    add b                                         ; $77f3: $80
    rst $38                                       ; $77f4: $ff
    ret c                                         ; $77f5: $d8

    ret z                                         ; $77f6: $c8

    ld l, b                                       ; $77f7: $68
    add sp, -$38                                  ; $77f8: $e8 $c8
    ld c, b                                       ; $77fa: $48
    sbc h                                         ; $77fb: $9c
    db $10                                        ; $77fc: $10
    ld b, a                                       ; $77fd: $47
    inc [hl]                                      ; $77fe: $34
    ldh [$e4], a                                  ; $77ff: $e0 $e4
    and b                                         ; $7801: $a0
    jp Jump_05f_4ca1                              ; $7802: $c3 $a1 $4c


    ld [hl], b                                    ; $7805: $70
    add h                                         ; $7806: $84
    and l                                         ; $7807: $a5
    ld [hl], b                                    ; $7808: $70
    add e                                         ; $7809: $83
    sbc l                                         ; $780a: $9d
    sub e                                         ; $780b: $93
    or $e0                                        ; $780c: $f6 $e0
    ld e, d                                       ; $780e: $5a
    ld e, b                                       ; $780f: $58
    or l                                          ; $7810: $b5
    ld h, b                                       ; $7811: $60
    add [hl]                                      ; $7812: $86
    ldh a, [$e0]                                  ; $7813: $f0 $e0
    ld e, e                                       ; $7815: $5b
    cp h                                          ; $7816: $bc
    dec h                                         ; $7817: $25
    jr nz, jr_05f_787a                            ; $7818: $20 $60

    add l                                         ; $781a: $85
    sbc e                                         ; $781b: $9b
    rst $30                                       ; $781c: $f7
    ld l, l                                       ; $781d: $6d
    rst $38                                       ; $781e: $ff
    ldh a, [$e5]                                  ; $781f: $f0 $e5
    ld d, a                                       ; $7821: $57
    cp a                                          ; $7822: $bf
    db $fd                                        ; $7823: $fd
    xor d                                         ; $7824: $aa
    rst $38                                       ; $7825: $ff
    sub e                                         ; $7826: $93
    rst $38                                       ; $7827: $ff
    ld l, l                                       ; $7828: $6d
    ld a, b                                       ; $7829: $78
    and b                                         ; $782a: $a0
    sub h                                         ; $782b: $94
    rst $38                                       ; $782c: $ff
    ld l, l                                       ; $782d: $6d
    add hl, hl                                    ; $782e: $29
    ld [c], a                                     ; $782f: $e2
    ld h, h                                       ; $7830: $64
    sub e                                         ; $7831: $93
    ld a, [de]                                    ; $7832: $1a
    xor l                                         ; $7833: $ad
    dec h                                         ; $7834: $25
    rst $38                                       ; $7835: $ff
    ld c, d                                       ; $7836: $4a
    ld h, h                                       ; $7837: $64
    sub e                                         ; $7838: $93
    ld d, d                                       ; $7839: $52
    ld l, l                                       ; $783a: $6d
    inc b                                         ; $783b: $04
    ld a, [$ff48]                                 ; $783c: $fa $48 $ff
    cp l                                          ; $783f: $bd
    ld a, [bc]                                    ; $7840: $0a
    push de                                       ; $7841: $d5
    dec d                                         ; $7842: $15
    ld [hl], d                                    ; $7843: $72
    ld d, d                                       ; $7844: $52
    xor a                                         ; $7845: $af
    dec c                                         ; $7846: $0d
    ld a, a                                       ; $7847: $7f
    jp c, $9364                                   ; $7848: $da $64 $93

    ld e, d                                       ; $784b: $5a
    ld h, l                                       ; $784c: $65
    ld b, $da                                     ; $784d: $06 $da
    jr nz, jr_05f_7893                            ; $784f: $20 $42

    jp hl                                         ; $7851: $e9


    push bc                                       ; $7852: $c5
    jr nz, jr_05f_789a                            ; $7853: $20 $45

    ldh a, [$0d]                                  ; $7855: $f0 $0d
    call c, $e0b6                                 ; $7857: $dc $b6 $e0
    xor c                                         ; $785a: $a9
    rst $30                                       ; $785b: $f7
    sbc a                                         ; $785c: $9f
    rst $38                                       ; $785d: $ff
    ei                                            ; $785e: $fb
    ld h, [hl]                                    ; $785f: $66
    cp a                                          ; $7860: $bf
    rst $38                                       ; $7861: $ff
    ld e, e                                       ; $7862: $5b
    ld a, [hl+]                                   ; $7863: $2a
    rst $38                                       ; $7864: $ff
    ld e, l                                       ; $7865: $5d
    rst $38                                       ; $7866: $ff
    or a                                          ; $7867: $b7
    add b                                         ; $7868: $80
    cp a                                          ; $7869: $bf
    ld b, b                                       ; $786a: $40
    rst $38                                       ; $786b: $ff
    ld h, b                                       ; $786c: $60
    rst $18                                       ; $786d: $df
    jr nz, @+$01                                  ; $786e: $20 $ff

    rst $38                                       ; $7870: $ff
    and b                                         ; $7871: $a0
    cp a                                          ; $7872: $bf
    jr nz, @+$71                                  ; $7873: $20 $6f

    db $10                                        ; $7875: $10
    rst $30                                       ; $7876: $f7
    ld d, b                                       ; $7877: $50
    db $fd                                        ; $7878: $fd
    rst $30                                       ; $7879: $f7

jr_05f_787a:
    ldh a, [$e3]                                  ; $787a: $f0 $e3
    and b                                         ; $787c: $a0
    ld a, a                                       ; $787d: $7f
    and b                                         ; $787e: $a0
    ld l, a                                       ; $787f: $6f
    ret nc                                        ; $7880: $d0

    scf                                           ; $7881: $37
    cp $fe                                        ; $7882: $fe $fe
    pop hl                                        ; $7884: $e1
    db $10                                        ; $7885: $10
    rst $30                                       ; $7886: $f7
    ld [$08db], sp                                ; $7887: $08 $db $08
    ei                                            ; $788a: $fb
    ld b, h                                       ; $788b: $44
    rst $38                                       ; $788c: $ff
    rst $38                                       ; $788d: $ff
    and h                                         ; $788e: $a4
    cp l                                          ; $788f: $bd
    ld c, $5b                                     ; $7890: $0e $5b
    ld [bc], a                                    ; $7892: $02

jr_05f_7893:
    or $41                                        ; $7893: $f6 $41
    rst $38                                       ; $7895: $ff
    rst $38                                       ; $7896: $ff
    cp a                                          ; $7897: $bf
    ret nz                                        ; $7898: $c0

    ld e, a                                       ; $7899: $5f

jr_05f_789a:
    ld h, b                                       ; $789a: $60
    ld e, a                                       ; $789b: $5f
    ld h, b                                       ; $789c: $60
    cpl                                           ; $789d: $2f
    sbc a                                         ; $789e: $9f
    or b                                          ; $789f: $b0
    cpl                                           ; $78a0: $2f

Jump_05f_78a1:
    or b                                          ; $78a1: $b0
    rla                                           ; $78a2: $17
    ret c                                         ; $78a3: $d8

    cp $e1                                        ; $78a4: $fe $e1
    ret nz                                        ; $78a6: $c0

    ldh [$df], a                                  ; $78a7: $e0 $df
    rst $38                                       ; $78a9: $ff
    or b                                          ; $78aa: $b0
    ld l, a                                       ; $78ab: $6f
    ldh [$2f], a                                  ; $78ac: $e0 $2f
    call nc, $ec33                                ; $78ae: $d4 $33 $ec
    dec e                                         ; $78b1: $1d
    cp a                                          ; $78b2: $bf
    ld a, [c]                                     ; $78b3: $f2
    ld c, $fd                                     ; $78b4: $0e $fd
    inc bc                                        ; $78b6: $03
    add b                                         ; $78b7: $80
    cp a                                          ; $78b8: $bf
    or d                                          ; $78b9: $b2
    pop hl                                        ; $78ba: $e1
    jr nz, jr_05f_78fc                            ; $78bb: $20 $3f

    rst $28                                       ; $78bd: $ef
    db $10                                        ; $78be: $10
    or e                                          ; $78bf: $b3

jr_05f_78c0:
    inc c                                         ; $78c0: $0c
    db $ed                                        ; $78c1: $ed
    ld [hl+], a                                   ; $78c2: $22
    daa                                           ; $78c3: $27
    ld h, b                                       ; $78c4: $60
    inc bc                                        ; $78c5: $03
    ld b, l                                       ; $78c6: $45
    ld e, a                                       ; $78c7: $5f
    ld c, $ce                                     ; $78c8: $0e $ce
    ld [hl-], a                                   ; $78ca: $32
    cp a                                          ; $78cb: $bf
    ld d, b                                       ; $78cc: $50
    db $10                                        ; $78cd: $10
    ld b, b                                       ; $78ce: $40
    ld bc, $6000                                  ; $78cf: $01 $00 $60

jr_05f_78d2:
    ld e, a                                       ; $78d2: $5f
    inc a                                         ; $78d3: $3c
    ld a, [hl-]                                   ; $78d4: $3a
    push hl                                       ; $78d5: $e5
    db $dd                                        ; $78d6: $dd
    ld [bc], a                                    ; $78d7: $02
    jr c, jr_05f_793a                             ; $78d8: $38 $60

    ld d, b                                       ; $78da: $50
    adc b                                         ; $78db: $88
    ldh [$fe], a                                  ; $78dc: $e0 $fe
    db $e3                                        ; $78de: $e3
    inc h                                         ; $78df: $24
    ld sp, hl                                     ; $78e0: $f9
    ld c, $ef                                     ; $78e1: $0e $ef
    ld sp, $4fbe                                  ; $78e3: $31 $be $4f
    ld [hl], b                                    ; $78e6: $70
    rst $38                                       ; $78e7: $ff
    cp a                                          ; $78e8: $bf
    ret nz                                        ; $78e9: $c0

    ld bc, $06fd                                  ; $78ea: $01 $fd $06
    rst $20                                       ; $78ed: $e7
    add hl, sp                                    ; $78ee: $39
    ld a, $e7                                     ; $78ef: $3e $e7
    rst $00                                       ; $78f1: $c7
    ld hl, sp+$3f                                 ; $78f2: $f8 $3f
    add $24                                       ; $78f4: $c6 $24
    ld h, c                                       ; $78f6: $61
    jr nz, jr_05f_78c0                            ; $78f7: $20 $c7

    jr c, jr_05f_7933                             ; $78f9: $38 $38

    or c                                          ; $78fb: $b1

jr_05f_78fc:
    rst $00                                       ; $78fc: $c7
    and d                                         ; $78fd: $a2
    ld h, b                                       ; $78fe: $60
    ld d, [hl]                                    ; $78ff: $56
    inc hl                                        ; $7900: $23
    ld l, d                                       ; $7901: $6a
    pop hl                                        ; $7902: $e1
    add sp, $1b                                   ; $7903: $e8 $1b
    cp $e2                                        ; $7905: $fe $e2
    rra                                           ; $7907: $1f
    db $fc                                        ; $7908: $fc
    ld e, [hl]                                    ; $7909: $5e
    pop hl                                        ; $790a: $e1
    ld b, c                                       ; $790b: $41
    daa                                           ; $790c: $27
    jr nz, jr_05f_78d2                            ; $790d: $20 $c3

    inc e                                         ; $790f: $1c
    inc e                                         ; $7910: $1c
    db $e3                                        ; $7911: $e3
    db $e3                                        ; $7912: $e3
    ei                                            ; $7913: $fb
    add b                                         ; $7914: $80
    cp a                                          ; $7915: $bf
    push af                                       ; $7916: $f5
    ld b, b                                       ; $7917: $40
    rst $38                                       ; $7918: $ff
    ld b, b                                       ; $7919: $40
    ld e, a                                       ; $791a: $5f
    ld b, b                                       ; $791b: $40
    ld e, a                                       ; $791c: $5f
    ei                                            ; $791d: $fb
    add b                                         ; $791e: $80
    cp a                                          ; $791f: $bf
    cp $e1                                        ; $7920: $fe $e1
    db $e3                                        ; $7922: $e3
    jp $bf3e                                      ; $7923: $c3 $3e $bf


    ld [hl], b                                    ; $7926: $70
    db $fc                                        ; $7927: $fc
    jr nc, jr_05f_794a                            ; $7928: $30 $20

    sub b                                         ; $792a: $90
    ldh [rIE], a                                  ; $792b: $e0 $ff
    ld [$14eb], sp                                ; $792d: $08 $eb $14
    rst $30                                       ; $7930: $f7
    add b                                         ; $7931: $80
    rst $38                                       ; $7932: $ff

jr_05f_7933:
    rst $38                                       ; $7933: $ff
    sub b                                         ; $7934: $90
    xor a                                         ; $7935: $af
    ld d, b                                       ; $7936: $50
    ld e, d                                       ; $7937: $5a
    ld h, l                                       ; $7938: $65
    db $fd                                        ; $7939: $fd

jr_05f_793a:
    ld b, d                                       ; $793a: $42
    rst $38                                       ; $793b: $ff
    rst $38                                       ; $793c: $ff
    ld b, b                                       ; $793d: $40
    rst $38                                       ; $793e: $ff
    ret z                                         ; $793f: $c8

    xor e                                         ; $7940: $ab
    sub h                                         ; $7941: $94
    rst $30                                       ; $7942: $f7
    nop                                           ; $7943: $00
    nop                                           ; $7944: $00
    rst $38                                       ; $7945: $ff
    rst $38                                       ; $7946: $ff
    rst $38                                       ; $7947: $ff
    rst $38                                       ; $7948: $ff
    rst $38                                       ; $7949: $ff

jr_05f_794a:
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
    add b                                         ; $7955: $80
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
    nop                                           ; $7964: $00
    nop                                           ; $7965: $00
    nop                                           ; $7966: $00
    nop                                           ; $7967: $00
    nop                                           ; $7968: $00
    nop                                           ; $7969: $00
    nop                                           ; $796a: $00
    nop                                           ; $796b: $00
    nop                                           ; $796c: $00
    nop                                           ; $796d: $00
    nop                                           ; $796e: $00
    nop                                           ; $796f: $00
    nop                                           ; $7970: $00
    nop                                           ; $7971: $00
    nop                                           ; $7972: $00
    nop                                           ; $7973: $00
    nop                                           ; $7974: $00
    nop                                           ; $7975: $00
    nop                                           ; $7976: $00
    nop                                           ; $7977: $00
    nop                                           ; $7978: $00
    nop                                           ; $7979: $00
    nop                                           ; $797a: $00
    nop                                           ; $797b: $00
    nop                                           ; $797c: $00
    nop                                           ; $797d: $00
    nop                                           ; $797e: $00
    nop                                           ; $797f: $00
    nop                                           ; $7980: $00
    nop                                           ; $7981: $00

Jump_05f_7982:
    nop                                           ; $7982: $00
    nop                                           ; $7983: $00
    nop                                           ; $7984: $00
    nop                                           ; $7985: $00
    nop                                           ; $7986: $00
    nop                                           ; $7987: $00
    nop                                           ; $7988: $00
    nop                                           ; $7989: $00
    nop                                           ; $798a: $00
    nop                                           ; $798b: $00
    nop                                           ; $798c: $00
    nop                                           ; $798d: $00
    nop                                           ; $798e: $00
    nop                                           ; $798f: $00
    nop                                           ; $7990: $00
    nop                                           ; $7991: $00
    nop                                           ; $7992: $00
    nop                                           ; $7993: $00
    nop                                           ; $7994: $00
    nop                                           ; $7995: $00
    nop                                           ; $7996: $00
    nop                                           ; $7997: $00
    nop                                           ; $7998: $00
    nop                                           ; $7999: $00
    nop                                           ; $799a: $00
    nop                                           ; $799b: $00
    nop                                           ; $799c: $00
    nop                                           ; $799d: $00
    nop                                           ; $799e: $00
    nop                                           ; $799f: $00
    nop                                           ; $79a0: $00
    nop                                           ; $79a1: $00
    nop                                           ; $79a2: $00
    nop                                           ; $79a3: $00
    nop                                           ; $79a4: $00
    nop                                           ; $79a5: $00
    nop                                           ; $79a6: $00
    nop                                           ; $79a7: $00
    nop                                           ; $79a8: $00
    nop                                           ; $79a9: $00
    nop                                           ; $79aa: $00
    nop                                           ; $79ab: $00
    nop                                           ; $79ac: $00
    nop                                           ; $79ad: $00
    nop                                           ; $79ae: $00
    nop                                           ; $79af: $00
    nop                                           ; $79b0: $00
    nop                                           ; $79b1: $00
    nop                                           ; $79b2: $00
    nop                                           ; $79b3: $00
    nop                                           ; $79b4: $00
    nop                                           ; $79b5: $00
    nop                                           ; $79b6: $00
    nop                                           ; $79b7: $00
    nop                                           ; $79b8: $00
    nop                                           ; $79b9: $00
    nop                                           ; $79ba: $00
    nop                                           ; $79bb: $00
    nop                                           ; $79bc: $00
    nop                                           ; $79bd: $00
    nop                                           ; $79be: $00
    nop                                           ; $79bf: $00
    nop                                           ; $79c0: $00
    nop                                           ; $79c1: $00
    nop                                           ; $79c2: $00
    nop                                           ; $79c3: $00
    nop                                           ; $79c4: $00
    nop                                           ; $79c5: $00
    nop                                           ; $79c6: $00
    nop                                           ; $79c7: $00
    nop                                           ; $79c8: $00
    nop                                           ; $79c9: $00
    nop                                           ; $79ca: $00
    nop                                           ; $79cb: $00
    nop                                           ; $79cc: $00
    nop                                           ; $79cd: $00
    nop                                           ; $79ce: $00
    nop                                           ; $79cf: $00
    nop                                           ; $79d0: $00
    nop                                           ; $79d1: $00
    nop                                           ; $79d2: $00
    nop                                           ; $79d3: $00
    nop                                           ; $79d4: $00
    nop                                           ; $79d5: $00
    nop                                           ; $79d6: $00
    nop                                           ; $79d7: $00
    nop                                           ; $79d8: $00
    nop                                           ; $79d9: $00
    nop                                           ; $79da: $00
    nop                                           ; $79db: $00
    nop                                           ; $79dc: $00
    nop                                           ; $79dd: $00
    nop                                           ; $79de: $00
    nop                                           ; $79df: $00
    nop                                           ; $79e0: $00
    nop                                           ; $79e1: $00
    nop                                           ; $79e2: $00
    nop                                           ; $79e3: $00
    nop                                           ; $79e4: $00
    nop                                           ; $79e5: $00
    nop                                           ; $79e6: $00
    nop                                           ; $79e7: $00
    nop                                           ; $79e8: $00
    nop                                           ; $79e9: $00
    nop                                           ; $79ea: $00
    nop                                           ; $79eb: $00
    nop                                           ; $79ec: $00
    nop                                           ; $79ed: $00
    nop                                           ; $79ee: $00
    nop                                           ; $79ef: $00
    nop                                           ; $79f0: $00
    nop                                           ; $79f1: $00
    nop                                           ; $79f2: $00
    nop                                           ; $79f3: $00
    nop                                           ; $79f4: $00
    nop                                           ; $79f5: $00
    nop                                           ; $79f6: $00
    nop                                           ; $79f7: $00
    nop                                           ; $79f8: $00
    nop                                           ; $79f9: $00
    nop                                           ; $79fa: $00
    nop                                           ; $79fb: $00
    nop                                           ; $79fc: $00
    nop                                           ; $79fd: $00
    nop                                           ; $79fe: $00
    nop                                           ; $79ff: $00
    nop                                           ; $7a00: $00
    nop                                           ; $7a01: $00
    nop                                           ; $7a02: $00
    nop                                           ; $7a03: $00
    nop                                           ; $7a04: $00
    nop                                           ; $7a05: $00
    nop                                           ; $7a06: $00
    nop                                           ; $7a07: $00
    nop                                           ; $7a08: $00
    nop                                           ; $7a09: $00
    nop                                           ; $7a0a: $00
    nop                                           ; $7a0b: $00
    nop                                           ; $7a0c: $00
    nop                                           ; $7a0d: $00
    nop                                           ; $7a0e: $00
    nop                                           ; $7a0f: $00
    nop                                           ; $7a10: $00
    nop                                           ; $7a11: $00
    nop                                           ; $7a12: $00
    nop                                           ; $7a13: $00
    nop                                           ; $7a14: $00
    nop                                           ; $7a15: $00
    nop                                           ; $7a16: $00
    nop                                           ; $7a17: $00
    nop                                           ; $7a18: $00
    nop                                           ; $7a19: $00
    nop                                           ; $7a1a: $00
    nop                                           ; $7a1b: $00
    nop                                           ; $7a1c: $00
    nop                                           ; $7a1d: $00
    nop                                           ; $7a1e: $00
    nop                                           ; $7a1f: $00
    nop                                           ; $7a20: $00
    nop                                           ; $7a21: $00
    nop                                           ; $7a22: $00
    nop                                           ; $7a23: $00
    nop                                           ; $7a24: $00
    nop                                           ; $7a25: $00
    nop                                           ; $7a26: $00
    nop                                           ; $7a27: $00
    nop                                           ; $7a28: $00
    nop                                           ; $7a29: $00
    nop                                           ; $7a2a: $00
    nop                                           ; $7a2b: $00
    nop                                           ; $7a2c: $00
    nop                                           ; $7a2d: $00
    nop                                           ; $7a2e: $00
    nop                                           ; $7a2f: $00
    nop                                           ; $7a30: $00
    nop                                           ; $7a31: $00
    nop                                           ; $7a32: $00
    nop                                           ; $7a33: $00
    nop                                           ; $7a34: $00
    nop                                           ; $7a35: $00
    nop                                           ; $7a36: $00
    nop                                           ; $7a37: $00
    nop                                           ; $7a38: $00
    nop                                           ; $7a39: $00
    nop                                           ; $7a3a: $00
    nop                                           ; $7a3b: $00
    nop                                           ; $7a3c: $00
    nop                                           ; $7a3d: $00
    nop                                           ; $7a3e: $00
    nop                                           ; $7a3f: $00
    nop                                           ; $7a40: $00
    nop                                           ; $7a41: $00
    nop                                           ; $7a42: $00
    nop                                           ; $7a43: $00
    nop                                           ; $7a44: $00
    nop                                           ; $7a45: $00
    nop                                           ; $7a46: $00
    nop                                           ; $7a47: $00
    nop                                           ; $7a48: $00
    nop                                           ; $7a49: $00
    nop                                           ; $7a4a: $00
    nop                                           ; $7a4b: $00
    nop                                           ; $7a4c: $00
    nop                                           ; $7a4d: $00
    nop                                           ; $7a4e: $00
    nop                                           ; $7a4f: $00
    nop                                           ; $7a50: $00
    nop                                           ; $7a51: $00
    nop                                           ; $7a52: $00
    nop                                           ; $7a53: $00
    nop                                           ; $7a54: $00
    nop                                           ; $7a55: $00
    nop                                           ; $7a56: $00
    nop                                           ; $7a57: $00
    nop                                           ; $7a58: $00
    nop                                           ; $7a59: $00
    nop                                           ; $7a5a: $00
    nop                                           ; $7a5b: $00
    nop                                           ; $7a5c: $00
    nop                                           ; $7a5d: $00
    nop                                           ; $7a5e: $00
    nop                                           ; $7a5f: $00
    nop                                           ; $7a60: $00
    nop                                           ; $7a61: $00
    nop                                           ; $7a62: $00
    nop                                           ; $7a63: $00
    nop                                           ; $7a64: $00
    nop                                           ; $7a65: $00
    nop                                           ; $7a66: $00
    nop                                           ; $7a67: $00
    nop                                           ; $7a68: $00
    nop                                           ; $7a69: $00
    nop                                           ; $7a6a: $00
    nop                                           ; $7a6b: $00
    nop                                           ; $7a6c: $00
    nop                                           ; $7a6d: $00
    nop                                           ; $7a6e: $00
    nop                                           ; $7a6f: $00
    nop                                           ; $7a70: $00
    nop                                           ; $7a71: $00
    nop                                           ; $7a72: $00
    nop                                           ; $7a73: $00
    nop                                           ; $7a74: $00
    nop                                           ; $7a75: $00
    nop                                           ; $7a76: $00
    nop                                           ; $7a77: $00
    nop                                           ; $7a78: $00
    nop                                           ; $7a79: $00
    nop                                           ; $7a7a: $00
    nop                                           ; $7a7b: $00
    nop                                           ; $7a7c: $00
    nop                                           ; $7a7d: $00
    nop                                           ; $7a7e: $00
    nop                                           ; $7a7f: $00
    nop                                           ; $7a80: $00
    nop                                           ; $7a81: $00
    nop                                           ; $7a82: $00
    nop                                           ; $7a83: $00
    nop                                           ; $7a84: $00
    nop                                           ; $7a85: $00
    nop                                           ; $7a86: $00
    nop                                           ; $7a87: $00
    nop                                           ; $7a88: $00
    nop                                           ; $7a89: $00
    nop                                           ; $7a8a: $00
    nop                                           ; $7a8b: $00
    nop                                           ; $7a8c: $00
    nop                                           ; $7a8d: $00
    nop                                           ; $7a8e: $00
    nop                                           ; $7a8f: $00
    nop                                           ; $7a90: $00
    nop                                           ; $7a91: $00
    nop                                           ; $7a92: $00
    nop                                           ; $7a93: $00
    nop                                           ; $7a94: $00
    nop                                           ; $7a95: $00
    nop                                           ; $7a96: $00
    nop                                           ; $7a97: $00
    nop                                           ; $7a98: $00
    nop                                           ; $7a99: $00
    nop                                           ; $7a9a: $00
    nop                                           ; $7a9b: $00
    nop                                           ; $7a9c: $00
    nop                                           ; $7a9d: $00
    nop                                           ; $7a9e: $00
    nop                                           ; $7a9f: $00
    nop                                           ; $7aa0: $00
    nop                                           ; $7aa1: $00
    nop                                           ; $7aa2: $00
    nop                                           ; $7aa3: $00
    nop                                           ; $7aa4: $00
    nop                                           ; $7aa5: $00
    nop                                           ; $7aa6: $00
    nop                                           ; $7aa7: $00
    nop                                           ; $7aa8: $00
    nop                                           ; $7aa9: $00
    nop                                           ; $7aaa: $00
    nop                                           ; $7aab: $00
    nop                                           ; $7aac: $00
    nop                                           ; $7aad: $00
    nop                                           ; $7aae: $00
    nop                                           ; $7aaf: $00
    nop                                           ; $7ab0: $00
    nop                                           ; $7ab1: $00
    nop                                           ; $7ab2: $00
    nop                                           ; $7ab3: $00
    nop                                           ; $7ab4: $00
    nop                                           ; $7ab5: $00
    nop                                           ; $7ab6: $00
    nop                                           ; $7ab7: $00
    nop                                           ; $7ab8: $00
    nop                                           ; $7ab9: $00
    nop                                           ; $7aba: $00
    nop                                           ; $7abb: $00
    nop                                           ; $7abc: $00
    nop                                           ; $7abd: $00
    nop                                           ; $7abe: $00
    nop                                           ; $7abf: $00
    nop                                           ; $7ac0: $00
    nop                                           ; $7ac1: $00
    nop                                           ; $7ac2: $00
    nop                                           ; $7ac3: $00
    nop                                           ; $7ac4: $00
    nop                                           ; $7ac5: $00
    nop                                           ; $7ac6: $00
    nop                                           ; $7ac7: $00
    nop                                           ; $7ac8: $00
    nop                                           ; $7ac9: $00
    nop                                           ; $7aca: $00
    nop                                           ; $7acb: $00
    nop                                           ; $7acc: $00
    nop                                           ; $7acd: $00
    nop                                           ; $7ace: $00
    nop                                           ; $7acf: $00
    nop                                           ; $7ad0: $00
    nop                                           ; $7ad1: $00
    nop                                           ; $7ad2: $00
    nop                                           ; $7ad3: $00
    nop                                           ; $7ad4: $00
    nop                                           ; $7ad5: $00
    nop                                           ; $7ad6: $00
    nop                                           ; $7ad7: $00
    nop                                           ; $7ad8: $00
    nop                                           ; $7ad9: $00
    nop                                           ; $7ada: $00
    nop                                           ; $7adb: $00
    nop                                           ; $7adc: $00
    nop                                           ; $7add: $00
    nop                                           ; $7ade: $00
    nop                                           ; $7adf: $00
    nop                                           ; $7ae0: $00
    nop                                           ; $7ae1: $00
    nop                                           ; $7ae2: $00
    nop                                           ; $7ae3: $00
    nop                                           ; $7ae4: $00
    nop                                           ; $7ae5: $00
    nop                                           ; $7ae6: $00
    nop                                           ; $7ae7: $00
    nop                                           ; $7ae8: $00
    nop                                           ; $7ae9: $00
    nop                                           ; $7aea: $00
    nop                                           ; $7aeb: $00
    nop                                           ; $7aec: $00
    nop                                           ; $7aed: $00
    nop                                           ; $7aee: $00
    nop                                           ; $7aef: $00
    nop                                           ; $7af0: $00
    nop                                           ; $7af1: $00
    nop                                           ; $7af2: $00
    nop                                           ; $7af3: $00
    nop                                           ; $7af4: $00
    nop                                           ; $7af5: $00
    nop                                           ; $7af6: $00
    nop                                           ; $7af7: $00
    nop                                           ; $7af8: $00
    nop                                           ; $7af9: $00
    nop                                           ; $7afa: $00
    nop                                           ; $7afb: $00
    nop                                           ; $7afc: $00
    nop                                           ; $7afd: $00
    nop                                           ; $7afe: $00
    nop                                           ; $7aff: $00
    nop                                           ; $7b00: $00
    nop                                           ; $7b01: $00
    nop                                           ; $7b02: $00
    nop                                           ; $7b03: $00
    nop                                           ; $7b04: $00
    nop                                           ; $7b05: $00
    nop                                           ; $7b06: $00
    nop                                           ; $7b07: $00
    nop                                           ; $7b08: $00
    nop                                           ; $7b09: $00
    nop                                           ; $7b0a: $00
    nop                                           ; $7b0b: $00
    nop                                           ; $7b0c: $00
    nop                                           ; $7b0d: $00
    nop                                           ; $7b0e: $00
    nop                                           ; $7b0f: $00
    nop                                           ; $7b10: $00
    nop                                           ; $7b11: $00
    nop                                           ; $7b12: $00
    nop                                           ; $7b13: $00
    nop                                           ; $7b14: $00
    nop                                           ; $7b15: $00
    nop                                           ; $7b16: $00
    nop                                           ; $7b17: $00
    nop                                           ; $7b18: $00
    nop                                           ; $7b19: $00
    nop                                           ; $7b1a: $00
    nop                                           ; $7b1b: $00
    nop                                           ; $7b1c: $00
    nop                                           ; $7b1d: $00
    nop                                           ; $7b1e: $00
    nop                                           ; $7b1f: $00
    nop                                           ; $7b20: $00
    nop                                           ; $7b21: $00
    nop                                           ; $7b22: $00
    nop                                           ; $7b23: $00
    nop                                           ; $7b24: $00
    nop                                           ; $7b25: $00
    nop                                           ; $7b26: $00
    nop                                           ; $7b27: $00
    nop                                           ; $7b28: $00
    nop                                           ; $7b29: $00
    nop                                           ; $7b2a: $00
    nop                                           ; $7b2b: $00
    nop                                           ; $7b2c: $00
    nop                                           ; $7b2d: $00
    nop                                           ; $7b2e: $00
    nop                                           ; $7b2f: $00
    nop                                           ; $7b30: $00
    nop                                           ; $7b31: $00
    nop                                           ; $7b32: $00
    nop                                           ; $7b33: $00
    nop                                           ; $7b34: $00
    nop                                           ; $7b35: $00
    nop                                           ; $7b36: $00
    nop                                           ; $7b37: $00
    nop                                           ; $7b38: $00
    nop                                           ; $7b39: $00
    nop                                           ; $7b3a: $00
    nop                                           ; $7b3b: $00
    nop                                           ; $7b3c: $00
    nop                                           ; $7b3d: $00
    nop                                           ; $7b3e: $00
    nop                                           ; $7b3f: $00
    nop                                           ; $7b40: $00
    nop                                           ; $7b41: $00
    nop                                           ; $7b42: $00
    nop                                           ; $7b43: $00
    nop                                           ; $7b44: $00
    nop                                           ; $7b45: $00
    nop                                           ; $7b46: $00
    nop                                           ; $7b47: $00
    nop                                           ; $7b48: $00
    nop                                           ; $7b49: $00
    nop                                           ; $7b4a: $00
    nop                                           ; $7b4b: $00
    nop                                           ; $7b4c: $00
    nop                                           ; $7b4d: $00
    nop                                           ; $7b4e: $00
    nop                                           ; $7b4f: $00
    nop                                           ; $7b50: $00
    nop                                           ; $7b51: $00
    nop                                           ; $7b52: $00
    nop                                           ; $7b53: $00
    nop                                           ; $7b54: $00
    nop                                           ; $7b55: $00
    nop                                           ; $7b56: $00
    nop                                           ; $7b57: $00
    nop                                           ; $7b58: $00
    nop                                           ; $7b59: $00
    nop                                           ; $7b5a: $00
    nop                                           ; $7b5b: $00
    nop                                           ; $7b5c: $00
    nop                                           ; $7b5d: $00
    nop                                           ; $7b5e: $00
    nop                                           ; $7b5f: $00
    nop                                           ; $7b60: $00
    nop                                           ; $7b61: $00
    nop                                           ; $7b62: $00
    nop                                           ; $7b63: $00
    nop                                           ; $7b64: $00
    nop                                           ; $7b65: $00
    nop                                           ; $7b66: $00
    nop                                           ; $7b67: $00
    dec d                                         ; $7b68: $15
    ld [hl+], a                                   ; $7b69: $22
    rst $38                                       ; $7b6a: $ff
    db $e4                                        ; $7b6b: $e4
    sbc c                                         ; $7b6c: $99
    rst $38                                       ; $7b6d: $ff
    db $e4                                        ; $7b6e: $e4
    ld [hl+], a                                   ; $7b6f: $22
    cp $e5                                        ; $7b70: $fe $e5
    db $ec                                        ; $7b72: $ec
    add sp, -$18                                  ; $7b73: $e8 $e8
    ld [c], a                                     ; $7b75: $e2
    call nz, $e9ff                                ; $7b76: $c4 $ff $e9
    ret c                                         ; $7b79: $d8

    pop hl                                        ; $7b7a: $e1
    add hl, hl                                    ; $7b7b: $29
    call $f8e3                                    ; $7b7c: $cd $e3 $f8
    ldh [$f6], a                                  ; $7b7f: $e0 $f6
    ldh [$29], a                                  ; $7b81: $e0 $29
    sbc c                                         ; $7b83: $99
    add hl, bc                                    ; $7b84: $09
    ld de, $e4ff                                  ; $7b85: $11 $ff $e4
    or b                                          ; $7b88: $b0
    ld [c], a                                     ; $7b89: $e2
    add hl, hl                                    ; $7b8a: $29
    ldh [$e1], a                                  ; $7b8b: $e0 $e1
    ei                                            ; $7b8d: $fb
    ldh [$d8], a                                  ; $7b8e: $e0 $d8
    db $e4                                        ; $7b90: $e4
    xor h                                         ; $7b91: $ac
    push hl                                       ; $7b92: $e5
    ldh [$ee], a                                  ; $7b93: $e0 $ee
    pop hl                                        ; $7b95: $e1
    jp nc, $c8e3                                  ; $7b96: $d2 $e3 $c8

    push hl                                       ; $7b99: $e5
    xor b                                         ; $7b9a: $a8
    rst $20                                       ; $7b9b: $e7
    sbc e                                         ; $7b9c: $9b
    push hl                                       ; $7b9d: $e5
    sbc c                                         ; $7b9e: $99
    sub d                                         ; $7b9f: $92
    sub d                                         ; $7ba0: $92
    ld h, h                                       ; $7ba1: $64
    ld [hl], b                                    ; $7ba2: $70
    and $8c                                       ; $7ba3: $e6 $8c
    db $eb                                        ; $7ba5: $eb
    add hl, hl                                    ; $7ba6: $29
    ret nz                                        ; $7ba7: $c0

    db $e3                                        ; $7ba8: $e3
    ld d, b                                       ; $7ba9: $50
    push hl                                       ; $7baa: $e5
    ld [hl+], a                                   ; $7bab: $22
    sub d                                         ; $7bac: $92
    cp $e0                                        ; $7bad: $fe $e0
    nop                                           ; $7baf: $00
    ld b, d                                       ; $7bb0: $42
    db $e4                                        ; $7bb1: $e4

jr_05f_7bb2:
    ld [hl], h                                    ; $7bb2: $74
    db $e4                                        ; $7bb3: $e4
    ld b, b                                       ; $7bb4: $40
    push hl                                       ; $7bb5: $e5
    sub $e3                                       ; $7bb6: $d6 $e3
    ld l, $e2                                     ; $7bb8: $2e $e2
    or e                                          ; $7bba: $b3
    db $e3                                        ; $7bbb: $e3
    ld d, h                                       ; $7bbc: $54
    ldh [$60], a                                  ; $7bbd: $e0 $60
    push hl                                       ; $7bbf: $e5
    ld [bc], a                                    ; $7bc0: $02
    and $e5                                       ; $7bc1: $e6 $e5
    ld h, [hl]                                    ; $7bc3: $66
    rst $38                                       ; $7bc4: $ff
    db $e4                                        ; $7bc5: $e4
    jr z, jr_05f_7bb2                             ; $7bc6: $28 $ea

    db $fc                                        ; $7bc8: $fc
    ei                                            ; $7bc9: $fb
    ld b, [hl]                                    ; $7bca: $46
    db $e4                                        ; $7bcb: $e4
    ldh a, [$d0]                                  ; $7bcc: $f0 $d0
    ld c, b                                       ; $7bce: $48
    ld [c], a                                     ; $7bcf: $e2
    nop                                           ; $7bd0: $00
    ld l, [hl]                                    ; $7bd1: $6e
    pop hl                                        ; $7bd2: $e1
    ld l, b                                       ; $7bd3: $68
    pop hl                                        ; $7bd4: $e1

jr_05f_7bd5:
    pop bc                                        ; $7bd5: $c1
    add $bb                                       ; $7bd6: $c6 $bb
    di                                            ; $7bd8: $f3
    ld h, h                                       ; $7bd9: $64
    db $e4                                        ; $7bda: $e4
    ret nc                                        ; $7bdb: $d0

    push bc                                       ; $7bdc: $c5
    ld a, b                                       ; $7bdd: $78
    push hl                                       ; $7bde: $e5
    add b                                         ; $7bdf: $80
    push bc                                       ; $7be0: $c5
    ld a, a                                       ; $7be1: $7f
    ld h, [hl]                                    ; $7be2: $66
    ld l, d                                       ; $7be3: $6a
    ld l, d                                       ; $7be4: $6a
    xor d                                         ; $7be5: $aa
    ld l, d                                       ; $7be6: $6a
    xor c                                         ; $7be7: $a9
    xor d                                         ; $7be8: $aa

jr_05f_7be9:
    ld hl, sp-$20                                 ; $7be9: $f8 $e0
    cp a                                          ; $7beb: $bf
    ld h, [hl]                                    ; $7bec: $66
    xor d                                         ; $7bed: $aa
    ld l, d                                       ; $7bee: $6a
    xor d                                         ; $7bef: $aa
    xor d                                         ; $7bf0: $aa
    xor c                                         ; $7bf1: $a9
    ld l, b                                       ; $7bf2: $68
    call nz, $97aa                                ; $7bf3: $c4 $aa $97
    sbc d                                         ; $7bf6: $9a
    ld h, [hl]                                    ; $7bf7: $66

Jump_05f_7bf8:
    xor d                                         ; $7bf8: $aa
    cp $e0                                        ; $7bf9: $fe $e0
    and [hl]                                      ; $7bfb: $a6
    ld c, c                                       ; $7bfc: $49
    db $e3                                        ; $7bfd: $e3
    db $e4                                        ; $7bfe: $e4
    ldh [$aa], a                                  ; $7bff: $e0 $aa
    and l                                         ; $7c01: $a5
    sbc c                                         ; $7c02: $99
    cp $e1                                        ; $7c03: $fe $e1
    xor c                                         ; $7c05: $a9
    jr c, jr_05f_7be9                             ; $7c06: $38 $e1

    sub $e1                                       ; $7c08: $d6 $e1
    xor c                                         ; $7c0a: $a9
    pop hl                                        ; $7c0b: $e1
    ldh [$a9], a                                  ; $7c0c: $e0 $a9
    rlca                                          ; $7c0e: $07
    ld l, d                                       ; $7c0f: $6a
    xor c                                         ; $7c10: $a9
    ld l, d                                       ; $7c11: $6a
    ret nz                                        ; $7c12: $c0

    ld [c], a                                     ; $7c13: $e2
    jp z, Jump_000_20e1                           ; $7c14: $ca $e1 $20

    ldh [$dc], a                                  ; $7c17: $e0 $dc
    ldh [$e0], a                                  ; $7c19: $e0 $e0
    ldh [$c7], a                                  ; $7c1b: $e0 $c7
    xor c                                         ; $7c1d: $a9
    ld h, [hl]                                    ; $7c1e: $66
    xor c                                         ; $7c1f: $a9
    ldh a, [$e5]                                  ; $7c20: $f0 $e5
    ldh [$e1], a                                  ; $7c22: $e0 $e1
    or e                                          ; $7c24: $b3
    ld [c], a                                     ; $7c25: $e2
    sbc c                                         ; $7c26: $99
    xor d                                         ; $7c27: $aa
    add hl, bc                                    ; $7c28: $09
    xor c                                         ; $7c29: $a9
    nop                                           ; $7c2a: $00
    pop hl                                        ; $7c2b: $e1
    xor [hl]                                      ; $7c2c: $ae
    ldh [$a6], a                                  ; $7c2d: $e0 $a6
    xor d                                         ; $7c2f: $aa
    pop hl                                        ; $7c30: $e1
    db $f4                                        ; $7c31: $f4
    ld [c], a                                     ; $7c32: $e2
    or b                                          ; $7c33: $b0
    ldh [$97], a                                  ; $7c34: $e0 $97
    ld [c], a                                     ; $7c36: $e2
    jr c, jr_05f_7bd5                             ; $7c37: $38 $9c

    db $e4                                        ; $7c39: $e4
    and h                                         ; $7c3a: $a4
    pop hl                                        ; $7c3b: $e1
    ret c                                         ; $7c3c: $d8

    add $aa                                       ; $7c3d: $c6 $aa
    xor d                                         ; $7c3f: $aa
    xor d                                         ; $7c40: $aa
    xor b                                         ; $7c41: $a8
    db $e3                                        ; $7c42: $e3
    ld l, b                                       ; $7c43: $68

jr_05f_7c44:
    db $e3                                        ; $7c44: $e3
    jr z, jr_05f_7cb0                             ; $7c45: $28 $69

    pop hl                                        ; $7c47: $e1
    db $ed                                        ; $7c48: $ed
    ldh [$b8], a                                  ; $7c49: $e0 $b8
    push bc                                       ; $7c4b: $c5
    ld l, d                                       ; $7c4c: $6a
    ld [hl], b                                    ; $7c4d: $70
    push hl                                       ; $7c4e: $e5
    xor c                                         ; $7c4f: $a9
    ld [hl], b                                    ; $7c50: $70
    db $e3                                        ; $7c51: $e3
    ret nc                                        ; $7c52: $d0

    ld [c], a                                     ; $7c53: $e2
    nop                                           ; $7c54: $00
    ld c, d                                       ; $7c55: $4a
    db $e3                                        ; $7c56: $e3
    rst $00                                       ; $7c57: $c7
    pop hl                                        ; $7c58: $e1
    or b                                          ; $7c59: $b0
    db $eb                                        ; $7c5a: $eb
    ret c                                         ; $7c5b: $d8

    and l                                         ; $7c5c: $a5
    ret nc                                        ; $7c5d: $d0

    and l                                         ; $7c5e: $a5
    jr c, jr_05f_7c44                             ; $7c5f: $38 $e3

    ld a, [$18e8]                                 ; $7c61: $fa $e8 $18
    ld [c], a                                     ; $7c64: $e2
    ret nz                                        ; $7c65: $c0

    ld a, [$81e7]                                 ; $7c66: $fa $e7 $81
    db $e4                                        ; $7c69: $e4
    ld e, e                                       ; $7c6a: $5b
    ld [c], a                                     ; $7c6b: $e2
    or c                                          ; $7c6c: $b1
    pop hl                                        ; $7c6d: $e1
    xor c                                         ; $7c6e: $a9
    push hl                                       ; $7c6f: $e5
    and c                                         ; $7c70: $a1
    push hl                                       ; $7c71: $e5
    nop                                           ; $7c72: $00
    add hl, bc                                    ; $7c73: $09
    ld h, c                                       ; $7c74: $61
    add hl, bc                                    ; $7c75: $09
    ld c, b                                       ; $7c76: $48
    db $e4                                        ; $7c77: $e4
    ld l, $c3                                     ; $7c78: $2e $c3
    and b                                         ; $7c7a: $a0
    db $ed                                        ; $7c7b: $ed
    ld l, b                                       ; $7c7c: $68
    and d                                         ; $7c7d: $a2
    add hl, de                                    ; $7c7e: $19
    add hl, de                                    ; $7c7f: $19
    ld h, b                                       ; $7c80: $60
    and c                                         ; $7c81: $a1
    ld [$a31d], a                                 ; $7c82: $ea $1d $a3
    sub c                                         ; $7c85: $91
    cp $e2                                        ; $7c86: $fe $e2
    ld de, $e1fe                                  ; $7c88: $11 $fe $e1
    sub c                                         ; $7c8b: $91
    ld de, $0e1f                                  ; $7c8c: $11 $1f $0e
    ld [c], a                                     ; $7c8f: $e2
    ld [c], a                                     ; $7c90: $e2
    ld de, $1999                                  ; $7c91: $11 $99 $19
    dec d                                         ; $7c94: $15
    xor c                                         ; $7c95: $a9
    ld h, b                                       ; $7c96: $60
    jp $e5fe                                      ; $7c97: $c3 $fe $e5


    rst $00                                       ; $7c9a: $c7
    db $e4                                        ; $7c9b: $e4
    add sp, -$30                                  ; $7c9c: $e8 $d0
    and l                                         ; $7c9e: $a5
    rst $38                                       ; $7c9f: $ff
    rst $38                                       ; $7ca0: $ff
    db $fd                                        ; $7ca1: $fd
    db $fc                                        ; $7ca2: $fc
    xor a                                         ; $7ca3: $af
    ld a, [hl+]                                   ; $7ca4: $2a
    ret nz                                        ; $7ca5: $c0

    nop                                           ; $7ca6: $00
    and b                                         ; $7ca7: $a0
    nop                                           ; $7ca8: $00
    ld l, a                                       ; $7ca9: $6f
    xor d                                         ; $7caa: $aa
    and b                                         ; $7cab: $a0
    and b                                         ; $7cac: $a0
    nop                                           ; $7cad: $00
    rst $38                                       ; $7cae: $ff
    ld [c], a                                     ; $7caf: $e2

jr_05f_7cb0:
    xor d                                         ; $7cb0: $aa
    ld a, [bc]                                    ; $7cb1: $0a
    ld [de], a                                    ; $7cb2: $12
    ret nz                                        ; $7cb3: $c0

    sub e                                         ; $7cb4: $93
    sbc c                                         ; $7cb5: $99
    sbc c                                         ; $7cb6: $99
    ld hl, sp-$20                                 ; $7cb7: $f8 $e0
    ld [hl], h                                    ; $7cb9: $74
    ret nz                                        ; $7cba: $c0

    and [hl]                                      ; $7cbb: $a6
    inc d                                         ; $7cbc: $14
    ld [c], a                                     ; $7cbd: $e2
    ld l, h                                       ; $7cbe: $6c
    call nz, $57fa                                ; $7cbf: $c4 $fa $57
    ld l, d                                       ; $7cc2: $6a

Jump_05f_7cc3:
    and b                                         ; $7cc3: $a0
    ld l, d                                       ; $7cc4: $6a
    db $dd                                        ; $7cc5: $dd
    db $e3                                        ; $7cc6: $e3
    nop                                           ; $7cc7: $00
    nop                                           ; $7cc8: $00
    db $e4                                        ; $7cc9: $e4
    and [hl]                                      ; $7cca: $a6
    rrca                                          ; $7ccb: $0f
    pop hl                                        ; $7ccc: $e1
    ld e, b                                       ; $7ccd: $58
    cp $e1                                        ; $7cce: $fe $e1
    ret nz                                        ; $7cd0: $c0

    ldh [$f2], a                                  ; $7cd1: $e0 $f2
    and d                                         ; $7cd3: $a2
    and [hl]                                      ; $7cd4: $a6
    ld h, [hl]                                    ; $7cd5: $66
    cp e                                          ; $7cd6: $bb
    ld [c], a                                     ; $7cd7: $e2
    ld a, [bc]                                    ; $7cd8: $0a
    db $dd                                        ; $7cd9: $dd
    ldh [rP1], a                                  ; $7cda: $e0 $00
    ld hl, sp-$1c                                 ; $7cdc: $f8 $e4
    ldh [$e3], a                                  ; $7cde: $e0 $e3
    ld a, [$9de7]                                 ; $7ce0: $fa $e7 $9d
    ld [c], a                                     ; $7ce3: $e2
    ret c                                         ; $7ce4: $d8

    pop bc                                        ; $7ce5: $c1
    ld hl, sp-$1c                                 ; $7ce6: $f8 $e4
    xor d                                         ; $7ce8: $aa
    ldh [$80], a                                  ; $7ce9: $e0 $80
    ld [c], a                                     ; $7ceb: $e2
    ld a, [$e4c8]                                 ; $7cec: $fa $c8 $e4
    ld a, [bc]                                    ; $7cef: $0a
    ld a, e                                       ; $7cf0: $7b
    db $e3                                        ; $7cf1: $e3
    nop                                           ; $7cf2: $00
    nop                                           ; $7cf3: $00
    sbc c                                         ; $7cf4: $99
    xor d                                         ; $7cf5: $aa
    sbc a                                         ; $7cf6: $9f
    and a                                         ; $7cf7: $a7
    and b                                         ; $7cf8: $a0
    sbc d                                         ; $7cf9: $9a
    and b                                         ; $7cfa: $a0
    cp c                                          ; $7cfb: $b9
    db $e3                                        ; $7cfc: $e3
    ld h, a                                       ; $7cfd: $67
    ldh [$fa], a                                  ; $7cfe: $e0 $fa
    add d                                         ; $7d00: $82
    and b                                         ; $7d01: $a0
    and b                                         ; $7d02: $a0
    inc c                                         ; $7d03: $0c
    add b                                         ; $7d04: $80
    pop hl                                        ; $7d05: $e1
    sub d                                         ; $7d06: $92
    db $e3                                        ; $7d07: $e3
    nop                                           ; $7d08: $00
    nop                                           ; $7d09: $00
    or $e1                                        ; $7d0a: $f6 $e1
    or h                                          ; $7d0c: $b4
    push hl                                       ; $7d0d: $e5
    add hl, hl                                    ; $7d0e: $29
    pop bc                                        ; $7d0f: $c1
    sbc b                                         ; $7d10: $98
    jp nc, $ff1c                                  ; $7d11: $d2 $1c $ff

    rst $38                                       ; $7d14: $ff
    ld h, c                                       ; $7d15: $61
    adc $9a                                       ; $7d16: $ce $9a
    xor d                                         ; $7d18: $aa
    sbc d                                         ; $7d19: $9a
    dec [hl]                                      ; $7d1a: $35
    and d                                         ; $7d1b: $a2
    ld a, [bc]                                    ; $7d1c: $0a
    and b                                         ; $7d1d: $a0
    dec b                                         ; $7d1e: $05
    jp nz, Jump_000_2902                          ; $7d1f: $c2 $02 $29

    and b                                         ; $7d22: $a0
    sbc d                                         ; $7d23: $9a
    cp $e0                                        ; $7d24: $fe $e0
    ld h, b                                       ; $7d26: $60
    add b                                         ; $7d27: $80
    ld [hl+], a                                   ; $7d28: $22
    pop hl                                        ; $7d29: $e1
    inc c                                         ; $7d2a: $0c
    and b                                         ; $7d2b: $a0
    add sp, -$1d                                  ; $7d2c: $e8 $e3
    push af                                       ; $7d2e: $f5
    add b                                         ; $7d2f: $80
    ld [bc], a                                    ; $7d30: $02
    ret c                                         ; $7d31: $d8

    ld [c], a                                     ; $7d32: $e2
    sbc d                                         ; $7d33: $9a
    add e                                         ; $7d34: $83
    and c                                         ; $7d35: $a1
    db $eb                                        ; $7d36: $eb
    add c                                         ; $7d37: $81
    and $85                                       ; $7d38: $e6 $85
    ret nc                                        ; $7d3a: $d0

    jp $c0c8                                      ; $7d3b: $c3 $c8 $c0


    push hl                                       ; $7d3e: $e5
    add h                                         ; $7d3f: $84
    db $10                                        ; $7d40: $10
    call nc, $b9a5                                ; $7d41: $d4 $a5 $b9
    and l                                         ; $7d44: $a5
    rst $38                                       ; $7d45: $ff
    db $ed                                        ; $7d46: $ed
    rla                                           ; $7d47: $17
    call $ffff                                    ; $7d48: $cd $ff $ff
    rst $38                                       ; $7d4b: $ff
    rst $38                                       ; $7d4c: $ff
    rst $38                                       ; $7d4d: $ff
    rst $38                                       ; $7d4e: $ff
    rst $38                                       ; $7d4f: $ff
    nop                                           ; $7d50: $00
    rst $38                                       ; $7d51: $ff
    rst $38                                       ; $7d52: $ff
    rst $38                                       ; $7d53: $ff
    rst $38                                       ; $7d54: $ff
    rst $38                                       ; $7d55: $ff
    rst $38                                       ; $7d56: $ff
    rst $38                                       ; $7d57: $ff
    rst $38                                       ; $7d58: $ff
    rst $28                                       ; $7d59: $ef
    xor $00                                       ; $7d5a: $ee $00
    nop                                           ; $7d5c: $00
    nop                                           ; $7d5d: $00
    rst $38                                       ; $7d5e: $ff
    rst $38                                       ; $7d5f: $ff

Jump_05f_7d60:
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

Jump_05f_7e25:
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

Jump_05f_7ec1:
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

Jump_05f_7f00:
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

Call_05f_7f80:
Jump_05f_7f80:
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

Jump_05f_7fa4:
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
