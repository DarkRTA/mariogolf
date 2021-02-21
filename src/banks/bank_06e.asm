; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $06e", ROMX[$4000], BANK[$6e]

    ld a, [bc]                                    ; $4000: $0a
    ld b, b                                       ; $4001: $40
    sbc b                                         ; $4002: $98
    ld c, l                                       ; $4003: $4d
    ld a, c                                       ; $4004: $79
    ld d, a                                       ; $4005: $57
    push af                                       ; $4006: $f5
    ld h, c                                       ; $4007: $61
    ld d, c                                       ; $4008: $51
    ld l, a                                       ; $4009: $6f
    ld [de], a                                    ; $400a: $12
    ld b, b                                       ; $400b: $40
    xor h                                         ; $400c: $ac
    ld b, l                                       ; $400d: $45
    ld h, d                                       ; $400e: $62
    ld c, h                                       ; $400f: $4c
    ld a, l                                       ; $4010: $7d
    ld c, h                                       ; $4011: $4c
    ld e, l                                       ; $4012: $5d
    dec l                                         ; $4013: $2d
    rst $38                                       ; $4014: $ff
    ld [c], a                                     ; $4015: $e2
    ld c, $0e                                     ; $4016: $0e $0e
    ld c, $f9                                     ; $4018: $0e $f9
    db $e3                                        ; $401a: $e3
    ld l, $f3                                     ; $401b: $2e $f3
    rst $20                                       ; $401d: $e7
    inc h                                         ; $401e: $24
    rst $20                                       ; $401f: $e7
    and $ea                                       ; $4020: $e6 $ea
    ldh [$0d], a                                  ; $4022: $e0 $0d
    jp hl                                         ; $4024: $e9


    db $ec                                        ; $4025: $ec
    rst $30                                       ; $4026: $f7
    jp hl                                         ; $4027: $e9


    dec c                                         ; $4028: $0d
    db $e3                                        ; $4029: $e3
    ldh [$e4], a                                  ; $402a: $e0 $e4
    ld [$b318], a                                 ; $402c: $ea $18 $b3
    ld [c], a                                     ; $402f: $e2
    or [hl]                                       ; $4030: $b6
    ld [c], a                                     ; $4031: $e2
    and a                                         ; $4032: $a7
    db $e3                                        ; $4033: $e3
    dec c                                         ; $4034: $0d

Jump_06e_4035:
    dec c                                         ; $4035: $0d
    xor b                                         ; $4036: $a8
    ld [c], a                                     ; $4037: $e2
    sbc h                                         ; $4038: $9c
    rst $20                                       ; $4039: $e7
    or d                                          ; $403a: $b2
    pop hl                                        ; $403b: $e1
    or b                                          ; $403c: $b0
    jp z, $c5e1                                   ; $403d: $ca $e1 $c5

    ldh [$a7], a                                  ; $4040: $e0 $a7
    ldh [$c0], a                                  ; $4042: $e0 $c0
    push hl                                       ; $4044: $e5
    ld c, $4e                                     ; $4045: $0e $4e
    rst $38                                       ; $4047: $ff
    pop hl                                        ; $4048: $e1
    ld l, $c0                                     ; $4049: $2e $c0
    add $e5                                       ; $404b: $c6 $e5
    ld [hl], d                                    ; $404d: $72
    db $e3                                        ; $404e: $e3
    ret nz                                        ; $404f: $c0

    ld [c], a                                     ; $4050: $e2
    add b                                         ; $4051: $80
    add sp, $7c                                   ; $4052: $e8 $7c
    db $f4                                        ; $4054: $f4
    dec a                                         ; $4055: $3d
    pop hl                                        ; $4056: $e1
    ld l, [hl]                                    ; $4057: $6e
    dec hl                                        ; $4058: $2b
    ld [bc], a                                    ; $4059: $02
    or c                                          ; $405a: $b1
    ldh [$0d], a                                  ; $405b: $e0 $0d
    cp a                                          ; $405d: $bf
    ldh [$2f], a                                  ; $405e: $e0 $2f
    ld [c], a                                     ; $4060: $e2
    or l                                          ; $4061: $b5
    ld [c], a                                     ; $4062: $e2
    pop hl                                        ; $4063: $e1
    jp hl                                         ; $4064: $e9


    ld [hl], b                                    ; $4065: $70
    push hl                                       ; $4066: $e5
    ld hl, $78e6                                  ; $4067: $21 $e6 $78

Jump_06e_406a:
    ld a, [de]                                    ; $406a: $1a
    rst $20                                       ; $406b: $e7
    ld a, [bc]                                    ; $406c: $0a
    db $e3                                        ; $406d: $e3
    pop bc                                        ; $406e: $c1
    ldh [$0b], a                                  ; $406f: $e0 $0b
    dec hl                                        ; $4071: $2b
    dec c                                         ; $4072: $0d
    ld a, [bc]                                    ; $4073: $0a
    ld a, d                                       ; $4074: $7a
    ld [c], a                                     ; $4075: $e2
    add l                                         ; $4076: $85
    ld c, [hl]                                    ; $4077: $4e
    or e                                          ; $4078: $b3
    ldh [$2b], a                                  ; $4079: $e0 $2b
    or $e3                                        ; $407b: $f6 $e3

Jump_06e_407d:
    ld a, [$3be8]                                 ; $407d: $fa $e8 $3b
    ld [c], a                                     ; $4080: $e2
    db $ed                                        ; $4081: $ed
    jp $ec2e                                      ; $4082: $c3 $2e $ec


    dec hl                                        ; $4085: $2b
    pop hl                                        ; $4086: $e1
    dec c                                         ; $4087: $0d
    jp hl                                         ; $4088: $e9


    dec l                                         ; $4089: $2d
    ld c, $c1                                     ; $408a: $0e $c1
    ldh [$0b], a                                  ; $408c: $e0 $0b
    ld l, e                                       ; $408e: $6b
    dec c                                         ; $408f: $0d
    ld bc, $c70a                                  ; $4090: $01 $0a $c7
    ldh [rIE], a                                  ; $4093: $e0 $ff
    pop hl                                        ; $4095: $e1
    dec h                                         ; $4096: $25
    ldh [$f8], a                                  ; $4097: $e0 $f8
    db $e3                                        ; $4099: $e3
    ld a, [c]                                     ; $409a: $f2
    ld [c], a                                     ; $409b: $e2
    or $e3                                        ; $409c: $f6 $e3
    ld h, h                                       ; $409e: $64
    db $e3                                        ; $409f: $e3
    ldh a, [$94]                                  ; $40a0: $f0 $94

Jump_06e_40a2:
    jp $e2c0                                      ; $40a2: $c3 $c0 $e2


    nop                                           ; $40a5: $00
    ld [c], a                                     ; $40a6: $e2
    ret nz                                        ; $40a7: $c0

    rst $20                                       ; $40a8: $e7
    ld c, e                                       ; $40a9: $4b
    ld l, e                                       ; $40aa: $6b
    dec l                                         ; $40ab: $2d
    dec c                                         ; $40ac: $0d
    add hl, sp                                    ; $40ad: $39
    ld a, [bc]                                    ; $40ae: $0a
    rst $00                                       ; $40af: $c7
    db $e4                                        ; $40b0: $e4
    ret nz                                        ; $40b1: $c0

    and $4b                                       ; $40b2: $e6 $4b
    dec bc                                        ; $40b4: $0b
    dec hl                                        ; $40b5: $2b
    ld l, c                                       ; $40b6: $69
    ldh [$ae], a                                  ; $40b7: $e0 $ae
    ld [c], a                                     ; $40b9: $e2
    nop                                           ; $40ba: $00
    ld l, [hl]                                    ; $40bb: $6e
    pop hl                                        ; $40bc: $e1
    db $ed                                        ; $40bd: $ed
    jp $ee03                                      ; $40be: $c3 $03 $ee


    add b                                         ; $40c1: $80
    ld [c], a                                     ; $40c2: $e2
    or d                                          ; $40c3: $b2
    jp $e7c7                                      ; $40c4: $c3 $c7 $e7


    rst $38                                       ; $40c7: $ff
    push hl                                       ; $40c8: $e5
    cp d                                          ; $40c9: $ba
    pop hl                                        ; $40ca: $e1
    add [hl]                                      ; $40cb: $86
    ld a, [c]                                     ; $40cc: $f2
    ldh [$0d], a                                  ; $40cd: $e0 $0d
    dec hl                                        ; $40cf: $2b
    ld e, [hl]                                    ; $40d0: $5e
    ldh [$ea], a                                  ; $40d1: $e0 $ea
    ret z                                         ; $40d3: $c8

    add d                                         ; $40d4: $82
    db $e4                                        ; $40d5: $e4
    ld hl, $4ec4                                  ; $40d6: $21 $c4 $4e
    ld b, a                                       ; $40d9: $47
    ld l, $0a                                     ; $40da: $2e $0a
    ld a, [bc]                                    ; $40dc: $0a
    add d                                         ; $40dd: $82
    ld [c], a                                     ; $40de: $e2
    ld b, b                                       ; $40df: $40
    ld [c], a                                     ; $40e0: $e2
    jp Jump_06e_4be5                              ; $40e1: $c3 $e5 $4b


    rst $38                                       ; $40e4: $ff
    pop hl                                        ; $40e5: $e1
    nop                                           ; $40e6: $00
    cp d                                          ; $40e7: $ba
    db $e4                                        ; $40e8: $e4
    ld [c], a                                     ; $40e9: $e2
    ret nz                                        ; $40ea: $c0

    xor l                                         ; $40eb: $ad
    ldh [$7e], a                                  ; $40ec: $e0 $7e
    ld [c], a                                     ; $40ee: $e2
    and l                                         ; $40ef: $a5
    ret                                           ; $40f0: $c9


    ld hl, $bfc4                                  ; $40f1: $21 $c4 $bf
    ldh [$80], a                                  ; $40f4: $e0 $80
    pop bc                                        ; $40f6: $c1
    db $fc                                        ; $40f7: $fc
    ld [$86e2], sp                                ; $40f8: $08 $e2 $86
    ld [c], a                                     ; $40fb: $e2
    ld l, e                                       ; $40fc: $6b
    ld c, e                                       ; $40fd: $4b
    ld c, e                                       ; $40fe: $4b
    ld l, e                                       ; $40ff: $6b
    ld c, e                                       ; $4100: $4b
    ld l, e                                       ; $4101: $6b
    ret nz                                        ; $4102: $c0

    rst $38                                       ; $4103: $ff
    pop hl                                        ; $4104: $e1
    cp e                                          ; $4105: $bb
    ld [c], a                                     ; $4106: $e2
    ld [hl], c                                    ; $4107: $71
    pop hl                                        ; $4108: $e1
    and $e1                                       ; $4109: $e6 $e1
    ld e, [hl]                                    ; $410b: $5e
    push bc                                       ; $410c: $c5
    ld a, [hl]                                    ; $410d: $7e
    db $e4                                        ; $410e: $e4
    ld c, $0e                                     ; $410f: $0e $0e
    nop                                           ; $4111: $00
    ld hl, $7bc4                                  ; $4112: $21 $c4 $7b
    and b                                         ; $4115: $a0
    ret nz                                        ; $4116: $c0

    db $e4                                        ; $4117: $e4
    call nz, $c2e2                                ; $4118: $c4 $e2 $c2
    ldh [$c6], a                                  ; $411b: $e0 $c6
    add $af                                       ; $411d: $c6 $af
    pop bc                                        ; $411f: $c1
    cp d                                          ; $4120: $ba
    pop hl                                        ; $4121: $e1
    ld b, $7b                                     ; $4122: $06 $7b
    ld [c], a                                     ; $4124: $e2
    dec c                                         ; $4125: $0d
    dec c                                         ; $4126: $0d
    ld [$a0a1], a                                 ; $4127: $ea $a1 $a0
    and b                                         ; $412a: $a0
    ld c, h                                       ; $412b: $4c
    and e                                         ; $412c: $a3
    inc sp                                        ; $412d: $33
    add $58                                       ; $412e: $c6 $58
    and b                                         ; $4130: $a0
    inc c                                         ; $4131: $0c
    db $e4                                        ; $4132: $e4
    ldh [$c1], a                                  ; $4133: $e0 $c1
    ld [c], a                                     ; $4135: $e2
    ld l, e                                       ; $4136: $6b
    ld l, e                                       ; $4137: $6b
    ld a, l                                       ; $4138: $7d
    ret nz                                        ; $4139: $c0

    ld a, [bc]                                    ; $413a: $0a
    ldh [$fe], a                                  ; $413b: $e0 $fe
    db $ec                                        ; $413d: $ec
    cp [hl]                                       ; $413e: $be
    db $e3                                        ; $413f: $e3
    sub b                                         ; $4140: $90
    ret nz                                        ; $4141: $c0

    db $e4                                        ; $4142: $e4
    inc c                                         ; $4143: $0c
    and d                                         ; $4144: $a2
    add b                                         ; $4145: $80
    db $e3                                        ; $4146: $e3
    inc hl                                        ; $4147: $23
    and l                                         ; $4148: $a5
    ld c, $98                                     ; $4149: $0e $98
    pop bc                                        ; $414b: $c1
    dec sp                                        ; $414c: $3b
    pop bc                                        ; $414d: $c1
    ld a, [bc]                                    ; $414e: $0a
    adc $ff                                       ; $414f: $ce $ff
    pop hl                                        ; $4151: $e1
    ld a, [hl+]                                   ; $4152: $2a
    ld a, [bc]                                    ; $4153: $0a
    ld a, [hl+]                                   ; $4154: $2a
    cp l                                          ; $4155: $bd
    xor $ef                                       ; $4156: $ee $ef
    pop bc                                        ; $4158: $c1
    dec c                                         ; $4159: $0d
    ld c, $c1                                     ; $415a: $0e $c1
    ld l, [hl]                                    ; $415c: $6e
    ret nz                                        ; $415d: $c0

    and $00                                       ; $415e: $e6 $00
    and [hl]                                      ; $4160: $a6
    ret nz                                        ; $4161: $c0

    push hl                                       ; $4162: $e5
    dec b                                         ; $4163: $05
    pop hl                                        ; $4164: $e1
    pop bc                                        ; $4165: $c1
    ldh [$2a], a                                  ; $4166: $e0 $2a
    ld a, [hl+]                                   ; $4168: $2a
    ld [bc], a                                    ; $4169: $02
    cp [hl]                                       ; $416a: $be
    ld [c], a                                     ; $416b: $e2
    ld a, [hl+]                                   ; $416c: $2a
    cp [hl]                                       ; $416d: $be
    db $ec                                        ; $416e: $ec
    db $eb                                        ; $416f: $eb
    jp nz, $e0c1                                  ; $4170: $c2 $c1 $e0

    adc h                                         ; $4173: $8c
    add [hl]                                      ; $4174: $86
    nop                                           ; $4175: $00
    add $40                                       ; $4176: $c6 $40
    push hl                                       ; $4178: $e5
    jr nz, @-$3d                                  ; $4179: $20 $c1

    db $e4                                        ; $417b: $e4
    ld a, a                                       ; $417c: $7f
    ld [c], a                                     ; $417d: $e2
    cp [hl]                                       ; $417e: $be
    ld [c], a                                     ; $417f: $e2
    ld a, [hl-]                                   ; $4180: $3a
    add sp, -$54                                  ; $4181: $e8 $ac
    jp $bc0b                                      ; $4183: $c3 $0b $bc


    and h                                         ; $4186: $a4
    call z, $44c4                                 ; $4187: $cc $c4 $44
    ld a, [hl-]                                   ; $418a: $3a
    ld [c], a                                     ; $418b: $e2
    ccf                                           ; $418c: $3f
    and h                                         ; $418d: $a4
    ld l, [hl]                                    ; $418e: $6e
    ld a, [hl]                                    ; $418f: $7e
    and d                                         ; $4190: $a2
    call nz, $bce5                                ; $4191: $c4 $e5 $bc
    db $e3                                        ; $4194: $e3
    ld l, d                                       ; $4195: $6a
    ld sp, hl                                     ; $4196: $f9
    add $1d                                       ; $4197: $c6 $1d
    ld l, e                                       ; $4199: $6b
    ld b, e                                       ; $419a: $43
    ld [c], a                                     ; $419b: $e2
    dec bc                                        ; $419c: $0b
    ld c, $6e                                     ; $419d: $0e $6e
    ld l, l                                       ; $419f: $6d
    add [hl]                                      ; $41a0: $86
    ld [bc], a                                    ; $41a1: $02
    call nz, $e0c0                                ; $41a2: $c4 $c0 $e0
    ld [$83c0], sp                                ; $41a5: $08 $c0 $83
    pop bc                                        ; $41a8: $c1
    ldh a, [$bf]                                  ; $41a9: $f0 $bf
    add sp, $6b                                   ; $41ab: $e8 $6b
    cp a                                          ; $41ad: $bf
    ldh [$03], a                                  ; $41ae: $e0 $03
    db $e4                                        ; $41b0: $e4
    ld l, l                                       ; $41b1: $6d
    adc b                                         ; $41b2: $88
    dec h                                         ; $41b3: $25
    add b                                         ; $41b4: $80
    jr nz, jr_06e_4221                            ; $41b5: $20 $6a

    add e                                         ; $41b7: $83
    add c                                         ; $41b8: $81
    add c                                         ; $41b9: $81
    pop de                                        ; $41ba: $d1
    and b                                         ; $41bb: $a0
    ld b, e                                       ; $41bc: $43
    rst $20                                       ; $41bd: $e7
    dec sp                                        ; $41be: $3b

jr_06e_41bf:
    push hl                                       ; $41bf: $e5

Call_06e_41c0:
    ld c, d                                       ; $41c0: $4a
    ld a, a                                       ; $41c1: $7f
    rst $20                                       ; $41c2: $e7
    add sp, -$60                                  ; $41c3: $e8 $a0
    jr nz, jr_06e_41bf                            ; $41c5: $20 $f8

    ld h, a                                       ; $41c7: $67
    ld [hl], d                                    ; $41c8: $72
    add a                                         ; $41c9: $87
    ld b, b                                       ; $41ca: $40
    ldh [$9b], a                                  ; $41cb: $e0 $9b
    ld h, b                                       ; $41cd: $60
    jp z, Jump_06e_4ba1                           ; $41ce: $ca $a1 $4b

    ret nz                                        ; $41d1: $c0

    ldh [$cd], a                                  ; $41d2: $e0 $cd
    and b                                         ; $41d4: $a0
    ld [bc], a                                    ; $41d5: $02
    jp nz, Jump_000_2ac1                          ; $41d6: $c2 $c1 $2a

    push bc                                       ; $41d9: $c5
    and b                                         ; $41da: $a0
    ret nz                                        ; $41db: $c0

    db $e3                                        ; $41dc: $e3
    ld a, a                                       ; $41dd: $7f
    and $73                                       ; $41de: $e6 $73
    and b                                         ; $41e0: $a0
    ret nz                                        ; $41e1: $c0

    rst $20                                       ; $41e2: $e7
    ld l, h                                       ; $41e3: $6c
    ld h, d                                       ; $41e4: $62
    ld d, h                                       ; $41e5: $54
    or [hl]                                       ; $41e6: $b6
    add h                                         ; $41e7: $84
    ret nz                                        ; $41e8: $c0

    and $2b                                       ; $41e9: $e6 $2b
    ld b, [hl]                                    ; $41eb: $46
    ret nz                                        ; $41ec: $c0

    dec hl                                        ; $41ed: $2b
    ld b, b                                       ; $41ee: $40
    jp $f84b                                      ; $41ef: $c3 $4b $f8


    pop hl                                        ; $41f2: $e1
    ld h, c                                       ; $41f3: $61
    ld c, d                                       ; $41f4: $4a
    or a                                          ; $41f5: $b7
    jp $806f                                      ; $41f6: $c3 $6f $80


    jp hl                                         ; $41f9: $e9


    ldh [$33], a                                  ; $41fa: $e0 $33
    and b                                         ; $41fc: $a0
    dec hl                                        ; $41fd: $2b
    dec hl                                        ; $41fe: $2b
    ld a, [$0466]                                 ; $41ff: $fa $66 $04
    pop bc                                        ; $4202: $c1
    ld l, [hl]                                    ; $4203: $6e
    add h                                         ; $4204: $84
    pop bc                                        ; $4205: $c1
    ld c, e                                       ; $4206: $4b
    ld a, [bc]                                    ; $4207: $0a
    ret nz                                        ; $4208: $c0

    ld c, h                                       ; $4209: $4c
    and b                                         ; $420a: $a0
    ret nz                                        ; $420b: $c0

    ld [c], a                                     ; $420c: $e2
    ld b, h                                       ; $420d: $44
    and b                                         ; $420e: $a0
    or c                                          ; $420f: $b1
    pop hl                                        ; $4210: $e1
    nop                                           ; $4211: $00
    ccf                                           ; $4212: $3f
    ldh [$39], a                                  ; $4213: $e0 $39
    db $e3                                        ; $4215: $e3
    add c                                         ; $4216: $81
    pop hl                                        ; $4217: $e1
    ret nz                                        ; $4218: $c0

    pop hl                                        ; $4219: $e1
    dec [hl]                                      ; $421a: $35
    ld h, e                                       ; $421b: $63
    cp [hl]                                       ; $421c: $be
    adc l                                         ; $421d: $8d
    ld bc, $9f80                                  ; $421e: $01 $80 $9f

jr_06e_4221:
    ret nz                                        ; $4221: $c0

    adc b                                         ; $4222: $88
    add b                                         ; $4223: $80
    ldh [$93], a                                  ; $4224: $e0 $93
    add b                                         ; $4226: $80
    add b                                         ; $4227: $80
    db $e4                                        ; $4228: $e4
    dec hl                                        ; $4229: $2b
    ret nz                                        ; $422a: $c0

    db $e4                                        ; $422b: $e4
    inc sp                                        ; $422c: $33
    call nz, $e181                                ; $422d: $c4 $81 $e1
    dec c                                         ; $4230: $0d
    nop                                           ; $4231: $00
    add b                                         ; $4232: $80
    rst $20                                       ; $4233: $e7
    dec bc                                        ; $4234: $0b
    pop hl                                        ; $4235: $e1
    ret nz                                        ; $4236: $c0

    xor b                                         ; $4237: $a8
    add c                                         ; $4238: $81
    add b                                         ; $4239: $80
    ret nz                                        ; $423a: $c0

    cp $21                                        ; $423b: $fe $21
    and c                                         ; $423d: $a1
    ld bc, $c088                                  ; $423e: $01 $88 $c0
    and l                                         ; $4241: $a5
    adc b                                         ; $4242: $88
    nop                                           ; $4243: $00
    ld [c], a                                     ; $4244: $e2

Call_06e_4245:
    ld e, d                                       ; $4245: $5a
    ld b, b                                       ; $4246: $40
    ld e, a                                       ; $4247: $5f
    ret nz                                        ; $4248: $c0

    dec hl                                        ; $4249: $2b
    ld c, d                                       ; $424a: $4a
    and b                                         ; $424b: $a0
    inc de                                        ; $424c: $13
    pop hl                                        ; $424d: $e1
    add b                                         ; $424e: $80
    db $e3                                        ; $424f: $e3
    dec hl                                        ; $4250: $2b
    ret nz                                        ; $4251: $c0

    ld b, l                                       ; $4252: $45
    push hl                                       ; $4253: $e5
    ei                                            ; $4254: $fb
    jp $e8c0                                      ; $4255: $c3 $c0 $e8


    ld [hl], b                                    ; $4258: $70
    ld c, c                                       ; $4259: $49
    ld a, [de]                                    ; $425a: $1a
    ld b, [hl]                                    ; $425b: $46
    ld e, a                                       ; $425c: $5f
    pop bc                                        ; $425d: $c1
    ld a, [bc]                                    ; $425e: $0a
    ld a, [hl+]                                   ; $425f: $2a
    nop                                           ; $4260: $00
    ld d, c                                       ; $4261: $51
    pop bc                                        ; $4262: $c1
    adc d                                         ; $4263: $8a
    call nz, $c033                                ; $4264: $c4 $33 $c0
    or $82                                        ; $4267: $f6 $82
    ldh a, [$81]                                  ; $4269: $f0 $81
    dec sp                                        ; $426b: $3b
    add b                                         ; $426c: $80
    call nz, Call_000_0081                        ; $426d: $c4 $81 $00
    pop hl                                        ; $4270: $e1
    add b                                         ; $4271: $80
    ld c, c                                       ; $4272: $49
    and l                                         ; $4273: $a5
    cp b                                          ; $4274: $b8
    ld b, [hl]                                    ; $4275: $46
    xor h                                         ; $4276: $ac
    db $e4                                        ; $4277: $e4
    ld b, e                                       ; $4278: $43
    and b                                         ; $4279: $a0
    ret nz                                        ; $427a: $c0

    pop hl                                        ; $427b: $e1
    ld a, e                                       ; $427c: $7b
    jp nz, $a187                                  ; $427d: $c2 $87 $a1

    ld c, e                                       ; $4280: $4b
    nop                                           ; $4281: $00
    ld bc, $82e5                                  ; $4282: $01 $e5 $82
    add l                                         ; $4285: $85
    ret nz                                        ; $4286: $c0

    and $fb                                       ; $4287: $e6 $fb
    jr z, @+$42                                   ; $4289: $28 $40

    add sp, -$40                                  ; $428b: $e8 $c0
    db $e3                                        ; $428d: $e3
    ret nz                                        ; $428e: $c0

    xor [hl]                                      ; $428f: $ae
    ret nz                                        ; $4290: $c0

    push hl                                       ; $4291: $e5
    nop                                           ; $4292: $00
    ld a, a                                       ; $4293: $7f
    and c                                         ; $4294: $a1
    ld hl, $8c46                                  ; $4295: $21 $46 $8c
    ld h, l                                       ; $4298: $65
    or b                                          ; $4299: $b0
    daa                                           ; $429a: $27
    ld [bc], a                                    ; $429b: $02
    and b                                         ; $429c: $a0
    ret nz                                        ; $429d: $c0

    db $e3                                        ; $429e: $e3
    rst $38                                       ; $429f: $ff
    rst $28                                       ; $42a0: $ef
    cp $88                                        ; $42a1: $fe $88
    jr nz, jr_06e_4321                            ; $42a3: $20 $7c

    ld b, e                                       ; $42a5: $43
    adc h                                         ; $42a6: $8c
    ld h, a                                       ; $42a7: $67
    ld h, d                                       ; $42a8: $62
    ld h, $c3                                     ; $42a9: $26 $c3
    add c                                         ; $42ab: $81
    sbc b                                         ; $42ac: $98
    ld b, b                                       ; $42ad: $40
    ld c, d                                       ; $42ae: $4a
    ld b, [hl]                                    ; $42af: $46
    add e                                         ; $42b0: $83
    ret nz                                        ; $42b1: $c0

    db $f4                                        ; $42b2: $f4
    ldh [rNR34], a                                ; $42b3: $e0 $1e
    pop bc                                        ; $42b5: $c1
    dec sp                                        ; $42b6: $3b
    ld b, c                                       ; $42b7: $41
    ldh [rTMA], a                                 ; $42b8: $e0 $06
    inc a                                         ; $42ba: $3c
    ld b, d                                       ; $42bb: $42
    ld [c], a                                     ; $42bc: $e2
    ld bc, $6e0e                                  ; $42bd: $01 $0e $6e
    dec bc                                        ; $42c0: $0b
    nop                                           ; $42c1: $00
    db $e4                                        ; $42c2: $e4
    ld b, c                                       ; $42c3: $41
    add b                                         ; $42c4: $80
    ret nz                                        ; $42c5: $c0

    ret nz                                        ; $42c6: $c0

    ld hl, sp+$7d                                 ; $42c7: $f8 $7d
    add c                                         ; $42c9: $81
    ld a, [$9322]                                 ; $42ca: $fa $22 $93
    ld bc, $00eb                                  ; $42cd: $01 $eb $00
    or a                                          ; $42d0: $b7
    xor b                                         ; $42d1: $a8
    inc c                                         ; $42d2: $0c
    add l                                         ; $42d3: $85
    ld h, b                                       ; $42d4: $60
    ld d, d                                       ; $42d5: $52
    ld b, d                                       ; $42d6: $42
    ld c, d                                       ; $42d7: $4a
    ld c, d                                       ; $42d8: $4a
    ret nz                                        ; $42d9: $c0

    ld a, [$e23e]                                 ; $42da: $fa $3e $e2
    ld a, h                                       ; $42dd: $7c
    and d                                         ; $42de: $a2
    cp e                                          ; $42df: $bb
    adc h                                         ; $42e0: $8c
    ld bc, $a46e                                  ; $42e1: $01 $6e $a4
    add c                                         ; $42e4: $81
    sub a                                         ; $42e5: $97
    ld b, c                                       ; $42e6: $41
    ret nz                                        ; $42e7: $c0

    ld [$6080], a                                 ; $42e8: $ea $80 $60
    ld c, c                                       ; $42eb: $49
    ld b, d                                       ; $42ec: $42
    cp a                                          ; $42ed: $bf
    jp hl                                         ; $42ee: $e9


    ld h, [hl]                                    ; $42ef: $66
    jr nz, @+$52                                  ; $42f0: $20 $50

    jr c, jr_06e_4317                             ; $42f2: $38 $23

    ld l, b                                       ; $42f4: $68
    ld bc, $06ed                                  ; $42f5: $01 $ed $06
    ld h, [hl]                                    ; $42f8: $66

jr_06e_42f9:
    ld b, c                                       ; $42f9: $41
    ld l, e                                       ; $42fa: $6b
    call $0b80                                    ; $42fb: $cd $80 $0b
    rst $38                                       ; $42fe: $ff

Call_06e_42ff:
    ret nz                                        ; $42ff: $c0

    inc b                                         ; $4300: $04
    add d                                         ; $4301: $82
    add d                                         ; $4302: $82
    rst $38                                       ; $4303: $ff
    ld b, d                                       ; $4304: $42
    ld c, e                                       ; $4305: $4b
    adc d                                         ; $4306: $8a
    ld b, b                                       ; $4307: $40
    call Call_000_3ee2                            ; $4308: $cd $e2 $3e
    add sp, -$65                                  ; $430b: $e8 $9b
    ld bc, $267b                                  ; $430d: $01 $7b $26
    jr c, jr_06e_4352                             ; $4310: $38 $40

    ld [bc], a                                    ; $4312: $02
    add $43                                       ; $4313: $c6 $43
    ld a, a                                       ; $4315: $7f
    ld [c], a                                     ; $4316: $e2

jr_06e_4317:
    ld c, e                                       ; $4317: $4b
    dec bc                                        ; $4318: $0b
    ld l, e                                       ; $4319: $6b
    ret nz                                        ; $431a: $c0

    ld [c], a                                     ; $431b: $e2
    or a                                          ; $431c: $b7
    ret nz                                        ; $431d: $c0

    nop                                           ; $431e: $00
    dec c                                         ; $431f: $0d
    and d                                         ; $4320: $a2

jr_06e_4321:
    ld [bc], a                                    ; $4321: $02
    ld b, e                                       ; $4322: $43
    ret nz                                        ; $4323: $c0

    ld [$415c], a                                 ; $4324: $ea $5c $41
    db $fd                                        ; $4327: $fd
    jp nz, $a47a                                  ; $4328: $c2 $7a $a4

    ld b, b                                       ; $432b: $40
    add e                                         ; $432c: $83
    ld c, l                                       ; $432d: $4d
    ld b, b                                       ; $432e: $40
    inc b                                         ; $432f: $04
    cp $c4                                        ; $4330: $fe $c4
    bit 0, b                                      ; $4332: $cb $40
    ld a, [hl+]                                   ; $4334: $2a
    adc l                                         ; $4335: $8d
    add l                                         ; $4336: $85
    cp l                                          ; $4337: $bd
    ld hl, $20bc                                  ; $4338: $21 $bc $20
    ei                                            ; $433b: $fb
    add hl, hl                                    ; $433c: $29
    ld h, $40                                     ; $433d: $26 $40
    jr c, jr_06e_437a                             ; $433f: $38 $39

    jr nz, jr_06e_42f9                            ; $4341: $20 $b6

    inc b                                         ; $4343: $04
    ld b, e                                       ; $4344: $43
    add [hl]                                      ; $4345: $86
    ld c, [hl]                                    ; $4346: $4e
    ld l, $0b                                     ; $4347: $2e $0b
    add d                                         ; $4349: $82
    add c                                         ; $434a: $81
    adc d                                         ; $434b: $8a
    ld [hl+], a                                   ; $434c: $22
    ld [$4189], sp                                ; $434d: $08 $89 $41
    ld b, h                                       ; $4350: $44
    ld b, b                                       ; $4351: $40

jr_06e_4352:
    cp b                                          ; $4352: $b8
    pop hl                                        ; $4353: $e1
    ld l, d                                       ; $4354: $6a
    dec b                                         ; $4355: $05
    ld hl, $28ba                                  ; $4356: $21 $ba $28
    xor [hl]                                      ; $4359: $ae
    pop hl                                        ; $435a: $e1
    cp [hl]                                       ; $435b: $be
    db $e3                                        ; $435c: $e3
    ld [$a5f9], sp                                ; $435d: $08 $f9 $a5
    ld b, b                                       ; $4360: $40
    db $e3                                        ; $4361: $e3
    dec hl                                        ; $4362: $2b
    add b                                         ; $4363: $80
    dec bc                                        ; $4364: $0b
    pop de                                        ; $4365: $d1
    ld bc, $435e                                  ; $4366: $01 $5e $43
    call nz, $fbe3                                ; $4369: $c4 $e3 $fb
    db $e3                                        ; $436c: $e3
    ld [hl], b                                    ; $436d: $70
    ld a, h                                       ; $436e: $7c
    ld a, [hl+]                                   ; $436f: $2a
    xor d                                         ; $4370: $aa
    ld h, c                                       ; $4371: $61
    rst $28                                       ; $4372: $ef
    nop                                           ; $4373: $00
    and d                                         ; $4374: $a2
    ld hl, $2b0b                                  ; $4375: $21 $0b $2b
    ld c, [hl]                                    ; $4378: $4e
    ld b, e                                       ; $4379: $43

jr_06e_437a:
    add $00                                       ; $437a: $c6 $00
    ld a, h                                       ; $437c: $7c
    add c                                         ; $437d: $81
    inc b                                         ; $437e: $04
    jr nz, @+$62                                  ; $437f: $20 $60

    ld [hl+], a                                   ; $4381: $22
    cp a                                          ; $4382: $bf
    db $e3                                        ; $4383: $e3
    cp [hl]                                       ; $4384: $be
    and $7a                                       ; $4385: $e6 $7a
    add d                                         ; $4387: $82
    jp nz, $b1e7                                  ; $4388: $c2 $e7 $b1

    ld [c], a                                     ; $438b: $e2
    nop                                           ; $438c: $00
    daa                                           ; $438d: $27
    ld [hl+], a                                   ; $438e: $22
    ld l, l                                       ; $438f: $6d
    nop                                           ; $4390: $00
    cp c                                          ; $4391: $b9
    and [hl]                                      ; $4392: $a6
    jp $cf04                                      ; $4393: $c3 $04 $cf


    ld [bc], a                                    ; $4396: $02
    adc d                                         ; $4397: $8a
    add c                                         ; $4398: $81
    ld a, a                                       ; $4399: $7f
    ld h, $ce                                     ; $439a: $26 $ce
    inc bc                                        ; $439c: $03
    ld b, b                                       ; $439d: $40
    jp nz, $72e7                                  ; $439e: $c2 $e7 $72

    push hl                                       ; $43a1: $e5
    ld hl, $2c20                                  ; $43a2: $21 $20 $2c
    nop                                           ; $43a5: $00
    or $81                                        ; $43a6: $f6 $81
    add b                                         ; $43a8: $80
    ld h, [hl]                                    ; $43a9: $66
    ld c, $bf                                     ; $43aa: $0e $bf
    ld [c], a                                     ; $43ac: $e2
    nop                                           ; $43ad: $00
    cp [hl]                                       ; $43ae: $be
    ld [c], a                                     ; $43af: $e2
    or [hl]                                       ; $43b0: $b6
    and h                                         ; $43b1: $a4
    ei                                            ; $43b2: $fb
    and $f0                                       ; $43b3: $e6 $f0
    ld h, h                                       ; $43b5: $64
    add e                                         ; $43b6: $83
    db $e3                                        ; $43b7: $e3
    ld a, b                                       ; $43b8: $78
    inc h                                         ; $43b9: $24
    ld hl, sp-$5e                                 ; $43ba: $f8 $a2
    or l                                          ; $43bc: $b5
    ld h, a                                       ; $43bd: $67
    nop                                           ; $43be: $00
    xor [hl]                                      ; $43bf: $ae
    ld b, d                                       ; $43c0: $42
    cp a                                          ; $43c1: $bf
    ld [c], a                                     ; $43c2: $e2
    ld a, [hl-]                                   ; $43c3: $3a
    db $e4                                        ; $43c4: $e4

Jump_06e_43c5:
    jp Jump_06e_4802                              ; $43c5: $c3 $02 $48


    add d                                         ; $43c8: $82
    halt                                          ; $43c9: $76
    daa                                           ; $43ca: $27
    ld [hl], c                                    ; $43cb: $71
    ld [$039f], sp                                ; $43cc: $08 $9f $03
    ld d, h                                       ; $43cf: $54
    or l                                          ; $43d0: $b5
    ld h, l                                       ; $43d1: $65
    ld l, [hl]                                    ; $43d2: $6e
    ld b, l                                       ; $43d3: $45
    ld c, [hl]                                    ; $43d4: $4e
    dec hl                                        ; $43d5: $2b
    add c                                         ; $43d6: $81
    dec c                                         ; $43d7: $0d
    ld hl, sp-$3d                                 ; $43d8: $f8 $c3
    dec bc                                        ; $43da: $0b
    cp [hl]                                       ; $43db: $be
    ld [bc], a                                    ; $43dc: $02
    nop                                           ; $43dd: $00
    add c                                         ; $43de: $81
    ld b, h                                       ; $43df: $44
    jp nz, Jump_000_33ec                          ; $43e0: $c2 $ec $33

    inc bc                                        ; $43e3: $03
    add b                                         ; $43e4: $80
    db $e4                                        ; $43e5: $e4
    cp [hl]                                       ; $43e6: $be
    add e                                         ; $43e7: $83
    inc sp                                        ; $43e8: $33
    and l                                         ; $43e9: $a5
    cp c                                          ; $43ea: $b9
    ret nz                                        ; $43eb: $c0

    ld b, b                                       ; $43ec: $40
    nop                                           ; $43ed: $00
    ld h, b                                       ; $43ee: $60
    scf                                           ; $43ef: $37
    ld h, c                                       ; $43f0: $61
    push bc                                       ; $43f1: $c5
    and $77                                       ; $43f2: $e6 $77
    ld [bc], a                                    ; $43f4: $02
    jp nz, $6aeb                                  ; $43f5: $c2 $eb $6a

    and c                                         ; $43f8: $a1
    dec c                                         ; $43f9: $0d
    dec hl                                        ; $43fa: $2b
    halt                                          ; $43fb: $76
    inc h                                         ; $43fc: $24
    adc [hl]                                      ; $43fd: $8e
    di                                            ; $43fe: $f3
    jr nz, @+$6f                                  ; $43ff: $20 $6d

    ld l, l                                       ; $4401: $6d
    ld l, l                                       ; $4402: $6d
    db $f4                                        ; $4403: $f4
    dec h                                         ; $4404: $25
    rst $30                                       ; $4405: $f7
    and b                                         ; $4406: $a0
    ld a, b                                       ; $4407: $78
    add c                                         ; $4408: $81
    dec bc                                        ; $4409: $0b
    ld [bc], a                                    ; $440a: $02
    inc a                                         ; $440b: $3c
    ld b, d                                       ; $440c: $42
    ld a, [hl+]                                   ; $440d: $2a
    scf                                           ; $440e: $37
    nop                                           ; $440f: $00
    add b                                         ; $4410: $80
    and c                                         ; $4411: $a1
    jp nz, $81ec                                  ; $4412: $c2 $ec $81

    ld [c], a                                     ; $4415: $e2
    halt                                          ; $4416: $76
    ld b, b                                       ; $4417: $40
    add l                                         ; $4418: $85
    dec b                                         ; $4419: $05
    nop                                           ; $441a: $00
    ld [hl], e                                    ; $441b: $73
    ld h, h                                       ; $441c: $64
    xor a                                         ; $441d: $af
    add e                                         ; $441e: $83
    cp a                                          ; $441f: $bf
    push hl                                       ; $4420: $e5
    call nz, $fdc6                                ; $4421: $c4 $c6 $fd
    rst $28                                       ; $4424: $ef
    sbc b                                         ; $4425: $98
    add c                                         ; $4426: $81
    add c                                         ; $4427: $81
    pop hl                                        ; $4428: $e1
    ret z                                         ; $4429: $c8

    ld h, b                                       ; $442a: $60
    add b                                         ; $442b: $80
    inc a                                         ; $442c: $3c
    add d                                         ; $442d: $82
    cp [hl]                                       ; $442e: $be
    ld h, l                                       ; $442f: $65
    inc [hl]                                      ; $4430: $34
    jr nz, jr_06e_4461                            ; $4431: $20 $2e

    add b                                         ; $4433: $80
    dec a                                         ; $4434: $3d
    pop hl                                        ; $4435: $e1
    ld a, l                                       ; $4436: $7d
    add $c1                                       ; $4437: $c6 $c1
    push af                                       ; $4439: $f5
    dec hl                                        ; $443a: $2b
    nop                                           ; $443b: $00
    cp b                                          ; $443c: $b8
    nop                                           ; $443d: $00
    adc b                                         ; $443e: $88
    ld h, c                                       ; $443f: $61
    inc [hl]                                      ; $4440: $34
    ld h, l                                       ; $4441: $65
    inc sp                                        ; $4442: $33
    ld [$2077], sp                                ; $4443: $08 $77 $20
    dec e                                         ; $4446: $1d
    add b                                         ; $4447: $80
    add l                                         ; $4448: $85
    db $f4                                        ; $4449: $f4
    push bc                                       ; $444a: $c5
    jp $b400                                      ; $444b: $c3 $00 $b4


    ret nz                                        ; $444e: $c0

    ld d, e                                       ; $444f: $53
    ld bc, $e8c0                                  ; $4450: $01 $c0 $e8
    xor l                                         ; $4453: $ad
    ld b, h                                       ; $4454: $44
    ld a, b                                       ; $4455: $78
    ld b, h                                       ; $4456: $44
    rst $10                                       ; $4457: $d7
    ld [bc], a                                    ; $4458: $02
    ret nz                                        ; $4459: $c0

    db $f4                                        ; $445a: $f4
    rst $28                                       ; $445b: $ef
    ld h, e                                       ; $445c: $63
    nop                                           ; $445d: $00
    pop bc                                        ; $445e: $c1
    ld [c], a                                     ; $445f: $e2

jr_06e_4460:
    push bc                                       ; $4460: $c5

jr_06e_4461:
    ld [hl+], a                                   ; $4461: $22
    ret nz                                        ; $4462: $c0

    and [hl]                                      ; $4463: $a6
    or a                                          ; $4464: $b7
    and $75                                       ; $4465: $e6 $75
    ld h, h                                       ; $4467: $64
    pop bc                                        ; $4468: $c1
    db $f4                                        ; $4469: $f4
    db $fd                                        ; $446a: $fd
    ld b, d                                       ; $446b: $42
    call nz, Call_000_00c0                        ; $446c: $c4 $c0 $00
    ld b, l                                       ; $446f: $45
    jp $c4bc                                      ; $4470: $c3 $bc $c4


    ld l, l                                       ; $4473: $6d
    add hl, hl                                    ; $4474: $29
    inc [hl]                                      ; $4475: $34
    add e                                         ; $4476: $83
    dec b                                         ; $4477: $05
    db $f4                                        ; $4478: $f4
    rst $00                                       ; $4479: $c7
    and c                                         ; $447a: $a1
    ret nz                                        ; $447b: $c0

    rst $20                                       ; $447c: $e7
    dec sp                                        ; $447d: $3b
    ld b, [hl]                                    ; $447e: $46
    nop                                           ; $447f: $00
    ld l, $04                                     ; $4480: $2e $04
    db $ec                                        ; $4482: $ec
    inc hl                                        ; $4483: $23
    inc [hl]                                      ; $4484: $34
    add [hl]                                      ; $4485: $86
    jp nz, Jump_000_06f1                          ; $4486: $c2 $f1 $06

    and b                                         ; $4489: $a0
    ld b, l                                       ; $448a: $45
    and d                                         ; $448b: $a2
    ret nz                                        ; $448c: $c0

    db $e3                                        ; $448d: $e3
    ret z                                         ; $448e: $c8

    add $80                                       ; $448f: $c6 $80
    db $ec                                        ; $4491: $ec
    ld a, [hl+]                                   ; $4492: $2a
    or [hl]                                       ; $4493: $b6
    nop                                           ; $4494: $00
    inc [hl]                                      ; $4495: $34
    add h                                         ; $4496: $84
    rlca                                          ; $4497: $07
    add l                                         ; $4498: $85
    cp d                                          ; $4499: $ba
    ld h, b                                       ; $449a: $60
    jp nz, Jump_06e_73e3                          ; $449b: $c2 $e3 $73

    ld h, c                                       ; $449e: $61
    ld l, e                                       ; $449f: $6b

Call_06e_44a0:
    inc bc                                        ; $44a0: $03
    dec hl                                        ; $44a1: $2b
    dec l                                         ; $44a2: $2d
    ld b, b                                       ; $44a3: $40
    db $e4                                        ; $44a4: $e4
    ld b, b                                       ; $44a5: $40
    ld b, $6e                                     ; $44a6: $06 $6e
    inc b                                         ; $44a8: $04
    scf                                           ; $44a9: $37
    ld b, d                                       ; $44aa: $42
    or $82                                        ; $44ab: $f6 $82
    inc [hl]                                      ; $44ad: $34
    add e                                         ; $44ae: $83
    ld [c], a                                     ; $44af: $e2
    cp e                                          ; $44b0: $bb
    call nz, $fe4b                                ; $44b1: $c4 $4b $fe
    ldh [$c2], a                                  ; $44b4: $e0 $c2
    db $e4                                        ; $44b6: $e4
    add b                                         ; $44b7: $80
    ld [c], a                                     ; $44b8: $e2
    dec hl                                        ; $44b9: $2b
    dec l                                         ; $44ba: $2d
    dec l                                         ; $44bb: $2d
    nop                                           ; $44bc: $00
    jr jr_06e_4460                                ; $44bd: $18 $a1

    ret nz                                        ; $44bf: $c0

    ret z                                         ; $44c0: $c8

    ld a, e                                       ; $44c1: $7b
    ld b, e                                       ; $44c2: $43
    ld hl, sp-$19                                 ; $44c3: $f8 $e7
    inc [hl]                                      ; $44c5: $34
    nop                                           ; $44c6: $00
    or c                                          ; $44c7: $b1
    ld h, c                                       ; $44c8: $61
    halt                                          ; $44c9: $76
    add [hl]                                      ; $44ca: $86
    cp b                                          ; $44cb: $b8
    ld b, e                                       ; $44cc: $43
    dec bc                                        ; $44cd: $0b
    ld l, e                                       ; $44ce: $6b
    dec l                                         ; $44cf: $2d
    add b                                         ; $44d0: $80
    db $e3                                        ; $44d1: $e3
    ld c, e                                       ; $44d2: $4b
    ret nz                                        ; $44d3: $c0

    pop hl                                        ; $44d4: $e1
    pop bc                                        ; $44d5: $c1
    jp $e742                                      ; $44d6: $c3 $42 $e7


    ret nz                                        ; $44d9: $c0

    add sp, $00                                   ; $44da: $e8 $00
    add sp, $20                                   ; $44dc: $e8 $20
    or c                                          ; $44de: $b1
    ld h, d                                       ; $44df: $62
    ld [hl], l                                    ; $44e0: $75
    ld h, b                                       ; $44e1: $60
    pop bc                                        ; $44e2: $c1
    push hl                                       ; $44e3: $e5
    or $e2                                        ; $44e4: $f6 $e2
    add b                                         ; $44e6: $80
    db $e3                                        ; $44e7: $e3
    dec de                                        ; $44e8: $1b
    ld b, b                                       ; $44e9: $40
    inc d                                         ; $44ea: $14
    ld hl, $7b10                                  ; $44eb: $21 $10 $7b
    ld bc, $4afd                                  ; $44ee: $01 $fd $4a
    ei                                            ; $44f1: $fb
    add $b0                                       ; $44f2: $c6 $b0
    inc h                                         ; $44f4: $24
    dec c                                         ; $44f5: $0d
    ld d, d                                       ; $44f6: $52
    jr nz, jr_06e_4553                            ; $44f7: $20 $5a

Call_06e_44f9:
    add c                                         ; $44f9: $81
    ccf                                           ; $44fa: $3f
    ld [c], a                                     ; $44fb: $e2
    nop                                           ; $44fc: $00
    or $e1                                        ; $44fd: $f6 $e1
    add d                                         ; $44ff: $82
    pop hl                                        ; $4500: $e1
    inc b                                         ; $4501: $04
    ld h, b                                       ; $4502: $60
    add [hl]                                      ; $4503: $86
    add d                                         ; $4504: $82
    inc c                                         ; $4505: $0c
    ld hl, $0285                                  ; $4506: $21 $85 $02
    cp d                                          ; $4509: $ba
    inc hl                                        ; $450a: $23
    rst $38                                       ; $450b: $ff
    add l                                         ; $450c: $85
    nop                                           ; $450d: $00
    ld l, l                                       ; $450e: $6d
    ld b, e                                       ; $450f: $43
    ld a, e                                       ; $4510: $7b
    and h                                         ; $4511: $a4
    cp c                                          ; $4512: $b9
    and b                                         ; $4513: $a0
    rst $00                                       ; $4514: $c7
    pop bc                                        ; $4515: $c1
    ld de, $bd60                                  ; $4516: $11 $60 $bd
    ld hl, $e3f6                                  ; $4519: $21 $f6 $e3
    ld b, e                                       ; $451c: $43
    and e                                         ; $451d: $a3
    inc b                                         ; $451e: $04
    ret nz                                        ; $451f: $c0

    pop hl                                        ; $4520: $e1
    add c                                         ; $4521: $81
    and c                                         ; $4522: $a1
    ld l, $c0                                     ; $4523: $2e $c0
    push hl                                       ; $4525: $e5
    rst $38                                       ; $4526: $ff
    add l                                         ; $4527: $85
    or d                                          ; $4528: $b2
    ld h, a                                       ; $4529: $67
    ret nz                                        ; $452a: $c0

    ld [c], a                                     ; $452b: $e2
    sub e                                         ; $452c: $93
    ld hl, $3c00                                  ; $452d: $21 $00 $3c
    ld h, a                                       ; $4530: $67
    ld [hl-], a                                   ; $4531: $32
    ld h, c                                       ; $4532: $61
    add c                                         ; $4533: $81
    ld b, e                                       ; $4534: $43
    push bc                                       ; $4535: $c5
    add d                                         ; $4536: $82
    ld b, b                                       ; $4537: $40
    db $e3                                        ; $4538: $e3
    add a                                         ; $4539: $87
    and h                                         ; $453a: $a4
    add b                                         ; $453b: $80
    and $32                                       ; $453c: $e6 $32
    ld h, a                                       ; $453e: $67
    nop                                           ; $453f: $00
    jr jr_06e_4562                                ; $4540: $18 $20

    cp c                                          ; $4542: $b9
    and [hl]                                      ; $4543: $a6
    ld a, $84                                     ; $4544: $3e $84
    cp e                                          ; $4546: $bb
    jp $a204                                      ; $4547: $c3 $04 $a2


    pop bc                                        ; $454a: $c1
    and e                                         ; $454b: $a3
    cp l                                          ; $454c: $bd
    add [hl]                                      ; $454d: $86
    ld a, d                                       ; $454e: $7a
    xor d                                         ; $454f: $aa
    nop                                           ; $4550: $00
    ld [hl-], a                                   ; $4551: $32
    ld h, h                                       ; $4552: $64

jr_06e_4553:
    rst $10                                       ; $4553: $d7
    jr nz, jr_06e_455e                            ; $4554: $20 $08

    pop bc                                        ; $4556: $c1
    ld d, c                                       ; $4557: $51
    ld b, b                                       ; $4558: $40
    db $fd                                        ; $4559: $fd
    pop hl                                        ; $455a: $e1
    push af                                       ; $455b: $f5
    push hl                                       ; $455c: $e5
    sub e                                         ; $455d: $93

jr_06e_455e:
    and b                                         ; $455e: $a0
    push bc                                       ; $455f: $c5
    add e                                         ; $4560: $83
    adc b                                         ; $4561: $88

jr_06e_4562:
    rst $00                                       ; $4562: $c7
    add sp, -$0a                                  ; $4563: $e8 $f6
    ld a, [c]                                     ; $4565: $f2
    cp a                                          ; $4566: $bf
    ldh [$0d], a                                  ; $4567: $e0 $0d
    adc a                                         ; $4569: $8f
    ld bc, $207d                                  ; $456a: $01 $7d $20
    ld h, c                                       ; $456d: $61
    and b                                         ; $456e: $a0
    ld l, $00                                     ; $456f: $2e $00
    ld sp, hl                                     ; $4571: $f9
    pop bc                                        ; $4572: $c1
    ld [hl], d                                    ; $4573: $72
    ld hl, $e3c1                                  ; $4574: $21 $c1 $e3
    ret nz                                        ; $4577: $c0

    push af                                       ; $4578: $f5
    dec hl                                        ; $4579: $2b
    inc hl                                        ; $457a: $23
    xor c                                         ; $457b: $a9
    inc bc                                        ; $457c: $03
    pop af                                        ; $457d: $f1
    ld b, b                                       ; $457e: $40
    cp $e4                                        ; $457f: $fe $e4
    ld bc, $f36e                                  ; $4581: $01 $6e $f3
    db $ec                                        ; $4584: $ec
    rst $00                                       ; $4585: $c7
    add h                                         ; $4586: $84
    inc a                                         ; $4587: $3c
    jp nz, $cb3b                                  ; $4588: $c2 $3b $cb

    ld l, e                                       ; $458b: $6b
    ld [bc], a                                    ; $458c: $02
    or e                                          ; $458d: $b3
    ld h, h                                       ; $458e: $64
    daa                                           ; $458f: $27
    rst $28                                       ; $4590: $ef
    nop                                           ; $4591: $00
    ld e, $c4                                     ; $4592: $1e $c4
    ld b, $a2                                     ; $4594: $06 $a2
    sub l                                         ; $4596: $95
    ld b, c                                       ; $4597: $41
    inc a                                         ; $4598: $3c
    rst $28                                       ; $4599: $ef
    ld a, [hl-]                                   ; $459a: $3a
    and l                                         ; $459b: $a5
    ld [hl], c                                    ; $459c: $71
    and e                                         ; $459d: $a3
    sbc a                                         ; $459e: $9f
    and l                                         ; $459f: $a5
    inc de                                        ; $45a0: $13
    rst $20                                       ; $45a1: $e7
    nop                                           ; $45a2: $00
    ld d, c                                       ; $45a3: $51
    ld h, d                                       ; $45a4: $62
    ld c, c                                       ; $45a5: $49
    ld h, d                                       ; $45a6: $62
    add e                                         ; $45a7: $83
    add $00                                       ; $45a8: $c6 $00
    nop                                           ; $45aa: $00
    nop                                           ; $45ab: $00
    db $dd                                        ; $45ac: $dd
    and b                                         ; $45ad: $a0
    rst $38                                       ; $45ae: $ff
    ld [c], a                                     ; $45af: $e2
    reti                                          ; $45b0: $d9


    jp c, $f7db                                   ; $45b1: $da $db $f7

    pop hl                                        ; $45b4: $e1
    call nc, $1dd5                                ; $45b5: $d4 $d5 $1d
    call nc, $e0f0                                ; $45b8: $d4 $f0 $e0
    call c, $dedd                                 ; $45bb: $dc $dd $de
    ld [$e7e3], a                                 ; $45be: $ea $e3 $e7
    db $e4                                        ; $45c1: $e4
    ld [$78e3], a                                 ; $45c2: $ea $e3 $78
    call c, $fce5                                 ; $45c5: $dc $e5 $fc
    ld a, [c]                                     ; $45c8: $f2
    call $a0e9                                    ; $45c9: $cd $e9 $a0
    rst $18                                       ; $45cc: $df
    ldh [$e1], a                                  ; $45cd: $e0 $e1
    or l                                          ; $45cf: $b5

Jump_06e_45d0:
    ldh [$80], a                                  ; $45d0: $e0 $80
    call z, $b4e2                                 ; $45d2: $cc $e2 $b4
    db $e4                                        ; $45d5: $e4
    xor b                                         ; $45d6: $a8
    ld [c], a                                     ; $45d7: $e2
    xor c                                         ; $45d8: $a9
    db $e4                                        ; $45d9: $e4
    or d                                          ; $45da: $b2
    db $e4                                        ; $45db: $e4
    or l                                          ; $45dc: $b5
    db $eb                                        ; $45dd: $eb
    call $9fe1                                    ; $45de: $cd $e1 $9f
    add l                                         ; $45e1: $85
    sbc l                                         ; $45e2: $9d
    rst $38                                       ; $45e3: $ff
    pop hl                                        ; $45e4: $e1
    sbc a                                         ; $45e5: $9f
    add $e5                                       ; $45e6: $c6 $e5
    ld [hl], d                                    ; $45e8: $72
    db $e3                                        ; $45e9: $e3
    or h                                          ; $45ea: $b4
    add sp, -$57                                  ; $45eb: $e8 $a9
    ld [c], a                                     ; $45ed: $e2
    ld [c], a                                     ; $45ee: $e2
    db $fd                                        ; $45ef: $fd
    db $e3                                        ; $45f0: $e3
    ld a, h                                       ; $45f1: $7c
    push af                                       ; $45f2: $f5
    sbc a                                         ; $45f3: $9f
    sbc h                                         ; $45f4: $9c
    ld b, [hl]                                    ; $45f5: $46
    ld a, c                                       ; $45f6: $79
    ld a, d                                       ; $45f7: $7a
    ld a, h                                       ; $45f8: $7c
    add a                                         ; $45f9: $87
    ld a, l                                       ; $45fa: $7d
    sbc h                                         ; $45fb: $9c
    sbc a                                         ; $45fc: $9f
    ld a, [c]                                     ; $45fd: $f2
    db $e3                                        ; $45fe: $e3
    or l                                          ; $45ff: $b5
    ld [c], a                                     ; $4600: $e2
    ld d, b                                       ; $4601: $50
    add sp, $70                                   ; $4602: $e8 $70
    db $e4                                        ; $4604: $e4
    db $e4                                        ; $4605: $e4
    rra                                           ; $4606: $1f
    push hl                                       ; $4607: $e5

Jump_06e_4608:
    and b                                         ; $4608: $a0
    sub $d7                                       ; $4609: $d6 $d7
    ret c                                         ; $460b: $d8

    dec bc                                        ; $460c: $0b
    ld [c], a                                     ; $460d: $e2
    or l                                          ; $460e: $b5
    rst $20                                       ; $460f: $e7
    ld d, h                                       ; $4610: $54
    ld [c], a                                     ; $4611: $e2
    rst $38                                       ; $4612: $ff
    sbc [hl]                                      ; $4613: $9e
    ld b, [hl]                                    ; $4614: $46
    ld a, c                                       ; $4615: $79
    ld a, [hl]                                    ; $4616: $7e
    ld a, [hl+]                                   ; $4617: $2a
    ld a, [hl+]                                   ; $4618: $2a
    add c                                         ; $4619: $81
    jp $9c3d                                      ; $461a: $c3 $3d $9c


    ld a, c                                       ; $461d: $79
    ld [c], a                                     ; $461e: $e2
    sbc h                                         ; $461f: $9c
    ld b, [hl]                                    ; $4620: $46
    xor [hl]                                      ; $4621: $ae
    ld b, [hl]                                    ; $4622: $46
    or $e3                                        ; $4623: $f6 $e3
    ei                                            ; $4625: $fb
    add sp, $06                                   ; $4626: $e8 $06
    and l                                         ; $4628: $a5
    ldh [$e6], a                                  ; $4629: $e0 $e6
    rst $20                                       ; $462b: $e7
    db $ed                                        ; $462c: $ed
    jp $c0d8                                      ; $462d: $c3 $d8 $c0


    or l                                          ; $4630: $b5
    ldh [$d9], a                                  ; $4631: $e0 $d9
    add $69                                       ; $4633: $c6 $69
    ldh [$c5], a                                  ; $4635: $e0 $c5
    sbc [hl]                                      ; $4637: $9e
    pop bc                                        ; $4638: $c1

Jump_06e_4639:
    ldh [rNR41], a                                ; $4639: $e0 $20
    ret nz                                        ; $463b: $c0

    ldh [$c7], a                                  ; $463c: $e0 $c7
    ldh [rIE], a                                  ; $463e: $e0 $ff

Call_06e_4640:
    pop hl                                        ; $4640: $e1
    xor [hl]                                      ; $4641: $ae
    xor a                                         ; $4642: $af
    nop                                           ; $4643: $00
    ld hl, sp-$1c                                 ; $4644: $f8 $e4
    ld a, [c]                                     ; $4646: $f2
    ld [c], a                                     ; $4647: $e2
    or $e3                                        ; $4648: $f6 $e3
    ld h, h                                       ; $464a: $64
    db $e3                                        ; $464b: $e3
    and c                                         ; $464c: $a1
    push bc                                       ; $464d: $c5
    or l                                          ; $464e: $b5
    ldh [$99], a                                  ; $464f: $e0 $99
    add $69                                       ; $4651: $c6 $69
    ldh [rIE], a                                  ; $4653: $e0 $ff
    sbc [hl]                                      ; $4655: $9e
    add d                                         ; $4656: $82
    add e                                         ; $4657: $83
    cpl                                           ; $4658: $2f
    ld a, [hl+]                                   ; $4659: $2a
    add e                                         ; $465a: $83
    add h                                         ; $465b: $84
    jp $c7ee                                      ; $465c: $c3 $ee $c7


    db $e4                                        ; $465f: $e4
    xor a                                         ; $4660: $af
    xor [hl]                                      ; $4661: $ae
    xor a                                         ; $4662: $af
    cp b                                          ; $4663: $b8
    ldh [rLYC], a                                 ; $4664: $e0 $45
    ld b, e                                       ; $4666: $43
    xor a                                         ; $4667: $af
    adc a                                         ; $4668: $8f
    ccf                                           ; $4669: $3f
    ld b, c                                       ; $466a: $41
    ld b, e                                       ; $466b: $43
    ld b, l                                       ; $466c: $45
    xor h                                         ; $466d: $ac
    ld [c], a                                     ; $466e: $e2
    xor a                                         ; $466f: $af
    ldh [$64], a                                  ; $4670: $e0 $64
    ldh [$9f], a                                  ; $4672: $e0 $9f
    ld hl, sp-$5f                                 ; $4674: $f8 $a1
    jp $cc76                                      ; $4676: $c3 $76 $cc


    ld l, c                                       ; $4679: $69

jr_06e_467a:
    ldh [$9e], a                                  ; $467a: $e0 $9e
    add l                                         ; $467c: $85
    add a                                         ; $467d: $87
    adc b                                         ; $467e: $88
    adc b                                         ; $467f: $88
    db $e3                                        ; $4680: $e3
    add a                                         ; $4681: $87
    add l                                         ; $4682: $85

Jump_06e_4683:
    adc b                                         ; $4683: $88
    ldh [$c7], a                                  ; $4684: $e0 $c7
    pop hl                                        ; $4686: $e1
    cp a                                          ; $4687: $bf
    ldh [$3f], a                                  ; $4688: $e0 $3f
    scf                                           ; $468a: $37
    dec a                                         ; $468b: $3d
    rst $38                                       ; $468c: $ff
    dec a                                         ; $468d: $3d
    jr c, jr_06e_46cb                             ; $468e: $38 $3b

    dec [hl]                                      ; $4690: $35
    dec [hl]                                      ; $4691: $35
    dec [hl]                                      ; $4692: $35
    dec sp                                        ; $4693: $3b
    jr c, jr_06e_4715                             ; $4694: $38 $7f

    scf                                           ; $4696: $37
    xor a                                         ; $4697: $af
    ccf                                           ; $4698: $3f
    ccf                                           ; $4699: $3f
    ld b, c                                       ; $469a: $41
    ld b, l                                       ; $469b: $45
    xor a                                         ; $469c: $af
    ld h, l                                       ; $469d: $65
    pop hl                                        ; $469e: $e1
    ld hl, sp-$20                                 ; $469f: $f8 $e0
    call nz, $c9e6                                ; $46a1: $c4 $e6 $c9
    ld hl, $9fc3                                  ; $46a4: $21 $c3 $9f
    ret nc                                        ; $46a7: $d0

    jp $aec3                                      ; $46a8: $c3 $c3 $ae


    inc e                                         ; $46ab: $1c
    add d                                         ; $46ac: $82
    pop hl                                        ; $46ad: $e1
    adc b                                         ; $46ae: $88
    ld [c], a                                     ; $46af: $e2
    ccf                                           ; $46b0: $3f
    scf                                           ; $46b1: $37
    jr c, jr_06e_467a                             ; $46b2: $38 $c6

    ldh [$c4], a                                  ; $46b4: $e0 $c4
    ldh [rIE], a                                  ; $46b6: $e0 $ff
    pop hl                                        ; $46b8: $e1
    ld e, $f6                                     ; $46b9: $1e $f6
    ld [c], a                                     ; $46bb: $e2
    dec [hl]                                      ; $46bc: $35
    jr c, jr_06e_46fc                             ; $46bd: $38 $3d

    scf                                           ; $46bf: $37
    ld l, l                                       ; $46c0: $6d
    pop hl                                        ; $46c1: $e1
    sbc a                                         ; $46c2: $9f
    ret nz                                        ; $46c3: $c0

    dec a                                         ; $46c4: $3d
    call $c9a6                                    ; $46c5: $cd $a6 $c9
    and e                                         ; $46c8: $a3
    db $d3                                        ; $46c9: $d3
    ret nc                                        ; $46ca: $d0

jr_06e_46cb:
    add h                                         ; $46cb: $84
    pop hl                                        ; $46cc: $e1
    ld [$45e1], sp                                ; $46cd: $08 $e1 $45
    jp Jump_000_38e2                              ; $46d0: $c3 $e2 $38


    ld e, a                                       ; $46d3: $5f
    dec a                                         ; $46d4: $3d
    dec a                                         ; $46d5: $3d
    scf                                           ; $46d6: $37
    ld b, c                                       ; $46d7: $41
    ld b, e                                       ; $46d8: $43
    rst $38                                       ; $46d9: $ff
    pop hl                                        ; $46da: $e1
    ld b, c                                       ; $46db: $41
    halt                                          ; $46dc: $76
    push hl                                       ; $46dd: $e5
    ld b, e                                       ; $46de: $43
    jr c, jr_06e_4718                             ; $46df: $38 $37

    dec [hl]                                      ; $46e1: $35
    ldh [$7e], a                                  ; $46e2: $e0 $7e
    db $eb                                        ; $46e4: $eb
    cpl                                           ; $46e5: $2f
    ret nz                                        ; $46e6: $c0

    rrca                                          ; $46e7: $0f
    push bc                                       ; $46e8: $c5
    jp nc, $e3c1                                  ; $46e9: $d2 $c1 $e3

    sbc c                                         ; $46ec: $99
    xor a                                         ; $46ed: $af
    add l                                         ; $46ee: $85
    ldh [$94], a                                  ; $46ef: $e0 $94
    ldh [rSTAT], a                                ; $46f1: $e0 $41
    ld b, l                                       ; $46f3: $45
    add $c6                                       ; $46f4: $c6 $c6
    xor a                                         ; $46f6: $af
    pop bc                                        ; $46f7: $c1
    ld b, l                                       ; $46f8: $45
    ld a, l                                       ; $46f9: $7d
    ld b, e                                       ; $46fa: $43
    ld l, [hl]                                    ; $46fb: $6e

jr_06e_46fc:
    ld [c], a                                     ; $46fc: $e2
    ld [hl], $45                                  ; $46fd: $36 $45
    xor a                                         ; $46ff: $af
    xor [hl]                                      ; $4700: $ae
    sbc [hl]                                      ; $4701: $9e
    set 4, e                                      ; $4702: $cb $e3
    add sp, $38                                   ; $4704: $e8 $38
    jp $c47a                                      ; $4706: $c3 $7a $c4


    dec hl                                        ; $4709: $2b
    pop bc                                        ; $470a: $c1
    sbc [hl]                                      ; $470b: $9e
    set 0, c                                      ; $470c: $cb $c1
    xor [hl]                                      ; $470e: $ae
    xor a                                         ; $470f: $af
    ld [hl], $e2                                  ; $4710: $36 $e2
    sbc c                                         ; $4712: $99
    pop hl                                        ; $4713: $e1
    ld b, e                                       ; $4714: $43

jr_06e_4715:
    set 0, b                                      ; $4715: $cb $c0
    rst $38                                       ; $4717: $ff

jr_06e_4718:
    db $ed                                        ; $4718: $ed
    ld l, c                                       ; $4719: $69
    ld [c], a                                     ; $471a: $e2
    add hl, sp                                    ; $471b: $39
    xor [hl]                                      ; $471c: $ae
    xor a                                         ; $471d: $af
    and c                                         ; $471e: $a1
    sbc [hl]                                      ; $471f: $9e
    ld b, l                                       ; $4720: $45
    jp $a30c                                      ; $4721: $c3 $0c $a3


    ld a, d                                       ; $4724: $7a
    call nz, $81ff                                ; $4725: $c4 $ff $81
    sbc [hl]                                      ; $4728: $9e
    adc d                                         ; $4729: $8a
    ret nz                                        ; $472a: $c0

    ld b, [hl]                                    ; $472b: $46
    cp $c1                                        ; $472c: $fe $c1
    ldh [$36], a                                  ; $472e: $e0 $36
    ld c, b                                       ; $4730: $48
    ld c, [hl]                                    ; $4731: $4e
    ld c, c                                       ; $4732: $49
    ld c, h                                       ; $4733: $4c
    ld c, h                                       ; $4734: $4c
    ld c, c                                       ; $4735: $49
    db $db                                        ; $4736: $db
    ld c, [hl]                                    ; $4737: $4e
    ld c, b                                       ; $4738: $48
    cp l                                          ; $4739: $bd
    db $ed                                        ; $473a: $ed
    ld b, l                                       ; $473b: $45
    ld [hl], $c0                                  ; $473c: $36 $c0
    ldh [$af], a                                  ; $473e: $e0 $af
    ret nc                                        ; $4740: $d0

    pop bc                                        ; $4741: $c1
    sbc a                                         ; $4742: $9f
    ld b, l                                       ; $4743: $45
    jp $aa0c                                      ; $4744: $c3 $0c $aa


    call z, $c081                                 ; $4747: $cc $81 $c0
    ldh [$dd], a                                  ; $474a: $e0 $dd
    pop hl                                        ; $474c: $e1
    ld [hl], $47                                  ; $474d: $36 $47
    sbc e                                         ; $474f: $9b
    ld h, b                                       ; $4750: $60
    ld h, c                                       ; $4751: $61
    rst $38                                       ; $4752: $ff
    ld [c], a                                     ; $4753: $e2
    ld h, b                                       ; $4754: $60
    ld c, c                                       ; $4755: $49
    cp [hl]                                       ; $4756: $be
    db $eb                                        ; $4757: $eb
    pop bc                                        ; $4758: $c1
    pop hl                                        ; $4759: $e1
    ld [hl], $e7                                  ; $475a: $36 $e7
    ld b, l                                       ; $475c: $45
    ret nc                                        ; $475d: $d0

    db $d3                                        ; $475e: $d3
    reti                                          ; $475f: $d9


    adc c                                         ; $4760: $89
    call z, $9e89                                 ; $4761: $cc $89 $9e
    ld b, [hl]                                    ; $4764: $46
    xor [hl]                                      ; $4765: $ae
    db $e4                                        ; $4766: $e4
    pop bc                                        ; $4767: $c1
    jp hl                                         ; $4768: $e9


    cp [hl]                                       ; $4769: $be
    pop hl                                        ; $476a: $e1
    ld b, a                                       ; $476b: $47
    ei                                            ; $476c: $fb
    rst $00                                       ; $476d: $c7
    nop                                           ; $476e: $00
    ld [c], a                                     ; $476f: $e2
    ld [hl], $45                                  ; $4770: $36 $45
    ld b, [hl]                                    ; $4772: $46
    ld sp, $bbd2                                  ; $4773: $31 $d2 $bb
    adc e                                         ; $4776: $8b
    ld [hl-], a                                   ; $4777: $32
    and d                                         ; $4778: $a2
    sub e                                         ; $4779: $93
    add d                                         ; $477a: $82
    sbc a                                         ; $477b: $9f
    sbc h                                         ; $477c: $9c
    inc b                                         ; $477d: $04
    pop hl                                        ; $477e: $e1
    pop bc                                        ; $477f: $c1
    jp hl                                         ; $4780: $e9


    ld [$e079], a                                 ; $4781: $ea $79 $e0
    ld d, d                                       ; $4784: $52
    cp d                                          ; $4785: $ba
    add $39                                       ; $4786: $c6 $39
    or $a0                                        ; $4788: $f6 $a0
    ld a, [hl-]                                   ; $478a: $3a
    xor [hl]                                      ; $478b: $ae
    ld b, [hl]                                    ; $478c: $46
    add e                                         ; $478d: $83
    ret nc                                        ; $478e: $d0

    sbc a                                         ; $478f: $9f
    nop                                           ; $4790: $00
    and e                                         ; $4791: $a3
    ld a, c                                       ; $4792: $79
    add l                                         ; $4793: $85
    ld a, [hl+]                                   ; $4794: $2a
    add [hl]                                      ; $4795: $86
    pop bc                                        ; $4796: $c1
    ld a, [c]                                     ; $4797: $f2
    cp a                                          ; $4798: $bf
    add sp, $45                                   ; $4799: $e8 $45
    dec b                                         ; $479b: $05
    ld a, [hl-]                                   ; $479c: $3a
    inc bc                                        ; $479d: $03
    ld [c], a                                     ; $479e: $e2
    db $d3                                        ; $479f: $d3
    call nc, Call_000_2163                        ; $47a0: $d4 $63 $21
    add e                                         ; $47a3: $83
    ld [hl], d                                    ; $47a4: $72
    add b                                         ; $47a5: $80
    db $d3                                        ; $47a6: $d3
    ld h, d                                       ; $47a7: $62
    ld l, d                                       ; $47a8: $6a
    add b                                         ; $47a9: $80
    db $fc                                        ; $47aa: $fc
    add c                                         ; $47ab: $81
    add b                                         ; $47ac: $80
    add [hl]                                      ; $47ad: $86
    ret nz                                        ; $47ae: $c0

    ld a, [hl-]                                   ; $47af: $3a
    ld c, d                                       ; $47b0: $4a
    ld h, b                                       ; $47b1: $60
    ld d, h                                       ; $47b2: $54
    ld e, c                                       ; $47b3: $59
    ld d, h                                       ; $47b4: $54
    inc [hl]                                      ; $47b5: $34
    ld bc, $f8e2                                  ; $47b6: $01 $e2 $f8
    push hl                                       ; $47b9: $e5
    ld d, l                                       ; $47ba: $55
    ld a, a                                       ; $47bb: $7f
    rst $20                                       ; $47bc: $e7
    inc a                                         ; $47bd: $3c
    ld b, h                                       ; $47be: $44
    ld b, d                                       ; $47bf: $42

Jump_06e_47c0:
    pop hl                                        ; $47c0: $e1
    and c                                         ; $47c1: $a1
    ld l, b                                       ; $47c2: $68
    ldh a, [$72]                                  ; $47c3: $f0 $72
    add b                                         ; $47c5: $80
    db $d3                                        ; $47c6: $d3
    ld h, d                                       ; $47c7: $62
    ld bc, $a2a1                                  ; $47c8: $01 $a1 $a2
    jp $564b                                      ; $47cb: $c3 $4b $56


    ld b, l                                       ; $47ce: $45
    ld b, [hl]                                    ; $47cf: $46
    dec de                                        ; $47d0: $1b
    ld b, l                                       ; $47d1: $45
    ld d, [hl]                                    ; $47d2: $56
    ld b, a                                       ; $47d3: $47
    db $e3                                        ; $47d4: $e3
    ld b, l                                       ; $47d5: $45
    ld d, d                                       ; $47d6: $52
    cp b                                          ; $47d7: $b8
    pop bc                                        ; $47d8: $c1
    rst $28                                       ; $47d9: $ef
    ldh [$bd], a                                  ; $47da: $e0 $bd
    add e                                         ; $47dc: $83
    ccf                                           ; $47dd: $3f
    ld b, d                                       ; $47de: $42
    dec [hl]                                      ; $47df: $35
    ld a, [hl-]                                   ; $47e0: $3a
    ld b, l                                       ; $47e1: $45
    ld b, [hl]                                    ; $47e2: $46
    sbc [hl]                                      ; $47e3: $9e
    ret z                                         ; $47e4: $c8

    push bc                                       ; $47e5: $c5
    and b                                         ; $47e6: $a0
    ld h, d                                       ; $47e7: $62
    ld hl, sp-$43                                 ; $47e8: $f8 $bd
    add l                                         ; $47ea: $85
    ld bc, $1fa1                                  ; $47eb: $01 $a1 $1f
    pop hl                                        ; $47ee: $e1
    inc a                                         ; $47ef: $3c
    ld c, d                                       ; $47f0: $4a
    ld h, b                                       ; $47f1: $60
    ld d, l                                       ; $47f2: $55
    ld b, l                                       ; $47f3: $45
    ld h, a                                       ; $47f4: $67

jr_06e_47f5:
    ld b, l                                       ; $47f5: $45
    ld b, [hl]                                    ; $47f6: $46
    ld c, a                                       ; $47f7: $4f
    jp z, $f8e1                                   ; $47f8: $ca $e1 $f8

    ldh [rHDMA1], a                               ; $47fb: $e0 $51
    ld e, [hl]                                    ; $47fd: $5e
    ld [hl], a                                    ; $47fe: $77
    pop bc                                        ; $47ff: $c1
    ld l, e                                       ; $4800: $6b
    ld e, h                                       ; $4801: $5c

Jump_06e_4802:
    ld d, b                                       ; $4802: $50
    ld a, e                                       ; $4803: $7b
    and b                                         ; $4804: $a0
    ld d, b                                       ; $4805: $50
    pop bc                                        ; $4806: $c1
    and c                                         ; $4807: $a1
    add hl, sp                                    ; $4808: $39
    ld b, [hl]                                    ; $4809: $46
    ret nz                                        ; $480a: $c0

    pop hl                                        ; $480b: $e1
    db $ec                                        ; $480c: $ec
    dec b                                         ; $480d: $05
    adc d                                         ; $480e: $8a
    rla                                           ; $480f: $17
    ld h, [hl]                                    ; $4810: $66
    sbc [hl]                                      ; $4811: $9e
    xor [hl]                                      ; $4812: $ae
    jr nz, jr_06e_47f5                            ; $4813: $20 $e0

    ld a, [hl-]                                   ; $4815: $3a
    ld c, a                                       ; $4816: $4f
    ld h, c                                       ; $4817: $61
    ld l, l                                       ; $4818: $6d
    ld e, h                                       ; $4819: $5c
    ret nz                                        ; $481a: $c0

    db $e3                                        ; $481b: $e3
    ld e, d                                       ; $481c: $5a
    ld b, [hl]                                    ; $481d: $46
    cp b                                          ; $481e: $b8
    ldh [rLY], a                                  ; $481f: $e0 $44
    ld c, l                                       ; $4821: $4d
    ccf                                           ; $4822: $3f
    ld [c], a                                     ; $4823: $e2
    ld a, a                                       ; $4824: $7f
    ld e, a                                       ; $4825: $5f
    ld c, h                                       ; $4826: $4c
    ld c, h                                       ; $4827: $4c
    ld c, h                                       ; $4828: $4c
    ld e, l                                       ; $4829: $5d
    ld d, [hl]                                    ; $482a: $56
    ld a, [hl-]                                   ; $482b: $3a
    add c                                         ; $482c: $81
    pop hl                                        ; $482d: $e1
    ret c                                         ; $482e: $d8

    add b                                         ; $482f: $80
    ldh [rTIMA], a                                ; $4830: $e0 $05
    adc l                                         ; $4832: $8d
    ret                                           ; $4833: $c9


    ld b, h                                       ; $4834: $44
    sbc [hl]                                      ; $4835: $9e
    xor a                                         ; $4836: $af
    ldh [$c0], a                                  ; $4837: $e0 $c0
    ld a, $4b                                     ; $4839: $3e $4b
    ld b, e                                       ; $483b: $43
    ld e, b                                       ; $483c: $58
    ld b, h                                       ; $483d: $44
    ld [bc], a                                    ; $483e: $02
    add b                                         ; $483f: $80
    ret nz                                        ; $4840: $c0

    ld [c], a                                     ; $4841: $e2
    ld a, [$c060]                                 ; $4842: $fa $60 $c0
    db $e3                                        ; $4845: $e3
    ld e, d                                       ; $4846: $5a
    cp d                                          ; $4847: $ba
    ld [c], a                                     ; $4848: $e2
    dec bc                                        ; $4849: $0b
    ld e, b                                       ; $484a: $58
    ld a, $81                                     ; $484b: $3e $81
    ldh [$ae], a                                  ; $484d: $e0 $ae
    add b                                         ; $484f: $80
    db $e4                                        ; $4850: $e4
    dec b                                         ; $4851: $05
    add d                                         ; $4852: $82
    ld a, b                                       ; $4853: $78
    ld h, l                                       ; $4854: $65
    ld b, c                                       ; $4855: $41
    ld h, h                                       ; $4856: $64
    xor l                                         ; $4857: $ad
    ret nc                                        ; $4858: $d0

    ld e, a                                       ; $4859: $5f
    ret nz                                        ; $485a: $c0

    ld a, $4d                                     ; $485b: $3e $4d
    ret nz                                        ; $485d: $c0

    ld sp, hl                                     ; $485e: $f9
    ld b, b                                       ; $485f: $40
    xor h                                         ; $4860: $ac
    ld h, b                                       ; $4861: $60
    sbc [hl]                                      ; $4862: $9e
    add sp, -$37                                  ; $4863: $e8 $c9
    rst $20                                       ; $4865: $e7
    ld [hl], b                                    ; $4866: $70
    ld c, b                                       ; $4867: $48
    dec l                                         ; $4868: $2d
    ld h, c                                       ; $4869: $61
    jp nc, $c05f                                  ; $486a: $d2 $5f $c0

    ld a, $4d                                     ; $486d: $3e $4d
    ld h, c                                       ; $486f: $61
    ld c, c                                       ; $4870: $49
    ld e, h                                       ; $4871: $5c
    add b                                         ; $4872: $80
    add sp, $00                                   ; $4873: $e8 $00
    db $e3                                        ; $4875: $e3
    ld e, d                                       ; $4876: $5a
    ld a, [$40c2]                                 ; $4877: $fa $c2 $40
    ldh [$39], a                                  ; $487a: $e0 $39
    xor h                                         ; $487c: $ac
    ld h, b                                       ; $487d: $60
    sub c                                         ; $487e: $91
    sbc [hl]                                      ; $487f: $9e
    ld l, $47                                     ; $4880: $2e $47
    add hl, de                                    ; $4882: $19
    ld c, b                                       ; $4883: $48
    ld [bc], a                                    ; $4884: $02
    and e                                         ; $4885: $a3
    add hl, sp                                    ; $4886: $39
    ret nz                                        ; $4887: $c0

    pop hl                                        ; $4888: $e1
    ld d, c                                       ; $4889: $51
    ret nz                                        ; $488a: $c0

    ld b, l                                       ; $488b: $45
    push af                                       ; $488c: $f5
    ld c, e                                       ; $488d: $4b
    adc d                                         ; $488e: $8a
    call nz, Call_000_374a                        ; $488f: $c4 $4a $37
    and d                                         ; $4892: $a2
    ld e, d                                       ; $4893: $5a
    ld b, e                                       ; $4894: $43
    ld e, e                                       ; $4895: $5b
    ld e, e                                       ; $4896: $5b
    daa                                           ; $4897: $27
    ld e, e                                       ; $4898: $5b
    ld b, e                                       ; $4899: $43
    ld b, e                                       ; $489a: $43
    inc hl                                        ; $489b: $23
    ret nz                                        ; $489c: $c0

    cp [hl]                                       ; $489d: $be
    ld h, b                                       ; $489e: $60
    sbc [hl]                                      ; $489f: $9e
    ld [c], a                                     ; $48a0: $e2
    daa                                           ; $48a1: $27
    ld a, b                                       ; $48a2: $78
    ld h, l                                       ; $48a3: $65
    inc e                                         ; $48a4: $1c
    ld d, $40                                     ; $48a5: $16 $40
    ld [bc], a                                    ; $48a7: $02
    and d                                         ; $48a8: $a2
    xor [hl]                                      ; $48a9: $ae
    ld b, h                                       ; $48aa: $44
    inc a                                         ; $48ab: $3c
    add b                                         ; $48ac: $80
    ldh [$87], a                                  ; $48ad: $e0 $87
    ret nz                                        ; $48af: $c0

    nop                                           ; $48b0: $00
    and d                                         ; $48b1: $a2
    db $10                                        ; $48b2: $10
    ld b, b                                       ; $48b3: $40
    pop bc                                        ; $48b4: $c1
    cp b                                          ; $48b5: $b8
    ldh [rP1], a                                  ; $48b6: $e0 $00
    pop hl                                        ; $48b8: $e1
    jp Jump_000_3986                              ; $48b9: $c3 $86 $39


    nop                                           ; $48bc: $00
    pop hl                                        ; $48bd: $e1
    ld [c], a                                     ; $48be: $e2
    inc hl                                        ; $48bf: $23
    ei                                            ; $48c0: $fb
    dec hl                                        ; $48c1: $2b
    cp d                                          ; $48c2: $ba
    ld [bc], a                                    ; $48c3: $02
    and d                                         ; $48c4: $a2
    xor a                                         ; $48c5: $af
    ret nz                                        ; $48c6: $c0

    ld [c], a                                     ; $48c7: $e2
    ld h, c                                       ; $48c8: $61
    ld c, c                                       ; $48c9: $49
    ld c, c                                       ; $48ca: $49
    pop bc                                        ; $48cb: $c1
    add e                                         ; $48cc: $83
    ld c, c                                       ; $48cd: $49

jr_06e_48ce:
    ld sp, $f74e                                  ; $48ce: $31 $4e $f7
    db $e4                                        ; $48d1: $e4
    ret nz                                        ; $48d2: $c0

    db $e4                                        ; $48d3: $e4
    ld a, a                                       ; $48d4: $7f
    and b                                         ; $48d5: $a0
    ld a, [hl-]                                   ; $48d6: $3a
    xor a                                         ; $48d7: $af
    jp $b967                                      ; $48d8: $c3 $67 $b9


    ld h, $86                                     ; $48db: $26 $86
    ld b, c                                       ; $48dd: $41
    ld h, l                                       ; $48de: $65
    sbc h                                         ; $48df: $9c
    xor [hl]                                      ; $48e0: $ae
    ld b, b                                       ; $48e1: $40
    ld [c], a                                     ; $48e2: $e2
    rst $38                                       ; $48e3: $ff
    rst $28                                       ; $48e4: $ef
    ret nz                                        ; $48e5: $c0

    push hl                                       ; $48e6: $e5
    cp $80                                        ; $48e7: $fe $80
    add hl, sp                                    ; $48e9: $39
    ld bc, $7caf                                  ; $48ea: $01 $af $7c
    ld b, d                                       ; $48ed: $42
    adc h                                         ; $48ee: $8c
    ld h, a                                       ; $48ef: $67
    or c                                          ; $48f0: $b1
    ld [hl+], a                                   ; $48f1: $22
    ld a, [bc]                                    ; $48f2: $0a
    ld hl, $81c3                                  ; $48f3: $21 $c3 $81
    ret nz                                        ; $48f6: $c0

    ret nz                                        ; $48f7: $c0

    ld c, [hl]                                    ; $48f8: $4e
    db $e3                                        ; $48f9: $e3
    nop                                           ; $48fa: $00
    ret nz                                        ; $48fb: $c0

    db $f4                                        ; $48fc: $f4
    ld a, a                                       ; $48fd: $7f
    ldh [$6c], a                                  ; $48fe: $e0 $6c
    ld h, b                                       ; $4900: $60
    sbc a                                         ; $4901: $9f
    jr nz, jr_06e_490a                            ; $4902: $20 $06

    ld b, a                                       ; $4904: $47
    db $fc                                        ; $4905: $fc
    ld hl, $2116                                  ; $4906: $21 $16 $21
    ld [bc], a                                    ; $4909: $02

jr_06e_490a:
    and e                                         ; $490a: $a3
    inc bc                                        ; $490b: $03
    dec [hl]                                      ; $490c: $35
    ld a, $86                                     ; $490d: $3e $86
    and b                                         ; $490f: $a0
    ld a, [hl]                                    ; $4910: $7e
    xor $ff                                       ; $4911: $ee $ff
    add [hl]                                      ; $4913: $86
    ld a, a                                       ; $4914: $7f
    pop hl                                        ; $4915: $e1
    ld a, [$0622]                                 ; $4916: $fa $22 $06
    ld b, e                                       ; $4919: $43
    ld h, b                                       ; $491a: $60
    sbc $01                                       ; $491b: $de $01
    db $fc                                        ; $491d: $fc
    dec h                                         ; $491e: $25
    ld [bc], a                                    ; $491f: $02

jr_06e_4920:
    and e                                         ; $4920: $a3
    pop bc                                        ; $4921: $c1
    add c                                         ; $4922: $81
    ccf                                           ; $4923: $3f
    db $ec                                        ; $4924: $ec
    ld d, a                                       ; $4925: $57
    ld d, a                                       ; $4926: $57
    ld l, $c2                                     ; $4927: $2e $c2
    ld b, b                                       ; $4929: $40
    ld a, a                                       ; $492a: $7f
    rst $20                                       ; $492b: $e7
    ld [$7c20], a                                 ; $492c: $ea $20 $7c
    and c                                         ; $492f: $a1
    jp $83a8                                      ; $4930: $c3 $a8 $83


    add e                                         ; $4933: $83
    ld hl, $3880                                  ; $4934: $21 $80 $38
    call z, Call_06e_4640                         ; $4937: $cc $40 $46
    ccf                                           ; $493a: $3f
    ld [$5354], a                                 ; $493b: $ea $54 $53
    db $fd                                        ; $493e: $fd
    jr nz, jr_06e_48ce                            ; $493f: $20 $8d

    ld b, b                                       ; $4941: $40
    ld a, a                                       ; $4942: $7f
    add sp, $40                                   ; $4943: $e8 $40
    ld h, [hl]                                    ; $4945: $66
    jr nz, @+$4a                                  ; $4946: $20 $48

    db $dd                                        ; $4948: $dd
    ld bc, $a8c3                                  ; $4949: $01 $c3 $a8
    add e                                         ; $494c: $83
    add e                                         ; $494d: $83
    ld a, [hl-]                                   ; $494e: $3a
    and l                                         ; $494f: $a5
    ld b, b                                       ; $4950: $40
    push bc                                       ; $4951: $c5

jr_06e_4952:
    add b                                         ; $4952: $80
    ld c, d                                       ; $4953: $4a
    ld c, h                                       ; $4954: $4c
    add e                                         ; $4955: $83
    ld hl, $8655                                  ; $4956: $21 $55 $86
    add e                                         ; $4959: $83
    call z, $ca61                                 ; $495a: $cc $61 $ca
    add c                                         ; $495d: $81
    inc a                                         ; $495e: $3c
    dec h                                         ; $495f: $25
    ld b, h                                       ; $4960: $44
    inc a                                         ; $4961: $3c
    and c                                         ; $4962: $a1
    ld a, e                                       ; $4963: $7b
    jp nz, $038c                                  ; $4964: $c2 $8c $03

    ld l, b                                       ; $4967: $68
    add e                                         ; $4968: $83
    add d                                         ; $4969: $82
    ld b, h                                       ; $496a: $44
    inc a                                         ; $496b: $3c
    inc hl                                        ; $496c: $23
    add b                                         ; $496d: $80
    add l                                         ; $496e: $85
    add b                                         ; $496f: $80
    ld b, h                                       ; $4970: $44
    add d                                         ; $4971: $82
    ld e, b                                       ; $4972: $58
    ld c, e                                       ; $4973: $4b
    ld b, h                                       ; $4974: $44
    ld b, h                                       ; $4975: $44
    add [hl]                                      ; $4976: $86
    add c                                         ; $4977: $81
    ld e, d                                       ; $4978: $5a
    adc h                                         ; $4979: $8c
    ld h, d                                       ; $497a: $62
    ret nz                                        ; $497b: $c0

    jp hl                                         ; $497c: $e9


    add hl, sp                                    ; $497d: $39
    cp h                                          ; $497e: $bc
    and c                                         ; $497f: $a1
    ld b, $27                                     ; $4980: $06 $27
    jr nz, jr_06e_4920                            ; $4982: $20 $9c

    sbc a                                         ; $4984: $9f
    dec sp                                        ; $4985: $3b
    add c                                         ; $4986: $81
    cp c                                          ; $4987: $b9
    daa                                           ; $4988: $27
    add b                                         ; $4989: $80
    db $e4                                        ; $498a: $e4
    rst $00                                       ; $498b: $c7
    ld bc, $e286                                  ; $498c: $01 $86 $e2
    ld bc, $8655                                  ; $498f: $01 $55 $86
    and d                                         ; $4992: $a2
    inc a                                         ; $4993: $3c
    add b                                         ; $4994: $80
    ld b, b                                       ; $4995: $40
    db $eb                                        ; $4996: $eb
    ld [hl], b                                    ; $4997: $70
    pop hl                                        ; $4998: $e1
    inc [hl]                                      ; $4999: $34
    jr nz, jr_06e_4952                            ; $499a: $20 $b6

    ld b, $c3                                     ; $499c: $06 $c3
    adc b                                         ; $499e: $88
    adc b                                         ; $499f: $88
    ld hl, $bf61                                  ; $49a0: $21 $61 $bf
    ld [c], a                                     ; $49a3: $e2
    bit 4, d                                      ; $49a4: $cb $62
    ld h, b                                       ; $49a6: $60
    ld a, [hl]                                    ; $49a7: $7e
    ld b, e                                       ; $49a8: $43
    inc bc                                        ; $49a9: $03
    ld h, a                                       ; $49aa: $67
    cp l                                          ; $49ab: $bd
    inc hl                                        ; $49ac: $23
    ld b, a                                       ; $49ad: $47
    jp Jump_000_3c55                              ; $49ae: $c3 $55 $3c


    ld a, e                                       ; $49b1: $7b
    ld [hl+], a                                   ; $49b2: $22
    and [hl]                                      ; $49b3: $a6

Jump_06e_49b4:
    nop                                           ; $49b4: $00
    ld sp, hl                                     ; $49b5: $f9
    and h                                         ; $49b6: $a4
    ld b, d                                       ; $49b7: $42
    dec h                                         ; $49b8: $25
    jp nc, Jump_000_2146                          ; $49b9: $d2 $46 $21

    xor [hl]                                      ; $49bc: $ae
    inc h                                         ; $49bd: $24
    ld b, b                                       ; $49be: $40
    ld h, c                                       ; $49bf: $61
    ld hl, $648a                                  ; $49c0: $21 $8a $64
    ld a, $43                                     ; $49c3: $3e $43
    ld c, c                                       ; $49c5: $49
    ld [hl-], a                                   ; $49c6: $32
    add c                                         ; $49c7: $81
    pop bc                                        ; $49c8: $c1
    rst $20                                       ; $49c9: $e7
    and a                                         ; $49ca: $a7
    ld h, b                                       ; $49cb: $60
    ld d, l                                       ; $49cc: $55
    ld b, c                                       ; $49cd: $41
    add sp, $02                                   ; $49ce: $e8 $02
    add hl, sp                                    ; $49d0: $39
    ld hl, $fa9c                                  ; $49d1: $21 $9c $fa
    ld l, d                                       ; $49d4: $6a
    sbc a                                         ; $49d5: $9f
    inc sp                                        ; $49d6: $33
    ret nc                                        ; $49d7: $d0

    xor a                                         ; $49d8: $af
    dec bc                                        ; $49d9: $0b
    ld [hl+], a                                   ; $49da: $22
    inc a                                         ; $49db: $3c
    pop hl                                        ; $49dc: $e1
    ld b, l                                       ; $49dd: $45
    ld d, e                                       ; $49de: $53
    rst $38                                       ; $49df: $ff
    ld b, e                                       ; $49e0: $43
    add c                                         ; $49e1: $81
    ret nz                                        ; $49e2: $c0

    dec e                                         ; $49e3: $1d
    ld e, e                                       ; $49e4: $5b
    ld b, h                                       ; $49e5: $44
    add sp, $48                                   ; $49e6: $e8 $48
    ld c, c                                       ; $49e8: $49
    ld h, b                                       ; $49e9: $60
    ld [hl], e                                    ; $49ea: $73
    ld b, d                                       ; $49eb: $42
    ld a, d                                       ; $49ec: $7a
    inc hl                                        ; $49ed: $23
    ld a, [hl-]                                   ; $49ee: $3a
    pop bc                                        ; $49ef: $c1
    db $ec                                        ; $49f0: $ec
    inc bc                                        ; $49f1: $03
    call nz, Call_000_2201                        ; $49f2: $c4 $01 $22
    db $d3                                        ; $49f5: $d3
    ret nc                                        ; $49f6: $d0

    ld h, b                                       ; $49f7: $60
    inc hl                                        ; $49f8: $23
    jr c, jr_06e_4a32                             ; $49f9: $38 $37

    ccf                                           ; $49fb: $3f
    sub [hl]                                      ; $49fc: $96
    rst $38                                       ; $49fd: $ff
    ld b, b                                       ; $49fe: $40
    ld d, e                                       ; $49ff: $53
    ld e, c                                       ; $4a00: $59
    rst $38                                       ; $4a01: $ff
    ldh [rHDMA3], a                               ; $4a02: $e0 $53
    rst $38                                       ; $4a04: $ff
    ld [$e1c2], sp                                ; $4a05: $08 $c2 $e1
    ld d, h                                       ; $4a08: $54
    add b                                         ; $4a09: $80
    rst $28                                       ; $4a0a: $ef
    push hl                                       ; $4a0b: $e5
    halt                                          ; $4a0c: $76
    ld b, b                                       ; $4a0d: $40
    or $40                                        ; $4a0e: $f6 $40
    scf                                           ; $4a10: $37
    ld [$61ed], sp                                ; $4a11: $08 $ed $61
    cp a                                          ; $4a14: $bf
    pop hl                                        ; $4a15: $e1
    add a                                         ; $4a16: $87
    inc bc                                        ; $4a17: $03
    jr c, jr_06e_4a3b                             ; $4a18: $38 $21

    dec a                                         ; $4a1a: $3d
    ld c, d                                       ; $4a1b: $4a
    jp hl                                         ; $4a1c: $e9


    add l                                         ; $4a1d: $85
    ld [c], a                                     ; $4a1e: $e2
    or l                                          ; $4a1f: $b5

Jump_06e_4a20:
    add c                                         ; $4a20: $81
    di                                            ; $4a21: $f3
    ret z                                         ; $4a22: $c8

    ld a, $7f                                     ; $4a23: $3e $7f
    db $e4                                        ; $4a25: $e4
    or l                                          ; $4a26: $b5
    ld h, l                                       ; $4a27: $65
    inc d                                         ; $4a28: $14
    or [hl]                                       ; $4a29: $b6
    ld h, d                                       ; $4a2a: $62

Jump_06e_4a2b:
    cp a                                          ; $4a2b: $bf
    ld [c], a                                     ; $4a2c: $e2
    xor [hl]                                      ; $4a2d: $ae
    ld a, [hl-]                                   ; $4a2e: $3a
    db $e3                                        ; $4a2f: $e3
    ld b, e                                       ; $4a30: $43
    ret nz                                        ; $4a31: $c0

jr_06e_4a32:
    nop                                           ; $4a32: $00
    call $c840                                    ; $4a33: $cd $40 $c8
    ld b, c                                       ; $4a36: $41
    inc hl                                        ; $4a37: $23
    ld c, b                                       ; $4a38: $48
    ld c, [hl]                                    ; $4a39: $4e
    ld a, b                                       ; $4a3a: $78

jr_06e_4a3b:
    add d                                         ; $4a3b: $82
    add e                                         ; $4a3c: $83
    and $c0                                       ; $4a3d: $e6 $c0
    db $e4                                        ; $4a3f: $e4
    ld a, $79                                     ; $4a40: $3e $79
    and c                                         ; $4a42: $a1
    ld a, [hl]                                    ; $4a43: $7e
    ld h, c                                       ; $4a44: $61
    db $fc                                        ; $4a45: $fc
    or l                                          ; $4a46: $b5
    ld b, c                                       ; $4a47: $41
    or $03                                        ; $4a48: $f6 $03
    db $d3                                        ; $4a4a: $d3
    pop de                                        ; $4a4b: $d1
    pop de                                        ; $4a4c: $d1
    ret nc                                        ; $4a4d: $d0

    xor a                                         ; $4a4e: $af
    xor [hl]                                      ; $4a4f: $ae
    ld l, [hl]                                    ; $4a50: $6e
    cp [hl]                                       ; $4a51: $be
    ld [c], a                                     ; $4a52: $e2
    dec sp                                        ; $4a53: $3b
    add hl, sp                                    ; $4a54: $39
    ld c, a                                       ; $4a55: $4f
    call Call_06e_4b40                            ; $4a56: $cd $40 $4b
    ld c, e                                       ; $4a59: $4b
    ret z                                         ; $4a5a: $c8

    ld b, b                                       ; $4a5b: $40
    add b                                         ; $4a5c: $80
    db $f4                                        ; $4a5d: $f4
    ld [bc], a                                    ; $4a5e: $02
    jp nz, $b6ea                                  ; $4a5f: $c2 $ea $b6

    inc hl                                        ; $4a62: $23
    add hl, sp                                    ; $4a63: $39
    and c                                         ; $4a64: $a1
    cp [hl]                                       ; $4a65: $be
    ld bc, $81be                                  ; $4a66: $01 $be $81
    or $06                                        ; $4a69: $f6 $06
    db $d3                                        ; $4a6b: $d3
    xor a                                         ; $4a6c: $af
    ret nc                                        ; $4a6d: $d0

    xor a                                         ; $4a6e: $af
    xor a                                         ; $4a6f: $af
    xor [hl]                                      ; $4a70: $ae
    sub [hl]                                      ; $4a71: $96
    ld hl, $783e                                  ; $4a72: $21 $3e $78
    and c                                         ; $4a75: $a1
    ld e, b                                       ; $4a76: $58
    ld c, [hl]                                    ; $4a77: $4e
    or d                                          ; $4a78: $b2
    add c                                         ; $4a79: $81
    ld d, a                                       ; $4a7a: $57
    ld d, a                                       ; $4a7b: $57
    ld d, h                                       ; $4a7c: $54
    or $ca                                        ; $4a7d: $f6 $ca
    ld [hl], $23                                  ; $4a7f: $36 $23
    ld [hl], $37                                  ; $4a81: $36 $37
    ld hl, $f680                                  ; $4a83: $21 $80 $f6
    ld [hl+], a                                   ; $4a86: $22
    cp [hl]                                       ; $4a87: $be
    add l                                         ; $4a88: $85
    inc l                                         ; $4a89: $2c
    ld b, e                                       ; $4a8a: $43
    cp c                                          ; $4a8b: $b9
    ret nz                                        ; $4a8c: $c0

    rst $18                                       ; $4a8d: $df
    add b                                         ; $4a8e: $80
    sub l                                         ; $4a8f: $95
    ld b, b                                       ; $4a90: $40
    cp l                                          ; $4a91: $bd
    pop bc                                        ; $4a92: $c1
    ld d, e                                       ; $4a93: $53
    db $10                                        ; $4a94: $10
    ld b, a                                       ; $4a95: $47
    ld h, b                                       ; $4a96: $60
    dec a                                         ; $4a97: $3d
    ldh [$3a], a                                  ; $4a98: $e0 $3a
    ld c, $15                                     ; $4a9a: $0e $15
    and c                                         ; $4a9c: $a1
    xor a                                         ; $4a9d: $af
    cp b                                          ; $4a9e: $b8
    inc bc                                        ; $4a9f: $03
    or l                                          ; $4aa0: $b5
    ld l, b                                       ; $4aa1: $68
    inc l                                         ; $4aa2: $2c
    ld b, e                                       ; $4aa3: $43
    ld b, d                                       ; $4aa4: $42
    ld a, b                                       ; $4aa5: $78
    ret nz                                        ; $4aa6: $c0

    xor [hl]                                      ; $4aa7: $ae
    ldh [$c0], a                                  ; $4aa8: $e0 $c0
    reti                                          ; $4aaa: $d9


    add b                                         ; $4aab: $80
    cp $f5                                        ; $4aac: $fe $f5
    ld e, l                                       ; $4aae: $5d
    ld bc, $8145                                  ; $4aaf: $01 $45 $81
    ld [c], a                                     ; $4ab2: $e2
    ld h, b                                       ; $4ab3: $60
    cp c                                          ; $4ab4: $b9
    ld h, a                                       ; $4ab5: $67
    or e                                          ; $4ab6: $b3
    ld bc, $8035                                  ; $4ab7: $01 $35 $80
    ld a, c                                       ; $4aba: $79
    ld bc, $e03d                                  ; $4abb: $01 $3d $e0
    xor [hl]                                      ; $4abe: $ae
    ld a, $17                                     ; $4abf: $3e $17
    jr nz, @+$04                                  ; $4ac1: $20 $02

    pop bc                                        ; $4ac3: $c1
    ld a, [$b846]                                 ; $4ac4: $fa $46 $b8
    ld bc, $27ba                                  ; $4ac7: $01 $ba $27
    ld [hl], e                                    ; $4aca: $73
    ld h, h                                       ; $4acb: $64
    jr c, jr_06e_4b12                             ; $4acc: $38 $44

    ld [hl], a                                    ; $4ace: $77
    ld h, b                                       ; $4acf: $60
    ret nz                                        ; $4ad0: $c0

    rst $30                                       ; $4ad1: $f7
    dec b                                         ; $4ad2: $05
    ld b, l                                       ; $4ad3: $45
    ld a, [$4602]                                 ; $4ad4: $fa $02 $46

jr_06e_4ad7:
    pop bc                                        ; $4ad7: $c1
    pop hl                                        ; $4ad8: $e1
    dec b                                         ; $4ad9: $05
    rst $20                                       ; $4ada: $e7
    db $ed                                        ; $4adb: $ed
    ld [hl+], a                                   ; $4adc: $22
    cpl                                           ; $4add: $2f
    ld bc, $4238                                  ; $4ade: $01 $38 $42
    rst $18                                       ; $4ae1: $df
    xor a                                         ; $4ae2: $af
    ld b, d                                       ; $4ae3: $42
    dec [hl]                                      ; $4ae4: $35
    dec [hl]                                      ; $4ae5: $35
    ld b, d                                       ; $4ae6: $42
    ld b, e                                       ; $4ae7: $43
    or $40                                        ; $4ae8: $f6 $40
    inc a                                         ; $4aea: $3c
    nop                                           ; $4aeb: $00
    ld b, l                                       ; $4aec: $45
    ret nz                                        ; $4aed: $c0

    pop bc                                        ; $4aee: $c1
    ld [c], a                                     ; $4aef: $e2
    db $fd                                        ; $4af0: $fd
    rlca                                          ; $4af1: $07
    or [hl]                                       ; $4af2: $b6
    ld h, $38                                     ; $4af3: $26 $38
    ld b, d                                       ; $4af5: $42
    inc [hl]                                      ; $4af6: $34
    add b                                         ; $4af7: $80
    inc c                                         ; $4af8: $0c
    adc c                                         ; $4af9: $89
    inc b                                         ; $4afa: $04
    db $ec                                        ; $4afb: $ec
    ld [bc], a                                    ; $4afc: $02
    ret nz                                        ; $4afd: $c0

    ld [c], a                                     ; $4afe: $e2
    jp nc, $227a                                  ; $4aff: $d2 $7a $22

    ld a, l                                       ; $4b02: $7d
    ld b, [hl]                                    ; $4b03: $46
    db $ed                                        ; $4b04: $ed
    ld a, [hl+]                                   ; $4b05: $2a
    inc [hl]                                      ; $4b06: $34
    add d                                         ; $4b07: $82
    push de                                       ; $4b08: $d5
    ld bc, $cfc6                                  ; $4b09: $01 $c6 $cf
    nop                                           ; $4b0c: $00

Call_06e_4b0d:
    sbc $81                                       ; $4b0d: $de $81
    db $db                                        ; $4b0f: $db
    jr nz, jr_06e_4ad7                            ; $4b10: $20 $c5

jr_06e_4b12:
    and l                                         ; $4b12: $a5
    dec sp                                        ; $4b13: $3b
    ld b, [hl]                                    ; $4b14: $46
    ld l, $04                                     ; $4b15: $2e $04
    scf                                           ; $4b17: $37
    ld b, h                                       ; $4b18: $44
    inc [hl]                                      ; $4b19: $34
    add a                                         ; $4b1a: $87
    jp nz, Jump_000_1fef                          ; $4b1b: $c2 $ef $1f

    dec [hl]                                      ; $4b1e: $35
    inc a                                         ; $4b1f: $3c
    ld b, h                                       ; $4b20: $44
    dec [hl]                                      ; $4b21: $35
    ld a, [hl-]                                   ; $4b22: $3a
    push bc                                       ; $4b23: $c5
    and l                                         ; $4b24: $a5
    ret z                                         ; $4b25: $c8

    rst $00                                       ; $4b26: $c7
    db $ec                                        ; $4b27: $ec
    ld a, [hl+]                                   ; $4b28: $2a
    jp $d0d3                                      ; $4b29: $c3 $d3 $d0


Call_06e_4b2c:
    or h                                          ; $4b2c: $b4
    ld b, c                                       ; $4b2d: $41
    inc [hl]                                      ; $4b2e: $34
    add d                                         ; $4b2f: $82
    jp nz, $9eed                                  ; $4b30: $c2 $ed $9e

    ld b, b                                       ; $4b33: $40
    add hl, sp                                    ; $4b34: $39
    dec [hl]                                      ; $4b35: $35
    ld bc, $7a3c                                  ; $4b36: $01 $3c $7a
    ld h, $bc                                     ; $4b39: $26 $bc
    ld l, b                                       ; $4b3b: $68
    add hl, sp                                    ; $4b3c: $39
    and c                                         ; $4b3d: $a1
    scf                                           ; $4b3e: $37
    ld b, c                                       ; $4b3f: $41

Call_06e_4b40:
    ld sp, $bfa1                                  ; $4b40: $31 $a1 $bf
    ldh [rNR30], a                                ; $4b43: $e0 $1a
    add d                                         ; $4b45: $82
    ld [hl], c                                    ; $4b46: $71
    ld b, h                                       ; $4b47: $44
    ld c, e                                       ; $4b48: $4b
    and [hl]                                      ; $4b49: $a6
    jp nz, Jump_000_08e5                          ; $4b4a: $c2 $e5 $08

    and b                                         ; $4b4d: $a0
    ld a, $35                                     ; $4b4e: $3e $35
    inc a                                         ; $4b50: $3c
    ld a, d                                       ; $4b51: $7a
    ld bc, $ffe0                                  ; $4b52: $01 $e0 $ff
    db $ed                                        ; $4b55: $ed
    db $f4                                        ; $4b56: $f4
    ld h, l                                       ; $4b57: $65
    db $ec                                        ; $4b58: $ec
    ld h, d                                       ; $4b59: $62
    ld a, [hl]                                    ; $4b5a: $7e
    ldh [$b1], a                                  ; $4b5b: $e0 $b1
    ld h, c                                       ; $4b5d: $61
    ld b, b                                       ; $4b5e: $40
    jr c, jr_06e_4b9e                             ; $4b5f: $38 $3d

    ld d, $ff                                     ; $4b61: $16 $ff
    db $e3                                        ; $4b63: $e3
    ld b, h                                       ; $4b64: $44
    ld b, b                                       ; $4b65: $40
    add h                                         ; $4b66: $84
    ld [c], a                                     ; $4b67: $e2
    and e                                         ; $4b68: $a3
    or e                                          ; $4b69: $b3
    ld b, c                                       ; $4b6a: $41
    db $e4                                        ; $4b6b: $e4
    ret nz                                        ; $4b6c: $c0

    ld a, d                                       ; $4b6d: $7a
    ld bc, $7d00                                  ; $4b6e: $01 $00 $7d
    ld hl, $09fc                                  ; $4b71: $21 $fc $09
    rst $30                                       ; $4b74: $f7
    dec h                                         ; $4b75: $25
    cp d                                          ; $4b76: $ba
    and e                                         ; $4b77: $a3
    ld hl, sp-$80                                 ; $4b78: $f8 $80
    pop de                                        ; $4b7a: $d1
    ld bc, $80d8                                  ; $4b7b: $01 $d8 $80
    ld c, h                                       ; $4b7e: $4c
    db $e3                                        ; $4b7f: $e3
    ld [hl], $f6                                  ; $4b80: $36 $f6
    push hl                                       ; $4b82: $e5
    dec [hl]                                      ; $4b83: $35
    ld [hl], $6e                                  ; $4b84: $36 $6e
    ld b, b                                       ; $4b86: $40
    add hl, sp                                    ; $4b87: $39
    xor a                                         ; $4b88: $af
    dec b                                         ; $4b89: $05
    and b                                         ; $4b8a: $a0
    add h                                         ; $4b8b: $84
    ld l, b                                       ; $4b8c: $68
    add b                                         ; $4b8d: $80
    rst $30                                       ; $4b8e: $f7
    pop af                                        ; $4b8f: $f1
    jr nc, @+$62                                  ; $4b90: $30 $60

    pop de                                        ; $4b92: $d1
    nop                                           ; $4b93: $00
    ld b, c                                       ; $4b94: $41
    ld b, d                                       ; $4b95: $42
    adc h                                         ; $4b96: $8c
    pop hl                                        ; $4b97: $e1
    or $e1                                        ; $4b98: $f6 $e1
    add d                                         ; $4b9a: $82
    pop hl                                        ; $4b9b: $e1
    ld [hl], $18                                  ; $4b9c: $36 $18

jr_06e_4b9e:
    push bc                                       ; $4b9e: $c5
    ld h, c                                       ; $4b9f: $61
    ld b, c                                       ; $4ba0: $41

Jump_06e_4ba1:
    pop bc                                        ; $4ba1: $c1
    add a                                         ; $4ba2: $87
    dec h                                         ; $4ba3: $25
    sub $d7                                       ; $4ba4: $d6 $d7
    or h                                          ; $4ba6: $b4
    rlca                                          ; $4ba7: $07
    dec l                                         ; $4ba8: $2d
    push bc                                       ; $4ba9: $c5
    and l                                         ; $4baa: $a5
    ld hl, $9efd                                  ; $4bab: $21 $fd $9e
    ld a, [de]                                    ; $4bae: $1a
    ld b, b                                       ; $4baf: $40
    add hl, sp                                    ; $4bb0: $39
    dec [hl]                                      ; $4bb1: $35
    ld [hl], $37                                  ; $4bb2: $36 $37
    jr c, @+$3d                                   ; $4bb4: $38 $3b

    rlca                                          ; $4bb6: $07
    dec sp                                        ; $4bb7: $3b
    jr c, @+$39                                   ; $4bb8: $38 $37

    and $40                                       ; $4bba: $e6 $40
    or $e4                                        ; $4bbc: $f6 $e4
    ld e, e                                       ; $4bbe: $5b
    ld hl, $6245                                  ; $4bbf: $21 $45 $62
    ld b, b                                       ; $4bc2: $40
    dec h                                         ; $4bc3: $25
    ld h, e                                       ; $4bc4: $63
    reti                                          ; $4bc5: $d9


    jp c, Jump_000_0772                           ; $4bc6: $da $72 $07

    xor l                                         ; $4bc9: $ad
    dec h                                         ; $4bca: $25
    ld a, e                                       ; $4bcb: $7b
    and e                                         ; $4bcc: $a3
    xor [hl]                                      ; $4bcd: $ae
    xor a                                         ; $4bce: $af
    add hl, de                                    ; $4bcf: $19
    add b                                         ; $4bd0: $80
    sub d                                         ; $4bd1: $92
    ld [hl-], a                                   ; $4bd2: $32
    ld h, b                                       ; $4bd3: $60
    ld b, c                                       ; $4bd4: $41
    add a                                         ; $4bd5: $87
    jp $e2f6                                      ; $4bd6: $c3 $f6 $e2


    dec a                                         ; $4bd9: $3d
    sbc $41                                       ; $4bda: $de $41
    ld b, e                                       ; $4bdc: $43
    and b                                         ; $4bdd: $a0
    sbc a                                         ; $4bde: $9f
    ld b, $86                                     ; $4bdf: $06 $86
    ld h, [hl]                                    ; $4be1: $66
    call c, $fddd                                 ; $4be2: $dc $dd $fd

Jump_06e_4be5:
    ld b, a                                       ; $4be5: $47
    cp d                                          ; $4be6: $ba
    and l                                         ; $4be7: $a5
    ld a, e                                       ; $4be8: $7b
    and c                                         ; $4be9: $a1
    or b                                          ; $4bea: $b0
    ld b, b                                       ; $4beb: $40
    jr @-$7c                                      ; $4bec: $18 $82

    ld [hl], $8a                                  ; $4bee: $36 $8a
    jp Jump_000_3b3b                              ; $4bf0: $c3 $3b $3b


    or $e5                                        ; $4bf3: $f6 $e5
    jr c, jr_06e_4c2e                             ; $4bf5: $38 $37

    add [hl]                                      ; $4bf7: $86
    add b                                         ; $4bf8: $80
    push bc                                       ; $4bf9: $c5
    add b                                         ; $4bfa: $80
    add [hl]                                      ; $4bfb: $86
    ld b, c                                       ; $4bfc: $41
    dec h                                         ; $4bfd: $25
    rst $18                                       ; $4bfe: $df
    ldh [$3d], a                                  ; $4bff: $e0 $3d
    rst $00                                       ; $4c01: $c7
    cp d                                          ; $4c02: $ba
    ld h, l                                       ; $4c03: $65
    or d                                          ; $4c04: $b2
    ld h, d                                       ; $4c05: $62
    or b                                          ; $4c06: $b0
    ld b, c                                       ; $4c07: $41
    xor [hl]                                      ; $4c08: $ae
    ld a, [hl-]                                   ; $4c09: $3a
    ld b, c                                       ; $4c0a: $41
    ldh [$35], a                                  ; $4c0b: $e0 $35
    ld b, b                                       ; $4c0d: $40
    ldh [rSTAT], a                                ; $4c0e: $e0 $41
    ld b, e                                       ; $4c10: $43
    ld b, e                                       ; $4c11: $43
    ld a, d                                       ; $4c12: $7a
    ldh [$f5], a                                  ; $4c13: $e0 $f5
    ld [c], a                                     ; $4c15: $e2
    jp $ae45                                      ; $4c16: $c3 $45 $ae


    add [hl]                                      ; $4c19: $86
    add d                                         ; $4c1a: $82
    ld b, c                                       ; $4c1b: $41
    add hl, hl                                    ; $4c1c: $29
    cp b                                          ; $4c1d: $b8
    call nc, Call_06e_62b6                        ; $4c1e: $d4 $b6 $62
    ld b, l                                       ; $4c21: $45
    ld b, e                                       ; $4c22: $43
    dec b                                         ; $4c23: $05
    ccf                                           ; $4c24: $3f
    pop bc                                        ; $4c25: $c1
    ld h, b                                       ; $4c26: $60
    ret nc                                        ; $4c27: $d0

    daa                                           ; $4c28: $27
    ld h, b                                       ; $4c29: $60
    push af                                       ; $4c2a: $f5
    db $e4                                        ; $4c2b: $e4
    ld b, a                                       ; $4c2c: $47
    add e                                         ; $4c2d: $83

jr_06e_4c2e:
    ld c, [hl]                                    ; $4c2e: $4e
    ld l, b                                       ; $4c2f: $68
    ld a, a                                       ; $4c30: $7f
    xor e                                         ; $4c31: $ab
    nop                                           ; $4c32: $00
    ld a, [hl+]                                   ; $4c33: $2a
    ret                                           ; $4c34: $c9


    pop af                                        ; $4c35: $f1
    ld b, b                                       ; $4c36: $40
    cp $e4                                        ; $4c37: $fe $e4
    dec d                                         ; $4c39: $15
    add b                                         ; $4c3a: $80
    di                                            ; $4c3b: $f3
    ld [$c506], a                                 ; $4c3c: $ea $06 $c5
    add b                                         ; $4c3f: $80
    inc h                                         ; $4c40: $24
    cp d                                          ; $4c41: $ba
    xor l                                         ; $4c42: $ad
    nop                                           ; $4c43: $00
    add sp, -$5f                                  ; $4c44: $e8 $a1
    push hl                                       ; $4c46: $e5
    ld [$4559], a                                 ; $4c47: $ea $59 $45
    ld d, l                                       ; $4c4a: $55
    xor c                                         ; $4c4b: $a9
    call nz, $fca1                                ; $4c4c: $c4 $a1 $fc
    xor a                                         ; $4c4f: $af
    xor [hl]                                      ; $4c50: $ae
    ld hl, $626d                                  ; $4c51: $21 $6d $62
    nop                                           ; $4c54: $00
    or a                                          ; $4c55: $b7
    and $21                                       ; $4c56: $e6 $21
    adc d                                         ; $4c58: $8a
    db $e4                                        ; $4c59: $e4
    and $49                                       ; $4c5a: $e6 $49
    ld h, e                                       ; $4c5c: $63
    add b                                         ; $4c5d: $80
    ld [hl+], a                                   ; $4c5e: $22
    nop                                           ; $4c5f: $00
    nop                                           ; $4c60: $00
    nop                                           ; $4c61: $00
    pop bc                                        ; $4c62: $c1
    nop                                           ; $4c63: $00
    rst $38                                       ; $4c64: $ff
    rst $38                                       ; $4c65: $ff
    rst $38                                       ; $4c66: $ff
    rst $38                                       ; $4c67: $ff
    rst $38                                       ; $4c68: $ff
    rst $38                                       ; $4c69: $ff
    rst $38                                       ; $4c6a: $ff
    rst $38                                       ; $4c6b: $ff
    rst $38                                       ; $4c6c: $ff
    rst $38                                       ; $4c6d: $ff
    nop                                           ; $4c6e: $00
    nop                                           ; $4c6f: $00
    ld bc, $fe80                                  ; $4c70: $01 $80 $fe
    ldh [rIE], a                                  ; $4c73: $e0 $ff
    rst $38                                       ; $4c75: $ff
    rst $38                                       ; $4c76: $ff
    rst $38                                       ; $4c77: $ff
    rst $38                                       ; $4c78: $ff
    add sp, $00                                   ; $4c79: $e8 $00
    nop                                           ; $4c7b: $00
    nop                                           ; $4c7c: $00
    ld [bc], a                                    ; $4c7d: $02
    nop                                           ; $4c7e: $00
    add hl, de                                    ; $4c7f: $19
    dec b                                         ; $4c80: $05
    ld [bc], a                                    ; $4c81: $02
    ld bc, $0612                                  ; $4c82: $01 $12 $06
    ld [bc], a                                    ; $4c85: $02
    ld [bc], a                                    ; $4c86: $02
    jr jr_06e_4c8f                                ; $4c87: $18 $06

    ld [bc], a                                    ; $4c89: $02
    inc bc                                        ; $4c8a: $03

Jump_06e_4c8b:
    ld a, [de]                                    ; $4c8b: $1a
    ld b, $02                                     ; $4c8c: $06 $02
    inc b                                         ; $4c8e: $04

jr_06e_4c8f:
    jr nz, @+$08                                  ; $4c8f: $20 $06

    ld [bc], a                                    ; $4c91: $02
    dec b                                         ; $4c92: $05
    ld a, [hl+]                                   ; $4c93: $2a
    ld b, $02                                     ; $4c94: $06 $02
    ld b, $11                                     ; $4c96: $06 $11
    rlca                                          ; $4c98: $07
    ld [bc], a                                    ; $4c99: $02
    rlca                                          ; $4c9a: $07
    inc de                                        ; $4c9b: $13
    rlca                                          ; $4c9c: $07
    ld [bc], a                                    ; $4c9d: $02
    ld [$0719], sp                                ; $4c9e: $08 $19 $07
    ld [bc], a                                    ; $4ca1: $02
    add hl, bc                                    ; $4ca2: $09

Jump_06e_4ca3:
    ld h, $07                                     ; $4ca3: $26 $07
    ld [bc], a                                    ; $4ca5: $02
    ld a, [bc]                                    ; $4ca6: $0a
    dec hl                                        ; $4ca7: $2b
    rlca                                          ; $4ca8: $07
    ld [bc], a                                    ; $4ca9: $02
    dec bc                                        ; $4caa: $0b
    db $10                                        ; $4cab: $10
    ld [$0c02], sp                                ; $4cac: $08 $02 $0c
    ld [de], a                                    ; $4caf: $12
    ld [$0d02], sp                                ; $4cb0: $08 $02 $0d
    dec l                                         ; $4cb3: $2d
    ld [$0e02], sp                                ; $4cb4: $08 $02 $0e
    dec c                                         ; $4cb7: $0d
    add hl, bc                                    ; $4cb8: $09
    ld [bc], a                                    ; $4cb9: $02
    rrca                                          ; $4cba: $0f
    rrca                                          ; $4cbb: $0f
    add hl, bc                                    ; $4cbc: $09
    ld [bc], a                                    ; $4cbd: $02
    db $10                                        ; $4cbe: $10
    ld de, $0209                                  ; $4cbf: $11 $09 $02
    ld de, $0a0c                                  ; $4cc2: $11 $0c $0a
    ld [bc], a                                    ; $4cc5: $02
    ld [de], a                                    ; $4cc6: $12
    ld c, $0a                                     ; $4cc7: $0e $0a
    ld [bc], a                                    ; $4cc9: $02
    inc de                                        ; $4cca: $13
    db $10                                        ; $4ccb: $10
    ld a, [bc]                                    ; $4ccc: $0a
    ld [bc], a                                    ; $4ccd: $02
    inc d                                         ; $4cce: $14
    ld [de], a                                    ; $4ccf: $12
    ld a, [bc]                                    ; $4cd0: $0a
    ld [bc], a                                    ; $4cd1: $02
    dec d                                         ; $4cd2: $15
    ld sp, $020a                                  ; $4cd3: $31 $0a $02
    ld d, $0d                                     ; $4cd6: $16 $0d
    dec bc                                        ; $4cd8: $0b
    ld [bc], a                                    ; $4cd9: $02
    rla                                           ; $4cda: $17
    rrca                                          ; $4cdb: $0f
    dec bc                                        ; $4cdc: $0b
    ld [bc], a                                    ; $4cdd: $02
    jr @+$13                                      ; $4cde: $18 $11

    dec bc                                        ; $4ce0: $0b
    ld [bc], a                                    ; $4ce1: $02
    add hl, de                                    ; $4ce2: $19
    ld [hl-], a                                   ; $4ce3: $32
    dec bc                                        ; $4ce4: $0b
    ld [bc], a                                    ; $4ce5: $02
    ld a, [de]                                    ; $4ce6: $1a
    ld c, $0c                                     ; $4ce7: $0e $0c
    ld [bc], a                                    ; $4ce9: $02
    dec de                                        ; $4cea: $1b
    db $10                                        ; $4ceb: $10
    inc c                                         ; $4cec: $0c
    ld [bc], a                                    ; $4ced: $02
    inc e                                         ; $4cee: $1c
    ld sp, $020c                                  ; $4cef: $31 $0c $02
    dec e                                         ; $4cf2: $1d
    dec c                                         ; $4cf3: $0d
    rrca                                          ; $4cf4: $0f
    ld [bc], a                                    ; $4cf5: $02
    ld e, $0c                                     ; $4cf6: $1e $0c
    db $10                                        ; $4cf8: $10
    ld [bc], a                                    ; $4cf9: $02
    rra                                           ; $4cfa: $1f
    ld l, $10                                     ; $4cfb: $2e $10
    ld [bc], a                                    ; $4cfd: $02
    jr nz, jr_06e_4d0b                            ; $4cfe: $20 $0b

    ld de, $2102                                  ; $4d00: $11 $02 $21
    add hl, bc                                    ; $4d03: $09
    dec d                                         ; $4d04: $15
    ld [bc], a                                    ; $4d05: $02
    ld [hl+], a                                   ; $4d06: $22
    dec l                                         ; $4d07: $2d
    ld d, $02                                     ; $4d08: $16 $02
    inc hl                                        ; $4d0a: $23

jr_06e_4d0b:
    inc l                                         ; $4d0b: $2c
    rla                                           ; $4d0c: $17
    ld [bc], a                                    ; $4d0d: $02
    inc h                                         ; $4d0e: $24
    ld l, $17                                     ; $4d0f: $2e $17
    ld [bc], a                                    ; $4d11: $02
    dec h                                         ; $4d12: $25
    dec l                                         ; $4d13: $2d
    jr jr_06e_4d18                                ; $4d14: $18 $02

    ld h, $0a                                     ; $4d16: $26 $0a

jr_06e_4d18:
    ld a, [de]                                    ; $4d18: $1a
    ld [bc], a                                    ; $4d19: $02
    daa                                           ; $4d1a: $27
    dec l                                         ; $4d1b: $2d
    ld a, [de]                                    ; $4d1c: $1a
    ld [bc], a                                    ; $4d1d: $02
    jr z, jr_06e_4d4e                             ; $4d1e: $28 $2e

    dec de                                        ; $4d20: $1b
    ld [bc], a                                    ; $4d21: $02
    add hl, hl                                    ; $4d22: $29
    ld a, [bc]                                    ; $4d23: $0a
    inc e                                         ; $4d24: $1c
    ld [bc], a                                    ; $4d25: $02
    ld a, [hl+]                                   ; $4d26: $2a
    add hl, bc                                    ; $4d27: $09
    dec e                                         ; $4d28: $1d
    ld [bc], a                                    ; $4d29: $02
    dec hl                                        ; $4d2a: $2b
    jr nc, jr_06e_4d4b                            ; $4d2b: $30 $1e

    ld [bc], a                                    ; $4d2d: $02
    inc l                                         ; $4d2e: $2c
    ld [hl-], a                                   ; $4d2f: $32
    jr nz, @+$04                                  ; $4d30: $20 $02

    dec l                                         ; $4d32: $2d
    ld sp, $0221                                  ; $4d33: $31 $21 $02
    ld l, $33                                     ; $4d36: $2e $33
    ld hl, $2f02                                  ; $4d38: $21 $02 $2f
    ld [hl-], a                                   ; $4d3b: $32
    ld [hl+], a                                   ; $4d3c: $22
    ld [bc], a                                    ; $4d3d: $02
    jr nc, jr_06e_4d74                            ; $4d3e: $30 $34

    inc hl                                        ; $4d40: $23
    ld [bc], a                                    ; $4d41: $02
    ld sp, $2508                                  ; $4d42: $31 $08 $25
    ld [bc], a                                    ; $4d45: $02
    ld [hl-], a                                   ; $4d46: $32
    ld c, $29                                     ; $4d47: $0e $29
    ld [bc], a                                    ; $4d49: $02
    inc sp                                        ; $4d4a: $33

jr_06e_4d4b:
    rrca                                          ; $4d4b: $0f
    ld a, [hl+]                                   ; $4d4c: $2a
    ld [bc], a                                    ; $4d4d: $02

jr_06e_4d4e:
    inc [hl]                                      ; $4d4e: $34
    db $10                                        ; $4d4f: $10
    ld a, [hl+]                                   ; $4d50: $2a
    ld [bc], a                                    ; $4d51: $02
    dec [hl]                                      ; $4d52: $35
    ld de, $022b                                  ; $4d53: $11 $2b $02
    ld [hl], $37                                  ; $4d56: $36 $37
    dec hl                                        ; $4d58: $2b
    ld [bc], a                                    ; $4d59: $02
    scf                                           ; $4d5a: $37
    ld [de], a                                    ; $4d5b: $12
    dec l                                         ; $4d5c: $2d
    ld [bc], a                                    ; $4d5d: $02
    jr c, jr_06e_4d96                             ; $4d5e: $38 $36

    dec l                                         ; $4d60: $2d
    ld [bc], a                                    ; $4d61: $02
    add hl, sp                                    ; $4d62: $39
    inc de                                        ; $4d63: $13
    ld l, $02                                     ; $4d64: $2e $02
    ld a, [hl-]                                   ; $4d66: $3a
    ld [de], a                                    ; $4d67: $12
    cpl                                           ; $4d68: $2f
    ld [bc], a                                    ; $4d69: $02
    dec sp                                        ; $4d6a: $3b
    inc sp                                        ; $4d6b: $33
    inc [hl]                                      ; $4d6c: $34
    ld [bc], a                                    ; $4d6d: $02
    inc a                                         ; $4d6e: $3c
    inc [hl]                                      ; $4d6f: $34
    dec [hl]                                      ; $4d70: $35
    ld [bc], a                                    ; $4d71: $02
    dec a                                         ; $4d72: $3d
    rla                                           ; $4d73: $17

jr_06e_4d74:
    ld [hl], $02                                  ; $4d74: $36 $02
    ld a, $33                                     ; $4d76: $3e $33
    ld [hl], $02                                  ; $4d78: $36 $02
    ccf                                           ; $4d7a: $3f
    jr jr_06e_4db5                                ; $4d7b: $18 $38

    ld [bc], a                                    ; $4d7d: $02
    ld b, b                                       ; $4d7e: $40
    rla                                           ; $4d7f: $17
    add hl, sp                                    ; $4d80: $39
    ld [bc], a                                    ; $4d81: $02
    ld b, c                                       ; $4d82: $41
    add hl, de                                    ; $4d83: $19
    add hl, sp                                    ; $4d84: $39
    ld [bc], a                                    ; $4d85: $02
    ld b, d                                       ; $4d86: $42
    jr jr_06e_4dc3                                ; $4d87: $18 $3a

    ld [bc], a                                    ; $4d89: $02
    ld b, e                                       ; $4d8a: $43
    jr nc, jr_06e_4dc8                            ; $4d8b: $30 $3b

    ld [bc], a                                    ; $4d8d: $02
    ld b, h                                       ; $4d8e: $44
    dec de                                        ; $4d8f: $1b
    inc a                                         ; $4d90: $3c
    ld [bc], a                                    ; $4d91: $02
    ld b, l                                       ; $4d92: $45
    cpl                                           ; $4d93: $2f
    inc a                                         ; $4d94: $3c
    rst $38                                       ; $4d95: $ff

jr_06e_4d96:
    rst $38                                       ; $4d96: $ff
    rst $38                                       ; $4d97: $ff
    and b                                         ; $4d98: $a0
    ld c, l                                       ; $4d99: $4d
    ld a, c                                       ; $4d9a: $79
    ld d, c                                       ; $4d9b: $51
    rst $08                                       ; $4d9c: $cf
    ld d, [hl]                                    ; $4d9d: $56
    ld [$dd56], a                                 ; $4d9e: $ea $56 $dd
    dec c                                         ; $4da1: $0d
    rst $38                                       ; $4da2: $ff
    ld a, [$0e0e]                                 ; $4da3: $fa $0e $0e

Call_06e_4da6:
    ld c, $f1                                     ; $4da6: $0e $f1
    xor $0e                                       ; $4da8: $ee $0e
    ld c, $01                                     ; $4daa: $0e $01
    ld l, $dd                                     ; $4dac: $2e $dd
    pop af                                        ; $4dae: $f1
    jp hl                                         ; $4daf: $e9


    and $cd                                       ; $4db0: $e6 $cd
    jp hl                                         ; $4db2: $e9


    ret nz                                        ; $4db3: $c0

    jp hl                                         ; $4db4: $e9


jr_06e_4db5:
    ret z                                         ; $4db5: $c8

    ldh [$b1], a                                  ; $4db6: $e0 $b1
    db $e4                                        ; $4db8: $e4
    cp [hl]                                       ; $4db9: $be
    ld [$ac98], a                                 ; $4dba: $ea $98 $ac
    db $e4                                        ; $4dbd: $e4
    cp [hl]                                       ; $4dbe: $be
    rst $20                                       ; $4dbf: $e7
    db $f4                                        ; $4dc0: $f4
    db $e3                                        ; $4dc1: $e3
    ld c, [hl]                                    ; $4dc2: $4e

jr_06e_4dc3:
    ld c, [hl]                                    ; $4dc3: $4e
    sbc d                                         ; $4dc4: $9a
    pop hl                                        ; $4dc5: $e1
    add b                                         ; $4dc6: $80
    pop af                                        ; $4dc7: $f1

jr_06e_4dc8:
    dec c                                         ; $4dc8: $0d
    ld a, b                                       ; $4dc9: $78
    add b                                         ; $4dca: $80
    ldh a, [rBCPS]                                ; $4dcb: $f0 $68
    ld [c], a                                     ; $4dcd: $e2
    add b                                         ; $4dce: $80
    add sp, $0e                                   ; $4dcf: $e8 $0e
    ld l, [hl]                                    ; $4dd1: $6e
    ld a, [bc]                                    ; $4dd2: $0a
    ld a, [hl+]                                   ; $4dd3: $2a
    cp a                                          ; $4dd4: $bf
    pop hl                                        ; $4dd5: $e1
    ldh a, [rLCDC]                                ; $4dd6: $f0 $40
    ldh a, [$2e]                                  ; $4dd8: $f0 $2e
    db $eb                                        ; $4dda: $eb
    add b                                         ; $4ddb: $80
    jp hl                                         ; $4ddc: $e9


    add hl, bc                                    ; $4ddd: $09
    add sp, $6e                                   ; $4dde: $e8 $6e
    ld a, [bc]                                    ; $4de0: $0a
    ld a, [bc]                                    ; $4de1: $0a
    ld a, [hl+]                                   ; $4de2: $2a
    pop hl                                        ; $4de3: $e1
    ld c, d                                       ; $4de4: $4a
    ld a, [hl]                                    ; $4de5: $7e
    ld [c], a                                     ; $4de6: $e2
    db $10                                        ; $4de7: $10
    ldh a, [$d0]                                  ; $4de8: $f0 $d0
    reti                                          ; $4dea: $d9


Call_06e_4deb:
    call Call_000_2be4                            ; $4deb: $cd $e4 $2b
    ld a, [bc]                                    ; $4dee: $0a
    ld a, [bc]                                    ; $4def: $0a
    rlca                                          ; $4df0: $07

jr_06e_4df1:
    ld a, [bc]                                    ; $4df1: $0a
    ld c, d                                       ; $4df2: $4a
    dec bc                                        ; $4df3: $0b
    ld a, $e3                                     ; $4df4: $3e $e3
    adc $c3                                       ; $4df6: $ce $c3

jr_06e_4df8:
    or [hl]                                       ; $4df8: $b6
    add $80                                       ; $4df9: $c6 $80
    rst $28                                       ; $4dfb: $ef
    or c                                          ; $4dfc: $b1
    jp z, $8180                                   ; $4dfd: $ca $80 $81

Call_06e_4e00:
    push hl                                       ; $4e00: $e5
    cp a                                          ; $4e01: $bf
    pop hl                                        ; $4e02: $e1
    ld a, $e3                                     ; $4e03: $3e $e3
    db $10                                        ; $4e05: $10
    db $e3                                        ; $4e06: $e3
    or [hl]                                       ; $4e07: $b6
    bit 5, d                                      ; $4e08: $cb $6a
    call z, $ebbe                                 ; $4e0a: $cc $be $eb
    ld c, $01                                     ; $4e0d: $0e $01
    ld l, [hl]                                    ; $4e0f: $6e
    add c                                         ; $4e10: $81
    pop hl                                        ; $4e11: $e1
    ld a, a                                       ; $4e12: $7f
    pop hl                                        ; $4e13: $e1
    cp h                                          ; $4e14: $bc
    ret nz                                        ; $4e15: $c0

    adc c                                         ; $4e16: $89
    rst $20                                       ; $4e17: $e7
    ret nz                                        ; $4e18: $c0

    push af                                       ; $4e19: $f5
    adc d                                         ; $4e1a: $8a
    push bc                                       ; $4e1b: $c5
    ld b, c                                       ; $4e1c: $41
    push bc                                       ; $4e1d: $c5
    daa                                           ; $4e1e: $27
    ld c, [hl]                                    ; $4e1f: $4e
    ld l, [hl]                                    ; $4e20: $6e
    dec bc                                        ; $4e21: $0b
    add c                                         ; $4e22: $81
    ld [c], a                                     ; $4e23: $e2
    cp a                                          ; $4e24: $bf
    ld [c], a                                     ; $4e25: $e2
    ld c, [hl]                                    ; $4e26: $4e
    ld [hl], $d3                                  ; $4e27: $36 $d3
    cp c                                          ; $4e29: $b9
    rst $08                                       ; $4e2a: $cf
    sub [hl]                                      ; $4e2b: $96
    jr nz, jr_06e_4df1                            ; $4e2c: $20 $c3

    ld c, [hl]                                    ; $4e2e: $4e
    ld c, [hl]                                    ; $4e2f: $4e
    jp nz, Jump_000_0be0                          ; $4e30: $c2 $e0 $0b

    add c                                         ; $4e33: $81
    db $e3                                        ; $4e34: $e3
    cp $c1                                        ; $4e35: $fe $c1
    dec bc                                        ; $4e37: $0b
    nop                                           ; $4e38: $00
    cp [hl]                                       ; $4e39: $be
    ldh [$36], a                                  ; $4e3a: $e0 $36
    jp $d679                                      ; $4e3c: $c3 $79 $d6


    add sp, -$3a                                  ; $4e3f: $e8 $c6
    call c, $86c0                                 ; $4e41: $dc $c0 $86
    ldh [$fe], a                                  ; $4e44: $e0 $fe

Jump_06e_4e46:
    pop hl                                        ; $4e46: $e1
    rst $38                                       ; $4e47: $ff
    and $03                                       ; $4e48: $e6 $03
    ld a, [hl+]                                   ; $4e4a: $2a
    ld a, [hl+]                                   ; $4e4b: $2a
    ldh a, [$e2]                                  ; $4e4c: $f0 $e2
    ld [hl], a                                    ; $4e4e: $77
    add $97                                       ; $4e4f: $c6 $97
    xor b                                         ; $4e51: $a8
    ret nz                                        ; $4e52: $c0

    xor $4a                                       ; $4e53: $ee $4a
    call nz, $e0fe                                ; $4e55: $c4 $fe $e0
    nop                                           ; $4e58: $00
    ld a, [$c2e1]                                 ; $4e59: $fa $e1 $c2
    ld [c], a                                     ; $4e5c: $e2

jr_06e_4e5d:
    cp a                                          ; $4e5d: $bf
    ld [c], a                                     ; $4e5e: $e2
    xor $e0                                       ; $4e5f: $ee $e0
    push af                                       ; $4e61: $f5
    and d                                         ; $4e62: $a2
    call $80ea                                    ; $4e63: $cd $ea $80
    xor d                                         ; $4e66: $aa
    and $a6                                       ; $4e67: $e6 $a6
    dec de                                        ; $4e69: $1b
    ld c, d                                       ; $4e6a: $4a
    ld c, d                                       ; $4e6b: $4a
    adc c                                         ; $4e6c: $89
    db $e4                                        ; $4e6d: $e4
    ld c, e                                       ; $4e6e: $4b
    ld l, e                                       ; $4e6f: $6b
    ld a, [$f5e6]                                 ; $4e70: $fa $e6 $f5
    jp $a467                                      ; $4e73: $c3 $67 $a4


    jr jr_06e_4df8                                ; $4e76: $18 $80

    or c                                          ; $4e78: $b1
    and [hl]                                      ; $4e79: $a6
    xor b                                         ; $4e7a: $a8
    ret nc                                        ; $4e7b: $d0

    and $0b                                       ; $4e7c: $e6 $0b
    dec hl                                        ; $4e7e: $2b
    or [hl]                                       ; $4e7f: $b6
    pop hl                                        ; $4e80: $e1
    ld a, [$b0e3]                                 ; $4e81: $fa $e3 $b0
    ld [c], a                                     ; $4e84: $e2
    ret c                                         ; $4e85: $d8

    push hl                                       ; $4e86: $e5
    add [hl]                                      ; $4e87: $86
    add a                                         ; $4e88: $87
    jp z, $8cd7                                   ; $4e89: $ca $d7 $8c

    ld c, [hl]                                    ; $4e8c: $4e
    ld l, $8f                                     ; $4e8d: $2e $8f
    db $e4                                        ; $4e8f: $e4
    dec bc                                        ; $4e90: $0b
    dec bc                                        ; $4e91: $0b
    db $ed                                        ; $4e92: $ed
    ld c, e                                       ; $4e93: $4b
    ret nz                                        ; $4e94: $c0

    and c                                         ; $4e95: $a1
    ld l, e                                       ; $4e96: $6b
    dec hl                                        ; $4e97: $2b
    jr c, jr_06e_4e5d                             ; $4e98: $38 $c3

    ld a, [hl+]                                   ; $4e9a: $2a
    ld c, e                                       ; $4e9b: $4b
    ld c, $89                                     ; $4e9c: $0e $89
    ld l, [hl]                                    ; $4e9e: $6e
    ret nz                                        ; $4e9f: $c0

    rst $38                                       ; $4ea0: $ff
    ld h, [hl]                                    ; $4ea1: $66
    add c                                         ; $4ea2: $81
    dec bc                                        ; $4ea3: $0b
    ld c, [hl]                                    ; $4ea4: $4e
    db $e3                                        ; $4ea5: $e3
    adc c                                         ; $4ea6: $89
    ret nz                                        ; $4ea7: $c0

    ld [hl], $e1                                  ; $4ea8: $36 $e1
    dec hl                                        ; $4eaa: $2b
    ld h, b                                       ; $4eab: $60
    ret nz                                        ; $4eac: $c0

    db $e3                                        ; $4ead: $e3
    pop bc                                        ; $4eae: $c1
    rst $20                                       ; $4eaf: $e7
    ld sp, $3389                                  ; $4eb0: $31 $89 $33
    and $01                                       ; $4eb3: $e6 $01
    xor b                                         ; $4eb5: $a8
    ld c, $0b                                     ; $4eb6: $0e $0b
    cp a                                          ; $4eb8: $bf
    db $e4                                        ; $4eb9: $e4
    inc bc                                        ; $4eba: $03
    ld c, e                                       ; $4ebb: $4b
    ld l, e                                       ; $4ebc: $6b
    push af                                       ; $4ebd: $f5
    pop bc                                        ; $4ebe: $c1
    ld a, [$82e3]                                 ; $4ebf: $fa $e3 $82
    db $e4                                        ; $4ec2: $e4
    ret                                           ; $4ec3: $c9


    sub d                                         ; $4ec4: $92
    ld b, c                                       ; $4ec5: $41
    adc e                                         ; $4ec6: $8b
    dec b                                         ; $4ec7: $05
    pop bc                                        ; $4ec8: $c1
    ld c, e                                       ; $4ec9: $4b
    dec bc                                        ; $4eca: $0b
    ld l, e                                       ; $4ecb: $6b
    cp h                                          ; $4ecc: $bc
    ret nz                                        ; $4ecd: $c0

    ld l, d                                       ; $4ece: $6a
    cp $a2                                        ; $4ecf: $fe $a2
    ld a, [$0ae3]                                 ; $4ed1: $fa $e3 $0a
    ld b, e                                       ; $4ed4: $43
    db $e4                                        ; $4ed5: $e4
    jr nz, jr_06e_4ee8                            ; $4ed6: $20 $10

    ret z                                         ; $4ed8: $c8

    adc a                                         ; $4ed9: $8f
    add $ad                                       ; $4eda: $c6 $ad
    ld l, b                                       ; $4edc: $68
    db $10                                        ; $4edd: $10
    add b                                         ; $4ede: $80
    ld c, d                                       ; $4edf: $4a
    and d                                         ; $4ee0: $a2
    ld a, [hl+]                                   ; $4ee1: $2a
    ld b, [hl]                                    ; $4ee2: $46
    ld [c], a                                     ; $4ee3: $e2
    ld b, b                                       ; $4ee4: $40
    add $80                                       ; $4ee5: $c6 $80
    or h                                          ; $4ee7: $b4

jr_06e_4ee8:
    pop bc                                        ; $4ee8: $c1
    inc bc                                        ; $4ee9: $03
    ret                                           ; $4eea: $c9


    or a                                          ; $4eeb: $b7
    add a                                         ; $4eec: $87
    add b                                         ; $4eed: $80
    db $eb                                        ; $4eee: $eb
    ld c, h                                       ; $4eef: $4c
    and b                                         ; $4ef0: $a0
    adc l                                         ; $4ef1: $8d
    add b                                         ; $4ef2: $80
    rrca                                          ; $4ef3: $0f
    pop bc                                        ; $4ef4: $c1
    ld a, [bc]                                    ; $4ef5: $0a
    ret nz                                        ; $4ef6: $c0

    add e                                         ; $4ef7: $83
    and l                                         ; $4ef8: $a5
    ld [hl], l                                    ; $4ef9: $75
    push bc                                       ; $4efa: $c5
    ret nz                                        ; $4efb: $c0

    db $e4                                        ; $4efc: $e4
    dec l                                         ; $4efd: $2d
    ld [hl], l                                    ; $4efe: $75
    ld de, $4d83                                  ; $4eff: $11 $83 $4d
    and [hl]                                      ; $4f02: $a6
    ld a, [hl+]                                   ; $4f03: $2a
    ld c, e                                       ; $4f04: $4b
    ldh [$fb], a                                  ; $4f05: $e0 $fb
    and l                                         ; $4f07: $a5
    inc [hl]                                      ; $4f08: $34
    add $78                                       ; $4f09: $c6 $78
    ld l, h                                       ; $4f0b: $6c
    db $fc                                        ; $4f0c: $fc
    ld c, a                                       ; $4f0d: $4f
    pop bc                                        ; $4f0e: $c1
    rst $20                                       ; $4f0f: $e7
    ld a, [hl+]                                   ; $4f10: $2a
    ld a, [hl+]                                   ; $4f11: $2a
    ld c, e                                       ; $4f12: $4b
    ret nc                                        ; $4f13: $d0

    ld b, d                                       ; $4f14: $42
    xor b                                         ; $4f15: $a8
    ld a, e                                       ; $4f16: $7b
    add h                                         ; $4f17: $84
    jr c, @+$72                                   ; $4f18: $38 $70

    db $fc                                        ; $4f1a: $fc
    ld c, e                                       ; $4f1b: $4b
    ld c, $c1                                     ; $4f1c: $0e $c1
    and $4b                                       ; $4f1e: $e6 $4b
    dec c                                         ; $4f20: $0d
    add c                                         ; $4f21: $81
    dec bc                                        ; $4f22: $0b
    ret nz                                        ; $4f23: $c0

    db $ed                                        ; $4f24: $ed
    add b                                         ; $4f25: $80
    add sp, -$79                                  ; $4f26: $e8 $87
    ld c, c                                       ; $4f28: $49
    push af                                       ; $4f29: $f5
    jp hl                                         ; $4f2a: $e9


    ld de, $4984                                  ; $4f2b: $11 $84 $49
    and b                                         ; $4f2e: $a0
    dec bc                                        ; $4f2f: $0b
    ld bc, $760d                                  ; $4f30: $01 $0d $76
    and $80                                       ; $4f33: $e6 $80
    rst $20                                       ; $4f35: $e7
    ld hl, sp+$48                                 ; $4f36: $f8 $48
    ld b, l                                       ; $4f38: $45
    ld c, e                                       ; $4f39: $4b
    ld a, [bc]                                    ; $4f3a: $0a
    add $82                                       ; $4f3b: $c6 $82
    add sp, $05                                   ; $4f3d: $e8 $05
    add e                                         ; $4f3f: $83
    rlca                                          ; $4f40: $07
    ld a, [hl+]                                   ; $4f41: $2a
    ld a, [hl+]                                   ; $4f42: $2a
    dec c                                         ; $4f43: $0d
    or h                                          ; $4f44: $b4
    ldh [$3f], a                                  ; $4f45: $e0 $3f
    jp hl                                         ; $4f47: $e9


    adc e                                         ; $4f48: $8b
    db $ed                                        ; $4f49: $ed
    ret nz                                        ; $4f4a: $c0

    ldh a, [$82]                                  ; $4f4b: $f0 $82
    ldh [rNR32], a                                ; $4f4d: $e0 $1c
    ld b, c                                       ; $4f4f: $41
    db $e4                                        ; $4f50: $e4
    ld [hl], a                                    ; $4f51: $77
    pop hl                                        ; $4f52: $e1
    ld a, [bc]                                    ; $4f53: $0a
    dec hl                                        ; $4f54: $2b
    dec c                                         ; $4f55: $0d
    ld [hl], d                                    ; $4f56: $72
    and l                                         ; $4f57: $a5
    ld a, [hl-]                                   ; $4f58: $3a
    ld h, e                                       ; $4f59: $63
    jr c, jr_06e_4fac                             ; $4f5a: $38 $50

    ld e, b                                       ; $4f5c: $58
    add b                                         ; $4f5d: $80
    db $eb                                        ; $4f5e: $eb
    ld b, e                                       ; $4f5f: $43
    ldh [rSB], a                                  ; $4f60: $e0 $01
    ldh [rWY], a                                  ; $4f62: $e0 $4a
    ld c, d                                       ; $4f64: $4a
    cp e                                          ; $4f65: $bb
    ret nz                                        ; $4f66: $c0

    dec hl                                        ; $4f67: $2b
    dec a                                         ; $4f68: $3d
    and c                                         ; $4f69: $a1
    rlca                                          ; $4f6a: $07
    dec c                                         ; $4f6b: $0d
    dec c                                         ; $4f6c: $0d
    dec hl                                        ; $4f6d: $2b
    ld a, a                                       ; $4f6e: $7f
    add d                                         ; $4f6f: $82
    ret nz                                        ; $4f70: $c0

    or $c1                                        ; $4f71: $f6 $c1
    add $81                                       ; $4f73: $c6 $81
    push hl                                       ; $4f75: $e5
    sub c                                         ; $4f76: $91
    ld h, b                                       ; $4f77: $60
    ld b, $fe                                     ; $4f78: $06 $fe
    add b                                         ; $4f7a: $80
    dec c                                         ; $4f7b: $0d
    dec hl                                        ; $4f7c: $2b
    cp d                                          ; $4f7d: $ba
    ld h, b                                       ; $4f7e: $60
    ld [hl], $a0                                  ; $4f7f: $36 $a0
    ld [hl], d                                    ; $4f81: $72
    ldh [rHDMA5], a                               ; $4f82: $e0 $55
    jr nz, jr_06e_4fef                            ; $4f84: $20 $69

    ldh [$90], a                                  ; $4f86: $e0 $90
    add b                                         ; $4f88: $80
    and $01                                       ; $4f89: $e6 $01
    ld b, [hl]                                    ; $4f8b: $46
    ret nz                                        ; $4f8c: $c0

    pop af                                        ; $4f8d: $f1
    ld c, c                                       ; $4f8e: $49
    ld h, d                                       ; $4f8f: $62
    ld a, [hl+]                                   ; $4f90: $2a
    adc c                                         ; $4f91: $89
    ld [c], a                                     ; $4f92: $e2
    cp b                                          ; $4f93: $b8
    pop hl                                        ; $4f94: $e1
    ld c, e                                       ; $4f95: $4b
    dec d                                         ; $4f96: $15
    ld c, e                                       ; $4f97: $4b
    ld [hl-], a                                   ; $4f98: $32
    ldh [$2e], a                                  ; $4f99: $e0 $2e
    ld l, h                                       ; $4f9b: $6c
    add b                                         ; $4f9c: $80
    dec bc                                        ; $4f9d: $0b
    add e                                         ; $4f9e: $83
    add b                                         ; $4f9f: $80
    add hl, hl                                    ; $4fa0: $29
    ld b, l                                       ; $4fa1: $45
    ret nz                                        ; $4fa2: $c0

    db $f4                                        ; $4fa3: $f4
    ld h, h                                       ; $4fa4: $64
    ret                                           ; $4fa5: $c9


    ld h, d                                       ; $4fa6: $62
    adc h                                         ; $4fa7: $8c
    ld b, l                                       ; $4fa8: $45
    dec c                                         ; $4fa9: $0d
    ld c, d                                       ; $4faa: $4a
    add b                                         ; $4fab: $80

jr_06e_4fac:
    ret nz                                        ; $4fac: $c0

    pop hl                                        ; $4fad: $e1
    dec c                                         ; $4fae: $0d
    dec l                                         ; $4faf: $2d
    ret nz                                        ; $4fb0: $c0

    pop hl                                        ; $4fb1: $e1
    inc hl                                        ; $4fb2: $23
    dec c                                         ; $4fb3: $0d
    ld c, [hl]                                    ; $4fb4: $4e
    add e                                         ; $4fb5: $83
    add [hl]                                      ; $4fb6: $86
    ret z                                         ; $4fb7: $c8

    ld d, l                                       ; $4fb8: $55
    add hl, bc                                    ; $4fb9: $09
    add d                                         ; $4fba: $82
    ld a, [hl+]                                   ; $4fbb: $2a
    call z, Call_06e_4245                         ; $4fbc: $cc $45 $42
    db $e4                                        ; $4fbf: $e4
    ld b, $82                                     ; $4fc0: $06 $82
    ldh [$0d], a                                  ; $4fc2: $e0 $0d
    dec l                                         ; $4fc4: $2d
    push bc                                       ; $4fc5: $c5
    add sp, $45                                   ; $4fc6: $e8 $45
    or l                                          ; $4fc8: $b5
    cp a                                          ; $4fc9: $bf
    push hl                                       ; $4fca: $e5
    rst $08                                       ; $4fcb: $cf
    ld h, c                                       ; $4fcc: $61
    ld b, [hl]                                    ; $4fcd: $46
    add d                                         ; $4fce: $82
    ld h, b                                       ; $4fcf: $60
    ei                                            ; $4fd0: $fb
    jp nz, Jump_06e_407d                          ; $4fd1: $c2 $7d $40

    add c                                         ; $4fd4: $81

jr_06e_4fd5:
    db $e4                                        ; $4fd5: $e4
    daa                                           ; $4fd6: $27
    rla                                           ; $4fd7: $17
    ld a, [hl]                                    ; $4fd8: $7e
    jp hl                                         ; $4fd9: $e9


    ld c, $2e                                     ; $4fda: $0e $2e
    ld c, l                                       ; $4fdc: $4d
    ld b, l                                       ; $4fdd: $45
    add hl, de                                    ; $4fde: $19
    dec bc                                        ; $4fdf: $0b
    inc bc                                        ; $4fe0: $03
    ldh [$bf], a                                  ; $4fe1: $e0 $bf
    ld h, d                                       ; $4fe3: $62
    dec l                                         ; $4fe4: $2d
    dec l                                         ; $4fe5: $2d
    add c                                         ; $4fe6: $81
    and $cb                                       ; $4fe7: $e6 $cb
    ld l, c                                       ; $4fe9: $69
    push af                                       ; $4fea: $f5
    dec b                                         ; $4feb: $05
    db $10                                        ; $4fec: $10
    rst $08                                       ; $4fed: $cf
    dec c                                         ; $4fee: $0d

jr_06e_4fef:
    push bc                                       ; $4fef: $c5
    ld b, h                                       ; $4ff0: $44
    cp l                                          ; $4ff1: $bd
    and h                                         ; $4ff2: $a4
    ccf                                           ; $4ff3: $3f
    ld h, b                                       ; $4ff4: $60
    dec bc                                        ; $4ff5: $0b
    ret z                                         ; $4ff6: $c8

    pop bc                                        ; $4ff7: $c1
    sub h                                         ; $4ff8: $94
    and $02                                       ; $4ff9: $e6 $02
    jr z, jr_06e_501d                             ; $4ffb: $28 $20

    inc [hl]                                      ; $4ffd: $34
    ld c, d                                       ; $4ffe: $4a
    ld d, b                                       ; $4fff: $50
    ld b, $85                                     ; $5000: $06 $85
    ld b, h                                       ; $5002: $44
    jp nz, $40c0                                  ; $5003: $c2 $c0 $40

    ld [c], a                                     ; $5006: $e2
    ld c, e                                       ; $5007: $4b
    adc $80                                       ; $5008: $ce $80
    ret z                                         ; $500a: $c8

    add $00                                       ; $500b: $c6 $00
    ret nz                                        ; $500d: $c0

    add sp, -$7b                                  ; $500e: $e8 $85
    ld d, e                                       ; $5010: $53
    add b                                         ; $5011: $80
    and $85                                       ; $5012: $e6 $85
    jr nz, jr_06e_4fd5                            ; $5014: $20 $bf

    add b                                         ; $5016: $80
    add d                                         ; $5017: $82
    jp nz, $ad55                                  ; $5018: $c2 $55 $ad

    ld c, d                                       ; $501b: $4a
    rrca                                          ; $501c: $0f

jr_06e_501d:
    nop                                           ; $501d: $00
    ld [hl], l                                    ; $501e: $75
    jp hl                                         ; $501f: $e9


    ld b, b                                       ; $5020: $40
    db $e4                                        ; $5021: $e4
    cp h                                          ; $5022: $bc
    and h                                         ; $5023: $a4
    add e                                         ; $5024: $83
    and c                                         ; $5025: $a1
    ld b, h                                       ; $5026: $44
    rlca                                          ; $5027: $07
    rst $08                                       ; $5028: $cf
    xor [hl]                                      ; $5029: $ae
    inc a                                         ; $502a: $3c
    sub b                                         ; $502b: $90
    dec b                                         ; $502c: $05
    ld b, h                                       ; $502d: $44
    nop                                           ; $502e: $00
    cp $82                                        ; $502f: $fe $82
    add d                                         ; $5031: $82
    and c                                         ; $5032: $a1
    add b                                         ; $5033: $80
    db $e3                                        ; $5034: $e3
    ret nz                                        ; $5035: $c0

    rst $20                                       ; $5036: $e7
    rst $38                                       ; $5037: $ff
    db $10                                        ; $5038: $10
    add a                                         ; $5039: $87
    ld a, [bc]                                    ; $503a: $0a
    db $fc                                        ; $503b: $fc
    and e                                         ; $503c: $a3
    cp [hl]                                       ; $503d: $be
    add e                                         ; $503e: $83
    nop                                           ; $503f: $00
    ld b, d                                       ; $5040: $42
    jp nz, Jump_06e_648a                          ; $5041: $c2 $8a $64

    call z, Call_000_39a4                         ; $5044: $cc $a4 $39
    ld bc, $8b46                                  ; $5047: $01 $46 $8b
    cp b                                          ; $504a: $b8
    dec hl                                        ; $504b: $2b
    ld e, b                                       ; $504c: $58
    and d                                         ; $504d: $a2
    ld c, b                                       ; $504e: $48
    db $e3                                        ; $504f: $e3
    ld bc, $416b                                  ; $5050: $01 $6b $41
    pop bc                                        ; $5053: $c1
    pop bc                                        ; $5054: $c1
    ret nz                                        ; $5055: $c0

    dec c                                         ; $5056: $0d
    ld c, [hl]                                    ; $5057: $4e
    jp nz, Jump_06e_406a                          ; $5058: $c2 $6a $40

jr_06e_505b:
    xor d                                         ; $505b: $aa
    push de                                       ; $505c: $d5
    jp nz, $e1bf                                  ; $505d: $c2 $bf $e1

    add d                                         ; $5060: $82
    ld e, d                                       ; $5061: $5a
    ld h, b                                       ; $5062: $60
    ld l, $c0                                     ; $5063: $2e $c0
    db $e3                                        ; $5065: $e3
    dec bc                                        ; $5066: $0b
    ld h, h                                       ; $5067: $64
    reti                                          ; $5068: $d9


    add hl, bc                                    ; $5069: $09
    dec a                                         ; $506a: $3d
    ld h, $77                                     ; $506b: $26 $77
    or h                                          ; $506d: $b4
    ld c, [hl]                                    ; $506e: $4e
    ld d, $4e                                     ; $506f: $16 $4e
    jp nz, Jump_06e_6b0e                          ; $5071: $c2 $0e $6b

    ld b, $c0                                     ; $5074: $06 $c0
    ld l, e                                       ; $5076: $6b
    add c                                         ; $5077: $81
    push bc                                       ; $5078: $c5
    sub b                                         ; $5079: $90
    ld l, e                                       ; $507a: $6b
    rst $00                                       ; $507b: $c7
    or c                                          ; $507c: $b1
    inc b                                         ; $507d: $04
    db $ed                                        ; $507e: $ed
    ld c, l                                       ; $507f: $4d
    dec a                                         ; $5080: $3d
    jr nz, jr_06e_50ce                            ; $5081: $20 $4b

    cp l                                          ; $5083: $bd
    ldh [rSTAT], a                                ; $5084: $e0 $41
    jp Jump_06e_6e90                              ; $5086: $c3 $90 $6e


    or [hl]                                       ; $5089: $b6
    ld l, a                                       ; $508a: $6f
    ld a, [hl+]                                   ; $508b: $2a
    dec l                                         ; $508c: $2d
    dec b                                         ; $508d: $05
    ld l, [hl]                                    ; $508e: $6e
    ld a, [$0d62]                                 ; $508f: $fa $62 $0d
    dec bc                                        ; $5092: $0b
    ld h, d                                       ; $5093: $62
    ld c, a                                       ; $5094: $4f
    jp c, $d2f2                                   ; $5095: $da $f2 $d2

    rst $30                                       ; $5098: $f7
    jr nz, jr_06e_505b                            ; $5099: $20 $c0

    db $e4                                        ; $509b: $e4
    nop                                           ; $509c: $00
    call nz, Call_06e_7c92                        ; $509d: $c4 $92 $7c
    call z, $87f4                                 ; $50a0: $cc $f4 $87
    db $fd                                        ; $50a3: $fd
    ld b, $c1                                     ; $50a4: $06 $c1
    db $e3                                        ; $50a6: $e3
    ld b, e                                       ; $50a7: $43
    ld h, c                                       ; $50a8: $61
    ld a, a                                       ; $50a9: $7f
    di                                            ; $50aa: $f3
    or h                                          ; $50ab: $b4
    ld a, [c]                                     ; $50ac: $f2
    nop                                           ; $50ad: $00
    ld a, l                                       ; $50ae: $7d
    ld b, $8f                                     ; $50af: $06 $8f
    add b                                         ; $50b1: $80
    ld a, a                                       ; $50b2: $7f
    and h                                         ; $50b3: $a4
    add h                                         ; $50b4: $84
    ld h, b                                       ; $50b5: $60
    ld a, $eb                                     ; $50b6: $3e $eb
    ld e, c                                       ; $50b8: $59
    ld [$b574], sp                                ; $50b9: $08 $74 $b5
    halt                                          ; $50bc: $76
    ld h, c                                       ; $50bd: $61
    nop                                           ; $50be: $00
    ret nz                                        ; $50bf: $c0

    and h                                         ; $50c0: $a4
    or l                                          ; $50c1: $b5
    ld b, d                                       ; $50c2: $42
    dec d                                         ; $50c3: $15
    ld [$fec0], a                                 ; $50c4: $ea $c0 $fe
    ld [hl], $63                                  ; $50c7: $36 $63
    cp a                                          ; $50c9: $bf
    rst $20                                       ; $50ca: $e7
    ld b, e                                       ; $50cb: $43
    ld h, d                                       ; $50cc: $62
    ld e, e                                       ; $50cd: $5b

jr_06e_50ce:
    inc h                                         ; $50ce: $24
    nop                                           ; $50cf: $00
    cp c                                          ; $50d0: $b9
    ld b, b                                       ; $50d1: $40
    ret nz                                        ; $50d2: $c0

    rst $38                                       ; $50d3: $ff
    cp h                                          ; $50d4: $bc
    and h                                         ; $50d5: $a4
    ld a, a                                       ; $50d6: $7f
    and $40                                       ; $50d7: $e6 $40
    adc b                                         ; $50d9: $88
    ld a, a                                       ; $50da: $7f
    daa                                           ; $50db: $27
    ld a, a                                       ; $50dc: $7f
    inc de                                        ; $50dd: $13
    ld [c], a                                     ; $50de: $e2
    ld b, $00                                     ; $50df: $06 $00
    ld a, [hl-]                                   ; $50e1: $3a
    and l                                         ; $50e2: $a5
    add b                                         ; $50e3: $80
    ld b, b                                       ; $50e4: $40
    inc b                                         ; $50e5: $04
    ld l, l                                       ; $50e6: $6d
    ld c, b                                       ; $50e7: $48
    ret nc                                        ; $50e8: $d0

    ccf                                           ; $50e9: $3f
    pop de                                        ; $50ea: $d1
    ld a, a                                       ; $50eb: $7f
    push bc                                       ; $50ec: $c5
    ld b, h                                       ; $50ed: $44
    ld l, a                                       ; $50ee: $6f
    cp b                                          ; $50ef: $b8
    ld hl, sp+$00                                 ; $50f0: $f8 $00
    ret nz                                        ; $50f2: $c0

    jp hl                                         ; $50f3: $e9


    ld a, $82                                     ; $50f4: $3e $82
    jp $c8c9                                      ; $50f6: $c3 $c9 $c8


    ld d, l                                       ; $50f9: $55
    ccf                                           ; $50fa: $3f
    ld b, $24                                     ; $50fb: $06 $24
    nop                                           ; $50fd: $00
    ld [hl+], a                                   ; $50fe: $22
    ld h, [hl]                                    ; $50ff: $66
    add c                                         ; $5100: $81
    and e                                         ; $5101: $a3
    nop                                           ; $5102: $00
    add b                                         ; $5103: $80
    xor b                                         ; $5104: $a8
    add hl, bc                                    ; $5105: $09
    db $ed                                        ; $5106: $ed
    sub l                                         ; $5107: $95
    and a                                         ; $5108: $a7
    xor d                                         ; $5109: $aa
    rlca                                          ; $510a: $07
    push af                                       ; $510b: $f5
    ld c, b                                       ; $510c: $48
    ld [bc], a                                    ; $510d: $02
    ld h, e                                       ; $510e: $63
    jr c, jr_06e_5132                             ; $510f: $38 $21

    rst $00                                       ; $5111: $c7
    sub b                                         ; $5112: $90
    inc b                                         ; $5113: $04
    ret nz                                        ; $5114: $c0

    ld [$f26d], a                                 ; $5115: $ea $6d $f2
    ld l, [hl]                                    ; $5118: $6e
    pop bc                                        ; $5119: $c1
    ld b, h                                       ; $511a: $44
    add b                                         ; $511b: $80
    or c                                          ; $511c: $b1
    add hl, bc                                    ; $511d: $09
    rst $10                                       ; $511e: $d7
    add hl, hl                                    ; $511f: $29
    add a                                         ; $5120: $87
    add c                                         ; $5121: $81
    ld b, l                                       ; $5122: $45
    ld d, b                                       ; $5123: $50
    cp $c7                                        ; $5124: $fe $c7
    db $e4                                        ; $5126: $e4
    adc b                                         ; $5127: $88
    ret nz                                        ; $5128: $c0

    rst $38                                       ; $5129: $ff
    db $d3                                        ; $512a: $d3
    nop                                           ; $512b: $00
    dec hl                                        ; $512c: $2b
    inc a                                         ; $512d: $3c
    ld bc, $3f2d                                  ; $512e: $01 $2d $3f
    rst $20                                       ; $5131: $e7

jr_06e_5132:
    inc b                                         ; $5132: $04
    jp z, Jump_000_3bfb                           ; $5133: $ca $fb $3b

    db $ed                                        ; $5136: $ed
    ld c, $81                                     ; $5137: $0e $81
    ld hl, $ca00                                  ; $5139: $21 $00 $ca
    db $e4                                        ; $513c: $e4
    add h                                         ; $513d: $84
    or e                                          ; $513e: $b3
    sbc l                                         ; $513f: $9d
    ld e, a                                       ; $5140: $5f
    dec b                                         ; $5141: $05
    add b                                         ; $5142: $80
    ret nz                                        ; $5143: $c0

    rst $20                                       ; $5144: $e7
    ld h, e                                       ; $5145: $63
    rst $00                                       ; $5146: $c7
    ld de, $f58c                                  ; $5147: $11 $8c $f5
    ld [$acf0], a                                 ; $514a: $ea $f0 $ac
    or [hl]                                       ; $514d: $b6
    nop                                           ; $514e: $00
    rst $38                                       ; $514f: $ff
    db $e3                                        ; $5150: $e3
    ld c, e                                       ; $5151: $4b
    nop                                           ; $5152: $00
    inc [hl]                                      ; $5153: $34
    ld h, d                                       ; $5154: $62
    xor c                                         ; $5155: $a9
    ld h, a                                       ; $5156: $67
    ld [hl], h                                    ; $5157: $74
    adc h                                         ; $5158: $8c
    inc hl                                        ; $5159: $23
    rst $08                                       ; $515a: $cf
    sub c                                         ; $515b: $91
    inc h                                         ; $515c: $24
    ei                                            ; $515d: $fb
    ld b, b                                       ; $515e: $40
    cp $e3                                        ; $515f: $fe $e3
    push bc                                       ; $5161: $c5
    ld bc, $1508                                  ; $5162: $01 $08 $15
    ld [hl], h                                    ; $5165: $74
    ld b, $d2                                     ; $5166: $06 $d2
    ld d, [hl]                                    ; $5168: $56
    inc b                                         ; $5169: $04
    ld c, l                                       ; $516a: $4d
    rst $38                                       ; $516b: $ff
    and $d5                                       ; $516c: $e6 $d5
    ld e, e                                       ; $516e: $5b
    rst $38                                       ; $516f: $ff
    rst $38                                       ; $5170: $ff
    rst $38                                       ; $5171: $ff
    rst $38                                       ; $5172: $ff
    nop                                           ; $5173: $00
    ld b, l                                       ; $5174: $45
    ld b, e                                       ; $5175: $43
    nop                                           ; $5176: $00

Jump_06e_5177:
    nop                                           ; $5177: $00
    nop                                           ; $5178: $00
    db $dd                                        ; $5179: $dd
    and b                                         ; $517a: $a0
    rst $38                                       ; $517b: $ff
    ld a, [$d7d6]                                 ; $517c: $fa $d6 $d7
    ret c                                         ; $517f: $d8

    pop af                                        ; $5180: $f1
    xor $d4                                       ; $5181: $ee $d4
    push de                                       ; $5183: $d5
    reti                                          ; $5184: $d9


    call nc, $f1dd                                ; $5185: $d4 $dd $f1
    jp hl                                         ; $5188: $e9


    and $e2                                       ; $5189: $e6 $e2
    db $e3                                        ; $518b: $e3
    xor h                                         ; $518c: $ac
    rst $20                                       ; $518d: $e7
    reti                                          ; $518e: $d9


    jp c, $db01                                   ; $518f: $da $01 $db

    sbc a                                         ; $5192: $9f
    and $c8                                       ; $5193: $e6 $c8
    ldh [$f1], a                                  ; $5195: $e0 $f1
    db $e4                                        ; $5197: $e4
    cp [hl]                                       ; $5198: $be
    ld [$e2dd], a                                 ; $5199: $ea $dd $e2
    call z, $a7e2                                 ; $519c: $cc $e2 $a7
    db $e4                                        ; $519f: $e4
    ld a, e                                       ; $51a0: $7b
    db $e4                                        ; $51a1: $e4
    push hl                                       ; $51a2: $e5
    ld l, h                                       ; $51a3: $6c
    ldh [$9f], a                                  ; $51a4: $e0 $9f
    sbc l                                         ; $51a6: $9d
    sbc l                                         ; $51a7: $9d
    sbc a                                         ; $51a8: $9f
    ld h, l                                       ; $51a9: $65
    ldh [$27], a                                  ; $51aa: $e0 $27
    call c, $dedd                                 ; $51ac: $dc $dd $de
    ld e, a                                       ; $51af: $5f
    jp hl                                         ; $51b0: $e9


    pop af                                        ; $51b1: $f1
    db $e3                                        ; $51b2: $e3
    call nc, $ea80                                ; $51b3: $d4 $80 $ea
    db $dd                                        ; $51b6: $dd
    ld [c], a                                     ; $51b7: $e2
    db $ec                                        ; $51b8: $ec
    call z, $e9e1                                 ; $51b9: $cc $e1 $e9
    push hl                                       ; $51bc: $e5
    and $e7                                       ; $51bd: $e6 $e7
    pop bc                                        ; $51bf: $c1
    ldh [$9c], a                                  ; $51c0: $e0 $9c
    ld c, b                                       ; $51c2: $48
    ld c, b                                       ; $51c3: $48
    dec e                                         ; $51c4: $1d
    sbc h                                         ; $51c5: $9c
    cp a                                          ; $51c6: $bf
    ldh [$df], a                                  ; $51c7: $e0 $df
    ldh [$e1], a                                  ; $51c9: $e0 $e1
    rra                                           ; $51cb: $1f
    jp hl                                         ; $51cc: $e9


    pop af                                        ; $51cd: $f1
    pop hl                                        ; $51ce: $e1
    ld h, c                                       ; $51cf: $61
    jp hl                                         ; $51d0: $e9


    ld hl, sp-$14                                 ; $51d1: $f8 $ec
    push hl                                       ; $51d3: $e5
    call z, $f6e2                                 ; $51d4: $cc $e2 $f6
    ret z                                         ; $51d7: $c8

    sbc a                                         ; $51d8: $9f
    sbc h                                         ; $51d9: $9c
    ld c, d                                       ; $51da: $4a
    ld h, b                                       ; $51db: $60
    ld h, b                                       ; $51dc: $60
    pop bc                                        ; $51dd: $c1
    ld d, l                                       ; $51de: $55
    cp a                                          ; $51df: $bf
    pop hl                                        ; $51e0: $e1
    ld d, d                                       ; $51e1: $52
    db $ed                                        ; $51e2: $ed
    ld h, c                                       ; $51e3: $61
    db $e4                                        ; $51e4: $e4
    jp z, $65d5                                   ; $51e5: $ca $d5 $65

    db $e4                                        ; $51e8: $e4
    sbc [hl]                                      ; $51e9: $9e
    ld b, l                                       ; $51ea: $45
    ccf                                           ; $51eb: $3f
    ld c, e                                       ; $51ec: $4b
    ld h, c                                       ; $51ed: $61
    ld h, c                                       ; $51ee: $61
    ld d, [hl]                                    ; $51ef: $56
    ld b, l                                       ; $51f0: $45
    sbc [hl]                                      ; $51f1: $9e
    ld a, [c]                                     ; $51f2: $f2
    call nz, $c1ce                                ; $51f3: $c4 $ce $c1
    ld [hl], b                                    ; $51f6: $70
    or [hl]                                       ; $51f7: $b6
    add $95                                       ; $51f8: $c6 $95
    db $ec                                        ; $51fa: $ec
    or c                                          ; $51fb: $b1
    call $e581                                    ; $51fc: $cd $81 $e5
    ld h, c                                       ; $51ff: $61
    ld h, c                                       ; $5200: $61
    ld h, c                                       ; $5201: $61
    ld a, a                                       ; $5202: $7f
    ld [c], a                                     ; $5203: $e2
    ld h, b                                       ; $5204: $60
    ld a, [c]                                     ; $5205: $f2
    ret nz                                        ; $5206: $c0

    db $10                                        ; $5207: $10
    ld [c], a                                     ; $5208: $e2
    or [hl]                                       ; $5209: $b6
    ret                                           ; $520a: $c9


    ld l, d                                       ; $520b: $6a
    call z, $edbe                                 ; $520c: $cc $be $ed
    sbc a                                         ; $520f: $9f
    sbc h                                         ; $5210: $9c
    add c                                         ; $5211: $81
    pop hl                                        ; $5212: $e1
    add b                                         ; $5213: $80
    ld a, a                                       ; $5214: $7f
    pop hl                                        ; $5215: $e1
    db $fd                                        ; $5216: $fd
    ret nz                                        ; $5217: $c0

    ld h, $e5                                     ; $5218: $26 $e5
    or [hl]                                       ; $521a: $b6
    ret                                           ; $521b: $c9


    ld l, d                                       ; $521c: $6a
    ret                                           ; $521d: $c9


    or c                                          ; $521e: $b1
    push bc                                       ; $521f: $c5
    ld a, [hl+]                                   ; $5220: $2a
    add $9f                                       ; $5221: $c6 $9f
    rst $20                                       ; $5223: $e7
    sbc l                                         ; $5224: $9d
    sbc h                                         ; $5225: $9c
    ld b, [hl]                                    ; $5226: $46
    add c                                         ; $5227: $81
    ld [c], a                                     ; $5228: $e2
    ld a, a                                       ; $5229: $7f
    ldh [rDMA], a                                 ; $522a: $e0 $46
    sbc h                                         ; $522c: $9c
    sbc l                                         ; $522d: $9d
    ld b, b                                       ; $522e: $40
    reti                                          ; $522f: $d9


    jp z, $c879                                   ; $5230: $ca $79 $c8

    cp c                                          ; $5233: $b9
    call $a2e8                                    ; $5234: $cd $e8 $a2
    ld c, d                                       ; $5237: $4a
    ret nz                                        ; $5238: $c0

    jp nz, $46e0                                  ; $5239: $c2 $e0 $46

    add c                                         ; $523c: $81
    db $e3                                        ; $523d: $e3
    ld [bc], a                                    ; $523e: $02
    cp $c1                                        ; $523f: $fe $c1
    ld b, [hl]                                    ; $5241: $46
    cp [hl]                                       ; $5242: $be
    ldh [$36], a                                  ; $5243: $e0 $36
    jp $cd79                                      ; $5245: $c3 $79 $cd


    cp c                                          ; $5248: $b9
    add $d1                                       ; $5249: $c6 $d1
    and l                                         ; $524b: $a5
    ld a, [hl+]                                   ; $524c: $2a
    ret nz                                        ; $524d: $c0

    ld l, a                                       ; $524e: $6f
    sbc a                                         ; $524f: $9f
    sbc h                                         ; $5250: $9c
    ld b, e                                       ; $5251: $43
    ld d, b                                       ; $5252: $50
    cp $e0                                        ; $5253: $fe $e0
    ld c, b                                       ; $5255: $48
    ld c, c                                       ; $5256: $49
    add c                                         ; $5257: $81
    db $e3                                        ; $5258: $e3
    cpl                                           ; $5259: $2f
    ld h, c                                       ; $525a: $61
    ld h, c                                       ; $525b: $61
    ld c, c                                       ; $525c: $49
    ld c, b                                       ; $525d: $48
    ldh a, [$e1]                                  ; $525e: $f0 $e1
    ld d, b                                       ; $5260: $50
    ld [hl], a                                    ; $5261: $77
    call nz, $a4a7                                ; $5262: $c4 $a7 $a4
    ld hl, sp-$80                                 ; $5265: $f8 $80
    and e                                         ; $5267: $a3
    ld c, [hl]                                    ; $5268: $4e
    add $70                                       ; $5269: $c6 $70
    rst $00                                       ; $526b: $c7
    sbc a                                         ; $526c: $9f
    sbc h                                         ; $526d: $9c
    ld b, a                                       ; $526e: $47
    ld c, h                                       ; $526f: $4c
    ld e, l                                       ; $5270: $5d
    sbc [hl]                                      ; $5271: $9e
    cp $e0                                        ; $5272: $fe $e0
    ld h, b                                       ; $5274: $60
    ld h, c                                       ; $5275: $61
    ld d, h                                       ; $5276: $54
    ld d, h                                       ; $5277: $54
    nop                                           ; $5278: $00
    pop hl                                        ; $5279: $e1
    ld a, [$60e0]                                 ; $527a: $fa $e0 $60
    ld b, $f0                                     ; $527d: $06 $f0
    pop hl                                        ; $527f: $e1
    ld e, l                                       ; $5280: $5d
    ld b, a                                       ; $5281: $47
    ld [hl], $c3                                  ; $5282: $36 $c3
    ld b, [hl]                                    ; $5284: $46
    add $3e                                       ; $5285: $c6 $3e
    xor d                                         ; $5287: $aa
    dec b                                         ; $5288: $05
    jp $a117                                      ; $5289: $c3 $17 $a1


    rst $30                                       ; $528c: $f7
    sbc [hl]                                      ; $528d: $9e
    ld d, c                                       ; $528e: $51
    ld e, [hl]                                    ; $528f: $5e
    ld c, b                                       ; $5290: $48
    db $e3                                        ; $5291: $e3
    ld d, d                                       ; $5292: $52
    ld b, l                                       ; $5293: $45
    ld b, l                                       ; $5294: $45
    ld d, d                                       ; $5295: $52
    inc b                                         ; $5296: $04
    ld a, [$f7e5]                                 ; $5297: $fa $e5 $f7
    jp nz, Jump_000_365c                          ; $529a: $c2 $5c $36

    pop bc                                        ; $529d: $c1
    and a                                         ; $529e: $a7
    and b                                         ; $529f: $a0
    pop af                                        ; $52a0: $f1
    add e                                         ; $52a1: $83
    add b                                         ; $52a2: $80
    xor e                                         ; $52a3: $ab
    rla                                           ; $52a4: $17
    and a                                         ; $52a5: $a7
    db $dd                                        ; $52a6: $dd
    sbc [hl]                                      ; $52a7: $9e
    ret nc                                        ; $52a8: $d0

    push hl                                       ; $52a9: $e5
    ld e, h                                       ; $52aa: $5c
    ld [hl], $36                                  ; $52ab: $36 $36
    or l                                          ; $52ad: $b5
    ldh [$5c], a                                  ; $52ae: $e0 $5c
    ld a, [hl+]                                   ; $52b0: $2a
    add l                                         ; $52b1: $85
    ld a, [hl+]                                   ; $52b2: $2a
    xor a                                         ; $52b3: $af
    db $e4                                        ; $52b4: $e4
    ld d, d                                       ; $52b5: $52
    or $a2                                        ; $52b6: $f6 $a2
    add a                                         ; $52b8: $87
    adc $d7                                       ; $52b9: $ce $d7
    adc c                                         ; $52bb: $89
    rla                                           ; $52bc: $17
    and c                                         ; $52bd: $a1
    sbc a                                         ; $52be: $9f
    cp l                                          ; $52bf: $bd
    ret nc                                        ; $52c0: $d0

    adc a                                         ; $52c1: $8f
    db $e3                                        ; $52c2: $e3
    ld e, b                                       ; $52c3: $58
    ld b, h                                       ; $52c4: $44
    inc a                                         ; $52c5: $3c
    ld a, [hl-]                                   ; $52c6: $3a
    rst $38                                       ; $52c7: $ff
    and b                                         ; $52c8: $a0
    ld d, l                                       ; $52c9: $55
    cpl                                           ; $52ca: $2f
    ld l, $30                                     ; $52cb: $2e $30
    ld b, h                                       ; $52cd: $44
    ld c, l                                       ; $52ce: $4d
    ld [hl], c                                    ; $52cf: $71
    db $e3                                        ; $52d0: $e3
    ret nc                                        ; $52d1: $d0

    cp [hl]                                       ; $52d2: $be
    call nz, $8bf1                                ; $52d3: $c4 $f1 $8b
    inc c                                         ; $52d6: $0c
    halt                                          ; $52d7: $76
    xor c                                         ; $52d8: $a9
    rla                                           ; $52d9: $17
    and d                                         ; $52da: $a2
    jp nc, Jump_06e_4e46                          ; $52db: $d2 $46 $4e

    ld [c], a                                     ; $52de: $e2
    ret nz                                        ; $52df: $c0

    ld [c], a                                     ; $52e0: $e2
    pop bc                                        ; $52e1: $c1
    and b                                         ; $52e2: $a0
    ret nz                                        ; $52e3: $c0

    db $e4                                        ; $52e4: $e4
    add d                                         ; $52e5: $82
    pop bc                                        ; $52e6: $c1
    ldh [$d3], a                                  ; $52e7: $e0 $d3
    dec sp                                        ; $52e9: $3b
    rst $08                                       ; $52ea: $cf
    ld h, $80                                     ; $52eb: $26 $80
    dec bc                                        ; $52ed: $0b
    and d                                         ; $52ee: $a2
    ld e, $82                                     ; $52ef: $1e $82
    ld c, l                                       ; $52f1: $4d
    add h                                         ; $52f2: $84
    sbc [hl]                                      ; $52f3: $9e
    nop                                           ; $52f4: $00
    ld b, l                                       ; $52f5: $45
    ret nz                                        ; $52f6: $c0

    dec c                                         ; $52f7: $0d
    pop hl                                        ; $52f8: $e1
    ld b, b                                       ; $52f9: $40
    ld [$e4c1], a                                 ; $52fa: $ea $c1 $e4
    ret                                           ; $52fd: $c9


    adc l                                         ; $52fe: $8d
    ld h, $85                                     ; $52ff: $26 $85
    ld e, $82                                     ; $5301: $1e $82
    ld c, l                                       ; $5303: $4d
    add h                                         ; $5304: $84
    ld e, b                                       ; $5305: $58
    dec b                                         ; $5306: $05
    ret nz                                        ; $5307: $c0

    inc b                                         ; $5308: $04
    jp nz, $c0c0                                  ; $5309: $c2 $c0 $c0

    ld b, a                                       ; $530c: $47
    ld h, b                                       ; $530d: $60
    ld a, [$56e4]                                 ; $530e: $fa $e4 $56
    add d                                         ; $5311: $82
    db $e4                                        ; $5312: $e4
    or b                                          ; $5313: $b0
    ret                                           ; $5314: $c9


    add [hl]                                      ; $5315: $86
    xor l                                         ; $5316: $ad
    ld h, h                                       ; $5317: $64
    ld h, $85                                     ; $5318: $26 $85
    ld e, $82                                     ; $531a: $1e $82
    and $e7                                       ; $531c: $e6 $e7
    db $10                                        ; $531e: $10
    add b                                         ; $531f: $80
    sbc h                                         ; $5320: $9c
    cp a                                          ; $5321: $bf
    ld b, l                                       ; $5322: $45
    ld d, b                                       ; $5323: $50
    ld c, b                                       ; $5324: $48
    ld c, [hl]                                    ; $5325: $4e
    ld c, b                                       ; $5326: $48
    ld b, l                                       ; $5327: $45
    ld b, [hl]                                    ; $5328: $46
    ldh [$61], a                                  ; $5329: $e0 $61
    add hl, sp                                    ; $532b: $39
    ld c, c                                       ; $532c: $49
    cp $a2                                        ; $532d: $fe $a2
    ld a, [$55e2]                                 ; $532f: $fa $e2 $55
    ld b, [hl]                                    ; $5332: $46
    jp nc, $88c9                                  ; $5333: $d2 $c9 $88

    dec b                                         ; $5336: $05
    add b                                         ; $5337: $80
    ldh a, [$ad]                                  ; $5338: $f0 $ad
    ld h, h                                       ; $533a: $64
    ld h, $85                                     ; $533b: $26 $85
    ld e, $82                                     ; $533d: $1e $82
    ld c, h                                       ; $533f: $4c
    and c                                         ; $5340: $a1
    ld b, l                                       ; $5341: $45
    ld c, b                                       ; $5342: $48
    ld c, c                                       ; $5343: $49
    ld e, l                                       ; $5344: $5d
    rst $08                                       ; $5345: $cf
    ld h, b                                       ; $5346: $60
    ld h, c                                       ; $5347: $61
    ld h, b                                       ; $5348: $60
    ld e, h                                       ; $5349: $5c
    call z, $fcc3                                 ; $534a: $cc $c3 $fc
    push hl                                       ; $534d: $e5
    ld e, b                                       ; $534e: $58
    ld b, h                                       ; $534f: $44
    pop bc                                        ; $5350: $c1
    ld b, [hl]                                    ; $5351: $46
    add h                                         ; $5352: $84
    call nz, Call_06e_6bbc                        ; $5353: $c4 $bc $6b
    ld de, $c28c                                  ; $5356: $11 $8c $c2
    pop hl                                        ; $5359: $e1
    inc c                                         ; $535a: $0c
    and d                                         ; $535b: $a2
    ld d, d                                       ; $535c: $52
    ld b, l                                       ; $535d: $45
    nop                                           ; $535e: $00
    ei                                            ; $535f: $fb
    and l                                         ; $5360: $a5
    dec b                                         ; $5361: $05
    push bc                                       ; $5362: $c5
    ret nz                                        ; $5363: $c0

    ld [c], a                                     ; $5364: $e2
    ld hl, sp+$48                                 ; $5365: $f8 $48
    xor l                                         ; $5367: $ad
    ld h, d                                       ; $5368: $62
    db $fc                                        ; $5369: $fc
    ld c, d                                       ; $536a: $4a
    pop bc                                        ; $536b: $c1
    pop hl                                        ; $536c: $e1
    db $10                                        ; $536d: $10
    ldh [rNR52], a                                ; $536e: $e0 $26
    adc [hl]                                      ; $5370: $8e
    and c                                         ; $5371: $a1
    ld d, e                                       ; $5372: $53
    ld b, l                                       ; $5373: $45
    call nz, Call_06e_7b85                        ; $5374: $c4 $85 $7b
    push hl                                       ; $5377: $e5
    ld d, l                                       ; $5378: $55
    add b                                         ; $5379: $80
    ld [c], a                                     ; $537a: $e2
    adc [hl]                                      ; $537b: $8e
    adc e                                         ; $537c: $8b
    ld a, [$4cfc]                                 ; $537d: $fa $fc $4c
    sbc [hl]                                      ; $5380: $9e
    pop bc                                        ; $5381: $c1
    push hl                                       ; $5382: $e5
    ld d, d                                       ; $5383: $52
    ld b, l                                       ; $5384: $45
    xor [hl]                                      ; $5385: $ae
    ld b, [hl]                                    ; $5386: $46
    ld b, [hl]                                    ; $5387: $46
    dec c                                         ; $5388: $0d
    ld c, a                                       ; $5389: $4f
    add c                                         ; $538a: $81
    ld [$5a61], a                                 ; $538b: $ea $61 $5a
    ld b, b                                       ; $538e: $40
    ld [c], a                                     ; $538f: $e2
    ld hl, sp+$42                                 ; $5390: $f8 $42
    add a                                         ; $5392: $87
    ld c, c                                       ; $5393: $49
    db $fc                                        ; $5394: $fc
    ld c, b                                       ; $5395: $48
    db $ec                                        ; $5396: $ec
    ld de, $c180                                  ; $5397: $11 $80 $c1
    push hl                                       ; $539a: $e5
    ld b, [hl]                                    ; $539b: $46
    xor a                                         ; $539c: $af
    add h                                         ; $539d: $84
    add l                                         ; $539e: $85
    ld d, h                                       ; $539f: $54
    ld e, c                                       ; $53a0: $59
    ld e, c                                       ; $53a1: $59
    nop                                           ; $53a2: $00
    db $fc                                        ; $53a3: $fc
    add d                                         ; $53a4: $82
    ei                                            ; $53a5: $fb
    ld h, e                                       ; $53a6: $63
    ld hl, sp+$45                                 ; $53a7: $f8 $45
    ld b, l                                       ; $53a9: $45
    ld c, e                                       ; $53aa: $4b
    ld a, [bc]                                    ; $53ab: $0a
    add $11                                       ; $53ac: $c6 $11
    add e                                         ; $53ae: $83
    add d                                         ; $53af: $82
    ld [c], a                                     ; $53b0: $e2
    dec b                                         ; $53b1: $05
    add e                                         ; $53b2: $83
    ld a, a                                       ; $53b3: $7f
    ld d, h                                       ; $53b4: $54
    ld d, e                                       ; $53b5: $53
    xor h                                         ; $53b6: $ac
    ccf                                           ; $53b7: $3f
    ld b, l                                       ; $53b8: $45
    xor [hl]                                      ; $53b9: $ae
    ld d, e                                       ; $53ba: $53
    cp d                                          ; $53bb: $ba
    add d                                         ; $53bc: $82
    ld c, b                                       ; $53bd: $48
    ccf                                           ; $53be: $3f
    db $e3                                        ; $53bf: $e3
    adc e                                         ; $53c0: $8b
    db $ed                                        ; $53c1: $ed
    or $48                                        ; $53c2: $f6 $48
    sbc [hl]                                      ; $53c4: $9e
    ld c, l                                       ; $53c5: $4d
    db $e3                                        ; $53c6: $e3
    inc de                                        ; $53c7: $13
    add b                                         ; $53c8: $80
    xor a                                         ; $53c9: $af
    ld b, c                                       ; $53ca: $41
    db $e4                                        ; $53cb: $e4
    ccf                                           ; $53cc: $3f
    ld d, d                                       ; $53cd: $52
    ld b, l                                       ; $53ce: $45
    scf                                           ; $53cf: $37
    xor l                                         ; $53d0: $ad
    jp Jump_06e_7436                              ; $53d1: $c3 $36 $74


    ldh [$c0], a                                  ; $53d4: $e0 $c0
    add c                                         ; $53d6: $81
    ldh [$3f], a                                  ; $53d7: $e0 $3f
    ld [c], a                                     ; $53d9: $e2
    adc e                                         ; $53da: $8b
    ld c, h                                       ; $53db: $4c
    xor c                                         ; $53dc: $a9
    inc hl                                        ; $53dd: $23
    adc e                                         ; $53de: $8b
    ld b, h                                       ; $53df: $44
    ret nz                                        ; $53e0: $c0

    db $e4                                        ; $53e1: $e4
    ld d, l                                       ; $53e2: $55
    ld b, [hl]                                    ; $53e3: $46
    xor [hl]                                      ; $53e4: $ae
    ld hl, sp+$41                                 ; $53e5: $f8 $41
    ldh [$85], a                                  ; $53e7: $e0 $85
    ld h, b                                       ; $53e9: $60
    cp e                                          ; $53ea: $bb
    ret nz                                        ; $53eb: $c0

    add hl, sp                                    ; $53ec: $39
    jp Jump_06e_6362                              ; $53ed: $c3 $62 $63


    ld h, h                                       ; $53f0: $64
    rrca                                          ; $53f1: $0f
    ld a, h                                       ; $53f2: $7c
    ld a, l                                       ; $53f3: $7d
    ld b, [hl]                                    ; $53f4: $46
    ld b, l                                       ; $53f5: $45
    ld a, l                                       ; $53f6: $7d
    ldh [$bf], a                                  ; $53f7: $e0 $bf
    jp nz, Jump_06e_4c8b                          ; $53f9: $c2 $8b $4c

    ccf                                           ; $53fc: $3f
    ld l, d                                       ; $53fd: $6a
    ld hl, sp-$80                                 ; $53fe: $f8 $80
    db $e3                                        ; $5400: $e3
    add c                                         ; $5401: $81
    pop hl                                        ; $5402: $e1
    add c                                         ; $5403: $81
    and b                                         ; $5404: $a0
    ld b, [hl]                                    ; $5405: $46
    ld b, l                                       ; $5406: $45
    ld e, e                                       ; $5407: $5b
    xor [hl]                                      ; $5408: $ae
    ld b, l                                       ; $5409: $45
    rst $38                                       ; $540a: $ff
    scf                                           ; $540b: $37
    jp Jump_06e_6762                              ; $540c: $c3 $62 $67


    dec [hl]                                      ; $540f: $35
    ld [hl], $ae                                  ; $5410: $36 $ae
    add c                                         ; $5412: $81
    ccf                                           ; $5413: $3f
    ld b, [hl]                                    ; $5414: $46
    ret nc                                        ; $5415: $d0

    pop de                                        ; $5416: $d1
    ret nc                                        ; $5417: $d0

    ld e, e                                       ; $5418: $5b
    ld b, l                                       ; $5419: $45
    rst $38                                       ; $541a: $ff
    and c                                         ; $541b: $a1
    dec de                                        ; $541c: $1b
    add a                                         ; $541d: $87
    ret z                                         ; $541e: $c8

    ld h, d                                       ; $541f: $62
    ld [hl+], a                                   ; $5420: $22
    xor c                                         ; $5421: $a9
    ld a, [hl+]                                   ; $5422: $2a
    ld b, b                                       ; $5423: $40
    db $e3                                        ; $5424: $e3
    ld d, l                                       ; $5425: $55
    ld c, c                                       ; $5426: $49
    ld h, b                                       ; $5427: $60
    add c                                         ; $5428: $81
    and c                                         ; $5429: $a1
    ld b, [hl]                                    ; $542a: $46
    xor [hl]                                      ; $542b: $ae
    rst $38                                       ; $542c: $ff
    xor a                                         ; $542d: $af
    add hl, sp                                    ; $542e: $39
    dec [hl]                                      ; $542f: $35
    dec [hl]                                      ; $5430: $35
    ld l, c                                       ; $5431: $69
    dec [hl]                                      ; $5432: $35
    ld a, [hl-]                                   ; $5433: $3a
    ld b, l                                       ; $5434: $45
    dec sp                                        ; $5435: $3b
    xor a                                         ; $5436: $af
    add c                                         ; $5437: $81
    add l                                         ; $5438: $85
    and b                                         ; $5439: $a0
    db $d3                                        ; $543a: $d3
    ret nc                                        ; $543b: $d0

    ld b, [hl]                                    ; $543c: $46
    add e                                         ; $543d: $83
    add b                                         ; $543e: $80
    adc [hl]                                      ; $543f: $8e
    inc h                                         ; $5440: $24
    ret nz                                        ; $5441: $c0

    ld [hl-], a                                   ; $5442: $32
    ld hl, $2262                                  ; $5443: $21 $62 $22
    xor c                                         ; $5446: $a9
    ld a, [hl+]                                   ; $5447: $2a
    ret nz                                        ; $5448: $c0

    ret nz                                        ; $5449: $c0

    db $dd                                        ; $544a: $dd
    ld h, c                                       ; $544b: $61
    cp [hl]                                       ; $544c: $be
    and e                                         ; $544d: $a3
    ld d, l                                       ; $544e: $55
    ld b, [hl]                                    ; $544f: $46
    rst $38                                       ; $5450: $ff
    xor a                                         ; $5451: $af
    ld b, l                                       ; $5452: $45
    ld a, [hl-]                                   ; $5453: $3a
    jp Jump_06e_7662                              ; $5454: $c3 $62 $76


    dec [hl]                                      ; $5457: $35
    add hl, sp                                    ; $5458: $39
    scf                                           ; $5459: $37
    xor [hl]                                      ; $545a: $ae
    add e                                         ; $545b: $83
    add h                                         ; $545c: $84
    add l                                         ; $545d: $85
    and c                                         ; $545e: $a1
    db $d3                                        ; $545f: $d3
    pop de                                        ; $5460: $d1
    add e                                         ; $5461: $83
    add l                                         ; $5462: $85
    ld [hl-], a                                   ; $5463: $32
    inc hl                                        ; $5464: $23
    add sp, $01                                   ; $5465: $e8 $01
    ld c, l                                       ; $5467: $4d
    dec d                                         ; $5468: $15
    jr nz, @+$0b                                  ; $5469: $20 $09

    add c                                         ; $546b: $81
    ld d, d                                       ; $546c: $52
    cp [hl]                                       ; $546d: $be
    and h                                         ; $546e: $a4
    ld d, l                                       ; $546f: $55
    xor [hl]                                      ; $5470: $ae
    ld b, l                                       ; $5471: $45
    ld a, e                                       ; $5472: $7b
    ld [hl], $c3                                  ; $5473: $36 $c3
    add c                                         ; $5475: $81
    pop hl                                        ; $5476: $e1
    xor [hl]                                      ; $5477: $ae
    xor a                                         ; $5478: $af
    adc d                                         ; $5479: $8a
    add l                                         ; $547a: $85
    add hl, bc                                    ; $547b: $09
    add l                                         ; $547c: $85
    ld a, h                                       ; $547d: $7c
    ld a, h                                       ; $547e: $7c
    ld d, c                                       ; $547f: $51
    ld c, b                                       ; $5480: $48
    ld [$d0d3], sp                                ; $5481: $08 $d3 $d0
    ld b, l                                       ; $5484: $45
    ld e, e                                       ; $5485: $5b
    ld b, l                                       ; $5486: $45
    ld c, l                                       ; $5487: $4d
    ld b, e                                       ; $5488: $43
    rst $38                                       ; $5489: $ff
    ld d, [hl]                                    ; $548a: $56
    ld b, l                                       ; $548b: $45
    xor a                                         ; $548c: $af
    ld [hl], $35                                  ; $548d: $36 $35
    dec [hl]                                      ; $548f: $35
    dec [hl]                                      ; $5490: $35
    ld l, e                                       ; $5491: $6b
    add a                                         ; $5492: $87
    ld l, h                                       ; $5493: $6c
    ld a, $af                                     ; $5494: $3e $af
    add c                                         ; $5496: $81
    ldh [$c6], a                                  ; $5497: $e0 $c6
    add e                                         ; $5499: $83
    ld d, c                                       ; $549a: $51
    ld [hl-], a                                   ; $549b: $32
    ld a, [$d30a]                                 ; $549c: $fa $0a $d3
    db $db                                        ; $549f: $db
    pop de                                        ; $54a0: $d1
    ret nc                                        ; $54a1: $d0

    ld c, l                                       ; $54a2: $4d
    ld b, h                                       ; $54a3: $44
    ld d, l                                       ; $54a4: $55
    ld b, [hl]                                    ; $54a5: $46
    inc bc                                        ; $54a6: $03
    ldh [$ca], a                                  ; $54a7: $e0 $ca
    rr a                                          ; $54a9: $cb $1f
    ld l, [hl]                                    ; $54ab: $6e
    ld [hl], b                                    ; $54ac: $70
    ld [hl], c                                    ; $54ad: $71
    adc b                                         ; $54ae: $88
    add a                                         ; $54af: $87
    add c                                         ; $54b0: $81
    and $2f                                       ; $54b1: $e6 $2f
    rlca                                          ; $54b3: $07
    ld d, h                                       ; $54b4: $54
    daa                                           ; $54b5: $27
    ld a, [$0cfa]                                 ; $54b6: $fa $fa $0c
    jp nc, Jump_06e_43c5                          ; $54b9: $d2 $c5 $43

    ld d, [hl]                                    ; $54bc: $56
    ld b, l                                       ; $54bd: $45
    xor [hl]                                      ; $54be: $ae
    ld a, $35                                     ; $54bf: $3e $35
    rst $38                                       ; $54c1: $ff
    dec [hl]                                      ; $54c2: $35
    ret z                                         ; $54c3: $c8

    ret                                           ; $54c4: $c9


    dec [hl]                                      ; $54c5: $35
    dec [hl]                                      ; $54c6: $35
    add hl, sp                                    ; $54c7: $39
    ld b, [hl]                                    ; $54c8: $46
    ld b, [hl]                                    ; $54c9: $46
    nop                                           ; $54ca: $00
    adc d                                         ; $54cb: $8a
    ld h, [hl]                                    ; $54cc: $66
    cpl                                           ; $54cd: $2f
    nop                                           ; $54ce: $00
    ld c, [hl]                                    ; $54cf: $4e
    ld h, $12                                     ; $54d0: $26 $12
    dec h                                         ; $54d2: $25
    adc a                                         ; $54d3: $8f
    ld [$e175], sp                                ; $54d4: $08 $75 $e1
    add l                                         ; $54d7: $85
    ld b, h                                       ; $54d8: $44
    jp nz, $15c0                                  ; $54d9: $c2 $c0 $15

    ld a, [hl-]                                   ; $54dc: $3a
    ld b, c                                       ; $54dd: $41
    ldh [$35], a                                  ; $54de: $e0 $35
    ld bc, $d0e0                                  ; $54e0: $01 $e0 $d0
    ret z                                         ; $54e3: $c8

    rst $00                                       ; $54e4: $c7
    cpl                                           ; $54e5: $2f
    nop                                           ; $54e6: $00
    rst $00                                       ; $54e7: $c7
    ld b, l                                       ; $54e8: $45
    ldh a, [$85]                                  ; $54e9: $f0 $85
    ld d, c                                       ; $54eb: $51
    add e                                         ; $54ec: $83
    ld h, c                                       ; $54ed: $61
    ld b, l                                       ; $54ee: $45
    ld b, e                                       ; $54ef: $43
    inc de                                        ; $54f0: $13
    add b                                         ; $54f1: $80
    ld b, h                                       ; $54f2: $44
    inc a                                         ; $54f3: $3c
    dec [hl]                                      ; $54f4: $35
    jp $ff06                                      ; $54f5: $c3 $06 $ff


    ret nz                                        ; $54f8: $c0

    add hl, sp                                    ; $54f9: $39
    xor a                                         ; $54fa: $af
    inc b                                         ; $54fb: $04
    db $eb                                        ; $54fc: $eb
    dec bc                                        ; $54fd: $0b
    sub b                                         ; $54fe: $90
    ld [hl], l                                    ; $54ff: $75
    ld [$4305], a                                 ; $5500: $ea $05 $43
    ld d, b                                       ; $5503: $50
    jr nz, jr_06e_5521                            ; $5504: $20 $1b

    xor [hl]                                      ; $5506: $ae
    inc a                                         ; $5507: $3c
    add b                                         ; $5508: $80
    ld [c], a                                     ; $5509: $e2
    add hl, sp                                    ; $550a: $39
    xor [hl]                                      ; $550b: $ae
    ld b, h                                       ; $550c: $44
    dec b                                         ; $550d: $05
    sub h                                         ; $550e: $94
    inc bc                                        ; $550f: $03
    add [hl]                                      ; $5510: $86
    db $d3                                        ; $5511: $d3
    ret z                                         ; $5512: $c8

    ld b, l                                       ; $5513: $45
    rlca                                          ; $5514: $07
    dec b                                         ; $5515: $05
    ld b, e                                       ; $5516: $43
    dec a                                         ; $5517: $3d
    and b                                         ; $5518: $a0
    xor a                                         ; $5519: $af
    ret nz                                        ; $551a: $c0

    ldh [$7f], a                                  ; $551b: $e0 $7f
    ldh [$39], a                                  ; $551d: $e0 $39
    xor a                                         ; $551f: $af
    ret nz                                        ; $5520: $c0

jr_06e_5521:
    ld c, d                                       ; $5521: $4a
    add c                                         ; $5522: $81
    jp hl                                         ; $5523: $e9


    ld b, c                                       ; $5524: $41
    ld b, $8f                                     ; $5525: $06 $8f
    ccf                                           ; $5527: $3f
    ld b, $87                                     ; $5528: $06 $87
    ld [$4005], sp                                ; $552a: $08 $05 $40
    ld d, e                                       ; $552d: $53
    ld e, c                                       ; $552e: $59
    ld a, [de]                                    ; $552f: $1a
    jp $af60                                      ; $5530: $c3 $60 $af


    add b                                         ; $5533: $80
    db $e3                                        ; $5534: $e3
    inc a                                         ; $5535: $3c
    xor [hl]                                      ; $5536: $ae
    ld c, d                                       ; $5537: $4a
    ld h, d                                       ; $5538: $62
    rst $18                                       ; $5539: $df
    add c                                         ; $553a: $81
    ld d, c                                       ; $553b: $51
    ld h, c                                       ; $553c: $61
    add b                                         ; $553d: $80
    adc b                                         ; $553e: $88
    add b                                         ; $553f: $80
    ld b, [hl]                                    ; $5540: $46
    adc e                                         ; $5541: $8b
    ccf                                           ; $5542: $3f
    inc c                                         ; $5543: $0c
    ld [hl], e                                    ; $5544: $73
    ld h, b                                       ; $5545: $60
    ld e, b                                       ; $5546: $58
    and b                                         ; $5547: $a0
    rst $38                                       ; $5548: $ff
    ld [c], a                                     ; $5549: $e2

jr_06e_554a:
    ret nz                                        ; $554a: $c0

    ret nz                                        ; $554b: $c0

    jp z, $cb0f                                   ; $554c: $ca $0f $cb

    dec [hl]                                      ; $554f: $35
    ld a, [hl-]                                   ; $5550: $3a
    xor a                                         ; $5551: $af
    push bc                                       ; $5552: $c5
    and [hl]                                      ; $5553: $a6
    call z, Call_06e_4da6                         ; $5554: $cc $a6 $4d
    ld l, c                                       ; $5557: $69
    db $fc                                        ; $5558: $fc
    ld c, d                                       ; $5559: $4a
    ld a, h                                       ; $555a: $7c
    ld a, [hl+]                                   ; $555b: $2a
    add e                                         ; $555c: $83
    cp a                                          ; $555d: $bf
    pop hl                                        ; $555e: $e1
    ret nc                                        ; $555f: $d0

    pop de                                        ; $5560: $d1
    pop de                                        ; $5561: $d1
    ret nc                                        ; $5562: $d0

jr_06e_5563:
    add hl, sp                                    ; $5563: $39
    ld b, c                                       ; $5564: $41
    pop bc                                        ; $5565: $c1
    pop bc                                        ; $5566: $c1
    add hl, sp                                    ; $5567: $39
    adc e                                         ; $5568: $8b
    ld b, d                                       ; $5569: $42
    dec de                                        ; $556a: $1b
    ld l, d                                       ; $556b: $6a
    inc b                                         ; $556c: $04
    add l                                         ; $556d: $85
    rst $00                                       ; $556e: $c7
    and d                                         ; $556f: $a2
    ld [hl], a                                    ; $5570: $77
    or c                                          ; $5571: $b1
    db $d3                                        ; $5572: $d3
    pop de                                        ; $5573: $d1
    ld [hl], $16                                  ; $5574: $36 $16
    and c                                         ; $5576: $a1
    jp nc, $8045                                  ; $5577: $d2 $45 $80

    and b                                         ; $557a: $a0
    ld [hl], $45                                  ; $557b: $36 $45
    pop bc                                        ; $557d: $c1
    jp nz, Jump_06e_6d90                          ; $557e: $c2 $90 $6d

    jr jr_06e_554a                                ; $5581: $18 $c7

    or c                                          ; $5583: $b1
    db $ed                                        ; $5584: $ed
    ld c, l                                       ; $5585: $4d
    db $f4                                        ; $5586: $f4
    ld b, b                                       ; $5587: $40
    scf                                           ; $5588: $37
    scf                                           ; $5589: $37
    jr c, jr_06e_55ec                             ; $558a: $38 $60

    adc a                                         ; $558c: $8f
    ld [bc], a                                    ; $558d: $02
    sub b                                         ; $558e: $90
    ld l, h                                       ; $558f: $6c
    ld h, b                                       ; $5590: $60
    adc e                                         ; $5591: $8b
    ld b, d                                       ; $5592: $42
    ret nz                                        ; $5593: $c0

    adc a                                         ; $5594: $8f
    ld h, e                                       ; $5595: $63
    ld c, c                                       ; $5596: $49
    ld [hl], $40                                  ; $5597: $36 $40
    dec sp                                        ; $5599: $3b
    ld h, c                                       ; $559a: $61
    xor [hl]                                      ; $559b: $ae
    ld b, [hl]                                    ; $559c: $46
    dec bc                                        ; $559d: $0b
    ld h, c                                       ; $559e: $61
    nop                                           ; $559f: $00
    ld c, a                                       ; $55a0: $4f
    reti                                          ; $55a1: $d9


    ccf                                           ; $55a2: $3f
    ld c, c                                       ; $55a3: $49
    ld l, d                                       ; $55a4: $6a
    rlca                                          ; $55a5: $07
    rst $30                                       ; $55a6: $f7
    jr nz, jr_06e_5563                            ; $55a7: $20 $ba

    ld h, d                                       ; $55a9: $62
    ld a, b                                       ; $55aa: $78
    ld h, b                                       ; $55ab: $60
    jp z, Jump_000_002c                           ; $55ac: $ca $2c $00

    ld l, a                                       ; $55af: $6f
    nop                                           ; $55b0: $00
    db $fd                                        ; $55b1: $fd
    daa                                           ; $55b2: $27
    xor [hl]                                      ; $55b3: $ae
    ld [hl+], a                                   ; $55b4: $22
    xor a                                         ; $55b5: $af
    add d                                         ; $55b6: $82
    cp a                                          ; $55b7: $bf
    nop                                           ; $55b8: $00
    cp h                                          ; $55b9: $bc
    ld b, c                                       ; $55ba: $41
    ld a, [hl]                                    ; $55bb: $7e
    pop hl                                        ; $55bc: $e1
    ld a, a                                       ; $55bd: $7f
    di                                            ; $55be: $f3
    or h                                          ; $55bf: $b4
    ld a, [c]                                     ; $55c0: $f2
    ld c, h                                       ; $55c1: $4c
    add hl, hl                                    ; $55c2: $29
    add d                                         ; $55c3: $82
    cp l                                          ; $55c4: $bd
    ld bc, $9c9f                                  ; $55c5: $01 $9f $9c
    db $fd                                        ; $55c8: $fd
    ld b, d                                       ; $55c9: $42
    ccf                                           ; $55ca: $3f
    pop hl                                        ; $55cb: $e1
    xor a                                         ; $55cc: $af
    ld a, $ec                                     ; $55cd: $3e $ec
    nop                                           ; $55cf: $00

jr_06e_55d0:
    ld e, c                                       ; $55d0: $59
    ld [$2874], sp                                ; $55d1: $08 $74 $28
    or l                                          ; $55d4: $b5
    ld l, b                                       ; $55d5: $68
    ld a, [hl-]                                   ; $55d6: $3a
    and d                                         ; $55d7: $a2
    ld a, [hl]                                    ; $55d8: $7e
    ld b, d                                       ; $55d9: $42
    ld sp, hl                                     ; $55da: $f9
    and d                                         ; $55db: $a2
    or e                                          ; $55dc: $b3
    ld b, b                                       ; $55dd: $40
    ld c, c                                       ; $55de: $49
    ld b, l                                       ; $55df: $45
    nop                                           ; $55e0: $00
    ld d, h                                       ; $55e1: $54
    ld [hl+], a                                   ; $55e2: $22
    ld e, c                                       ; $55e3: $59

jr_06e_55e4:
    rlca                                          ; $55e4: $07
    ld l, [hl]                                    ; $55e5: $6e
    or e                                          ; $55e6: $b3
    ld [hl], a                                    ; $55e7: $77
    inc h                                         ; $55e8: $24
    cp a                                          ; $55e9: $bf
    and $7f                                       ; $55ea: $e6 $7f

jr_06e_55ec:
    ldh [$88], a                                  ; $55ec: $e0 $88
    jr nz, jr_06e_5609                            ; $55ee: $20 $19

    inc h                                         ; $55f0: $24
    nop                                           ; $55f1: $00
    ld [de], a                                    ; $55f2: $12
    jr nz, jr_06e_564e                            ; $55f3: $20 $59

    inc b                                         ; $55f5: $04
    or h                                          ; $55f6: $b4
    sub l                                         ; $55f7: $95
    ld [hl], $65                                  ; $55f8: $36 $65
    pop bc                                        ; $55fa: $c1
    jp $c2be                                      ; $55fb: $c3 $be $c2


    ld b, e                                       ; $55fe: $43
    ld h, a                                       ; $55ff: $67
    ret                                           ; $5600: $c9


jr_06e_5601:
    ld hl, $4500                                  ; $5601: $21 $00 $45
    ld l, b                                       ; $5604: $68
    ld a, [hl-]                                   ; $5605: $3a
    ld l, a                                       ; $5606: $6f
    ld [c], a                                     ; $5607: $e2
    ld h, [hl]                                    ; $5608: $66

jr_06e_5609:
    ld a, [hl-]                                   ; $5609: $3a
    and l                                         ; $560a: $a5
    ld a, b                                       ; $560b: $78
    jr nz, jr_06e_55d0                            ; $560c: $20 $c2

    ld h, [hl]                                    ; $560e: $66
    ret                                           ; $560f: $c9


    ld d, $f1                                     ; $5610: $16 $f1
    ld sp, $d241                                  ; $5612: $31 $41 $d2
    ld a, a                                       ; $5615: $7f
    push bc                                       ; $5616: $c5
    add e                                         ; $5617: $83
    ld h, l                                       ; $5618: $65
    add a                                         ; $5619: $87
    inc l                                         ; $561a: $2c
    cp b                                          ; $561b: $b8
    di                                            ; $561c: $f3
    pop af                                        ; $561d: $f1
    daa                                           ; $561e: $27
    sbc [hl]                                      ; $561f: $9e
    add [hl]                                      ; $5620: $86
    pop bc                                        ; $5621: $c1
    jr nc, jr_06e_55e4                            ; $5622: $30 $c0

    and c                                         ; $5624: $a1
    pop bc                                        ; $5625: $c1
    ld h, l                                       ; $5626: $65
    ld d, c                                       ; $5627: $51
    xor l                                         ; $5628: $ad
    db $f4                                        ; $5629: $f4
    ld d, b                                       ; $562a: $50
    ld [c], a                                     ; $562b: $e2
    db $e3                                        ; $562c: $e3
    ld l, b                                       ; $562d: $68
    ld b, [hl]                                    ; $562e: $46
    add c                                         ; $562f: $81
    and b                                         ; $5630: $a0
    nop                                           ; $5631: $00
    ld a, e                                       ; $5632: $7b
    ld [hl+], a                                   ; $5633: $22
    ld b, d                                       ; $5634: $42
    rst $00                                       ; $5635: $c7
    ld de, $0c47                                  ; $5636: $11 $47 $0c
    inc hl                                        ; $5639: $23
    scf                                           ; $563a: $37
    ld h, $b4                                     ; $563b: $26 $b4
    rlca                                          ; $563d: $07
    inc h                                         ; $563e: $24
    jr z, jr_06e_5601                             ; $563f: $28 $c0

    and b                                         ; $5641: $a0
    ret nz                                        ; $5642: $c0

    rst $38                                       ; $5643: $ff
    push bc                                       ; $5644: $c5
    add b                                         ; $5645: $80
    xor [hl]                                      ; $5646: $ae
    inc c                                         ; $5647: $0c
    add e                                         ; $5648: $83
    ld bc, $aeb0                                  ; $5649: $01 $b0 $ae
    daa                                           ; $564c: $27
    ret nz                                        ; $564d: $c0

jr_06e_564e:
    and b                                         ; $564e: $a0
    ld b, l                                       ; $564f: $45
    ld b, e                                       ; $5650: $43
    jp nz, $e2ff                                  ; $5651: $c2 $ff $e2

    ld b, l                                       ; $5654: $45
    add b                                         ; $5655: $80
    xor a                                         ; $5656: $af
    ld c, c                                       ; $5657: $49
    rst $10                                       ; $5658: $d7
    ldh a, [rNR52]                                ; $5659: $f0 $26
    ret nz                                        ; $565b: $c0

    and b                                         ; $565c: $a0
    ld b, h                                       ; $565d: $44
    and h                                         ; $565e: $a4
    dec c                                         ; $565f: $0d
    ld h, h                                       ; $5660: $64
    rst $38                                       ; $5661: $ff
    ldh [$a5], a                                  ; $5662: $e0 $a5
    ld b, h                                       ; $5664: $44
    ld bc, $93c2                                  ; $5665: $01 $c2 $93
    xor d                                         ; $5668: $aa
    add e                                         ; $5669: $83
    inc [hl]                                      ; $566a: $34
    ldh a, [$29]                                  ; $566b: $f0 $29
    cp $00                                        ; $566d: $fe $00
    ret nz                                        ; $566f: $c0

    ld b, b                                       ; $5670: $40
    ld l, c                                       ; $5671: $69
    and e                                         ; $5672: $a3
    dec [hl]                                      ; $5673: $35
    dec [hl]                                      ; $5674: $35
    and e                                         ; $5675: $a3
    ld l, d                                       ; $5676: $6a
    ld de, $bf44                                  ; $5677: $11 $44 $bf
    add l                                         ; $567a: $85
    sub e                                         ; $567b: $93
    or a                                          ; $567c: $b7
    dec sp                                        ; $567d: $3b
    pop af                                        ; $567e: $f1
    jp nc, $e0c0                                  ; $567f: $d2 $c0 $e0

    nop                                           ; $5682: $00
    ld b, c                                       ; $5683: $41
    ret nz                                        ; $5684: $c0

    ldh [$f0], a                                  ; $5685: $e0 $f0
    ccf                                           ; $5687: $3f
    ld h, h                                       ; $5688: $64
    ld d, [hl]                                    ; $5689: $56
    ld [bc], a                                    ; $568a: $02
    dec bc                                        ; $568b: $0b
    jp nc, Jump_06e_5177                          ; $568c: $d2 $77 $51

    sbc [hl]                                      ; $568f: $9e
    ld b, [hl]                                    ; $5690: $46
    ld b, h                                       ; $5691: $44
    ld l, e                                       ; $5692: $6b
    dec c                                         ; $5693: $0d
    ld [hl], c                                    ; $5694: $71
    rst $38                                       ; $5695: $ff
    ldh [$6d], a                                  ; $5696: $e0 $6d
    ld b, h                                       ; $5698: $44
    inc b                                         ; $5699: $04
    dec h                                         ; $569a: $25
    call Call_000_1104                            ; $569b: $cd $04 $11
    ret z                                         ; $569e: $c8

    ld b, $c8                                     ; $569f: $06 $c8
    nop                                           ; $56a1: $00
    ei                                            ; $56a2: $fb
    ld [$4335], sp                                ; $56a3: $08 $35 $43
    ld [hl], l                                    ; $56a6: $75
    nop                                           ; $56a7: $00
    ret nz                                        ; $56a8: $c0

    call nz, Call_06e_41c0                        ; $56a9: $c4 $c0 $41
    ld [$7728], sp                                ; $56ac: $08 $28 $77
    ld l, d                                       ; $56af: $6a
    add hl, bc                                    ; $56b0: $09
    ld b, [hl]                                    ; $56b1: $46
    nop                                           ; $56b2: $00
    ei                                            ; $56b3: $fb
    rlca                                          ; $56b4: $07
    ld d, [hl]                                    ; $56b5: $56
    ld h, l                                       ; $56b6: $65
    ei                                            ; $56b7: $fb
    ld b, b                                       ; $56b8: $40
    cp $e3                                        ; $56b9: $fe $e3
    ld b, e                                       ; $56bb: $43
    ld hl, $7415                                  ; $56bc: $21 $15 $74
    ld a, [hl+]                                   ; $56bf: $2a
    ld h, a                                       ; $56c0: $67
    inc [hl]                                      ; $56c1: $34
    ld [hl], b                                    ; $56c2: $70
    nop                                           ; $56c3: $00
    daa                                           ; $56c4: $27
    db $d3                                        ; $56c5: $d3
    rst $38                                       ; $56c6: $ff
    rst $38                                       ; $56c7: $ff
    rst $38                                       ; $56c8: $ff
    rst $38                                       ; $56c9: $ff
    ld [hl], c                                    ; $56ca: $71
    ld [hl], h                                    ; $56cb: $74
    nop                                           ; $56cc: $00
    nop                                           ; $56cd: $00
    nop                                           ; $56ce: $00
    pop bc                                        ; $56cf: $c1
    nop                                           ; $56d0: $00
    rst $38                                       ; $56d1: $ff
    rst $38                                       ; $56d2: $ff
    rst $38                                       ; $56d3: $ff
    rst $38                                       ; $56d4: $ff
    rst $38                                       ; $56d5: $ff
    rst $38                                       ; $56d6: $ff
    rst $38                                       ; $56d7: $ff
    rst $38                                       ; $56d8: $ff
    rst $38                                       ; $56d9: $ff
    rst $38                                       ; $56da: $ff
    nop                                           ; $56db: $00
    nop                                           ; $56dc: $00
    ld bc, $fe80                                  ; $56dd: $01 $80 $fe
    ldh [rIE], a                                  ; $56e0: $e0 $ff
    rst $38                                       ; $56e2: $ff
    rst $38                                       ; $56e3: $ff
    rst $38                                       ; $56e4: $ff
    rst $38                                       ; $56e5: $ff
    add sp, $00                                   ; $56e6: $e8 $00
    nop                                           ; $56e8: $00
    nop                                           ; $56e9: $00
    ld [bc], a                                    ; $56ea: $02
    nop                                           ; $56eb: $00
    ld c, $17                                     ; $56ec: $0e $17
    ld [bc], a                                    ; $56ee: $02
    ld bc, $190c                                  ; $56ef: $01 $0c $19
    ld [bc], a                                    ; $56f2: $02
    ld [bc], a                                    ; $56f3: $02
    rla                                           ; $56f4: $17
    add hl, de                                    ; $56f5: $19
    ld [bc], a                                    ; $56f6: $02
    inc bc                                        ; $56f7: $03
    ld a, [de]                                    ; $56f8: $1a
    add hl, de                                    ; $56f9: $19
    ld [bc], a                                    ; $56fa: $02
    inc b                                         ; $56fb: $04
    dec c                                         ; $56fc: $0d
    ld a, [de]                                    ; $56fd: $1a
    ld [bc], a                                    ; $56fe: $02
    dec b                                         ; $56ff: $05
    dec bc                                        ; $5700: $0b
    dec de                                        ; $5701: $1b
    ld [bc], a                                    ; $5702: $02
    ld b, $12                                     ; $5703: $06 $12
    inc e                                         ; $5705: $1c
    ld [bc], a                                    ; $5706: $02
    rlca                                          ; $5707: $07
    ld a, [de]                                    ; $5708: $1a
    inc e                                         ; $5709: $1c
    ld [bc], a                                    ; $570a: $02
    ld [$1d11], sp                                ; $570b: $08 $11 $1d
    ld [bc], a                                    ; $570e: $02
    add hl, bc                                    ; $570f: $09
    add hl, de                                    ; $5710: $19
    ld e, $02                                     ; $5711: $1e $02
    ld a, [bc]                                    ; $5713: $0a
    db $10                                        ; $5714: $10
    rra                                           ; $5715: $1f
    ld [bc], a                                    ; $5716: $02
    dec bc                                        ; $5717: $0b
    jr @+$21                                      ; $5718: $18 $1f

    ld [bc], a                                    ; $571a: $02
    inc c                                         ; $571b: $0c
    rrca                                          ; $571c: $0f
    ld [hl+], a                                   ; $571d: $22
    ld [bc], a                                    ; $571e: $02
    dec c                                         ; $571f: $0d
    rla                                           ; $5720: $17
    inc hl                                        ; $5721: $23
    ld [bc], a                                    ; $5722: $02
    ld c, $0f                                     ; $5723: $0e $0f
    dec h                                         ; $5725: $25
    ld [bc], a                                    ; $5726: $02
    rrca                                          ; $5727: $0f
    rla                                           ; $5728: $17
    dec h                                         ; $5729: $25
    ld [bc], a                                    ; $572a: $02
    db $10                                        ; $572b: $10
    ld c, $26                                     ; $572c: $0e $26
    ld [bc], a                                    ; $572e: $02
    ld de, $270f                                  ; $572f: $11 $0f $27
    ld [bc], a                                    ; $5732: $02
    ld [de], a                                    ; $5733: $12
    ld d, $27                                     ; $5734: $16 $27
    ld [bc], a                                    ; $5736: $02
    inc de                                        ; $5737: $13
    ld d, $2a                                     ; $5738: $16 $2a
    ld [bc], a                                    ; $573a: $02
    inc d                                         ; $573b: $14
    ld de, $022c                                  ; $573c: $11 $2c $02
    dec d                                         ; $573f: $15
    dec d                                         ; $5740: $15
    inc l                                         ; $5741: $2c
    ld [bc], a                                    ; $5742: $02
    ld d, $10                                     ; $5743: $16 $10
    ld l, $02                                     ; $5745: $2e $02
    rla                                           ; $5747: $17
    rla                                           ; $5748: $17
    ld l, $02                                     ; $5749: $2e $02
    jr jr_06e_575b                                ; $574b: $18 $0e

    cpl                                           ; $574d: $2f
    ld [bc], a                                    ; $574e: $02
    add hl, de                                    ; $574f: $19
    ld d, $2f                                     ; $5750: $16 $2f
    ld [bc], a                                    ; $5752: $02
    ld a, [de]                                    ; $5753: $1a
    rrca                                          ; $5754: $0f
    jr nc, @+$04                                  ; $5755: $30 $02

    dec de                                        ; $5757: $1b
    jr jr_06e_578a                                ; $5758: $18 $30

    ld [bc], a                                    ; $575a: $02

jr_06e_575b:
    inc e                                         ; $575b: $1c
    db $10                                        ; $575c: $10
    ld sp, $1d02                                  ; $575d: $31 $02 $1d
    rla                                           ; $5760: $17
    ld sp, $1e02                                  ; $5761: $31 $02 $1e
    ld de, $0234                                  ; $5764: $11 $34 $02
    rra                                           ; $5767: $1f
    db $10                                        ; $5768: $10
    dec [hl]                                      ; $5769: $35
    ld [bc], a                                    ; $576a: $02
    jr nz, jr_06e_5782                            ; $576b: $20 $15

    dec [hl]                                      ; $576d: $35
    ld [bc], a                                    ; $576e: $02
    ld hl, $380e                                  ; $576f: $21 $0e $38
    ld [bc], a                                    ; $5772: $02
    ld [hl+], a                                   ; $5773: $22
    rla                                           ; $5774: $17
    jr c, @+$01                                   ; $5775: $38 $ff

    rst $38                                       ; $5777: $ff
    rst $38                                       ; $5778: $ff
    add c                                         ; $5779: $81
    ld d, a                                       ; $577a: $57
    ld de, $f35b                                  ; $577b: $11 $5b $f3
    ld h, b                                       ; $577e: $60
    ld c, $61                                     ; $577f: $0e $61
    add hl, bc                                    ; $5781: $09

jr_06e_5782:
    inc c                                         ; $5782: $0c
    rst $38                                       ; $5783: $ff
    rst $38                                       ; $5784: $ff
    db $e4                                        ; $5785: $e4
    db $e3                                        ; $5786: $e3
    inc l                                         ; $5787: $2c
    db $dd                                        ; $5788: $dd
    rst $38                                       ; $5789: $ff

jr_06e_578a:
    rst $38                                       ; $578a: $ff
    rst $38                                       ; $578b: $ff
    rst $38                                       ; $578c: $ff
    rst $38                                       ; $578d: $ff
    rst $38                                       ; $578e: $ff
    rst $38                                       ; $578f: $ff
    nop                                           ; $5790: $00
    rst $38                                       ; $5791: $ff
    rst $38                                       ; $5792: $ff
    rst $38                                       ; $5793: $ff
    rst $38                                       ; $5794: $ff
    rst $38                                       ; $5795: $ff
    rst $38                                       ; $5796: $ff
    rst $38                                       ; $5797: $ff
    rst $38                                       ; $5798: $ff
    rst $38                                       ; $5799: $ff
    rst $38                                       ; $579a: $ff
    rst $38                                       ; $579b: $ff
    rst $38                                       ; $579c: $ff
    rst $38                                       ; $579d: $ff
    rst $38                                       ; $579e: $ff
    rst $38                                       ; $579f: $ff
    rst $38                                       ; $57a0: $ff
    nop                                           ; $57a1: $00
    rst $38                                       ; $57a2: $ff
    rst $38                                       ; $57a3: $ff
    rst $38                                       ; $57a4: $ff
    rst $38                                       ; $57a5: $ff
    rst $38                                       ; $57a6: $ff
    rst $38                                       ; $57a7: $ff
    rst $38                                       ; $57a8: $ff
    rst $38                                       ; $57a9: $ff
    rst $38                                       ; $57aa: $ff
    rst $38                                       ; $57ab: $ff
    rst $38                                       ; $57ac: $ff
    rst $38                                       ; $57ad: $ff
    rst $38                                       ; $57ae: $ff
    rst $38                                       ; $57af: $ff
    rst $38                                       ; $57b0: $ff
    rst $38                                       ; $57b1: $ff
    sbc h                                         ; $57b2: $9c
    rst $38                                       ; $57b3: $ff
    rst $38                                       ; $57b4: $ff
    ld [$4ce9], a                                 ; $57b5: $ea $e9 $4c
    ld c, h                                       ; $57b8: $4c
    ld c, h                                       ; $57b9: $4c
    db $db                                        ; $57ba: $db
    rst $38                                       ; $57bb: $ff
    ld sp, hl                                     ; $57bc: $f9
    ld hl, sp+$2e                                 ; $57bd: $f8 $2e
    pop af                                        ; $57bf: $f1
    dec bc                                        ; $57c0: $0b
    cp [hl]                                       ; $57c1: $be
    ldh [$bc], a                                  ; $57c2: $e0 $bc
    rst $38                                       ; $57c4: $ff
    rst $30                                       ; $57c5: $f7
    or $4e                                        ; $57c6: $f6 $4e
    ld c, $2e                                     ; $57c8: $0e $2e
    dec bc                                        ; $57ca: $0b
    ld a, l                                       ; $57cb: $7d
    dec bc                                        ; $57cc: $0b
    cp h                                          ; $57cd: $bc
    pop hl                                        ; $57ce: $e1
    inc c                                         ; $57cf: $0c
    inc l                                         ; $57d0: $2c
    inc l                                         ; $57d1: $2c
    inc c                                         ; $57d2: $0c
    ld l, h                                       ; $57d3: $6c
    ld hl, sp-$1c                                 ; $57d4: $f8 $e4
    ld a, h                                       ; $57d6: $7c
    rst $38                                       ; $57d7: $ff
    rst $38                                       ; $57d8: $ff
    rst $20                                       ; $57d9: $e7
    and $0d                                       ; $57da: $e6 $0d
    dec c                                         ; $57dc: $0d
    ld c, [hl]                                    ; $57dd: $4e
    ld c, $0e                                     ; $57de: $0e $0e
    cp h                                          ; $57e0: $bc
    ldh [$0e], a                                  ; $57e1: $e0 $0e
    ld a, d                                       ; $57e3: $7a
    ld [c], a                                     ; $57e4: $e2
    ld l, h                                       ; $57e5: $6c
    dec hl                                        ; $57e6: $2b
    dec hl                                        ; $57e7: $2b
    ld [hl], h                                    ; $57e8: $74
    rst $20                                       ; $57e9: $e7
    or e                                          ; $57ea: $b3
    ldh [$c1], a                                  ; $57eb: $e0 $c1
    rst $38                                       ; $57ed: $ff
    ret nz                                        ; $57ee: $c0

    ldh [$fc], a                                  ; $57ef: $e0 $fc
    cp $e1                                        ; $57f1: $fe $e1
    cp h                                          ; $57f3: $bc
    ldh [$2e], a                                  ; $57f4: $e0 $2e
    dec hl                                        ; $57f6: $2b
    ld a, [bc]                                    ; $57f7: $0a
    ld a, [bc]                                    ; $57f8: $0a
    dec bc                                        ; $57f9: $0b
    ld a, [bc]                                    ; $57fa: $0a
    daa                                           ; $57fb: $27
    ld a, [bc]                                    ; $57fc: $0a
    ld a, [hl+]                                   ; $57fd: $2a
    ld a, [hl+]                                   ; $57fe: $2a
    cp c                                          ; $57ff: $b9
    ldh [$b4], a                                  ; $5800: $e0 $b4
    ld [c], a                                     ; $5802: $e2
    ld c, h                                       ; $5803: $4c
    ld h, $e0                                     ; $5804: $26 $e0
    ret nz                                        ; $5806: $c0

    rst $38                                       ; $5807: $ff
    cp a                                          ; $5808: $bf
    dec c                                         ; $5809: $0d
    ld c, $0e                                     ; $580a: $0e $0e
    dec c                                         ; $580c: $0d
    ld c, $2e                                     ; $580d: $0e $2e
    cp d                                          ; $580f: $ba
    ldh [$0e], a                                  ; $5810: $e0 $0e
    rst $28                                       ; $5812: $ef
    ld l, e                                       ; $5813: $6b
    ld c, d                                       ; $5814: $4a
    ld a, [hl+]                                   ; $5815: $2a
    dec bc                                        ; $5816: $0b
    cp h                                          ; $5817: $bc
    ldh [$0a], a                                  ; $5818: $e0 $0a
    dec hl                                        ; $581a: $2b
    dec bc                                        ; $581b: $0b
    cpl                                           ; $581c: $2f
    ld c, h                                       ; $581d: $4c
    dec hl                                        ; $581e: $2b
    ld c, e                                       ; $581f: $4b
    dec bc                                        ; $5820: $0b
    db $fd                                        ; $5821: $fd
    pop hl                                        ; $5822: $e1
    dec bc                                        ; $5823: $0b
    ret nz                                        ; $5824: $c0

    rst $38                                       ; $5825: $ff
    ret nz                                        ; $5826: $c0

    ld [c], a                                     ; $5827: $e2
    inc d                                         ; $5828: $14
    cp h                                          ; $5829: $bc
    ldh [$bb], a                                  ; $582a: $e0 $bb
    ldh [$2b], a                                  ; $582c: $e0 $2b
    add $e0                                       ; $582e: $c6 $e0
    dec bc                                        ; $5830: $0b
    set 4, b                                      ; $5831: $cb $e0
    db $fd                                        ; $5833: $fd
    pop hl                                        ; $5834: $e1
    call nz, $f1e0                                ; $5835: $c4 $e0 $f1
    dec c                                         ; $5838: $0d
    ret nz                                        ; $5839: $c0

    ldh [$c1], a                                  ; $583a: $e0 $c1
    rst $38                                       ; $583c: $ff
    ret nz                                        ; $583d: $c0

    rst $20                                       ; $583e: $e7
    ld c, [hl]                                    ; $583f: $4e
    ld l, $4a                                     ; $5840: $2e $4a
    ld l, e                                       ; $5842: $6b
    rst $38                                       ; $5843: $ff
    dec bc                                        ; $5844: $0b
    dec bc                                        ; $5845: $0b
    ld c, e                                       ; $5846: $4b
    ld l, e                                       ; $5847: $6b
    ld c, e                                       ; $5848: $4b
    ld c, e                                       ; $5849: $4b
    dec bc                                        ; $584a: $0b
    dec bc                                        ; $584b: $0b
    add c                                         ; $584c: $81
    ld a, [bc]                                    ; $584d: $0a
    xor l                                         ; $584e: $ad
    ret nz                                        ; $584f: $c0

    ret nz                                        ; $5850: $c0

    ldh [$bf], a                                  ; $5851: $e0 $bf
    rst $38                                       ; $5853: $ff
    nop                                           ; $5854: $00
    db $e4                                        ; $5855: $e4
    add b                                         ; $5856: $80
    pop hl                                        ; $5857: $e1
    cp a                                          ; $5858: $bf

jr_06e_5859:
    ldh [rOCPD], a                                ; $5859: $e0 $6b
    ld a, e                                       ; $585b: $7b
    ld c, e                                       ; $585c: $4b
    ld l, e                                       ; $585d: $6b
    ld b, b                                       ; $585e: $40
    ldh [rOCPD], a                                ; $585f: $e0 $6b
    dec bc                                        ; $5861: $0b
    ld c, e                                       ; $5862: $4b
    ld c, e                                       ; $5863: $4b
    add hl, sp                                    ; $5864: $39
    ldh [rLY], a                                  ; $5865: $e0 $44
    or l                                          ; $5867: $b5
    pop hl                                        ; $5868: $e1
    pop bc                                        ; $5869: $c1
    rst $38                                       ; $586a: $ff
    inc c                                         ; $586b: $0c
    add h                                         ; $586c: $84
    ret nz                                        ; $586d: $c0

    ret nz                                        ; $586e: $c0

    db $e4                                        ; $586f: $e4
    ld [hl], a                                    ; $5870: $77
    ret nz                                        ; $5871: $c0

    ld l, $c0                                     ; $5872: $2e $c0
    ldh [$1f], a                                  ; $5874: $e0 $1f
    ld a, [hl+]                                   ; $5876: $2a
    dec c                                         ; $5877: $0d
    dec c                                         ; $5878: $0d
    dec bc                                        ; $5879: $0b
    ld l, e                                       ; $587a: $6b
    cp a                                          ; $587b: $bf
    ldh [rLCDC], a                                ; $587c: $e0 $40
    ld [c], a                                     ; $587e: $e2
    inc [hl]                                      ; $587f: $34
    rst $18                                       ; $5880: $df
    ld b, b                                       ; $5881: $40
    inc bc                                        ; $5882: $03
    pop hl                                        ; $5883: $e1
    pop bc                                        ; $5884: $c1
    jp nz, $c1bc                                  ; $5885: $c2 $bc $c1

    ld a, c                                       ; $5888: $79
    jp nz, $c16e                                  ; $5889: $c2 $6e $c1

    ld a, [hl-]                                   ; $588c: $3a
    ldh [$0d], a                                  ; $588d: $e0 $0d
    jp hl                                         ; $588f: $e9


    and b                                         ; $5890: $a0
    add b                                         ; $5891: $80
    jr c, jr_06e_5859                             ; $5892: $38 $c5

    cp b                                          ; $5894: $b8
    ret c                                         ; $5895: $d8

    add e                                         ; $5896: $83
    jp nz, $e281                                  ; $5897: $c2 $81 $e2

    ld [hl], $c5                                  ; $589a: $36 $c5
    cp [hl]                                       ; $589c: $be
    push hl                                       ; $589d: $e5
    ret nz                                        ; $589e: $c0

    call nz, Call_000_016c                        ; $589f: $c4 $6c $01
    ld l, h                                       ; $58a2: $6c
    ld l, a                                       ; $58a3: $6f
    ret nz                                        ; $58a4: $c0

    ld [hl], a                                    ; $58a5: $77
    rst $10                                       ; $58a6: $d7
    nop                                           ; $58a7: $00
    db $e4                                        ; $58a8: $e4
    ld a, h                                       ; $58a9: $7c
    call nz, $e439                                ; $58aa: $c4 $39 $e4
    ld a, h                                       ; $58ad: $7c
    pop hl                                        ; $58ae: $e1
    di                                            ; $58af: $f3
    ret nz                                        ; $58b0: $c0

    ld a, [bc]                                    ; $58b1: $0a
    nop                                           ; $58b2: $00
    ld [c], a                                     ; $58b3: $e2
    inc l                                         ; $58b4: $2c
    ld l, d                                       ; $58b5: $6a
    ret nz                                        ; $58b6: $c0

    dec c                                         ; $58b7: $0d
    ret nz                                        ; $58b8: $c0

    sbc $c0                                       ; $58b9: $de $c0
    add sp, -$4a                                  ; $58bb: $e8 $b6
    pop bc                                        ; $58bd: $c1
    cp a                                          ; $58be: $bf
    db $e3                                        ; $58bf: $e3
    ld c, $c8                                     ; $58c0: $0e $c8
    inc hl                                        ; $58c2: $23
    dec hl                                        ; $58c3: $2b
    dec bc                                        ; $58c4: $0b
    dec hl                                        ; $58c5: $2b
    ret nz                                        ; $58c6: $c0

    ld hl, sp-$3b                                 ; $58c7: $f8 $c5
    jp $c47c                                      ; $58c9: $c3 $7c $c4


    ld a, l                                       ; $58cc: $7d
    ld [c], a                                     ; $58cd: $e2
    add b                                         ; $58ce: $80
    ldh a, [$a1]                                  ; $58cf: $f0 $a1
    ei                                            ; $58d1: $fb
    pop bc                                        ; $58d2: $c1
    ld [bc], a                                    ; $58d3: $02
    db $e4                                        ; $58d4: $e4
    ld b, c                                       ; $58d5: $41
    ldh [$c0], a                                  ; $58d6: $e0 $c0
    rst $38                                       ; $58d8: $ff
    inc a                                         ; $58d9: $3c
    push bc                                       ; $58da: $c5
    dec [hl]                                      ; $58db: $35
    call nz, $f96e                                ; $58dc: $c4 $6e $f9
    dec bc                                        ; $58df: $0b
    add hl, hl                                    ; $58e0: $29
    and b                                         ; $58e1: $a0
    add hl, bc                                    ; $58e2: $09
    pop hl                                        ; $58e3: $e1
    inc l                                         ; $58e4: $2c
    inc l                                         ; $58e5: $2c
    inc l                                         ; $58e6: $2c
    dec hl                                        ; $58e7: $2b
    dec hl                                        ; $58e8: $2b
    add e                                         ; $58e9: $83
    ld a, [bc]                                    ; $58ea: $0a
    ld c, e                                       ; $58eb: $4b
    ret nz                                        ; $58ec: $c0

    rst $38                                       ; $58ed: $ff
    ld a, e                                       ; $58ee: $7b
    add $75                                       ; $58ef: $c6 $75
    and e                                         ; $58f1: $a3
    ld [$8081], a                                 ; $58f2: $ea $81 $80
    and e                                         ; $58f5: $a3
    inc l                                         ; $58f6: $2c
    ld d, b                                       ; $58f7: $50
    ld hl, sp-$3b                                 ; $58f8: $f8 $c5
    add b                                         ; $58fa: $80
    rst $38                                       ; $58fb: $ff
    ld a, [$3581]                                 ; $58fc: $fa $81 $35
    and d                                         ; $58ff: $a2
    ld l, [hl]                                    ; $5900: $6e
    xor e                                         ; $5901: $ab
    add c                                         ; $5902: $81
    dec hl                                        ; $5903: $2b
    ccf                                           ; $5904: $3f
    ret nz                                        ; $5905: $c0

    ret nz                                        ; $5906: $c0

    ret                                           ; $5907: $c9


    ld bc, $e0bf                                  ; $5908: $01 $bf $e0
    add b                                         ; $590b: $80
    cp a                                          ; $590c: $bf
    cp h                                          ; $590d: $bc
    add h                                         ; $590e: $84
    or $c4                                        ; $590f: $f6 $c4
    db $fd                                        ; $5911: $fd
    and c                                         ; $5912: $a1
    dec hl                                        ; $5913: $2b
    dec hl                                        ; $5914: $2b
    nop                                           ; $5915: $00
    ccf                                           ; $5916: $3f
    ldh [$88], a                                  ; $5917: $e0 $88
    rra                                           ; $5919: $1f
    ld b, b                                       ; $591a: $40
    rst $00                                       ; $591b: $c7
    cp d                                          ; $591c: $ba
    push bc                                       ; $591d: $c5
    ret nz                                        ; $591e: $c0

    push hl                                       ; $591f: $e5
    or [hl]                                       ; $5920: $b6
    add c                                         ; $5921: $81
    ld b, c                                       ; $5922: $41
    cp a                                          ; $5923: $bf
    nop                                           ; $5924: $00
    rlc d                                         ; $5925: $cb $02
    ret nz                                        ; $5927: $c0

    add sp, $0b                                   ; $5928: $e8 $0b
    ld [hl], d                                    ; $592a: $72
    add c                                         ; $592b: $81
    pop bc                                        ; $592c: $c1
    rst $38                                       ; $592d: $ff
    ret nz                                        ; $592e: $c0

    ld h, h                                       ; $592f: $64
    add b                                         ; $5930: $80
    add $42                                       ; $5931: $c6 $42
    rst $00                                       ; $5933: $c7
    add c                                         ; $5934: $81
    add c                                         ; $5935: $81
    nop                                           ; $5936: $00
    cp a                                          ; $5937: $bf
    ld a, a                                       ; $5938: $7f
    add b                                         ; $5939: $80
    ld h, c                                       ; $593a: $61
    rst $38                                       ; $593b: $ff
    add h                                         ; $593c: $84
    dec sp                                        ; $593d: $3b
    and [hl]                                      ; $593e: $a6

jr_06e_593f:
    ret nz                                        ; $593f: $c0

    push hl                                       ; $5940: $e5
    rst $38                                       ; $5941: $ff
    ld a, a                                       ; $5942: $7f
    ld b, b                                       ; $5943: $40
    add a                                         ; $5944: $87
    ld b, a                                       ; $5945: $47
    call nz, $760e                                ; $5946: $c4 $0e $76
    ld h, c                                       ; $5949: $61
    dec l                                         ; $594a: $2d
    dec c                                         ; $594b: $0d
    ld l, $01                                     ; $594c: $2e $01
    ret nz                                        ; $594e: $c0

    inc [hl]                                      ; $594f: $34
    add b                                         ; $5950: $80
    cp a                                          ; $5951: $bf
    pop bc                                        ; $5952: $c1
    ld a, a                                       ; $5953: $7f
    sbc [hl]                                      ; $5954: $9e
    jr jr_06e_5958                                ; $5955: $18 $01

    add d                                         ; $5957: $82

jr_06e_5958:
    add h                                         ; $5958: $84
    rst $00                                       ; $5959: $c7
    nop                                           ; $595a: $00
    add $6b                                       ; $595b: $c6 $6b
    ld l, e                                       ; $595d: $6b
    ld a, [hl]                                    ; $595e: $7e
    ld h, b                                       ; $595f: $60
    ccf                                           ; $5960: $3f
    rst $38                                       ; $5961: $ff
    nop                                           ; $5962: $00
    rst $20                                       ; $5963: $e7
    nop                                           ; $5964: $00
    add hl, sp                                    ; $5965: $39
    add sp, $41                                   ; $5966: $e8 $41
    and b                                         ; $5968: $a0
    jp Jump_000_31e1                              ; $5969: $c3 $e1 $31


    ld h, c                                       ; $596c: $61
    push hl                                       ; $596d: $e5
    ld a, $47                                     ; $596e: $3e $47
    jp z, $a680                                   ; $5970: $ca $80 $a6

    ld b, b                                       ; $5973: $40
    and b                                         ; $5974: $a0
    nop                                           ; $5975: $00
    ld a, a                                       ; $5976: $7f
    pop bc                                        ; $5977: $c1
    ld a, [$a1a0]                                 ; $5978: $fa $a0 $a1
    ld hl, $79ba                                  ; $597b: $21 $ba $79
    rlca                                          ; $597e: $07
    ret z                                         ; $597f: $c8

    cp c                                          ; $5980: $b9
    rst $00                                       ; $5981: $c7
    rst $38                                       ; $5982: $ff
    pop bc                                        ; $5983: $c1
    cp h                                          ; $5984: $bc
    ld b, e                                       ; $5985: $43
    nop                                           ; $5986: $00
    ld a, d                                       ; $5987: $7a
    jp Jump_000_385f                              ; $5988: $c3 $5f $38


    inc b                                         ; $598b: $04
    and l                                         ; $598c: $a5
    cp l                                          ; $598d: $bd
    ld l, b                                       ; $598e: $68
    add b                                         ; $598f: $80
    add e                                         ; $5990: $83
    di                                            ; $5991: $f3
    ld b, b                                       ; $5992: $40

jr_06e_5993:
    cp e                                          ; $5993: $bb
    ld b, c                                       ; $5994: $41
    jr c, jr_06e_5958                             ; $5995: $38 $c1

    ld bc, $7a4b                                  ; $5997: $01 $4b $7a
    ld [c], a                                     ; $599a: $e2
    nop                                           ; $599b: $00
    db $fd                                        ; $599c: $fd
    ld a, b                                       ; $599d: $78
    jp hl                                         ; $599e: $e9


    rst $28                                       ; $599f: $ef
    jr nz, @+$81                                  ; $59a0: $20 $7f

    ld h, b                                       ; $59a2: $60
    ld a, e                                       ; $59a3: $7b
    ld b, c                                       ; $59a4: $41
    add hl, sp                                    ; $59a5: $39
    ld h, c                                       ; $59a6: $61
    nop                                           ; $59a7: $00
    inc sp                                        ; $59a8: $33
    and b                                         ; $59a9: $a0
    ld a, h                                       ; $59aa: $7c
    halt                                          ; $59ab: $76
    ret nz                                        ; $59ac: $c0

    ldh a, [$7f]                                  ; $59ad: $f0 $7f
    jp hl                                         ; $59af: $e9


    ret nz                                        ; $59b0: $c0

    db $e3                                        ; $59b1: $e3
    ld sp, $3980                                  ; $59b2: $31 $80 $39
    db $e3                                        ; $59b5: $e3
    inc l                                         ; $59b6: $2c
    cpl                                           ; $59b7: $2f
    jr nc, jr_06e_593f                            ; $59b8: $30 $85

    ld [$22b5], a                                 ; $59ba: $ea $b5 $22
    ld l, $22                                     ; $59bd: $2e $22
    cp c                                          ; $59bf: $b9
    ld b, b                                       ; $59c0: $40
    dec hl                                        ; $59c1: $2b
    ld l, e                                       ; $59c2: $6b
    ld a, l                                       ; $59c3: $7d
    ld [c], a                                     ; $59c4: $e2
    db $fd                                        ; $59c5: $fd
    ld [c], a                                     ; $59c6: $e2
    nop                                           ; $59c7: $00
    ld [hl-], a                                   ; $59c8: $32
    add d                                         ; $59c9: $82
    sbc c                                         ; $59ca: $99
    ld bc, $ce2e                                  ; $59cb: $01 $2e $ce
    ld b, l                                       ; $59ce: $45
    call z, $a7fd                                 ; $59cf: $cc $fd $a7
    cp a                                          ; $59d2: $bf
    add c                                         ; $59d3: $81
    db $fc                                        ; $59d4: $fc
    pop bc                                        ; $59d5: $c1
    ld a, b                                       ; $59d6: $78
    ld b, c                                       ; $59d7: $41
    add b                                         ; $59d8: $80
    cp l                                          ; $59d9: $bd
    ld [c], a                                     ; $59da: $e2
    ld hl, sp+$41                                 ; $59db: $f8 $41
    ld l, d                                       ; $59dd: $6a
    jr nz, jr_06e_5993                            ; $59de: $20 $b3

    call z, $c803                                 ; $59e0: $cc $03 $c8
    ld a, [hl]                                    ; $59e3: $7e
    and l                                         ; $59e4: $a5
    ld a, l                                       ; $59e5: $7d
    jp Jump_000_002b                              ; $59e6: $c3 $2b $00


    xor l                                         ; $59e9: $ad
    ld bc, $e07d                                  ; $59ea: $01 $7d $e0
    db $fd                                        ; $59ed: $fd
    jp $e437                                      ; $59ee: $c3 $37 $e4


    add sp, -$7f                                  ; $59f1: $e8 $81
    db $eb                                        ; $59f3: $eb
    and d                                         ; $59f4: $a2
    dec l                                         ; $59f5: $2d
    add $03                                       ; $59f6: $c6 $03
    ld h, h                                       ; $59f8: $64
    inc d                                         ; $59f9: $14
    add b                                         ; $59fa: $80
    db $ed                                        ; $59fb: $ed
    ld a, [hl+]                                   ; $59fc: $2a
    nop                                           ; $59fd: $00
    ld l, [hl]                                    ; $59fe: $6e
    ld a, e                                       ; $59ff: $7b
    pop hl                                        ; $5a00: $e1
    dec hl                                        ; $5a01: $2b
    jr c, @+$42                                   ; $5a02: $38 $40

    ld a, [hl]                                    ; $5a04: $7e
    push hl                                       ; $5a05: $e5
    ld a, [c]                                     ; $5a06: $f2
    jp $fd00                                      ; $5a07: $c3 $00 $fd


    ld [c], a                                     ; $5a0a: $e2
    ld l, $c7                                     ; $5a0b: $2e $c7
    add b                                         ; $5a0d: $80
    call $89b6                                    ; $5a0e: $cd $b6 $89

jr_06e_5a11:
    cp c                                          ; $5a11: $b9
    ld b, b                                       ; $5a12: $40
    inc a                                         ; $5a13: $3c
    ldh [$31], a                                  ; $5a14: $e0 $31
    jr nz, jr_06e_5a11                            ; $5a16: $20 $f9

    jp $a100                                      ; $5a18: $c3 $00 $a1


    ld bc, $02e8                                  ; $5a1b: $01 $e8 $02
    ld a, e                                       ; $5a1e: $7b
    push hl                                       ; $5a1f: $e5
    add sp, -$5f                                  ; $5a20: $e8 $a1
    ld b, d                                       ; $5a22: $42

jr_06e_5a23:
    xor l                                         ; $5a23: $ad
    dec sp                                        ; $5a24: $3b
    ld h, e                                       ; $5a25: $63
    ld hl, sp+$46                                 ; $5a26: $f8 $46
    ld a, c                                       ; $5a28: $79
    ld h, b                                       ; $5a29: $60
    ld bc, $310b                                  ; $5a2a: $01 $0b $31
    jr nz, jr_06e_5a23                            ; $5a2d: $20 $f4

    and c                                         ; $5a2f: $a1
    or c                                          ; $5a30: $b1
    push bc                                       ; $5a31: $c5
    ld e, [hl]                                    ; $5a32: $5e
    ld [bc], a                                    ; $5a33: $02
    ld [$cac5], a                                 ; $5a34: $ea $c5 $ca
    xor c                                         ; $5a37: $a9
    ld sp, hl                                     ; $5a38: $f9
    ld c, c                                       ; $5a39: $49
    nop                                           ; $5a3a: $00
    ei                                            ; $5a3b: $fb
    push bc                                       ; $5a3c: $c5
    ret nz                                        ; $5a3d: $c0

    ld [c], a                                     ; $5a3e: $e2
    rst $28                                       ; $5a3f: $ef
    nop                                           ; $5a40: $00
    rst $38                                       ; $5a41: $ff
    pop hl                                        ; $5a42: $e1
    ld [hl], $e3                                  ; $5a43: $36 $e3
    ld a, d                                       ; $5a45: $7a
    ld [c], a                                     ; $5a46: $e2
    ld a, l                                       ; $5a47: $7d
    db $e3                                        ; $5a48: $e3
    call nc, Call_000_1840                        ; $5a49: $d4 $40 $18
    push de                                       ; $5a4c: $d5
    ld b, d                                       ; $5a4d: $42
    inc a                                         ; $5a4e: $3c
    xor a                                         ; $5a4f: $af
    ei                                            ; $5a50: $fb
    add $0e                                       ; $5a51: $c6 $0e
    ld l, $fc                                     ; $5a53: $2e $fc
    and h                                         ; $5a55: $a4
    cp h                                          ; $5a56: $bc
    push bc                                       ; $5a57: $c5
    dec sp                                        ; $5a58: $3b
    pop hl                                        ; $5a59: $e1
    ld b, c                                       ; $5a5a: $41
    dec l                                         ; $5a5b: $2d
    inc [hl]                                      ; $5a5c: $34
    db $e4                                        ; $5a5d: $e4
    adc a                                         ; $5a5e: $8f
    ld b, h                                       ; $5a5f: $44
    add $46                                       ; $5a60: $c6 $46
    or l                                          ; $5a62: $b5
    daa                                           ; $5a63: $27
    or c                                          ; $5a64: $b1
    ld h, a                                       ; $5a65: $67
    ld c, [hl]                                    ; $5a66: $4e
    cp a                                          ; $5a67: $bf
    pop hl                                        ; $5a68: $e1
    nop                                           ; $5a69: $00

jr_06e_5a6a:
    ld l, e                                       ; $5a6a: $6b
    ld b, b                                       ; $5a6b: $40
    db $fd                                        ; $5a6c: $fd
    pop hl                                        ; $5a6d: $e1
    or h                                          ; $5a6e: $b4
    ldh [$2f], a                                  ; $5a6f: $e0 $2f
    and e                                         ; $5a71: $a3
    or $c1                                        ; $5a72: $f6 $c1
    sub b                                         ; $5a74: $90
    ld l, b                                       ; $5a75: $68
    add h                                         ; $5a76: $84
    ld b, l                                       ; $5a77: $45
    ret nz                                        ; $5a78: $c0

    jp hl                                         ; $5a79: $e9


    nop                                           ; $5a7a: $00
    halt                                          ; $5a7b: $76
    add $6c                                       ; $5a7c: $c6 $6c
    nop                                           ; $5a7e: $00
    ld e, d                                       ; $5a7f: $5a
    push hl                                       ; $5a80: $e5
    jr z, jr_06e_5aa4                             ; $5a81: $28 $21

    add d                                         ; $5a83: $82
    ldh [$32], a                                  ; $5a84: $e0 $32
    and b                                         ; $5a86: $a0
    ld l, c                                       ; $5a87: $69

jr_06e_5a88:
    ret nz                                        ; $5a88: $c0

    rst $10                                       ; $5a89: $d7
    push bc                                       ; $5a8a: $c5
    nop                                           ; $5a8b: $00
    jp nz, $be6a                                  ; $5a8c: $c2 $6a $be

    ret                                           ; $5a8f: $c9


    inc l                                         ; $5a90: $2c
    ld l, d                                       ; $5a91: $6a
    jr nz, jr_06e_5ab8                            ; $5a92: $20 $24

    db $eb                                        ; $5a94: $eb
    add d                                         ; $5a95: $82
    ld a, [hl+]                                   ; $5a96: $2a
    jp nz, $e85d                                  ; $5a97: $c2 $5d $e8

    ei                                            ; $5a9a: $fb
    di                                            ; $5a9b: $f3
    nop                                           ; $5a9c: $00
    ld l, h                                       ; $5a9d: $6c
    ld b, $ee                                     ; $5a9e: $06 $ee
    call nz, $8327                                ; $5aa0: $c4 $27 $83
    xor d                                         ; $5aa3: $aa

jr_06e_5aa4:
    add c                                         ; $5aa4: $81
    pop bc                                        ; $5aa5: $c1
    ld [c], a                                     ; $5aa6: $e2
    sbc h                                         ; $5aa7: $9c
    jr nz, jr_06e_5a6a                            ; $5aa8: $20 $c0

    xor $b7                                       ; $5aaa: $ee $b7
    ld c, d                                       ; $5aac: $4a
    jr c, jr_06e_5adb                             ; $5aad: $38 $2c

    ld b, [hl]                                    ; $5aaf: $46
    ld [$aa84], a                                 ; $5ab0: $ea $84 $aa
    and h                                         ; $5ab3: $a4
    ld l, $4b                                     ; $5ab4: $2e $4b
    dec bc                                        ; $5ab6: $0b
    pop bc                                        ; $5ab7: $c1

jr_06e_5ab8:
    db $e4                                        ; $5ab8: $e4
    ld h, d                                       ; $5ab9: $62
    jp hl                                         ; $5aba: $e9


    nop                                           ; $5abb: $00
    ld c, d                                       ; $5abc: $4a
    rst $00                                       ; $5abd: $c7
    ld b, c                                       ; $5abe: $41
    and h                                         ; $5abf: $a4
    ei                                            ; $5ac0: $fb
    jp z, $e780                                   ; $5ac1: $ca $80 $e7

    inc h                                         ; $5ac4: $24
    ld bc, $00f0                                  ; $5ac5: $01 $f0 $00
    ld c, c                                       ; $5ac8: $49
    jp $ef40                                      ; $5ac9: $c3 $40 $ef


    nop                                           ; $5acc: $00
    cp $47                                        ; $5acd: $fe $47
    or d                                          ; $5acf: $b2
    xor b                                         ; $5ad0: $a8
    db $fc                                        ; $5ad1: $fc
    jp z, $c22c                                   ; $5ad2: $ca $2c $c2

    ld b, e                                       ; $5ad5: $43
    db $e3                                        ; $5ad6: $e3
    rlca                                          ; $5ad7: $07
    rst $30                                       ; $5ad8: $f7
    set 1, c                                      ; $5ad9: $cb $c9

jr_06e_5adb:
    ld l, b                                       ; $5adb: $68
    rst $20                                       ; $5adc: $e7
    ld h, b                                       ; $5add: $60
    or l                                          ; $5ade: $b5
    xor $06                                       ; $5adf: $ee $06
    ret z                                         ; $5ae1: $c8

    cp h                                          ; $5ae2: $bc
    push de                                       ; $5ae3: $d5
    xor e                                         ; $5ae4: $ab
    ld [$641b], sp                                ; $5ae5: $08 $1b $64
    ld c, $2e                                     ; $5ae8: $0e $2e
    ld d, a                                       ; $5aea: $57
    daa                                           ; $5aeb: $27
    nop                                           ; $5aec: $00
    cp [hl]                                       ; $5aed: $be
    push af                                       ; $5aee: $f5
    and a                                         ; $5aef: $a7
    db $eb                                        ; $5af0: $eb
    cp e                                          ; $5af1: $bb
    jp $e9b6                                      ; $5af2: $c3 $b6 $e9


    ld d, d                                       ; $5af5: $52
    dec b                                         ; $5af6: $05
    add b                                         ; $5af7: $80
    rst $30                                       ; $5af8: $f7
    ld [hl], $43                                  ; $5af9: $36 $43
    or b                                          ; $5afb: $b0
    jp z, Jump_000_1700                           ; $5afc: $ca $00 $17

    jr nc, jr_06e_5a88                            ; $5aff: $30 $87

    or $c8                                        ; $5b01: $f6 $c8
    jp z, $cf70                                   ; $5b03: $ca $70 $cf

    ld c, c                                       ; $5b06: $49
    ret z                                         ; $5b07: $c8

    cp a                                          ; $5b08: $bf
    cp h                                          ; $5b09: $bc
    ret nz                                        ; $5b0a: $c0

    pop af                                        ; $5b0b: $f1
    db $dd                                        ; $5b0c: $dd
    db $eb                                        ; $5b0d: $eb
    nop                                           ; $5b0e: $00
    nop                                           ; $5b0f: $00
    nop                                           ; $5b10: $00
    adc l                                         ; $5b11: $8d
    sbc b                                         ; $5b12: $98
    rst $38                                       ; $5b13: $ff
    di                                            ; $5b14: $f3
    sbc c                                         ; $5b15: $99
    sbc c                                         ; $5b16: $99
    db $fd                                        ; $5b17: $fd
    ldh [$fe], a                                  ; $5b18: $e0 $fe
    ldh [$e1], a                                  ; $5b1a: $e0 $e1
    db $e4                                        ; $5b1c: $e4
    sub a                                         ; $5b1d: $97
    inc bc                                        ; $5b1e: $03
    sub a                                         ; $5b1f: $97
    sub a                                         ; $5b20: $97
    jp hl                                         ; $5b21: $e9


    db $e4                                        ; $5b22: $e4
    xor $e2                                       ; $5b23: $ee $e2
    push hl                                       ; $5b25: $e5
    ld [c], a                                     ; $5b26: $e2
    ei                                            ; $5b27: $fb
    db $e3                                        ; $5b28: $e3
    and $e0                                       ; $5b29: $e6 $e0
    db $e4                                        ; $5b2b: $e4
    ld [c], a                                     ; $5b2c: $e2
    nop                                           ; $5b2d: $00
    rst $18                                       ; $5b2e: $df
    db $e4                                        ; $5b2f: $e4
    db $d3                                        ; $5b30: $d3
    ld [c], a                                     ; $5b31: $e2
    cp e                                          ; $5b32: $bb
    rst $20                                       ; $5b33: $e7
    cp l                                          ; $5b34: $bd
    and $bf                                       ; $5b35: $e6 $bf
    db $eb                                        ; $5b37: $eb
    ret nz                                        ; $5b38: $c0

    db $ed                                        ; $5b39: $ed
    ei                                            ; $5b3a: $fb
    push hl                                       ; $5b3b: $e5
    sub l                                         ; $5b3c: $95
    db $e4                                        ; $5b3d: $e4
    ldh [$b4], a                                  ; $5b3e: $e0 $b4
    rst $20                                       ; $5b40: $e7
    sub a                                         ; $5b41: $97
    db $e4                                        ; $5b42: $e4
    jp hl                                         ; $5b43: $e9


    db $e4                                        ; $5b44: $e4
    ld h, a                                       ; $5b45: $67
    db $e4                                        ; $5b46: $e4
    add b                                         ; $5b47: $80
    db $eb                                        ; $5b48: $eb
    sub [hl]                                      ; $5b49: $96
    sub [hl]                                      ; $5b4a: $96
    sub [hl]                                      ; $5b4b: $96
    nop                                           ; $5b4c: $00
    cp h                                          ; $5b4d: $bc
    ld [$e6b5], a                                 ; $5b4e: $ea $b5 $e6
    ld l, a                                       ; $5b51: $6f
    db $e4                                        ; $5b52: $e4
    cp a                                          ; $5b53: $bf
    db $ec                                        ; $5b54: $ec
    ccf                                           ; $5b55: $3f
    db $ed                                        ; $5b56: $ed
    pop bc                                        ; $5b57: $c1
    ldh [$be], a                                  ; $5b58: $e0 $be
    ld [c], a                                     ; $5b5a: $e2
    ld a, [$e0e3]                                 ; $5b5b: $fa $e3 $e0
    ld [hl-], a                                   ; $5b5e: $32
    pop hl                                        ; $5b5f: $e1
    xor a                                         ; $5b60: $af
    add sp, $38                                   ; $5b61: $e8 $38
    rst $20                                       ; $5b63: $e7
    ld a, [hl]                                    ; $5b64: $7e
    and $fe                                       ; $5b65: $e6 $fe
    call $9696                                    ; $5b67: $cd $96 $96
    sub l                                         ; $5b6a: $95
    ld b, b                                       ; $5b6b: $40
    cp l                                          ; $5b6c: $bd
    db $e3                                        ; $5b6d: $e3
    or a                                          ; $5b6e: $b7
    db $e4                                        ; $5b6f: $e4
    ld hl, sp-$1b                                 ; $5b70: $f8 $e5
    cp l                                          ; $5b72: $bd
    ld [$e63d], a                                 ; $5b73: $ea $3d $e6
    cp $cf                                        ; $5b76: $fe $cf
    sub l                                         ; $5b78: $95
    rst $38                                       ; $5b79: $ff
    pop hl                                        ; $5b7a: $e1
    nop                                           ; $5b7b: $00
    ld a, e                                       ; $5b7c: $7b
    pop hl                                        ; $5b7d: $e1
    ld a, [$f6e3]                                 ; $5b7e: $fa $e3 $f6
    ld [c], a                                     ; $5b81: $e2
    or e                                          ; $5b82: $b3
    and $ea                                       ; $5b83: $e6 $ea
    add $bf                                       ; $5b85: $c6 $bf
    db $eb                                        ; $5b87: $eb
    ret nz                                        ; $5b88: $c0

    xor $fb                                       ; $5b89: $ee $fb
    and $00                                       ; $5b8b: $e6 $00
    cp b                                          ; $5b8d: $b8
    ld [c], a                                     ; $5b8e: $e2
    xor a                                         ; $5b8f: $af
    db $e4                                        ; $5b90: $e4
    ld a, b                                       ; $5b91: $78
    rst $20                                       ; $5b92: $e7
    ld a, [hl]                                    ; $5b93: $7e
    db $eb                                        ; $5b94: $eb
    dec a                                         ; $5b95: $3d
    set 1, l                                      ; $5b96: $cb $cd
    and $fb                                       ; $5b98: $e6 $fb
    db $ec                                        ; $5b9a: $ec
    jr z, @-$17                                   ; $5b9b: $28 $e7

    nop                                           ; $5b9d: $00
    ld a, [hl]                                    ; $5b9e: $7e
    db $eb                                        ; $5b9f: $eb
    db $fc                                        ; $5ba0: $fc
    xor l                                         ; $5ba1: $ad
    dec c                                         ; $5ba2: $0d
    db $e4                                        ; $5ba3: $e4
    inc a                                         ; $5ba4: $3c
    push hl                                       ; $5ba5: $e5
    ld a, h                                       ; $5ba6: $7c
    add sp, $78                                   ; $5ba7: $e8 $78
    and $08                                       ; $5ba9: $e6 $08
    add sp, -$02                                  ; $5bab: $e8 $fe
    rst $08                                       ; $5bad: $cf
    nop                                           ; $5bae: $00
    adc h                                         ; $5baf: $8c
    add $7c                                       ; $5bb0: $c6 $7c
    call nz, $c4bc                                ; $5bb2: $c4 $bc $c4
    dec l                                         ; $5bb5: $2d
    ld [$c746], a                                 ; $5bb6: $ea $46 $c7
    inc a                                         ; $5bb9: $3c
    rst $08                                       ; $5bba: $cf
    ld h, c                                       ; $5bbb: $61
    and l                                         ; $5bbc: $a5
    ld b, h                                       ; $5bbd: $44
    push bc                                       ; $5bbe: $c5
    ldh [$3c], a                                  ; $5bbf: $e0 $3c
    push bc                                       ; $5bc1: $c5
    ld [hl], b                                    ; $5bc2: $70
    ld [$e708], a                                 ; $5bc3: $ea $08 $e7
    inc a                                         ; $5bc6: $3c
    ret z                                         ; $5bc7: $c8

    dec sp                                        ; $5bc8: $3b
    and e                                         ; $5bc9: $a3
    rlca                                          ; $5bca: $07
    rlca                                          ; $5bcb: $07
    dec c                                         ; $5bcc: $0d
    add b                                         ; $5bcd: $80
    dec de                                        ; $5bce: $1b
    and d                                         ; $5bcf: $a2
    add h                                         ; $5bd0: $84
    and [hl]                                      ; $5bd1: $a6
    ld de, $eca3                                  ; $5bd2: $11 $a3 $ec
    and [hl]                                      ; $5bd5: $a6
    ld a, [hl]                                    ; $5bd6: $7e
    push hl                                       ; $5bd7: $e5
    cp $c9                                        ; $5bd8: $fe $c9
    ld a, e                                       ; $5bda: $7b
    xor c                                         ; $5bdb: $a9
    ret nc                                        ; $5bdc: $d0

    ccf                                           ; $5bdd: $3f
    ld b, [hl]                                    ; $5bde: $46
    dec bc                                        ; $5bdf: $0b
    ld [bc], a                                    ; $5be0: $02
    rlca                                          ; $5be1: $07
    rlca                                          ; $5be2: $07
    rrca                                          ; $5be3: $0f
    and [hl]                                      ; $5be4: $a6
    and [hl]                                      ; $5be5: $a6
    ld e, b                                       ; $5be6: $58
    and $f0                                       ; $5be7: $e6 $f0
    ld [hl], a                                    ; $5be9: $77
    and $21                                       ; $5bea: $e6 $21
    pop bc                                        ; $5bec: $c1
    cp $c9                                        ; $5bed: $fe $c9
    ld a, l                                       ; $5bef: $7d
    set 2, e                                      ; $5bf0: $cb $d3
    pop de                                        ; $5bf2: $d1
    ret nc                                        ; $5bf3: $d0

    ld b, [hl]                                    ; $5bf4: $46
    rst $30                                       ; $5bf5: $f7
    ld b, [hl]                                    ; $5bf6: $46
    ld b, [hl]                                    ; $5bf7: $46
    ld [bc], a                                    ; $5bf8: $02
    ld a, d                                       ; $5bf9: $7a
    ldh [rSB], a                                  ; $5bfa: $e0 $01
    nop                                           ; $5bfc: $00
    sbc c                                         ; $5bfd: $99
    rrca                                          ; $5bfe: $0f
    add b                                         ; $5bff: $80
    or [hl]                                       ; $5c00: $b6
    ldh [$f8], a                                  ; $5c01: $e0 $f8
    pop hl                                        ; $5c03: $e1
    cp h                                          ; $5c04: $bc
    add [hl]                                      ; $5c05: $86
    cp a                                          ; $5c06: $bf
    db $e3                                        ; $5c07: $e3
    cp $c9                                        ; $5c08: $fe $c9
    ld a, l                                       ; $5c0a: $7d
    ret z                                         ; $5c0b: $c8

    ld e, a                                       ; $5c0c: $5f
    add d                                         ; $5c0d: $82
    and b                                         ; $5c0e: $a0
    rst $08                                       ; $5c0f: $cf
    and b                                         ; $5c10: $a0
    db $d3                                        ; $5c11: $d3
    pop de                                        ; $5c12: $d1
    pop de                                        ; $5c13: $d1
    cp h                                          ; $5c14: $bc
    ldh [$7a], a                                  ; $5c15: $e0 $7a
    pop hl                                        ; $5c17: $e1
    rlca                                          ; $5c18: $07
    ld [bc], a                                    ; $5c19: $02
    ld a, a                                       ; $5c1a: $7f
    ld b, l                                       ; $5c1b: $45
    ld b, e                                       ; $5c1c: $43
    ld [bc], a                                    ; $5c1d: $02
    rlca                                          ; $5c1e: $07
    rrca                                          ; $5c1f: $0f
    nop                                           ; $5c20: $00
    ld bc, $829c                                  ; $5c21: $01 $9c $82
    ld bc, $6a0f                                  ; $5c24: $01 $0f $6a
    pop hl                                        ; $5c27: $e1
    daa                                           ; $5c28: $27
    and b                                         ; $5c29: $a0
    cp $c9                                        ; $5c2a: $fe $c9
    ld a, l                                       ; $5c2c: $7d
    rst $00                                       ; $5c2d: $c7
    ret nz                                        ; $5c2e: $c0

    rst $20                                       ; $5c2f: $e7
    cp $e1                                        ; $5c30: $fe $e1
    cp h                                          ; $5c32: $bc
    ldh [rIE], a                                  ; $5c33: $e0 $ff
    ret nc                                        ; $5c35: $d0

    ld b, l                                       ; $5c36: $45
    ld c, b                                       ; $5c37: $48
    ld c, [hl]                                    ; $5c38: $4e
    ld b, h                                       ; $5c39: $44
    ld c, c                                       ; $5c3a: $49
    ld c, h                                       ; $5c3b: $4c
    ld c, c                                       ; $5c3c: $49
    ld sp, hl                                     ; $5c3d: $f9
    ld c, b                                       ; $5c3e: $48
    cp [hl]                                       ; $5c3f: $be
    ldh [$b5], a                                  ; $5c40: $e0 $b5
    ldh [rTAC], a                                 ; $5c42: $e0 $07
    ld [bc], a                                    ; $5c44: $02
    dec bc                                        ; $5c45: $0b
    ld b, [hl]                                    ; $5c46: $46
    ld [bc], a                                    ; $5c47: $02
    ldh a, [$bf]                                  ; $5c48: $f0 $bf
    pop hl                                        ; $5c4a: $e1
    cp $c8                                        ; $5c4b: $fe $c8
    ld a, l                                       ; $5c4d: $7d
    rst $00                                       ; $5c4e: $c7
    ld sp, hl                                     ; $5c4f: $f9
    ld h, a                                       ; $5c50: $67
    and b                                         ; $5c51: $a0
    ld [c], a                                     ; $5c52: $e2
    db $e3                                        ; $5c53: $e3
    and b                                         ; $5c54: $a0
    ei                                            ; $5c55: $fb
    call nc, $bad4                                ; $5c56: $d4 $d4 $ba
    ldh [$d2], a                                  ; $5c59: $e0 $d2
    ld b, l                                       ; $5c5b: $45
    ld c, e                                       ; $5c5c: $4b
    ld d, d                                       ; $5c5d: $52
    dec hl                                        ; $5c5e: $2b
    rst $38                                       ; $5c5f: $ff
    dec hl                                        ; $5c60: $2b
    ld d, e                                       ; $5c61: $53
    ld e, c                                       ; $5c62: $59
    ld e, c                                       ; $5c63: $59
    ld b, l                                       ; $5c64: $45
    ld b, l                                       ; $5c65: $45
    dec bc                                        ; $5c66: $0b
    ld b, l                                       ; $5c67: $45
    rst $38                                       ; $5c68: $ff
    ccf                                           ; $5c69: $3f
    ld b, l                                       ; $5c6a: $45
    ld b, l                                       ; $5c6b: $45
    ccf                                           ; $5c6c: $3f
    scf                                           ; $5c6d: $37
    scf                                           ; $5c6e: $37
    ld b, l                                       ; $5c6f: $45
    ld [bc], a                                    ; $5c70: $02
    pop hl                                        ; $5c71: $e1
    sbc c                                         ; $5c72: $99
    ret nz                                        ; $5c73: $c0

    ldh [$fe], a                                  ; $5c74: $e0 $fe
    push bc                                       ; $5c76: $c5
    ld a, l                                       ; $5c77: $7d
    rst $00                                       ; $5c78: $c7
    cp b                                          ; $5c79: $b8
    ld l, c                                       ; $5c7a: $69
    and b                                         ; $5c7b: $a0
    db $e4                                        ; $5c7c: $e4
    push hl                                       ; $5c7d: $e5
    rst $38                                       ; $5c7e: $ff
    and b                                         ; $5c7f: $a0
    and b                                         ; $5c80: $a0
    sub $d7                                       ; $5c81: $d6 $d7
    ret c                                         ; $5c83: $d8

    and b                                         ; $5c84: $a0
    sbc [hl]                                      ; $5c85: $9e
    ld b, l                                       ; $5c86: $45
    rst $38                                       ; $5c87: $ff
    ld c, e                                       ; $5c88: $4b
    dec l                                         ; $5c89: $2d
    jr nz, jr_06e_5cac                            ; $5c8a: $20 $20

    cpl                                           ; $5c8c: $2f
    ld a, [hl+]                                   ; $5c8d: $2a
    dec a                                         ; $5c8e: $3d
    jr c, @+$01                                   ; $5c8f: $38 $ff

    jr c, jr_06e_5cd0                             ; $5c91: $38 $3d

    jr c, jr_06e_5cca                             ; $5c93: $38 $35

    jr c, jr_06e_5ccf                             ; $5c95: $38 $38

    xor h                                         ; $5c97: $ac
    rst $08                                       ; $5c98: $cf
    add a                                         ; $5c99: $87
    rst $08                                       ; $5c9a: $cf
    add hl, sp                                    ; $5c9b: $39
    inc c                                         ; $5c9c: $0c
    ret nz                                        ; $5c9d: $c0

    ldh [$ae], a                                  ; $5c9e: $e0 $ae
    add a                                         ; $5ca0: $87

jr_06e_5ca1:
    ccf                                           ; $5ca1: $3f
    xor $44                                       ; $5ca2: $ee $44
    ld h, c                                       ; $5ca4: $61
    and b                                         ; $5ca5: $a0
    rst $38                                       ; $5ca6: $ff
    and $e7                                       ; $5ca7: $e6 $e7
    and b                                         ; $5ca9: $a0
    and b                                         ; $5caa: $a0
    reti                                          ; $5cab: $d9


jr_06e_5cac:
    jp c, $a0db                                   ; $5cac: $da $db $a0

    ei                                            ; $5caf: $fb
    sbc a                                         ; $5cb0: $9f
    ret nc                                        ; $5cb1: $d0

    ret nz                                        ; $5cb2: $c0

    push hl                                       ; $5cb3: $e5
    dec [hl]                                      ; $5cb4: $35
    dec [hl]                                      ; $5cb5: $35
    jp Jump_000_3535                              ; $5cb6: $c3 $35 $35


    ld a, a                                       ; $5cb9: $7f
    dec [hl]                                      ; $5cba: $35
    xor l                                         ; $5cbb: $ad
    adc $ce                                       ; $5cbc: $ce $ce
    ld a, $46                                     ; $5cbe: $3e $46
    ld [$c234], sp                                ; $5cc0: $08 $34 $c2
    ld [hl], b                                    ; $5cc3: $70
    rst $20                                       ; $5cc4: $e7
    and h                                         ; $5cc5: $a4
    ccf                                           ; $5cc6: $3f
    db $eb                                        ; $5cc7: $eb
    inc h                                         ; $5cc8: $24
    ld h, h                                       ; $5cc9: $64

jr_06e_5cca:
    nop                                           ; $5cca: $00
    ld [c], a                                     ; $5ccb: $e2
    call c, $dedd                                 ; $5ccc: $dc $dd $de

jr_06e_5ccf:
    cp b                                          ; $5ccf: $b8

jr_06e_5cd0:
    ret nz                                        ; $5cd0: $c0

    ld a, a                                       ; $5cd1: $7f
    ret nc                                        ; $5cd2: $d0

jr_06e_5cd3:
    ld b, l                                       ; $5cd3: $45
    ld a, [hl+]                                   ; $5cd4: $2a
    ld a, [hl+]                                   ; $5cd5: $2a
    ld c, [hl]                                    ; $5cd6: $4e
    ld c, [hl]                                    ; $5cd7: $4e
    ld c, [hl]                                    ; $5cd8: $4e
    ld b, [hl]                                    ; $5cd9: $46
    ldh [$df], a                                  ; $5cda: $e0 $df
    jr c, jr_06e_5ca1                             ; $5cdc: $38 $c3

    jp z, Jump_000_35cb                           ; $5cde: $ca $cb $35

    add b                                         ; $5ce1: $80
    ldh [rSC], a                                  ; $5ce2: $e0 $02
    rrca                                          ; $5ce4: $0f
    or b                                          ; $5ce5: $b0
    adc h                                         ; $5ce6: $8c
    and h                                         ; $5ce7: $a4
    ld h, c                                       ; $5ce8: $61
    ld h, l                                       ; $5ce9: $65
    ei                                            ; $5cea: $fb
    adc c                                         ; $5ceb: $89
    db $e3                                        ; $5cec: $e3
    ld b, e                                       ; $5ced: $43
    call nc, Call_000_03d5                        ; $5cee: $d4 $d5 $03
    ldh [$df], a                                  ; $5cf1: $e0 $df
    ei                                            ; $5cf3: $fb
    ldh [$e1], a                                  ; $5cf4: $e0 $e1
    cp e                                          ; $5cf6: $bb
    jp nz, Jump_06e_45d0                          ; $5cf7: $c2 $d0 $45

    ld d, e                                       ; $5cfa: $53
    ld e, c                                       ; $5cfb: $59
    ld d, e                                       ; $5cfc: $53
    rst $38                                       ; $5cfd: $ff
    xor [hl]                                      ; $5cfe: $ae
    xor [hl]                                      ; $5cff: $ae
    ld b, [hl]                                    ; $5d00: $46
    ld b, l                                       ; $5d01: $45
    ld [hl], $c8                                  ; $5d02: $36 $c8
    ret                                           ; $5d04: $c9


    xor h                                         ; $5d05: $ac
    rrca                                          ; $5d06: $0f
    dec [hl]                                      ; $5d07: $35
    inc a                                         ; $5d08: $3c
    ld b, h                                       ; $5d09: $44
    ld [$c234], sp                                ; $5d0a: $08 $34 $c2
    xor [hl]                                      ; $5d0d: $ae
    and h                                         ; $5d0e: $a4
    ld a, [hl]                                    ; $5d0f: $7e
    res 7, h                                      ; $5d10: $cb $bc
    ld b, l                                       ; $5d12: $45
    db $e3                                        ; $5d13: $e3
    and b                                         ; $5d14: $a0
    and b                                         ; $5d15: $a0
    cp [hl]                                       ; $5d16: $be
    ld [c], a                                     ; $5d17: $e2
    cp h                                          ; $5d18: $bc
    jp $c179                                      ; $5d19: $c3 $79 $c1


    ld b, [hl]                                    ; $5d1c: $46
    xor a                                         ; $5d1d: $af
    xor a                                         ; $5d1e: $af
    rst $38                                       ; $5d1f: $ff
    xor [hl]                                      ; $5d20: $ae
    xor [hl]                                      ; $5d21: $ae
    ld b, l                                       ; $5d22: $45
    scf                                           ; $5d23: $37
    jr c, jr_06e_5cd3                             ; $5d24: $38 $ad

    dec [hl]                                      ; $5d26: $35
    dec [hl]                                      ; $5d27: $35
    inc bc                                        ; $5d28: $03
    ld b, b                                       ; $5d29: $40
    ld [$417f], sp                                ; $5d2a: $08 $7f $41
    db $eb                                        ; $5d2d: $eb
    and c                                         ; $5d2e: $a1
    ld b, c                                       ; $5d2f: $41
    ld l, d                                       ; $5d30: $6a
    ld [hl], h                                    ; $5d31: $74
    ld b, a                                       ; $5d32: $47
    nop                                           ; $5d33: $00
    pop bc                                        ; $5d34: $c1
    add e                                         ; $5d35: $83
    pop bc                                        ; $5d36: $c1
    sub b                                         ; $5d37: $90
    ld a, h                                       ; $5d38: $7c
    ret nz                                        ; $5d39: $c0

    rst $38                                       ; $5d3a: $ff
    push hl                                       ; $5d3b: $e5
    or b                                          ; $5d3c: $b0
    and c                                         ; $5d3d: $a1
    cp [hl]                                       ; $5d3e: $be
    ld [c], a                                     ; $5d3f: $e2
    ld [hl], $80                                  ; $5d40: $36 $80
    pop hl                                        ; $5d42: $e1
    pop bc                                        ; $5d43: $c1
    pop hl                                        ; $5d44: $e1
    ld [bc], a                                    ; $5d45: $02
    inc bc                                        ; $5d46: $03
    ld b, l                                       ; $5d47: $45
    ld b, l                                       ; $5d48: $45
    scf                                           ; $5d49: $37
    jp nz, $a97d                                  ; $5d4a: $c2 $7d $a9

    or h                                          ; $5d4d: $b4
    ld b, [hl]                                    ; $5d4e: $46
    nop                                           ; $5d4f: $00
    jp $c57c                                      ; $5d50: $c3 $7c $c5


    cp b                                          ; $5d53: $b8
    ld [c], a                                     ; $5d54: $e2
    sbc $be                                       ; $5d55: $de $be
    db $e4                                        ; $5d57: $e4
    ld b, l                                       ; $5d58: $45
    ld [hl], $36                                  ; $5d59: $36 $36
    ld b, l                                       ; $5d5b: $45
    ret nz                                        ; $5d5c: $c0

    pop hl                                        ; $5d5d: $e1
    ld [$0745], sp                                ; $5d5e: $08 $45 $07
    ld [hl], $39                                  ; $5d61: $36 $39
    xor [hl]                                      ; $5d63: $ae
    or a                                          ; $5d64: $b7
    ldh [$03], a                                  ; $5d65: $e0 $03
    ld l, b                                       ; $5d67: $68
    ld e, l                                       ; $5d68: $5d
    ld c, c                                       ; $5d69: $49
    ret nz                                        ; $5d6a: $c0

    and d                                         ; $5d6b: $a2
    ld a, h                                       ; $5d6c: $7c
    push bc                                       ; $5d6d: $c5
    inc e                                         ; $5d6e: $1c
    inc [hl]                                      ; $5d6f: $34
    pop bc                                        ; $5d70: $c1
    or d                                          ; $5d71: $b2
    and c                                         ; $5d72: $a1
    ret nc                                        ; $5d73: $d0

    ld b, [hl]                                    ; $5d74: $46
    xor [hl]                                      ; $5d75: $ae
    cp a                                          ; $5d76: $bf
    ldh [$89], a                                  ; $5d77: $e0 $89
    ldh [$b9], a                                  ; $5d79: $e0 $b9
    jr nz, jr_06e_5d9c                            ; $5d7b: $20 $1f

    ld [$3542], sp                                ; $5d7d: $08 $42 $35
    ld a, $af                                     ; $5d80: $3e $af
    ld a, b                                       ; $5d82: $78
    jp nz, $c949                                  ; $5d83: $c2 $49 $c9

    dec de                                        ; $5d86: $1b
    ld b, [hl]                                    ; $5d87: $46
    ldh a, [rTIMA]                                ; $5d88: $f0 $05
    pop bc                                        ; $5d8a: $c1
    ld a, h                                       ; $5d8b: $7c
    add $34                                       ; $5d8c: $c6 $34
    ret nz                                        ; $5d8e: $c0

    ldh a, [$e2]                                  ; $5d8f: $f0 $e2
    jp nc, $af46                                  ; $5d91: $d2 $46 $af

    xor [hl]                                      ; $5d94: $ae
    rst $28                                       ; $5d95: $ef
    xor a                                         ; $5d96: $af
    ld b, [hl]                                    ; $5d97: $46
    inc c                                         ; $5d98: $0c
    sbc c                                         ; $5d99: $99
    ld [hl], $a0                                  ; $5d9a: $36 $a0

jr_06e_5d9c:
    rrca                                          ; $5d9c: $0f
    ld [bc], a                                    ; $5d9d: $02
    add hl, sp                                    ; $5d9e: $39
    ld c, a                                       ; $5d9f: $4f
    dec [hl]                                      ; $5da0: $35

jr_06e_5da1:
    ld a, $ae                                     ; $5da1: $3e $ae
    ld [$4782], sp                                ; $5da3: $08 $82 $47
    dec c                                         ; $5da6: $0d
    adc e                                         ; $5da7: $8b
    sbc b                                         ; $5da8: $98
    dec b                                         ; $5da9: $05
    pop bc                                        ; $5daa: $c1
    ret c                                         ; $5dab: $d8

    inc a                                         ; $5dac: $3c
    and d                                         ; $5dad: $a2
    ld a, h                                       ; $5dae: $7c
    jp $a2f5                                      ; $5daf: $c3 $f5 $a2


    and b                                         ; $5db2: $a0
    sbc h                                         ; $5db3: $9c
    add b                                         ; $5db4: $80
    push hl                                       ; $5db5: $e5
    ld bc, $1f00                                  ; $5db6: $01 $00 $1f
    ld [$3a45], sp                                ; $5db9: $08 $45 $3a
    jp $8039                                      ; $5dbc: $c3 $39 $80


    ldh [$80], a                                  ; $5dbf: $e0 $80
    jp $28af                                      ; $5dc1: $c3 $af $28


    ld d, b                                       ; $5dc4: $50
    bit 4, h                                      ; $5dc5: $cb $64
    dec b                                         ; $5dc7: $05
    jp nz, $c87b                                  ; $5dc8: $c2 $7b $c8

    push af                                       ; $5dcb: $f5
    and c                                         ; $5dcc: $a1
    sbc [hl]                                      ; $5dcd: $9e
    ld b, c                                       ; $5dce: $41
    pop hl                                        ; $5dcf: $e1
    xor a                                         ; $5dd0: $af
    nop                                           ; $5dd1: $00
    ld [c], a                                     ; $5dd2: $e2
    dec b                                         ; $5dd3: $05
    sbc c                                         ; $5dd4: $99
    ld bc, $36e0                                  ; $5dd5: $01 $e0 $36
    ret nz                                        ; $5dd8: $c0

    pop bc                                        ; $5dd9: $c1
    inc sp                                        ; $5dda: $33
    ld c, d                                       ; $5ddb: $4a
    add sp, $08                                   ; $5ddc: $e8 $08
    adc c                                         ; $5dde: $89
    db $e4                                        ; $5ddf: $e4
    add hl, sp                                    ; $5de0: $39
    push bc                                       ; $5de1: $c5
    ld a, d                                       ; $5de2: $7a
    push af                                       ; $5de3: $f5
    and d                                         ; $5de4: $a2
    sbc h                                         ; $5de5: $9c
    pop bc                                        ; $5de6: $c1
    pop hl                                        ; $5de7: $e1
    add hl, sp                                    ; $5de8: $39
    xor h                                         ; $5de9: $ac
    dec [hl]                                      ; $5dea: $35
    ld b, d                                       ; $5deb: $42
    add b                                         ; $5dec: $80
    ret nz                                        ; $5ded: $c0

    ld b, b                                       ; $5dee: $40
    add c                                         ; $5def: $81
    rst $00                                       ; $5df0: $c7
    or a                                          ; $5df1: $b7
    ld b, h                                       ; $5df2: $44
    ret nz                                        ; $5df3: $c0

    dec b                                         ; $5df4: $05
    ret nz                                        ; $5df5: $c0

    ret                                           ; $5df6: $c9


    cp h                                          ; $5df7: $bc
    add l                                         ; $5df8: $85
    ld [hl], e                                    ; $5df9: $73
    add e                                         ; $5dfa: $83
    sbc [hl]                                      ; $5dfb: $9e
    ld [bc], a                                    ; $5dfc: $02
    pop hl                                        ; $5dfd: $e1
    rlca                                          ; $5dfe: $07
    ld b, l                                       ; $5dff: $45
    ld a, [hl-]                                   ; $5e00: $3a
    xor l                                         ; $5e01: $ad
    ret nz                                        ; $5e02: $c0

    and b                                         ; $5e03: $a0
    ld h, d                                       ; $5e04: $62
    nop                                           ; $5e05: $00
    ld bc, $33c5                                  ; $5e06: $01 $c5 $33
    ld c, b                                       ; $5e09: $48
    add sp, $09                                   ; $5e0a: $e8 $09
    ld [hl], b                                    ; $5e0c: $70
    ld b, b                                       ; $5e0d: $40
    add $37                                       ; $5e0e: $c6 $37
    add e                                         ; $5e10: $83
    or $a1                                        ; $5e11: $f6 $a1
    ld b, c                                       ; $5e13: $41
    ld [c], a                                     ; $5e14: $e2
    add hl, sp                                    ; $5e15: $39
    rst $08                                       ; $5e16: $cf
    rst $08                                       ; $5e17: $cf
    add b                                         ; $5e18: $80
    ldh [rP1], a                                  ; $5e19: $e0 $00
    cp b                                          ; $5e1b: $b8
    ld h, a                                       ; $5e1c: $67
    rra                                           ; $5e1d: $1f

jr_06e_5e1e:
    jr z, jr_06e_5da1                             ; $5e1e: $28 $81

    xor c                                         ; $5e20: $a9
    nop                                           ; $5e21: $00
    add e                                         ; $5e22: $83
    cp h                                          ; $5e23: $bc
    add c                                         ; $5e24: $81
    ld [hl], a                                    ; $5e25: $77
    jp $8172                                      ; $5e26: $c3 $72 $81


    add b                                         ; $5e29: $80
    ld [c], a                                     ; $5e2a: $e2
    rlca                                          ; $5e2b: $07
    ld a, $c3                                     ; $5e2c: $3e $c3
    adc $80                                       ; $5e2e: $ce $80
    and b                                         ; $5e30: $a0
    jr z, jr_06e_5e35                             ; $5e31: $28 $02

    xor [hl]                                      ; $5e33: $ae
    ld c, c                                       ; $5e34: $49

jr_06e_5e35:
    ld a, h                                       ; $5e35: $7c
    add sp, $00                                   ; $5e36: $e8 $00
    add h                                         ; $5e38: $84
    ldh a, [$86]                                  ; $5e39: $f0 $86
    and l                                         ; $5e3b: $a5
    ld [hl], a                                    ; $5e3c: $77
    jp $8172                                      ; $5e3d: $c3 $72 $81


    pop bc                                        ; $5e40: $c1
    jp nz, $ce3e                                  ; $5e41: $c2 $3e $ce

    adc $3c                                       ; $5e44: $ce $3c
    ld bc, $bf44                                  ; $5e46: $01 $44 $bf
    ld h, c                                       ; $5e49: $61
    ld a, a                                       ; $5e4a: $7f
    add d                                         ; $5e4b: $82
    or a                                          ; $5e4c: $b7
    ld b, [hl]                                    ; $5e4d: $46
    sbc c                                         ; $5e4e: $99
    dec b                                         ; $5e4f: $05
    ret nz                                        ; $5e50: $c0

    call nz, $8280                                ; $5e51: $c4 $80 $82
    rst $38                                       ; $5e54: $ff
    add e                                         ; $5e55: $83
    ld [$c477], sp                                ; $5e56: $08 $77 $c4
    nop                                           ; $5e59: $00
    push hl                                       ; $5e5a: $e5
    ret nz                                        ; $5e5b: $c0

    ldh [$35], a                                  ; $5e5c: $e0 $35
    ld a, a                                       ; $5e5e: $7f
    jp nz, $4472                                  ; $5e5f: $c2 $72 $44

    ld e, e                                       ; $5e62: $5b
    inc h                                         ; $5e63: $24
    add sp, $0c                                   ; $5e64: $e8 $0c
    ld b, b                                       ; $5e66: $40
    ld b, b                                       ; $5e67: $40
    add h                                         ; $5e68: $84
    ld a, e                                       ; $5e69: $7b
    add c                                         ; $5e6a: $81
    ld a, h                                       ; $5e6b: $7c
    add c                                         ; $5e6c: $81
    ld a, h                                       ; $5e6d: $7c
    call nz, $80bc                                ; $5e6e: $c4 $bc $80
    nop                                           ; $5e71: $00
    pop hl                                        ; $5e72: $e1
    xor h                                         ; $5e73: $ac
    ld a, a                                       ; $5e74: $7f
    add l                                         ; $5e75: $85
    ld b, b                                       ; $5e76: $40
    ld [hl], a                                    ; $5e77: $77
    ld b, [hl]                                    ; $5e78: $46
    sub e                                         ; $5e79: $93
    ld b, $61                                     ; $5e7a: $06 $61
    rlca                                          ; $5e7c: $07
    inc bc                                        ; $5e7d: $03
    jp nz, $c784                                  ; $5e7e: $c2 $84 $c7

    ld [hl], l                                    ; $5e81: $75
    ld h, d                                       ; $5e82: $62
    jp nc, $a041                                  ; $5e83: $d2 $41 $a0

    rra                                           ; $5e86: $1f
    ld b, l                                       ; $5e87: $45
    ld a, [hl-]                                   ; $5e88: $3a
    dec [hl]                                      ; $5e89: $35
    xor l                                         ; $5e8a: $ad
    dec [hl]                                      ; $5e8b: $35
    rst $38                                       ; $5e8c: $ff
    ld h, b                                       ; $5e8d: $60
    or e                                          ; $5e8e: $b3
    ld b, e                                       ; $5e8f: $43
    ld a, c                                       ; $5e90: $79
    ld h, l                                       ; $5e91: $65
    ret nz                                        ; $5e92: $c0

    and e                                         ; $5e93: $a3
    add hl, bc                                    ; $5e94: $09
    ret nz                                        ; $5e95: $c0

    and e                                         ; $5e96: $a3
    add $e7                                       ; $5e97: $c6 $e7
    jr c, jr_06e_5e1e                             ; $5e99: $38 $83

    ld [hl], l                                    ; $5e9b: $75
    ld h, c                                       ; $5e9c: $61
    ccf                                           ; $5e9d: $3f
    ret nz                                        ; $5e9e: $c0

    ld b, [hl]                                    ; $5e9f: $46
    xor [hl]                                      ; $5ea0: $ae
    ccf                                           ; $5ea1: $3f
    ld a, $cd                                     ; $5ea2: $3e $cd
    rst $08                                       ; $5ea4: $cf
    dec [hl]                                      ; $5ea5: $35
    ld a, [hl-]                                   ; $5ea6: $3a
    ld b, l                                       ; $5ea7: $45
    ld [hl], c                                    ; $5ea8: $71
    ld b, b                                       ; $5ea9: $40
    ld c, l                                       ; $5eaa: $4d
    and e                                         ; $5eab: $a3
    add b                                         ; $5eac: $80
    ld h, h                                       ; $5ead: $64
    ld [hl+], a                                   ; $5eae: $22
    ld h, c                                       ; $5eaf: $61
    db $10                                        ; $5eb0: $10
    ld b, a                                       ; $5eb1: $47
    ret                                           ; $5eb2: $c9


    or h                                          ; $5eb3: $b4
    ld h, c                                       ; $5eb4: $61
    add b                                         ; $5eb5: $80
    and e                                         ; $5eb6: $a3
    ret nz                                        ; $5eb7: $c0

    add b                                         ; $5eb8: $80
    ld a, a                                       ; $5eb9: $7f
    pop bc                                        ; $5eba: $c1
    xor h                                         ; $5ebb: $ac
    dec b                                         ; $5ebc: $05
    jr c, @-$42                                   ; $5ebd: $38 $bc

    ld b, b                                       ; $5ebf: $40
    rlca                                          ; $5ec0: $07
    ld a, [hl-]                                   ; $5ec1: $3a
    and b                                         ; $5ec2: $a0
    xor l                                         ; $5ec3: $ad
    ld h, $39                                     ; $5ec4: $26 $39
    db $eb                                        ; $5ec6: $eb
    ld de, $0720                                  ; $5ec7: $11 $20 $07
    add l                                         ; $5eca: $85
    nop                                           ; $5ecb: $00
    cp c                                          ; $5ecc: $b9
    ld b, b                                       ; $5ecd: $40
    ld a, c                                       ; $5ece: $79
    ld b, d                                       ; $5ecf: $42
    ld [hl], l                                    ; $5ed0: $75
    ld h, d                                       ; $5ed1: $62
    rst $38                                       ; $5ed2: $ff
    pop bc                                        ; $5ed3: $c1
    cp a                                          ; $5ed4: $bf
    pop bc                                        ; $5ed5: $c1
    cp h                                          ; $5ed6: $bc

jr_06e_5ed7:
    ld h, b                                       ; $5ed7: $60
    cp [hl]                                       ; $5ed8: $be
    ld [c], a                                     ; $5ed9: $e2
    ld e, a                                       ; $5eda: $5f
    inc hl                                        ; $5edb: $23
    add b                                         ; $5edc: $80
    add hl, sp                                    ; $5edd: $39
    and $a4                                       ; $5ede: $e6 $a4
    add hl, bc                                    ; $5ee0: $09
    inc b                                         ; $5ee1: $04
    and l                                         ; $5ee2: $a5
    cp c                                          ; $5ee3: $b9
    ld b, c                                       ; $5ee4: $41
    cp e                                          ; $5ee5: $bb
    ld h, [hl]                                    ; $5ee6: $66
    rst $38                                       ; $5ee7: $ff
    pop bc                                        ; $5ee8: $c1
    cp a                                          ; $5ee9: $bf
    and c                                         ; $5eea: $a1
    dec [hl]                                      ; $5eeb: $35
    dec a                                         ; $5eec: $3d
    xor h                                         ; $5eed: $ac

jr_06e_5eee:
    or a                                          ; $5eee: $b7
    ld b, b                                       ; $5eef: $40
    jr c, @+$39                                   ; $5ef0: $38 $37

    ccf                                           ; $5ef2: $3f
    ld b, e                                       ; $5ef3: $43
    jr c, jr_06e_5ed7                             ; $5ef4: $38 $e1

    daa                                           ; $5ef6: $27
    ld h, $10                                     ; $5ef7: $26 $10
    or $c7                                        ; $5ef9: $f6 $c7
    sbc e                                         ; $5efb: $9b
    nop                                           ; $5efc: $00
    jp z, Jump_000_35e8                           ; $5efd: $ca $e8 $35

    xor b                                         ; $5f00: $a8
    ret nc                                        ; $5f01: $d0

    ret nz                                        ; $5f02: $c0

    ld h, c                                       ; $5f03: $61
    ld a, e                                       ; $5f04: $7b
    ld b, c                                       ; $5f05: $41
    cp [hl]                                       ; $5f06: $be
    ld [c], a                                     ; $5f07: $e2
    inc bc                                        ; $5f08: $03
    xor h                                         ; $5f09: $ac
    dec sp                                        ; $5f0a: $3b
    jr c, jr_06e_5eee                             ; $5f0b: $38 $e1

    or l                                          ; $5f0d: $b5
    ret                                           ; $5f0e: $c9


    or d                                          ; $5f0f: $b2
    rst $00                                       ; $5f10: $c7
    ret nz                                        ; $5f11: $c0

    db $ed                                        ; $5f12: $ed

jr_06e_5f13:
    cp l                                          ; $5f13: $bd
    ld h, e                                       ; $5f14: $63
    rst $38                                       ; $5f15: $ff
    ld h, c                                       ; $5f16: $61
    daa                                           ; $5f17: $27
    ld b, l                                       ; $5f18: $45
    ld [hl], $3b                                  ; $5f19: $36 $3b
    cp [hl]                                       ; $5f1b: $be
    ld [c], a                                     ; $5f1c: $e2
    cp d                                          ; $5f1d: $ba
    ld [c], a                                     ; $5f1e: $e2
    xor h                                         ; $5f1f: $ac
    ld a, e                                       ; $5f20: $7b
    add b                                         ; $5f21: $80
    ld d, l                                       ; $5f22: $55
    nop                                           ; $5f23: $00
    ret nz                                        ; $5f24: $c0

    inc l                                         ; $5f25: $2c
    inc h                                         ; $5f26: $24
    and h                                         ; $5f27: $a4
    ld [$e84a], sp                                ; $5f28: $08 $4a $e8
    or l                                          ; $5f2b: $b5
    ld h, d                                       ; $5f2c: $62
    jr c, jr_06e_5f13                             ; $5f2d: $38 $e4

    cp c                                          ; $5f2f: $b9
    ld b, b                                       ; $5f30: $40
    ld b, [hl]                                    ; $5f31: $46
    ld b, l                                       ; $5f32: $45
    reti                                          ; $5f33: $d9


    ld b, e                                       ; $5f34: $43
    ld a, l                                       ; $5f35: $7d
    pop hl                                        ; $5f36: $e1
    db $fd                                        ; $5f37: $fd
    ld [c], a                                     ; $5f38: $e2
    xor l                                         ; $5f39: $ad
    xor l                                         ; $5f3a: $ad
    or e                                          ; $5f3b: $b3
    and b                                         ; $5f3c: $a0
    ld b, [hl]                                    ; $5f3d: $46
    ld b, [hl]                                    ; $5f3e: $46
    ld bc, $2c0b                                  ; $5f3f: $01 $0b $2c
    inc hl                                        ; $5f42: $23
    db $f4                                        ; $5f43: $f4
    ret z                                         ; $5f44: $c8

    add b                                         ; $5f45: $80
    db $e3                                        ; $5f46: $e3
    ld b, l                                       ; $5f47: $45
    rst $00                                       ; $5f48: $c7
    db $fd                                        ; $5f49: $fd
    and a                                         ; $5f4a: $a7
    rst $38                                       ; $5f4b: $ff
    pop hl                                        ; $5f4c: $e1
    ld a, l                                       ; $5f4d: $7d

jr_06e_5f4e:
    pop hl                                        ; $5f4e: $e1
    jr jr_06e_5f4e                                ; $5f4f: $18 $fd

    pop bc                                        ; $5f51: $c1
    cp c                                          ; $5f52: $b9
    pop hl                                        ; $5f53: $e1
    ld a, [hl]                                    ; $5f54: $7e
    ldh [rDMA], a                                 ; $5f55: $e0 $46
    xor [hl]                                      ; $5f57: $ae
    cp $e0                                        ; $5f58: $fe $e0
    ld a, c                                       ; $5f5a: $79
    pop hl                                        ; $5f5b: $e1
    ret z                                         ; $5f5c: $c8

    ld b, b                                       ; $5f5d: $40
    ldh [$e7], a                                  ; $5f5e: $e0 $e7
    inc hl                                        ; $5f60: $23
    nop                                           ; $5f61: $00
    and $45                                       ; $5f62: $e6 $45
    push bc                                       ; $5f64: $c5
    pop af                                        ; $5f65: $f1
    ld hl, $626d                                  ; $5f66: $21 $6d $62
    ret nc                                        ; $5f69: $d0

    ld b, [hl]                                    ; $5f6a: $46
    ret nc                                        ; $5f6b: $d0

    sub b                                         ; $5f6c: $90
    ld h, $00                                     ; $5f6d: $26 $00
    ld a, l                                       ; $5f6f: $7d
    ldh [$fd], a                                  ; $5f70: $e0 $fd
    jp $c1f5                                      ; $5f72: $c3 $f5 $c1


    add hl, sp                                    ; $5f75: $39
    ld a, [hl+]                                   ; $5f76: $2a
    ld h, d                                       ; $5f77: $62
    and a                                         ; $5f78: $a7
    ldh [$0b], a                                  ; $5f79: $e0 $0b
    ld h, b                                       ; $5f7b: $60
    ld h, a                                       ; $5f7c: $67
    ld h, c                                       ; $5f7d: $61
    inc [hl]                                      ; $5f7e: $34
    inc bc                                        ; $5f7f: $03
    ret nz                                        ; $5f80: $c0

    and h                                         ; $5f81: $a4
    ld b, l                                       ; $5f82: $45
    rst $00                                       ; $5f83: $c7
    ld [hl], d                                    ; $5f84: $72
    ld h, $d1                                     ; $5f85: $26 $d1
    db $d3                                        ; $5f87: $d3
    ld a, e                                       ; $5f88: $7b
    ld [c], a                                     ; $5f89: $e2
    jr @+$3a                                      ; $5f8a: $18 $38

    ld b, b                                       ; $5f8c: $40
    db $fd                                        ; $5f8d: $fd
    pop bc                                        ; $5f8e: $c1
    scf                                           ; $5f8f: $37
    pop hl                                        ; $5f90: $e1
    ld a, [hl-]                                   ; $5f91: $3a
    ld b, l                                       ; $5f92: $45
    xor b                                         ; $5f93: $a8
    and b                                         ; $5f94: $a0
    ld a, h                                       ; $5f95: $7c
    ldh [$7b], a                                  ; $5f96: $e0 $7b
    push hl                                       ; $5f98: $e5
    add b                                         ; $5f99: $80
    or h                                          ; $5f9a: $b4
    ld b, d                                       ; $5f9b: $42
    add b                                         ; $5f9c: $80
    call $e8b8                                    ; $5f9d: $cd $b8 $e8

jr_06e_5fa0:
    jr c, @+$63                                   ; $5fa0: $38 $61

    inc a                                         ; $5fa2: $3c
    ldh [$31], a                                  ; $5fa3: $e0 $31
    jr nz, jr_06e_5fa0                            ; $5fa5: $20 $f9

    jp $893c                                      ; $5fa7: $c3 $3c $89


    ld b, h                                       ; $5faa: $44
    dec hl                                        ; $5fab: $2b
    pop hl                                        ; $5fac: $e1
    add sp, -$40                                  ; $5fad: $e8 $c0

jr_06e_5faf:
    xor a                                         ; $5faf: $af
    push af                                       ; $5fb0: $f5
    ret nz                                        ; $5fb1: $c0

    db $f4                                        ; $5fb2: $f4
    ret nz                                        ; $5fb3: $c0

    add sp, -$5f                                  ; $5fb4: $e8 $a1
    rlca                                          ; $5fb6: $07
    add b                                         ; $5fb7: $80
    ld b, d                                       ; $5fb8: $42
    xor e                                         ; $5fb9: $ab
    dec sp                                        ; $5fba: $3b
    ld h, h                                       ; $5fbb: $64
    cpl                                           ; $5fbc: $2f
    nop                                           ; $5fbd: $00
    ld l, l                                       ; $5fbe: $6d
    ld [bc], a                                    ; $5fbf: $02
    sub b                                         ; $5fc0: $90
    db $e4                                        ; $5fc1: $e4
    ld [hl], d                                    ; $5fc2: $72
    jr nz, jr_06e_603a                            ; $5fc3: $20 $75

    ret nz                                        ; $5fc5: $c0

    dec sp                                        ; $5fc6: $3b
    sbc h                                         ; $5fc7: $9c
    cp [hl]                                       ; $5fc8: $be
    pop bc                                        ; $5fc9: $c1
    db $eb                                        ; $5fca: $eb
    jp nz, Jump_000_36a6                          ; $5fcb: $c2 $a6 $36

    ld b, l                                       ; $5fce: $45
    ld a, d                                       ; $5fcf: $7a
    ldh [$de], a                                  ; $5fd0: $e0 $de
    jp nz, $e0d0                                  ; $5fd2: $c2 $d0 $e0

    nop                                           ; $5fd5: $00
    call Call_06e_44f9                            ; $5fd6: $cd $f9 $44
    ei                                            ; $5fd9: $fb
    push bc                                       ; $5fda: $c5
    sub b                                         ; $5fdb: $90
    pop hl                                        ; $5fdc: $e1
    ret                                           ; $5fdd: $c9


    ret nz                                        ; $5fde: $c0

    ld b, l                                       ; $5fdf: $45
    ld b, e                                       ; $5fe0: $43
    ld b, c                                       ; $5fe1: $41
    di                                            ; $5fe2: $f3
    ld b, c                                       ; $5fe3: $41
    ld b, e                                       ; $5fe4: $43
    ret nz                                        ; $5fe5: $c0

    pop bc                                        ; $5fe6: $c1
    xor h                                         ; $5fe7: $ac
    pop bc                                        ; $5fe8: $c1
    ld h, d                                       ; $5fe9: $62
    and a                                         ; $5fea: $a7
    ld h, [hl]                                    ; $5feb: $66
    ld [hl], $06                                  ; $5fec: $36 $06
    ld hl, sp-$3e                                 ; $5fee: $f8 $c2
    ret nc                                        ; $5ff0: $d0

    pop de                                        ; $5ff1: $d1
    dec de                                        ; $5ff2: $1b
    ldh [$c4], a                                  ; $5ff3: $e0 $c4
    xor [hl]                                      ; $5ff5: $ae
    ld sp, $fb23                                  ; $5ff6: $31 $23 $fb
    call nz, $c0bc                                ; $5ff9: $c4 $bc $c0
    ldh a, [$bd]                                  ; $5ffc: $f0 $bd
    ld [c], a                                     ; $5ffe: $e2
    sub c                                         ; $5fff: $91
    db $e3                                        ; $6000: $e3
    jp nz, $c1c0                                  ; $6001: $c2 $c0 $c1

    ldh [$67], a                                  ; $6004: $e0 $67
    and e                                         ; $6006: $a3
    ld l, b                                       ; $6007: $68
    ld h, [hl]                                    ; $6008: $66
    ld [bc], a                                    ; $6009: $02
    ld [hl], h                                    ; $600a: $74
    ld [c], a                                     ; $600b: $e2
    jp nc, $e98f                                  ; $600c: $d2 $8f $e9

    ld sp, hl                                     ; $600f: $f9
    ld c, b                                       ; $6010: $48
    cp h                                          ; $6011: $bc
    and c                                         ; $6012: $a1
    ld l, b                                       ; $6013: $68
    ld b, l                                       ; $6014: $45
    ld [hl], h                                    ; $6015: $74
    jr nz, jr_06e_5faf                            ; $6016: $20 $97

    ld [c], a                                     ; $6018: $e2
    db $f4                                        ; $6019: $f4
    cp $e1                                        ; $601a: $fe $e1
    ld [hl], c                                    ; $601c: $71
    ldh [$ae], a                                  ; $601d: $e0 $ae
    pop bc                                        ; $601f: $c1

jr_06e_6020:
    ldh [$35], a                                  ; $6020: $e0 $35
    dec [hl]                                      ; $6022: $35
    ld l, h                                       ; $6023: $6c
    or a                                          ; $6024: $b7
    inc bc                                        ; $6025: $03
    cp b                                          ; $6026: $b8
    ld b, d                                       ; $6027: $42
    add e                                         ; $6028: $83
    ldh [rKEY1], a                                ; $6029: $e0 $4d
    db $ec                                        ; $602b: $ec
    db $fc                                        ; $602c: $fc
    add [hl]                                      ; $602d: $86
    db $f4                                        ; $602e: $f4

jr_06e_602f:
    add [hl]                                      ; $602f: $86
    db $ec                                        ; $6030: $ec
    ld bc, $006c                                  ; $6031: $01 $6c $00
    cp $5a                                        ; $6034: $fe $5a
    push hl                                       ; $6036: $e5
    db $d3                                        ; $6037: $d3
    ret nc                                        ; $6038: $d0

    ld b, l                                       ; $6039: $45

jr_06e_603a:
    xor l                                         ; $603a: $ad
    cp c                                          ; $603b: $b9
    cp d                                          ; $603c: $ba
    and e                                         ; $603d: $a3
    ccf                                           ; $603e: $3f
    dec [hl]                                      ; $603f: $35
    ld l, h                                       ; $6040: $6c
    ld l, a                                       ; $6041: $6f
    ld l, [hl]                                    ; $6042: $6e
    ld [hl], $45                                  ; $6043: $36 $45
    add e                                         ; $6045: $83
    db $e3                                        ; $6046: $e3
    inc c                                         ; $6047: $0c
    ld b, b                                       ; $6048: $40
    ldh a, [$c2]                                  ; $6049: $f0 $c2
    ld l, c                                       ; $604b: $69
    cp [hl]                                       ; $604c: $be
    ret                                           ; $604d: $c9


    xor [hl]                                      ; $604e: $ae
    xor b                                         ; $604f: $a8
    and a                                         ; $6050: $a7
    ld h, [hl]                                    ; $6051: $66
    ld b, l                                       ; $6052: $45
    ld [hl], $6e                                  ; $6053: $36 $6e
    ld l, a                                       ; $6055: $6f
    ld bc, $c16c                                  ; $6056: $01 $6c $c1
    ld [c], a                                     ; $6059: $e2
    rst $00                                       ; $605a: $c7
    ret nz                                        ; $605b: $c0

    dec b                                         ; $605c: $05
    ld h, $fa                                     ; $605d: $26 $fa
    ld a, [c]                                     ; $605f: $f2
    ei                                            ; $6060: $fb
    push bc                                       ; $6061: $c5
    xor $c5                                       ; $6062: $ee $c5
    xor d                                         ; $6064: $aa
    and e                                         ; $6065: $a3
    nop                                           ; $6066: $00
    cp a                                          ; $6067: $bf
    pop hl                                        ; $6068: $e1
    pop bc                                        ; $6069: $c1
    ld [c], a                                     ; $606a: $e2
    rst $00                                       ; $606b: $c7
    ret nz                                        ; $606c: $c0

    and d                                         ; $606d: $a2
    jp hl                                         ; $606e: $e9


    ld a, l                                       ; $606f: $7d
    jr z, jr_06e_6020                             ; $6070: $28 $ae

    inc b                                         ; $6072: $04
    ei                                            ; $6073: $fb
    add $ed                                       ; $6074: $c6 $ed
    ld hl, $aa1c                                  ; $6076: $21 $1c $aa
    add b                                         ; $6079: $80
    xor d                                         ; $607a: $aa
    and h                                         ; $607b: $a4
    ret nc                                        ; $607c: $d0

    ld [hl], $6e                                  ; $607d: $36 $6e
    pop bc                                        ; $607f: $c1
    db $e4                                        ; $6080: $e4
    adc [hl]                                      ; $6081: $8e
    ld c, b                                       ; $6082: $48
    ld c, d                                       ; $6083: $4a
    add $60                                       ; $6084: $c6 $60
    ld b, c                                       ; $6086: $41
    and [hl]                                      ; $6087: $a6
    rst $28                                       ; $6088: $ef
    ld l, b                                       ; $6089: $68
    ld l, [hl]                                    ; $608a: $6e
    add c                                         ; $608b: $81
    rst $18                                       ; $608c: $df
    jr nz, jr_06e_602f                            ; $608d: $20 $a0

    inc b                                         ; $608f: $04
    db $d3                                        ; $6090: $d3
    ret nc                                        ; $6091: $d0

    ldh a, [rP1]                                  ; $6092: $f0 $00
    nop                                           ; $6094: $00
    pop bc                                        ; $6095: $c1
    ld [c], a                                     ; $6096: $e2
    sbc b                                         ; $6097: $98
    and a                                         ; $6098: $a7
    db $fd                                        ; $6099: $fd
    ld b, a                                       ; $609a: $47
    scf                                           ; $609b: $37
    ld b, l                                       ; $609c: $45
    or d                                          ; $609d: $b2
    xor c                                         ; $609e: $a9
    and [hl]                                      ; $609f: $a6
    ld l, b                                       ; $60a0: $68
    ld h, d                                       ; $60a1: $62
    ld hl, $c4b0                                  ; $60a2: $21 $b0 $c4
    nop                                           ; $60a5: $00
    ld d, a                                       ; $60a6: $57
    ld hl, $f302                                  ; $60a7: $21 $02 $f3
    xor c                                         ; $60aa: $a9
    jp hl                                         ; $60ab: $e9


    ld l, b                                       ; $60ac: $68
    jp hl                                         ; $60ad: $e9


    jr jr_06e_60da                                ; $60ae: $18 $2a

    db $10                                        ; $60b0: $10
    ld h, d                                       ; $60b1: $62
    ld b, $c7                                     ; $60b2: $06 $c7
    cp b                                          ; $60b4: $b8
    call nc, Call_000_270c                        ; $60b5: $d4 $0c $27
    ld c, b                                       ; $60b8: $48
    dec de                                        ; $60b9: $1b
    ld h, l                                       ; $60ba: $65
    call nc, $89d4                                ; $60bb: $d4 $d4 $89
    jp Jump_06e_6210                              ; $60be: $c3 $10 $62


    cp [hl]                                       ; $60c1: $be
    db $f4                                        ; $60c2: $f4
    and a                                         ; $60c3: $a7
    db $eb                                        ; $60c4: $eb
    nop                                           ; $60c5: $00
    ld e, c                                       ; $60c6: $59
    jp nz, $28dd                                  ; $60c7: $c2 $dd $28

    ld e, $41                                     ; $60ca: $1e $41
    adc $23                                       ; $60cc: $ce $23
    ld b, $cb                                     ; $60ce: $06 $cb
    ld a, [$2e8d]                                 ; $60d0: $fa $8d $2e
    ld b, l                                       ; $60d3: $45
    ei                                            ; $60d4: $fb
    and a                                         ; $60d5: $a7
    nop                                           ; $60d6: $00
    rla                                           ; $60d7: $17
    dec l                                         ; $60d8: $2d
    add a                                         ; $60d9: $87

jr_06e_60da:
    or $6f                                        ; $60da: $f6 $6f
    ld [hl+], a                                   ; $60dc: $22
    dec hl                                        ; $60dd: $2b
    dec b                                         ; $60de: $05
    ld e, c                                       ; $60df: $59
    call nz, $c6cf                                ; $60e0: $c4 $cf $c6
    ldh [$c8], a                                  ; $60e3: $e0 $c8
    cp e                                          ; $60e5: $bb
    rst $10                                       ; $60e6: $d7
    nop                                           ; $60e7: $00
    ld [hl-], a                                   ; $60e8: $32
    xor b                                         ; $60e9: $a8
    ld b, a                                       ; $60ea: $47
    call nz, $c8c4                                ; $60eb: $c4 $c4 $c8
    sub e                                         ; $60ee: $93
    ld c, c                                       ; $60ef: $49
    nop                                           ; $60f0: $00
    nop                                           ; $60f1: $00
    nop                                           ; $60f2: $00
    pop bc                                        ; $60f3: $c1
    nop                                           ; $60f4: $00
    rst $38                                       ; $60f5: $ff
    rst $38                                       ; $60f6: $ff
    rst $38                                       ; $60f7: $ff
    rst $38                                       ; $60f8: $ff
    rst $38                                       ; $60f9: $ff
    rst $38                                       ; $60fa: $ff
    rst $38                                       ; $60fb: $ff
    rst $38                                       ; $60fc: $ff
    rst $38                                       ; $60fd: $ff
    rst $38                                       ; $60fe: $ff
    nop                                           ; $60ff: $00
    nop                                           ; $6100: $00
    ld bc, $fe80                                  ; $6101: $01 $80 $fe
    ldh [rIE], a                                  ; $6104: $e0 $ff
    rst $38                                       ; $6106: $ff
    rst $38                                       ; $6107: $ff
    rst $38                                       ; $6108: $ff
    rst $38                                       ; $6109: $ff
    add sp, $00                                   ; $610a: $e8 $00
    nop                                           ; $610c: $00
    nop                                           ; $610d: $00
    ld [bc], a                                    ; $610e: $02
    nop                                           ; $610f: $00
    add hl, de                                    ; $6110: $19
    inc de                                        ; $6111: $13

Call_06e_6112:
    ld [bc], a                                    ; $6112: $02
    ld bc, $1612                                  ; $6113: $01 $12 $16
    ld [bc], a                                    ; $6116: $02
    ld [bc], a                                    ; $6117: $02
    inc de                                        ; $6118: $13
    ld d, $02                                     ; $6119: $16 $02
    inc bc                                        ; $611b: $03
    add hl, de                                    ; $611c: $19
    ld d, $02                                     ; $611d: $16 $02
    inc b                                         ; $611f: $04
    inc d                                         ; $6120: $14
    rla                                           ; $6121: $17
    ld [bc], a                                    ; $6122: $02
    dec b                                         ; $6123: $05
    dec d                                         ; $6124: $15
    rla                                           ; $6125: $17
    ld [bc], a                                    ; $6126: $02
    ld b, $16                                     ; $6127: $06 $16
    jr jr_06e_612d                                ; $6129: $18 $02

    rlca                                          ; $612b: $07
    rla                                           ; $612c: $17

jr_06e_612d:
    jr @+$04                                      ; $612d: $18 $02

    ld [$1918], sp                                ; $612f: $08 $18 $19
    ld [bc], a                                    ; $6132: $02
    add hl, bc                                    ; $6133: $09
    dec h                                         ; $6134: $25
    add hl, de                                    ; $6135: $19
    ld [bc], a                                    ; $6136: $02
    ld a, [bc]                                    ; $6137: $0a
    rla                                           ; $6138: $17
    ld a, [de]                                    ; $6139: $1a
    ld [bc], a                                    ; $613a: $02
    dec bc                                        ; $613b: $0b
    add hl, de                                    ; $613c: $19
    ld a, [de]                                    ; $613d: $1a
    ld [bc], a                                    ; $613e: $02
    inc c                                         ; $613f: $0c
    jr jr_06e_615d                                ; $6140: $18 $1b

    ld [bc], a                                    ; $6142: $02
    dec c                                         ; $6143: $0d
    dec h                                         ; $6144: $25
    dec de                                        ; $6145: $1b
    ld [bc], a                                    ; $6146: $02
    ld c, $17                                     ; $6147: $0e $17
    inc e                                         ; $6149: $1c
    ld [bc], a                                    ; $614a: $02
    rrca                                          ; $614b: $0f
    add hl, de                                    ; $614c: $19
    inc e                                         ; $614d: $1c
    ld [bc], a                                    ; $614e: $02
    db $10                                        ; $614f: $10
    ld d, $1d                                     ; $6150: $16 $1d
    ld [bc], a                                    ; $6152: $02
    ld de, $1d18                                  ; $6153: $11 $18 $1d
    ld [bc], a                                    ; $6156: $02
    ld [de], a                                    ; $6157: $12
    dec d                                         ; $6158: $15
    ld e, $02                                     ; $6159: $1e $02
    inc de                                        ; $615b: $13
    rla                                           ; $615c: $17

jr_06e_615d:
    ld e, $02                                     ; $615d: $1e $02
    inc d                                         ; $615f: $14
    ld a, [de]                                    ; $6160: $1a

Call_06e_6161:
    ld e, $02                                     ; $6161: $1e $02
    dec d                                         ; $6163: $15
    ld d, $1f                                     ; $6164: $16 $1f
    ld [bc], a                                    ; $6166: $02
    ld d, $15                                     ; $6167: $16 $15
    jr nz, jr_06e_616d                            ; $6169: $20 $02

    rla                                           ; $616b: $17
    rla                                           ; $616c: $17

jr_06e_616d:
    jr nz, jr_06e_6171                            ; $616d: $20 $02

    jr jr_06e_6187                                ; $616f: $18 $16

jr_06e_6171:
    ld hl, $1902                                  ; $6171: $21 $02 $19
    dec d                                         ; $6174: $15
    ld [hl+], a                                   ; $6175: $22
    ld [bc], a                                    ; $6176: $02
    ld a, [de]                                    ; $6177: $1a
    rla                                           ; $6178: $17
    ld [hl+], a                                   ; $6179: $22
    ld [bc], a                                    ; $617a: $02
    dec de                                        ; $617b: $1b
    ld d, $23                                     ; $617c: $16 $23
    ld [bc], a                                    ; $617e: $02
    inc e                                         ; $617f: $1c
    rla                                           ; $6180: $17
    inc h                                         ; $6181: $24
    ld [bc], a                                    ; $6182: $02
    dec e                                         ; $6183: $1d
    dec de                                        ; $6184: $1b
    inc h                                         ; $6185: $24
    ld [bc], a                                    ; $6186: $02

jr_06e_6187:
    ld e, $16                                     ; $6187: $1e $16
    dec h                                         ; $6189: $25
    ld [bc], a                                    ; $618a: $02
    rra                                           ; $618b: $1f
    jr jr_06e_61b4                                ; $618c: $18 $26

    ld [bc], a                                    ; $618e: $02
    jr nz, @+$19                                  ; $618f: $20 $17

    daa                                           ; $6191: $27
    ld [bc], a                                    ; $6192: $02
    ld hl, $271d                                  ; $6193: $21 $1d $27
    ld [bc], a                                    ; $6196: $02
    ld [hl+], a                                   ; $6197: $22
    jr jr_06e_61c2                                ; $6198: $18 $28

    ld [bc], a                                    ; $619a: $02
    inc hl                                        ; $619b: $23
    rla                                           ; $619c: $17
    add hl, hl                                    ; $619d: $29
    ld [bc], a                                    ; $619e: $02
    inc h                                         ; $619f: $24
    ld e, $29                                     ; $61a0: $1e $29
    ld [bc], a                                    ; $61a2: $02
    dec h                                         ; $61a3: $25
    jr @+$2c                                      ; $61a4: $18 $2a

    ld [bc], a                                    ; $61a6: $02
    ld h, $20                                     ; $61a7: $26 $20
    ld a, [hl+]                                   ; $61a9: $2a
    ld [bc], a                                    ; $61aa: $02
    daa                                           ; $61ab: $27
    inc h                                         ; $61ac: $24
    ld a, [hl+]                                   ; $61ad: $2a
    ld [bc], a                                    ; $61ae: $02
    jr z, jr_06e_61ca                             ; $61af: $28 $19

    dec hl                                        ; $61b1: $2b
    ld [bc], a                                    ; $61b2: $02
    add hl, hl                                    ; $61b3: $29

jr_06e_61b4:
    ld h, $2b                                     ; $61b4: $26 $2b
    ld [bc], a                                    ; $61b6: $02
    ld a, [hl+]                                   ; $61b7: $2a
    daa                                           ; $61b8: $27
    dec hl                                        ; $61b9: $2b
    ld [bc], a                                    ; $61ba: $02
    dec hl                                        ; $61bb: $2b
    ld hl, $022d                                  ; $61bc: $21 $2d $02
    inc l                                         ; $61bf: $2c
    add hl, hl                                    ; $61c0: $29
    dec l                                         ; $61c1: $2d

jr_06e_61c2:
    ld [bc], a                                    ; $61c2: $02
    dec l                                         ; $61c3: $2d
    dec l                                         ; $61c4: $2d
    dec l                                         ; $61c5: $2d
    ld [bc], a                                    ; $61c6: $02
    ld l, $2f                                     ; $61c7: $2e $2f
    dec l                                         ; $61c9: $2d

jr_06e_61ca:
    ld [bc], a                                    ; $61ca: $02
    cpl                                           ; $61cb: $2f
    inc hl                                        ; $61cc: $23
    ld l, $02                                     ; $61cd: $2e $02
    jr nc, @+$30                                  ; $61cf: $30 $2e

    ld l, $02                                     ; $61d1: $2e $02
    ld sp, $2f31                                  ; $61d3: $31 $31 $2f
    ld [bc], a                                    ; $61d6: $02
    ld [hl-], a                                   ; $61d7: $32
    inc [hl]                                      ; $61d8: $34
    cpl                                           ; $61d9: $2f
    ld [bc], a                                    ; $61da: $02
    inc sp                                        ; $61db: $33
    ld e, $30                                     ; $61dc: $1e $30
    ld [bc], a                                    ; $61de: $02
    inc [hl]                                      ; $61df: $34
    ld hl, $0231                                  ; $61e0: $21 $31 $02
    dec [hl]                                      ; $61e3: $35
    scf                                           ; $61e4: $37
    ld sp, $3602                                  ; $61e5: $31 $02 $36
    inc h                                         ; $61e8: $24
    ld [hl-], a                                   ; $61e9: $32
    ld [bc], a                                    ; $61ea: $02
    scf                                           ; $61eb: $37
    dec l                                         ; $61ec: $2d
    ld [hl-], a                                   ; $61ed: $32
    ld [bc], a                                    ; $61ee: $02
    jr c, jr_06e_6220                             ; $61ef: $38 $2f

    inc [hl]                                      ; $61f1: $34
    rst $38                                       ; $61f2: $ff
    rst $38                                       ; $61f3: $ff
    rst $38                                       ; $61f4: $ff
    db $fd                                        ; $61f5: $fd
    ld h, c                                       ; $61f6: $61
    sbc d                                         ; $61f7: $9a
    ld h, a                                       ; $61f8: $67
    rst $00                                       ; $61f9: $c7
    ld l, [hl]                                    ; $61fa: $6e
    ld [c], a                                     ; $61fb: $e2
    ld l, [hl]                                    ; $61fc: $6e
    sbc a                                         ; $61fd: $9f
    ld c, $0e                                     ; $61fe: $0e $0e
    ld l, $0d                                     ; $6200: $2e $0d
    dec l                                         ; $6202: $2d
    rst $38                                       ; $6203: $ff
    db $e3                                        ; $6204: $e3
    push af                                       ; $6205: $f5
    rst $20                                       ; $6206: $e7
    ld c, $63                                     ; $6207: $0e $63
    ld c, $0e                                     ; $6209: $0e $0e
    db $ec                                        ; $620b: $ec
    db $e4                                        ; $620c: $e4
    push hl                                       ; $620d: $e5
    and $ef                                       ; $620e: $e6 $ef

Jump_06e_6210:
    pop hl                                        ; $6210: $e1
    ld c, [hl]                                    ; $6211: $4e
    ld l, [hl]                                    ; $6212: $6e
    sub $ee                                       ; $6213: $d6 $ee
    rlca                                          ; $6215: $07
    dec l                                         ; $6216: $2d
    dec c                                         ; $6217: $0d
    dec c                                         ; $6218: $0d
    cp [hl]                                       ; $6219: $be
    ldh [$c3], a                                  ; $621a: $e0 $c3
    ld [c], a                                     ; $621c: $e2
    push af                                       ; $621d: $f5
    db $e3                                        ; $621e: $e3
    push bc                                       ; $621f: $c5

jr_06e_6220:
    ld [c], a                                     ; $6220: $e2
    ret nz                                        ; $6221: $c0

    db $f4                                        ; $6222: $f4
    ld [$e6ac], sp                                ; $6223: $08 $ac $e6
    set 4, c                                      ; $6226: $cb $e1
    or h                                          ; $6228: $b4
    db $e4                                        ; $6229: $e4
    dec c                                         ; $622a: $0d
    add b                                         ; $622b: $80
    db $e4                                        ; $622c: $e4
    ret nz                                        ; $622d: $c0

    pop hl                                        ; $622e: $e1
    ld [hl], l                                    ; $622f: $75
    pop hl                                        ; $6230: $e1
    ret nz                                        ; $6231: $c0

    add sp, $03                                   ; $6232: $e8 $03
    ld c, $4e                                     ; $6234: $0e $4e
    rst $38                                       ; $6236: $ff
    db $e3                                        ; $6237: $e3
    and c                                         ; $6238: $a1
    ldh [$6f], a                                  ; $6239: $e0 $6f
    ldh [$6c], a                                  ; $623b: $e0 $6c
    jp hl                                         ; $623d: $e9


    set 4, l                                      ; $623e: $cb $e5
    ld c, c                                       ; $6240: $49
    db $e4                                        ; $6241: $e4
    cp b                                          ; $6242: $b8

Call_06e_6243:
    ld a, [$d6e7]                                 ; $6243: $fa $e7 $d6
    push hl                                       ; $6246: $e5
    ld a, e                                       ; $6247: $7b
    ld [c], a                                     ; $6248: $e2
    ld l, [hl]                                    ; $6249: $6e
    dec c                                         ; $624a: $0d
    dec bc                                        ; $624b: $0b
    rst $38                                       ; $624c: $ff
    ldh [$0a], a                                  ; $624d: $e0 $0a
    add hl, bc                                    ; $624f: $09
    dec bc                                        ; $6250: $0b
    cp a                                          ; $6251: $bf
    ldh [$c0], a                                  ; $6252: $e0 $c0
    and $0d                                       ; $6254: $e6 $0d
    ld d, b                                       ; $6256: $50
    pop hl                                        ; $6257: $e1
    ei                                            ; $6258: $fb
    ldh [rOBP1], a                                ; $6259: $e0 $49
    ldh [rNR13], a                                ; $625b: $e0 $13
    rst $20                                       ; $625d: $e7
    ld hl, sp+$68                                 ; $625e: $f8 $68
    rst $20                                       ; $6260: $e7
    sub [hl]                                      ; $6261: $96
    db $e4                                        ; $6262: $e4
    add h                                         ; $6263: $84
    ld [c], a                                     ; $6264: $e2
    ld l, [hl]                                    ; $6265: $6e
    dec bc                                        ; $6266: $0b
    dec c                                         ; $6267: $0d
    dec bc                                        ; $6268: $0b
    inc c                                         ; $6269: $0c
    inc bc                                        ; $626a: $03
    inc c                                         ; $626b: $0c
    inc l                                         ; $626c: $2c
    cp [hl]                                       ; $626d: $be
    ldh [$7d], a                                  ; $626e: $e0 $7d
    push hl                                       ; $6270: $e5
    ld d, c                                       ; $6271: $51
    db $e3                                        ; $6272: $e3
    ret nz                                        ; $6273: $c0

    db $e4                                        ; $6274: $e4
    or [hl]                                       ; $6275: $b6
    ldh [$c0], a                                  ; $6276: $e0 $c0
    xor $d6                                       ; $6278: $ee $d6
    ld l, a                                       ; $627a: $6f
    and $0e                                       ; $627b: $e6 $0e
    ld l, [hl]                                    ; $627d: $6e
    add l                                         ; $627e: $85
    ldh [$0c], a                                  ; $627f: $e0 $0c
    rst $38                                       ; $6281: $ff
    ldh [$6c], a                                  ; $6282: $e0 $6c
    inc l                                         ; $6284: $2c
    inc bc                                        ; $6285: $03
    inc c                                         ; $6286: $0c
    inc l                                         ; $6287: $2c
    cp l                                          ; $6288: $bd
    ldh [$7d], a                                  ; $6289: $e0 $7d
    db $e3                                        ; $628b: $e3
    add b                                         ; $628c: $80
    ld [$c0c8], a                                 ; $628d: $ea $c8 $c0
    sbc l                                         ; $6290: $9d
    res 7, d                                      ; $6291: $cb $ba
    pop bc                                        ; $6293: $c1
    ld hl, sp+$32                                 ; $6294: $f8 $32
    db $e4                                        ; $6296: $e4
    pop bc                                        ; $6297: $c1
    pop hl                                        ; $6298: $e1
    jp Jump_06e_6ce1                              ; $6299: $c3 $e1 $6c


    inc c                                         ; $629c: $0c
    ld c, h                                       ; $629d: $4c
    ld l, h                                       ; $629e: $6c
    ld l, h                                       ; $629f: $6c
    inc bc                                        ; $62a0: $03
    ld l, h                                       ; $62a1: $6c
    inc l                                         ; $62a2: $2c
    cp [hl]                                       ; $62a3: $be
    ldh [$fb], a                                  ; $62a4: $e0 $fb
    pop bc                                        ; $62a6: $c1
    sub c                                         ; $62a7: $91
    jp $e73f                                      ; $62a8: $c3 $3f $e7


    ld c, $e7                                     ; $62ab: $0e $e7
    db $fc                                        ; $62ad: $fc
    add $78                                       ; $62ae: $c6 $78
    or $e3                                        ; $62b0: $f6 $e3
    add d                                         ; $62b2: $82
    ldh [$c2], a                                  ; $62b3: $e0 $c2
    ld [c], a                                     ; $62b5: $e2

Call_06e_62b6:
    ld l, h                                       ; $62b6: $6c
    ld c, h                                       ; $62b7: $4c
    ld l, h                                       ; $62b8: $6c
    ld c, h                                       ; $62b9: $4c
    cp a                                          ; $62ba: $bf
    pop hl                                        ; $62bb: $e1
    add b                                         ; $62bc: $80
    cp [hl]                                       ; $62bd: $be
    ldh [$bf], a                                  ; $62be: $e0 $bf
    push hl                                       ; $62c0: $e5
    ld h, $c0                                     ; $62c1: $26 $c0
    add a                                         ; $62c3: $87
    push hl                                       ; $62c4: $e5
    ret nz                                        ; $62c5: $c0

    or $c1                                        ; $62c6: $f6 $c1
    ld [c], a                                     ; $62c8: $e2
    rst $00                                       ; $62c9: $c7
    pop hl                                        ; $62ca: $e1
    dec hl                                        ; $62cb: $2b
    ld h, b                                       ; $62cc: $60
    ret nz                                        ; $62cd: $c0

    ret nz                                        ; $62ce: $c0

    pop bc                                        ; $62cf: $c1
    pop hl                                        ; $62d0: $e1
    cp a                                          ; $62d1: $bf
    and $79                                       ; $62d2: $e6 $79
    jp nz, $c2bf                                  ; $62d4: $c2 $bf $c2

    ld c, [hl]                                    ; $62d7: $4e
    ld l, [hl]                                    ; $62d8: $6e
    nop                                           ; $62d9: $00
    pop hl                                        ; $62da: $e1
    add sp, $06                                   ; $62db: $e8 $06
    call nz, $e980                                ; $62dd: $c4 $80 $e9
    adc b                                         ; $62e0: $88
    pop bc                                        ; $62e1: $c1
    ld a, [bc]                                    ; $62e2: $0a
    pop bc                                        ; $62e3: $c1
    pop hl                                        ; $62e4: $e1
    ld c, h                                       ; $62e5: $4c
    ld c, h                                       ; $62e6: $4c
    dec bc                                        ; $62e7: $0b
    rrca                                          ; $62e8: $0f
    ld l, e                                       ; $62e9: $6b
    ld c, e                                       ; $62ea: $4b
    dec hl                                        ; $62eb: $2b
    dec hl                                        ; $62ec: $2b
    ld a, [hl]                                    ; $62ed: $7e
    ldh [$7a], a                                  ; $62ee: $e0 $7a
    ldh [$7e], a                                  ; $62f0: $e0 $7e
    db $e4                                        ; $62f2: $e4
    ret nz                                        ; $62f3: $c0

    db $e3                                        ; $62f4: $e3
    ret nz                                        ; $62f5: $c0

    add $c2                                       ; $62f6: $c6 $c2
    cp a                                          ; $62f8: $bf
    pop hl                                        ; $62f9: $e1
    sub e                                         ; $62fa: $93
    xor l                                         ; $62fb: $ad
    ld c, c                                       ; $62fc: $49
    call nz, $c08a                                ; $62fd: $c4 $8a $c0
    ld c, b                                       ; $6300: $48
    ld [c], a                                     ; $6301: $e2
    dec bc                                        ; $6302: $0b
    dec bc                                        ; $6303: $0b
    rst $08                                       ; $6304: $cf
    dec hl                                        ; $6305: $2b
    ld a, [bc]                                    ; $6306: $0a
    ld l, d                                       ; $6307: $6a
    ld l, d                                       ; $6308: $6a
    ld a, [$b3c0]                                 ; $6309: $fa $c0 $b3
    pop hl                                        ; $630c: $e1
    inc l                                         ; $630d: $2c
    inc c                                         ; $630e: $0c
    ld b, c                                       ; $630f: $41
    dec bc                                        ; $6310: $0b
    ret nz                                        ; $6311: $c0

    add sp, -$80                                  ; $6312: $e8 $80
    ret                                           ; $6314: $c9


    ld e, e                                       ; $6315: $5b
    xor e                                         ; $6316: $ab
    pop bc                                        ; $6317: $c1
    db $e3                                        ; $6318: $e3
    dec bc                                        ; $6319: $0b
    pop hl                                        ; $631a: $e1
    ld c, h                                       ; $631b: $4c
    inc b                                         ; $631c: $04
    ret nz                                        ; $631d: $c0

    ld b, $ff                                     ; $631e: $06 $ff
    ldh [$6c], a                                  ; $6320: $e0 $6c
    ld c, h                                       ; $6322: $4c
    cp [hl]                                       ; $6323: $be
    pop hl                                        ; $6324: $e1
    or l                                          ; $6325: $b5
    ret nz                                        ; $6326: $c0

    cp h                                          ; $6327: $bc
    add $52                                       ; $6328: $c6 $52
    adc $83                                       ; $632a: $ce $83
    call nz, $b774                                ; $632c: $c4 $74 $b7
    jp nz, $e7c1                                  ; $632f: $c2 $c1 $e7

    inc l                                         ; $6332: $2c
    add c                                         ; $6333: $81
    ldh [$0a], a                                  ; $6334: $e0 $0a
    ld a, [bc]                                    ; $6336: $0a
    ld c, e                                       ; $6337: $4b
    or l                                          ; $6338: $b5
    ld [c], a                                     ; $6339: $e2
    add $f1                                       ; $633a: $c6 $f1
    pop hl                                        ; $633c: $e1
    inc c                                         ; $633d: $0c
    dec c                                         ; $633e: $0d
    ld a, [hl-]                                   ; $633f: $3a
    add $c0                                       ; $6340: $c6 $c0
    xor $77                                       ; $6342: $ee $77
    rst $00                                       ; $6344: $c7
    dec bc                                        ; $6345: $0b
    inc l                                         ; $6346: $2c
    ld e, b                                       ; $6347: $58
    add d                                         ; $6348: $82
    ld [c], a                                     ; $6349: $e2
    adc b                                         ; $634a: $88
    and c                                         ; $634b: $a1
    add c                                         ; $634c: $81
    pop hl                                        ; $634d: $e1
    ld c, d                                       ; $634e: $4a
    dec bc                                        ; $634f: $0b
    cp e                                          ; $6350: $bb
    ret nz                                        ; $6351: $c0

    dec hl                                        ; $6352: $2b
    db $fc                                        ; $6353: $fc
    pop bc                                        ; $6354: $c1
    add a                                         ; $6355: $87
    ld l, h                                       ; $6356: $6c
    inc c                                         ; $6357: $0c
    dec c                                         ; $6358: $0d
    ld a, $e3                                     ; $6359: $3e $e3
    pop bc                                        ; $635b: $c1
    adc d                                         ; $635c: $8a
    ret nz                                        ; $635d: $c0

    db $ec                                        ; $635e: $ec
    ret z                                         ; $635f: $c8

    and b                                         ; $6360: $a0
    inc l                                         ; $6361: $2c

Jump_06e_6362:
    ld a, [hl-]                                   ; $6362: $3a
    ld c, a                                       ; $6363: $4f
    pop bc                                        ; $6364: $c1
    inc c                                         ; $6365: $0c
    dec b                                         ; $6366: $05
    ldh [$0b], a                                  ; $6367: $e0 $0b
    dec bc                                        ; $6369: $0b
    ld c, d                                       ; $636a: $4a
    ld b, b                                       ; $636b: $40
    pop hl                                        ; $636c: $e1
    ld a, e                                       ; $636d: $7b
    pop bc                                        ; $636e: $c1
    and e                                         ; $636f: $a3
    dec bc                                        ; $6370: $0b
    ld c, e                                       ; $6371: $4b
    cp $c8                                        ; $6372: $fe $c8
    adc h                                         ; $6374: $8c
    adc d                                         ; $6375: $8a
    inc bc                                        ; $6376: $03
    db $ed                                        ; $6377: $ed
    dec hl                                        ; $6378: $2b
    add c                                         ; $6379: $81
    db $e3                                        ; $637a: $e3
    inc c                                         ; $637b: $0c
    rst $28                                       ; $637c: $ef
    dec hl                                        ; $637d: $2b
    ld a, [bc]                                    ; $637e: $0a
    ld a, [hl+]                                   ; $637f: $2a
    ld c, e                                       ; $6380: $4b
    ret nz                                        ; $6381: $c0

    pop hl                                        ; $6382: $e1
    ld a, [hl+]                                   ; $6383: $2a
    ld c, e                                       ; $6384: $4b
    ld l, e                                       ; $6385: $6b
    add b                                         ; $6386: $80
    pop bc                                        ; $6387: $c1
    pop hl                                        ; $6388: $e1
    scf                                           ; $6389: $37
    jp nz, $c1fe                                  ; $638a: $c2 $fe $c1

    ret nz                                        ; $638d: $c0

    db $e3                                        ; $638e: $e3
    adc h                                         ; $638f: $8c
    add a                                         ; $6390: $87
    add hl, bc                                    ; $6391: $09
    add [hl]                                      ; $6392: $86
    ld c, b                                       ; $6393: $48
    add e                                         ; $6394: $83
    dec hl                                        ; $6395: $2b
    or a                                          ; $6396: $b7
    ld a, [bc]                                    ; $6397: $0a
    inc l                                         ; $6398: $2c
    ld l, h                                       ; $6399: $6c
    add $a2                                       ; $639a: $c6 $a2
    inc l                                         ; $639c: $2c
    ld a, [bc]                                    ; $639d: $0a
    call z, $6be0                                 ; $639e: $cc $e0 $6b
    ld e, $bb                                     ; $63a1: $1e $bb
    pop hl                                        ; $63a3: $e1
    ld l, e                                       ; $63a4: $6b
    ld c, e                                       ; $63a5: $4b
    ld c, e                                       ; $63a6: $4b
    ld l, e                                       ; $63a7: $6b
    ret nz                                        ; $63a8: $c0

    ld [c], a                                     ; $63a9: $e2
    ld a, l                                       ; $63aa: $7d
    pop bc                                        ; $63ab: $c1
    cp $cb                                        ; $63ac: $fe $cb
    ld [$63da], sp                                ; $63ae: $08 $da $63
    cp $63                                        ; $63b1: $fe $63
    ret nz                                        ; $63b3: $c0

    db $e4                                        ; $63b4: $e4
    inc l                                         ; $63b5: $2c
    dec c                                         ; $63b6: $0d
    and b                                         ; $63b7: $a0
    ld c, b                                       ; $63b8: $48
    and b                                         ; $63b9: $a0
    add [hl]                                      ; $63ba: $86
    ret nz                                        ; $63bb: $c0

    jp nz, $11c2                                  ; $63bc: $c2 $c2 $11

    ld l, d                                       ; $63bf: $6a
    ld a, [hl]                                    ; $63c0: $7e
    add c                                         ; $63c1: $81
    db $fc                                        ; $63c2: $fc
    db $e4                                        ; $63c3: $e4
    rst $20                                       ; $63c4: $e7
    ldh [$0b], a                                  ; $63c5: $e0 $0b
    cp l                                          ; $63c7: $bd
    ret nz                                        ; $63c8: $c0

    and h                                         ; $63c9: $a4
    ld l, b                                       ; $63ca: $68
    cp [hl]                                       ; $63cb: $be
    add e                                         ; $63cc: $83
    nop                                           ; $63cd: $00
    cp $63                                        ; $63ce: $fe $63

jr_06e_63d0:
    add e                                         ; $63d0: $83
    jp $e381                                      ; $63d1: $c3 $81 $e3


    adc h                                         ; $63d4: $8c
    add c                                         ; $63d5: $81
    add e                                         ; $63d6: $83
    jp nz, $c1c0                                  ; $63d7: $c2 $c0 $c1

    inc a                                         ; $63da: $3c
    add c                                         ; $63db: $81
    inc a                                         ; $63dc: $3c
    pop hl                                        ; $63dd: $e1
    call nz, $e0c0                                ; $63de: $c4 $c0 $e0
    ld a, l                                       ; $63e1: $7d
    ret nz                                        ; $63e2: $c0

    dec c                                         ; $63e3: $0d
    ret nz                                        ; $63e4: $c0

    jp hl                                         ; $63e5: $e9


    adc b                                         ; $63e6: $88
    adc l                                         ; $63e7: $8d
    ld [bc], a                                    ; $63e8: $02

jr_06e_63e9:
    push hl                                       ; $63e9: $e5
    inc l                                         ; $63ea: $2c
    inc l                                         ; $63eb: $2c
    ld bc, $c34b                                  ; $63ec: $01 $4b $c3
    ld [c], a                                     ; $63ef: $e2
    ret nz                                        ; $63f0: $c0

    and $80                                       ; $63f1: $e6 $80
    db $e4                                        ; $63f3: $e4
    ld a, a                                       ; $63f4: $7f
    pop hl                                        ; $63f5: $e1
    ld e, a                                       ; $63f6: $5f
    ld h, d                                       ; $63f7: $62
    and b                                         ; $63f8: $a0
    ld h, h                                       ; $63f9: $64
    rlca                                          ; $63fa: $07
    db $e4                                        ; $63fb: $e4
    ld [hl-], a                                   ; $63fc: $32
    dec de                                        ; $63fd: $1b
    ld h, [hl]                                    ; $63fe: $66
    dec bc                                        ; $63ff: $0b
    add e                                         ; $6400: $83
    jp $818e                                      ; $6401: $c3 $8e $81


    ld c, d                                       ; $6404: $4a
    ld c, d                                       ; $6405: $4a
    add e                                         ; $6406: $83
    jp nz, $a0bf                                  ; $6407: $c2 $bf $a0

    nop                                           ; $640a: $00
    ld a, $e5                                     ; $640b: $3e $e5
    jr z, jr_06e_63d0                             ; $640d: $28 $c1

    ld a, e                                       ; $640f: $7b
    and d                                         ; $6410: $a2
    ldh [rDMA], a                                 ; $6411: $e0 $46
    rlca                                          ; $6413: $07
    push hl                                       ; $6414: $e5
    ret nz                                        ; $6415: $c0

    rst $20                                       ; $6416: $e7
    inc b                                         ; $6417: $04
    pop bc                                        ; $6418: $c1
    ld d, b                                       ; $6419: $50
    and c                                         ; $641a: $a1
    ld [hl-], a                                   ; $641b: $32
    ld b, [hl]                                    ; $641c: $46
    add b                                         ; $641d: $80
    ld a, [hl+]                                   ; $641e: $2a
    ld a, [hl]                                    ; $641f: $7e
    db $e4                                        ; $6420: $e4
    add l                                         ; $6421: $85
    ret nz                                        ; $6422: $c0

    ld c, e                                       ; $6423: $4b
    ld c, e                                       ; $6424: $4b
    ei                                            ; $6425: $fb
    pop hl                                        ; $6426: $e1
    jr z, jr_06e_63e9                             ; $6427: $28 $c0

    sub b                                         ; $6429: $90
    ld h, $e1                                     ; $642a: $26 $e1
    inc sp                                        ; $642c: $33
    ld h, l                                       ; $642d: $65
    rlca                                          ; $642e: $07
    jp hl                                         ; $642f: $e9


    adc $44                                       ; $6430: $ce $44
    ld c, $ce                                     ; $6432: $0e $ce
    ld h, d                                       ; $6434: $62
    ld b, [hl]                                    ; $6435: $46
    add e                                         ; $6436: $83
    dec bc                                        ; $6437: $0b
    ld [$e4c0], sp                                ; $6438: $08 $c0 $e4
    nop                                           ; $643b: $00
    pop hl                                        ; $643c: $e1
    ret nz                                        ; $643d: $c0

    pop hl                                        ; $643e: $e1
    ld c, e                                       ; $643f: $4b
    push hl                                       ; $6440: $e5
    db $e3                                        ; $6441: $e3
    cp d                                          ; $6442: $ba
    add a                                         ; $6443: $87
    ld a, $ac                                     ; $6444: $3e $ac
    call nz, $c4a3                                ; $6446: $c4 $a3 $c4
    ld a, [bc]                                    ; $6449: $0a
    add e                                         ; $644a: $83
    cp [hl]                                       ; $644b: $be
    jp nz, $fe6b                                  ; $644c: $c2 $6b $fe

    call nz, $c47e                                ; $644f: $c4 $7e $c4
    or e                                          ; $6452: $b3
    ld h, d                                       ; $6453: $62
    inc c                                         ; $6454: $0c
    ld c, h                                       ; $6455: $4c
    ld bc, $330c                                  ; $6456: $01 $0c $33
    ld h, b                                       ; $6459: $60
    ld e, l                                       ; $645a: $5d
    ld b, b                                       ; $645b: $40
    cp $8f                                        ; $645c: $fe $8f
    sbc a                                         ; $645e: $9f
    ld b, c                                       ; $645f: $41
    inc e                                         ; $6460: $1c
    pop hl                                        ; $6461: $e1
    jp nz, Jump_06e_4ca3                          ; $6462: $c2 $a3 $4c

    ld h, b                                       ; $6465: $60
    adc l                                         ; $6466: $8d
    inc l                                         ; $6467: $2c
    cp [hl]                                       ; $6468: $be
    jp Jump_000_0a2a                              ; $6469: $c3 $2a $0a


    cp $41                                        ; $646c: $fe $41
    or d                                          ; $646e: $b2
    ld h, e                                       ; $646f: $63
    and $a1                                       ; $6470: $e6 $a1
    dec bc                                        ; $6472: $0b
    jp Jump_000_2b2b                              ; $6473: $c3 $2b $2b


    cp c                                          ; $6476: $b9
    sub d                                         ; $6477: $92
    ret nz                                        ; $6478: $c0

    db $e3                                        ; $6479: $e3
    add [hl]                                      ; $647a: $86
    add h                                         ; $647b: $84
    cp l                                          ; $647c: $bd
    and d                                         ; $647d: $a2
    ld a, [bc]                                    ; $647e: $0a
    ld c, d                                       ; $647f: $4a
    ld b, $7d                                     ; $6480: $06 $7d
    ldh [$2a], a                                  ; $6482: $e0 $2a
    ld l, d                                       ; $6484: $6a
    ld b, [hl]                                    ; $6485: $46
    add c                                         ; $6486: $81
    jp hl                                         ; $6487: $e9


    add sp, $6e                                   ; $6488: $e8 $6e

Jump_06e_648a:
    ld b, c                                       ; $648a: $41
    cp c                                          ; $648b: $b9
    adc h                                         ; $648c: $8c
    rlca                                          ; $648d: $07
    ld h, h                                       ; $648e: $64
    cp b                                          ; $648f: $b8
    add c                                         ; $6490: $81
    pop bc                                        ; $6491: $c1
    dec c                                         ; $6492: $0d
    ld h, d                                       ; $6493: $62
    cp l                                          ; $6494: $bd
    jp nz, Jump_06e_6b6c                          ; $6495: $c2 $6c $6b

    ld c, d                                       ; $6498: $4a
    add [hl]                                      ; $6499: $86
    pop bc                                        ; $649a: $c1
    dec hl                                        ; $649b: $2b
    ld de, $bf4a                                  ; $649c: $11 $4a $bf
    ldh [$c3], a                                  ; $649f: $e0 $c3
    add d                                         ; $64a1: $82
    add sp, -$3c                                  ; $64a2: $e8 $c4
    dec hl                                        ; $64a4: $2b
    ld l, h                                       ; $64a5: $6c
    ld h, c                                       ; $64a6: $61
    ld a, c                                       ; $64a7: $79
    adc c                                         ; $64a8: $89
    jp nz, $e0e5                                  ; $64a9: $c2 $e5 $e0

    ld b, c                                       ; $64ac: $41
    jr nz, jr_06e_6500                            ; $64ad: $20 $51

    ld b, c                                       ; $64af: $41
    add c                                         ; $64b0: $81
    db $e3                                        ; $64b1: $e3
    ld b, [hl]                                    ; $64b2: $46
    ld h, c                                       ; $64b3: $61
    ld b, [hl]                                    ; $64b4: $46
    jp nz, Jump_06e_4a2b                          ; $64b5: $c2 $2b $4a

    ld a, [bc]                                    ; $64b8: $0a
    pop af                                        ; $64b9: $f1
    ld c, d                                       ; $64ba: $4a
    xor $c2                                       ; $64bb: $ee $c2
    add sp, -$3d                                  ; $64bd: $e8 $c3
    rst $20                                       ; $64bf: $e7
    ldh [$0d], a                                  ; $64c0: $e0 $0d
    dec bc                                        ; $64c2: $0b
    dec hl                                        ; $64c3: $2b
    ld c, e                                       ; $64c4: $4b
    jr nc, jr_06e_6500                            ; $64c5: $30 $39

    sub b                                         ; $64c7: $90
    ld c, h                                       ; $64c8: $4c
    ld b, c                                       ; $64c9: $41
    ld de, $c041                                  ; $64ca: $11 $41 $c0
    jp nz, $2c6c                                  ; $64cd: $c2 $6c $2c

    ld b, [hl]                                    ; $64d0: $46
    ld h, b                                       ; $64d1: $60
    ld b, $c2                                     ; $64d2: $06 $c2
    db $10                                        ; $64d4: $10
    ld a, $81                                     ; $64d5: $3e $81
    jp $8061                                      ; $64d7: $c3 $61 $80


    db $e3                                        ; $64da: $e3
    ld sp, $6b40                                  ; $64db: $31 $40 $6b
    xor h                                         ; $64de: $ac
    ld hl, $82b9                                  ; $64df: $21 $b9 $82
    ld c, d                                       ; $64e2: $4a
    ld l, h                                       ; $64e3: $6c
    add b                                         ; $64e4: $80
    dec b                                         ; $64e5: $05
    add c                                         ; $64e6: $81
    ret nz                                        ; $64e7: $c0

    rst $20                                       ; $64e8: $e7
    push bc                                       ; $64e9: $c5
    ld h, d                                       ; $64ea: $62
    ld b, b                                       ; $64eb: $40
    ld h, c                                       ; $64ec: $61
    ld a, [hl]                                    ; $64ed: $7e
    ld h, c                                       ; $64ee: $61
    add l                                         ; $64ef: $85
    jp nz, $e4fb                                  ; $64f0: $c2 $fb $e4

    ld l, e                                       ; $64f3: $6b
    ld b, $71                                     ; $64f4: $06 $71
    add b                                         ; $64f6: $80
    ld c, e                                       ; $64f7: $4b
    dec bc                                        ; $64f8: $0b
    ret nz                                        ; $64f9: $c0

    db $ed                                        ; $64fa: $ed
    inc hl                                        ; $64fb: $23
    ld [hl+], a                                   ; $64fc: $22
    ret nz                                        ; $64fd: $c0

    db $e3                                        ; $64fe: $e3
    add hl, bc                                    ; $64ff: $09

jr_06e_6500:
    ld b, d                                       ; $6500: $42
    add e                                         ; $6501: $83
    pop bc                                        ; $6502: $c1
    ldh a, [rLCDC]                                ; $6503: $f0 $40
    add b                                         ; $6505: $80
    db $fd                                        ; $6506: $fd
    add e                                         ; $6507: $83
    ret nz                                        ; $6508: $c0

    ldh [rBCPD], a                                ; $6509: $e0 $69
    push bc                                       ; $650b: $c5
    inc c                                         ; $650c: $0c
    inc l                                         ; $650d: $2c
    dec c                                         ; $650e: $0d
    dec hl                                        ; $650f: $2b
    ld d, b                                       ; $6510: $50
    or c                                          ; $6511: $b1
    and b                                         ; $6512: $a0
    ret nz                                        ; $6513: $c0

    ldh a, [rSTAT]                                ; $6514: $f0 $41
    and e                                         ; $6516: $a3
    reti                                          ; $6517: $d9


    call nz, $084c                                ; $6518: $c4 $4c $08
    add b                                         ; $651b: $80
    ld a, [hl+]                                   ; $651c: $2a
    adc e                                         ; $651d: $8b
    and b                                         ; $651e: $a0
    db $10                                        ; $651f: $10
    cp h                                          ; $6520: $bc
    ret nz                                        ; $6521: $c0

    cp $40                                        ; $6522: $fe $40
    ld l, a                                       ; $6524: $6f
    ld h, e                                       ; $6525: $63
    ld l, b                                       ; $6526: $68
    jp $ed4c                                      ; $6527: $c3 $4c $ed


    ld bc, $6078                                  ; $652a: $01 $78 $60
    add b                                         ; $652d: $80
    jp z, $cd0e                                   ; $652e: $ca $0e $cd

    dec b                                         ; $6531: $05
    dec bc                                        ; $6532: $0b
    dec bc                                        ; $6533: $0b
    ld c, h                                       ; $6534: $4c
    ld a, a                                       ; $6535: $7f
    and h                                         ; $6536: $a4
    jp $8a61                                      ; $6537: $c3 $61 $8a


    ld h, c                                       ; $653a: $61
    ret nz                                        ; $653b: $c0

    db $e3                                        ; $653c: $e3
    ldh [$c1], a                                  ; $653d: $e0 $c1
    and $80                                       ; $653f: $e6 $80
    pop bc                                        ; $6541: $c1
    ld l, e                                       ; $6542: $6b
    ld b, b                                       ; $6543: $40
    ret nz                                        ; $6544: $c0

    ld [$2649], a                                 ; $6545: $ea $49 $26
    ld c, $4e                                     ; $6548: $0e $4e
    ld l, $08                                     ; $654a: $2e $08
    ret nz                                        ; $654c: $c0

    db $e3                                        ; $654d: $e3
    ld bc, $4162                                  ; $654e: $01 $62 $41
    ld h, c                                       ; $6551: $61
    dec hl                                        ; $6552: $2b
    ld a, a                                       ; $6553: $7f
    ld h, d                                       ; $6554: $62
    db $ec                                        ; $6555: $ec
    and l                                         ; $6556: $a5
    ret nz                                        ; $6557: $c0

    push hl                                       ; $6558: $e5
    xor a                                         ; $6559: $af
    add c                                         ; $655a: $81
    ret nz                                        ; $655b: $c0

    ld [hl-], a                                   ; $655c: $32
    ld [hl+], a                                   ; $655d: $22
    ld a, [$0046]                                 ; $655e: $fa $46 $00
    and a                                         ; $6561: $a7
    ld d, h                                       ; $6562: $54
    ld b, b                                       ; $6563: $40
    adc [hl]                                      ; $6564: $8e
    nop                                           ; $6565: $00
    ld b, $82                                     ; $6566: $06 $82
    ld a, [hl+]                                   ; $6568: $2a
    ld l, d                                       ; $6569: $6a
    ld [$20c1], sp                                ; $656a: $08 $c1 $20
    pop bc                                        ; $656d: $c1
    push hl                                       ; $656e: $e5
    ld a, $e6                                     ; $656f: $3e $e6
    ld c, h                                       ; $6571: $4c
    or $62                                        ; $6572: $f6 $62
    ld a, [hl-]                                   ; $6574: $3a
    add b                                         ; $6575: $80
    add c                                         ; $6576: $81
    add [hl]                                      ; $6577: $86
    ret nz                                        ; $6578: $c0

    jp hl                                         ; $6579: $e9


    dec b                                         ; $657a: $05
    dec c                                         ; $657b: $0d
    rst $38                                       ; $657c: $ff
    ret nz                                        ; $657d: $c0

    ld c, h                                       ; $657e: $4c
    sub b                                         ; $657f: $90
    nop                                           ; $6580: $00
    ld b, [hl]                                    ; $6581: $46
    add [hl]                                      ; $6582: $86
    ei                                            ; $6583: $fb
    ld b, b                                       ; $6584: $40
    add b                                         ; $6585: $80
    ld [hl+], a                                   ; $6586: $22
    ld l, d                                       ; $6587: $6a
    and l                                         ; $6588: $a5
    nop                                           ; $6589: $00
    ld bc, $70e2                                  ; $658a: $01 $e2 $70
    add b                                         ; $658d: $80
    cp d                                          ; $658e: $ba
    ld h, d                                       ; $658f: $62
    ld a, [$8d45]                                 ; $6590: $fa $45 $8d
    inc b                                         ; $6593: $04
    ld h, [hl]                                    ; $6594: $66
    ld [hl+], a                                   ; $6595: $22
    ld a, a                                       ; $6596: $7f
    db $e3                                        ; $6597: $e3
    inc bc                                        ; $6598: $03
    and d                                         ; $6599: $a2
    ld [hl], b                                    ; $659a: $70
    db $fd                                        ; $659b: $fd
    pop bc                                        ; $659c: $c1
    rlca                                          ; $659d: $07
    ld h, b                                       ; $659e: $60
    db $fc                                        ; $659f: $fc
    nop                                           ; $65a0: $00
    cp a                                          ; $65a1: $bf
    push hl                                       ; $65a2: $e5
    inc l                                         ; $65a3: $2c
    ld l, h                                       ; $65a4: $6c
    ld c, h                                       ; $65a5: $4c
    add c                                         ; $65a6: $81
    ret nz                                        ; $65a7: $c0

    ld [hl], e                                    ; $65a8: $73
    dec bc                                        ; $65a9: $0b
    ld a, [bc]                                    ; $65aa: $0a
    ld a, a                                       ; $65ab: $7f
    call nz, $2e83                                ; $65ac: $c4 $83 $2e
    ld c, [hl]                                    ; $65af: $4e
    ld l, $0d                                     ; $65b0: $2e $0d
    call nc, $80e0                                ; $65b2: $d4 $e0 $80
    ld e, c                                       ; $65b5: $59
    add d                                         ; $65b6: $82
    ld c, [hl]                                    ; $65b7: $4e
    nop                                           ; $65b8: $00
    ld b, $64                                     ; $65b9: $06 $64
    call nz, $8041                                ; $65bb: $c4 $41 $80
    add $f2                                       ; $65be: $c6 $f2
    ld b, d                                       ; $65c0: $42
    xor d                                         ; $65c1: $aa
    nop                                           ; $65c2: $00
    ld c, $01                                     ; $65c3: $0e $01
    ld l, [hl]                                    ; $65c5: $6e
    cp a                                          ; $65c6: $bf
    xor b                                         ; $65c7: $a8
    add b                                         ; $65c8: $80
    ld b, [hl]                                    ; $65c9: $46
    and b                                         ; $65ca: $a0
    jr nz, @-$6b                                  ; $65cb: $20 $93

    pop hl                                        ; $65cd: $e1
    db $fd                                        ; $65ce: $fd
    ld h, e                                       ; $65cf: $63
    rst $00                                       ; $65d0: $c7
    ld c, b                                       ; $65d1: $48
    db $ed                                        ; $65d2: $ed
    ld hl, $ab0c                                  ; $65d3: $21 $0c $ab
    inc h                                         ; $65d6: $24
    or c                                          ; $65d7: $b1
    ld b, e                                       ; $65d8: $43
    ld c, $6e                                     ; $65d9: $0e $6e
    db $fc                                        ; $65db: $fc
    ld l, c                                       ; $65dc: $69
    add b                                         ; $65dd: $80
    ld c, b                                       ; $65de: $48
    cp a                                          ; $65df: $bf
    rst $20                                       ; $65e0: $e7
    ld a, [hl]                                    ; $65e1: $7e
    and $f1                                       ; $65e2: $e6 $f1
    inc l                                         ; $65e4: $2c
    add c                                         ; $65e5: $81
    add c                                         ; $65e6: $81
    xor e                                         ; $65e7: $ab
    ld h, e                                       ; $65e8: $63
    add h                                         ; $65e9: $84
    and c                                         ; $65ea: $a1
    ld a, [bc]                                    ; $65eb: $0a
    dec bc                                        ; $65ec: $0b
    ld l, e                                       ; $65ed: $6b
    ld l, e                                       ; $65ee: $6b
    pop hl                                        ; $65ef: $e1
    ld c, e                                       ; $65f0: $4b
    ld a, [$c023]                                 ; $65f1: $fa $23 $c0
    and $78                                       ; $65f4: $e6 $78
    pop bc                                        ; $65f6: $c1
    ldh a, [$e4]                                  ; $65f7: $f0 $e4

jr_06e_65f9:
    ld c, [hl]                                    ; $65f9: $4e
    ld c, $2e                                     ; $65fa: $0e $2e
    pop bc                                        ; $65fc: $c1
    ld a, [bc]                                    ; $65fd: $0a
    ld b, l                                       ; $65fe: $45
    nop                                           ; $65ff: $00
    sub $61                                       ; $6600: $d6 $61
    ret z                                         ; $6602: $c8

    push hl                                       ; $6603: $e5
    inc [hl]                                      ; $6604: $34
    ld bc, $826e                                  ; $6605: $01 $6e $82
    dec bc                                        ; $6608: $0b
    ld a, [bc]                                    ; $6609: $0a
    nop                                           ; $660a: $00
    or l                                          ; $660b: $b5
    ld hl, $c06b                                  ; $660c: $21 $6b $c0
    ld [bc], a                                    ; $660f: $02
    ld a, [c]                                     ; $6610: $f2
    add hl, sp                                    ; $6611: $39
    ld b, b                                       ; $6612: $40
    ld l, h                                       ; $6613: $6c
    ld h, d                                       ; $6614: $62
    inc a                                         ; $6615: $3c
    db $e3                                        ; $6616: $e3
    or a                                          ; $6617: $b7
    and l                                         ; $6618: $a5
    cp h                                          ; $6619: $bc
    push hl                                       ; $661a: $e5
    inc b                                         ; $661b: $04
    xor $02                                       ; $661c: $ee $02
    ld b, l                                       ; $661e: $45
    add c                                         ; $661f: $81
    dec hl                                        ; $6620: $2b
    ldh a, [rP1]                                  ; $6621: $f0 $00
    ld [bc], a                                    ; $6623: $02
    ld [c], a                                     ; $6624: $e2
    pop bc                                        ; $6625: $c1
    ld l, a                                       ; $6626: $6f
    inc l                                         ; $6627: $2c
    ld h, h                                       ; $6628: $64
    cp c                                          ; $6629: $b9
    and b                                         ; $662a: $a0
    sub e                                         ; $662b: $93
    dec c                                         ; $662c: $0d
    ld l, e                                       ; $662d: $6b
    cp [hl]                                       ; $662e: $be
    push hl                                       ; $662f: $e5
    rlca                                          ; $6630: $07
    add [hl]                                      ; $6631: $86
    dec bc                                        ; $6632: $0b
    add [hl]                                      ; $6633: $86
    pop bc                                        ; $6634: $c1
    or e                                          ; $6635: $b3
    ld [hl+], a                                   ; $6636: $22
    ld a, [bc]                                    ; $6637: $0a
    ld [$e302], sp                                ; $6638: $08 $02 $e3
    add hl, sp                                    ; $663b: $39
    ld de, $85f8                                  ; $663c: $11 $f8 $85
    dec c                                         ; $663f: $0d
    ld e, e                                       ; $6640: $5b
    add b                                         ; $6641: $80
    adc [hl]                                      ; $6642: $8e
    ld bc, $a671                                  ; $6643: $01 $71 $a6
    pop bc                                        ; $6646: $c1
    ldh [$80], a                                  ; $6647: $e0 $80
    ld b, $c2                                     ; $6649: $06 $c2
    ld l, h                                       ; $664b: $6c
    and c                                         ; $664c: $a1
    jp Jump_06e_47c0                              ; $664d: $c3 $c0 $47


    xor c                                         ; $6650: $a9
    ld [hl], a                                    ; $6651: $77
    dec b                                         ; $6652: $05
    cp e                                          ; $6653: $bb
    ld b, l                                       ; $6654: $45
    jr c, jr_06e_65f9                             ; $6655: $38 $a2

    dec c                                         ; $6657: $0d
    db $10                                        ; $6658: $10
    pop de                                        ; $6659: $d1
    db $e3                                        ; $665a: $e3
    ld c, e                                       ; $665b: $4b
    add $f0                                       ; $665c: $c6 $f0
    db $e4                                        ; $665e: $e4

jr_06e_665f:
    dec l                                         ; $665f: $2d
    nop                                           ; $6660: $00
    ld c, e                                       ; $6661: $4b
    jp Jump_06e_7c68                              ; $6662: $c3 $68 $7c


    inc b                                         ; $6665: $04
    inc [hl]                                      ; $6666: $34
    rlca                                          ; $6667: $07
    nop                                           ; $6668: $00
    scf                                           ; $6669: $37
    add h                                         ; $666a: $84

jr_06e_666b:
    cp a                                          ; $666b: $bf
    ld [c], a                                     ; $666c: $e2
    ld a, a                                       ; $666d: $7f
    ld h, d                                       ; $666e: $62
    db $fd                                        ; $666f: $fd
    db $e3                                        ; $6670: $e3
    ret nz                                        ; $6671: $c0

    pop hl                                        ; $6672: $e1
    ld b, d                                       ; $6673: $42
    push hl                                       ; $6674: $e5
    inc b                                         ; $6675: $04
    add b                                         ; $6676: $80
    add e                                         ; $6677: $83
    ld l, e                                       ; $6678: $6b
    nop                                           ; $6679: $00
    ld a, [hl-]                                   ; $667a: $3a
    and [hl]                                      ; $667b: $a6
    ld a, [$f8c8]                                 ; $667c: $fa $c8 $f8
    and c                                         ; $667f: $a1
    ret nz                                        ; $6680: $c0

    ld [$c3c4], a                                 ; $6681: $ea $c4 $c3
    ld l, a                                       ; $6684: $6f
    nop                                           ; $6685: $00
    halt                                          ; $6686: $76
    nop                                           ; $6687: $00
    ret nz                                        ; $6688: $c0

    db $ed                                        ; $6689: $ed
    inc b                                         ; $668a: $04
    cp d                                          ; $668b: $ba
    add [hl]                                      ; $668c: $86
    ld h, [hl]                                    ; $668d: $66
    jr z, jr_06e_66de                             ; $668e: $28 $4e

    dec h                                         ; $6690: $25
    jr nz, jr_06e_665f                            ; $6691: $20 $cc

    push hl                                       ; $6693: $e5
    ld a, c                                       ; $6694: $79
    and h                                         ; $6695: $a4
    adc b                                         ; $6696: $88
    ld h, c                                       ; $6697: $61
    ld b, e                                       ; $6698: $43
    ld h, c                                       ; $6699: $61
    nop                                           ; $669a: $00
    call nz, $baa8                                ; $669b: $c4 $a8 $ba
    ld [hl+], a                                   ; $669e: $22
    ld b, e                                       ; $669f: $43
    db $e4                                        ; $66a0: $e4
    scf                                           ; $66a1: $37
    ld [hl+], a                                   ; $66a2: $22
    ld [hl], $e7                                  ; $66a3: $36 $e7
    ld a, h                                       ; $66a5: $7c
    push hl                                       ; $66a6: $e5
    sub a                                         ; $66a7: $97
    jr nz, jr_06e_671e                            ; $66a8: $20 $74

    db $e3                                        ; $66aa: $e3
    ld [bc], a                                    ; $66ab: $02
    ret                                           ; $66ac: $c9


    and b                                         ; $66ad: $a0
    ld l, e                                       ; $66ae: $6b
    ret z                                         ; $66af: $c8

    add b                                         ; $66b0: $80
    jp nz, $c0c5                                  ; $66b1: $c2 $c5 $c0

    ld [$2472], a                                 ; $66b4: $ea $72 $24
    ld [hl], b                                    ; $66b7: $70
    add l                                         ; $66b8: $85
    ld h, e                                       ; $66b9: $63
    inc h                                         ; $66ba: $24
    nop                                           ; $66bb: $00
    ld a, h                                       ; $66bc: $7c
    ldh [$6d], a                                  ; $66bd: $e0 $6d
    jr nz, jr_06e_666b                            ; $66bf: $20 $aa

    ld [bc], a                                    ; $66c1: $02
    ld hl, sp-$7b                                 ; $66c2: $f8 $85
    ld b, [hl]                                    ; $66c4: $46
    and d                                         ; $66c5: $a2
    ret nz                                        ; $66c6: $c0

    rst $30                                       ; $66c7: $f7
    ldh a, [$64]                                  ; $66c8: $f0 $64
    inc hl                                        ; $66ca: $23
    call z, Call_06e_6a00                         ; $66cb: $cc $00 $6a
    nop                                           ; $66ce: $00
    ld a, h                                       ; $66cf: $7c
    ld [bc], a                                    ; $66d0: $02
    ld [hl], a                                    ; $66d1: $77
    ld bc, $c544                                  ; $66d2: $01 $44 $c5
    add hl, bc                                    ; $66d5: $09
    ld l, b                                       ; $66d6: $68
    add b                                         ; $66d7: $80
    db $e4                                        ; $66d8: $e4
    ld a, [c]                                     ; $66d9: $f2
    ld c, a                                       ; $66da: $4f
    ld [$0545], a                                 ; $66db: $ea $45 $05

jr_06e_66de:
    ld l, [hl]                                    ; $66de: $6e
    or [hl]                                       ; $66df: $b6
    add l                                         ; $66e0: $85
    ld a, [bc]                                    ; $66e1: $0a
    ld b, e                                       ; $66e2: $43
    rst $20                                       ; $66e3: $e7
    ld [bc], a                                    ; $66e4: $02
    db $e3                                        ; $66e5: $e3
    nop                                           ; $66e6: $00
    push bc                                       ; $66e7: $c5
    ret nz                                        ; $66e8: $c0

    ld sp, hl                                     ; $66e9: $f9
    xor e                                         ; $66ea: $ab
    nop                                           ; $66eb: $00
    nop                                           ; $66ec: $00
    add $a3                                       ; $66ed: $c6 $a3
    inc b                                         ; $66ef: $04
    ret nz                                        ; $66f0: $c0

    ld b, e                                       ; $66f1: $43
    rst $20                                       ; $66f2: $e7
    ret nz                                        ; $66f3: $c0

    db $eb                                        ; $66f4: $eb
    cp h                                          ; $66f5: $bc
    ld h, [hl]                                    ; $66f6: $66
    rst $30                                       ; $66f7: $f7
    jp hl                                         ; $66f8: $e9


    inc l                                         ; $66f9: $2c
    ld b, h                                       ; $66fa: $44
    pop bc                                        ; $66fb: $c1
    ldh [$c0], a                                  ; $66fc: $e0 $c0
    add l                                         ; $66fe: $85
    and h                                         ; $66ff: $a4
    di                                            ; $6700: $f3
    jp nz, $a859                                  ; $6701: $c2 $59 $a8

    nop                                           ; $6704: $00
    push bc                                       ; $6705: $c5
    or e                                          ; $6706: $b3
    db $10                                        ; $6707: $10
    ld [hl], d                                    ; $6708: $72
    jp $2d0e                                      ; $6709: $c3 $0e $2d


    ld bc, $c16d                                  ; $670c: $01 $6d $c1
    db $e3                                        ; $670f: $e3
    ld c, h                                       ; $6710: $4c
    ld b, d                                       ; $6711: $42
    add a                                         ; $6712: $87
    ret z                                         ; $6713: $c8

    ret nz                                        ; $6714: $c0

    db $ed                                        ; $6715: $ed
    ld a, l                                       ; $6716: $7d
    and l                                         ; $6717: $a5
    ld l, c                                       ; $6718: $69
    and [hl]                                      ; $6719: $a6
    xor [hl]                                      ; $671a: $ae
    dec b                                         ; $671b: $05
    inc bc                                        ; $671c: $03
    ld l, l                                       ; $671d: $6d

jr_06e_671e:
    ld c, $53                                     ; $671e: $0e $53
    ld b, c                                       ; $6720: $41
    inc c                                         ; $6721: $0c
    ld h, d                                       ; $6722: $62
    adc $42                                       ; $6723: $ce $42
    reti                                          ; $6725: $d9


    ld h, d                                       ; $6726: $62
    ld b, e                                       ; $6727: $43

jr_06e_6728:
    inc c                                         ; $6728: $0c
    db $fd                                        ; $6729: $fd
    ld b, b                                       ; $672a: $40
    nop                                           ; $672b: $00
    ld b, a                                       ; $672c: $47
    rst $00                                       ; $672d: $c7
    xor e                                         ; $672e: $ab
    adc [hl]                                      ; $672f: $8e
    cp h                                          ; $6730: $bc
    and a                                         ; $6731: $a7
    adc [hl]                                      ; $6732: $8e
    ld b, b                                       ; $6733: $40
    ld d, a                                       ; $6734: $57
    ld b, $d7                                     ; $6735: $06 $d7
    xor c                                         ; $6737: $a9
    ld b, $82                                     ; $6738: $06 $82
    add b                                         ; $673a: $80
    ld [$6c94], a                                 ; $673b: $ea $94 $6c
    inc bc                                        ; $673e: $03
    ld [bc], a                                    ; $673f: $02
    db $e4                                        ; $6740: $e4
    dec hl                                        ; $6741: $2b
    pop bc                                        ; $6742: $c1
    pop bc                                        ; $6743: $c1
    dec l                                         ; $6744: $2d
    ret nz                                        ; $6745: $c0

    db $e3                                        ; $6746: $e3
    ld l, e                                       ; $6747: $6b
    db $e4                                        ; $6748: $e4
    ld l, l                                       ; $6749: $6d
    ld b, b                                       ; $674a: $40
    dec c                                         ; $674b: $0d
    xor c                                         ; $674c: $a9
    ld l, a                                       ; $674d: $6f
    db $ec                                        ; $674e: $ec
    xor d                                         ; $674f: $aa
    dec bc                                        ; $6750: $0b
    xor [hl]                                      ; $6751: $ae
    nop                                           ; $6752: $00
    add b                                         ; $6753: $80
    ld [$411c], a                                 ; $6754: $ea $1c $41
    ld l, $c0                                     ; $6757: $2e $c0
    ldh [rP1], a                                  ; $6759: $e0 $00
    rst $10                                       ; $675b: $d7
    xor c                                         ; $675c: $a9
    inc b                                         ; $675d: $04
    jp nz, $c6b0                                  ; $675e: $c2 $b0 $c6

    and l                                         ; $6761: $a5

Jump_06e_6762:
    call nz, $e4eb                                ; $6762: $c4 $eb $e4
    ld l, [hl]                                    ; $6765: $6e
    jr nz, jr_06e_6728                            ; $6766: $20 $c0

    db $ed                                        ; $6768: $ed
    sub e                                         ; $6769: $93
    xor $20                                       ; $676a: $ee $20
    add b                                         ; $676c: $80
    and a                                         ; $676d: $a7
    ret nz                                        ; $676e: $c0

    rst $28                                       ; $676f: $ef
    or b                                          ; $6770: $b0
    ld b, b                                       ; $6771: $40
    add hl, bc                                    ; $6772: $09
    and b                                         ; $6773: $a0
    db $fd                                        ; $6774: $fd
    pop hl                                        ; $6775: $e1
    ld c, e                                       ; $6776: $4b
    ld [hl], $a2                                  ; $6777: $36 $a2
    adc d                                         ; $6779: $8a
    ld l, d                                       ; $677a: $6a
    nop                                           ; $677b: $00
    add b                                         ; $677c: $80
    xor e                                         ; $677d: $ab
    ld a, [c]                                     ; $677e: $f2
    ld h, [hl]                                    ; $677f: $66
    add b                                         ; $6780: $80
    push hl                                       ; $6781: $e5
    cp d                                          ; $6782: $ba
    add h                                         ; $6783: $84
    and e                                         ; $6784: $a3
    dec b                                         ; $6785: $05
    inc b                                         ; $6786: $04
    jp $f9c0                                      ; $6787: $c3 $c0 $f9


    cp $ae                                        ; $678a: $fe $ae
    nop                                           ; $678c: $00
    rst $38                                       ; $678d: $ff
    db $fc                                        ; $678e: $fc
    add b                                         ; $678f: $80
    xor e                                         ; $6790: $ab
    jp nc, $e4f2                                  ; $6791: $d2 $f2 $e4

    ld sp, hl                                     ; $6794: $f9
    add h                                         ; $6795: $84
    ld b, l                                       ; $6796: $45
    nop                                           ; $6797: $00
    nop                                           ; $6798: $00
    nop                                           ; $6799: $00
    rst $08                                       ; $679a: $cf
    call nc, $d4d5                                ; $679b: $d4 $d5 $d4
    and b                                         ; $679e: $a0
    rst $38                                       ; $679f: $ff
    db $e4                                        ; $67a0: $e4
    push af                                       ; $67a1: $f5
    rst $20                                       ; $67a2: $e7
    sub $d7                                       ; $67a3: $d6 $d7
    adc c                                         ; $67a5: $89
    ret c                                         ; $67a6: $d8

    db $eb                                        ; $67a7: $eb
    push hl                                       ; $67a8: $e5
    rst $28                                       ; $67a9: $ef
    jp hl                                         ; $67aa: $e9


    call nc, $e5d5                                ; $67ab: $d4 $d5 $e5
    set 5, b                                      ; $67ae: $cb $e8
    ret                                           ; $67b0: $c9


    push hl                                       ; $67b1: $e5
    ld [c], a                                     ; $67b2: $e2
    add hl, sp                                    ; $67b3: $39
    db $e3                                        ; $67b4: $e3
    cp [hl]                                       ; $67b5: $be
    db $e3                                        ; $67b6: $e3
    push bc                                       ; $67b7: $c5
    ld [c], a                                     ; $67b8: $e2
    reti                                          ; $67b9: $d9


    jp c, $c0db                                   ; $67ba: $da $db $c0

    db $eb                                        ; $67bd: $eb
    rst $28                                       ; $67be: $ef
    xor $cc                                       ; $67bf: $ee $cc
    adc c                                         ; $67c1: $89
    rst $20                                       ; $67c2: $e7
    xor e                                         ; $67c3: $ab
    db $e4                                        ; $67c4: $e4
    db $e4                                        ; $67c5: $e4
    push hl                                       ; $67c6: $e5
    and b                                         ; $67c7: $a0
    db $e3                                        ; $67c8: $e3
    push bc                                       ; $67c9: $c5
    ld [c], a                                     ; $67ca: $e2
    call c, Call_000_2ddd                         ; $67cb: $dc $dd $2d
    sbc $6b                                       ; $67ce: $de $6b
    ldh [$9f], a                                  ; $67d0: $e0 $9f
    sbc l                                         ; $67d2: $9d
    rst $38                                       ; $67d3: $ff
    db $e3                                        ; $67d4: $e3
    sbc a                                         ; $67d5: $9f
    rst $28                                       ; $67d6: $ef
    ld [c], a                                     ; $67d7: $e2
    ld l, h                                       ; $67d8: $6c
    ld [$769c], a                                 ; $67d9: $ea $9c $76
    and $86                                       ; $67dc: $e6 $86
    push hl                                       ; $67de: $e5
    and b                                         ; $67df: $a0
    and $e7                                       ; $67e0: $e6 $e7
    add hl, sp                                    ; $67e2: $39
    db $e3                                        ; $67e3: $e3
    push bc                                       ; $67e4: $c5
    ldh [$e2], a                                  ; $67e5: $e0 $e2
    rst $28                                       ; $67e7: $ef
    db $e3                                        ; $67e8: $e3
    rst $18                                       ; $67e9: $df
    ldh [$e1], a                                  ; $67ea: $e0 $e1
    pop bc                                        ; $67ec: $c1
    ldh [$9c], a                                  ; $67ed: $e0 $9c
    xor [hl]                                      ; $67ef: $ae
    ld b, [hl]                                    ; $67f0: $46
    ld a, $ff                                     ; $67f1: $3e $ff
    ldh [$c3], a                                  ; $67f3: $e0 $c3
    ld b, [hl]                                    ; $67f5: $46
    sbc h                                         ; $67f6: $9c
    sbc a                                         ; $67f7: $9f
    and b                                         ; $67f8: $a0
    rst $28                                       ; $67f9: $ef
    ldh [$6c], a                                  ; $67fa: $e0 $6c
    and $80                                       ; $67fc: $e6 $80
    ret nc                                        ; $67fe: $d0

    db $e3                                        ; $67ff: $e3
    inc sp                                        ; $6800: $33
    rst $20                                       ; $6801: $e7
    add [hl]                                      ; $6802: $86
    pop hl                                        ; $6803: $e1
    ld [de], a                                    ; $6804: $12
    rst $20                                       ; $6805: $e7
    push bc                                       ; $6806: $c5
    ldh [$75], a                                  ; $6807: $e0 $75
    pop hl                                        ; $6809: $e1
    add h                                         ; $680a: $84
    ldh [$9c], a                                  ; $680b: $e0 $9c
    cp a                                          ; $680d: $bf
    ld b, [hl]                                    ; $680e: $46
    xor a                                         ; $680f: $af
    ld b, [hl]                                    ; $6810: $46
    inc bc                                        ; $6811: $03
    add hl, bc                                    ; $6812: $09
    inc bc                                        ; $6813: $03
    cp [hl]                                       ; $6814: $be
    ldh [$9c], a                                  ; $6815: $e0 $9c
    ld h, b                                       ; $6817: $60
    ld a, l                                       ; $6818: $7d
    db $e4                                        ; $6819: $e4
    ld d, c                                       ; $681a: $51
    db $e3                                        ; $681b: $e3
    ret nc                                        ; $681c: $d0

    db $eb                                        ; $681d: $eb
    add [hl]                                      ; $681e: $86
    rst $20                                       ; $681f: $e7
    rst $28                                       ; $6820: $ef
    jp hl                                         ; $6821: $e9


    sbc a                                         ; $6822: $9f
    sbc h                                         ; $6823: $9c
    add l                                         ; $6824: $85
    ldh [rIE], a                                  ; $6825: $e0 $ff
    inc bc                                        ; $6827: $03
    inc b                                         ; $6828: $04
    rlca                                          ; $6829: $07
    dec c                                         ; $682a: $0d
    sbc c                                         ; $682b: $99
    dec c                                         ; $682c: $0d
    rlca                                          ; $682d: $07
    inc b                                         ; $682e: $04
    add b                                         ; $682f: $80
    cp l                                          ; $6830: $bd
    ldh [$7d], a                                  ; $6831: $e0 $7d
    db $e3                                        ; $6833: $e3
    ret nc                                        ; $6834: $d0

    db $eb                                        ; $6835: $eb
    ld a, b                                       ; $6836: $78
    db $e4                                        ; $6837: $e4
    dec l                                         ; $6838: $2d
    db $ec                                        ; $6839: $ec
    cp b                                          ; $683a: $b8
    jp nz, $e1c1                                  ; $683b: $c2 $c1 $e1

    inc bc                                        ; $683e: $03
    rst $38                                       ; $683f: $ff
    inc b                                         ; $6840: $04
    dec c                                         ; $6841: $0d
    sbc c                                         ; $6842: $99
    sbc c                                         ; $6843: $99
    nop                                           ; $6844: $00
    ld bc, $9999                                  ; $6845: $01 $99 $99
    inc bc                                        ; $6848: $03
    sbc c                                         ; $6849: $99
    dec c                                         ; $684a: $0d
    cp [hl]                                       ; $684b: $be
    ldh [$3c], a                                  ; $684c: $e0 $3c
    ldh [rIF], a                                  ; $684e: $e0 $0f
    db $ec                                        ; $6850: $ec
    ld c, b                                       ; $6851: $48
    and $53                                       ; $6852: $e6 $53
    pop bc                                        ; $6854: $c1
    db $fc                                        ; $6855: $fc
    jp Jump_06e_49b4                              ; $6856: $c3 $b4 $49


    pop bc                                        ; $6859: $c1
    ld b, e                                       ; $685a: $43
    ld [c], a                                     ; $685b: $e2
    sbc h                                         ; $685c: $9c
    jp nz, $0fe2                                  ; $685d: $c2 $e2 $0f

    inc b                                         ; $6860: $04
    rst $38                                       ; $6861: $ff
    ldh [rIF], a                                  ; $6862: $e0 $0f
    ld c, $bf                                     ; $6864: $0e $bf
    ldh [$99], a                                  ; $6866: $e0 $99
    dec c                                         ; $6868: $0d
    ld [bc], a                                    ; $6869: $02
    cp a                                          ; $686a: $bf
    push hl                                       ; $686b: $e5
    db $dd                                        ; $686c: $dd
    push hl                                       ; $686d: $e5
    adc $c8                                       ; $686e: $ce $c8
    ld d, e                                       ; $6870: $53
    pop bc                                        ; $6871: $c1
    ld hl, sp-$04                                 ; $6872: $f8 $fc
    jp $c149                                      ; $6874: $c3 $49 $c1


    ld b, e                                       ; $6877: $43
    db $e3                                        ; $6878: $e3
    ld [bc], a                                    ; $6879: $02
    dec c                                         ; $687a: $0d
    sbc b                                         ; $687b: $98
    sbc b                                         ; $687c: $98
    rrca                                          ; $687d: $0f
    cp a                                          ; $687e: $bf
    ld [bc], a                                    ; $687f: $02
    ld b, l                                       ; $6880: $45
    ld b, l                                       ; $6881: $45
    ld b, [hl]                                    ; $6882: $46
    ld b, [hl]                                    ; $6883: $46
    ld b, $c0                                     ; $6884: $06 $c0
    pop hl                                        ; $6886: $e1
    sbc c                                         ; $6887: $99
    dec c                                         ; $6888: $0d
    rrca                                          ; $6889: $0f
    cp a                                          ; $688a: $bf
    db $e3                                        ; $688b: $e3
    ld [c], a                                     ; $688c: $e2
    db $e3                                        ; $688d: $e3
    db $dd                                        ; $688e: $dd
    db $e4                                        ; $688f: $e4
    push af                                       ; $6890: $f5
    and h                                         ; $6891: $a4
    rst $28                                       ; $6892: $ef
    and d                                         ; $6893: $a2
    ld d, e                                       ; $6894: $53
    pop bc                                        ; $6895: $c1
    db $fc                                        ; $6896: $fc
    add d                                         ; $6897: $82
    jp $c449                                      ; $6898: $c3 $49 $c4


    sbc h                                         ; $689b: $9c
    jp Jump_000_0f02                              ; $689c: $c3 $02 $0f


    sbc b                                         ; $689f: $98
    sbc b                                         ; $68a0: $98
    rst $28                                       ; $68a1: $ef
    sbc b                                         ; $68a2: $98
    ld b, $46                                     ; $68a3: $06 $46
    ld b, l                                       ; $68a5: $45
    rst $38                                       ; $68a6: $ff
    ldh [rTIMA], a                                ; $68a7: $e0 $05
    db $10                                        ; $68a9: $10
    sbc b                                         ; $68aa: $98
    scf                                           ; $68ab: $37
    sbc b                                         ; $68ac: $98
    sbc c                                         ; $68ad: $99
    sbc b                                         ; $68ae: $98
    cp a                                          ; $68af: $bf
    db $e4                                        ; $68b0: $e4
    db $e4                                        ; $68b1: $e4
    push hl                                       ; $68b2: $e5
    cp d                                          ; $68b3: $ba
    call nz, $c93e                                ; $68b4: $c4 $3e $c9
    ret c                                         ; $68b7: $d8

    rst $20                                       ; $68b8: $e7
    add $dd                                       ; $68b9: $c6 $dd
    jp $e182                                      ; $68bb: $c3 $82 $e1


    rrca                                          ; $68be: $0f
    sbc c                                         ; $68bf: $99
    set 4, b                                      ; $68c0: $cb $e0
    ld a, [bc]                                    ; $68c2: $0a
    ld b, [hl]                                    ; $68c3: $46
    ld a, a                                       ; $68c4: $7f
    ld b, [hl]                                    ; $68c5: $46
    ld b, l                                       ; $68c6: $45
    ld b, a                                       ; $68c7: $47
    ld d, h                                       ; $68c8: $54
    ld d, d                                       ; $68c9: $52
    ld [$f399], sp                                ; $68ca: $08 $99 $f3
    ldh [$3f], a                                  ; $68cd: $e0 $3f
    sbc b                                         ; $68cf: $98
    sbc b                                         ; $68d0: $98
    ld c, $05                                     ; $68d1: $0e $05
    ld b, [hl]                                    ; $68d3: $46
    sbc [hl]                                      ; $68d4: $9e
    dec de                                        ; $68d5: $1b
    ret nz                                        ; $68d6: $c0

    db $d3                                        ; $68d7: $d3
    rst $20                                       ; $68d8: $e7
    ldh a, [$f9]                                  ; $68d9: $f0 $f9
    rst $28                                       ; $68db: $ef
    ld c, d                                       ; $68dc: $4a
    and d                                         ; $68dd: $a2
    pop bc                                        ; $68de: $c1
    db $e3                                        ; $68df: $e3
    dec bc                                        ; $68e0: $0b
    pop hl                                        ; $68e1: $e1
    dec b                                         ; $68e2: $05
    ld b, [hl]                                    ; $68e3: $46
    ld b, [hl]                                    ; $68e4: $46
    ld c, d                                       ; $68e5: $4a
    rst $28                                       ; $68e6: $ef
    ld h, b                                       ; $68e7: $60
    ld d, [hl]                                    ; $68e8: $56
    add sp, $06                                   ; $68e9: $e8 $06
    cp h                                          ; $68eb: $bc
    pop bc                                        ; $68ec: $c1
    sbc b                                         ; $68ed: $98
    sbc c                                         ; $68ee: $99
    sbc c                                         ; $68ef: $99
    pop bc                                        ; $68f0: $c1
    ld b, $bc                                     ; $68f1: $06 $bc
    jp z, $acc1                                   ; $68f3: $ca $c1 $ac

    ld h, $a2                                     ; $68f6: $26 $a2
    ld c, d                                       ; $68f8: $4a
    and c                                         ; $68f9: $a1
    pop bc                                        ; $68fa: $c1
    db $e4                                        ; $68fb: $e4
    rrca                                          ; $68fc: $0f
    inc b                                         ; $68fd: $04
    rst $38                                       ; $68fe: $ff
    add hl, bc                                    ; $68ff: $09
    inc b                                         ; $6900: $04
    inc c                                         ; $6901: $0c
    ld b, [hl]                                    ; $6902: $46
    ld b, l                                       ; $6903: $45
    ld c, e                                       ; $6904: $4b
    ld h, c                                       ; $6905: $61
    ld e, d                                       ; $6906: $5a
    xor a                                         ; $6907: $af
    ld b, e                                       ; $6908: $43
    dec b                                         ; $6909: $05
    rlca                                          ; $690a: $07
    rlca                                          ; $690b: $07
    add hl, sp                                    ; $690c: $39
    ret nz                                        ; $690d: $c0

    sbc c                                         ; $690e: $99
    ld a, a                                       ; $690f: $7f
    ldh [$ae], a                                  ; $6910: $e0 $ae
    ldh a, [$b7]                                  ; $6912: $f0 $b7
    and b                                         ; $6914: $a0
    and $8e                                       ; $6915: $e6 $8e
    pop bc                                        ; $6917: $c1
    xor b                                         ; $6918: $a8
    ld c, d                                       ; $6919: $4a
    and c                                         ; $691a: $a1
    sbc [hl]                                      ; $691b: $9e
    ld b, [hl]                                    ; $691c: $46
    dec b                                         ; $691d: $05
    ld c, $ea                                     ; $691e: $0e $ea
    ld c, l                                       ; $6920: $4d
    ret nz                                        ; $6921: $c0

    ld [bc], a                                    ; $6922: $02
    add h                                         ; $6923: $84
    ldh [rLYC], a                                 ; $6924: $e0 $45
    add c                                         ; $6926: $81
    ldh [$61], a                                  ; $6927: $e0 $61
    ld d, [hl]                                    ; $6929: $56
    ld b, l                                       ; $692a: $45
    ld l, a                                       ; $692b: $6f
    ld b, l                                       ; $692c: $45
    dec hl                                        ; $692d: $2b
    ld sp, $342b                                  ; $692e: $31 $2b $34
    jp nz, $af06                                  ; $6931: $c2 $06 $af

    ld a, $e0                                     ; $6934: $3e $e0
    ld b, b                                       ; $6936: $40
    and $82                                       ; $6937: $e6 $82
    pop bc                                        ; $6939: $c1
    adc d                                         ; $693a: $8a
    pop bc                                        ; $693b: $c1
    and a                                         ; $693c: $a7
    ld c, d                                       ; $693d: $4a
    and b                                         ; $693e: $a0
    ret z                                         ; $693f: $c8

    and b                                         ; $6940: $a0
    adc a                                         ; $6941: $8f
    jp nz, $8405                                  ; $6942: $c2 $05 $84

    ldh [rIE], a                                  ; $6945: $e0 $ff
    ld b, h                                       ; $6947: $44
    ld b, [hl]                                    ; $6948: $46
    ld c, a                                       ; $6949: $4f
    ld h, c                                       ; $694a: $61
    ld h, c                                       ; $694b: $61
    ld h, c                                       ; $694c: $61
    ld e, h                                       ; $694d: $5c
    dec l                                         ; $694e: $2d
    cpl                                           ; $694f: $2f
    jr nz, jr_06e_6972                            ; $6950: $20 $20

    jr nz, @+$2f                                  ; $6952: $20 $2d

    or h                                          ; $6954: $b4
    and b                                         ; $6955: $a0
    rrca                                          ; $6956: $0f
    cp $c2                                        ; $6957: $fe $c2
    ld a, d                                       ; $6959: $7a
    and l                                         ; $695a: $a5
    ld hl, sp-$74                                 ; $695b: $f8 $8c
    add a                                         ; $695d: $87
    inc bc                                        ; $695e: $03
    db $ec                                        ; $695f: $ec
    add c                                         ; $6960: $81
    ld [c], a                                     ; $6961: $e2
    sbc c                                         ; $6962: $99
    ld b, $45                                     ; $6963: $06 $45
    ld b, a                                       ; $6965: $47
    ld d, d                                       ; $6966: $52

jr_06e_6967:
    ld e, $80                                     ; $6967: $1e $80
    ldh [$61], a                                  ; $6969: $e0 $61
    ld h, c                                       ; $696b: $61
    ld d, d                                       ; $696c: $52
    ld b, l                                       ; $696d: $45
    ret nz                                        ; $696e: $c0

    db $e3                                        ; $696f: $e3
    scf                                           ; $6970: $37
    pop bc                                        ; $6971: $c1

jr_06e_6972:
    cp $c1                                        ; $6972: $fe $c1
    ldh a, [$7a]                                  ; $6974: $f0 $7a

jr_06e_6976:
    and e                                         ; $6976: $a3
    adc h                                         ; $6977: $8c
    adc b                                         ; $6978: $88
    add hl, bc                                    ; $6979: $09
    add l                                         ; $697a: $85
    ld c, l                                       ; $697b: $4d
    add d                                         ; $697c: $82
    sbc [hl]                                      ; $697d: $9e
    ld b, [hl]                                    ; $697e: $46
    jp $de06                                      ; $697f: $c3 $06 $de


    add l                                         ; $6982: $85
    pop bc                                        ; $6983: $c1
    rrca                                          ; $6984: $0f
    rlca                                          ; $6985: $07
    dec d                                         ; $6986: $15
    ld d, [hl]                                    ; $6987: $56
    inc b                                         ; $6988: $04
    ret nz                                        ; $6989: $c0

    ld b, l                                       ; $698a: $45
    ld d, e                                       ; $698b: $53
    rlca                                          ; $698c: $07
    ld d, e                                       ; $698d: $53
    ld b, l                                       ; $698e: $45
    ld b, [hl]                                    ; $698f: $46
    ld b, b                                       ; $6990: $40
    pop hl                                        ; $6991: $e1
    ld hl, sp-$60                                 ; $6992: $f8 $a0
    jr z, jr_06e_6976                             ; $6994: $28 $e0

    ld a, l                                       ; $6996: $7d
    ret nz                                        ; $6997: $c0

    cp $cb                                        ; $6998: $fe $cb
    or b                                          ; $699a: $b0
    adc h                                         ; $699b: $8c
    add l                                         ; $699c: $85
    cp h                                          ; $699d: $bc
    ld h, c                                       ; $699e: $61
    ld c, l                                       ; $699f: $4d
    add d                                         ; $69a0: $82
    ld [bc], a                                    ; $69a1: $02
    pop hl                                        ; $69a2: $e1
    sbc b                                         ; $69a3: $98
    sub a                                         ; $69a4: $97
    add $a0                                       ; $69a5: $c6 $a0
    ld b, [hl]                                    ; $69a7: $46
    ld a, a                                       ; $69a8: $7f
    ld c, d                                       ; $69a9: $4a
    ld d, l                                       ; $69aa: $55
    ld b, [hl]                                    ; $69ab: $46
    ld b, l                                       ; $69ac: $45
    ld c, b                                       ; $69ad: $48
    ld c, c                                       ; $69ae: $49
    ld c, h                                       ; $69af: $4c
    ld a, e                                       ; $69b0: $7b
    ldh [rSC], a                                  ; $69b1: $e0 $02
    rst $38                                       ; $69b3: $ff
    and $08                                       ; $69b4: $e6 $08
    ld a, l                                       ; $69b6: $7d
    ret nz                                        ; $69b7: $c0

    cp l                                          ; $69b8: $bd
    ret nz                                        ; $69b9: $c0

    db $e4                                        ; $69ba: $e4

jr_06e_69bb:
    ld l, [hl]                                    ; $69bb: $6e
    xor c                                         ; $69bc: $a9
    ld h, e                                       ; $69bd: $63
    ld c, l                                       ; $69be: $4d
    add c                                         ; $69bf: $81
    add $a0                                       ; $69c0: $c6 $a0
    cp $81                                        ; $69c2: $fe $81
    ld [c], a                                     ; $69c4: $e2
    ld [$4646], sp                                ; $69c5: $08 $46 $46
    ld c, a                                       ; $69c8: $4f
    ld b, h                                       ; $69c9: $44
    ld b, l                                       ; $69ca: $45
    ld b, a                                       ; $69cb: $47
    push af                                       ; $69cc: $f5
    ld h, b                                       ; $69cd: $60
    ld bc, $55e0                                  ; $69ce: $01 $e0 $55
    ret nz                                        ; $69d1: $c0

    jp hl                                         ; $69d2: $e9


    ld c, $05                                     ; $69d3: $0e $05
    xor a                                         ; $69d5: $af
    xor [hl]                                      ; $69d6: $ae
    ld h, c                                       ; $69d7: $61
    sbc [hl]                                      ; $69d8: $9e
    cp [hl]                                       ; $69d9: $be
    and [hl]                                      ; $69da: $a6
    ld hl, sp-$52                                 ; $69db: $f8 $ae
    ld [bc], a                                    ; $69dd: $02
    and $52                                       ; $69de: $e6 $52
    and b                                         ; $69e0: $a0
    ld c, a                                       ; $69e1: $4f
    ld e, h                                       ; $69e2: $5c
    pop bc                                        ; $69e3: $c1
    ld [c], a                                     ; $69e4: $e2
    jr jr_06e_6967                                ; $69e5: $18 $80

    ret nz                                        ; $69e7: $c0

    add b                                         ; $69e8: $80
    add sp, -$04                                  ; $69e9: $e8 $fc
    and b                                         ; $69eb: $a0
    xor a                                         ; $69ec: $af
    sbc [hl]                                      ; $69ed: $9e
    db $e4                                        ; $69ee: $e4
    ld h, c                                       ; $69ef: $61
    ld sp, $bb64                                  ; $69f0: $31 $64 $bb
    call z, $9e39                                 ; $69f3: $cc $39 $9e
    ld [de], a                                    ; $69f6: $12
    and l                                         ; $69f7: $a5
    ld de, $4aa0                                  ; $69f8: $11 $a0 $4a
    ld d, l                                       ; $69fb: $55
    ld c, l                                       ; $69fc: $4d
    pop bc                                        ; $69fd: $c1
    pop hl                                        ; $69fe: $e1
    add b                                         ; $69ff: $80

Call_06e_6a00:
    ret nz                                        ; $6a00: $c0

    nop                                           ; $6a01: $00
    ccf                                           ; $6a02: $3f
    push hl                                       ; $6a03: $e5
    jr z, @-$3d                                   ; $6a04: $28 $c1

    ld a, e                                       ; $6a06: $7b
    and d                                         ; $6a07: $a2
    ld sp, $c368                                  ; $6a08: $31 $68 $c3
    ld b, c                                       ; $6a0b: $41
    pop bc                                        ; $6a0c: $c1
    ld h, a                                       ; $6a0d: $67
    inc b                                         ; $6a0e: $04
    jp $a095                                      ; $6a0f: $c3 $95 $a0


    rra                                           ; $6a12: $1f
    nop                                           ; $6a13: $00
    ld bc, $150e                                  ; $6a14: $01 $0e $15
    ld d, [hl]                                    ; $6a17: $56
    add c                                         ; $6a18: $81
    ld [c], a                                     ; $6a19: $e2
    add b                                         ; $6a1a: $80
    add sp, -$49                                  ; $6a1b: $e8 $b7
    add b                                         ; $6a1d: $80
    inc c                                         ; $6a1e: $0c
    inc l                                         ; $6a1f: $2c
    and c                                         ; $6a20: $a1
    ret nz                                        ; $6a21: $c0

    ldh [$e2], a                                  ; $6a22: $e0 $e2
    db $e3                                        ; $6a24: $e3
    or h                                          ; $6a25: $b4
    ld h, [hl]                                    ; $6a26: $66
    ld b, a                                       ; $6a27: $47
    ld h, d                                       ; $6a28: $62
    push bc                                       ; $6a29: $c5
    ld b, c                                       ; $6a2a: $41
    adc [hl]                                      ; $6a2b: $8e
    ld b, c                                       ; $6a2c: $41
    rst $20                                       ; $6a2d: $e7
    sbc [hl]                                      ; $6a2e: $9e
    ld b, [hl]                                    ; $6a2f: $46
    ld a, [bc]                                    ; $6a30: $0a
    dec d                                         ; $6a31: $15
    and d                                         ; $6a32: $a2
    ld d, e                                       ; $6a33: $53
    and b                                         ; $6a34: $a0
    ld [bc], a                                    ; $6a35: $02
    ld b, [hl]                                    ; $6a36: $46
    ld d, l                                       ; $6a37: $55
    jr jr_06e_69bb                                ; $6a38: $18 $81

    db $e3                                        ; $6a3a: $e3
    ld b, b                                       ; $6a3b: $40
    and $ad                                       ; $6a3c: $e6 $ad
    add d                                         ; $6a3e: $82
    sbc b                                         ; $6a3f: $98
    ld a, [bc]                                    ; $6a40: $0a
    cp d                                          ; $6a41: $ba
    add e                                         ; $6a42: $83
    ld a, [$c58b]                                 ; $6a43: $fa $8b $c5
    ld b, c                                       ; $6a46: $41
    db $fc                                        ; $6a47: $fc
    adc [hl]                                      ; $6a48: $8e
    ld b, b                                       ; $6a49: $40
    adc h                                         ; $6a4a: $8c
    ld h, b                                       ; $6a4b: $60
    ld a, [bc]                                    ; $6a4c: $0a
    sbc b                                         ; $6a4d: $98
    sbc b                                         ; $6a4e: $98
    sub a                                         ; $6a4f: $97
    sub a                                         ; $6a50: $97
    sub a                                         ; $6a51: $97
    ld e, $8f                                     ; $6a52: $1e $8f
    add b                                         ; $6a54: $80
    ld [bc], a                                    ; $6a55: $02
    ld b, [hl]                                    ; $6a56: $46
    ld b, l                                       ; $6a57: $45
    ld d, d                                       ; $6a58: $52
    ld b, b                                       ; $6a59: $40
    db $e3                                        ; $6a5a: $e3
    ld a, [hl]                                    ; $6a5b: $7e
    call nz, $81ec                                ; $6a5c: $c4 $ec $81
    ld c, $fb                                     ; $6a5f: $0e $fb
    add d                                         ; $6a61: $82
    jp $9f9c                                      ; $6a62: $c3 $9c $9f


    ld c, a                                       ; $6a65: $4f
    ld l, l                                       ; $6a66: $6d
    push bc                                       ; $6a67: $c5
    ld b, c                                       ; $6a68: $41
    adc [hl]                                      ; $6a69: $8e
    ld b, b                                       ; $6a6a: $40
    ld bc, $f7e2                                  ; $6a6b: $01 $e2 $f7
    sbc b                                         ; $6a6e: $98
    sub a                                         ; $6a6f: $97
    sub [hl]                                      ; $6a70: $96
    cp a                                          ; $6a71: $bf
    pop hl                                        ; $6a72: $e1
    rrca                                          ; $6a73: $0f
    inc b                                         ; $6a74: $04
    inc bc                                        ; $6a75: $03
    ld d, b                                       ; $6a76: $50
    dec sp                                        ; $6a77: $3b
    ld d, e                                       ; $6a78: $53
    ld d, h                                       ; $6a79: $54
    add c                                         ; $6a7a: $81
    and b                                         ; $6a7b: $a0
    ld d, h                                       ; $6a7c: $54
    ld e, c                                       ; $6a7d: $59
    inc bc                                        ; $6a7e: $03
    cp $40                                        ; $6a7f: $fe $40
    add d                                         ; $6a81: $82
    and b                                         ; $6a82: $a0
    ld a, [hl]                                    ; $6a83: $7e
    cp c                                          ; $6a84: $b9
    ld h, c                                       ; $6a85: $61
    nop                                           ; $6a86: $00
    ld bc, $4608                                  ; $6a87: $01 $08 $46
    add hl, sp                                    ; $6a8a: $39
    ld [hl], $b9                                  ; $6a8b: $36 $b9
    sub d                                         ; $6a8d: $92
    ld [hl], h                                    ; $6a8e: $74
    adc [hl]                                      ; $6a8f: $8e
    ld b, b                                       ; $6a90: $40
    pop bc                                        ; $6a91: $c1
    ret nz                                        ; $6a92: $c0

    ld [$e081], sp                                ; $6a93: $08 $81 $e0
    sub [hl]                                      ; $6a96: $96
    sub [hl]                                      ; $6a97: $96
    sub [hl]                                      ; $6a98: $96
    ld a, [hl]                                    ; $6a99: $7e
    ldh [rIE], a                                  ; $6a9a: $e0 $ff
    dec c                                         ; $6a9c: $0d
    ld [bc], a                                    ; $6a9d: $02
    ld e, a                                       ; $6a9e: $5f
    ld d, l                                       ; $6a9f: $55
    ld b, l                                       ; $6aa0: $45
    ld e, e                                       ; $6aa1: $5b
    ld e, e                                       ; $6aa2: $5b
    ld d, l                                       ; $6aa3: $55
    rst $08                                       ; $6aa4: $cf
    ld d, d                                       ; $6aa5: $52
    dec d                                         ; $6aa6: $15
    rrca                                          ; $6aa7: $0f
    dec c                                         ; $6aa8: $0d
    ret nz                                        ; $6aa9: $c0

    add d                                         ; $6aaa: $82
    and a                                         ; $6aab: $a7
    jp Jump_06e_4608                              ; $6aac: $c3 $08 $46


    rst $00                                       ; $6aaf: $c7
    ld a, $35                                     ; $6ab0: $3e $35
    add hl, sp                                    ; $6ab2: $39
    cp c                                          ; $6ab3: $b9
    adc h                                         ; $6ab4: $8c
    xor d                                         ; $6ab5: $aa
    dec h                                         ; $6ab6: $25
    ret nz                                        ; $6ab7: $c0

    db $e3                                        ; $6ab8: $e3
    sub [hl]                                      ; $6ab9: $96
    sub l                                         ; $6aba: $95
    call c, $e0c1                                 ; $6abb: $dc $c1 $e0
    add c                                         ; $6abe: $81
    ldh [rLYC], a                                 ; $6abf: $e0 $45
    ld c, e                                       ; $6ac1: $4b
    ld e, d                                       ; $6ac2: $5a
    ld b, d                                       ; $6ac3: $42
    ld b, b                                       ; $6ac4: $40
    ld b, h                                       ; $6ac5: $44
    ld c, l                                       ; $6ac6: $4d
    rst $20                                       ; $6ac7: $e7
    ld d, d                                       ; $6ac8: $52
    ld [bc], a                                    ; $6ac9: $02
    rrca                                          ; $6aca: $0f
    ccf                                           ; $6acb: $3f
    add d                                         ; $6acc: $82
    add sp, -$3d                                  ; $6acd: $e8 $c3
    ld [$3a45], sp                                ; $6acf: $08 $45 $3a
    ld h, a                                       ; $6ad2: $67
    dec [hl]                                      ; $6ad3: $35
    ld a, [hl-]                                   ; $6ad4: $3a
    ld b, l                                       ; $6ad5: $45
    cp c                                          ; $6ad6: $b9
    add h                                         ; $6ad7: $84
    or $2c                                        ; $6ad8: $f6 $2c
    sbc [hl]                                      ; $6ada: $9e
    xor [hl]                                      ; $6adb: $ae
    add b                                         ; $6adc: $80
    db $e4                                        ; $6add: $e4
    ld l, e                                       ; $6ade: $6b
    sub a                                         ; $6adf: $97
    sbc b                                         ; $6ae0: $98
    ld b, [hl]                                    ; $6ae1: $46
    ld h, c                                       ; $6ae2: $61
    ld c, a                                       ; $6ae3: $4f
    ret nz                                        ; $6ae4: $c0

    db $e3                                        ; $6ae5: $e3
    ld h, c                                       ; $6ae6: $61
    ld d, l                                       ; $6ae7: $55
    add a                                         ; $6ae8: $87
    pop bc                                        ; $6ae9: $c1
    cp $e8                                        ; $6aea: $fe $e8
    call nz, Call_000_0898                        ; $6aec: $c4 $98 $08
    add hl, sp                                    ; $6aef: $39
    xor h                                         ; $6af0: $ac
    dec [hl]                                      ; $6af1: $35
    inc a                                         ; $6af2: $3c
    ld b, h                                       ; $6af3: $44
    call z, $86b9                                 ; $6af4: $cc $b9 $86
    cp e                                          ; $6af7: $bb
    ld a, [hl+]                                   ; $6af8: $2a
    sbc [hl]                                      ; $6af9: $9e
    xor a                                         ; $6afa: $af
    ld e, l                                       ; $6afb: $5d
    and b                                         ; $6afc: $a0
    nop                                           ; $6afd: $00
    pop hl                                        ; $6afe: $e1
    sbc b                                         ; $6aff: $98
    sbc c                                         ; $6b00: $99

jr_06e_6b01:
    pop bc                                        ; $6b01: $c1
    inc c                                         ; $6b02: $0c
    ld b, [hl]                                    ; $6b03: $46
    ld h, b                                       ; $6b04: $60
    add b                                         ; $6b05: $80
    ld [c], a                                     ; $6b06: $e2
    ld a, $81                                     ; $6b07: $3e $81
    cpl                                           ; $6b09: $2f
    add d                                         ; $6b0a: $82
    add b                                         ; $6b0b: $80
    push hl                                       ; $6b0c: $e5
    add hl, sp                                    ; $6b0d: $39

Jump_06e_6b0e:
    xor l                                         ; $6b0e: $ad
    ld bc, $3f35                                  ; $6b0f: $01 $35 $3f
    pop hl                                        ; $6b12: $e1
    sbc a                                         ; $6b13: $9f
    jr nz, @+$43                                  ; $6b14: $20 $41

    ld b, [hl]                                    ; $6b16: $46
    db $d3                                        ; $6b17: $d3
    ld [bc], a                                    ; $6b18: $02
    ld b, c                                       ; $6b19: $41
    jr nz, jr_06e_6b1c                            ; $6b1a: $20 $00

jr_06e_6b1c:
    ld [c], a                                     ; $6b1c: $e2
    add b                                         ; $6b1d: $80
    jp nz, $9905                                  ; $6b1e: $c2 $05 $99

    push bc                                       ; $6b21: $c5
    ld h, b                                       ; $6b22: $60
    ld b, a                                       ; $6b23: $47
    ld b, l                                       ; $6b24: $45
    and c                                         ; $6b25: $a1
    cp a                                          ; $6b26: $bf
    ld h, b                                       ; $6b27: $60
    ld a, $80                                     ; $6b28: $3e $80
    ld a, $60                                     ; $6b2a: $3e $60
    nop                                           ; $6b2c: $00
    and $1e                                       ; $6b2d: $e6 $1e
    ld b, b                                       ; $6b2f: $40
    ldh [$35], a                                  ; $6b30: $e0 $35
    add hl, sp                                    ; $6b32: $39
    ld b, [hl]                                    ; $6b33: $46
    sbc [hl]                                      ; $6b34: $9e
    sbc a                                         ; $6b35: $9f
    nop                                           ; $6b36: $00
    adc c                                         ; $6b37: $89
    ld h, $d3                                     ; $6b38: $26 $d3
    nop                                           ; $6b3a: $00
    db $e3                                        ; $6b3b: $e3
    ld [c], a                                     ; $6b3c: $e2
    db $e3                                        ; $6b3d: $e3
    ld b, c                                       ; $6b3e: $41
    jr nz, jr_06e_6b01                            ; $6b3f: $20 $c0

    pop bc                                        ; $6b41: $c1
    dec d                                         ; $6b42: $15
    ld h, d                                       ; $6b43: $62
    sbc c                                         ; $6b44: $99
    ld c, $0c                                     ; $6b45: $0e $0c
    add a                                         ; $6b47: $87
    ld c, b                                       ; $6b48: $48
    ld c, c                                       ; $6b49: $49
    ld h, b                                       ; $6b4a: $60
    ld b, b                                       ; $6b4b: $40
    add b                                         ; $6b4c: $80
    db $fd                                        ; $6b4d: $fd
    add e                                         ; $6b4e: $83
    ret nz                                        ; $6b4f: $c0

    pop hl                                        ; $6b50: $e1
    jp hl                                         ; $6b51: $e9


    and h                                         ; $6b52: $a4
    sbc c                                         ; $6b53: $99
    dec de                                        ; $6b54: $1b
    ld [$00ae], sp                                ; $6b55: $08 $ae $00
    pop hl                                        ; $6b58: $e1
    ld b, [hl]                                    ; $6b59: $46
    sbc [hl]                                      ; $6b5a: $9e
    sbc a                                         ; $6b5b: $9f
    nop                                           ; $6b5c: $00
    adc c                                         ; $6b5d: $89
    ld h, $d3                                     ; $6b5e: $26 $d3
    nop                                           ; $6b60: $00
    jr c, jr_06e_6ba0                             ; $6b61: $38 $3d

    ld [hl+], a                                   ; $6b63: $22
    ld b, c                                       ; $6b64: $41
    and h                                         ; $6b65: $a4
    dec d                                         ; $6b66: $15
    ld h, c                                       ; $6b67: $61
    ld b, a                                       ; $6b68: $47
    ld h, b                                       ; $6b69: $60
    ld d, h                                       ; $6b6a: $54
    ld b, [hl]                                    ; $6b6b: $46

Jump_06e_6b6c:
    add b                                         ; $6b6c: $80
    add c                                         ; $6b6d: $81
    db $e3                                        ; $6b6e: $e3
    ldh a, [rLCDC]                                ; $6b6f: $f0 $40
    ldh [$ea], a                                  ; $6b71: $e0 $ea
    and d                                         ; $6b73: $a2
    ld bc, $7ce1                                  ; $6b74: $01 $e1 $7c
    ld h, b                                       ; $6b77: $60
    inc a                                         ; $6b78: $3c
    dec [hl]                                      ; $6b79: $35
    ld a, [hl-]                                   ; $6b7a: $3a
    xor [hl]                                      ; $6b7b: $ae
    sbc c                                         ; $6b7c: $99
    ld b, [hl]                                    ; $6b7d: $46
    cp e                                          ; $6b7e: $bb
    adc d                                         ; $6b7f: $8a
    db $d3                                        ; $6b80: $d3
    nop                                           ; $6b81: $00
    and $e7                                       ; $6b82: $e6 $e7
    jr z, @+$62                                   ; $6b84: $28 $60

    ld bc, $0aa0                                  ; $6b86: $01 $a0 $0a
    ld b, $d6                                     ; $6b89: $06 $d6
    ld b, d                                       ; $6b8b: $42
    sbc c                                         ; $6b8c: $99
    ld b, $08                                     ; $6b8d: $06 $08
    add c                                         ; $6b8f: $81
    call nz, $bf01                                ; $6b90: $c4 $01 $bf
    ld h, b                                       ; $6b93: $60
    ret nz                                        ; $6b94: $c0

    ret nz                                        ; $6b95: $c0

    dec hl                                        ; $6b96: $2b
    call nz, $a63e                                ; $6b97: $c4 $3e $a6
    and c                                         ; $6b9a: $a1
    ld a, [bc]                                    ; $6b9b: $0a
    add hl, sp                                    ; $6b9c: $39
    dec [hl]                                      ; $6b9d: $35
    dec [hl]                                      ; $6b9e: $35
    inc a                                         ; $6b9f: $3c

jr_06e_6ba0:
    jr c, jr_06e_6c02                             ; $6ba0: $38 $60

    ld c, h                                       ; $6ba2: $4c
    ld b, a                                       ; $6ba3: $47
    db $e4                                        ; $6ba4: $e4
    jr c, @+$46                                   ; $6ba5: $38 $44

    add b                                         ; $6ba7: $80
    and c                                         ; $6ba8: $a1
    ret nc                                        ; $6ba9: $d0

    add b                                         ; $6baa: $80
    and c                                         ; $6bab: $a1
    ret z                                         ; $6bac: $c8

    jr nz, @+$09                                  ; $6bad: $20 $07

    rlca                                          ; $6baf: $07
    dec d                                         ; $6bb0: $15
    rst $30                                       ; $6bb1: $f7
    ld b, [hl]                                    ; $6bb2: $46
    ld b, l                                       ; $6bb3: $45
    ld d, b                                       ; $6bb4: $50
    add $60                                       ; $6bb5: $c6 $60
    ld b, l                                       ; $6bb7: $45
    ld d, c                                       ; $6bb8: $51
    ld e, [hl]                                    ; $6bb9: $5e
    ld h, c                                       ; $6bba: $61
    ld a, b                                       ; $6bbb: $78

Call_06e_6bbc:
    ld b, b                                       ; $6bbc: $40
    ret nz                                        ; $6bbd: $c0

    xor e                                         ; $6bbe: $ab
    and b                                         ; $6bbf: $a0
    jp hl                                         ; $6bc0: $e9


    and l                                         ; $6bc1: $a5
    ld a, [bc]                                    ; $6bc2: $0a
    ld a, [hl-]                                   ; $6bc3: $3a
    dec [hl]                                      ; $6bc4: $35
    jp $e000                                      ; $6bc5: $c3 $00 $e0


    sub b                                         ; $6bc8: $90
    ld [hl-], a                                   ; $6bc9: $32
    ld [hl+], a                                   ; $6bca: $22
    ld a, [$7e46]                                 ; $6bcb: $fa $46 $7e
    ld b, c                                       ; $6bce: $41
    push bc                                       ; $6bcf: $c5
    ld hl, $c2d2                                  ; $6bd0: $21 $d2 $c2
    ld h, c                                       ; $6bd3: $61
    call c, Call_06e_44a0                         ; $6bd4: $dc $a0 $44
    cp a                                          ; $6bd7: $bf
    ld c, [hl]                                    ; $6bd8: $4e
    ld c, [hl]                                    ; $6bd9: $4e
    ld c, [hl]                                    ; $6bda: $4e
    ld c, c                                       ; $6bdb: $49
    ld e, l                                       ; $6bdc: $5d
    ld d, d                                       ; $6bdd: $52
    jp nz, Jump_06e_4a20                          ; $6bde: $c2 $20 $4a

    ld h, [hl]                                    ; $6be1: $66
    pop bc                                        ; $6be2: $c1
    pop hl                                        ; $6be3: $e1
    ld bc, $f200                                  ; $6be4: $01 $00 $f2
    jr nz, jr_06e_6c28                            ; $6be7: $20 $3f

    db $e3                                        ; $6be9: $e3
    ld c, $05                                     ; $6bea: $0e $05
    pop bc                                        ; $6bec: $c1
    ret nz                                        ; $6bed: $c0

    add d                                         ; $6bee: $82
    rst $38                                       ; $6bef: $ff
    and b                                         ; $6bf0: $a0
    xor [hl]                                      ; $6bf1: $ae
    ld a, d                                       ; $6bf2: $7a
    add d                                         ; $6bf3: $82
    cp b                                          ; $6bf4: $b8
    ld b, l                                       ; $6bf5: $45
    ld b, e                                       ; $6bf6: $43
    ld hl, $21c5                                  ; $6bf7: $21 $c5 $21
    rst $38                                       ; $6bfa: $ff
    and b                                         ; $6bfb: $a0
    ld b, $e6                                     ; $6bfc: $06 $e6
    adc $00                                       ; $6bfe: $ce $00
    rrca                                          ; $6c00: $0f
    ld [bc], a                                    ; $6c01: $02

jr_06e_6c02:
    ld b, [hl]                                    ; $6c02: $46
    and d                                         ; $6c03: $a2
    ld b, [hl]                                    ; $6c04: $46
    add c                                         ; $6c05: $81
    ld c, a                                       ; $6c06: $4f
    ld d, d                                       ; $6c07: $52
    ld b, l                                       ; $6c08: $45
    cp c                                          ; $6c09: $b9
    dec bc                                        ; $6c0a: $0b
    ld b, h                                       ; $6c0b: $44
    and e                                         ; $6c0c: $a3
    xor c                                         ; $6c0d: $a9
    add e                                         ; $6c0e: $83
    ld b, $ae                                     ; $6c0f: $06 $ae
    ld a, $c0                                     ; $6c11: $3e $c0
    ld [c], a                                     ; $6c13: $e2
    xor a                                         ; $6c14: $af
    jr nc, jr_06e_6c96                            ; $6c15: $30 $7f

    pop bc                                        ; $6c17: $c1
    ld a, l                                       ; $6c18: $7d
    ld h, $f7                                     ; $6c19: $26 $f7
    ld [bc], a                                    ; $6c1b: $02
    rst $38                                       ; $6c1c: $ff
    pop bc                                        ; $6c1d: $c1
    xor a                                         ; $6c1e: $af
    xor [hl]                                      ; $6c1f: $ae
    ccf                                           ; $6c20: $3f
    add d                                         ; $6c21: $82
    inc bc                                        ; $6c22: $03
    and b                                         ; $6c23: $a0
    rst $00                                       ; $6c24: $c7
    ld d, e                                       ; $6c25: $53
    ld e, c                                       ; $6c26: $59
    ld e, c                                       ; $6c27: $59

jr_06e_6c28:
    cp a                                          ; $6c28: $bf
    jp nz, $e13b                                  ; $6c29: $c2 $3b $e1

jr_06e_6c2c:
    or b                                          ; $6c2c: $b0
    dec h                                         ; $6c2d: $25
    sbc c                                         ; $6c2e: $99
    sbc d                                         ; $6c2f: $9a
    inc e                                         ; $6c30: $1c
    add b                                         ; $6c31: $80
    ld h, b                                       ; $6c32: $60
    ld b, c                                       ; $6c33: $41
    ret nz                                        ; $6c34: $c0

    jp Jump_06e_4639                              ; $6c35: $c3 $39 $46


    ld a, a                                       ; $6c38: $7f
    jp nz, Jump_000_2b83                          ; $6c39: $c2 $83 $2b

    rst $38                                       ; $6c3c: $ff
    jp nz, $afc1                                  ; $6c3d: $c2 $c1 $af

    ld e, c                                       ; $6c40: $59
    add h                                         ; $6c41: $84
    ld c, [hl]                                    ; $6c42: $4e
    ld bc, $6407                                  ; $6c43: $01 $07 $64
    cp h                                          ; $6c46: $bc
    rlca                                          ; $6c47: $07
    cp e                                          ; $6c48: $bb
    nop                                           ; $6c49: $00
    scf                                           ; $6c4a: $37
    jr c, jr_06e_6c8b                             ; $6c4b: $38 $3e

    ld b, c                                       ; $6c4d: $41
    ldh [$3c], a                                  ; $6c4e: $e0 $3c
    ld b, h                                       ; $6c50: $44
    ld b, [hl]                                    ; $6c51: $46
    ret nc                                        ; $6c52: $d0

    sbc a                                         ; $6c53: $9f
    push de                                       ; $6c54: $d5
    nop                                           ; $6c55: $00
    cp a                                          ; $6c56: $bf
    and l                                         ; $6c57: $a5
    inc c                                         ; $6c58: $0c
    ld a, [c]                                     ; $6c59: $f2
    inc hl                                        ; $6c5a: $23
    call nz, $d301                                ; $6c5b: $c4 $01 $d3
    ret nc                                        ; $6c5e: $d0

    ld d, a                                       ; $6c5f: $57
    add d                                         ; $6c60: $82
    rla                                           ; $6c61: $17
    pop bc                                        ; $6c62: $c1
    cp a                                          ; $6c63: $bf
    jr nz, jr_06e_6c2c                            ; $6c64: $20 $c6

    ld b, a                                       ; $6c66: $47
    db $e4                                        ; $6c67: $e4
    push bc                                       ; $6c68: $c5
    ld h, d                                       ; $6c69: $62
    ld a, h                                       ; $6c6a: $7c
    nop                                           ; $6c6b: $00

Call_06e_6c6c:
    ld [hl], $03                                  ; $6c6c: $36 $03
    ldh [rP1], a                                  ; $6c6e: $e0 $00
    ldh [rLCDC], a                                ; $6c70: $e0 $40
    ret nc                                        ; $6c72: $d0

    db $d3                                        ; $6c73: $d3
    ret nz                                        ; $6c74: $c0

    rlc c                                         ; $6c75: $cb $01
    add a                                         ; $6c77: $87
    ld h, a                                       ; $6c78: $67
    or b                                          ; $6c79: $b0
    ld hl, $02c4                                  ; $6c7a: $21 $c4 $02
    cp a                                          ; $6c7d: $bf
    ld [c], a                                     ; $6c7e: $e2
    sub e                                         ; $6c7f: $93
    add d                                         ; $6c80: $82
    ld [bc], a                                    ; $6c81: $02
    dec bc                                        ; $6c82: $0b
    dec a                                         ; $6c83: $3d
    dec bc                                        ; $6c84: $0b
    add [hl]                                      ; $6c85: $86
    ld b, e                                       ; $6c86: $43
    dec bc                                        ; $6c87: $0b
    dec bc                                        ; $6c88: $0b
    ld [bc], a                                    ; $6c89: $02
    rlca                                          ; $6c8a: $07

jr_06e_6c8b:
    push bc                                       ; $6c8b: $c5
    ld h, d                                       ; $6c8c: $62
    ld sp, $3e00                                  ; $6c8d: $31 $00 $3e
    ld b, e                                       ; $6c90: $43
    pop hl                                        ; $6c91: $e1
    dec [hl]                                      ; $6c92: $35
    jr c, jr_06e_6ccc                             ; $6c93: $38 $37

    ld b, l                                       ; $6c95: $45

jr_06e_6c96:
    jp nc, $223a                                  ; $6c96: $d2 $3a $22

    add a                                         ; $6c99: $87
    ld h, $78                                     ; $6c9a: $26 $78
    ld [hl], l                                    ; $6c9c: $75
    ld bc, $00fb                                  ; $6c9d: $01 $fb $00
    rst $30                                       ; $6ca0: $f7
    ld bc, $d1d3                                  ; $6ca1: $01 $d3 $d1
    ret nc                                        ; $6ca4: $d0

    jp Jump_000_2253                              ; $6ca5: $c3 $53 $22


    ldh [$fa], a                                  ; $6ca8: $e0 $fa
    ret nz                                        ; $6caa: $c0

    ld [$0520], sp                                ; $6cab: $08 $20 $05
    jr nz, jr_06e_6cb7                            ; $6cae: $20 $07

    add b                                         ; $6cb0: $80
    cp a                                          ; $6cb1: $bf
    nop                                           ; $6cb2: $00
    sbc b                                         ; $6cb3: $98
    sbc c                                         ; $6cb4: $99
    dec c                                         ; $6cb5: $0d
    rst $30                                       ; $6cb6: $f7

jr_06e_6cb7:
    ld [bc], a                                    ; $6cb7: $02
    ld b, [hl]                                    ; $6cb8: $46
    jp $c003                                      ; $6cb9: $c3 $03 $c0


    dec [hl]                                      ; $6cbc: $35
    ld [hl], $45                                  ; $6cbd: $36 $45

jr_06e_6cbf:
    jp Jump_000_0200                              ; $6cbf: $c3 $00 $02


    ldh a, [$b6]                                  ; $6cc2: $f0 $b6
    ld hl, $23b2                                  ; $6cc4: $21 $b2 $23
    inc a                                         ; $6cc7: $3c
    pop hl                                        ; $6cc8: $e1
    ld de, $3920                                  ; $6cc9: $11 $20 $39

jr_06e_6ccc:
    ld h, e                                       ; $6ccc: $63
    ld c, e                                       ; $6ccd: $4b
    and e                                         ; $6cce: $a3
    ld l, [hl]                                    ; $6ccf: $6e
    ld b, c                                       ; $6cd0: $41
    ld [bc], a                                    ; $6cd1: $02
    rst $28                                       ; $6cd2: $ef
    pop bc                                        ; $6cd3: $c1
    ld b, l                                       ; $6cd4: $45

jr_06e_6cd5:
    ld b, b                                       ; $6cd5: $40
    ldh [$03], a                                  ; $6cd6: $e0 $03
    ldh [rSC], a                                  ; $6cd8: $e0 $02
    db $e3                                        ; $6cda: $e3
    ld a, l                                       ; $6cdb: $7d
    ld l, l                                       ; $6cdc: $6d
    db $fd                                        ; $6cdd: $fd
    add d                                         ; $6cde: $82
    cp a                                          ; $6cdf: $bf
    db $e4                                        ; $6ce0: $e4

Jump_06e_6ce1:
    pop de                                        ; $6ce1: $d1
    xor [hl]                                      ; $6ce2: $ae
    cp [hl]                                       ; $6ce3: $be
    ld [c], a                                     ; $6ce4: $e2
    ld c, c                                       ; $6ce5: $49
    add c                                         ; $6ce6: $81
    inc sp                                        ; $6ce7: $33
    ld h, d                                       ; $6ce8: $62
    sbc c                                         ; $6ce9: $99
    add e                                         ; $6cea: $83
    pop hl                                        ; $6ceb: $e1
    xor [hl]                                      ; $6cec: $ae
    ld b, l                                       ; $6ced: $45
    ld c, $c3                                     ; $6cee: $0e $c3
    jp nz, Jump_06e_4035                          ; $6cf0: $c2 $35 $40

    jp $e302                                      ; $6cf3: $c3 $02 $e3


    db $fc                                        ; $6cf6: $fc
    dec l                                         ; $6cf7: $2d
    inc [hl]                                      ; $6cf8: $34
    ld hl, $0363                                  ; $6cf9: $21 $63 $03
    adc a                                         ; $6cfc: $8f
    jp nc, $af46                                  ; $6cfd: $d2 $46 $af

    xor [hl]                                      ; $6d00: $ae
    ld c, l                                       ; $6d01: $4d
    ld h, c                                       ; $6d02: $61
    ld c, c                                       ; $6d03: $49
    ld bc, $c174                                  ; $6d04: $01 $74 $c1
    rlca                                          ; $6d07: $07
    ld l, l                                       ; $6d08: $6d
    rlca                                          ; $6d09: $07
    ld [hl], d                                    ; $6d0a: $72
    ret nz                                        ; $6d0b: $c0

    xor [hl]                                      ; $6d0c: $ae
    xor a                                         ; $6d0d: $af
    jp Jump_000_3cc3                              ; $6d0e: $c3 $c3 $3c


    ld b, h                                       ; $6d11: $44
    jp $60c0                                      ; $6d12: $c3 $c0 $60


    rst $00                                       ; $6d15: $c7
    ld l, h                                       ; $6d16: $6c
    inc [hl]                                      ; $6d17: $34
    ld h, $65                                     ; $6d18: $26 $65
    jr nz, jr_06e_6cd5                            ; $6d1a: $20 $b9

    nop                                           ; $6d1c: $00
    jr c, jr_06e_6cbf                             ; $6d1d: $38 $a0

    xor a                                         ; $6d1f: $af
    xor [hl]                                      ; $6d20: $ae
    cp [hl]                                       ; $6d21: $be
    ldh [$a8], a                                  ; $6d22: $e0 $a8
    call nz, $fec1                                ; $6d24: $c4 $c1 $fe
    pop hl                                        ; $6d27: $e1
    rst $30                                       ; $6d28: $f7
    add b                                         ; $6d29: $80
    xor [hl]                                      ; $6d2a: $ae
    pop bc                                        ; $6d2b: $c1
    db $e3                                        ; $6d2c: $e3
    jp $a184                                      ; $6d2d: $c3 $84 $a1


    jp nc, $fec0                                  ; $6d30: $d2 $c0 $fe

    ld b, $85                                     ; $6d33: $06 $85
    ld h, d                                       ; $6d35: $62
    inc [hl]                                      ; $6d36: $34
    add hl, bc                                    ; $6d37: $09
    db $fc                                        ; $6d38: $fc
    nop                                           ; $6d39: $00
    ld [hl+], a                                   ; $6d3a: $22
    ld hl, $c039                                  ; $6d3b: $21 $39 $c0
    xor a                                         ; $6d3e: $af
    xor a                                         ; $6d3f: $af
    xor a                                         ; $6d40: $af
    ld b, [hl]                                    ; $6d41: $46
    ld b, [hl]                                    ; $6d42: $46
    add $c7                                       ; $6d43: $c6 $c7
    db $fd                                        ; $6d45: $fd
    db $e4                                        ; $6d46: $e4
    ld b, [hl]                                    ; $6d47: $46
    pop af                                        ; $6d48: $f1
    ldh [rLCDC], a                                ; $6d49: $e0 $40
    add b                                         ; $6d4b: $80
    ld b, l                                       ; $6d4c: $45
    jp $8104                                      ; $6d4d: $c3 $04 $81


    ld b, e                                       ; $6d50: $43
    ld l, b                                       ; $6d51: $68
    ld a, [hl-]                                   ; $6d52: $3a
    xor c                                         ; $6d53: $a9
    db $fc                                        ; $6d54: $fc
    inc bc                                        ; $6d55: $03
    cp c                                          ; $6d56: $b9
    ld [bc], a                                    ; $6d57: $02
    ld hl, sp-$5f                                 ; $6d58: $f8 $a1
    ld b, [hl]                                    ; $6d5a: $46
    ld h, a                                       ; $6d5b: $67
    ld b, [hl]                                    ; $6d5c: $46
    call nz, $fdc5                                ; $6d5d: $c4 $c5 $fd
    db $e4                                        ; $6d60: $e4
    halt                                          ; $6d61: $76
    add c                                         ; $6d62: $81
    ld b, h                                       ; $6d63: $44
    inc a                                         ; $6d64: $3c
    inc b                                         ; $6d65: $04
    pop bc                                        ; $6d66: $c1
    ret nz                                        ; $6d67: $c0

    ld b, h                                       ; $6d68: $44
    ret nz                                        ; $6d69: $c0

    ret nz                                        ; $6d6a: $c0

    ldh [$fe], a                                  ; $6d6b: $e0 $fe

jr_06e_6d6d:
    dec bc                                        ; $6d6d: $0b
    rst $38                                       ; $6d6e: $ff
    ld b, l                                       ; $6d6f: $45
    rst $30                                       ; $6d70: $f7
    ld b, e                                       ; $6d71: $43
    ld h, a                                       ; $6d72: $67
    add e                                         ; $6d73: $83
    db $d3                                        ; $6d74: $d3
    pop de                                        ; $6d75: $d1
    or c                                          ; $6d76: $b1
    pop de                                        ; $6d77: $d1
    cp l                                          ; $6d78: $bd
    ld [c], a                                     ; $6d79: $e2
    add e                                         ; $6d7a: $83
    rlca                                          ; $6d7b: $07
    adc b                                         ; $6d7c: $88
    ld h, c                                       ; $6d7d: $61
    dec sp                                        ; $6d7e: $3b
    ld [hl], $e8                                  ; $6d7f: $36 $e8
    ret nz                                        ; $6d81: $c0

    ret nc                                        ; $6d82: $d0

    ld b, c                                       ; $6d83: $41
    sbc a                                         ; $6d84: $9f
    sub l                                         ; $6d85: $95
    ld bc, $a284                                  ; $6d86: $01 $84 $a2
    ld a, e                                       ; $6d89: $7b
    ld c, h                                       ; $6d8a: $4c
    ld [hl], $e9                                  ; $6d8b: $36 $e9
    ld a, h                                       ; $6d8d: $7c
    push hl                                       ; $6d8e: $e5
    ret nc                                        ; $6d8f: $d0

Jump_06e_6d90:
    or a                                          ; $6d90: $b7
    db $e4                                        ; $6d91: $e4
    rst $38                                       ; $6d92: $ff
    jp Jump_000_3946                              ; $6d93: $c3 $46 $39


    jr c, jr_06e_6dcf                             ; $6d96: $38 $37

    ld b, e                                       ; $6d98: $43
    ld b, l                                       ; $6d99: $45
    xor a                                         ; $6d9a: $af
    ld bc, $c246                                  ; $6d9b: $01 $46 $c2
    call nz, $c214                                ; $6d9e: $c4 $14 $c2
    ld [hl], $05                                  ; $6da1: $36 $05
    cp b                                          ; $6da3: $b8
    and $af                                       ; $6da4: $e6 $af
    inc bc                                        ; $6da6: $03
    xor c                                         ; $6da7: $a9
    db $e4                                        ; $6da8: $e4
    ld a, h                                       ; $6da9: $7c
    ldh [$0b], a                                  ; $6daa: $e0 $0b
    pop de                                        ; $6dac: $d1
    pop de                                        ; $6dad: $d1
    sub h                                         ; $6dae: $94
    ret nz                                        ; $6daf: $c0

    jp nc, $87f8                                  ; $6db0: $d2 $f8 $87

    or b                                          ; $6db3: $b0
    ldh [$83], a                                  ; $6db4: $e0 $83
    call nz, Call_06e_6243                        ; $6db6: $c4 $43 $62
    jr nz, jr_06e_6df1                            ; $6db9: $20 $36

    dec b                                         ; $6dbb: $05
    or d                                          ; $6dbc: $b2
    ld b, $b5                                     ; $6dbd: $06 $b5
    ld h, [hl]                                    ; $6dbf: $66
    inc h                                         ; $6dc0: $24
    ret                                           ; $6dc1: $c9


    ld l, c                                       ; $6dc2: $69
    ld h, b                                       ; $6dc3: $60
    jp $e37d                                      ; $6dc4: $c3 $7d $e3


    pop bc                                        ; $6dc7: $c1
    rst $20                                       ; $6dc8: $e7
    nop                                           ; $6dc9: $00
    jp z, Jump_06e_7b63                           ; $6dca: $ca $63 $7b

    ld h, l                                       ; $6dcd: $65
    push bc                                       ; $6dce: $c5

jr_06e_6dcf:
    add c                                         ; $6dcf: $81
    ld [hl], d                                    ; $6dd0: $72
    ld b, [hl]                                    ; $6dd1: $46
    and e                                         ; $6dd2: $a3
    dec b                                         ; $6dd3: $05
    xor a                                         ; $6dd4: $af
    nop                                           ; $6dd5: $00
    sbc a                                         ; $6dd6: $9f
    add d                                         ; $6dd7: $82
    ld [$0200], a                                 ; $6dd8: $ea $00 $02
    or a                                          ; $6ddb: $b7
    add h                                         ; $6ddc: $84
    jp $e543                                      ; $6ddd: $c3 $43 $e5


    ld [$48e3], sp                                ; $6de0: $08 $e3 $48
    rlca                                          ; $6de3: $07
    call nz, Call_000_3a61                        ; $6de4: $c4 $61 $3a
    ld b, $a3                                     ; $6de7: $06 $a3
    dec b                                         ; $6de9: $05
    nop                                           ; $6dea: $00
    jr nc, jr_06e_6d6d                            ; $6deb: $30 $80

    cpl                                           ; $6ded: $2f
    and c                                         ; $6dee: $a1
    xor e                                         ; $6def: $ab
    nop                                           ; $6df0: $00

jr_06e_6df1:
    push af                                       ; $6df1: $f5
    and d                                         ; $6df2: $a2
    ld a, h                                       ; $6df3: $7c
    pop hl                                        ; $6df4: $e1
    add $a5                                       ; $6df5: $c6 $a5
    ld d, b                                       ; $6df7: $50
    db $e3                                        ; $6df8: $e3
    cp d                                          ; $6df9: $ba
    dec bc                                        ; $6dfa: $0b
    nop                                           ; $6dfb: $00
    ld [hl], d                                    ; $6dfc: $72
    ld b, [hl]                                    ; $6dfd: $46
    ld l, c                                       ; $6dfe: $69
    ld b, l                                       ; $6dff: $45
    xor a                                         ; $6e00: $af
    nop                                           ; $6e01: $00
    ld e, [hl]                                    ; $6e02: $5e
    ld b, b                                       ; $6e03: $40
    pop bc                                        ; $6e04: $c1
    pop hl                                        ; $6e05: $e1
    ld [hl], d                                    ; $6e06: $72
    and c                                         ; $6e07: $a1
    or l                                          ; $6e08: $b5
    jp nz, $a187                                  ; $6e09: $c2 $87 $a1

    ret nz                                        ; $6e0c: $c0

    inc d                                         ; $6e0d: $14
    ld h, l                                       ; $6e0e: $65
    rst $38                                       ; $6e0f: $ff
    ei                                            ; $6e10: $fb
    ld l, [hl]                                    ; $6e11: $6e
    add b                                         ; $6e12: $80
    jr nc, @-$7c                                  ; $6e13: $30 $82

    pop bc                                        ; $6e15: $c1
    db $e3                                        ; $6e16: $e3
    or h                                          ; $6e17: $b4
    and b                                         ; $6e18: $a0
    ld b, [hl]                                    ; $6e19: $46
    xor [hl]                                      ; $6e1a: $ae
    sub b                                         ; $6e1b: $90
    add a                                         ; $6e1c: $87
    ret z                                         ; $6e1d: $c8

    ld [bc], a                                    ; $6e1e: $02
    xor l                                         ; $6e1f: $ad
    or a                                          ; $6e20: $b7
    ld b, l                                       ; $6e21: $45

jr_06e_6e22:
    xor a                                         ; $6e22: $af
    ld h, h                                       ; $6e23: $64
    call nc, $e0ff                                ; $6e24: $d4 $ff $e0
    call nz, $45c6                                ; $6e27: $c4 $c6 $45
    ld e, a                                       ; $6e2a: $5f
    xor a                                         ; $6e2b: $af
    ld b, e                                       ; $6e2c: $43
    xor a                                         ; $6e2d: $af
    ld b, e                                       ; $6e2e: $43
    ld b, e                                       ; $6e2f: $43
    ld b, [hl]                                    ; $6e30: $46
    ret nz                                        ; $6e31: $c0

    jp nc, $a34f                                  ; $6e32: $d2 $4f $a3

    ld [hl], b                                    ; $6e35: $70
    ld c, d                                       ; $6e36: $4a
    db $eb                                        ; $6e37: $eb
    ld a, l                                       ; $6e38: $7d
    xor e                                         ; $6e39: $ab
    xor a                                         ; $6e3a: $af
    ld h, a                                       ; $6e3b: $67
    add h                                         ; $6e3c: $84
    rst $00                                       ; $6e3d: $c7
    ld b, h                                       ; $6e3e: $44
    and h                                         ; $6e3f: $a4
    ld h, h                                       ; $6e40: $64
    rst $38                                       ; $6e41: $ff
    ldh [$03], a                                  ; $6e42: $e0 $03
    and l                                         ; $6e44: $a5
    ld b, h                                       ; $6e45: $44
    ld c, c                                       ; $6e46: $49
    and b                                         ; $6e47: $a0
    sub [hl]                                      ; $6e48: $96
    and a                                         ; $6e49: $a7
    rst $10                                       ; $6e4a: $d7
    xor c                                         ; $6e4b: $a9
    ld a, [hl-]                                   ; $6e4c: $3a
    ld h, c                                       ; $6e4d: $61

jr_06e_6e4e:
    ld a, h                                       ; $6e4e: $7c
    inc b                                         ; $6e4f: $04
    xor a                                         ; $6e50: $af
    ld l, d                                       ; $6e51: $6a
    db $fc                                        ; $6e52: $fc
    and e                                         ; $6e53: $a3
    and c                                         ; $6e54: $a1
    add h                                         ; $6e55: $84
    ret nz                                        ; $6e56: $c0

    ld b, b                                       ; $6e57: $40
    ld l, c                                       ; $6e58: $69
    and e                                         ; $6e59: $a3

jr_06e_6e5a:
    dec [hl]                                      ; $6e5a: $35
    dec [hl]                                      ; $6e5b: $35
    and e                                         ; $6e5c: $a3
    add c                                         ; $6e5d: $81
    ld l, d                                       ; $6e5e: $6a
    ret nz                                        ; $6e5f: $c0

    ld [c], a                                     ; $6e60: $e2
    dec c                                         ; $6e61: $0d
    or c                                          ; $6e62: $b1
    adc e                                         ; $6e63: $8b
    db $ec                                        ; $6e64: $ec
    ld l, l                                       ; $6e65: $6d
    and a                                         ; $6e66: $a7
    db $eb                                        ; $6e67: $eb
    and c                                         ; $6e68: $a1
    ld l, [hl]                                    ; $6e69: $6e
    jr nz, @+$42                                  ; $6e6a: $20 $40

    ld bc, $0c69                                  ; $6e6c: $01 $69 $0c
    ld h, c                                       ; $6e6f: $61
    ret nz                                        ; $6e70: $c0

    db $e3                                        ; $6e71: $e3
    ld c, h                                       ; $6e72: $4c
    ld b, [hl]                                    ; $6e73: $46
    jr nz, jr_06e_6e5a                            ; $6e74: $20 $e4

    ld a, [hl-]                                   ; $6e76: $3a
    ld h, l                                       ; $6e77: $65
    jr c, jr_06e_6e22                             ; $6e78: $38 $a8

    or l                                          ; $6e7a: $b5
    and h                                         ; $6e7b: $a4
    cp b                                          ; $6e7c: $b8
    and l                                         ; $6e7d: $a5
    ld b, b                                       ; $6e7e: $40
    or b                                          ; $6e7f: $b0
    ld b, c                                       ; $6e80: $41
    ld l, [hl]                                    ; $6e81: $6e
    jr nz, jr_06e_6ec8                            ; $6e82: $20 $44

    ld l, e                                       ; $6e84: $6b
    ld [hl], c                                    ; $6e85: $71
    rst $38                                       ; $6e86: $ff
    ldh [$6d], a                                  ; $6e87: $e0 $6d

jr_06e_6e89:
    add b                                         ; $6e89: $80
    ld b, b                                       ; $6e8a: $40
    ld [c], a                                     ; $6e8b: $e2
    ld c, h                                       ; $6e8c: $4c
    ld c, l                                       ; $6e8d: $4d
    adc b                                         ; $6e8e: $88
    and l                                         ; $6e8f: $a5

Jump_06e_6e90:
    inc [hl]                                      ; $6e90: $34
    ld c, b                                       ; $6e91: $48
    ld l, l                                       ; $6e92: $6d
    and h                                         ; $6e93: $a4
    dec [hl]                                      ; $6e94: $35
    ld h, b                                       ; $6e95: $60
    or b                                          ; $6e96: $b0
    ld b, h                                       ; $6e97: $44
    ld b, l                                       ; $6e98: $45
    dec de                                        ; $6e99: $1b
    ld b, e                                       ; $6e9a: $43
    ld b, c                                       ; $6e9b: $41
    pop bc                                        ; $6e9c: $c1
    ret nz                                        ; $6e9d: $c0

    ld b, e                                       ; $6e9e: $43
    ld b, l                                       ; $6e9f: $45
    ret                                           ; $6ea0: $c9


    add b                                         ; $6ea1: $80
    ld c, b                                       ; $6ea2: $48
    call z, $a597                                 ; $6ea3: $cc $97 $a5
    nop                                           ; $6ea6: $00
    jr c, jr_06e_6e4e                             ; $6ea7: $38 $a5

    adc e                                         ; $6ea9: $8b
    jp nz, $04e8                                  ; $6eaa: $c2 $e8 $04

    ld h, h                                       ; $6ead: $64
    ld b, $fb                                     ; $6eae: $06 $fb
    add d                                         ; $6eb0: $82
    rst $30                                       ; $6eb1: $f7
    add h                                         ; $6eb2: $84
    ld c, d                                       ; $6eb3: $4a
    ld l, h                                       ; $6eb4: $6c
    sub a                                         ; $6eb5: $97
    and l                                         ; $6eb6: $a5
    nop                                           ; $6eb7: $00
    jr nc, jr_06e_6e89                            ; $6eb8: $30 $cf

    ld h, d                                       ; $6eba: $62
    ld [hl], b                                    ; $6ebb: $70
    ld c, h                                       ; $6ebc: $4c
    ret nc                                        ; $6ebd: $d0

    ld [hl], $d3                                  ; $6ebe: $36 $d3
    rst $38                                       ; $6ec0: $ff
    rst $38                                       ; $6ec1: $ff
    ld bc, $00cc                                  ; $6ec2: $01 $cc $00
    nop                                           ; $6ec5: $00
    nop                                           ; $6ec6: $00
    pop bc                                        ; $6ec7: $c1

jr_06e_6ec8:
    nop                                           ; $6ec8: $00
    rst $38                                       ; $6ec9: $ff
    rst $38                                       ; $6eca: $ff
    rst $38                                       ; $6ecb: $ff
    rst $38                                       ; $6ecc: $ff
    rst $38                                       ; $6ecd: $ff
    rst $38                                       ; $6ece: $ff
    rst $38                                       ; $6ecf: $ff
    rst $38                                       ; $6ed0: $ff
    rst $38                                       ; $6ed1: $ff
    rst $38                                       ; $6ed2: $ff
    nop                                           ; $6ed3: $00
    nop                                           ; $6ed4: $00
    ld bc, $fe80                                  ; $6ed5: $01 $80 $fe
    ldh [rIE], a                                  ; $6ed8: $e0 $ff
    rst $38                                       ; $6eda: $ff
    rst $38                                       ; $6edb: $ff
    rst $38                                       ; $6edc: $ff
    rst $38                                       ; $6edd: $ff
    add sp, $00                                   ; $6ede: $e8 $00
    nop                                           ; $6ee0: $00
    nop                                           ; $6ee1: $00
    ld [bc], a                                    ; $6ee2: $02
    nop                                           ; $6ee3: $00
    inc e                                         ; $6ee4: $1c
    inc b                                         ; $6ee5: $04
    ld [bc], a                                    ; $6ee6: $02
    ld bc, $0d2b                                  ; $6ee7: $01 $2b $0d
    ld [bc], a                                    ; $6eea: $02
    ld [bc], a                                    ; $6eeb: $02
    ld l, $12                                     ; $6eec: $2e $12
    ld [bc], a                                    ; $6eee: $02
    inc bc                                        ; $6eef: $03
    cpl                                           ; $6ef0: $2f
    inc de                                        ; $6ef1: $13
    ld [bc], a                                    ; $6ef2: $02
    inc b                                         ; $6ef3: $04
    dec bc                                        ; $6ef4: $0b
    inc e                                         ; $6ef5: $1c
    ld [bc], a                                    ; $6ef6: $02
    dec b                                         ; $6ef7: $05
    jr nc, jr_06e_6f16                            ; $6ef8: $30 $1c

    ld [bc], a                                    ; $6efa: $02
    ld b, $2f                                     ; $6efb: $06 $2f
    rra                                           ; $6efd: $1f
    ld [bc], a                                    ; $6efe: $02
    rlca                                          ; $6eff: $07
    inc sp                                        ; $6f00: $33
    jr nz, @+$04                                  ; $6f01: $20 $02

    ld [$2335], sp                                ; $6f03: $08 $35 $23
    ld [bc], a                                    ; $6f06: $02
    add hl, bc                                    ; $6f07: $09
    inc c                                         ; $6f08: $0c
    inc h                                         ; $6f09: $24
    ld [bc], a                                    ; $6f0a: $02
    ld a, [bc]                                    ; $6f0b: $0a
    ld l, $24                                     ; $6f0c: $2e $24
    ld [bc], a                                    ; $6f0e: $02
    dec bc                                        ; $6f0f: $0b
    dec c                                         ; $6f10: $0d
    dec h                                         ; $6f11: $25
    ld [bc], a                                    ; $6f12: $02
    inc c                                         ; $6f13: $0c
    inc d                                         ; $6f14: $14
    dec hl                                        ; $6f15: $2b

jr_06e_6f16:
    ld [bc], a                                    ; $6f16: $02
    dec c                                         ; $6f17: $0d
    jr z, jr_06e_6f45                             ; $6f18: $28 $2b

    ld [bc], a                                    ; $6f1a: $02
    ld c, $15                                     ; $6f1b: $0e $15
    inc l                                         ; $6f1d: $2c
    ld [bc], a                                    ; $6f1e: $02
    rrca                                          ; $6f1f: $0f
    daa                                           ; $6f20: $27
    inc l                                         ; $6f21: $2c
    ld [bc], a                                    ; $6f22: $02
    db $10                                        ; $6f23: $10
    ld d, $2d                                     ; $6f24: $16 $2d
    ld [bc], a                                    ; $6f26: $02
    ld de, $2d17                                  ; $6f27: $11 $17 $2d
    ld [bc], a                                    ; $6f2a: $02
    ld [de], a                                    ; $6f2b: $12
    dec h                                         ; $6f2c: $25
    dec l                                         ; $6f2d: $2d
    ld [bc], a                                    ; $6f2e: $02
    inc de                                        ; $6f2f: $13
    ld h, $2d                                     ; $6f30: $26 $2d
    ld [bc], a                                    ; $6f32: $02
    inc d                                         ; $6f33: $14
    dec l                                         ; $6f34: $2d
    jr nc, jr_06e_6f39                            ; $6f35: $30 $02

    dec d                                         ; $6f37: $15
    ld [hl+], a                                   ; $6f38: $22

jr_06e_6f39:
    dec [hl]                                      ; $6f39: $35
    ld [bc], a                                    ; $6f3a: $02
    ld d, $21                                     ; $6f3b: $16 $21
    ld [hl], $02                                  ; $6f3d: $36 $02
    rla                                           ; $6f3f: $17
    inc hl                                        ; $6f40: $23
    ld [hl], $02                                  ; $6f41: $36 $02
    jr jr_06e_6f65                                ; $6f43: $18 $20

jr_06e_6f45:
    scf                                           ; $6f45: $37
    ld [bc], a                                    ; $6f46: $02
    add hl, de                                    ; $6f47: $19
    ld [hl+], a                                   ; $6f48: $22
    scf                                           ; $6f49: $37
    ld [bc], a                                    ; $6f4a: $02
    ld a, [de]                                    ; $6f4b: $1a
    daa                                           ; $6f4c: $27
    scf                                           ; $6f4d: $37
    rst $38                                       ; $6f4e: $ff
    rst $38                                       ; $6f4f: $ff
    rst $38                                       ; $6f50: $ff
    ld e, c                                       ; $6f51: $59
    ld l, a                                       ; $6f52: $6f
    ld b, c                                       ; $6f53: $41
    ld [hl], h                                    ; $6f54: $74
    dec h                                         ; $6f55: $25
    ld a, e                                       ; $6f56: $7b
    ld b, h                                       ; $6f57: $44
    ld a, e                                       ; $6f58: $7b
    ccf                                           ; $6f59: $3f
    ld c, $0e                                     ; $6f5a: $0e $0e
    dec c                                         ; $6f5c: $0d
    dec c                                         ; $6f5d: $0d
    dec c                                         ; $6f5e: $0d
    ld c, $ff                                     ; $6f5f: $0e $ff
    db $e3                                        ; $6f61: $e3
    or $e0                                        ; $6f62: $f6 $e0
    rst $18                                       ; $6f64: $df

jr_06e_6f65:
    ld c, l                                       ; $6f65: $4d
    ld c, l                                       ; $6f66: $4d
    dec c                                         ; $6f67: $0d
    ld c, l                                       ; $6f68: $4d
    inc c                                         ; $6f69: $0c
    rst $38                                       ; $6f6a: $ff
    ei                                            ; $6f6b: $fb
    ld c, h                                       ; $6f6c: $4c
    ld c, h                                       ; $6f6d: $4c
    ld hl, $de4c                                  ; $6f6e: $21 $4c $de
    add sp, -$37                                  ; $6f71: $e8 $c9
    pop hl                                        ; $6f73: $e1
    jp $bfe3                                      ; $6f74: $c3 $e3 $bf


    pop hl                                        ; $6f77: $e1
    ld c, l                                       ; $6f78: $4d
    ret nz                                        ; $6f79: $c0

    rst $38                                       ; $6f7a: $ff
    cp a                                          ; $6f7b: $bf
    db $ec                                        ; $6f7c: $ec
    ret nz                                        ; $6f7d: $c0

    add l                                         ; $6f7e: $85
    rst $20                                       ; $6f7f: $e7
    ld a, e                                       ; $6f80: $7b
    ld [c], a                                     ; $6f81: $e2
    ret nz                                        ; $6f82: $c0

    rst $38                                       ; $6f83: $ff
    ld a, [hl]                                    ; $6f84: $7e
    db $ec                                        ; $6f85: $ec
    add l                                         ; $6f86: $85
    and $3e                                       ; $6f87: $e6 $3e
    push hl                                       ; $6f89: $e5
    dec c                                         ; $6f8a: $0d
    dec c                                         ; $6f8b: $0d
    nop                                           ; $6f8c: $00
    ret nz                                        ; $6f8d: $c0

    cp $3d                                        ; $6f8e: $fe $3d
    jp hl                                         ; $6f90: $e9


    nop                                           ; $6f91: $00
    rst $38                                       ; $6f92: $ff
    db $fc                                        ; $6f93: $fc
    db $d3                                        ; $6f94: $d3
    nop                                           ; $6f95: $00
    ld hl, sp-$20                                 ; $6f96: $f8 $e0
    jp z, $fd3e                                   ; $6f98: $ca $3e $fd

    nop                                           ; $6f9b: $00
    db $ec                                        ; $6f9c: $ec
    add l                                         ; $6f9d: $85
    dec l                                         ; $6f9e: $2d
    db $fd                                        ; $6f9f: $fd
    ret nz                                        ; $6fa0: $c0

    dec l                                         ; $6fa1: $2d
    cp a                                          ; $6fa2: $bf
    rst $38                                       ; $6fa3: $ff
    ld a, a                                       ; $6fa4: $7f
    rst $20                                       ; $6fa5: $e7
    nop                                           ; $6fa6: $00
    db $ec                                        ; $6fa7: $ec
    ret nz                                        ; $6fa8: $c0

    pop hl                                        ; $6fa9: $e1
    ld c, l                                       ; $6faa: $4d
    ld bc, $512d                                  ; $6fab: $01 $2d $51
    rst $30                                       ; $6fae: $f7
    dec sp                                        ; $6faf: $3b
    ret z                                         ; $6fb0: $c8

    ld a, [hl-]                                   ; $6fb1: $3a
    jp $ec00                                      ; $6fb2: $c3 $00 $ec


    add b                                         ; $6fb5: $80
    ldh [$fb], a                                  ; $6fb6: $e0 $fb
    ret nz                                        ; $6fb8: $c0

    ld b, d                                       ; $6fb9: $42
    db $eb                                        ; $6fba: $eb
    rrca                                          ; $6fbb: $0f
    ld l, h                                       ; $6fbc: $6c
    ld c, h                                       ; $6fbd: $4c
    inc l                                         ; $6fbe: $2c
    inc l                                         ; $6fbf: $2c
    ld l, [hl]                                    ; $6fc0: $6e
    rst $28                                       ; $6fc1: $ef
    cp [hl]                                       ; $6fc2: $be
    pop hl                                        ; $6fc3: $e1
    push af                                       ; $6fc4: $f5
    and b                                         ; $6fc5: $a0
    nop                                           ; $6fc6: $00
    sla a                                         ; $6fc7: $cb $27
    dec l                                         ; $6fc9: $2d
    dec l                                         ; $6fca: $2d
    dec l                                         ; $6fcb: $2d
    cp e                                          ; $6fcc: $bb
    pop bc                                        ; $6fcd: $c1
    pop bc                                        ; $6fce: $c1
    db $eb                                        ; $6fcf: $eb
    ld l, h                                       ; $6fd0: $6c
    push de                                       ; $6fd1: $d5
    ld [c], a                                     ; $6fd2: $e2
    cp a                                          ; $6fd3: $bf
    db $f4                                        ; $6fd4: $f4
    jr jr_06e_6fd7                                ; $6fd5: $18 $00

jr_06e_6fd7:
    call z, $a1bc                                 ; $6fd7: $cc $bc $a1
    cp [hl]                                       ; $6fda: $be
    call z, Call_06e_4b2c                         ; $6fdb: $cc $2c $4b
    rst $38                                       ; $6fde: $ff
    pop hl                                        ; $6fdf: $e1
    db $ec                                        ; $6fe0: $ec
    push de                                       ; $6fe1: $d5
    nop                                           ; $6fe2: $00
    call z, Call_06e_4deb                         ; $6fe3: $cc $eb $4d
    ld c, l                                       ; $6fe6: $4d
    ld a, d                                       ; $6fe7: $7a
    and c                                         ; $6fe8: $a1
    dec l                                         ; $6fe9: $2d
    ld c, $e9                                     ; $6fea: $0e $e9
    inc l                                         ; $6fec: $2c
    dec hl                                        ; $6fed: $2b
    dec bc                                        ; $6fee: $0b
    rlca                                          ; $6fef: $07
    dec bc                                        ; $6ff0: $0b
    dec hl                                        ; $6ff1: $2b
    dec bc                                        ; $6ff2: $0b
    cp a                                          ; $6ff3: $bf
    push af                                       ; $6ff4: $f5
    nop                                           ; $6ff5: $00
    call z, $a1f4                                 ; $6ff6: $cc $f4 $a1
    rst $38                                       ; $6ff9: $ff
    pop bc                                        ; $6ffa: $c1
    ld c, $e8                                     ; $6ffb: $0e $e8
    rla                                           ; $6ffd: $17
    inc l                                         ; $6ffe: $2c
    inc l                                         ; $6fff: $2c
    ld c, e                                       ; $7000: $4b
    cp a                                          ; $7001: $bf
    ld [c], a                                     ; $7002: $e2
    ld l, h                                       ; $7003: $6c
    add b                                         ; $7004: $80
    push af                                       ; $7005: $f5
    nop                                           ; $7006: $00
    jp hl                                         ; $7007: $e9


    ret nz                                        ; $7008: $c0

    db $e3                                        ; $7009: $e3
    add hl, bc                                    ; $700a: $09
    dec c                                         ; $700b: $0d
    call c, $c289                                 ; $700c: $dc $89 $c2
    ret nz                                        ; $700f: $c0

    ld l, e                                       ; $7010: $6b
    ret nz                                        ; $7011: $c0

    ld [c], a                                     ; $7012: $e2
    ld a, [hl+]                                   ; $7013: $2a
    jp nc, $e985                                  ; $7014: $d2 $85 $e9

    ei                                            ; $7017: $fb
    and $c7                                       ; $7018: $e6 $c7
    ld l, l                                       ; $701a: $6d
    dec c                                         ; $701b: $0d
    ld l, e                                       ; $701c: $6b
    sbc e                                         ; $701d: $9b
    add [hl]                                      ; $701e: $86
    sub e                                         ; $701f: $93
    add b                                         ; $7020: $80

Jump_06e_7021:
    cp $c0                                        ; $7021: $fe $c0
    ld l, e                                       ; $7023: $6b
    dec bc                                        ; $7024: $0b
    ld h, e                                       ; $7025: $63
    dec c                                         ; $7026: $0d
    ld c, e                                       ; $7027: $4b
    nop                                           ; $7028: $00
    ei                                            ; $7029: $fb
    ld b, h                                       ; $702a: $44
    push hl                                       ; $702b: $e5
    pop bc                                        ; $702c: $c1
    pop hl                                        ; $702d: $e1
    ld l, e                                       ; $702e: $6b
    dec c                                         ; $702f: $0d
    cp a                                          ; $7030: $bf
    pop hl                                        ; $7031: $e1
    ld a, $1c                                     ; $7032: $3e $1c
    call nz, Call_06e_6c6c                        ; $7034: $c4 $6c $6c
    ld l, h                                       ; $7037: $6c
    dec hl                                        ; $7038: $2b
    dec bc                                        ; $7039: $0b
    xor $e0                                       ; $703a: $ee $e0
    ret nz                                        ; $703c: $c0

    push de                                       ; $703d: $d5
    jr nc, jr_06e_7040                            ; $703e: $30 $00

jr_06e_7040:
    xor b                                         ; $7040: $a8
    db $fd                                        ; $7041: $fd
    add e                                         ; $7042: $83
    pop bc                                        ; $7043: $c1
    ldh [$fe], a                                  ; $7044: $e0 $fe
    ldh [rOCPD], a                                ; $7046: $e0 $6b
    dec bc                                        ; $7048: $0b
    adc b                                         ; $7049: $88
    ret nz                                        ; $704a: $c0

    inc c                                         ; $704b: $0c
    pop hl                                        ; $704c: $e1
    rlca                                          ; $704d: $07
    inc l                                         ; $704e: $2c
    ld c, e                                       ; $704f: $4b
    dec hl                                        ; $7050: $2b
    pop bc                                        ; $7051: $c1
    ret nz                                        ; $7052: $c0

    add c                                         ; $7053: $81
    ldh [rBCPD], a                                ; $7054: $e0 $69
    or d                                          ; $7056: $b2
    nop                                           ; $7057: $00
    adc d                                         ; $7058: $8a
    or e                                          ; $7059: $b3
    add c                                         ; $705a: $81
    and a                                         ; $705b: $a7
    ld l, l                                       ; $705c: $6d
    ld l, e                                       ; $705d: $6b
    ld l, e                                       ; $705e: $6b
    jp nz, $bee1                                  ; $705f: $c2 $e1 $be

    pop hl                                        ; $7062: $e1
    dec c                                         ; $7063: $0d
    inc c                                         ; $7064: $0c
    pop hl                                        ; $7065: $e1
    ld l, h                                       ; $7066: $6c
    rlca                                          ; $7067: $07
    ld l, h                                       ; $7068: $6c
    dec c                                         ; $7069: $0d
    dec c                                         ; $706a: $0d

jr_06e_706b:
    ld a, a                                       ; $706b: $7f
    ret nz                                        ; $706c: $c0

    or h                                          ; $706d: $b4
    ldh [$ba], a                                  ; $706e: $e0 $ba
    or c                                          ; $7070: $b1
    nop                                           ; $7071: $00
    xor $05                                       ; $7072: $ee $05
    ldh [$64], a                                  ; $7074: $e0 $64
    rst $38                                       ; $7076: $ff
    db $e3                                        ; $7077: $e3
    ret nz                                        ; $7078: $c0

    pop hl                                        ; $7079: $e1
    ld l, e                                       ; $707a: $6b
    ld bc, $34c1                                  ; $707b: $01 $c1 $34
    ldh [$0b], a                                  ; $707e: $e0 $0b
    dec bc                                        ; $7080: $0b
    ld bc, $20e0                                  ; $7081: $01 $e0 $20
    cp c                                          ; $7084: $b9
    and b                                         ; $7085: $a0
    nop                                           ; $7086: $00
    db $fd                                        ; $7087: $fd
    add $c1                                       ; $7088: $c6 $c1
    dec b                                         ; $708a: $05
    ldh [$7e], a                                  ; $708b: $e0 $7e
    db $e4                                        ; $708d: $e4
    ld l, e                                       ; $708e: $6b
    pop bc                                        ; $708f: $c1
    pop hl                                        ; $7090: $e1
    ret nz                                        ; $7091: $c0

    ldh [rNR33], a                                ; $7092: $e0 $1d
    ld c, e                                       ; $7094: $4b
    inc [hl]                                      ; $7095: $34
    ldh [$0b], a                                  ; $7096: $e0 $0b
    dec hl                                        ; $7098: $2b
    dec c                                         ; $7099: $0d
    ld [hl-], a                                   ; $709a: $32
    db $e3                                        ; $709b: $e3
    and h                                         ; $709c: $a4
    adc l                                         ; $709d: $8d
    add l                                         ; $709e: $85
    adc d                                         ; $709f: $8a
    jr jr_06e_706b                                ; $70a0: $18 $c9

    ret nz                                        ; $70a2: $c0

    ret nz                                        ; $70a3: $c0

    add sp, -$7d                                  ; $70a4: $e8 $83
    call nz, Call_06e_4b0d                        ; $70a6: $c4 $0d $4b
    ld a, a                                       ; $70a9: $7f
    ld [c], a                                     ; $70aa: $e2
    db $fd                                        ; $70ab: $fd
    ret nz                                        ; $70ac: $c0

    ld a, $c0                                     ; $70ad: $3e $c0
    ret c                                         ; $70af: $d8

    dec b                                         ; $70b0: $05
    ld h, b                                       ; $70b1: $60
    ld h, e                                       ; $70b2: $63
    adc e                                         ; $70b3: $8b
    add l                                         ; $70b4: $85
    adc d                                         ; $70b5: $8a
    dec c                                         ; $70b6: $0d
    ld c, l                                       ; $70b7: $4d
    inc b                                         ; $70b8: $04
    db $e3                                        ; $70b9: $e3
    dec hl                                        ; $70ba: $2b
    ld a, [bc]                                    ; $70bb: $0a
    dec hl                                        ; $70bc: $2b
    ld l, d                                       ; $70bd: $6a
    dec bc                                        ; $70be: $0b
    add d                                         ; $70bf: $82
    db $e3                                        ; $70c0: $e3
    ld c, h                                       ; $70c1: $4c
    ld b, b                                       ; $70c2: $40
    pop hl                                        ; $70c3: $e1
    ld c, e                                       ; $70c4: $4b
    rst $38                                       ; $70c5: $ff
    ret nz                                        ; $70c6: $c0

    cp $c0                                        ; $70c7: $fe $c0
    ret nz                                        ; $70c9: $c0

    ld a, $c2                                     ; $70ca: $3e $c2
    di                                            ; $70cc: $f3
    add e                                         ; $70cd: $83
    ei                                            ; $70ce: $fb
    rst $20                                       ; $70cf: $e7
    add l                                         ; $70d0: $85
    xor b                                         ; $70d1: $a8
    ret nz                                        ; $70d2: $c0

    db $e3                                        ; $70d3: $e3
    ld bc, $0ae2                                  ; $70d4: $01 $e2 $0a
    ld a, [bc]                                    ; $70d7: $0a
    nop                                           ; $70d8: $00
    ld c, e                                       ; $70d9: $4b
    ldh [$cf], a                                  ; $70da: $e0 $cf
    jp $e1c0                                      ; $70dc: $c3 $c0 $e1


    ld a, $a0                                     ; $70df: $3e $a0
    ld a, [hl]                                    ; $70e1: $7e
    pop bc                                        ; $70e2: $c1
    cp $a0                                        ; $70e3: $fe $a0
    or d                                          ; $70e5: $b2
    ret nz                                        ; $70e6: $c0

jr_06e_70e7:
    sbc h                                         ; $70e7: $9c
    add b                                         ; $70e8: $80
    ldh [$fd], a                                  ; $70e9: $e0 $fd
    add sp, $00                                   ; $70eb: $e8 $00
    rst $00                                       ; $70ed: $c7
    ld b, l                                       ; $70ee: $45
    ld h, b                                       ; $70ef: $60
    ld b, $a0                                     ; $70f0: $06 $a0
    add d                                         ; $70f2: $82
    pop bc                                        ; $70f3: $c1
    dec hl                                        ; $70f4: $2b
    ld a, [bc]                                    ; $70f5: $0a
    ld a, [bc]                                    ; $70f6: $0a
    ld a, d                                       ; $70f7: $7a
    ld c, l                                       ; $70f8: $4d
    ret nz                                        ; $70f9: $c0

    ld l, e                                       ; $70fa: $6b
    rst $08                                       ; $70fb: $cf
    jp $0c2c                                      ; $70fc: $c3 $2c $0c


    dec c                                         ; $70ff: $0d
    dec c                                         ; $7100: $0d
    ccf                                           ; $7101: $3f
    pop bc                                        ; $7102: $c1
    nop                                           ; $7103: $00
    ret nz                                        ; $7104: $c0

    pop hl                                        ; $7105: $e1
    push af                                       ; $7106: $f5
    and b                                         ; $7107: $a0
    sbc $c2                                       ; $7108: $de $c2
    ret nz                                        ; $710a: $c0

    ld [$4785], a                                 ; $710b: $ea $85 $47
    call nz, $bf80                                ; $710e: $c4 $80 $bf
    ldh [$c4], a                                  ; $7111: $e0 $c4
    and b                                         ; $7113: $a0
    dec b                                         ; $7114: $05
    ld a, [hl+]                                   ; $7115: $2a
    ret nz                                        ; $7116: $c0

    pop hl                                        ; $7117: $e1
    ld c, e                                       ; $7118: $4b
    ld a, [hl-]                                   ; $7119: $3a
    and l                                         ; $711a: $a5
    ld b, b                                       ; $711b: $40
    ret nz                                        ; $711c: $c0

    cp $a0                                        ; $711d: $fe $a0
    pop af                                        ; $711f: $f1
    and d                                         ; $7120: $a2
    pop bc                                        ; $7121: $c1
    ldh [rP1], a                                  ; $7122: $e0 $00
    sbc a                                         ; $7124: $9f
    add c                                         ; $7125: $81
    dec de                                        ; $7126: $1b
    and e                                         ; $7127: $a3
    jp z, $8544                                   ; $7128: $ca $44 $85

    ld c, b                                       ; $712b: $48
    cp $c2                                        ; $712c: $fe $c2
    ret nz                                        ; $712e: $c0

    ld [c], a                                     ; $712f: $e2
    ret nc                                        ; $7130: $d0

    jp nz, $e03d                                  ; $7131: $c2 $3d $e0

    nop                                           ; $7134: $00
    ret nz                                        ; $7135: $c0

    and e                                         ; $7136: $a3
    pop bc                                        ; $7137: $c1
    jp nz, $8239                                  ; $7138: $c2 $39 $82

    rst $18                                       ; $713b: $df
    add h                                         ; $713c: $84
    jp z, Jump_06e_7bac                           ; $713d: $ca $ac $7b

    ld b, d                                       ; $7140: $42
    ld b, l                                       ; $7141: $45
    ret nz                                        ; $7142: $c0

    cp [hl]                                       ; $7143: $be
    add $00                                       ; $7144: $c6 $00
    pop de                                        ; $7146: $d1
    and b                                         ; $7147: $a0
    ld c, d                                       ; $7148: $4a
    ret nz                                        ; $7149: $c0

    db $fd                                        ; $714a: $fd
    ret nz                                        ; $714b: $c0

    ld [bc], a                                    ; $714c: $02
    and d                                         ; $714d: $a2
    add c                                         ; $714e: $81
    jp nz, $e3bf                                  ; $714f: $c2 $bf $e3

    ret nz                                        ; $7152: $c0

    rst $20                                       ; $7153: $e7
    jp z, RST_28                                  ; $7154: $ca $28 $00

    add l                                         ; $7157: $85
    ld h, e                                       ; $7158: $63
    dec b                                         ; $7159: $05
    pop bc                                        ; $715a: $c1
    ld [bc], a                                    ; $715b: $02
    push bc                                       ; $715c: $c5
    sub c                                         ; $715d: $91
    and b                                         ; $715e: $a0
    ld a, $a0                                     ; $715f: $3e $a0
    ld b, a                                       ; $7161: $47
    ret nz                                        ; $7162: $c0

    ld d, h                                       ; $7163: $54
    jr nz, jr_06e_70e7                            ; $7164: $20 $81

    add b                                         ; $7166: $80
    nop                                           ; $7167: $00
    ccf                                           ; $7168: $3f
    add b                                         ; $7169: $80
    cp [hl]                                       ; $716a: $be
    call nz, Call_06e_6161                        ; $716b: $c4 $61 $61
    db $10                                        ; $716e: $10
    ld b, h                                       ; $716f: $44
    jp z, $8525                                   ; $7170: $ca $25 $85

    ld b, [hl]                                    ; $7173: $46
    ld b, h                                       ; $7174: $44
    ld h, d                                       ; $7175: $62
    add b                                         ; $7176: $80
    and c                                         ; $7177: $a1
    inc e                                         ; $7178: $1c
    jp nc, $81c1                                  ; $7179: $d2 $c1 $81

    ld [c], a                                     ; $717c: $e2
    dec c                                         ; $717d: $0d
    ld l, e                                       ; $717e: $6b
    inc l                                         ; $717f: $2c
    cp [hl]                                       ; $7180: $be
    jp $a07e                                      ; $7181: $c3 $7e $a0


    ld [hl-], a                                   ; $7184: $32
    and b                                         ; $7185: $a0
    ld [bc], a                                    ; $7186: $02
    ld [hl], $c0                                  ; $7187: $36 $c0
    ld c, l                                       ; $7189: $4d
    adc h                                         ; $718a: $8c
    add $00                                       ; $718b: $c6 $00
    xor $b4                                       ; $718d: $ee $b4
    jp nz, $c07c                                  ; $718f: $c2 $7c $c0

    ld b, b                                       ; $7192: $40
    and c                                         ; $7193: $a1
    ld d, b                                       ; $7194: $50
    and b                                         ; $7195: $a0
    add b                                         ; $7196: $80
    add hl, bc                                    ; $7197: $09
    ret nz                                        ; $7198: $c0

    or $80                                        ; $7199: $f6 $80
    ret nz                                        ; $719b: $c0

    pop hl                                        ; $719c: $e1
    cp [hl]                                       ; $719d: $be
    ret nz                                        ; $719e: $c0

    ld a, $a2                                     ; $719f: $3e $a2
    cp a                                          ; $71a1: $bf
    ld [c], a                                     ; $71a2: $e2
    ld c, [hl]                                    ; $71a3: $4e
    pop bc                                        ; $71a4: $c1
    dec l                                         ; $71a5: $2d
    ld b, b                                       ; $71a6: $40
    nop                                           ; $71a7: $00
    ld a, [c]                                     ; $71a8: $f2
    rst $38                                       ; $71a9: $ff
    and e                                         ; $71aa: $a3
    add hl, bc                                    ; $71ab: $09
    and d                                         ; $71ac: $a2
    pop de                                        ; $71ad: $d1
    db $e3                                        ; $71ae: $e3
    ld bc, $fea2                                  ; $71af: $01 $a2 $fe
    ld b, d                                       ; $71b2: $42
    inc c                                         ; $71b3: $0c
    cp [hl]                                       ; $71b4: $be
    add b                                         ; $71b5: $80
    sub b                                         ; $71b6: $90
    add d                                         ; $71b7: $82
    pop hl                                        ; $71b8: $e1
    ld b, l                                       ; $71b9: $45
    jp nz, $f400                                  ; $71ba: $c2 $00 $f4

    cp a                                          ; $71bd: $bf
    and a                                         ; $71be: $a7
    dec c                                         ; $71bf: $0d
    ccf                                           ; $71c0: $3f
    ldh [$ce], a                                  ; $71c1: $e0 $ce
    add b                                         ; $71c3: $80
    dec l                                         ; $71c4: $2d
    and c                                         ; $71c5: $a1
    dec c                                         ; $71c6: $0d
    ld b, e                                       ; $71c7: $43
    pop hl                                        ; $71c8: $e1
    ld c, l                                       ; $71c9: $4d
    and b                                         ; $71ca: $a0
    ld d, c                                       ; $71cb: $51
    nop                                           ; $71cc: $00
    cp l                                          ; $71cd: $bd
    add b                                         ; $71ce: $80
    dec hl                                        ; $71cf: $2b
    ld a, b                                       ; $71d0: $78
    and c                                         ; $71d1: $a1
    ld c, e                                       ; $71d2: $4b
    add b                                         ; $71d3: $80
    ld e, d                                       ; $71d4: $5a
    db $e3                                        ; $71d5: $e3
    nop                                           ; $71d6: $00
    ld a, [c]                                     ; $71d7: $f2
    push bc                                       ; $71d8: $c5
    ld h, h                                       ; $71d9: $64
    ld b, c                                       ; $71da: $41
    and c                                         ; $71db: $a1
    sub b                                         ; $71dc: $90
    and c                                         ; $71dd: $a1
    inc [hl]                                      ; $71de: $34
    ld b, b                                       ; $71df: $40
    ld b, e                                       ; $71e0: $43
    db $e3                                        ; $71e1: $e3
    inc l                                         ; $71e2: $2c
    nop                                           ; $71e3: $00
    ld [bc], a                                    ; $71e4: $02
    ld b, b                                       ; $71e5: $40
    ret nz                                        ; $71e6: $c0

    db $e4                                        ; $71e7: $e4
    halt                                          ; $71e8: $76
    ld b, b                                       ; $71e9: $40
    rst $38                                       ; $71ea: $ff
    ret nz                                        ; $71eb: $c0

    jp c, Jump_000_0024                           ; $71ec: $da $24 $00

    ret nc                                        ; $71ef: $d0

    add [hl]                                      ; $71f0: $86
    ld h, c                                       ; $71f1: $61
    pop bc                                        ; $71f2: $c1
    call nz, $cf9c                                ; $71f3: $c4 $9c $cf
    ret nz                                        ; $71f6: $c0

    ld [de], a                                    ; $71f7: $12
    and l                                         ; $71f8: $a5
    inc l                                         ; $71f9: $2c
    ld l, h                                       ; $71fa: $6c
    ld c, h                                       ; $71fb: $4c
    db $fd                                        ; $71fc: $fd
    ld h, c                                       ; $71fd: $61
    ret nz                                        ; $71fe: $c0

    db $e3                                        ; $71ff: $e3
    dec bc                                        ; $7200: $0b
    nop                                           ; $7201: $00
    cp [hl]                                       ; $7202: $be
    pop bc                                        ; $7203: $c1
    nop                                           ; $7204: $00
    db $f4                                        ; $7205: $f4
    jp Jump_06e_40a2                              ; $7206: $c3 $a2 $40


    add c                                         ; $7209: $81
    rst $10                                       ; $720a: $d7
    ld [c], a                                     ; $720b: $e2
    add l                                         ; $720c: $85
    ret nz                                        ; $720d: $c0

    call nz, $b461                                ; $720e: $c4 $61 $b4
    ld b, b                                       ; $7211: $40
    ld de, $866c                                  ; $7212: $11 $6c $86
    pop bc                                        ; $7215: $c1
    ccf                                           ; $7216: $3f
    pop hl                                        ; $7217: $e1
    ld a, [hl]                                    ; $7218: $7e
    pop hl                                        ; $7219: $e1
    ld l, e                                       ; $721a: $6b
    ld a, [bc]                                    ; $721b: $0a
    and l                                         ; $721c: $a5
    nop                                           ; $721d: $00
    rst $28                                       ; $721e: $ef
    ld b, c                                       ; $721f: $41
    add c                                         ; $7220: $81
    ld b, $05                                     ; $7221: $06 $05
    ld h, c                                       ; $7223: $61
    ld l, e                                       ; $7224: $6b
    ld c, e                                       ; $7225: $4b
    cp [hl]                                       ; $7226: $be
    ldh [$c4], a                                  ; $7227: $e0 $c4
    ld h, b                                       ; $7229: $60
    add l                                         ; $722a: $85
    ld h, d                                       ; $722b: $62
    add hl, bc                                    ; $722c: $09
    db $e3                                        ; $722d: $e3
    cp [hl]                                       ; $722e: $be
    add c                                         ; $722f: $81
    add b                                         ; $7230: $80
    ld a, $e3                                     ; $7231: $3e $e3
    ret nz                                        ; $7233: $c0

    pop hl                                        ; $7234: $e1
    nop                                           ; $7235: $00
    call Call_000_2049                            ; $7236: $cd $49 $20
    rst $00                                       ; $7239: $c7
    inc hl                                        ; $723a: $23
    jp $c162                                      ; $723b: $c3 $62 $c1


    add b                                         ; $723e: $80
    ld a, [bc]                                    ; $723f: $0a
    rlca                                          ; $7240: $07
    ld l, d                                       ; $7241: $6a
    ld l, e                                       ; $7242: $6b
    ld c, e                                       ; $7243: $4b
    ld b, [hl]                                    ; $7244: $46
    ld h, d                                       ; $7245: $62
    ld [hl], $80                                  ; $7246: $36 $80
    ld [hl], $c1                                  ; $7248: $36 $c1
    xor $c2                                       ; $724a: $ee $c2
    ld a, e                                       ; $724c: $7b
    ld h, c                                       ; $724d: $61
    ldh a, [$b3]                                  ; $724e: $f0 $b3
    ld h, b                                       ; $7250: $60
    nop                                           ; $7251: $00
    rst $08                                       ; $7252: $cf
    ld a, [bc]                                    ; $7253: $0a
    inc hl                                        ; $7254: $23
    ld [bc], a                                    ; $7255: $02
    rst $00                                       ; $7256: $c7
    ld a, [bc]                                    ; $7257: $0a
    ld a, [hl+]                                   ; $7258: $2a
    ld a, [bc]                                    ; $7259: $0a
    ld a, [hl+]                                   ; $725a: $2a
    inc bc                                        ; $725b: $03
    dec hl                                        ; $725c: $2b
    ld c, e                                       ; $725d: $4b
    jp z, $c7c0                                   ; $725e: $ca $c0 $c7

    add b                                         ; $7261: $80
    ld [hl], $80                                  ; $7262: $36 $80
    add [hl]                                      ; $7264: $86
    ld h, b                                       ; $7265: $60
    pop bc                                        ; $7266: $c1
    db $e3                                        ; $7267: $e3
    db $eb                                        ; $7268: $eb
    and e                                         ; $7269: $a3
    ld h, b                                       ; $726a: $60
    add c                                         ; $726b: $81
    add sp, $00                                   ; $726c: $e8 $00
    xor d                                         ; $726e: $aa
    ld bc, $5485                                  ; $726f: $01 $85 $54
    pop hl                                        ; $7272: $e1
    ld d, b                                       ; $7273: $50
    add c                                         ; $7274: $81
    inc c                                         ; $7275: $0c
    ld c, h                                       ; $7276: $4c
    ld c, d                                       ; $7277: $4a
    db $e3                                        ; $7278: $e3
    add b                                         ; $7279: $80
    ld b, $40                                     ; $727a: $06 $40
    cp $86                                        ; $727c: $fe $86
    ret nz                                        ; $727e: $c0

    push hl                                       ; $727f: $e5
    ld a, e                                       ; $7280: $7b
    xor e                                         ; $7281: $ab
    nop                                           ; $7282: $00
    ld b, [hl]                                    ; $7283: $46
    ret nz                                        ; $7284: $c0

    db $e3                                        ; $7285: $e3
    ret nz                                        ; $7286: $c0

    jp nz, Jump_000_000b                          ; $7287: $c2 $0b $00

    pop de                                        ; $728a: $d1
    jr nz, jr_06e_730a                            ; $728b: $20 $7d

    and c                                         ; $728d: $a1
    ret nc                                        ; $728e: $d0

    ret nz                                        ; $728f: $c0

    ld bc, $2fe5                                  ; $7290: $01 $e5 $2f
    ld b, c                                       ; $7293: $41
    ld b, b                                       ; $7294: $40
    ld [c], a                                     ; $7295: $e2
    ld a, $c1                                     ; $7296: $3e $c1
    ld a, e                                       ; $7298: $7b
    rst $00                                       ; $7299: $c7
    jr nc, jr_06e_729c                            ; $729a: $30 $00

jr_06e_729c:
    inc hl                                        ; $729c: $23
    inc bc                                        ; $729d: $03
    and e                                         ; $729e: $a3
    ld b, l                                       ; $729f: $45
    ld b, c                                       ; $72a0: $41
    ret nz                                        ; $72a1: $c0

    db $e4                                        ; $72a2: $e4
    dec bc                                        ; $72a3: $0b
    ld l, h                                       ; $72a4: $6c
    rst $00                                       ; $72a5: $c7
    ld h, b                                       ; $72a6: $60
    xor $01                                       ; $72a7: $ee $01
    ld bc, $ed2d                                  ; $72a9: $01 $2d $ed
    ld h, b                                       ; $72ac: $60
    pop bc                                        ; $72ad: $c1
    jp nz, Jump_000_21fa                          ; $72ae: $c2 $fa $21

    ret nz                                        ; $72b1: $c0

    db $e3                                        ; $72b2: $e3
    nop                                           ; $72b3: $00
    pop de                                        ; $72b4: $d1
    ld b, e                                       ; $72b5: $43
    and l                                         ; $72b6: $a5
    add l                                         ; $72b7: $85
    jr nz, @+$06                                  ; $72b8: $20 $04

    ld b, d                                       ; $72ba: $42
    add c                                         ; $72bb: $81
    ret nz                                        ; $72bc: $c0

    ldh [$2c], a                                  ; $72bd: $e0 $2c
    inc bc                                        ; $72bf: $03
    and e                                         ; $72c0: $a3
    ld a, a                                       ; $72c1: $7f
    add c                                         ; $72c2: $81
    ld b, c                                       ; $72c3: $41
    and $c0                                       ; $72c4: $e6 $c0
    jp nz, $9100                                  ; $72c6: $c2 $00 $91

    sbc b                                         ; $72c9: $98
    jp Jump_06e_4683                              ; $72ca: $c3 $83 $46


    ld b, l                                       ; $72cd: $45
    ret nz                                        ; $72ce: $c0

    and b                                         ; $72cf: $a0
    ld l, e                                       ; $72d0: $6b
    dec bc                                        ; $72d1: $0b
    ld d, l                                       ; $72d2: $55
    ld b, h                                       ; $72d3: $44
    add b                                         ; $72d4: $80
    and b                                         ; $72d5: $a0
    inc c                                         ; $72d6: $0c
    nop                                           ; $72d7: $00
    ld bc, $00e5                                  ; $72d8: $01 $e5 $00
    ret c                                         ; $72db: $d8

    scf                                           ; $72dc: $37
    ld [bc], a                                    ; $72dd: $02
    ret                                           ; $72de: $c9


    inc h                                         ; $72df: $24
    ret nz                                        ; $72e0: $c0

    pop hl                                        ; $72e1: $e1
    inc bc                                        ; $72e2: $03
    add e                                         ; $72e3: $83
    dec bc                                        ; $72e4: $0b
    inc h                                         ; $72e5: $24
    cp $63                                        ; $72e6: $fe $63
    ld b, b                                       ; $72e8: $40
    ret nz                                        ; $72e9: $c0

    and $00                                       ; $72ea: $e6 $00
    sub b                                         ; $72ec: $90
    dec a                                         ; $72ed: $3d
    pop bc                                        ; $72ee: $c1
    ld b, b                                       ; $72ef: $40
    db $e3                                        ; $72f0: $e3
    ret nz                                        ; $72f1: $c0

    add c                                         ; $72f2: $81
    ret nz                                        ; $72f3: $c0

    db $e3                                        ; $72f4: $e3
    dec bc                                        ; $72f5: $0b
    dec a                                         ; $72f6: $3d
    ld b, $19                                     ; $72f7: $06 $19
    dec hl                                        ; $72f9: $2b
    rst $38                                       ; $72fa: $ff
    ld h, c                                       ; $72fb: $61
    ld a, $a3                                     ; $72fc: $3e $a3
    dec c                                         ; $72fe: $0d
    ld l, l                                       ; $72ff: $6d
    rst $10                                       ; $7300: $d7
    dec b                                         ; $7301: $05
    nop                                           ; $7302: $00
    ld l, [hl]                                    ; $7303: $6e
    ret nz                                        ; $7304: $c0

    db $e4                                        ; $7305: $e4
    nop                                           ; $7306: $00
    ld b, b                                       ; $7307: $40
    db $e3                                        ; $7308: $e3
    cp h                                          ; $7309: $bc

jr_06e_730a:
    nop                                           ; $730a: $00
    ret nz                                        ; $730b: $c0

    push hl                                       ; $730c: $e5
    nop                                           ; $730d: $00
    and b                                         ; $730e: $a0
    ld b, c                                       ; $730f: $41
    and $24                                       ; $7310: $e6 $24
    nop                                           ; $7312: $00
    add l                                         ; $7313: $85

jr_06e_7314:
    ld h, a                                       ; $7314: $67
    nop                                           ; $7315: $00
    jp hl                                         ; $7316: $e9


    nop                                           ; $7317: $00
    add b                                         ; $7318: $80
    push hl                                       ; $7319: $e5
    ld a, a                                       ; $731a: $7f
    add d                                         ; $731b: $82
    cp a                                          ; $731c: $bf
    add c                                         ; $731d: $81
    ret nz                                        ; $731e: $c0

    ldh [$fe], a                                  ; $731f: $e0 $fe
    push bc                                       ; $7321: $c5
    rst $28                                       ; $7322: $ef
    ld h, d                                       ; $7323: $62
    ld [bc], a                                    ; $7324: $02
    call nz, Call_06e_42ff                        ; $7325: $c4 $ff $42

jr_06e_7328:
    ld b, b                                       ; $7328: $40
    nop                                           ; $7329: $00
    pop de                                        ; $732a: $d1
    ld b, e                                       ; $732b: $43
    ld b, d                                       ; $732c: $42
    ccf                                           ; $732d: $3f
    call nz, $42cf                                ; $732e: $c4 $cf $42
    ld c, a                                       ; $7331: $4f
    ldh [$3e], a                                  ; $7332: $e0 $3e
    ld b, e                                       ; $7334: $43
    ld c, h                                       ; $7335: $4c
    ld l, $81                                     ; $7336: $2e $81
    nop                                           ; $7338: $00
    ld b, c                                       ; $7339: $41
    pop hl                                        ; $733a: $e1
    ret nz                                        ; $733b: $c0

    db $e3                                        ; $733c: $e3
    rst $38                                       ; $733d: $ff
    inc h                                         ; $733e: $24
    nop                                           ; $733f: $00
    call $2441                                    ; $7340: $cd $41 $24
    ld a, a                                       ; $7343: $7f
    add e                                         ; $7344: $83
    ld de, $0fe1                                  ; $7345: $11 $e1 $0f
    ldh [rTMA], a                                 ; $7348: $e0 $06
    cp l                                          ; $734a: $bd
    ld [bc], a                                    ; $734b: $02
    ld l, h                                       ; $734c: $6c
    ld c, h                                       ; $734d: $4c

jr_06e_734e:
    ld a, $43                                     ; $734e: $3e $43
    add d                                         ; $7350: $82
    adc d                                         ; $7351: $8a
    nop                                           ; $7352: $00
    ld c, a                                       ; $7353: $4f
    ld bc, $be25                                  ; $7354: $01 $25 $be
    and e                                         ; $7357: $a3
    nop                                           ; $7358: $00
    rst $08                                       ; $7359: $cf
    ld bc, $40cb                                  ; $735a: $01 $cb $40
    ret nz                                        ; $735d: $c0

    ld b, e                                       ; $735e: $43
    ld a, $42                                     ; $735f: $3e $42
    ld b, d                                       ; $7361: $42
    call nz, $a295                                ; $7362: $c4 $95 $a2
    nop                                           ; $7365: $00
    sub [hl]                                      ; $7366: $96
    nop                                           ; $7367: $00
    ld [hl+], a                                   ; $7368: $22
    jr jr_06e_7328                                ; $7369: $18 $bd

    ld b, h                                       ; $736b: $44
    adc l                                         ; $736c: $8d
    nop                                           ; $736d: $00
    ret nz                                        ; $736e: $c0

    ld b, h                                       ; $736f: $44
    ld c, e                                       ; $7370: $4b
    dec hl                                        ; $7371: $2b
    jr nc, jr_06e_7314                            ; $7372: $30 $a0

    pop bc                                        ; $7374: $c1
    call nz, Call_000_2985                        ; $7375: $c4 $85 $29
    stop                                          ; $7378: $10 $00
    adc a                                         ; $737a: $8f
    ret nz                                        ; $737b: $c0

    add sp, -$42                                  ; $737c: $e8 $be
    ld [hl+], a                                   ; $737e: $22
    add d                                         ; $737f: $82
    ld h, b                                       ; $7380: $60
    inc l                                         ; $7381: $2c
    cp $21                                        ; $7382: $fe $21
    pop af                                        ; $7384: $f1
    ldh [$e6], a                                  ; $7385: $e0 $e6
    ret nz                                        ; $7387: $c0

    nop                                           ; $7388: $00
    ld b, e                                       ; $7389: $43
    ret nz                                        ; $738a: $c0

    add c                                         ; $738b: $81
    ld b, l                                       ; $738c: $45
    nop                                           ; $738d: $00

jr_06e_738e:
    ld d, c                                       ; $738e: $51
    pop bc                                        ; $738f: $c1
    inc b                                         ; $7390: $04
    ld a, l                                       ; $7391: $7d
    and l                                         ; $7392: $a5
    ld [hl], h                                    ; $7393: $74
    ld [bc], a                                    ; $7394: $02
    ld e, d                                       ; $7395: $5a
    ld bc, $c0bf                                  ; $7396: $01 $bf $c0
    nop                                           ; $7399: $00
    or e                                          ; $739a: $b3
    ld hl, $4068                                  ; $739b: $21 $68 $40
    push bc                                       ; $739e: $c5
    add e                                         ; $739f: $83
    nop                                           ; $73a0: $00
    ld d, e                                       ; $73a1: $53
    pop bc                                        ; $73a2: $c1
    inc b                                         ; $73a3: $04
    cp $a4                                        ; $73a4: $fe $a4
    ld a, e                                       ; $73a6: $7b
    ld h, c                                       ; $73a7: $61
    inc sp                                        ; $73a8: $33
    inc b                                         ; $73a9: $04
    nop                                           ; $73aa: $00
    db $fd                                        ; $73ab: $fd
    ld b, b                                       ; $73ac: $40
    ld l, l                                       ; $73ad: $6d
    ld h, c                                       ; $73ae: $61
    daa                                           ; $73af: $27
    and c                                         ; $73b0: $a1
    ld b, h                                       ; $73b1: $44
    inc b                                         ; $73b2: $04
    nop                                           ; $73b3: $00
    ld d, a                                       ; $73b4: $57
    cp [hl]                                       ; $73b5: $be
    and [hl]                                      ; $73b6: $a6
    db $fc                                        ; $73b7: $fc
    ldh a, [$80]                                  ; $73b8: $f0 $80
    ld [c], a                                     ; $73ba: $e2
    nop                                           ; $73bb: $00
    ld d, [hl]                                    ; $73bc: $56
    add e                                         ; $73bd: $83
    nop                                           ; $73be: $00
    ld sp, $e6c0                                  ; $73bf: $31 $c0 $e6
    ld bc, $fc42                                  ; $73c2: $01 $42 $fc
    ldh a, [$c0]                                  ; $73c5: $f0 $c0
    rst $20                                       ; $73c7: $e7
    nop                                           ; $73c8: $00
    jr nc, jr_06e_738e                            ; $73c9: $30 $c3

    inc bc                                        ; $73cb: $03
    jr nz, jr_06e_734e                            ; $73cc: $20 $80

    db $e3                                        ; $73ce: $e3
    ld d, d                                       ; $73cf: $52
    ld h, h                                       ; $73d0: $64
    ld a, [$80ee]                                 ; $73d1: $fa $ee $80
    push hl                                       ; $73d4: $e5
    nop                                           ; $73d5: $00
    dec [hl]                                      ; $73d6: $35
    dec l                                         ; $73d7: $2d
    ld [bc], a                                    ; $73d8: $02
    ld [hl+], a                                   ; $73d9: $22
    ret nz                                        ; $73da: $c0

    pop hl                                        ; $73db: $e1
    ld [bc], a                                    ; $73dc: $02
    ld de, $2d40                                  ; $73dd: $11 $40 $2d
    db $fc                                        ; $73e0: $fc
    db $ed                                        ; $73e1: $ed
    ret nz                                        ; $73e2: $c0

Jump_06e_73e3:
    db $e3                                        ; $73e3: $e3
    add h                                         ; $73e4: $84
    ld h, d                                       ; $73e5: $62
    nop                                           ; $73e6: $00
    ld [hl-], a                                   ; $73e7: $32
    ld a, a                                       ; $73e8: $7f
    add d                                         ; $73e9: $82
    ld b, c                                       ; $73ea: $41
    inc bc                                        ; $73eb: $03
    nop                                           ; $73ec: $00
    add b                                         ; $73ed: $80
    ld hl, sp-$7b                                 ; $73ee: $f8 $85
    ld a, [hl+]                                   ; $73f0: $2a
    nop                                           ; $73f1: $00
    ld [$6369], a                                 ; $73f2: $ea $69 $63
    ret nz                                        ; $73f5: $c0

    rst $38                                       ; $73f6: $ff
    nop                                           ; $73f7: $00
    dec [hl]                                      ; $73f8: $35
    add sp, $02                                   ; $73f9: $e8 $02
    cp $a1                                        ; $73fb: $fe $a1
    adc b                                         ; $73fd: $88
    jp nz, $fc21                                  ; $73fe: $c2 $21 $fc

    rst $28                                       ; $7401: $ef
    cpl                                           ; $7402: $2f
    jp nz, $da2d                                  ; $7403: $c2 $2d $da

    ld hl, $b600                                  ; $7406: $21 $00 $b6
    ld l, d                                       ; $7409: $6a
    ret nz                                        ; $740a: $c0

    ld c, l                                       ; $740b: $4d
    dec bc                                        ; $740c: $0b
    ld c, l                                       ; $740d: $4d
    dec l                                         ; $740e: $2d
    db $d3                                        ; $740f: $d3
    jr nz, jr_06e_743d                            ; $7410: $20 $2b

    cp [hl]                                       ; $7412: $be
    pop af                                        ; $7413: $f1
    pop bc                                        ; $7414: $c1
    ret nz                                        ; $7415: $c0

    inc bc                                        ; $7416: $03
    add e                                         ; $7417: $83
    nop                                           ; $7418: $00
    inc [hl]                                      ; $7419: $34
    sub b                                         ; $741a: $90
    ld a, e                                       ; $741b: $7b
    add c                                         ; $741c: $81
    cp e                                          ; $741d: $bb
    ld h, d                                       ; $741e: $62
    ld [hl], l                                    ; $741f: $75
    push bc                                       ; $7420: $c5
    ld [hl-], a                                   ; $7421: $32
    add c                                         ; $7422: $81
    ld l, e                                       ; $7423: $6b
    ld d, l                                       ; $7424: $55
    add d                                         ; $7425: $82
    db $fc                                        ; $7426: $fc
    push hl                                       ; $7427: $e5
    ld l, l                                       ; $7428: $6d
    ld [$a3dc], sp                                ; $7429: $08 $dc $a3
    nop                                           ; $742c: $00
    jp nc, $a57b                                  ; $742d: $d2 $7b $a5

    ld c, l                                       ; $7430: $4d
    cp a                                          ; $7431: $bf
    rst $20                                       ; $7432: $e7
    add c                                         ; $7433: $81
    and c                                         ; $7434: $a1
    pop bc                                        ; $7435: $c1

Jump_06e_7436:
    jp hl                                         ; $7436: $e9


    ld e, c                                       ; $7437: $59
    ld [hl+], a                                   ; $7438: $22
    nop                                           ; $7439: $00
    sub a                                         ; $743a: $97
    pop bc                                        ; $743b: $c1
    nop                                           ; $743c: $00

jr_06e_743d:
    xor b                                         ; $743d: $a8
    nop                                           ; $743e: $00
    nop                                           ; $743f: $00
    nop                                           ; $7440: $00
    rst $38                                       ; $7441: $ff
    call c, $a0dd                                 ; $7442: $dc $dd $a0
    sbc $df                                       ; $7445: $de $df
    ldh [$e1], a                                  ; $7447: $e0 $e1
    ld [c], a                                     ; $7449: $e2
    ei                                            ; $744a: $fb
    db $e3                                        ; $744b: $e3
    db $e4                                        ; $744c: $e4
    or $e2                                        ; $744d: $f6 $e2
    and b                                         ; $744f: $a0
    and b                                         ; $7450: $a0
    and b                                         ; $7451: $a0
    sbc [hl]                                      ; $7452: $9e
    ld [$98ff], sp                                ; $7453: $08 $ff $98
    sub a                                         ; $7456: $97
    sub [hl]                                      ; $7457: $96
    sub l                                         ; $7458: $95
    sub l                                         ; $7459: $95
    sub [hl]                                      ; $745a: $96
    sub [hl]                                      ; $745b: $96
    sub [hl]                                      ; $745c: $96
    pop hl                                        ; $745d: $e1
    sub a                                         ; $745e: $97
    rst $38                                       ; $745f: $ff
    ldh [$f9], a                                  ; $7460: $e0 $f9
    ldh [$fd], a                                  ; $7462: $e0 $fd
    and $f0                                       ; $7464: $e6 $f0
    ldh [$98], a                                  ; $7466: $e0 $98
    sbc b                                         ; $7468: $98
    sbc b                                         ; $7469: $98
    rst $20                                       ; $746a: $e7
    sbc c                                         ; $746b: $99
    sbc c                                         ; $746c: $99
    sbc c                                         ; $746d: $99
    ld a, [$e5e0]                                 ; $746e: $fa $e0 $e5
    db $e3                                        ; $7471: $e3
    sub l                                         ; $7472: $95
    sub l                                         ; $7473: $95
    push hl                                       ; $7474: $e5
    rst $38                                       ; $7475: $ff
    and $e7                                       ; $7476: $e6 $e7
    and b                                         ; $7478: $a0
    add sp, -$17                                  ; $7479: $e8 $e9
    ld [$eceb], a                                 ; $747b: $ea $eb $ec
    add c                                         ; $747e: $81
    and b                                         ; $747f: $a0
    or $e1                                        ; $7480: $f6 $e1
    rst $38                                       ; $7482: $ff
    pop hl                                        ; $7483: $e1
    ret nz                                        ; $7484: $c0

    db $e4                                        ; $7485: $e4
    cp a                                          ; $7486: $bf
    ld [c], a                                     ; $7487: $e2
    jp nz, $bfe9                                  ; $7488: $c2 $e9 $bf

    pop af                                        ; $748b: $f1
    sub l                                         ; $748c: $95
    ld bc, $8595                                  ; $748d: $01 $95 $85
    rst $20                                       ; $7490: $e7
    ld a, e                                       ; $7491: $7b
    ld [c], a                                     ; $7492: $e2
    add b                                         ; $7493: $80
    push hl                                       ; $7494: $e5
    cp a                                          ; $7495: $bf
    db $e4                                        ; $7496: $e4
    sbc l                                         ; $7497: $9d
    ld [c], a                                     ; $7498: $e2
    cp $e5                                        ; $7499: $fe $e5
    ld a, [hl]                                    ; $749b: $7e
    xor $78                                       ; $749c: $ee $78
    ld h, h                                       ; $749e: $64
    pop hl                                        ; $749f: $e1
    add l                                         ; $74a0: $85
    and $7b                                       ; $74a1: $e6 $7b
    db $e3                                        ; $74a3: $e3
    push af                                       ; $74a4: $f5
    or $a0                                        ; $74a5: $f6 $a0
    and c                                         ; $74a7: $a1
    ld b, b                                       ; $74a8: $40
    ldh [rP1], a                                  ; $74a9: $e0 $00
    and l                                         ; $74ab: $a5
    ld [c], a                                     ; $74ac: $e2
    jp nz, $bfeb                                  ; $74ad: $c2 $eb $bf

    xor $23                                       ; $74b0: $ee $23
    db $e3                                        ; $74b2: $e3
    nop                                           ; $74b3: $00
    ld a, [c]                                     ; $74b4: $f2
    and h                                         ; $74b5: $a4
    pop hl                                        ; $74b6: $e1
    cp $c2                                        ; $74b7: $fe $c2
    adc c                                         ; $74b9: $89
    db $e4                                        ; $74ba: $e4
    ret c                                         ; $74bb: $d8

    ld [hl], a                                    ; $74bc: $77
    push hl                                       ; $74bd: $e5
    db $fc                                        ; $74be: $fc
    ret z                                         ; $74bf: $c8

    db $fd                                        ; $74c0: $fd
    jp $9797                                      ; $74c1: $c3 $97 $97


    nop                                           ; $74c4: $00
    ldh a, [rSC]                                  ; $74c5: $f0 $02
    rrca                                          ; $74c7: $0f
    ld b, b                                       ; $74c8: $40
    pop hl                                        ; $74c9: $e1
    ret nz                                        ; $74ca: $c0

    cp $c2                                        ; $74cb: $fe $c2
    ld c, e                                       ; $74cd: $4b
    and $13                                       ; $74ce: $e6 $13
    db $e4                                        ; $74d0: $e4
    dec a                                         ; $74d1: $3d
    and $bc                                       ; $74d2: $e6 $bc
    add $97                                       ; $74d4: $c6 $97
    nop                                           ; $74d6: $00
    db $ed                                        ; $74d7: $ed
    rrca                                          ; $74d8: $0f
    sub $d7                                       ; $74d9: $d6 $d7
    sbc a                                         ; $74db: $9f
    sbc h                                         ; $74dc: $9c
    cp a                                          ; $74dd: $bf
    ldh [$be], a                                  ; $74de: $e0 $be
    jp nz, $c2bb                                  ; $74e0: $c2 $bb $c2

    adc e                                         ; $74e3: $8b
    jp Jump_000_2de0                              ; $74e4: $c3 $e0 $2d


    db $e4                                        ; $74e7: $e4
    ld l, d                                       ; $74e8: $6a
    jp $e57f                                      ; $74e9: $c3 $7f $e5


    add sp, -$1f                                  ; $74ec: $e8 $e1
    nop                                           ; $74ee: $00
    db $ec                                        ; $74ef: $ec
    and b                                         ; $74f0: $a0
    ret c                                         ; $74f1: $d8

    reti                                          ; $74f2: $d9


    rlca                                          ; $74f3: $07
    and b                                         ; $74f4: $a0
    sbc a                                         ; $74f5: $9f
    sbc h                                         ; $74f6: $9c
    cp [hl]                                       ; $74f7: $be
    push bc                                       ; $74f8: $c5
    ld a, [hl-]                                   ; $74f9: $3a
    ret nz                                        ; $74fa: $c0

    ld d, c                                       ; $74fb: $51
    and $7e                                       ; $74fc: $e6 $7e
    and $7f                                       ; $74fe: $e6 $7f
    push hl                                       ; $7500: $e5
    adc h                                         ; $7501: $8c
    cp [hl]                                       ; $7502: $be
    db $e3                                        ; $7503: $e3
    nop                                           ; $7504: $00
    call $dbda                                    ; $7505: $cd $da $db
    cp $a3                                        ; $7508: $fe $a3
    ld [hl+], a                                   ; $750a: $22
    jp $e0c0                                      ; $750b: $c3 $c0 $e0


    sbc b                                         ; $750e: $98
    rra                                           ; $750f: $1f
    sbc b                                         ; $7510: $98
    rrca                                          ; $7511: $0f
    dec c                                         ; $7512: $0d
    ld bc, $bf00                                  ; $7513: $01 $00 $bf
    and $7f                                       ; $7516: $e6 $7f
    push hl                                       ; $7518: $e5
    cp [hl]                                       ; $7519: $be
    ld [c], a                                     ; $751a: $e2
    ldh [$f5], a                                  ; $751b: $e0 $f5
    and b                                         ; $751d: $a0
    nop                                           ; $751e: $00
    adc $7e                                       ; $751f: $ce $7e
    ret nz                                        ; $7521: $c0

    cp [hl]                                       ; $7522: $be
    jp $c37c                                      ; $7523: $c3 $7c $c3


    sub a                                         ; $7526: $97
    sbc b                                         ; $7527: $98
    rrca                                          ; $7528: $0f
    rra                                           ; $7529: $1f
    ld [bc], a                                    ; $752a: $02
    inc bc                                        ; $752b: $03
    inc b                                         ; $752c: $04
    rlca                                          ; $752d: $07
    rlca                                          ; $752e: $07
    db $ec                                        ; $752f: $ec
    pop bc                                        ; $7530: $c1
    jp hl                                         ; $7531: $e9


    and h                                         ; $7532: $a4
    ld l, $e4                                     ; $7533: $2e $e4
    ldh [$bf], a                                  ; $7535: $e0 $bf
    db $e3                                        ; $7537: $e3
    nop                                           ; $7538: $00
    call z, $a071                                 ; $7539: $cc $71 $a0
    cp [hl]                                       ; $753c: $be
    call nz, $c47c                                ; $753d: $c4 $7c $c4
    sub a                                         ; $7540: $97
    sbc b                                         ; $7541: $98
    ld [$4681], sp                                ; $7542: $08 $81 $46
    rst $38                                       ; $7545: $ff
    pop hl                                        ; $7546: $e1
    xor e                                         ; $7547: $ab
    jp $a268                                      ; $7548: $c3 $68 $a2


    adc b                                         ; $754b: $88
    jp nz, $e401                                  ; $754c: $c2 $01 $e4

    nop                                           ; $754f: $00
    xor $a0                                       ; $7550: $ee $a0
    db $d3                                        ; $7552: $d3
    ret nc                                        ; $7553: $d0

    pop de                                        ; $7554: $d1
    rst $38                                       ; $7555: $ff
    pop bc                                        ; $7556: $c1
    rra                                           ; $7557: $1f
    jp nz, $c196                                  ; $7558: $c2 $96 $c1

    pop bc                                        ; $755b: $c1
    sbc b                                         ; $755c: $98
    ld [$451f], sp                                ; $755d: $08 $1f $45
    dec hl                                        ; $7560: $2b
    ld sp, $452b                                  ; $7561: $31 $2b $45
    cp a                                          ; $7564: $bf
    pop hl                                        ; $7565: $e1
    ld a, [hl+]                                   ; $7566: $2a
    push bc                                       ; $7567: $c5
    cp a                                          ; $7568: $bf
    jp hl                                         ; $7569: $e9


    add [hl]                                      ; $756a: $86

jr_06e_756b:
    nop                                           ; $756b: $00
    xor [hl]                                      ; $756c: $ae
    jp nc, $fdd3                                  ; $756d: $d2 $d3 $fd

    add c                                         ; $7570: $81
    ld c, $e1                                     ; $7571: $0e $e1
    inc b                                         ; $7573: $04
    and c                                         ; $7574: $a1
    ld c, $a0                                     ; $7575: $0e $a0
    rrca                                          ; $7577: $0f
    rst $38                                       ; $7578: $ff
    ld [bc], a                                    ; $7579: $02
    ld a, [hl+]                                   ; $757a: $2a
    jr nz, jr_06e_759d                            ; $757b: $20 $20

    ld a, [hl+]                                   ; $757d: $2a
    ld b, l                                       ; $757e: $45
    ld b, [hl]                                    ; $757f: $46
    ld b, $f0                                     ; $7580: $06 $f0
    ld a, [hl+]                                   ; $7582: $2a
    push bc                                       ; $7583: $c5
    push af                                       ; $7584: $f5
    add h                                         ; $7585: $84
    add hl, hl                                    ; $7586: $29
    jp $ac00                                      ; $7587: $c3 $00 $ac


    db $ed                                        ; $758a: $ed
    xor $d4                                       ; $758b: $ee $d4
    push de                                       ; $758d: $d5
    rst $08                                       ; $758e: $cf
    rst $28                                       ; $758f: $ef
    and b                                         ; $7590: $a0
    and c                                         ; $7591: $a1
    ld [bc], a                                    ; $7592: $02
    db $10                                        ; $7593: $10
    db $e3                                        ; $7594: $e3
    inc d                                         ; $7595: $14
    jp Jump_000_020f                              ; $7596: $c3 $0f $02


    ld a, a                                       ; $7599: $7f
    ld l, $20                                     ; $759a: $2e $20
    daa                                           ; $759c: $27

jr_06e_759d:
    ld b, d                                       ; $759d: $42
    ld b, [hl]                                    ; $759e: $46
    dec b                                         ; $759f: $05
    ld c, $28                                     ; $75a0: $0e $28
    xor c                                         ; $75a2: $a9
    db $fc                                        ; $75a3: $fc
    cp a                                          ; $75a4: $bf
    push hl                                       ; $75a5: $e5
    add l                                         ; $75a6: $85
    adc d                                         ; $75a7: $8a
    and b                                         ; $75a8: $a0
    and b                                         ; $75a9: $a0
    ldh a, [$f1]                                  ; $75aa: $f0 $f1
    ld a, [c]                                     ; $75ac: $f2
    di                                            ; $75ad: $f3

jr_06e_75ae:
    ld a, a                                       ; $75ae: $7f
    db $f4                                        ; $75af: $f4
    sbc a                                         ; $75b0: $9f
    sbc h                                         ; $75b1: $9c
    xor [hl]                                      ; $75b2: $ae
    ld b, [hl]                                    ; $75b3: $46
    ld [bc], a                                    ; $75b4: $02
    dec c                                         ; $75b5: $0d
    rra                                           ; $75b6: $1f
    call nz, $99ff                                ; $75b7: $c4 $ff $99
    nop                                           ; $75ba: $00
    ld bc, $bd08                                  ; $75bb: $01 $08 $bd
    inc hl                                        ; $75be: $23
    ld hl, $c342                                  ; $75bf: $21 $42 $c3
    xor [hl]                                      ; $75c2: $ae
    ld b, [hl]                                    ; $75c3: $46
    jr z, jr_06e_756b                             ; $75c4: $28 $a5

    ld l, h                                       ; $75c6: $6c
    xor b                                         ; $75c7: $a8
    nop                                           ; $75c8: $00
    xor b                                         ; $75c9: $a8
    add h                                         ; $75ca: $84
    add c                                         ; $75cb: $81
    sub $d7                                       ; $75cc: $d6 $d7
    ld a, [hl]                                    ; $75ce: $7e
    ld a, [hl]                                    ; $75cf: $7e
    add c                                         ; $75d0: $81
    sbc a                                         ; $75d1: $9f
    sbc h                                         ; $75d2: $9c
    ld b, [hl]                                    ; $75d3: $46
    xor a                                         ; $75d4: $af
    xor [hl]                                      ; $75d5: $ae
    ld b, [hl]                                    ; $75d6: $46
    adc e                                         ; $75d7: $8b
    pop bc                                        ; $75d8: $c1
    db $fc                                        ; $75d9: $fc
    adc d                                         ; $75da: $8a
    ret nz                                        ; $75db: $c0

    add b                                         ; $75dc: $80
    ret nz                                        ; $75dd: $c0

    inc b                                         ; $75de: $04
    inc bc                                        ; $75df: $03
    add hl, sp                                    ; $75e0: $39
    dec [hl]                                      ; $75e1: $35
    inc a                                         ; $75e2: $3c
    xor [hl]                                      ; $75e3: $ae
    pop bc                                        ; $75e4: $c1
    xor a                                         ; $75e5: $af
    ld l, c                                       ; $75e6: $69
    and d                                         ; $75e7: $a2
    xor b                                         ; $75e8: $a8
    and a                                         ; $75e9: $a7
    daa                                           ; $75ea: $27
    add h                                         ; $75eb: $84
    nop                                           ; $75ec: $00
    adc d                                         ; $75ed: $8a
    jp $a0a0                                      ; $75ee: $c3 $a0 $a0


    sbc a                                         ; $75f1: $9f
    ccf                                           ; $75f2: $3f
    sbc l                                         ; $75f3: $9d
    sbc h                                         ; $75f4: $9c
    ld b, [hl]                                    ; $75f5: $46
    xor [hl]                                      ; $75f6: $ae
    ld b, [hl]                                    ; $75f7: $46
    xor a                                         ; $75f8: $af
    adc e                                         ; $75f9: $8b
    jp nz, $e00c                                  ; $75fa: $c2 $0c $e0

    ld a, [hl]                                    ; $75fd: $7e
    add b                                         ; $75fe: $80
    pop bc                                        ; $75ff: $c1
    ld b, l                                       ; $7600: $45
    ld a, [hl-]                                   ; $7601: $3a
    dec [hl]                                      ; $7602: $35
    ld a, [hl-]                                   ; $7603: $3a
    xor a                                         ; $7604: $af
    ld b, [hl]                                    ; $7605: $46
    xor h                                         ; $7606: $ac
    call nz, $aa50                                ; $7607: $c4 $50 $aa
    adc h                                         ; $760a: $8c
    nop                                           ; $760b: $00
    adc d                                         ; $760c: $8a
    jp $83a0                                      ; $760d: $c3 $a0 $83


    ldh [rDMA], a                                 ; $7610: $e0 $46
    jp nz, $aee2                                  ; $7612: $c2 $e2 $ae

    db $fd                                        ; $7615: $fd
    pop hl                                        ; $7616: $e1
    cp $0c                                        ; $7617: $fe $0c
    ldh [rIF], a                                  ; $7619: $e0 $0f
    ld [bc], a                                    ; $761b: $02
    ld a, c                                       ; $761c: $79
    ld a, d                                       ; $761d: $7a
    ld h, [hl]                                    ; $761e: $66
    dec [hl]                                      ; $761f: $35
    ld a, $00                                     ; $7620: $3e $00
    or h                                          ; $7622: $b4
    ldh [$ac], a                                  ; $7623: $e0 $ac
    jp nz, $86f5                                  ; $7625: $c2 $f5 $86

    jr z, jr_06e_75ae                             ; $7628: $28 $84

    add l                                         ; $762a: $85
    ld l, c                                       ; $762b: $69
    ld b, e                                       ; $762c: $43
    add b                                         ; $762d: $80
    dec b                                         ; $762e: $05
    pop hl                                        ; $762f: $e1
    add l                                         ; $7630: $85
    db $e3                                        ; $7631: $e3
    ld a, [$e07e]                                 ; $7632: $fa $7e $e0
    xor a                                         ; $7635: $af
    ld a, [bc]                                    ; $7636: $0a
    pop bc                                        ; $7637: $c1
    ld [$7e79], sp                                ; $7638: $08 $79 $7e
    ld b, b                                       ; $763b: $40
    ld l, b                                       ; $763c: $68
    rra                                           ; $763d: $1f
    ld h, [hl]                                    ; $763e: $66
    ld a, [hl-]                                   ; $763f: $3a
    or d                                          ; $7640: $b2
    ld b, [hl]                                    ; $7641: $46
    dec b                                         ; $7642: $05
    ld [hl-], a                                   ; $7643: $32
    ld [c], a                                     ; $7644: $e2
    rlca                                          ; $7645: $07
    add [hl]                                      ; $7646: $86
    nop                                           ; $7647: $00
    pop af                                        ; $7648: $f1
    or b                                          ; $7649: $b0
    pop bc                                        ; $764a: $c1
    pop hl                                        ; $764b: $e1
    dec b                                         ; $764c: $05
    ldh [$82], a                                  ; $764d: $e0 $82
    db $e3                                        ; $764f: $e3
    res 4, h                                      ; $7650: $cb $a4
    ld [$4080], sp                                ; $7652: $08 $80 $40
    ldh [rBCPS], a                                ; $7655: $e0 $68
    add a                                         ; $7657: $87
    ld h, [hl]                                    ; $7658: $66
    ld [hl], $b2                                  ; $7659: $36 $b2
    ld [hl-], a                                   ; $765b: $32
    pop hl                                        ; $765c: $e1
    push af                                       ; $765d: $f5
    add l                                         ; $765e: $85
    cp $e7                                        ; $765f: $fe $e7
    add l                                         ; $7661: $85

Jump_06e_7662:
    adc d                                         ; $7662: $8a
    and b                                         ; $7663: $a0
    add c                                         ; $7664: $81
    and c                                         ; $7665: $a1
    add $c0                                       ; $7666: $c6 $c0
    dec b                                         ; $7668: $05
    ld [c], a                                     ; $7669: $e2
    nop                                           ; $766a: $00
    pop hl                                        ; $766b: $e1
    dec sp                                        ; $766c: $3b
    ret nz                                        ; $766d: $c0

    ld d, $60                                     ; $766e: $16 $60
    ret nz                                        ; $7670: $c0

    ldh [$b2], a                                  ; $7671: $e0 $b2
    ld a, a                                       ; $7673: $7f
    add hl, sp                                    ; $7674: $39
    dec [hl]                                      ; $7675: $35
    ld l, d                                       ; $7676: $6a
    dec [hl]                                      ; $7677: $35
    add hl, sp                                    ; $7678: $39
    ld b, [hl]                                    ; $7679: $46
    xor [hl]                                      ; $767a: $ae
    ld a, $c0                                     ; $767b: $3e $c0
    ret nc                                        ; $767d: $d0

    ld [hl], d                                    ; $767e: $72
    ret nz                                        ; $767f: $c0

    add [hl]                                      ; $7680: $86
    add l                                         ; $7681: $85
    ld a, a                                       ; $7682: $7f
    add e                                         ; $7683: $83
    add l                                         ; $7684: $85
    adc e                                         ; $7685: $8b
    sbc [hl]                                      ; $7686: $9e
    inc b                                         ; $7687: $04
    db $e3                                        ; $7688: $e3
    ld b, l                                       ; $7689: $45
    ld c, b                                       ; $768a: $48
    cp a                                          ; $768b: $bf
    ld d, e                                       ; $768c: $53
    ld b, l                                       ; $768d: $45
    ld b, [hl]                                    ; $768e: $46
    ld b, [hl]                                    ; $768f: $46
    ld [$d39b], sp                                ; $7690: $08 $9b $d3
    pop hl                                        ; $7693: $e1
    ld [$822f], sp                                ; $7694: $08 $2f $82
    add e                                         ; $7697: $83
    ld b, [hl]                                    ; $7698: $46
    or d                                          ; $7699: $b2
    ret nz                                        ; $769a: $c0

    ldh [$3e], a                                  ; $769b: $e0 $3e
    xor h                                         ; $769d: $ac
    ret nz                                        ; $769e: $c0

    and [hl]                                      ; $769f: $a6
    ld h, b                                       ; $76a0: $60
    pop bc                                        ; $76a1: $c1
    rrca                                          ; $76a2: $0f
    ld l, d                                       ; $76a3: $6a
    ret nz                                        ; $76a4: $c0

    db $fd                                        ; $76a5: $fd
    jp hl                                         ; $76a6: $e9


    add l                                         ; $76a7: $85
    adc e                                         ; $76a8: $8b
    ret nz                                        ; $76a9: $c0

    ldh [rNR12], a                                ; $76aa: $e0 $12
    and c                                         ; $76ac: $a1
    ld b, h                                       ; $76ad: $44
    ld e, [hl]                                    ; $76ae: $5e
    ei                                            ; $76af: $fb
    ld d, [hl]                                    ; $76b0: $56
    ld b, h                                       ; $76b1: $44
    rst $08                                       ; $76b2: $cf
    call nz, Call_000_0898                        ; $76b3: $c4 $98 $08
    add l                                         ; $76b6: $85
    adc e                                         ; $76b7: $8b
    ld b, [hl]                                    ; $76b8: $46
    inc [hl]                                      ; $76b9: $34
    add b                                         ; $76ba: $80
    ld [c], a                                     ; $76bb: $e2
    xor a                                         ; $76bc: $af
    ret nz                                        ; $76bd: $c0

    ld [$80b3], sp                                ; $76be: $08 $b3 $80
    sbc h                                         ; $76c1: $9c
    sbc l                                         ; $76c2: $9d
    rst $38                                       ; $76c3: $ff
    ld [$ed00], a                                 ; $76c4: $ea $00 $ed
    sbc $86                                       ; $76c7: $de $86
    pop bc                                        ; $76c9: $c1
    ld b, l                                       ; $76ca: $45
    ld b, a                                       ; $76cb: $47
    ld d, [hl]                                    ; $76cc: $56
    dec l                                         ; $76cd: $2d
    ld c, a                                       ; $76ce: $4f
    and b                                         ; $76cf: $a0
    dec b                                         ; $76d0: $05
    db $10                                        ; $76d1: $10
    cp $3c                                        ; $76d2: $fe $3c
    and b                                         ; $76d4: $a0
    sbc b                                         ; $76d5: $98
    ld c, $05                                     ; $76d6: $0e $05
    add d                                         ; $76d8: $82
    add e                                         ; $76d9: $83
    ld a, [hl-]                                   ; $76da: $3a
    ld l, h                                       ; $76db: $6c
    ld d, a                                       ; $76dc: $57
    ld l, l                                       ; $76dd: $6d
    ld a, [hl-]                                   ; $76de: $3a
    ld b, l                                       ; $76df: $45
    dec l                                         ; $76e0: $2d
    ret nz                                        ; $76e1: $c0

    ld b, $c1                                     ; $76e2: $06 $c1
    ldh [$9f], a                                  ; $76e4: $e0 $9f
    sub $c3                                       ; $76e6: $d6 $c3
    db $ec                                        ; $76e8: $ec
    ld a, [$85e5]                                 ; $76e9: $fa $e5 $85
    ld c, d                                       ; $76ec: $4a
    ret nc                                        ; $76ed: $d0

    pop de                                        ; $76ee: $d1
    call nz, $aea0                                ; $76ef: $c4 $a0 $ae
    xor a                                         ; $76f2: $af
    ld b, l                                       ; $76f3: $45
    ld [hl], a                                    ; $76f4: $77
    ld d, [hl]                                    ; $76f5: $56
    ld e, d                                       ; $76f6: $5a
    ld l, $4f                                     ; $76f7: $2e $4f
    and b                                         ; $76f9: $a0

jr_06e_76fa:
    xor [hl]                                      ; $76fa: $ae
    inc bc                                        ; $76fb: $03

jr_06e_76fc:
    inc b                                         ; $76fc: $04
    ret nz                                        ; $76fd: $c0

    and c                                         ; $76fe: $a1
    ld a, a                                       ; $76ff: $7f
    ld b, $85                                     ; $7700: $06 $85
    add a                                         ; $7702: $87
    ld [hl], c                                    ; $7703: $71
    ld [hl], b                                    ; $7704: $70
    ld l, [hl]                                    ; $7705: $6e
    ld a, [hl-]                                   ; $7706: $3a
    cpl                                           ; $7707: $2f
    ldh [$7b], a                                  ; $7708: $e0 $7b
    ld b, [hl]                                    ; $770a: $46
    dec b                                         ; $770b: $05
    pop bc                                        ; $770c: $c1
    pop hl                                        ; $770d: $e1
    ret nc                                        ; $770e: $d0

    pop de                                        ; $770f: $d1
    push af                                       ; $7710: $f5
    or $ca                                        ; $7711: $f6 $ca
    daa                                           ; $7713: $27

jr_06e_7714:
    db $f4                                        ; $7714: $f4
    add l                                         ; $7715: $85
    ld c, d                                       ; $7716: $4a
    call nz, $9e80                                ; $7717: $c4 $80 $9e
    add h                                         ; $771a: $84
    and c                                         ; $771b: $a1
    ld d, l                                       ; $771c: $55
    ld d, l                                       ; $771d: $55
    daa                                           ; $771e: $27
    jr nz, jr_06e_777a                            ; $771f: $20 $59

    dec l                                         ; $7721: $2d
    cp h                                          ; $7722: $bc
    and c                                         ; $7723: $a1
    ret nz                                        ; $7724: $c0

    and e                                         ; $7725: $a3
    add hl, sp                                    ; $7726: $39
    dec [hl]                                      ; $7727: $35
    rst $38                                       ; $7728: $ff
    ldh [rLCDC], a                                ; $7729: $e0 $40
    add hl, sp                                    ; $772b: $39
    add d                                         ; $772c: $82
    pop bc                                        ; $772d: $c1
    sbc [hl]                                      ; $772e: $9e
    sbc a                                         ; $772f: $9f
    add e                                         ; $7730: $83
    jp z, $8527                                   ; $7731: $ca $27 $85

    jr z, jr_06e_76fa                             ; $7734: $28 $c4

    add d                                         ; $7736: $82
    cp [hl]                                       ; $7737: $be
    jp nz, Jump_000_3945                          ; $7738: $c2 $45 $39

    ld b, a                                       ; $773b: $47
    ld hl, $2d26                                  ; $773c: $21 $26 $2d
    add hl, bc                                    ; $773f: $09
    add c                                         ; $7740: $81
    call z, $c080                                 ; $7741: $cc $80 $c0
    push hl                                       ; $7744: $e5
    add hl, sp                                    ; $7745: $39
    ret nz                                        ; $7746: $c0

    db $e3                                        ; $7747: $e3
    ld d, b                                       ; $7748: $50
    sbc a                                         ; $7749: $9f
    add d                                         ; $774a: $82
    ld c, a                                       ; $774b: $4f
    jr z, @-$79                                   ; $774c: $28 $85

    jr z, jr_06e_7714                             ; $774e: $28 $c4

    add d                                         ; $7750: $82
    and c                                         ; $7751: $a1
    jp nc, $b261                                  ; $7752: $d2 $61 $b2

    ld c, a                                       ; $7755: $4f
    and b                                         ; $7756: $a0
    ld a, b                                       ; $7757: $78
    db $10                                        ; $7758: $10
    ret nz                                        ; $7759: $c0

    jr c, jr_06e_76fc                             ; $775a: $38 $a0

    ld [hl], h                                    ; $775c: $74
    ld b, b                                       ; $775d: $40
    rrca                                          ; $775e: $0f
    ld [bc], a                                    ; $775f: $02
    ld b, l                                       ; $7760: $45
    ld [hl], $7f                                  ; $7761: $36 $7f
    ldh [rNR50], a                                ; $7763: $e0 $24
    ccf                                           ; $7765: $3f
    ldh [$6d], a                                  ; $7766: $e0 $6d
    and b                                         ; $7768: $a0
    sbc [hl]                                      ; $7769: $9e
    sbc a                                         ; $776a: $9f
    add d                                         ; $776b: $82
    ld c, a                                       ; $776c: $4f
    daa                                           ; $776d: $27
    add sp, -$7b                                  ; $776e: $e8 $85
    ld a, [hl+]                                   ; $7770: $2a
    cp a                                          ; $7771: $bf
    and d                                         ; $7772: $a2
    add sp, $41                                   ; $7773: $e8 $41
    ret nz                                        ; $7775: $c0

    ret nc                                        ; $7776: $d0

    ldh [$91], a                                  ; $7777: $e0 $91
    ld [c], a                                     ; $7779: $e2

jr_06e_777a:
    xor a                                         ; $777a: $af
    ld a, a                                       ; $777b: $7f
    ld [c], a                                     ; $777c: $e2
    ld c, $05                                     ; $777d: $0e $05
    xor [hl]                                      ; $777f: $ae
    inc bc                                        ; $7780: $03
    ld a, [hl-]                                   ; $7781: $3a
    dec [hl]                                      ; $7782: $35
    cp [hl]                                       ; $7783: $be
    add b                                         ; $7784: $80
    xor d                                         ; $7785: $aa
    add c                                         ; $7786: $81
    pop bc                                        ; $7787: $c1
    jp nz, $294f                                  ; $7788: $c2 $4f $29

    add l                                         ; $778b: $85
    ld l, c                                       ; $778c: $69
    add c                                         ; $778d: $81
    add b                                         ; $778e: $80
    ld a, c                                       ; $778f: $79
    sbc [hl]                                      ; $7790: $9e
    pop bc                                        ; $7791: $c1
    and c                                         ; $7792: $a1
    ret nc                                        ; $7793: $d0

    add b                                         ; $7794: $80
    ld h, d                                       ; $7795: $62
    ld a, d                                       ; $7796: $7a
    ld a, h                                       ; $7797: $7c
    ld a, l                                       ; $7798: $7d
    cp a                                          ; $7799: $bf
    add h                                         ; $779a: $84
    ld [hl+], a                                   ; $779b: $22
    cp [hl]                                       ; $779c: $be
    ret nz                                        ; $779d: $c0

    xor a                                         ; $779e: $af
    cp $c1                                        ; $779f: $fe $c1
    ld l, h                                       ; $77a1: $6c
    add b                                         ; $77a2: $80
    ld l, c                                       ; $77a3: $69
    add b                                         ; $77a4: $80
    sbc [hl]                                      ; $77a5: $9e
    ld e, e                                       ; $77a6: $5b
    add d                                         ; $77a7: $82
    nop                                           ; $77a8: $00
    ld a, [c]                                     ; $77a9: $f2
    db $fc                                        ; $77aa: $fc
    cp a                                          ; $77ab: $bf
    and d                                         ; $77ac: $a2
    add a                                         ; $77ad: $87
    add b                                         ; $77ae: $80
    xor [hl]                                      ; $77af: $ae
    ld b, [hl]                                    ; $77b0: $46
    add hl, sp                                    ; $77b1: $39
    ld h, d                                       ; $77b2: $62
    ld h, a                                       ; $77b3: $67
    add hl, sp                                    ; $77b4: $39
    rlca                                          ; $77b5: $07
    or d                                          ; $77b6: $b2
    ld a, a                                       ; $77b7: $7f
    ld a, l                                       ; $77b8: $7d
    inc a                                         ; $77b9: $3c
    add b                                         ; $77ba: $80
    dec c                                         ; $77bb: $0d
    and d                                         ; $77bc: $a2
    ld a, a                                       ; $77bd: $7f
    ldh [rLCDC], a                                ; $77be: $e0 $40
    ldh [$67], a                                  ; $77c0: $e0 $67
    and b                                         ; $77c2: $a0
    jp nz, $a023                                  ; $77c3: $c2 $23 $a0

    and c                                         ; $77c6: $a1
    ld e, $40                                     ; $77c7: $1e $40
    ld c, a                                       ; $77c9: $4f
    add hl, bc                                    ; $77ca: $09
    add l                                         ; $77cb: $85
    add hl, bc                                    ; $77cc: $09
    cp a                                          ; $77cd: $bf
    and h                                         ; $77ce: $a4
    xor a                                         ; $77cf: $af
    ld b, [hl]                                    ; $77d0: $46
    rst $38                                       ; $77d1: $ff
    add hl, sp                                    ; $77d2: $39
    ld l, e                                       ; $77d3: $6b
    ld l, h                                       ; $77d4: $6c
    ld a, [hl-]                                   ; $77d5: $3a
    ld b, l                                       ; $77d6: $45
    add e                                         ; $77d7: $83
    add h                                         ; $77d8: $84
    dec b                                         ; $77d9: $05
    ld sp, hl                                     ; $77da: $f9
    rrca                                          ; $77db: $0f
    ld d, d                                       ; $77dc: $52
    and c                                         ; $77dd: $a1
    ld d, c                                       ; $77de: $51
    nop                                           ; $77df: $00
    ld b, $af                                     ; $77e0: $06 $af
    ld a, [hl-]                                   ; $77e2: $3a
    dec [hl]                                      ; $77e3: $35
    ld a, $0e                                     ; $77e4: $3e $0e
    add b                                         ; $77e6: $80
    pop hl                                        ; $77e7: $e1
    ld b, [hl]                                    ; $77e8: $46
    xor a                                         ; $77e9: $af
    sbc [hl]                                      ; $77ea: $9e
    ld e, $41                                     ; $77eb: $1e $41
    nop                                           ; $77ed: $00
    or $42                                        ; $77ee: $f6 $42
    add d                                         ; $77f0: $82
    db $10                                        ; $77f1: $10
    add b                                         ; $77f2: $80
    ld a, a                                       ; $77f3: $7f
    ld l, [hl]                                    ; $77f4: $6e
    ld [hl], b                                    ; $77f5: $70
    ld [hl], c                                    ; $77f6: $71
    adc b                                         ; $77f7: $88
    add a                                         ; $77f8: $87
    add l                                         ; $77f9: $85
    ld b, $18                                     ; $77fa: $06 $18
    ld hl, $99ff                                  ; $77fc: $21 $ff $99
    ld bc, $9b00                                  ; $77ff: $01 $00 $9b
    ld b, $ae                                     ; $7802: $06 $ae
    add hl, sp                                    ; $7804: $39
    dec [hl]                                      ; $7805: $35
    ld bc, $e73e                                  ; $7806: $01 $3e $e7
    add e                                         ; $7809: $83
    ret nz                                        ; $780a: $c0

    and b                                         ; $780b: $a0
    sbc h                                         ; $780c: $9c

jr_06e_780d:
    nop                                           ; $780d: $00
    nop                                           ; $780e: $00
    call nc, $a1c2                                ; $780f: $d4 $c2 $a1
    pop bc                                        ; $7812: $c1
    jp $c150                                      ; $7813: $c3 $50 $c1


    db $fc                                        ; $7816: $fc
    add h                                         ; $7817: $84
    pop bc                                        ; $7818: $c1
    ld a, h                                       ; $7819: $7c
    ld h, b                                       ; $781a: $60
    dec c                                         ; $781b: $0d
    sbc d                                         ; $781c: $9a
    ld c, $05                                     ; $781d: $0e $05
    xor a                                         ; $781f: $af
    xor [hl]                                      ; $7820: $ae
    ld b, b                                       ; $7821: $40
    cp [hl]                                       ; $7822: $be
    ld h, b                                       ; $7823: $60
    ld h, $83                                     ; $7824: $26 $83
    ld a, a                                       ; $7826: $7f
    and d                                         ; $7827: $a2
    nop                                           ; $7828: $00
    di                                            ; $7829: $f3
    pop bc                                        ; $782a: $c1
    add b                                         ; $782b: $80
    ld b, c                                       ; $782c: $41
    add b                                         ; $782d: $80
    xor [hl]                                      ; $782e: $ae
    sub c                                         ; $782f: $91
    ld h, b                                       ; $7830: $60
    cp h                                          ; $7831: $bc
    ld d, b                                       ; $7832: $50
    pop bc                                        ; $7833: $c1
    call nz, Call_06e_7d64                        ; $7834: $c4 $64 $7d
    inc bc                                        ; $7837: $03
    inc b                                         ; $7838: $04
    ld [bc], a                                    ; $7839: $02
    ld l, h                                       ; $783a: $6c
    and b                                         ; $783b: $a0
    inc a                                         ; $783c: $3c
    add e                                         ; $783d: $83
    dec [hl]                                      ; $783e: $35
    ld [hl], $e5                                  ; $783f: $36 $e5
    ldh [$bd], a                                  ; $7841: $e0 $bd
    and h                                         ; $7843: $a4
    jp z, $85a8                                   ; $7844: $ca $a8 $85

    ld a, [bc]                                    ; $7847: $0a
    ld b, c                                       ; $7848: $41
    add b                                         ; $7849: $80
    ld b, [hl]                                    ; $784a: $46
    db $fd                                        ; $784b: $fd
    xor a                                         ; $784c: $af
    ld bc, $35e0                                  ; $784d: $01 $e0 $35
    jr c, jr_06e_788a                             ; $7850: $38 $38

    dec [hl]                                      ; $7852: $35
    inc a                                         ; $7853: $3c
    ld a, [bc]                                    ; $7854: $0a
    and $85                                       ; $7855: $e6 $85
    ld h, c                                       ; $7857: $61
    ld a, [hl]                                    ; $7858: $7e
    ld b, e                                       ; $7859: $43
    cp c                                          ; $785a: $b9
    ret nz                                        ; $785b: $c0

    ld sp, $3960                                  ; $785c: $31 $60 $39
    ld h, d                                       ; $785f: $62
    ld h, e                                       ; $7860: $63
    add e                                         ; $7861: $83
    ld h, [hl]                                    ; $7862: $66
    ld [hl], $e5                                  ; $7863: $36 $e5
    ldh [$7d], a                                  ; $7865: $e0 $7d
    and e                                         ; $7867: $a3
    nop                                           ; $7868: $00
    call $0248                                    ; $7869: $cd $48 $02
    rst $00                                       ; $786c: $c7
    jr nz, jr_06e_780d                            ; $786d: $20 $9e

    cp $9e                                        ; $786f: $fe $9e
    ld [c], a                                     ; $7871: $e2
    ld b, l                                       ; $7872: $45
    ld c, b                                       ; $7873: $48
    ld c, [hl]                                    ; $7874: $4e
    ld c, c                                       ; $7875: $49
    ld d, d                                       ; $7876: $52
    ld a, [hl-]                                   ; $7877: $3a
    dec [hl]                                      ; $7878: $35
    ld a, l                                       ; $7879: $7d
    ld a, [bc]                                    ; $787a: $0a
    pop bc                                        ; $787b: $c1
    pop hl                                        ; $787c: $e1
    ld b, h                                       ; $787d: $44
    ld c, c                                       ; $787e: $49
    ld d, h                                       ; $787f: $54
    ld a, a                                       ; $7880: $7f
    ld a, l                                       ; $7881: $7d
    ld l, a                                       ; $7882: $6f
    and b                                         ; $7883: $a0
    rra                                           ; $7884: $1f
    ld a, [hl-]                                   ; $7885: $3a
    ld l, c                                       ; $7886: $69
    dec [hl]                                      ; $7887: $35
    ld l, b                                       ; $7888: $68
    ld h, [hl]                                    ; $7889: $66

jr_06e_788a:
    ld a, l                                       ; $788a: $7d
    add b                                         ; $788b: $80
    cp l                                          ; $788c: $bd
    and c                                         ; $788d: $a1
    ld e, h                                       ; $788e: $5c
    nop                                           ; $788f: $00
    ldh a, [rP1]                                  ; $7890: $f0 $00
    xor e                                         ; $7892: $ab
    ld a, [bc]                                    ; $7893: $0a
    inc hl                                        ; $7894: $23
    inc bc                                        ; $7895: $03
    and c                                         ; $7896: $a1
    sbc [hl]                                      ; $7897: $9e
    ld [c], a                                     ; $7898: $e2
    ld b, l                                       ; $7899: $45
    ld d, d                                       ; $789a: $52
    ld d, h                                       ; $789b: $54
    ld d, h                                       ; $789c: $54
    rst $38                                       ; $789d: $ff
    ld d, h                                       ; $789e: $54
    ld a, [hl-]                                   ; $789f: $3a
    ld a, [hl-]                                   ; $78a0: $3a
    ld b, $06                                     ; $78a1: $06 $06
    ld a, c                                       ; $78a3: $79
    ld a, [hl]                                    ; $78a4: $7e
    dec hl                                        ; $78a5: $2b
    rst $38                                       ; $78a6: $ff
    dec hl                                        ; $78a7: $2b
    ld d, e                                       ; $78a8: $53
    ld e, c                                       ; $78a9: $59
    ld b, l                                       ; $78aa: $45
    add c                                         ; $78ab: $81
    ld b, [hl]                                    ; $78ac: $46
    ld b, [hl]                                    ; $78ad: $46
    ld b, d                                       ; $78ae: $42
    sbc a                                         ; $78af: $9f
    ld h, d                                       ; $78b0: $62
    halt                                          ; $78b1: $76
    dec [hl]                                      ; $78b2: $35
    dec [hl]                                      ; $78b3: $35
    ld l, d                                       ; $78b4: $6a
    db $fd                                        ; $78b5: $fd
    ret nz                                        ; $78b6: $c0

    xor b                                         ; $78b7: $a8
    ld b, b                                       ; $78b8: $40
    sbc [hl]                                      ; $78b9: $9e
    or b                                          ; $78ba: $b0
    ld e, h                                       ; $78bb: $5c
    nop                                           ; $78bc: $00
    nop                                           ; $78bd: $00
    xor a                                         ; $78be: $af
    inc bc                                        ; $78bf: $03
    and l                                         ; $78c0: $a5
    ld b, c                                       ; $78c1: $41
    add c                                         ; $78c2: $81
    scf                                           ; $78c3: $37
    jr c, jr_06e_7906                             ; $78c4: $38 $40

    ldh [$39], a                                  ; $78c6: $e0 $39
    rst $38                                       ; $78c8: $ff
    ld [$8005], sp                                ; $78c9: $08 $05 $80
    ld b, d                                       ; $78cc: $42
    daa                                           ; $78cd: $27
    jr nz, jr_06e_78ff                            ; $78ce: $20 $2f

    ld a, [hl+]                                   ; $78d0: $2a
    ld d, $c0                                     ; $78d1: $16 $c0
    pop hl                                        ; $78d3: $e1
    ld b, b                                       ; $78d4: $40
    ld l, c                                       ; $78d5: $69
    cp l                                          ; $78d6: $bd
    add b                                         ; $78d7: $80
    ld l, d                                       ; $78d8: $6a
    inc a                                         ; $78d9: $3c
    add b                                         ; $78da: $80
    add b                                         ; $78db: $80
    ld [c], a                                     ; $78dc: $e2
    ld e, h                                       ; $78dd: $5c
    ld bc, $7bd0                                  ; $78de: $01 $d0 $7b
    and l                                         ; $78e1: $a5
    nop                                           ; $78e2: $00
    dec h                                         ; $78e3: $25
    rst $00                                       ; $78e4: $c7
    ld [hl+], a                                   ; $78e5: $22
    pop bc                                        ; $78e6: $c1
    ld h, d                                       ; $78e7: $62
    xor a                                         ; $78e8: $af
    ret nz                                        ; $78e9: $c0

    jp Jump_000_0840                              ; $78ea: $c3 $40 $08


    cp $07                                        ; $78ed: $fe $07
    add b                                         ; $78ef: $80
    ld a, [hl+]                                   ; $78f0: $2a
    inc l                                         ; $78f1: $2c
    inc l                                         ; $78f2: $2c
    ld a, [hl+]                                   ; $78f3: $2a
    add e                                         ; $78f4: $83
    add h                                         ; $78f5: $84
    ld b, [hl]                                    ; $78f6: $46
    ld a, a                                       ; $78f7: $7f
    xor [hl]                                      ; $78f8: $ae
    ld b, d                                       ; $78f9: $42
    ld l, e                                       ; $78fa: $6b
    ld l, h                                       ; $78fb: $6c
    dec [hl]                                      ; $78fc: $35
    ld l, h                                       ; $78fd: $6c
    ld l, l                                       ; $78fe: $6d

jr_06e_78ff:
    cp l                                          ; $78ff: $bd
    add b                                         ; $7900: $80
    ld [bc], a                                    ; $7901: $02
    jr z, jr_06e_7944                             ; $7902: $28 $40

    and c                                         ; $7904: $a1
    ld e, h                                       ; $7905: $5c

jr_06e_7906:
    ld [bc], a                                    ; $7906: $02
    ld a, e                                       ; $7907: $7b
    push bc                                       ; $7908: $c5
    nop                                           ; $7909: $00
    ld b, l                                       ; $790a: $45
    jp nz, $1d65                                  ; $790b: $c2 $65 $1d

    pop hl                                        ; $790e: $e1
    sub b                                         ; $790f: $90
    add e                                         ; $7910: $83
    dec [hl]                                      ; $7911: $35
    ld b, $07                                     ; $7912: $06 $07
    add b                                         ; $7914: $80
    adc b                                         ; $7915: $88
    rst $38                                       ; $7916: $ff
    ldh [$87], a                                  ; $7917: $e0 $87
    add l                                         ; $7919: $85
    pop bc                                        ; $791a: $c1
    ret nz                                        ; $791b: $c0

    rst $28                                       ; $791c: $ef
    and b                                         ; $791d: $a0
    inc bc                                        ; $791e: $03
    ld [hl], b                                    ; $791f: $70
    ld l, [hl]                                    ; $7920: $6e
    db $ed                                        ; $7921: $ed
    ld h, b                                       ; $7922: $60
    nop                                           ; $7923: $00
    ld [c], a                                     ; $7924: $e2
    jp z, Jump_000_3669                           ; $7925: $ca $69 $36

    add [hl]                                      ; $7928: $86
    inc bc                                        ; $7929: $03
    and d                                         ; $792a: $a2
    dec b                                         ; $792b: $05
    ld b, b                                       ; $792c: $40
    or [hl]                                       ; $792d: $b6
    ret nz                                        ; $792e: $c0

    ld b, b                                       ; $792f: $40
    ld b, h                                       ; $7930: $44
    inc a                                         ; $7931: $3c
    ld b, b                                       ; $7932: $40
    jp nz, Jump_000_040f                          ; $7933: $c2 $0f $04

    ld a, l                                       ; $7936: $7d
    ld hl, $df07                                  ; $7937: $21 $07 $df
    rlca                                          ; $793a: $07
    inc b                                         ; $793b: $04
    inc bc                                        ; $793c: $03
    ld b, [hl]                                    ; $793d: $46
    ld a, $2e                                     ; $793e: $3e $2e
    jp nz, $ae45                                  ; $7940: $c2 $45 $ae

    add d                                         ; $7943: $82

jr_06e_7944:
    ld a, [hl]                                    ; $7944: $7e
    pop bc                                        ; $7945: $c1
    sbc [hl]                                      ; $7946: $9e
    jr @+$42                                      ; $7947: $18 $40

    nop                                           ; $7949: $00
    adc a                                         ; $794a: $8f
    inc bc                                        ; $794b: $03
    and l                                         ; $794c: $a5
    add [hl]                                      ; $794d: $86
    ld hl, $a2ff                                  ; $794e: $21 $ff $a2
    inc a                                         ; $7951: $3c
    ld a, c                                       ; $7952: $79
    ld b, h                                       ; $7953: $44
    ld b, d                                       ; $7954: $42
    ld b, c                                       ; $7955: $41
    ld c, a                                       ; $7956: $4f
    ld b, b                                       ; $7957: $40
    ld bc, $1000                                  ; $7958: $01 $00 $10
    dec b                                         ; $795b: $05
    ret nz                                        ; $795c: $c0

    ld [c], a                                     ; $795d: $e2
    ld de, $6a39                                  ; $795e: $11 $39 $6a
    inc hl                                        ; $7961: $23
    nop                                           ; $7962: $00
    call nc, $2084                                ; $7963: $d4 $84 $20
    and c                                         ; $7966: $a1
    adc h                                         ; $7967: $8c
    ld [hl+], a                                   ; $7968: $22
    ccf                                           ; $7969: $3f
    db $e4                                        ; $796a: $e4
    adc $20                                       ; $796b: $ce $20
    ld [$4001], sp                                ; $796d: $08 $01 $40
    ld b, b                                       ; $7970: $40
    nop                                           ; $7971: $00
    cp a                                          ; $7972: $bf
    nop                                           ; $7973: $00
    ld b, $7e                                     ; $7974: $06 $7e
    ld h, d                                       ; $7976: $62
    ld l, $60                                     ; $7977: $2e $60
    nop                                           ; $7979: $00
    call nc, $e200                                ; $797a: $d4 $00 $e2
    and e                                         ; $797d: $a3
    push af                                       ; $797e: $f5
    or $83                                        ; $797f: $f6 $83
    add c                                         ; $7981: $81
    jp c, Jump_000_3f82                           ; $7982: $da $82 $3f

    pop hl                                        ; $7985: $e1
    add hl, sp                                    ; $7986: $39
    rst $08                                       ; $7987: $cf
    jr nz, jr_06e_7992                            ; $7988: $20 $08

    xor h                                         ; $798a: $ac
    db $d3                                        ; $798b: $d3
    ld hl, $80fb                                  ; $798c: $21 $fb $80
    ld b, $44                                     ; $798f: $06 $44
    rst $38                                       ; $7991: $ff

jr_06e_7992:
    ld h, c                                       ; $7992: $61
    ld b, h                                       ; $7993: $44
    push hl                                       ; $7994: $e5
    ld [hl+], a                                   ; $7995: $22
    sbc h                                         ; $7996: $9c
    and c                                         ; $7997: $a1
    sbc a                                         ; $7998: $9f
    rst $10                                       ; $7999: $d7
    and b                                         ; $799a: $a0
    nop                                           ; $799b: $00
    sub e                                         ; $799c: $93
    nop                                           ; $799d: $00
    pop hl                                        ; $799e: $e1
    pop bc                                        ; $799f: $c1
    ld [hl+], a                                   ; $79a0: $22
    ld b, b                                       ; $79a1: $40
    rrca                                          ; $79a2: $0f
    ld h, b                                       ; $79a3: $60
    or d                                          ; $79a4: $b2
    ld h, $ba                                     ; $79a5: $26 $ba
    nop                                           ; $79a7: $00
    ld [$bf9b], sp                                ; $79a8: $08 $9b $bf
    add b                                         ; $79ab: $80
    ld a, l                                       ; $79ac: $7d
    ld b, c                                       ; $79ad: $41
    or d                                          ; $79ae: $b2
    rst $38                                       ; $79af: $ff
    ret nz                                        ; $79b0: $c0

    ld a, [hl]                                    ; $79b1: $7e
    ld b, d                                       ; $79b2: $42
    nop                                           ; $79b3: $00
    cp a                                          ; $79b4: $bf
    ld h, c                                       ; $79b5: $61
    rst $10                                       ; $79b6: $d7
    and b                                         ; $79b7: $a0
    nop                                           ; $79b8: $00
    ldh a, [rSB]                                  ; $79b9: $f0 $01
    and c                                         ; $79bb: $a1
    inc c                                         ; $79bc: $0c
    ld [hl+], a                                   ; $79bd: $22
    ld b, [hl]                                    ; $79be: $46
    jr nz, @-$2f                                  ; $79bf: $20 $cf

    ld b, c                                       ; $79c1: $41
    ld [de], a                                    ; $79c2: $12
    pop hl                                        ; $79c3: $e1
    dec de                                        ; $79c4: $1b
    ld [bc], a                                    ; $79c5: $02
    dec c                                         ; $79c6: $0d
    sub c                                         ; $79c7: $91
    ld [hl+], a                                   ; $79c8: $22
    ld [$bf46], sp                                ; $79c9: $08 $46 $bf
    pop bc                                        ; $79cc: $c1
    ld a, a                                       ; $79cd: $7f
    jr nz, jr_06e_7a0f                            ; $79ce: $20 $3f

    ld h, c                                       ; $79d0: $61
    nop                                           ; $79d1: $00
    jp c, $0042                                   ; $79d2: $da $42 $00

    rst $08                                       ; $79d5: $cf
    add d                                         ; $79d6: $82
    ld h, c                                       ; $79d7: $61
    ld [bc], a                                    ; $79d8: $02
    ld b, e                                       ; $79d9: $43
    nop                                           ; $79da: $00
    push hl                                       ; $79db: $e5
    ld a, [hl]                                    ; $79dc: $7e
    jr nz, jr_06e_7a1d                            ; $79dd: $20 $3e

    ld b, l                                       ; $79df: $45
    ld a, $01                                     ; $79e0: $3e $01
    nop                                           ; $79e2: $00
    ld b, c                                       ; $79e3: $41
    pop hl                                        ; $79e4: $e1
    add d                                         ; $79e5: $82
    and c                                         ; $79e6: $a1
    rst $10                                       ; $79e7: $d7
    and d                                         ; $79e8: $a2
    dec b                                         ; $79e9: $05
    ld b, d                                       ; $79ea: $42
    nop                                           ; $79eb: $00
    call z, $2341                                 ; $79ec: $cc $41 $23
    ret nz                                        ; $79ef: $c0

    nop                                           ; $79f0: $00
    add b                                         ; $79f1: $80
    ld b, b                                       ; $79f2: $40
    ld h, d                                       ; $79f3: $62
    rst $08                                       ; $79f4: $cf
    ld b, b                                       ; $79f5: $40
    inc a                                         ; $79f6: $3c
    ld a, [hl]                                    ; $79f7: $7e
    jr nz, @+$75                                  ; $79f8: $20 $73

    ldh [rKEY1], a                                ; $79fa: $e0 $4d
    jr nz, jr_06e_7a0c                            ; $79fc: $20 $0e

    dec b                                         ; $79fe: $05
    ld l, a                                       ; $79ff: $6f
    db $e3                                        ; $7a00: $e3
    nop                                           ; $7a01: $00
    add d                                         ; $7a02: $82
    add $00                                       ; $7a03: $c6 $00
    ld [hl], e                                    ; $7a05: $73
    add d                                         ; $7a06: $82
    ld h, e                                       ; $7a07: $63
    sbc l                                         ; $7a08: $9d
    ld h, b                                       ; $7a09: $60
    sub b                                         ; $7a0a: $90
    add b                                         ; $7a0b: $80

jr_06e_7a0c:
    cp [hl]                                       ; $7a0c: $be
    ld b, [hl]                                    ; $7a0d: $46
    ret nz                                        ; $7a0e: $c0

jr_06e_7a0f:
    ld b, e                                       ; $7a0f: $43
    cpl                                           ; $7a10: $2f
    db $e3                                        ; $7a11: $e3
    ld [bc], a                                    ; $7a12: $02
    ld h, $02                                     ; $7a13: $26 $02
    and c                                         ; $7a15: $a1
    ld bc, $0061                                  ; $7a16: $01 $61 $00
    sub a                                         ; $7a19: $97
    ld c, c                                       ; $7a1a: $49
    ld [bc], a                                    ; $7a1b: $02
    cp l                                          ; $7a1c: $bd

jr_06e_7a1d:
    ld b, e                                       ; $7a1d: $43
    adc [hl]                                      ; $7a1e: $8e
    ld [hl+], a                                   ; $7a1f: $22
    ld a, l                                       ; $7a20: $7d
    ld h, d                                       ; $7a21: $62
    ld h, c                                       ; $7a22: $61
    ld b, $ae                                     ; $7a23: $06 $ae
    and c                                         ; $7a25: $a1
    pop bc                                        ; $7a26: $c1
    push bc                                       ; $7a27: $c5
    db $db                                        ; $7a28: $db
    ld b, b                                       ; $7a29: $40
    nop                                           ; $7a2a: $00
    ld [hl], h                                    ; $7a2b: $74
    push af                                       ; $7a2c: $f5
    or $03                                        ; $7a2d: $f6 $03
    ld b, d                                       ; $7a2f: $42
    sbc b                                         ; $7a30: $98
    db $fc                                        ; $7a31: $fc
    and d                                         ; $7a32: $a2
    call Call_06e_4e00                            ; $7a33: $cd $00 $4e
    ld [hl+], a                                   ; $7a36: $22
    ld [bc], a                                    ; $7a37: $02
    dec c                                         ; $7a38: $0d
    cp e                                          ; $7a39: $bb
    nop                                           ; $7a3a: $00
    cp $20                                        ; $7a3b: $fe $20
    ld a, [hl-]                                   ; $7a3d: $3a
    ld b, b                                       ; $7a3e: $40
    ld b, b                                       ; $7a3f: $40
    ld bc, $6242                                  ; $7a40: $01 $42 $62
    jp Jump_000_0081                              ; $7a43: $c3 $81 $00


    ld d, l                                       ; $7a46: $55
    cp a                                          ; $7a47: $bf
    call nz, $023d                                ; $7a48: $c4 $3d $02
    ld [hl], $8f                                  ; $7a4b: $36 $8f
    inc hl                                        ; $7a4d: $23
    ld a, e                                       ; $7a4e: $7b
    inc bc                                        ; $7a4f: $03
    inc b                                         ; $7a50: $04
    ccf                                           ; $7a51: $3f
    ld h, b                                       ; $7a52: $60
    ld b, $46                                     ; $7a53: $06 $46
    add hl, sp                                    ; $7a55: $39
    ld [hl], $43                                  ; $7a56: $36 $43
    and b                                         ; $7a58: $a0
    add b                                         ; $7a59: $80
    ld b, h                                       ; $7a5a: $44
    and e                                         ; $7a5b: $a3
    nop                                           ; $7a5c: $00
    ld d, a                                       ; $7a5d: $57
    pop bc                                        ; $7a5e: $c1
    ld [bc], a                                    ; $7a5f: $02
    nop                                           ; $7a60: $00
    ld hl, $42bb                                  ; $7a61: $21 $bb $42
    rst $08                                       ; $7a64: $cf
    ld bc, $e4bd                                  ; $7a65: $01 $bd $e4
    dec b                                         ; $7a68: $05
    nop                                           ; $7a69: $00
    ld a, [c]                                     ; $7a6a: $f2
    pop hl                                        ; $7a6b: $e1
    ld h, $c1                                     ; $7a6c: $26 $c1
    ld b, h                                       ; $7a6e: $44
    ld h, c                                       ; $7a6f: $61
    add l                                         ; $7a70: $85
    add [hl]                                      ; $7a71: $86
    nop                                           ; $7a72: $00
    ld c, [hl]                                    ; $7a73: $4e
    pop bc                                        ; $7a74: $c1
    ld [bc], a                                    ; $7a75: $02
    cp [hl]                                       ; $7a76: $be
    and e                                         ; $7a77: $a3
    db $fd                                        ; $7a78: $fd
    pop af                                        ; $7a79: $f1
    ld a, [c]                                     ; $7a7a: $f2
    add h                                         ; $7a7b: $84
    ld h, h                                       ; $7a7c: $64
    and b                                         ; $7a7d: $a0
    nop                                           ; $7a7e: $00
    db $f4                                        ; $7a7f: $f4
    pop bc                                        ; $7a80: $c1
    ld [$4141], sp                                ; $7a81: $08 $41 $41
    scf                                           ; $7a84: $37
    scf                                           ; $7a85: $37
    ldh [$fc], a                                  ; $7a86: $e0 $fc
    rst $28                                       ; $7a88: $ef
    add h                                         ; $7a89: $84
    ld h, h                                       ; $7a8a: $64
    add hl, de                                    ; $7a8b: $19
    jr nz, jr_06e_7a8e                            ; $7a8c: $20 $00

jr_06e_7a8e:
    or d                                          ; $7a8e: $b2
    cp [hl]                                       ; $7a8f: $be
    ld h, l                                       ; $7a90: $65
    xor [hl]                                      ; $7a91: $ae
    xor [hl]                                      ; $7a92: $ae
    ld b, d                                       ; $7a93: $42
    dec de                                        ; $7a94: $1b
    and h                                         ; $7a95: $a4
    ld h, h                                       ; $7a96: $64
    rst $38                                       ; $7a97: $ff
    ldh a, [$a5]                                  ; $7a98: $f0 $a5
    ld b, d                                       ; $7a9a: $42
    add h                                         ; $7a9b: $84
    ld h, l                                       ; $7a9c: $65
    nop                                           ; $7a9d: $00
    dec [hl]                                      ; $7a9e: $35
    ld a, $c3                                     ; $7a9f: $3e $c3
    rst $38                                       ; $7aa1: $ff
    xor a                                         ; $7aa2: $af
    xor a                                         ; $7aa3: $af
    ld b, b                                       ; $7aa4: $40
    ld l, c                                       ; $7aa5: $69
    and e                                         ; $7aa6: $a3
    dec [hl]                                      ; $7aa7: $35
    dec [hl]                                      ; $7aa8: $35
    and e                                         ; $7aa9: $a3
    ld b, $fc                                     ; $7aaa: $06 $fc
    db $ed                                        ; $7aac: $ed
    ld l, d                                       ; $7aad: $6a
    ld b, b                                       ; $7aae: $40
    jp nz, $84a2                                  ; $7aaf: $c2 $a2 $84

    ld h, d                                       ; $7ab2: $62
    nop                                           ; $7ab3: $00
    ld [hl-], a                                   ; $7ab4: $32
    and l                                         ; $7ab5: $a5
    pop bc                                        ; $7ab6: $c1
    cp $43                                        ; $7ab7: $fe $43
    call nz, Call_06e_6112                        ; $7ab9: $c4 $12 $61
    db $fd                                        ; $7abc: $fd
    xor $6a                                       ; $7abd: $ee $6a
    add b                                         ; $7abf: $80
    ld [c], a                                     ; $7ac0: $e2
    add l                                         ; $7ac1: $85
    jr z, jr_06e_7ac4                             ; $7ac2: $28 $00

jr_06e_7ac4:
    ld c, a                                       ; $7ac4: $4f
    sub $d7                                       ; $7ac5: $d6 $d7
    ld l, $fe                                     ; $7ac7: $2e $fe
    and d                                         ; $7ac9: $a2
    xor a                                         ; $7aca: $af
    ld l, e                                       ; $7acb: $6b
    ld [hl], c                                    ; $7acc: $71
    rst $38                                       ; $7acd: $ff
    ldh a, [$6d]                                  ; $7ace: $f0 $6d
    add b                                         ; $7ad0: $80
    db $e3                                        ; $7ad1: $e3
    add l                                         ; $7ad2: $85
    rlca                                          ; $7ad3: $07
    db $ec                                        ; $7ad4: $ec
    nop                                           ; $7ad5: $00
    inc l                                         ; $7ad6: $2c
    or $00                                        ; $7ad7: $f6 $00
    ret c                                         ; $7ad9: $d8

    reti                                          ; $7ada: $d9


    cp l                                          ; $7adb: $bd
    add d                                         ; $7adc: $82
    ld b, l                                       ; $7add: $45
    scf                                           ; $7ade: $37
    dec a                                         ; $7adf: $3d
    ld d, a                                       ; $7ae0: $57
    jr c, jr_06e_7b1b                             ; $7ae1: $38 $38

    dec a                                         ; $7ae3: $3d
    db $fc                                        ; $7ae4: $fc
    db $ed                                        ; $7ae5: $ed
    scf                                           ; $7ae6: $37
    or b                                          ; $7ae7: $b0
    and b                                         ; $7ae8: $a0
    and c                                         ; $7ae9: $a1
    jp c, Jump_06e_7021                           ; $7aea: $da $21 $70

    nop                                           ; $7aed: $00
    call nc, Call_000_002c                        ; $7aee: $d4 $2c $00
    ld a, a                                       ; $7af1: $7f
    nop                                           ; $7af2: $00
    cp [hl]                                       ; $7af3: $be
    inc b                                         ; $7af4: $04
    ld b, e                                       ; $7af5: $43
    ld b, e                                       ; $7af6: $43
    ld b, l                                       ; $7af7: $45
    db $fc                                        ; $7af8: $fc
    db $ed                                        ; $7af9: $ed
    sub b                                         ; $7afa: $90
    inc bc                                        ; $7afb: $03
    add [hl]                                      ; $7afc: $86
    nop                                           ; $7afd: $00
    inc [hl]                                      ; $7afe: $34
    ld a, e                                       ; $7aff: $7b
    ld b, c                                       ; $7b00: $41
    cp h                                          ; $7b01: $bc
    ld bc, $ff9d                                  ; $7b02: $01 $9d $ff
    push hl                                       ; $7b05: $e5
    ld [hl], h                                    ; $7b06: $74
    ld [bc], a                                    ; $7b07: $02
    sbc h                                         ; $7b08: $9c
    inc b                                         ; $7b09: $04
    pop af                                        ; $7b0a: $f1
    and $e8                                       ; $7b0b: $e6 $e8
    ldh [$9f], a                                  ; $7b0d: $e0 $9f
    inc bc                                        ; $7b0f: $03
    add e                                         ; $7b10: $83
    nop                                           ; $7b11: $00
    ld a, [c]                                     ; $7b12: $f2
    ld a, e                                       ; $7b13: $7b
    ret z                                         ; $7b14: $c8

    sbc e                                         ; $7b15: $9b
    and h                                         ; $7b16: $a4
    ld a, [c]                                     ; $7b17: $f2
    add d                                         ; $7b18: $82
    nop                                           ; $7b19: $00
    ld [de], a                                    ; $7b1a: $12

jr_06e_7b1b:
    ld b, b                                       ; $7b1b: $40
    db $eb                                        ; $7b1c: $eb
    add sp, $03                                   ; $7b1d: $e8 $03
    add h                                         ; $7b1f: $84
    nop                                           ; $7b20: $00
    xor b                                         ; $7b21: $a8
    nop                                           ; $7b22: $00
    nop                                           ; $7b23: $00
    nop                                           ; $7b24: $00
    pop bc                                        ; $7b25: $c1
    nop                                           ; $7b26: $00
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
    nop                                           ; $7b31: $00
    nop                                           ; $7b32: $00
    dec c                                         ; $7b33: $0d
    add b                                         ; $7b34: $80
    cp $e0                                        ; $7b35: $fe $e0
    nop                                           ; $7b37: $00
    ld b, b                                       ; $7b38: $40
    ret c                                         ; $7b39: $d8

    push hl                                       ; $7b3a: $e5
    rst $30                                       ; $7b3b: $f7
    and $ff                                       ; $7b3c: $e6 $ff
    rst $38                                       ; $7b3e: $ff
    rst $38                                       ; $7b3f: $ff
    rst $30                                       ; $7b40: $f7
    nop                                           ; $7b41: $00
    nop                                           ; $7b42: $00
    nop                                           ; $7b43: $00
    ld [bc], a                                    ; $7b44: $02
    nop                                           ; $7b45: $00
    ld d, $0f                                     ; $7b46: $16 $0f
    ld [bc], a                                    ; $7b48: $02
    ld bc, $0f29                                  ; $7b49: $01 $29 $0f
    ld [bc], a                                    ; $7b4c: $02
    ld [bc], a                                    ; $7b4d: $02
    rla                                           ; $7b4e: $17
    db $10                                        ; $7b4f: $10
    ld [bc], a                                    ; $7b50: $02
    inc bc                                        ; $7b51: $03
    jr z, jr_06e_7b64                             ; $7b52: $28 $10

    ld [bc], a                                    ; $7b54: $02
    inc b                                         ; $7b55: $04
    dec d                                         ; $7b56: $15
    ld de, $0502                                  ; $7b57: $11 $02 $05
    add hl, de                                    ; $7b5a: $19
    ld [de], a                                    ; $7b5b: $12
    ld [bc], a                                    ; $7b5c: $02
    ld b, $1c                                     ; $7b5d: $06 $1c
    ld [de], a                                    ; $7b5f: $12
    ld bc, $2807                                  ; $7b60: $01 $07 $28

Jump_06e_7b63:
    ld [de], a                                    ; $7b63: $12

jr_06e_7b64:
    ld [bc], a                                    ; $7b64: $02
    ld [$1311], sp                                ; $7b65: $08 $11 $13
    ld bc, $2909                                  ; $7b68: $01 $09 $29
    inc de                                        ; $7b6b: $13
    ld [bc], a                                    ; $7b6c: $02
    ld a, [bc]                                    ; $7b6d: $0a
    db $10                                        ; $7b6e: $10
    inc d                                         ; $7b6f: $14
    ld [bc], a                                    ; $7b70: $02
    dec bc                                        ; $7b71: $0b
    ld [de], a                                    ; $7b72: $12
    inc d                                         ; $7b73: $14
    ld [bc], a                                    ; $7b74: $02
    inc c                                         ; $7b75: $0c
    rla                                           ; $7b76: $17
    inc d                                         ; $7b77: $14
    ld bc, $240d                                  ; $7b78: $01 $0d $24
    inc d                                         ; $7b7b: $14
    ld [bc], a                                    ; $7b7c: $02
    ld c, $11                                     ; $7b7d: $0e $11
    dec d                                         ; $7b7f: $15
    ld bc, $250f                                  ; $7b80: $01 $0f $25
    dec d                                         ; $7b83: $15
    ld [bc], a                                    ; $7b84: $02

Call_06e_7b85:
    db $10                                        ; $7b85: $10
    dec hl                                        ; $7b86: $2b
    dec d                                         ; $7b87: $15
    ld [bc], a                                    ; $7b88: $02
    ld de, $172a                                  ; $7b89: $11 $2a $17
    ld [bc], a                                    ; $7b8c: $02
    ld [de], a                                    ; $7b8d: $12
    inc de                                        ; $7b8e: $13
    jr jr_06e_7b93                                ; $7b8f: $18 $02

    inc de                                        ; $7b91: $13
    ld [de], a                                    ; $7b92: $12

jr_06e_7b93:
    add hl, de                                    ; $7b93: $19
    ld [bc], a                                    ; $7b94: $02
    inc d                                         ; $7b95: $14
    dec de                                        ; $7b96: $1b
    add hl, de                                    ; $7b97: $19
    ld [bc], a                                    ; $7b98: $02
    dec d                                         ; $7b99: $15
    inc de                                        ; $7b9a: $13
    ld a, [de]                                    ; $7b9b: $1a
    ld bc, $1516                                  ; $7b9c: $01 $16 $15
    dec de                                        ; $7b9f: $1b
    ld bc, $1917                                  ; $7ba0: $01 $17 $19
    dec de                                        ; $7ba3: $1b
    ld [bc], a                                    ; $7ba4: $02
    jr @+$1f                                      ; $7ba5: $18 $1d

    inc e                                         ; $7ba7: $1c
    ld [bc], a                                    ; $7ba8: $02
    add hl, de                                    ; $7ba9: $19
    inc l                                         ; $7baa: $2c
    inc e                                         ; $7bab: $1c

Jump_06e_7bac:
    ld [bc], a                                    ; $7bac: $02
    ld a, [de]                                    ; $7bad: $1a
    ld de, $021d                                  ; $7bae: $11 $1d $02
    dec de                                        ; $7bb1: $1b
    dec h                                         ; $7bb2: $25
    dec e                                         ; $7bb3: $1d
    ld [bc], a                                    ; $7bb4: $02
    inc e                                         ; $7bb5: $1c
    ld a, [hl+]                                   ; $7bb6: $2a
    dec e                                         ; $7bb7: $1d
    ld [bc], a                                    ; $7bb8: $02
    dec e                                         ; $7bb9: $1d
    dec l                                         ; $7bba: $2d
    dec e                                         ; $7bbb: $1d
    ld [bc], a                                    ; $7bbc: $02
    ld e, $10                                     ; $7bbd: $1e $10
    ld e, $01                                     ; $7bbf: $1e $01
    rra                                           ; $7bc1: $1f
    add hl, de                                    ; $7bc2: $19
    ld e, $02                                     ; $7bc3: $1e $02
    jr nz, jr_06e_7bf2                            ; $7bc5: $20 $2b

    ld e, $02                                     ; $7bc7: $1e $02
    ld hl, $1e2e                                  ; $7bc9: $21 $2e $1e
    ld [bc], a                                    ; $7bcc: $02
    ld [hl+], a                                   ; $7bcd: $22
    inc de                                        ; $7bce: $13
    rra                                           ; $7bcf: $1f
    ld [bc], a                                    ; $7bd0: $02
    inc hl                                        ; $7bd1: $23
    ld h, $1f                                     ; $7bd2: $26 $1f
    ld [bc], a                                    ; $7bd4: $02
    inc h                                         ; $7bd5: $24
    ld a, [hl+]                                   ; $7bd6: $2a
    rra                                           ; $7bd7: $1f
    ld [bc], a                                    ; $7bd8: $02
    dec h                                         ; $7bd9: $25
    dec l                                         ; $7bda: $2d
    rra                                           ; $7bdb: $1f
    ld [bc], a                                    ; $7bdc: $02
    ld h, $2f                                     ; $7bdd: $26 $2f
    rra                                           ; $7bdf: $1f
    ld [bc], a                                    ; $7be0: $02
    daa                                           ; $7be1: $27
    dec hl                                        ; $7be2: $2b
    jr nz, jr_06e_7be7                            ; $7be3: $20 $02

    jr z, jr_06e_7c0d                             ; $7be5: $28 $26

jr_06e_7be7:
    ld hl, $2902                                  ; $7be7: $21 $02 $29
    ld a, [hl+]                                   ; $7bea: $2a
    ld hl, $2a02                                  ; $7beb: $21 $02 $2a
    db $10                                        ; $7bee: $10
    ld [hl+], a                                   ; $7bef: $22
    ld [bc], a                                    ; $7bf0: $02
    dec hl                                        ; $7bf1: $2b

jr_06e_7bf2:
    daa                                           ; $7bf2: $27
    ld [hl+], a                                   ; $7bf3: $22
    ld [bc], a                                    ; $7bf4: $02
    inc l                                         ; $7bf5: $2c
    dec hl                                        ; $7bf6: $2b
    ld [hl+], a                                   ; $7bf7: $22
    ld [bc], a                                    ; $7bf8: $02
    dec l                                         ; $7bf9: $2d
    rrca                                          ; $7bfa: $0f
    inc hl                                        ; $7bfb: $23
    ld [bc], a                                    ; $7bfc: $02
    ld l, $11                                     ; $7bfd: $2e $11
    inc hl                                        ; $7bff: $23
    ld [bc], a                                    ; $7c00: $02
    cpl                                           ; $7c01: $2f
    ld [de], a                                    ; $7c02: $12
    inc hl                                        ; $7c03: $23
    ld [bc], a                                    ; $7c04: $02
    jr nc, jr_06e_7c2d                            ; $7c05: $30 $26

    inc hl                                        ; $7c07: $23
    ld [bc], a                                    ; $7c08: $02
    ld sp, $232c                                  ; $7c09: $31 $2c $23
    ld [bc], a                                    ; $7c0c: $02

jr_06e_7c0d:
    ld [hl-], a                                   ; $7c0d: $32
    dec l                                         ; $7c0e: $2d
    inc hl                                        ; $7c0f: $23
    ld [bc], a                                    ; $7c10: $02
    inc sp                                        ; $7c11: $33
    inc h                                         ; $7c12: $24
    inc h                                         ; $7c13: $24
    ld [bc], a                                    ; $7c14: $02
    inc [hl]                                      ; $7c15: $34
    ld c, $25                                     ; $7c16: $0e $25
    ld [bc], a                                    ; $7c18: $02
    dec [hl]                                      ; $7c19: $35
    rrca                                          ; $7c1a: $0f
    dec h                                         ; $7c1b: $25
    ld [bc], a                                    ; $7c1c: $02
    ld [hl], $2d                                  ; $7c1d: $36 $2d
    dec h                                         ; $7c1f: $25
    ld [bc], a                                    ; $7c20: $02
    scf                                           ; $7c21: $37
    cpl                                           ; $7c22: $2f
    dec h                                         ; $7c23: $25
    ld [bc], a                                    ; $7c24: $02
    jr c, jr_06e_7c55                             ; $7c25: $38 $2e

    ld h, $02                                     ; $7c27: $26 $02
    add hl, sp                                    ; $7c29: $39
    ld [de], a                                    ; $7c2a: $12
    daa                                           ; $7c2b: $27
    ld [bc], a                                    ; $7c2c: $02

jr_06e_7c2d:
    ld a, [hl-]                                   ; $7c2d: $3a
    cpl                                           ; $7c2e: $2f
    daa                                           ; $7c2f: $27
    ld [bc], a                                    ; $7c30: $02
    dec sp                                        ; $7c31: $3b
    dec h                                         ; $7c32: $25
    jr z, jr_06e_7c37                             ; $7c33: $28 $02

    inc a                                         ; $7c35: $3c
    db $10                                        ; $7c36: $10

jr_06e_7c37:
    add hl, hl                                    ; $7c37: $29
    ld [bc], a                                    ; $7c38: $02
    dec a                                         ; $7c39: $3d
    ld [de], a                                    ; $7c3a: $12
    add hl, hl                                    ; $7c3b: $29
    ld [bc], a                                    ; $7c3c: $02
    ld a, $2e                                     ; $7c3d: $3e $2e
    add hl, hl                                    ; $7c3f: $29
    ld [bc], a                                    ; $7c40: $02
    ccf                                           ; $7c41: $3f
    cpl                                           ; $7c42: $2f
    add hl, hl                                    ; $7c43: $29
    ld [bc], a                                    ; $7c44: $02
    ld b, b                                       ; $7c45: $40
    dec c                                         ; $7c46: $0d
    ld a, [hl+]                                   ; $7c47: $2a
    ld [bc], a                                    ; $7c48: $02
    ld b, c                                       ; $7c49: $41
    ld de, $022a                                  ; $7c4a: $11 $2a $02
    ld b, d                                       ; $7c4d: $42
    dec l                                         ; $7c4e: $2d
    ld a, [hl+]                                   ; $7c4f: $2a
    ld bc, $1a43                                  ; $7c50: $01 $43 $1a
    dec hl                                        ; $7c53: $2b
    ld [bc], a                                    ; $7c54: $02

jr_06e_7c55:
    ld b, h                                       ; $7c55: $44
    dec c                                         ; $7c56: $0d
    inc l                                         ; $7c57: $2c
    ld [bc], a                                    ; $7c58: $02
    ld b, l                                       ; $7c59: $45
    db $10                                        ; $7c5a: $10
    inc l                                         ; $7c5b: $2c
    ld [bc], a                                    ; $7c5c: $02
    ld b, [hl]                                    ; $7c5d: $46
    inc de                                        ; $7c5e: $13
    inc l                                         ; $7c5f: $2c
    ld bc, $1a47                                  ; $7c60: $01 $47 $1a
    inc l                                         ; $7c63: $2c
    ld [bc], a                                    ; $7c64: $02
    ld c, b                                       ; $7c65: $48
    dec l                                         ; $7c66: $2d
    inc l                                         ; $7c67: $2c

Jump_06e_7c68:
    ld [bc], a                                    ; $7c68: $02
    ld c, c                                       ; $7c69: $49
    ld de, $012d                                  ; $7c6a: $11 $2d $01
    ld c, d                                       ; $7c6d: $4a
    add hl, de                                    ; $7c6e: $19
    dec l                                         ; $7c6f: $2d
    ld bc, $264b                                  ; $7c70: $01 $4b $26
    dec l                                         ; $7c73: $2d
    ld [bc], a                                    ; $7c74: $02
    ld c, h                                       ; $7c75: $4c
    inc l                                         ; $7c76: $2c
    dec l                                         ; $7c77: $2d
    ld [bc], a                                    ; $7c78: $02
    ld c, l                                       ; $7c79: $4d
    dec c                                         ; $7c7a: $0d
    ld l, $02                                     ; $7c7b: $2e $02
    ld c, [hl]                                    ; $7c7d: $4e
    db $10                                        ; $7c7e: $10
    ld l, $02                                     ; $7c7f: $2e $02
    ld c, a                                       ; $7c81: $4f
    dec de                                        ; $7c82: $1b
    ld l, $02                                     ; $7c83: $2e $02
    ld d, b                                       ; $7c85: $50
    inc l                                         ; $7c86: $2c
    cpl                                           ; $7c87: $2f
    ld [bc], a                                    ; $7c88: $02
    ld d, c                                       ; $7c89: $51
    dec l                                         ; $7c8a: $2d
    cpl                                           ; $7c8b: $2f
    ld [bc], a                                    ; $7c8c: $02
    ld d, d                                       ; $7c8d: $52
    ld de, $0230                                  ; $7c8e: $11 $30 $02
    ld d, e                                       ; $7c91: $53

Call_06e_7c92:
    inc de                                        ; $7c92: $13
    jr nc, jr_06e_7c97                            ; $7c93: $30 $02

    ld d, h                                       ; $7c95: $54
    dec e                                         ; $7c96: $1d

jr_06e_7c97:
    jr nc, jr_06e_7c9b                            ; $7c97: $30 $02

    ld d, l                                       ; $7c99: $55
    dec hl                                        ; $7c9a: $2b

jr_06e_7c9b:
    jr nc, jr_06e_7c9f                            ; $7c9b: $30 $02

    ld d, [hl]                                    ; $7c9d: $56
    db $10                                        ; $7c9e: $10

jr_06e_7c9f:
    ld sp, $5702                                  ; $7c9f: $31 $02 $57
    ld [de], a                                    ; $7ca2: $12
    ld sp, $5802                                  ; $7ca3: $31 $02 $58
    inc d                                         ; $7ca6: $14
    ld [hl-], a                                   ; $7ca7: $32
    ld [bc], a                                    ; $7ca8: $02
    ld e, c                                       ; $7ca9: $59
    dec hl                                        ; $7caa: $2b
    ld [hl-], a                                   ; $7cab: $32
    ld [bc], a                                    ; $7cac: $02
    ld e, d                                       ; $7cad: $5a
    inc d                                         ; $7cae: $14
    inc [hl]                                      ; $7caf: $34
    ld [bc], a                                    ; $7cb0: $02
    ld e, e                                       ; $7cb1: $5b
    dec hl                                        ; $7cb2: $2b
    inc [hl]                                      ; $7cb3: $34
    ld [bc], a                                    ; $7cb4: $02
    ld e, h                                       ; $7cb5: $5c
    ld [de], a                                    ; $7cb6: $12
    dec [hl]                                      ; $7cb7: $35
    ld [bc], a                                    ; $7cb8: $02
    ld e, l                                       ; $7cb9: $5d
    ld a, [hl+]                                   ; $7cba: $2a
    dec [hl]                                      ; $7cbb: $35
    ld [bc], a                                    ; $7cbc: $02
    ld e, [hl]                                    ; $7cbd: $5e
    inc de                                        ; $7cbe: $13
    ld [hl], $02                                  ; $7cbf: $36 $02
    ld e, a                                       ; $7cc1: $5f
    ld [de], a                                    ; $7cc2: $12
    scf                                           ; $7cc3: $37
    ld [bc], a                                    ; $7cc4: $02
    ld h, b                                       ; $7cc5: $60
    dec hl                                        ; $7cc6: $2b
    scf                                           ; $7cc7: $37
    ld [bc], a                                    ; $7cc8: $02
    ld h, c                                       ; $7cc9: $61
    ld [de], a                                    ; $7cca: $12
    add hl, sp                                    ; $7ccb: $39
    ld [bc], a                                    ; $7ccc: $02
    ld h, d                                       ; $7ccd: $62
    inc de                                        ; $7cce: $13
    add hl, sp                                    ; $7ccf: $39
    ld [bc], a                                    ; $7cd0: $02
    ld h, e                                       ; $7cd1: $63
    inc d                                         ; $7cd2: $14
    dec sp                                        ; $7cd3: $3b
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

Call_06e_7d64:
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
