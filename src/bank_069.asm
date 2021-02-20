; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $069", ROMX[$4000], BANK[$69]

Call_069_4000:
    ld a, [bc]                                    ; $4000: $0a
    ld b, b                                       ; $4001: $40
    add e                                         ; $4002: $83
    ld c, [hl]                                    ; $4003: $4e
    cp b                                          ; $4004: $b8
    ld e, h                                       ; $4005: $5c
    cpl                                           ; $4006: $2f
    ld h, a                                       ; $4007: $67
    sbc h                                         ; $4008: $9c
    ld [hl], e                                    ; $4009: $73
    ld [de], a                                    ; $400a: $12
    ld b, b                                       ; $400b: $40
    or e                                          ; $400c: $b3
    ld b, l                                       ; $400d: $45
    ld a, [hl]                                    ; $400e: $7e
    ld c, l                                       ; $400f: $4d
    and b                                         ; $4010: $a0
    ld c, l                                       ; $4011: $4d
    rst $18                                       ; $4012: $df
    ld l, $0e                                     ; $4013: $2e $0e
    ld c, $0e                                     ; $4015: $0e $0e
    ld c, l                                       ; $4017: $4d
    rst $38                                       ; $4018: $ff
    db $ed                                        ; $4019: $ed
    ld l, $2e                                     ; $401a: $2e $2e
    ld [hl], c                                    ; $401c: $71
    ld c, [hl]                                    ; $401d: $4e
    db $ec                                        ; $401e: $ec
    xor $e5                                       ; $401f: $ee $e5
    push hl                                       ; $4021: $e5
    ret nc                                        ; $4022: $d0

    db $ec                                        ; $4023: $ec
    ld l, [hl]                                    ; $4024: $6e
    ld l, $6e                                     ; $4025: $2e $6e
    cp [hl]                                       ; $4027: $be
    ldh [rNR52], a                                ; $4028: $e0 $26
    cp l                                          ; $402a: $bd
    ldh [$0d], a                                  ; $402b: $e0 $0d
    dec c                                         ; $402d: $0d
    db $e3                                        ; $402e: $e3
    ld [c], a                                     ; $402f: $e2
    or h                                          ; $4030: $b4
    ldh [$0d], a                                  ; $4031: $e0 $0d
    ld hl, sp-$1e                                 ; $4033: $f8 $e2
    ldh a, [$e1]                                  ; $4035: $f0 $e1
    adc h                                         ; $4037: $8c
    and a                                         ; $4038: $a7
    jp hl                                         ; $4039: $e9


    ldh a, [$e2]                                  ; $403a: $f0 $e2
    ld l, $0e                                     ; $403c: $2e $0e
    ret nc                                        ; $403e: $d0

    ld [$e0b2], a                                 ; $403f: $ea $b2 $e0
    pop bc                                        ; $4042: $c1
    ldh [$4e], a                                  ; $4043: $e0 $4e
    ld sp, $c04e                                  ; $4045: $31 $4e $c0
    db $e4                                        ; $4048: $e4
    db $f4                                        ; $4049: $f4
    pop hl                                        ; $404a: $e1
    ld [hl], d                                    ; $404b: $72
    ld [c], a                                     ; $404c: $e2
    ld l, $2e                                     ; $404d: $2e $2e
    ret nz                                        ; $404f: $c0

    db $e3                                        ; $4050: $e3
    xor c                                         ; $4051: $a9
    pop hl                                        ; $4052: $e1
    dec l                                         ; $4053: $2d
    ld l, l                                       ; $4054: $6d
    rst $38                                       ; $4055: $ff
    pop hl                                        ; $4056: $e1
    dec l                                         ; $4057: $2d
    dec l                                         ; $4058: $2d
    ret nz                                        ; $4059: $c0

    db $e4                                        ; $405a: $e4
    ld l, $d0                                     ; $405b: $2e $d0
    jp hl                                         ; $405d: $e9


    ldh a, [$e2]                                  ; $405e: $f0 $e2
    add d                                         ; $4060: $82
    call nc, Call_000_0ee0                        ; $4061: $d4 $e0 $0e
    ret                                           ; $4064: $c9


    ldh [$c0], a                                  ; $4065: $e0 $c0
    ld [c], a                                     ; $4067: $e2
    push af                                       ; $4068: $f5
    db $e3                                        ; $4069: $e3
    rst $30                                       ; $406a: $f7
    ld [c], a                                     ; $406b: $e2
    add b                                         ; $406c: $80
    db $e4                                        ; $406d: $e4
    dec c                                         ; $406e: $0d
    dec de                                        ; $406f: $1b
    ld l, l                                       ; $4070: $6d
    dec c                                         ; $4071: $0d
    rst $38                                       ; $4072: $ff
    ld [c], a                                     ; $4073: $e2
    ld c, l                                       ; $4074: $4d
    dec l                                         ; $4075: $2d
    ret nc                                        ; $4076: $d0

    ldh a, [$c0]                                  ; $4077: $f0 $c0
    rst $20                                       ; $4079: $e7
    ccf                                           ; $407a: $3f
    ld [c], a                                     ; $407b: $e2
    ld bc, $890e                                  ; $407c: $01 $0e $89
    ldh [$f1], a                                  ; $407f: $e0 $f1
    ret z                                         ; $4081: $c8

    rst $00                                       ; $4082: $c7
    ldh [$84], a                                  ; $4083: $e0 $84
    ldh [$c1], a                                  ; $4085: $e0 $c1
    db $e3                                        ; $4087: $e3
    cp a                                          ; $4088: $bf
    ld [c], a                                     ; $4089: $e2
    ret c                                         ; $408a: $d8

    ret nz                                        ; $408b: $c0

    inc b                                         ; $408c: $04
    ret nc                                        ; $408d: $d0

    db $eb                                        ; $408e: $eb
    ret nz                                        ; $408f: $c0

    db $eb                                        ; $4090: $eb
    ld c, $c0                                     ; $4091: $0e $c0
    push hl                                       ; $4093: $e5
    adc a                                         ; $4094: $8f
    db $e3                                        ; $4095: $e3
    rst $28                                       ; $4096: $ef
    ret nz                                        ; $4097: $c0

    jp Jump_069_7ee6                              ; $4098: $c3 $e6 $7e


    db $e3                                        ; $409b: $e3
    nop                                           ; $409c: $00
    ret nc                                        ; $409d: $d0

    xor $80                                       ; $409e: $ee $80
    db $eb                                        ; $40a0: $eb
    pop af                                        ; $40a1: $f1
    jp $e2c0                                      ; $40a2: $c3 $c0 $e2


    inc c                                         ; $40a5: $0c
    ld [c], a                                     ; $40a6: $e2
    pop bc                                        ; $40a7: $c1
    and $45                                       ; $40a8: $e6 $45
    ldh [$3d], a                                  ; $40aa: $e0 $3d
    db $e4                                        ; $40ac: $e4
    ldh [$d0], a                                  ; $40ad: $e0 $d0
    db $ec                                        ; $40af: $ec
    ldh a, [$ed]                                  ; $40b0: $f0 $ed
    ld h, c                                       ; $40b2: $61
    jp $e60c                                      ; $40b3: $c3 $0c $e6


    ld b, $e3                                     ; $40b6: $06 $e3
    dec hl                                        ; $40b8: $2b
    ld a, [bc]                                    ; $40b9: $0a
    ld a, [hl+]                                   ; $40ba: $2a
    ld bc, $b80b                                  ; $40bb: $01 $0b $b8
    push hl                                       ; $40be: $e5
    rst $08                                       ; $40bf: $cf

Call_069_40c0:
    jp $e8c0                                      ; $40c0: $c3 $c0 $e8


    ldh a, [$eb]                                  ; $40c3: $f0 $eb
    adc d                                         ; $40c5: $8a
    ld [c], a                                     ; $40c6: $e2
    ld c, c                                       ; $40c7: $49
    ld [$e0c3], a                                 ; $40c8: $ea $c3 $e0
    add hl, bc                                    ; $40cb: $09
    ld a, [bc]                                    ; $40cc: $0a
    ret nz                                        ; $40cd: $c0

    ldh [$7e], a                                  ; $40ce: $e0 $7e
    db $e3                                        ; $40d0: $e3
    dec l                                         ; $40d1: $2d
    adc a                                         ; $40d2: $8f
    call nz, $ea90                                ; $40d3: $c4 $90 $ea
    xor $a9                                       ; $40d6: $ee $a9
    sub h                                         ; $40d8: $94
    ret nz                                        ; $40d9: $c0

    pop af                                        ; $40da: $f1
    ld l, l                                       ; $40db: $6d
    ret z                                         ; $40dc: $c8

    jp nz, $e608                                  ; $40dd: $c2 $08 $e6

    jp Jump_000_2ae0                              ; $40e0: $c3 $e0 $2a


    ld a, [hl+]                                   ; $40e3: $2a
    dec bc                                        ; $40e4: $0b
    dec bc                                        ; $40e5: $0b
    nop                                           ; $40e6: $00
    cp a                                          ; $40e7: $bf
    db $e3                                        ; $40e8: $e3
    ret nz                                        ; $40e9: $c0

    pop hl                                        ; $40ea: $e1
    cp [hl]                                       ; $40eb: $be
    and a                                         ; $40ec: $a7
    call nc, $9aa3                                ; $40ed: $d4 $a3 $9a
    pop bc                                        ; $40f0: $c1
    rst $08                                       ; $40f1: $cf
    and b                                         ; $40f2: $a0
    db $d3                                        ; $40f3: $d3
    and e                                         ; $40f4: $a3
    ret nz                                        ; $40f5: $c0

    pop hl                                        ; $40f6: $e1
    ld [de], a                                    ; $40f7: $12
    call Call_000_0bc9                            ; $40f8: $cd $c9 $0b
    ld b, e                                       ; $40fb: $43
    ld [c], a                                     ; $40fc: $e2
    pop bc                                        ; $40fd: $c1
    ldh [$2b], a                                  ; $40fe: $e0 $2b
    ld hl, sp-$3b                                 ; $4100: $f8 $c5
    sbc c                                         ; $4102: $99
    and e                                         ; $4103: $a3
    ret nc                                        ; $4104: $d0

    pop hl                                        ; $4105: $e1
    ld [hl], b                                    ; $4106: $70
    call nc, $c0aa                                ; $4107: $d4 $aa $c0
    add sp, $02                                   ; $410a: $e8 $02
    jp hl                                         ; $410c: $e9


    push bc                                       ; $410d: $c5
    pop hl                                        ; $410e: $e1
    dec bc                                        ; $410f: $0b
    ld c, e                                       ; $4110: $4b
    ld l, e                                       ; $4111: $6b
    rst $38                                       ; $4112: $ff
    ldh [rNR10], a                                ; $4113: $e0 $10
    cp h                                          ; $4115: $bc
    jp nz, $a4fc                                  ; $4116: $c2 $fc $a4

    ld [hl], e                                    ; $4119: $73
    and e                                         ; $411a: $a3
    ret                                           ; $411b: $c9


    and l                                         ; $411c: $a5
    ld c, l                                       ; $411d: $4d
    ld b, c                                       ; $411e: $41
    and b                                         ; $411f: $a0
    dec d                                         ; $4120: $15
    call nz, $e044                                ; $4121: $c4 $44 $e0
    ld e, b                                       ; $4124: $58
    rst $08                                       ; $4125: $cf
    and a                                         ; $4126: $a7
    add e                                         ; $4127: $83
    ldh [$c1], a                                  ; $4128: $e0 $c1
    ld [c], a                                     ; $412a: $e2
    ld l, e                                       ; $412b: $6b
    dec bc                                        ; $412c: $0b
    db $fd                                        ; $412d: $fd
    ret nz                                        ; $412e: $c0

    ld l, d                                       ; $412f: $6a
    dec a                                         ; $4130: $3d
    db $e3                                        ; $4131: $e3
    nop                                           ; $4132: $00
    rst $18                                       ; $4133: $df
    ret nz                                        ; $4134: $c0

    db $fc                                        ; $4135: $fc
    ret nz                                        ; $4136: $c0

    ld c, a                                       ; $4137: $4f
    pop hl                                        ; $4138: $e1
    ret nz                                        ; $4139: $c0

    ld [c], a                                     ; $413a: $e2
    push bc                                       ; $413b: $c5
    add d                                         ; $413c: $82
    or a                                          ; $413d: $b7
    pop hl                                        ; $413e: $e1
    and b                                         ; $413f: $a0
    and c                                         ; $4140: $a1
    inc b                                         ; $4141: $04
    db $e3                                        ; $4142: $e3
    ld a, [c]                                     ; $4143: $f2
    sub b                                         ; $4144: $90
    and h                                         ; $4145: $a4
    dec hl                                        ; $4146: $2b
    ld c, [hl]                                    ; $4147: $4e
    ldh [$83], a                                  ; $4148: $e0 $83
    ld [c], a                                     ; $414a: $e2
    dec bc                                        ; $414b: $0b
    ld l, e                                       ; $414c: $6b
    ld c, e                                       ; $414d: $4b
    ld l, e                                       ; $414e: $6b
    ld a, [hl]                                    ; $414f: $7e
    cp l                                          ; $4150: $bd
    ret nz                                        ; $4151: $c0

    ld a, [hl+]                                   ; $4152: $2a
    ld c, e                                       ; $4153: $4b
    inc c                                         ; $4154: $0c
    inc c                                         ; $4155: $0c
    inc l                                         ; $4156: $2c
    inc l                                         ; $4157: $2c
    ld a, h                                       ; $4158: $7c
    push hl                                       ; $4159: $e5
    add b                                         ; $415a: $80
    ld [hl], b                                    ; $415b: $70
    and d                                         ; $415c: $a2
    sub h                                         ; $415d: $94
    and [hl]                                      ; $415e: $a6
    ld a, a                                       ; $415f: $7f
    add b                                         ; $4160: $80
    and [hl]                                      ; $4161: $a6
    and c                                         ; $4162: $a1
    ret nz                                        ; $4163: $c0

    push hl                                       ; $4164: $e5
    pop bc                                        ; $4165: $c1

jr_069_4166:
    db $e3                                        ; $4166: $e3
    rst $38                                       ; $4167: $ff
    db $e4                                        ; $4168: $e4
    ld l, e                                       ; $4169: $6b
    ld c, l                                       ; $416a: $4d
    ld l, e                                       ; $416b: $6b
    ret                                           ; $416c: $c9


    ldh [$2c], a                                  ; $416d: $e0 $2c
    inc c                                         ; $416f: $0c
    rst $38                                       ; $4170: $ff
    db $e3                                        ; $4171: $e3
    cp a                                          ; $4172: $bf
    db $e3                                        ; $4173: $e3
    dec l                                         ; $4174: $2d
    cpl                                           ; $4175: $2f
    and c                                         ; $4176: $a1
    nop                                           ; $4177: $00
    ret nz                                        ; $4178: $c0

    jp $a294                                      ; $4179: $c3 $94 $a2


    ret nz                                        ; $417c: $c0

    ld [c], a                                     ; $417d: $e2
    add b                                         ; $417e: $80
    add sp, -$3f                                  ; $417f: $e8 $c1
    add sp, -$3e                                  ; $4181: $e8 $c2
    ldh [$89], a                                  ; $4183: $e0 $89
    pop hl                                        ; $4185: $e1
    ret nz                                        ; $4186: $c0

    db $e3                                        ; $4187: $e3
    ld b, $b9                                     ; $4188: $06 $b9
    ldh [$2c], a                                  ; $418a: $e0 $2c
    inc c                                         ; $418c: $0c
    ret nz                                        ; $418d: $c0

    ld [c], a                                     ; $418e: $e2
    inc l                                         ; $418f: $2c
    and d                                         ; $4190: $a2
    call nc, $ffa7                                ; $4191: $d4 $a7 $ff
    db $e4                                        ; $4194: $e4
    dec bc                                        ; $4195: $0b
    and a                                         ; $4196: $a7
    ld c, $c8                                     ; $4197: $0e $c8
    call nz, Call_069_4b0b                        ; $4199: $c4 $0b $4b
    ld c, e                                       ; $419c: $4b
    add [hl]                                      ; $419d: $86
    pop hl                                        ; $419e: $e1
    add c                                         ; $419f: $81
    and $7a                                       ; $41a0: $e6 $7a
    pop hl                                        ; $41a2: $e1
    cp e                                          ; $41a3: $bb
    add c                                         ; $41a4: $81
    jr jr_069_4166                                ; $41a5: $18 $bf

    pop hl                                        ; $41a7: $e1
    set 4, h                                      ; $41a8: $cb $e4
    add h                                         ; $41aa: $84
    add c                                         ; $41ab: $81
    ld l, $0e                                     ; $41ac: $2e $0e
    db $db                                        ; $41ae: $db
    add d                                         ; $41af: $82
    ret nz                                        ; $41b0: $c0

    jp hl                                         ; $41b1: $e9


    ld b, c                                       ; $41b2: $41
    ld [c], a                                     ; $41b3: $e2
    rrca                                          ; $41b4: $0f
    dec hl                                        ; $41b5: $2b
    dec bc                                        ; $41b6: $0b
    ld c, e                                       ; $41b7: $4b
    dec bc                                        ; $41b8: $0b
    push bc                                       ; $41b9: $c5
    jp hl                                         ; $41ba: $e9


    ld a, $e2                                     ; $41bb: $3e $e2
    ld a, a                                       ; $41bd: $7f
    rst $20                                       ; $41be: $e7
    jp Jump_000_03e2                              ; $41bf: $c3 $e2 $03


    ld l, $4e                                     ; $41c2: $2e $4e
    db $10                                        ; $41c4: $10
    add c                                         ; $41c5: $81
    ret nz                                        ; $41c6: $c0

    db $ed                                        ; $41c7: $ed
    adc l                                         ; $41c8: $8d
    ret nz                                        ; $41c9: $c0

    cp a                                          ; $41ca: $bf
    db $e3                                        ; $41cb: $e3
    rst $08                                       ; $41cc: $cf
    pop hl                                        ; $41cd: $e1
    cp [hl]                                       ; $41ce: $be
    db $ec                                        ; $41cf: $ec
    jr jr_069_420c                                ; $41d0: $18 $3a

    add b                                         ; $41d2: $80
    ld e, e                                       ; $41d3: $5b
    and e                                         ; $41d4: $a3
    add e                                         ; $41d5: $83
    pop hl                                        ; $41d6: $e1
    ld l, [hl]                                    ; $41d7: $6e
    ld l, [hl]                                    ; $41d8: $6e
    cp a                                          ; $41d9: $bf
    ldh [$c0], a                                  ; $41da: $e0 $c0
    and $84                                       ; $41dc: $e6 $84
    ld h, d                                       ; $41de: $62
    ld h, b                                       ; $41df: $60
    ld de, $8c81                                  ; $41e0: $11 $81 $8c

jr_069_41e3:
    ret nz                                        ; $41e3: $c0

    ld [$42c2], sp                                ; $41e4: $08 $c2 $42
    ld [c], a                                     ; $41e7: $e2
    add c                                         ; $41e8: $81
    ld [$4c2c], a                                 ; $41e9: $ea $2c $4c
    ld b, b                                       ; $41ec: $40
    db $e4                                        ; $41ed: $e4
    ld [hl], $26                                  ; $41ee: $36 $26
    add b                                         ; $41f0: $80
    ld l, $6e                                     ; $41f1: $2e $6e
    ld b, $85                                     ; $41f3: $06 $85
    ld l, l                                       ; $41f5: $6d
    dec c                                         ; $41f6: $0d
    dec a                                         ; $41f7: $3d
    pop hl                                        ; $41f8: $e1
    inc c                                         ; $41f9: $0c
    ld h, e                                       ; $41fa: $63
    nop                                           ; $41fb: $00
    adc d                                         ; $41fc: $8a
    and d                                         ; $41fd: $a2
    add c                                         ; $41fe: $81
    pop bc                                        ; $41ff: $c1
    ld b, c                                       ; $4200: $41
    ldh [$86], a                                  ; $4201: $e0 $86
    ret nz                                        ; $4203: $c0

    pop bc                                        ; $4204: $c1
    db $eb                                        ; $4205: $eb
    inc a                                         ; $4206: $3c
    ret nz                                        ; $4207: $c0

    ld a, a                                       ; $4208: $7f
    jp $e10d                                      ; $4209: $c3 $0d $e1


jr_069_420c:
    jp nz, Jump_069_67c6                          ; $420c: $c2 $c6 $67

    ld l, l                                       ; $420f: $6d
    dec a                                         ; $4210: $3d
    ld [c], a                                     ; $4211: $e2
    add b                                         ; $4212: $80
    db $e4                                        ; $4213: $e4
    adc e                                         ; $4214: $8b
    and c                                         ; $4215: $a1
    add b                                         ; $4216: $80
    ldh [$2b], a                                  ; $4217: $e0 $2b
    dec hl                                        ; $4219: $2b
    or a                                          ; $421a: $b7
    dec hl                                        ; $421b: $2b
    dec bc                                        ; $421c: $0b
    ld l, h                                       ; $421d: $6c
    ld b, [hl]                                    ; $421e: $46
    push bc                                       ; $421f: $c5
    ld l, h                                       ; $4220: $6c
    ld c, h                                       ; $4221: $4c
    ccf                                           ; $4222: $3f
    push bc                                       ; $4223: $c5
    inc c                                         ; $4224: $0c
    ld [bc], a                                    ; $4225: $02
    halt                                          ; $4226: $76
    add b                                         ; $4227: $80
    dec l                                         ; $4228: $2d
    ret nc                                        ; $4229: $d0

    db $e3                                        ; $422a: $e3
    ret nz                                        ; $422b: $c0

    add sp, -$52                                  ; $422c: $e8 $ae
    jp nz, $a538                                  ; $422e: $c2 $38 $a5

    ret nz                                        ; $4231: $c0

    pop hl                                        ; $4232: $e1
    rst $38                                       ; $4233: $ff
    ret nz                                        ; $4234: $c0

    ei                                            ; $4235: $fb
    dec hl                                        ; $4236: $2b
    ld l, e                                       ; $4237: $6b
    add b                                         ; $4238: $80
    push hl                                       ; $4239: $e5
    ld l, h                                       ; $423a: $6c
    ld l, h                                       ; $423b: $6c
    ld l, h                                       ; $423c: $6c
    ld c, h                                       ; $423d: $4c
    ld c, h                                       ; $423e: $4c
    inc b                                         ; $423f: $04
    cp [hl]                                       ; $4240: $be
    push hl                                       ; $4241: $e5
    ld a, [hl]                                    ; $4242: $7e

Jump_069_4243:
    ret nz                                        ; $4243: $c0

    dec l                                         ; $4244: $2d
    ld a, [hl]                                    ; $4245: $7e
    jp Jump_069_6646                              ; $4246: $c3 $46 $66


    db $e3                                        ; $4249: $e3
    ld b, b                                       ; $424a: $40
    ret nz                                        ; $424b: $c0

    db $ec                                        ; $424c: $ec
    add h                                         ; $424d: $84
    ldh [$ac], a                                  ; $424e: $e0 $ac
    ld bc, $c6e2                                  ; $4250: $01 $e2 $c6
    and e                                         ; $4253: $a3
    inc l                                         ; $4254: $2c
    inc l                                         ; $4255: $2c
    rst $38                                       ; $4256: $ff
    ld h, b                                       ; $4257: $60
    ld l, h                                       ; $4258: $6c
    dec sp                                        ; $4259: $3b
    push bc                                       ; $425a: $c5
    dec bc                                        ; $425b: $0b
    add b                                         ; $425c: $80
    or [hl]                                       ; $425d: $b6
    ld b, b                                       ; $425e: $40
    jr jr_069_41e3                                ; $425f: $18 $82

    ret nz                                        ; $4261: $c0

    add sp, $00                                   ; $4262: $e8 $00
    ret z                                         ; $4264: $c8

    jp c, Jump_069_4540                           ; $4265: $da $40 $45

    pop bc                                        ; $4268: $c1
    ld a, a                                       ; $4269: $7f
    and b                                         ; $426a: $a0
    dec hl                                        ; $426b: $2b
    cp $83                                        ; $426c: $fe $83
    push bc                                       ; $426e: $c5
    ld c, h                                       ; $426f: $4c
    ld a, [bc]                                    ; $4270: $0a
    ld a, [bc]                                    ; $4271: $0a
    dec hl                                        ; $4272: $2b
    dec hl                                        ; $4273: $2b
    ld l, h                                       ; $4274: $6c
    ld c, h                                       ; $4275: $4c
    ld b, [hl]                                    ; $4276: $46
    or e                                          ; $4277: $b3
    push hl                                       ; $4278: $e5
    dec bc                                        ; $4279: $0b
    ld c, l                                       ; $427a: $4d
    cp a                                          ; $427b: $bf
    db $e3                                        ; $427c: $e3
    add [hl]                                      ; $427d: $86
    ld b, l                                       ; $427e: $45
    ld hl, sp-$5d                                 ; $427f: $f8 $a3
    ld c, $c0                                     ; $4281: $0e $c0
    and h                                         ; $4283: $a4
    jp nc, $804d                                  ; $4284: $d2 $4d $80

    dec c                                         ; $4287: $0d
    inc b                                         ; $4288: $04
    ldh [rSC], a                                  ; $4289: $e0 $02
    ldh [rWX], a                                  ; $428b: $e0 $4b
    ld b, e                                       ; $428d: $43
    call nz, $0c2c                                ; $428e: $c4 $2c $0c
    dec e                                         ; $4291: $1d
    ld c, d                                       ; $4292: $4a
    rst $38                                       ; $4293: $ff
    ld h, c                                       ; $4294: $61
    inc c                                         ; $4295: $0c
    ld c, h                                       ; $4296: $4c
    ld c, h                                       ; $4297: $4c
    ld [hl], d                                    ; $4298: $72
    db $e4                                        ; $4299: $e4
    cp c                                          ; $429a: $b9
    ld h, b                                       ; $429b: $60
    or [hl]                                       ; $429c: $b6
    add d                                         ; $429d: $82
    nop                                           ; $429e: $00
    inc [hl]                                      ; $429f: $34
    ld b, c                                       ; $42a0: $41
    jp nz, Jump_000_38e4                          ; $42a1: $c2 $e4 $38

    pop bc                                        ; $42a4: $c1
    ld d, c                                       ; $42a5: $51
    ld b, h                                       ; $42a6: $44
    rst $38                                       ; $42a7: $ff
    and d                                         ; $42a8: $a2
    jp $c1c0                                      ; $42a9: $c3 $c0 $c1


    ret nz                                        ; $42ac: $c0

    jp z, Jump_069_44c3                           ; $42ad: $ca $c3 $44

    ld a, d                                       ; $42b0: $7a
    pop bc                                        ; $42b1: $c1
    cp a                                          ; $42b2: $bf
    ld h, b                                       ; $42b3: $60
    ld c, h                                       ; $42b4: $4c
    pop af                                        ; $42b5: $f1
    and $c0                                       ; $42b6: $e6 $c0
    db $e3                                        ; $42b8: $e3
    and d                                         ; $42b9: $a2
    ld b, c                                       ; $42ba: $41
    dec l                                         ; $42bb: $2d
    jp hl                                         ; $42bc: $e9


    jr nz, jr_069_42e0                            ; $42bd: $20 $21

    dec l                                         ; $42bf: $2d
    scf                                           ; $42c0: $37
    push bc                                       ; $42c1: $c5
    sub c                                         ; $42c2: $91
    inc h                                         ; $42c3: $24
    call c, $c240                                 ; $42c4: $dc $40 $c2
    add h                                         ; $42c7: $84
    dec c                                         ; $42c8: $0d
    set 0, d                                      ; $42c9: $cb $c2
    jp $ab80                                      ; $42cb: $c3 $80 $ab


    ld l, h                                       ; $42ce: $6c
    ld l, h                                       ; $42cf: $6c
    or b                                          ; $42d0: $b0
    pop bc                                        ; $42d1: $c1
    dec hl                                        ; $42d2: $2b
    pop af                                        ; $42d3: $f1
    db $e3                                        ; $42d4: $e3
    ld l, h                                       ; $42d5: $6c
    ret nz                                        ; $42d6: $c0

    add sp, $6d                                   ; $42d7: $e8 $6d
    jr nz, jr_069_42df                            ; $42d9: $20 $04

    jr nz, jr_069_4318                            ; $42db: $20 $3b

    and l                                         ; $42dd: $a5
    ret nz                                        ; $42de: $c0

jr_069_42df:
    push hl                                       ; $42df: $e5

jr_069_42e0:
    add d                                         ; $42e0: $82
    add h                                         ; $42e1: $84
    push bc                                       ; $42e2: $c5
    ld h, b                                       ; $42e3: $60
    dec c                                         ; $42e4: $0d
    set 0, e                                      ; $42e5: $cb $c3
    add b                                         ; $42e7: $80
    add b                                         ; $42e8: $80
    ld [hl+], a                                   ; $42e9: $22
    ld b, c                                       ; $42ea: $41
    add b                                         ; $42eb: $80
    ld c, e                                       ; $42ec: $4b
    ld l, h                                       ; $42ed: $6c
    and b                                         ; $42ee: $a0
    db $fd                                        ; $42ef: $fd
    ret nz                                        ; $42f0: $c0

    cp [hl]                                       ; $42f1: $be
    and b                                         ; $42f2: $a0
    dec bc                                        ; $42f3: $0b
    dec d                                         ; $42f4: $15
    and e                                         ; $42f5: $a3
    xor c                                         ; $42f6: $a9
    jr nz, @+$08                                  ; $42f7: $20 $06

    add l                                         ; $42f9: $85
    ldh [$2e], a                                  ; $42fa: $e0 $2e
    ld c, [hl]                                    ; $42fc: $4e
    ret nz                                        ; $42fd: $c0

    and $e6                                       ; $42fe: $e6 $e6

Call_069_4300:
    ld h, c                                       ; $4300: $61
    sla e                                         ; $4301: $cb $23
    add c                                         ; $4303: $81
    and c                                         ; $4304: $a1
    add l                                         ; $4305: $85
    ld h, c                                       ; $4306: $61
    ld h, l                                       ; $4307: $65
    dec c                                         ; $4308: $0d
    ld a, $e5                                     ; $4309: $3e $e5
    ld c, d                                       ; $430b: $4a
    ld a, [$b241]                                 ; $430c: $fa $41 $b2
    add b                                         ; $430f: $80
    inc l                                         ; $4310: $2c
    ld c, h                                       ; $4311: $4c
    ld a, [hl-]                                   ; $4312: $3a
    ldh [rLCDC], a                                ; $4313: $e0 $40
    cp [hl]                                       ; $4315: $be
    ld h, c                                       ; $4316: $61
    adc b                                         ; $4317: $88

jr_069_4318:
    ld [c], a                                     ; $4318: $e2
    ld b, h                                       ; $4319: $44
    ldh [$84], a                                  ; $431a: $e0 $84
    nop                                           ; $431c: $00
    ei                                            ; $431d: $fb
    ldh [$bb], a                                  ; $431e: $e0 $bb
    add l                                         ; $4320: $85
    ld c, $a0                                     ; $4321: $0e $a0
    ld b, c                                       ; $4323: $41
    inc b                                         ; $4324: $04
    ld d, l                                       ; $4325: $55
    ld hl, $a440                                  ; $4326: $21 $40 $a4
    dec c                                         ; $4329: $0d
    nop                                           ; $432a: $00
    and h                                         ; $432b: $a4
    cp $60                                        ; $432c: $fe $60
    cp [hl]                                       ; $432e: $be
    ld h, b                                       ; $432f: $60
    ldh a, [$a0]                                  ; $4330: $f0 $a0
    push af                                       ; $4332: $f5
    and c                                         ; $4333: $a1
    nop                                           ; $4334: $00
    ld a, d                                       ; $4335: $7a
    ld b, d                                       ; $4336: $42
    adc b                                         ; $4337: $88
    ld [c], a                                     ; $4338: $e2
    ret nc                                        ; $4339: $d0

    ldh [$88], a                                  ; $433a: $e0 $88
    pop bc                                        ; $433c: $c1
    ld a, d                                       ; $433d: $7a
    pop hl                                        ; $433e: $e1
    inc a                                         ; $433f: $3c
    jp nz, $c0f4                                  ; $4340: $c2 $f4 $c0

    ld a, $c4                                     ; $4343: $3e $c4
    ld bc, $bf4d                                  ; $4345: $01 $4d $bf
    and c                                         ; $4348: $a1
    pop bc                                        ; $4349: $c1
    ld [c], a                                     ; $434a: $e2
    inc b                                         ; $434b: $04
    adc b                                         ; $434c: $88
    or d                                          ; $434d: $b2
    add b                                         ; $434e: $80
    jp nz, Jump_069_5ee0                          ; $434f: $c2 $e0 $5e

    ld b, e                                       ; $4352: $43
    ld e, c                                       ; $4353: $59
    ld bc, $8020                                  ; $4354: $01 $20 $80
    ld [c], a                                     ; $4357: $e2
    ld b, e                                       ; $4358: $43
    add b                                         ; $4359: $80
    jr nc, jr_069_4369                            ; $435a: $30 $0d

    cp a                                          ; $435c: $bf
    db $e3                                        ; $435d: $e3
    adc l                                         ; $435e: $8d
    ld b, c                                       ; $435f: $41
    dec bc                                        ; $4360: $0b
    adc d                                         ; $4361: $8a
    and c                                         ; $4362: $a1
    dec sp                                        ; $4363: $3b
    push bc                                       ; $4364: $c5
    nop                                           ; $4365: $00
    pop bc                                        ; $4366: $c1
    ld h, c                                       ; $4367: $61
    ret nz                                        ; $4368: $c0

jr_069_4369:
    ld h, e                                       ; $4369: $63
    adc l                                         ; $436a: $8d
    ld b, l                                       ; $436b: $45
    ld [hl+], a                                   ; $436c: $22
    inc b                                         ; $436d: $04
    jr nc, jr_069_4376                            ; $436e: $30 $06

    xor c                                         ; $4370: $a9
    ld b, e                                       ; $4371: $43
    ld bc, $3e43                                  ; $4372: $01 $43 $3e
    and c                                         ; $4375: $a1

jr_069_4376:
    nop                                           ; $4376: $00
    cp a                                          ; $4377: $bf
    pop bc                                        ; $4378: $c1
    jp Jump_000_3769                              ; $4379: $c3 $69 $37


    ld h, c                                       ; $437c: $61
    ld bc, $2ba1                                  ; $437d: $01 $a1 $2b
    nop                                           ; $4380: $00
    ld c, l                                       ; $4381: $4d
    ld b, a                                       ; $4382: $47
    dec b                                         ; $4383: $05
    ldh [$30], a                                  ; $4384: $e0 $30
    dec b                                         ; $4386: $05
    inc b                                         ; $4387: $04
    ret nz                                        ; $4388: $c0

    jp hl                                         ; $4389: $e9


    db $fd                                        ; $438a: $fd
    ld h, d                                       ; $438b: $62
    dec c                                         ; $438c: $0d
    cp a                                          ; $438d: $bf
    push bc                                       ; $438e: $c5
    cp a                                          ; $438f: $bf
    rst $20                                       ; $4390: $e7
    cp l                                          ; $4391: $bd
    ld b, b                                       ; $4392: $40
    ld bc, $94a0                                  ; $4393: $01 $a0 $94
    rst $20                                       ; $4396: $e7
    nop                                           ; $4397: $00
    jr nc, jr_069_43a3                            ; $4398: $30 $09

    add b                                         ; $439a: $80
    db $e4                                        ; $439b: $e4
    jp z, $fe04                                   ; $439c: $ca $04 $fe

    and d                                         ; $439f: $a2
    db $fd                                        ; $43a0: $fd
    and e                                         ; $43a1: $a3
    ld a, a                                       ; $43a2: $7f

jr_069_43a3:
    ld l, e                                       ; $43a3: $6b
    pop bc                                        ; $43a4: $c1
    push hl                                       ; $43a5: $e5
    ret nz                                        ; $43a6: $c0

    db $eb                                        ; $43a7: $eb
    ld [$0530], sp                                ; $43a8: $08 $30 $05
    ld a, [hl]                                    ; $43ab: $7e
    and h                                         ; $43ac: $a4
    ld a, [hl]                                    ; $43ad: $7e
    ld b, d                                       ; $43ae: $42
    dec hl                                        ; $43af: $2b
    inc a                                         ; $43b0: $3c
    ld b, b                                       ; $43b1: $40
    ret z                                         ; $43b2: $c8

    add [hl]                                      ; $43b3: $86
    ld a, l                                       ; $43b4: $7d
    ld b, h                                       ; $43b5: $44
    cp a                                          ; $43b6: $bf
    ld h, b                                       ; $43b7: $60
    nop                                           ; $43b8: $00
    ret nz                                        ; $43b9: $c0

    push hl                                       ; $43ba: $e5
    ld c, a                                       ; $43bb: $4f
    inc bc                                        ; $43bc: $03
    jr nc, jr_069_43cb                            ; $43bd: $30 $0c

    ld a, $a6                                     ; $43bf: $3e $a6
    ld a, h                                       ; $43c1: $7c
    and h                                         ; $43c2: $a4
    ld a, $eb                                     ; $43c3: $3e $eb
    ld [bc], a                                    ; $43c5: $02
    and c                                         ; $43c6: $a1
    ld bc, $00a3                                  ; $43c7: $01 $a3 $00
    sub h                                         ; $43ca: $94

jr_069_43cb:
    db $e3                                        ; $43cb: $e3
    ret nz                                        ; $43cc: $c0

    db $eb                                        ; $43cd: $eb
    ld [hl], b                                    ; $43ce: $70
    ld [bc], a                                    ; $43cf: $02
    add e                                         ; $43d0: $83
    inc bc                                        ; $43d1: $03
    ret nz                                        ; $43d2: $c0

    and $40                                       ; $43d3: $e6 $40
    ld b, a                                       ; $43d5: $47
    cp $22                                        ; $43d6: $fe $22
    ld b, d                                       ; $43d8: $42
    and b                                         ; $43d9: $a0
    jr nz, @-$3d                                  ; $43da: $20 $c1

    add e                                         ; $43dc: $83
    ld b, b                                       ; $43dd: $40
    dec b                                         ; $43de: $05
    ret nz                                        ; $43df: $c0

    rst $28                                       ; $43e0: $ef
    cp $23                                        ; $43e1: $fe $23
    cp [hl]                                       ; $43e3: $be
    inc h                                         ; $43e4: $24
    dec hl                                        ; $43e5: $2b
    inc a                                         ; $43e6: $3c
    jp z, $807d                                   ; $43e7: $ca $7d $80

    nop                                           ; $43ea: $00
    sbc $03                                       ; $43eb: $de $03
    ld a, [$3006]                                 ; $43ed: $fa $06 $30
    rrca                                          ; $43f0: $0f
    ld h, h                                       ; $43f1: $64
    ld [hl+], a                                   ; $43f2: $22
    ld a, a                                       ; $43f3: $7f
    daa                                           ; $43f4: $27
    cp a                                          ; $43f5: $bf
    pop hl                                        ; $43f6: $e1
    rst $38                                       ; $43f7: $ff
    daa                                           ; $43f8: $27
    add c                                         ; $43f9: $81
    and h                                         ; $43fa: $a4
    adc b                                         ; $43fb: $88
    rst $38                                       ; $43fc: $ff
    jp z, Jump_000_0c30                           ; $43fd: $ca $30 $0c

    ret nz                                        ; $4400: $c0

    db $e3                                        ; $4401: $e3
    dec c                                         ; $4402: $0d
    ld a, [hl]                                    ; $4403: $7e
    ld b, d                                       ; $4404: $42
    cp $03                                        ; $4405: $fe $03
    ei                                            ; $4407: $fb
    xor b                                         ; $4408: $a8
    ld c, h                                       ; $4409: $4c
    nop                                           ; $440a: $00
    jp z, $c581                                   ; $440b: $ca $81 $c5

    add $0c                                       ; $440e: $c6 $0c
    db $e4                                        ; $4410: $e4
    sub b                                         ; $4411: $90
    pop hl                                        ; $4412: $e1
    jr nc, jr_069_441d                            ; $4413: $30 $08

    ld h, d                                       ; $4415: $62
    add c                                         ; $4416: $81
    cp a                                          ; $4417: $bf
    rst $00                                       ; $4418: $c7
    ret nz                                        ; $4419: $c0

    pop hl                                        ; $441a: $e1
    ld [bc], a                                    ; $441b: $02
    add l                                         ; $441c: $85

jr_069_441d:
    ld h, h                                       ; $441d: $64
    ld l, h                                       ; $441e: $6c

Call_069_441f:
    db $fd                                        ; $441f: $fd
    ld h, b                                       ; $4420: $60
    add b                                         ; $4421: $80
    and d                                         ; $4422: $a2
    ret nc                                        ; $4423: $d0

    db $eb                                        ; $4424: $eb
    or e                                          ; $4425: $b3
    and l                                         ; $4426: $a5
    jr nc, jr_069_442f                            ; $4427: $30 $06

    rst $38                                       ; $4429: $ff
    add d                                         ; $442a: $82
    nop                                           ; $442b: $00
    add b                                         ; $442c: $80
    db $e3                                        ; $442d: $e3
    cp b                                          ; $442e: $b8

jr_069_442f:
    nop                                           ; $442f: $00
    ld c, b                                       ; $4430: $48
    add c                                         ; $4431: $81
    add l                                         ; $4432: $85
    ld h, b                                       ; $4433: $60
    cp e                                          ; $4434: $bb
    ld b, b                                       ; $4435: $40
    ret nz                                        ; $4436: $c0

    ldh [rWX], a                                  ; $4437: $e0 $4b
    add d                                         ; $4439: $82
    ld e, c                                       ; $443a: $59
    add h                                         ; $443b: $84
    ret nz                                        ; $443c: $c0

    ret                                           ; $443d: $c9


    and [hl]                                      ; $443e: $a6
    ld b, c                                       ; $443f: $41
    and b                                         ; $4440: $a0
    jr nc, jr_069_444c                            ; $4441: $30 $09

    ld a, [hl]                                    ; $4443: $7e
    ld [c], a                                     ; $4444: $e2
    ld a, l                                       ; $4445: $7d
    add h                                         ; $4446: $84
    or a                                          ; $4447: $b7
    ld b, c                                       ; $4448: $41
    dec hl                                        ; $4449: $2b
    dec bc                                        ; $444a: $0b

jr_069_444b:
    dec bc                                        ; $444b: $0b

jr_069_444c:
    dec c                                         ; $444c: $0d
    ld c, l                                       ; $444d: $4d
    ld c, b                                       ; $444e: $48
    add b                                         ; $444f: $80
    ld l, e                                       ; $4450: $6b
    xor c                                         ; $4451: $a9
    and e                                         ; $4452: $a3
    add hl, de                                    ; $4453: $19
    ld h, l                                       ; $4454: $65
    ret nc                                        ; $4455: $d0

    rst $20                                       ; $4456: $e7
    add a                                         ; $4457: $87
    pop hl                                        ; $4458: $e1
    nop                                           ; $4459: $00
    jr nc, jr_069_4466                            ; $445a: $30 $0a

    ld a, [hl]                                    ; $445c: $7e
    ld [$c1bc], a                                 ; $445d: $ea $bc $c1
    rlc c                                         ; $4460: $cb $01
    ld l, e                                       ; $4462: $6b
    and d                                         ; $4463: $a2
    ld d, e                                       ; $4464: $53
    ld h, b                                       ; $4465: $60

jr_069_4466:
    db $dd                                        ; $4466: $dd
    add b                                         ; $4467: $80
    ret nc                                        ; $4468: $d0

    db $ed                                        ; $4469: $ed
    jr c, jr_069_44ac                             ; $446a: $38 $40

    ld bc, $0930                                  ; $446c: $01 $30 $09
    ld a, h                                       ; $446f: $7c
    call nz, Call_069_4b6b                        ; $4470: $c4 $6b $4b
    ld c, e                                       ; $4473: $4b
    cp e                                          ; $4474: $bb
    push bc                                       ; $4475: $c5
    adc d                                         ; $4476: $8a
    nop                                           ; $4477: $00
    nop                                           ; $4478: $00
    pop bc                                        ; $4479: $c1
    ld [c], a                                     ; $447a: $e2
    sbc a                                         ; $447b: $9f
    add e                                         ; $447c: $83
    sub c                                         ; $447d: $91
    add b                                         ; $447e: $80
    ret nc                                        ; $447f: $d0

    ld [$6204], a                                 ; $4480: $ea $04 $62
    jr nc, @+$09                                  ; $4483: $30 $07

    inc a                                         ; $4485: $3c
    dec b                                         ; $4486: $05
    cp [hl]                                       ; $4487: $be
    rst $20                                       ; $4488: $e7
    nop                                           ; $4489: $00
    ld [hl], l                                    ; $448a: $75
    jr nz, jr_069_444b                            ; $448b: $20 $be

    ld [c], a                                     ; $448d: $e2
    ret nz                                        ; $448e: $c0

    db $e4                                        ; $448f: $e4

Jump_069_4490:
    ld d, b                                       ; $4490: $50

Call_069_4491:
    db $e4                                        ; $4491: $e4
    ret nc                                        ; $4492: $d0

    push hl                                       ; $4493: $e5
    ld [hl-], a                                   ; $4494: $32
    rlca                                          ; $4495: $07
    jr nc, @+$05                                  ; $4496: $30 $03

    push af                                       ; $4498: $f5
    ld hl, $8f00                                  ; $4499: $21 $00 $8f
    db $e4                                        ; $449c: $e4
    cp b                                          ; $449d: $b8
    rst $00                                       ; $449e: $c7
    cp [hl]                                       ; $449f: $be
    ld [c], a                                     ; $44a0: $e2
    rlca                                          ; $44a1: $07
    ld b, c                                       ; $44a2: $41
    rst $00                                       ; $44a3: $c7
    ld bc, $26cd                                  ; $44a4: $01 $cd $26
    dec b                                         ; $44a7: $05
    ld h, h                                       ; $44a8: $64
    jr nc, jr_069_44b6                            ; $44a9: $30 $0b

    nop                                           ; $44ab: $00

jr_069_44ac:
    inc l                                         ; $44ac: $2c
    ld b, c                                       ; $44ad: $41
    cp a                                          ; $44ae: $bf
    xor $32                                       ; $44af: $ee $32
    add d                                         ; $44b1: $82
    add l                                         ; $44b2: $85
    add e                                         ; $44b3: $83
    adc e                                         ; $44b4: $8b
    ld b, d                                       ; $44b5: $42

jr_069_44b6:
    ret nc                                        ; $44b6: $d0

    add sp, $40                                   ; $44b7: $e8 $40
    dec b                                         ; $44b9: $05
    jr nc, jr_069_44c6                            ; $44ba: $30 $0a

    dec b                                         ; $44bc: $05
    ld c, l                                       ; $44bd: $4d
    daa                                           ; $44be: $27
    ld b, b                                       ; $44bf: $40
    dec l                                         ; $44c0: $2d
    ld c, e                                       ; $44c1: $4b
    pop hl                                        ; $44c2: $e1

Jump_069_44c3:
    halt                                          ; $44c3: $76
    ld h, b                                       ; $44c4: $60
    ld sp, hl                                     ; $44c5: $f9

jr_069_44c6:
    call nz, $e2f2                                ; $44c6: $c4 $f2 $e2
    ld b, e                                       ; $44c9: $43
    jr nz, jr_069_44cc                            ; $44ca: $20 $00

jr_069_44cc:
    ld d, c                                       ; $44cc: $51
    ld [hl+], a                                   ; $44cd: $22
    ret nc                                        ; $44ce: $d0

    db $ed                                        ; $44cf: $ed
    jr nc, @+$0d                                  ; $44d0: $30 $0b

    inc sp                                        ; $44d2: $33
    ld hl, $415b                                  ; $44d3: $21 $5b $41
    ret z                                         ; $44d6: $c8

    jp $c1b6                                      ; $44d7: $c3 $b6 $c1


    ld l, l                                       ; $44da: $6d
    ld bc, $fc00                                  ; $44db: $01 $00 $fc
    jp nz, Jump_000_03c4                          ; $44de: $c2 $c4 $03

    ret nc                                        ; $44e1: $d0

    db $ec                                        ; $44e2: $ec
    jr nc, jr_069_44f2                            ; $44e3: $30 $0d

    ld h, e                                       ; $44e5: $63
    add b                                         ; $44e6: $80
    or d                                          ; $44e7: $b2
    ld [hl+], a                                   ; $44e8: $22
    ld a, [$6fc4]                                 ; $44e9: $fa $c4 $6f
    ld b, c                                       ; $44ec: $41
    nop                                           ; $44ed: $00
    ldh a, [$63]                                  ; $44ee: $f0 $63
    dec [hl]                                      ; $44f0: $35
    ret nz                                        ; $44f1: $c0

jr_069_44f2:
    ei                                            ; $44f2: $fb
    jp nz, $ecd0                                  ; $44f3: $c2 $d0 $ec

    jr nc, @+$0f                                  ; $44f6: $30 $0d

    rra                                           ; $44f8: $1f
    ld [c], a                                     ; $44f9: $e2
    ret nz                                        ; $44fa: $c0

    add sp, $3a                                   ; $44fb: $e8 $3a
    ld [c], a                                     ; $44fd: $e2
    add b                                         ; $44fe: $80
    or h                                          ; $44ff: $b4
    and e                                         ; $4500: $a3
    cp a                                          ; $4501: $bf
    pop hl                                        ; $4502: $e1
    ret nc                                        ; $4503: $d0

    xor $30                                       ; $4504: $ee $30
    dec bc                                        ; $4506: $0b
    ldh a, [$e2]                                  ; $4507: $f0 $e2
    dec e                                         ; $4509: $1d
    add c                                         ; $450a: $81
    ret nz                                        ; $450b: $c0

    rst $20                                       ; $450c: $e7
    dec c                                         ; $450d: $0d
    ld bc, $2c4d                                  ; $450e: $01 $4d $2c
    inc bc                                        ; $4511: $03
    cp a                                          ; $4512: $bf
    ld [c], a                                     ; $4513: $e2
    ld a, [bc]                                    ; $4514: $0a
    jr nz, jr_069_4557                            ; $4515: $20 $40

    inc c                                         ; $4517: $0c
    ldh a, [$f2]                                  ; $4518: $f0 $f2
    add b                                         ; $451a: $80
    jp hl                                         ; $451b: $e9


    ld l, a                                       ; $451c: $6f
    ld h, h                                       ; $451d: $64
    ld bc, $322d                                  ; $451e: $01 $2d $32
    and d                                         ; $4521: $a2
    ret nz                                        ; $4522: $c0

    rst $28                                       ; $4523: $ef
    inc b                                         ; $4524: $04
    push bc                                       ; $4525: $c5
    ldh a, [$ea]                                  ; $4526: $f0 $ea
    ret nz                                        ; $4528: $c0

    db $eb                                        ; $4529: $eb
    ldh a, [rSCX]                                 ; $452a: $f0 $43
    and $02                                       ; $452c: $e6 $02
    nop                                           ; $452e: $00
    cp [hl]                                       ; $452f: $be
    jp $e6d0                                      ; $4530: $c3 $d0 $e6


    ld b, h                                       ; $4533: $44
    db $e3                                        ; $4534: $e3
    dec bc                                        ; $4535: $0b
    pop bc                                        ; $4536: $c1
    jr nc, jr_069_453e                            ; $4537: $30 $05

    ldh a, [$e5]                                  ; $4539: $f0 $e5
    ld a, a                                       ; $453b: $7f
    push bc                                       ; $453c: $c5
    or c                                          ; $453d: $b1

jr_069_453e:
    ld b, h                                       ; $453e: $44
    dec e                                         ; $453f: $1d

Jump_069_4540:
    dec l                                         ; $4540: $2d
    ret nz                                        ; $4541: $c0

    ldh [$2b], a                                  ; $4542: $e0 $2b
    ld l, e                                       ; $4544: $6b
    ld c, e                                       ; $4545: $4b
    adc a                                         ; $4546: $8f
    and c                                         ; $4547: $a1
    ret nc                                        ; $4548: $d0

    db $eb                                        ; $4549: $eb
    rlca                                          ; $454a: $07
    ret nz                                        ; $454b: $c0

    nop                                           ; $454c: $00
    rst $00                                       ; $454d: $c7
    and b                                         ; $454e: $a0
    jr nc, jr_069_4557                            ; $454f: $30 $06

    ldh a, [$e8]                                  ; $4551: $f0 $e8
    ld [hl], a                                    ; $4553: $77
    and [hl]                                      ; $4554: $a6
    xor $02                                       ; $4555: $ee $02

jr_069_4557:
    pop bc                                        ; $4557: $c1
    push hl                                       ; $4558: $e5
    ret nc                                        ; $4559: $d0

    db $ec                                        ; $455a: $ec
    rlca                                          ; $455b: $07
    call nz, $3000                                ; $455c: $c4 $00 $30
    rlca                                          ; $455f: $07
    ldh a, [$e6]                                  ; $4560: $f0 $e6
    ld a, [c]                                     ; $4562: $f2
    ld bc, $e4ff                                  ; $4563: $01 $ff $e4
    xor l                                         ; $4566: $ad
    ld bc, $e5c1                                  ; $4567: $01 $c1 $e5
    ret nc                                        ; $456a: $d0

    db $ed                                        ; $456b: $ed
    ld [hl], $83                                  ; $456c: $36 $83
    nop                                           ; $456e: $00
    jr nc, @+$0f                                  ; $456f: $30 $0d

    ld d, $64                                     ; $4571: $16 $64
    db $f4                                        ; $4573: $f4
    call nz, $e1bf                                ; $4574: $c4 $bf $e1
    ld b, e                                       ; $4577: $43
    and $d0                                       ; $4578: $e6 $d0
    ld a, [c]                                     ; $457a: $f2
    jr nc, @+$07                                  ; $457b: $30 $05

    ldh a, [$e9]                                  ; $457d: $f0 $e9
    nop                                           ; $457f: $00
    ld [hl], c                                    ; $4580: $71
    ld bc, $a1a2                                  ; $4581: $01 $a2 $a1
    ld [hl], a                                    ; $4584: $77
    and $67                                       ; $4585: $e6 $67
    and c                                         ; $4587: $a1
    ret nc                                        ; $4588: $d0

    db $ec                                        ; $4589: $ec
    ld a, e                                       ; $458a: $7b
    nop                                           ; $458b: $00
    cp e                                          ; $458c: $bb
    add h                                         ; $458d: $84
    jr nc, jr_069_4594                            ; $458e: $30 $04

Call_069_4590:
Jump_069_4590:
    nop                                           ; $4590: $00
    ldh a, [$e8]                                  ; $4591: $f0 $e8
    add b                                         ; $4593: $80

jr_069_4594:
    ld [c], a                                     ; $4594: $e2
    ld l, $c0                                     ; $4595: $2e $c0
    ld a, b                                       ; $4597: $78
    db $e3                                        ; $4598: $e3
    rlca                                          ; $4599: $07
    inc hl                                        ; $459a: $23
    ret nc                                        ; $459b: $d0

    xor $92                                       ; $459c: $ee $92
    jp $c00a                                      ; $459e: $c3 $0a $c0


    nop                                           ; $45a1: $00
    jr nc, jr_069_45a7                            ; $45a2: $30 $03

    ldh a, [$e9]                                  ; $45a4: $f0 $e9
    ld b, b                                       ; $45a6: $40

jr_069_45a7:
    rst $20                                       ; $45a7: $e7
    ret                                           ; $45a8: $c9


    add b                                         ; $45a9: $80
    add a                                         ; $45aa: $87
    ld bc, $e26f                                  ; $45ab: $01 $6f $e2
    ret nc                                        ; $45ae: $d0

    db $eb                                        ; $45af: $eb
    nop                                           ; $45b0: $00
    nop                                           ; $45b1: $00
    nop                                           ; $45b2: $00
    rst $18                                       ; $45b3: $df
    ret c                                         ; $45b4: $d8

    push de                                       ; $45b5: $d5
    push de                                       ; $45b6: $d5
    ret c                                         ; $45b7: $d8

    and b                                         ; $45b8: $a0
    rst $38                                       ; $45b9: $ff
    db $ed                                        ; $45ba: $ed
    db $d3                                        ; $45bb: $d3
    ret nc                                        ; $45bc: $d0

    pop af                                        ; $45bd: $f1
    db $d3                                        ; $45be: $d3
    db $ec                                        ; $45bf: $ec
    xor $db                                       ; $45c0: $ee $db
    db $e4                                        ; $45c2: $e4
    ret nc                                        ; $45c3: $d0

    db $ed                                        ; $45c4: $ed
    jp nc, $d4d6                                  ; $45c5: $d2 $d6 $d4

    sub $e6                                       ; $45c8: $d6 $e6
    cp l                                          ; $45ca: $bd
    ld [c], a                                     ; $45cb: $e2
    sbc $df                                       ; $45cc: $de $df
    db $e3                                        ; $45ce: $e3
    pop hl                                        ; $45cf: $e1
    or h                                          ; $45d0: $b4
    db $e3                                        ; $45d1: $e3
    rst $10                                       ; $45d2: $d7
    call nc, $98d7                                ; $45d3: $d4 $d7 $98
    ldh a, [$e2]                                  ; $45d6: $f0 $e2
    and a                                         ; $45d8: $a7
    jp hl                                         ; $45d9: $e9


    ldh a, [$e2]                                  ; $45da: $f0 $e2
    ret c                                         ; $45dc: $d8

    push de                                       ; $45dd: $d5
    ret nc                                        ; $45de: $d0

    ld [$e0b2], a                                 ; $45df: $ea $b2 $e0
    sub $df                                       ; $45e2: $d6 $df
    jp nc, $d2d0                                  ; $45e4: $d2 $d0 $d2

    call nc, $91d6                                ; $45e7: $d4 $d6 $91
    ldh [$e0], a                                  ; $45ea: $e0 $e0
    pop hl                                        ; $45ec: $e1
    ld [hl], e                                    ; $45ed: $73
    and b                                         ; $45ee: $a0
    ret c                                         ; $45ef: $d8

    db $f4                                        ; $45f0: $f4
    ldh [$72], a                                  ; $45f1: $e0 $72
    ld [c], a                                     ; $45f3: $e2
    jp c, $dad9                                   ; $45f4: $da $d9 $da

    ldh a, [$e1]                                  ; $45f7: $f0 $e1
    cp a                                          ; $45f9: $bf
    and b                                         ; $45fa: $a0
    ld [$a0a0], a                                 ; $45fb: $ea $a0 $a0
    sbc a                                         ; $45fe: $9f
    sbc l                                         ; $45ff: $9d
    rst $38                                       ; $4600: $ff
    pop hl                                        ; $4601: $e1
    and d                                         ; $4602: $a2
    ld h, c                                       ; $4603: $61
    sbc a                                         ; $4604: $9f
    ldh a, [$e2]                                  ; $4605: $f0 $e2
    ld h, a                                       ; $4607: $67
    ldh [$d0], a                                  ; $4608: $e0 $d0

jr_069_460a:
    jp hl                                         ; $460a: $e9


    ld d, a                                       ; $460b: $57
    pop hl                                        ; $460c: $e1
    rst $10                                       ; $460d: $d7
    call nc, $e0bf                                ; $460e: $d4 $bf $e0
    rst $38                                       ; $4611: $ff
    rst $10                                       ; $4612: $d7
    jp nc, $a0d8                                  ; $4613: $d2 $d8 $a0

    ld [c], a                                     ; $4616: $e2
    db $e3                                        ; $4617: $e3
    and b                                         ; $4618: $a0
    rst $10                                       ; $4619: $d7
    rst $28                                       ; $461a: $ef
    jp nc, $d1d0                                  ; $461b: $d2 $d0 $d1

    ret nc                                        ; $461e: $d0

    push af                                       ; $461f: $f5
    ldh [$a0], a                                  ; $4620: $e0 $a0
    call c, $f9db                                 ; $4622: $dc $db $f9
    call c, $e1f0                                 ; $4625: $dc $f0 $e1
    jr z, jr_069_460a                             ; $4628: $28 $e0

    sbc a                                         ; $462a: $9f
    or [hl]                                       ; $462b: $b6
    sub b                                         ; $462c: $90
    jp $c690                                      ; $462d: $c3 $90 $c6


    rst $38                                       ; $4630: $ff
    ldh [$b6], a                                  ; $4631: $e0 $b6
    sbc a                                         ; $4633: $9f
    ldh a, [$e2]                                  ; $4634: $f0 $e2
    ret nc                                        ; $4636: $d0

    db $eb                                        ; $4637: $eb
    rla                                           ; $4638: $17
    pop hl                                        ; $4639: $e1
    db $dd                                        ; $463a: $dd
    reti                                          ; $463b: $d9


    ld a, [de]                                    ; $463c: $1a
    ld d, e                                       ; $463d: $53
    ldh [$dd], a                                  ; $463e: $e0 $dd
    db $10                                        ; $4640: $10
    ld [c], a                                     ; $4641: $e2
    db $eb                                        ; $4642: $eb
    jp c, $e3b3                                   ; $4643: $da $b3 $e3

    pop af                                        ; $4646: $f1
    add $84                                       ; $4647: $c6 $84
    ldh [$af], a                                  ; $4649: $e0 $af
    or [hl]                                       ; $464b: $b6
    sub b                                         ; $464c: $90
    sub b                                         ; $464d: $90
    call nz, $e0c0                                ; $464e: $c4 $c0 $e0
    jp $e0bf                                      ; $4651: $c3 $bf $e0


    and b                                         ; $4654: $a0
    and l                                         ; $4655: $a5
    db $eb                                        ; $4656: $eb
    daa                                           ; $4657: $27
    ldh [$d2], a                                  ; $4658: $e0 $d2
    ret nc                                        ; $465a: $d0

    jp hl                                         ; $465b: $e9


    ldh a, [$e1]                                  ; $465c: $f0 $e1
    ret nc                                        ; $465e: $d0

    cp [hl]                                       ; $465f: $be
    ldh [$dd], a                                  ; $4660: $e0 $dd
    cp l                                          ; $4662: $bd
    pop de                                        ; $4663: $d1
    ret nc                                        ; $4664: $d0

    pop bc                                        ; $4665: $c1
    db $ec                                        ; $4666: $ec
    db $ed                                        ; $4667: $ed
    call c, $b3da                                 ; $4668: $dc $da $b3
    pop hl                                        ; $466b: $e1
    jp c, $c1f0                                   ; $466c: $da $f0 $c1

    and $c3                                       ; $466f: $e6 $c3
    ldh [$c5], a                                  ; $4671: $e0 $c5
    pop hl                                        ; $4673: $e1
    ld a, [hl]                                    ; $4674: $7e
    ldh [$c4], a                                  ; $4675: $e0 $c4
    sub b                                         ; $4677: $90
    jp Jump_069_4bb6                              ; $4678: $c3 $b6 $4b


    sbc a                                         ; $467b: $9f
    db $ed                                        ; $467c: $ed
    daa                                           ; $467d: $27
    ldh [$d3], a                                  ; $467e: $e0 $d3
    ret nc                                        ; $4680: $d0

    jp hl                                         ; $4681: $e9


    ldh a, [$e1]                                  ; $4682: $f0 $e1
    call nc, $e040                                ; $4684: $d4 $40 $e0
    inc l                                         ; $4687: $2c
    cp $c0                                        ; $4688: $fe $c0
    adc e                                         ; $468a: $8b
    db $e3                                        ; $468b: $e3
    call c, $06db                                 ; $468c: $dc $db $06
    ldh [$dc], a                                  ; $468f: $e0 $dc
    inc c                                         ; $4691: $0c
    push hl                                       ; $4692: $e5
    add h                                         ; $4693: $84
    ldh [$fe], a                                  ; $4694: $e0 $fe
    ld b, h                                       ; $4696: $44
    ldh [$c4], a                                  ; $4697: $e0 $c4
    sub c                                         ; $4699: $91
    sub c                                         ; $469a: $91
    call nz, $90c3                                ; $469b: $c4 $c3 $90
    jp $c49d                                      ; $469e: $c3 $9d $c4


    ld a, [hl]                                    ; $46a1: $7e
    pop hl                                        ; $46a2: $e1
    and b                                         ; $46a3: $a0
    call c, $d0d7                                 ; $46a4: $dc $d7 $d0
    ld [$e0f0], a                                 ; $46a7: $ea $f0 $e0
    reti                                          ; $46aa: $d9


    ld b, $40                                     ; $46ab: $06 $40
    ldh [$d4], a                                  ; $46ad: $e0 $d4
    rst $10                                       ; $46af: $d7
    ret nc                                        ; $46b0: $d0

    ret nz                                        ; $46b1: $c0

    rst $28                                       ; $46b2: $ef
    db $e4                                        ; $46b3: $e4
    ld b, $e0                                     ; $46b4: $06 $e0
    adc b                                         ; $46b6: $88
    db $e3                                        ; $46b7: $e3
    ld [$ffe2], sp                                ; $46b8: $08 $e2 $ff
    call nz, $9190                                ; $46bb: $c4 $90 $91
    ld b, l                                       ; $46be: $45
    ld c, b                                       ; $46bf: $48
    ld c, b                                       ; $46c0: $48
    ld b, [hl]                                    ; $46c1: $46
    call nz, Call_000_3bb2                        ; $46c2: $c4 $b2 $3b
    ld [c], a                                     ; $46c5: $e2
    and c                                         ; $46c6: $a1
    and [hl]                                      ; $46c7: $a6
    jp nz, $ebd0                                  ; $46c8: $c2 $d0 $eb

    jp c, $8ddb                                   ; $46cb: $da $db $8d

    ldh [$d9], a                                  ; $46ce: $e0 $d9
    pop bc                                        ; $46d0: $c1
    jp c, $c0d0                                   ; $46d1: $da $d0 $c0

    ld a, [bc]                                    ; $46d4: $0a
    rst $20                                       ; $46d5: $e7
    call Call_000_08c4                            ; $46d6: $cd $c4 $08
    ldh [$c3], a                                  ; $46d9: $e0 $c3
    pop hl                                        ; $46db: $e1
    ld b, a                                       ; $46dc: $47
    ld h, b                                       ; $46dd: $60
    rla                                           ; $46de: $17
    ld d, d                                       ; $46df: $52
    ld b, c                                       ; $46e0: $41
    sub c                                         ; $46e1: $91
    xor a                                         ; $46e2: $af
    ld [c], a                                     ; $46e3: $e2
    sbc [hl]                                      ; $46e4: $9e
    ld e, [hl]                                    ; $46e5: $5e
    ld [c], a                                     ; $46e6: $e2
    ret nc                                        ; $46e7: $d0

    db $eb                                        ; $46e8: $eb
    ret z                                         ; $46e9: $c8

    ldh [$c8], a                                  ; $46ea: $e0 $c8
    db $ed                                        ; $46ec: $ed
    ldh [$c2], a                                  ; $46ed: $e0 $c2
    push hl                                       ; $46ef: $e5
    inc c                                         ; $46f0: $0c
    jp nz, Jump_069_53a1                          ; $46f1: $c2 $a1 $53

    pop hl                                        ; $46f4: $e1
    adc e                                         ; $46f5: $8b
    jp nz, $ae91                                  ; $46f6: $c2 $91 $ae

    rst $38                                       ; $46f9: $ff
    ld d, c                                       ; $46fa: $51
    ld e, [hl]                                    ; $46fb: $5e
    ld h, b                                       ; $46fc: $60
    ld d, h                                       ; $46fd: $54
    ld d, e                                       ; $46fe: $53
    ld a, [hl+]                                   ; $46ff: $2a
    cpl                                           ; $4700: $2f
    dec l                                         ; $4701: $2d
    add c                                         ; $4702: $81
    sub c                                         ; $4703: $91
    ld a, d                                       ; $4704: $7a
    pop bc                                        ; $4705: $c1
    ret nz                                        ; $4706: $c0

    pop hl                                        ; $4707: $e1
    cp l                                          ; $4708: $bd
    db $e3                                        ; $4709: $e3
    sub d                                         ; $470a: $92
    pop hl                                        ; $470b: $e1
    call nc, $83a5                                ; $470c: $d4 $a5 $83
    and d                                         ; $470f: $a2
    db $e4                                        ; $4710: $e4
    ret                                           ; $4711: $c9


    push hl                                       ; $4712: $e5
    ld a, h                                       ; $4713: $7c
    and d                                         ; $4714: $a2
    inc e                                         ; $4715: $1c
    jp nz, $8e9e                                  ; $4716: $c2 $9e $8e

    pop bc                                        ; $4719: $c1
    add e                                         ; $471a: $83
    pop hl                                        ; $471b: $e1
    xor [hl]                                      ; $471c: $ae
    ld b, [hl]                                    ; $471d: $46
    rst $30                                       ; $471e: $f7
    xor a                                         ; $471f: $af
    ld b, c                                       ; $4720: $41

Call_069_4721:
    ld d, e                                       ; $4721: $53
    jp nz, Jump_000_20e0                          ; $4722: $c2 $e0 $20

    jr nz, @+$34                                  ; $4725: $20 $32

    xor [hl]                                      ; $4727: $ae
    ld h, b                                       ; $4728: $60
    ld a, d                                       ; $4729: $7a
    pop bc                                        ; $472a: $c1
    ret nz                                        ; $472b: $c0

    db $e4                                        ; $472c: $e4
    ret nc                                        ; $472d: $d0

    db $e3                                        ; $472e: $e3
    call nc, $8ca6                                ; $472f: $d4 $a6 $8c
    and d                                         ; $4732: $a2
    and $e7                                       ; $4733: $e6 $e7
    inc a                                         ; $4735: $3c
    and d                                         ; $4736: $a2
    ld hl, sp+$0c                                 ; $4737: $f8 $0c
    pop bc                                        ; $4739: $c1
    ld [bc], a                                    ; $473a: $02
    db $e4                                        ; $473b: $e4
    add e                                         ; $473c: $83
    ldh [$af], a                                  ; $473d: $e0 $af
    scf                                           ; $473f: $37
    jr c, jr_069_477d                             ; $4740: $38 $3b

    dec sp                                        ; $4742: $3b
    ld a, a                                       ; $4743: $7f
    dec sp                                        ; $4744: $3b

jr_069_4745:
    daa                                           ; $4745: $27
    inc l                                         ; $4746: $2c
    ld sp, $bd31                                  ; $4747: $31 $31 $bd

jr_069_474a:
    xor a                                         ; $474a: $af
    ld a, $e0                                     ; $474b: $3e $e0
    call z, $c07e                                 ; $474d: $cc $7e $c0
    rla                                           ; $4750: $17
    and [hl]                                      ; $4751: $a6
    and $e7                                       ; $4752: $e6 $e7
    call nc, Call_000_14a6                        ; $4754: $d4 $a6 $14
    and d                                         ; $4757: $a2
    add sp, -$17                                  ; $4758: $e8 $e9
    db $ec                                        ; $475a: $ec
    ld [bc], a                                    ; $475b: $02
    db $ec                                        ; $475c: $ec
    add e                                         ; $475d: $83
    pop hl                                        ; $475e: $e1
    ld [hl], $35                                  ; $475f: $36 $35
    rst $38                                       ; $4761: $ff
    ldh [$36], a                                  ; $4762: $e0 $36
    inc sp                                        ; $4764: $33
    ld c, c                                       ; $4765: $49
    ld a, a                                       ; $4766: $7f
    ld c, c                                       ; $4767: $49
    ld c, c                                       ; $4768: $49
    ld d, d                                       ; $4769: $52
    ld b, l                                       ; $476a: $45
    ld b, [hl]                                    ; $476b: $46
    ld b, [hl]                                    ; $476c: $46
    sub c                                         ; $476d: $91
    ld a, [hl]                                    ; $476e: $7e
    ret nz                                        ; $476f: $c0

    inc sp                                        ; $4770: $33
    sbc l                                         ; $4771: $9d
    sbc l                                         ; $4772: $9d
    ld a, h                                       ; $4773: $7c
    ret nz                                        ; $4774: $c0

    ld d, h                                       ; $4775: $54
    pop hl                                        ; $4776: $e1
    add sp, -$17                                  ; $4777: $e8 $e9
    call nc, Call_000_14a6                        ; $4779: $d4 $a6 $14
    and c                                         ; $477c: $a1

jr_069_477d:
    ld a, h                                       ; $477d: $7c
    jr nz, @-$58                                  ; $477e: $20 $a6

    inc c                                         ; $4780: $0c
    jp nz, $91c4                                  ; $4781: $c2 $c4 $91

    ld b, l                                       ; $4784: $45
    scf                                           ; $4785: $37
    scf                                           ; $4786: $37
    add e                                         ; $4787: $83
    ldh [$fe], a                                  ; $4788: $e0 $fe
    pop bc                                        ; $478a: $c1
    ld [c], a                                     ; $478b: $e2
    ld b, l                                       ; $478c: $45
    ld b, l                                       ; $478d: $45
    ld d, d                                       ; $478e: $52
    ld d, d                                       ; $478f: $52
    ld d, e                                       ; $4790: $53

Call_069_4791:
    ld d, e                                       ; $4791: $53
    ld b, l                                       ; $4792: $45
    rrca                                          ; $4793: $0f
    ld [bc], a                                    ; $4794: $02
    rlca                                          ; $4795: $07
    inc b                                         ; $4796: $04
    inc bc                                        ; $4797: $03
    cp d                                          ; $4798: $ba
    pop bc                                        ; $4799: $c1
    cp c                                          ; $479a: $b9
    and b                                         ; $479b: $a0
    ld d, h                                       ; $479c: $54
    db $e3                                        ; $479d: $e3
    call nc, $e0a6                                ; $479e: $d4 $a6 $e0
    inc d                                         ; $47a1: $14
    and c                                         ; $47a2: $a1
    jr jr_069_4745                                ; $47a3: $18 $a0

    jr nz, jr_069_474a                            ; $47a5: $20 $a3

    jp $8ac0                                      ; $47a7: $c3 $c0 $8a


    pop bc                                        ; $47aa: $c1
    ld [hl], $62                                  ; $47ab: $36 $62
    ld h, l                                       ; $47ad: $65
    db $ed                                        ; $47ae: $ed
    ld h, [hl]                                    ; $47af: $66
    add e                                         ; $47b0: $83
    pop hl                                        ; $47b1: $e1
    jr c, jr_069_47eb                             ; $47b2: $38 $37

    ret z                                         ; $47b4: $c8

    pop hl                                        ; $47b5: $e1
    inc bc                                        ; $47b6: $03
    inc b                                         ; $47b7: $04
    rlca                                          ; $47b8: $07
    ld a, a                                       ; $47b9: $7f
    rlca                                          ; $47ba: $07
    rrca                                          ; $47bb: $0f
    nop                                           ; $47bc: $00
    ld bc, $020f                                  ; $47bd: $01 $0f $02
    sub c                                         ; $47c0: $91
    cp e                                          ; $47c1: $bb
    jp nz, Jump_069_5440                          ; $47c2: $c2 $40 $54

    ldh [$d0], a                                  ; $47c5: $e0 $d0
    pop hl                                        ; $47c7: $e1
    call nc, Call_000_14a4                        ; $47c8: $d4 $a4 $14
    and d                                         ; $47cb: $a2
    inc b                                         ; $47cc: $04
    push hl                                       ; $47cd: $e5
    jp $c3c0                                      ; $47ce: $c3 $c0 $c3


    pop bc                                        ; $47d1: $c1
    ld [c], a                                     ; $47d2: $e2
    rst $28                                       ; $47d3: $ef
    ld h, a                                       ; $47d4: $67
    dec [hl]                                      ; $47d5: $35
    ld l, b                                       ; $47d6: $68
    ld h, [hl]                                    ; $47d7: $66
    jp nz, $03e0                                  ; $47d8: $c2 $e0 $03

    inc b                                         ; $47db: $04
    rrca                                          ; $47dc: $0f
    rst $18                                       ; $47dd: $df
    ld bc, $0f00                                  ; $47de: $01 $00 $0f
    rrca                                          ; $47e1: $0f
    sbc b                                         ; $47e2: $98
    rst $38                                       ; $47e3: $ff
    ldh [$99], a                                  ; $47e4: $e0 $99
    sbc c                                         ; $47e6: $99
    rst $00                                       ; $47e7: $c7
    sbc b                                         ; $47e8: $98
    rrca                                          ; $47e9: $0f
    dec b                                         ; $47ea: $05

jr_069_47eb:
    cp e                                          ; $47eb: $bb
    set 0, [hl]                                   ; $47ec: $cb $c6
    push hl                                       ; $47ee: $e5
    ld bc, $9e89                                  ; $47ef: $01 $89 $9e
    call nz, $91df                                ; $47f2: $c4 $df $91
    ld a, c                                       ; $47f5: $79
    ld a, d                                       ; $47f6: $7a
    ld h, h                                       ; $47f7: $64
    ld a, b                                       ; $47f8: $78
    ld b, $e0                                     ; $47f9: $06 $e0
    ld l, d                                       ; $47fb: $6a
    ld a, [hl-]                                   ; $47fc: $3a
    di                                            ; $47fd: $f3
    ld b, l                                       ; $47fe: $45
    dec b                                         ; $47ff: $05
    add $e0                                       ; $4800: $c6 $e0
    ret z                                         ; $4802: $c8

    ldh [$98], a                                  ; $4803: $e0 $98
    sbc b                                         ; $4805: $98
    sub a                                         ; $4806: $97
    sub a                                         ; $4807: $97
    ld b, $bd                                     ; $4808: $06 $bd
    pop hl                                        ; $480a: $e1
    sbc b                                         ; $480b: $98
    ld b, $39                                     ; $480c: $06 $39
    ret nz                                        ; $480e: $c0

    cp e                                          ; $480f: $bb
    ret z                                         ; $4810: $c8

    db $f4                                        ; $4811: $f4
    ld h, d                                       ; $4812: $62
    jp nz, $1462                                  ; $4813: $c2 $62 $14

    add a                                         ; $4816: $87
    rst $18                                       ; $4817: $df
    sbc [hl]                                      ; $4818: $9e
    sub b                                         ; $4819: $90
    ld a, c                                       ; $481a: $79
    ld a, [hl]                                    ; $481b: $7e
    add hl, sp                                    ; $481c: $39
    ret z                                         ; $481d: $c8

    pop bc                                        ; $481e: $c1
    ld l, h                                       ; $481f: $6c
    ld l, l                                       ; $4820: $6d
    rst $00                                       ; $4821: $c7
    add hl, sp                                    ; $4822: $39
    ld b, [hl]                                    ; $4823: $46
    ld b, $ca                                     ; $4824: $06 $ca
    ld [c], a                                     ; $4826: $e2
    jp nz, $fee0                                  ; $4827: $c2 $e0 $fe

    db $e3                                        ; $482a: $e3
    sbc b                                         ; $482b: $98
    ld c, $51                                     ; $482c: $0e $51
    dec b                                         ; $482e: $05
    or e                                          ; $482f: $b3
    add b                                         ; $4830: $80
    ld a, d                                       ; $4831: $7a
    and c                                         ; $4832: $a1
    call nc, $d563                                ; $4833: $d4 $63 $d5
    push bc                                       ; $4836: $c5
    ld h, b                                       ; $4837: $60
    jp nc, Jump_069_6296                          ; $4838: $d2 $96 $62

    db $ec                                        ; $483b: $ec
    inc b                                         ; $483c: $04
    db $e3                                        ; $483d: $e3
    ret nz                                        ; $483e: $c0

    db $e3                                        ; $483f: $e3
    add b                                         ; $4840: $80
    ld b, [hl]                                    ; $4841: $46
    ret nz                                        ; $4842: $c0

    ld [c], a                                     ; $4843: $e2
    ld [hl], e                                    ; $4844: $73
    ld l, [hl]                                    ; $4845: $6e
    ld b, b                                       ; $4846: $40
    inc de                                        ; $4847: $13
    ld [bc], a                                    ; $4848: $02
    rrca                                          ; $4849: $0f
    add h                                         ; $484a: $84
    ldh [$c3], a                                  ; $484b: $e0 $c3
    pop hl                                        ; $484d: $e1
    sub [hl]                                      ; $484e: $96
    rst $38                                       ; $484f: $ff
    ldh [$7d], a                                  ; $4850: $e0 $7d
    ld [c], a                                     ; $4852: $e2
    ld a, a                                       ; $4853: $7f
    ldh [$2c], a                                  ; $4854: $e0 $2c
    dec sp                                        ; $4856: $3b
    jp nz, $61e4                                  ; $4857: $c2 $e4 $61

    db $d3                                        ; $485a: $d3
    sub $06                                       ; $485b: $d6 $06
    add c                                         ; $485d: $81
    sub $56                                       ; $485e: $d6 $56
    ld h, d                                       ; $4860: $62
    inc d                                         ; $4861: $14
    add c                                         ; $4862: $81
    cp $84                                        ; $4863: $fe $84
    ld h, d                                       ; $4865: $62
    sbc a                                         ; $4866: $9f
    or [hl]                                       ; $4867: $b6
    sub c                                         ; $4868: $91
    add b                                         ; $4869: $80
    ld b, [hl]                                    ; $486a: $46
    ld b, h                                       ; $486b: $44
    inc a                                         ; $486c: $3c
    ld a, [hl-]                                   ; $486d: $3a
    ld b, c                                       ; $486e: $41
    ld [c], a                                     ; $486f: $e2
    dec b                                         ; $4870: $05
    call z, $99c0                                 ; $4871: $cc $c0 $99
    sbc b                                         ; $4874: $98
    sub a                                         ; $4875: $97
    add $e0                                       ; $4876: $c6 $e0
    cp l                                          ; $4878: $bd
    pop hl                                        ; $4879: $e1
    sbc [hl]                                      ; $487a: $9e
    ld a, $e0                                     ; $487b: $3e $e0
    sbc c                                         ; $487d: $99
    sbc c                                         ; $487e: $99
    ld b, $ae                                     ; $487f: $06 $ae
    ret nz                                        ; $4881: $c0

    db $e3                                        ; $4882: $e3
    call nc, $d860                                ; $4883: $d4 $60 $d8
    ret nz                                        ; $4886: $c0

    bit 4, b                                      ; $4887: $cb $60
    adc b                                         ; $4889: $88
    add c                                         ; $488a: $81
    ld de, $2781                                  ; $488b: $11 $81 $27
    add b                                         ; $488e: $80
    inc c                                         ; $488f: $0c
    ld h, h                                       ; $4890: $64
    ld b, c                                       ; $4891: $41
    ldh [$8d], a                                  ; $4892: $e0 $8d
    ld b, [hl]                                    ; $4894: $46
    adc l                                         ; $4895: $8d
    ld b, d                                       ; $4896: $42
    ld b, c                                       ; $4897: $41
    db $e3                                        ; $4898: $e3
    ld b, $99                                     ; $4899: $06 $99
    inc b                                         ; $489b: $04
    pop hl                                        ; $489c: $e1
    dec b                                         ; $489d: $05
    db $e3                                        ; $489e: $e3
    ld b, d                                       ; $489f: $42
    pop hl                                        ; $48a0: $e1
    sbc c                                         ; $48a1: $99
    rra                                           ; $48a2: $1f
    nop                                           ; $48a3: $00
    ld bc, $af0a                                  ; $48a4: $01 $0a $af
    jp $81fa                                      ; $48a7: $c3 $fa $81


    ret nc                                        ; $48aa: $d0

    pop hl                                        ; $48ab: $e1
    add $60                                       ; $48ac: $c6 $60
    ld e, $1a                                     ; $48ae: $1e $1a
    ld h, b                                       ; $48b0: $60
    reti                                          ; $48b1: $d9


    db $dd                                        ; $48b2: $dd
    db $d3                                        ; $48b3: $d3
    jp c, $8237                                   ; $48b4: $da $37 $82

    ld hl, sp-$5c                                 ; $48b7: $f8 $a4
    ld b, c                                       ; $48b9: $41
    pop hl                                        ; $48ba: $e1
    ld e, $80                                     ; $48bb: $1e $80
    pop hl                                        ; $48bd: $e1
    ld l, h                                       ; $48be: $6c
    ld l, a                                       ; $48bf: $6f
    ld l, [hl]                                    ; $48c0: $6e
    ld b, b                                       ; $48c1: $40
    ret nz                                        ; $48c2: $c0

    ldh [$c6], a                                  ; $48c3: $e0 $c6
    ret nz                                        ; $48c5: $c0

    add h                                         ; $48c6: $84
    ret nz                                        ; $48c7: $c0

    add sp, $7f                                   ; $48c8: $e8 $7f
    jp nz, $e380                                  ; $48ca: $c2 $80 $e3

    halt                                          ; $48cd: $76
    add b                                         ; $48ce: $80
    sbc [hl]                                      ; $48cf: $9e
    ret nc                                        ; $48d0: $d0

    db $e3                                        ; $48d1: $e3
    db $d3                                        ; $48d2: $d3
    ret nc                                        ; $48d3: $d0

    pop de                                        ; $48d4: $d1
    adc [hl]                                      ; $48d5: $8e
    rst $00                                       ; $48d6: $c7
    ld h, b                                       ; $48d7: $60
    ret nc                                        ; $48d8: $d0

    ret nc                                        ; $48d9: $d0

    rst $10                                       ; $48da: $d7
    add [hl]                                      ; $48db: $86
    add l                                         ; $48dc: $85
    inc c                                         ; $48dd: $0c
    ld h, c                                       ; $48de: $61
    ret nz                                        ; $48df: $c0

    db $e3                                        ; $48e0: $e3
    ld b, l                                       ; $48e1: $45
    ld a, l                                       ; $48e2: $7d
    ld a, [hl-]                                   ; $48e3: $3a
    ld [bc], a                                    ; $48e4: $02
    ldh [$3c], a                                  ; $48e5: $e0 $3c
    ld b, h                                       ; $48e7: $44
    ld b, $01                                     ; $48e8: $06 $01
    nop                                           ; $48ea: $00
    ld b, c                                       ; $48eb: $41
    ldh [$eb], a                                  ; $48ec: $e0 $eb
    sbc b                                         ; $48ee: $98
    rrca                                          ; $48ef: $0f
    rst $38                                       ; $48f0: $ff
    and c                                         ; $48f1: $a1
    rrca                                          ; $48f2: $0f
    ld a, l                                       ; $48f3: $7d
    jp Jump_000_050e                              ; $48f4: $c3 $0e $05


    sub c                                         ; $48f7: $91
    adc b                                         ; $48f8: $88
    cp d                                          ; $48f9: $ba
    add l                                         ; $48fa: $85
    ld [$c661], sp                                ; $48fb: $08 $61 $c6
    ld b, b                                       ; $48fe: $40
    call nc, Call_069_6692                        ; $48ff: $d4 $92 $66

Call_069_4902:
    ld hl, sp-$5e                                 ; $4902: $f8 $a2
    ret nz                                        ; $4904: $c0

    push hl                                       ; $4905: $e5
    ld l, d                                       ; $4906: $6a
    ld sp, hl                                     ; $4907: $f9
    dec [hl]                                      ; $4908: $35
    ld bc, $80e0                                  ; $4909: $01 $e0 $80
    db $e3                                        ; $490c: $e3
    rrca                                          ; $490d: $0f
    inc c                                         ; $490e: $0c
    ld b, a                                       ; $490f: $47
    ld d, h                                       ; $4910: $54
    ld b, d                                       ; $4911: $42
    inc e                                         ; $4912: $1c
    halt                                          ; $4913: $76
    jp nz, $c03b                                  ; $4914: $c2 $3b $c0

    ld b, $46                                     ; $4917: $06 $46
    sub c                                         ; $4919: $91
    ld a, d                                       ; $491a: $7a
    add h                                         ; $491b: $84
    ld d, l                                       ; $491c: $55
    ld h, c                                       ; $491d: $61
    ret z                                         ; $491e: $c8

    ld h, b                                       ; $491f: $60
    push hl                                       ; $4920: $e5
    reti                                          ; $4921: $d9


    db $fd                                        ; $4922: $fd
    xor e                                         ; $4923: $ab
    sbc [hl]                                      ; $4924: $9e
    pop bc                                        ; $4925: $c1
    ret nz                                        ; $4926: $c0

    add b                                         ; $4927: $80
    ret nz                                        ; $4928: $c0

    ld l, h                                       ; $4929: $6c
    ld l, l                                       ; $492a: $6d
    dec [hl]                                      ; $492b: $35
    di                                            ; $492c: $f3
    ld a, $0a                                     ; $492d: $3e $0a
    rlca                                          ; $492f: $07
    jp nz, $c00b                                  ; $4930: $c2 $0b $c0

    ld c, d                                       ; $4933: $4a
    ld h, b                                       ; $4934: $60
    add hl, sp                                    ; $4935: $39
    ld [hl], $3b                                  ; $4936: $36 $3b
    dec b                                         ; $4938: $05
    ld c, $33                                     ; $4939: $0e $33
    db $e3                                        ; $493b: $e3
    ld c, $02                                     ; $493c: $0e $02
    ld b, [hl]                                    ; $493e: $46
    cp d                                          ; $493f: $ba
    add h                                         ; $4940: $84
    ld d, l                                       ; $4941: $55
    ld h, c                                       ; $4942: $61
    ld a, [c]                                     ; $4943: $f2
    ret z                                         ; $4944: $c8

    ld h, b                                       ; $4945: $60
    db $db                                        ; $4946: $db
    db $ec                                        ; $4947: $ec
    inc hl                                        ; $4948: $23
    cp l                                          ; $4949: $bd
    dec h                                         ; $494a: $25
    and c                                         ; $494b: $a1
    ld b, [hl]                                    ; $494c: $46
    add d                                         ; $494d: $82
    add e                                         ; $494e: $83
    sbc e                                         ; $494f: $9b
    ld b, l                                       ; $4950: $45
    ld a, [hl-]                                   ; $4951: $3a
    ld [bc], a                                    ; $4952: $02
    ldh [$35], a                                  ; $4953: $e0 $35
    add hl, sp                                    ; $4955: $39
    ret nz                                        ; $4956: $c0

    ldh [$ca], a                                  ; $4957: $e0 $ca
    jp nz, Jump_000_3f06                          ; $4959: $c2 $06 $3f

    ld c, d                                       ; $495c: $4a
    ld d, d                                       ; $495d: $52
    ld a, $35                                     ; $495e: $3e $35
    add hl, sp                                    ; $4960: $39
    ld [$c274], sp                                ; $4961: $08 $74 $c2
    ld a, $e0                                     ; $4964: $3e $e0
    add c                                         ; $4966: $81
    inc c                                         ; $4967: $0c
    cp c                                          ; $4968: $b9
    ld h, b                                       ; $4969: $60
    push hl                                       ; $496a: $e5
    inc hl                                        ; $496b: $23
    ret z                                         ; $496c: $c8

    ld h, l                                       ; $496d: $65
    db $ec                                        ; $496e: $ec
    jr nz, jr_069_49bc                            ; $496f: $20 $4b

    ld b, b                                       ; $4971: $40
    cp $63                                        ; $4972: $fe $63
    sbc [hl]                                      ; $4974: $9e
    rst $38                                       ; $4975: $ff
    sub c                                         ; $4976: $91
    add l                                         ; $4977: $85
    add a                                         ; $4978: $87
    adc b                                         ; $4979: $88
    ld [hl], c                                    ; $497a: $71
    ld [hl], b                                    ; $497b: $70
    ld l, [hl]                                    ; $497c: $6e
    dec [hl]                                      ; $497d: $35
    db $e3                                        ; $497e: $e3
    inc a                                         ; $497f: $3c
    ld b, h                                       ; $4980: $44
    add e                                         ; $4981: $83
    and c                                         ; $4982: $a1
    ld c, e                                       ; $4983: $4b
    pop bc                                        ; $4984: $c1
    nop                                           ; $4985: $00
    ldh [$3e], a                                  ; $4986: $e0 $3e
    dec [hl]                                      ; $4988: $35
    ld a, [hl-]                                   ; $4989: $3a
    inc bc                                        ; $498a: $03
    ld [bc], a                                    ; $498b: $02
    rlca                                          ; $498c: $07
    pop af                                        ; $498d: $f1
    db $e4                                        ; $498e: $e4
    ret nz                                        ; $498f: $c0

    pop hl                                        ; $4990: $e1
    push hl                                       ; $4991: $e5
    ld hl, $64ce                                  ; $4992: $21 $ce $64
    ld l, a                                       ; $4995: $6f
    jr nz, jr_069_49a3                            ; $4996: $20 $0b

    ld b, d                                       ; $4998: $42
    jp hl                                         ; $4999: $e9


    rst $10                                       ; $499a: $d7
    cp $63                                        ; $499b: $fe $63
    ld de, $9140                                  ; $499d: $11 $40 $91
    ld bc, $35c2                                  ; $49a0: $01 $c2 $35

jr_069_49a3:
    add hl, sp                                    ; $49a3: $39
    xor [hl]                                      ; $49a4: $ae
    add hl, de                                    ; $49a5: $19
    ld [bc], a                                    ; $49a6: $02
    set 0, b                                      ; $49a7: $cb $c0
    ld c, e                                       ; $49a9: $4b
    pop bc                                        ; $49aa: $c1
    rrca                                          ; $49ab: $0f
    ld [bc], a                                    ; $49ac: $02
    ld l, a                                       ; $49ad: $6f
    and b                                         ; $49ae: $a0
    or [hl]                                       ; $49af: $b6
    add b                                         ; $49b0: $80
    ld sp, hl                                     ; $49b1: $f9
    add c                                         ; $49b2: $81
    ld b, c                                       ; $49b3: $41
    sbc c                                         ; $49b4: $99
    add b                                         ; $49b5: $80
    ld [c], a                                     ; $49b6: $e2
    push hl                                       ; $49b7: $e5
    ld hl, $61ce                                  ; $49b8: $21 $ce $61
    ld d, c                                       ; $49bb: $51

jr_069_49bc:
    ld [hl+], a                                   ; $49bc: $22
    ld sp, hl                                     ; $49bd: $f9
    and e                                         ; $49be: $a3
    jp c, Jump_069_64fe                           ; $49bf: $da $fe $64

    rst $30                                       ; $49c2: $f7
    sbc [hl]                                      ; $49c3: $9e
    sub b                                         ; $49c4: $90
    sub b                                         ; $49c5: $90
    ld bc, $acc1                                  ; $49c6: $01 $c1 $ac
    dec [hl]                                      ; $49c9: $35
    ld a, [hl-]                                   ; $49ca: $3a
    xor a                                         ; $49cb: $af
    cp [hl]                                       ; $49cc: $be
    ld b, c                                       ; $49cd: $41
    and e                                         ; $49ce: $a3
    sbc c                                         ; $49cf: $99
    sbc c                                         ; $49d0: $99
    ld [$4b4a], sp                                ; $49d1: $08 $4a $4b
    or a                                          ; $49d4: $b7
    ld h, b                                       ; $49d5: $60
    dec [hl]                                      ; $49d6: $35
    inc bc                                        ; $49d7: $03
    add hl, sp                                    ; $49d8: $39
    ld [bc], a                                    ; $49d9: $02
    ldh a, [$a0]                                  ; $49da: $f0 $a0
    ld a, $c0                                     ; $49dc: $3e $c0
    cp d                                          ; $49de: $ba
    ld h, h                                       ; $49df: $64
    adc $61                                       ; $49e0: $ce $61
    reti                                          ; $49e2: $d9


    ld [bc], a                                    ; $49e3: $02
    sla b                                         ; $49e4: $cb $20
    cp h                                          ; $49e6: $bc
    add c                                         ; $49e7: $81
    ld b, b                                       ; $49e8: $40
    ret nz                                        ; $49e9: $c0

    ld b, l                                       ; $49ea: $45
    sbc [hl]                                      ; $49eb: $9e
    sub b                                         ; $49ec: $90
    jp $c845                                      ; $49ed: $c3 $45 $c8


    ld h, b                                       ; $49f0: $60
    xor l                                         ; $49f1: $ad
    ld hl, sp+$7f                                 ; $49f2: $f8 $7f
    pop hl                                        ; $49f4: $e1
    pop bc                                        ; $49f5: $c1
    add c                                         ; $49f6: $81
    add l                                         ; $49f7: $85
    add b                                         ; $49f8: $80
    ld [$574a], sp                                ; $49f9: $08 $4a $57
    ld c, h                                       ; $49fc: $4c
    ld c, c                                       ; $49fd: $49
    ld l, a                                       ; $49fe: $6f
    ld c, b                                       ; $49ff: $48
    ld [hl], $39                                  ; $4a00: $36 $39
    dec b                                         ; $4a02: $05
    ld [hl], h                                    ; $4a03: $74
    pop hl                                        ; $4a04: $e1
    dec b                                         ; $4a05: $05
    sub c                                         ; $4a06: $91
    ld a, d                                       ; $4a07: $7a
    ld b, b                                       ; $4a08: $40
    add b                                         ; $4a09: $80
    reti                                          ; $4a0a: $d9


    add hl, bc                                    ; $4a0b: $09
    rst $30                                       ; $4a0c: $f7
    ld h, c                                       ; $4a0d: $61
    add c                                         ; $4a0e: $81
    ld b, e                                       ; $4a0f: $43
    ei                                            ; $4a10: $fb
    ld h, c                                       ; $4a11: $61
    inc bc                                        ; $4a12: $03
    ld h, c                                       ; $4a13: $61
    ld bc, $3f80                                  ; $4a14: $01 $80 $3f
    ld [c], a                                     ; $4a17: $e2
    xor a                                         ; $4a18: $af
    db $fc                                        ; $4a19: $fc
    nop                                           ; $4a1a: $00
    and e                                         ; $4a1b: $a3
    rst $38                                       ; $4a1c: $ff
    and c                                         ; $4a1d: $a1
    ld d, l                                       ; $4a1e: $55
    ld d, a                                       ; $4a1f: $57
    ld d, d                                       ; $4a20: $52
    ld b, e                                       ; $4a21: $43
    ld b, l                                       ; $4a22: $45
    ld b, $88                                     ; $4a23: $06 $88
    push af                                       ; $4a25: $f5
    and c                                         ; $4a26: $a1
    add b                                         ; $4a27: $80
    and d                                         ; $4a28: $a2
    ld h, c                                       ; $4a29: $61
    inc bc                                        ; $4a2a: $03
    ld [$a3cd], a                                 ; $4a2b: $ea $cd $a3
    add hl, sp                                    ; $4a2e: $39
    adc e                                         ; $4a2f: $8b
    adc h                                         ; $4a30: $8c
    ld hl, $1e91                                  ; $4a31: $21 $91 $1e
    cp a                                          ; $4a34: $bf
    and b                                         ; $4a35: $a0
    dec [hl]                                      ; $4a36: $35
    ld a, [hl-]                                   ; $4a37: $3a
    xor [hl]                                      ; $4a38: $ae
    inc c                                         ; $4a39: $0c
    inc b                                         ; $4a3a: $04
    add b                                         ; $4a3b: $80
    ld b, e                                       ; $4a3c: $43
    add c                                         ; $4a3d: $81
    ld a, a                                       ; $4a3e: $7f
    and b                                         ; $4a3f: $a0
    rst $38                                       ; $4a40: $ff
    ld [bc], a                                    ; $4a41: $02
    inc bc                                        ; $4a42: $03
    inc bc                                        ; $4a43: $03
    ld b, [hl]                                    ; $4a44: $46
    inc c                                         ; $4a45: $0c
    ld c, $0e                                     ; $4a46: $0e $0e
    ld [bc], a                                    ; $4a48: $02
    rlca                                          ; $4a49: $07
    xor [hl]                                      ; $4a4a: $ae
    sub c                                         ; $4a4b: $91
    call nz, Call_000_21ba                        ; $4a4c: $c4 $ba $21
    ld c, l                                       ; $4a4f: $4d
    ld h, l                                       ; $4a50: $65
    reti                                          ; $4a51: $d9


    ld bc, $0d30                                  ; $4a52: $01 $30 $0d
    cp a                                          ; $4a55: $bf
    ld [c], a                                     ; $4a56: $e2
    sbc [hl]                                      ; $4a57: $9e
    ld a, $80                                     ; $4a58: $3e $80
    ld a, $af                                     ; $4a5a: $3e $af
    ld b, [hl]                                    ; $4a5c: $46
    ld [bc], a                                    ; $4a5d: $02
    cp a                                          ; $4a5e: $bf
    add e                                         ; $4a5f: $83
    inc b                                         ; $4a60: $04
    add b                                         ; $4a61: $80
    rrca                                          ; $4a62: $0f
    ld a, a                                       ; $4a63: $7f
    rrca                                          ; $4a64: $0f
    rrca                                          ; $4a65: $0f
    inc b                                         ; $4a66: $04
    inc b                                         ; $4a67: $04
    sbc c                                         ; $4a68: $99
    ld c, $05                                     ; $4a69: $0e $05
    ld bc, $a0a3                                  ; $4a6b: $01 $a3 $a0
    adc b                                         ; $4a6e: $88
    db $e4                                        ; $4a6f: $e4
    call nz, Call_000_3063                        ; $4a70: $c4 $63 $30
    ld b, $00                                     ; $4a73: $06 $00
    ld b, l                                       ; $4a75: $45
    cp $c0                                        ; $4a76: $fe $c0
    sub b                                         ; $4a78: $90
    ld a, $a0                                     ; $4a79: $3e $a0
    ld a, [hl-]                                   ; $4a7b: $3a
    rst $20                                       ; $4a7c: $e7
    ld b, l                                       ; $4a7d: $45
    xor [hl]                                      ; $4a7e: $ae
    ld b, [hl]                                    ; $4a7f: $46

Jump_069_4a80:
    cp $83                                        ; $4a80: $fe $83
    jp $9964                                      ; $4a82: $c3 $64 $99


    ld bc, $3200                                  ; $4a85: $01 $00 $32
    ld bc, $eaa3                                  ; $4a88: $01 $a3 $ea
    ld c, l                                       ; $4a8b: $4d
    ld h, e                                       ; $4a8c: $63
    call z, $d862                                 ; $4a8d: $cc $62 $d8
    push de                                       ; $4a90: $d5
    jr nc, jr_069_4a99                            ; $4a91: $30 $06

    nop                                           ; $4a93: $00
    ld b, l                                       ; $4a94: $45
    add hl, de                                    ; $4a95: $19
    and c                                         ; $4a96: $a1
    adc a                                         ; $4a97: $8f
    nop                                           ; $4a98: $00

jr_069_4a99:
    db $fd                                        ; $4a99: $fd
    ld h, c                                       ; $4a9a: $61
    add hl, sp                                    ; $4a9b: $39
    xor a                                         ; $4a9c: $af
    cp a                                          ; $4a9d: $bf
    jp nz, $8145                                  ; $4a9e: $c2 $45 $81

    jp $8062                                      ; $4aa1: $c3 $62 $80


    ld a, $60                                     ; $4aa4: $3e $60
    cp $40                                        ; $4aa6: $fe $40
    ei                                            ; $4aa8: $fb
    daa                                           ; $4aa9: $27
    ret nc                                        ; $4aaa: $d0

    ld b, d                                       ; $4aab: $42
    jr nc, jr_069_4ab6                            ; $4aac: $30 $08

    nop                                           ; $4aae: $00
    ld b, h                                       ; $4aaf: $44
    rst $38                                       ; $4ab0: $ff
    jp nz, Jump_000_3f79                          ; $4ab1: $c2 $79 $3f

    ld a, d                                       ; $4ab4: $7a
    ld h, l                                       ; $4ab5: $65

jr_069_4ab6:
    ld h, [hl]                                    ; $4ab6: $66
    ld a, [hl-]                                   ; $4ab7: $3a
    ld b, l                                       ; $4ab8: $45
    xor a                                         ; $4ab9: $af
    db $fd                                        ; $4aba: $fd
    and d                                         ; $4abb: $a2
    jp nz, Jump_000_0461                          ; $4abc: $c2 $61 $04

    ei                                            ; $4abf: $fb

Jump_069_4ac0:
    ld h, c                                       ; $4ac0: $61
    rst $30                                       ; $4ac1: $f7
    jp nz, $c005                                  ; $4ac2: $c2 $05 $c0

    ld h, e                                       ; $4ac5: $63
    ret nc                                        ; $4ac6: $d0

    ld b, [hl]                                    ; $4ac7: $46
    ld a, [hl-]                                   ; $4ac8: $3a
    add b                                         ; $4ac9: $80
    jr nc, @+$0c                                  ; $4aca: $30 $0a

    rst $38                                       ; $4acc: $ff
    and d                                         ; $4acd: $a2
    ld a, [hl]                                    ; $4ace: $7e
    dec a                                         ; $4acf: $3d
    ld h, b                                       ; $4ad0: $60
    ld b, h                                       ; $4ad1: $44
    inc a                                         ; $4ad2: $3c
    ld l, b                                       ; $4ad3: $68
    ld h, [hl]                                    ; $4ad4: $66
    jr c, jr_069_4b0e                             ; $4ad5: $38 $37

    db $fd                                        ; $4ad7: $fd
    and d                                         ; $4ad8: $a2
    inc c                                         ; $4ad9: $0c
    ld a, a                                       ; $4ada: $7f
    ld h, h                                       ; $4adb: $64
    ccf                                           ; $4adc: $3f
    ld h, d                                       ; $4add: $62
    sbc c                                         ; $4ade: $99
    dec b                                         ; $4adf: $05
    rst $38                                       ; $4ae0: $ff
    jp $46c9                                      ; $4ae1: $c3 $c9 $46


    cp d                                          ; $4ae4: $ba
    jr nz, jr_069_4b17                            ; $4ae5: $20 $30

    ld a, [bc]                                    ; $4ae7: $0a
    ld [bc], a                                    ; $4ae8: $02
    ret nz                                        ; $4ae9: $c0

    db $e3                                        ; $4aea: $e3
    add b                                         ; $4aeb: $80
    cp l                                          ; $4aec: $bd
    ld h, c                                       ; $4aed: $61
    ld a, a                                       ; $4aee: $7f
    ld b, b                                       ; $4aef: $40
    db $fd                                        ; $4af0: $fd
    and l                                         ; $4af1: $a5
    cp a                                          ; $4af2: $bf
    db $e4                                        ; $4af3: $e4
    ld b, d                                       ; $4af4: $42
    and c                                         ; $4af5: $a1
    nop                                           ; $4af6: $00
    add c                                         ; $4af7: $81
    ld [$41d2], sp                                ; $4af8: $08 $d2 $41
    adc l                                         ; $4afb: $8d
    ld h, d                                       ; $4afc: $62
    or [hl]                                       ; $4afd: $b6
    ret nz                                        ; $4afe: $c0

    db $d3                                        ; $4aff: $d3
    jr nc, jr_069_4b0d                            ; $4b00: $30 $0b

    ccf                                           ; $4b02: $3f
    and b                                         ; $4b03: $a0
    add $00                                       ; $4b04: $c6 $00
    db $fd                                        ; $4b06: $fd
    ld b, e                                       ; $4b07: $43
    rra                                           ; $4b08: $1f
    ld l, b                                       ; $4b09: $68
    ld h, [hl]                                    ; $4b0a: $66

Call_069_4b0b:
    ld a, [hl-]                                   ; $4b0b: $3a
    xor a                                         ; $4b0c: $af

jr_069_4b0d:
    inc c                                         ; $4b0d: $0c

jr_069_4b0e:
    dec sp                                        ; $4b0e: $3b
    add b                                         ; $4b0f: $80
    ei                                            ; $4b10: $fb
    ld b, d                                       ; $4b11: $42
    pop bc                                        ; $4b12: $c1
    db $e3                                        ; $4b13: $e3
    inc bc                                        ; $4b14: $03
    rrca                                          ; $4b15: $0f
    inc c                                         ; $4b16: $0c

jr_069_4b17:
    ld a, d                                       ; $4b17: $7a
    ld bc, $20d6                                  ; $4b18: $01 $d6 $20
    adc l                                         ; $4b1b: $8d
    ld h, e                                       ; $4b1c: $63
    ld a, $c0                                     ; $4b1d: $3e $c0
    ld a, $80                                     ; $4b1f: $3e $80
    jr nc, jr_069_4b2d                            ; $4b21: $30 $0a

    ld [hl-], a                                   ; $4b23: $32
    jp $8002                                      ; $4b24: $c3 $02 $80


    rst $38                                       ; $4b27: $ff
    and c                                         ; $4b28: $a1
    ld a, [hl]                                    ; $4b29: $7e
    pop hl                                        ; $4b2a: $e1
    ld [hl], $45                                  ; $4b2b: $36 $45

jr_069_4b2d:
    inc a                                         ; $4b2d: $3c
    call nz, Call_069_40c0                        ; $4b2e: $c4 $c0 $40
    rra                                           ; $4b31: $1f
    sbc b                                         ; $4b32: $98
    sbc b                                         ; $4b33: $98
    nop                                           ; $4b34: $00
    ld bc, $c008                                  ; $4b35: $01 $08 $c0
    ld b, d                                       ; $4b38: $42
    sub $23                                       ; $4b39: $d6 $23
    adc d                                         ; $4b3b: $8a
    ld h, h                                       ; $4b3c: $64
    inc a                                         ; $4b3d: $3c
    jr nc, jr_069_4b4c                            ; $4b3e: $30 $0c

    nop                                           ; $4b40: $00
    and b                                         ; $4b41: $a0
    jp $8090                                      ; $4b42: $c3 $90 $80


    ld b, b                                       ; $4b45: $40
    ld b, $21                                     ; $4b46: $06 $21
    db $fd                                        ; $4b48: $fd
    jr nz, jr_069_4b53                            ; $4b49: $20 $08

    ld b, c                                       ; $4b4b: $41

jr_069_4b4c:
    jr nz, jr_069_4bc9                            ; $4b4c: $20 $7b

    ld b, [hl]                                    ; $4b4e: $46
    ld b, e                                       ; $4b4f: $43
    add c                                         ; $4b50: $81
    ld [bc], a                                    ; $4b51: $02
    ld a, e                                       ; $4b52: $7b

jr_069_4b53:
    ld a, [bc]                                    ; $4b53: $0a
    ld sp, hl                                     ; $4b54: $f9
    ld h, d                                       ; $4b55: $62
    jr nc, jr_069_4b64                            ; $4b56: $30 $0c

    ret nz                                        ; $4b58: $c0

    add b                                         ; $4b59: $80
    ld l, a                                       ; $4b5a: $6f
    call nz, $8290                                ; $4b5b: $c4 $90 $82
    add e                                         ; $4b5e: $83
    ld a, l                                       ; $4b5f: $7d
    add d                                         ; $4b60: $82
    dec [hl]                                      ; $4b61: $35
    ld [hl], l                                    ; $4b62: $75
    db $fd                                        ; $4b63: $fd

jr_069_4b64:
    ret nz                                        ; $4b64: $c0

    ret nz                                        ; $4b65: $c0

    ei                                            ; $4b66: $fb
    and l                                         ; $4b67: $a5
    ret nz                                        ; $4b68: $c0

    inc hl                                        ; $4b69: $23
    pop bc                                        ; $4b6a: $c1

Call_069_4b6b:
    ret z                                         ; $4b6b: $c8

    bit 4, a                                      ; $4b6c: $cb $67
    jr nc, jr_069_4b79                            ; $4b6e: $30 $09

    ld b, d                                       ; $4b70: $42
    ld [bc], a                                    ; $4b71: $02
    add l                                         ; $4b72: $85
    add a                                         ; $4b73: $87
    ld h, a                                       ; $4b74: $67
    ld [hl], c                                    ; $4b75: $71
    ld [hl], d                                    ; $4b76: $72
    ld l, h                                       ; $4b77: $6c
    ld a, a                                       ; $4b78: $7f

jr_069_4b79:
    db $e3                                        ; $4b79: $e3

jr_069_4b7a:
    ld a, e                                       ; $4b7a: $7b
    ld hl, $0001                                  ; $4b7b: $21 $01 $00
    dec sp                                        ; $4b7e: $3b
    and d                                         ; $4b7f: $a2
    rrca                                          ; $4b80: $0f
    rrca                                          ; $4b81: $0f
    rrca                                          ; $4b82: $0f
    dec b                                         ; $4b83: $05
    jp Jump_000_23c1                              ; $4b84: $c3 $c1 $23


    ret nc                                        ; $4b87: $d0

    add sp, -$4d                                  ; $4b88: $e8 $b3
    add h                                         ; $4b8a: $84
    jr nc, jr_069_4b94                            ; $4b8b: $30 $07

    adc $ff                                       ; $4b8d: $ce $ff
    add e                                         ; $4b8f: $83
    ld [hl], $6e                                  ; $4b90: $36 $6e
    ld l, a                                       ; $4b92: $6f
    cp a                                          ; $4b93: $bf

jr_069_4b94:
    ldh [$39], a                                  ; $4b94: $e0 $39
    ld h, b                                       ; $4b96: $60
    inc a                                         ; $4b97: $3c
    ld b, h                                       ; $4b98: $44
    dec l                                         ; $4b99: $2d
    ld b, [hl]                                    ; $4b9a: $46
    ei                                            ; $4b9b: $fb
    nop                                           ; $4b9c: $00
    sbc c                                         ; $4b9d: $99
    ld c, $b9                                     ; $4b9e: $0e $b9
    ld bc, $0203                                  ; $4ba0: $01 $03 $02
    and b                                         ; $4ba3: $a0
    ccf                                           ; $4ba4: $3f
    ld bc, $0ba0                                  ; $4ba5: $01 $a0 $0b
    jr nz, jr_069_4b7a                            ; $4ba8: $20 $d0

    rst $20                                       ; $4baa: $e7
    ld [$3043], sp                                ; $4bab: $08 $43 $30
    ld [$60bd], sp                                ; $4bae: $08 $bd $60
    jp $e1bf                                      ; $4bb1: $c3 $bf $e1


    ld [hl], b                                    ; $4bb4: $70
    ld sp, hl                                     ; $4bb5: $f9

Jump_069_4bb6:
    ld [hl], c                                    ; $4bb6: $71
    ld a, b                                       ; $4bb7: $78
    ld h, c                                       ; $4bb8: $61
    ccf                                           ; $4bb9: $3f
    nop                                           ; $4bba: $00
    sub b                                         ; $4bbb: $90
    sub c                                         ; $4bbc: $91
    inc bc                                        ; $4bbd: $03
    inc b                                         ; $4bbe: $04
    ld [bc], a                                    ; $4bbf: $02
    add c                                         ; $4bc0: $81
    ld b, [hl]                                    ; $4bc1: $46
    add h                                         ; $4bc2: $84
    ld bc, $a7c3                                  ; $4bc3: $01 $c3 $a7
    ret nc                                        ; $4bc6: $d0

    add sp, -$4d                                  ; $4bc7: $e8 $b3

jr_069_4bc9:
    add h                                         ; $4bc9: $84
    jr nc, @+$08                                  ; $4bca: $30 $06

    ld a, h                                       ; $4bcc: $7c
    ld h, b                                       ; $4bcd: $60
    call nz, Call_000_3db0                        ; $4bce: $c4 $b0 $3d
    ld bc, $c3bd                                  ; $4bd1: $01 $bd $c3
    ld [hl], a                                    ; $4bd4: $77
    ld h, b                                       ; $4bd5: $60
    rlc b                                         ; $4bd6: $cb $00
    sub c                                         ; $4bd8: $91
    sub c                                         ; $4bd9: $91
    jp hl                                         ; $4bda: $e9


    ret nz                                        ; $4bdb: $c0

    sbc h                                         ; $4bdc: $9c
    ld bc, $839d                                  ; $4bdd: $01 $9d $83
    ld [c], a                                     ; $4be0: $e2
    inc bc                                        ; $4be1: $03
    add h                                         ; $4be2: $84
    ret nc                                        ; $4be3: $d0

    and $3b                                       ; $4be4: $e6 $3b
    add c                                         ; $4be6: $81
    jr nc, jr_069_4bf2                            ; $4be7: $30 $09

    cp $81                                        ; $4be9: $fe $81
    ld a, [hl]                                    ; $4beb: $7e
    pop hl                                        ; $4bec: $e1

jr_069_4bed:
    inc e                                         ; $4bed: $1c
    adc h                                         ; $4bee: $8c
    ld h, c                                       ; $4bef: $61
    cp d                                          ; $4bf0: $ba
    pop bc                                        ; $4bf1: $c1

jr_069_4bf2:
    ld a, [hl-]                                   ; $4bf2: $3a
    ld b, l                                       ; $4bf3: $45
    sub c                                         ; $4bf4: $91
    ld c, c                                       ; $4bf5: $49
    nop                                           ; $4bf6: $00
    ld [$86c0], a                                 ; $4bf7: $ea $c0 $86
    add c                                         ; $4bfa: $81
    add b                                         ; $4bfb: $80
    sub a                                         ; $4bfc: $97
    nop                                           ; $4bfd: $00
    ld e, b                                       ; $4bfe: $58
    ld hl, $e9d0                                  ; $4bff: $21 $d0 $e9
    ld a, [hl-]                                   ; $4c02: $3a
    rlca                                          ; $4c03: $07
    jr nc, jr_069_4c0b                            ; $4c04: $30 $05

    ld a, h                                       ; $4c06: $7c
    ld h, b                                       ; $4c07: $60
    adc $e0                                       ; $4c08: $ce $e0
    sub c                                         ; $4c0a: $91

jr_069_4c0b:
    rst $28                                       ; $4c0b: $ef
    ld b, l                                       ; $4c0c: $45
    ld b, e                                       ; $4c0d: $43
    scf                                           ; $4c0e: $37
    jr c, jr_069_4c8a                             ; $4c0f: $38 $79

    pop bc                                        ; $4c11: $c1
    jr c, jr_069_4c4b                             ; $4c12: $38 $37

    ld b, l                                       ; $4c14: $45
    nop                                           ; $4c15: $00
    add c                                         ; $4c16: $81
    ldh [rDMA], a                                 ; $4c17: $e0 $46
    jp Jump_000_0097                              ; $4c19: $c3 $97 $00


    inc bc                                        ; $4c1c: $03
    add l                                         ; $4c1d: $85
    rst $00                                       ; $4c1e: $c7
    ld l, h                                       ; $4c1f: $6c
    jr nc, jr_069_4c27                            ; $4c20: $30 $05

    ccf                                           ; $4c22: $3f
    db $e4                                        ; $4c23: $e4
    adc [hl]                                      ; $4c24: $8e
    pop hl                                        ; $4c25: $e1
    nop                                           ; $4c26: $00

jr_069_4c27:
    ld sp, hl                                     ; $4c27: $f9
    pop bc                                        ; $4c28: $c1
    jr c, jr_069_4bed                             ; $4c29: $38 $c2

    cp [hl]                                       ; $4c2b: $be
    db $e3                                        ; $4c2c: $e3
    add [hl]                                      ; $4c2d: $86
    ld bc, $40c6                                  ; $4c2e: $01 $c6 $40
    inc bc                                        ; $4c31: $03
    adc b                                         ; $4c32: $88
    call nz, $c261                                ; $4c33: $c4 $61 $c2
    ld h, d                                       ; $4c36: $62
    jr nc, jr_069_4c69                            ; $4c37: $30 $30

    ld [$037a], sp                                ; $4c39: $08 $7a $03
    ld c, a                                       ; $4c3c: $4f
    ld [c], a                                     ; $4c3d: $e2
    ld sp, hl                                     ; $4c3e: $f9
    ret z                                         ; $4c3f: $c8

jr_069_4c40:
    add hl, sp                                    ; $4c40: $39
    ld b, [hl]                                    ; $4c41: $46
    jp nz, $51c6                                  ; $4c42: $c2 $c6 $51

    ld h, c                                       ; $4c45: $61
    jr @-$2e                                      ; $4c46: $18 $d0

    add sp, -$7a                                  ; $4c48: $e8 $86
    add d                                         ; $4c4a: $82

jr_069_4c4b:
    jr nc, jr_069_4c5a                            ; $4c4b: $30 $0d

    sbc a                                         ; $4c4d: $9f
    sbc l                                         ; $4c4e: $9d
    rst $38                                       ; $4c4f: $ff
    ldh [$37], a                                  ; $4c50: $e0 $37
    add b                                         ; $4c52: $80
    ld [hl], a                                    ; $4c53: $77
    ret nz                                        ; $4c54: $c0

    ld de, $3b3f                                  ; $4c55: $11 $3f $3b
    ld [c], a                                     ; $4c58: $e2
    ei                                            ; $4c59: $fb

jr_069_4c5a:
    ret nz                                        ; $4c5a: $c0

    add c                                         ; $4c5b: $81
    pop bc                                        ; $4c5c: $c1
    and d                                         ; $4c5d: $a2
    ld b, e                                       ; $4c5e: $43
    add h                                         ; $4c5f: $84
    ret nc                                        ; $4c60: $d0

    db $ed                                        ; $4c61: $ed
    jr nc, jr_069_4c6c                            ; $4c62: $30 $08

    nop                                           ; $4c64: $00
    ld [hl], $82                                  ; $4c65: $36 $82
    push af                                       ; $4c67: $f5
    ld b, l                                       ; $4c68: $45

jr_069_4c69:
    rst $00                                       ; $4c69: $c7
    pop bc                                        ; $4c6a: $c1
    or [hl]                                       ; $4c6b: $b6

jr_069_4c6c:
    pop bc                                        ; $4c6c: $c1
    ld sp, hl                                     ; $4c6d: $f9
    and c                                         ; $4c6e: $a1
    db $fc                                        ; $4c6f: $fc
    jp nz, $2443                                  ; $4c70: $c2 $43 $24

    ret nc                                        ; $4c73: $d0

    add sp, -$80                                  ; $4c74: $e8 $80
    dec c                                         ; $4c76: $0d
    pop bc                                        ; $4c77: $c1
    jr nc, jr_069_4c83                            ; $4c78: $30 $09

    ldh a, [$e3]                                  ; $4c7a: $f0 $e3
    ld e, [hl]                                    ; $4c7c: $5e
    ld [hl+], a                                   ; $4c7d: $22
    ld a, b                                       ; $4c7e: $78
    ret nz                                        ; $4c7f: $c0

    ld a, [c]                                     ; $4c80: $f2
    add c                                         ; $4c81: $81
    inc sp                                        ; $4c82: $33

jr_069_4c83:
    jp nz, Jump_069_6242                          ; $4c83: $c2 $42 $62

    ld l, c                                       ; $4c86: $69
    nop                                           ; $4c87: $00
    ld b, c                                       ; $4c88: $41
    cp b                                          ; $4c89: $b8

jr_069_4c8a:
    ret nz                                        ; $4c8a: $c0

    inc a                                         ; $4c8b: $3c
    ld [c], a                                     ; $4c8c: $e2
    ret nc                                        ; $4c8d: $d0

    jp hl                                         ; $4c8e: $e9


    db $d3                                        ; $4c8f: $d3
    jp c, $0b30                                   ; $4c90: $da $30 $0b

    ldh a, [$f0]                                  ; $4c93: $f0 $f0

jr_069_4c95:
    db $e3                                        ; $4c95: $e3
    ld h, e                                       ; $4c96: $63
    ld h, d                                       ; $4c97: $62
    or l                                          ; $4c98: $b5
    ld h, c                                       ; $4c99: $61
    ld a, l                                       ; $4c9a: $7d
    db $e4                                        ; $4c9b: $e4
    ccf                                           ; $4c9c: $3f

jr_069_4c9d:
    ld b, l                                       ; $4c9d: $45
    ld b, [hl]                                    ; $4c9e: $46
    ld b, l                                       ; $4c9f: $45
    daa                                           ; $4ca0: $27
    ld [hl], $a6                                  ; $4ca1: $36 $a6
    ld [hl], $bf                                  ; $4ca3: $36 $bf
    db $e3                                        ; $4ca5: $e3
    ret nc                                        ; $4ca6: $d0

    ld [$43d7], a                                 ; $4ca7: $ea $d7 $43
    ld b, h                                       ; $4caa: $44
    jr nc, @+$07                                  ; $4cab: $30 $05

    and h                                         ; $4cad: $a4
    ldh a, [$e3]                                  ; $4cae: $f0 $e3
    ld e, [hl]                                    ; $4cb0: $5e
    jr nz, jr_069_4c9d                            ; $4cb1: $20 $ea

    ld [hl], h                                    ; $4cb3: $74
    add e                                         ; $4cb4: $83
    dec b                                         ; $4cb5: $05
    jp nz, Jump_000_2b91                          ; $4cb6: $c2 $91 $2b

    nop                                           ; $4cb9: $00
    ld [hl], $03                                  ; $4cba: $36 $03
    ld h, d                                       ; $4cbc: $62
    and a                                         ; $4cbd: $a7
    jr nc, jr_069_4c40                            ; $4cbe: $30 $80

    rst $38                                       ; $4cc0: $ff
    ld b, [hl]                                    ; $4cc1: $46
    ret nc                                        ; $4cc2: $d0

    push hl                                       ; $4cc3: $e5

jr_069_4cc4:
    halt                                          ; $4cc4: $76
    ld b, l                                       ; $4cc5: $45
    jr nc, jr_069_4ccd                            ; $4cc6: $30 $05

    ld h, [hl]                                    ; $4cc8: $66
    ld b, a                                       ; $4cc9: $47
    jr jr_069_4cc4                                ; $4cca: $18 $f8

    and h                                         ; $4ccc: $a4

jr_069_4ccd:
    inc a                                         ; $4ccd: $3c
    ld [c], a                                     ; $4cce: $e2
    pop bc                                        ; $4ccf: $c1
    pop hl                                        ; $4cd0: $e1
    ld h, a                                       ; $4cd1: $67
    and e                                         ; $4cd2: $a3
    rst $28                                       ; $4cd3: $ef
    ld h, c                                       ; $4cd4: $61
    ld b, b                                       ; $4cd5: $40
    ld h, l                                       ; $4cd6: $65
    ret nc                                        ; $4cd7: $d0

    push hl                                       ; $4cd8: $e5
    ret nz                                        ; $4cd9: $c0

    jp Jump_000_30a7                              ; $4cda: $c3 $a7 $30


    inc bc                                        ; $4cdd: $03
    or h                                          ; $4cde: $b4
    jr z, jr_069_4c95                             ; $4cdf: $28 $b4

    ld h, d                                       ; $4ce1: $62
    add hl, bc                                    ; $4ce2: $09
    and c                                         ; $4ce3: $a1
    ld l, l                                       ; $4ce4: $6d
    ld hl, $6762                                  ; $4ce5: $21 $62 $67
    ld c, $b0                                     ; $4ce8: $0e $b0
    add b                                         ; $4cea: $80
    or a                                          ; $4ceb: $b7

jr_069_4cec:
    cp b                                          ; $4cec: $b8
    ld b, d                                       ; $4ced: $42
    ld a, a                                       ; $4cee: $7f
    add h                                         ; $4cef: $84
    ret nc                                        ; $4cf0: $d0

    and $35                                       ; $4cf1: $e6 $35
    add a                                         ; $4cf3: $87
    jr nc, jr_069_4cfb                            ; $4cf4: $30 $05

    ld hl, sp+$20                                 ; $4cf6: $f8 $20
    ld h, $b6                                     ; $4cf8: $26 $b6
    add c                                         ; $4cfa: $81

jr_069_4cfb:
    ld a, l                                       ; $4cfb: $7d
    jp nz, Jump_069_4590                          ; $4cfc: $c2 $90 $45

    ld [hl], $b9                                  ; $4cff: $36 $b9
    cp d                                          ; $4d01: $ba
    ld a, a                                       ; $4d02: $7f
    and e                                         ; $4d03: $a3
    dec [hl]                                      ; $4d04: $35
    ld l, h                                       ; $4d05: $6c
    ld l, a                                       ; $4d06: $6f
    ld l, [hl]                                    ; $4d07: $6e
    ld [hl], $45                                  ; $4d08: $36 $45
    ei                                            ; $4d0a: $fb
    and c                                         ; $4d0b: $a1
    ld d, $d0                                     ; $4d0c: $16 $d0
    db $eb                                        ; $4d0e: $eb
    ret c                                         ; $4d0f: $d8

    push de                                       ; $4d10: $d5
    db $fd                                        ; $4d11: $fd
    jr nz, jr_069_4cec                            ; $4d12: $20 $d8

    jr nc, jr_069_4d1c                            ; $4d14: $30 $06

    ldh a, [$e8]                                  ; $4d16: $f0 $e8
    ld [hl], a                                    ; $4d18: $77
    and l                                         ; $4d19: $a5
    jr @-$3e                                      ; $4d1a: $18 $c0

jr_069_4d1c:
    ldh [$30], a                                  ; $4d1c: $e0 $30
    add b                                         ; $4d1e: $80
    pop bc                                        ; $4d1f: $c1
    ld [c], a                                     ; $4d20: $e2
    sbc h                                         ; $4d21: $9c
    sbc a                                         ; $4d22: $9f
    ret nc                                        ; $4d23: $d0

    db $ed                                        ; $4d24: $ed
    rst $00                                       ; $4d25: $c7
    ld h, b                                       ; $4d26: $60
    rlca                                          ; $4d27: $07
    add b                                         ; $4d28: $80
    ld hl, $30d7                                  ; $4d29: $21 $d7 $30
    ld b, $f0                                     ; $4d2c: $06 $f0
    add sp, -$48                                  ; $4d2e: $e8 $b8
    and e                                         ; $4d30: $a3
    or h                                          ; $4d31: $b4
    and b                                         ; $4d32: $a0
    sbc h                                         ; $4d33: $9c
    rst $28                                       ; $4d34: $ef
    ld h, c                                       ; $4d35: $61
    pop bc                                        ; $4d36: $c1
    push hl                                       ; $4d37: $e5
    inc b                                         ; $4d38: $04
    ret nc                                        ; $4d39: $d0

    db $ec                                        ; $4d3a: $ec
    ret                                           ; $4d3b: $c9


    and e                                         ; $4d3c: $a3
    jp c, Jump_000_0630                           ; $4d3d: $da $30 $06

    ldh a, [$e8]                                  ; $4d40: $f0 $e8
    xor d                                         ; $4d42: $aa
    rlca                                          ; $4d43: $07
    cp a                                          ; $4d44: $bf
    pop hl                                        ; $4d45: $e1
    add d                                         ; $4d46: $82
    db $e3                                        ; $4d47: $e3
    nop                                           ; $4d48: $00
    ret nc                                        ; $4d49: $d0

    xor $c7                                       ; $4d4a: $ee $c7
    ld h, b                                       ; $4d4c: $60
    add c                                         ; $4d4d: $81
    ld b, b                                       ; $4d4e: $40
    ld a, l                                       ; $4d4f: $7d
    ld [bc], a                                    ; $4d50: $02
    jr nc, jr_069_4d55                            ; $4d51: $30 $02

    ldh a, [$e8]                                  ; $4d53: $f0 $e8

jr_069_4d55:
    xor b                                         ; $4d55: $a8
    inc bc                                        ; $4d56: $03
    dec d                                         ; $4d57: $15
    ld b, c                                       ; $4d58: $41
    nop                                           ; $4d59: $00
    ld [hl], a                                    ; $4d5a: $77
    db $e4                                        ; $4d5b: $e4
    nop                                           ; $4d5c: $00
    add c                                         ; $4d5d: $81
    ret nc                                        ; $4d5e: $d0

    db $ed                                        ; $4d5f: $ed
    rst $30                                       ; $4d60: $f7
    ld h, b                                       ; $4d61: $60
    add c                                         ; $4d62: $81
    ld b, e                                       ; $4d63: $43
    jr nc, jr_069_4d6a                            ; $4d64: $30 $04

    ldh a, [$e8]                                  ; $4d66: $f0 $e8
    ld l, b                                       ; $4d68: $68
    ld [bc], a                                    ; $4d69: $02

jr_069_4d6a:
    nop                                           ; $4d6a: $00
    dec d                                         ; $4d6b: $15
    ld b, l                                       ; $4d6c: $45
    adc [hl]                                      ; $4d6d: $8e
    ld b, [hl]                                    ; $4d6e: $46
    ret nc                                        ; $4d6f: $d0

    db $ec                                        ; $4d70: $ec
    rst $38                                       ; $4d71: $ff
    ld l, [hl]                                    ; $4d72: $6e
    add hl, hl                                    ; $4d73: $29
    adc [hl]                                      ; $4d74: $8e
    ld [hl+], a                                   ; $4d75: $22
    dec b                                         ; $4d76: $05
    xor a                                         ; $4d77: $af
    db $e4                                        ; $4d78: $e4
    rst $08                                       ; $4d79: $cf
    ld l, e                                       ; $4d7a: $6b
    nop                                           ; $4d7b: $00
    nop                                           ; $4d7c: $00
    nop                                           ; $4d7d: $00
    pop bc                                        ; $4d7e: $c1
    nop                                           ; $4d7f: $00
    rst $38                                       ; $4d80: $ff
    rst $38                                       ; $4d81: $ff
    rst $38                                       ; $4d82: $ff
    rst $38                                       ; $4d83: $ff
    rst $38                                       ; $4d84: $ff
    rst $38                                       ; $4d85: $ff
    rst $38                                       ; $4d86: $ff
    rst $38                                       ; $4d87: $ff
    rst $38                                       ; $4d88: $ff
    rst $38                                       ; $4d89: $ff
    nop                                           ; $4d8a: $00
    nop                                           ; $4d8b: $00
    dec c                                         ; $4d8c: $0d
    add b                                         ; $4d8d: $80
    cp $e0                                        ; $4d8e: $fe $e0
    nop                                           ; $4d90: $00
    ld b, b                                       ; $4d91: $40
    ret c                                         ; $4d92: $d8

    push hl                                       ; $4d93: $e5
    rst $30                                       ; $4d94: $f7
    and $eb                                       ; $4d95: $e6 $eb
    ldh [rIE], a                                  ; $4d97: $e0 $ff
    rst $38                                       ; $4d99: $ff
    nop                                           ; $4d9a: $00
    rst $38                                       ; $4d9b: $ff
    db $f4                                        ; $4d9c: $f4
    nop                                           ; $4d9d: $00
    nop                                           ; $4d9e: $00
    nop                                           ; $4d9f: $00
    ld [bc], a                                    ; $4da0: $02
    nop                                           ; $4da1: $00
    ld [hl+], a                                   ; $4da2: $22
    inc b                                         ; $4da3: $04
    ld [bc], a                                    ; $4da4: $02
    ld bc, $0526                                  ; $4da5: $01 $26 $05
    ld [bc], a                                    ; $4da8: $02
    ld [bc], a                                    ; $4da9: $02
    ld hl, $0206                                  ; $4daa: $21 $06 $02
    inc bc                                        ; $4dad: $03
    inc h                                         ; $4dae: $24

Jump_069_4daf:
    ld b, $02                                     ; $4daf: $06 $02
    inc b                                         ; $4db1: $04
    jr z, @+$08                                   ; $4db2: $28 $06

    ld [bc], a                                    ; $4db4: $02
    dec b                                         ; $4db5: $05
    ld e, $07                                     ; $4db6: $1e $07
    ld [bc], a                                    ; $4db8: $02
    ld b, $25                                     ; $4db9: $06 $25
    rlca                                          ; $4dbb: $07
    ld [bc], a                                    ; $4dbc: $02
    rlca                                          ; $4dbd: $07
    daa                                           ; $4dbe: $27
    rlca                                          ; $4dbf: $07
    ld [bc], a                                    ; $4dc0: $02
    ld [$081a], sp                                ; $4dc1: $08 $1a $08
    ld [bc], a                                    ; $4dc4: $02
    add hl, bc                                    ; $4dc5: $09
    dec d                                         ; $4dc6: $15
    add hl, bc                                    ; $4dc7: $09
    ld [bc], a                                    ; $4dc8: $02
    ld a, [bc]                                    ; $4dc9: $0a
    inc d                                         ; $4dca: $14
    ld a, [bc]                                    ; $4dcb: $0a
    ld [bc], a                                    ; $4dcc: $02
    dec bc                                        ; $4dcd: $0b
    rla                                           ; $4dce: $17
    ld a, [bc]                                    ; $4dcf: $0a
    ld [bc], a                                    ; $4dd0: $02
    inc c                                         ; $4dd1: $0c
    dec e                                         ; $4dd2: $1d
    ld a, [bc]                                    ; $4dd3: $0a
    ld [bc], a                                    ; $4dd4: $02
    dec c                                         ; $4dd5: $0d
    jr z, jr_069_4de2                             ; $4dd6: $28 $0a

    ld [bc], a                                    ; $4dd8: $02
    ld c, $1b                                     ; $4dd9: $0e $1b
    dec bc                                        ; $4ddb: $0b
    ld [bc], a                                    ; $4ddc: $02
    rrca                                          ; $4ddd: $0f
    ld h, $0b                                     ; $4dde: $26 $0b
    ld [bc], a                                    ; $4de0: $02
    db $10                                        ; $4de1: $10

jr_069_4de2:
    ld a, [de]                                    ; $4de2: $1a
    inc c                                         ; $4de3: $0c
    ld [bc], a                                    ; $4de4: $02
    ld de, $0c2a                                  ; $4de5: $11 $2a $0c
    ld [bc], a                                    ; $4de8: $02
    ld [de], a                                    ; $4de9: $12
    inc de                                        ; $4dea: $13
    dec c                                         ; $4deb: $0d
    ld [bc], a                                    ; $4dec: $02
    inc de                                        ; $4ded: $13
    jr @+$0f                                      ; $4dee: $18 $0d

    ld [bc], a                                    ; $4df0: $02
    inc d                                         ; $4df1: $14
    dec l                                         ; $4df2: $2d
    rrca                                          ; $4df3: $0f
    ld [bc], a                                    ; $4df4: $02
    dec d                                         ; $4df5: $15
    db $10                                        ; $4df6: $10
    db $10                                        ; $4df7: $10
    ld [bc], a                                    ; $4df8: $02
    ld d, $2f                                     ; $4df9: $16 $2f
    ld de, $1702                                  ; $4dfb: $11 $02 $17
    ld l, $14                                     ; $4dfe: $2e $14
    ld [bc], a                                    ; $4e00: $02
    jr jr_069_4e32                                ; $4e01: $18 $2f

    dec d                                         ; $4e03: $15
    ld [bc], a                                    ; $4e04: $02
    add hl, de                                    ; $4e05: $19
    add hl, de                                    ; $4e06: $19
    inc e                                         ; $4e07: $1c
    ld [bc], a                                    ; $4e08: $02
    ld a, [de]                                    ; $4e09: $1a
    ld d, $1d                                     ; $4e0a: $16 $1d
    ld [bc], a                                    ; $4e0c: $02
    dec de                                        ; $4e0d: $1b
    ld de, $021e                                  ; $4e0e: $11 $1e $02
    inc e                                         ; $4e11: $1c
    ld a, [de]                                    ; $4e12: $1a
    ld e, $02                                     ; $4e13: $1e $02
    dec e                                         ; $4e15: $1d
    cpl                                           ; $4e16: $2f
    rra                                           ; $4e17: $1f
    ld [bc], a                                    ; $4e18: $02
    ld e, $19                                     ; $4e19: $1e $19
    jr nz, jr_069_4e1f                            ; $4e1b: $20 $02

    rra                                           ; $4e1d: $1f
    dec l                                         ; $4e1e: $2d

jr_069_4e1f:
    jr nz, jr_069_4e23                            ; $4e1f: $20 $02

    jr nz, jr_069_4e51                            ; $4e21: $20 $2e

jr_069_4e23:
    ld hl, $2102                                  ; $4e23: $21 $02 $21
    inc de                                        ; $4e26: $13
    ld [hl+], a                                   ; $4e27: $22
    ld [bc], a                                    ; $4e28: $02
    ld [hl+], a                                   ; $4e29: $22
    ld a, [de]                                    ; $4e2a: $1a
    ld [hl+], a                                   ; $4e2b: $22
    ld [bc], a                                    ; $4e2c: $02
    inc hl                                        ; $4e2d: $23
    dec de                                        ; $4e2e: $1b
    inc hl                                        ; $4e2f: $23
    ld [bc], a                                    ; $4e30: $02
    inc h                                         ; $4e31: $24

jr_069_4e32:
    inc e                                         ; $4e32: $1c
    inc h                                         ; $4e33: $24
    ld [bc], a                                    ; $4e34: $02
    dec h                                         ; $4e35: $25
    cpl                                           ; $4e36: $2f
    dec h                                         ; $4e37: $25
    ld [bc], a                                    ; $4e38: $02
    ld h, $1d                                     ; $4e39: $26 $1d
    ld h, $02                                     ; $4e3b: $26 $02
    daa                                           ; $4e3d: $27
    ld de, $0227                                  ; $4e3e: $11 $27 $02
    jr z, jr_069_4e55                             ; $4e41: $28 $12

    add hl, hl                                    ; $4e43: $29
    ld [bc], a                                    ; $4e44: $02
    add hl, hl                                    ; $4e45: $29
    ld l, $2a                                     ; $4e46: $2e $2a
    ld [bc], a                                    ; $4e48: $02
    ld a, [hl+]                                   ; $4e49: $2a
    dec l                                         ; $4e4a: $2d
    dec hl                                        ; $4e4b: $2b
    ld [bc], a                                    ; $4e4c: $02
    dec hl                                        ; $4e4d: $2b
    inc d                                         ; $4e4e: $14
    dec l                                         ; $4e4f: $2d
    ld [bc], a                                    ; $4e50: $02

jr_069_4e51:
    inc l                                         ; $4e51: $2c
    add hl, hl                                    ; $4e52: $29
    dec l                                         ; $4e53: $2d
    ld [bc], a                                    ; $4e54: $02

jr_069_4e55:
    dec l                                         ; $4e55: $2d
    inc h                                         ; $4e56: $24
    ld l, $02                                     ; $4e57: $2e $02
    ld l, $16                                     ; $4e59: $2e $16
    cpl                                           ; $4e5b: $2f
    ld [bc], a                                    ; $4e5c: $02
    cpl                                           ; $4e5d: $2f
    dec d                                         ; $4e5e: $15
    jr nc, jr_069_4e63                            ; $4e5f: $30 $02

    jr nc, jr_069_4e7e                            ; $4e61: $30 $1b

jr_069_4e63:
    ld sp, $3102                                  ; $4e63: $31 $02 $31
    dec e                                         ; $4e66: $1d
    inc sp                                        ; $4e67: $33
    ld [bc], a                                    ; $4e68: $02
    ld [hl-], a                                   ; $4e69: $32
    jr nz, jr_069_4ea1                            ; $4e6a: $20 $35

    ld [bc], a                                    ; $4e6c: $02
    inc sp                                        ; $4e6d: $33
    ld e, $37                                     ; $4e6e: $1e $37
    ld [bc], a                                    ; $4e70: $02
    inc [hl]                                      ; $4e71: $34
    dec e                                         ; $4e72: $1d
    jr c, jr_069_4e77                             ; $4e73: $38 $02

    dec [hl]                                      ; $4e75: $35
    inc h                                         ; $4e76: $24

jr_069_4e77:
    jr c, jr_069_4e7b                             ; $4e77: $38 $02

    ld [hl], $20                                  ; $4e79: $36 $20

jr_069_4e7b:
    add hl, sp                                    ; $4e7b: $39
    ld [bc], a                                    ; $4e7c: $02
    scf                                           ; $4e7d: $37

jr_069_4e7e:
    ld e, $3a                                     ; $4e7e: $1e $3a
    rst $38                                       ; $4e80: $ff
    rst $38                                       ; $4e81: $ff
    rst $38                                       ; $4e82: $ff
    adc e                                         ; $4e83: $8b
    ld c, [hl]                                    ; $4e84: $4e
    ret nz                                        ; $4e85: $c0

    ld d, h                                       ; $4e86: $54
    dec bc                                        ; $4e87: $0b
    ld e, h                                       ; $4e88: $5c
    dec l                                         ; $4e89: $2d
    ld e, h                                       ; $4e8a: $5c
    xor a                                         ; $4e8b: $af
    ld c, l                                       ; $4e8c: $4d
    ld c, l                                       ; $4e8d: $4d
    dec c                                         ; $4e8e: $0d
    ld c, l                                       ; $4e8f: $4d
    rst $38                                       ; $4e90: $ff
    ldh [$0d], a                                  ; $4e91: $e0 $0d
    ld sp, hl                                     ; $4e93: $f9
    ldh [$2e], a                                  ; $4e94: $e0 $2e
    ei                                            ; $4e96: $fb
    ld c, $0e                                     ; $4e97: $0e $0e
    push af                                       ; $4e99: $f5
    pop hl                                        ; $4e9a: $e1
    ld c, l                                       ; $4e9b: $4d
    ld c, l                                       ; $4e9c: $4d
    ld l, l                                       ; $4e9d: $6d
    ld c, l                                       ; $4e9e: $4d
    dec c                                         ; $4e9f: $0d
    or b                                          ; $4ea0: $b0

jr_069_4ea1:
    ldh a, [$e1]                                  ; $4ea1: $f0 $e1
    ei                                            ; $4ea3: $fb
    ld [c], a                                     ; $4ea4: $e2
    push af                                       ; $4ea5: $f5
    ld [c], a                                     ; $4ea6: $e2
    rst $38                                       ; $4ea7: $ff
    ldh [rKEY1], a                                ; $4ea8: $e0 $4d
    ld l, $e1                                     ; $4eaa: $2e $e1
    ldh [$0e], a                                  ; $4eac: $e0 $0e
    jp hl                                         ; $4eae: $e9


    ld c, [hl]                                    ; $4eaf: $4e
    sbc $e4                                       ; $4eb0: $de $e4
    set 4, b                                      ; $4eb2: $cb $e0
    ld l, l                                       ; $4eb4: $6d
    rst $38                                       ; $4eb5: $ff
    ldh [$2e], a                                  ; $4eb6: $e0 $2e
    ld l, $2e                                     ; $4eb8: $2e $2e
    inc a                                         ; $4eba: $3c
    jp $d1e2                                      ; $4ebb: $c3 $e2 $d1


    ldh [rKEY1], a                                ; $4ebe: $e0 $4d
    ld c, l                                       ; $4ec0: $4d
    ld l, $6e                                     ; $4ec1: $2e $6e
    pop hl                                        ; $4ec3: $e1
    ldh [$be], a                                  ; $4ec4: $e0 $be
    ld [c], a                                     ; $4ec6: $e2
    rlca                                          ; $4ec7: $07
    dec c                                         ; $4ec8: $0d
    dec c                                         ; $4ec9: $0d
    ld c, $fd                                     ; $4eca: $0e $fd
    ldh [$e9], a                                  ; $4ecc: $e0 $e9
    ld [c], a                                     ; $4ece: $e2
    or l                                          ; $4ecf: $b5
    ldh [$f4], a                                  ; $4ed0: $e0 $f4
    ldh [$c4], a                                  ; $4ed2: $e0 $c4
    ldh [rNR41], a                                ; $4ed4: $e0 $20
    ret nz                                        ; $4ed6: $c0

    pop hl                                        ; $4ed7: $e1
    cp [hl]                                       ; $4ed8: $be
    pop hl                                        ; $4ed9: $e1
    ret nz                                        ; $4eda: $c0

    db $e4                                        ; $4edb: $e4
    sbc e                                         ; $4edc: $9b
    ldh [$c3], a                                  ; $4edd: $e0 $c3
    ldh [$2e], a                                  ; $4edf: $e0 $2e
    or b                                          ; $4ee1: $b0
    pop hl                                        ; $4ee2: $e1
    add l                                         ; $4ee3: $85
    ldh [$c8], a                                  ; $4ee4: $e0 $c8
    ldh [$e1], a                                  ; $4ee6: $e0 $e1
    sbc a                                         ; $4ee8: $9f
    rst $20                                       ; $4ee9: $e7
    pop bc                                        ; $4eea: $c1
    ldh [$0e], a                                  ; $4eeb: $e0 $0e
    add a                                         ; $4eed: $87
    pop hl                                        ; $4eee: $e1
    ld l, b                                       ; $4eef: $68
    ldh [$2d], a                                  ; $4ef0: $e0 $2d
    dec l                                         ; $4ef2: $2d
    push bc                                       ; $4ef3: $c5
    ld c, l                                       ; $4ef4: $4d
    db $f4                                        ; $4ef5: $f4
    pop hl                                        ; $4ef6: $e1
    ld l, [hl]                                    ; $4ef7: $6e
    ld h, [hl]                                    ; $4ef8: $66
    ldh [$c0], a                                  ; $4ef9: $e0 $c0
    db $eb                                        ; $4efb: $eb
    add b                                         ; $4efc: $80
    ldh [$2e], a                                  ; $4efd: $e0 $2e
    ld l, $0f                                     ; $4eff: $2e $0f
    ld l, [hl]                                    ; $4f01: $6e
    ld l, [hl]                                    ; $4f02: $6e
    ld l, $4e                                     ; $4f03: $2e $4e
    ld b, l                                       ; $4f05: $45
    ld [c], a                                     ; $4f06: $e2
    ldh [$e1], a                                  ; $4f07: $e0 $e1
    sbc a                                         ; $4f09: $9f
    rst $20                                       ; $4f0a: $e7
    ld d, c                                       ; $4f0b: $51
    pop hl                                        ; $4f0c: $e1
    inc b                                         ; $4f0d: $04
    add l                                         ; $4f0e: $85
    pop hl                                        ; $4f0f: $e1
    ld c, c                                       ; $4f10: $49
    ld [c], a                                     ; $4f11: $e2
    dec l                                         ; $4f12: $2d
    rra                                           ; $4f13: $1f
    pop hl                                        ; $4f14: $e1
    and b                                         ; $4f15: $a0
    db $e3                                        ; $4f16: $e3
    add b                                         ; $4f17: $80
    ld [c], a                                     ; $4f18: $e2
    dec [hl]                                      ; $4f19: $35
    pop hl                                        ; $4f1a: $e1
    ld c, $e2                                     ; $4f1b: $0e $e2
    add e                                         ; $4f1d: $83
    ld l, $6e                                     ; $4f1e: $2e $6e
    ld b, d                                       ; $4f20: $42
    ldh [$d1], a                                  ; $4f21: $e0 $d1
    ld [c], a                                     ; $4f23: $e2
    add b                                         ; $4f24: $80
    ld [c], a                                     ; $4f25: $e2
    ld e, e                                       ; $4f26: $5b
    ld [c], a                                     ; $4f27: $e2
    ret nz                                        ; $4f28: $c0

    rst $20                                       ; $4f29: $e7
    ld l, l                                       ; $4f2a: $6d
    rrca                                          ; $4f2b: $0f
    dec c                                         ; $4f2c: $0d
    dec bc                                        ; $4f2d: $0b
    dec hl                                        ; $4f2e: $2b
    dec l                                         ; $4f2f: $2d
    cp a                                          ; $4f30: $bf
    push hl                                       ; $4f31: $e5
    and $c2                                       ; $4f32: $e6 $c2
    cp [hl]                                       ; $4f34: $be
    ld [c], a                                     ; $4f35: $e2
    dec hl                                        ; $4f36: $2b
    pop hl                                        ; $4f37: $e1
    nop                                           ; $4f38: $00
    or $e1                                        ; $4f39: $f6 $e1
    ld c, h                                       ; $4f3b: $4c
    ld [c], a                                     ; $4f3c: $e2
    ret nz                                        ; $4f3d: $c0

    db $e3                                        ; $4f3e: $e3
    db $dd                                        ; $4f3f: $dd
    pop bc                                        ; $4f40: $c1
    add $c0                                       ; $4f41: $c6 $c0
    db $10                                        ; $4f43: $10
    ldh [$1f], a                                  ; $4f44: $e0 $1f
    db $e4                                        ; $4f46: $e4
    sbc l                                         ; $4f47: $9d
    pop hl                                        ; $4f48: $e1
    ccf                                           ; $4f49: $3f
    ld l, l                                       ; $4f4a: $6d
    dec c                                         ; $4f4b: $0d
    ld a, [bc]                                    ; $4f4c: $0a
    ld a, [hl+]                                   ; $4f4d: $2a
    ld a, [bc]                                    ; $4f4e: $0a
    ld l, d                                       ; $4f4f: $6a
    cp a                                          ; $4f50: $bf
    and $e0                                       ; $4f51: $e6 $e0
    pop hl                                        ; $4f53: $e1
    nop                                           ; $4f54: $00
    rst $38                                       ; $4f55: $ff
    rst $20                                       ; $4f56: $e7
    sub b                                         ; $4f57: $90
    jp $e5c0                                      ; $4f58: $c3 $c0 $e5


    ld h, b                                       ; $4f5b: $60
    ld [c], a                                     ; $4f5c: $e2
    and l                                         ; $4f5d: $a5
    ret nz                                        ; $4f5e: $c0

    add h                                         ; $4f5f: $84
    pop bc                                        ; $4f60: $c1
    ldh a, [$e4]                                  ; $4f61: $f0 $e4
    add d                                         ; $4f63: $82
    ldh [$9f], a                                  ; $4f64: $e0 $9f
    dec c                                         ; $4f66: $0d
    ld a, [hl+]                                   ; $4f67: $2a
    ld a, [hl+]                                   ; $4f68: $2a
    ld a, [bc]                                    ; $4f69: $0a
    ld a, [hl+]                                   ; $4f6a: $2a
    adc b                                         ; $4f6b: $88
    ret nz                                        ; $4f6c: $c0

    ld a, h                                       ; $4f6d: $7c
    ldh [$6d], a                                  ; $4f6e: $e0 $6d
    jr jr_069_4fcf                                ; $4f70: $18 $5d

    ret nz                                        ; $4f72: $c0

    sub e                                         ; $4f73: $93
    pop bc                                        ; $4f74: $c1
    sub d                                         ; $4f75: $92
    pop bc                                        ; $4f76: $c1
    ld c, $6d                                     ; $4f77: $0e $6d
    ld h, h                                       ; $4f79: $64
    ret nz                                        ; $4f7a: $c0

    jp nc, $c0c2                                  ; $4f7b: $d2 $c2 $c0

    add sp, -$30                                  ; $4f7e: $e8 $d0
    ld a, $c2                                     ; $4f80: $3e $c2
    and h                                         ; $4f82: $a4
    add $43                                       ; $4f83: $c6 $43
    ld [c], a                                     ; $4f85: $e2
    sub d                                         ; $4f86: $92
    db $e4                                        ; $4f87: $e4
    dec bc                                        ; $4f88: $0b
    cp a                                          ; $4f89: $bf
    pop hl                                        ; $4f8a: $e1
    ld l, l                                       ; $4f8b: $6d
    ld c, l                                       ; $4f8c: $4d
    inc b                                         ; $4f8d: $04
    jp z, $92e0                                   ; $4f8e: $ca $e0 $92

    call nz, $174e                                ; $4f91: $c4 $4e $17
    ldh [$b2], a                                  ; $4f94: $e0 $b2
    pop bc                                        ; $4f96: $c1
    ld l, $c0                                     ; $4f97: $2e $c0
    ld b, b                                       ; $4f99: $40
    db $e4                                        ; $4f9a: $e4
    ld [hl], c                                    ; $4f9b: $71
    db $e3                                        ; $4f9c: $e3
    rst $00                                       ; $4f9d: $c7
    ld l, $0e                                     ; $4f9e: $2e $0e
    ld l, [hl]                                    ; $4fa0: $6e
    ld b, c                                       ; $4fa1: $41
    ret nz                                        ; $4fa2: $c0

    jp nz, $c1c4                                  ; $4fa3: $c2 $c4 $c1

    db $e3                                        ; $4fa6: $e3
    dec hl                                        ; $4fa7: $2b
    dec bc                                        ; $4fa8: $0b
    inc bc                                        ; $4fa9: $03
    dec hl                                        ; $4faa: $2b
    dec bc                                        ; $4fab: $0b
    ret nz                                        ; $4fac: $c0

    ldh [$bd], a                                  ; $4fad: $e0 $bd
    pop bc                                        ; $4faf: $c1
    dec d                                         ; $4fb0: $15
    jp $c192                                      ; $4fb1: $c3 $92 $c1


    cp a                                          ; $4fb4: $bf
    jp nz, $c2d2                                  ; $4fb5: $c2 $d2 $c2

    ret nz                                        ; $4fb8: $c0

    nop                                           ; $4fb9: $00
    and $e2                                       ; $4fba: $e6 $e2
    and d                                         ; $4fbc: $a2
    rst $30                                       ; $4fbd: $f7
    and b                                         ; $4fbe: $a0
    ld [bc], a                                    ; $4fbf: $02
    ret nz                                        ; $4fc0: $c0

    ld bc, $17c2                                  ; $4fc1: $01 $c2 $17
    db $e4                                        ; $4fc4: $e4
    dec hl                                        ; $4fc5: $2b
    ld l, e                                       ; $4fc6: $6b
    cpl                                           ; $4fc7: $2f
    dec bc                                        ; $4fc8: $0b
    dec bc                                        ; $4fc9: $0b
    dec bc                                        ; $4fca: $0b
    dec hl                                        ; $4fcb: $2b
    ld a, [hl]                                    ; $4fcc: $7e
    pop hl                                        ; $4fcd: $e1
    dec c                                         ; $4fce: $0d

jr_069_4fcf:
    ret nz                                        ; $4fcf: $c0

    pop hl                                        ; $4fd0: $e1
    sub d                                         ; $4fd1: $92
    call nz, $ff80                                ; $4fd2: $c4 $80 $ff
    and d                                         ; $4fd5: $a2
    adc d                                         ; $4fd6: $8a
    jp $e430                                      ; $4fd7: $c3 $30 $e4


    sbc b                                         ; $4fda: $98
    and d                                         ; $4fdb: $a2
    or e                                          ; $4fdc: $b3
    push bc                                       ; $4fdd: $c5
    and b                                         ; $4fde: $a0
    and c                                         ; $4fdf: $a1
    rst $10                                       ; $4fe0: $d7
    call nz, Call_000_3f0a                        ; $4fe1: $c4 $0a $3f
    ld c, d                                       ; $4fe4: $4a
    ld c, e                                       ; $4fe5: $4b
    dec bc                                        ; $4fe6: $0b
    dec bc                                        ; $4fe7: $0b
    ld l, e                                       ; $4fe8: $6b
    ld c, e                                       ; $4fe9: $4b
    ld a, h                                       ; $4fea: $7c
    pop bc                                        ; $4feb: $c1
    scf                                           ; $4fec: $37
    ret nz                                        ; $4fed: $c0

    nop                                           ; $4fee: $00
    db $d3                                        ; $4fef: $d3
    and d                                         ; $4ff0: $a2
    ret nz                                        ; $4ff1: $c0

    db $e3                                        ; $4ff2: $e3
    ld e, b                                       ; $4ff3: $58
    and e                                         ; $4ff4: $a3
    and c                                         ; $4ff5: $a1
    and b                                         ; $4ff6: $a0
    or [hl]                                       ; $4ff7: $b6
    and [hl]                                      ; $4ff8: $a6
    ret nz                                        ; $4ff9: $c0

    add sp, $3e                                   ; $4ffa: $e8 $3e
    and d                                         ; $4ffc: $a2
    ld c, b                                       ; $4ffd: $48
    pop bc                                        ; $4ffe: $c1
    rst $38                                       ; $4fff: $ff
    dec bc                                        ; $5000: $0b
    ld a, [hl+]                                   ; $5001: $2a
    ld a, [bc]                                    ; $5002: $0a
    dec hl                                        ; $5003: $2b
    ld c, e                                       ; $5004: $4b
    ld l, e                                       ; $5005: $6b
    dec bc                                        ; $5006: $0b
    dec l                                         ; $5007: $2d
    ld bc, $bf2d                                  ; $5008: $01 $2d $bf
    pop bc                                        ; $500b: $c1
    ret nz                                        ; $500c: $c0

    db $ec                                        ; $500d: $ec
    ld [hl-], a                                   ; $500e: $32
    and c                                         ; $500f: $a1
    ret c                                         ; $5010: $d8

    and e                                         ; $5011: $a3
    inc bc                                        ; $5012: $03
    and e                                         ; $5013: $a3
    ret nz                                        ; $5014: $c0

    db $ed                                        ; $5015: $ed
    cp a                                          ; $5016: $bf
    ld [c], a                                     ; $5017: $e2
    rst $38                                       ; $5018: $ff
    ld l, e                                       ; $5019: $6b
    ld a, [bc]                                    ; $501a: $0a
    dec hl                                        ; $501b: $2b
    dec hl                                        ; $501c: $2b
    dec bc                                        ; $501d: $0b
    dec c                                         ; $501e: $0d
    dec l                                         ; $501f: $2d
    dec l                                         ; $5020: $2d
    ld bc, $b26d                                  ; $5021: $01 $6d $b2
    jp nz, $e880                                  ; $5024: $c2 $80 $e8

    ld e, d                                       ; $5027: $5a
    push bc                                       ; $5028: $c5
    ld hl, sp-$7c                                 ; $5029: $f8 $84
    res 0, e                                      ; $502b: $cb $83
    add b                                         ; $502d: $80
    add sp, $17                                   ; $502e: $e8 $17
    push bc                                       ; $5030: $c5
    adc l                                         ; $5031: $8d
    dec hl                                        ; $5032: $2b
    rst $38                                       ; $5033: $ff
    ldh [$0b], a                                  ; $5034: $e0 $0b
    dec bc                                        ; $5036: $0b
    pop bc                                        ; $5037: $c1
    ldh [$6e], a                                  ; $5038: $e0 $6e
    jp nz, $e640                                  ; $503a: $c2 $40 $e6

    ld l, l                                       ; $503d: $6d
    ld bc, $d80d                                  ; $503e: $01 $0d $d8
    add h                                         ; $5041: $84
    adc c                                         ; $5042: $89
    add h                                         ; $5043: $84
    res 0, h                                      ; $5044: $cb $84
    ret nz                                        ; $5046: $c0

Call_069_5047:
    jp hl                                         ; $5047: $e9


    add hl, bc                                    ; $5048: $09
    and b                                         ; $5049: $a0
    adc l                                         ; $504a: $8d
    add c                                         ; $504b: $81
    pop bc                                        ; $504c: $c1
    pop hl                                        ; $504d: $e1
    nop                                           ; $504e: $00
    ld [bc], a                                    ; $504f: $02
    jp $ecc0                                      ; $5050: $c3 $c0 $ec


    ld [hl], a                                    ; $5053: $77
    add e                                         ; $5054: $83
    ld c, c                                       ; $5055: $49
    add d                                         ; $5056: $82
    ld [$6ac3], sp                                ; $5057: $08 $c3 $6a
    add b                                         ; $505a: $80
    ret nz                                        ; $505b: $c0

    ld [$a300], a                                 ; $505c: $ea $00 $a3
    nop                                           ; $505f: $00
    ret nz                                        ; $5060: $c0

    pop bc                                        ; $5061: $c1
    rst $38                                       ; $5062: $ff
    add c                                         ; $5063: $81
    add hl, sp                                    ; $5064: $39
    and c                                         ; $5065: $a1
    ret z                                         ; $5066: $c8

    and b                                         ; $5067: $a0
    jp nz, $c0a3                                  ; $5068: $c2 $a3 $c0

    and b                                         ; $506b: $a0
    ld [hl], a                                    ; $506c: $77
    add h                                         ; $506d: $84
    ld l, a                                       ; $506e: $6f
    and h                                         ; $506f: $a4
    jr @+$6c                                      ; $5070: $18 $6a

    add a                                         ; $5072: $87
    ld h, d                                       ; $5073: $62
    add l                                         ; $5074: $85
    cp a                                          ; $5075: $bf
    and [hl]                                      ; $5076: $a6
    ld c, e                                       ; $5077: $4b
    ld c, e                                       ; $5078: $4b
    ld b, c                                       ; $5079: $41
    jp nz, $c000                                  ; $507a: $c2 $00 $c0

    rst $20                                       ; $507d: $e7
    ld h, b                                       ; $507e: $60
    nop                                           ; $507f: $00
    ld de, $4183                                  ; $5080: $11 $83 $41
    ldh [$d8], a                                  ; $5083: $e0 $d8
    add l                                         ; $5085: $85
    db $e3                                        ; $5086: $e3
    ld h, e                                       ; $5087: $63
    dec bc                                        ; $5088: $0b
    and a                                         ; $5089: $a7
    jp hl                                         ; $508a: $e9


    ld h, e                                       ; $508b: $63
    rst $18                                       ; $508c: $df
    add d                                         ; $508d: $82
    add b                                         ; $508e: $80
    and h                                         ; $508f: $a4
    rrca                                          ; $5090: $0f

Call_069_5091:
    dec hl                                        ; $5091: $2b
    ld c, e                                       ; $5092: $4b
    dec c                                         ; $5093: $0d
    dec hl                                        ; $5094: $2b
    ld a, h                                       ; $5095: $7c
    add e                                         ; $5096: $83
    ld a, d                                       ; $5097: $7a
    pop hl                                        ; $5098: $e1
    ld d, b                                       ; $5099: $50
    add c                                         ; $509a: $81
    db $10                                        ; $509b: $10

jr_069_509c:
    add b                                         ; $509c: $80
    nop                                           ; $509d: $00
    or [hl]                                       ; $509e: $b6
    ld h, c                                       ; $509f: $61
    rst $30                                       ; $50a0: $f7
    ld l, c                                       ; $50a1: $69
    ld [$ab64], a                                 ; $50a2: $ea $64 $ab
    and h                                         ; $50a5: $a4
    ld h, b                                       ; $50a6: $60
    add c                                         ; $50a7: $81
    ld b, d                                       ; $50a8: $42
    xor b                                         ; $50a9: $a8
    ld a, h                                       ; $50aa: $7c
    and b                                         ; $50ab: $a0
    ld a, e                                       ; $50ac: $7b
    add c                                         ; $50ad: $81
    ld b, $2e                                     ; $50ae: $06 $2e
    ret nz                                        ; $50b0: $c0

    ld c, $2d                                     ; $50b1: $0e $2d
    ld d, b                                       ; $50b3: $50
    add h                                         ; $50b4: $84
    inc sp                                        ; $50b5: $33
    pop hl                                        ; $50b6: $e1
    ret c                                         ; $50b7: $d8

    add l                                         ; $50b8: $85
    ld a, [hl]                                    ; $50b9: $7e
    ld h, c                                       ; $50ba: $61
    ld l, d                                       ; $50bb: $6a
    add h                                         ; $50bc: $84
    jr c, jr_069_509c                             ; $50bd: $38 $dd

    ld h, d                                       ; $50bf: $62
    ld l, l                                       ; $50c0: $6d
    ld h, b                                       ; $50c1: $60
    inc bc                                        ; $50c2: $03
    xor b                                         ; $50c3: $a8
    dec hl                                        ; $50c4: $2b
    ld l, e                                       ; $50c5: $6b
    dec c                                         ; $50c6: $0d
    ld a, l                                       ; $50c7: $7d
    and b                                         ; $50c8: $a0
    cp l                                          ; $50c9: $bd
    add d                                         ; $50ca: $82
    ld bc, $b72d                                  ; $50cb: $01 $2d $b7
    ld h, b                                       ; $50ce: $60
    ld [de], a                                    ; $50cf: $12
    add c                                         ; $50d0: $81
    ld e, $62                                     ; $50d1: $1e $62
    ld a, h                                       ; $50d3: $7c
    ld h, a                                       ; $50d4: $67
    cp l                                          ; $50d5: $bd
    ld h, c                                       ; $50d6: $61
    ld c, c                                       ; $50d7: $49
    push hl                                       ; $50d8: $e5
    ld e, l                                       ; $50d9: $5d
    ld h, c                                       ; $50da: $61
    jr jr_069_50e4                                ; $50db: $18 $07

    add e                                         ; $50dd: $83
    ret z                                         ; $50de: $c8

    add c                                         ; $50df: $81
    rst $00                                       ; $50e0: $c7
    add b                                         ; $50e1: $80
    dec bc                                        ; $50e2: $0b
    dec c                                         ; $50e3: $0d

jr_069_50e4:
    ld a, $a1                                     ; $50e4: $3e $a1
    db $fc                                        ; $50e6: $fc
    ret nz                                        ; $50e7: $c0

    ld a, d                                       ; $50e8: $7a
    add c                                         ; $50e9: $81
    nop                                           ; $50ea: $00
    rst $28                                       ; $50eb: $ef
    ld b, b                                       ; $50ec: $40
    ret nz                                        ; $50ed: $c0

    and $d7                                       ; $50ee: $e6 $d7
    rst $00                                       ; $50f0: $c7
    cp l                                          ; $50f1: $bd

jr_069_50f2:
    ld h, c                                       ; $50f2: $61
    ret nz                                        ; $50f3: $c0

    ld b, d                                       ; $50f4: $42
    ld h, c                                       ; $50f5: $61
    ld h, c                                       ; $50f6: $61
    dec b                                         ; $50f7: $05
    ret z                                         ; $50f8: $c8

    call nz, $0260                                ; $50f9: $c4 $60 $02
    inc b                                         ; $50fc: $04
    and c                                         ; $50fd: $a1
    ld l, e                                       ; $50fe: $6b
    cp [hl]                                       ; $50ff: $be
    ret nz                                        ; $5100: $c0

    dec sp                                        ; $5101: $3b
    and b                                         ; $5102: $a0
    ret nz                                        ; $5103: $c0

    ld [$c081], a                                 ; $5104: $ea $81 $c0
    sub l                                         ; $5107: $95
    add [hl]                                      ; $5108: $86
    xor l                                         ; $5109: $ad
    ld [c], a                                     ; $510a: $e2
    db $10                                        ; $510b: $10
    ld a, [hl+]                                   ; $510c: $2a
    add l                                         ; $510d: $85
    db $dd                                        ; $510e: $dd
    ld h, h                                       ; $510f: $64
    ld c, e                                       ; $5110: $4b
    ld h, c                                       ; $5111: $61
    ld [$0be2], sp                                ; $5112: $08 $e2 $0b
    ld b, e                                       ; $5115: $43
    add c                                         ; $5116: $81
    cp e                                          ; $5117: $bb
    ld h, c                                       ; $5118: $61
    ret nz                                        ; $5119: $c0

    push hl                                       ; $511a: $e5
    add b                                         ; $511b: $80
    add d                                         ; $511c: $82
    jp nz, $c241                                  ; $511d: $c2 $41 $c2

    sub l                                         ; $5120: $95
    add [hl]                                      ; $5121: $86
    dec l                                         ; $5122: $2d
    ld [c], a                                     ; $5123: $e2
    ld a, [hl+]                                   ; $5124: $2a
    add e                                         ; $5125: $83
    ld [hl], $a4                                  ; $5126: $36 $a4
    ld d, l                                       ; $5128: $55
    ld b, d                                       ; $5129: $42
    dec bc                                        ; $512a: $0b
    ld l, c                                       ; $512b: $69
    dec l                                         ; $512c: $2d
    ld b, e                                       ; $512d: $43
    ld h, b                                       ; $512e: $60
    add l                                         ; $512f: $85
    add c                                         ; $5130: $81
    ld c, e                                       ; $5131: $4b
    ld a, e                                       ; $5132: $7b
    ld h, b                                       ; $5133: $60
    ld a, [bc]                                    ; $5134: $0a
    ld c, d                                       ; $5135: $4a
    cp h                                          ; $5136: $bc
    ld h, b                                       ; $5137: $60
    jr nz, jr_069_50f2                            ; $5138: $20 $b8

    ld b, b                                       ; $513a: $40
    or $80                                        ; $513b: $f6 $80
    ld d, $40                                     ; $513d: $16 $40
    sub [hl]                                      ; $513f: $96
    and h                                         ; $5140: $a4
    res 4, a                                      ; $5141: $cb $a7
    ld c, $2a                                     ; $5143: $0e $2a
    add [hl]                                      ; $5145: $86
    ld c, e                                       ; $5146: $4b
    ld b, d                                       ; $5147: $42
    ldh a, [$c4]                                  ; $5148: $f0 $c4
    add d                                         ; $514a: $82
    ld a, [bc]                                    ; $514b: $0a
    and b                                         ; $514c: $a0
    ld c, b                                       ; $514d: $48
    pop hl                                        ; $514e: $e1
    ld b, b                                       ; $514f: $40
    add c                                         ; $5150: $81
    dec bc                                        ; $5151: $0b
    dec hl                                        ; $5152: $2b
    ld a, [bc]                                    ; $5153: $0a
    ld a, [bc]                                    ; $5154: $0a
    nop                                           ; $5155: $00
    ld a, e                                       ; $5156: $7b
    ld h, c                                       ; $5157: $61
    xor h                                         ; $5158: $ac
    add c                                         ; $5159: $81
    dec d                                         ; $515a: $15
    ld h, e                                       ; $515b: $63
    dec d                                         ; $515c: $15
    xor c                                         ; $515d: $a9
    rst $28                                       ; $515e: $ef
    and c                                         ; $515f: $a1
    ld l, d                                       ; $5160: $6a
    add l                                         ; $5161: $85
    db $fc                                        ; $5162: $fc
    inc hl                                        ; $5163: $23
    cp a                                          ; $5164: $bf
    db $e4                                        ; $5165: $e4
    ld d, $83                                     ; $5166: $16 $83
    and b                                         ; $5168: $a0
    ld c, e                                       ; $5169: $4b
    ld l, e                                       ; $516a: $6b
    cp l                                          ; $516b: $bd
    db $e4                                        ; $516c: $e4

jr_069_516d:
    ld c, e                                       ; $516d: $4b
    cp e                                          ; $516e: $bb
    ld h, d                                       ; $516f: $62
    jr c, @+$43                                   ; $5170: $38 $41

    cp l                                          ; $5172: $bd
    ld hl, $c000                                  ; $5173: $21 $00 $c0
    ld [$4279], a                                 ; $5176: $ea $79 $42
    ret                                           ; $5179: $c9


    add [hl]                                      ; $517a: $86
    and b                                         ; $517b: $a0
    and e                                         ; $517c: $a3
    sub e                                         ; $517d: $93
    ld [hl+], a                                   ; $517e: $22
    rst $08                                       ; $517f: $cf
    and b                                         ; $5180: $a0
    cp a                                          ; $5181: $bf
    ld b, b                                       ; $5182: $40
    ld a, h                                       ; $5183: $7c

jr_069_5184:
    pop hl                                        ; $5184: $e1
    inc b                                         ; $5185: $04
    or l                                          ; $5186: $b5
    jp nz, $a3bc                                  ; $5187: $c2 $bc $a3

    dec l                                         ; $518a: $2d
    ld sp, hl                                     ; $518b: $f9
    ld [hl+], a                                   ; $518c: $22
    sub l                                         ; $518d: $95
    adc b                                         ; $518e: $88
    ld b, b                                       ; $518f: $40
    and e                                         ; $5190: $a3
    add b                                         ; $5191: $80
    push hl                                       ; $5192: $e5
    and b                                         ; $5193: $a0
    and h                                         ; $5194: $a4
    inc e                                         ; $5195: $1c
    xor a                                         ; $5196: $af
    ld h, c                                       ; $5197: $61
    db $fd                                        ; $5198: $fd
    ld h, d                                       ; $5199: $62
    ld a, [bc]                                    ; $519a: $0a
    ld a, [bc]                                    ; $519b: $0a
    ld l, d                                       ; $519c: $6a
    add e                                         ; $519d: $83
    pop bc                                        ; $519e: $c1
    ld a, $c0                                     ; $519f: $3e $c0
    inc l                                         ; $51a1: $2c
    db $e3                                        ; $51a2: $e3
    add b                                         ; $51a3: $80
    dec a                                         ; $51a4: $3d
    jp nz, Jump_000_21a8                          ; $51a5: $c2 $a8 $21

    ld d, l                                       ; $51a8: $55
    adc e                                         ; $51a9: $8b
    ld b, b                                       ; $51aa: $40
    and $f0                                       ; $51ab: $e6 $f0
    inc h                                         ; $51ad: $24
    sub e                                         ; $51ae: $93
    ld h, c                                       ; $51af: $61
    db $db                                        ; $51b0: $db
    ld hl, $6c0a                                  ; $51b1: $21 $0a $6c
    rst $38                                       ; $51b4: $ff
    ldh [$c0], a                                  ; $51b5: $e0 $c0
    and c                                         ; $51b7: $a1
    dec bc                                        ; $51b8: $0b
    ld c, e                                       ; $51b9: $4b
    cp h                                          ; $51ba: $bc
    ld h, d                                       ; $51bb: $62
    dec c                                         ; $51bc: $0d
    ld l, l                                       ; $51bd: $6d
    add hl, sp                                    ; $51be: $39
    ld b, e                                       ; $51bf: $43
    nop                                           ; $51c0: $00
    add a                                         ; $51c1: $87
    ld b, h                                       ; $51c2: $44
    dec d                                         ; $51c3: $15
    add h                                         ; $51c4: $84
    ld sp, $2ae2                                  ; $51c5: $31 $e2 $2a
    add d                                         ; $51c8: $82
    ld [hl], e                                    ; $51c9: $73
    call nz, $e3c0                                ; $51ca: $c4 $c0 $e3
    pop bc                                        ; $51cd: $c1
    ld hl, $4240                                  ; $51ce: $21 $40 $42
    nop                                           ; $51d1: $00
    cp e                                          ; $51d2: $bb
    pop bc                                        ; $51d3: $c1
    cp h                                          ; $51d4: $bc
    ld h, d                                       ; $51d5: $62
    pop bc                                        ; $51d6: $c1
    ld [c], a                                     ; $51d7: $e2
    reti                                          ; $51d8: $d9


    ld [hl+], a                                   ; $51d9: $22
    ld c, e                                       ; $51da: $4b
    add [hl]                                      ; $51db: $86
    adc d                                         ; $51dc: $8a
    nop                                           ; $51dd: $00
    ld [$eaa4], sp                                ; $51de: $08 $a4 $ea
    ld h, d                                       ; $51e1: $62
    jr nz, jr_069_5184                            ; $51e2: $20 $a0

    and l                                         ; $51e4: $a5
    ld a, $a2                                     ; $51e5: $3e $a2
    ld b, l                                       ; $51e7: $45
    jr nz, jr_069_516d                            ; $51e8: $20 $83

    ld b, b                                       ; $51ea: $40
    call nz, Call_069_6bc0                        ; $51eb: $c4 $c0 $6b
    cp c                                          ; $51ee: $b9
    ret nz                                        ; $51ef: $c0

    add b                                         ; $51f0: $80
    ld h, d                                       ; $51f1: $62
    nop                                           ; $51f2: $00
    ld b, a                                       ; $51f3: $47
    add c                                         ; $51f4: $81
    ld h, a                                       ; $51f5: $67
    nop                                           ; $51f6: $00
    jp nz, Jump_000_0424                          ; $51f7: $c2 $24 $04

    ld l, b                                       ; $51fa: $68
    ld a, [hl+]                                   ; $51fb: $2a
    add h                                         ; $51fc: $84
    and b                                         ; $51fd: $a0
    and [hl]                                      ; $51fe: $a6
    ld b, h                                       ; $51ff: $44
    ld bc, $a2bb                                  ; $5200: $01 $bb $a2
    inc c                                         ; $5203: $0c
    ld b, b                                       ; $5204: $40
    jp Jump_000_23f5                              ; $5205: $c3 $f5 $23


    ld l, l                                       ; $5208: $6d
    ld l, l                                       ; $5209: $6d
    rst $38                                       ; $520a: $ff
    ld h, d                                       ; $520b: $62
    and d                                         ; $520c: $a2
    jp nz, Jump_000_23d0                          ; $520d: $c2 $d0 $23

    inc a                                         ; $5210: $3c
    ld l, d                                       ; $5211: $6a
    nop                                           ; $5212: $00
    or h                                          ; $5213: $b4
    ld h, d                                       ; $5214: $62
    and b                                         ; $5215: $a0
    and e                                         ; $5216: $a3
    ld b, [hl]                                    ; $5217: $46
    ld bc, $84fd                                  ; $5218: $01 $fd $84
    cp $a2                                        ; $521b: $fe $a2
    push af                                       ; $521d: $f5
    ld bc, $80d7                                  ; $521e: $01 $d7 $80
    nop                                           ; $5221: $00
    ld b, d                                       ; $5222: $42
    nop                                           ; $5223: $00
    ld d, d                                       ; $5224: $52
    ld bc, $e480                                  ; $5225: $01 $80 $e4
    inc a                                         ; $5228: $3c
    ld h, h                                       ; $5229: $64
    pop bc                                        ; $522a: $c1
    ld b, e                                       ; $522b: $43
    adc h                                         ; $522c: $8c
    ld [bc], a                                    ; $522d: $02
    rra                                           ; $522e: $1f
    inc hl                                        ; $522f: $23
    ld d, d                                       ; $5230: $52
    ld [bc], a                                    ; $5231: $02
    sla c                                         ; $5232: $cb $21
    dec c                                         ; $5234: $0d
    ld l, e                                       ; $5235: $6b
    ld bc, $2bc1                                  ; $5236: $01 $c1 $2b
    dec bc                                        ; $5239: $0b
    jp nz, Jump_000_3480                          ; $523a: $c2 $80 $34

    pop bc                                        ; $523d: $c1
    ld c, h                                       ; $523e: $4c
    ld b, b                                       ; $523f: $40
    sub d                                         ; $5240: $92
    ld b, $00                                     ; $5241: $06 $00
    sbc c                                         ; $5243: $99
    and d                                         ; $5244: $a2
    inc a                                         ; $5245: $3c
    ld h, l                                       ; $5246: $65
    ld [hl], d                                    ; $5247: $72
    db $e4                                        ; $5248: $e4
    ld c, e                                       ; $5249: $4b
    ld h, d                                       ; $524a: $62
    ld [c], a                                     ; $524b: $e2
    and d                                         ; $524c: $a2
    ld a, [hl]                                    ; $524d: $7e
    add [hl]                                      ; $524e: $86
    pop bc                                        ; $524f: $c1
    and d                                         ; $5250: $a2
    ld a, [hl]                                    ; $5251: $7e
    ld b, b                                       ; $5252: $40
    nop                                           ; $5253: $00
    ld b, h                                       ; $5254: $44
    add b                                         ; $5255: $80
    ret nz                                        ; $5256: $c0

    ld [c], a                                     ; $5257: $e2
    add d                                         ; $5258: $82
    add [hl]                                      ; $5259: $86
    ld b, e                                       ; $525a: $43
    inc h                                         ; $525b: $24
    inc sp                                        ; $525c: $33
    ld b, $8e                                     ; $525d: $06 $8e
    ld h, $29                                     ; $525f: $26 $29
    inc hl                                        ; $5261: $23
    ld [$0024], sp                                ; $5262: $08 $24 $00
    push bc                                       ; $5265: $c5
    jr nz, jr_069_52a5                            ; $5266: $20 $3d

    and d                                         ; $5268: $a2
    add l                                         ; $5269: $85
    ld h, c                                       ; $526a: $61
    ret nz                                        ; $526b: $c0

    add sp, $30                                   ; $526c: $e8 $30
    ld [hl+], a                                   ; $526e: $22
    ret nz                                        ; $526f: $c0

    db $ec                                        ; $5270: $ec
    add b                                         ; $5271: $80
    db $e4                                        ; $5272: $e4
    cp $66                                        ; $5273: $fe $66
    nop                                           ; $5275: $00
    ld [bc], a                                    ; $5276: $02
    push hl                                       ; $5277: $e5
    ld a, [hl]                                    ; $5278: $7e
    pop bc                                        ; $5279: $c1
    cp a                                          ; $527a: $bf
    db $e3                                        ; $527b: $e3
    res 4, e                                      ; $527c: $cb $a3
    ld b, d                                       ; $527e: $42
    add d                                         ; $527f: $82
    sbc b                                         ; $5280: $98
    dec b                                         ; $5281: $05
    add b                                         ; $5282: $80
    jp hl                                         ; $5283: $e9


    xor a                                         ; $5284: $af
    ld [hl+], a                                   ; $5285: $22
    add b                                         ; $5286: $80
    ld [hl+], a                                   ; $5287: $22
    jp Jump_069_4243                              ; $5288: $c3 $43 $42


    ld a, $a3                                     ; $528b: $3e $a3
    ld a, l                                       ; $528d: $7d
    add b                                         ; $528e: $80
    ld a, $e4                                     ; $528f: $3e $e4
    cp a                                          ; $5291: $bf
    nop                                           ; $5292: $00
    and d                                         ; $5293: $a2
    call nz, $206d                                ; $5294: $c4 $6d $20
    sbc b                                         ; $5297: $98
    ld [$c3f2], sp                                ; $5298: $08 $f2 $c3
    nop                                           ; $529b: $00
    and $2b                                       ; $529c: $e6 $2b
    ld h, h                                       ; $529e: $64
    ld b, e                                       ; $529f: $43
    and d                                         ; $52a0: $a2
    ld c, l                                       ; $52a1: $4d
    add a                                         ; $52a2: $87
    inc bc                                        ; $52a3: $03
    ret nz                                        ; $52a4: $c0

jr_069_52a5:
    ld hl, $6b01                                  ; $52a5: $21 $01 $6b
    add b                                         ; $52a8: $80
    ld h, c                                       ; $52a9: $61
    add e                                         ; $52aa: $83
    add d                                         ; $52ab: $82
    ld b, d                                       ; $52ac: $42
    add d                                         ; $52ad: $82
    sbc b                                         ; $52ae: $98
    ld [$a5f8], sp                                ; $52af: $08 $f8 $a5
    ld [$68c5], a                                 ; $52b2: $ea $c5 $68
    ld h, a                                       ; $52b5: $67
    nop                                           ; $52b6: $00
    sub b                                         ; $52b7: $90
    ld b, c                                       ; $52b8: $41
    ld b, c                                       ; $52b9: $41
    ld bc, $02bf                                  ; $52ba: $01 $bf $02
    jp nz, $5da2                                  ; $52bd: $c2 $a2 $5d

    pop bc                                        ; $52c0: $c1
    rra                                           ; $52c1: $1f
    ld h, d                                       ; $52c2: $62
    inc bc                                        ; $52c3: $03
    add a                                         ; $52c4: $87
    ld d, h                                       ; $52c5: $54
    ld h, l                                       ; $52c6: $65
    nop                                           ; $52c7: $00
    ld [hl], d                                    ; $52c8: $72
    ld h, $65                                     ; $52c9: $26 $65
    add sp, -$42                                  ; $52cb: $e8 $be
    ld bc, $613e                                  ; $52cd: $01 $3e $61
    inc a                                         ; $52d0: $3c
    add b                                         ; $52d1: $80
    db $ed                                        ; $52d2: $ed
    ld b, h                                       ; $52d3: $44
    ld de, $8360                                  ; $52d4: $11 $60 $83
    adc h                                         ; $52d7: $8c
    ld b, b                                       ; $52d8: $40
    cp d                                          ; $52d9: $ba
    ld [bc], a                                    ; $52da: $02
    add b                                         ; $52db: $80
    add l                                         ; $52dc: $85
    ld c, c                                       ; $52dd: $49
    ld bc, $6768                                  ; $52de: $01 $68 $67
    ld a, h                                       ; $52e1: $7c
    ld [hl+], a                                   ; $52e2: $22

jr_069_52e3:
    jp $2b41                                      ; $52e3: $c3 $41 $2b


    ld b, h                                       ; $52e6: $44
    and d                                         ; $52e7: $a2
    nop                                           ; $52e8: $00
    ld a, $42                                     ; $52e9: $3e $42
    and c                                         ; $52eb: $a1
    jp $8b03                                      ; $52ec: $c3 $03 $8b


    ld b, b                                       ; $52ef: $40
    ld b, d                                       ; $52f0: $42
    ld [hl], d                                    ; $52f1: $72
    ld h, $68                                     ; $52f2: $26 $68
    ld l, b                                       ; $52f4: $68
    cp a                                          ; $52f5: $bf
    and e                                         ; $52f6: $a3
    ld b, c                                       ; $52f7: $41
    jp $8300                                      ; $52f8: $c3 $00 $83


    ld b, e                                       ; $52fb: $43
    jr jr_069_52e3                                ; $52fc: $18 $e5

    ret nz                                        ; $52fe: $c0

    db $ec                                        ; $52ff: $ec
    xor l                                         ; $5300: $ad
    ld hl, $edc0                                  ; $5301: $21 $c0 $ed
    ld [hl], e                                    ; $5304: $73
    add d                                         ; $5305: $82
    cp $40                                        ; $5306: $fe $40
    ret nz                                        ; $5308: $c0

    ld [c], a                                     ; $5309: $e2
    nop                                           ; $530a: $00
    cp a                                          ; $530b: $bf
    pop hl                                        ; $530c: $e1
    add b                                         ; $530d: $80
    push hl                                       ; $530e: $e5
    rst $00                                       ; $530f: $c7
    and c                                         ; $5310: $a1
    sbc b                                         ; $5311: $98
    add hl, bc                                    ; $5312: $09
    ld a, [hl-]                                   ; $5313: $3a
    and c                                         ; $5314: $a1
    ld b, b                                       ; $5315: $40
    ld b, b                                       ; $5316: $40
    ld [hl], d                                    ; $5317: $72
    dec h                                         ; $5318: $25
    ret nz                                        ; $5319: $c0

    ld [$7e00], a                                 ; $531a: $ea $00 $7e
    nop                                           ; $531d: $00
    ld b, b                                       ; $531e: $40
    ld h, h                                       ; $531f: $64
    ld b, c                                       ; $5320: $41
    inc hl                                        ; $5321: $23
    sub h                                         ; $5322: $94
    add e                                         ; $5323: $83
    ld [bc], a                                    ; $5324: $02
    ld h, h                                       ; $5325: $64
    ld b, e                                       ; $5326: $43
    ld h, [hl]                                    ; $5327: $66
    dec l                                         ; $5328: $2d
    and c                                         ; $5329: $a1
    ld a, [hl]                                    ; $532a: $7e
    call nz, $8000                                ; $532b: $c4 $00 $80
    ld [$027d], a                                 ; $532e: $ea $7d $02
    ret nz                                        ; $5331: $c0

    and d                                         ; $5332: $a2
    inc bc                                        ; $5333: $03
    ld h, d                                       ; $5334: $62
    add b                                         ; $5335: $80
    ld h, b                                       ; $5336: $60
    jp nc, $c1e8                                  ; $5337: $d2 $e8 $c1

    inc h                                         ; $533a: $24
    add hl, sp                                    ; $533b: $39
    ld [hl+], a                                   ; $533c: $22
    ld b, b                                       ; $533d: $40
    dec bc                                        ; $533e: $0b
    inc hl                                        ; $533f: $23
    ld [hl], a                                    ; $5340: $77
    inc bc                                        ; $5341: $03
    dec a                                         ; $5342: $3d
    rlca                                          ; $5343: $07
    ld c, h                                       ; $5344: $4c
    add e                                         ; $5345: $83
    ld [bc], a                                    ; $5346: $02
    jp $c2bf                                      ; $5347: $c3 $bf $c2


    ld c, l                                       ; $534a: $4d
    jp c, $8022                                   ; $534b: $da $22 $80

    rla                                           ; $534e: $17
    ld b, h                                       ; $534f: $44
    ld b, [hl]                                    ; $5350: $46
    ld [c], a                                     ; $5351: $e2
    dec [hl]                                      ; $5352: $35
    ld b, c                                       ; $5353: $41
    ld b, b                                       ; $5354: $40
    ld b, e                                       ; $5355: $43
    cp a                                          ; $5356: $bf
    add a                                         ; $5357: $87
    ret nz                                        ; $5358: $c0

    db $ed                                        ; $5359: $ed
    ld bc, $2d86                                  ; $535a: $01 $86 $2d
    add b                                         ; $535d: $80
    and l                                         ; $535e: $a5
    ld b, d                                       ; $535f: $42
    rla                                           ; $5360: $17
    ld b, h                                       ; $5361: $44
    adc $a6                                       ; $5362: $ce $a6
    ret nz                                        ; $5364: $c0

    jp $a26b                                      ; $5365: $c3 $6b $a2


    ld a, [hl]                                    ; $5368: $7e
    inc hl                                        ; $5369: $23
    ld h, $26                                     ; $536a: $26 $26
    ld l, l                                       ; $536c: $6d
    ld [bc], a                                    ; $536d: $02
    ld [hl], e                                    ; $536e: $73
    add b                                         ; $536f: $80
    ld l, l                                       ; $5370: $6d
    ccf                                           ; $5371: $3f
    jp nz, $c280                                  ; $5372: $c2 $80 $c2

    rst $38                                       ; $5375: $ff
    ld h, c                                       ; $5376: $61
    ld b, c                                       ; $5377: $41
    add h                                         ; $5378: $84
    rst $10                                       ; $5379: $d7
    ld b, h                                       ; $537a: $44
    adc $a3                                       ; $537b: $ce $a3
    nop                                           ; $537d: $00
    dec c                                         ; $537e: $0d
    ld b, e                                       ; $537f: $43
    ld h, a                                       ; $5380: $67
    and $e0                                       ; $5381: $e6 $e0
    ld hl, $6561                                  ; $5383: $21 $61 $65
    ld a, e                                       ; $5386: $7b
    ld bc, $4100                                  ; $5387: $01 $00 $41
    add d                                         ; $538a: $82
    and h                                         ; $538b: $a4
    sra c                                         ; $538c: $cb $29
    nop                                           ; $538e: $00
    adc $a6                                       ; $538f: $ce $a6
    add l                                         ; $5391: $85
    add e                                         ; $5392: $83
    ld [hl], $80                                  ; $5393: $36 $80
    ld a, [hl]                                    ; $5395: $7e
    dec h                                         ; $5396: $25
    ei                                            ; $5397: $fb
    ld h, d                                       ; $5398: $62
    ld a, e                                       ; $5399: $7b
    rlca                                          ; $539a: $07
    ld a, a                                       ; $539b: $7f
    ret nz                                        ; $539c: $c0

    inc bc                                        ; $539d: $03
    and d                                         ; $539e: $a2
    nop                                           ; $539f: $00
    add d                                         ; $53a0: $82

Jump_069_53a1:
    and d                                         ; $53a1: $a2
    ret nz                                        ; $53a2: $c0

    db $ec                                        ; $53a3: $ec
    ld d, $a2                                     ; $53a4: $16 $a2
    ret nz                                        ; $53a6: $c0

    db $e3                                        ; $53a7: $e3
    ld h, a                                       ; $53a8: $67
    and $32                                       ; $53a9: $e6 $32
    ld b, d                                       ; $53ab: $42
    db $ed                                        ; $53ac: $ed
    ld h, e                                       ; $53ad: $63
    xor a                                         ; $53ae: $af
    call nz, $c500                                ; $53af: $c4 $00 $c5
    ld b, d                                       ; $53b2: $42
    add d                                         ; $53b3: $82
    and e                                         ; $53b4: $a3
    adc b                                         ; $53b5: $88
    xor c                                         ; $53b6: $a9
    ret nz                                        ; $53b7: $c0

    push hl                                       ; $53b8: $e5
    pop bc                                        ; $53b9: $c1
    add h                                         ; $53ba: $84
    or d                                          ; $53bb: $b2
    ld h, $24                                     ; $53bc: $26 $24
    ld h, h                                       ; $53be: $64
    dec sp                                        ; $53bf: $3b
    ld b, $01                                     ; $53c0: $06 $01
    dec c                                         ; $53c2: $0d
    sub c                                         ; $53c3: $91
    ld b, e                                       ; $53c4: $43
    ld b, d                                       ; $53c5: $42
    jp nz, $268b                                  ; $53c6: $c2 $8b $26

    rst $18                                       ; $53c9: $df
    ld b, b                                       ; $53ca: $40
    inc b                                         ; $53cb: $04
    add h                                         ; $53cc: $84
    adc d                                         ; $53cd: $8a
    ld b, c                                       ; $53ce: $41
    or h                                          ; $53cf: $b4
    ld [bc], a                                    ; $53d0: $02
    nop                                           ; $53d1: $00
    ret nz                                        ; $53d2: $c0

    rst $20                                       ; $53d3: $e7
    xor d                                         ; $53d4: $aa
    ld b, h                                       ; $53d5: $44
    ei                                            ; $53d6: $fb
    dec b                                         ; $53d7: $05
    ld l, b                                       ; $53d8: $68
    ld h, e                                       ; $53d9: $63
    ret nz                                        ; $53da: $c0

    db $ec                                        ; $53db: $ec
    ld a, [hl]                                    ; $53dc: $7e
    add $2d                                       ; $53dd: $c6 $2d
    call nz, $a96f                                ; $53df: $c4 $6f $a9
    nop                                           ; $53e2: $00
    xor d                                         ; $53e3: $aa

jr_069_53e4:
    ld b, l                                       ; $53e4: $45
    cp h                                          ; $53e5: $bc
    ld h, h                                       ; $53e6: $64
    add sp, -$5c                                  ; $53e7: $e8 $a4
    ld b, c                                       ; $53e9: $41
    jr nz, @+$5d                                  ; $53ea: $20 $5b

    add $17                                       ; $53ec: $c6 $17
    ld b, b                                       ; $53ee: $40
    sub d                                         ; $53ef: $92
    ld h, h                                       ; $53f0: $64
    db $10                                        ; $53f1: $10
    ld [hl+], a                                   ; $53f2: $22
    nop                                           ; $53f3: $00
    rrca                                          ; $53f4: $0f
    jr nz, jr_069_545e                            ; $53f5: $20 $67

    rst $20                                       ; $53f7: $e7
    or h                                          ; $53f8: $b4
    inc h                                         ; $53f9: $24
    ret nz                                        ; $53fa: $c0

    add h                                         ; $53fb: $84
    ld b, d                                       ; $53fc: $42
    ld h, e                                       ; $53fd: $63
    add c                                         ; $53fe: $81
    ld h, e                                       ; $53ff: $63
    pop bc                                        ; $5400: $c1
    ld h, d                                       ; $5401: $62
    jp nc, $0021                                  ; $5402: $d2 $21 $00

    ld c, a                                       ; $5405: $4f
    ld bc, $22fd                                  ; $5406: $01 $fd $22
    sub c                                         ; $5409: $91
    ld b, c                                       ; $540a: $41
    ld l, [hl]                                    ; $540b: $6e
    ld b, e                                       ; $540c: $43
    ret nz                                        ; $540d: $c0

    add sp, -$1a                                  ; $540e: $e8 $e6
    add $a8                                       ; $5410: $c6 $a8
    ld b, c                                       ; $5412: $41
    ld [bc], a                                    ; $5413: $02
    ld h, e                                       ; $5414: $63
    ld [bc], a                                    ; $5415: $02
    ld [hl], a                                    ; $5416: $77
    ld h, d                                       ; $5417: $62
    dec l                                         ; $5418: $2d
    ld e, $42                                     ; $5419: $1e $42
    sbc h                                         ; $541b: $9c
    ld h, b                                       ; $541c: $60
    sub d                                         ; $541d: $92
    ret nz                                        ; $541e: $c0

    call z, Call_069_5047                         ; $541f: $cc $47 $50
    add h                                         ; $5422: $84
    ld h, a                                       ; $5423: $67
    and $70                                       ; $5424: $e6 $70
    inc [hl]                                      ; $5426: $34
    inc bc                                        ; $5427: $03
    ld h, [hl]                                    ; $5428: $66
    call nz, $2180                                ; $5429: $c4 $80 $21
    jp nz, Jump_000_2d00                          ; $542c: $c2 $00 $2d

    dec bc                                        ; $542f: $0b
    dec hl                                        ; $5430: $2b
    cp a                                          ; $5431: $bf
    inc hl                                        ; $5432: $23
    nop                                           ; $5433: $00
    sub b                                         ; $5434: $90
    dec h                                         ; $5435: $25
    sbc h                                         ; $5436: $9c
    ld b, d                                       ; $5437: $42
    dec de                                        ; $5438: $1b

jr_069_5439:
    ld h, d                                       ; $5439: $62
    ret nz                                        ; $543a: $c0

    and $ff                                       ; $543b: $e6 $ff
    db $e4                                        ; $543d: $e4
    pop hl                                        ; $543e: $e1
    ld h, e                                       ; $543f: $63

Jump_069_5440:
    ld h, $c4                                     ; $5440: $26 $c4
    add b                                         ; $5442: $80
    daa                                           ; $5443: $27
    nop                                           ; $5444: $00
    ret nz                                        ; $5445: $c0

    ldh [$80], a                                  ; $5446: $e0 $80
    ld hl, $2590                                  ; $5448: $21 $90 $25
    ld c, c                                       ; $544b: $49
    inc h                                         ; $544c: $24
    halt                                          ; $544d: $76
    add l                                         ; $544e: $85
    ld [hl], $a6                                  ; $544f: $36 $a6
    ld h, c                                       ; $5451: $61
    ld h, d                                       ; $5452: $62
    jp c, Jump_000_0065                           ; $5453: $da $65 $00

    ldh a, [rNR43]                                ; $5456: $f0 $22
    ld bc, $7f83                                  ; $5458: $01 $83 $7f
    jr nz, jr_069_53e4                            ; $545b: $20 $87

    nop                                           ; $545d: $00

jr_069_545e:
    add d                                         ; $545e: $82
    ld b, d                                       ; $545f: $42
    ld e, d                                       ; $5460: $5a
    ld h, d                                       ; $5461: $62
    add hl, bc                                    ; $5462: $09
    ld h, $c0                                     ; $5463: $26 $c0
    jp hl                                         ; $5465: $e9


    ld [$43f8], sp                                ; $5466: $08 $f8 $43
    ld h, e                                       ; $5469: $63
    add c                                         ; $546a: $81
    ld sp, $2d47                                  ; $546b: $31 $47 $2d
    ret nz                                        ; $546e: $c0

jr_069_546f:
    jr nz, jr_069_546f                            ; $546f: $20 $fe

    ldh [$81], a                                  ; $5471: $e0 $81
    ld b, b                                       ; $5473: $40
    ld [bc], a                                    ; $5474: $02
    ld h, c                                       ; $5475: $61
    nop                                           ; $5476: $00
    ret z                                         ; $5477: $c8

    pop bc                                        ; $5478: $c1
    ld e, d                                       ; $5479: $5a
    ld h, d                                       ; $547a: $62
    ret nc                                        ; $547b: $d0

jr_069_547c:
    inc b                                         ; $547c: $04
    ld b, b                                       ; $547d: $40
    add sp, -$80                                  ; $547e: $e8 $80
    push hl                                       ; $5480: $e5
    and e                                         ; $5481: $a3
    jr z, jr_069_547c                             ; $5482: $28 $f8

    jp hl                                         ; $5484: $e9


    jp nz, $0000                                  ; $5485: $c2 $00 $00

    ret nz                                        ; $5488: $c0

    jp hl                                         ; $5489: $e9


    ld d, l                                       ; $548a: $55
    ld [hl+], a                                   ; $548b: $22
    ld e, b                                       ; $548c: $58
    inc hl                                        ; $548d: $23
    adc b                                         ; $548e: $88
    add h                                         ; $548f: $84
    ld b, c                                       ; $5490: $41
    db $e4                                        ; $5491: $e4
    ld [bc], a                                    ; $5492: $02
    ld b, h                                       ; $5493: $44
    inc e                                         ; $5494: $1c
    ld b, c                                       ; $5495: $41
    jr z, jr_069_5439                             ; $5496: $28 $a1

    inc bc                                        ; $5498: $03
    ld c, $2d                                     ; $5499: $0e $2d
    rst $38                                       ; $549b: $ff
    and $02                                       ; $549c: $e6 $02
    ld h, l                                       ; $549e: $65
    and $c5                                       ; $549f: $e6 $c5
    ret nc                                        ; $54a1: $d0

    inc b                                         ; $54a2: $04
    ld l, h                                       ; $54a3: $6c
    ld h, h                                       ; $54a4: $64
    ld hl, sp+$27                                 ; $54a5: $f8 $27
    inc h                                         ; $54a7: $24
    or l                                          ; $54a8: $b5
    ld b, $dc                                     ; $54a9: $06 $dc
    ld [bc], a                                    ; $54ab: $02
    dec l                                         ; $54ac: $2d
    dec [hl]                                      ; $54ad: $35
    nop                                           ; $54ae: $00
    ret                                           ; $54af: $c9


    and c                                         ; $54b0: $a1
    ld l, l                                       ; $54b1: $6d
    ld e, h                                       ; $54b2: $5c
    dec h                                         ; $54b3: $25
    and $c5                                       ; $54b4: $e6 $c5
    nop                                           ; $54b6: $00
    push de                                       ; $54b7: $d5
    and $32                                       ; $54b8: $e6 $32
    ld h, c                                       ; $54ba: $61
    or e                                          ; $54bb: $b3
    ldh [rP1], a                                  ; $54bc: $e0 $00
    nop                                           ; $54be: $00
    nop                                           ; $54bf: $00
    sbc l                                         ; $54c0: $9d
    and b                                         ; $54c1: $a0
    rst $38                                       ; $54c2: $ff
    rst $20                                       ; $54c3: $e7
    ret c                                         ; $54c4: $d8

    push de                                       ; $54c5: $d5
    ret c                                         ; $54c6: $d8

    ld a, [c]                                     ; $54c7: $f2
    add sp, -$0b                                  ; $54c8: $e8 $f5
    db $ed                                        ; $54ca: $ed
    rst $10                                       ; $54cb: $d7
    rst $18                                       ; $54cc: $df
    jp nc, $d1d0                                  ; $54cd: $d2 $d0 $d1

    ret nc                                        ; $54d0: $d0

    jp nc, $ebde                                  ; $54d1: $d2 $de $eb

    ret c                                         ; $54d4: $d8

    push de                                       ; $54d5: $d5
    db $dd                                        ; $54d6: $dd
    push de                                       ; $54d7: $d5
    pop bc                                        ; $54d8: $c1
    add sp, -$2e                                  ; $54d9: $e8 $d2
    ret nc                                        ; $54db: $d0

    jp nc, $e5be                                  ; $54dc: $d2 $be $e5

    db $eb                                        ; $54df: $eb
    and b                                         ; $54e0: $a0
    db $e3                                        ; $54e1: $e3
    and b                                         ; $54e2: $a0
    ld [$e5a6], a                                 ; $54e3: $ea $a6 $e5
    db $f4                                        ; $54e6: $f4
    ldh [$a6], a                                  ; $54e7: $e0 $a6
    pop hl                                        ; $54e9: $e1
    jp c, $d4d7                                   ; $54ea: $da $d7 $d4

    ld a, [hl-]                                   ; $54ed: $3a
    rst $18                                       ; $54ee: $df
    ldh [$d7], a                                  ; $54ef: $e0 $d7
    jp $d6ea                                      ; $54f1: $c3 $ea $d6


    call nc, $86d6                                ; $54f4: $d4 $d6 $86
    rst $20                                       ; $54f7: $e7
    sbc a                                         ; $54f8: $9f
    and $ef                                       ; $54f9: $e6 $ef
    db $e4                                        ; $54fb: $e4
    push hl                                       ; $54fc: $e5
    db $ec                                        ; $54fd: $ec
    db $ed                                        ; $54fe: $ed
    ld l, c                                       ; $54ff: $69
    ldh [$9f], a                                  ; $5500: $e0 $9f
    sbc l                                         ; $5502: $9d
    sbc l                                         ; $5503: $9d
    rst $28                                       ; $5504: $ef
    sbc l                                         ; $5505: $9d
    and d                                         ; $5506: $a2
    sbc a                                         ; $5507: $9f
    and b                                         ; $5508: $a0
    db $f4                                        ; $5509: $f4
    pop hl                                        ; $550a: $e1
    db $d3                                        ; $550b: $d3
    ret nc                                        ; $550c: $d0

    db $d3                                        ; $550d: $d3
    rst $38                                       ; $550e: $ff
    and b                                         ; $550f: $a0
    call c, $d9da                                 ; $5510: $dc $da $d9
    rst $10                                       ; $5513: $d7
    call nc, $dad7                                ; $5514: $d4 $d7 $da
    add [hl]                                      ; $5517: $86
    ld d, b                                       ; $5518: $50
    rst $20                                       ; $5519: $e7
    db $d3                                        ; $551a: $d3
    sub $af                                       ; $551b: $d6 $af
    pop hl                                        ; $551d: $e1
    push af                                       ; $551e: $f5
    db $e3                                        ; $551f: $e3
    ldh [$e0], a                                  ; $5520: $e0 $e0
    sbc a                                         ; $5522: $9f
    rst $20                                       ; $5523: $e7
    and $fd                                       ; $5524: $e6 $fd
    rst $20                                       ; $5526: $e7
    jp $a2e0                                      ; $5527: $c3 $e0 $a2


    sbc l                                         ; $552a: $9d
    or [hl]                                       ; $552b: $b6
    sub b                                         ; $552c: $90
    jp $d790                                      ; $552d: $c3 $90 $d7


    sub b                                         ; $5530: $90
    or [hl]                                       ; $5531: $b6
    sbc a                                         ; $5532: $9f
    ld b, h                                       ; $5533: $44
    ld [c], a                                     ; $5534: $e2
    call nc, $e088                                ; $5535: $d4 $88 $e0
    call c, Call_000_3fdb                         ; $5538: $dc $db $3f
    jp c, $dad9                                   ; $553b: $da $d9 $da

    call c, $dfde                                 ; $553e: $dc $de $df
    ld d, c                                       ; $5541: $51
    and $2e                                       ; $5542: $e6 $2e
    ldh [$e3], a                                  ; $5544: $e0 $e3
    jp nc, Jump_000_24d4                          ; $5546: $d2 $d4 $24

    db $e3                                        ; $5549: $e3
    ldh [$e2], a                                  ; $554a: $e0 $e2
    sbc a                                         ; $554c: $9f
    push hl                                       ; $554d: $e5
    add sp, -$17                                  ; $554e: $e8 $e9
    and b                                         ; $5550: $a0
    ld a, a                                       ; $5551: $7f
    sbc a                                         ; $5552: $9f
    or [hl]                                       ; $5553: $b6
    sub c                                         ; $5554: $91
    ld b, l                                       ; $5555: $45
    ld b, e                                       ; $5556: $43
    sub c                                         ; $5557: $91
    call nz, $e5bf                                ; $5558: $c4 $bf $e5
    db $fc                                        ; $555b: $fc
    rst $00                                       ; $555c: $c7
    ldh [$30], a                                  ; $555d: $e0 $30
    pop hl                                        ; $555f: $e1

Jump_069_5560:
    call c, $dcdb                                 ; $5560: $dc $db $dc
    and b                                         ; $5563: $a0
    ldh [$e1], a                                  ; $5564: $e0 $e1
    ld l, $26                                     ; $5566: $2e $26
    db $e4                                        ; $5568: $e4
    db $d3                                        ; $5569: $d3
    ret nc                                        ; $556a: $d0

    db $dd                                        ; $556b: $dd
    ld [hl], b                                    ; $556c: $70
    ldh [$d9], a                                  ; $556d: $e0 $d9
    ret nz                                        ; $556f: $c0

    jp nz, $e1e0                                  ; $5570: $c2 $e0 $e1

    ld sp, hl                                     ; $5573: $f9
    db $eb                                        ; $5574: $eb
    sbc a                                         ; $5575: $9f
    db $e4                                        ; $5576: $e4
    rlca                                          ; $5577: $07
    pop hl                                        ; $5578: $e1
    sbc a                                         ; $5579: $9f
    or [hl]                                       ; $557a: $b6
    sub b                                         ; $557b: $90
    ld c, d                                       ; $557c: $4a
    ld c, c                                       ; $557d: $49
    ld a, a                                       ; $557e: $7f
    ld c, c                                       ; $557f: $49
    ld d, d                                       ; $5580: $52
    sub c                                         ; $5581: $91
    call nz, $9090                                ; $5582: $c4 $90 $90
    jp $e17e                                      ; $5585: $c3 $7e $e1


    db $ec                                        ; $5588: $ec
    rst $00                                       ; $5589: $c7
    pop hl                                        ; $558a: $e1
    sub a                                         ; $558b: $97
    call nz, $e3e2                                ; $558c: $c4 $e2 $e3
    ld b, c                                       ; $558f: $41
    push hl                                       ; $5590: $e5
    ret nc                                        ; $5591: $d0

    pop de                                        ; $5592: $d1
    db $dd                                        ; $5593: $dd
    rlca                                          ; $5594: $07
    reti                                          ; $5595: $d9


    db $dd                                        ; $5596: $dd
    ret nc                                        ; $5597: $d0

    add b                                         ; $5598: $80
    jp nz, $e0a7                                  ; $5599: $c2 $a7 $e0

    dec c                                         ; $559c: $0d
    ld [c], a                                     ; $559d: $e2
    ret c                                         ; $559e: $d8

    db $e4                                        ; $559f: $e4
    pop bc                                        ; $55a0: $c1
    ldh [rIE], a                                  ; $55a1: $e0 $ff
    jp $5455                                      ; $55a3: $c3 $55 $54


    ld e, c                                       ; $55a6: $59
    ld d, e                                       ; $55a7: $53
    ld a, c                                       ; $55a8: $79
    ld a, h                                       ; $55a9: $7c
    ld a, l                                       ; $55aa: $7d
    ld [bc], a                                    ; $55ab: $02
    cp l                                          ; $55ac: $bd
    ldh [$9e], a                                  ; $55ad: $e0 $9e
    sub d                                         ; $55af: $92
    ret z                                         ; $55b0: $c8

    ld e, a                                       ; $55b1: $5f
    jp nz, $c358                                  ; $55b2: $c2 $58 $c3

    or c                                          ; $55b5: $b1
    pop bc                                        ; $55b6: $c1
    ld b, b                                       ; $55b7: $40
    push hl                                       ; $55b8: $e5
    db $e3                                        ; $55b9: $e3
    add sp, -$02                                  ; $55ba: $e8 $fe
    pop bc                                        ; $55bc: $c1
    db $e3                                        ; $55bd: $e3
    sub b                                         ; $55be: $90
    call nz, Call_069_7a79                        ; $55bf: $c4 $79 $7a
    ld a, e                                       ; $55c2: $7b
    ld a, e                                       ; $55c3: $7b
    adc a                                         ; $55c4: $8f
    rrca                                          ; $55c5: $0f
    ld b, [hl]                                    ; $55c6: $46
    ld a, a                                       ; $55c7: $7f
    ld a, l                                       ; $55c8: $7d
    sub c                                         ; $55c9: $91
    ret nz                                        ; $55ca: $c0

    ldh [$75], a                                  ; $55cb: $e0 $75
    pop bc                                        ; $55cd: $c1
    sub d                                         ; $55ce: $92
    jp $c25f                                      ; $55cf: $c3 $5f $c2


    ld c, h                                       ; $55d2: $4c
    jp nc, Jump_000_2cc2                          ; $55d3: $d2 $c2 $2c

    ldh [$d7], a                                  ; $55d6: $e0 $d7
    call nc, $e540                                ; $55d8: $d4 $40 $e5
    dec b                                         ; $55db: $05
    ret nz                                        ; $55dc: $c0

    jp nc, $c074                                  ; $55dd: $d2 $74 $c0

    db $fc                                        ; $55e0: $fc
    and b                                         ; $55e1: $a0
    db $e3                                        ; $55e2: $e3
    pop bc                                        ; $55e3: $c1
    pop hl                                        ; $55e4: $e1
    sub b                                         ; $55e5: $90
    ld a, c                                       ; $55e6: $79
    ld a, [hl]                                    ; $55e7: $7e
    ld l, $26                                     ; $55e8: $2e $26
    ld a, [hl+]                                   ; $55ea: $2a
    sbc a                                         ; $55eb: $9f
    ld b, c                                       ; $55ec: $41
    ld b, l                                       ; $55ed: $45
    xor [hl]                                      ; $55ee: $ae
    ld a, a                                       ; $55ef: $7f
    ld a, l                                       ; $55f0: $7d
    cp l                                          ; $55f1: $bd
    call nz, $c392                                ; $55f2: $c4 $92 $c3
    sub $b8                                       ; $55f5: $d6 $b8
    sub a                                         ; $55f7: $97
    pop bc                                        ; $55f8: $c1
    or d                                          ; $55f9: $b2
    jp nz, $c2b1                                  ; $55fa: $c2 $b1 $c2

    reti                                          ; $55fd: $d9


    jp c, Jump_000_33db                           ; $55fe: $da $db $33

    push hl                                       ; $5601: $e5
    sub $ea                                       ; $5602: $d6 $ea
    or e                                          ; $5604: $b3
    pop bc                                        ; $5605: $c1
    sub $a7                                       ; $5606: $d6 $a7
    pop hl                                        ; $5608: $e1
    and c                                         ; $5609: $a1
    adc b                                         ; $560a: $88
    ret nz                                        ; $560b: $c0

    sub c                                         ; $560c: $91
    add b                                         ; $560d: $80
    ld b, h                                       ; $560e: $44
    rst $38                                       ; $560f: $ff
    ld l, $20                                     ; $5610: $2e $20
    jr nz, jr_069_563a                            ; $5612: $20 $26

    ld a, [hl+]                                   ; $5614: $2a
    xor a                                         ; $5615: $af
    ld b, [hl]                                    ; $5616: $46
    add c                                         ; $5617: $81
    rla                                           ; $5618: $17
    sub b                                         ; $5619: $90
    sub b                                         ; $561a: $90
    and c                                         ; $561b: $a1
    sub d                                         ; $561c: $92
    rst $00                                       ; $561d: $c7
    rst $10                                       ; $561e: $d7
    ld d, a                                       ; $561f: $57
    jp nz, $c0b2                                  ; $5620: $c2 $b2 $c0

    ld a, [bc]                                    ; $5623: $0a
    db $e3                                        ; $5624: $e3
    add $e9                                       ; $5625: $c6 $e9
    jp $e5e4                                      ; $5627: $c3 $e4 $e5


    rra                                           ; $562a: $1f
    ret nz                                        ; $562b: $c0

    ld [c], a                                     ; $562c: $e2
    and e                                         ; $562d: $a3
    and b                                         ; $562e: $a0
    and c                                         ; $562f: $a1
    sbc [hl]                                      ; $5630: $9e
    sub b                                         ; $5631: $90
    rst $38                                       ; $5632: $ff
    call nz, Call_069_7990                        ; $5633: $c4 $90 $79
    adc l                                         ; $5636: $8d
    ld c, d                                       ; $5637: $4a
    ld d, [hl]                                    ; $5638: $56
    cp l                                          ; $5639: $bd

jr_069_563a:
    jr nz, @+$41                                  ; $563a: $20 $3f

    jr nz, jr_069_5668                            ; $563c: $20 $2a

    ld b, l                                       ; $563e: $45
    add e                                         ; $563f: $83
    add h                                         ; $5640: $84
    sub b                                         ; $5641: $90
    rst $38                                       ; $5642: $ff
    jp nz, $c492                                  ; $5643: $c2 $92 $c4

    pop bc                                        ; $5646: $c1
    db $dd                                        ; $5647: $dd
    cp a                                          ; $5648: $bf
    and c                                         ; $5649: $a1
    or d                                          ; $564a: $b2
    jp nz, $a09e                                  ; $564b: $c2 $9e $a0

    ld b, l                                       ; $564e: $45
    and l                                         ; $564f: $a5
    db $10                                        ; $5650: $10
    ret nz                                        ; $5651: $c0

    rst $10                                       ; $5652: $d7
    jp nc, $dde5                                  ; $5653: $d2 $e5 $dd

    ld [c], a                                     ; $5656: $e2
    and c                                         ; $5657: $a1
    db $dd                                        ; $5658: $dd
    ld hl, sp-$5f                                 ; $5659: $f8 $a1
    ld bc, $80e1                                  ; $565b: $01 $e1 $80
    ld b, [hl]                                    ; $565e: $46
    ld d, l                                       ; $565f: $55
    rst $38                                       ; $5660: $ff
    ld h, c                                       ; $5661: $61
    add hl, sp                                    ; $5662: $39
    ld [hl+], a                                   ; $5663: $22
    ld [hl+], a                                   ; $5664: $22
    ld b, b                                       ; $5665: $40
    add e                                         ; $5666: $83
    add [hl]                                      ; $5667: $86

jr_069_5668:
    add l                                         ; $5668: $85
    inc c                                         ; $5669: $0c
    db $fd                                        ; $566a: $fd
    and e                                         ; $566b: $a3
    sub d                                         ; $566c: $92
    call nz, $d3d0                                ; $566d: $c4 $d0 $d3
    cp a                                          ; $5670: $bf
    and h                                         ; $5671: $a4
    sbc [hl]                                      ; $5672: $9e
    and d                                         ; $5673: $a2
    inc b                                         ; $5674: $04
    and h                                         ; $5675: $a4
    db $10                                        ; $5676: $10
    ret nz                                        ; $5677: $c0

    cpl                                           ; $5678: $2f
    jp c, $d0d3                                   ; $5679: $da $d3 $d0

    ret nc                                        ; $567c: $d0

    ld [hl], d                                    ; $567d: $72
    ret nz                                        ; $567e: $c0

    pop de                                        ; $567f: $d1
    and $c2                                       ; $5680: $e6 $c2
    ld b, d                                       ; $5682: $42
    ret nz                                        ; $5683: $c0

    rst $38                                       ; $5684: $ff
    add d                                         ; $5685: $82
    add e                                         ; $5686: $83
    ld b, l                                       ; $5687: $45
    ld d, e                                       ; $5688: $53
    ld a, [hl-]                                   ; $5689: $3a
    ld l, h                                       ; $568a: $6c
    ld [hl], d                                    ; $568b: $72
    adc b                                         ; $568c: $88
    sbc a                                         ; $568d: $9f
    add a                                         ; $568e: $87
    add l                                         ; $568f: $85
    sub c                                         ; $5690: $91
    or [hl]                                       ; $5691: $b6
    sbc a                                         ; $5692: $9f
    call $92a1                                    ; $5693: $cd $a1 $92
    call nz, $91d4                                ; $5696: $c4 $d4 $91
    rst $10                                       ; $5699: $d7
    scf                                           ; $569a: $37
    ret nz                                        ; $569b: $c0

    ret c                                         ; $569c: $d8

    adc d                                         ; $569d: $8a
    res 0, e                                      ; $569e: $cb $83
    call c, $c0b4                                 ; $56a0: $dc $b4 $c0
    ld [hl], c                                    ; $56a3: $71
    jp nz, $fdd7                                  ; $56a4: $c2 $d7 $fd

    and b                                         ; $56a7: $a0
    sbc a                                         ; $56a8: $9f
    and b                                         ; $56a9: $a0
    sbc [hl]                                      ; $56aa: $9e
    sub b                                         ; $56ab: $90
    add l                                         ; $56ac: $85
    add [hl]                                      ; $56ad: $86
    add e                                         ; $56ae: $83
    ld b, b                                       ; $56af: $40
    rra                                           ; $56b0: $1f
    ld l, h                                       ; $56b1: $6c
    ld l, a                                       ; $56b2: $6f
    ld l, [hl]                                    ; $56b3: $6e
    add hl, sp                                    ; $56b4: $39
    ld b, [hl]                                    ; $56b5: $46
    pop bc                                        ; $56b6: $c1
    ldh [$cd], a                                  ; $56b7: $e0 $cd
    and c                                         ; $56b9: $a1
    sub d                                         ; $56ba: $92
    push bc                                       ; $56bb: $c5
    adc h                                         ; $56bc: $8c
    ld b, $e1                                     ; $56bd: $06 $e1
    ret c                                         ; $56bf: $d8

    adc c                                         ; $56c0: $89
    and b                                         ; $56c1: $a0
    and b                                         ; $56c2: $a0
    res 0, h                                      ; $56c3: $cb $84
    or h                                          ; $56c5: $b4
    ret nz                                        ; $56c6: $c0

    ld [hl], c                                    ; $56c7: $71
    jp nz, $fcda                                  ; $56c8: $c2 $da $fc

    sbc a                                         ; $56cb: $9f
    and c                                         ; $56cc: $a1
    add d                                         ; $56cd: $82
    and b                                         ; $56ce: $a0
    add l                                         ; $56cf: $85
    add a                                         ; $56d0: $87
    adc b                                         ; $56d1: $88
    ld [hl], b                                    ; $56d2: $70
    ld l, [hl]                                    ; $56d3: $6e
    dec [hl]                                      ; $56d4: $35
    inc bc                                        ; $56d5: $03
    ld a, [hl-]                                   ; $56d6: $3a
    xor [hl]                                      ; $56d7: $ae
    ld [bc], a                                    ; $56d8: $02
    pop bc                                        ; $56d9: $c1
    call $92a1                                    ; $56da: $cd $a1 $92
    call nz, $a1b8                                ; $56dd: $c4 $b8 $a1
    ld [hl], a                                    ; $56e0: $77
    adc e                                         ; $56e1: $8b
    ld l, d                                       ; $56e2: $6a
    add h                                         ; $56e3: $84
    call nc, $c0b4                                ; $56e4: $d4 $b4 $c0
    ld [hl], c                                    ; $56e7: $71
    jp nz, $9fdc                                  ; $56e8: $c2 $dc $9f

    and d                                         ; $56eb: $a2
    and c                                         ; $56ec: $a1
    adc b                                         ; $56ed: $88
    and b                                         ; $56ee: $a0
    sub c                                         ; $56ef: $91
    ld [hl], $3f                                  ; $56f0: $36 $3f
    dec [hl]                                      ; $56f2: $35
    dec [hl]                                      ; $56f3: $35
    ld [hl], $af                                  ; $56f4: $36 $af
    sub b                                         ; $56f6: $90
    or [hl]                                       ; $56f7: $b6
    cp l                                          ; $56f8: $bd
    add b                                         ; $56f9: $80
    ld [hl], b                                    ; $56fa: $70
    add d                                         ; $56fb: $82
    ldh [$92], a                                  ; $56fc: $e0 $92
    push bc                                       ; $56fe: $c5
    ld [hl], a                                    ; $56ff: $77
    adc h                                         ; $5700: $8c
    ld l, d                                       ; $5701: $6a
    add a                                         ; $5702: $87
    rst $18                                       ; $5703: $df
    and $bf                                       ; $5704: $e6 $bf
    and e                                         ; $5706: $a3
    sub b                                         ; $5707: $90
    xor [hl]                                      ; $5708: $ae
    ld [hl], $c7                                  ; $5709: $36 $c7
    ld a, [hl-]                                   ; $570b: $3a
    xor [hl]                                      ; $570c: $ae
    ld b, [hl]                                    ; $570d: $46
    cp l                                          ; $570e: $bd
    add e                                         ; $570f: $83
    jp nc, $dfc4                                  ; $5710: $d2 $c4 $df

    ld h, c                                       ; $5713: $61
    db $e4                                        ; $5714: $e4
    push hl                                       ; $5715: $e5
    sub b                                         ; $5716: $90
    ld [hl], a                                    ; $5717: $77
    adc e                                         ; $5718: $8b
    ld l, d                                       ; $5719: $6a
    add h                                         ; $571a: $84
    ld [de], a                                    ; $571b: $12
    add l                                         ; $571c: $85
    rlca                                          ; $571d: $07
    add b                                         ; $571e: $80
    sbc a                                         ; $571f: $9f
    add [hl]                                      ; $5720: $86
    add b                                         ; $5721: $80
    rst $38                                       ; $5722: $ff
    pop hl                                        ; $5723: $e1
    call nz, Call_069_441f                        ; $5724: $c4 $1f $44

jr_069_5727:
    ccf                                           ; $5727: $3f
    xor a                                         ; $5728: $af
    ld b, e                                       ; $5729: $43
    xor a                                         ; $572a: $af
    cp $84                                        ; $572b: $fe $84
    sbc h                                         ; $572d: $9c
    and e                                         ; $572e: $a3
    ret nz                                        ; $572f: $c0

    ld h, b                                       ; $5730: $60
    ret nz                                        ; $5731: $c0

    ld h, e                                       ; $5732: $63
    add b                                         ; $5733: $80
    ret c                                         ; $5734: $d8

    add h                                         ; $5735: $84
    add [hl]                                      ; $5736: $86
    ld h, e                                       ; $5737: $63
    di                                            ; $5738: $f3
    push hl                                       ; $5739: $e5
    add e                                         ; $573a: $83
    ld h, e                                       ; $573b: $63
    rlca                                          ; $573c: $07
    add b                                         ; $573d: $80
    sbc a                                         ; $573e: $9f
    or [hl]                                       ; $573f: $b6
    db $fc                                        ; $5740: $fc
    ld c, c                                       ; $5741: $49
    add b                                         ; $5742: $80
    ret z                                         ; $5743: $c8

    add b                                         ; $5744: $80
    sub b                                         ; $5745: $90
    sub c                                         ; $5746: $91
    ld [hl], $ac                                  ; $5747: $36 $ac
    jr c, jr_069_5783                             ; $5749: $38 $38

    sub e                                         ; $574b: $93
    ld [hl], $91                                  ; $574c: $36 $91
    ld a, [c]                                     ; $574e: $f2
    and b                                         ; $574f: $a0
    dec sp                                        ; $5750: $3b
    add b                                         ; $5751: $80
    ld [$61a1], a                                 ; $5752: $ea $a1 $61
    add b                                         ; $5755: $80
    ld h, b                                       ; $5756: $60
    rst $10                                       ; $5757: $d7
    nop                                           ; $5758: $00
    ld h, e                                       ; $5759: $63
    add b                                         ; $575a: $80
    sub [hl]                                      ; $575b: $96
    add c                                         ; $575c: $81
    or b                                          ; $575d: $b0
    add l                                         ; $575e: $85
    ld c, [hl]                                    ; $575f: $4e
    ld h, b                                       ; $5760: $60
    and e                                         ; $5761: $a3
    add e                                         ; $5762: $83
    dec hl                                        ; $5763: $2b
    and e                                         ; $5764: $a3
    add l                                         ; $5765: $85
    add d                                         ; $5766: $82
    inc b                                         ; $5767: $04
    and b                                         ; $5768: $a0
    rst $38                                       ; $5769: $ff
    ld a, h                                       ; $576a: $7c
    ld a, l                                       ; $576b: $7d
    call nz, Call_069_4491                        ; $576c: $c4 $91 $44
    ld a, [hl-]                                   ; $576f: $3a
    xor l                                         ; $5770: $ad
    ld h, d                                       ; $5771: $62
    inc bc                                        ; $5772: $03
    ld h, e                                       ; $5773: $63
    ld h, h                                       ; $5774: $64
    cp l                                          ; $5775: $bd
    add b                                         ; $5776: $80
    cp [hl]                                       ; $5777: $be
    and e                                         ; $5778: $a3
    add b                                         ; $5779: $80
    and e                                         ; $577a: $a3
    ret nz                                        ; $577b: $c0

    ld h, b                                       ; $577c: $60
    dec b                                         ; $577d: $05
    ret z                                         ; $577e: $c8

    add hl, bc                                    ; $577f: $09
    and b                                         ; $5780: $a0
    ldh a, [$50]                                  ; $5781: $f0 $50

jr_069_5783:
    ld h, l                                       ; $5783: $65
    db $dd                                        ; $5784: $dd
    ld h, c                                       ; $5785: $61
    ld [hl], a                                    ; $5786: $77
    and b                                         ; $5787: $a0
    ld b, [hl]                                    ; $5788: $46
    add b                                         ; $5789: $80
    sub c                                         ; $578a: $91
    ld a, c                                       ; $578b: $79
    ld a, [hl]                                    ; $578c: $7e
    ld b, [hl]                                    ; $578d: $46
    cp $c7                                        ; $578e: $fe $c7
    add b                                         ; $5790: $80
    ld b, l                                       ; $5791: $45
    xor [hl]                                      ; $5792: $ae
    add hl, sp                                    ; $5793: $39
    ld h, d                                       ; $5794: $62
    ld h, a                                       ; $5795: $67
    dec [hl]                                      ; $5796: $35
    ld a, [hl-]                                   ; $5797: $3a
    dec c                                         ; $5798: $0d
    ld b, l                                       ; $5799: $45
    cp $80                                        ; $579a: $fe $80
    jp Jump_069_6c9e                              ; $579c: $c3 $9e $6c


    ld h, b                                       ; $579f: $60
    ld b, b                                       ; $57a0: $40
    ld h, b                                       ; $57a1: $60
    ld h, c                                       ; $57a2: $61
    ret nz                                        ; $57a3: $c0

    jr c, jr_069_5727                             ; $57a4: $38 $81

    and b                                         ; $57a6: $a0
    sub l                                         ; $57a7: $95
    add [hl]                                      ; $57a8: $86
    ld l, l                                       ; $57a9: $6d
    pop hl                                        ; $57aa: $e1
    or d                                          ; $57ab: $b2
    and l                                         ; $57ac: $a5
    db $dd                                        ; $57ad: $dd
    ld h, c                                       ; $57ae: $61
    add a                                         ; $57af: $87
    ld h, b                                       ; $57b0: $60
    and c                                         ; $57b1: $a1
    pop bc                                        ; $57b2: $c1
    pop hl                                        ; $57b3: $e1
    xor [hl]                                      ; $57b4: $ae
    rst $38                                       ; $57b5: $ff
    ld b, [hl]                                    ; $57b6: $46
    ld b, l                                       ; $57b7: $45
    ld [hl], $6a                                  ; $57b8: $36 $6a
    ld [hl], $af                                  ; $57ba: $36 $af
    ld b, l                                       ; $57bc: $45
    add b                                         ; $57bd: $80
    ld l, a                                       ; $57be: $6f
    dec a                                         ; $57bf: $3d
    jr c, jr_069_57fb                             ; $57c0: $38 $39

    ld b, l                                       ; $57c2: $45
    cp $80                                        ; $57c3: $fe $80
    call nz, Call_069_6ca1                        ; $57c5: $c4 $a1 $6c
    ld h, b                                       ; $57c8: $60
    ret nz                                        ; $57c9: $c0

    ld b, b                                       ; $57ca: $40
    ld h, b                                       ; $57cb: $60
    ld h, c                                       ; $57cc: $61
    pop bc                                        ; $57cd: $c1
    sub l                                         ; $57ce: $95
    adc c                                         ; $57cf: $89
    ld a, a                                       ; $57d0: $7f
    ld h, c                                       ; $57d1: $61
    ld a, [hl+]                                   ; $57d2: $2a
    add l                                         ; $57d3: $85
    and h                                         ; $57d4: $a4
    ld h, c                                       ; $57d5: $61
    add sp, -$17                                  ; $57d6: $e8 $e9
    db $fc                                        ; $57d8: $fc
    inc bc                                        ; $57d9: $03
    ldh [$82], a                                  ; $57da: $e0 $82
    ldh [$af], a                                  ; $57dc: $e0 $af
    ld b, l                                       ; $57de: $45
    ld [hl], $6c                                  ; $57df: $36 $6c
    ld l, l                                       ; $57e1: $6d
    xor h                                         ; $57e2: $ac
    xor a                                         ; $57e3: $af
    add hl, sp                                    ; $57e4: $39
    ld a, c                                       ; $57e5: $79
    adc l                                         ; $57e6: $8d
    ld b, a                                       ; $57e7: $47
    cp e                                          ; $57e8: $bb
    ld h, b                                       ; $57e9: $60
    ld b, l                                       ; $57ea: $45
    cp [hl]                                       ; $57eb: $be
    add b                                         ; $57ec: $80
    sbc [hl]                                      ; $57ed: $9e
    add b                                         ; $57ee: $80
    ld l, h                                       ; $57ef: $6c
    ld h, c                                       ; $57f0: $61
    cp e                                          ; $57f1: $bb
    ld h, h                                       ; $57f2: $64
    sub l                                         ; $57f3: $95
    adc b                                         ; $57f4: $88
    ld l, l                                       ; $57f5: $6d
    pop hl                                        ; $57f6: $e1
    ld a, [hl+]                                   ; $57f7: $2a
    add [hl]                                      ; $57f8: $86
    scf                                           ; $57f9: $37
    ld b, d                                       ; $57fa: $42

jr_069_57fb:
    call nz, $8280                                ; $57fb: $c4 $80 $82
    rst $38                                       ; $57fe: $ff
    add e                                         ; $57ff: $83
    ld b, [hl]                                    ; $5800: $46
    add e                                         ; $5801: $83
    adc c                                         ; $5802: $89
    ld [hl], c                                    ; $5803: $71
    ld [hl], b                                    ; $5804: $70
    ld l, [hl]                                    ; $5805: $6e
    xor l                                         ; $5806: $ad
    rst $38                                       ; $5807: $ff
    ld a, [hl-]                                   ; $5808: $3a
    add b                                         ; $5809: $80
    ccf                                           ; $580a: $3f
    ld d, d                                       ; $580b: $52
    ld d, h                                       ; $580c: $54
    ld d, h                                       ; $580d: $54
    ld h, c                                       ; $580e: $61
    ld d, l                                       ; $580f: $55
    inc bc                                        ; $5810: $03
    add c                                         ; $5811: $81
    sub c                                         ; $5812: $91
    ld a, [$1544]                                 ; $5813: $fa $44 $15
    ld b, b                                       ; $5816: $40
    ld l, e                                       ; $5817: $6b
    ld b, b                                       ; $5818: $40
    sub l                                         ; $5819: $95
    adc b                                         ; $581a: $88
    ld l, l                                       ; $581b: $6d
    pop hl                                        ; $581c: $e1
    ld a, [hl+]                                   ; $581d: $2a
    add l                                         ; $581e: $85
    ld hl, sp-$18                                 ; $581f: $f8 $e8
    ld b, b                                       ; $5821: $40
    ld b, a                                       ; $5822: $47
    ld h, e                                       ; $5823: $63
    add [hl]                                      ; $5824: $86
    and b                                         ; $5825: $a0
    add a                                         ; $5826: $87
    add l                                         ; $5827: $85
    ld [hl], $3b                                  ; $5828: $36 $3b
    dec [hl]                                      ; $582a: $35
    rst $28                                       ; $582b: $ef
    dec [hl]                                      ; $582c: $35
    dec [hl]                                      ; $582d: $35
    ld l, e                                       ; $582e: $6b
    ld l, h                                       ; $582f: $6c
    add b                                         ; $5830: $80
    ret nz                                        ; $5831: $c0

    ld d, d                                       ; $5832: $52
    ld d, l                                       ; $5833: $55
    adc h                                         ; $5834: $8c
    nop                                           ; $5835: $00
    cp h                                          ; $5836: $bc
    ld h, b                                       ; $5837: $60
    cp c                                          ; $5838: $b9
    ld b, c                                       ; $5839: $41
    adc [hl]                                      ; $583a: $8e
    add h                                         ; $583b: $84
    sub l                                         ; $583c: $95
    adc c                                         ; $583d: $89
    rst $28                                       ; $583e: $ef
    ld b, b                                       ; $583f: $40
    ld a, [hl+]                                   ; $5840: $2a
    add l                                         ; $5841: $85
    dec de                                        ; $5842: $1b
    and c                                         ; $5843: $a1
    jp $ff65                                      ; $5844: $c3 $65 $ff


    sub b                                         ; $5847: $90
    sub b                                         ; $5848: $90
    sub c                                         ; $5849: $91
    ld b, e                                       ; $584a: $43
    ld [hl], $38                                  ; $584b: $36 $38
    jr c, jr_069_58bd                             ; $584d: $38 $6e

    dec bc                                        ; $584f: $0b
    ld l, a                                       ; $5850: $6f
    ld l, h                                       ; $5851: $6c
    ld a, l                                       ; $5852: $7d
    and b                                         ; $5853: $a0
    ld b, h                                       ; $5854: $44
    ld a, e                                       ; $5855: $7b
    ld h, b                                       ; $5856: $60
    inc a                                         ; $5857: $3c
    add c                                         ; $5858: $81
    inc l                                         ; $5859: $2c
    ld b, b                                       ; $585a: $40
    sbc a                                         ; $585b: $9f
    ld [hl+], a                                   ; $585c: $22
    add b                                         ; $585d: $80
    sub l                                         ; $585e: $95
    adc d                                         ; $585f: $8a
    ld h, l                                       ; $5860: $65
    ld b, d                                       ; $5861: $42
    ld a, [hl+]                                   ; $5862: $2a
    add d                                         ; $5863: $82
    add sp, $41                                   ; $5864: $e8 $41
    ld a, a                                       ; $5866: $7f
    ld hl, $410a                                  ; $5867: $21 $0a $41
    ld b, l                                       ; $586a: $45
    ld b, b                                       ; $586b: $40
    sub c                                         ; $586c: $91
    rst $38                                       ; $586d: $ff
    xor [hl]                                      ; $586e: $ae
    ld c, c                                       ; $586f: $49
    ld c, c                                       ; $5870: $49
    ld [hl], $6e                                  ; $5871: $36 $6e
    ld [hl], h                                    ; $5873: $74
    dec [hl]                                      ; $5874: $35
    xor h                                         ; $5875: $ac
    inc bc                                        ; $5876: $03
    dec [hl]                                      ; $5877: $35
    ld [hl], $be                                  ; $5878: $36 $be
    pop bc                                        ; $587a: $c1
    dec sp                                        ; $587b: $3b
    add l                                         ; $587c: $85
    adc h                                         ; $587d: $8c
    pop hl                                        ; $587e: $e1
    sub l                                         ; $587f: $95
    add a                                         ; $5880: $87
    ld b, h                                       ; $5881: $44
    ld hl, $872a                                  ; $5882: $21 $2a $87
    db $fc                                        ; $5885: $fc
    and b                                         ; $5886: $a0
    and e                                         ; $5887: $a3
    cp $44                                        ; $5888: $fe $44
    jp Jump_069_4daf                              ; $588a: $c3 $af $4d


    ld h, c                                       ; $588d: $61
    ld d, d                                       ; $588e: $52
    ld [hl], $07                                  ; $588f: $36 $07
    ld l, c                                       ; $5891: $69
    dec [hl]                                      ; $5892: $35
    xor l                                         ; $5893: $ad
    ld a, $c0                                     ; $5894: $3e $c0
    cp h                                          ; $5896: $bc
    ld h, c                                       ; $5897: $61
    ld a, e                                       ; $5898: $7b
    ld h, d                                       ; $5899: $62
    ld b, a                                       ; $589a: $47
    ld h, e                                       ; $589b: $63
    sub l                                         ; $589c: $95
    add a                                         ; $589d: $87
    ldh a, [rDIV]                                 ; $589e: $f0 $04
    ld hl, $872a                                  ; $58a0: $21 $2a $87
    and b                                         ; $58a3: $a0
    and e                                         ; $58a4: $a3

Call_069_58a5:
    rst $30                                       ; $58a5: $f7
    jp $c4a1                                      ; $58a6: $c3 $a1 $c4


    ld c, d                                       ; $58a9: $4a
    ld h, b                                       ; $58aa: $60
    cpl                                           ; $58ab: $2f
    ld h, c                                       ; $58ac: $61
    ld e, b                                       ; $58ad: $58
    xor [hl]                                      ; $58ae: $ae
    ld l, e                                       ; $58af: $6b
    ccf                                           ; $58b0: $3f
    ldh [$39], a                                  ; $58b1: $e0 $39
    cp h                                          ; $58b3: $bc
    ld h, c                                       ; $58b4: $61
    ld sp, hl                                     ; $58b5: $f9
    daa                                           ; $58b6: $27
    nop                                           ; $58b7: $00
    ld c, c                                       ; $58b8: $49
    ld h, d                                       ; $58b9: $62
    sub l                                         ; $58ba: $95
    add h                                         ; $58bb: $84
    add hl, de                                    ; $58bc: $19

jr_069_58bd:
    ld hl, $852a                                  ; $58bd: $21 $2a $85
    and b                                         ; $58c0: $a0
    and [hl]                                      ; $58c1: $a6
    ld [de], a                                    ; $58c2: $12
    add c                                         ; $58c3: $81
    nop                                           ; $58c4: $00
    ld b, b                                       ; $58c5: $40
    ld b, b                                       ; $58c6: $40
    ld b, c                                       ; $58c7: $41
    rra                                           ; $58c8: $1f
    xor a                                         ; $58c9: $af
    ld l, [hl]                                    ; $58ca: $6e
    ld [hl], b                                    ; $58cb: $70
    ld [hl], c                                    ; $58cc: $71
    ld [hl], c                                    ; $58cd: $71
    cp h                                          ; $58ce: $bc
    ld h, c                                       ; $58cf: $61
    ld a, c                                       ; $58d0: $79
    inc h                                         ; $58d1: $24
    ld sp, hl                                     ; $58d2: $f9
    ld h, $80                                     ; $58d3: $26 $80
    ld b, $64                                     ; $58d5: $06 $64
    add hl, de                                    ; $58d7: $19
    ld hl, $852a                                  ; $58d8: $21 $2a $85
    inc sp                                        ; $58db: $33
    jp nz, Jump_000_21c1                          ; $58dc: $c2 $c1 $21

    rst $18                                       ; $58df: $df
    jr nz, jr_069_5921                            ; $58e0: $20 $3f

Jump_069_58e2:
    ld b, c                                       ; $58e2: $41
    ld b, l                                       ; $58e3: $45
    rst $38                                       ; $58e4: $ff
    ld [hl], $62                                  ; $58e5: $36 $62
    ld h, [hl]                                    ; $58e7: $66
    ld [hl], $36                                  ; $58e8: $36 $36
    jr c, jr_069_5929                             ; $58ea: $38 $3d

    scf                                           ; $58ec: $37
    ld bc, $4045                                  ; $58ed: $01 $45 $40
    and b                                         ; $58f0: $a0
    ld b, b                                       ; $58f1: $40
    add $a2                                       ; $58f2: $c6 $a2
    ld h, c                                       ; $58f4: $61
    ld e, h                                       ; $58f5: $5c
    dec bc                                        ; $58f6: $0b
    ld c, e                                       ; $58f7: $4b
    add [hl]                                      ; $58f8: $86
    and b                                         ; $58f9: $a0
    and l                                         ; $58fa: $a5
    nop                                           ; $58fb: $00
    ld b, e                                       ; $58fc: $43
    ld a, a                                       ; $58fd: $7f
    sub c                                         ; $58fe: $91
    ld [hl], $62                                  ; $58ff: $36 $62
    ld h, a                                       ; $5901: $67
    ld l, b                                       ; $5902: $68
    ld h, [hl]                                    ; $5903: $66
    ld [hl], $c3                                  ; $5904: $36 $c3
    ld [c], a                                     ; $5906: $e2
    inc bc                                        ; $5907: $03
    sbc l                                         ; $5908: $9d
    sbc l                                         ; $5909: $9d
    ret nz                                        ; $590a: $c0

    add c                                         ; $590b: $81
    sbc e                                         ; $590c: $9b
    inc bc                                        ; $590d: $03
    ld e, c                                       ; $590e: $59
    call nz, Call_069_6b3c                        ; $590f: $c4 $3c $6b
    or h                                          ; $5912: $b4
    ld b, e                                       ; $5913: $43
    ld e, e                                       ; $5914: $5b
    inc hl                                        ; $5915: $23
    db $fd                                        ; $5916: $fd
    db $eb                                        ; $5917: $eb
    db $fd                                        ; $5918: $fd
    add e                                         ; $5919: $83
    ld a, d                                       ; $591a: $7a
    ld h, h                                       ; $591b: $64
    ld a, b                                       ; $591c: $78
    dec [hl]                                      ; $591d: $35
    dec [hl]                                      ; $591e: $35
    ld l, b                                       ; $591f: $68
    inc bc                                        ; $5920: $03

jr_069_5921:
    ld h, [hl]                                    ; $5921: $66
    add hl, sp                                    ; $5922: $39
    add h                                         ; $5923: $84
    and $a2                                       ; $5924: $e6 $a2
    call nz, $2441                                ; $5926: $c4 $41 $24

jr_069_5929:
    inc a                                         ; $5929: $3c
    ld l, d                                       ; $592a: $6a
    ld d, d                                       ; $592b: $52
    ld [bc], a                                    ; $592c: $02
    rst $38                                       ; $592d: $ff
    ld h, h                                       ; $592e: $64
    or [hl]                                       ; $592f: $b6
    ld b, [hl]                                    ; $5930: $46
    nop                                           ; $5931: $00
    sbc [hl]                                      ; $5932: $9e
    jp $80be                                      ; $5933: $c3 $be $80


    ld b, l                                       ; $5936: $45
    ld a, [hl-]                                   ; $5937: $3a
    cp a                                          ; $5938: $bf
    and b                                         ; $5939: $a0
    ld l, h                                       ; $593a: $6c
    ld bc, $c06d                                  ; $593b: $01 $6d $c0
    ldh [rSC], a                                  ; $593e: $e0 $02
    ld b, b                                       ; $5940: $40
    adc h                                         ; $5941: $8c
    nop                                           ; $5942: $00
    and d                                         ; $5943: $a2
    push bc                                       ; $5944: $c5
    ld [hl], h                                    ; $5945: $74
    ld h, c                                       ; $5946: $61
    db $10                                        ; $5947: $10
    ld b, b                                       ; $5948: $40
    inc a                                         ; $5949: $3c
    ld l, e                                       ; $594a: $6b
    ld e, h                                       ; $594b: $5c
    add hl, hl                                    ; $594c: $29
    db $e3                                        ; $594d: $e3
    xor c                                         ; $594e: $a9
    ld b, h                                       ; $594f: $44
    sbc a                                         ; $5950: $9f
    or [hl]                                       ; $5951: $b6
    call nz, $81be                                ; $5952: $c4 $be $81
    add hl, sp                                    ; $5955: $39
    ld a, a                                       ; $5956: $7f
    and b                                         ; $5957: $a0
    rlca                                          ; $5958: $07
    ld [hl], e                                    ; $5959: $73
    ld l, [hl]                                    ; $595a: $6e
    ld b, b                                       ; $595b: $40
    ld [bc], a                                    ; $595c: $02
    ld b, d                                       ; $595d: $42
    adc h                                         ; $595e: $8c
    nop                                           ; $595f: $00
    ld b, d                                       ; $5960: $42
    add [hl]                                      ; $5961: $86
    sub d                                         ; $5962: $92
    ldh [rNR10], a                                ; $5963: $e0 $10
    ld b, b                                       ; $5965: $40
    ldh [$3c], a                                  ; $5966: $e0 $3c
    ld l, e                                       ; $5968: $6b
    add hl, hl                                    ; $5969: $29
    db $e3                                        ; $596a: $e3
    ld [c], a                                     ; $596b: $e2
    and c                                         ; $596c: $a1
    or l                                          ; $596d: $b5
    jr nz, jr_069_5974                            ; $596e: $20 $04

    ld h, b                                       ; $5970: $60
    add b                                         ; $5971: $80
    ld b, [hl]                                    ; $5972: $46
    xor a                                         ; $5973: $af

jr_069_5974:
    rst $38                                       ; $5974: $ff
    ld b, [hl]                                    ; $5975: $46
    ld b, l                                       ; $5976: $45
    scf                                           ; $5977: $37
    jr c, jr_069_59af                             ; $5978: $38 $35

    ld l, d                                       ; $597a: $6a
    dec [hl]                                      ; $597b: $35
    add hl, sp                                    ; $597c: $39
    nop                                           ; $597d: $00
    inc b                                         ; $597e: $04
    and d                                         ; $597f: $a2
    adc h                                         ; $5980: $8c
    nop                                           ; $5981: $00
    ld b, d                                       ; $5982: $42
    add a                                         ; $5983: $87
    db $10                                        ; $5984: $10
    ld b, d                                       ; $5985: $42
    inc a                                         ; $5986: $3c
    ld l, e                                       ; $5987: $6b
    ld l, d                                       ; $5988: $6a
    inc bc                                        ; $5989: $03
    add hl, hl                                    ; $598a: $29
    ld hl, $20b5                                  ; $598b: $21 $b5 $20
    db $eb                                        ; $598e: $eb
    sbc [hl]                                      ; $598f: $9e
    sub b                                         ; $5990: $90
    ld [bc], a                                    ; $5991: $02
    ld b, b                                       ; $5992: $40
    ld b, [hl]                                    ; $5993: $46
    rst $38                                       ; $5994: $ff
    ldh [rLY], a                                  ; $5995: $e0 $44
    inc a                                         ; $5997: $3c
    ld l, d                                       ; $5998: $6a
    ld b, b                                       ; $5999: $40
    ld bc, $c380                                  ; $599a: $01 $80 $c3
    add h                                         ; $599d: $84
    and d                                         ; $599e: $a2
    add $51                                       ; $599f: $c6 $51
    add [hl]                                      ; $59a1: $86
    inc a                                         ; $59a2: $3c
    ld l, b                                       ; $59a3: $68
    or $45                                        ; $59a4: $f6 $45
    jp c, Jump_000_21b5                           ; $59a6: $da $b5 $21

    ld a, [hl]                                    ; $59a9: $7e
    cp l                                          ; $59aa: $bd
    add e                                         ; $59ab: $83
    adc c                                         ; $59ac: $89
    add e                                         ; $59ad: $83
    ld b, [hl]                                    ; $59ae: $46

jr_069_59af:
    ld b, b                                       ; $59af: $40
    ld l, h                                       ; $59b0: $6c
    ld l, l                                       ; $59b1: $6d
    ld a, [hl]                                    ; $59b2: $7e
    ld b, b                                       ; $59b3: $40
    ld bc, $0045                                  ; $59b4: $01 $45 $00
    ld h, h                                       ; $59b7: $64
    dec h                                         ; $59b8: $25
    inc bc                                        ; $59b9: $03
    inc bc                                        ; $59ba: $03
    adc b                                         ; $59bb: $88
    inc a                                         ; $59bc: $3c
    ld h, a                                       ; $59bd: $67
    ld a, h                                       ; $59be: $7c
    call nz, Call_069_652b                        ; $59bf: $c4 $2b $65
    ld [bc], a                                    ; $59c2: $02
    ld b, b                                       ; $59c3: $40
    inc hl                                        ; $59c4: $23
    ld b, [hl]                                    ; $59c5: $46
    ld b, [hl]                                    ; $59c6: $46
    nop                                           ; $59c7: $00
    ld b, b                                       ; $59c8: $40
    rst $38                                       ; $59c9: $ff
    ld hl, $e1c0                                  ; $59ca: $21 $c0 $e1
    call nz, Call_000_01ff                        ; $59cd: $c4 $ff $01
    ld de, $c122                                  ; $59d0: $11 $22 $c1
    ld [$0a98], a                                 ; $59d3: $ea $98 $0a
    ld a, a                                       ; $59d6: $7f
    ld a, [hl+]                                   ; $59d7: $2a
    ld a, h                                       ; $59d8: $7c
    pop bc                                        ; $59d9: $c1
    ld l, b                                       ; $59da: $68
    ld h, l                                       ; $59db: $65
    inc a                                         ; $59dc: $3c
    ld h, c                                       ; $59dd: $61
    xor [hl]                                      ; $59de: $ae
    ld b, l                                       ; $59df: $45
    inc bc                                        ; $59e0: $03
    scf                                           ; $59e1: $37
    scf                                           ; $59e2: $37
    rst $38                                       ; $59e3: $ff
    ld hl, $a4c2                                  ; $59e4: $21 $c2 $a4
    add e                                         ; $59e7: $83
    add l                                         ; $59e8: $85
    sbc b                                         ; $59e9: $98
    add hl, bc                                    ; $59ea: $09
    db $fd                                        ; $59eb: $fd
    ld b, h                                       ; $59ec: $44
    ld [hl], d                                    ; $59ed: $72
    dec h                                         ; $59ee: $25
    db $f4                                        ; $59ef: $f4
    ld l, b                                       ; $59f0: $68
    ld l, b                                       ; $59f1: $68
    cp h                                          ; $59f2: $bc
    ld b, b                                       ; $59f3: $40
    xor a                                         ; $59f4: $af
    add b                                         ; $59f5: $80
    ret nz                                        ; $59f6: $c0

    ld [hl], $36                                  ; $59f7: $36 $36
    ld [hl], $45                                  ; $59f9: $36 $45
    add b                                         ; $59fb: $80

jr_069_59fc:
    nop                                           ; $59fc: $00
    ld b, e                                       ; $59fd: $43
    adc b                                         ; $59fe: $88
    ld h, e                                       ; $59ff: $63
    rrca                                          ; $5a00: $0f
    add b                                         ; $5a01: $80
    sbc b                                         ; $5a02: $98
    add hl, bc                                    ; $5a03: $09
    pop af                                        ; $5a04: $f1
    ld h, l                                       ; $5a05: $65
    ld [hl], d                                    ; $5a06: $72
    inc h                                         ; $5a07: $24
    ld h, l                                       ; $5a08: $65
    rst $20                                       ; $5a09: $e7
    ld [$3d7a], a                                 ; $5a0a: $ea $7a $3d
    nop                                           ; $5a0d: $00
    sub c                                         ; $5a0e: $91
    ld b, b                                       ; $5a0f: $40
    pop bc                                        ; $5a10: $c1
    ld [hl], $44                                  ; $5a11: $36 $44
    sub c                                         ; $5a13: $91
    call nz, $0141                                ; $5a14: $c4 $41 $01
    nop                                           ; $5a17: $00
    ld l, d                                       ; $5a18: $6a
    ret nz                                        ; $5a19: $c0

    add e                                         ; $5a1a: $83
    add h                                         ; $5a1b: $84
    inc bc                                        ; $5a1c: $03
    adc h                                         ; $5a1d: $8c
    dec c                                         ; $5a1e: $0d
    add b                                         ; $5a1f: $80
    ld [hl], d                                    ; $5a20: $72
    ld h, $65                                     ; $5a21: $26 $65
    jp hl                                         ; $5a23: $e9


    ld b, b                                       ; $5a24: $40
    jr nz, @-$3f                                  ; $5a25: $20 $bf

    and d                                         ; $5a27: $a2
    nop                                           ; $5a28: $00
    ld b, c                                       ; $5a29: $41
    ret nz                                        ; $5a2a: $c0

    ld b, [hl]                                    ; $5a2b: $46
    add c                                         ; $5a2c: $81
    xor b                                         ; $5a2d: $a8
    ld b, b                                       ; $5a2e: $40
    add e                                         ; $5a2f: $83
    add h                                         ; $5a30: $84
    inc bc                                        ; $5a31: $03
    adc h                                         ; $5a32: $8c
    or h                                          ; $5a33: $b4
    ld b, b                                       ; $5a34: $40
    ld [hl], d                                    ; $5a35: $72
    ld h, $68                                     ; $5a36: $26 $68
    ld l, c                                       ; $5a38: $69
    nop                                           ; $5a39: $00
    ei                                            ; $5a3a: $fb
    jr nz, jr_069_59fc                            ; $5a3b: $20 $bf

    and d                                         ; $5a3d: $a2
    ld b, c                                       ; $5a3e: $41
    pop bc                                        ; $5a3f: $c1
    jp $2143                                      ; $5a40: $c3 $43 $21


    and l                                         ; $5a43: $a5
    inc bc                                        ; $5a44: $03
    adc d                                         ; $5a45: $8a
    ld b, b                                       ; $5a46: $40
    ld b, d                                       ; $5a47: $42
    ld a, a                                       ; $5a48: $7f
    dec h                                         ; $5a49: $25
    ld [hl], h                                    ; $5a4a: $74
    ld l, b                                       ; $5a4b: $68
    ld l, d                                       ; $5a4c: $6a
    ld a, [hl]                                    ; $5a4d: $7e
    nop                                           ; $5a4e: $00
    ld b, l                                       ; $5a4f: $45
    ret nz                                        ; $5a50: $c0

    nop                                           ; $5a51: $00
    dec [hl]                                      ; $5a52: $35
    add hl, sp                                    ; $5a53: $39
    ld b, [hl]                                    ; $5a54: $46
    ld b, c                                       ; $5a55: $41
    ld h, $80                                     ; $5a56: $26 $80
    ld b, [hl]                                    ; $5a58: $46
    add [hl]                                      ; $5a59: $86
    inc bc                                        ; $5a5a: $03
    add l                                         ; $5a5b: $85
    ld b, b                                       ; $5a5c: $40
    ld b, h                                       ; $5a5d: $44
    rst $00                                       ; $5a5e: $c7
    add e                                         ; $5a5f: $83
    jp hl                                         ; $5a60: $e9


    nop                                           ; $5a61: $00
    ld l, b                                       ; $5a62: $68
    ld h, a                                       ; $5a63: $67
    ld e, e                                       ; $5a64: $5b
    add b                                         ; $5a65: $80
    sbc [hl]                                      ; $5a66: $9e
    ld b, b                                       ; $5a67: $40
    ld a, a                                       ; $5a68: $7f
    db $e3                                        ; $5a69: $e3
    ret nz                                        ; $5a6a: $c0

    ldh [rSTAT], a                                ; $5a6b: $e0 $41
    jp nz, $2300                                  ; $5a6d: $c2 $00 $23

    ld e, c                                       ; $5a70: $59
    ld b, e                                       ; $5a71: $43
    ld [hl], a                                    ; $5a72: $77
    dec b                                         ; $5a73: $05
    db $eb                                        ; $5a74: $eb
    dec c                                         ; $5a75: $0d
    add d                                         ; $5a76: $82
    db $10                                        ; $5a77: $10
    inc [hl]                                      ; $5a78: $34
    add h                                         ; $5a79: $84
    inc l                                         ; $5a7a: $2c
    and c                                         ; $5a7b: $a1
    ld l, b                                       ; $5a7c: $68
    ld h, [hl]                                    ; $5a7d: $66
    ld [hl-], a                                   ; $5a7e: $32
    and b                                         ; $5a7f: $a0
    sbc [hl]                                      ; $5a80: $9e
    rst $38                                       ; $5a81: $ff
    jp nz, $8040                                  ; $5a82: $c2 $40 $80

    di                                            ; $5a85: $f3
    nop                                           ; $5a86: $00
    dec b                                         ; $5a87: $05
    sbc [hl]                                      ; $5a88: $9e
    ld [bc], a                                    ; $5a89: $02
    ld hl, $17d5                                  ; $5a8a: $21 $d5 $17
    ld b, l                                       ; $5a8d: $45
    sub [hl]                                      ; $5a8e: $96
    dec b                                         ; $5a8f: $05
    push de                                       ; $5a90: $d5
    nop                                           ; $5a91: $00
    xor l                                         ; $5a92: $ad
    ld hl, $64f4                                  ; $5a93: $21 $f4 $64
    ld l, b                                       ; $5a96: $68
    ldh [rNR43], a                                ; $5a97: $e0 $22
    ld l, b                                       ; $5a99: $68
    ld h, l                                       ; $5a9a: $65
    cp l                                          ; $5a9b: $bd
    ld h, b                                       ; $5a9c: $60
    sbc [hl]                                      ; $5a9d: $9e
    ld a, a                                       ; $5a9e: $7f
    pop bc                                        ; $5a9f: $c1
    inc a                                         ; $5aa0: $3c
    ld b, h                                       ; $5aa1: $44
    jp nz, Jump_000_0601                          ; $5aa2: $c2 $01 $06

    ld [bc], a                                    ; $5aa5: $02
    ld [hl+], a                                   ; $5aa6: $22
    db $d3                                        ; $5aa7: $d3
    sub $17                                       ; $5aa8: $d6 $17
    ld b, l                                       ; $5aaa: $45
    inc b                                         ; $5aab: $04
    adc c                                         ; $5aac: $89
    ld l, e                                       ; $5aad: $6b
    and l                                         ; $5aae: $a5
    ret nz                                        ; $5aaf: $c0

    dec h                                         ; $5ab0: $25
    ld h, l                                       ; $5ab1: $65
    push hl                                       ; $5ab2: $e5
    db $10                                        ; $5ab3: $10
    ld a, h                                       ; $5ab4: $7c
    and c                                         ; $5ab5: $a1
    ld b, c                                       ; $5ab6: $41
    ld [c], a                                     ; $5ab7: $e2
    add b                                         ; $5ab8: $80
    pop bc                                        ; $5ab9: $c1
    ld b, c                                       ; $5aba: $41
    ld bc, $d0d8                                  ; $5abb: $01 $d8 $d0
    jr nz, jr_069_5ad7                            ; $5abe: $20 $17

    ld b, h                                       ; $5ac0: $44
    inc b                                         ; $5ac1: $04
    adc e                                         ; $5ac2: $8b
    jr nz, jr_069_5b2c                            ; $5ac3: $20 $67

    ldh a, [$7e]                                  ; $5ac5: $f0 $7e
    ld h, h                                       ; $5ac7: $64
    ret nz                                        ; $5ac8: $c0

    pop bc                                        ; $5ac9: $c1
    ld b, b                                       ; $5aca: $40
    pop bc                                        ; $5acb: $c1
    ld b, [hl]                                    ; $5acc: $46
    ld b, h                                       ; $5acd: $44
    db $dd                                        ; $5ace: $dd
    rla                                           ; $5acf: $17
    ld b, l                                       ; $5ad0: $45
    inc b                                         ; $5ad1: $04
    adc h                                         ; $5ad2: $8c
    and h                                         ; $5ad3: $a4
    ld h, a                                       ; $5ad4: $67
    add sp, $24                                   ; $5ad5: $e8 $24

jr_069_5ad7:
    ld h, c                                       ; $5ad7: $61
    db $eb                                        ; $5ad8: $eb
    ld a, e                                       ; $5ad9: $7b
    inc b                                         ; $5ada: $04
    cp l                                          ; $5adb: $bd
    jr nz, jr_069_5b23                            ; $5adc: $20 $45

    add c                                         ; $5ade: $81
    and d                                         ; $5adf: $a2
    or [hl]                                       ; $5ae0: $b6
    dec e                                         ; $5ae1: $1d
    sbc a                                         ; $5ae2: $9f
    dec c                                         ; $5ae3: $0d
    ld h, c                                       ; $5ae4: $61
    db $d3                                        ; $5ae5: $d3
    ret nc                                        ; $5ae6: $d0

    pop de                                        ; $5ae7: $d1
    rla                                           ; $5ae8: $17
    ld b, [hl]                                    ; $5ae9: $46
    inc b                                         ; $5aea: $04
    adc e                                         ; $5aeb: $8b
    ld h, a                                       ; $5aec: $67
    add sp, -$60                                  ; $5aed: $e8 $a0
    ei                                            ; $5aef: $fb
    ld h, b                                       ; $5af0: $60
    add c                                         ; $5af1: $81
    ld h, b                                       ; $5af2: $60
    ld a, e                                       ; $5af3: $7b
    ld [bc], a                                    ; $5af4: $02
    ld c, c                                       ; $5af5: $49
    and b                                         ; $5af6: $a0
    cp a                                          ; $5af7: $bf
    ldh [rLYC], a                                 ; $5af8: $e0 $45
    add c                                         ; $5afa: $81
    and b                                         ; $5afb: $a0
    and c                                         ; $5afc: $a1
    nop                                           ; $5afd: $00
    ld h, [hl]                                    ; $5afe: $66
    ld [hl+], a                                   ; $5aff: $22
    pop de                                        ; $5b00: $d1
    ld h, c                                       ; $5b01: $61
    rla                                           ; $5b02: $17
    ld b, l                                       ; $5b03: $45
    inc b                                         ; $5b04: $04
    adc e                                         ; $5b05: $8b
    ld h, a                                       ; $5b06: $67
    add sp, $24                                   ; $5b07: $e8 $24
    ld h, e                                       ; $5b09: $63
    dec a                                         ; $5b0a: $3d
    add b                                         ; $5b0b: $80
    cp d                                          ; $5b0c: $ba
    nop                                           ; $5b0d: $00
    nop                                           ; $5b0e: $00
    dec sp                                        ; $5b0f: $3b
    ld [hl+], a                                   ; $5b10: $22
    ld [bc], a                                    ; $5b11: $02
    db $e3                                        ; $5b12: $e3
    ld h, [hl]                                    ; $5b13: $66
    ld hl, $61d1                                  ; $5b14: $21 $d1 $61
    rla                                           ; $5b17: $17
    ld b, h                                       ; $5b18: $44
    ld d, a                                       ; $5b19: $57
    add c                                         ; $5b1a: $81
    inc b                                         ; $5b1b: $04
    add l                                         ; $5b1c: $85
    add $c0                                       ; $5b1d: $c6 $c0
    nop                                           ; $5b1f: $00
    ld h, a                                       ; $5b20: $67
    add sp, $3d                                   ; $5b21: $e8 $3d

jr_069_5b23:
    ld l, b                                       ; $5b23: $68
    ei                                            ; $5b24: $fb
    ld [bc], a                                    ; $5b25: $02
    ei                                            ; $5b26: $fb
    db $e3                                        ; $5b27: $e3
    ld [bc], a                                    ; $5b28: $02
    jp nz, $61d1                                  ; $5b29: $c2 $d1 $61

jr_069_5b2c:
    rla                                           ; $5b2c: $17
    ld b, e                                       ; $5b2d: $43
    db $d3                                        ; $5b2e: $d3
    ld b, d                                       ; $5b2f: $42
    nop                                           ; $5b30: $00
    sub l                                         ; $5b31: $95
    ld b, d                                       ; $5b32: $42
    dec l                                         ; $5b33: $2d
    jp $e867                                      ; $5b34: $c3 $67 $e8


jr_069_5b37:
    xor d                                         ; $5b37: $aa
    ld b, a                                       ; $5b38: $47
    cp a                                          ; $5b39: $bf
    jp hl                                         ; $5b3a: $e9


    add b                                         ; $5b3b: $80
    ld b, h                                       ; $5b3c: $44
    ld h, l                                       ; $5b3d: $65
    add $fd                                       ; $5b3e: $c6 $fd
    ld h, $b0                                     ; $5b40: $26 $b0
    dec l                                         ; $5b42: $2d
    jp $e767                                      ; $5b43: $c3 $67 $e7


    and [hl]                                      ; $5b46: $a6
    ret                                           ; $5b47: $c9


    pop bc                                        ; $5b48: $c1
    and b                                         ; $5b49: $a0
    scf                                           ; $5b4a: $37
    dec a                                         ; $5b4b: $3d
    rst $38                                       ; $5b4c: $ff
    ldh [$37], a                                  ; $5b4d: $e0 $37
    nop                                           ; $5b4f: $00
    add c                                         ; $5b50: $81
    ld h, h                                       ; $5b51: $64
    ld b, h                                       ; $5b52: $44
    inc b                                         ; $5b53: $04
    sbc [hl]                                      ; $5b54: $9e
    ld [bc], a                                    ; $5b55: $02
    ld d, [hl]                                    ; $5b56: $56
    inc b                                         ; $5b57: $04
    dec l                                         ; $5b58: $2d
    call nz, $e667                                ; $5b59: $c4 $67 $e6
    ld a, l                                       ; $5b5c: $7d
    inc hl                                        ; $5b5d: $23
    xor d                                         ; $5b5e: $aa
    ld b, d                                       ; $5b5f: $42
    ld l, [hl]                                    ; $5b60: $6e
    ccf                                           ; $5b61: $3f
    add c                                         ; $5b62: $81
    add hl, sp                                    ; $5b63: $39
    and h                                         ; $5b64: $a4
    ld h, h                                       ; $5b65: $64
    rst $38                                       ; $5b66: $ff
    ldh [$a5], a                                  ; $5b67: $e0 $a5
    add hl, sp                                    ; $5b69: $39
    add c                                         ; $5b6a: $81
    ld h, d                                       ; $5b6b: $62
    add b                                         ; $5b6c: $80
    ld e, $42                                     ; $5b6d: $1e $42
    cp h                                          ; $5b6f: $bc
    ld hl, $017e                                  ; $5b70: $21 $7e $01
    db $fd                                        ; $5b73: $fd
    inc h                                         ; $5b74: $24
    dec l                                         ; $5b75: $2d
    call nz, $e867                                ; $5b76: $c4 $67 $e8
    xor d                                         ; $5b79: $aa
    ld c, b                                       ; $5b7a: $48
    sbc [hl]                                      ; $5b7b: $9e
    rst $38                                       ; $5b7c: $ff
    sub b                                         ; $5b7d: $90
    ld a, $69                                     ; $5b7e: $3e $69
    and e                                         ; $5b80: $a3
    dec [hl]                                      ; $5b81: $35
    dec [hl]                                      ; $5b82: $35
    and e                                         ; $5b83: $a3
    ld l, d                                       ; $5b84: $6a
    ld bc, $bf3e                                  ; $5b85: $01 $3e $bf
    inc h                                         ; $5b88: $24
    adc h                                         ; $5b89: $8c
    and h                                         ; $5b8a: $a4
    rrca                                          ; $5b8b: $0f
    and a                                         ; $5b8c: $a7
    dec l                                         ; $5b8d: $2d
    push bc                                       ; $5b8e: $c5
    add hl, sp                                    ; $5b8f: $39
    ld l, d                                       ; $5b90: $6a
    xor d                                         ; $5b91: $aa
    ld b, [hl]                                    ; $5b92: $46
    ret nz                                        ; $5b93: $c0

    pop hl                                        ; $5b94: $e1
    ld [bc], a                                    ; $5b95: $02
    ld b, b                                       ; $5b96: $40
    add b                                         ; $5b97: $80
    dec [hl]                                      ; $5b98: $35
    ret nz                                        ; $5b99: $c0

    ldh [$c1], a                                  ; $5b9a: $e0 $c1
    db $e3                                        ; $5b9c: $e3
    sub b                                         ; $5b9d: $90
    inc h                                         ; $5b9e: $24
    rrca                                          ; $5b9f: $0f
    and a                                         ; $5ba0: $a7
    dec l                                         ; $5ba1: $2d
    push bc                                       ; $5ba2: $c5
    or c                                          ; $5ba3: $b1
    rst $20                                       ; $5ba4: $e7
    ld hl, sp-$53                                 ; $5ba5: $f8 $ad
    ld h, d                                       ; $5ba7: $62
    dec sp                                        ; $5ba8: $3b
    ld hl, $00dc                                  ; $5ba9: $21 $dc $00
    and c                                         ; $5bac: $a1
    sub b                                         ; $5bad: $90
    add hl, sp                                    ; $5bae: $39
    ld l, e                                       ; $5baf: $6b
    ld [hl], c                                    ; $5bb0: $71
    nop                                           ; $5bb1: $00
    rst $38                                       ; $5bb2: $ff
    ldh [$7f], a                                  ; $5bb3: $e0 $7f
    jr nz, jr_069_5b37                            ; $5bb5: $20 $80

    jr nz, jr_069_5c13                            ; $5bb7: $20 $5a

    ld h, a                                       ; $5bb9: $67
    adc e                                         ; $5bba: $8b
    ld c, b                                       ; $5bbb: $48
    dec l                                         ; $5bbc: $2d
    call nz, $e7b1                                ; $5bbd: $c4 $b1 $e7
    ld h, c                                       ; $5bc0: $61
    ld h, b                                       ; $5bc1: $60
    ld l, h                                       ; $5bc2: $6c
    ld d, a                                       ; $5bc3: $57
    ld h, d                                       ; $5bc4: $62
    sub c                                         ; $5bc5: $91
    ld hl, $b69f                                  ; $5bc6: $21 $9f $b6
    ret nz                                        ; $5bc9: $c0

    push bc                                       ; $5bca: $c5
    or [hl]                                       ; $5bcb: $b6
    sbc a                                         ; $5bcc: $9f
    ld b, d                                       ; $5bcd: $42
    ld h, c                                       ; $5bce: $61
    ret nz                                        ; $5bcf: $c0

    sub b                                         ; $5bd0: $90
    dec hl                                        ; $5bd1: $2b
    ld [hl], e                                    ; $5bd2: $73
    ld b, d                                       ; $5bd3: $42
    dec l                                         ; $5bd4: $2d
    call nz, Call_069_4902                        ; $5bd5: $c4 $02 $49
    ld d, a                                       ; $5bd8: $57
    ld h, e                                       ; $5bd9: $63
    or e                                          ; $5bda: $b3
    ld [hl+], a                                   ; $5bdb: $22
    sbc a                                         ; $5bdc: $9f
    sbc l                                         ; $5bdd: $9d
    ld [bc], a                                    ; $5bde: $02
    rst $38                                       ; $5bdf: $ff
    db $e4                                        ; $5be0: $e4
    sbc a                                         ; $5be1: $9f
    ld b, d                                       ; $5be2: $42
    ld h, d                                       ; $5be3: $62
    sub b                                         ; $5be4: $90
    dec h                                         ; $5be5: $25
    or $42                                        ; $5be6: $f6 $42
    or d                                          ; $5be8: $b2
    jp $c92d                                      ; $5be9: $c3 $2d $c9


    add d                                         ; $5bec: $82
    dec b                                         ; $5bed: $05
    nop                                           ; $5bee: $00
    pop bc                                        ; $5bef: $c1
    jr nz, @-$46                                  ; $5bf0: $20 $b8

    inc bc                                        ; $5bf2: $03
    ld d, b                                       ; $5bf3: $50
    push bc                                       ; $5bf4: $c5
    dec h                                         ; $5bf5: $25
    add h                                         ; $5bf6: $84
    sub b                                         ; $5bf7: $90
    ld h, $9f                                     ; $5bf8: $26 $9f
    db $e3                                        ; $5bfa: $e3
    rst $38                                       ; $5bfb: $ff
    cp $6e                                        ; $5bfc: $fe $6e
    ld [bc], a                                    ; $5bfe: $02
    nop                                           ; $5bff: $00
    ret c                                         ; $5c00: $d8

    and e                                         ; $5c01: $a3
    ld l, d                                       ; $5c02: $6a
    add [hl]                                      ; $5c03: $86
    sbc a                                         ; $5c04: $9f
    push hl                                       ; $5c05: $e5
    jp nz, Jump_000_00ec                          ; $5c06: $c2 $ec $00

    nop                                           ; $5c09: $00
    nop                                           ; $5c0a: $00
    pop bc                                        ; $5c0b: $c1
    nop                                           ; $5c0c: $00
    rst $38                                       ; $5c0d: $ff
    rst $38                                       ; $5c0e: $ff
    rst $38                                       ; $5c0f: $ff
    rst $38                                       ; $5c10: $ff
    rst $38                                       ; $5c11: $ff
    rst $38                                       ; $5c12: $ff

jr_069_5c13:
    rst $38                                       ; $5c13: $ff
    rst $38                                       ; $5c14: $ff
    rst $38                                       ; $5c15: $ff
    rst $38                                       ; $5c16: $ff
    nop                                           ; $5c17: $00
    nop                                           ; $5c18: $00
    dec c                                         ; $5c19: $0d
    add b                                         ; $5c1a: $80
    cp $e0                                        ; $5c1b: $fe $e0
    nop                                           ; $5c1d: $00
    ld b, b                                       ; $5c1e: $40
    ret c                                         ; $5c1f: $d8

    push hl                                       ; $5c20: $e5
    rst $30                                       ; $5c21: $f7
    and $eb                                       ; $5c22: $e6 $eb
    ldh [rIE], a                                  ; $5c24: $e0 $ff
    rst $38                                       ; $5c26: $ff
    nop                                           ; $5c27: $00
    rst $38                                       ; $5c28: $ff
    db $f4                                        ; $5c29: $f4
    nop                                           ; $5c2a: $00
    nop                                           ; $5c2b: $00
    nop                                           ; $5c2c: $00
    ld [bc], a                                    ; $5c2d: $02
    nop                                           ; $5c2e: $00
    inc e                                         ; $5c2f: $1c
    inc b                                         ; $5c30: $04
    ld [bc], a                                    ; $5c31: $02
    ld bc, $051d                                  ; $5c32: $01 $1d $05
    ld [bc], a                                    ; $5c35: $02
    ld [bc], a                                    ; $5c36: $02
    jr nz, jr_069_5c3f                            ; $5c37: $20 $06

    ld [bc], a                                    ; $5c39: $02
    inc bc                                        ; $5c3a: $03
    rla                                           ; $5c3b: $17
    rlca                                          ; $5c3c: $07
    ld [bc], a                                    ; $5c3d: $02
    inc b                                         ; $5c3e: $04

jr_069_5c3f:
    ld e, $09                                     ; $5c3f: $1e $09
    ld [bc], a                                    ; $5c41: $02
    dec b                                         ; $5c42: $05
    inc d                                         ; $5c43: $14
    ld a, [bc]                                    ; $5c44: $0a
    ld [bc], a                                    ; $5c45: $02
    ld b, $1e                                     ; $5c46: $06 $1e
    rrca                                          ; $5c48: $0f
    ld [bc], a                                    ; $5c49: $02
    rlca                                          ; $5c4a: $07
    jr jr_069_5c5d                                ; $5c4b: $18 $10

    ld [bc], a                                    ; $5c4d: $02
    ld [$111a], sp                                ; $5c4e: $08 $1a $11
    ld [bc], a                                    ; $5c51: $02
    add hl, bc                                    ; $5c52: $09
    dec e                                         ; $5c53: $1d
    ld de, $0a02                                  ; $5c54: $11 $02 $0a
    rra                                           ; $5c57: $1f
    ld de, $0b02                                  ; $5c58: $11 $02 $0b
    ld [hl+], a                                   ; $5c5b: $22
    ld [de], a                                    ; $5c5c: $12

jr_069_5c5d:
    ld [bc], a                                    ; $5c5d: $02
    inc c                                         ; $5c5e: $0c
    inc de                                        ; $5c5f: $13
    inc de                                        ; $5c60: $13
    ld [bc], a                                    ; $5c61: $02
    dec c                                         ; $5c62: $0d
    jr jr_069_5c78                                ; $5c63: $18 $13

    ld [bc], a                                    ; $5c65: $02
    ld c, $1c                                     ; $5c66: $0e $1c
    inc de                                        ; $5c68: $13
    ld [bc], a                                    ; $5c69: $02
    rrca                                          ; $5c6a: $0f
    ld a, [de]                                    ; $5c6b: $1a
    dec d                                         ; $5c6c: $15
    ld [bc], a                                    ; $5c6d: $02
    db $10                                        ; $5c6e: $10
    inc h                                         ; $5c6f: $24
    dec d                                         ; $5c70: $15
    ld [bc], a                                    ; $5c71: $02
    ld de, $1614                                  ; $5c72: $11 $14 $16
    ld [bc], a                                    ; $5c75: $02
    ld [de], a                                    ; $5c76: $12
    db $10                                        ; $5c77: $10

jr_069_5c78:
    rla                                           ; $5c78: $17
    ld [bc], a                                    ; $5c79: $02
    inc de                                        ; $5c7a: $13
    add hl, de                                    ; $5c7b: $19
    rla                                           ; $5c7c: $17
    ld [bc], a                                    ; $5c7d: $02
    inc d                                         ; $5c7e: $14
    jr jr_069_5c9c                                ; $5c7f: $18 $1b

    ld [bc], a                                    ; $5c81: $02
    dec d                                         ; $5c82: $15
    rra                                           ; $5c83: $1f
    dec de                                        ; $5c84: $1b
    ld [bc], a                                    ; $5c85: $02
    ld d, $17                                     ; $5c86: $16 $17
    inc e                                         ; $5c88: $1c
    ld [bc], a                                    ; $5c89: $02
    rla                                           ; $5c8a: $17
    inc e                                         ; $5c8b: $1c
    dec e                                         ; $5c8c: $1d
    ld [bc], a                                    ; $5c8d: $02
    jr jr_069_5ca3                                ; $5c8e: $18 $13

    ld [hl+], a                                   ; $5c90: $22
    ld [bc], a                                    ; $5c91: $02
    add hl, de                                    ; $5c92: $19
    ld d, $23                                     ; $5c93: $16 $23
    ld [bc], a                                    ; $5c95: $02
    ld a, [de]                                    ; $5c96: $1a
    ld [hl+], a                                   ; $5c97: $22
    ld h, $02                                     ; $5c98: $26 $02
    dec de                                        ; $5c9a: $1b
    rla                                           ; $5c9b: $17

jr_069_5c9c:
    jr z, jr_069_5ca0                             ; $5c9c: $28 $02

    inc e                                         ; $5c9e: $1c
    rra                                           ; $5c9f: $1f

jr_069_5ca0:
    add hl, hl                                    ; $5ca0: $29
    ld [bc], a                                    ; $5ca1: $02
    dec e                                         ; $5ca2: $1d

jr_069_5ca3:
    ld hl, $022d                                  ; $5ca3: $21 $2d $02
    ld e, $20                                     ; $5ca6: $1e $20
    cpl                                           ; $5ca8: $2f
    ld [bc], a                                    ; $5ca9: $02
    rra                                           ; $5caa: $1f
    ld e, $33                                     ; $5cab: $1e $33
    ld [bc], a                                    ; $5cad: $02
    jr nz, jr_069_5cc6                            ; $5cae: $20 $16

    inc [hl]                                      ; $5cb0: $34
    ld [bc], a                                    ; $5cb1: $02
    ld hl, $3821                                  ; $5cb2: $21 $21 $38
    rst $38                                       ; $5cb5: $ff
    rst $38                                       ; $5cb6: $ff
    rst $38                                       ; $5cb7: $ff
    ret nz                                        ; $5cb8: $c0

    ld e, h                                       ; $5cb9: $5c
    ld [c], a                                     ; $5cba: $e2
    ld h, b                                       ; $5cbb: $60
    ld a, [$1c65]                                 ; $5cbc: $fa $65 $1c
    ld h, [hl]                                    ; $5cbf: $66
    rra                                           ; $5cc0: $1f
    ld l, $0e                                     ; $5cc1: $2e $0e
    ld c, $0e                                     ; $5cc3: $0e $0e
    ld c, l                                       ; $5cc5: $4d

jr_069_5cc6:
    rst $38                                       ; $5cc6: $ff
    add sp, -$10                                  ; $5cc7: $e8 $f0
    rst $38                                       ; $5cc9: $ff
    ldh [$eb], a                                  ; $5cca: $e0 $eb
    ld h, a                                       ; $5ccc: $67
    ld l, [hl]                                    ; $5ccd: $6e
    ld l, $6e                                     ; $5cce: $2e $6e
    adc $e0                                       ; $5cd0: $ce $e0
    call Call_000_0de0                            ; $5cd2: $cd $e0 $0d
    dec c                                         ; $5cd5: $0d
    jp nc, Jump_069_58e2                          ; $5cd6: $d2 $e2 $58

    ldh a, [rIE]                                  ; $5cd9: $f0 $ff
    ldh [$eb], a                                  ; $5cdb: $e0 $eb
    pop de                                        ; $5cdd: $d1
    ldh [$4e], a                                  ; $5cde: $e0 $4e
    ld c, [hl]                                    ; $5ce0: $4e
    ret nc                                        ; $5ce1: $d0

    rst $20                                       ; $5ce2: $e7
    ld l, $f0                                     ; $5ce3: $2e $f0
    rst $38                                       ; $5ce5: $ff
    ld a, [de]                                    ; $5ce6: $1a
    ldh [$ec], a                                  ; $5ce7: $e0 $ec
    ld l, $4e                                     ; $5ce9: $2e $4e
    pop hl                                        ; $5ceb: $e1
    ld c, [hl]                                    ; $5cec: $4e
    ld c, $f0                                     ; $5ced: $0e $f0
    rst $38                                       ; $5cef: $ff
    ldh a, [$f9]                                  ; $5cf0: $f0 $f9
    ld c, a                                       ; $5cf2: $4f
    ld [c], a                                     ; $5cf3: $e2
    nop                                           ; $5cf4: $00
    ld [$f0e0], sp                                ; $5cf5: $08 $e0 $f0
    rst $38                                       ; $5cf8: $ff
    ldh a, [$f7]                                  ; $5cf9: $f0 $f7
    ret z                                         ; $5cfb: $c8

    pop bc                                        ; $5cfc: $c1
    ldh a, [rIE]                                  ; $5cfd: $f0 $ff
    ldh a, [$f7]                                  ; $5cff: $f0 $f7
    call $f0c0                                    ; $5d01: $cd $c0 $f0
    rst $38                                       ; $5d04: $ff
    nop                                           ; $5d05: $00
    ldh a, [$fc]                                  ; $5d06: $f0 $fc
    rrca                                          ; $5d08: $0f
    ld [c], a                                     ; $5d09: $e2
    ldh a, [rIE]                                  ; $5d0a: $f0 $ff
    ldh a, [$f4]                                  ; $5d0c: $f0 $f4
    rst $08                                       ; $5d0e: $cf
    call nz, $fff0                                ; $5d0f: $c4 $f0 $ff
    ldh [$e8], a                                  ; $5d12: $e0 $e8
    sbc $a3                                       ; $5d14: $de $a3
    ld bc, $d76d                                  ; $5d16: $01 $6d $d7
    and d                                         ; $5d19: $a2
    adc $a7                                       ; $5d1a: $ce $a7
    ldh a, [$e0]                                  ; $5d1c: $f0 $e0
    nop                                           ; $5d1e: $00
    jp nz, $e8f0                                  ; $5d1f: $c2 $f0 $e8

    ldh [$ed], a                                  ; $5d22: $e0 $ed
    ret nc                                        ; $5d24: $d0

    db $e4                                        ; $5d25: $e4
    add hl, bc                                    ; $5d26: $09
    dec c                                         ; $5d27: $0d
    ret c                                         ; $5d28: $d8

    and b                                         ; $5d29: $a0
    cp $e0                                        ; $5d2a: $fe $e0
    dec c                                         ; $5d2c: $0d
    ld [$c9c1], sp                                ; $5d2d: $08 $c1 $c9
    and e                                         ; $5d30: $a3
    ldh a, [$e3]                                  ; $5d31: $f0 $e3
    ret nz                                        ; $5d33: $c0

    and d                                         ; $5d34: $a2
    nop                                           ; $5d35: $00
    cp c                                          ; $5d36: $b9
    and c                                         ; $5d37: $a1
    ld [$e0e2], sp                                ; $5d38: $08 $e2 $e0
    rst $28                                       ; $5d3b: $ef
    ret nc                                        ; $5d3c: $d0

    push hl                                       ; $5d3d: $e5
    db $dd                                        ; $5d3e: $dd
    and b                                         ; $5d3f: $a0
    sub e                                         ; $5d40: $93
    and d                                         ; $5d41: $a2
    add hl, de                                    ; $5d42: $19
    push bc                                       ; $5d43: $c5
    ldh a, [$e5]                                  ; $5d44: $f0 $e5
    nop                                           ; $5d46: $00
    add b                                         ; $5d47: $80
    rst $20                                       ; $5d48: $e7
    sbc d                                         ; $5d49: $9a
    db $e3                                        ; $5d4a: $e3
    ldh [$ed], a                                  ; $5d4b: $e0 $ed
    ret nc                                        ; $5d4d: $d0

    and $51                                       ; $5d4e: $e6 $51
    and b                                         ; $5d50: $a0
    ld a, e                                       ; $5d51: $7b
    pop hl                                        ; $5d52: $e1
    reti                                          ; $5d53: $d9


    and b                                         ; $5d54: $a0
    dec b                                         ; $5d55: $05
    and e                                         ; $5d56: $a3
    ld [$e4f0], sp                                ; $5d57: $08 $f0 $e4
    ret                                           ; $5d5a: $c9


    db $e3                                        ; $5d5b: $e3
    or $80                                        ; $5d5c: $f6 $80
    dec l                                         ; $5d5e: $2d
    ld e, e                                       ; $5d5f: $5b
    db $e3                                        ; $5d60: $e3
    ldh [$ed], a                                  ; $5d61: $e0 $ed
    ret nc                                        ; $5d63: $d0

    push hl                                       ; $5d64: $e5
    add a                                         ; $5d65: $87
    pop hl                                        ; $5d66: $e1
    ld a, b                                       ; $5d67: $78
    inc a                                         ; $5d68: $3c
    pop hl                                        ; $5d69: $e1
    ldh a, [$ed]                                  ; $5d6a: $f0 $ed
    sub d                                         ; $5d6c: $92
    jp nz, $0b6d                                  ; $5d6d: $c2 $6d $0b

    dec bc                                        ; $5d70: $0b
    dec bc                                        ; $5d71: $0b
    cp [hl]                                       ; $5d72: $be
    ldh [rSB], a                                  ; $5d73: $e0 $01
    dec l                                         ; $5d75: $2d
    ldh [$f0], a                                  ; $5d76: $e0 $f0
    sub b                                         ; $5d78: $90
    and $8f                                       ; $5d79: $e6 $8f
    add b                                         ; $5d7b: $80
    sub [hl]                                      ; $5d7c: $96
    and c                                         ; $5d7d: $a1
    push af                                       ; $5d7e: $f5
    add c                                         ; $5d7f: $81
    add l                                         ; $5d80: $85
    add b                                         ; $5d81: $80
    dec e                                         ; $5d82: $1d
    ret nz                                        ; $5d83: $c0

    ld a, d                                       ; $5d84: $7a
    ldh a, [$e4]                                  ; $5d85: $f0 $e4
    dec c                                         ; $5d87: $0d
    jp Jump_000_0ce1                              ; $5d88: $c3 $e1 $0c


    inc c                                         ; $5d8b: $0c
    inc l                                         ; $5d8c: $2c
    inc l                                         ; $5d8d: $2c
    cp l                                          ; $5d8e: $bd
    ldh [$c0], a                                  ; $5d8f: $e0 $c0
    ld a, h                                       ; $5d91: $7c
    pop hl                                        ; $5d92: $e1
    ldh [$ed], a                                  ; $5d93: $e0 $ed
    ret nc                                        ; $5d95: $d0

    jp hl                                         ; $5d96: $e9


    sub h                                         ; $5d97: $94
    jp $c17e                                      ; $5d98: $c3 $7e $c1


    ldh a, [$e6]                                  ; $5d9b: $f0 $e6
    dec c                                         ; $5d9d: $0d
    ld l, l                                       ; $5d9e: $6d
    add hl, bc                                    ; $5d9f: $09
    dec c                                         ; $5da0: $0d
    jp nz, $c1e0                                  ; $5da1: $c2 $e0 $c1

    ldh [$2c], a                                  ; $5da4: $e0 $2c
    cp l                                          ; $5da6: $bd
    ldh [$3b], a                                  ; $5da7: $e0 $3b
    ld [c], a                                     ; $5da9: $e2
    ldh [$eb], a                                  ; $5daa: $e0 $eb
    ret nc                                        ; $5dac: $d0

    push hl                                       ; $5dad: $e5
    add c                                         ; $5dae: $81
    ld l, l                                       ; $5daf: $6d
    rst $38                                       ; $5db0: $ff
    add sp, $08                                   ; $5db1: $e8 $08
    add b                                         ; $5db3: $80
    scf                                           ; $5db4: $37
    ret nz                                        ; $5db5: $c0

    xor $e0                                       ; $5db6: $ee $e0
    jp Jump_069_68e0                              ; $5db8: $c3 $e0 $68


    ret nz                                        ; $5dbb: $c0

    inc c                                         ; $5dbc: $0c
    inc sp                                        ; $5dbd: $33
    inc c                                         ; $5dbe: $0c
    ld c, h                                       ; $5dbf: $4c
    rst $38                                       ; $5dc0: $ff
    pop hl                                        ; $5dc1: $e1
    ld a, h                                       ; $5dc2: $7c
    pop hl                                        ; $5dc3: $e1
    ld c, l                                       ; $5dc4: $4d
    dec l                                         ; $5dc5: $2d
    ldh [$e4], a                                  ; $5dc6: $e0 $e4
    ld [c], a                                     ; $5dc8: $e2
    pop hl                                        ; $5dc9: $e1
    inc l                                         ; $5dca: $2c
    call $a4e6                                    ; $5dcb: $cd $e6 $a4
    add c                                         ; $5dce: $81
    ld l, $0e                                     ; $5dcf: $2e $0e
    ret nc                                        ; $5dd1: $d0

    pop hl                                        ; $5dd2: $e1
    dec c                                         ; $5dd3: $0d
    db $e4                                        ; $5dd4: $e4
    ld [c], a                                     ; $5dd5: $e2
    inc c                                         ; $5dd6: $0c
    add e                                         ; $5dd7: $83
    ld c, $c1                                     ; $5dd8: $0e $c1
    push hl                                       ; $5dda: $e5
    dec bc                                        ; $5ddb: $0b
    inc c                                         ; $5ddc: $0c
    ld c, h                                       ; $5ddd: $4c
    cp d                                          ; $5dde: $ba
    pop hl                                        ; $5ddf: $e1
    cp a                                          ; $5de0: $bf
    db $e4                                        ; $5de1: $e4
    ld a, [$f8c0]                                 ; $5de2: $fa $c0 $f8
    jp nz, $9018                                  ; $5de5: $c2 $18 $90

    ld [c], a                                     ; $5de8: $e2
    ret nc                                        ; $5de9: $d0

    ldh [$c3], a                                  ; $5dea: $e0 $c3
    pop hl                                        ; $5dec: $e1
    ld l, $4e                                     ; $5ded: $2e $4e
    inc c                                         ; $5def: $0c
    pop bc                                        ; $5df0: $c1
    ret nz                                        ; $5df1: $c0

    push hl                                       ; $5df2: $e5
    call z, Call_000_3864                         ; $5df3: $cc $64 $38
    ret                                           ; $5df6: $c9


    pop bc                                        ; $5df7: $c1
    add d                                         ; $5df8: $82
    pop hl                                        ; $5df9: $e1
    ld b, c                                       ; $5dfa: $41
    pop hl                                        ; $5dfb: $e1
    dec c                                         ; $5dfc: $0d
    dec bc                                        ; $5dfd: $0b
    dec hl                                        ; $5dfe: $2b
    cp a                                          ; $5dff: $bf
    pop hl                                        ; $5e00: $e1
    dec sp                                        ; $5e01: $3b
    ldh [$0c], a                                  ; $5e02: $e0 $0c
    or d                                          ; $5e04: $b2
    ld h, b                                       ; $5e05: $60
    ret nz                                        ; $5e06: $c0

    xor $6e                                       ; $5e07: $ee $6e
    ld l, [hl]                                    ; $5e09: $6e
    cp a                                          ; $5e0a: $bf
    ldh [$c0], a                                  ; $5e0b: $e0 $c0
    rst $20                                       ; $5e0d: $e7
    add b                                         ; $5e0e: $80
    db $e3                                        ; $5e0f: $e3
    ld b, l                                       ; $5e10: $45
    db $e3                                        ; $5e11: $e3
    ld c, $80                                     ; $5e12: $0e $80
    db $e3                                        ; $5e14: $e3
    inc l                                         ; $5e15: $2c
    dec c                                         ; $5e16: $0d
    ld c, e                                       ; $5e17: $4b
    cp a                                          ; $5e18: $bf
    pop hl                                        ; $5e19: $e1
    cp e                                          ; $5e1a: $bb
    pop bc                                        ; $5e1b: $c1
    sbc c                                         ; $5e1c: $99
    and c                                         ; $5e1d: $a1
    ld a, b                                       ; $5e1e: $78
    jp $8f6c                                      ; $5e1f: $c3 $6c $8f


    pop hl                                        ; $5e22: $e1
    ld d, b                                       ; $5e23: $50
    ldh [$2e], a                                  ; $5e24: $e0 $2e
    ld l, [hl]                                    ; $5e26: $6e
    ld h, $85                                     ; $5e27: $26 $85
    ld l, l                                       ; $5e29: $6d
    dec c                                         ; $5e2a: $0d
    dec a                                         ; $5e2b: $3d
    pop hl                                        ; $5e2c: $e1
    ld hl, sp+$04                                 ; $5e2d: $f8 $04
    db $e3                                        ; $5e2f: $e3
    pop bc                                        ; $5e30: $c1
    add sp, -$40                                  ; $5e31: $e8 $c0
    ld [c], a                                     ; $5e33: $e2
    dec c                                         ; $5e34: $0d
    ld l, e                                       ; $5e35: $6b
    dec hl                                        ; $5e36: $2b
    dec bc                                        ; $5e37: $0b
    dec c                                         ; $5e38: $0d
    sub d                                         ; $5e39: $92
    cp e                                          ; $5e3a: $bb
    pop bc                                        ; $5e3b: $c1
    dec bc                                        ; $5e3c: $0b
    cp a                                          ; $5e3d: $bf
    db $e3                                        ; $5e3e: $e3
    inc c                                         ; $5e3f: $0c
    pop hl                                        ; $5e40: $e1
    ld c, [hl]                                    ; $5e41: $4e
    ret nc                                        ; $5e42: $d0

    ld [c], a                                     ; $5e43: $e2
    and $67                                       ; $5e44: $e6 $67
    ld l, l                                       ; $5e46: $6d
    ret nc                                        ; $5e47: $d0

    dec a                                         ; $5e48: $3d
    ld [c], a                                     ; $5e49: $e2
    db $10                                        ; $5e4a: $10
    and h                                         ; $5e4b: $a4
    jp nz, Jump_000_00e6                          ; $5e4c: $c2 $e6 $00

    ldh [$6c], a                                  ; $5e4f: $e0 $6c
    ld c, d                                       ; $5e51: $4a
    ldh [$2b], a                                  ; $5e52: $e0 $2b
    ld l, e                                       ; $5e54: $6b
    ld bc, $b82d                                  ; $5e55: $01 $2d $b8
    ret nz                                        ; $5e58: $c0

    or $c3                                        ; $5e59: $f6 $c3
    dec a                                         ; $5e5b: $3d
    ldh [$cc], a                                  ; $5e5c: $e0 $cc
    ret nz                                        ; $5e5e: $c0

    adc l                                         ; $5e5f: $8d
    ld [c], a                                     ; $5e60: $e2
    ret nz                                        ; $5e61: $c0

    ld [$c3a4], a                                 ; $5e62: $ea $a4 $c3
    ld [hl], h                                    ; $5e65: $74
    ret nc                                        ; $5e66: $d0

    add h                                         ; $5e67: $84
    call nc, $0da0                                ; $5e68: $d4 $a0 $0d
    push de                                       ; $5e6b: $d5
    call nz, $2c6c                                ; $5e6c: $c4 $6c $2c
    inc c                                         ; $5e6f: $0c
    db $f4                                        ; $5e70: $f4
    ld [c], a                                     ; $5e71: $e2
    ld d, a                                       ; $5e72: $57
    inc c                                         ; $5e73: $0c
    inc l                                         ; $5e74: $2c
    ld l, h                                       ; $5e75: $6c
    ret nz                                        ; $5e76: $c0

    db $e3                                        ; $5e77: $e3
    dec c                                         ; $5e78: $0d
    add b                                         ; $5e79: $80
    ld [c], a                                     ; $5e7a: $e2
    ld c, $74                                     ; $5e7b: $0e $74
    jp nz, Jump_069_66c2                          ; $5e7d: $c2 $c2 $66

    ld h, [hl]                                    ; $5e80: $66
    ld l, l                                       ; $5e81: $6d
    ret nz                                        ; $5e82: $c0

    db $eb                                        ; $5e83: $eb
    ld e, e                                       ; $5e84: $5b
    ld [c], a                                     ; $5e85: $e2
    dec [hl]                                      ; $5e86: $35
    ret nz                                        ; $5e87: $c0

    adc h                                         ; $5e88: $8c
    and b                                         ; $5e89: $a0
    dec bc                                        ; $5e8a: $0b
    ld l, h                                       ; $5e8b: $6c

jr_069_5e8c:
    add b                                         ; $5e8c: $80
    ret nz                                        ; $5e8d: $c0

    ld [c], a                                     ; $5e8e: $e2
    cp h                                          ; $5e8f: $bc

jr_069_5e90:
    and d                                         ; $5e90: $a2
    xor l                                         ; $5e91: $ad
    jp $f3c0                                      ; $5e92: $c3 $c0 $f3


    inc b                                         ; $5e95: $04
    push bc                                       ; $5e96: $c5
    add hl, bc                                    ; $5e97: $09
    ld b, e                                       ; $5e98: $43
    db $f4                                        ; $5e99: $f4
    and l                                         ; $5e9a: $a5
    dec l                                         ; $5e9b: $2d
    ld [bc], a                                    ; $5e9c: $02
    ld a, a                                       ; $5e9d: $7f
    ld [c], a                                     ; $5e9e: $e2
    inc c                                         ; $5e9f: $0c
    db $fd                                        ; $5ea0: $fd
    ldh [$f8], a                                  ; $5ea1: $e0 $f8
    and b                                         ; $5ea3: $a0
    ld bc, $80e1                                  ; $5ea4: $01 $e1 $80
    db $e3                                        ; $5ea7: $e3
    inc b                                         ; $5ea8: $04

jr_069_5ea9:
    ret z                                         ; $5ea9: $c8

    and [hl]                                      ; $5eaa: $a6
    ld b, d                                       ; $5eab: $42
    ret nz                                        ; $5eac: $c0

    ld hl, sp-$5d                                 ; $5ead: $f8 $a3
    rst $38                                       ; $5eaf: $ff
    ld h, c                                       ; $5eb0: $61
    ld [c], a                                     ; $5eb1: $e2
    and d                                         ; $5eb2: $a2
    pop bc                                        ; $5eb3: $c1
    and d                                         ; $5eb4: $a2
    ldh a, [$e1]                                  ; $5eb5: $f0 $e1
    ld a, [hl]                                    ; $5eb7: $7e
    ldh [$2d], a                                  ; $5eb8: $e0 $2d
    dec l                                         ; $5eba: $2d
    ld e, $45                                     ; $5ebb: $1e $45
    jp nz, $0c0c                                  ; $5ebd: $c2 $0c $0c

    ld l, h                                       ; $5ec0: $6c
    ld c, h                                       ; $5ec1: $4c
    ld l, e                                       ; $5ec2: $6b
    call nz, $e4c0                                ; $5ec3: $c4 $c0 $e4
    ldh [$e2], a                                  ; $5ec6: $e0 $e2
    jr nc, jr_069_5e8c                            ; $5ec8: $30 $c2

    and d                                         ; $5eca: $a2
    cp d                                          ; $5ecb: $ba
    and e                                         ; $5ecc: $a3
    jr c, jr_069_5e90                             ; $5ecd: $38 $c1

    cp l                                          ; $5ecf: $bd
    and b                                         ; $5ed0: $a0
    dec l                                         ; $5ed1: $2d
    ld l, l                                       ; $5ed2: $6d
    call c, $f0a0                                 ; $5ed3: $dc $a0 $f0
    jp hl                                         ; $5ed6: $e9


    add hl, de                                    ; $5ed7: $19
    ld c, l                                       ; $5ed8: $4d
    cp a                                          ; $5ed9: $bf
    ldh [$7d], a                                  ; $5eda: $e0 $7d
    and b                                         ; $5edc: $a0
    ld l, h                                       ; $5edd: $6c
    ld l, h                                       ; $5ede: $6c
    inc l                                         ; $5edf: $2c

Jump_069_5ee0:
    push bc                                       ; $5ee0: $c5
    ld a, [hl]                                    ; $5ee1: $7e
    call nz, $ead0                                ; $5ee2: $c4 $d0 $ea
    ld [hl], b                                    ; $5ee5: $70
    scf                                           ; $5ee6: $37
    call nz, $a2ad                                ; $5ee7: $c4 $ad $a2
    or e                                          ; $5eea: $b3
    and c                                         ; $5eeb: $a1
    ldh a, [$e8]                                  ; $5eec: $f0 $e8
    ld l, l                                       ; $5eee: $6d
    dec c                                         ; $5eef: $0d
    ld c, l                                       ; $5ef0: $4d
    ld a, a                                       ; $5ef1: $7f
    add b                                         ; $5ef2: $80
    inc bc                                        ; $5ef3: $03
    dec bc                                        ; $5ef4: $0b
    dec c                                         ; $5ef5: $0d
    ld b, d                                       ; $5ef6: $42
    db $e4                                        ; $5ef7: $e4
    ld a, [hl]                                    ; $5ef8: $7e
    jp $eed0                                      ; $5ef9: $c3 $d0 $ee


    ld b, $83                                     ; $5efc: $06 $83
    and e                                         ; $5efe: $a3
    pop bc                                        ; $5eff: $c1
    ld l, a                                       ; $5f00: $6f
    and b                                         ; $5f01: $a0
    nop                                           ; $5f02: $00
    ldh a, [$e8]                                  ; $5f03: $f0 $e8
    jr z, jr_069_5ea9                             ; $5f05: $28 $a2

    or l                                          ; $5f07: $b5
    add h                                         ; $5f08: $84
    db $eb                                        ; $5f09: $eb
    and [hl]                                      ; $5f0a: $a6
    db $db                                        ; $5f0b: $db
    pop hl                                        ; $5f0c: $e1
    ret nc                                        ; $5f0d: $d0

    ld a, [c]                                     ; $5f0e: $f2
    ld b, h                                       ; $5f0f: $44
    pop hl                                        ; $5f10: $e1
    call nz, Call_069_4000                        ; $5f11: $c4 $00 $40
    ldh [$e6], a                                  ; $5f14: $e0 $e6
    inc [hl]                                      ; $5f16: $34
    ldh [$c0], a                                  ; $5f17: $e0 $c0
    db $e4                                        ; $5f19: $e4
    ei                                            ; $5f1a: $fb
    ld [$e9e0], a                                 ; $5f1b: $ea $e0 $e9
    ret nc                                        ; $5f1e: $d0

    ld [c], a                                     ; $5f1f: $e2
    dec l                                         ; $5f20: $2d

jr_069_5f21:
    cp e                                          ; $5f21: $bb
    add [hl]                                      ; $5f22: $86
    ld bc, $f50e                                  ; $5f23: $01 $0e $f5
    ldh [$f3], a                                  ; $5f26: $e0 $f3
    and b                                         ; $5f28: $a0
    ldh a, [$e7]                                  ; $5f29: $f0 $e7
    ld a, [hl-]                                   ; $5f2b: $3a
    jp $ecc0                                      ; $5f2c: $c3 $c0 $ec


    ret nc                                        ; $5f2f: $d0

    xor $b2                                       ; $5f30: $ee $b2
    call nz, $8000                                ; $5f32: $c4 $00 $80
    ld [c], a                                     ; $5f35: $e2
    ldh a, [$eb]                                  ; $5f36: $f0 $eb
    ld sp, hl                                     ; $5f38: $f9
    and h                                         ; $5f39: $a4
    ret nz                                        ; $5f3a: $c0

    db $ec                                        ; $5f3b: $ec
    ret nc                                        ; $5f3c: $d0

    db $ec                                        ; $5f3d: $ec
    jr nc, jr_069_5f4d                            ; $5f3e: $30 $0d

    ldh a, [$e8]                                  ; $5f40: $f0 $e8
    xor $62                                       ; $5f42: $ee $62
    inc b                                         ; $5f44: $04
    ld a, [hl]                                    ; $5f45: $7e
    db $ec                                        ; $5f46: $ec
    ld e, l                                       ; $5f47: $5d
    pop bc                                        ; $5f48: $c1
    dec l                                         ; $5f49: $2d
    or d                                          ; $5f4a: $b2
    ld h, d                                       ; $5f4b: $62
    and d                                         ; $5f4c: $a2

jr_069_5f4d:
    ld b, h                                       ; $5f4d: $44
    jr nc, jr_069_5f5d                            ; $5f4e: $30 $0d

    ldh a, [$ea]                                  ; $5f50: $f0 $ea
    cp l                                          ; $5f52: $bd
    push bc                                       ; $5f53: $c5
    nop                                           ; $5f54: $00
    ld b, c                                       ; $5f55: $41
    add sp, -$25                                  ; $5f56: $e8 $db
    pop bc                                        ; $5f58: $c1
    ld e, d                                       ; $5f59: $5a
    and d                                         ; $5f5a: $a2
    ret nc                                        ; $5f5b: $d0

    db $e4                                        ; $5f5c: $e4

jr_069_5f5d:
    jr nc, @+$10                                  ; $5f5d: $30 $0e

    ldh a, [$e9]                                  ; $5f5f: $f0 $e9
    ld d, l                                       ; $5f61: $55
    add d                                         ; $5f62: $82
    ld bc, $00ec                                  ; $5f63: $01 $ec $00
    ld [$c043], sp                                ; $5f66: $08 $43 $c0
    push hl                                       ; $5f69: $e5
    jr nc, jr_069_5f80                            ; $5f6a: $30 $14

    ldh a, [$e4]                                  ; $5f6c: $f0 $e4
    ld [hl], $65                                  ; $5f6e: $36 $65
    ld b, c                                       ; $5f70: $41
    add sp, -$28                                  ; $5f71: $e8 $d8
    inc h                                         ; $5f73: $24
    ret nz                                        ; $5f74: $c0

    db $ec                                        ; $5f75: $ec
    nop                                           ; $5f76: $00
    jr nc, jr_069_5f8a                            ; $5f77: $30 $11

    ldh a, [$e0]                                  ; $5f79: $f0 $e0
    cp $a4                                        ; $5f7b: $fe $a4
    cp e                                          ; $5f7d: $bb
    and c                                         ; $5f7e: $a1
    halt                                          ; $5f7f: $76

jr_069_5f80:
    jp nz, $c39c                                  ; $5f80: $c2 $9c $c3

    ld c, b                                       ; $5f83: $48
    ld b, c                                       ; $5f84: $41
    db $fc                                        ; $5f85: $fc
    ret nz                                        ; $5f86: $c0

    ld d, b                                       ; $5f87: $50
    ret nc                                        ; $5f88: $d0

    db $ed                                        ; $5f89: $ed

jr_069_5f8a:
    jr nc, jr_069_5f99                            ; $5f8a: $30 $0d

    call c, $be00                                 ; $5f8c: $dc $00 $be
    and d                                         ; $5f8f: $a2
    dec hl                                        ; $5f90: $2b
    ld a, h                                       ; $5f91: $7c
    and c                                         ; $5f92: $a1
    dec bc                                        ; $5f93: $0b
    cp b                                          ; $5f94: $b8
    ld h, b                                       ; $5f95: $60
    nop                                           ; $5f96: $00
    ret nz                                        ; $5f97: $c0

    db $ec                                        ; $5f98: $ec

jr_069_5f99:
    ret nc                                        ; $5f99: $d0

    db $ed                                        ; $5f9a: $ed
    jr nc, jr_069_5fad                            ; $5f9b: $30 $10

    jr c, jr_069_5f21                             ; $5f9d: $38 $82

    ret nz                                        ; $5f9f: $c0

    db $e3                                        ; $5fa0: $e3
    add hl, sp                                    ; $5fa1: $39
    and b                                         ; $5fa2: $a0
    rst $20                                       ; $5fa3: $e7
    ld h, d                                       ; $5fa4: $62
    ld hl, sp+$24                                 ; $5fa5: $f8 $24
    ret nz                                        ; $5fa7: $c0

    ld a, h                                       ; $5fa8: $7c
    jp nz, $eed0                                  ; $5fa9: $c2 $d0 $ee

    ld h, b                                       ; $5fac: $60

jr_069_5fad:
    add hl, bc                                    ; $5fad: $09
    ld l, b                                       ; $5fae: $68
    ld hl, $4135                                  ; $5faf: $21 $35 $41
    rst $38                                       ; $5fb2: $ff
    add d                                         ; $5fb3: $82
    dec bc                                        ; $5fb4: $0b
    dec l                                         ; $5fb5: $2d
    nop                                           ; $5fb6: $00
    or [hl]                                       ; $5fb7: $b6
    ld b, c                                       ; $5fb8: $41
    ret nz                                        ; $5fb9: $c0

    ld [c], a                                     ; $5fba: $e2
    ld d, [hl]                                    ; $5fbb: $56
    inc bc                                        ; $5fbc: $03
    ret nz                                        ; $5fbd: $c0

    db $e4                                        ; $5fbe: $e4
    jr nc, jr_069_5fd0                            ; $5fbf: $30 $0f

    ldh a, [$c6]                                  ; $5fc1: $f0 $c6
    add sp, $01                                   ; $5fc3: $e8 $01
    inc [hl]                                      ; $5fc5: $34
    ld b, c                                       ; $5fc6: $41
    nop                                           ; $5fc7: $00
    add d                                         ; $5fc8: $82
    db $e4                                        ; $5fc9: $e4
    ret nz                                        ; $5fca: $c0

    db $e3                                        ; $5fcb: $e3
    ld a, [hl-]                                   ; $5fcc: $3a
    ld b, d                                       ; $5fcd: $42
    db $fc                                        ; $5fce: $fc
    db $e3                                        ; $5fcf: $e3

jr_069_5fd0:
    inc hl                                        ; $5fd0: $23
    inc b                                         ; $5fd1: $04
    jr nc, @+$0f                                  ; $5fd2: $30 $0d

    ldh a, [$e7]                                  ; $5fd4: $f0 $e7
    ld l, b                                       ; $5fd6: $68
    ld bc, $440a                                  ; $5fd7: $01 $0a $44
    ld bc, $406b                                  ; $5fda: $01 $6b $40
    db $e3                                        ; $5fdd: $e3

jr_069_5fde:
    ld c, e                                       ; $5fde: $4b
    jp nz, $88a1                                  ; $5fdf: $c2 $a1 $88

    pop hl                                        ; $5fe2: $e1
    cp l                                          ; $5fe3: $bd
    db $e4                                        ; $5fe4: $e4
    ret nc                                        ; $5fe5: $d0

    db $e4                                        ; $5fe6: $e4
    or b                                          ; $5fe7: $b0
    jr nc, jr_069_5ff7                            ; $5fe8: $30 $0d

    ldh a, [$e5]                                  ; $5fea: $f0 $e5
    inc sp                                        ; $5fec: $33
    add e                                         ; $5fed: $83
    add hl, sp                                    ; $5fee: $39
    ld hl, $4b6b                                  ; $5fef: $21 $6b $4b
    rst $38                                       ; $5ff2: $ff
    pop hl                                        ; $5ff3: $e1
    ld l, e                                       ; $5ff4: $6b
    ld c, $c0                                     ; $5ff5: $0e $c0

jr_069_5ff7:
    ldh [$6d], a                                  ; $5ff7: $e0 $6d
    ld c, l                                       ; $5ff9: $4d
    ld c, $b5                                     ; $5ffa: $0e $b5
    nop                                           ; $5ffc: $00
    or c                                          ; $5ffd: $b1
    nop                                           ; $5ffe: $00
    ret nc                                        ; $5fff: $d0

    add sp, $30                                   ; $6000: $e8 $30
    ld c, $08                                     ; $6002: $0e $08
    ldh a, [$e4]                                  ; $6004: $f0 $e4
    di                                            ; $6006: $f3
    ld h, e                                       ; $6007: $63
    scf                                           ; $6008: $37
    ld [hl+], a                                   ; $6009: $22
    ld c, l                                       ; $600a: $4d
    ld [bc], a                                    ; $600b: $02
    ld h, h                                       ; $600c: $64
    ld l, l                                       ; $600d: $6d
    ld h, d                                       ; $600e: $62
    ret nc                                        ; $600f: $d0

    xor $30                                       ; $6010: $ee $30
    inc c                                         ; $6012: $0c
    nop                                           ; $6013: $00
    ldh a, [$e5]                                  ; $6014: $f0 $e5
    inc d                                         ; $6016: $14
    inc hl                                        ; $6017: $23
    dec b                                         ; $6018: $05
    xor d                                         ; $6019: $aa
    rrca                                          ; $601a: $0f
    and h                                         ; $601b: $a4
    ret nc                                        ; $601c: $d0

    db $eb                                        ; $601d: $eb
    jr nc, jr_069_602d                            ; $601e: $30 $0d

    ldh a, [$e5]                                  ; $6020: $f0 $e5
    inc d                                         ; $6022: $14
    inc hl                                        ; $6023: $23
    nop                                           ; $6024: $00
    adc b                                         ; $6025: $88
    adc c                                         ; $6026: $89
    add b                                         ; $6027: $80
    inc hl                                        ; $6028: $23
    ret nc                                        ; $6029: $d0

    db $ed                                        ; $602a: $ed
    jr nc, jr_069_603f                            ; $602b: $30 $12

jr_069_602d:
    ld [hl], d                                    ; $602d: $72
    ret nz                                        ; $602e: $c0

    call nc, Call_000_3302                        ; $602f: $d4 $02 $33
    ld h, $85                                     ; $6032: $26 $85
    ld [bc], a                                    ; $6034: $02
    nop                                           ; $6035: $00
    call z, $d083                                 ; $6036: $cc $83 $d0
    pop af                                        ; $6039: $f1
    jr nc, @+$0a                                  ; $603a: $30 $08

    ldh a, [$e5]                                  ; $603c: $f0 $e5
    sub h                                         ; $603e: $94

jr_069_603f:
    ld [c], a                                     ; $603f: $e2
    pop bc                                        ; $6040: $c1
    and $a4                                       ; $6041: $e6 $a4
    ld h, $90                                     ; $6043: $26 $90
    db $e3                                        ; $6045: $e3
    nop                                           ; $6046: $00
    ret nc                                        ; $6047: $d0

    add sp, $30                                   ; $6048: $e8 $30
    dec c                                         ; $604a: $0d
    ld e, $45                                     ; $604b: $1e $45
    inc sp                                        ; $604d: $33
    add hl, hl                                    ; $604e: $29
    ldh [$f1], a                                  ; $604f: $e0 $f1
    ret nc                                        ; $6051: $d0

    push hl                                       ; $6052: $e5
    inc a                                         ; $6053: $3c
    ld b, d                                       ; $6054: $42
    jr nc, @+$0a                                  ; $6055: $30 $08

    nop                                           ; $6057: $00
    ldh a, [$e5]                                  ; $6058: $f0 $e5
    jr nz, jr_069_5fde                            ; $605a: $20 $82

    inc sp                                        ; $605c: $33
    inc hl                                        ; $605d: $23
    ldh [$f2], a                                  ; $605e: $e0 $f2
    ret nc                                        ; $6060: $d0

    push hl                                       ; $6061: $e5
    ld b, b                                       ; $6062: $40
    dec b                                         ; $6063: $05
    jr nc, jr_069_6073                            ; $6064: $30 $0d

    ret nz                                        ; $6066: $c0

    jp nz, $8e00                                  ; $6067: $c2 $00 $8e

    ld bc, $63bb                                  ; $606a: $01 $bb $63
    ldh [$ee], a                                  ; $606d: $e0 $ee
    ret nc                                        ; $606f: $d0

    db $ed                                        ; $6070: $ed
    jr nc, jr_069_607b                            ; $6071: $30 $08

jr_069_6073:
    ret nz                                        ; $6073: $c0

    rst $20                                       ; $6074: $e7
    ld d, c                                       ; $6075: $51
    dec h                                         ; $6076: $25
    ldh [$f0], a                                  ; $6077: $e0 $f0
    nop                                           ; $6079: $00
    ret nc                                        ; $607a: $d0

jr_069_607b:
    add sp, $30                                   ; $607b: $e8 $30
    dec c                                         ; $607d: $0d
    ldh a, [$e2]                                  ; $607e: $f0 $e2
    db $ec                                        ; $6080: $ec
    dec b                                         ; $6081: $05
    cp d                                          ; $6082: $ba
    ld hl, $f1e0                                  ; $6083: $21 $e0 $f1
    ret nc                                        ; $6086: $d0

    add sp, $30                                   ; $6087: $e8 $30
    dec c                                         ; $6089: $0d
    nop                                           ; $608a: $00
    xor h                                         ; $608b: $ac
    ld b, $7c                                     ; $608c: $06 $7c
    db $e4                                        ; $608e: $e4
    ldh [$f2], a                                  ; $608f: $e0 $f2
    sub b                                         ; $6091: $90
    add sp, $70                                   ; $6092: $e8 $70
    dec bc                                        ; $6094: $0b
    ldh a, [$e4]                                  ; $6095: $f0 $e4
    ld bc, $3c41                                  ; $6097: $01 $41 $3c
    db $e4                                        ; $609a: $e4
    nop                                           ; $609b: $00
    ldh [$f2], a                                  ; $609c: $e0 $f2
    ld b, b                                       ; $609e: $40
    ld [$f2f0], sp                                ; $609f: $08 $f0 $f2
    add b                                         ; $60a2: $80
    add sp, -$30                                  ; $60a3: $e8 $d0
    db $fd                                        ; $60a5: $fd
    jr nc, @+$0c                                  ; $60a6: $30 $0a

    rra                                           ; $60a8: $1f
    jp z, $abe4                                   ; $60a9: $ca $e4 $ab

    nop                                           ; $60ac: $00
    ret nc                                        ; $60ad: $d0

    ld a, [c]                                     ; $60ae: $f2
    jr nc, jr_069_60c0                            ; $60af: $30 $0f

    ldh a, [$e5]                                  ; $60b1: $f0 $e5
    xor b                                         ; $60b3: $a8
    xor c                                         ; $60b4: $a9
    ldh [$f1], a                                  ; $60b5: $e0 $f1
    sub d                                         ; $60b7: $92
    and l                                         ; $60b8: $a5
    jr nc, @+$0e                                  ; $60b9: $30 $0c

    ldh a, [rIE]                                  ; $60bb: $f0 $ff
    nop                                           ; $60bd: $00
    ldh [$eb], a                                  ; $60be: $e0 $eb

jr_069_60c0:
    jr nc, @+$10                                  ; $60c0: $30 $0e

    ldh a, [rIE]                                  ; $60c2: $f0 $ff
    ldh [$eb], a                                  ; $60c4: $e0 $eb
    jr nc, jr_069_60db                            ; $60c6: $30 $13

    ldh a, [rIE]                                  ; $60c8: $f0 $ff
    ldh [$eb], a                                  ; $60ca: $e0 $eb
    jr nc, jr_069_60d3                            ; $60cc: $30 $05

    nop                                           ; $60ce: $00
    ldh a, [rIE]                                  ; $60cf: $f0 $ff
    ldh [$eb], a                                  ; $60d1: $e0 $eb

jr_069_60d3:
    jr nc, jr_069_60e3                            ; $60d3: $30 $0e

    ldh a, [rIE]                                  ; $60d5: $f0 $ff
    ldh [$eb], a                                  ; $60d7: $e0 $eb
    jr nc, jr_069_60e7                            ; $60d9: $30 $0c

jr_069_60db:
    ldh a, [rIE]                                  ; $60db: $f0 $ff
    ldh [$eb], a                                  ; $60dd: $e0 $eb
    nop                                           ; $60df: $00
    nop                                           ; $60e0: $00
    nop                                           ; $60e1: $00
    rra                                           ; $60e2: $1f

jr_069_60e3:
    ret c                                         ; $60e3: $d8

    push de                                       ; $60e4: $d5
    push de                                       ; $60e5: $d5
    ret c                                         ; $60e6: $d8

jr_069_60e7:
    and b                                         ; $60e7: $a0
    rst $38                                       ; $60e8: $ff
    add sp, -$10                                  ; $60e9: $e8 $f0
    rst $38                                       ; $60eb: $ff
    ldh [$eb], a                                  ; $60ec: $e0 $eb
    ld l, a                                       ; $60ee: $6f
    jp nc, $d4d6                                  ; $60ef: $d2 $d6 $d4

    sub $cd                                       ; $60f2: $d6 $cd
    ld [c], a                                     ; $60f4: $e2
    sbc $df                                       ; $60f5: $de $df
    jp nc, $fce2                                  ; $60f7: $d2 $e2 $fc

    ldh a, [rIE]                                  ; $60fa: $f0 $ff
    ldh [$eb], a                                  ; $60fc: $e0 $eb
    sub $d2                                       ; $60fe: $d6 $d2
    ret nc                                        ; $6100: $d0

    jp nc, $d6d4                                  ; $6101: $d2 $d4 $d6

    rst $18                                       ; $6104: $df
    db $d3                                        ; $6105: $d3
    and b                                         ; $6106: $a0
    and b                                         ; $6107: $a0
    ldh [$e1], a                                  ; $6108: $e0 $e1
    adc c                                         ; $610a: $89
    ldh [$d3], a                                  ; $610b: $e0 $d3
    ret nc                                        ; $610d: $d0

    db $ec                                        ; $610e: $ec
    ldh a, [rIE]                                  ; $610f: $f0 $ff
    ldh [$eb], a                                  ; $6111: $e0 $eb
    rst $10                                       ; $6113: $d7
    call nc, $e0cf                                ; $6114: $d4 $cf $e0
    rst $10                                       ; $6117: $d7
    jp nc, $e7d8                                  ; $6118: $d2 $d8 $e7

    and b                                         ; $611b: $a0
    ld [c], a                                     ; $611c: $e2
    db $e3                                        ; $611d: $e3
    ldh a, [rIE]                                  ; $611e: $f0 $ff
    ldh a, [$f0]                                  ; $6120: $f0 $f0
    db $dd                                        ; $6122: $dd
    reti                                          ; $6123: $d9


    rst $10                                       ; $6124: $d7
    rst $28                                       ; $6125: $ef
    call nc, $ddd7                                ; $6126: $d4 $d7 $dd
    ret nc                                        ; $6129: $d0

    adc a                                         ; $612a: $8f
    ldh [$a0], a                                  ; $612b: $e0 $a0
    db $eb                                        ; $612d: $eb
    and b                                         ; $612e: $a0
    and a                                         ; $612f: $a7
    and b                                         ; $6130: $a0
    rst $10                                       ; $6131: $d7
    jp nc, $fff0                                  ; $6132: $d2 $f0 $ff

    ldh [$eb], a                                  ; $6135: $e0 $eb
    ret nc                                        ; $6137: $d0

    cp [hl]                                       ; $6138: $be
    ldh [$dd], a                                  ; $6139: $e0 $dd
    db $fd                                        ; $613b: $fd
    pop de                                        ; $613c: $d1
    ret nc                                        ; $613d: $d0

    pop hl                                        ; $613e: $e1
    db $ec                                        ; $613f: $ec
    db $ed                                        ; $6140: $ed
    and b                                         ; $6141: $a0
    and b                                         ; $6142: $a0
    jp c, $a4d3                                   ; $6143: $da $d3 $a4

    ldh a, [rIE]                                  ; $6146: $f0 $ff
    ldh [$eb], a                                  ; $6148: $e0 $eb
    call nc, $e050                                ; $614a: $d4 $50 $e0
    ld c, $e0                                     ; $614d: $0e $e0
    rst $10                                       ; $614f: $d7
    adc h                                         ; $6150: $8c
    jp $e9dc                                      ; $6151: $c3 $dc $e9


    rst $10                                       ; $6154: $d7
    ldh a, [rIE]                                  ; $6155: $f0 $ff
    ldh [$eb], a                                  ; $6157: $e0 $eb
    reti                                          ; $6159: $d9


    ld d, b                                       ; $615a: $50
    ldh [$d4], a                                  ; $615b: $e0 $d4
    rst $10                                       ; $615d: $d7
    reti                                          ; $615e: $d9


    ld h, l                                       ; $615f: $65
    jp c, $c44c                                   ; $6160: $da $4c $c4

    jp c, $fff0                                   ; $6163: $da $f0 $ff

    ldh [$eb], a                                  ; $6166: $e0 $eb
    db $db                                        ; $6168: $db
    db $db                                        ; $6169: $db
    call $17e0                                    ; $616a: $cd $e0 $17
    jp c, $dcdb                                   ; $616d: $da $db $dc

    inc c                                         ; $6170: $0c
    call nz, $f0dc                                ; $6171: $c4 $dc $f0
    rst $38                                       ; $6174: $ff
    ldh [$eb], a                                  ; $6175: $e0 $eb
    db $dd                                        ; $6177: $dd
    ld [c], a                                     ; $6178: $e2
    ld [bc], a                                    ; $6179: $02
    jp nc, $d8e1                                  ; $617a: $d2 $e1 $d8

    ret z                                         ; $617d: $c8

    and l                                         ; $617e: $a5
    ldh a, [$e4]                                  ; $617f: $f0 $e4
    nop                                           ; $6181: $00
    jp nz, $e8f0                                  ; $6182: $c2 $f0 $e8

    ldh [$ed], a                                  ; $6185: $e0 $ed
    ret nc                                        ; $6187: $d0

    and $ce                                       ; $6188: $e6 $ce
    sub d                                         ; $618a: $92
    and c                                         ; $618b: $a1
    db $e4                                        ; $618c: $e4
    push hl                                       ; $618d: $e5
    ret c                                         ; $618e: $d8

    ld [$86c0], sp                                ; $618f: $08 $c0 $86
    and a                                         ; $6192: $a7
    db $e4                                        ; $6193: $e4
    push hl                                       ; $6194: $e5
    ld h, d                                       ; $6195: $62
    nop                                           ; $6196: $00
    jp nz, $e0ea                                  ; $6197: $c2 $ea $e0

    rst $30                                       ; $619a: $f7
    ret nc                                        ; $619b: $d0

    and $88                                       ; $619c: $e6 $88
    ld [c], a                                     ; $619e: $e2
    and $e7                                       ; $619f: $e6 $e7
    halt                                          ; $61a1: $76
    ret nz                                        ; $61a2: $c0

    inc bc                                        ; $61a3: $03
    pop de                                        ; $61a4: $d1
    ret nc                                        ; $61a5: $d0

    add hl, bc                                    ; $61a6: $09
    ret nz                                        ; $61a7: $c0

    ldh a, [$e5]                                  ; $61a8: $f0 $e5
    nop                                           ; $61aa: $00
    jp $a536                                      ; $61ab: $c3 $36 $a5


    ldh [$ef], a                                  ; $61ae: $e0 $ef
    ret nc                                        ; $61b0: $d0

    and $1d                                       ; $61b1: $e6 $1d
    db $d3                                        ; $61b3: $d3
    inc d                                         ; $61b4: $14
    pop bc                                        ; $61b5: $c1
    add sp, -$17                                  ; $61b6: $e8 $e9
    jp c, $a3c7                                   ; $61b8: $da $c7 $a3

    ldh a, [$e6]                                  ; $61bb: $f0 $e6
    db $fc                                        ; $61bd: $fc
    add d                                         ; $61be: $82
    rra                                           ; $61bf: $1f
    sbc a                                         ; $61c0: $9f
    sbc l                                         ; $61c1: $9d
    sbc l                                         ; $61c2: $9d
    sbc l                                         ; $61c3: $9d
    sbc a                                         ; $61c4: $9f
    ld a, [c]                                     ; $61c5: $f2
    add c                                         ; $61c6: $81
    ldh [$ef], a                                  ; $61c7: $e0 $ef
    ret nc                                        ; $61c9: $d0

    and $84                                       ; $61ca: $e6 $84
    pop de                                        ; $61cc: $d1
    and b                                         ; $61cd: $a0

jr_069_61ce:
    ld d, [hl]                                    ; $61ce: $56
    jp nz, $c7da                                  ; $61cf: $c2 $da $c7

    and c                                         ; $61d2: $a1
    adc c                                         ; $61d3: $89
    ret nz                                        ; $61d4: $c0

    ldh a, [$e4]                                  ; $61d5: $f0 $e4
    jp $9ce2                                      ; $61d7: $c3 $e2 $9c


    ccf                                           ; $61da: $3f
    ld b, [hl]                                    ; $61db: $46
    ld b, [hl]                                    ; $61dc: $46
    ld b, [hl]                                    ; $61dd: $46
    sbc h                                         ; $61de: $9c
    sbc l                                         ; $61df: $9d
    and d                                         ; $61e0: $a2
    cp l                                          ; $61e1: $bd
    pop hl                                        ; $61e2: $e1
    ldh [$ed], a                                  ; $61e3: $e0 $ed
    ld d, d                                       ; $61e5: $52
    ret nc                                        ; $61e6: $d0

    and $da                                       ; $61e7: $e6 $da
    ld d, h                                       ; $61e9: $54
    ret nz                                        ; $61ea: $c0

    jr jr_069_61ce                                ; $61eb: $18 $e1

    call c, $c087                                 ; $61ed: $dc $87 $c0
    jp c, $c089                                   ; $61f0: $da $89 $c0

    ld a, d                                       ; $61f3: $7a
    ldh a, [$e5]                                  ; $61f4: $f0 $e5
    sbc a                                         ; $61f6: $9f
    jp Jump_000_03e1                              ; $61f7: $c3 $e1 $03


    inc b                                         ; $61fa: $04
    inc b                                         ; $61fb: $04
    inc bc                                        ; $61fc: $03
    cp l                                          ; $61fd: $bd
    ldh [$88], a                                  ; $61fe: $e0 $88
    cp a                                          ; $6200: $bf
    ld [c], a                                     ; $6201: $e2
    ldh [$ec], a                                  ; $6202: $e0 $ec
    ret nc                                        ; $6204: $d0

    push hl                                       ; $6205: $e5
    call c, $c854                                 ; $6206: $dc $54 $c8
    ld c, d                                       ; $6209: $4a
    pop bc                                        ; $620a: $c1
    ldh a, [$e2]                                  ; $620b: $f0 $e2
    sbc a                                         ; $620d: $9f
    rst $28                                       ; $620e: $ef
    sbc l                                         ; $620f: $9d
    and d                                         ; $6210: $a2
    or [hl]                                       ; $6211: $b6
    xor [hl]                                      ; $6212: $ae
    jp nz, $0fe0                                  ; $6213: $c2 $e0 $0f

    sbc b                                         ; $6216: $98
    sbc b                                         ; $6217: $98
    rrca                                          ; $6218: $0f
    rrca                                          ; $6219: $0f
    rlca                                          ; $621a: $07
    inc b                                         ; $621b: $04
    inc bc                                        ; $621c: $03
    cp a                                          ; $621d: $bf
    ld [c], a                                     ; $621e: $e2
    ldh [$e9], a                                  ; $621f: $e0 $e9
    ret nc                                        ; $6221: $d0

    add sp, -$03                                  ; $6222: $e8 $fd
    pop af                                        ; $6224: $f1
    rst $38                                       ; $6225: $ff
    sbc a                                         ; $6226: $9f
    or [hl]                                       ; $6227: $b6
    sub b                                         ; $6228: $90
    sub b                                         ; $6229: $90
    sub b                                         ; $622a: $90
    xor a                                         ; $622b: $af
    ld [bc], a                                    ; $622c: $02
    rrca                                          ; $622d: $0f
    ld a, l                                       ; $622e: $7d
    rlca                                          ; $622f: $07
    rst $38                                       ; $6230: $ff
    ldh [rIF], a                                  ; $6231: $e0 $0f
    nop                                           ; $6233: $00
    ld bc, $020f                                  ; $6234: $01 $0f $02
    cp a                                          ; $6237: $bf
    db $e3                                        ; $6238: $e3
    ldh [$d2], a                                  ; $6239: $e0 $d2
    db $ed                                        ; $623b: $ed
    call nc, $d261                                ; $623c: $d4 $61 $d2
    ld h, d                                       ; $623f: $62
    inc d                                         ; $6240: $14
    push bc                                       ; $6241: $c5

Jump_069_6242:
    inc c                                         ; $6242: $0c
    call nz, $b69f                                ; $6243: $c4 $9f $b6
    jp $c0fe                                      ; $6246: $c3 $fe $c0


    ldh [rDMA], a                                 ; $6249: $e0 $46
    ld [$7906], sp                                ; $624b: $08 $06 $79
    ld a, d                                       ; $624e: $7a
    ld a, h                                       ; $624f: $7c
    ld a, l                                       ; $6250: $7d
    ld b, c                                       ; $6251: $41
    ld [bc], a                                    ; $6252: $02
    cp a                                          ; $6253: $bf
    db $e3                                        ; $6254: $e3
    cp b                                          ; $6255: $b8
    jp nz, $e9d8                                  ; $6256: $c2 $d8 $e9

    sub a                                         ; $6259: $97
    ld h, b                                       ; $625a: $60
    push de                                       ; $625b: $d5
    ld h, b                                       ; $625c: $60
    jp nc, $8296                                  ; $625d: $d2 $96 $82

    ld [hl], b                                    ; $6260: $70
    inc d                                         ; $6261: $14
    add d                                         ; $6262: $82
    inc de                                        ; $6263: $13
    ret nz                                        ; $6264: $c0

    inc c                                         ; $6265: $0c
    add c                                         ; $6266: $81
    adc h                                         ; $6267: $8c
    ret nz                                        ; $6268: $c0

    or [hl]                                       ; $6269: $b6
    jp $c0c4                                      ; $626a: $c3 $c4 $c0


    db $e3                                        ; $626d: $e3
    rst $28                                       ; $626e: $ef
    add b                                         ; $626f: $80
    dec hl                                        ; $6270: $2b
    dec hl                                        ; $6271: $2b
    ld a, a                                       ; $6272: $7f
    cp a                                          ; $6273: $bf
    ldh [$98], a                                  ; $6274: $e0 $98
    sbc b                                         ; $6276: $98
    ld [$aec7], sp                                ; $6277: $08 $c7 $ae
    sub b                                         ; $627a: $90
    or [hl]                                       ; $627b: $b6
    ld [hl], a                                    ; $627c: $77
    ret nz                                        ; $627d: $c0

    db $ec                                        ; $627e: $ec
    ld h, d                                       ; $627f: $62
    ret nc                                        ; $6280: $d0

    db $e4                                        ; $6281: $e4
    db $d3                                        ; $6282: $d3
    sub $02                                       ; $6283: $d6 $02
    ld d, $81                                     ; $6285: $16 $81
    sub $56                                       ; $6287: $d6 $56
    add d                                         ; $6289: $82
    inc d                                         ; $628a: $14
    push bc                                       ; $628b: $c5
    inc c                                         ; $628c: $0c
    add b                                         ; $628d: $80
    add h                                         ; $628e: $84
    pop hl                                        ; $628f: $e1
    pop bc                                        ; $6290: $c1
    ldh [$7f], a                                  ; $6291: $e0 $7f
    ldh [rIE], a                                  ; $6293: $e0 $ff
    ld b, [hl]                                    ; $6295: $46

Jump_069_6296:
    ld [$8008], sp                                ; $6296: $08 $08 $80
    ld a, [hl+]                                   ; $6299: $2a
    jr nz, jr_069_62c6                            ; $629a: $20 $2a

    ld a, a                                       ; $629c: $7f
    rst $38                                       ; $629d: $ff
    ld a, l                                       ; $629e: $7d
    ld [$9897], sp                                ; $629f: $08 $97 $98
    ld [$c3af], sp                                ; $62a2: $08 $af $c3
    jp $bf00                                      ; $62a5: $c3 $00 $bf


    ldh [$ec], a                                  ; $62a8: $e0 $ec
    ld h, b                                       ; $62aa: $60
    ld e, c                                       ; $62ab: $59
    and d                                         ; $62ac: $a2
    ld hl, sp-$1f                                 ; $62ad: $f8 $e1
    db $db                                        ; $62af: $db
    ld h, b                                       ; $62b0: $60
    sbc b                                         ; $62b1: $98
    add c                                         ; $62b2: $81
    dec c                                         ; $62b3: $0d
    pop bc                                        ; $62b4: $c1
    rla                                           ; $62b5: $17
    add b                                         ; $62b6: $80
    ldh [rTMA], a                                 ; $62b7: $e0 $06
    rst $20                                       ; $62b9: $e7
    add h                                         ; $62ba: $84
    ldh [$82], a                                  ; $62bb: $e0 $82
    ldh [$be], a                                  ; $62bd: $e0 $be
    ldh [$c0], a                                  ; $62bf: $e0 $c0
    ldh [$82], a                                  ; $62c1: $e0 $82
    add e                                         ; $62c3: $83
    ld l, $ef                                     ; $62c4: $2e $ef

jr_069_62c6:
    jr nz, jr_069_630a                            ; $62c6: $20 $42

    add c                                         ; $62c8: $81
    ld [$e080], sp                                ; $62c9: $08 $80 $e0
    ld b, [hl]                                    ; $62cc: $46
    call nz, $e0c4                                ; $62cd: $c4 $c4 $e0
    cp a                                          ; $62d0: $bf
    pop hl                                        ; $62d1: $e1
    pop de                                        ; $62d2: $d1
    and e                                         ; $62d3: $a3
    ret nc                                        ; $62d4: $d0

    pop hl                                        ; $62d5: $e1
    add $60                                       ; $62d6: $c6 $60
    rst $10                                       ; $62d8: $d7
    ld h, b                                       ; $62d9: $60
    reti                                          ; $62da: $d9


    db $dd                                        ; $62db: $dd
    db $d3                                        ; $62dc: $d3
    ret                                           ; $62dd: $c9


    jp c, $8217                                   ; $62de: $da $17 $82

    db $10                                        ; $62e1: $10
    and l                                         ; $62e2: $a5
    and c                                         ; $62e3: $a1
    jp $fee1                                      ; $62e4: $c3 $e1 $fe


    ld [c], a                                     ; $62e7: $e2
    call nz, $ff46                                ; $62e8: $c4 $46 $ff
    ld b, $08                                     ; $62eb: $06 $08
    add l                                         ; $62ed: $85
    adc e                                         ; $62ee: $8b
    ld l, $2a                                     ; $62ef: $2e $2a
    add e                                         ; $62f1: $83
    add h                                         ; $62f2: $84
    rra                                           ; $62f3: $1f
    ld [$0100], sp                                ; $62f4: $08 $00 $01
    ld b, $ae                                     ; $62f7: $06 $ae
    ld l, e                                       ; $62f9: $6b
    ldh [$bf], a                                  ; $62fa: $e0 $bf
    ld [c], a                                     ; $62fc: $e2
    and d                                         ; $62fd: $a2
    ld h, b                                       ; $62fe: $60
    xor $d0                                       ; $62ff: $ee $d0
    ld [c], a                                     ; $6301: $e2
    db $d3                                        ; $6302: $d3
    ret nc                                        ; $6303: $d0

    pop de                                        ; $6304: $d1
    rst $10                                       ; $6305: $d7
    ld h, b                                       ; $6306: $60
    ret nc                                        ; $6307: $d0

    ret nc                                        ; $6308: $d0

    rst $10                                       ; $6309: $d7

jr_069_630a:
    ret z                                         ; $630a: $c8

    sub [hl]                                      ; $630b: $96
    add l                                         ; $630c: $85
    inc h                                         ; $630d: $24
    db $e3                                        ; $630e: $e3
    add [hl]                                      ; $630f: $86
    pop bc                                        ; $6310: $c1
    or [hl]                                       ; $6311: $b6
    adc d                                         ; $6312: $8a
    and b                                         ; $6313: $a0
    ld a, a                                       ; $6314: $7f
    ret nz                                        ; $6315: $c0

    sub c                                         ; $6316: $91
    dec b                                         ; $6317: $05
    rst $38                                       ; $6318: $ff
    rrca                                          ; $6319: $0f
    dec b                                         ; $631a: $05
    add d                                         ; $631b: $82
    add e                                         ; $631c: $83
    add e                                         ; $631d: $83
    add [hl]                                      ; $631e: $86
    add l                                         ; $631f: $85
    ld [$98ef], sp                                ; $6320: $08 $ef $98
    rrca                                          ; $6323: $0f
    dec b                                         ; $6324: $05
    xor a                                         ; $6325: $af
    pop bc                                        ; $6326: $c1
    ldh [$c4], a                                  ; $6327: $e0 $c4
    sub b                                         ; $6329: $90
    and c                                         ; $632a: $a1
    db $10                                        ; $632b: $10
    pop de                                        ; $632c: $d1
    and e                                         ; $632d: $a3
    ld h, b                                       ; $632e: $60
    ld b, c                                       ; $632f: $41
    jr jr_069_6393                                ; $6330: $18 $61

    sub $40                                       ; $6332: $d6 $40
    call nc, $8517                                ; $6334: $d4 $17 $85
    db $10                                        ; $6337: $10
    and l                                         ; $6338: $a5
    ld c, l                                       ; $6339: $4d
    and b                                         ; $633a: $a0
    db $fc                                        ; $633b: $fc
    ld c, [hl]                                    ; $633c: $4e
    and c                                         ; $633d: $a1
    ld a, $c0                                     ; $633e: $3e $c0
    jp Jump_000_0646                              ; $6340: $c3 $46 $06


    ld b, $85                                     ; $6343: $06 $85
    add a                                         ; $6345: $87
    cp e                                          ; $6346: $bb
    add a                                         ; $6347: $87
    add l                                         ; $6348: $85
    ret nz                                        ; $6349: $c0

    ret nz                                        ; $634a: $c0

    ld [$9146], sp                                ; $634b: $08 $46 $91
    ld a, [hl+]                                   ; $634e: $2a
    pop hl                                        ; $634f: $e1
    jp $9e51                                      ; $6350: $c3 $51 $9e


    pop de                                        ; $6353: $d1
    and a                                         ; $6354: $a7
    ld d, c                                       ; $6355: $51
    and c                                         ; $6356: $a1

jr_069_6357:
    ret c                                         ; $6357: $d8

    ld h, b                                       ; $6358: $60
    reti                                          ; $6359: $d9


    db $fd                                        ; $635a: $fd
    or a                                          ; $635b: $b7
    call nz, $e07f                                ; $635c: $c4 $7f $e0
    ld l, a                                       ; $635f: $6f
    rlca                                          ; $6360: $07
    rlca                                          ; $6361: $07
    inc b                                         ; $6362: $04
    inc b                                         ; $6363: $04
    rst $38                                       ; $6364: $ff
    and b                                         ; $6365: $a0
    ld b, $46                                     ; $6366: $06 $46
    xor e                                         ; $6368: $ab
    ret nz                                        ; $6369: $c0

    jr nz, jr_069_6357                            ; $636a: $20 $eb

    ret nz                                        ; $636c: $c0

    ret nz                                        ; $636d: $c0

    ldh [$e4], a                                  ; $636e: $e0 $e4
    dec h                                         ; $6370: $25

jr_069_6371:
    ld d, c                                       ; $6371: $51
    and c                                         ; $6372: $a1
    ret c                                         ; $6373: $d8

    ld h, b                                       ; $6374: $60
    db $db                                        ; $6375: $db
    call c, $cd23                                 ; $6376: $dc $23 $cd
    ld a, [hl+]                                   ; $6379: $2a
    jr z, jr_069_6371                             ; $637a: $28 $f5

    ld h, e                                       ; $637c: $63

Call_069_637d:
    ld bc, $45a1                                  ; $637d: $01 $a1 $45
    pop bc                                        ; $6380: $c1
    sbc b                                         ; $6381: $98
    ret nz                                        ; $6382: $c0

    and b                                         ; $6383: $a0
    dec b                                         ; $6384: $05
    add c                                         ; $6385: $81
    pop hl                                        ; $6386: $e1
    ld l, b                                       ; $6387: $68
    ret nz                                        ; $6388: $c0

    nop                                           ; $6389: $00
    ret nz                                        ; $638a: $c0

    db $e4                                        ; $638b: $e4
    push de                                       ; $638c: $d5
    ld h, e                                       ; $638d: $63
    ret z                                         ; $638e: $c8

    ld h, h                                       ; $638f: $64
    call c, Call_069_4721                         ; $6390: $dc $21 $47

jr_069_6393:
    add b                                         ; $6393: $80
    ld c, $80                                     ; $6394: $0e $80
    adc [hl]                                      ; $6396: $8e
    ld h, $f0                                     ; $6397: $26 $f0
    push hl                                       ; $6399: $e5
    rst $28                                       ; $639a: $ef
    sbc a                                         ; $639b: $9f
    sbc h                                         ; $639c: $9c
    inc bc                                        ; $639d: $03
    inc b                                         ; $639e: $04
    ld a, l                                       ; $639f: $7d
    and b                                         ; $63a0: $a0
    inc b                                         ; $63a1: $04
    inc bc                                        ; $63a2: $03
    sub c                                         ; $63a3: $91
    ld b, b                                       ; $63a4: $40
    inc l                                         ; $63a5: $2c
    ret nz                                        ; $63a6: $c0

    rst $38                                       ; $63a7: $ff
    pop bc                                        ; $63a8: $c1
    ld a, [hl]                                    ; $63a9: $7e
    jp nz, $ecd0                                  ; $63aa: $c2 $d0 $ec

    rst $00                                       ; $63ad: $c7
    ld h, b                                       ; $63ae: $60
    rlca                                          ; $63af: $07
    add b                                         ; $63b0: $80
    rst $10                                       ; $63b1: $d7
    ld c, $80                                     ; $63b2: $0e $80
    call c, Call_069_637d                         ; $63b4: $dc $7d $63
    ldh a, [$e8]                                  ; $63b7: $f0 $e8
    and b                                         ; $63b9: $a0
    and c                                         ; $63ba: $a1
    sub c                                         ; $63bb: $91
    ld a, a                                       ; $63bc: $7f
    add b                                         ; $63bd: $80
    ld b, [hl]                                    ; $63be: $46
    xor [hl]                                      ; $63bf: $ae
    add c                                         ; $63c0: $81
    ld b, [hl]                                    ; $63c1: $46
    ld l, $c0                                     ; $63c2: $2e $c0
    ld b, b                                       ; $63c4: $40
    ret nz                                        ; $63c5: $c0

    ld [$bba0], a                                 ; $63c6: $ea $a0 $bb
    and b                                         ; $63c9: $a0
    ret nc                                        ; $63ca: $d0

    db $ed                                        ; $63cb: $ed
    ld sp, hl                                     ; $63cc: $f9
    and e                                         ; $63cd: $a3
    jp c, $0ed8                                   ; $63ce: $da $d8 $0e

    add c                                         ; $63d1: $81
    push af                                       ; $63d2: $f5
    ld h, d                                       ; $63d3: $62
    ldh a, [$e8]                                  ; $63d4: $f0 $e8
    and b                                         ; $63d6: $a0
    sbc [hl]                                      ; $63d7: $9e
    jr c, @-$5d                                   ; $63d8: $38 $a1

    sub c                                         ; $63da: $91
    xor a                                         ; $63db: $af
    ld bc, $2f91                                  ; $63dc: $01 $91 $2f
    jp $a0ea                                      ; $63df: $c3 $ea $a0


    cp [hl]                                       ; $63e2: $be
    ret nz                                        ; $63e3: $c0

    ret nc                                        ; $63e4: $d0

    db $ed                                        ; $63e5: $ed
    rst $00                                       ; $63e6: $c7
    ld h, b                                       ; $63e7: $60
    sub c                                         ; $63e8: $91
    ld b, b                                       ; $63e9: $40
    ret nc                                        ; $63ea: $d0

    ld b, d                                       ; $63eb: $42
    inc c                                         ; $63ec: $0c
    push af                                       ; $63ed: $f5
    ld h, d                                       ; $63ee: $62
    ldh a, [$e8]                                  ; $63ef: $f0 $e8
    and b                                         ; $63f1: $a0
    sbc [hl]                                      ; $63f2: $9e
    dec bc                                        ; $63f3: $0b
    ldh [$f1], a                                  ; $63f4: $e0 $f1
    and e                                         ; $63f6: $a3
    ret nz                                        ; $63f7: $c0

    pop bc                                        ; $63f8: $c1
    ld h, a                                       ; $63f9: $67
    and c                                         ; $63fa: $a1
    ld de, $d09e                                  ; $63fb: $11 $9e $d0
    xor $c7                                       ; $63fe: $ee $c7
    ld h, b                                       ; $6400: $60
    sub c                                         ; $6401: $91
    ld b, e                                       ; $6402: $43
    ld [$c324], a                                 ; $6403: $ea $24 $c3
    ldh a, [$e8]                                  ; $6406: $f0 $e8
    ld a, e                                       ; $6408: $7b
    pop bc                                        ; $6409: $c1
    ld [$e4c1], sp                                ; $640a: $08 $c1 $e4
    ld [bc], a                                    ; $640d: $02
    pop bc                                        ; $640e: $c1
    cp h                                          ; $640f: $bc
    pop bc                                        ; $6410: $c1
    sbc [hl]                                      ; $6411: $9e
    ret nc                                        ; $6412: $d0

    xor $ff                                       ; $6413: $ee $ff
    ld [hl], e                                    ; $6415: $73

jr_069_6416:
    scf                                           ; $6416: $37
    adc c                                         ; $6417: $89
    ld [hl], e                                    ; $6418: $73
    and c                                         ; $6419: $a1
    nop                                           ; $641a: $00
    add d                                         ; $641b: $82
    and b                                         ; $641c: $a0
    ld l, e                                       ; $641d: $6b
    and d                                         ; $641e: $a2
    cp [hl]                                       ; $641f: $be
    and b                                         ; $6420: $a0
    rst $08                                       ; $6421: $cf
    ld l, e                                       ; $6422: $6b
    jr nc, jr_069_6432                            ; $6423: $30 $0d

    ldh a, [$ec]                                  ; $6425: $f0 $ec
    cp a                                          ; $6427: $bf
    add sp, $3b                                   ; $6428: $e8 $3b
    pop hl                                        ; $642a: $e1
    nop                                           ; $642b: $00
    db $fd                                        ; $642c: $fd
    add d                                         ; $642d: $82
    inc d                                         ; $642e: $14
    jp z, Jump_000_0d30                           ; $642f: $ca $30 $0d

jr_069_6432:
    ldh a, [$eb]                                  ; $6432: $f0 $eb
    cp l                                          ; $6434: $bd
    call nz, $c3c2                                ; $6435: $c4 $c2 $c3
    cp $80                                        ; $6438: $fe $80
    ld a, a                                       ; $643a: $7f
    and b                                         ; $643b: $a0
    jr nz, jr_069_6416                            ; $643c: $20 $d8

    dec h                                         ; $643e: $25
    ret nc                                        ; $643f: $d0

    db $e4                                        ; $6440: $e4
    jr nc, jr_069_6450                            ; $6441: $30 $0d

    ldh a, [$ea]                                  ; $6443: $f0 $ea
    nop                                           ; $6445: $00
    ld b, b                                       ; $6446: $40
    sbc [hl]                                      ; $6447: $9e
    or b                                          ; $6448: $b0
    add e                                         ; $6449: $83
    xor a                                         ; $644a: $af
    ld h, c                                       ; $644b: $61
    ld [bc], a                                    ; $644c: $02
    cp $80                                        ; $644d: $fe $80
    sbc [hl]                                      ; $644f: $9e

jr_069_6450:
    ld de, $d8c1                                  ; $6450: $11 $c1 $d8
    inc hl                                        ; $6453: $23
    ret nc                                        ; $6454: $d0

    db $e4                                        ; $6455: $e4
    jr nc, jr_069_6465                            ; $6456: $30 $0d

    ldh a, [$eb]                                  ; $6458: $f0 $eb
    rst $38                                       ; $645a: $ff
    rst $00                                       ; $645b: $c7
    nop                                           ; $645c: $00

jr_069_645d:
    add d                                         ; $645d: $82
    jp nz, $60bc                                  ; $645e: $c2 $bc $60

    ret c                                         ; $6461: $d8

    ld h, $d0                                     ; $6462: $26 $d0
    db $e4                                        ; $6464: $e4

jr_069_6465:
    jr nc, @+$0f                                  ; $6465: $30 $0d

    ldh a, [$eb]                                  ; $6467: $f0 $eb
    cp $a2                                        ; $6469: $fe $a2
    cp e                                          ; $646b: $bb
    and d                                         ; $646c: $a2
    ret nz                                        ; $646d: $c0

    cp a                                          ; $646e: $bf
    add d                                         ; $646f: $82
    ret nz                                        ; $6470: $c0

    add b                                         ; $6471: $80
    ret c                                         ; $6472: $d8

    ld h, $d0                                     ; $6473: $26 $d0
    db $e4                                        ; $6475: $e4
    jr nc, jr_069_6485                            ; $6476: $30 $0d

    ldh a, [$eb]                                  ; $6478: $f0 $eb
    and b                                         ; $647a: $a0
    and c                                         ; $647b: $a1
    rst $18                                       ; $647c: $df
    call nz, Call_069_4590                        ; $647d: $c4 $90 $45
    scf                                           ; $6480: $37
    dec a                                         ; $6481: $3d
    rst $38                                       ; $6482: $ff
    ldh [$37], a                                  ; $6483: $e0 $37

jr_069_6485:
    ld b, l                                       ; $6485: $45
    add b                                         ; $6486: $80
    xor l                                         ; $6487: $ad
    ld b, b                                       ; $6488: $40
    add b                                         ; $6489: $80
    add c                                         ; $648a: $81
    ret c                                         ; $648b: $d8

    dec h                                         ; $648c: $25
    ret nc                                        ; $648d: $d0

    db $e4                                        ; $648e: $e4
    jr nc, jr_069_649e                            ; $648f: $30 $0d

    ldh a, [$eb]                                  ; $6491: $f0 $eb
    halt                                          ; $6493: $76
    ld b, b                                       ; $6494: $40
    sub c                                         ; $6495: $91
    scf                                           ; $6496: $37
    add hl, sp                                    ; $6497: $39
    and h                                         ; $6498: $a4
    ld h, h                                       ; $6499: $64
    rst $38                                       ; $649a: $ff
    ldh [$a5], a                                  ; $649b: $e0 $a5
    add hl, sp                                    ; $649d: $39

jr_069_649e:
    inc l                                         ; $649e: $2c
    ld h, b                                       ; $649f: $60
    add b                                         ; $64a0: $80
    add c                                         ; $64a1: $81
    ldh [$d8], a                                  ; $64a2: $e0 $d8
    dec h                                         ; $64a4: $25
    ret nc                                        ; $64a5: $d0

    db $e4                                        ; $64a6: $e4
    jr nc, jr_069_64b6                            ; $64a7: $30 $0d

    ldh a, [$e6]                                  ; $64a9: $f0 $e6
    ld [hl], b                                    ; $64ab: $70
    inc b                                         ; $64ac: $04
    sbc [hl]                                      ; $64ad: $9e
    ld b, [hl]                                    ; $64ae: $46
    ld a, $7f                                     ; $64af: $3e $7f
    ld l, c                                       ; $64b1: $69
    and e                                         ; $64b2: $a3
    dec [hl]                                      ; $64b3: $35
    dec [hl]                                      ; $64b4: $35
    and e                                         ; $64b5: $a3

jr_069_64b6:
    ld l, d                                       ; $64b6: $6a
    ld a, $81                                     ; $64b7: $3e $81
    jp Jump_000_0840                              ; $64b9: $c3 $40 $08


    ld c, h                                       ; $64bc: $4c
    ld a, $80                                     ; $64bd: $3e $80
    jr nc, jr_069_64cc                            ; $64bf: $30 $0b

    ldh a, [$e6]                                  ; $64c1: $f0 $e6
    add sp, $02                                   ; $64c3: $e8 $02
    ret nz                                        ; $64c5: $c0

    db $e3                                        ; $64c6: $e3
    dec [hl]                                      ; $64c7: $35
    rst $38                                       ; $64c8: $ff
    ldh [$03], a                                  ; $64c9: $e0 $03
    ld l, d                                       ; $64cb: $6a

jr_069_64cc:
    ld a, $7f                                     ; $64cc: $3e $7f
    ld h, b                                       ; $64ce: $60
    add b                                         ; $64cf: $80
    ld h, b                                       ; $64d0: $60
    adc $2c                                       ; $64d1: $ce $2c
    ld a, a                                       ; $64d3: $7f
    ld [hl+], a                                   ; $64d4: $22
    jr nc, jr_069_64e2                            ; $64d5: $30 $0b

    jr z, jr_069_645d                             ; $64d7: $28 $84

    cp [hl]                                       ; $64d9: $be
    add sp, $04                                   ; $64da: $e8 $04
    sbc [hl]                                      ; $64dc: $9e
    sub c                                         ; $64dd: $91
    add hl, sp                                    ; $64de: $39
    ld l, e                                       ; $64df: $6b

jr_069_64e0:
    ld [hl], c                                    ; $64e0: $71
    rst $38                                       ; $64e1: $ff

jr_069_64e2:
    ldh [$6d], a                                  ; $64e2: $e0 $6d
    inc bc                                        ; $64e4: $03
    add hl, sp                                    ; $64e5: $39
    sub b                                         ; $64e6: $90
    ld b, c                                       ; $64e7: $41
    add e                                         ; $64e8: $83
    db $db                                        ; $64e9: $db
    ld l, d                                       ; $64ea: $6a
    jr nc, @+$12                                  ; $64eb: $30 $10

    ldh a, [$e4]                                  ; $64ed: $f0 $e4
    rla                                           ; $64ef: $17
    ld h, h                                       ; $64f0: $64
    or l                                          ; $64f1: $b5
    jr nz, @-$7e                                  ; $64f2: $20 $80

    ret nz                                        ; $64f4: $c0

    add $fe                                       ; $64f5: $c6 $fe
    jr nz, jr_069_64e0                            ; $64f7: $20 $e7

    ld bc, $ecd0                                  ; $64f9: $01 $d0 $ec
    jr nc, jr_069_650b                            ; $64fc: $30 $0d

Jump_069_64fe:
    ldh a, [$e4]                                  ; $64fe: $f0 $e4
    ld hl, sp+$04                                 ; $6500: $f8 $04
    or [hl]                                       ; $6502: $b6
    ld b, $33                                     ; $6503: $06 $33
    ld b, b                                       ; $6505: $40
    sub c                                         ; $6506: $91
    ld b, [hl]                                    ; $6507: $46
    ret nz                                        ; $6508: $c0

    ld h, c                                       ; $6509: $61
    ld b, h                                       ; $650a: $44

jr_069_650b:
    and l                                         ; $650b: $a5
    ret nc                                        ; $650c: $d0

    db $ed                                        ; $650d: $ed
    jr nc, jr_069_651d                            ; $650e: $30 $0d

    ldh a, [$e4]                                  ; $6510: $f0 $e4
    nop                                           ; $6512: $00
    cpl                                           ; $6513: $2f
    ld h, e                                       ; $6514: $63
    ld b, d                                       ; $6515: $42
    and h                                         ; $6516: $a4
    db $ec                                        ; $6517: $ec
    ld hl, $a505                                  ; $6518: $21 $05 $a5
    ret nc                                        ; $651b: $d0

    db $ed                                        ; $651c: $ed

jr_069_651d:
    jr nc, jr_069_652c                            ; $651d: $30 $0d

    ld [$f0e4], sp                                ; $651f: $08 $e4 $f0
    inc hl                                        ; $6522: $23
    nop                                           ; $6523: $00
    ld b, d                                       ; $6524: $42
    and c                                         ; $6525: $a1
    rst $00                                       ; $6526: $c7
    ld b, c                                       ; $6527: $41
    dec l                                         ; $6528: $2d
    ld b, b                                       ; $6529: $40
    nop                                           ; $652a: $00

Call_069_652b:
    dec h                                         ; $652b: $25

jr_069_652c:
    ret nc                                        ; $652c: $d0

    db $ed                                        ; $652d: $ed
    jr nc, @+$0f                                  ; $652e: $30 $0d

    ldh a, [$e5]                                  ; $6530: $f0 $e5
    db $f4                                        ; $6532: $f4
    ld [bc], a                                    ; $6533: $02
    nop                                           ; $6534: $00
    ld a, b                                       ; $6535: $78
    nop                                           ; $6536: $00
    ld b, [hl]                                    ; $6537: $46
    add c                                         ; $6538: $81
    adc c                                         ; $6539: $89
    add l                                         ; $653a: $85
    nop                                           ; $653b: $00
    ld hl, $edd0                                  ; $653c: $21 $d0 $ed
    ld bc, $f495                                  ; $653f: $01 $95 $f4
    ld [bc], a                                    ; $6542: $02
    add $63                                       ; $6543: $c6 $63
    nop                                           ; $6545: $00
    ld c, d                                       ; $6546: $4a
    add [hl]                                      ; $6547: $86
    ret c                                         ; $6548: $d8

    ld bc, $6dd1                                  ; $6549: $01 $d1 $6d
    inc b                                         ; $654c: $04
    sub a                                         ; $654d: $97
    inc sp                                        ; $654e: $33
    jr nz, @-$74                                  ; $654f: $20 $8a

    ld b, b                                       ; $6551: $40
    ld c, c                                       ; $6552: $49
    ret z                                         ; $6553: $c8

    call nc, Call_000_0071                        ; $6554: $d4 $71 $00
    dec b                                         ; $6557: $05
    ld b, d                                       ; $6558: $42
    jr nc, jr_069_6563                            ; $6559: $30 $08

    ldh a, [$e6]                                  ; $655b: $f0 $e6
    ldh a, [rP1]                                  ; $655d: $f0 $00
    cp h                                          ; $655f: $bc
    jr nz, jr_069_6568                            ; $6560: $20 $06

    db $e3                                        ; $6562: $e3

jr_069_6563:
    ldh [$f1], a                                  ; $6563: $e0 $f1
    ret nc                                        ; $6565: $d0

    db $e4                                        ; $6566: $e4
    nop                                           ; $6567: $00

jr_069_6568:
    ld b, b                                       ; $6568: $40
    ld [bc], a                                    ; $6569: $02
    jr nc, jr_069_6579                            ; $656a: $30 $0d

    db $f4                                        ; $656c: $f4
    ld bc, $e200                                  ; $656d: $01 $00 $e2
    inc sp                                        ; $6570: $33
    inc hl                                        ; $6571: $23
    ldh [$f2], a                                  ; $6572: $e0 $f2
    ret nc                                        ; $6574: $d0

    jp hl                                         ; $6575: $e9


    jr nc, @+$0a                                  ; $6576: $30 $08

    nop                                           ; $6578: $00

jr_069_6579:
    ldh a, [$e5]                                  ; $6579: $f0 $e5
    ldh a, [rTIMA]                                ; $657b: $f0 $05
    db $e4                                        ; $657d: $e4
    dec b                                         ; $657e: $05
    ldh [$ed], a                                  ; $657f: $e0 $ed
    ret nc                                        ; $6581: $d0

    push hl                                       ; $6582: $e5
    dec [hl]                                      ; $6583: $35
    add c                                         ; $6584: $81
    jr nc, jr_069_6590                            ; $6585: $30 $09

    ldh a, [$e5]                                  ; $6587: $f0 $e5
    jr jr_069_65ba                                ; $6589: $18 $2f

    add hl, hl                                    ; $658b: $29
    ldh [$f1], a                                  ; $658c: $e0 $f1
    ret nc                                        ; $658e: $d0

    push hl                                       ; $658f: $e5

jr_069_6590:
    db $d3                                        ; $6590: $d3
    jp c, $8317                                   ; $6591: $da $17 $83

    jr nc, jr_069_659b                            ; $6594: $30 $05

    ldh a, [$e5]                                  ; $6596: $f0 $e5
    ld [$a7fc], sp                                ; $6598: $08 $fc $a7

jr_069_659b:
    ldh [$f3], a                                  ; $659b: $e0 $f3
    ret nc                                        ; $659d: $d0

    push hl                                       ; $659e: $e5
    rst $10                                       ; $659f: $d7
    dec [hl]                                      ; $65a0: $35
    add h                                         ; $65a1: $84
    jr nc, jr_069_65a9                            ; $65a2: $30 $05

    ldh a, [$e5]                                  ; $65a4: $f0 $e5
    db $fc                                        ; $65a6: $fc
    and [hl]                                      ; $65a7: $a6
    nop                                           ; $65a8: $00

jr_069_65a9:
    and [hl]                                      ; $65a9: $a6
    inc b                                         ; $65aa: $04
    ldh [$ed], a                                  ; $65ab: $e0 $ed
    ret nc                                        ; $65ad: $d0

    push hl                                       ; $65ae: $e5
    rlca                                          ; $65af: $07
    add a                                         ; $65b0: $87
    jr nc, jr_069_65b6                            ; $65b1: $30 $03

    rst $30                                       ; $65b3: $f7
    ld h, l                                       ; $65b4: $65
    db $10                                        ; $65b5: $10

jr_069_65b6:
    add $e0                                       ; $65b6: $c6 $e0
    db $f4                                        ; $65b8: $f4
    nop                                           ; $65b9: $00

jr_069_65ba:
    ret nc                                        ; $65ba: $d0

    push hl                                       ; $65bb: $e5
    rlca                                          ; $65bc: $07
    add a                                         ; $65bd: $87
    jr nc, jr_069_65c3                            ; $65be: $30 $03

    db $ed                                        ; $65c0: $ed
    xor h                                         ; $65c1: $ac
    rla                                           ; $65c2: $17

jr_069_65c3:
    add a                                         ; $65c3: $87
    ldh [$ec], a                                  ; $65c4: $e0 $ec
    ret nc                                        ; $65c6: $d0

    push hl                                       ; $65c7: $e5
    jr nc, jr_069_65d9                            ; $65c8: $30 $0f

    nop                                           ; $65ca: $00
    dec h                                         ; $65cb: $25
    adc h                                         ; $65cc: $8c
    ldh [$f6], a                                  ; $65cd: $e0 $f6
    ret nc                                        ; $65cf: $d0

    push hl                                       ; $65d0: $e5
    jr nc, @+$0e                                  ; $65d1: $30 $0c

    ldh a, [rIE]                                  ; $65d3: $f0 $ff
    ldh [$eb], a                                  ; $65d5: $e0 $eb
    jr nc, jr_069_65e6                            ; $65d7: $30 $0d

jr_069_65d9:
    ldh a, [rIE]                                  ; $65d9: $f0 $ff
    nop                                           ; $65db: $00
    ldh [$eb], a                                  ; $65dc: $e0 $eb
    jr nc, jr_069_65ed                            ; $65de: $30 $0d

    ldh a, [rIE]                                  ; $65e0: $f0 $ff
    ldh [$eb], a                                  ; $65e2: $e0 $eb
    jr nc, jr_069_65f3                            ; $65e4: $30 $0d

jr_069_65e6:
    ldh a, [rIE]                                  ; $65e6: $f0 $ff
    ldh [$eb], a                                  ; $65e8: $e0 $eb
    jr nc, jr_069_65f9                            ; $65ea: $30 $0d

    nop                                           ; $65ec: $00

jr_069_65ed:
    ldh a, [rIE]                                  ; $65ed: $f0 $ff
    ldh [$eb], a                                  ; $65ef: $e0 $eb
    rst $38                                       ; $65f1: $ff
    halt                                          ; $65f2: $76

jr_069_65f3:
    ldh a, [rIE]                                  ; $65f3: $f0 $ff
    rst $30                                       ; $65f5: $f7
    ld hl, $0000                                  ; $65f6: $21 $00 $00

jr_069_65f9:
    nop                                           ; $65f9: $00
    pop bc                                        ; $65fa: $c1
    nop                                           ; $65fb: $00
    rst $38                                       ; $65fc: $ff
    rst $38                                       ; $65fd: $ff
    rst $38                                       ; $65fe: $ff
    rst $38                                       ; $65ff: $ff
    rst $38                                       ; $6600: $ff
    rst $38                                       ; $6601: $ff
    rst $38                                       ; $6602: $ff
    rst $38                                       ; $6603: $ff
    rst $38                                       ; $6604: $ff
    rst $38                                       ; $6605: $ff
    nop                                           ; $6606: $00
    nop                                           ; $6607: $00
    dec c                                         ; $6608: $0d
    add b                                         ; $6609: $80
    cp $e0                                        ; $660a: $fe $e0
    nop                                           ; $660c: $00
    ld b, b                                       ; $660d: $40
    ret c                                         ; $660e: $d8

    push hl                                       ; $660f: $e5
    rst $30                                       ; $6610: $f7
    and $eb                                       ; $6611: $e6 $eb
    ldh [rIE], a                                  ; $6613: $e0 $ff
    rst $38                                       ; $6615: $ff
    nop                                           ; $6616: $00
    rst $38                                       ; $6617: $ff
    db $f4                                        ; $6618: $f4
    nop                                           ; $6619: $00
    nop                                           ; $661a: $00
    nop                                           ; $661b: $00
    ld [bc], a                                    ; $661c: $02
    nop                                           ; $661d: $00
    ld a, [de]                                    ; $661e: $1a
    db $10                                        ; $661f: $10
    ld [bc], a                                    ; $6620: $02
    ld bc, $1216                                  ; $6621: $01 $16 $12
    ld [bc], a                                    ; $6624: $02
    ld [bc], a                                    ; $6625: $02
    dec d                                         ; $6626: $15
    inc de                                        ; $6627: $13
    ld [bc], a                                    ; $6628: $02
    inc bc                                        ; $6629: $03
    daa                                           ; $662a: $27
    inc de                                        ; $662b: $13
    ld [bc], a                                    ; $662c: $02
    inc b                                         ; $662d: $04
    ld [de], a                                    ; $662e: $12
    inc d                                         ; $662f: $14
    ld [bc], a                                    ; $6630: $02
    dec b                                         ; $6631: $05
    inc d                                         ; $6632: $14
    inc d                                         ; $6633: $14
    ld [bc], a                                    ; $6634: $02
    ld b, $17                                     ; $6635: $06 $17
    inc d                                         ; $6637: $14
    ld [bc], a                                    ; $6638: $02
    rlca                                          ; $6639: $07
    jr z, @+$16                                   ; $663a: $28 $14

    ld [bc], a                                    ; $663c: $02
    ld [$1429], sp                                ; $663d: $08 $29 $14
    ld [bc], a                                    ; $6640: $02
    add hl, bc                                    ; $6641: $09
    ld de, $0215                                  ; $6642: $11 $15 $02
    ld a, [bc]                                    ; $6645: $0a

Jump_069_6646:
    add hl, de                                    ; $6646: $19
    dec d                                         ; $6647: $15
    ld [bc], a                                    ; $6648: $02
    dec bc                                        ; $6649: $0b
    ld a, [hl+]                                   ; $664a: $2a
    dec d                                         ; $664b: $15
    ld [bc], a                                    ; $664c: $02
    inc c                                         ; $664d: $0c
    daa                                           ; $664e: $27
    ld d, $02                                     ; $664f: $16 $02
    dec c                                         ; $6651: $0d
    add hl, hl                                    ; $6652: $29
    ld d, $02                                     ; $6653: $16 $02
    ld c, $2b                                     ; $6655: $0e $2b
    ld d, $02                                     ; $6657: $16 $02
    rrca                                          ; $6659: $0f
    jr z, jr_069_6673                             ; $665a: $28 $17

    ld [bc], a                                    ; $665c: $02
    db $10                                        ; $665d: $10
    ld a, [hl+]                                   ; $665e: $2a
    rla                                           ; $665f: $17
    ld [bc], a                                    ; $6660: $02
    ld de, $181a                                  ; $6661: $11 $1a $18
    ld [bc], a                                    ; $6664: $02
    ld [de], a                                    ; $6665: $12
    inc l                                         ; $6666: $2c
    jr jr_069_666b                                ; $6667: $18 $02

    inc de                                        ; $6669: $13
    daa                                           ; $666a: $27

jr_069_666b:
    add hl, de                                    ; $666b: $19
    ld [bc], a                                    ; $666c: $02
    inc d                                         ; $666d: $14
    add hl, hl                                    ; $666e: $29
    add hl, de                                    ; $666f: $19
    ld [bc], a                                    ; $6670: $02
    dec d                                         ; $6671: $15
    ld a, [hl+]                                   ; $6672: $2a

jr_069_6673:
    ld a, [de]                                    ; $6673: $1a
    ld [bc], a                                    ; $6674: $02
    ld d, $2c                                     ; $6675: $16 $2c
    ld a, [de]                                    ; $6677: $1a
    ld [bc], a                                    ; $6678: $02
    rla                                           ; $6679: $17
    ld h, $1b                                     ; $667a: $26 $1b
    ld [bc], a                                    ; $667c: $02
    jr jr_069_66a7                                ; $667d: $18 $28

    dec de                                        ; $667f: $1b
    ld [bc], a                                    ; $6680: $02
    add hl, de                                    ; $6681: $19
    add hl, hl                                    ; $6682: $29
    dec de                                        ; $6683: $1b
    ld [bc], a                                    ; $6684: $02
    ld a, [de]                                    ; $6685: $1a
    dec hl                                        ; $6686: $2b
    dec de                                        ; $6687: $1b
    ld [bc], a                                    ; $6688: $02
    dec de                                        ; $6689: $1b
    inc hl                                        ; $668a: $23
    inc e                                         ; $668b: $1c
    ld [bc], a                                    ; $668c: $02
    inc e                                         ; $668d: $1c
    ld a, [hl+]                                   ; $668e: $2a
    inc e                                         ; $668f: $1c
    ld [bc], a                                    ; $6690: $02
    dec e                                         ; $6691: $1d

Call_069_6692:
    dec l                                         ; $6692: $2d
    inc e                                         ; $6693: $1c
    ld [bc], a                                    ; $6694: $02
    ld e, $1e                                     ; $6695: $1e $1e
    dec e                                         ; $6697: $1d
    ld [bc], a                                    ; $6698: $02
    rra                                           ; $6699: $1f
    ld l, $1d                                     ; $669a: $2e $1d
    ld [bc], a                                    ; $669c: $02
    jr nz, @+$21                                  ; $669d: $20 $1f

    ld e, $02                                     ; $669f: $1e $02
    ld hl, $1e27                                  ; $66a1: $21 $27 $1e
    ld [bc], a                                    ; $66a4: $02
    ld [hl+], a                                   ; $66a5: $22
    add hl, hl                                    ; $66a6: $29

jr_069_66a7:
    ld e, $02                                     ; $66a7: $1e $02
    inc hl                                        ; $66a9: $23
    dec hl                                        ; $66aa: $2b
    ld e, $02                                     ; $66ab: $1e $02
    inc h                                         ; $66ad: $24
    dec l                                         ; $66ae: $2d
    ld e, $02                                     ; $66af: $1e $02
    dec h                                         ; $66b1: $25
    ld h, $1f                                     ; $66b2: $26 $1f
    ld [bc], a                                    ; $66b4: $02
    ld h, $28                                     ; $66b5: $26 $28
    rra                                           ; $66b7: $1f
    ld [bc], a                                    ; $66b8: $02
    daa                                           ; $66b9: $27
    ld l, $1f                                     ; $66ba: $2e $1f
    ld [bc], a                                    ; $66bc: $02
    jr z, jr_069_66e6                             ; $66bd: $28 $27

    jr nz, jr_069_66c3                            ; $66bf: $20 $02

    add hl, hl                                    ; $66c1: $29

Jump_069_66c2:
    add hl, hl                                    ; $66c2: $29

jr_069_66c3:
    jr nz, @+$04                                  ; $66c3: $20 $02

    ld a, [hl+]                                   ; $66c5: $2a
    jr z, jr_069_66e9                             ; $66c6: $28 $21

    ld [bc], a                                    ; $66c8: $02
    dec hl                                        ; $66c9: $2b
    inc l                                         ; $66ca: $2c
    ld hl, $2c02                                  ; $66cb: $21 $02 $2c
    ld hl, $0222                                  ; $66ce: $21 $22 $02
    dec l                                         ; $66d1: $2d
    dec hl                                        ; $66d2: $2b
    ld [hl+], a                                   ; $66d3: $22
    ld [bc], a                                    ; $66d4: $02
    ld l, $2d                                     ; $66d5: $2e $2d
    ld [hl+], a                                   ; $66d7: $22
    ld [bc], a                                    ; $66d8: $02
    cpl                                           ; $66d9: $2f
    daa                                           ; $66da: $27
    inc hl                                        ; $66db: $23
    ld [bc], a                                    ; $66dc: $02
    jr nc, jr_069_670b                            ; $66dd: $30 $2c

    inc hl                                        ; $66df: $23
    ld [bc], a                                    ; $66e0: $02
    ld sp, $2429                                  ; $66e1: $31 $29 $24
    ld [bc], a                                    ; $66e4: $02
    ld [hl-], a                                   ; $66e5: $32

jr_069_66e6:
    dec hl                                        ; $66e6: $2b
    inc h                                         ; $66e7: $24
    ld [bc], a                                    ; $66e8: $02

jr_069_66e9:
    inc sp                                        ; $66e9: $33
    jr nz, jr_069_6711                            ; $66ea: $20 $25

    ld [bc], a                                    ; $66ec: $02
    inc [hl]                                      ; $66ed: $34
    dec hl                                        ; $66ee: $2b
    daa                                           ; $66ef: $27
    ld [bc], a                                    ; $66f0: $02
    dec [hl]                                      ; $66f1: $35
    ld a, [hl+]                                   ; $66f2: $2a
    jr z, jr_069_66f7                             ; $66f3: $28 $02

    ld [hl], $2c                                  ; $66f5: $36 $2c

jr_069_66f7:
    jr z, jr_069_66fb                             ; $66f7: $28 $02

    scf                                           ; $66f9: $37
    dec hl                                        ; $66fa: $2b

jr_069_66fb:
    add hl, hl                                    ; $66fb: $29
    ld [bc], a                                    ; $66fc: $02
    jr c, jr_069_6720                             ; $66fd: $38 $21

    dec hl                                        ; $66ff: $2b
    ld [bc], a                                    ; $6700: $02
    add hl, sp                                    ; $6701: $39
    ld h, $2c                                     ; $6702: $26 $2c
    ld [bc], a                                    ; $6704: $02
    ld a, [hl-]                                   ; $6705: $3a
    jr z, jr_069_6734                             ; $6706: $28 $2c

    ld [bc], a                                    ; $6708: $02
    dec sp                                        ; $6709: $3b
    rra                                           ; $670a: $1f

jr_069_670b:
    dec l                                         ; $670b: $2d
    ld [bc], a                                    ; $670c: $02
    inc a                                         ; $670d: $3c

jr_069_670e:
    dec h                                         ; $670e: $25
    dec l                                         ; $670f: $2d
    ld [bc], a                                    ; $6710: $02

jr_069_6711:
    dec a                                         ; $6711: $3d
    ld [hl+], a                                   ; $6712: $22
    ld l, $02                                     ; $6713: $2e $02
    ld a, $21                                     ; $6715: $3e $21
    cpl                                           ; $6717: $2f
    ld [bc], a                                    ; $6718: $02
    ccf                                           ; $6719: $3f
    inc hl                                        ; $671a: $23
    cpl                                           ; $671b: $2f
    ld [bc], a                                    ; $671c: $02
    ld b, b                                       ; $671d: $40
    jr nz, jr_069_6750                            ; $671e: $20 $30

jr_069_6720:
    ld [bc], a                                    ; $6720: $02
    ld b, c                                       ; $6721: $41
    ld [hl+], a                                   ; $6722: $22
    jr nc, @+$04                                  ; $6723: $30 $02

    ld b, d                                       ; $6725: $42
    ld e, $31                                     ; $6726: $1e $31
    ld [bc], a                                    ; $6728: $02
    ld b, e                                       ; $6729: $43
    rra                                           ; $672a: $1f
    ld sp, $ffff                                  ; $672b: $31 $ff $ff
    rst $38                                       ; $672e: $ff
    scf                                           ; $672f: $37
    ld h, a                                       ; $6730: $67
    ld d, e                                       ; $6731: $53
    ld l, h                                       ; $6732: $6c
    cp a                                          ; $6733: $bf

jr_069_6734:
    ld [hl], d                                    ; $6734: $72
    pop hl                                        ; $6735: $e1
    ld [hl], d                                    ; $6736: $72
    sbc a                                         ; $6737: $9f
    ld l, $0e                                     ; $6738: $2e $0e
    ld c, $0e                                     ; $673a: $0e $0e
    ld c, l                                       ; $673c: $4d
    rst $38                                       ; $673d: $ff
    add sp, -$10                                  ; $673e: $e8 $f0
    ld [$e30d], a                                 ; $6740: $ea $0d $e3
    dec c                                         ; $6743: $0d
    dec c                                         ; $6744: $0d
    db $e4                                        ; $6745: $e4
    jp hl                                         ; $6746: $e9


    ldh [$ee], a                                  ; $6747: $e0 $ee
    rst $00                                       ; $6749: $c7
    ldh [$6e], a                                  ; $674a: $e0 $6e
    ld l, $6e                                     ; $674c: $2e $6e
    jr jr_069_670e                                ; $674e: $18 $be

jr_069_6750:
    ldh [$bd], a                                  ; $6750: $e0 $bd
    ldh [$d5], a                                  ; $6752: $e0 $d5
    ld [c], a                                     ; $6754: $e2
    ld l, $0e                                     ; $6755: $2e $0e
    ldh a, [$e9]                                  ; $6757: $f0 $e9
    pop bc                                        ; $6759: $c1
    ld [c], a                                     ; $675a: $e2
    cp l                                          ; $675b: $bd
    push hl                                       ; $675c: $e5
    ld e, b                                       ; $675d: $58
    ldh [$f0], a                                  ; $675e: $e0 $f0
    sub d                                         ; $6760: $92
    pop hl                                        ; $6761: $e1

Jump_069_6762:
    pop bc                                        ; $6762: $c1
    ldh [$4e], a                                  ; $6763: $e0 $4e
    ld c, [hl]                                    ; $6765: $4e
    ret nz                                        ; $6766: $c0

    rst $20                                       ; $6767: $e7
    ld l, $f0                                     ; $6768: $2e $f0
    jp hl                                         ; $676a: $e9


    sbc c                                         ; $676b: $99
    dec c                                         ; $676c: $0d
    ld h, [hl]                                    ; $676d: $66
    pop hl                                        ; $676e: $e1
    ld a, l                                       ; $676f: $7d
    pop hl                                        ; $6770: $e1
    ld c, $6d                                     ; $6771: $0e $6d
    ldh [$f2], a                                  ; $6773: $e0 $f2
    ret nc                                        ; $6775: $d0

    ld [c], a                                     ; $6776: $e2
    ld l, $e6                                     ; $6777: $2e $e6
    ld a, $e1                                     ; $6779: $3e $e1
    ld c, [hl]                                    ; $677b: $4e
    ld c, $f0                                     ; $677c: $0e $f0
    pop af                                        ; $677e: $f1
    add b                                         ; $677f: $80
    push hl                                       ; $6780: $e5
    ld l, l                                       ; $6781: $6d
    dec c                                         ; $6782: $0d
    ld c, l                                       ; $6783: $4d
    ld b, e                                       ; $6784: $43
    dec l                                         ; $6785: $2d
    dec l                                         ; $6786: $2d
    ret nc                                        ; $6787: $d0

    ld a, [$e23f]                                 ; $6788: $fa $3f $e2
    ld hl, sp-$40                                 ; $678b: $f8 $c0
    ldh a, [$ed]                                  ; $678d: $f0 $ed
    ld l, l                                       ; $678f: $6d
    rst $38                                       ; $6790: $ff
    ldh [$0a], a                                  ; $6791: $e0 $0a
    pop bc                                        ; $6793: $c1
    ldh [$6d], a                                  ; $6794: $e0 $6d
    ld hl, sp-$40                                 ; $6796: $f8 $c0
    dec l                                         ; $6798: $2d
    ldh [$f1], a                                  ; $6799: $e0 $f1
    ret nz                                        ; $679b: $c0

    jp hl                                         ; $679c: $e9


    cp b                                          ; $679d: $b8
    pop bc                                        ; $679e: $c1
    ldh a, [$ed]                                  ; $679f: $f0 $ed
    ld [bc], a                                    ; $67a1: $02
    ret z                                         ; $67a2: $c8

    pop hl                                        ; $67a3: $e1
    ld c, l                                       ; $67a4: $4d
    pop bc                                        ; $67a5: $c1
    pop hl                                        ; $67a6: $e1
    cp a                                          ; $67a7: $bf
    pop hl                                        ; $67a8: $e1
    ret nc                                        ; $67a9: $d0

    db $fc                                        ; $67aa: $fc
    sub c                                         ; $67ab: $91
    ret nz                                        ; $67ac: $c0

    ldh a, [$ed]                                  ; $67ad: $f0 $ed
    add a                                         ; $67af: $87
    ld [c], a                                     ; $67b0: $e2
    ld h, $41                                     ; $67b1: $26 $41
    ldh [$2b], a                                  ; $67b3: $e0 $2b
    dec hl                                        ; $67b5: $2b
    ld b, c                                       ; $67b6: $41
    ldh [$b7], a                                  ; $67b7: $e0 $b7
    ldh [$0d], a                                  ; $67b9: $e0 $0d
    ret nc                                        ; $67bb: $d0

    db $fc                                        ; $67bc: $fc
    rst $28                                       ; $67bd: $ef
    jp $b0fc                                      ; $67be: $c3 $fc $b0


    rst $20                                       ; $67c1: $e7
    add a                                         ; $67c2: $87
    ld [c], a                                     ; $67c3: $e2
    dec c                                         ; $67c4: $0d
    dec c                                         ; $67c5: $0d

Jump_069_67c6:
    ld a, [bc]                                    ; $67c6: $0a
    ld a, [bc]                                    ; $67c7: $0a
    ld a, [hl+]                                   ; $67c8: $2a
    dec bc                                        ; $67c9: $0b
    add c                                         ; $67ca: $81
    dec l                                         ; $67cb: $2d
    ret nz                                        ; $67cc: $c0

    ld [c], a                                     ; $67cd: $e2
    ldh [$ec], a                                  ; $67ce: $e0 $ec
    ret nc                                        ; $67d0: $d0

    db $ec                                        ; $67d1: $ec
    xor a                                         ; $67d2: $af
    call nz, $e880                                ; $67d3: $c4 $80 $e8
    ret nz                                        ; $67d6: $c0

    ld [c], a                                     ; $67d7: $e2
    dec bc                                        ; $67d8: $0b
    ld c, $c0                                     ; $67d9: $0e $c0
    ldh [rWX], a                                  ; $67db: $e0 $4b
    dec hl                                        ; $67dd: $2b
    dec l                                         ; $67de: $2d

jr_069_67df:
    cp $c0                                        ; $67df: $fe $c0
    ret nz                                        ; $67e1: $c0

    db $ec                                        ; $67e2: $ec
    pop de                                        ; $67e3: $d1
    and c                                         ; $67e4: $a1
    adc $a6                                       ; $67e5: $ce $a6
    ldh [$b7], a                                  ; $67e7: $e0 $b7
    and b                                         ; $67e9: $a0
    cp [hl]                                       ; $67ea: $be
    xor d                                         ; $67eb: $aa
    push bc                                       ; $67ec: $c5
    and c                                         ; $67ed: $a1
    adc e                                         ; $67ee: $8b
    ret nz                                        ; $67ef: $c0

    add d                                         ; $67f0: $82
    ldh [$2a], a                                  ; $67f1: $e0 $2a
    dec hl                                        ; $67f3: $2b
    dec hl                                        ; $67f4: $2b
    rrca                                          ; $67f5: $0f
    ld c, e                                       ; $67f6: $4b
    dec hl                                        ; $67f7: $2b
    dec bc                                        ; $67f8: $0b
    dec hl                                        ; $67f9: $2b
    ccf                                           ; $67fa: $3f
    ldh [$9e], a                                  ; $67fb: $e0 $9e
    xor c                                         ; $67fd: $a9
    ret nc                                        ; $67fe: $d0

    db $e4                                        ; $67ff: $e4
    sbc l                                         ; $6800: $9d
    and c                                         ; $6801: $a1
    ret nz                                        ; $6802: $c0

    sub $a1                                       ; $6803: $d6 $a1
    ld hl, sp-$5f                                 ; $6805: $f8 $a1
    cp c                                          ; $6807: $b9
    and e                                         ; $6808: $a3
    ldh a, [$e3]                                  ; $6809: $f0 $e3
    or b                                          ; $680b: $b0
    and d                                         ; $680c: $a2
    ret z                                         ; $680d: $c8

    pop bc                                        ; $680e: $c1
    ld l, e                                       ; $680f: $6b
    ld a, [bc]                                    ; $6810: $0a
    cp a                                          ; $6811: $bf
    ld a, [hl+]                                   ; $6812: $2a
    ld l, e                                       ; $6813: $6b
    dec bc                                        ; $6814: $0b

jr_069_6815:
    dec bc                                        ; $6815: $0b
    ld a, [bc]                                    ; $6816: $0a
    ld c, d                                       ; $6817: $4a
    ret nz                                        ; $6818: $c0

    ldh [$2d], a                                  ; $6819: $e0 $2d
    nop                                           ; $681b: $00
    cp l                                          ; $681c: $bd
    ret nz                                        ; $681d: $c0

    ret nc                                        ; $681e: $d0

    db $ed                                        ; $681f: $ed
    call $83a0                                    ; $6820: $cd $a0 $83
    and d                                         ; $6823: $a2
    ld sp, hl                                     ; $6824: $f9
    and l                                         ; $6825: $a5
    ldh a, [$e5]                                  ; $6826: $f0 $e5
    ld [$3fc3], sp                                ; $6828: $08 $c3 $3f
    and b                                         ; $682b: $a0
    ccf                                           ; $682c: $3f
    dec hl                                        ; $682d: $2b
    dec hl                                        ; $682e: $2b
    dec hl                                        ; $682f: $2b
    dec bc                                        ; $6830: $0b
    dec bc                                        ; $6831: $0b
    dec hl                                        ; $6832: $2b
    ret nz                                        ; $6833: $c0

    ld [c], a                                     ; $6834: $e2
    inc sp                                        ; $6835: $33
    pop bc                                        ; $6836: $c1
    nop                                           ; $6837: $00
    ret nc                                        ; $6838: $d0

    xor $41                                       ; $6839: $ee $41
    and b                                         ; $683b: $a0
    jr jr_069_67df                                ; $683c: $18 $a1

    cp c                                          ; $683e: $b9
    and b                                         ; $683f: $a0
    push af                                       ; $6840: $f5
    add e                                         ; $6841: $83
    ldh a, [$e4]                                  ; $6842: $f0 $e4
    inc b                                         ; $6844: $04
    pop bc                                        ; $6845: $c1
    ld b, a                                       ; $6846: $47
    jp nz, $0a77                                  ; $6847: $c2 $77 $0a

    dec hl                                        ; $684a: $2b
    ld l, e                                       ; $684b: $6b
    rst $38                                       ; $684c: $ff
    ldh [$0a], a                                  ; $684d: $e0 $0a
    ld a, [hl+]                                   ; $684f: $2a
    ld l, l                                       ; $6850: $6d
    ret nz                                        ; $6851: $c0

    ld [c], a                                     ; $6852: $e2
    add c                                         ; $6853: $81
    ld l, l                                       ; $6854: $6d
    ret nc                                        ; $6855: $d0

    db $ed                                        ; $6856: $ed
    add a                                         ; $6857: $87
    pop hl                                        ; $6858: $e1
    reti                                          ; $6859: $d9


    add c                                         ; $685a: $81
    ldh a, [$ed]                                  ; $685b: $f0 $ed
    ret z                                         ; $685d: $c8

    and b                                         ; $685e: $a0
    pop bc                                        ; $685f: $c1
    db $e3                                        ; $6860: $e3
    ld a, [bc]                                    ; $6861: $0a
    rlca                                          ; $6862: $07
    dec hl                                        ; $6863: $2b
    dec bc                                        ; $6864: $0b
    ld c, e                                       ; $6865: $4b
    cp $a3                                        ; $6866: $fe $a3
    xor a                                         ; $6868: $af
    ldh [$b6], a                                  ; $6869: $e0 $b6
    and b                                         ; $686b: $a0
    ret nc                                        ; $686c: $d0

    db $ec                                        ; $686d: $ec
    adc a                                         ; $686e: $8f
    add c                                         ; $686f: $81
    ret nz                                        ; $6870: $c0

    jr jr_069_6815                                ; $6871: $18 $a2

    add b                                         ; $6873: $80
    db $e3                                        ; $6874: $e3
    db $fd                                        ; $6875: $fd
    and b                                         ; $6876: $a0
    ldh a, [$e4]                                  ; $6877: $f0 $e4
    jp nc, $45e1                                  ; $6879: $d2 $e1 $45

    pop bc                                        ; $687c: $c1
    ld a, [bc]                                    ; $687d: $0a
    dec bc                                        ; $687e: $0b
    nop                                           ; $687f: $00
    ret nz                                        ; $6880: $c0

    ldh [$c1], a                                  ; $6881: $e0 $c1
    db $e3                                        ; $6883: $e3
    ret nz                                        ; $6884: $c0

    pop hl                                        ; $6885: $e1
    ret nc                                        ; $6886: $d0

    ld a, [c]                                     ; $6887: $f2
    ld e, c                                       ; $6888: $59
    add e                                         ; $6889: $83
    ld a, [hl]                                    ; $688a: $7e
    pop bc                                        ; $688b: $c1
    ldh a, [$e9]                                  ; $688c: $f0 $e9
    inc bc                                        ; $688e: $03
    pop hl                                        ; $688f: $e1
    dec bc                                        ; $6890: $0b
    ld c, d                                       ; $6891: $4a
    ld a, [hl+]                                   ; $6892: $2a
    inc bc                                        ; $6893: $03
    ldh [$0b], a                                  ; $6894: $e0 $0b
    ld a, a                                       ; $6896: $7f
    and c                                         ; $6897: $a1
    ld b, b                                       ; $6898: $40
    ret nz                                        ; $6899: $c0

    ret nz                                        ; $689a: $c0

    and $d0                                       ; $689b: $e6 $d0
    add sp, -$40                                  ; $689d: $e8 $c0
    ld e, $a1                                     ; $689f: $1e $a1
    db $fc                                        ; $68a1: $fc
    push hl                                       ; $68a2: $e5
    or h                                          ; $68a3: $b4
    add c                                         ; $68a4: $81
    ldh a, [$e7]                                  ; $68a5: $f0 $e7
    ld a, [bc]                                    ; $68a7: $0a
    and c                                         ; $68a8: $a1
    call nz, $0dc1                                ; $68a9: $c4 $c1 $0d
    ld l, e                                       ; $68ac: $6b
    add b                                         ; $68ad: $80
    add b                                         ; $68ae: $80
    ld [c], a                                     ; $68af: $e2
    ld [bc], a                                    ; $68b0: $02
    ld [c], a                                     ; $68b1: $e2
    db $fc                                        ; $68b2: $fc
    db $eb                                        ; $68b3: $eb
    add h                                         ; $68b4: $84
    add c                                         ; $68b5: $81
    adc $e2                                       ; $68b6: $ce $e2
    inc h                                         ; $68b8: $24
    pop hl                                        ; $68b9: $e1
    ld [hl], l                                    ; $68ba: $75
    add c                                         ; $68bb: $81
    ld c, [hl]                                    ; $68bc: $4e
    inc sp                                        ; $68bd: $33
    ld c, $4e                                     ; $68be: $0e $4e
    ldh a, [$e6]                                  ; $68c0: $f0 $e6
    ld a, [bc]                                    ; $68c2: $0a
    and e                                         ; $68c3: $a3
    ld l, e                                       ; $68c4: $6b
    dec bc                                        ; $68c5: $0b
    db $fc                                        ; $68c6: $fc
    db $e3                                        ; $68c7: $e3
    ld b, c                                       ; $68c8: $41
    and b                                         ; $68c9: $a0
    db $d3                                        ; $68ca: $d3
    dec l                                         ; $68cb: $2d
    dec l                                         ; $68cc: $2d
    call c, $d0a4                                 ; $68cd: $dc $a4 $d0
    ld [$c00e], a                                 ; $68d0: $ea $0e $c0
    rst $20                                       ; $68d3: $e7
    ld l, [hl]                                    ; $68d4: $6e
    ld l, [hl]                                    ; $68d5: $6e
    ldh a, [$bf]                                  ; $68d6: $f0 $bf
    ldh [$f0], a                                  ; $68d8: $e0 $f0
    push hl                                       ; $68da: $e5
    add d                                         ; $68db: $82
    ld [c], a                                     ; $68dc: $e2
    jp Jump_000_0be0                              ; $68dd: $c3 $e0 $0b


Jump_069_68e0:
    dec c                                         ; $68e0: $0d
    dec bc                                        ; $68e1: $0b
    dec hl                                        ; $68e2: $2b
    ld h, c                                       ; $68e3: $61
    ld c, e                                       ; $68e4: $4b
    cp b                                          ; $68e5: $b8
    and c                                         ; $68e6: $a1
    dec a                                         ; $68e7: $3d
    add b                                         ; $68e8: $80
    call c, $d0a4                                 ; $68e9: $dc $a4 $d0
    ld a, [c]                                     ; $68ec: $f2
    ld l, $6e                                     ; $68ed: $2e $6e
    ld [hl], $85                                  ; $68ef: $36 $85
    ld c, h                                       ; $68f1: $4c
    ret c                                         ; $68f2: $d8

    jp nz, $c345                                  ; $68f3: $c2 $45 $c3

    ld a, [hl+]                                   ; $68f6: $2a
    ld a, [hl+]                                   ; $68f7: $2a
    inc b                                         ; $68f8: $04
    ret nz                                        ; $68f9: $c0

    ld a, $e0                                     ; $68fa: $3e $e0
    dec c                                         ; $68fc: $0d
    ld [hl], a                                    ; $68fd: $77
    and c                                         ; $68fe: $a1
    ld de, $202d                                  ; $68ff: $11 $2d $20
    ldh [$d5], a                                  ; $6902: $e0 $d5
    ld h, d                                       ; $6904: $62
    ret nc                                        ; $6905: $d0

    db $ed                                        ; $6906: $ed
    dec c                                         ; $6907: $0d
    dec bc                                        ; $6908: $0b
    pop hl                                        ; $6909: $e1
    or $67                                        ; $690a: $f6 $67
    ldh a, [$e1]                                  ; $690c: $f0 $e1
    ld [$e204], sp                                ; $690e: $08 $04 $e2
    ret z                                         ; $6911: $c8

    add c                                         ; $6912: $81
    nop                                           ; $6913: $00
    pop hl                                        ; $6914: $e1
    ld c, e                                       ; $6915: $4b
    add b                                         ; $6916: $80
    jp $e080                                      ; $6917: $c3 $80 $e0


    ld e, h                                       ; $691a: $5c
    call nz, $ecd0                                ; $691b: $c4 $d0 $ec
    ldh [$3d], a                                  ; $691e: $e0 $3d
    ld [c], a                                     ; $6920: $e2
    ldh a, [$ea]                                  ; $6921: $f0 $ea
    ld b, e                                       ; $6923: $43
    db $e3                                        ; $6924: $e3
    add hl, bc                                    ; $6925: $09
    and b                                         ; $6926: $a0
    ld b, d                                       ; $6927: $42
    ldh [$0d], a                                  ; $6928: $e0 $0d
    dec c                                         ; $692a: $0d
    ld c, e                                       ; $692b: $4b
    add b                                         ; $692c: $80
    ei                                            ; $692d: $fb
    pop hl                                        ; $692e: $e1
    cp [hl]                                       ; $692f: $be
    ld h, c                                       ; $6930: $61
    sbc h                                         ; $6931: $9c
    and h                                         ; $6932: $a4
    ret nc                                        ; $6933: $d0

    db $ed                                        ; $6934: $ed
    xor b                                         ; $6935: $a8
    and d                                         ; $6936: $a2
    ldh a, [$ea]                                  ; $6937: $f0 $ea
    ld c, c                                       ; $6939: $49
    and c                                         ; $693a: $a1
    dec c                                         ; $693b: $0d
    add b                                         ; $693c: $80
    ld b, a                                       ; $693d: $47
    ld [c], a                                     ; $693e: $e2
    nop                                           ; $693f: $00
    ldh [$81], a                                  ; $6940: $e0 $81
    ret nz                                        ; $6942: $c0

    cp b                                          ; $6943: $b8
    add d                                         ; $6944: $82
    rst $38                                       ; $6945: $ff
    ld h, b                                       ; $6946: $60
    ld e, h                                       ; $6947: $5c
    and e                                         ; $6948: $a3
    ret nc                                        ; $6949: $d0

    db $eb                                        ; $694a: $eb

jr_069_694b:
    ld l, l                                       ; $694b: $6d
    ld [hl], b                                    ; $694c: $70
    ret nz                                        ; $694d: $c0

    db $ec                                        ; $694e: $ec
    ldh a, [$e0]                                  ; $694f: $f0 $e0
    adc a                                         ; $6951: $8f
    ld h, e                                       ; $6952: $63
    rlca                                          ; $6953: $07
    ld [c], a                                     ; $6954: $e2
    dec bc                                        ; $6955: $0b
    ld c, e                                       ; $6956: $4b
    ld l, e                                       ; $6957: $6b
    jp nz, $80c0                                  ; $6958: $c2 $c0 $80

    ld [bc], a                                    ; $695b: $02
    ld h, c                                       ; $695c: $61
    cp a                                          ; $695d: $bf
    ld h, c                                       ; $695e: $61
    ld e, d                                       ; $695f: $5a
    add e                                         ; $6960: $83
    ret nz                                        ; $6961: $c0

    db $ed                                        ; $6962: $ed
    inc b                                         ; $6963: $04
    push bc                                       ; $6964: $c5
    ldh a, [$e6]                                  ; $6965: $f0 $e6
    inc b                                         ; $6967: $04
    pop hl                                        ; $6968: $e1
    dec c                                         ; $6969: $0d
    ld de, $c82d                                  ; $696a: $11 $2d $c8
    and b                                         ; $696d: $a0
    ld b, $a0                                     ; $696e: $06 $a0
    jp nz, Jump_000_2be2                          ; $6970: $c2 $e2 $2b

    ld a, $62                                     ; $6973: $3e $62
    ret nz                                        ; $6975: $c0

    add b                                         ; $6976: $80
    ld a, l                                       ; $6977: $7d
    add b                                         ; $6978: $80
    jr nz, jr_069_694b                            ; $6979: $20 $d0

    db $ec                                        ; $697b: $ec
    ret z                                         ; $697c: $c8

    and e                                         ; $697d: $a3
    ret                                           ; $697e: $c9


    and b                                         ; $697f: $a0
    ld b, h                                       ; $6980: $44
    ld b, c                                       ; $6981: $41
    ld b, h                                       ; $6982: $44

jr_069_6983:
    push bc                                       ; $6983: $c5
    dec hl                                        ; $6984: $2b
    adc a                                         ; $6985: $8f
    ld h, b                                       ; $6986: $60
    add a                                         ; $6987: $87
    jp Jump_000_0800                              ; $6988: $c3 $00 $08


    pop bc                                        ; $698b: $c1
    jp nz, Jump_000_33e3                          ; $698c: $c2 $e3 $33

    ld h, b                                       ; $698f: $60
    jp $d0e5                                      ; $6990: $c3 $e5 $d0


    ld [$c107], a                                 ; $6993: $ea $07 $c1
    rst $00                                       ; $6996: $c7
    and b                                         ; $6997: $a0
    pop hl                                        ; $6998: $e1
    pop hl                                        ; $6999: $e1
    ld [hl], h                                    ; $699a: $74
    and c                                         ; $699b: $a1
    ld [c], a                                     ; $699c: $e2
    dec bc                                        ; $699d: $0b
    ld h, c                                       ; $699e: $61
    ld c, l                                       ; $699f: $4d
    ld c, c                                       ; $69a0: $49
    and c                                         ; $69a1: $a1
    dec bc                                        ; $69a2: $0b
    dec bc                                        ; $69a3: $0b
    ld l, e                                       ; $69a4: $6b
    add [hl]                                      ; $69a5: $86
    ld h, c                                       ; $69a6: $61
    nop                                           ; $69a7: $00
    ld b, e                                       ; $69a8: $43
    and d                                         ; $69a9: $a2
    pop bc                                        ; $69aa: $c1
    db $e3                                        ; $69ab: $e3
    add c                                         ; $69ac: $81
    db $e3                                        ; $69ad: $e3
    ret nc                                        ; $69ae: $d0

    db $ec                                        ; $69af: $ec
    rlca                                          ; $69b0: $07
    call nz, $a27d                                ; $69b1: $c4 $7d $a2
    or e                                          ; $69b4: $b3
    and c                                         ; $69b5: $a1
    bit 0, d                                      ; $69b6: $cb $42
    nop                                           ; $69b8: $00
    inc c                                         ; $69b9: $0c
    add c                                         ; $69ba: $81
    ld b, $c0                                     ; $69bb: $06 $c0
    ld a, b                                       ; $69bd: $78
    ldh [rTMA], a                                 ; $69be: $e0 $06
    ld h, c                                       ; $69c0: $61
    add $61                                       ; $69c1: $c6 $61
    inc bc                                        ; $69c3: $03
    add c                                         ; $69c4: $81
    ldh [$e2], a                                  ; $69c5: $e0 $e2
    ret nc                                        ; $69c7: $d0

    db $ed                                        ; $69c8: $ed
    adc b                                         ; $69c9: $88
    dec sp                                        ; $69ca: $3b
    and e                                         ; $69cb: $a3
    inc a                                         ; $69cc: $3c
    add b                                         ; $69cd: $80
    ldh [$a1], a                                  ; $69ce: $e0 $a1
    ld c, [hl]                                    ; $69d0: $4e
    rlca                                          ; $69d1: $07
    and l                                         ; $69d2: $a5
    add d                                         ; $69d3: $82
    pop bc                                        ; $69d4: $c1
    cp a                                          ; $69d5: $bf
    pop hl                                        ; $69d6: $e1
    ld c, e                                       ; $69d7: $4b
    nop                                           ; $69d8: $00
    push bc                                       ; $69d9: $c5
    ld b, b                                       ; $69da: $40
    dec b                                         ; $69db: $05
    and h                                         ; $69dc: $a4
    ldh [$e4], a                                  ; $69dd: $e0 $e4
    ret nc                                        ; $69df: $d0

    db $ed                                        ; $69e0: $ed
    ret nz                                        ; $69e1: $c0

    db $e4                                        ; $69e2: $e4
    push hl                                       ; $69e3: $e5
    pop bc                                        ; $69e4: $c1
    or h                                          ; $69e5: $b4
    nop                                           ; $69e6: $00
    sbc h                                         ; $69e7: $9c
    ld h, c                                       ; $69e8: $61
    ld a, d                                       ; $69e9: $7a
    adc e                                         ; $69ea: $8b
    ld b, d                                       ; $69eb: $42
    ld l, e                                       ; $69ec: $6b
    cp [hl]                                       ; $69ed: $be
    db $e3                                        ; $69ee: $e3
    dec hl                                        ; $69ef: $2b
    ld c, d                                       ; $69f0: $4a
    ld a, [bc]                                    ; $69f1: $0a
    ld c, d                                       ; $69f2: $4a
    add a                                         ; $69f3: $87
    ld h, b                                       ; $69f4: $60
    jr nz, jr_069_6983                            ; $69f5: $20 $8c

    and d                                         ; $69f7: $a2
    ldh [$e3], a                                  ; $69f8: $e0 $e3
    ret nc                                        ; $69fa: $d0

    db $ec                                        ; $69fb: $ec
    xor e                                         ; $69fc: $ab
    and b                                         ; $69fd: $a0
    cp e                                          ; $69fe: $bb
    add h                                         ; $69ff: $84
    ld c, $a0                                     ; $6a00: $0e $a0
    and c                                         ; $6a02: $a1
    di                                            ; $6a03: $f3
    and b                                         ; $6a04: $a0
    ld [$61b1], sp                                ; $6a05: $08 $b1 $61
    ret nz                                        ; $6a08: $c0

    and $06                                       ; $6a09: $e6 $06
    ld h, b                                       ; $6a0b: $60
    ld a, [bc]                                    ; $6a0c: $0a
    ld b, d                                       ; $6a0d: $42
    jr nz, jr_069_6a14                            ; $6a0e: $20 $04

    add d                                         ; $6a10: $82
    ldh [$e3], a                                  ; $6a11: $e0 $e3
    ret nc                                        ; $6a13: $d0

jr_069_6a14:
    xor $e8                                       ; $6a14: $ee $e8
    ld c, e                                       ; $6a16: $4b
    add h                                         ; $6a17: $84
    add b                                         ; $6a18: $80
    pop hl                                        ; $6a19: $e1
    ret nz                                        ; $6a1a: $c0

    ld [c], a                                     ; $6a1b: $e2
    ld l, l                                       ; $6a1c: $6d
    adc c                                         ; $6a1d: $89
    ld b, d                                       ; $6a1e: $42
    ld l, e                                       ; $6a1f: $6b
    ld c, e                                       ; $6a20: $4b
    ld c, e                                       ; $6a21: $4b
    ld b, $fe                                     ; $6a22: $06 $fe
    jp nz, Jump_069_6b0b                          ; $6a24: $c2 $0b $6b

    add [hl]                                      ; $6a27: $86
    pop hl                                        ; $6a28: $e1
    ret nz                                        ; $6a29: $c0

    add sp, -$30                                  ; $6a2a: $e8 $d0
    db $ec                                        ; $6a2c: $ec
    jr nc, jr_069_6a3a                            ; $6a2d: $30 $0b

    ld a, [c]                                     ; $6a2f: $f2
    ld h, e                                       ; $6a30: $63
    ld [$4248], sp                                ; $6a31: $08 $48 $42
    ld [$7da0], sp                                ; $6a34: $08 $a0 $7d
    pop bc                                        ; $6a37: $c1
    ld c, e                                       ; $6a38: $4b
    push af                                       ; $6a39: $f5

jr_069_6a3a:
    and b                                         ; $6a3a: $a0
    ld a, $01                                     ; $6a3b: $3e $01
    ld b, e                                       ; $6a3d: $43
    ld b, h                                       ; $6a3e: $44
    ld [de], a                                    ; $6a3f: $12
    ld b, l                                       ; $6a40: $45
    nop                                           ; $6a41: $00
    call Call_000_30e6                            ; $6a42: $cd $e6 $30
    ld a, [bc]                                    ; $6a45: $0a
    db $f4                                        ; $6a46: $f4
    and l                                         ; $6a47: $a5
    add l                                         ; $6a48: $85
    ld [bc], a                                    ; $6a49: $02
    ret z                                         ; $6a4a: $c8

    ld h, b                                       ; $6a4b: $60
    db $fc                                        ; $6a4c: $fc
    add c                                         ; $6a4d: $81
    add b                                         ; $6a4e: $80
    pop bc                                        ; $6a4f: $c1
    ld bc, $0022                                  ; $6a50: $01 $22 $00
    inc a                                         ; $6a53: $3c
    nop                                           ; $6a54: $00
    call nc, $d020                                ; $6a55: $d4 $20 $d0
    ld [$a12f], a                                 ; $6a58: $ea $2f $a1
    jr nc, jr_069_6a66                            ; $6a5b: $30 $09

    db $f4                                        ; $6a5d: $f4
    and h                                         ; $6a5e: $a4
    sub c                                         ; $6a5f: $91
    ld bc, $2246                                  ; $6a60: $01 $46 $22
    nop                                           ; $6a63: $00
    ld b, h                                       ; $6a64: $44
    ld b, c                                       ; $6a65: $41

jr_069_6a66:
    ei                                            ; $6a66: $fb
    ld h, c                                       ; $6a67: $61
    ret nz                                        ; $6a68: $c0

    inc bc                                        ; $6a69: $03
    ld b, b                                       ; $6a6a: $40
    inc bc                                        ; $6a6b: $03
    ret nc                                        ; $6a6c: $d0

    jp hl                                         ; $6a6d: $e9


    jr nc, jr_069_6a7d                            ; $6a6e: $30 $0d

    ei                                            ; $6a70: $fb
    ld h, h                                       ; $6a71: $64
    add hl, bc                                    ; $6a72: $09
    inc h                                         ; $6a73: $24
    ld bc, $c34d                                  ; $6a74: $01 $4d $c3
    pop hl                                        ; $6a77: $e1
    nop                                           ; $6a78: $00
    add b                                         ; $6a79: $80
    jp nz, Jump_000_0183                          ; $6a7a: $c2 $83 $01

jr_069_6a7d:
    and e                                         ; $6a7d: $a3
    ret nc                                        ; $6a7e: $d0

    db $eb                                        ; $6a7f: $eb
    jr nc, jr_069_6a8f                            ; $6a80: $30 $0d

    inc [hl]                                      ; $6a82: $34
    push bc                                       ; $6a83: $c5
    nop                                           ; $6a84: $00
    ld b, a                                       ; $6a85: $47
    inc hl                                        ; $6a86: $23
    add b                                         ; $6a87: $80
    ld h, b                                       ; $6a88: $60
    ld a, [$81a3]                                 ; $6a89: $fa $a3 $81
    add h                                         ; $6a8c: $84
    inc e                                         ; $6a8d: $1c
    and e                                         ; $6a8e: $a3

jr_069_6a8f:
    ret nc                                        ; $6a8f: $d0

    jp hl                                         ; $6a90: $e9


    jr nc, jr_069_6aa0                            ; $6a91: $30 $0d

    db $f4                                        ; $6a93: $f4
    and l                                         ; $6a94: $a5
    ld [bc], a                                    ; $6a95: $02
    adc b                                         ; $6a96: $88
    inc b                                         ; $6a97: $04
    ld l, e                                       ; $6a98: $6b
    ld a, l                                       ; $6a99: $7d
    jp nz, Jump_000_2082                          ; $6a9a: $c2 $82 $20

    ld b, b                                       ; $6a9d: $40
    ld b, l                                       ; $6a9e: $45
    ret nc                                        ; $6a9f: $d0

jr_069_6aa0:
    db $ed                                        ; $6aa0: $ed
    ld b, b                                       ; $6aa1: $40
    dec c                                         ; $6aa2: $0d
    xor a                                         ; $6aa3: $af
    ld b, [hl]                                    ; $6aa4: $46
    ld a, [bc]                                    ; $6aa5: $0a
    add $03                                       ; $6aa6: $c6 $03
    ld c, l                                       ; $6aa8: $4d
    cp a                                          ; $6aa9: $bf
    db $e3                                        ; $6aaa: $e3
    dec hl                                        ; $6aab: $2b
    ret nz                                        ; $6aac: $c0

    ld [c], a                                     ; $6aad: $e2
    pop bc                                        ; $6aae: $c1
    ret nz                                        ; $6aaf: $c0

    ld e, d                                       ; $6ab0: $5a
    ld hl, $0b40                                  ; $6ab1: $21 $40 $0b
    nop                                           ; $6ab4: $00
    ret nz                                        ; $6ab5: $c0

    db $ec                                        ; $6ab6: $ec
    db $f4                                        ; $6ab7: $f4
    and l                                         ; $6ab8: $a5
    cp a                                          ; $6ab9: $bf
    push hl                                       ; $6aba: $e5
    ld a, [$3d84]                                 ; $6abb: $fa $84 $3d
    pop bc                                        ; $6abe: $c1
    inc bc                                        ; $6abf: $03
    ld b, b                                       ; $6ac0: $40
    ld e, b                                       ; $6ac1: $58
    jr nz, jr_069_6b04                            ; $6ac2: $20 $40

    dec bc                                        ; $6ac4: $0b
    nop                                           ; $6ac5: $00
    adc $c1                                       ; $6ac6: $ce $c1
    jr nc, @+$0e                                  ; $6ac8: $30 $0c

    sbc e                                         ; $6aca: $9b
    ld hl, $22fc                                  ; $6acb: $21 $fc $22

jr_069_6ace:
    dec sp                                        ; $6ace: $3b
    and e                                         ; $6acf: $a3
    add [hl]                                      ; $6ad0: $86
    nop                                           ; $6ad1: $00
    ret nz                                        ; $6ad2: $c0

    and $98                                       ; $6ad3: $e6 $98
    ld hl, $d042                                  ; $6ad5: $21 $42 $d0
    xor $2e                                       ; $6ad8: $ee $2e
    jr nc, @+$0f                                  ; $6ada: $30 $0d

    ld hl, sp-$3f                                 ; $6adc: $f8 $c1
    sbc b                                         ; $6ade: $98
    ld [bc], a                                    ; $6adf: $02
    cp h                                          ; $6ae0: $bc
    and c                                         ; $6ae1: $a1
    dec hl                                        ; $6ae2: $2b
    ret nz                                        ; $6ae3: $c0

    ld [c], a                                     ; $6ae4: $e2
    nop                                           ; $6ae5: $00
    cp l                                          ; $6ae6: $bd
    and d                                         ; $6ae7: $a2
    jp $be03                                      ; $6ae8: $c3 $03 $be


    xor b                                         ; $6aeb: $a8
    ret nc                                        ; $6aec: $d0

    db $e4                                        ; $6aed: $e4
    jr nc, jr_069_6afd                            ; $6aee: $30 $0d

    ldh a, [$e5]                                  ; $6af0: $f0 $e5
    cp a                                          ; $6af2: $bf
    ld [c], a                                     ; $6af3: $e2
    ld a, $c0                                     ; $6af4: $3e $c0
    ld [bc], a                                    ; $6af6: $02
    ld [bc], a                                    ; $6af7: $02
    jr nz, jr_069_6b45                            ; $6af8: $20 $4b

    add d                                         ; $6afa: $82
    ld h, c                                       ; $6afb: $61
    ld c, d                                       ; $6afc: $4a

jr_069_6afd:
    ld h, e                                       ; $6afd: $63
    ld h, l                                       ; $6afe: $65
    inc bc                                        ; $6aff: $03
    ret nc                                        ; $6b00: $d0

    jp hl                                         ; $6b01: $e9


    jr nc, @+$10                                  ; $6b02: $30 $0e

jr_069_6b04:
    ldh a, [$e4]                                  ; $6b04: $f0 $e4
    nop                                           ; $6b06: $00
    ld c, l                                       ; $6b07: $4d
    and c                                         ; $6b08: $a1
    ld a, $c3                                     ; $6b09: $3e $c3

Jump_069_6b0b:
    pop bc                                        ; $6b0b: $c1

jr_069_6b0c:
    jp $2440                                      ; $6b0c: $c3 $40 $24


    ret nc                                        ; $6b0f: $d0

    rst $28                                       ; $6b10: $ef
    jr nc, @+$0e                                  ; $6b11: $30 $0c

    ldh a, [$e5]                                  ; $6b13: $f0 $e5
    ret nz                                        ; $6b15: $c0

    inc b                                         ; $6b16: $04
    nop                                           ; $6b17: $00
    ret nz                                        ; $6b18: $c0

    ld [$a30f], a                                 ; $6b19: $ea $0f $a3
    ret nc                                        ; $6b1c: $d0

    db $eb                                        ; $6b1d: $eb
    jr nc, jr_069_6b2d                            ; $6b1e: $30 $0d

    ldh a, [$e5]                                  ; $6b20: $f0 $e5
    add b                                         ; $6b22: $80
    inc bc                                        ; $6b23: $03
    cp a                                          ; $6b24: $bf
    pop bc                                        ; $6b25: $c1
    cp [hl]                                       ; $6b26: $be
    add d                                         ; $6b27: $82
    nop                                           ; $6b28: $00
    pop bc                                        ; $6b29: $c1
    and e                                         ; $6b2a: $a3
    jr z, jr_069_6ace                             ; $6b2b: $28 $a1

jr_069_6b2d:
    ret nc                                        ; $6b2d: $d0

    db $ec                                        ; $6b2e: $ec
    jr nc, @+$14                                  ; $6b2f: $30 $12

    ld l, [hl]                                    ; $6b31: $6e
    add e                                         ; $6b32: $83
    cp a                                          ; $6b33: $bf
    jp nz, $4040                                  ; $6b34: $c2 $40 $40

    pop bc                                        ; $6b37: $c1
    ld b, e                                       ; $6b38: $43
    nop                                           ; $6b39: $00
    xor e                                         ; $6b3a: $ab
    pop bc                                        ; $6b3b: $c1

Call_069_6b3c:
    inc e                                         ; $6b3c: $1c
    and d                                         ; $6b3d: $a2
    ret nc                                        ; $6b3e: $d0

    ldh a, [$30]                                  ; $6b3f: $f0 $30
    ld [$e8f0], sp                                ; $6b41: $08 $f0 $e8
    cp [hl]                                       ; $6b44: $be

jr_069_6b45:
    and e                                         ; $6b45: $a3
    pop bc                                        ; $6b46: $c1
    push hl                                       ; $6b47: $e5
    inc hl                                        ; $6b48: $23
    add b                                         ; $6b49: $80
    jr nz, jr_069_6b0c                            ; $6b4a: $20 $c0

    and $d0                                       ; $6b4c: $e6 $d0
    add sp, $30                                   ; $6b4e: $e8 $30
    dec c                                         ; $6b50: $0d
    pop af                                        ; $6b51: $f1
    rst $20                                       ; $6b52: $e7
    cp d                                          ; $6b53: $ba
    ld [hl+], a                                   ; $6b54: $22
    ld c, l                                       ; $6b55: $4d
    ld b, e                                       ; $6b56: $43
    ld b, h                                       ; $6b57: $44
    ld bc, $8082                                  ; $6b58: $01 $82 $80
    call nc, $d0e9                                ; $6b5b: $d4 $e9 $d0
    push hl                                       ; $6b5e: $e5
    inc c                                         ; $6b5f: $0c
    ld b, l                                       ; $6b60: $45
    jr nc, jr_069_6b68                            ; $6b61: $30 $05

    ldh a, [$e6]                                  ; $6b63: $f0 $e6
    ld a, e                                       ; $6b65: $7b
    inc hl                                        ; $6b66: $23
    db $fc                                        ; $6b67: $fc

jr_069_6b68:
    push hl                                       ; $6b68: $e5
    dec l                                         ; $6b69: $2d
    nop                                           ; $6b6a: $00
    ld b, h                                       ; $6b6b: $44
    push hl                                       ; $6b6c: $e5
    sbc e                                         ; $6b6d: $9b
    ld h, d                                       ; $6b6e: $62
    ret nc                                        ; $6b6f: $d0

    add sp, $40                                   ; $6b70: $e8 $40
    dec b                                         ; $6b72: $05
    jr nc, jr_069_6b82                            ; $6b73: $30 $0d

    cp l                                          ; $6b75: $bd
    add l                                         ; $6b76: $85
    ld a, l                                       ; $6b77: $7d
    jr nz, jr_069_6bbd                            ; $6b78: $20 $43

    ld [bc], a                                    ; $6b7a: $02
    nop                                           ; $6b7b: $00
    ret nc                                        ; $6b7c: $d0

    ld h, c                                       ; $6b7d: $61
    inc c                                         ; $6b7e: $0c
    call nz, $f2d0                                ; $6b7f: $c4 $d0 $f2

jr_069_6b82:
    jr nc, jr_069_6b8c                            ; $6b82: $30 $08

    ld a, h                                       ; $6b84: $7c
    ld [hl+], a                                   ; $6b85: $22
    cp a                                          ; $6b86: $bf
    ld h, d                                       ; $6b87: $62
    nop                                           ; $6b88: $00
    and h                                         ; $6b89: $a4
    ld a, h                                       ; $6b8a: $7c
    nop                                           ; $6b8b: $00

jr_069_6b8c:
    nop                                           ; $6b8c: $00
    ret nz                                        ; $6b8d: $c0

    db $e3                                        ; $6b8e: $e3
    push de                                       ; $6b8f: $d5
    ld h, e                                       ; $6b90: $63
    ret nc                                        ; $6b91: $d0

    db $ed                                        ; $6b92: $ed
    jr nc, @+$0f                                  ; $6b93: $30 $0d

    ldh a, [$e2]                                  ; $6b95: $f0 $e2
    ret nz                                        ; $6b97: $c0

    add sp, $38                                   ; $6b98: $e8 $38
    ld hl, $00cb                                  ; $6b9a: $21 $cb $00
    nop                                           ; $6b9d: $00
    and d                                         ; $6b9e: $a2
    add d                                         ; $6b9f: $82
    ld e, h                                       ; $6ba0: $5c
    jp nz, $ecd0                                  ; $6ba1: $c2 $d0 $ec

    jr nc, @+$0f                                  ; $6ba4: $30 $0d

    rst $38                                       ; $6ba6: $ff
    add a                                         ; $6ba7: $87
    cp $00                                        ; $6ba8: $fe $00
    jp nz, JoypadTransitionInterrupt              ; $6baa: $c2 $60 $00

    add d                                         ; $6bad: $82
    nop                                           ; $6bae: $00
    add b                                         ; $6baf: $80
    ld [hl+], a                                   ; $6bb0: $22
    call c, $d0a3                                 ; $6bb1: $dc $a3 $d0
    db $ed                                        ; $6bb4: $ed
    jr nc, jr_069_6bc2                            ; $6bb5: $30 $0b

    dec a                                         ; $6bb7: $3d
    ld b, d                                       ; $6bb8: $42
    ld a, l                                       ; $6bb9: $7d
    ld h, b                                       ; $6bba: $60
    cp [hl]                                       ; $6bbb: $be
    add c                                         ; $6bbc: $81

jr_069_6bbd:
    db $fd                                        ; $6bbd: $fd
    inc h                                         ; $6bbe: $24
    nop                                           ; $6bbf: $00

Call_069_6bc0:
    add b                                         ; $6bc0: $80
    add h                                         ; $6bc1: $84

jr_069_6bc2:
    call $9c00                                    ; $6bc2: $cd $00 $9c
    and d                                         ; $6bc5: $a2
    ld b, b                                       ; $6bc6: $40
    dec c                                         ; $6bc7: $0d
    ldh a, [$f2]                                  ; $6bc8: $f0 $f2
    ld b, b                                       ; $6bca: $40
    and d                                         ; $6bcb: $a2
    ld b, c                                       ; $6bcc: $41
    add d                                         ; $6bcd: $82
    ld a, a                                       ; $6bce: $7f
    add b                                         ; $6bcf: $80
    ld b, b                                       ; $6bd0: $40
    ld bc, $5aa4                                  ; $6bd1: $01 $a4 $5a
    add h                                         ; $6bd4: $84
    ret nz                                        ; $6bd5: $c0

    db $ed                                        ; $6bd6: $ed
    jr nc, jr_069_6be3                            ; $6bd7: $30 $0a

    rst $38                                       ; $6bd9: $ff
    and l                                         ; $6bda: $a5
    ret nz                                        ; $6bdb: $c0

    db $e3                                        ; $6bdc: $e3
    ld c, e                                       ; $6bdd: $4b
    rst $38                                       ; $6bde: $ff
    pop hl                                        ; $6bdf: $e1
    ld bc, $c06b                                  ; $6be0: $01 $6b $c0

jr_069_6be3:
    pop hl                                        ; $6be3: $e1
    inc b                                         ; $6be4: $04
    ret nc                                        ; $6be5: $d0

    add [hl]                                      ; $6be6: $86
    ld b, d                                       ; $6be7: $42
    jr nc, jr_069_6bf0                            ; $6be8: $30 $06

    jp nz, Jump_069_7aa8                          ; $6bea: $c2 $a8 $7a

    ld h, d                                       ; $6bed: $62
    ld a, a                                       ; $6bee: $7f
    add d                                         ; $6bef: $82

jr_069_6bf0:
    ld bc, $3e4d                                  ; $6bf0: $01 $4d $3e
    ld b, b                                       ; $6bf3: $40
    cp [hl]                                       ; $6bf4: $be
    and c                                         ; $6bf5: $a1
    cp [hl]                                       ; $6bf6: $be
    inc bc                                        ; $6bf7: $03
    sbc b                                         ; $6bf8: $98
    and a                                         ; $6bf9: $a7
    ret nc                                        ; $6bfa: $d0

    jp hl                                         ; $6bfb: $e9


    jr nc, @+$0e                                  ; $6bfc: $30 $0c

    ldh a, [$e8]                                  ; $6bfe: $f0 $e8
    nop                                           ; $6c00: $00
    ld a, c                                       ; $6c01: $79
    ld b, h                                       ; $6c02: $44
    push bc                                       ; $6c03: $c5
    ld b, d                                       ; $6c04: $42
    ldh [$f1], a                                  ; $6c05: $e0 $f1
    ret nc                                        ; $6c07: $d0

    ld [c], a                                     ; $6c08: $e2
    jr nc, jr_069_6c19                            ; $6c09: $30 $0e

    ldh a, [$e7]                                  ; $6c0b: $f0 $e7
    ld c, d                                       ; $6c0d: $4a
    jr nz, @+$01                                  ; $6c0e: $20 $ff

    ld [c], a                                     ; $6c10: $e2
    nop                                           ; $6c11: $00
    xor $00                                       ; $6c12: $ee $00
    ld e, l                                       ; $6c14: $5d

jr_069_6c15:
    and e                                         ; $6c15: $a3
    ldh [$ec], a                                  ; $6c16: $e0 $ec
    ret nc                                        ; $6c18: $d0

jr_069_6c19:
    db $e3                                        ; $6c19: $e3
    jr nc, jr_069_6c2f                            ; $6c1a: $30 $13

    rst $08                                       ; $6c1c: $cf
    ld h, c                                       ; $6c1d: $61
    db $fc                                        ; $6c1e: $fc
    ld h, c                                       ; $6c1f: $61
    sub c                                         ; $6c20: $91
    and c                                         ; $6c21: $a1
    nop                                           ; $6c22: $00
    ld e, b                                       ; $6c23: $58
    ld h, e                                       ; $6c24: $63
    ldh [$ef], a                                  ; $6c25: $e0 $ef
    ret nc                                        ; $6c27: $d0

    jp hl                                         ; $6c28: $e9


    jr nc, jr_069_6c30                            ; $6c29: $30 $05

    ldh a, [$e9]                                  ; $6c2b: $f0 $e9
    inc hl                                        ; $6c2d: $23
    ld h, b                                       ; $6c2e: $60

jr_069_6c2f:
    sub c                                         ; $6c2f: $91

jr_069_6c30:
    jp nz, $2114                                  ; $6c30: $c2 $14 $21

    jr nz, jr_069_6c15                            ; $6c33: $20 $e0

    pop af                                        ; $6c35: $f1
    ret nc                                        ; $6c36: $d0

    pop hl                                        ; $6c37: $e1
    jr nc, jr_069_6c48                            ; $6c38: $30 $0e

    ldh a, [$e8]                                  ; $6c3a: $f0 $e8
    call c, Call_000_2d01                         ; $6c3c: $dc $01 $2d
    add $e0                                       ; $6c3f: $c6 $e0
    ret nz                                        ; $6c41: $c0

    ld [c], a                                     ; $6c42: $e2
    nop                                           ; $6c43: $00
    ldh [$f0], a                                  ; $6c44: $e0 $f0
    jr nc, jr_069_6c59                            ; $6c46: $30 $11

jr_069_6c48:
    ldh a, [$e9]                                  ; $6c48: $f0 $e9
    ret nz                                        ; $6c4a: $c0

    ld [$f0e0], a                                 ; $6c4b: $ea $e0 $f0
    ld de, $0081                                  ; $6c4e: $11 $81 $00
    nop                                           ; $6c51: $00
    nop                                           ; $6c52: $00
    sbc a                                         ; $6c53: $9f
    ret c                                         ; $6c54: $d8

    push de                                       ; $6c55: $d5
    push de                                       ; $6c56: $d5
    ret c                                         ; $6c57: $d8

    and b                                         ; $6c58: $a0

jr_069_6c59:
    rst $38                                       ; $6c59: $ff
    add sp, -$10                                  ; $6c5a: $e8 $f0
    db $eb                                        ; $6c5c: $eb
    add sp, -$07                                  ; $6c5d: $e8 $f9
    jp hl                                         ; $6c5f: $e9


    ld hl, sp-$15                                 ; $6c60: $f8 $eb
    ldh [$ed], a                                  ; $6c62: $e0 $ed
    and b                                         ; $6c64: $a0
    and b                                         ; $6c65: $a0
    jp nc, $d4d6                                  ; $6c66: $d2 $d6 $d4

    dec c                                         ; $6c69: $0d
    sub $bd                                       ; $6c6a: $d6 $bd
    ld [c], a                                     ; $6c6c: $e2
    sbc $df                                       ; $6c6d: $de $df
    jp nz, $f0e2                                  ; $6c6f: $c2 $e2 $f0

    db $eb                                        ; $6c72: $eb
    and [hl]                                      ; $6c73: $a6
    ldh [$f8], a                                  ; $6c74: $e0 $f8
    ld [$e0fe], a                                 ; $6c76: $ea $fe $e0
    db $ed                                        ; $6c79: $ed
    ret c                                         ; $6c7a: $d8

    push de                                       ; $6c7b: $d5
    sub $d2                                       ; $6c7c: $d6 $d2
    ret nc                                        ; $6c7e: $d0

    jp nc, $bfd4                                  ; $6c7f: $d2 $d4 $bf

    sub $d3                                       ; $6c82: $d6 $d3
    and b                                         ; $6c84: $a0
    and b                                         ; $6c85: $a0
    ldh [$e1], a                                  ; $6c86: $e0 $e1
    ld a, c                                       ; $6c88: $79
    ldh [$d3], a                                  ; $6c89: $e0 $d3
    add l                                         ; $6c8b: $85
    ret nc                                        ; $6c8c: $d0

    ldh a, [$ea]                                  ; $6c8d: $f0 $ea
    ld [$e066], a                                 ; $6c8f: $ea $66 $e0
    ld hl, sp-$17                                 ; $6c92: $f8 $e9
    ldh [$ed], a                                  ; $6c94: $e0 $ed
    ret nc                                        ; $6c96: $d0

    ldh [$d7], a                                  ; $6c97: $e0 $d7
    db $fd                                        ; $6c99: $fd
    call nc, $e0bf                                ; $6c9a: $d4 $bf $e0
    rst $10                                       ; $6c9d: $d7

Jump_069_6c9e:
    jp nc, $a0d8                                  ; $6c9e: $d2 $d8 $a0

Call_069_6ca1:
    ld [c], a                                     ; $6ca1: $e2
    db $e3                                        ; $6ca2: $e3
    ld a, b                                       ; $6ca3: $78
    ldh a, [$f0]                                  ; $6ca4: $f0 $f0
    ld h, $e0                                     ; $6ca6: $26 $e0
    add sp, -$1f                                  ; $6ca8: $e8 $e1
    sbc a                                         ; $6caa: $9f
    sbc l                                         ; $6cab: $9d
    and d                                         ; $6cac: $a2
    sbc a                                         ; $6cad: $9f
    ldh [$f2], a                                  ; $6cae: $e0 $f2
    rst $38                                       ; $6cb0: $ff
    db $d3                                        ; $6cb1: $d3
    ret nc                                        ; $6cb2: $d0

    db $dd                                        ; $6cb3: $dd
    reti                                          ; $6cb4: $d9


    rst $10                                       ; $6cb5: $d7
    call nc, $ddd7                                ; $6cb6: $d4 $d7 $dd
    db $fd                                        ; $6cb9: $fd
    ret nc                                        ; $6cba: $d0

    ld a, a                                       ; $6cbb: $7f
    ldh [$a0], a                                  ; $6cbc: $e0 $a0
    db $eb                                        ; $6cbe: $eb
    and b                                         ; $6cbf: $a0
    and b                                         ; $6cc0: $a0
    rst $10                                       ; $6cc1: $d7
    jp nc, $f0fc                                  ; $6cc2: $d2 $fc $f0

    db $eb                                        ; $6cc5: $eb
    and $c3                                       ; $6cc6: $e6 $c3
    sbc a                                         ; $6cc8: $9f
    or [hl]                                       ; $6cc9: $b6
    sub b                                         ; $6cca: $90
    jp $9fb6                                      ; $6ccb: $c3 $b6 $9f


    ld l, [hl]                                    ; $6cce: $6e
    ldh [$f1], a                                  ; $6ccf: $e0 $f1
    rst $10                                       ; $6cd1: $d7
    jp nc, $bed0                                  ; $6cd2: $d2 $d0 $be

    ldh [$dd], a                                  ; $6cd5: $e0 $dd
    pop de                                        ; $6cd7: $d1
    ret nz                                        ; $6cd8: $c0

    pop hl                                        ; $6cd9: $e1
    cp a                                          ; $6cda: $bf
    db $ec                                        ; $6cdb: $ec
    db $ed                                        ; $6cdc: $ed
    and b                                         ; $6cdd: $a0
    and b                                         ; $6cde: $a0
    jp c, $f0d3                                   ; $6cdf: $da $d3 $f0

    db $eb                                        ; $6ce2: $eb
    sbc a                                         ; $6ce3: $9f
    scf                                           ; $6ce4: $37
    and d                                         ; $6ce5: $a2
    sbc l                                         ; $6ce6: $9d
    sbc a                                         ; $6ce7: $9f
    pop bc                                        ; $6ce8: $c1
    pop hl                                        ; $6ce9: $e1
    sub b                                         ; $6cea: $90
    call nz, $e0bf                                ; $6ceb: $c4 $bf $e0
    ldh [$f0], a                                  ; $6cee: $e0 $f0
    and a                                         ; $6cf0: $a7
    jp c, $d4d3                                   ; $6cf1: $da $d3 $d4

    ld b, b                                       ; $6cf4: $40
    ldh [$fe], a                                  ; $6cf5: $e0 $fe
    ret nz                                        ; $6cf7: $c0

    rst $10                                       ; $6cf8: $d7
    ld a, h                                       ; $6cf9: $7c
    jp $f9dc                                      ; $6cfa: $c3 $dc $f9


    rst $10                                       ; $6cfd: $d7
    ldh a, [$ea]                                  ; $6cfe: $f0 $ea
    add a                                         ; $6d00: $87
    ld [c], a                                     ; $6d01: $e2
    sbc l                                         ; $6d02: $9d
    or [hl]                                       ; $6d03: $b6
    sub c                                         ; $6d04: $91
    ld b, [hl]                                    ; $6d05: $46
    ld b, [hl]                                    ; $6d06: $46
    ld a, a                                       ; $6d07: $7f
    sub c                                         ; $6d08: $91
    call nz, $9e90                                ; $6d09: $c4 $90 $9e
    and b                                         ; $6d0c: $a0
    db $e4                                        ; $6d0d: $e4
    push hl                                       ; $6d0e: $e5
    ldh [$ec], a                                  ; $6d0f: $e0 $ec
    ld a, d                                       ; $6d11: $7a
    ret nc                                        ; $6d12: $d0

    ldh [$d9], a                                  ; $6d13: $e0 $d9
    ld b, b                                       ; $6d15: $40
    ldh [$d4], a                                  ; $6d16: $e0 $d4
    rst $10                                       ; $6d18: $d7
    reti                                          ; $6d19: $d9


    jp c, $c43c                                   ; $6d1a: $da $3c $c4

    ld sp, hl                                     ; $6d1d: $f9
    jp c, $e9f0                                   ; $6d1e: $da $f0 $e9

    add a                                         ; $6d21: $87
    db $e3                                        ; $6d22: $e3
    sub b                                         ; $6d23: $90
    sub c                                         ; $6d24: $91
    ld c, b                                       ; $6d25: $48
    ld c, [hl]                                    ; $6d26: $4e
    ld c, b                                       ; $6d27: $48
    sbc e                                         ; $6d28: $9b
    ld b, l                                       ; $6d29: $45
    sub c                                         ; $6d2a: $91
    ret nz                                        ; $6d2b: $c0

    ldh [$e6], a                                  ; $6d2c: $e0 $e6
    rst $20                                       ; $6d2e: $e7
    ldh [$eb], a                                  ; $6d2f: $e0 $eb
    ret nc                                        ; $6d31: $d0

    pop hl                                        ; $6d32: $e1
    db $db                                        ; $6d33: $db
    ld e, l                                       ; $6d34: $5d
    db $db                                        ; $6d35: $db
    call $dae0                                    ; $6d36: $cd $e0 $da
    db $db                                        ; $6d39: $db
    call c, $a4fc                                 ; $6d3a: $dc $fc $a4
    call c, $e9f0                                 ; $6d3d: $dc $f0 $e9
    ei                                            ; $6d40: $fb
    sbc [hl]                                      ; $6d41: $9e
    sub b                                         ; $6d42: $90
    rst $38                                       ; $6d43: $ff
    ldh [$c4], a                                  ; $6d44: $e0 $c4
    sub c                                         ; $6d46: $91
    ld b, l                                       ; $6d47: $45
    ld d, e                                       ; $6d48: $53
    ld d, h                                       ; $6d49: $54
    ccf                                           ; $6d4a: $3f
    ld d, d                                       ; $6d4b: $52
    ld b, l                                       ; $6d4c: $45
    ld b, [hl]                                    ; $6d4d: $46
    sub c                                         ; $6d4e: $91
    or [hl]                                       ; $6d4f: $b6
    sbc a                                         ; $6d50: $9f
    ld a, [c]                                     ; $6d51: $f2
    and b                                         ; $6d52: $a0
    ldh [$ea], a                                  ; $6d53: $e0 $ea
    ld [$e14f], sp                                ; $6d55: $08 $4f $e1
    call $c2e2                                    ; $6d58: $cd $e2 $c2
    pop hl                                        ; $6d5b: $e1
    ret c                                         ; $6d5c: $d8

    cp b                                          ; $6d5d: $b8
    and l                                         ; $6d5e: $a5
    ldh a, [$e4]                                  ; $6d5f: $f0 $e4
    ldh a, [$a0]                                  ; $6d61: $f0 $a0
    rlca                                          ; $6d63: $07
    pop hl                                        ; $6d64: $e1
    rst $38                                       ; $6d65: $ff
    sub b                                         ; $6d66: $90
    sub c                                         ; $6d67: $91
    ld b, a                                       ; $6d68: $47
    ld b, a                                       ; $6d69: $47
    dec l                                         ; $6d6a: $2d
    ld a, [hl+]                                   ; $6d6b: $2a
    ld b, h                                       ; $6d6c: $44
    ld b, l                                       ; $6d6d: $45
    jp $4645                                      ; $6d6e: $c3 $45 $46


    ccf                                           ; $6d71: $3f
    ldh [$e0], a                                  ; $6d72: $e0 $e0
    jp hl                                         ; $6d74: $e9


    ret nc                                        ; $6d75: $d0

    and $82                                       ; $6d76: $e6 $82
    and c                                         ; $6d78: $a1
    db $e4                                        ; $6d79: $e4
    push hl                                       ; $6d7a: $e5
    reti                                          ; $6d7b: $d9


    ret c                                         ; $6d7c: $d8

    ld hl, sp-$60                                 ; $6d7d: $f8 $a0
    halt                                          ; $6d7f: $76
    and a                                         ; $6d80: $a7
    db $e4                                        ; $6d81: $e4
    push hl                                       ; $6d82: $e5
    ldh a, [$a2]                                  ; $6d83: $f0 $a2
    sbc [hl]                                      ; $6d85: $9e
    jp $90ff                                      ; $6d86: $c3 $ff $90


    sub b                                         ; $6d89: $90
    ld b, l                                       ; $6d8a: $45
    ld d, d                                       ; $6d8b: $52
    ld d, d                                       ; $6d8c: $52
    dec l                                         ; $6d8d: $2d
    jr nz, @+$2f                                  ; $6d8e: $20 $2d

    jp $5547                                      ; $6d90: $c3 $47 $55


    ret nz                                        ; $6d93: $c0

    ld [c], a                                     ; $6d94: $e2
    rst $28                                       ; $6d95: $ef
    and c                                         ; $6d96: $a1
    ret nc                                        ; $6d97: $d0

    db $ec                                        ; $6d98: $ec
    adc b                                         ; $6d99: $88
    ld [c], a                                     ; $6d9a: $e2
    and $e7                                       ; $6d9b: $e6 $e7
    ld b, [hl]                                    ; $6d9d: $46
    halt                                          ; $6d9e: $76
    ret nz                                        ; $6d9f: $c0

    pop de                                        ; $6da0: $d1
    ret nc                                        ; $6da1: $d0

    ld sp, hl                                     ; $6da2: $f9
    and b                                         ; $6da3: $a0
    ldh a, [$e5]                                  ; $6da4: $f0 $e5
    ldh a, [$a2]                                  ; $6da6: $f0 $a2
    sbc [hl]                                      ; $6da8: $9e
    ld [bc], a                                    ; $6da9: $02
    ldh [rIE], a                                  ; $6daa: $e0 $ff
    ld b, [hl]                                    ; $6dac: $46
    ld b, l                                       ; $6dad: $45
    dec l                                         ; $6dae: $2d
    cpl                                           ; $6daf: $2f
    jr nz, @+$34                                  ; $6db0: $20 $32

    ld e, [hl]                                    ; $6db2: $5e
    ld d, [hl]                                    ; $6db3: $56
    ld [hl], h                                    ; $6db4: $74
    add b                                         ; $6db5: $80
    push hl                                       ; $6db6: $e5
    ret nc                                        ; $6db7: $d0

    db $ed                                        ; $6db8: $ed
    db $d3                                        ; $6db9: $d3
    inc b                                         ; $6dba: $04
    pop bc                                        ; $6dbb: $c1
    add sp, -$17                                  ; $6dbc: $e8 $e9
    jp c, $a3b7                                   ; $6dbe: $da $b7 $a3

    db $fc                                        ; $6dc1: $fc
    ldh a, [$e6]                                  ; $6dc2: $f0 $e6
    ld [$c3c3], sp                                ; $6dc4: $08 $c3 $c3
    call nz, Call_069_5091                        ; $6dc7: $c4 $91 $50
    add hl, sp                                    ; $6dca: $39
    inc h                                         ; $6dcb: $24
    rst $38                                       ; $6dcc: $ff
    ld h, $2c                                     ; $6dcd: $26 $2c
    cp l                                          ; $6dcf: $bd
    ld d, e                                       ; $6dd0: $53
    ld d, e                                       ; $6dd1: $53
    sub c                                         ; $6dd2: $91
    sub b                                         ; $6dd3: $90
    and c                                         ; $6dd4: $a1
    db $10                                        ; $6dd5: $10
    ret c                                         ; $6dd6: $d8

    add d                                         ; $6dd7: $82
    ret nc                                        ; $6dd8: $d0

    db $ed                                        ; $6dd9: $ed
    pop bc                                        ; $6dda: $c1
    and b                                         ; $6ddb: $a0
    ld b, [hl]                                    ; $6ddc: $46
    jp nz, $b7da                                  ; $6ddd: $c2 $da $b7

    and c                                         ; $6de0: $a1
    ld a, c                                       ; $6de1: $79
    ret nz                                        ; $6de2: $c0

    ldh a, [$e4]                                  ; $6de3: $f0 $e4
    cp $c9                                        ; $6de5: $fe $c9
    and e                                         ; $6de7: $a3
    call nz, Call_069_4791                        ; $6de8: $c4 $91 $47
    ld d, [hl]                                    ; $6deb: $56
    ld a, [hl-]                                   ; $6dec: $3a
    dec [hl]                                      ; $6ded: $35
    ld a, [hl-]                                   ; $6dee: $3a
    ld b, e                                       ; $6def: $43
    xor [hl]                                      ; $6df0: $ae
    sub c                                         ; $6df1: $91
    or [hl]                                       ; $6df2: $b6
    ret nz                                        ; $6df3: $c0

    cp [hl]                                       ; $6df4: $be
    and b                                         ; $6df5: $a0
    call c, $d081                                 ; $6df6: $dc $81 $d0
    db $ed                                        ; $6df9: $ed
    jp c, $c044                                   ; $6dfa: $da $44 $c0

    jp z, $a118                                   ; $6dfd: $ca $18 $a1

    call c, $c077                                 ; $6e00: $dc $77 $c0
    jp c, $c079                                   ; $6e03: $da $79 $c0

    ldh a, [$e5]                                  ; $6e06: $f0 $e5
    and b                                         ; $6e08: $a0
    and b                                         ; $6e09: $a0
    db $fd                                        ; $6e0a: $fd
    and c                                         ; $6e0b: $a1
    jp Jump_069_4ac0                              ; $6e0c: $c3 $c0 $4a


    ld h, b                                       ; $6e0f: $60
    ld d, l                                       ; $6e10: $55
    inc a                                         ; $6e11: $3c
    dec [hl]                                      ; $6e12: $35
    add hl, sp                                    ; $6e13: $39
    ld hl, $f8af                                  ; $6e14: $21 $af $f8
    ret nz                                        ; $6e17: $c0

    ld a, a                                       ; $6e18: $7f
    and b                                         ; $6e19: $a0
    call c, $d082                                 ; $6e1a: $dc $82 $d0
    db $ed                                        ; $6e1d: $ed
    call c, $c844                                 ; $6e1e: $dc $44 $c8
    ld a, [hl-]                                   ; $6e21: $3a
    pop bc                                        ; $6e22: $c1
    db $fc                                        ; $6e23: $fc
    ldh a, [$e7]                                  ; $6e24: $f0 $e7
    ld b, c                                       ; $6e26: $41
    ret nz                                        ; $6e27: $c0

    ld b, [hl]                                    ; $6e28: $46
    ld c, d                                       ; $6e29: $4a
    ld d, d                                       ; $6e2a: $52
    ld [hl], $35                                  ; $6e2b: $36 $35
    dec [hl]                                      ; $6e2d: $35
    inc bc                                        ; $6e2e: $03
    ld b, d                                       ; $6e2f: $42
    sub c                                         ; $6e30: $91
    ld a, [$82a0]                                 ; $6e31: $fa $a0 $82
    pop bc                                        ; $6e34: $c1
    call c, $d081                                 ; $6e35: $dc $81 $d0
    db $ed                                        ; $6e38: $ed
    inc b                                         ; $6e39: $04
    sub [hl]                                      ; $6e3a: $96
    ld a, [bc]                                    ; $6e3b: $0a
    and b                                         ; $6e3c: $a0
    rst $38                                       ; $6e3d: $ff
    sub c                                         ; $6e3e: $91
    ld b, [hl]                                    ; $6e3f: $46
    ld b, l                                       ; $6e40: $45
    ld [hl], $35                                  ; $6e41: $36 $35
    xor h                                         ; $6e43: $ac
    inc a                                         ; $6e44: $3c
    ld b, h                                       ; $6e45: $44
    nop                                           ; $6e46: $00
    ld b, b                                       ; $6e47: $40
    and b                                         ; $6e48: $a0
    ld b, d                                       ; $6e49: $42
    push bc                                       ; $6e4a: $c5
    call nc, $c26d                                ; $6e4b: $d4 $6d $c2
    ld h, d                                       ; $6e4e: $62
    inc b                                         ; $6e4f: $04
    add c                                         ; $6e50: $81
    or a                                          ; $6e51: $b7
    ld h, b                                       ; $6e52: $60
    push af                                       ; $6e53: $f5
    ld h, b                                       ; $6e54: $60
    inc a                                         ; $6e55: $3c
    jp $f4fe                                      ; $6e56: $c3 $fe $f4


    ld h, c                                       ; $6e59: $61
    sbc a                                         ; $6e5a: $9f
    sbc h                                         ; $6e5b: $9c
    ld a, c                                       ; $6e5c: $79
    ld a, d                                       ; $6e5d: $7a
    ld a, h                                       ; $6e5e: $7c
    ld a, l                                       ; $6e5f: $7d
    ld b, h                                       ; $6e60: $44
    rra                                           ; $6e61: $1f
    inc a                                         ; $6e62: $3c
    xor h                                         ; $6e63: $ac
    xor l                                         ; $6e64: $ad
    dec [hl]                                      ; $6e65: $35
    ld b, b                                       ; $6e66: $40
    cp b                                          ; $6e67: $b8
    and c                                         ; $6e68: $a1
    ld [bc], a                                    ; $6e69: $02
    pop bc                                        ; $6e6a: $c1
    call c, Call_069_58a5                         ; $6e6b: $dc $a5 $58
    ret nc                                        ; $6e6e: $d0

    add sp, -$7a                                  ; $6e6f: $e8 $86
    add d                                         ; $6e71: $82
    inc b                                         ; $6e72: $04
    add c                                         ; $6e73: $81
    db $d3                                        ; $6e74: $d3
    sub $36                                       ; $6e75: $d6 $36
    add c                                         ; $6e77: $81
    sub $f0                                       ; $6e78: $d6 $f0
    push hl                                       ; $6e7a: $e5
    cp $c1                                        ; $6e7b: $fe $c1
    ldh [$7e], a                                  ; $6e7d: $e0 $7e
    ld b, l                                       ; $6e7f: $45
    ld b, l                                       ; $6e80: $45
    adc [hl]                                      ; $6e81: $8e
    ld a, e                                       ; $6e82: $7b
    ld h, [hl]                                    ; $6e83: $66
    xor l                                         ; $6e84: $ad
    add a                                         ; $6e85: $87
    dec [hl]                                      ; $6e86: $35
    inc a                                         ; $6e87: $3c
    ld b, h                                       ; $6e88: $44
    pop bc                                        ; $6e89: $c1
    call nz, $a6dc                                ; $6e8a: $c4 $dc $a6
    ret nc                                        ; $6e8d: $d0

    db $ed                                        ; $6e8e: $ed
    inc b                                         ; $6e8f: $04
    add b                                         ; $6e90: $80
    ret c                                         ; $6e91: $d8

    ldh a, [$fb]                                  ; $6e92: $f0 $fb
    ld h, b                                       ; $6e94: $60
    cp b                                          ; $6e95: $b8
    add c                                         ; $6e96: $81
    ldh a, [$e4]                                  ; $6e97: $f0 $e4
    pop bc                                        ; $6e99: $c1
    pop hl                                        ; $6e9a: $e1
    xor [hl]                                      ; $6e9b: $ae
    ld b, a                                       ; $6e9c: $47
    ld c, c                                       ; $6e9d: $49
    ld c, b                                       ; $6e9e: $48
    ld a, a                                       ; $6e9f: $7f
    add hl, sp                                    ; $6ea0: $39
    ld [hl], a                                    ; $6ea1: $77
    ld h, h                                       ; $6ea2: $64
    ld h, h                                       ; $6ea3: $64
    ld h, h                                       ; $6ea4: $64
    ld a, h                                       ; $6ea5: $7c
    ld a, l                                       ; $6ea6: $7d
    add b                                         ; $6ea7: $80
    pop bc                                        ; $6ea8: $c1
    ld bc, $529e                                  ; $6ea9: $01 $9e $52
    add c                                         ; $6eac: $81
    call c, $d0a3                                 ; $6ead: $dc $a3 $d0
    add sp, $0d                                   ; $6eb0: $e8 $0d
    pop bc                                        ; $6eb2: $c1
    rla                                           ; $6eb3: $17
    add c                                         ; $6eb4: $81
    or $60                                        ; $6eb5: $f6 $60
    rst $30                                       ; $6eb7: $f7
    ld h, b                                       ; $6eb8: $60
    di                                            ; $6eb9: $f3
    reti                                          ; $6eba: $d9


    db $dd                                        ; $6ebb: $dd
    ldh a, [$e3]                                  ; $6ebc: $f0 $e3
    add d                                         ; $6ebe: $82
    ld [c], a                                     ; $6ebf: $e2
    xor a                                         ; $6ec0: $af
    ld d, d                                       ; $6ec1: $52
    ld h, c                                       ; $6ec2: $61
    ld d, d                                       ; $6ec3: $52
    rst $38                                       ; $6ec4: $ff
    ld a, [hl-]                                   ; $6ec5: $3a
    dec [hl]                                      ; $6ec6: $35
    dec [hl]                                      ; $6ec7: $35
    xor h                                         ; $6ec8: $ac
    ld a, [hl-]                                   ; $6ec9: $3a
    ld b, l                                       ; $6eca: $45
    ld a, a                                       ; $6ecb: $7f
    ld a, l                                       ; $6ecc: $7d
    sbc a                                         ; $6ecd: $9f
    sub b                                         ; $6ece: $90
    sub b                                         ; $6ecf: $90
    jp $a09e                                      ; $6ed0: $c3 $9e $a0


    call c, $d0a5                                 ; $6ed3: $dc $a5 $d0
    jp hl                                         ; $6ed6: $e9


    db $d3                                        ; $6ed7: $d3
    ld l, c                                       ; $6ed8: $69
    jp c, $8207                                   ; $6ed9: $da $07 $82

    ld b, [hl]                                    ; $6edc: $46
    ld h, b                                       ; $6edd: $60
    pop de                                        ; $6ede: $d1
    rst $30                                       ; $6edf: $f7
    ld h, b                                       ; $6ee0: $60
    ret nc                                        ; $6ee1: $d0

    ret nc                                        ; $6ee2: $d0

    ldh a, [$e2]                                  ; $6ee3: $f0 $e2
    ei                                            ; $6ee5: $fb
    sbc a                                         ; $6ee6: $9f
    or [hl]                                       ; $6ee7: $b6
    ld b, e                                       ; $6ee8: $43
    ldh [$36], a                                  ; $6ee9: $e0 $36
    dec sp                                        ; $6eeb: $3b
    ld [hl], $3f                                  ; $6eec: $36 $3f
    ld [hl], $ff                                  ; $6eee: $36 $ff
    xor h                                         ; $6ef0: $ac
    dec [hl]                                      ; $6ef1: $35
    xor h                                         ; $6ef2: $ac
    xor l                                         ; $6ef3: $ad
    add hl, sp                                    ; $6ef4: $39
    xor [hl]                                      ; $6ef5: $ae
    ld b, [hl]                                    ; $6ef6: $46
    add c                                         ; $6ef7: $81
    ld h, $fe                                     ; $6ef8: $26 $fe
    ld h, b                                       ; $6efa: $60
    or [hl]                                       ; $6efb: $b6
    sbc a                                         ; $6efc: $9f
    call c, $d0a4                                 ; $6efd: $dc $a4 $d0
    ld [$86d7], a                                 ; $6f00: $ea $d7 $86
    add h                                         ; $6f03: $84
    jr c, @+$63                                   ; $6f04: $38 $61

    ld a, [$40f6]                                 ; $6f06: $fa $f6 $40
    call nc, $e2f0                                ; $6f09: $d4 $f0 $e2
    and c                                         ; $6f0c: $a1
    sub b                                         ; $6f0d: $90
    add b                                         ; $6f0e: $80
    ld b, [hl]                                    ; $6f0f: $46
    xor [hl]                                      ; $6f10: $ae
    ld sp, hl                                     ; $6f11: $f9
    dec [hl]                                      ; $6f12: $35
    add l                                         ; $6f13: $85
    ldh [$c3], a                                  ; $6f14: $e0 $c3
    ret nz                                        ; $6f16: $c0

    xor l                                         ; $6f17: $ad
    ld [hl], $45                                  ; $6f18: $36 $45
    xor a                                         ; $6f1a: $af
    add e                                         ; $6f1b: $83
    dec bc                                        ; $6f1c: $0b
    add h                                         ; $6f1d: $84
    sub b                                         ; $6f1e: $90
    or $80                                        ; $6f1f: $f6 $80
    and c                                         ; $6f21: $a1
    call c, $d0a6                                 ; $6f22: $dc $a6 $d0
    add sp, $07                                   ; $6f25: $e8 $07
    add a                                         ; $6f27: $87
    ld hl, sp+$62                                 ; $6f28: $f8 $62
    cp $f7                                        ; $6f2a: $fe $f7
    ld h, d                                       ; $6f2c: $62
    sbc a                                         ; $6f2d: $9f
    or [hl]                                       ; $6f2e: $b6
    sub c                                         ; $6f2f: $91
    add d                                         ; $6f30: $82
    add e                                         ; $6f31: $83
    xor a                                         ; $6f32: $af
    inc a                                         ; $6f33: $3c
    rst $38                                       ; $6f34: $ff
    dec [hl]                                      ; $6f35: $35
    dec [hl]                                      ; $6f36: $35
    xor l                                         ; $6f37: $ad
    xor l                                         ; $6f38: $ad
    dec [hl]                                      ; $6f39: $35
    dec sp                                        ; $6f3a: $3b
    ld [hl], $45                                  ; $6f3b: $36 $45
    rrca                                          ; $6f3d: $0f
    add e                                         ; $6f3e: $83
    adc c                                         ; $6f3f: $89
    add a                                         ; $6f40: $87
    add l                                         ; $6f41: $85
    ld hl, sp+$61                                 ; $6f42: $f8 $61
    add b                                         ; $6f44: $80
    add c                                         ; $6f45: $81
    jp nc, $d0a6                                  ; $6f46: $d2 $a6 $d0

    push hl                                       ; $6f49: $e5
    ld hl, sp+$07                                 ; $6f4a: $f8 $07
    add a                                         ; $6f4c: $87
    ld hl, sp+$62                                 ; $6f4d: $f8 $62
    rst $30                                       ; $6f4f: $f7
    ld h, d                                       ; $6f50: $62
    sbc [hl]                                      ; $6f51: $9e
    sub c                                         ; $6f52: $91
    ld b, [hl]                                    ; $6f53: $46
    add l                                         ; $6f54: $85
    add a                                         ; $6f55: $87
    rst $38                                       ; $6f56: $ff
    adc b                                         ; $6f57: $88
    ld [hl], c                                    ; $6f58: $71
    ld [hl], d                                    ; $6f59: $72
    ld l, h                                       ; $6f5a: $6c
    jr c, @+$39                                   ; $6f5b: $38 $37

    ld b, c                                       ; $6f5d: $41
    ld b, e                                       ; $6f5e: $43
    ld e, $c2                                     ; $6f5f: $1e $c2
    pop hl                                        ; $6f61: $e1
    ld b, [hl]                                    ; $6f62: $46
    sub c                                         ; $6f63: $91
    sub b                                         ; $6f64: $90
    jp $acfe                                      ; $6f65: $c3 $fe $ac


    ret nc                                        ; $6f68: $d0

    push hl                                       ; $6f69: $e5
    xor l                                         ; $6f6a: $ad
    add [hl]                                      ; $6f6b: $86
    cp $08                                        ; $6f6c: $fe $08
    adc b                                         ; $6f6e: $88
    sbc [hl]                                      ; $6f6f: $9e
    ld b, [hl]                                    ; $6f70: $46
    ld c, d                                       ; $6f71: $4a
    ld b, a                                       ; $6f72: $47
    ld b, e                                       ; $6f73: $43
    ld [hl], $35                                  ; $6f74: $36 $35
    rlca                                          ; $6f76: $07
    ld l, [hl]                                    ; $6f77: $6e
    ld [hl], b                                    ; $6f78: $70
    adc b                                         ; $6f79: $88
    rst $38                                       ; $6f7a: $ff
    ldh [$c2], a                                  ; $6f7b: $e0 $c2
    ld [c], a                                     ; $6f7d: $e2
    cp a                                          ; $6f7e: $bf
    and c                                         ; $6f7f: $a1
    ccf                                           ; $6f80: $3f
    and c                                         ; $6f81: $a1
    sbc h                                         ; $6f82: $9c
    dec h                                         ; $6f83: $25
    ret nz                                        ; $6f84: $c0

    ret nc                                        ; $6f85: $d0

    add sp, -$34                                  ; $6f86: $e8 $cc
    ld hl, $8047                                  ; $6f88: $21 $47 $80
    ld c, $80                                     ; $6f8b: $0e $80
    ld a, c                                       ; $6f8d: $79
    inc hl                                        ; $6f8e: $23
    ld hl, sp+$20                                 ; $6f8f: $f8 $20
    sbc [hl]                                      ; $6f91: $9e
    sub c                                         ; $6f92: $91
    ld a, $49                                     ; $6f93: $3e $49
    and b                                         ; $6f95: $a0
    ld h, d                                       ; $6f96: $62
    ld h, e                                       ; $6f97: $63
    ld h, [hl]                                    ; $6f98: $66
    inc a                                         ; $6f99: $3c
    ld b, h                                       ; $6f9a: $44
    ld b, [hl]                                    ; $6f9b: $46
    ld h, e                                       ; $6f9c: $63
    rst $38                                       ; $6f9d: $ff
    ld [c], a                                     ; $6f9e: $e2
    db $10                                        ; $6f9f: $10
    pop bc                                        ; $6fa0: $c1
    and $d0                                       ; $6fa1: $e6 $d0
    db $ec                                        ; $6fa3: $ec
    rst $00                                       ; $6fa4: $c7
    ld h, b                                       ; $6fa5: $60
    rlca                                          ; $6fa6: $07
    add b                                         ; $6fa7: $80
    rst $10                                       ; $6fa8: $d7
    inc h                                         ; $6fa9: $24
    ld h, b                                       ; $6faa: $60
    ld a, l                                       ; $6fab: $7d
    ld h, e                                       ; $6fac: $63
    ld hl, sp+$20                                 ; $6fad: $f8 $20
    rst $38                                       ; $6faf: $ff
    sbc [hl]                                      ; $6fb0: $9e
    sub b                                         ; $6fb1: $90

jr_069_6fb2:
    ld b, [hl]                                    ; $6fb2: $46
    ld b, b                                       ; $6fb3: $40
    ld h, d                                       ; $6fb4: $62
    ld h, a                                       ; $6fb5: $67
    dec [hl]                                      ; $6fb6: $35
    ld l, b                                       ; $6fb7: $68
    rst $18                                       ; $6fb8: $df
    ld h, [hl]                                    ; $6fb9: $66
    ld [hl], $52                                  ; $6fba: $36 $52
    ld d, h                                       ; $6fbc: $54
    ld d, e                                       ; $6fbd: $53
    jp $b6a0                                      ; $6fbe: $c3 $a0 $b6


    sbc l                                         ; $6fc1: $9d
    jr nz, @+$01                                  ; $6fc2: $20 $ff

    ldh [$c1], a                                  ; $6fc4: $e0 $c1
    add b                                         ; $6fc6: $80
    ld e, l                                       ; $6fc7: $5d
    ld h, d                                       ; $6fc8: $62
    ret nc                                        ; $6fc9: $d0

    db $ed                                        ; $6fca: $ed
    ret                                           ; $6fcb: $c9


    and e                                         ; $6fcc: $a3
    jp c, $2116                                   ; $6fcd: $da $16 $21

    push af                                       ; $6fd0: $f5
    ld h, d                                       ; $6fd1: $62
    adc $c1                                       ; $6fd2: $ce $c1
    jp nz, Jump_069_7a79                          ; $6fd4: $c2 $79 $7a

    ld a, b                                       ; $6fd7: $78
    add c                                         ; $6fd8: $81
    ret nz                                        ; $6fd9: $c0

    cp a                                          ; $6fda: $bf
    ldh [rLY], a                                  ; $6fdb: $e0 $44
    ld c, d                                       ; $6fdd: $4a
    inc bc                                        ; $6fde: $03
    ld b, a                                       ; $6fdf: $47
    ld b, l                                       ; $6fe0: $45

jr_069_6fe1:
    dec b                                         ; $6fe1: $05
    and [hl]                                      ; $6fe2: $a6
    push de                                       ; $6fe3: $d5
    ld h, d                                       ; $6fe4: $62
    ret nc                                        ; $6fe5: $d0

    db $ed                                        ; $6fe6: $ed
    rst $00                                       ; $6fe7: $c7
    ld h, b                                       ; $6fe8: $60
    add c                                         ; $6fe9: $81
    ld b, b                                       ; $6fea: $40
    ret nz                                        ; $6feb: $c0

    ld b, d                                       ; $6fec: $42
    or [hl]                                       ; $6fed: $b6
    push af                                       ; $6fee: $f5
    ld h, h                                       ; $6fef: $64
    sbc [hl]                                      ; $6ff0: $9e
    sub b                                         ; $6ff1: $90
    add h                                         ; $6ff2: $84
    and b                                         ; $6ff3: $a0

jr_069_6ff4:
    ld a, [hl-]                                   ; $6ff4: $3a
    xor h                                         ; $6ff5: $ac
    cp a                                          ; $6ff6: $bf
    db $e3                                        ; $6ff7: $e3
    ld c, d                                       ; $6ff8: $4a
    inc bc                                        ; $6ff9: $03
    ld h, c                                       ; $6ffa: $61
    ld d, l                                       ; $6ffb: $55
    rst $00                                       ; $6ffc: $c7
    ld h, b                                       ; $6ffd: $60
    scf                                           ; $6ffe: $37
    jr nz, jr_069_6fe1                            ; $6fff: $20 $e0

    nop                                           ; $7001: $00
    push de                                       ; $7002: $d5
    ld h, d                                       ; $7003: $62
    ret nc                                        ; $7004: $d0

    db $ed                                        ; $7005: $ed
    rst $00                                       ; $7006: $c7
    ld h, b                                       ; $7007: $60
    or d                                          ; $7008: $b2
    add c                                         ; $7009: $81
    ld b, e                                       ; $700a: $43
    ld [$62f5], a                                 ; $700b: $ea $f5 $62
    dec bc                                        ; $700e: $0b
    jr nz, jr_069_6fb2                            ; $700f: $20 $a1

    sub b                                         ; $7011: $90
    ld b, d                                       ; $7012: $42
    ret nz                                        ; $7013: $c0

    add hl, sp                                    ; $7014: $39
    db $fd                                        ; $7015: $fd
    xor l                                         ; $7016: $ad
    nop                                           ; $7017: $00
    ret nz                                        ; $7018: $c0

    dec [hl]                                      ; $7019: $35
    ld l, d                                       ; $701a: $6a
    dec [hl]                                      ; $701b: $35
    ld b, b                                       ; $701c: $40
    ld d, d                                       ; $701d: $52
    ld d, l                                       ; $701e: $55
    ldh [$84], a                                  ; $701f: $e0 $84
    ld hl, $02e0                                  ; $7021: $21 $e0 $02
    ldh [$e2], a                                  ; $7024: $e0 $e2
    ret nc                                        ; $7026: $d0

    xor $2f                                       ; $7027: $ee $2f
    adc [hl]                                      ; $7029: $8e
    sbc a                                         ; $702a: $9f
    or [hl]                                       ; $702b: $b6
    add l                                         ; $702c: $85
    rst $18                                       ; $702d: $df
    add [hl]                                      ; $702e: $86
    add e                                         ; $702f: $83
    ld b, l                                       ; $7030: $45
    scf                                           ; $7031: $37
    jr c, jr_069_6ff4                             ; $7032: $38 $c0

    ld [c], a                                     ; $7034: $e2
    ld b, d                                       ; $7035: $42
    ld b, l                                       ; $7036: $45
    ld b, b                                       ; $7037: $40
    inc bc                                        ; $7038: $03
    add b                                         ; $7039: $80
    inc b                                         ; $703a: $04
    add h                                         ; $703b: $84
    rst $18                                       ; $703c: $df
    ld l, l                                       ; $703d: $6d
    push bc                                       ; $703e: $c5
    ld h, c                                       ; $703f: $61
    jr nc, jr_069_704f                            ; $7040: $30 $0d

    db $10                                        ; $7042: $10
    ld [hl+], a                                   ; $7043: $22
    sbc h                                         ; $7044: $9c
    cp a                                          ; $7045: $bf
    ldh [$7b], a                                  ; $7046: $e0 $7b
    ld b, [hl]                                    ; $7048: $46
    xor [hl]                                      ; $7049: $ae
    add $60                                       ; $704a: $c6 $60
    ld l, d                                       ; $704c: $6a
    inc a                                         ; $704d: $3c
    ld b, h                                       ; $704e: $44

jr_069_704f:
    ld b, [hl]                                    ; $704f: $46
    dec b                                         ; $7050: $05
    ret nz                                        ; $7051: $c0

    ld h, b                                       ; $7052: $60
    cp a                                          ; $7053: $bf
    ret nz                                        ; $7054: $c0

    add d                                         ; $7055: $82
    rst $00                                       ; $7056: $c7
    ret nc                                        ; $7057: $d0

    db $eb                                        ; $7058: $eb
    jr nc, jr_069_7066                            ; $7059: $30 $0b

    ld sp, hl                                     ; $705b: $f9
    inc h                                         ; $705c: $24
    sbc [hl]                                      ; $705d: $9e
    sub c                                         ; $705e: $91
    ld a, [hl]                                    ; $705f: $7e
    ldh [$7f], a                                  ; $7060: $e0 $7f
    xor a                                         ; $7062: $af
    ld b, l                                       ; $7063: $45
    ld [hl], $6c                                  ; $7064: $36 $6c

jr_069_7066:
    ld l, l                                       ; $7066: $6d
    dec [hl]                                      ; $7067: $35
    ld [hl], $80                                  ; $7068: $36 $80
    ldh [rNR23], a                                ; $706a: $e0 $18
    ld b, c                                       ; $706c: $41
    rst $00                                       ; $706d: $c7
    inc d                                         ; $706e: $14
    ret nz                                        ; $706f: $c0

    ret nc                                        ; $7070: $d0

    ld [$d5d8], a                                 ; $7071: $ea $d8 $d5
    jr nc, jr_069_7081                            ; $7074: $30 $0b

    db $f4                                        ; $7076: $f4
    and e                                         ; $7077: $a3
    add a                                         ; $7078: $87
    jr nz, @+$7f                                  ; $7079: $20 $7d

    sub c                                         ; $707b: $91
    ld a, a                                       ; $707c: $7f
    and b                                         ; $707d: $a0
    adc b                                         ; $707e: $88
    adc b                                         ; $707f: $88
    ld [hl], b                                    ; $7080: $70

jr_069_7081:
    ld l, [hl]                                    ; $7081: $6e
    dec [hl]                                      ; $7082: $35
    cp a                                          ; $7083: $bf
    ldh [$80], a                                  ; $7084: $e0 $80
    ld a, d                                       ; $7086: $7a
    jr nz, jr_069_7089                            ; $7087: $20 $00

jr_069_7089:
    ld h, h                                       ; $7089: $64
    add e                                         ; $708a: $83
    ld b, b                                       ; $708b: $40
    ret nc                                        ; $708c: $d0

    db $eb                                        ; $708d: $eb
    jr nc, jr_069_709c                            ; $708e: $30 $0c

    db $f4                                        ; $7090: $f4
    and h                                         ; $7091: $a4
    ld b, a                                       ; $7092: $47
    inc hl                                        ; $7093: $23
    sub b                                         ; $7094: $90
    dec de                                        ; $7095: $1b
    sub c                                         ; $7096: $91
    ld b, b                                       ; $7097: $40
    cp l                                          ; $7098: $bd
    pop bc                                        ; $7099: $c1
    dec [hl]                                      ; $709a: $35
    add hl, sp                                    ; $709b: $39

jr_069_709c:
    add e                                         ; $709c: $83
    ld b, b                                       ; $709d: $40
    ld a, [$8100]                                 ; $709e: $fa $00 $81
    ld [hl+], a                                   ; $70a1: $22
    ldh [$d0], a                                  ; $70a2: $e0 $d0
    db $ec                                        ; $70a4: $ec
    ld a, [hl-]                                   ; $70a5: $3a
    add c                                         ; $70a6: $81
    jr nc, jr_069_70b2                            ; $70a7: $30 $09

    db $f4                                        ; $70a9: $f4
    and h                                         ; $70aa: $a4
    ld b, a                                       ; $70ab: $47
    inc hl                                        ; $70ac: $23
    jp Jump_069_4490                              ; $70ad: $c3 $90 $44


    adc [hl]                                      ; $70b0: $8e
    cp l                                          ; $70b1: $bd

jr_069_70b2:
    add b                                         ; $70b2: $80
    dec [hl]                                      ; $70b3: $35
    dec [hl]                                      ; $70b4: $35
    ld a, [hl-]                                   ; $70b5: $3a
    ld a, [hl]                                    ; $70b6: $7e
    and c                                         ; $70b7: $a1
    cp c                                          ; $70b8: $b9
    nop                                           ; $70b9: $00
    ld bc, $d741                                  ; $70ba: $01 $41 $d7
    ld bc, $d0d2                                  ; $70bd: $01 $d2 $d0
    ld [$a1f3], a                                 ; $70c0: $ea $f3 $a1
    jr nc, jr_069_70ce                            ; $70c3: $30 $09

    db $f4                                        ; $70c5: $f4
    and [hl]                                      ; $70c6: $a6
    add $00                                       ; $70c7: $c6 $00
    rst $08                                       ; $70c9: $cf
    add b                                         ; $70ca: $80
    jp Jump_000_3240                              ; $70cb: $c3 $40 $32


jr_069_70ce:
    ld a, a                                       ; $70ce: $7f
    ld [c], a                                     ; $70cf: $e2
    ld b, [hl]                                    ; $70d0: $46
    ld a, [c]                                     ; $70d1: $f2
    pop hl                                        ; $70d2: $e1
    ld bc, $daa2                                  ; $70d3: $01 $a2 $da
    db $d3                                        ; $70d6: $d3
    ret nc                                        ; $70d7: $d0

    ld [$e0f0], a                                 ; $70d8: $ea $f0 $e0
    jr nz, jr_069_710d                            ; $70db: $20 $30

    ld a, [bc]                                    ; $70dd: $0a
    db $f4                                        ; $70de: $f4
    and [hl]                                      ; $70df: $a6
    push bc                                       ; $70e0: $c5
    ld hl, $0047                                  ; $70e1: $21 $47 $00
    ld a, a                                       ; $70e4: $7f
    db $e3                                        ; $70e5: $e3
    ld a, $c0                                     ; $70e6: $3e $c0
    ldh [$c1], a                                  ; $70e8: $e0 $c1
    ld [c], a                                     ; $70ea: $e2
    ld h, a                                       ; $70eb: $67
    db $e4                                        ; $70ec: $e4
    push hl                                       ; $70ed: $e5
    call c, Call_000_0023                         ; $70ee: $dc $23 $00
    ret nc                                        ; $70f1: $d0

    add sp, -$60                                  ; $70f2: $e8 $a0
    call c, $803e                                 ; $70f4: $dc $3e $80
    jr nz, jr_069_7129                            ; $70f7: $20 $30

    add hl, bc                                    ; $70f9: $09
    di                                            ; $70fa: $f3
    ld h, $bf                                     ; $70fb: $26 $bf
    db $e3                                        ; $70fd: $e3
    ret nz                                        ; $70fe: $c0

    rst $20                                       ; $70ff: $e7
    add e                                         ; $7100: $83
    ld bc, $dceb                                  ; $7101: $01 $eb $dc

jr_069_7104:
    add b                                         ; $7104: $80
    ld b, e                                       ; $7105: $43
    nop                                           ; $7106: $00
    ld [bc], a                                    ; $7107: $02
    ret nc                                        ; $7108: $d0

    jp hl                                         ; $7109: $e9


    and b                                         ; $710a: $a0
    ld a, $80                                     ; $710b: $3e $80

jr_069_710d:
    jr nc, @+$0c                                  ; $710d: $30 $0a

    pop af                                        ; $710f: $f1
    ld hl, $6121                                  ; $7110: $21 $21 $61
    add e                                         ; $7113: $83
    ld hl, $e03f                                  ; $7114: $21 $3f $e0
    inc c                                         ; $7117: $0c
    ld bc, $c060                                  ; $7118: $01 $60 $c0
    and $ec                                       ; $711b: $e6 $ec
    db $ed                                        ; $711d: $ed
    ld [$4300], a                                 ; $711e: $ea $00 $43
    nop                                           ; $7121: $00
    ret nc                                        ; $7122: $d0

    ld [$227f], a                                 ; $7123: $ea $7f $22
    jr @+$32                                      ; $7126: $18 $30

    dec bc                                        ; $7128: $0b

jr_069_7129:
    ld hl, $bd62                                  ; $7129: $21 $62 $bd
    jp Jump_000_3946                              ; $712c: $c3 $46 $39


    nop                                           ; $712f: $00
    push hl                                       ; $7130: $e5
    pop bc                                        ; $7131: $c1
    jr z, jr_069_7104                             ; $7132: $28 $d0

    db $ed                                        ; $7134: $ed
    jr nz, jr_069_7167                            ; $7135: $20 $30

    inc c                                         ; $7137: $0c
    ldh a, [$e4]                                  ; $7138: $f0 $e4
    ld a, h                                       ; $713a: $7c
    jp nz, $c2ff                                  ; $713b: $c2 $ff $c2

    add b                                         ; $713e: $80
    pop bc                                        ; $713f: $c1
    jp $64c2                                      ; $7140: $c3 $c2 $64


    rst $20                                       ; $7143: $e7
    inc bc                                        ; $7144: $03
    db $10                                        ; $7145: $10
    ret nc                                        ; $7146: $d0

    ld [$0d30], a                                 ; $7147: $ea $30 $0d
    ldh a, [$e4]                                  ; $714a: $f0 $e4
    ld a, [hl]                                    ; $714c: $7e
    db $e3                                        ; $714d: $e3
    ld b, d                                       ; $714e: $42
    pop bc                                        ; $714f: $c1
    push bc                                       ; $7150: $c5
    nop                                           ; $7151: $00
    inc hl                                        ; $7152: $23
    ld d, e                                       ; $7153: $53
    ld h, [hl]                                    ; $7154: $66
    nop                                           ; $7155: $00
    ret nc                                        ; $7156: $d0

    add sp, $30                                   ; $7157: $e8 $30
    dec c                                         ; $7159: $0d
    ldh a, [$e4]                                  ; $715a: $f0 $e4
    ret nz                                        ; $715c: $c0

    inc bc                                        ; $715d: $03
    cp $a1                                        ; $715e: $fe $a1
    add c                                         ; $7160: $81
    pop bc                                        ; $7161: $c1
    ld [bc], a                                    ; $7162: $02
    ld l, b                                       ; $7163: $68
    ret nc                                        ; $7164: $d0

    db $ed                                        ; $7165: $ed
    nop                                           ; $7166: $00

jr_069_7167:
    jr nc, @+$0f                                  ; $7167: $30 $0d

    ei                                            ; $7169: $fb
    ld h, h                                       ; $716a: $64
    add b                                         ; $716b: $80
    inc bc                                        ; $716c: $03
    cp a                                          ; $716d: $bf
    pop bc                                        ; $716e: $c1
    ld bc, $fdc1                                  ; $716f: $01 $c1 $fd
    add b                                         ; $7172: $80
    pop bc                                        ; $7173: $c1
    and c                                         ; $7174: $a1
    add sp, $01                                   ; $7175: $e8 $01
    db $10                                        ; $7177: $10
    ret nc                                        ; $7178: $d0

    db $ed                                        ; $7179: $ed
    jr nc, jr_069_7189                            ; $717a: $30 $0d

    ldh a, [$e5]                                  ; $717c: $f0 $e5
    ld b, b                                       ; $717e: $40
    inc bc                                        ; $717f: $03
    add hl, sp                                    ; $7180: $39
    ld b, b                                       ; $7181: $40
    ld b, b                                       ; $7182: $40
    rst $38                                       ; $7183: $ff
    ld b, d                                       ; $7184: $42
    db $fc                                        ; $7185: $fc
    ld h, l                                       ; $7186: $65
    ld [hl], b                                    ; $7187: $70
    ret nc                                        ; $7188: $d0

jr_069_7189:
    xor $30                                       ; $7189: $ee $30
    dec c                                         ; $718b: $0d
    pop af                                        ; $718c: $f1
    ld h, a                                       ; $718d: $67
    ld a, [$9180]                                 ; $718e: $fa $80 $91
    ld b, l                                       ; $7191: $45
    ld b, e                                       ; $7192: $43
    pop bc                                        ; $7193: $c1
    add sp, $20                                   ; $7194: $e8 $20
    call c, $d182                                 ; $7196: $dc $82 $d1
    ld l, [hl]                                    ; $7199: $6e
    jr nc, jr_069_71a7                            ; $719a: $30 $0b

    ld a, [$fb68]                                 ; $719c: $fa $68 $fb
    add c                                         ; $719f: $81
    sub c                                         ; $71a0: $91
    ld b, e                                       ; $71a1: $43
    ld b, d                                       ; $71a2: $42
    ld b, c                                       ; $71a3: $41
    ret                                           ; $71a4: $c9


    ld b, b                                       ; $71a5: $40
    ret nc                                        ; $71a6: $d0

jr_069_71a7:
    db $ec                                        ; $71a7: $ec
    jp nz, $3062                                  ; $71a8: $c2 $62 $30

    ld [$e6f0], sp                                ; $71ab: $08 $f0 $e6
    cp h                                          ; $71ae: $bc
    add d                                         ; $71af: $82
    db $fd                                        ; $71b0: $fd
    and $9e                                       ; $71b1: $e6 $9e
    call c, Call_000_00e4                         ; $71b3: $dc $e4 $00
    sub h                                         ; $71b6: $94
    ld h, e                                       ; $71b7: $63
    ret nc                                        ; $71b8: $d0

    add sp, $40                                   ; $71b9: $e8 $40
    ld [bc], a                                    ; $71bb: $02
    jr nc, jr_069_71cb                            ; $71bc: $30 $0d

    ldh a, [$e1]                                  ; $71be: $f0 $e1
    cp l                                          ; $71c0: $bd
    add c                                         ; $71c1: $81
    add c                                         ; $71c2: $81
    ldh [rIE], a                                  ; $71c3: $e0 $ff
    ldh [$80], a                                  ; $71c5: $e0 $80
    ld b, e                                       ; $71c7: $43
    inc bc                                        ; $71c8: $03
    add sp, $20                                   ; $71c9: $e8 $20

jr_069_71cb:
    call c, $d0a6                                 ; $71cb: $dc $a6 $d0
    db $ed                                        ; $71ce: $ed
    jr nc, jr_069_71d9                            ; $71cf: $30 $08

    ldh a, [$e5]                                  ; $71d1: $f0 $e5
    db $fc                                        ; $71d3: $fc
    ld h, b                                       ; $71d4: $60
    jp $c4af                                      ; $71d5: $c3 $af $c4


    ld b, l                                       ; $71d8: $45

jr_069_71d9:
    scf                                           ; $71d9: $37
    dec a                                         ; $71da: $3d
    rst $38                                       ; $71db: $ff
    ldh [$37], a                                  ; $71dc: $e0 $37
    cp [hl]                                       ; $71de: $be
    ld h, b                                       ; $71df: $60
    sbc [hl]                                      ; $71e0: $9e
    add b                                         ; $71e1: $80
    add sp, $21                                   ; $71e2: $e8 $21
    call c, $d0a6                                 ; $71e4: $dc $a6 $d0
    add sp, $0d                                   ; $71e7: $e8 $0d
    pop bc                                        ; $71e9: $c1
    jr nc, jr_069_71f5                            ; $71ea: $30 $09

    ldh a, [$e5]                                  ; $71ec: $f0 $e5
    ld a, h                                       ; $71ee: $7c
    nop                                           ; $71ef: $00
    call nz, $c36f                                ; $71f0: $c4 $6f $c3
    add hl, sp                                    ; $71f3: $39
    and h                                         ; $71f4: $a4

jr_069_71f5:
    ld h, h                                       ; $71f5: $64
    rst $38                                       ; $71f6: $ff
    ldh [$a5], a                                  ; $71f7: $e0 $a5
    add hl, sp                                    ; $71f9: $39
    add c                                         ; $71fa: $81
    call nz, $dc0c                                ; $71fb: $c4 $0c $dc
    and l                                         ; $71fe: $a5
    ret nc                                        ; $71ff: $d0

    jp hl                                         ; $7200: $e9


    db $d3                                        ; $7201: $d3
    jp c, $a30f                                   ; $7202: $da $0f $a3

    jr nc, jr_069_720c                            ; $7205: $30 $05

    ldh a, [$e5]                                  ; $7207: $f0 $e5
    dec a                                         ; $7209: $3d
    add d                                         ; $720a: $82
    rst $38                                       ; $720b: $ff

jr_069_720c:
    ld a, $69                                     ; $720c: $3e $69
    and e                                         ; $720e: $a3
    dec [hl]                                      ; $720f: $35
    dec [hl]                                      ; $7210: $35
    and e                                         ; $7211: $a3
    ld l, d                                       ; $7212: $6a
    ld a, $08                                     ; $7213: $3e $08
    add d                                         ; $7215: $82
    ld h, h                                       ; $7216: $64
    call c, $d0a4                                 ; $7217: $dc $a4 $d0
    ld [$7fd7], a                                 ; $721a: $ea $d7 $7f
    inc b                                         ; $721d: $04
    jr nc, @+$07                                  ; $721e: $30 $05

    ldh a, [$e3]                                  ; $7220: $f0 $e3
    rst $28                                       ; $7222: $ef
    and c                                         ; $7223: $a1
    ld d, $ff                                     ; $7224: $16 $ff
    add b                                         ; $7226: $80
    ld a, $69                                     ; $7227: $3e $69
    ei                                            ; $7229: $fb
    ld [hl+], a                                   ; $722a: $22
    ld a, $43                                     ; $722b: $3e $43
    ld [bc], a                                    ; $722d: $02
    db $db                                        ; $722e: $db
    and b                                         ; $722f: $a0
    call c, $e0a5                                 ; $7230: $dc $a5 $e0
    ret nc                                        ; $7233: $d0

    add sp, $37                                   ; $7234: $e8 $37
    add [hl]                                      ; $7236: $86
    jr nc, jr_069_723d                            ; $7237: $30 $04

    daa                                           ; $7239: $27
    add l                                         ; $723a: $85
    ret nz                                        ; $723b: $c0

    and d                                         ; $723c: $a2

jr_069_723d:
    add hl, sp                                    ; $723d: $39
    ld l, e                                       ; $723e: $6b
    ld [hl], c                                    ; $723f: $71
    ld b, $ff                                     ; $7240: $06 $ff
    ldh [$6d], a                                  ; $7242: $e0 $6d
    add hl, sp                                    ; $7244: $39
    add d                                         ; $7245: $82
    nop                                           ; $7246: $00
    add c                                         ; $7247: $81
    and c                                         ; $7248: $a1
    inc bc                                        ; $7249: $03
    ld c, c                                       ; $724a: $49
    ret nc                                        ; $724b: $d0

    push hl                                       ; $724c: $e5
    call nz, $0c27                                ; $724d: $c4 $27 $0c
    jr nc, jr_069_7255                            ; $7250: $30 $03

    rst $30                                       ; $7252: $f7
    ld l, b                                       ; $7253: $68
    sbc [hl]                                      ; $7254: $9e

jr_069_7255:
    sub b                                         ; $7255: $90
    ret nz                                        ; $7256: $c0

    rst $00                                       ; $7257: $c7
    ld b, e                                       ; $7258: $43
    rlca                                          ; $7259: $07
    ret nc                                        ; $725a: $d0

    db $ec                                        ; $725b: $ec
    jr nc, @+$11                                  ; $725c: $30 $0f

    ld [$66f5], sp                                ; $725e: $08 $f5 $66
    ld a, $80                                     ; $7261: $3e $80
    ld b, b                                       ; $7263: $40
    call nz, $c1b6                                ; $7264: $c4 $b6 $c1
    ld h, $e0                                     ; $7267: $26 $e0
    add sp, -$30                                  ; $7269: $e8 $d0
    push hl                                       ; $726b: $e5
    jr nc, @+$0e                                  ; $726c: $30 $0c

    add b                                         ; $726e: $80
    ldh a, [$e8]                                  ; $726f: $f0 $e8
    cp l                                          ; $7271: $bd
    and l                                         ; $7272: $a5

jr_069_7273:
    inc b                                         ; $7273: $04
    ld h, e                                       ; $7274: $63
    ldh [$ef], a                                  ; $7275: $e0 $ef
    adc a                                         ; $7277: $8f
    inc hl                                        ; $7278: $23
    jr nc, jr_069_7287                            ; $7279: $30 $0c

    ldh a, [$e8]                                  ; $727b: $f0 $e8
    and b                                         ; $727d: $a0
    inc bc                                        ; $727e: $03
    sbc a                                         ; $727f: $9f
    sbc l                                         ; $7280: $9d
    rst $38                                       ; $7281: $ff
    ld [c], a                                     ; $7282: $e2
    pop bc                                        ; $7283: $c1
    ld bc, $f1e0                                  ; $7284: $01 $e0 $f1

jr_069_7287:
    ld d, h                                       ; $7287: $54
    ld [hl+], a                                   ; $7288: $22
    jr nc, jr_069_7298                            ; $7289: $30 $0d

    ldh a, [$e8]                                  ; $728b: $f0 $e8
    nop                                           ; $728d: $00
    di                                            ; $728e: $f3
    ld b, [hl]                                    ; $728f: $46
    rrca                                          ; $7290: $0f
    jr nz, jr_069_7273                            ; $7291: $20 $e0

    pop af                                        ; $7293: $f1
    push bc                                       ; $7294: $c5
    ld h, d                                       ; $7295: $62
    jr nc, jr_069_72a5                            ; $7296: $30 $0d

jr_069_7298:
    ldh a, [$e8]                                  ; $7298: $f0 $e8
    db $ec                                        ; $729a: $ec
    nop                                           ; $729b: $00
    di                                            ; $729c: $f3
    ld b, e                                       ; $729d: $43
    nop                                           ; $729e: $00
    db $e4                                        ; $729f: $e4
    inc b                                         ; $72a0: $04
    ldh [$ed], a                                  ; $72a1: $e0 $ed
    push bc                                       ; $72a3: $c5
    ld h, d                                       ; $72a4: $62

jr_069_72a5:
    jr nc, jr_069_72b4                            ; $72a5: $30 $0d

    ldh a, [$e8]                                  ; $72a7: $f0 $e8
    db $ec                                        ; $72a9: $ec
    inc bc                                        ; $72aa: $03
    ldh [$84], a                                  ; $72ab: $e0 $84
    ldh [$f0], a                                  ; $72ad: $e0 $f0
    nop                                           ; $72af: $00
    ret nc                                        ; $72b0: $d0

    ld [c], a                                     ; $72b1: $e2
    rst $38                                       ; $72b2: $ff
    ld a, b                                       ; $72b3: $78

jr_069_72b4:
    inc e                                         ; $72b4: $1c
    inc hl                                        ; $72b5: $23
    ld hl, sp-$19                                 ; $72b6: $f8 $e7
    rst $18                                       ; $72b8: $df
    ld l, l                                       ; $72b9: $6d
    rst $38                                       ; $72ba: $ff
    ld h, c                                       ; $72bb: $61
    nop                                           ; $72bc: $00
    nop                                           ; $72bd: $00
    nop                                           ; $72be: $00
    pop bc                                        ; $72bf: $c1
    nop                                           ; $72c0: $00
    rst $38                                       ; $72c1: $ff
    rst $38                                       ; $72c2: $ff
    rst $38                                       ; $72c3: $ff
    rst $38                                       ; $72c4: $ff
    rst $38                                       ; $72c5: $ff
    rst $38                                       ; $72c6: $ff
    rst $38                                       ; $72c7: $ff
    rst $38                                       ; $72c8: $ff
    rst $38                                       ; $72c9: $ff
    rst $38                                       ; $72ca: $ff
    nop                                           ; $72cb: $00
    nop                                           ; $72cc: $00
    dec c                                         ; $72cd: $0d
    add b                                         ; $72ce: $80
    cp $e0                                        ; $72cf: $fe $e0
    nop                                           ; $72d1: $00
    ld b, b                                       ; $72d2: $40
    ret c                                         ; $72d3: $d8

    push hl                                       ; $72d4: $e5
    rst $30                                       ; $72d5: $f7
    and $eb                                       ; $72d6: $e6 $eb
    ldh [rIE], a                                  ; $72d8: $e0 $ff
    rst $38                                       ; $72da: $ff
    nop                                           ; $72db: $00
    rst $38                                       ; $72dc: $ff
    db $f4                                        ; $72dd: $f4
    nop                                           ; $72de: $00
    nop                                           ; $72df: $00
    nop                                           ; $72e0: $00
    ld [bc], a                                    ; $72e1: $02
    nop                                           ; $72e2: $00
    daa                                           ; $72e3: $27
    dec b                                         ; $72e4: $05
    ld [bc], a                                    ; $72e5: $02
    ld bc, $0628                                  ; $72e6: $01 $28 $06
    ld [bc], a                                    ; $72e9: $02
    ld [bc], a                                    ; $72ea: $02
    jr nz, @+$09                                  ; $72eb: $20 $07

    ld [bc], a                                    ; $72ed: $02
    inc bc                                        ; $72ee: $03
    ld hl, $0208                                  ; $72ef: $21 $08 $02
    inc b                                         ; $72f2: $04
    ld e, $0b                                     ; $72f3: $1e $0b
    ld [bc], a                                    ; $72f5: $02
    dec b                                         ; $72f6: $05
    rra                                           ; $72f7: $1f
    inc c                                         ; $72f8: $0c
    ld [bc], a                                    ; $72f9: $02
    ld b, $1e                                     ; $72fa: $06 $1e
    dec c                                         ; $72fc: $0d
    ld [bc], a                                    ; $72fd: $02
    rlca                                          ; $72fe: $07
    dec h                                         ; $72ff: $25
    ld c, $02                                     ; $7300: $0e $02
    ld [$0f26], sp                                ; $7302: $08 $26 $0f
    ld [bc], a                                    ; $7305: $02
    add hl, bc                                    ; $7306: $09
    daa                                           ; $7307: $27
    db $10                                        ; $7308: $10
    ld [bc], a                                    ; $7309: $02
    ld a, [bc]                                    ; $730a: $0a
    ld [hl+], a                                   ; $730b: $22
    ld de, $0b02                                  ; $730c: $11 $02 $0b
    ld hl, $0212                                  ; $730f: $21 $12 $02
    inc c                                         ; $7312: $0c
    dec de                                        ; $7313: $1b
    inc d                                         ; $7314: $14
    ld [bc], a                                    ; $7315: $02
    dec c                                         ; $7316: $0d
    ld [hl+], a                                   ; $7317: $22
    dec d                                         ; $7318: $15
    ld [bc], a                                    ; $7319: $02
    ld c, $29                                     ; $731a: $0e $29
    dec d                                         ; $731c: $15
    ld [bc], a                                    ; $731d: $02
    rrca                                          ; $731e: $0f
    rra                                           ; $731f: $1f
    ld d, $02                                     ; $7320: $16 $02
    db $10                                        ; $7322: $10
    ld hl, $0216                                  ; $7323: $21 $16 $02
    ld de, $1624                                  ; $7326: $11 $24 $16
    ld [bc], a                                    ; $7329: $02
    ld [de], a                                    ; $732a: $12
    add hl, de                                    ; $732b: $19
    rla                                           ; $732c: $17
    ld [bc], a                                    ; $732d: $02
    inc de                                        ; $732e: $13
    dec e                                         ; $732f: $1d
    rla                                           ; $7330: $17
    ld [bc], a                                    ; $7331: $02
    inc d                                         ; $7332: $14
    ld e, $17                                     ; $7333: $1e $17
    ld [bc], a                                    ; $7335: $02
    dec d                                         ; $7336: $15
    jr z, jr_069_7350                             ; $7337: $28 $17

    ld [bc], a                                    ; $7339: $02
    ld d, $29                                     ; $733a: $16 $29
    jr @+$04                                      ; $733c: $18 $02

    rla                                           ; $733e: $17
    jr z, @+$1b                                   ; $733f: $28 $19

    ld [bc], a                                    ; $7341: $02
    jr jr_069_735b                                ; $7342: $18 $17

    ld e, $02                                     ; $7344: $1e $02
    add hl, de                                    ; $7346: $19
    add hl, de                                    ; $7347: $19
    ld e, $02                                     ; $7348: $1e $02
    ld a, [de]                                    ; $734a: $1a
    inc hl                                        ; $734b: $23
    rra                                           ; $734c: $1f
    ld [bc], a                                    ; $734d: $02
    dec de                                        ; $734e: $1b
    inc h                                         ; $734f: $24

jr_069_7350:
    jr nz, jr_069_7354                            ; $7350: $20 $02

    inc e                                         ; $7352: $1c
    ld a, [de]                                    ; $7353: $1a

jr_069_7354:
    ld hl, $1d02                                  ; $7354: $21 $02 $1d
    inc hl                                        ; $7357: $23
    ld hl, $1e02                                  ; $7358: $21 $02 $1e

jr_069_735b:
    ld h, $23                                     ; $735b: $26 $23
    ld [bc], a                                    ; $735d: $02
    rra                                           ; $735e: $1f
    daa                                           ; $735f: $27
    inc h                                         ; $7360: $24
    ld [bc], a                                    ; $7361: $02
    jr nz, jr_069_737e                            ; $7362: $20 $1a

    dec h                                         ; $7364: $25
    ld [bc], a                                    ; $7365: $02
    ld hl, $2528                                  ; $7366: $21 $28 $25
    ld [bc], a                                    ; $7369: $02
    ld [hl+], a                                   ; $736a: $22
    add hl, de                                    ; $736b: $19
    ld h, $02                                     ; $736c: $26 $02
    inc hl                                        ; $736e: $23
    daa                                           ; $736f: $27
    ld h, $02                                     ; $7370: $26 $02
    inc h                                         ; $7372: $24
    ld a, [de]                                    ; $7373: $1a
    daa                                           ; $7374: $27
    ld [bc], a                                    ; $7375: $02
    dec h                                         ; $7376: $25
    dec de                                        ; $7377: $1b
    jr z, jr_069_737c                             ; $7378: $28 $02

    ld h, $26                                     ; $737a: $26 $26

jr_069_737c:
    dec hl                                        ; $737c: $2b
    ld [bc], a                                    ; $737d: $02

jr_069_737e:
    daa                                           ; $737e: $27
    daa                                           ; $737f: $27
    inc l                                         ; $7380: $2c
    ld [bc], a                                    ; $7381: $02
    jr z, jr_069_73aa                             ; $7382: $28 $26

    dec l                                         ; $7384: $2d
    ld [bc], a                                    ; $7385: $02
    add hl, hl                                    ; $7386: $29
    inc e                                         ; $7387: $1c
    inc sp                                        ; $7388: $33
    ld [bc], a                                    ; $7389: $02
    ld a, [hl+]                                   ; $738a: $2a
    dec de                                        ; $738b: $1b
    inc [hl]                                      ; $738c: $34
    ld [bc], a                                    ; $738d: $02
    dec hl                                        ; $738e: $2b
    inc e                                         ; $738f: $1c
    dec [hl]                                      ; $7390: $35
    ld [bc], a                                    ; $7391: $02
    inc l                                         ; $7392: $2c
    dec h                                         ; $7393: $25
    ld [hl], $02                                  ; $7394: $36 $02
    dec l                                         ; $7396: $2d
    ld h, $37                                     ; $7397: $26 $37
    rst $38                                       ; $7399: $ff
    rst $38                                       ; $739a: $ff
    rst $38                                       ; $739b: $ff
    and h                                         ; $739c: $a4
    ld [hl], e                                    ; $739d: $73
    rst $08                                       ; $739e: $cf
    ld [hl], a                                    ; $739f: $77
    cp b                                          ; $73a0: $b8
    ld a, h                                       ; $73a1: $7c
    db $d3                                        ; $73a2: $d3
    ld a, h                                       ; $73a3: $7c
    ld l, a                                       ; $73a4: $6f
    dec c                                         ; $73a5: $0d
    ld c, $0e                                     ; $73a6: $0e $0e
    ld c, $fc                                     ; $73a8: $0e $fc

jr_069_73aa:
    pop af                                        ; $73aa: $f1
    ld c, l                                       ; $73ab: $4d
    ld c, l                                       ; $73ac: $4d
    db $fc                                        ; $73ad: $fc
    ldh a, [rP1]                                  ; $73ae: $f0 $00
    db $d3                                        ; $73b0: $d3
    ldh [$fc], a                                  ; $73b1: $e0 $fc
    pop hl                                        ; $73b3: $e1
    call z, $fee9                                 ; $73b4: $cc $e9 $fe
    db $fd                                        ; $73b7: $fd
    ret nc                                        ; $73b8: $d0

    ld [c], a                                     ; $73b9: $e2
    call z, $b0e1                                 ; $73ba: $cc $e1 $b0
    ldh [rIE], a                                  ; $73bd: $e0 $ff
    rst $38                                       ; $73bf: $ff
    call c, $eac6                                 ; $73c0: $dc $c6 $ea
    ld a, [hl]                                    ; $73c3: $7e
    ld [c], a                                     ; $73c4: $e2
    ld c, l                                       ; $73c5: $4d
    ld c, l                                       ; $73c6: $4d
    dec c                                         ; $73c7: $0d
    cp $e0                                        ; $73c8: $fe $e0
    ld c, l                                       ; $73ca: $4d
    ld c, l                                       ; $73cb: $4d
    pop hl                                        ; $73cc: $e1
    dec l                                         ; $73cd: $2d
    ld hl, sp-$20                                 ; $73ce: $f8 $e0
    ld a, [hl]                                    ; $73d0: $7e
    db $e3                                        ; $73d1: $e3
    rst $38                                       ; $73d2: $ff
    rst $38                                       ; $73d3: $ff
    add d                                         ; $73d4: $82
    jp hl                                         ; $73d5: $e9


    dec c                                         ; $73d6: $0d
    dec c                                         ; $73d7: $0d
    ld l, l                                       ; $73d8: $6d
    dec c                                         ; $73d9: $0d
    ld l, e                                       ; $73da: $6b
    rst $38                                       ; $73db: $ff
    pop hl                                        ; $73dc: $e1
    ld c, l                                       ; $73dd: $4d
    dec l                                         ; $73de: $2d
    ld a, [hl]                                    ; $73df: $7e
    push hl                                       ; $73e0: $e5
    cp h                                          ; $73e1: $bc
    db $ed                                        ; $73e2: $ed
    ld b, $ef                                     ; $73e3: $06 $ef
    cp $e3                                        ; $73e5: $fe $e3
    ld a, h                                       ; $73e7: $7c
    ld c, h                                       ; $73e8: $4c
    pop hl                                        ; $73e9: $e1
    jp nz, Jump_000_2be0                          ; $73ea: $c2 $e0 $2b

    ld a, [bc]                                    ; $73ed: $0a
    ld a, [bc]                                    ; $73ee: $0a
    dec bc                                        ; $73ef: $0b
    dec bc                                        ; $73f0: $0b
    cp a                                          ; $73f1: $bf
    ld [c], a                                     ; $73f2: $e2
    add b                                         ; $73f3: $80
    ld [hl], l                                    ; $73f4: $75
    ldh [$ae], a                                  ; $73f5: $e0 $ae
    ld [c], a                                     ; $73f7: $e2
    adc $cc                                       ; $73f8: $ce $cc
    ld a, d                                       ; $73fa: $7a
    db $ed                                        ; $73fb: $ed
    ld [de], a                                    ; $73fc: $12
    pop hl                                        ; $73fd: $e1
    jp nz, Jump_000_0cc1                          ; $73fe: $c2 $c1 $0c

    pop hl                                        ; $7401: $e1
    ld c, l                                       ; $7402: $4d
    cp $c1                                        ; $7403: $fe $c1
    ldh [$2a], a                                  ; $7405: $e0 $2a
    ld a, [bc]                                    ; $7407: $0a
    ld a, [bc]                                    ; $7408: $0a
    ld l, d                                       ; $7409: $6a
    dec bc                                        ; $740a: $0b
    dec c                                         ; $740b: $0d
    ld l, e                                       ; $740c: $6b
    rlca                                          ; $740d: $07
    ld l, e                                       ; $740e: $6b
    dec l                                         ; $740f: $2d

jr_069_7410:
    dec c                                         ; $7410: $0d
    db $fc                                        ; $7411: $fc
    rst $18                                       ; $7412: $df
    jp z, $82e3                                   ; $7413: $ca $e3 $82

    jp $e246                                      ; $7416: $c3 $46 $e2


    add d                                         ; $7419: $82
    ldh [rTMA], a                                 ; $741a: $e0 $06
    ret nz                                        ; $741c: $c0

    ldh [$2a], a                                  ; $741d: $e0 $2a
    ld c, e                                       ; $741f: $4b
    ret nz                                        ; $7420: $c0

    ldh [$3e], a                                  ; $7421: $e0 $3e
    ldh [$f7], a                                  ; $7423: $e0 $f7
    ret nz                                        ; $7425: $c0

    ret nz                                        ; $7426: $c0

    rst $38                                       ; $7427: $ff
    jr z, jr_069_7410                             ; $7428: $28 $e6

    ld l, $07                                     ; $742a: $2e $07
    ld [c], a                                     ; $742c: $e2
    ld a, [bc]                                    ; $742d: $0a
    ld a, [hl+]                                   ; $742e: $2a
    dec bc                                        ; $742f: $0b
    rst $38                                       ; $7430: $ff
    ldh [$2b], a                                  ; $7431: $e0 $2b
    ld a, $e4                                     ; $7433: $3e $e4
    ld d, d                                       ; $7435: $52
    ldh a, [$88]                                  ; $7436: $f0 $88
    ld [$4dd6], sp                                ; $7438: $08 $d6 $4d
    ldh [rWY], a                                  ; $743b: $e0 $4a
    ldh [$2b], a                                  ; $743d: $e0 $2b
    pop bc                                        ; $743f: $c1
    pop hl                                        ; $7440: $e1
    ret nz                                        ; $7441: $c0

    ldh [$3e], a                                  ; $7442: $e0 $3e
    pop hl                                        ; $7444: $e1
    ld l, l                                       ; $7445: $6d
    xor b                                         ; $7446: $a8
    nop                                           ; $7447: $00
    rst $18                                       ; $7448: $df
    ld [$88c8], sp                                ; $7449: $08 $c8 $88
    ret nz                                        ; $744c: $c0

    dec c                                         ; $744d: $0d
    pop bc                                        ; $744e: $c1
    ldh [rWX], a                                  ; $744f: $e0 $4b
    add b                                         ; $7451: $80
    ldh [rWX], a                                  ; $7452: $e0 $4b
    rlca                                          ; $7454: $07
    ld l, e                                       ; $7455: $6b
    ld a, [bc]                                    ; $7456: $0a
    ld c, d                                       ; $7457: $4a
    ret nz                                        ; $7458: $c0

    db $e4                                        ; $7459: $e4
    rst $38                                       ; $745a: $ff
    rst $38                                       ; $745b: $ff
    jp c, $d5c1                                   ; $745c: $da $c1 $d5

    ret nz                                        ; $745f: $c0

    ld c, c                                       ; $7460: $49
    jp Jump_000_2b47                              ; $7461: $c3 $47 $2b


    ld c, e                                       ; $7464: $4b
    ld c, e                                       ; $7465: $4b
    jp $ffe0                                      ; $7466: $c3 $e0 $ff


    pop hl                                        ; $7469: $e1
    ld [hl], d                                    ; $746a: $72
    ldh [$6d], a                                  ; $746b: $e0 $6d
    ld a, [hl]                                    ; $746d: $7e
    jp nz, $ffc4                                  ; $746e: $c2 $c4 $ff

    rst $38                                       ; $7471: $ff
    inc b                                         ; $7472: $04
    db $e3                                        ; $7473: $e3
    dec c                                         ; $7474: $0d
    ld [$c0e1], sp                                ; $7475: $08 $e1 $c0
    pop hl                                        ; $7478: $e1
    pop bc                                        ; $7479: $c1
    pop hl                                        ; $747a: $e1
    ld a, [hl+]                                   ; $747b: $2a
    ld c, e                                       ; $747c: $4b
    ld b, b                                       ; $747d: $40
    ld b, c                                       ; $747e: $41
    pop hl                                        ; $747f: $e1
    ld l, d                                       ; $7480: $6a
    call nz, $d700                                ; $7481: $c4 $00 $d7
    ld [$8dc3], sp                                ; $7484: $08 $c3 $8d
    and b                                         ; $7487: $a0
    call z, $0da0                                 ; $7488: $cc $a0 $0d
    ld a, [bc]                                    ; $748b: $0a
    pop hl                                        ; $748c: $e1
    add hl, bc                                    ; $748d: $09
    dec bc                                        ; $748e: $0b
    add b                                         ; $748f: $80
    db $e3                                        ; $7490: $e3
    ld a, a                                       ; $7491: $7f
    jp nz, Jump_000_006d                          ; $7492: $c2 $6d $00

    rst $18                                       ; $7495: $df
    ld [$8cc4], sp                                ; $7496: $08 $c4 $8c
    and c                                         ; $7499: $a1
    set 0, d                                      ; $749a: $cb $c2
    ld h, [hl]                                    ; $749c: $66
    pop bc                                        ; $749d: $c1
    ldh [rOCPD], a                                ; $749e: $e0 $6b
    ld c, e                                       ; $74a0: $4b
    cp c                                          ; $74a1: $b9
    ret nz                                        ; $74a2: $c0

    cp $e1                                        ; $74a3: $fe $e1
    ld l, e                                       ; $74a5: $6b
    dec l                                         ; $74a6: $2d
    ld c, b                                       ; $74a7: $48
    rst $38                                       ; $74a8: $ff
    nop                                           ; $74a9: $00
    inc e                                         ; $74aa: $1c
    and e                                         ; $74ab: $a3
    ld b, d                                       ; $74ac: $42
    db $e3                                        ; $74ad: $e3
    add [hl]                                      ; $74ae: $86
    jp nz, $e2c1                                  ; $74af: $c2 $c1 $e2

    jp nz, Jump_000_01e2                          ; $74b2: $c2 $e2 $01

    ldh [rP1], a                                  ; $74b5: $e0 $00
    cp a                                          ; $74b7: $bf
    add d                                         ; $74b8: $82
    db $e4                                        ; $74b9: $e4
    jr nz, @+$52                                  ; $74ba: $20 $50

    and b                                         ; $74bc: $a0
    add l                                         ; $74bd: $85
    pop bc                                        ; $74be: $c1
    add b                                         ; $74bf: $80
    db $e3                                        ; $74c0: $e3
    pop bc                                        ; $74c1: $c1
    ldh [$fe], a                                  ; $74c2: $e0 $fe
    add c                                         ; $74c4: $81
    dec c                                         ; $74c5: $0d
    ld b, d                                       ; $74c6: $42
    jp nz, $aec0                                  ; $74c7: $c2 $c0 $ae

    ld l, h                                       ; $74ca: $6c
    nop                                           ; $74cb: $00
    adc d                                         ; $74cc: $8a
    ld b, [hl]                                    ; $74cd: $46
    and d                                         ; $74ce: $a2
    ld c, l                                       ; $74cf: $4d
    dec c                                         ; $74d0: $0d
    ld de, $6ba1                                  ; $74d1: $11 $a1 $6b
    dec hl                                        ; $74d4: $2b
    ld b, $c3                                     ; $74d5: $06 $c3
    pop bc                                        ; $74d7: $c1
    dec bc                                        ; $74d8: $0b
    pop bc                                        ; $74d9: $c1
    pop hl                                        ; $74da: $e1
    cp d                                          ; $74db: $ba
    add b                                         ; $74dc: $80
    pop bc                                        ; $74dd: $c1
    ld [c], a                                     ; $74de: $e2
    inc b                                         ; $74df: $04
    call z, $f373                                 ; $74e0: $cc $73 $f3
    ld c, l                                       ; $74e3: $4d
    ld c, l                                       ; $74e4: $4d
    inc c                                         ; $74e5: $0c
    ld [de], a                                    ; $74e6: $12
    and c                                         ; $74e7: $a1
    ld b, c                                       ; $74e8: $41
    db $e3                                        ; $74e9: $e3
    dec bc                                        ; $74ea: $0b
    ld l, e                                       ; $74eb: $6b
    ld b, $a1                                     ; $74ec: $06 $a1
    add l                                         ; $74ee: $85
    ldh [$b2], a                                  ; $74ef: $e0 $b2
    add c                                         ; $74f1: $81
    xor e                                         ; $74f2: $ab
    ld h, b                                       ; $74f3: $60
    inc e                                         ; $74f4: $1c
    nop                                           ; $74f5: $00
    rst $38                                       ; $74f6: $ff
    sub $61                                       ; $74f7: $d6 $61
    dec bc                                        ; $74f9: $0b
    dec c                                         ; $74fa: $0d
    dec hl                                        ; $74fb: $2b
    ld b, [hl]                                    ; $74fc: $46
    ret nz                                        ; $74fd: $c0

    add c                                         ; $74fe: $81
    db $e3                                        ; $74ff: $e3
    add h                                         ; $7500: $84
    add c                                         ; $7501: $81
    jr nz, jr_069_7549                            ; $7502: $20 $45

    add b                                         ; $7504: $80
    jp Jump_000_02e3                              ; $7505: $c3 $e3 $02


    cp a                                          ; $7508: $bf
    ld b, [hl]                                    ; $7509: $46
    ld h, d                                       ; $750a: $62
    jp z, Jump_069_4a80                           ; $750b: $ca $80 $4a

    ld c, b                                       ; $750e: $48
    and e                                         ; $750f: $a3
    add d                                         ; $7510: $82
    ret nz                                        ; $7511: $c0

    ld h, b                                       ; $7512: $60
    ld b, a                                       ; $7513: $47
    jp nz, $8368                                  ; $7514: $c2 $68 $83

    ld a, [hl+]                                   ; $7517: $2a
    add e                                         ; $7518: $83
    cp $99                                        ; $7519: $fe $99
    ld [$6da2], sp                                ; $751b: $08 $a2 $6d
    dec bc                                        ; $751e: $0b
    inc c                                         ; $751f: $0c
    add c                                         ; $7520: $81
    adc b                                         ; $7521: $88
    pop bc                                        ; $7522: $c1
    and c                                         ; $7523: $a1
    ld [bc], a                                    ; $7524: $02
    ret nz                                        ; $7525: $c0

    cp a                                          ; $7526: $bf
    ld h, b                                       ; $7527: $60
    dec bc                                        ; $7528: $0b
    ld [$d6a3], sp                                ; $7529: $08 $a3 $d6
    ld d, l                                       ; $752c: $55
    ld c, $6e                                     ; $752d: $0e $6e
    dec bc                                        ; $752f: $0b
    rla                                           ; $7530: $17
    dec bc                                        ; $7531: $0b
    ld a, [bc]                                    ; $7532: $0a
    ld c, d                                       ; $7533: $4a
    ret nz                                        ; $7534: $c0

    pop hl                                        ; $7535: $e1
    dec c                                         ; $7536: $0d
    pop bc                                        ; $7537: $c1
    db $e3                                        ; $7538: $e3
    ret nz                                        ; $7539: $c0

    db $e3                                        ; $753a: $e3
    rst $38                                       ; $753b: $ff
    rst $38                                       ; $753c: $ff
    ld c, h                                       ; $753d: $4c
    inc b                                         ; $753e: $04
    add [hl]                                      ; $753f: $86
    ld bc, $0ae0                                  ; $7540: $01 $e0 $0a
    ld c, d                                       ; $7543: $4a
    ret nz                                        ; $7544: $c0

    and b                                         ; $7545: $a0
    ld a, b                                       ; $7546: $78
    ret nz                                        ; $7547: $c0

    ld c, e                                       ; $7548: $4b

jr_069_7549:
    cp d                                          ; $7549: $ba
    pop hl                                        ; $754a: $e1
    ld hl, sp+$08                                 ; $754b: $f8 $08
    and b                                         ; $754d: $a0
    add $7f                                       ; $754e: $c6 $7f
    add b                                         ; $7550: $80
    jp hl                                         ; $7551: $e9


    dec c                                         ; $7552: $0d
    ld l, e                                       ; $7553: $6b
    ld c, d                                       ; $7554: $4a
    ld a, [bc]                                    ; $7555: $0a
    dec hl                                        ; $7556: $2b
    ld b, $7f                                     ; $7557: $06 $7f
    and b                                         ; $7559: $a0
    ld c, e                                       ; $755a: $4b
    ld c, e                                       ; $755b: $4b
    ld b, d                                       ; $755c: $42
    add d                                         ; $755d: $82
    ld [$92a4], sp                                ; $755e: $08 $a4 $92
    ld [hl], h                                    ; $7561: $74
    nop                                           ; $7562: $00
    ld c, c                                       ; $7563: $49
    adc [hl]                                      ; $7564: $8e
    ld b, e                                       ; $7565: $43
    sub [hl]                                      ; $7566: $96
    rst $08                                       ; $7567: $cf
    ld h, b                                       ; $7568: $60
    ld a, [hl+]                                   ; $7569: $2a
    ld a, [hl+]                                   ; $756a: $2a
    ld b, [hl]                                    ; $756b: $46
    ret nz                                        ; $756c: $c0

    dec bc                                        ; $756d: $0b
    add $80                                       ; $756e: $c6 $80
    ld b, [hl]                                    ; $7570: $46
    ld h, b                                       ; $7571: $60
    dec bc                                        ; $7572: $0b
    jr nc, @+$49                                  ; $7573: $30 $47

    ld h, b                                       ; $7575: $60
    ld [$008f], sp                                ; $7576: $08 $8f $00
    ld d, a                                       ; $7579: $57

jr_069_757a:
    adc b                                         ; $757a: $88
    add d                                         ; $757b: $82
    ld a, [bc]                                    ; $757c: $0a
    ld l, d                                       ; $757d: $6a
    cp $a0                                        ; $757e: $fe $a0
    add [hl]                                      ; $7580: $86
    add c                                         ; $7581: $81
    ld b, a                                       ; $7582: $47
    ld c, d                                       ; $7583: $4a
    dec c                                         ; $7584: $0d
    dec bc                                        ; $7585: $0b
    adc b                                         ; $7586: $88
    ld [hl], d                                    ; $7587: $72
    nop                                           ; $7588: $00
    ld sp, hl                                     ; $7589: $f9
    ret nz                                        ; $758a: $c0

    pop hl                                        ; $758b: $e1
    ld a, [bc]                                    ; $758c: $0a
    push bc                                       ; $758d: $c5
    and b                                         ; $758e: $a0
    dec b                                         ; $758f: $05
    dec hl                                        ; $7590: $2b
    ld b, $80                                     ; $7591: $06 $80
    ld c, d                                       ; $7593: $4a
    ld b, c                                       ; $7594: $41
    ld h, b                                       ; $7595: $60
    inc bc                                        ; $7596: $03
    ld b, c                                       ; $7597: $41
    call nz, Call_000_00ff                        ; $7598: $c4 $ff $00
    add sp, $7f                                   ; $759b: $e8 $7f
    pop bc                                        ; $759d: $c1
    inc b                                         ; $759e: $04
    ld a, a                                       ; $759f: $7f
    ldh [rSB], a                                  ; $75a0: $e0 $01
    ldh [rWY], a                                  ; $75a2: $e0 $4a
    ld [hl], $c2                                  ; $75a4: $36 $c2
    add $80                                       ; $75a6: $c6 $80
    inc b                                         ; $75a8: $04
    or c                                          ; $75a9: $b1
    nop                                           ; $75aa: $00
    db $d3                                        ; $75ab: $d3
    ret nz                                        ; $75ac: $c0

    pop hl                                        ; $75ad: $e1
    ld a, [hl-]                                   ; $75ae: $3a
    dec bc                                        ; $75af: $0b
    ld b, b                                       ; $75b0: $40
    ld a, [bc]                                    ; $75b1: $0a
    add l                                         ; $75b2: $85
    ld h, c                                       ; $75b3: $61
    dec bc                                        ; $75b4: $0b
    ld a, [bc]                                    ; $75b5: $0a
    ld a, [bc]                                    ; $75b6: $0a
    jr c, jr_069_757a                             ; $75b7: $38 $c1

    add [hl]                                      ; $75b9: $86
    add d                                         ; $75ba: $82
    call nc, $df00                                ; $75bb: $d4 $00 $df
    nop                                           ; $75be: $00
    push bc                                       ; $75bf: $c5
    dec hl                                        ; $75c0: $2b
    pop bc                                        ; $75c1: $c1
    pop hl                                        ; $75c2: $e1
    ld a, [hl+]                                   ; $75c3: $2a

jr_069_75c4:
    ld b, l                                       ; $75c4: $45
    ld h, c                                       ; $75c5: $61
    dec hl                                        ; $75c6: $2b
    ld a, [hl+]                                   ; $75c7: $2a
    ld b, c                                       ; $75c8: $41
    ld a, [hl+]                                   ; $75c9: $2a
    ld a, c                                       ; $75ca: $79
    ld h, c                                       ; $75cb: $61
    add b                                         ; $75cc: $80
    ld [c], a                                     ; $75cd: $e2
    rst $38                                       ; $75ce: $ff
    rst $38                                       ; $75cf: $ff
    inc b                                         ; $75d0: $04
    ld b, h                                       ; $75d1: $44
    add e                                         ; $75d2: $83
    pop hl                                        ; $75d3: $e1
    ld a, [bc]                                    ; $75d4: $0a
    add b                                         ; $75d5: $80
    add b                                         ; $75d6: $80
    ld b, $05                                     ; $75d7: $06 $05
    ld h, b                                       ; $75d9: $60
    ld c, e                                       ; $75da: $4b
    dec hl                                        ; $75db: $2b
    pop bc                                        ; $75dc: $c1
    ld b, c                                       ; $75dd: $41
    rst $38                                       ; $75de: $ff
    and c                                         ; $75df: $a1
    call nz, $8eff                                ; $75e0: $c4 $ff $8e
    ld b, $cc                                     ; $75e3: $06 $cc
    ld hl, $4904                                  ; $75e5: $21 $04 $49
    ld b, b                                       ; $75e8: $40
    add $41                                       ; $75e9: $c6 $41
    ld c, e                                       ; $75eb: $4b
    ret nz                                        ; $75ec: $c0

    ret nz                                        ; $75ed: $c0

    add b                                         ; $75ee: $80
    cp e                                          ; $75ef: $bb
    inc b                                         ; $75f0: $04
    ld c, d                                       ; $75f1: $4a
    nop                                           ; $75f2: $00
    add e                                         ; $75f3: $83
    jp nz, Jump_000_22a0                          ; $75f4: $c2 $a0 $22

    ld c, e                                       ; $75f7: $4b
    ld b, b                                       ; $75f8: $40
    ld c, e                                       ; $75f9: $4b
    ld b, [hl]                                    ; $75fa: $46
    ld b, b                                       ; $75fb: $40
    ld sp, hl                                     ; $75fc: $f9
    pop bc                                        ; $75fd: $c1
    nop                                           ; $75fe: $00
    and b                                         ; $75ff: $a0
    dec l                                         ; $7600: $2d
    ld [$fe23], sp                                ; $7601: $08 $23 $fe
    jp nc, $8c8e                                  ; $7604: $d2 $8e $8c

    db $10                                        ; $7607: $10
    dec l                                         ; $7608: $2d
    ld a, [hl+]                                   ; $7609: $2a
    ld a, [bc]                                    ; $760a: $0a
    add c                                         ; $760b: $81
    db $e3                                        ; $760c: $e3
    ld c, b                                       ; $760d: $48
    ld b, d                                       ; $760e: $42
    ld a, c                                       ; $760f: $79
    ld b, b                                       ; $7610: $40
    ld c, l                                       ; $7611: $4d
    db $10                                        ; $7612: $10
    ld b, $62                                     ; $7613: $06 $62
    rst $00                                       ; $7615: $c7
    ld [bc], a                                    ; $7616: $02
    ld b, h                                       ; $7617: $44
    ld a, [hl]                                    ; $7618: $7e
    ret nz                                        ; $7619: $c0

    ld bc, $cc6b                                  ; $761a: $01 $6b $cc
    inc hl                                        ; $761d: $23
    add e                                         ; $761e: $83
    ret nz                                        ; $761f: $c0

    ld b, $21                                     ; $7620: $06 $21
    nop                                           ; $7622: $00
    ld b, b                                       ; $7623: $40
    pop bc                                        ; $7624: $c1
    add [hl]                                      ; $7625: $86
    ld b, e                                       ; $7626: $43

jr_069_7627:
    ret nz                                        ; $7627: $c0

    rst $38                                       ; $7628: $ff
    adc d                                         ; $7629: $8a
    inc bc                                        ; $762a: $03
    jp $c765                                      ; $762b: $c3 $65 $c7


    ld [bc], a                                    ; $762e: $02
    ld b, b                                       ; $762f: $40
    jp nz, $9ffe                                  ; $7630: $c2 $fe $9f

    inc c                                         ; $7633: $0c
    nop                                           ; $7634: $00
    adc e                                         ; $7635: $8b
    jp nz, Jump_000_0d67                          ; $7636: $c2 $67 $0d

    dec c                                         ; $7639: $0d
    ccf                                           ; $763a: $3f
    jr nz, jr_069_75c4                            ; $763b: $20 $87

    jr nz, jr_069_7643                            ; $763d: $20 $04

    ld d, e                                       ; $763f: $53
    nop                                           ; $7640: $00
    sub h                                         ; $7641: $94
    adc b                                         ; $7642: $88

jr_069_7643:
    push bc                                       ; $7643: $c5
    ld b, h                                       ; $7644: $44
    add c                                         ; $7645: $81
    add b                                         ; $7646: $80
    nop                                           ; $7647: $00
    add d                                         ; $7648: $82
    ld c, e                                       ; $7649: $4b
    ld b, l                                       ; $764a: $45
    nop                                           ; $764b: $00
    ld c, b                                       ; $764c: $48
    rst $38                                       ; $764d: $ff
    nop                                           ; $764e: $00
    add a                                         ; $764f: $87
    dec l                                         ; $7650: $2d
    inc c                                         ; $7651: $0c
    jp nz, $8821                                  ; $7652: $c2 $21 $88

    inc b                                         ; $7655: $04
    dec c                                         ; $7656: $0d
    ld c, e                                       ; $7657: $4b
    cp $e1                                        ; $7658: $fe $e1
    ld a, $61                                     ; $765a: $3e $61
    nop                                           ; $765c: $00
    rst $38                                       ; $765d: $ff
    add b                                         ; $765e: $80
    and h                                         ; $765f: $a4
    inc bc                                        ; $7660: $03
    ld c, e                                       ; $7661: $4b
    dec l                                         ; $7662: $2d
    ld b, e                                       ; $7663: $43
    add c                                         ; $7664: $81
    cp a                                          ; $7665: $bf
    db $e4                                        ; $7666: $e4
    ld a, a                                       ; $7667: $7f
    nop                                           ; $7668: $00
    cp [hl]                                       ; $7669: $be
    ldh [$7e], a                                  ; $766a: $e0 $7e
    jp $df00                                      ; $766c: $c3 $00 $df


    ld [hl+], a                                   ; $766f: $22
    nop                                           ; $7670: $00
    ld b, d                                       ; $7671: $42
    dec l                                         ; $7672: $2d
    rst $00                                       ; $7673: $c7
    add c                                         ; $7674: $81
    rst $38                                       ; $7675: $ff
    and $bf                                       ; $7676: $e6 $bf
    pop hl                                        ; $7678: $e1
    ld c, e                                       ; $7679: $4b
    ld a, $e0                                     ; $767a: $3e $e0
    ld h, [hl]                                    ; $767c: $66
    inc hl                                        ; $767d: $23
    jr nz, jr_069_7682                            ; $767e: $20 $02

    ld a, [hl-]                                   ; $7680: $3a
    add b                                         ; $7681: $80

jr_069_7682:
    add $93                                       ; $7682: $c6 $93
    nop                                           ; $7684: $00
    cp a                                          ; $7685: $bf
    rst $20                                       ; $7686: $e7
    ret nz                                        ; $7687: $c0

    ld [c], a                                     ; $7688: $e2
    ld c, e                                       ; $7689: $4b
    db $fc                                        ; $768a: $fc
    ld h, e                                       ; $768b: $63
    db $fc                                        ; $768c: $fc
    cp l                                          ; $768d: $bd
    stop                                          ; $768e: $10 $00
    ld b, e                                       ; $7690: $43
    add l                                         ; $7691: $85
    and b                                         ; $7692: $a0
    ret nz                                        ; $7693: $c0

    add sp, -$08                                  ; $7694: $e8 $f8
    add b                                         ; $7696: $80
    dec c                                         ; $7697: $0d
    ld a, a                                       ; $7698: $7f
    ld [c], a                                     ; $7699: $e2
    db $fc                                        ; $769a: $fc
    cp a                                          ; $769b: $bf
    cp h                                          ; $769c: $bc
    and h                                         ; $769d: $a4
    jr c, jr_069_7627                             ; $769e: $38 $87

    add c                                         ; $76a0: $81
    ld a, $e7                                     ; $76a1: $3e $e7
    ret nz                                        ; $76a3: $c0

    pop hl                                        ; $76a4: $e1
    inc c                                         ; $76a5: $0c
    inc c                                         ; $76a6: $0c
    inc l                                         ; $76a7: $2c
    ld a, h                                       ; $76a8: $7c
    sub $00                                       ; $76a9: $d6 $00
    ld c, a                                       ; $76ab: $4f
    ld l, h                                       ; $76ac: $6c
    dec b                                         ; $76ad: $05
    and b                                         ; $76ae: $a0
    rst $38                                       ; $76af: $ff
    ret                                           ; $76b0: $c9


    ld c, e                                       ; $76b1: $4b
    inc c                                         ; $76b2: $0c
    rst $38                                       ; $76b3: $ff
    ldh [$2c], a                                  ; $76b4: $e0 $2c
    inc l                                         ; $76b6: $2c
    ld a, d                                       ; $76b7: $7a
    ld b, e                                       ; $76b8: $43
    ld [hl], b                                    ; $76b9: $70
    ld [hl], l                                    ; $76ba: $75
    ld [hl+], a                                   ; $76bb: $22
    nop                                           ; $76bc: $00
    ld e, l                                       ; $76bd: $5d
    add [hl]                                      ; $76be: $86
    add b                                         ; $76bf: $80
    rst $38                                       ; $76c0: $ff
    rst $00                                       ; $76c1: $c7
    dec hl                                        ; $76c2: $2b
    ld c, e                                       ; $76c3: $4b
    ld c, h                                       ; $76c4: $4c
    rst $38                                       ; $76c5: $ff
    ldh [$93], a                                  ; $76c6: $e0 $93
    ld l, h                                       ; $76c8: $6c
    ld l, h                                       ; $76c9: $6c
    ld a, d                                       ; $76ca: $7a
    inc hl                                        ; $76cb: $23
    nop                                           ; $76cc: $00
    rst $38                                       ; $76cd: $ff
    ld c, l                                       ; $76ce: $4d
    db $10                                        ; $76cf: $10
    ld [c], a                                     ; $76d0: $e2
    cp a                                          ; $76d1: $bf
    jp z, $0f4c                                   ; $76d2: $ca $4c $0f

    dec c                                         ; $76d5: $0d
    ld c, h                                       ; $76d6: $4c
    ld l, h                                       ; $76d7: $6c
    ld c, e                                       ; $76d8: $4b
    ld b, b                                       ; $76d9: $40
    inc de                                        ; $76da: $13
    add b                                         ; $76db: $80
    sub c                                         ; $76dc: $91
    ret nz                                        ; $76dd: $c0

    ld [c], a                                     ; $76de: $e2
    ld b, e                                       ; $76df: $43
    ld h, b                                       ; $76e0: $60
    inc b                                         ; $76e1: $04
    ret nz                                        ; $76e2: $c0

    inc b                                         ; $76e3: $04
    cp $a2                                        ; $76e4: $fe $a2
    ld c, e                                       ; $76e6: $4b
    cp h                                          ; $76e7: $bc
    and d                                         ; $76e8: $a2
    nop                                           ; $76e9: $00
    call c, Call_069_4300                         ; $76ea: $dc $00 $43
    ld a, a                                       ; $76ed: $7f
    ldh [$85], a                                  ; $76ee: $e0 $85
    ld h, c                                       ; $76f0: $61
    inc b                                         ; $76f1: $04
    ld a, d                                       ; $76f2: $7a
    add d                                         ; $76f3: $82
    ccf                                           ; $76f4: $3f
    rst $00                                       ; $76f5: $c7
    ld c, e                                       ; $76f6: $4b
    rst $20                                       ; $76f7: $e7
    and b                                         ; $76f8: $a0
    ld h, d                                       ; $76f9: $62
    ld [bc], a                                    ; $76fa: $02
    nop                                           ; $76fb: $00
    rst $18                                       ; $76fc: $df
    ld b, a                                       ; $76fd: $47
    ld h, c                                       ; $76fe: $61
    ld a, l                                       ; $76ff: $7d
    ld [c], a                                     ; $7700: $e2
    add b                                         ; $7701: $80
    cp $a8                                        ; $7702: $fe $a8
    ld l, e                                       ; $7704: $6b
    pop bc                                        ; $7705: $c1
    ld a, d                                       ; $7706: $7a
    or a                                          ; $7707: $b7
    nop                                           ; $7708: $00
    ld l, d                                       ; $7709: $6a
    ret nz                                        ; $770a: $c0

    push hl                                       ; $770b: $e5
    inc a                                         ; $770c: $3c
    rst $20                                       ; $770d: $e7
    ret nz                                        ; $770e: $c0

    db $e4                                        ; $770f: $e4
    ld c, e                                       ; $7710: $4b
    nop                                           ; $7711: $00
    halt                                          ; $7712: $76
    ld [hl+], a                                   ; $7713: $22
    nop                                           ; $7714: $00
    rst $18                                       ; $7715: $df
    rst $00                                       ; $7716: $c7
    ld b, c                                       ; $7717: $41
    adc c                                         ; $7718: $89
    and e                                         ; $7719: $a3
    or [hl]                                       ; $771a: $b6
    ld h, d                                       ; $771b: $62
    ld a, $a3                                     ; $771c: $3e $a3
    ld sp, hl                                     ; $771e: $f9
    add c                                         ; $771f: $81
    ld hl, sp+$32                                 ; $7720: $f8 $32
    sub b                                         ; $7722: $90
    nop                                           ; $7723: $00
    ld c, [hl]                                    ; $7724: $4e
    cp a                                          ; $7725: $bf
    ret nz                                        ; $7726: $c0

    ld c, l                                       ; $7727: $4d
    and d                                         ; $7728: $a2
    cp [hl]                                       ; $7729: $be
    ld b, e                                       ; $772a: $43
    ld c, e                                       ; $772b: $4b
    ld a, d                                       ; $772c: $7a
    nop                                           ; $772d: $00
    or c                                          ; $772e: $b1
    and b                                         ; $772f: $a0
    dec hl                                        ; $7730: $2b
    ld d, e                                       ; $7731: $53
    dec bc                                        ; $7732: $0b
    dec hl                                        ; $7733: $2b
    ret nz                                        ; $7734: $c0

    ld [c], a                                     ; $7735: $e2
    nop                                           ; $7736: $00
    rst $18                                       ; $7737: $df
    dec c                                         ; $7738: $0d
    db $dd                                        ; $7739: $dd
    ldh [$0d], a                                  ; $773a: $e0 $0d
    cp l                                          ; $773c: $bd
    pop hl                                        ; $773d: $e1
    ld b, b                                       ; $773e: $40
    ld b, h                                       ; $773f: $44
    add b                                         ; $7740: $80
    rst $30                                       ; $7741: $f7
    and d                                         ; $7742: $a2
    ld hl, sp+$21                                 ; $7743: $f8 $21
    cp b                                          ; $7745: $b8
    add e                                         ; $7746: $83
    ld hl, sp+$3e                                 ; $7747: $f8 $3e
    sbc [hl]                                      ; $7749: $9e
    and h                                         ; $774a: $a4
    dec c                                         ; $774b: $0d
    ld a, h                                       ; $774c: $7c
    db $e3                                        ; $774d: $e3
    ld [$e20c], sp                                ; $774e: $08 $0c $e2
    add e                                         ; $7751: $83
    db $e3                                        ; $7752: $e3
    ld [hl], a                                    ; $7753: $77
    add e                                         ; $7754: $83
    ld l, l                                       ; $7755: $6d
    nop                                           ; $7756: $00
    db $fd                                        ; $7757: $fd
    inc e                                         ; $7758: $1c
    inc hl                                        ; $7759: $23
    ld d, b                                       ; $775a: $50
    inc bc                                        ; $775b: $03
    ld a, [hl-]                                   ; $775c: $3a
    db $e4                                        ; $775d: $e4
    ld [bc], a                                    ; $775e: $02
    db $f4                                        ; $775f: $f4
    add h                                         ; $7760: $84
    dec l                                         ; $7761: $2d

jr_069_7762:
    or e                                          ; $7762: $b3
    ld h, c                                       ; $7763: $61
    ld a, b                                       ; $7764: $78
    jr nc, @+$2c                                  ; $7765: $30 $2a

    dec l                                         ; $7767: $2d
    db $fc                                        ; $7768: $fc
    and e                                         ; $7769: $a3
    ld hl, sp+$02                                 ; $776a: $f8 $02
    dec sp                                        ; $776c: $3b
    ld [c], a                                     ; $776d: $e2
    ld [$8085], sp                                ; $776e: $08 $85 $80
    ld [hl-], a                                   ; $7771: $32
    ld h, c                                       ; $7772: $61

jr_069_7773:
    ld a, h                                       ; $7773: $7c
    ld [c], a                                     ; $7774: $e2
    dec c                                         ; $7775: $0d
    nop                                           ; $7776: $00
    ld [c], a                                     ; $7777: $e2
    nop                                           ; $7778: $00
    ld e, l                                       ; $7779: $5d
    ld [hl], h                                    ; $777a: $74
    rst $20                                       ; $777b: $e7
    or a                                          ; $777c: $b7
    pop bc                                        ; $777d: $c1
    dec [hl]                                      ; $777e: $35
    dec c                                         ; $777f: $0d
    or l                                          ; $7780: $b5
    add d                                         ; $7781: $82
    dec l                                         ; $7782: $2d
    cp a                                          ; $7783: $bf
    ret nz                                        ; $7784: $c0

    dec hl                                        ; $7785: $2b
    ld l, e                                       ; $7786: $6b
    cp $9f                                        ; $7787: $fe $9f
    db $fc                                        ; $7789: $fc
    ld h, a                                       ; $778a: $67

jr_069_778b:
    nop                                           ; $778b: $00
    halt                                          ; $778c: $76
    add d                                         ; $778d: $82
    halt                                          ; $778e: $76
    jp nz, $c33c                                  ; $778f: $c2 $3c $c3

    pop bc                                        ; $7792: $c1
    ldh [rSB], a                                  ; $7793: $e0 $01
    pop bc                                        ; $7795: $c1
    nop                                           ; $7796: $00
    rst $18                                       ; $7797: $df
    jr nz, jr_069_7762                            ; $7798: $20 $c8

    halt                                          ; $779a: $76
    ret nz                                        ; $779b: $c0

    nop                                           ; $779c: $00
    cp a                                          ; $779d: $bf
    push hl                                       ; $779e: $e5
    pop bc                                        ; $779f: $c1
    pop hl                                        ; $77a0: $e1
    cp c                                          ; $77a1: $b9
    nop                                           ; $77a2: $00
    ld a, h                                       ; $77a3: $7c
    ld [hl], c                                    ; $77a4: $71
    inc l                                         ; $77a5: $2c
    ld d, e                                       ; $77a6: $53
    jp c, $78a1                                   ; $77a7: $da $a1 $78

    pop bc                                        ; $77aa: $c1
    rst $38                                       ; $77ab: $ff
    jr nz, jr_069_77af                            ; $77ac: $20 $01

    dec l                                         ; $77ae: $2d

jr_069_77af:
    ld [hl], b                                    ; $77af: $70
    jr nz, jr_069_7773                            ; $77b0: $20 $c1

    ld [c], a                                     ; $77b2: $e2
    nop                                           ; $77b3: $00
    sbc a                                         ; $77b4: $9f
    jr nc, jr_069_77e8                            ; $77b5: $30 $31

    cp h                                          ; $77b7: $bc
    ld [c], a                                     ; $77b8: $e2
    cp b                                          ; $77b9: $b8
    jr nz, jr_069_77be                            ; $77ba: $20 $02

    rst $38                                       ; $77bc: $ff
    nop                                           ; $77bd: $00

jr_069_77be:
    jr c, jr_069_778b                             ; $77be: $38 $cb

    halt                                          ; $77c0: $76
    push bc                                       ; $77c1: $c5
    jp nz, $ece2                                  ; $77c2: $c2 $e2 $ec

    and d                                         ; $77c5: $a2
    nop                                           ; $77c6: $00
    sbc a                                         ; $77c7: $9f
    xor d                                         ; $77c8: $aa
    jr c, jr_069_77cd                             ; $77c9: $38 $02

    ld [hl], h                                    ; $77cb: $74
    nop                                           ; $77cc: $00

jr_069_77cd:
    nop                                           ; $77cd: $00
    nop                                           ; $77ce: $00
    rst $28                                       ; $77cf: $ef
    and b                                         ; $77d0: $a0
    call c, $dedd                                 ; $77d1: $dc $dd $de
    db $fc                                        ; $77d4: $fc
    ld a, [c]                                     ; $77d5: $f2
    and b                                         ; $77d6: $a0
    ret c                                         ; $77d7: $d8

    reti                                          ; $77d8: $d9


    rst $08                                       ; $77d9: $cf
    and b                                         ; $77da: $a0
    and b                                         ; $77db: $a0
    jp nc, $fcd3                                  ; $77dc: $d2 $d3 $fc

    db $eb                                        ; $77df: $eb
    db $ec                                        ; $77e0: $ec
    pop hl                                        ; $77e1: $e1
    sub $d7                                       ; $77e2: $d6 $d7
    sbc $cc                                       ; $77e4: $de $cc
    jp hl                                         ; $77e6: $e9


    rst $18                                       ; $77e7: $df

jr_069_77e8:
    ldh [$e1], a                                  ; $77e8: $e0 $e1
    ld [c], a                                     ; $77ea: $e2
    db $fc                                        ; $77eb: $fc
    pop af                                        ; $77ec: $f1
    sub $d7                                       ; $77ed: $d6 $d7
    rst $38                                       ; $77ef: $ff
    jp c, $d0db                                   ; $77f0: $da $db $d0

    pop de                                        ; $77f3: $d1
    call nc, $a0d5                                ; $77f4: $d4 $d5 $a0
    and b                                         ; $77f7: $a0
    cp $fc                                        ; $77f8: $fe $fc
    rst $20                                       ; $77fa: $e7
    ret nc                                        ; $77fb: $d0

    pop de                                        ; $77fc: $d1
    jp c, $d6db                                   ; $77fd: $da $db $d6

    rst $10                                       ; $7800: $d7
    ret c                                         ; $7801: $d8

    dec a                                         ; $7802: $3d
    reti                                          ; $7803: $d9


    call z, $e3e9                                 ; $7804: $cc $e9 $e3
    db $e4                                        ; $7807: $e4
    push hl                                       ; $7808: $e5
    and $fc                                       ; $7809: $e6 $fc
    pop af                                        ; $780b: $f1
    add d                                         ; $780c: $82
    push hl                                       ; $780d: $e5
    rst $38                                       ; $780e: $ff
    and b                                         ; $780f: $a0
    and b                                         ; $7810: $a0
    sbc a                                         ; $7811: $9f
    sbc l                                         ; $7812: $9d
    and d                                         ; $7813: $a2
    sbc l                                         ; $7814: $9d
    sbc l                                         ; $7815: $9d
    sbc l                                         ; $7816: $9d
    reti                                          ; $7817: $d9


    sbc a                                         ; $7818: $9f
    push af                                       ; $7819: $f5
    ldh [$7e], a                                  ; $781a: $e0 $7e
    db $e3                                        ; $781c: $e3
    jp c, $ccdb                                   ; $781d: $da $db $cc

    jp hl                                         ; $7820: $e9


    rst $20                                       ; $7821: $e7
    add sp, -$0d                                  ; $7822: $e8 $f3
    jp hl                                         ; $7824: $e9


    ld [$f1fc], a                                 ; $7825: $ea $fc $f1
    add d                                         ; $7828: $82
    push hl                                       ; $7829: $e5
    sbc a                                         ; $782a: $9f
    and d                                         ; $782b: $a2
    sbc h                                         ; $782c: $9c
    ld b, [hl]                                    ; $782d: $46
    ld [hl-], a                                   ; $782e: $32
    rst $38                                       ; $782f: $ff
    pop hl                                        ; $7830: $e1
    sbc h                                         ; $7831: $9c
    cp a                                          ; $7832: $bf
    ldh [$7e], a                                  ; $7833: $e0 $7e
    db $e3                                        ; $7835: $e3
    and b                                         ; $7836: $a0
    and b                                         ; $7837: $a0
    call z, Call_000_06e9                         ; $7838: $cc $e9 $06
    pop af                                        ; $783b: $f1
    db $fc                                        ; $783c: $fc
    cp $e3                                        ; $783d: $fe $e3
    add d                                         ; $783f: $82
    ld [c], a                                     ; $7840: $e2
    sbc a                                         ; $7841: $9f
    sbc h                                         ; $7842: $9c
    ld b, l                                       ; $7843: $45
    ld d, b                                       ; $7844: $50
    ld d, b                                       ; $7845: $50
    ld b, e                                       ; $7846: $43
    ld b, c                                       ; $7847: $41
    ld b, l                                       ; $7848: $45
    cp a                                          ; $7849: $bf
    db $e4                                        ; $784a: $e4
    ld l, [hl]                                    ; $784b: $6e
    db $e3                                        ; $784c: $e3
    adc $ca                                       ; $784d: $ce $ca
    ld [bc], a                                    ; $784f: $02
    rst $28                                       ; $7850: $ef
    sbc $c2                                       ; $7851: $de $c2
    and b                                         ; $7853: $a0
    inc b                                         ; $7854: $04
    pop hl                                        ; $7855: $e1
    rst $38                                       ; $7856: $ff
    sbc a                                         ; $7857: $9f
    sbc l                                         ; $7858: $9d
    sbc l                                         ; $7859: $9d
    sbc h                                         ; $785a: $9c
    ld b, l                                       ; $785b: $45
    ld b, a                                       ; $785c: $47
    ld e, l                                       ; $785d: $5d
    ld e, l                                       ; $785e: $5d
    ld a, a                                       ; $785f: $7f
    ld c, h                                       ; $7860: $4c
    ld d, d                                       ; $7861: $52
    ld b, l                                       ; $7862: $45
    xor [hl]                                      ; $7863: $ae
    ld b, [hl]                                    ; $7864: $46
    ld b, [hl]                                    ; $7865: $46
    and c                                         ; $7866: $a1
    inc sp                                        ; $7867: $33
    ldh [$8f], a                                  ; $7868: $e0 $8f
    call nc, $d6d5                                ; $786a: $d4 $d5 $d6
    rst $10                                       ; $786d: $d7
    adc $cb                                       ; $786e: $ce $cb
    ld [bc], a                                    ; $7870: $02
    rst $28                                       ; $7871: $ef
    add [hl]                                      ; $7872: $86
    add $9f                                       ; $7873: $c6 $9f
    cp $46                                        ; $7875: $fe $46
    ldh [rLYC], a                                 ; $7877: $e0 $45
    ld b, a                                       ; $7879: $47
    ld h, b                                       ; $787a: $60
    ld d, h                                       ; $787b: $54
    ld e, c                                       ; $787c: $59
    ld e, c                                       ; $787d: $59
    ld d, e                                       ; $787e: $53
    inc bc                                        ; $787f: $03
    ld b, l                                       ; $7880: $45
    xor a                                         ; $7881: $af
    ld a, a                                       ; $7882: $7f
    db $e4                                        ; $7883: $e4
    ld l, d                                       ; $7884: $6a
    ret nz                                        ; $7885: $c0

    adc $cb                                       ; $7886: $ce $cb
    ld [bc], a                                    ; $7888: $02
    rst $28                                       ; $7889: $ef
    add [hl]                                      ; $788a: $86
    push bc                                       ; $788b: $c5
    pop bc                                        ; $788c: $c1
    pop hl                                        ; $788d: $e1
    rst $38                                       ; $788e: $ff
    ld b, [hl]                                    ; $788f: $46
    ld b, l                                       ; $7890: $45
    ld d, e                                       ; $7891: $53
    ld d, e                                       ; $7892: $53
    ld a, [hl+]                                   ; $7893: $2a
    ld h, $20                                     ; $7894: $26 $20
    ld h, $e1                                     ; $7896: $26 $e1
    ld a, [hl+]                                   ; $7898: $2a
    ld a, $e4                                     ; $7899: $3e $e4
    ld a, [hl]                                    ; $789b: $7e
    pop bc                                        ; $789c: $c1
    adc $cb                                       ; $789d: $ce $cb
    ld [$a1d7], sp                                ; $789f: $08 $d7 $a1
    ld b, [hl]                                    ; $78a2: $46
    ld b, [hl]                                    ; $78a3: $46
    cp $4a                                        ; $78a4: $fe $4a
    ldh [rLYC], a                                 ; $78a6: $e0 $45
    scf                                           ; $78a8: $37
    daa                                           ; $78a9: $27
    jr nz, jr_069_78cc                            ; $78aa: $20 $20

    jr nz, @+$32                                  ; $78ac: $20 $30

    add l                                         ; $78ae: $85
    ld b, h                                       ; $78af: $44
    ld a, $e1                                     ; $78b0: $3e $e1
    sbc [hl]                                      ; $78b2: $9e
    ldh a, [$a2]                                  ; $78b3: $f0 $a2
    nop                                           ; $78b5: $00
    db $db                                        ; $78b6: $db
    ld [$42c6], sp                                ; $78b7: $08 $c6 $42
    pop hl                                        ; $78ba: $e1
    xor a                                         ; $78bb: $af
    rst $28                                       ; $78bc: $ef
    ld b, [hl]                                    ; $78bd: $46
    ld b, l                                       ; $78be: $45
    ld [hl], $35                                  ; $78bf: $36 $35
    ret nz                                        ; $78c1: $c0

    ldh [rNR52], a                                ; $78c2: $e0 $26
    ld a, [hl+]                                   ; $78c4: $2a
    ld b, a                                       ; $78c5: $47
    ld b, l                                       ; $78c6: $45
    ld d, l                                       ; $78c7: $55
    ld a, $e0                                     ; $78c8: $3e $e0
    sbc [hl]                                      ; $78ca: $9e
    nop                                           ; $78cb: $00

jr_069_78cc:
    ld [c], a                                     ; $78cc: $e2
    nop                                           ; $78cd: $00
    db $db                                        ; $78ce: $db
    inc b                                         ; $78cf: $04
    push hl                                       ; $78d0: $e5
    sbc l                                         ; $78d1: $9d
    ld c, c                                       ; $78d2: $49
    jp Jump_000_39ff                              ; $78d3: $c3 $ff $39


    dec [hl]                                      ; $78d6: $35
    dec [hl]                                      ; $78d7: $35
    ld hl, $482a                                  ; $78d8: $21 $2a $48
    ld c, [hl]                                    ; $78db: $4e
    ld c, c                                       ; $78dc: $49
    jp Jump_069_5560                              ; $78dd: $c3 $60 $55


    ld a, [hl]                                    ; $78e0: $7e
    call nz, $dd00                                ; $78e1: $c4 $00 $dd
    inc b                                         ; $78e4: $04
    rst $20                                       ; $78e5: $e7
    adc l                                         ; $78e6: $8d
    ret nz                                        ; $78e7: $c0

    ld b, [hl]                                    ; $78e8: $46
    ld b, l                                       ; $78e9: $45
    rst $38                                       ; $78ea: $ff
    ld a, [hl-]                                   ; $78eb: $3a
    dec [hl]                                      ; $78ec: $35
    dec [hl]                                      ; $78ed: $35
    ld a, [hl-]                                   ; $78ee: $3a
    ld d, c                                       ; $78ef: $51
    ld e, a                                       ; $78f0: $5f
    ld h, c                                       ; $78f1: $61
    ld h, c                                       ; $78f2: $61
    ld b, l                                       ; $78f3: $45
    ld d, d                                       ; $78f4: $52
    dec a                                         ; $78f5: $3d
    ret nz                                        ; $78f6: $c0

    sbc [hl]                                      ; $78f7: $9e
    ld l, d                                       ; $78f8: $6a
    pop bc                                        ; $78f9: $c1
    nop                                           ; $78fa: $00
    call c, $a49a                                 ; $78fb: $dc $9a $a4
    sbc [hl]                                      ; $78fe: $9e
    call z, $fea0                                 ; $78ff: $cc $a0 $fe
    ld b, e                                       ; $7902: $43
    ldh [$37], a                                  ; $7903: $e0 $37
    jr c, jr_069_793c                             ; $7905: $38 $35

    dec [hl]                                      ; $7907: $35
    dec [hl]                                      ; $7908: $35
    add hl, sp                                    ; $7909: $39
    ld b, l                                       ; $790a: $45
    add c                                         ; $790b: $81
    ld d, e                                       ; $790c: $53
    ld a, a                                       ; $790d: $7f
    ret nz                                        ; $790e: $c0

    ld bc, $00e2                                  ; $790f: $01 $e2 $00
    sbc $08                                       ; $7912: $de $08
    jp $c246                                      ; $7914: $c3 $46 $c2


    ld b, h                                       ; $7917: $44
    ret nz                                        ; $7918: $c0

    ld [hl], $ae                                  ; $7919: $36 $ae
    jp nz, Jump_000_35e0                          ; $791b: $c2 $e0 $35

    ld [hl], $45                                  ; $791e: $36 $45
    cp c                                          ; $7920: $b9
    ret nz                                        ; $7921: $c0

    xor [hl]                                      ; $7922: $ae
    push af                                       ; $7923: $f5
    ret nz                                        ; $7924: $c0

    ld b, [hl]                                    ; $7925: $46
    ld b, c                                       ; $7926: $41
    and c                                         ; $7927: $a1
    ldh a, [$81]                                  ; $7928: $f0 $81
    nop                                           ; $792a: $00
    db $db                                        ; $792b: $db
    adc [hl]                                      ; $792c: $8e
    add e                                         ; $792d: $83
    ld b, d                                       ; $792e: $42
    db $e3                                        ; $792f: $e3
    pop bc                                        ; $7930: $c1
    rst $20                                       ; $7931: $e7
    xor a                                         ; $7932: $af
    jp nz, $58e1                                  ; $7933: $c2 $e1 $58

    ld a, $a0                                     ; $7936: $3e $a0
    ld a, [hl]                                    ; $7938: $7e
    add e                                         ; $7939: $83
    nop                                           ; $793a: $00
    reti                                          ; $793b: $d9


jr_069_793c:
    sub $d7                                       ; $793c: $d6 $d7
    add d                                         ; $793e: $82
    push hl                                       ; $793f: $e5
    xor a                                         ; $7940: $af
    push bc                                       ; $7941: $c5
    pop bc                                        ; $7942: $c1
    ld [bc], a                                    ; $7943: $02
    ld b, d                                       ; $7944: $42
    ldh [rLCDC], a                                ; $7945: $e0 $40
    pop bc                                        ; $7947: $c1
    pop hl                                        ; $7948: $e1
    rst $38                                       ; $7949: $ff
    add h                                         ; $794a: $84
    ld [hl], d                                    ; $794b: $72
    add c                                         ; $794c: $81
    nop                                           ; $794d: $00
    jp c, $820c                                   ; $794e: $da $0c $82

    rlca                                          ; $7951: $07
    pop bc                                        ; $7952: $c1
    call nc, $c4c5                                ; $7953: $d4 $c5 $c4
    ld [bc], a                                    ; $7956: $02
    ldh [rSCY], a                                 ; $7957: $e0 $42
    pop bc                                        ; $7959: $c1
    pop hl                                        ; $795a: $e1
    sbc h                                         ; $795b: $9c
    ld a, a                                       ; $795c: $7f
    add d                                         ; $795d: $82
    ret nc                                        ; $795e: $d0

    pop de                                        ; $795f: $d1
    ret nz                                        ; $7960: $c0

    inc b                                         ; $7961: $04
    adc h                                         ; $7962: $8c
    nop                                           ; $7963: $00
    adc l                                         ; $7964: $8d
    inc c                                         ; $7965: $0c
    add e                                         ; $7966: $83
    jp $85c0                                      ; $7967: $c3 $c0 $85


    pop bc                                        ; $796a: $c1
    add c                                         ; $796b: $81
    db $e3                                        ; $796c: $e3
    inc a                                         ; $796d: $3c
    ld b, h                                       ; $796e: $44
    ret nz                                        ; $796f: $c0

    ld b, [hl]                                    ; $7970: $46
    and h                                         ; $7971: $a4
    jp $b3e0                                      ; $7972: $c3 $e0 $b3


    ld h, b                                       ; $7975: $60
    inc b                                         ; $7976: $04
    adc e                                         ; $7977: $8b
    nop                                           ; $7978: $00
    adc l                                         ; $7979: $8d
    adc [hl]                                      ; $797a: $8e
    ld h, h                                       ; $797b: $64
    sbc [hl]                                      ; $797c: $9e
    ld b, [hl]                                    ; $797d: $46
    scf                                           ; $797e: $37
    xor a                                         ; $797f: $af
    ld b, l                                       ; $7980: $45
    ld b, l                                       ; $7981: $45
    add c                                         ; $7982: $81
    db $e4                                        ; $7983: $e4
    dec [hl]                                      ; $7984: $35
    ld b, d                                       ; $7985: $42
    ld b, d                                       ; $7986: $42
    add b                                         ; $7987: $80
    add $81                                       ; $7988: $c6 $81
    ld b, b                                       ; $798a: $40
    halt                                          ; $798b: $76
    ld h, b                                       ; $798c: $60
    or e                                          ; $798d: $b3
    ld h, b                                       ; $798e: $60
    inc b                                         ; $798f: $04

Call_069_7990:
    adc e                                         ; $7990: $8b
    nop                                           ; $7991: $00
    adc l                                         ; $7992: $8d
    and d                                         ; $7993: $a2
    ld h, c                                       ; $7994: $61
    adc [hl]                                      ; $7995: $8e
    ld h, b                                       ; $7996: $60
    sbc [hl]                                      ; $7997: $9e
    jp z, Jump_000_0180                           ; $7998: $ca $80 $01

    ld d, l                                       ; $799b: $55
    ld [bc], a                                    ; $799c: $02
    db $e3                                        ; $799d: $e3
    add d                                         ; $799e: $82
    ret nz                                        ; $799f: $c0

    ld c, b                                       ; $79a0: $48
    and d                                         ; $79a1: $a2
    halt                                          ; $79a2: $76
    ld h, e                                       ; $79a3: $63
    or d                                          ; $79a4: $b2
    ld h, c                                       ; $79a5: $61
    ret nc                                        ; $79a6: $d0

    ld l, l                                       ; $79a7: $6d
    ld [bc], a                                    ; $79a8: $02
    ld l, e                                       ; $79a9: $6b
    ld a, h                                       ; $79aa: $7c
    inc c                                         ; $79ab: $0c
    ld h, c                                       ; $79ac: $61
    adc c                                         ; $79ad: $89
    add b                                         ; $79ae: $80
    ld b, h                                       ; $79af: $44
    ld c, l                                       ; $79b0: $4d
    ld e, d                                       ; $79b1: $5a
    ld a, $ac                                     ; $79b2: $3e $ac
    ld b, e                                       ; $79b4: $43
    pop bc                                        ; $79b5: $c1
    rra                                           ; $79b6: $1f
    ld a, [hl-]                                   ; $79b7: $3a
    ld b, l                                       ; $79b8: $45
    xor [hl]                                      ; $79b9: $ae
    xor a                                         ; $79ba: $af
    xor [hl]                                      ; $79bb: $ae
    ld [$d6a4], sp                                ; $79bc: $08 $a4 $d6
    ld d, e                                       ; $79bf: $53
    ld [bc], a                                    ; $79c0: $02
    ld l, e                                       ; $79c1: $6b
    db $fc                                        ; $79c2: $fc
    inc c                                         ; $79c3: $0c
    ld h, c                                       ; $79c4: $61
    call nz, $51a0                                ; $79c5: $c4 $a0 $51
    ld e, [hl]                                    ; $79c8: $5e
    ld e, d                                       ; $79c9: $5a
    ld a, $ad                                     ; $79ca: $3e $ad
    dec [hl]                                      ; $79cc: $35
    ld a, [bc]                                    ; $79cd: $0a
    cp [hl]                                       ; $79ce: $be
    ldh [$39], a                                  ; $79cf: $e0 $39
    pop bc                                        ; $79d1: $c1
    ldh [$af], a                                  ; $79d2: $e0 $af
    ld [$d6a4], sp                                ; $79d4: $08 $a4 $d6
    ld d, e                                       ; $79d7: $53
    nop                                           ; $79d8: $00
    rst $08                                       ; $79d9: $cf
    pop bc                                        ; $79da: $c1
    ret nz                                        ; $79db: $c0

    rla                                           ; $79dc: $17
    ld b, h                                       ; $79dd: $44
    ld c, l                                       ; $79de: $4d
    ld d, [hl]                                    ; $79df: $56
    rlca                                          ; $79e0: $07
    and b                                         ; $79e1: $a0
    xor l                                         ; $79e2: $ad
    call nz, $05a0                                ; $79e3: $c4 $a0 $05
    pop bc                                        ; $79e6: $c1
    ld [$b8a4], sp                                ; $79e7: $08 $a4 $b8
    sub $53                                       ; $79ea: $d6 $53
    nop                                           ; $79ec: $00
    rst $08                                       ; $79ed: $cf
    pop bc                                        ; $79ee: $c1
    pop bc                                        ; $79ef: $c1
    ld c, e                                       ; $79f0: $4b
    ld e, b                                       ; $79f1: $58
    ld b, h                                       ; $79f2: $44
    ld b, $a1                                     ; $79f3: $06 $a1
    ld b, l                                       ; $79f5: $45
    ldh [rDMA], a                                 ; $79f6: $e0 $46
    ld h, d                                       ; $79f8: $62
    ld [$d6a4], sp                                ; $79f9: $08 $a4 $d6
    ld d, e                                       ; $79fc: $53
    inc c                                         ; $79fd: $0c
    ld c, a                                       ; $79fe: $4f
    inc b                                         ; $79ff: $04
    and c                                         ; $7a00: $a1
    ld d, l                                       ; $7a01: $55
    ld d, d                                       ; $7a02: $52
    ld b, h                                       ; $7a03: $44
    ld b, $86                                     ; $7a04: $06 $86
    add b                                         ; $7a06: $80
    add hl, sp                                    ; $7a07: $39
    ld b, a                                       ; $7a08: $47
    ld b, [hl]                                    ; $7a09: $46
    ld h, d                                       ; $7a0a: $62
    ld b, a                                       ; $7a0b: $47
    ld h, b                                       ; $7a0c: $60
    ld [$008f], sp                                ; $7a0d: $08 $8f $00
    rst $10                                       ; $7a10: $d7
    pop bc                                        ; $7a11: $c1
    and c                                         ; $7a12: $a1
    rst $28                                       ; $7a13: $ef
    ld b, h                                       ; $7a14: $44
    ld b, a                                       ; $7a15: $47
    ld d, d                                       ; $7a16: $52
    ld b, b                                       ; $7a17: $40
    add h                                         ; $7a18: $84
    and b                                         ; $7a19: $a0
    ld d, d                                       ; $7a1a: $52
    ld h, c                                       ; $7a1b: $61
    ld h, c                                       ; $7a1c: $61
    ld h, b                                       ; $7a1d: $60
    ld [$8680], sp                                ; $7a1e: $08 $80 $86
    and d                                         ; $7a21: $a2
    ld [$004d], sp                                ; $7a22: $08 $4d $00
    rst $10                                       ; $7a25: $d7
    add h                                         ; $7a26: $84
    add c                                         ; $7a27: $81
    ld b, h                                       ; $7a28: $44
    ld c, l                                       ; $7a29: $4d
    ccf                                           ; $7a2a: $3f
    pop hl                                        ; $7a2b: $e1
    rra                                           ; $7a2c: $1f
    ld [hl], $45                                  ; $7a2d: $36 $45
    ld d, d                                       ; $7a2f: $52
    ld h, c                                       ; $7a30: $61
    ld d, [hl]                                    ; $7a31: $56
    add h                                         ; $7a32: $84
    ld b, b                                       ; $7a33: $40
    ld b, h                                       ; $7a34: $44
    ld b, c                                       ; $7a35: $41
    ld [$bc4d], sp                                ; $7a36: $08 $4d $bc
    nop                                           ; $7a39: $00
    rst $10                                       ; $7a3a: $d7
    add c                                         ; $7a3b: $81
    and c                                         ; $7a3c: $a1
    ld d, c                                       ; $7a3d: $51
    ld e, [hl]                                    ; $7a3e: $5e
    ld h, c                                       ; $7a3f: $61
    ld d, d                                       ; $7a40: $52
    push bc                                       ; $7a41: $c5
    ld h, b                                       ; $7a42: $60
    ld [hl], $2f                                  ; $7a43: $36 $2f
    ld b, l                                       ; $7a45: $45
    ld c, e                                       ; $7a46: $4b
    ld h, c                                       ; $7a47: $61
    ld e, h                                       ; $7a48: $5c
    ld a, [hl-]                                   ; $7a49: $3a
    ld h, b                                       ; $7a4a: $60
    sbc [hl]                                      ; $7a4b: $9e
    ld [$004f], sp                                ; $7a4c: $08 $4f $00
    rst $10                                       ; $7a4f: $d7
    db $ec                                        ; $7a50: $ec
    add c                                         ; $7a51: $81
    and b                                         ; $7a52: $a0
    rst $38                                       ; $7a53: $ff
    and b                                         ; $7a54: $a0
    ld h, c                                       ; $7a55: $61
    ld e, b                                       ; $7a56: $58
    ccf                                           ; $7a57: $3f
    ldh [$35], a                                  ; $7a58: $e0 $35
    add hl, sp                                    ; $7a5a: $39
    ld c, a                                       ; $7a5b: $4f
    push hl                                       ; $7a5c: $e5
    ld e, b                                       ; $7a5d: $58
    ld b, l                                       ; $7a5e: $45
    add c                                         ; $7a5f: $81
    sbc [hl]                                      ; $7a60: $9e
    nop                                           ; $7a61: $00
    rst $18                                       ; $7a62: $df
    nop                                           ; $7a63: $00
    ret                                           ; $7a64: $c9


    ld b, l                                       ; $7a65: $45
    ld b, e                                       ; $7a66: $43
    ld d, b                                       ; $7a67: $50
    ld a, e                                       ; $7a68: $7b
    ld d, d                                       ; $7a69: $52
    ld d, a                                       ; $7a6a: $57
    add b                                         ; $7a6b: $80
    pop hl                                        ; $7a6c: $e1
    dec [hl]                                      ; $7a6d: $35
    ld a, $55                                     ; $7a6e: $3e $55
    ld d, d                                       ; $7a70: $52
    ld b, l                                       ; $7a71: $45
    add c                                         ; $7a72: $81
    ld sp, hl                                     ; $7a73: $f9
    sbc [hl]                                      ; $7a74: $9e
    nop                                           ; $7a75: $00
    rst $18                                       ; $7a76: $df
    nop                                           ; $7a77: $00
    ret z                                         ; $7a78: $c8

Call_069_7a79:
Jump_069_7a79:
    ld b, l                                       ; $7a79: $45
    ld b, a                                       ; $7a7a: $47
    ld c, h                                       ; $7a7b: $4c
    ld e, l                                       ; $7a7c: $5d
    ld e, h                                       ; $7a7d: $5c
    dec de                                        ; $7a7e: $1b
    ld b, e                                       ; $7a7f: $43
    ld b, e                                       ; $7a80: $43
    add b                                         ; $7a81: $80
    add c                                         ; $7a82: $81
    add hl, sp                                    ; $7a83: $39
    ld b, l                                       ; $7a84: $45
    add l                                         ; $7a85: $85
    dec h                                         ; $7a86: $25
    nop                                           ; $7a87: $00
    rst $18                                       ; $7a88: $df
    nop                                           ; $7a89: $00
    add $de                                       ; $7a8a: $c6 $de
    ld b, e                                       ; $7a8c: $43
    ldh [rHDMA2], a                               ; $7a8d: $e0 $52
    ld b, l                                       ; $7a8f: $45
    ld [hl], $3b                                  ; $7a90: $36 $3b
    add h                                         ; $7a92: $84
    ld h, d                                       ; $7a93: $62
    ld b, a                                       ; $7a94: $47
    ld d, l                                       ; $7a95: $55
    cp b                                          ; $7a96: $b8
    ld bc, $00e1                                  ; $7a97: $01 $e1 $00
    rst $18                                       ; $7a9a: $df
    nop                                           ; $7a9b: $00
    ret                                           ; $7a9c: $c9


    ld b, l                                       ; $7a9d: $45
    ld c, e                                       ; $7a9e: $4b
    ld d, [hl]                                    ; $7a9f: $56
    ld b, l                                       ; $7aa0: $45
    ld h, d                                       ; $7aa1: $62
    ld a, [hl-]                                   ; $7aa2: $3a
    dec d                                         ; $7aa3: $15
    ccf                                           ; $7aa4: $3f
    add d                                         ; $7aa5: $82
    jr nz, jr_069_7b02                            ; $7aa6: $20 $5a

Jump_069_7aa8:
    add d                                         ; $7aa8: $82
    ld h, b                                       ; $7aa9: $60
    and c                                         ; $7aaa: $a1
    halt                                          ; $7aab: $76
    inc b                                         ; $7aac: $04
    nop                                           ; $7aad: $00
    rst $18                                       ; $7aae: $df
    adc d                                         ; $7aaf: $8a
    ld bc, $9f27                                  ; $7ab0: $01 $27 $9f
    sbc h                                         ; $7ab3: $9c
    ld d, l                                       ; $7ab4: $55
    add d                                         ; $7ab5: $82
    add e                                         ; $7ab6: $83
    pop bc                                        ; $7ab7: $c1
    and b                                         ; $7ab8: $a0
    ld h, b                                       ; $7ab9: $60
    nop                                           ; $7aba: $00
    pop bc                                        ; $7abb: $c1
    add h                                         ; $7abc: $84
    nop                                           ; $7abd: $00
    and $86                                       ; $7abe: $e6 $86
    ld bc, $a0a0                                  ; $7ac0: $01 $a0 $a0
    nop                                           ; $7ac3: $00
    rst $18                                       ; $7ac4: $df
    add [hl]                                      ; $7ac5: $86
    ld [hl+], a                                   ; $7ac6: $22
    and c                                         ; $7ac7: $a1
    ld b, l                                       ; $7ac8: $45
    ld b, l                                       ; $7ac9: $45
    dec b                                         ; $7aca: $05
    ld a, $45                                     ; $7acb: $3e $45
    ld h, d                                       ; $7acd: $62
    ld c, l                                       ; $7ace: $4d
    ld c, b                                       ; $7acf: $48
    ld b, c                                       ; $7ad0: $41
    jp $8641                                      ; $7ad1: $c3 $41 $86


    ld b, h                                       ; $7ad4: $44
    nop                                           ; $7ad5: $00
    rst $18                                       ; $7ad6: $df
    nop                                           ; $7ad7: $00
    add l                                         ; $7ad8: $85
    ld [bc], a                                    ; $7ad9: $02
    ld b, h                                       ; $7ada: $44
    ld h, d                                       ; $7adb: $62
    add hl, sp                                    ; $7adc: $39
    ld a, e                                       ; $7add: $7b
    ret nz                                        ; $7ade: $c0

    ld b, b                                       ; $7adf: $40
    add b                                         ; $7ae0: $80
    ld b, b                                       ; $7ae1: $40
    pop bc                                        ; $7ae2: $c1
    add [hl]                                      ; $7ae3: $86
    inc bc                                        ; $7ae4: $03
    nop                                           ; $7ae5: $00
    rst $18                                       ; $7ae6: $df
    nop                                           ; $7ae7: $00
    add h                                         ; $7ae8: $84
    dec e                                         ; $7ae9: $1d
    ld b, d                                       ; $7aea: $42
    push bc                                       ; $7aeb: $c5
    ld b, d                                       ; $7aec: $42
    ld a, [hl-]                                   ; $7aed: $3a
    ccf                                           ; $7aee: $3f
    ld b, e                                       ; $7aef: $43
    ld bc, $c682                                  ; $7af0: $01 $82 $c6
    ld [hl+], a                                   ; $7af3: $22
    db $e4                                        ; $7af4: $e4
    ld b, h                                       ; $7af5: $44
    inc c                                         ; $7af6: $0c
    nop                                           ; $7af7: $00
    rst $18                                       ; $7af8: $df
    nop                                           ; $7af9: $00
    add c                                         ; $7afa: $81
    ld b, h                                       ; $7afb: $44
    inc a                                         ; $7afc: $3c
    add d                                         ; $7afd: $82
    ld h, l                                       ; $7afe: $65
    ld bc, $c780                                  ; $7aff: $01 $80 $c7

jr_069_7b02:
    nop                                           ; $7b02: $00
    add [hl]                                      ; $7b03: $86
    inc b                                         ; $7b04: $04
    nop                                           ; $7b05: $00
    db $fc                                        ; $7b06: $fc
    or c                                          ; $7b07: $b1
    nop                                           ; $7b08: $00
    sub d                                         ; $7b09: $92
    inc bc                                        ; $7b0a: $03
    ld h, l                                       ; $7b0b: $65
    rst $38                                       ; $7b0c: $ff
    ld h, h                                       ; $7b0d: $64
    ld a, [hl]                                    ; $7b0e: $7e
    ld h, l                                       ; $7b0f: $65
    db $fc                                        ; $7b10: $fc
    or c                                          ; $7b11: $b1
    nop                                           ; $7b12: $00
    sub d                                         ; $7b13: $92
    inc b                                         ; $7b14: $04
    ld b, h                                       ; $7b15: $44
    ld b, $43                                     ; $7b16: $06 $43
    jr nz, @+$3a                                  ; $7b18: $20 $38

    scf                                           ; $7b1a: $37
    cp a                                          ; $7b1b: $bf
    and b                                         ; $7b1c: $a0
    cp l                                          ; $7b1d: $bd
    ld h, c                                       ; $7b1e: $61
    ld a, [hl]                                    ; $7b1f: $7e
    pop bc                                        ; $7b20: $c1
    db $fc                                        ; $7b21: $fc
    or c                                          ; $7b22: $b1
    nop                                           ; $7b23: $00
    ld c, a                                       ; $7b24: $4f
    nop                                           ; $7b25: $00
    ld b, a                                       ; $7b26: $47
    ld bc, $e53f                                  ; $7b27: $01 $3f $e5
    ld b, b                                       ; $7b2a: $40
    inc hl                                        ; $7b2b: $23
    ld a, l                                       ; $7b2c: $7d
    and e                                         ; $7b2d: $a3
    db $fc                                        ; $7b2e: $fc
    or e                                          ; $7b2f: $b3
    nop                                           ; $7b30: $00
    ld d, d                                       ; $7b31: $52
    jp Jump_069_7e25                              ; $7b32: $c3 $25 $7e


    ld [hl+], a                                   ; $7b35: $22
    dec b                                         ; $7b36: $05
    add hl, sp                                    ; $7b37: $39
    or c                                          ; $7b38: $b1
    ld [hl+], a                                   ; $7b39: $22
    and c                                         ; $7b3a: $a1
    ld b, c                                       ; $7b3b: $41
    ld b, b                                       ; $7b3c: $40
    db $fc                                        ; $7b3d: $fc
    or c                                          ; $7b3e: $b1
    nop                                           ; $7b3f: $00
    ld d, d                                       ; $7b40: $52
    jp nz, Jump_000_3e25                          ; $7b41: $c2 $25 $3e

    ld [hl+], a                                   ; $7b44: $22
    ld bc, $353e                                  ; $7b45: $01 $3e $35
    ld [bc], a                                    ; $7b48: $02
    cp h                                          ; $7b49: $bc
    ld hl, $b1fc                                  ; $7b4a: $21 $fc $b1
    nop                                           ; $7b4d: $00
    ld d, b                                       ; $7b4e: $50
    ld b, b                                       ; $7b4f: $40
    ld hl, $c33e                                  ; $7b50: $21 $3e $c3
    ret nz                                        ; $7b53: $c0

    push hl                                       ; $7b54: $e5
    rrca                                          ; $7b55: $0f
    xor a                                         ; $7b56: $af
    dec bc                                        ; $7b57: $0b
    inc bc                                        ; $7b58: $03
    inc bc                                        ; $7b59: $03
    ld a, d                                       ; $7b5a: $7a
    ld h, h                                       ; $7b5b: $64
    nop                                           ; $7b5c: $00
    rst $18                                       ; $7b5d: $df
    ld b, e                                       ; $7b5e: $43
    ld [bc], a                                    ; $7b5f: $02
    rst $38                                       ; $7b60: $ff
    ret z                                         ; $7b61: $c8

    rst $38                                       ; $7b62: $ff
    ld a, $46                                     ; $7b63: $3e $46
    ld [bc], a                                    ; $7b65: $02
    rlca                                          ; $7b66: $07
    dec c                                         ; $7b67: $0d
    sbc d                                         ; $7b68: $9a
    dec c                                         ; $7b69: $0d
    ld [bc], a                                    ; $7b6a: $02
    ldh [$fb], a                                  ; $7b6b: $e0 $fb
    and c                                         ; $7b6d: $a1
    db $fc                                        ; $7b6e: $fc
    xor a                                         ; $7b6f: $af
    nop                                           ; $7b70: $00
    ld d, d                                       ; $7b71: $52
    rst $38                                       ; $7b72: $ff
    jp z, $e0c0                                   ; $7b73: $ca $c0 $e0

    dec c                                         ; $7b76: $0d
    rlca                                          ; $7b77: $07
    dec c                                         ; $7b78: $0d
    ldh [$c0], a                                  ; $7b79: $e0 $c0
    pop hl                                        ; $7b7b: $e1
    db $fc                                        ; $7b7c: $fc
    or c                                          ; $7b7d: $b1
    nop                                           ; $7b7e: $00
    pop de                                        ; $7b7f: $d1
    ret nz                                        ; $7b80: $c0

    ld bc, $c7ff                                  ; $7b81: $01 $ff $c7
    ld a, [hl-]                                   ; $7b84: $3a
    ld b, l                                       ; $7b85: $45
    ld b, [hl]                                    ; $7b86: $46
    rrca                                          ; $7b87: $0f
    dec bc                                        ; $7b88: $0b
    xor [hl]                                      ; $7b89: $ae
    inc bc                                        ; $7b8a: $03
    inc bc                                        ; $7b8b: $03
    db $fc                                        ; $7b8c: $fc
    or h                                          ; $7b8d: $b4
    nop                                           ; $7b8e: $00
    rst $08                                       ; $7b8f: $cf
    ld b, b                                       ; $7b90: $40
    jr nz, jr_069_7be0                            ; $7b91: $20 $4d

    nop                                           ; $7b93: $00
    rla                                           ; $7b94: $17

jr_069_7b95:
    ld b, l                                       ; $7b95: $45
    scf                                           ; $7b96: $37
    jr c, jr_069_7b95                             ; $7b97: $38 $fc

    and l                                         ; $7b99: $a5
    ld b, b                                       ; $7b9a: $40
    cp $a1                                        ; $7b9b: $fe $a1
    ld a, [$fc01]                                 ; $7b9d: $fa $01 $fc
    or c                                          ; $7ba0: $b1
    ldh [rP1], a                                  ; $7ba1: $e0 $00
    rst $08                                       ; $7ba3: $cf
    rst $38                                       ; $7ba4: $ff
    ld [hl+], a                                   ; $7ba5: $22
    dec a                                         ; $7ba6: $3d
    pop hl                                        ; $7ba7: $e1
    db $fc                                        ; $7ba8: $fc
    ld h, c                                       ; $7ba9: $61
    ccf                                           ; $7baa: $3f
    rst $00                                       ; $7bab: $c7
    ld b, [hl]                                    ; $7bac: $46
    sbc h                                         ; $7bad: $9c
    sbc l                                         ; $7bae: $9d
    nop                                           ; $7baf: $00
    db $fc                                        ; $7bb0: $fc
    and e                                         ; $7bb1: $a3
    ld hl, sp+$2b                                 ; $7bb2: $f8 $2b
    nop                                           ; $7bb4: $00
    db $d3                                        ; $7bb5: $d3
    ld c, l                                       ; $7bb6: $4d
    jp nz, $e5bf                                  ; $7bb7: $c2 $bf $e5

    ccf                                           ; $7bba: $3f
    ldh [$3d], a                                  ; $7bbb: $e0 $3d
    jp nz, $62f8                                  ; $7bbd: $c2 $f8 $62

    db $10                                        ; $7bc0: $10
    ld hl, sp+$2d                                 ; $7bc1: $f8 $2d
    nop                                           ; $7bc3: $00
    call nc, $e24e                                ; $7bc4: $d4 $4e $e2
    inc a                                         ; $7bc7: $3c
    push hl                                       ; $7bc8: $e5
    ld b, d                                       ; $7bc9: $42
    ldh a, [$e4]                                  ; $7bca: $f0 $e4
    halt                                          ; $7bcc: $76
    ld hl, $2df8                                  ; $7bcd: $21 $f8 $2d
    jr jr_069_7bd2                                ; $7bd0: $18 $00

jr_069_7bd2:
    call nc, $e4fd                                ; $7bd2: $d4 $fd $e4
    jr c, jr_069_7c39                             ; $7bd5: $38 $62

    inc a                                         ; $7bd7: $3c
    ld b, h                                       ; $7bd8: $44
    cpl                                           ; $7bd9: $2f
    db $e3                                        ; $7bda: $e3
    ld hl, sp+$32                                 ; $7bdb: $f8 $32
    nop                                           ; $7bdd: $00
    adc a                                         ; $7bde: $8f
    ld [hl], h                                    ; $7bdf: $74

jr_069_7be0:
    rst $38                                       ; $7be0: $ff
    and e                                         ; $7be1: $a3
    cp a                                          ; $7be2: $bf
    and $3b                                       ; $7be3: $e6 $3b
    cp $82                                        ; $7be5: $fe $82
    ld b, l                                       ; $7be7: $45
    ld b, c                                       ; $7be8: $41
    ld b, l                                       ; $7be9: $45
    ld hl, sp+$33                                 ; $7bea: $f8 $33
    call z, $cf00                                 ; $7bec: $cc $00 $cf
    cp [hl]                                       ; $7bef: $be
    and b                                         ; $7bf0: $a0
    sbc l                                         ; $7bf1: $9d
    sbc l                                         ; $7bf2: $9d
    cp l                                          ; $7bf3: $bd
    ld [c], a                                     ; $7bf4: $e2
    push bc                                       ; $7bf5: $c5
    ld h, c                                       ; $7bf6: $61
    ld b, l                                       ; $7bf7: $45
    ld b, e                                       ; $7bf8: $43
    dec c                                         ; $7bf9: $0d
    ccf                                           ; $7bfa: $3f
    pop bc                                        ; $7bfb: $c1
    pop hl                                        ; $7bfc: $e1
    ld [hl], $a6                                  ; $7bfd: $36 $a6
    cp b                                          ; $7bff: $b8
    add c                                         ; $7c00: $81
    ld hl, sp+$30                                 ; $7c01: $f8 $30
    nop                                           ; $7c03: $00
    adc a                                         ; $7c04: $8f
    sbc d                                         ; $7c05: $9a
    add d                                         ; $7c06: $82
    jr c, jr_069_7c84                             ; $7c07: $38 $7b

    and d                                         ; $7c09: $a2
    inc c                                         ; $7c0a: $0c
    ld [c], a                                     ; $7c0b: $e2
    ld [hl], l                                    ; $7c0c: $75
    jp $a762                                      ; $7c0d: $c3 $62 $a7


    ld h, [hl]                                    ; $7c10: $66
    ld [hl], a                                    ; $7c11: $77
    add b                                         ; $7c12: $80
    ld a, b                                       ; $7c13: $78
    ld h, b                                       ; $7c14: $60
    ret nz                                        ; $7c15: $c0

    nop                                           ; $7c16: $00
    db $db                                        ; $7c17: $db
    jr jr_069_7c7b                                ; $7c18: $18 $61

    sub [hl]                                      ; $7c1a: $96
    ld b, c                                       ; $7c1b: $41
    ld a, d                                       ; $7c1c: $7a
    ld b, b                                       ; $7c1d: $40
    ld a, l                                       ; $7c1e: $7d
    db $e3                                        ; $7c1f: $e3
    pop bc                                        ; $7c20: $c1
    push hl                                       ; $7c21: $e5
    ld h, a                                       ; $7c22: $67
    and e                                         ; $7c23: $a3
    ld bc, $bf68                                  ; $7c24: $01 $68 $bf
    ldh [$f8], a                                  ; $7c27: $e0 $f8
    ld [bc], a                                    ; $7c29: $02
    nop                                           ; $7c2a: $00
    sbc b                                         ; $7c2b: $98
    db $fc                                        ; $7c2c: $fc
    ld h, d                                       ; $7c2d: $62
    inc d                                         ; $7c2e: $14
    ld hl, $2110                                  ; $7c2f: $21 $10 $21
    cp [hl]                                       ; $7c32: $be
    db $e3                                        ; $7c33: $e3
    cp $38                                        ; $7c34: $fe $38
    jp nz, Jump_069_6762                          ; $7c36: $c2 $62 $67

jr_069_7c39:
    dec [hl]                                      ; $7c39: $35
    dec [hl]                                      ; $7c3a: $35
    ld l, h                                       ; $7c3b: $6c
    or a                                          ; $7c3c: $b7
    cp b                                          ; $7c3d: $b8
    add e                                         ; $7c3e: $83
    sbc h                                         ; $7c3f: $9c
    sbc a                                         ; $7c40: $9f
    nop                                           ; $7c41: $00
    db $db                                        ; $7c42: $db
    db $fc                                        ; $7c43: $fc
    and e                                         ; $7c44: $a3
    inc d                                         ; $7c45: $14
    ld hl, $4310                                  ; $7c46: $21 $10 $43
    or [hl]                                       ; $7c49: $b6
    add c                                         ; $7c4a: $81
    xor a                                         ; $7c4b: $af
    cp $b8                                        ; $7c4c: $fe $b8
    and b                                         ; $7c4e: $a0
    cp c                                          ; $7c4f: $b9
    cp d                                          ; $7c50: $ba
    and e                                         ; $7c51: $a3
    dec [hl]                                      ; $7c52: $35
    ld l, h                                       ; $7c53: $6c
    ld l, a                                       ; $7c54: $6f
    ld l, [hl]                                    ; $7c55: $6e
    pop bc                                        ; $7c56: $c1
    ld [hl], $7e                                  ; $7c57: $36 $7e
    and c                                         ; $7c59: $a1
    nop                                           ; $7c5a: $00
    reti                                          ; $7c5b: $d9


    db $fc                                        ; $7c5c: $fc
    ld h, l                                       ; $7c5d: $65
    ld hl, sp+$64                                 ; $7c5e: $f8 $64
    ld [hl], l                                    ; $7c60: $75
    add h                                         ; $7c61: $84
    ld b, l                                       ; $7c62: $45
    ld [hl], $17                                  ; $7c63: $36 $17
    ld l, [hl]                                    ; $7c65: $6e
    ld l, a                                       ; $7c66: $6f
    ld l, h                                       ; $7c67: $6c
    pop bc                                        ; $7c68: $c1
    pop hl                                        ; $7c69: $e1
    ld b, l                                       ; $7c6a: $45
    ld bc, $00c0                                  ; $7c6b: $01 $c0 $00
    jp c, $63fc                                   ; $7c6e: $da $fc $63

    inc bc                                        ; $7c71: $03
    and b                                         ; $7c72: $a0
    and b                                         ; $7c73: $a0
    ld hl, sp+$23                                 ; $7c74: $f8 $23
    ld a, [hl]                                    ; $7c76: $7e
    push hl                                       ; $7c77: $e5
    cp a                                          ; $7c78: $bf
    ld [c], a                                     ; $7c79: $e2
    pop bc                                        ; $7c7a: $c1

jr_069_7c7b:
    pop hl                                        ; $7c7b: $e1
    ld a, d                                       ; $7c7c: $7a
    ld b, h                                       ; $7c7d: $44
    nop                                           ; $7c7e: $00
    reti                                          ; $7c7f: $d9


    inc b                                         ; $7c80: $04
    ld hl, sp+$29                                 ; $7c81: $f8 $29
    ld a, [hl]                                    ; $7c83: $7e

jr_069_7c84:
    db $e3                                        ; $7c84: $e3
    sbc l                                         ; $7c85: $9d
    inc [hl]                                      ; $7c86: $34
    ret nz                                        ; $7c87: $c0

    ld a, [hl]                                    ; $7c88: $7e
    ldh [$c1], a                                  ; $7c89: $e0 $c1
    db $e3                                        ; $7c8b: $e3
    db $fc                                        ; $7c8c: $fc
    ld b, e                                       ; $7c8d: $43
    nop                                           ; $7c8e: $00
    sbc b                                         ; $7c8f: $98
    nop                                           ; $7c90: $00
    ld hl, sp+$67                                 ; $7c91: $f8 $67
    db $fc                                        ; $7c93: $fc
    push bc                                       ; $7c94: $c5
    inc c                                         ; $7c95: $0c
    ld h, b                                       ; $7c96: $60
    cp h                                          ; $7c97: $bc
    pop hl                                        ; $7c98: $e1
    cp c                                          ; $7c99: $b9
    ldh [$fc], a                                  ; $7c9a: $e0 $fc
    ld hl, $dd00                                  ; $7c9c: $21 $00 $dd
    ld hl, sp+$27                                 ; $7c9f: $f8 $27
    nop                                           ; $7ca1: $00
    db $fc                                        ; $7ca2: $fc
    push bc                                       ; $7ca3: $c5
    adc d                                         ; $7ca4: $8a
    ld b, h                                       ; $7ca5: $44
    add l                                         ; $7ca6: $85
    ld b, d                                       ; $7ca7: $42
    nop                                           ; $7ca8: $00
    sbc a                                         ; $7ca9: $9f
    ld hl, sp+$27                                 ; $7caa: $f8 $27
    db $f4                                        ; $7cac: $f4
    inc bc                                        ; $7cad: $03
    ld a, d                                       ; $7cae: $7a
    add sp, -$7e                                  ; $7caf: $e8 $82
    db $e4                                        ; $7cb1: $e4
    nop                                           ; $7cb2: $00
    nop                                           ; $7cb3: $00
    adc l                                         ; $7cb4: $8d
    nop                                           ; $7cb5: $00
    nop                                           ; $7cb6: $00
    nop                                           ; $7cb7: $00
    pop bc                                        ; $7cb8: $c1
    nop                                           ; $7cb9: $00
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
    nop                                           ; $7cc4: $00
    nop                                           ; $7cc5: $00
    ld bc, $fe80                                  ; $7cc6: $01 $80 $fe
    ldh [rIE], a                                  ; $7cc9: $e0 $ff
    rst $38                                       ; $7ccb: $ff
    rst $38                                       ; $7ccc: $ff
    rst $38                                       ; $7ccd: $ff
    rst $38                                       ; $7cce: $ff
    add sp, $00                                   ; $7ccf: $e8 $00
    nop                                           ; $7cd1: $00
    nop                                           ; $7cd2: $00
    ld [bc], a                                    ; $7cd3: $02
    nop                                           ; $7cd4: $00
    daa                                           ; $7cd5: $27
    ld b, $02                                     ; $7cd6: $06 $02
    ld bc, $091d                                  ; $7cd8: $01 $1d $09
    ld [bc], a                                    ; $7cdb: $02
    ld [bc], a                                    ; $7cdc: $02
    add hl, hl                                    ; $7cdd: $29
    add hl, bc                                    ; $7cde: $09
    ld [bc], a                                    ; $7cdf: $02
    inc bc                                        ; $7ce0: $03
    ld a, [de]                                    ; $7ce1: $1a
    inc c                                         ; $7ce2: $0c
    ld [bc], a                                    ; $7ce3: $02
    inc b                                         ; $7ce4: $04
    jr z, jr_069_7cf4                             ; $7ce5: $28 $0d

    ld [bc], a                                    ; $7ce7: $02
    dec b                                         ; $7ce8: $05
    inc h                                         ; $7ce9: $24
    ld c, $02                                     ; $7cea: $0e $02
    ld b, $26                                     ; $7cec: $06 $26
    ld c, $02                                     ; $7cee: $0e $02
    rlca                                          ; $7cf0: $07
    jr jr_069_7d02                                ; $7cf1: $18 $0f

    ld [bc], a                                    ; $7cf3: $02

jr_069_7cf4:
    ld [$0f23], sp                                ; $7cf4: $08 $23 $0f
    ld [bc], a                                    ; $7cf7: $02
    add hl, bc                                    ; $7cf8: $09
    ld [hl+], a                                   ; $7cf9: $22
    db $10                                        ; $7cfa: $10
    ld [bc], a                                    ; $7cfb: $02
    ld a, [bc]                                    ; $7cfc: $0a
    ld hl, $0211                                  ; $7cfd: $21 $11 $02
    dec bc                                        ; $7d00: $0b
    dec d                                         ; $7d01: $15

jr_069_7d02:
    ld [de], a                                    ; $7d02: $12
    ld [bc], a                                    ; $7d03: $02
    inc c                                         ; $7d04: $0c
    ld hl, $0214                                  ; $7d05: $21 $14 $02
    dec c                                         ; $7d08: $0d
    add hl, de                                    ; $7d09: $19
    dec d                                         ; $7d0a: $15
    ld [bc], a                                    ; $7d0b: $02
    ld c, $20                                     ; $7d0c: $0e $20
    dec d                                         ; $7d0e: $15
    ld [bc], a                                    ; $7d0f: $02
    rrca                                          ; $7d10: $0f
    ld [hl+], a                                   ; $7d11: $22
    dec d                                         ; $7d12: $15
    ld [bc], a                                    ; $7d13: $02
    db $10                                        ; $7d14: $10
    dec de                                        ; $7d15: $1b
    ld d, $02                                     ; $7d16: $16 $02
    ld de, $161f                                  ; $7d18: $11 $1f $16
    ld [bc], a                                    ; $7d1b: $02
    ld [de], a                                    ; $7d1c: $12
    ld hl, $0216                                  ; $7d1d: $21 $16 $02
    inc de                                        ; $7d20: $13
    inc d                                         ; $7d21: $14
    rla                                           ; $7d22: $17
    ld [bc], a                                    ; $7d23: $02
    inc d                                         ; $7d24: $14
    ld hl, $0219                                  ; $7d25: $21 $19 $02
    dec d                                         ; $7d28: $15
    inc d                                         ; $7d29: $14
    inc e                                         ; $7d2a: $1c
    ld [bc], a                                    ; $7d2b: $02
    ld d, $23                                     ; $7d2c: $16 $23
    inc e                                         ; $7d2e: $1c
    ld [bc], a                                    ; $7d2f: $02
    rla                                           ; $7d30: $17
    ld hl, $021d                                  ; $7d31: $21 $1d $02
    jr jr_069_7d58                                ; $7d34: $18 $22

    jr nz, @+$04                                  ; $7d36: $20 $02

    add hl, de                                    ; $7d38: $19
    ld hl, $0221                                  ; $7d39: $21 $21 $02
    ld a, [de]                                    ; $7d3c: $1a
    ld hl, $0223                                  ; $7d3d: $21 $23 $02
    dec de                                        ; $7d40: $1b
    inc hl                                        ; $7d41: $23
    inc hl                                        ; $7d42: $23
    ld [bc], a                                    ; $7d43: $02
    inc e                                         ; $7d44: $1c
    jr nz, jr_069_7d6b                            ; $7d45: $20 $24

    ld [bc], a                                    ; $7d47: $02
    dec e                                         ; $7d48: $1d
    rra                                           ; $7d49: $1f
    dec h                                         ; $7d4a: $25
    ld [bc], a                                    ; $7d4b: $02
    ld e, $21                                     ; $7d4c: $1e $21
    dec h                                         ; $7d4e: $25
    ld [bc], a                                    ; $7d4f: $02
    rra                                           ; $7d50: $1f
    jr nz, jr_069_7d79                            ; $7d51: $20 $26

    ld [bc], a                                    ; $7d53: $02
    jr nz, jr_069_7d78                            ; $7d54: $20 $22

    ld h, $02                                     ; $7d56: $26 $02

jr_069_7d58:
    ld hl, $2714                                  ; $7d58: $21 $14 $27
    ld [bc], a                                    ; $7d5b: $02
    ld [hl+], a                                   ; $7d5c: $22
    inc h                                         ; $7d5d: $24
    daa                                           ; $7d5e: $27
    ld [bc], a                                    ; $7d5f: $02
    inc hl                                        ; $7d60: $23
    dec h                                         ; $7d61: $25
    dec hl                                        ; $7d62: $2b
    ld [bc], a                                    ; $7d63: $02
    inc h                                         ; $7d64: $24
    dec d                                         ; $7d65: $15
    cpl                                           ; $7d66: $2f
    ld [bc], a                                    ; $7d67: $02
    dec h                                         ; $7d68: $25
    ld h, $2f                                     ; $7d69: $26 $2f

jr_069_7d6b:
    ld [bc], a                                    ; $7d6b: $02
    ld h, $18                                     ; $7d6c: $26 $18
    ld [hl-], a                                   ; $7d6e: $32
    ld [bc], a                                    ; $7d6f: $02
    daa                                           ; $7d70: $27
    jr z, jr_069_7da5                             ; $7d71: $28 $32

    ld [bc], a                                    ; $7d73: $02
    jr z, jr_069_7da1                             ; $7d74: $28 $2b

    inc [hl]                                      ; $7d76: $34
    ld [bc], a                                    ; $7d77: $02

jr_069_7d78:
    add hl, hl                                    ; $7d78: $29

jr_069_7d79:
    inc e                                         ; $7d79: $1c
    ld [hl], $02                                  ; $7d7a: $36 $02
    ld a, [hl+]                                   ; $7d7c: $2a
    jr nz, jr_069_7db8                            ; $7d7d: $20 $39

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

jr_069_7da1:
    rst $38                                       ; $7da1: $ff
    rst $38                                       ; $7da2: $ff
    rst $38                                       ; $7da3: $ff
    rst $38                                       ; $7da4: $ff

jr_069_7da5:
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

jr_069_7db8:
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

Jump_069_7e25:
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

Jump_069_7ee6:
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
