; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $071", ROMX[$4000], BANK[$71]

    inc c                                         ; $4000: $0c
    ld b, b                                       ; $4001: $40
    and c                                         ; $4002: $a1
    ld c, e                                       ; $4003: $4b
    ld e, l                                       ; $4004: $5d
    ld d, [hl]                                    ; $4005: $56
    ld hl, $6d60                                  ; $4006: $21 $60 $6d
    ld h, h                                       ; $4009: $64
    ld e, l                                       ; $400a: $5d
    ld l, a                                       ; $400b: $6f
    inc d                                         ; $400c: $14

Call_071_400d:
    ld b, b                                       ; $400d: $40
    ld h, a                                       ; $400e: $67
    ld b, l                                       ; $400f: $45
    inc l                                         ; $4010: $2c
    ld c, e                                       ; $4011: $4b
    ld c, [hl]                                    ; $4012: $4e
    ld c, e                                       ; $4013: $4b
    adc a                                         ; $4014: $8f
    ld c, l                                       ; $4015: $4d
    ld c, l                                       ; $4016: $4d
    dec c                                         ; $4017: $0d
    ld c, l                                       ; $4018: $4d
    rst $38                                       ; $4019: $ff
    pop hl                                        ; $401a: $e1
    ld a, [$f6e1]                                 ; $401b: $fa $e1 $f6
    jp hl                                         ; $401e: $e9


    ld l, $02                                     ; $401f: $2e $02
    rst $38                                       ; $4021: $ff
    pop hl                                        ; $4022: $e1
    ld c, $ff                                     ; $4023: $0e $ff
    pop hl                                        ; $4025: $e1
    ld [c], a                                     ; $4026: $e2
    ld [c], a                                     ; $4027: $e2
    pop hl                                        ; $4028: $e1
    rst $20                                       ; $4029: $e7
    ei                                            ; $402a: $fb
    db $e3                                        ; $402b: $e3
    set 4, b                                      ; $402c: $cb $e0
    ret z                                         ; $402e: $c8

    ld [c], a                                     ; $402f: $e2
    nop                                           ; $4030: $00
    db $ec                                        ; $4031: $ec
    jp hl                                         ; $4032: $e9


    db $e3                                        ; $4033: $e3
    rst $20                                       ; $4034: $e7
    call z, $c0e0                                 ; $4035: $cc $e0 $c0
    ld a, [c]                                     ; $4038: $f2
    rst $20                                       ; $4039: $e7
    pop hl                                        ; $403a: $e1
    adc $ee                                       ; $403b: $ce $ee
    cp b                                          ; $403d: $b8
    push hl                                       ; $403e: $e5
    pop hl                                        ; $403f: $e1
    ldh [rTMA], a                                 ; $4040: $e0 $06
    ld [hl], a                                    ; $4042: $77
    db $e4                                        ; $4043: $e4
    ld c, $0e                                     ; $4044: $0e $0e
    ld l, h                                       ; $4046: $6c
    ldh [$80], a                                  ; $4047: $e0 $80
    db $ed                                        ; $4049: $ed
    ld e, c                                       ; $404a: $59

jr_071_404b:
    pop hl                                        ; $404b: $e1
    ld [hl], e                                    ; $404c: $73
    pop hl                                        ; $404d: $e1
    ld l, e                                       ; $404e: $6b
    pop hl                                        ; $404f: $e1
    ret nc                                        ; $4050: $d0

    ret z                                         ; $4051: $c8

    db $ec                                        ; $4052: $ec
    ret nz                                        ; $4053: $c0

    db $ed                                        ; $4054: $ed
    or [hl]                                       ; $4055: $b6
    ld [c], a                                     ; $4056: $e2
    ld b, b                                       ; $4057: $40
    and $0d                                       ; $4058: $e6 $0d
    jr c, @-$1e                                   ; $405a: $38 $e0

    dec c                                         ; $405c: $0d
    dec c                                         ; $405d: $0d
    db $eb                                        ; $405e: $eb
    ld l, l                                       ; $405f: $6d
    ld l, l                                       ; $4060: $6d
    ld sp, $6de0                                  ; $4061: $31 $e0 $6d
    jp nz, Jump_071_6ee0                          ; $4064: $c2 $e0 $6e

Jump_071_4067:
    ld l, $6e                                     ; $4067: $2e $6e
    nop                                           ; $4069: $00
    ld a, [hl+]                                   ; $406a: $2a
    db $e3                                        ; $406b: $e3
    sub b                                         ; $406c: $90
    ld [c], a                                     ; $406d: $e2
    ld b, b                                       ; $406e: $40
    db $eb                                        ; $406f: $eb
    reti                                          ; $4070: $d9


    pop hl                                        ; $4071: $e1
    rst $10                                       ; $4072: $d7
    pop hl                                        ; $4073: $e1
    sub $e1                                       ; $4074: $d6 $e1
    ld [$00c0], a                                 ; $4076: $ea $c0 $00
    pop hl                                        ; $4079: $e1
    db $f4                                        ; $407a: $f4
    ld b, $e0                                     ; $407b: $06 $e0
    ret nc                                        ; $407d: $d0

    ldh [rKEY1], a                                ; $407e: $e0 $4d
    jp nz, Jump_071_6ee0                          ; $4080: $c2 $e0 $6e

    ld l, $4e                                     ; $4083: $2e $4e
    ld c, $1e                                     ; $4085: $0e $1e
    jp hl                                         ; $4087: $e9


    pop bc                                        ; $4088: $c1
    ld l, [hl]                                    ; $4089: $6e
    ld c, $4e                                     ; $408a: $0e $4e
    ld c, [hl]                                    ; $408c: $4e
    ld [$f2c0], a                                 ; $408d: $ea $c0 $f2
    add $c6                                       ; $4090: $c6 $c6
    jp nz, $ff78                                  ; $4092: $c2 $78 $ff

    ldh [$c0], a                                  ; $4095: $e0 $c0
    db $e3                                        ; $4097: $e3
    ret z                                         ; $4098: $c8

    pop bc                                        ; $4099: $c1
    ld c, [hl]                                    ; $409a: $4e
    ld c, $4e                                     ; $409b: $0e $4e
    ld l, $9f                                     ; $409d: $2e $9f
    and $04                                       ; $409f: $e6 $04
    or l                                          ; $40a1: $b5
    pop bc                                        ; $40a2: $c1
    ld a, h                                       ; $40a3: $7c
    ldh [$6e], a                                  ; $40a4: $e0 $6e
    or c                                          ; $40a6: $b1
    jp nz, $c6a9                                  ; $40a7: $c2 $a9 $c6

    or l                                          ; $40aa: $b5
    ldh [$80], a                                  ; $40ab: $e0 $80
    push hl                                       ; $40ad: $e5
    inc d                                         ; $40ae: $14
    pop hl                                        ; $40af: $e1
    jr nz, jr_071_404b                            ; $40b0: $20 $99

    add $98                                       ; $40b2: $c6 $98
    pop hl                                        ; $40b4: $e1
    sub a                                         ; $40b5: $97
    pop hl                                        ; $40b6: $e1
    ld e, a                                       ; $40b7: $5f
    ld [c], a                                     ; $40b8: $e2
    sbc e                                         ; $40b9: $9b
    ldh [$0d], a                                  ; $40ba: $e0 $0d
    push af                                       ; $40bc: $f5
    ret nz                                        ; $40bd: $c0

    ld a, c                                       ; $40be: $79
    ret nz                                        ; $40bf: $c0

    add [hl]                                      ; $40c0: $86
    inc a                                         ; $40c1: $3c
    ldh [$2e], a                                  ; $40c2: $e0 $2e
    ld c, $c0                                     ; $40c4: $0e $c0
    jp hl                                         ; $40c6: $e9


    db $fc                                        ; $40c7: $fc
    call nz, $c243                                ; $40c8: $c4 $43 $c2
    inc l                                         ; $40cb: $2c
    add sp, $4d                                   ; $40cc: $e8 $4d
    nop                                           ; $40ce: $00

Call_071_40cf:
    sbc b                                         ; $40cf: $98
    db $e4                                        ; $40d0: $e4
    ldh [$e6], a                                  ; $40d1: $e0 $e6
    adc $c4                                       ; $40d3: $ce $c4
    ld sp, $c0c1                                  ; $40d5: $31 $c1 $c0
    db $ed                                        ; $40d8: $ed
    inc l                                         ; $40d9: $2c
    jp nz, $c106                                  ; $40da: $c2 $06 $c1

    inc l                                         ; $40dd: $2c
    jp hl                                         ; $40de: $e9


    inc c                                         ; $40df: $0c
    add hl, bc                                    ; $40e0: $09
    ret                                           ; $40e1: $c9


    ld d, b                                       ; $40e2: $50
    pop hl                                        ; $40e3: $e1

Call_071_40e4:
    ld c, l                                       ; $40e4: $4d
    dec l                                         ; $40e5: $2d
    add hl, de                                    ; $40e6: $19
    jp $e380                                      ; $40e7: $c3 $80 $e3


    ret nz                                        ; $40ea: $c0

    ret nz                                        ; $40eb: $c0

    ret nz                                        ; $40ec: $c0

    db $ec                                        ; $40ed: $ec
    jr nz, @-$06                                  ; $40ee: $20 $f8

    and c                                         ; $40f0: $a1
    inc l                                         ; $40f1: $2c
    rst $20                                       ; $40f2: $e7
    ret                                           ; $40f3: $c9


    xor d                                         ; $40f4: $aa
    rst $10                                       ; $40f5: $d7
    pop bc                                        ; $40f6: $c1
    jp nz, Jump_000_2da0                          ; $40f7: $c2 $a0 $2d

    call nz, $82a2                                ; $40fa: $c4 $a2 $82
    jp nz, Jump_071_6d03                          ; $40fd: $c2 $03 $6d

    ld l, l                                       ; $4100: $6d
    rst $38                                       ; $4101: $ff
    jp $e580                                      ; $4102: $c3 $80 $e5


    nop                                           ; $4105: $00
    db $e4                                        ; $4106: $e4
    sub l                                         ; $4107: $95
    and a                                         ; $4108: $a7
    ret nz                                        ; $4109: $c0

    db $eb                                        ; $410a: $eb
    ret c                                         ; $410b: $d8

    push bc                                       ; $410c: $c5
    nop                                           ; $410d: $00
    ret nz                                        ; $410e: $c0

    ld [c], a                                     ; $410f: $e2
    rst $38                                       ; $4110: $ff
    db $e3                                        ; $4111: $e3
    jp hl                                         ; $4112: $e9


    xor d                                         ; $4113: $aa
    inc l                                         ; $4114: $2c
    jp nz, $ebc0                                  ; $4115: $c2 $c0 $eb

    or h                                          ; $4118: $b4
    rst $20                                       ; $4119: $e7
    ld d, l                                       ; $411a: $55
    pop hl                                        ; $411b: $e1
    adc $c1                                       ; $411c: $ce $c1
    ld c, $18                                     ; $411e: $0e $18
    ld [c], a                                     ; $4120: $e2
    dec c                                         ; $4121: $0d
    ld c, l                                       ; $4122: $4d
    ld l, l                                       ; $4123: $6d
    ld a, c                                       ; $4124: $79
    ldh [$2b], a                                  ; $4125: $e0 $2b
    jp $c429                                      ; $4127: $c3 $29 $c4


    db $ec                                        ; $412a: $ec
    pop hl                                        ; $412b: $e1
    ldh [$2c], a                                  ; $412c: $e0 $2c
    pop bc                                        ; $412e: $c1
    add hl, de                                    ; $412f: $19
    pop bc                                        ; $4130: $c1
    add b                                         ; $4131: $80
    pop af                                        ; $4132: $f1
    ret nz                                        ; $4133: $c0

    rst $20                                       ; $4134: $e7
    sub a                                         ; $4135: $97
    pop hl                                        ; $4136: $e1
    ld l, e                                       ; $4137: $6b
    ld l, e                                       ; $4138: $6b
    ld c, l                                       ; $4139: $4d
    pop bc                                        ; $413a: $c1
    dec l                                         ; $413b: $2d
    xor h                                         ; $413c: $ac
    pop hl                                        ; $413d: $e1
    ld c, h                                       ; $413e: $4c
    xor d                                         ; $413f: $aa
    inc l                                         ; $4140: $2c
    jp nz, $85d4                                  ; $4141: $c2 $d4 $85

    sub l                                         ; $4144: $95

Jump_071_4145:
    and e                                         ; $4145: $a3
    ld l, l                                       ; $4146: $6d
    ld l, l                                       ; $4147: $6d
    pop hl                                        ; $4148: $e1
    dec l                                         ; $4149: $2d
    jp nz, $b9a2                                  ; $414a: $c2 $a2 $b9

    and b                                         ; $414d: $a0
    ld c, b                                       ; $414e: $48
    pop bc                                        ; $414f: $c1
    ld d, h                                       ; $4150: $54
    and e                                         ; $4151: $a3
    dec c                                         ; $4152: $0d
    ld l, l                                       ; $4153: $6d
    dec c                                         ; $4154: $0d
    ld bc, $bf6b                                  ; $4155: $01 $6b $bf
    pop hl                                        ; $4158: $e1
    and c                                         ; $4159: $a1
    xor c                                         ; $415a: $a9
    and b                                         ; $415b: $a0
    and c                                         ; $415c: $a1
    inc l                                         ; $415d: $2c
    jp nz, $eac0                                  ; $415e: $c2 $c0 $ea

    dec b                                         ; $4161: $05
    and b                                         ; $4162: $a0
    and [hl]                                      ; $4163: $a6
    adc d                                         ; $4164: $8a
    inc e                                         ; $4165: $1c
    ld a, [hl]                                    ; $4166: $7e
    jp nz, $a2a3                                  ; $4167: $c2 $a3 $a2

    ld l, e                                       ; $416a: $6b
    dec c                                         ; $416b: $0d
    ld c, e                                       ; $416c: $4b
    ret nz                                        ; $416d: $c0

    ld [c], a                                     ; $416e: $e2
    and c                                         ; $416f: $a1
    xor b                                         ; $4170: $a8
    ret nz                                        ; $4171: $c0

    db $e4                                        ; $4172: $e4
    ld b, b                                       ; $4173: $40
    ld b, c                                       ; $4174: $41
    add e                                         ; $4175: $83
    inc l                                         ; $4176: $2c
    db $e3                                        ; $4177: $e3
    ld c, e                                       ; $4178: $4b
    and d                                         ; $4179: $a2
    db $e4                                        ; $417a: $e4
    ld [c], a                                     ; $417b: $e2
    ld d, c                                       ; $417c: $51
    add a                                         ; $417d: $87
    cp e                                          ; $417e: $bb
    and c                                         ; $417f: $a1
    ld l, e                                       ; $4180: $6b
    ret nz                                        ; $4181: $c0

    pop hl                                        ; $4182: $e1
    ld bc, $a16d                                  ; $4183: $01 $6d $a1
    xor h                                         ; $4186: $ac
    add b                                         ; $4187: $80
    push hl                                       ; $4188: $e5
    ld l, $85                                     ; $4189: $2e $85
    sbc $84                                       ; $418b: $de $84
    ld [c], a                                     ; $418d: $e2
    add b                                         ; $418e: $80
    inc hl                                        ; $418f: $23
    add c                                         ; $4190: $81
    call Call_000_0080                            ; $4191: $cd $80 $00
    ldh [$a5], a                                  ; $4194: $e0 $a5
    ld [bc], a                                    ; $4196: $02
    ldh [rLCDC], a                                ; $4197: $e0 $40
    ldh [$c0], a                                  ; $4199: $e0 $c0
    ldh [$a1], a                                  ; $419b: $e0 $a1
    xor h                                         ; $419d: $ac
    xor [hl]                                      ; $419e: $ae
    add e                                         ; $419f: $83
    ld sp, hl                                     ; $41a0: $f9
    ld h, e                                       ; $41a1: $63
    sbc $89                                       ; $41a2: $de $89
    ld hl, sp-$32                                 ; $41a4: $f8 $ce
    ld h, c                                       ; $41a6: $61
    adc b                                         ; $41a7: $88
    call nz, $c205                                ; $41a8: $c4 $05 $c2
    dec bc                                        ; $41ab: $0b
    ld l, e                                       ; $41ac: $6b
    ld l, e                                       ; $41ad: $6b
    dec bc                                        ; $41ae: $0b
    dec bc                                        ; $41af: $0b
    ld bc, $804b                                  ; $41b0: $01 $4b $80
    ldh [rSTAT], a                                ; $41b3: $e0 $41
    xor h                                         ; $41b5: $ac
    cp h                                          ; $41b6: $bc

Call_071_41b7:
    ld h, d                                       ; $41b7: $62
    pop de                                        ; $41b8: $d1
    jp $a2d1                                      ; $41b9: $c3 $d1 $a2


    sbc $84                                       ; $41bc: $de $84
    adc [hl]                                      ; $41be: $8e
    ld h, b                                       ; $41bf: $60
    ld a, [hl]                                    ; $41c0: $7e
    inc hl                                        ; $41c1: $23
    and l                                         ; $41c2: $a5
    ld l, l                                       ; $41c3: $6d
    ld c, e                                       ; $41c4: $4b
    ld c, e                                       ; $41c5: $4b
    dec c                                         ; $41c6: $0d
    dec c                                         ; $41c7: $0d
    ld c, e                                       ; $41c8: $4b
    rst $38                                       ; $41c9: $ff
    db $e4                                        ; $41ca: $e4
    jr nz, @-$31                                  ; $41cb: $20 $cd

    call nz, $ac81                                ; $41cd: $c4 $81 $ac
    ld a, [c]                                     ; $41d0: $f2
    set 0, b                                      ; $41d1: $cb $c0
    db $e4                                        ; $41d3: $e4
    ld c, a                                       ; $41d4: $4f
    ld h, h                                       ; $41d5: $64
    ld l, l                                       ; $41d6: $6d
    adc d                                         ; $41d7: $8a
    ldh [$c0], a                                  ; $41d8: $e0 $c0
    jp hl                                         ; $41da: $e9


    ld b, b                                       ; $41db: $40
    ld h, e                                       ; $41dc: $63
    jp nz, $ac01                                  ; $41dd: $c2 $01 $ac

    sub e                                         ; $41e0: $93
    add e                                         ; $41e1: $83
    sub b                                         ; $41e2: $90
    ld h, e                                       ; $41e3: $63
    sbc [hl]                                      ; $41e4: $9e
    add d                                         ; $41e5: $82
    di                                            ; $41e6: $f3
    call nz, $ff0b                                ; $41e7: $c4 $0b $ff
    ldh [rP1], a                                  ; $41ea: $e0 $00
    add [hl]                                      ; $41ec: $86
    push hl                                       ; $41ed: $e5

Jump_071_41ee:
    add b                                         ; $41ee: $80
    and $a1                                       ; $41ef: $e6 $a1
    xor c                                         ; $41f1: $a9
    add b                                         ; $41f2: $80
    push hl                                       ; $41f3: $e5
    ld b, a                                       ; $41f4: $47
    and h                                         ; $41f5: $a4
    sbc [hl]                                      ; $41f6: $9e
    add h                                         ; $41f7: $84
    add sp, -$1d                                  ; $41f8: $e8 $e3
    pop bc                                        ; $41fa: $c1
    db $e3                                        ; $41fb: $e3
    nop                                           ; $41fc: $00
    ret nz                                        ; $41fd: $c0

    jp hl                                         ; $41fe: $e9


    nop                                           ; $41ff: $00
    ld [c], a                                     ; $4200: $e2
    ld h, c                                       ; $4201: $61
    xor d                                         ; $4202: $aa
    cp e                                          ; $4203: $bb
    and l                                         ; $4204: $a5
    ret nz                                        ; $4205: $c0

    push hl                                       ; $4206: $e5
    sbc $84                                       ; $4207: $de $84
    dec d                                         ; $4209: $15

Call_071_420a:
    ld h, d                                       ; $420a: $62
    pop bc                                        ; $420b: $c1
    db $e3                                        ; $420c: $e3
    cp $cc                                        ; $420d: $fe $cc
    ret nz                                        ; $420f: $c0

    dec hl                                        ; $4210: $2b
    dec bc                                        ; $4211: $0b
    dec hl                                        ; $4212: $2b
    ld a, [bc]                                    ; $4213: $0a
    ld a, [bc]                                    ; $4214: $0a
    ld l, d                                       ; $4215: $6a
    dec bc                                        ; $4216: $0b
    ld [bc], a                                    ; $4217: $02
    db $fd                                        ; $4218: $fd
    ldh [rWX], a                                  ; $4219: $e0 $4b
    nop                                           ; $421b: $00
    jp $a6a1                                      ; $421c: $c3 $a1 $a6


    ld [hl], h                                    ; $421f: $74
    ld b, l                                       ; $4220: $45
    di                                            ; $4221: $f3
    ld l, c                                       ; $4222: $69
    pop bc                                        ; $4223: $c1
    and c                                         ; $4224: $a1
    ld [hl], l                                    ; $4225: $75
    ld h, c                                       ; $4226: $61
    ld [hl-], a                                   ; $4227: $32
    ld [$4be1], sp                                ; $4228: $08 $e1 $4b
    adc l                                         ; $422b: $8d
    ret nz                                        ; $422c: $c0

    call nz, Call_071_4ae0                        ; $422d: $c4 $e0 $4a
    ld a, [bc]                                    ; $4230: $0a
    rst $38                                       ; $4231: $ff
    db $e3                                        ; $4232: $e3
    cp a                                          ; $4233: $bf
    ldh [$60], a                                  ; $4234: $e0 $60
    nop                                           ; $4236: $00
    pop bc                                        ; $4237: $c1
    inc d                                         ; $4238: $14
    ld b, [hl]                                    ; $4239: $46
    cp d                                          ; $423a: $ba
    ld b, [hl]                                    ; $423b: $46
    inc e                                         ; $423c: $1c
    ld b, [hl]                                    ; $423d: $46
    xor b                                         ; $423e: $a8
    ld b, [hl]                                    ; $423f: $46
    ld c, l                                       ; $4240: $4d
    dec c                                         ; $4241: $0d

Jump_071_4242:
    dec b                                         ; $4242: $05
    db $e3                                        ; $4243: $e3
    di                                            ; $4244: $f3
    dec c                                         ; $4245: $0d
    dec c                                         ; $4246: $0d
    call nz, $bde4                                ; $4247: $c4 $e4 $bd
    ld [c], a                                     ; $424a: $e2
    ld c, e                                       ; $424b: $4b
    ld c, e                                       ; $424c: $4b
    ld c, l                                       ; $424d: $4d
    dec l                                         ; $424e: $2d
    add c                                         ; $424f: $81
    ld l, l                                       ; $4250: $6d
    ld [hl], c                                    ; $4251: $71
    ld h, b                                       ; $4252: $60
    cp [hl]                                       ; $4253: $be
    add h                                         ; $4254: $84
    cp d                                          ; $4255: $ba
    ld b, [hl]                                    ; $4256: $46
    sub e                                         ; $4257: $93
    add l                                         ; $4258: $85
    ld a, h                                       ; $4259: $7c
    ld l, b                                       ; $425a: $68
    ret nz                                        ; $425b: $c0

    and $6b                                       ; $425c: $e6 $6b
    dec bc                                        ; $425e: $0b
    ld a, [bc]                                    ; $425f: $0a
    ld a, [hl+]                                   ; $4260: $2a
    rst $20                                       ; $4261: $e7
    ld b, c                                       ; $4262: $41
    dec c                                         ; $4263: $0d
    ld a, e                                       ; $4264: $7b
    pop hl                                        ; $4265: $e1
    ld a, [hl-]                                   ; $4266: $3a
    ret nz                                        ; $4267: $c0

    cp $80                                        ; $4268: $fe $80
    ld [$c0c4], sp                                ; $426a: $08 $c4 $c0
    cp d                                          ; $426d: $ba
    ld b, a                                       ; $426e: $47
    ret nz                                        ; $426f: $c0

    and $ee                                       ; $4270: $e6 $ee
    rst $20                                       ; $4272: $e7
    adc h                                         ; $4273: $8c
    ld h, b                                       ; $4274: $60
    pop de                                        ; $4275: $d1
    and b                                         ; $4276: $a0
    add d                                         ; $4277: $82
    jp nz, Jump_000_0d6b                          ; $4278: $c2 $6b $0d

    cpl                                           ; $427b: $2f
    dec c                                         ; $427c: $0d
    dec hl                                        ; $427d: $2b
    dec bc                                        ; $427e: $0b
    dec bc                                        ; $427f: $0b
    cp a                                          ; $4280: $bf
    ldh [$2a], a                                  ; $4281: $e0 $2a
    cp $a4                                        ; $4283: $fe $a4
    or e                                          ; $4285: $b3
    ld b, e                                       ; $4286: $43
    and b                                         ; $4287: $a0
    cp d                                          ; $4288: $ba
    ld c, c                                       ; $4289: $49
    ld a, [c]                                     ; $428a: $f2
    call nz, $48a8                                ; $428b: $c4 $a8 $48
    ld c, e                                       ; $428e: $4b
    ld h, c                                       ; $428f: $61
    ret nz                                        ; $4290: $c0

    db $e4                                        ; $4291: $e4
    ld c, e                                       ; $4292: $4b
    dec [hl]                                      ; $4293: $35
    pop hl                                        ; $4294: $e1
    dec hl                                        ; $4295: $2b
    inc b                                         ; $4296: $04
    cp a                                          ; $4297: $bf
    ldh [$be], a                                  ; $4298: $e0 $be
    and l                                         ; $429a: $a5
    ld c, $33                                     ; $429b: $0e $33
    ld b, d                                       ; $429d: $42

Jump_071_429e:
    cp d                                          ; $429e: $ba
    ld c, [hl]                                    ; $429f: $4e
    and a                                         ; $42a0: $a7
    xor e                                         ; $42a1: $ab
    ld h, l                                       ; $42a2: $65
    ld h, d                                       ; $42a3: $62
    dec a                                         ; $42a4: $3d
    push hl                                       ; $42a5: $e5
    rra                                           ; $42a6: $1f
    dec bc                                        ; $42a7: $0b
    dec bc                                        ; $42a8: $0b
    ld l, e                                       ; $42a9: $6b
    ld a, [bc]                                    ; $42aa: $0a
    dec bc                                        ; $42ab: $0b
    ld a, h                                       ; $42ac: $7c
    and b                                         ; $42ad: $a0
    ld a, b                                       ; $42ae: $78
    and c                                         ; $42af: $a1
    add b                                         ; $42b0: $80
    xor $e0                                       ; $42b1: $ee $e0
    add hl, sp                                    ; $42b3: $39
    and h                                         ; $42b4: $a4
    inc e                                         ; $42b5: $1c
    ld b, d                                       ; $42b6: $42
    pop de                                        ; $42b7: $d1
    ld b, $25                                     ; $42b8: $06 $25
    ld h, e                                       ; $42ba: $63
    add d                                         ; $42bb: $82
    ld [c], a                                     ; $42bc: $e2
    dec c                                         ; $42bd: $0d
    dec hl                                        ; $42be: $2b
    dec hl                                        ; $42bf: $2b
    add c                                         ; $42c0: $81
    ld c, e                                       ; $42c1: $4b
    ei                                            ; $42c2: $fb
    ret nz                                        ; $42c3: $c0

    ret nz                                        ; $42c4: $c0

    ld [$6c1a], a                                 ; $42c5: $ea $1a $6c
    ret nz                                        ; $42c8: $c0

    rst $28                                       ; $42c9: $ef
    ld [hl], e                                    ; $42ca: $73
    ld bc, $a30c                                  ; $42cb: $01 $0c $a3
    dec c                                         ; $42ce: $0d
    ld c, $00                                     ; $42cf: $0e $00
    jp nz, $4b2a                                  ; $42d1: $c2 $2a $4b

    dec l                                         ; $42d4: $2d
    ld b, b                                       ; $42d5: $40
    and $1f                                       ; $42d6: $e6 $1f
    ld h, b                                       ; $42d8: $60
    ld b, l                                       ; $42d9: $45
    add l                                         ; $42da: $85
    ld a, [$c828]                                 ; $42db: $fa $28 $c8
    ld h, d                                       ; $42de: $62
    ld bc, $4a28                                  ; $42df: $01 $28 $4a
    call z, $0b82                                 ; $42e2: $cc $82 $0b
    add b                                         ; $42e5: $80
    pop hl                                        ; $42e6: $e1
    add a                                         ; $42e7: $87
    add c                                         ; $42e8: $81
    dec l                                         ; $42e9: $2d
    dec l                                         ; $42ea: $2d
    ld bc, $bc2d                                  ; $42eb: $01 $2d $bc
    add e                                         ; $42ee: $83
    ld a, [hl]                                    ; $42ef: $7e
    ld h, c                                       ; $42f0: $61
    ld h, c                                       ; $42f1: $61
    inc bc                                        ; $42f2: $03
    ret nz                                        ; $42f3: $c0

    db $ec                                        ; $42f4: $ec
    xor [hl]                                      ; $42f5: $ae
    ld [$e4c0], a                                 ; $42f6: $ea $c0 $e4
    call nz, $1682                                ; $42f9: $c4 $82 $16
    ld a, [$0d80]                                 ; $42fc: $fa $80 $0d
    dec c                                         ; $42ff: $0d
    pop bc                                        ; $4300: $c1
    push hl                                       ; $4301: $e5
    dec c                                         ; $4302: $0d
    dec bc                                        ; $4303: $0b
    and d                                         ; $4304: $a2
    call c, $8e85                                 ; $4305: $dc $85 $8e
    ld h, l                                       ; $4308: $65
    jr z, jr_071_4338                             ; $4309: $28 $2d

    ld h, a                                       ; $430b: $67
    ld a, h                                       ; $430c: $7c
    ld h, h                                       ; $430d: $64
    ret nz                                        ; $430e: $c0

    rst $20                                       ; $430f: $e7
    ld c, e                                       ; $4310: $4b
    rlca                                          ; $4311: $07
    add b                                         ; $4312: $80
    ld l, e                                       ; $4313: $6b
    cp e                                          ; $4314: $bb
    add [hl]                                      ; $4315: $86
    pop bc                                        ; $4316: $c1
    ldh [rP1], a                                  ; $4317: $e0 $00
    xor e                                         ; $4319: $ab
    ld hl, $23ea                                  ; $431a: $21 $ea $23
    adc e                                         ; $431d: $8b

jr_071_431e:
    rlca                                          ; $431e: $07
    dec l                                         ; $431f: $2d
    ld l, d                                       ; $4320: $6a
    ld [$0687], sp                                ; $4321: $08 $87 $06
    add e                                         ; $4324: $83
    adc c                                         ; $4325: $89
    ld h, b                                       ; $4326: $60
    pop bc                                        ; $4327: $c1
    rst $20                                       ; $4328: $e7
    nop                                           ; $4329: $00
    adc a                                         ; $432a: $8f

jr_071_432b:
    ld [hl+], a                                   ; $432b: $22
    jp nz, $c005                                  ; $432c: $c2 $05 $c0

    ld h, l                                       ; $432f: $65
    ld h, [hl]                                    ; $4330: $66
    ld [bc], a                                    ; $4331: $02
    adc $06                                       ; $4332: $ce $06
    add d                                         ; $4334: $82
    db $e3                                        ; $4335: $e3
    pop bc                                        ; $4336: $c1
    ld [c], a                                     ; $4337: $e2

jr_071_4338:
    call nz, Call_000_00a0                        ; $4338: $c4 $a0 $00
    cp a                                          ; $433b: $bf
    and b                                         ; $433c: $a0
    add d                                         ; $433d: $82
    jp hl                                         ; $433e: $e9


    ld e, h                                       ; $433f: $5c
    ld [bc], a                                    ; $4340: $02
    ld [$7625], a                                 ; $4341: $ea $25 $76
    ld b, l                                       ; $4344: $45
    adc $0a                                       ; $4345: $ce $0a
    ld b, d                                       ; $4347: $42
    rst $20                                       ; $4348: $e7
    ld c, h                                       ; $4349: $4c
    push hl                                       ; $434a: $e5
    ret nz                                        ; $434b: $c0

    ld [hl], $c3                                  ; $434c: $36 $c3

Call_071_434e:
    xor h                                         ; $434e: $ac
    add c                                         ; $434f: $81
    xor h                                         ; $4350: $ac
    ld h, h                                       ; $4351: $64
    ret nz                                        ; $4352: $c0

    and $76                                       ; $4353: $e6 $76
    ld b, h                                       ; $4355: $44
    dec l                                         ; $4356: $2d
    ld l, d                                       ; $4357: $6a
    dec c                                         ; $4358: $0d
    ld c, l                                       ; $4359: $4d
    nop                                           ; $435a: $00
    ld a, l                                       ; $435b: $7d
    jr nz, jr_071_431e                            ; $435c: $20 $c0

    add sp, -$47                                  ; $435e: $e8 $b9
    and b                                         ; $4360: $a0
    ccf                                           ; $4361: $3f
    ld h, c                                       ; $4362: $61
    jp $a0e1                                      ; $4363: $c3 $e1 $a0


    ld b, [hl]                                    ; $4366: $46
    ret nz                                        ; $4367: $c0

    rst $20                                       ; $4368: $e7
    halt                                          ; $4369: $76
    ld b, d                                       ; $436a: $42
    nop                                           ; $436b: $00
    ld c, $2c                                     ; $436c: $0e $2c
    ld [bc], a                                    ; $436e: $02
    and $c0                                       ; $436f: $e6 $c0
    and l                                         ; $4371: $a5
    ld a, [hl-]                                   ; $4372: $3a
    ret nz                                        ; $4373: $c0

    ld b, $41                                     ; $4374: $06 $41
    and b                                         ; $4376: $a0
    ld b, a                                       ; $4377: $47
    ld l, b                                       ; $4378: $68
    inc b                                         ; $4379: $04
    ld c, c                                       ; $437a: $49
    push hl                                       ; $437b: $e5
    jr c, jr_071_432b                             ; $437c: $38 $ad

    ld c, c                                       ; $437e: $49
    ld b, l                                       ; $437f: $45
    ld b, d                                       ; $4380: $42
    pop bc                                        ; $4381: $c1
    rst $20                                       ; $4382: $e7
    ld c, e                                       ; $4383: $4b
    dec c                                         ; $4384: $0d
    ld l, e                                       ; $4385: $6b
    add b                                         ; $4386: $80
    and b                                         ; $4387: $a0
    cp d                                          ; $4388: $ba
    and b                                         ; $4389: $a0
    add b                                         ; $438a: $80
    ld [$a0a0], sp                                ; $438b: $08 $a0 $a0
    ld b, [hl]                                    ; $438e: $46
    ld l, e                                       ; $438f: $6b
    ld b, b                                       ; $4390: $40
    dec bc                                        ; $4391: $0b
    jp nz, Jump_071_4576                          ; $4392: $c2 $76 $45

    ld c, $2c                                     ; $4395: $0e $2c
    ld [bc], a                                    ; $4397: $02
    db $ec                                        ; $4398: $ec
    ld c, e                                       ; $4399: $4b
    inc bc                                        ; $439a: $03
    ld l, e                                       ; $439b: $6b
    dec bc                                        ; $439c: $0b
    add e                                         ; $439d: $83
    and b                                         ; $439e: $a0
    ret z                                         ; $439f: $c8

    ld [bc], a                                    ; $43a0: $02
    ldh [rDMA], a                                 ; $43a1: $e0 $46
    jp $c003                                      ; $43a3: $c3 $03 $c0


    ld a, [c]                                     ; $43a6: $f2
    ld l, d                                       ; $43a7: $6a
    ld [bc], a                                    ; $43a8: $02
    nop                                           ; $43a9: $00
    jp nz, $83ca                                  ; $43aa: $c2 $ca $83

    and d                                         ; $43ad: $a2
    call nz, $60c2                                ; $43ae: $c4 $c2 $60
    ld b, h                                       ; $43b1: $44
    ld hl, $8025                                  ; $43b2: $21 $25 $80
    and $2d                                       ; $43b5: $e6 $2d
    ld l, b                                       ; $43b7: $68
    ld h, c                                       ; $43b8: $61
    db $e3                                        ; $43b9: $e3
    ld h, $87                                     ; $43ba: $26 $87
    push bc                                       ; $43bc: $c5
    dec l                                         ; $43bd: $2d
    ld l, e                                       ; $43be: $6b
    ld b, $80                                     ; $43bf: $06 $80
    add e                                         ; $43c1: $83
    and b                                         ; $43c2: $a0
    dec bc                                        ; $43c3: $0b
    rst $00                                       ; $43c4: $c7
    ld h, c                                       ; $43c5: $61
    ret nz                                        ; $43c6: $c0

    push hl                                       ; $43c7: $e5
    nop                                           ; $43c8: $00
    ld b, a                                       ; $43c9: $47
    ld h, [hl]                                    ; $43ca: $66
    ld b, b                                       ; $43cb: $40
    and $f9                                       ; $43cc: $e6 $f9
    ld [hl+], a                                   ; $43ce: $22
    ld b, h                                       ; $43cf: $44
    inc hl                                        ; $43d0: $23
    ld [hl+], a                                   ; $43d1: $22
    ld h, b                                       ; $43d2: $60
    ret nz                                        ; $43d3: $c0

    nop                                           ; $43d4: $00
    ld d, l                                       ; $43d5: $55
    and h                                         ; $43d6: $a4
    ld a, [$1660]                                 ; $43d7: $fa $60 $16
    ld b, b                                       ; $43da: $40
    ld b, [hl]                                    ; $43db: $46
    ld c, l                                       ; $43dc: $4d
    dec l                                         ; $43dd: $2d
    dec b                                         ; $43de: $05
    ld [hl+], a                                   ; $43df: $22
    ld c, $5d                                     ; $43e0: $0e $5d
    and b                                         ; $43e2: $a0
    ld e, c                                       ; $43e3: $59
    ld h, l                                       ; $43e4: $65
    nop                                           ; $43e5: $00
    and $00                                       ; $43e6: $e6 $00
    ld a, h                                       ; $43e8: $7c
    and h                                         ; $43e9: $a4
    and h                                         ; $43ea: $a4
    call nz, $8484                                ; $43eb: $c4 $84 $84
    sub $82                                       ; $43ee: $d6 $82
    add d                                         ; $43f0: $82
    pop bc                                        ; $43f1: $c1
    rst $38                                       ; $43f2: $ff
    db $e4                                        ; $43f3: $e4
    ld b, e                                       ; $43f4: $43
    nop                                           ; $43f5: $00
    ld b, a                                       ; $43f6: $47
    ld l, h                                       ; $43f7: $6c
    nop                                           ; $43f8: $00
    halt                                          ; $43f9: $76
    ld b, l                                       ; $43fa: $45
    ld e, b                                       ; $43fb: $58
    inc bc                                        ; $43fc: $03
    and h                                         ; $43fd: $a4
    add $c2                                       ; $43fe: $c6 $c2
    and h                                         ; $4400: $a4
    ret nz                                        ; $4401: $c0

    db $e4                                        ; $4402: $e4
    pop bc                                        ; $4403: $c1
    db $e4                                        ; $4404: $e4
    dec sp                                        ; $4405: $3b
    ret nz                                        ; $4406: $c0

    cp a                                          ; $4407: $bf
    db $e3                                        ; $4408: $e3
    nop                                           ; $4409: $00
    ld b, a                                       ; $440a: $47
    ld l, c                                       ; $440b: $69
    halt                                          ; $440c: $76
    ld b, l                                       ; $440d: $45
    add e                                         ; $440e: $83
    add h                                         ; $440f: $84
    db $e4                                        ; $4410: $e4
    jp $f5c0                                      ; $4411: $c3 $c0 $f5


    ld a, e                                       ; $4414: $7b
    add b                                         ; $4415: $80
    ld e, c                                       ; $4416: $59
    ld l, [hl]                                    ; $4417: $6e
    jp nz, Jump_000_30e6                          ; $4418: $c2 $e6 $30

    ret nz                                        ; $441b: $c0

    rst $20                                       ; $441c: $e7
    add d                                         ; $441d: $82
    and [hl]                                      ; $441e: $a6
    ld d, c                                       ; $441f: $51
    db $e3                                        ; $4420: $e3
    call nz, $0b41                                ; $4421: $c4 $41 $0b
    dec bc                                        ; $4424: $0b
    or d                                          ; $4425: $b2
    ld b, b                                       ; $4426: $40
    cp l                                          ; $4427: $bd
    ld b, b                                       ; $4428: $40
    nop                                           ; $4429: $00
    jp nz, Jump_000_0085                          ; $442a: $c2 $85 $00

    inc l                                         ; $442d: $2c
    dec [hl]                                      ; $442e: $35
    pop bc                                        ; $442f: $c1
    ld b, h                                       ; $4430: $44
    ld h, $bd                                     ; $4431: $26 $bd
    add d                                         ; $4433: $82
    add h                                         ; $4434: $84
    add d                                         ; $4435: $82
    adc [hl]                                      ; $4436: $8e
    and d                                         ; $4437: $a2
    ld b, b                                       ; $4438: $40
    and $00                                       ; $4439: $e6 $00
    ld b, d                                       ; $443b: $42
    nop                                           ; $443c: $00
    ret nz                                        ; $443d: $c0

    push af                                       ; $443e: $f5
    ld [hl-], a                                   ; $443f: $32
    jp Jump_000_2544                              ; $4440: $c3 $44 $25


    ld a, [de]                                    ; $4443: $1a

Call_071_4444:
    and c                                         ; $4444: $a1
    ret nz                                        ; $4445: $c0

Jump_071_4446:
    call nz, Call_071_41b7                        ; $4446: $c4 $b7 $41
    ld b, b                                       ; $4449: $40
    add sp, $00                                   ; $444a: $e8 $00
    ret nc                                        ; $444c: $d0

    inc b                                         ; $444d: $04
    ld e, c                                       ; $444e: $59
    ld l, e                                       ; $444f: $6b
    jp nz, $fee5                                  ; $4450: $c2 $e5 $fe

    ldh [$b8], a                                  ; $4453: $e0 $b8
    ld h, d                                       ; $4455: $62
    ld b, [hl]                                    ; $4456: $46
    ld h, c                                       ; $4457: $61
    sub b                                         ; $4458: $90
    add e                                         ; $4459: $83
    adc [hl]                                      ; $445a: $8e
    and d                                         ; $445b: $a2
    inc de                                        ; $445c: $13
    dec c                                         ; $445d: $0d
    ld l, e                                       ; $445e: $6b
    add c                                         ; $445f: $81
    and b                                         ; $4460: $a0
    cp l                                          ; $4461: $bd
    ld h, c                                       ; $4462: $61
    ld l, e                                       ; $4463: $6b
    inc b                                         ; $4464: $04
    add b                                         ; $4465: $80
    rla                                           ; $4466: $17
    jp Jump_071_6919                              ; $4467: $c3 $19 $69


    nop                                           ; $446a: $00
    ld b, l                                       ; $446b: $45
    ld h, [hl]                                    ; $446c: $66
    ld l, $62                                     ; $446d: $2e $62
    ld [hl], d                                    ; $446f: $72
    ld [bc], a                                    ; $4470: $02
    or l                                          ; $4471: $b5
    ld b, c                                       ; $4472: $41
    push de                                       ; $4473: $d5
    ld h, l                                       ; $4474: $65
    or $a1                                        ; $4475: $f6 $a1
    add e                                         ; $4477: $83
    ld h, h                                       ; $4478: $64
    add [hl]                                      ; $4479: $86
    ld h, c                                       ; $447a: $61
    nop                                           ; $447b: $00
    ld h, b                                       ; $447c: $60
    ld h, c                                       ; $447d: $61
    and b                                         ; $447e: $a0
    add e                                         ; $447f: $83
    ld b, a                                       ; $4480: $47
    ld h, l                                       ; $4481: $65
    ld a, h                                       ; $4482: $7c
    ld l, b                                       ; $4483: $68

Call_071_4484:
    cp b                                          ; $4484: $b8
    ld b, a                                       ; $4485: $47
    ld [bc], a                                    ; $4486: $02
    rst $00                                       ; $4487: $c7
    cp a                                          ; $4488: $bf
    and l                                         ; $4489: $a5
    inc b                                         ; $448a: $04
    add e                                         ; $448b: $83
    nop                                           ; $448c: $00
    ld e, d                                       ; $448d: $5a
    ld h, a                                       ; $448e: $67
    or [hl]                                       ; $448f: $b6
    and b                                         ; $4490: $a0
    sub e                                         ; $4491: $93
    and h                                         ; $4492: $a4
    ld c, a                                       ; $4493: $4f
    ldh [$82], a                                  ; $4494: $e0 $82
    and e                                         ; $4496: $a3
    cp h                                          ; $4497: $bc
    ld b, l                                       ; $4498: $45
    add c                                         ; $4499: $81
    ld h, c                                       ; $449a: $61
    ret nz                                        ; $449b: $c0

    jp hl                                         ; $449c: $e9


    nop                                           ; $449d: $00
    ld a, [hl]                                    ; $449e: $7e
    and c                                         ; $449f: $a1

Jump_071_44a0:
    rst $00                                       ; $44a0: $c7
    ld h, e                                       ; $44a1: $63
    add [hl]                                      ; $44a2: $86
    and b                                         ; $44a3: $a0
    ld e, d                                       ; $44a4: $5a
    ld h, l                                       ; $44a5: $65
    ld [hl], a                                    ; $44a6: $77
    and c                                         ; $44a7: $a1
    ld d, b                                       ; $44a8: $50
    ld h, c                                       ; $44a9: $61
    call nz, $84e8                                ; $44aa: $c4 $e8 $84
    ld b, $00                                     ; $44ad: $06 $00
    ld b, d                                       ; $44af: $42
    and h                                         ; $44b0: $a4
    sub e                                         ; $44b1: $93
    and c                                         ; $44b2: $a1
    db $f4                                        ; $44b3: $f4
    ld h, h                                       ; $44b4: $64
    adc b                                         ; $44b5: $88
    ld h, e                                       ; $44b6: $63
    adc $20                                       ; $44b7: $ce $20
    ld e, d                                       ; $44b9: $5a
    ld h, a                                       ; $44ba: $67
    scf                                           ; $44bb: $37
    add a                                         ; $44bc: $87
    ld d, c                                       ; $44bd: $51
    inc b                                         ; $44be: $04
    nop                                           ; $44bf: $00
    add h                                         ; $44c0: $84
    ld a, [bc]                                    ; $44c1: $0a
    ld [bc], a                                    ; $44c2: $02
    push bc                                       ; $44c3: $c5
    jr jr_071_44e7                                ; $44c4: $18 $21

    ld [de], a                                    ; $44c6: $12
    ld b, c                                       ; $44c7: $41
    ld c, [hl]                                    ; $44c8: $4e
    ld bc, $2ba0                                  ; $44c9: $01 $a0 $2b
    sub e                                         ; $44cc: $93
    and a                                         ; $44cd: $a7
    cp h                                          ; $44ce: $bc
    ld b, h                                       ; $44cf: $44
    nop                                           ; $44d0: $00
    add h                                         ; $44d1: $84
    add hl, bc                                    ; $44d2: $09
    ld [bc], a                                    ; $44d3: $02
    add d                                         ; $44d4: $82
    ld d, e                                       ; $44d5: $53
    and c                                         ; $44d6: $a1
    ld [hl], h                                    ; $44d7: $74
    ld h, c                                       ; $44d8: $61
    jp nc, $9e21                                  ; $44d9: $d2 $21 $9e

    add h                                         ; $44dc: $84
    ret nz                                        ; $44dd: $c0

    ld a, [c]                                     ; $44de: $f2
    ld b, d                                       ; $44df: $42
    and a                                         ; $44e0: $a7
    nop                                           ; $44e1: $00
    dec hl                                        ; $44e2: $2b
    and [hl]                                      ; $44e3: $a6
    ld [$4f23], sp                                ; $44e4: $08 $23 $4f

jr_071_44e7:
    add b                                         ; $44e7: $80
    ld e, e                                       ; $44e8: $5b
    ld h, c                                       ; $44e9: $61
    ld c, a                                       ; $44ea: $4f
    ld b, e                                       ; $44eb: $43
    ld c, a                                       ; $44ec: $4f
    ld hl, $811c                                  ; $44ed: $21 $1c $81
    add b                                         ; $44f0: $80
    db $eb                                        ; $44f1: $eb
    nop                                           ; $44f2: $00
    ld d, e                                       ; $44f3: $53
    add c                                         ; $44f4: $81
    ld b, e                                       ; $44f5: $43
    call nz, Call_000_0af2                        ; $44f6: $c4 $f2 $0a
    ld d, l                                       ; $44f9: $55
    ld hl, $a112                                  ; $44fa: $21 $12 $a1
    sbc c                                         ; $44fd: $99
    inc hl                                        ; $44fe: $23
    rlca                                          ; $44ff: $07
    pop hl                                        ; $4500: $e1
    ret nc                                        ; $4501: $d0

    ld [hl+], a                                   ; $4502: $22
    nop                                           ; $4503: $00
    ld e, d                                       ; $4504: $5a
    ld l, b                                       ; $4505: $68
    sub e                                         ; $4506: $93
    and h                                         ; $4507: $a4
    add b                                         ; $4508: $80
    and $c0                                       ; $4509: $e6 $c0
    jp hl                                         ; $450b: $e9


    jr nz, jr_071_452e                            ; $450c: $20 $20

    cp a                                          ; $450e: $bf
    ld [c], a                                     ; $450f: $e2
    ld d, c                                       ; $4510: $51

Jump_071_4511:
    add b                                         ; $4511: $80
    ld hl, $00a4                                  ; $4512: $21 $a4 $00
    sub c                                         ; $4515: $91
    add h                                         ; $4516: $84
    ld a, [de]                                    ; $4517: $1a
    ld h, a                                       ; $4518: $67
    ld a, [$0822]                                 ; $4519: $fa $22 $08
    and d                                         ; $451c: $a2
    ld b, h                                       ; $451d: $44
    push bc                                       ; $451e: $c5
    dec hl                                        ; $451f: $2b
    xor e                                         ; $4520: $ab
    ret nz                                        ; $4521: $c0

    add a                                         ; $4522: $87
    ld c, [hl]                                    ; $4523: $4e
    add h                                         ; $4524: $84
    nop                                           ; $4525: $00
    ret nc                                        ; $4526: $d0

    ld [hl+], a                                   ; $4527: $22
    ld e, d                                       ; $4528: $5a
    ld h, a                                       ; $4529: $67
    cp d                                          ; $452a: $ba
    ld [hl+], a                                   ; $452b: $22
    add l                                         ; $452c: $85
    ld [hl+], a                                   ; $452d: $22

jr_071_452e:
    rst $38                                       ; $452e: $ff
    add [hl]                                      ; $452f: $86
    ret nz                                        ; $4530: $c0

    pop af                                        ; $4531: $f1
    sbc d                                         ; $4532: $9a
    ld b, e                                       ; $4533: $43
    add b                                         ; $4534: $80
    ld [c], a                                     ; $4535: $e2
    nop                                           ; $4536: $00
    ret nz                                        ; $4537: $c0

    db $e3                                        ; $4538: $e3
    ret c                                         ; $4539: $d8

    ld bc, $e3c0                                  ; $453a: $01 $c0 $e3
    ld b, l                                       ; $453d: $45

Call_071_453e:
    db $e3                                        ; $453e: $e3
    or h                                          ; $453f: $b4
    ld [c], a                                     ; $4540: $e2
    inc a                                         ; $4541: $3c
    inc hl                                        ; $4542: $23
    ld [hl], d                                    ; $4543: $72
    ld a, [bc]                                    ; $4544: $0a
    ret nz                                        ; $4545: $c0

Jump_071_4546:
    add a                                         ; $4546: $87
    ld [$e47f], sp                                ; $4547: $08 $7f $e4
    ld d, b                                       ; $454a: $50
    inc hl                                        ; $454b: $23
    ld de, $6d88                                  ; $454c: $11 $88 $6d
    ld [hl], e                                    ; $454f: $73
    ld h, d                                       ; $4550: $62
    adc $42                                       ; $4551: $ce $42
    ld e, c                                       ; $4553: $59
    rst $20                                       ; $4554: $e7
    dec hl                                        ; $4555: $2b
    and [hl]                                      ; $4556: $a6
    nop                                           ; $4557: $00
    nop                                           ; $4558: $00
    add l                                         ; $4559: $85
    and c                                         ; $455a: $a1
    add [hl]                                      ; $455b: $86
    ld l, c                                       ; $455c: $69
    ld b, h                                       ; $455d: $44
    pop de                                        ; $455e: $d1
    ld l, b                                       ; $455f: $68
    ld b, d                                       ; $4560: $42
    db $e4                                        ; $4561: $e4
    db $fc                                        ; $4562: $fc
    jp nz, $0000                                  ; $4563: $c2 $00 $00

    nop                                           ; $4566: $00
    db $fd                                        ; $4567: $fd
    and b                                         ; $4568: $a0
    rst $38                                       ; $4569: $ff
    db $f4                                        ; $456a: $f4
    jp c, $d0d3                                   ; $456b: $da $d3 $d0

    ret nc                                        ; $456e: $d0

    db $dd                                        ; $456f: $dd
    reti                                          ; $4570: $d9


    ld l, a                                       ; $4571: $6f
    db $dd                                        ; $4572: $dd
    pop de                                        ; $4573: $d1
    ret nc                                        ; $4574: $d0

    db $d3                                        ; $4575: $d3

Jump_071_4576:
    sbc $e1                                       ; $4576: $de $e1
    db $e4                                        ; $4578: $e4
    push hl                                       ; $4579: $e5
    ret c                                         ; $457a: $d8

    push af                                       ; $457b: $f5
    cp $c0                                        ; $457c: $fe $c0
    ld a, [c]                                     ; $457e: $f2
    db $eb                                        ; $457f: $eb
    and b                                         ; $4580: $a0
    and b                                         ; $4581: $a0
    call c, $d4d7                                 ; $4582: $dc $d7 $d4
    call nc, $d2bf                                ; $4585: $d4 $bf $d2
    ret nc                                        ; $4588: $d0

    ret nc                                        ; $4589: $d0

    jp nc, $d7d4                                  ; $458a: $d2 $d4 $d7

    sbc [hl]                                      ; $458d: $9e
    pop hl                                        ; $458e: $e1
    and $b9                                       ; $458f: $e6 $b9
    rst $20                                       ; $4591: $e7
    rst $20                                       ; $4592: $e7
    and $ff                                       ; $4593: $e6 $ff
    rst $38                                       ; $4595: $ff
    and b                                         ; $4596: $a0
    db $ec                                        ; $4597: $ec
    db $ed                                        ; $4598: $ed
    ld a, a                                       ; $4599: $7f
    pop hl                                        ; $459a: $e1
    reti                                          ; $459b: $d9


    db $dd                                        ; $459c: $dd
    reti                                          ; $459d: $d9


    cp l                                          ; $459e: $bd
    ldh [$d7], a                                  ; $459f: $e0 $d7
    reti                                          ; $45a1: $d9


    jp c, $e15e                                   ; $45a2: $da $5e $e1

    add sp, -$17                                  ; $45a5: $e8 $e9
    sbc [hl]                                      ; $45a7: $9e
    rst $20                                       ; $45a8: $e7
    and $d8                                       ; $45a9: $e6 $d8
    push de                                       ; $45ab: $d5
    push de                                       ; $45ac: $d5
    ret c                                         ; $45ad: $d8

    cp l                                          ; $45ae: $bd
    rst $38                                       ; $45af: $ff
    ld a, a                                       ; $45b0: $7f
    ldh [$db], a                                  ; $45b1: $e0 $db
    dec e                                         ; $45b3: $1d
    db $db                                        ; $45b4: $db
    cp l                                          ; $45b5: $bd
    ldh [$da], a                                  ; $45b6: $e0 $da
    db $db                                        ; $45b8: $db
    call c, $e0ce                                 ; $45b9: $dc $ce $e0
    rst $08                                       ; $45bc: $cf
    ld [c], a                                     ; $45bd: $e2
    ld sp, hl                                     ; $45be: $f9
    ld [c], a                                     ; $45bf: $e2
    ccf                                           ; $45c0: $3f
    ret c                                         ; $45c1: $d8

    push de                                       ; $45c2: $d5
    jp nc, $d4d6                                  ; $45c3: $d2 $d6 $d4

    sub $bd                                       ; $45c6: $d6 $bd
    push af                                       ; $45c8: $f5
    add hl, de                                    ; $45c9: $19
    db $e3                                        ; $45ca: $e3
    sub h                                         ; $45cb: $94
    sbc [hl]                                      ; $45cc: $9e
    and $bd                                       ; $45cd: $e6 $bd
    ldh [$dc], a                                  ; $45cf: $e0 $dc
    ldh [$c0], a                                  ; $45d1: $e0 $c0
    db $d3                                        ; $45d3: $d3
    db $fc                                        ; $45d4: $fc
    pop bc                                        ; $45d5: $c1
    rst $00                                       ; $45d6: $c7
    ldh [$d0], a                                  ; $45d7: $e0 $d0
    ld l, e                                       ; $45d9: $6b
    jp nc, $f4d8                                  ; $45da: $d2 $d8 $f4

    ldh [$d6], a                                  ; $45dd: $e0 $d6
    ld hl, sp-$20                                 ; $45df: $f8 $e0
    call nc, $ead6                                ; $45e1: $d4 $d6 $ea
    jp nz, $c450                                  ; $45e4: $c2 $50 $c4

    adc $19                                       ; $45e7: $ce $19
    ldh [$61], a                                  ; $45e9: $e0 $61
    ldh [$9f], a                                  ; $45eb: $e0 $9f
    ldh [$d2], a                                  ; $45ed: $e0 $d2

Jump_071_45ef:
    ld e, h                                       ; $45ef: $5c
    jp hl                                         ; $45f0: $e9


    rst $10                                       ; $45f1: $d7
    db $fc                                        ; $45f2: $fc
    ret nz                                        ; $45f3: $c0

    ld a, a                                       ; $45f4: $7f
    ret c                                         ; $45f5: $d8

    jp nc, $d1d0                                  ; $45f6: $d2 $d0 $d1

    ret nc                                        ; $45f9: $d0

    jp nc, $b4d7                                  ; $45fa: $d2 $d7 $b4

    ldh [$0d], a                                  ; $45fd: $e0 $0d
    rst $10                                       ; $45ff: $d7
    jp hl                                         ; $4600: $e9


    ret nz                                        ; $4601: $c0

    jp nc, $b5d7                                  ; $4602: $d2 $d7 $b5

    ldh [$86], a                                  ; $4605: $e0 $86
    ret z                                         ; $4607: $c8

    inc l                                         ; $4608: $2c
    push hl                                       ; $4609: $e5
    add hl, de                                    ; $460a: $19
    ldh [$ab], a                                  ; $460b: $e0 $ab
    db $d3                                        ; $460d: $d3
    sub $e0                                       ; $460e: $d6 $e0
    pop hl                                        ; $4610: $e1
    sub $89                                       ; $4611: $d6 $89
    jp nz, $b5ea                                  ; $4613: $c2 $ea $b5

    jp $aada                                      ; $4616: $c3 $da $aa


    db $fc                                        ; $4619: $fc
    ret nz                                        ; $461a: $c0

    rst $10                                       ; $461b: $d7
    adc d                                         ; $461c: $8a
    pop hl                                        ; $461d: $e1
    rst $10                                       ; $461e: $d7
    ld hl, sp-$1f                                 ; $461f: $f8 $e1
    db $dd                                        ; $4621: $dd
    jp hl                                         ; $4622: $e9


    ret nz                                        ; $4623: $c0

    rst $10                                       ; $4624: $d7
    ld de, $69dd                                  ; $4625: $11 $dd $69
    jp $e5c2                                      ; $4628: $c3 $c2 $e5


    inc l                                         ; $462b: $2c
    rst $20                                       ; $462c: $e7
    ret c                                         ; $462d: $d8

    and l                                         ; $462e: $a5
    ldh [$8b], a                                  ; $462f: $e0 $8b
    pop bc                                        ; $4631: $c1
    ldh [$e5], a                                  ; $4632: $e0 $e5
    ld l, d                                       ; $4634: $6a
    or l                                          ; $4635: $b5
    pop bc                                        ; $4636: $c1
    call c, $c0fc                                 ; $4637: $dc $fc $c0
    jp c, $e07b                                   ; $463a: $da $7b $e0

    reti                                          ; $463d: $d9


    jp c, $e0f8                                   ; $463e: $da $f8 $e0

    cp b                                          ; $4641: $b8
    add hl, hl                                    ; $4642: $29
    rst $00                                       ; $4643: $c7
    inc l                                         ; $4644: $2c
    add $2c                                       ; $4645: $c6 $2c
    jp hl                                         ; $4647: $e9


    db $d3                                        ; $4648: $d3
    ret nc                                        ; $4649: $d0

    db $dd                                        ; $464a: $dd
    sub $e1                                       ; $464b: $d6 $e1
    db $dd                                        ; $464d: $dd
    nop                                           ; $464e: $00
    ld d, l                                       ; $464f: $55
    ldh [$c8], a                                  ; $4650: $e0 $c8
    push bc                                       ; $4652: $c5
    or d                                          ; $4653: $b2
    jp $e07b                                      ; $4654: $c3 $7b $e0


    di                                            ; $4657: $f3
    pop bc                                        ; $4658: $c1
    add hl, hl                                    ; $4659: $29
    ret z                                         ; $465a: $c8

    inc l                                         ; $465b: $2c
    push bc                                       ; $465c: $c5
    inc l                                         ; $465d: $2c
    ld [$d3f7], a                                 ; $465e: $ea $f7 $d3
    ret nc                                        ; $4661: $d0

    pop de                                        ; $4662: $d1
    jp z, $d0a0                                   ; $4663: $ca $a0 $d0

    ret nc                                        ; $4666: $d0

    db $d3                                        ; $4667: $d3
    jp c, $0d00                                   ; $4668: $da $00 $0d

    pop hl                                        ; $466b: $e1
    ld sp, hl                                     ; $466c: $f9
    jp nz, $a3c4                                  ; $466d: $c2 $c4 $a3

    ld a, e                                       ; $4670: $7b
    pop hl                                        ; $4671: $e1
    ld l, $e1                                     ; $4672: $2e $e1
    add hl, hl                                    ; $4674: $29
    rst $00                                       ; $4675: $c7
    inc l                                         ; $4676: $2c
    call nz, $c0e0                                ; $4677: $c4 $e0 $c0
    jr c, @+$2e                                   ; $467a: $38 $2c

    add sp, -$1e                                  ; $467c: $e8 $e2
    pop bc                                        ; $467e: $c1
    res 4, b                                      ; $467f: $cb $a0
    call nc, $dcd7                                ; $4681: $d4 $d7 $dc
    dec c                                         ; $4684: $0d
    pop hl                                        ; $4685: $e1
    call $21c0                                    ; $4686: $cd $c0 $21
    ret c                                         ; $4689: $d8

    sbc b                                         ; $468a: $98
    rst $20                                       ; $468b: $e7
    add hl, hl                                    ; $468c: $29
    call z, $c32c                                 ; $468d: $cc $2c $c3
    ld d, l                                       ; $4690: $55
    xor h                                         ; $4691: $ac
    jp c, $a3cb                                   ; $4692: $da $cb $a3

    jp z, Jump_071_78a1                           ; $4695: $ca $a1 $78

    dec c                                         ; $4698: $0d
    ldh [$96], a                                  ; $4699: $e0 $96
    pop bc                                        ; $469b: $c1
    call nz, $9fa1                                ; $469c: $c4 $a1 $9f
    sbc l                                         ; $469f: $9d
    sbc l                                         ; $46a0: $9d
    sbc a                                         ; $46a1: $9f
    add e                                         ; $46a2: $83
    and a                                         ; $46a3: $a7
    db $10                                        ; $46a4: $10
    add hl, hl                                    ; $46a5: $29
    call nz, $c32c                                ; $46a6: $c4 $2c $c3
    sub $a1                                       ; $46a9: $d6 $a1
    ld d, l                                       ; $46ab: $55
    xor b                                         ; $46ac: $a8
    call c, $a3cb                                 ; $46ad: $dc $cb $a3
    dec d                                         ; $46b0: $15
    ld [c], a                                     ; $46b1: $e2

Call_071_46b2:
    or h                                          ; $46b2: $b4
    pop hl                                        ; $46b3: $e1
    cp $8d                                        ; $46b4: $fe $8d
    ret nz                                        ; $46b6: $c0

    and b                                         ; $46b7: $a0
    and b                                         ; $46b8: $a0
    sbc a                                         ; $46b9: $9f
    sbc h                                         ; $46ba: $9c
    ld b, [hl]                                    ; $46bb: $46
    ld b, [hl]                                    ; $46bc: $46
    sbc h                                         ; $46bd: $9c
    ld bc, $6a9f                                  ; $46be: $01 $9f $6a
    and d                                         ; $46c1: $a2
    ld c, d                                       ; $46c2: $4a
    jp z, $c12c                                   ; $46c3: $ca $2c $c1

    call nc, Call_071_5582                        ; $46c6: $d4 $82 $55
    xor c                                         ; $46c9: $a9
    and d                                         ; $46ca: $a2
    and $b4                                       ; $46cb: $e6 $b4
    ld [c], a                                     ; $46cd: $e2
    inc c                                         ; $46ce: $0c
    adc l                                         ; $46cf: $8d
    ret nz                                        ; $46d0: $c0

    pop bc                                        ; $46d1: $c1
    ldh [$ae], a                                  ; $46d2: $e0 $ae
    ld b, [hl]                                    ; $46d4: $46
    cp a                                          ; $46d5: $bf
    pop hl                                        ; $46d6: $e1
    and c                                         ; $46d7: $a1
    xor l                                         ; $46d8: $ad
    inc l                                         ; $46d9: $2c
    jp nz, $ec2c                                  ; $46da: $c2 $2c $ec

    ld hl, sp+$0d                                 ; $46dd: $f8 $0d
    pop bc                                        ; $46df: $c1
    inc a                                         ; $46e0: $3c
    xor c                                         ; $46e1: $a9
    add b                                         ; $46e2: $80
    and c                                         ; $46e3: $a1
    and c                                         ; $46e4: $a1
    xor [hl]                                      ; $46e5: $ae
    xor a                                         ; $46e6: $af
    xor [hl]                                      ; $46e7: $ae
    ld b, [hl]                                    ; $46e8: $46
    add a                                         ; $46e9: $87
    xor [hl]                                      ; $46ea: $ae
    ld b, [hl]                                    ; $46eb: $46
    and c                                         ; $46ec: $a1
    and c                                         ; $46ed: $a1
    xor l                                         ; $46ee: $ad
    inc l                                         ; $46ef: $2c
    jp nz, $ed2c                                  ; $46f0: $c2 $2c $ed

    ld c, d                                       ; $46f3: $4a
    rst $00                                       ; $46f4: $c7
    sbc $be                                       ; $46f5: $de $be
    dec h                                         ; $46f7: $25
    add e                                         ; $46f8: $83
    ld [$9ea0], a                                 ; $46f9: $ea $a0 $9e
    xor a                                         ; $46fc: $af
    ld b, [hl]                                    ; $46fd: $46
    cp $e1                                        ; $46fe: $fe $e1
    sbc [hl]                                      ; $4700: $9e
    ldh [$a1], a                                  ; $4701: $e0 $a1
    xor l                                         ; $4703: $ad
    inc l                                         ; $4704: $2c
    jp nz, $ab79                                  ; $4705: $c2 $79 $ab

    ld a, $c2                                     ; $4708: $3e $c2
    ld c, $82                                     ; $470a: $0e $82
    db $eb                                        ; $470c: $eb
    and b                                         ; $470d: $a0
    ldh [rNR11], a                                ; $470e: $e0 $11
    pop hl                                        ; $4710: $e1
    db $e4                                        ; $4711: $e4
    ld h, e                                       ; $4712: $63
    ld [bc], a                                    ; $4713: $02
    pop hl                                        ; $4714: $e1
    cp $e1                                        ; $4715: $fe $e1
    sbc [hl]                                      ; $4717: $9e
    and c                                         ; $4718: $a1
    xor [hl]                                      ; $4719: $ae
    inc l                                         ; $471a: $2c
    jp $850e                                      ; $471b: $c3 $0e $85


    ld hl, sp-$22                                 ; $471e: $f8 $de
    add h                                         ; $4720: $84
    ld [de], a                                    ; $4721: $12
    and c                                         ; $4722: $a1
    dec a                                         ; $4723: $3d
    add d                                         ; $4724: $82
    ld [c], a                                     ; $4725: $e2
    db $e3                                        ; $4726: $e3
    and b                                         ; $4727: $a0
    sbc a                                         ; $4728: $9f
    and d                                         ; $4729: $a2
    daa                                           ; $472a: $27
    sbc l                                         ; $472b: $9d
    sbc l                                         ; $472c: $9d
    sbc l                                         ; $472d: $9d
    pop bc                                        ; $472e: $c1
    db $e4                                        ; $472f: $e4
    add b                                         ; $4730: $80
    ldh [$ea], a                                  ; $4731: $e0 $ea
    and c                                         ; $4733: $a1
    xor d                                         ; $4734: $aa
    dec b                                         ; $4735: $05
    xor c                                         ; $4736: $a9
    jr nz, @+$10                                  ; $4737: $20 $0e

    add b                                         ; $4739: $80
    sbc $85                                       ; $473a: $de $85
    ld [de], a                                    ; $473c: $12
    and c                                         ; $473d: $a1
    ld a, [$88c4]                                 ; $473e: $fa $c4 $88
    pop bc                                        ; $4741: $c1
    xor [hl]                                      ; $4742: $ae
    call nz, $80c1                                ; $4743: $c4 $c1 $80
    and $06                                       ; $4746: $e6 $06
    and c                                         ; $4748: $a1
    xor b                                         ; $4749: $a8
    sbc $df                                       ; $474a: $de $df
    ld b, l                                       ; $474c: $45
    ld h, d                                       ; $474d: $62
    sub e                                         ; $474e: $93
    add [hl]                                      ; $474f: $86
    sbc $85                                       ; $4750: $de $85
    sub a                                         ; $4752: $97
    and e                                         ; $4753: $a3
    add [hl]                                      ; $4754: $86
    and $03                                       ; $4755: $e6 $03
    xor a                                         ; $4757: $af
    xor a                                         ; $4758: $af
    ret nz                                        ; $4759: $c0

    jp hl                                         ; $475a: $e9


    and c                                         ; $475b: $a1
    xor b                                         ; $475c: $a8
    ld hl, $93e4                                  ; $475d: $21 $e4 $93
    add [hl]                                      ; $4760: $86
    sbc $85                                       ; $4761: $de $85
    inc c                                         ; $4763: $0c
    ld [$fa00], a                                 ; $4764: $ea $00 $fa
    jp hl                                         ; $4767: $e9


    nop                                           ; $4768: $00
    pop hl                                        ; $4769: $e1
    and c                                         ; $476a: $a1
    xor b                                         ; $476b: $a8
    ld hl, $c4e0                                  ; $476c: $21 $e0 $c4
    ld b, c                                       ; $476f: $41
    sub e                                         ; $4770: $93
    add [hl]                                      ; $4771: $86
    sbc $85                                       ; $4772: $de $85
    push de                                       ; $4774: $d5
    ld b, c                                       ; $4775: $41
    inc c                                         ; $4776: $0c
    pop bc                                        ; $4777: $c1
    pop af                                        ; $4778: $f1
    add b                                         ; $4779: $80
    ret nz                                        ; $477a: $c0

    sbc $df                                       ; $477b: $de $df
    and c                                         ; $477d: $a1
    xor b                                         ; $477e: $a8
    add a                                         ; $477f: $87
    ld b, h                                       ; $4780: $44
    ld a, [c]                                     ; $4781: $f2
    rst $00                                       ; $4782: $c7
    or d                                          ; $4783: $b2
    call nz, $d5fc                                ; $4784: $c4 $fc $d5
    ld b, b                                       ; $4787: $40
    add d                                         ; $4788: $82
    rst $20                                       ; $4789: $e7
    ld b, l                                       ; $478a: $45
    ld b, l                                       ; $478b: $45
    ld b, l                                       ; $478c: $45
    ld c, b                                       ; $478d: $48
    ld c, [hl]                                    ; $478e: $4e
    ld d, e                                       ; $478f: $53
    rra                                           ; $4790: $1f
    ld b, e                                       ; $4791: $43
    ld c, b                                       ; $4792: $48
    ld d, e                                       ; $4793: $53
    ld b, l                                       ; $4794: $45
    ld b, [hl]                                    ; $4795: $46
    nop                                           ; $4796: $00
    ret nz                                        ; $4797: $c0

    ld l, [hl]                                    ; $4798: $6e
    pop bc                                        ; $4799: $c1
    and c                                         ; $479a: $a1
    and a                                         ; $479b: $a7
    or b                                          ; $479c: $b0
    ld b, [hl]                                    ; $479d: $46
    ld b, e                                       ; $479e: $43
    sub e                                         ; $479f: $93
    add h                                         ; $47a0: $84
    add hl, sp                                    ; $47a1: $39
    ld b, h                                       ; $47a2: $44
    adc $60                                       ; $47a3: $ce $60
    add sp, -$17                                  ; $47a5: $e8 $e9
    ld b, e                                       ; $47a7: $43
    and $45                                       ; $47a8: $e6 $45
    rst $38                                       ; $47aa: $ff
    ld c, b                                       ; $47ab: $48
    ld c, c                                       ; $47ac: $49
    ld d, l                                       ; $47ad: $55
    ld b, a                                       ; $47ae: $47
    ld h, b                                       ; $47af: $60
    ld h, c                                       ; $47b0: $61
    ld h, c                                       ; $47b1: $61
    ld c, h                                       ; $47b2: $4c
    rrca                                          ; $47b3: $0f
    ld h, b                                       ; $47b4: $60
    ld h, c                                       ; $47b5: $61
    ld d, d                                       ; $47b6: $52
    ld b, l                                       ; $47b7: $45
    nop                                           ; $47b8: $00
    ret nz                                        ; $47b9: $c0

    ld c, l                                       ; $47ba: $4d
    db $e4                                        ; $47bb: $e4
    inc e                                         ; $47bc: $1c
    ld l, d                                       ; $47bd: $6a
    sub e                                         ; $47be: $93
    add h                                         ; $47bf: $84
    ld a, [$49a8]                                 ; $47c0: $fa $a8 $49
    sbc [hl]                                      ; $47c3: $9e
    db $10                                        ; $47c4: $10
    jp $aeae                                      ; $47c5: $c3 $ae $ae


    ld d, c                                       ; $47c8: $51
    ld e, [hl]                                    ; $47c9: $5e
    ld h, c                                       ; $47ca: $61
    rst $38                                       ; $47cb: $ff
    ld d, l                                       ; $47cc: $55
    ld d, e                                       ; $47cd: $53
    ld e, c                                       ; $47ce: $59
    ld e, c                                       ; $47cf: $59
    ld d, h                                       ; $47d0: $54
    ld h, c                                       ; $47d1: $61
    ld h, c                                       ; $47d2: $61

jr_071_47d3:
    ld h, c                                       ; $47d3: $61
    add e                                         ; $47d4: $83
    ld d, [hl]                                    ; $47d5: $56
    ld b, l                                       ; $47d6: $45
    ccf                                           ; $47d7: $3f
    and c                                         ; $47d8: $a1
    ccf                                           ; $47d9: $3f
    ld b, l                                       ; $47da: $45
    cp d                                          ; $47db: $ba
    ld c, b                                       ; $47dc: $48
    sub e                                         ; $47dd: $93
    add h                                         ; $47de: $84
    xor b                                         ; $47df: $a8
    ld c, c                                       ; $47e0: $49
    and c                                         ; $47e1: $a1
    cp $d0                                        ; $47e2: $fe $d0
    and e                                         ; $47e4: $a3
    xor a                                         ; $47e5: $af
    xor a                                         ; $47e6: $af

Jump_071_47e7:
    ld b, l                                       ; $47e7: $45
    ld d, d                                       ; $47e8: $52
    ld d, d                                       ; $47e9: $52
    ld a, c                                       ; $47ea: $79
    ld a, d                                       ; $47eb: $7a
    ld a, a                                       ; $47ec: $7f
    ld a, e                                       ; $47ed: $7b
    ld a, h                                       ; $47ee: $7c
    ld a, l                                       ; $47ef: $7d
    ld b, a                                       ; $47f0: $47
    ld h, c                                       ; $47f1: $61
    ld h, c                                       ; $47f2: $61
    ld d, l                                       ; $47f3: $55
    cp $83                                        ; $47f4: $fe $83
    ldh [$bc], a                                  ; $47f6: $e0 $bc
    add h                                         ; $47f8: $84
    cp d                                          ; $47f9: $ba
    ld c, b                                       ; $47fa: $48
    sub e                                         ; $47fb: $93
    add h                                         ; $47fc: $84
    xor b                                         ; $47fd: $a8
    ld c, c                                       ; $47fe: $49
    ld bc, $79e8                                  ; $47ff: $01 $e8 $79
    ld a, [hl]                                    ; $4802: $7e
    ld b, l                                       ; $4803: $45
    rra                                           ; $4804: $1f
    ld b, c                                       ; $4805: $41
    ld b, l                                       ; $4806: $45
    ld a, a                                       ; $4807: $7f
    ld a, l                                       ; $4808: $7d
    ld c, e                                       ; $4809: $4b
    ld b, c                                       ; $480a: $41
    ldh [$7e], a                                  ; $480b: $e0 $7e
    and l                                         ; $480d: $a5
    ld e, h                                       ; $480e: $5c
    and e                                         ; $480f: $a3
    add sp, -$46                                  ; $4810: $e8 $ba
    ld b, [hl]                                    ; $4812: $46
    rst $30                                       ; $4813: $f7
    ld h, h                                       ; $4814: $64
    xor b                                         ; $4815: $a8
    ld c, b                                       ; $4816: $48
    ld [$c842], a                                 ; $4817: $ea $42 $c8
    add b                                         ; $481a: $80
    cp l                                          ; $481b: $bd
    inc l                                         ; $481c: $2c
    inc bc                                        ; $481d: $03
    ld h, $2a                                     ; $481e: $26 $2a
    cp a                                          ; $4820: $bf
    ldh [$c1], a                                  ; $4821: $e0 $c1
    ld [c], a                                     ; $4823: $e2
    ld a, [hl]                                    ; $4824: $7e
    and h                                         ; $4825: $a4
    sbc d                                         ; $4826: $9a
    ld h, c                                       ; $4827: $61
    cp d                                          ; $4828: $ba
    ld c, [hl]                                    ; $4829: $4e
    xor b                                         ; $482a: $a8
    ld c, c                                       ; $482b: $49
    rst $30                                       ; $482c: $f7
    db $eb                                        ; $482d: $eb
    and b                                         ; $482e: $a0
    sbc [hl]                                      ; $482f: $9e
    adc d                                         ; $4830: $8a
    and h                                         ; $4831: $a4
    ld a, c                                       ; $4832: $79
    adc l                                         ; $4833: $8d
    dec l                                         ; $4834: $2d
    jr nz, jr_071_4856                            ; $4835: $20 $1f

    jr nz, jr_071_4863                            ; $4837: $20 $2a

    ld d, b                                       ; $4839: $50
    ld b, l                                       ; $483a: $45
    add c                                         ; $483b: $81
    ld a, b                                       ; $483c: $78
    and e                                         ; $483d: $a3
    cp [hl]                                       ; $483e: $be
    and e                                         ; $483f: $a3
    cpl                                           ; $4840: $2f
    jr nz, jr_071_47d3                            ; $4841: $20 $90

    db $e3                                        ; $4843: $e3

jr_071_4844:
    dec bc                                        ; $4844: $0b
    ld [hl], l                                    ; $4845: $75
    and c                                         ; $4846: $a1
    pop de                                        ; $4847: $d1
    ld [$2042], sp                                ; $4848: $08 $42 $20
    sbc [hl]                                      ; $484b: $9e
    adc d                                         ; $484c: $8a
    and e                                         ; $484d: $a3
    ld b, d                                       ; $484e: $42
    ldh [$3a], a                                  ; $484f: $e0 $3a
    rra                                           ; $4851: $1f
    ld hl, $472a                                  ; $4852: $21 $2a $47
    ld d, h                                       ; $4855: $54

jr_071_4856:
    ld b, h                                       ; $4856: $44
    ret nz                                        ; $4857: $c0

    ldh [$78], a                                  ; $4858: $e0 $78
    and c                                         ; $485a: $a1
    cp [hl]                                       ; $485b: $be
    and e                                         ; $485c: $a3
    ldh [$2f], a                                  ; $485d: $e0 $2f
    jr nz, jr_071_4844                            ; $485f: $20 $e3

    dec bc                                        ; $4861: $0b
    sub [hl]                                      ; $4862: $96

jr_071_4863:
    add c                                         ; $4863: $81
    pop de                                        ; $4864: $d1
    dec bc                                        ; $4865: $0b
    ld a, [hl]                                    ; $4866: $7e
    call nz, $4680                                ; $4867: $c4 $80 $46
    add hl, sp                                    ; $486a: $39
    ld a, a                                       ; $486b: $7f
    dec [hl]                                      ; $486c: $35
    ld a, $49                                     ; $486d: $3e $49
    ld d, h                                       ; $486f: $54
    ld b, l                                       ; $4870: $45
    add e                                         ; $4871: $83
    add h                                         ; $4872: $84
    ld a, [hl]                                    ; $4873: $7e
    add l                                         ; $4874: $85
    inc bc                                        ; $4875: $03
    db $e4                                        ; $4876: $e4
    push hl                                       ; $4877: $e5
    cp b                                          ; $4878: $b8
    ld b, e                                       ; $4879: $43
    db $e3                                        ; $487a: $e3
    ld a, [bc]                                    ; $487b: $0a
    ld [hl], l                                    ; $487c: $75
    and d                                         ; $487d: $a2
    pop de                                        ; $487e: $d1
    rlca                                          ; $487f: $07
    rst $20                                       ; $4880: $e7
    add b                                         ; $4881: $80
    ld a, $c4                                     ; $4882: $3e $c4
    rst $38                                       ; $4884: $ff
    add d                                         ; $4885: $82
    add e                                         ; $4886: $83
    ld a, [hl-]                                   ; $4887: $3a
    dec [hl]                                      ; $4888: $35
    ld a, [hl-]                                   ; $4889: $3a
    ld b, e                                       ; $488a: $43
    ld b, l                                       ; $488b: $45
    add e                                         ; $488c: $83
    inc bc                                        ; $488d: $03
    add [hl]                                      ; $488e: $86
    add l                                         ; $488f: $85
    ld a, $83                                     ; $4890: $3e $83
    cp [hl]                                       ; $4892: $be
    ld h, d                                       ; $4893: $62
    xor b                                         ; $4894: $a8
    ld [hl+], a                                   ; $4895: $22
    cp d                                          ; $4896: $ba
    ld c, e                                       ; $4897: $4b
    pop de                                        ; $4898: $d1
    dec bc                                        ; $4899: $0b
    ld [$fe80], sp                                ; $489a: $08 $80 $fe
    ld a, $c4                                     ; $489d: $3e $c4
    add l                                         ; $489f: $85
    add a                                         ; $48a0: $87
    ld [hl], c                                    ; $48a1: $71
    ld [hl], c                                    ; $48a2: $71
    ld [hl], c                                    ; $48a3: $71
    adc b                                         ; $48a4: $88
    adc b                                         ; $48a5: $88
    ld bc, $c187                                  ; $48a6: $01 $87 $c1
    db $e4                                        ; $48a9: $e4
    ld a, $60                                     ; $48aa: $3e $60
    ld a, b                                       ; $48ac: $78
    nop                                           ; $48ad: $00
    ld [$7725], a                                 ; $48ae: $ea $25 $77
    xor c                                         ; $48b1: $a9

jr_071_48b2:
    ld l, h                                       ; $48b2: $6c
    inc bc                                        ; $48b3: $03
    pop de                                        ; $48b4: $d1
    inc b                                         ; $48b5: $04
    ld a, h                                       ; $48b6: $7c
    ld [$be80], sp                                ; $48b7: $08 $80 $be
    and h                                         ; $48ba: $a4
    ld b, [hl]                                    ; $48bb: $46
    ld b, l                                       ; $48bc: $45
    ld a, [hl-]                                   ; $48bd: $3a
    dec [hl]                                      ; $48be: $35
    ld [hl], $85                                  ; $48bf: $36 $85
    jp $ff80                                      ; $48c1: $c3 $80 $ff


    ld b, e                                       ; $48c4: $43
    cpl                                           ; $48c5: $2f
    jr nz, jr_071_48b2                            ; $48c6: $20 $ea

    dec h                                         ; $48c8: $25
    inc bc                                        ; $48c9: $03
    ld a, [hl+]                                   ; $48ca: $2a
    adc $0c                                       ; $48cb: $ce $0c
    adc [hl]                                      ; $48cd: $8e
    ld h, e                                       ; $48ce: $63
    ld b, $81                                     ; $48cf: $06 $81
    add hl, sp                                    ; $48d1: $39
    nop                                           ; $48d2: $00
    pop bc                                        ; $48d3: $c1
    jp hl                                         ; $48d4: $e9


    ld c, $82                                     ; $48d5: $0e $82
    ld [$8025], a                                 ; $48d7: $ea $25 $80
    rlca                                          ; $48da: $07
    adc $09                                       ; $48db: $ce $09
    add c                                         ; $48dd: $81
    add d                                         ; $48de: $82
    ld c, a                                       ; $48df: $4f

Jump_071_48e0:
    ld h, h                                       ; $48e0: $64
    ld b, $81                                     ; $48e1: $06 $81
    ld bc, $8245                                  ; $48e3: $01 $45 $82
    jp hl                                         ; $48e6: $e9


    cpl                                           ; $48e7: $2f
    ld h, d                                       ; $48e8: $62
    ld [$7625], a                                 ; $48e9: $ea $25 $76
    ld b, [hl]                                    ; $48ec: $46
    adc $0c                                       ; $48ed: $ce $0c
    ld a, [hl+]                                   ; $48ef: $2a
    jr nz, jr_071_4934                            ; $48f0: $20 $42

    push hl                                       ; $48f2: $e5
    ld c, $ff                                     ; $48f3: $0e $ff
    and c                                         ; $48f5: $a1
    ld a, d                                       ; $48f6: $7a

jr_071_48f7:
    ld a, h                                       ; $48f7: $7c
    ld a, l                                       ; $48f8: $7d
    ld b, h                                       ; $48f9: $44
    ld b, c                                       ; $48fa: $41
    ret nz                                        ; $48fb: $c0

    ld [hl+], a                                   ; $48fc: $22
    ld c, $82                                     ; $48fd: $0e $82
    ld [$c426], a                                 ; $48ff: $ea $26 $c4
    ld c, c                                       ; $4902: $49
    db $e4                                        ; $4903: $e4
    dec l                                         ; $4904: $2d
    ld l, h                                       ; $4905: $6c
    ld [$202a], a                                 ; $4906: $ea $2a $20
    ret nz                                        ; $4909: $c0

    rst $20                                       ; $490a: $e7
    ld b, c                                       ; $490b: $41
    and b                                         ; $490c: $a0
    ld b, [hl]                                    ; $490d: $46
    ld a, a                                       ; $490e: $7f
    ld bc, $c67d                                  ; $490f: $01 $7d $c6
    add e                                         ; $4912: $83
    ld h, l                                       ; $4913: $65
    ld b, l                                       ; $4914: $45
    ld [$7625], a                                 ; $4915: $ea $25 $76
    ld b, h                                       ; $4918: $44
    adc $0a                                       ; $4919: $ce $0a
    db $fc                                        ; $491b: $fc
    jp nz, $6784                                  ; $491c: $c2 $84 $67

    dec bc                                        ; $491f: $0b
    ld a, c                                       ; $4920: $79
    ld a, [hl]                                    ; $4921: $7e
    nop                                           ; $4922: $00
    pop hl                                        ; $4923: $e1
    add c                                         ; $4924: $81
    ld b, $40                                     ; $4925: $06 $40
    and b                                         ; $4927: $a0
    ld c, b                                       ; $4928: $48
    or l                                          ; $4929: $b5
    inc b                                         ; $492a: $04
    halt                                          ; $492b: $76
    ld b, l                                       ; $492c: $45
    ld hl, sp-$32                                 ; $492d: $f8 $ce
    add hl, bc                                    ; $492f: $09
    inc h                                         ; $4930: $24
    and d                                         ; $4931: $a2
    ld b, l                                       ; $4932: $45
    ld l, b                                       ; $4933: $68

jr_071_4934:
    add b                                         ; $4934: $80
    ld b, h                                       ; $4935: $44
    ld a, [hl-]                                   ; $4936: $3a
    dec [hl]                                      ; $4937: $35
    ld b, b                                       ; $4938: $40
    ld [bc], a                                    ; $4939: $02
    ret nz                                        ; $493a: $c0

    ldh [$9e], a                                  ; $493b: $e0 $9e
    and b                                         ; $493d: $a0
    ld c, c                                       ; $493e: $49
    ld hl, sp+$04                                 ; $493f: $f8 $04
    ld c, c                                       ; $4941: $49
    push hl                                       ; $4942: $e5
    adc $09                                       ; $4943: $ce $09
    inc h                                         ; $4945: $24
    and d                                         ; $4946: $a2
    ld b, d                                       ; $4947: $42
    add h                                         ; $4948: $84
    ld c, $c0                                     ; $4949: $0e $c0
    and e                                         ; $494b: $a3
    ld [hl], $38                                  ; $494c: $36 $38
    ld b, h                                       ; $494e: $44
    add e                                         ; $494f: $83
    and b                                         ; $4950: $a0
    ld b, $41                                     ; $4951: $06 $41
    and b                                         ; $4953: $a0
    ld b, [hl]                                    ; $4954: $46
    inc a                                         ; $4955: $3c
    add h                                         ; $4956: $84
    ldh a, [rPCM12]                               ; $4957: $f0 $76
    ld b, l                                       ; $4959: $45
    adc $09                                       ; $495a: $ce $09
    inc h                                         ; $495c: $24
    and d                                         ; $495d: $a2
    jp nz, $85c8                                  ; $495e: $c2 $c8 $85

    add [hl]                                      ; $4961: $86
    add e                                         ; $4962: $83
    ld b, e                                       ; $4963: $43
    inc c                                         ; $4964: $0c
    add e                                         ; $4965: $83
    and c                                         ; $4966: $a1
    add $20                                       ; $4967: $c6 $20
    sbc $df                                       ; $4969: $de $df
    and b                                         ; $496b: $a0
    ld c, d                                       ; $496c: $4a
    halt                                          ; $496d: $76
    ld b, a                                       ; $496e: $47
    ld [hl], b                                    ; $496f: $70
    add hl, bc                                    ; $4970: $09
    inc h                                         ; $4971: $24
    and d                                         ; $4972: $a2
    jr jr_071_48f7                                ; $4973: $18 $82

    ld h, e                                       ; $4975: $63
    adc [hl]                                      ; $4976: $8e
    ret nz                                        ; $4977: $c0

    adc e                                         ; $4978: $8b
    nop                                           ; $4979: $00
    add l                                         ; $497a: $85
    add a                                         ; $497b: $87
    add e                                         ; $497c: $83
    and d                                         ; $497d: $a2
    ld b, h                                       ; $497e: $44
    jp nz, Jump_071_44a0                          ; $497f: $c2 $a0 $44

    ret nz                                        ; $4982: $c0

    ld e, c                                       ; $4983: $59
    ld h, l                                       ; $4984: $65
    ld c, c                                       ; $4985: $49
    push hl                                       ; $4986: $e5
    ld b, h                                       ; $4987: $44
    ld a, [hl+]                                   ; $4988: $2a
    ld [de], a                                    ; $4989: $12
    ld [hl+], a                                   ; $498a: $22
    ld d, l                                       ; $498b: $55
    and h                                         ; $498c: $a4
    inc a                                         ; $498d: $3c
    ld c, c                                       ; $498e: $49
    sbc h                                         ; $498f: $9c
    sbc a                                         ; $4990: $9f
    nop                                           ; $4991: $00
    ld [hl], e                                    ; $4992: $73
    jr nz, @-$38                                  ; $4993: $20 $c6

    add c                                         ; $4995: $81
    ld e, c                                       ; $4996: $59
    ld h, a                                       ; $4997: $67
    ld c, c                                       ; $4998: $49
    push hl                                       ; $4999: $e5
    pop af                                        ; $499a: $f1
    ld b, l                                       ; $499b: $45
    and h                                         ; $499c: $a4
    call nz, Call_071_6402                        ; $499d: $c4 $02 $64
    sub [hl]                                      ; $49a0: $96
    add c                                         ; $49a1: $81
    ld e, $38                                     ; $49a2: $1e $38
    ld h, b                                       ; $49a4: $60
    ld b, l                                       ; $49a5: $45
    ld b, e                                       ; $49a6: $43
    ld b, c                                       ; $49a7: $41
    ld b, e                                       ; $49a8: $43
    db $fd                                        ; $49a9: $fd
    ldh [rDIV], a                                 ; $49aa: $e0 $04
    ld h, h                                       ; $49ac: $64
    ld b, a                                       ; $49ad: $47
    ld l, e                                       ; $49ae: $6b
    ldh a, [rPCM12]                               ; $49af: $f0 $76
    ld c, c                                       ; $49b1: $49
    and h                                         ; $49b2: $a4
    add $84                                       ; $49b3: $c6 $84
    add l                                         ; $49b5: $85
    ld d, h                                       ; $49b6: $54
    ld [bc], a                                    ; $49b7: $02
    sbc [hl]                                      ; $49b8: $9e
    ld b, l                                       ; $49b9: $45
    ld [hl], $3b                                  ; $49ba: $36 $3b
    inc bc                                        ; $49bc: $03
    dec [hl]                                      ; $49bd: $35
    dec sp                                        ; $49be: $3b
    db $fd                                        ; $49bf: $fd
    ldh [$fc], a                                  ; $49c0: $e0 $fc
    add b                                         ; $49c2: $80
    db $fd                                        ; $49c3: $fd
    and h                                         ; $49c4: $a4
    ld b, a                                       ; $49c5: $47
    ld l, b                                       ; $49c6: $68
    dec sp                                        ; $49c7: $3b
    ld c, c                                       ; $49c8: $49
    and h                                         ; $49c9: $a4
    add $78                                       ; $49ca: $c6 $78
    adc h                                         ; $49cc: $8c
    nop                                           ; $49cd: $00
    add b                                         ; $49ce: $80
    db $e4                                        ; $49cf: $e4
    cp b                                          ; $49d0: $b8
    and c                                         ; $49d1: $a1
    ld b, h                                       ; $49d2: $44
    inc a                                         ; $49d3: $3c
    and h                                         ; $49d4: $a4
    ld h, h                                       ; $49d5: $64
    rst $38                                       ; $49d6: $ff
    ldh [$1f], a                                  ; $49d7: $e0 $1f
    and l                                         ; $49d9: $a5
    inc a                                         ; $49da: $3c
    ld b, h                                       ; $49db: $44
    xor [hl]                                      ; $49dc: $ae
    xor [hl]                                      ; $49dd: $ae
    db $fc                                        ; $49de: $fc
    and b                                         ; $49df: $a0
    ld e, c                                       ; $49e0: $59
    ld l, h                                       ; $49e1: $6c
    ld a, [$e228]                                 ; $49e2: $fa $28 $e2
    ld b, h                                       ; $49e5: $44
    dec h                                         ; $49e6: $25
    db $eb                                        ; $49e7: $eb
    adc h                                         ; $49e8: $8c
    nop                                           ; $49e9: $00
    add d                                         ; $49ea: $82
    ld b, d                                       ; $49eb: $42
    ld c, [hl]                                    ; $49ec: $4e
    jp nz, Jump_071_429e                          ; $49ed: $c2 $9e $42

    dec [hl]                                      ; $49f0: $35
    rst $38                                       ; $49f1: $ff
    ld l, c                                       ; $49f2: $69
    and e                                         ; $49f3: $a3
    dec [hl]                                      ; $49f4: $35
    dec [hl]                                      ; $49f5: $35
    and e                                         ; $49f6: $a3
    ld l, d                                       ; $49f7: $6a
    dec [hl]                                      ; $49f8: $35
    ld b, d                                       ; $49f9: $42
    rlca                                          ; $49fa: $07
    xor a                                         ; $49fb: $af
    xor a                                         ; $49fc: $af
    sbc [hl]                                      ; $49fd: $9e
    ld l, b                                       ; $49fe: $68
    ld hl, $6947                                  ; $49ff: $21 $47 $69
    ret nz                                        ; $4a02: $c0

    inc b                                         ; $4a03: $04
    inc [hl]                                      ; $4a04: $34
    add e                                         ; $4a05: $83
    and h                                         ; $4a06: $a4
    jp $6220                                      ; $4a07: $c3 $20 $62


    ld b, c                                       ; $4a0a: $41
    add h                                         ; $4a0b: $84
    add e                                         ; $4a0c: $83
    ld d, $60                                     ; $4a0d: $16 $60
    ld a, [$c040]                                 ; $4a0f: $fa $40 $c0
    ldh [$35], a                                  ; $4a12: $e0 $35
    rst $38                                       ; $4a14: $ff
    ldh [$c0], a                                  ; $4a15: $e0 $c0
    ldh [rP1], a                                  ; $4a17: $e0 $00
    cp [hl]                                       ; $4a19: $be
    ret nz                                        ; $4a1a: $c0

    push bc                                       ; $4a1b: $c5
    ld h, d                                       ; $4a1c: $62
    ld b, a                                       ; $4a1d: $47
    ld l, b                                       ; $4a1e: $68
    ret nz                                        ; $4a1f: $c0

    inc b                                         ; $4a20: $04
    jp nz, $c765                                  ; $4a21: $c2 $65 $c7

    ld b, $c6                                     ; $4a24: $06 $c6
    ld b, d                                       ; $4a26: $42
    adc [hl]                                      ; $4a27: $8e
    and d                                         ; $4a28: $a2
    ld a, d                                       ; $4a29: $7a
    ld b, b                                       ; $4a2a: $40
    ldh [rOCPD], a                                ; $4a2b: $e0 $6b
    cp a                                          ; $4a2d: $bf
    ld h, b                                       ; $4a2e: $60
    ld [hl], c                                    ; $4a2f: $71
    ld l, l                                       ; $4a30: $6d
    inc a                                         ; $4a31: $3c
    ld b, h                                       ; $4a32: $44
    push bc                                       ; $4a33: $c5
    ld h, e                                       ; $4a34: $63
    jr nc, @+$49                                  ; $4a35: $30 $47

    ld l, d                                       ; $4a37: $6a
    ld [hl], e                                    ; $4a38: $73
    jr z, @+$09                                   ; $4a39: $28 $07

    add l                                         ; $4a3b: $85
    push bc                                       ; $4a3c: $c5
    nop                                           ; $4a3d: $00
    sbc [hl]                                      ; $4a3e: $9e
    xor [hl]                                      ; $4a3f: $ae
    ld d, b                                       ; $4a40: $50
    ld bc, $83cf                                  ; $4a41: $01 $cf $83
    nop                                           ; $4a44: $00
    ret nz                                        ; $4a45: $c0

    rst $00                                       ; $4a46: $c7
    rst $38                                       ; $4a47: $ff
    and b                                         ; $4a48: $a0
    add a                                         ; $4a49: $87
    inc hl                                        ; $4a4a: $23
    ld b, a                                       ; $4a4b: $47
    ld [hl], b                                    ; $4a4c: $70
    jp z, Jump_071_6962                           ; $4a4d: $ca $62 $69

    inc hl                                        ; $4a50: $23
    ld b, h                                       ; $4a51: $44
    add c                                         ; $4a52: $81
    pop bc                                        ; $4a53: $c1
    db $e3                                        ; $4a54: $e3
    ld [bc], a                                    ; $4a55: $02
    inc hl                                        ; $4a56: $23
    ldh [$ea], a                                  ; $4a57: $e0 $ea
    ld b, b                                       ; $4a59: $40
    rst $00                                       ; $4a5a: $c7
    add a                                         ; $4a5b: $87
    inc h                                         ; $4a5c: $24
    ld e, $24                                     ; $4a5d: $1e $24
    cp [hl]                                       ; $4a5f: $be
    dec c                                         ; $4a60: $0d
    adc c                                         ; $4a61: $89
    ld h, b                                       ; $4a62: $60
    ld l, c                                       ; $4a63: $69
    inc h                                         ; $4a64: $24
    ld [bc], a                                    ; $4a65: $02
    ld b, h                                       ; $4a66: $44
    add l                                         ; $4a67: $85
    sbc [hl]                                      ; $4a68: $9e
    inc hl                                        ; $4a69: $23
    db $e3                                        ; $4a6a: $e3
    ld a, c                                       ; $4a6b: $79
    ld h, e                                       ; $4a6c: $63
    inc b                                         ; $4a6d: $04
    add e                                         ; $4a6e: $83
    ld e, d                                       ; $4a6f: $5a
    ld l, e                                       ; $4a70: $6b
    db $fc                                        ; $4a71: $fc
    ld b, l                                       ; $4a72: $45
    ei                                            ; $4a73: $fb
    rst $28                                       ; $4a74: $ef
    jr nc, @+$04                                  ; $4a75: $30 $02

    call nz, $0396                                ; $4a77: $c4 $96 $03
    jr c, jr_071_4add                             ; $4a7a: $38 $61

    jp z, $de01                                   ; $4a7c: $ca $01 $de

    rst $18                                       ; $4a7f: $df
    adc b                                         ; $4a80: $88
    jr nz, jr_071_4add                            ; $4a81: $20 $5a

    ld h, a                                       ; $4a83: $67
    db $10                                        ; $4a84: $10
    sub e                                         ; $4a85: $93
    xor b                                         ; $4a86: $a8
    ld [hl], d                                    ; $4a87: $72
    inc c                                         ; $4a88: $0c
    ld c, h                                       ; $4a89: $4c
    pop hl                                        ; $4a8a: $e1
    jr jr_071_4ab6                                ; $4a8b: $18 $29

    sbc a                                         ; $4a8d: $9f
    add h                                         ; $4a8e: $84
    db $e3                                        ; $4a8f: $e3
    ld [$5aa0], a                                 ; $4a90: $ea $a0 $5a
    ld l, b                                       ; $4a93: $68
    jr nz, jr_071_4acd                            ; $4a94: $20 $37

    add a                                         ; $4a96: $87
    dec b                                         ; $4a97: $05
    and [hl]                                      ; $4a98: $a6
    add h                                         ; $4a99: $84
    rlca                                          ; $4a9a: $07
    ld b, d                                       ; $4a9b: $42
    and h                                         ; $4a9c: $a4
    ld h, b                                       ; $4a9d: $60
    add c                                         ; $4a9e: $81
    db $d3                                        ; $4a9f: $d3
    db $f4                                        ; $4aa0: $f4
    ld b, c                                       ; $4aa1: $41
    add $62                                       ; $4aa2: $c6 $62
    nop                                           ; $4aa4: $00
    ld l, [hl]                                    ; $4aa5: $6e
    ld b, b                                       ; $4aa6: $40
    ld e, d                                       ; $4aa7: $5a
    ld l, b                                       ; $4aa8: $68
    scf                                           ; $4aa9: $37
    add [hl]                                      ; $4aaa: $86
    cp a                                          ; $4aab: $bf
    ld b, [hl]                                    ; $4aac: $46
    add h                                         ; $4aad: $84
    ld [$86c2], sp                                ; $4aae: $08 $c2 $86
    jr jr_071_4ad4                                ; $4ab1: $18 $21

    jp nc, Jump_000_2021                          ; $4ab3: $d2 $21 $20

jr_071_4ab6:
    ld c, [hl]                                    ; $4ab6: $4e
    ld b, $5a                                     ; $4ab7: $06 $5a
    ld h, [hl]                                    ; $4ab9: $66
    scf                                           ; $4aba: $37
    adc h                                         ; $4abb: $8c
    dec hl                                        ; $4abc: $2b
    xor e                                         ; $4abd: $ab
    add [hl]                                      ; $4abe: $86
    ld [hl+], a                                   ; $4abf: $22
    xor [hl]                                      ; $4ac0: $ae
    ld c, a                                       ; $4ac1: $4f
    add b                                         ; $4ac2: $80
    jr jr_071_4ae6                                ; $4ac3: $18 $21

    add b                                         ; $4ac5: $80
    dec c                                         ; $4ac6: $0d
    jp nz, Jump_000_23d0                          ; $4ac7: $c2 $d0 $23

    ld e, d                                       ; $4aca: $5a
    ld l, b                                       ; $4acb: $68

Jump_071_4acc:
    scf                                           ; $4acc: $37

jr_071_4acd:
    add h                                         ; $4acd: $84
    ld [bc], a                                    ; $4ace: $02
    xor c                                         ; $4acf: $a9
    add h                                         ; $4ad0: $84
    rlca                                          ; $4ad1: $07
    dec b                                         ; $4ad2: $05
    ld b, d                                       ; $4ad3: $42

jr_071_4ad4:
    xor a                                         ; $4ad4: $af
    inc bc                                        ; $4ad5: $03
    xor [hl]                                      ; $4ad6: $ae
    sbc [hl]                                      ; $4ad7: $9e
    xor [hl]                                      ; $4ad8: $ae
    and [hl]                                      ; $4ad9: $a6
    ret nc                                        ; $4ada: $d0

    inc h                                         ; $4adb: $24
    ld e, d                                       ; $4adc: $5a

jr_071_4add:
    ld l, b                                       ; $4add: $68
    sub e                                         ; $4ade: $93
    and a                                         ; $4adf: $a7

Call_071_4ae0:
    ld [bc], a                                    ; $4ae0: $02
    and l                                         ; $4ae1: $a5
    ld [hl], d                                    ; $4ae2: $72
    rlca                                          ; $4ae3: $07
    inc bc                                        ; $4ae4: $03
    db $e4                                        ; $4ae5: $e4

jr_071_4ae6:
    push hl                                       ; $4ae6: $e5
    cp a                                          ; $4ae7: $bf
    db $e3                                        ; $4ae8: $e3
    ld c, [hl]                                    ; $4ae9: $4e
    ld h, d                                       ; $4aea: $62
    and l                                         ; $4aeb: $a5
    add l                                         ; $4aec: $85
    ret nc                                        ; $4aed: $d0

    ld hl, $675a                                  ; $4aee: $21 $5a $67
    ld hl, sp-$7e                                 ; $4af1: $f8 $82
    nop                                           ; $4af3: $00
    add d                                         ; $4af4: $82
    adc d                                         ; $4af5: $8a
    ld [hl], d                                    ; $4af6: $72
    ld [$4502], sp                                ; $4af7: $08 $02 $45
    ret nz                                        ; $4afa: $c0

    rst $20                                       ; $4afb: $e7
    ret nc                                        ; $4afc: $d0

    ld h, $11                                     ; $4afd: $26 $11
    add l                                         ; $4aff: $85
    cp l                                          ; $4b00: $bd
    inc bc                                        ; $4b01: $03
    add c                                         ; $4b02: $81
    adc e                                         ; $4b03: $8b
    nop                                           ; $4b04: $00
    ld [hl], d                                    ; $4b05: $72
    ld b, $02                                     ; $4b06: $06 $02
    ld b, l                                       ; $4b08: $45
    ld c, [hl]                                    ; $4b09: $4e
    ld b, e                                       ; $4b0a: $43

Call_071_4b0b:
    and l                                         ; $4b0b: $a5
    add h                                         ; $4b0c: $84
    ret nc                                        ; $4b0d: $d0

    inc hl                                        ; $4b0e: $23
    ld [hl+], a                                   ; $4b0f: $22
    dec h                                         ; $4b10: $25
    ld hl, sp-$7d                                 ; $4b11: $f8 $83
    ld a, a                                       ; $4b13: $7f
    db $eb                                        ; $4b14: $eb
    nop                                           ; $4b15: $00
    ld [hl], d                                    ; $4b16: $72
    add hl, bc                                    ; $4b17: $09
    ld b, b                                       ; $4b18: $40
    add h                                         ; $4b19: $84
    adc b                                         ; $4b1a: $88
    call nz, Call_000_27d0                        ; $4b1b: $c4 $d0 $27
    cp $fb                                        ; $4b1e: $fe $fb
    ld [hl], e                                    ; $4b20: $73
    ld h, a                                       ; $4b21: $67
    ld b, b                                       ; $4b22: $40
    db $ec                                        ; $4b23: $ec
    ret nc                                        ; $4b24: $d0

    ret nc                                        ; $4b25: $d0

    nop                                           ; $4b26: $00
    cp a                                          ; $4b27: $bf
    ld [$0000], a                                 ; $4b28: $ea $00 $00
    nop                                           ; $4b2b: $00
    pop bc                                        ; $4b2c: $c1
    nop                                           ; $4b2d: $00
    rst $38                                       ; $4b2e: $ff
    rst $38                                       ; $4b2f: $ff
    rst $38                                       ; $4b30: $ff
    rst $38                                       ; $4b31: $ff
    rst $38                                       ; $4b32: $ff
    rst $38                                       ; $4b33: $ff
    rst $38                                       ; $4b34: $ff
    rst $38                                       ; $4b35: $ff
    rst $38                                       ; $4b36: $ff
    rst $38                                       ; $4b37: $ff
    nop                                           ; $4b38: $00
    nop                                           ; $4b39: $00
    dec c                                         ; $4b3a: $0d
    add b                                         ; $4b3b: $80
    cp $e0                                        ; $4b3c: $fe $e0
    nop                                           ; $4b3e: $00
    ld b, b                                       ; $4b3f: $40
    ret c                                         ; $4b40: $d8

    push hl                                       ; $4b41: $e5
    rst $30                                       ; $4b42: $f7
    and $eb                                       ; $4b43: $e6 $eb
    ldh [rIE], a                                  ; $4b45: $e0 $ff
    rst $38                                       ; $4b47: $ff
    nop                                           ; $4b48: $00
    rst $38                                       ; $4b49: $ff
    db $f4                                        ; $4b4a: $f4
    nop                                           ; $4b4b: $00
    nop                                           ; $4b4c: $00
    nop                                           ; $4b4d: $00
    ld [bc], a                                    ; $4b4e: $02
    nop                                           ; $4b4f: $00
    dec h                                         ; $4b50: $25
    ld c, $02                                     ; $4b51: $0e $02
    ld bc, $0f24                                  ; $4b53: $01 $24 $0f
    ld [bc], a                                    ; $4b56: $02
    ld [bc], a                                    ; $4b57: $02
    ld h, $0f                                     ; $4b58: $26 $0f
    ld [bc], a                                    ; $4b5a: $02
    inc bc                                        ; $4b5b: $03
    jr z, jr_071_4b6d                             ; $4b5c: $28 $0f

    ld [bc], a                                    ; $4b5e: $02
    inc b                                         ; $4b5f: $04
    jr nz, jr_071_4b75                            ; $4b60: $20 $13

    ld [bc], a                                    ; $4b62: $02
    dec b                                         ; $4b63: $05
    ld hl, $0213                                  ; $4b64: $21 $13 $02
    ld b, $1a                                     ; $4b67: $06 $1a
    add hl, de                                    ; $4b69: $19

Jump_071_4b6a:
    ld [bc], a                                    ; $4b6a: $02
    rlca                                          ; $4b6b: $07
    dec de                                        ; $4b6c: $1b

jr_071_4b6d:
    add hl, de                                    ; $4b6d: $19
    ld [bc], a                                    ; $4b6e: $02
    ld [$1d16], sp                                ; $4b6f: $08 $16 $1d
    ld [bc], a                                    ; $4b72: $02
    add hl, bc                                    ; $4b73: $09
    rla                                           ; $4b74: $17

jr_071_4b75:
    dec e                                         ; $4b75: $1d
    ld [bc], a                                    ; $4b76: $02
    ld a, [bc]                                    ; $4b77: $0a
    jr z, jr_071_4b97                             ; $4b78: $28 $1d

    ld [bc], a                                    ; $4b7a: $02
    dec bc                                        ; $4b7b: $0b
    add hl, hl                                    ; $4b7c: $29
    dec e                                         ; $4b7d: $1d
    ld [bc], a                                    ; $4b7e: $02
    inc c                                         ; $4b7f: $0c
    ld a, [de]                                    ; $4b80: $1a
    inc hl                                        ; $4b81: $23
    ld [bc], a                                    ; $4b82: $02
    dec c                                         ; $4b83: $0d
    dec de                                        ; $4b84: $1b
    inc hl                                        ; $4b85: $23
    ld [bc], a                                    ; $4b86: $02
    ld c, $26                                     ; $4b87: $0e $26
    cpl                                           ; $4b89: $2f
    ld [bc], a                                    ; $4b8a: $02
    rrca                                          ; $4b8b: $0f
    daa                                           ; $4b8c: $27
    cpl                                           ; $4b8d: $2f
    ld [bc], a                                    ; $4b8e: $02
    db $10                                        ; $4b8f: $10
    ld de, $0232                                  ; $4b90: $11 $32 $02
    ld de, $3310                                  ; $4b93: $11 $10 $33
    ld [bc], a                                    ; $4b96: $02

jr_071_4b97:
    ld [de], a                                    ; $4b97: $12
    inc d                                         ; $4b98: $14
    ld a, [hl-]                                   ; $4b99: $3a
    ld [bc], a                                    ; $4b9a: $02
    inc de                                        ; $4b9b: $13
    dec d                                         ; $4b9c: $15
    dec sp                                        ; $4b9d: $3b
    rst $38                                       ; $4b9e: $ff
    rst $38                                       ; $4b9f: $ff
    rst $38                                       ; $4ba0: $ff
    xor c                                         ; $4ba1: $a9
    ld c, e                                       ; $4ba2: $4b
    ld d, [hl]                                    ; $4ba3: $56
    ld d, c                                       ; $4ba4: $51
    ld a, [hl-]                                   ; $4ba5: $3a
    ld d, [hl]                                    ; $4ba6: $56
    ld e, d                                       ; $4ba7: $5a
    ld d, [hl]                                    ; $4ba8: $56
    rst $08                                       ; $4ba9: $cf
    ld c, l                                       ; $4baa: $4d
    ld c, l                                       ; $4bab: $4d
    dec c                                         ; $4bac: $0d
    ld c, l                                       ; $4bad: $4d
    rst $38                                       ; $4bae: $ff
    ldh [$fb], a                                  ; $4baf: $e0 $fb
    ld [c], a                                     ; $4bb1: $e2
    ld c, l                                       ; $4bb2: $4d
    ld l, l                                       ; $4bb3: $6d
    rst $38                                       ; $4bb4: $ff
    ld l, l                                       ; $4bb5: $6d
    ld l, l                                       ; $4bb6: $6d
    ld l, $2e                                     ; $4bb7: $2e $2e
    ld c, $6d                                     ; $4bb9: $0e $6d
    ld l, l                                       ; $4bbb: $6d
    ld c, l                                       ; $4bbc: $4d
    ld de, $ff0d                                  ; $4bbd: $11 $0d $ff
    ldh [$e6], a                                  ; $4bc0: $e0 $e6
    ldh [$fb], a                                  ; $4bc2: $e0 $fb
    db $e3                                        ; $4bc4: $e3
    dec l                                         ; $4bc5: $2d
    pop af                                        ; $4bc6: $f1
    ldh [$dc], a                                  ; $4bc7: $e0 $dc
    rst $20                                       ; $4bc9: $e7
    ei                                            ; $4bca: $fb
    db $e3                                        ; $4bcb: $e3
    ldh a, [$e2]                                  ; $4bcc: $f0 $e2
    pop hl                                        ; $4bce: $e1
    db $ec                                        ; $4bcf: $ec
    add sp, -$36                                  ; $4bd0: $e8 $ca
    ldh [$c0], a                                  ; $4bd2: $e0 $c0
    ld [c], a                                     ; $4bd4: $e2
    ld l, $2e                                     ; $4bd5: $2e $2e
    ld l, [hl]                                    ; $4bd7: $6e
    ld l, $23                                     ; $4bd8: $2e $23
    ld c, [hl]                                    ; $4bda: $4e
    ld c, $c4                                     ; $4bdb: $0e $c4
    ldh [$bf], a                                  ; $4bdd: $e0 $bf
    ldh [$ee], a                                  ; $4bdf: $e0 $ee
    ldh [$6d], a                                  ; $4be1: $e0 $6d
    cp $e4                                        ; $4be3: $fe $e4
    ld a, [c]                                     ; $4be5: $f2
    db $e3                                        ; $4be6: $e3
    inc a                                         ; $4be7: $3c
    cp $f4                                        ; $4be8: $fe $f4
    add b                                         ; $4bea: $80
    pop hl                                        ; $4beb: $e1
    ld l, [hl]                                    ; $4bec: $6e
    ld c, $0e                                     ; $4bed: $0e $0e
    ld c, l                                       ; $4bef: $4d
    rst $08                                       ; $4bf0: $cf
    ldh [$c2], a                                  ; $4bf1: $e0 $c2
    ldh [$f0], a                                  ; $4bf3: $e0 $f0
    add b                                         ; $4bf5: $80
    ldh [$c0], a                                  ; $4bf6: $e0 $c0
    ldh [$80], a                                  ; $4bf8: $e0 $80
    ld [c], a                                     ; $4bfa: $e2
    add [hl]                                      ; $4bfb: $86
    pop hl                                        ; $4bfc: $e1
    dec l                                         ; $4bfd: $2d
    ld l, l                                       ; $4bfe: $6d
    dec c                                         ; $4bff: $0d
    dec c                                         ; $4c00: $0d
    ld [bc], a                                    ; $4c01: $02
    db $fd                                        ; $4c02: $fd
    ldh [$0d], a                                  ; $4c03: $e0 $0d
    ldh [$e0], a                                  ; $4c05: $e0 $e0
    add b                                         ; $4c07: $80
    push af                                       ; $4c08: $f5
    ld b, b                                       ; $4c09: $40
    pop hl                                        ; $4c0a: $e1
    add b                                         ; $4c0b: $80
    pop hl                                        ; $4c0c: $e1
    cp l                                          ; $4c0d: $bd
    ldh [$c2], a                                  ; $4c0e: $e0 $c2
    pop hl                                        ; $4c10: $e1
    nop                                           ; $4c11: $00
    ret nz                                        ; $4c12: $c0

    pop hl                                        ; $4c13: $e1
    cp [hl]                                       ; $4c14: $be
    ld [c], a                                     ; $4c15: $e2
    jp $bde3                                      ; $4c16: $c3 $e3 $bd


    ldh [$ba], a                                  ; $4c19: $e0 $ba
    ldh [$30], a                                  ; $4c1b: $e0 $30
    ld [c], a                                     ; $4c1d: $e2
    ld e, e                                       ; $4c1e: $5b
    ld [c], a                                     ; $4c1f: $e2
    and a                                         ; $4c20: $a7
    ld [c], a                                     ; $4c21: $e2
    nop                                           ; $4c22: $00
    dec a                                         ; $4c23: $3d
    db $e4                                        ; $4c24: $e4
    dec sp                                        ; $4c25: $3b
    push hl                                       ; $4c26: $e5
    ld b, b                                       ; $4c27: $40
    ldh [$a0], a                                  ; $4c28: $e0 $a0
    pop hl                                        ; $4c2a: $e1
    add hl, sp                                    ; $4c2b: $39
    pop hl                                        ; $4c2c: $e1
    ret nz                                        ; $4c2d: $c0

    ld [c], a                                     ; $4c2e: $e2
    ld [hl], e                                    ; $4c2f: $73
    pop hl                                        ; $4c30: $e1
    pop bc                                        ; $4c31: $c1
    push hl                                       ; $4c32: $e5
    rlca                                          ; $4c33: $07
    ld l, l                                       ; $4c34: $6d
    dec c                                         ; $4c35: $0d
    ld l, l                                       ; $4c36: $6d
    db $fd                                        ; $4c37: $fd
    ldh [$be], a                                  ; $4c38: $e0 $be
    ldh [$5b], a                                  ; $4c3a: $e0 $5b
    ld [c], a                                     ; $4c3c: $e2
    and [hl]                                      ; $4c3d: $a6
    pop hl                                        ; $4c3e: $e1
    call nz, Call_071_40e4                        ; $4c3f: $c4 $e4 $40
    ld a, [c]                                     ; $4c42: $f2
    add $80                                       ; $4c43: $c6 $80
    ld [c], a                                     ; $4c45: $e2
    call $80e2                                    ; $4c46: $cd $e2 $80
    db $e4                                        ; $4c49: $e4
    rst $08                                       ; $4c4a: $cf
    ldh [rBGP], a                                 ; $4c4b: $e0 $47
    db $e3                                        ; $4c4d: $e3
    dec c                                         ; $4c4e: $0d
    ld b, c                                       ; $4c4f: $41
    ldh [rTMA], a                                 ; $4c50: $e0 $06
    db $fd                                        ; $4c52: $fd
    db $e3                                        ; $4c53: $e3
    dec c                                         ; $4c54: $0d
    ld l, l                                       ; $4c55: $6d
    ld a, l                                       ; $4c56: $7d
    ldh [$80], a                                  ; $4c57: $e0 $80
    add sp, -$30                                  ; $4c59: $e8 $d0
    pop bc                                        ; $4c5b: $c1
    add b                                         ; $4c5c: $80
    jp hl                                         ; $4c5d: $e9


    or b                                          ; $4c5e: $b0
    jp nz, $0dc1                                  ; $4c5f: $c2 $c1 $0d

    ret nz                                        ; $4c62: $c0

    pop bc                                        ; $4c63: $c1
    jp nz, Jump_071_47e7                          ; $4c64: $c2 $e7 $47

    ldh [$84], a                                  ; $4c67: $e0 $84
    pop hl                                        ; $4c69: $e1
    ld a, [$2de0]                                 ; $4c6a: $fa $e0 $2d
    dec l                                         ; $4c6d: $2d
    dec b                                         ; $4c6e: $05
    dec l                                         ; $4c6f: $2d
    ld a, e                                       ; $4c70: $7b
    ldh [$0d], a                                  ; $4c71: $e0 $0d
    ld e, e                                       ; $4c73: $5b
    db $e4                                        ; $4c74: $e4
    and a                                         ; $4c75: $a7
    pop bc                                        ; $4c76: $c1
    ret nc                                        ; $4c77: $d0

    pop bc                                        ; $4c78: $c1
    ld a, b                                       ; $4c79: $78
    push bc                                       ; $4c7a: $c5
    ld b, h                                       ; $4c7b: $44
    db $e4                                        ; $4c7c: $e4
    ld h, d                                       ; $4c7d: $62
    ld e, e                                       ; $4c7e: $5b
    pop bc                                        ; $4c7f: $c1
    ld c, $4b                                     ; $4c80: $0e $4b
    jp $e0ce                                      ; $4c82: $c3 $ce $e0


    rst $00                                       ; $4c85: $c7
    jp Jump_071_6d2d                              ; $4c86: $c3 $2d $6d


    push bc                                       ; $4c89: $c5
    ldh [$c0], a                                  ; $4c8a: $e0 $c0

jr_071_4c8c:
    rst $38                                       ; $4c8c: $ff
    jp nz, $c1b8                                  ; $4c8d: $c2 $b8 $c1

    dec de                                        ; $4c90: $1b
    db $e4                                        ; $4c91: $e4
    or l                                          ; $4c92: $b5
    pop bc                                        ; $4c93: $c1
    ld d, b                                       ; $4c94: $50
    call nz, $c245                                ; $4c95: $c4 $45 $c2
    ld l, [hl]                                    ; $4c98: $6e
    ld c, $01                                     ; $4c99: $0e $01
    ld c, [hl]                                    ; $4c9b: $4e
    ld [bc], a                                    ; $4c9c: $02
    ld [c], a                                     ; $4c9d: $e2
    ld hl, sp-$5f                                 ; $4c9e: $f8 $a1
    db $10                                        ; $4ca0: $10
    jp $e2c0                                      ; $4ca1: $c3 $c0 $e2


    ld a, [bc]                                    ; $4ca4: $0a
    ret nz                                        ; $4ca5: $c0

    add c                                         ; $4ca6: $81
    pop bc                                        ; $4ca7: $c1
    jr c, jr_071_4c8c                             ; $4ca8: $38 $e2

    nop                                           ; $4caa: $00
    cp l                                          ; $4cab: $bd
    jp $c9d7                                      ; $4cac: $c3 $d7 $c9


    add b                                         ; $4caf: $80
    rst $20                                       ; $4cb0: $e7
    ld c, a                                       ; $4cb1: $4f
    pop bc                                        ; $4cb2: $c1
    cp [hl]                                       ; $4cb3: $be
    ldh [$bb], a                                  ; $4cb4: $e0 $bb
    jp $a3fa                                      ; $4cb6: $c3 $fa $a3


    adc d                                         ; $4cb9: $8a
    ldh [rP1], a                                  ; $4cba: $e0 $00
    add h                                         ; $4cbc: $84
    push bc                                       ; $4cbd: $c5
    ret nz                                        ; $4cbe: $c0

    db $e3                                        ; $4cbf: $e3
    cp a                                          ; $4cc0: $bf
    pop hl                                        ; $4cc1: $e1
    cp h                                          ; $4cc2: $bc
    and d                                         ; $4cc3: $a2
    sub e                                         ; $4cc4: $93
    db $e4                                        ; $4cc5: $e4
    dec [hl]                                      ; $4cc6: $35
    db $e3                                        ; $4cc7: $e3
    sbc l                                         ; $4cc8: $9d
    and d                                         ; $4cc9: $a2
    push bc                                       ; $4cca: $c5
    and c                                         ; $4ccb: $a1
    ld c, $c7                                     ; $4ccc: $0e $c7
    ld [c], a                                     ; $4cce: $e2
    ld l, $0e                                     ; $4ccf: $2e $0e
    ld l, [hl]                                    ; $4cd1: $6e
    ld [hl], l                                    ; $4cd2: $75
    ldh [$84], a                                  ; $4cd3: $e0 $84
    jp $c3be                                      ; $4cd5: $c3 $be $c3


    add e                                         ; $4cd8: $83
    ret nz                                        ; $4cd9: $c0

    nop                                           ; $4cda: $00
    ld l, a                                       ; $4cdb: $6f
    and b                                         ; $4cdc: $a0
    inc bc                                        ; $4cdd: $03
    ldh [rSB], a                                  ; $4cde: $e0 $01
    ldh [$3e], a                                  ; $4ce0: $e0 $3e
    pop bc                                        ; $4ce2: $c1
    ld [hl+], a                                   ; $4ce3: $22
    ldh [$93], a                                  ; $4ce4: $e0 $93
    rst $20                                       ; $4ce6: $e7
    ld [hl], h                                    ; $4ce7: $74
    and [hl]                                      ; $4ce8: $a6
    ret nz                                        ; $4ce9: $c0

    and $06                                       ; $4cea: $e6 $06
    add h                                         ; $4cec: $84
    and b                                         ; $4ced: $a0
    ld c, $4e                                     ; $4cee: $0e $4e
    and d                                         ; $4cf0: $a2
    ld [c], a                                     ; $4cf1: $e2
    ret nz                                        ; $4cf2: $c0

    and e                                         ; $4cf3: $a3
    jp z, $2fc2                                   ; $4cf4: $ca $c2 $2f

    and c                                         ; $4cf7: $a1
    ld l, $a2                                     ; $4cf8: $2e $a2
    nop                                           ; $4cfa: $00
    xor l                                         ; $4cfb: $ad
    jp $c420                                      ; $4cfc: $c3 $20 $c4


    or l                                          ; $4cff: $b5
    pop hl                                        ; $4d00: $e1
    dec a                                         ; $4d01: $3d
    jp $c2c0                                      ; $4d02: $c3 $c0 $c2


    db $ed                                        ; $4d05: $ed
    ld [c], a                                     ; $4d06: $e2
    add [hl]                                      ; $4d07: $86
    and b                                         ; $4d08: $a0
    dec [hl]                                      ; $4d09: $35
    and $c8                                       ; $4d0a: $e6 $c8
    ld c, l                                       ; $4d0c: $4d
    db $e4                                        ; $4d0d: $e4
    jp Jump_000_30e2                              ; $4d0e: $c3 $e2 $30


    and b                                         ; $4d11: $a0
    ld c, [hl]                                    ; $4d12: $4e
    db $ec                                        ; $4d13: $ec
    add b                                         ; $4d14: $80
    ld a, $c0                                     ; $4d15: $3e $c0
    ld c, l                                       ; $4d17: $4d
    dec l                                         ; $4d18: $2d
    nop                                           ; $4d19: $00
    ld d, e                                       ; $4d1a: $53
    and $48                                       ; $4d1b: $e6 $48
    ret                                           ; $4d1d: $c9


    ld [bc], a                                    ; $4d1e: $02
    call nz, $e5c0                                ; $4d1f: $c4 $c0 $e5
    or h                                          ; $4d22: $b4
    jp $c3cc                                      ; $4d23: $c3 $cc $c3


    ldh a, [$81]                                  ; $4d26: $f0 $81
    rst $28                                       ; $4d28: $ef
    add c                                         ; $4d29: $81
    nop                                           ; $4d2a: $00
    ld [hl+], a                                   ; $4d2b: $22
    and b                                         ; $4d2c: $a0
    ld a, $c1                                     ; $4d2d: $3e $c1
    ld a, d                                       ; $4d2f: $7a
    ldh [$a0], a                                  ; $4d30: $e0 $a0
    and e                                         ; $4d32: $a3
    ld l, b                                       ; $4d33: $68
    add sp, $65                                   ; $4d34: $e8 $65
    pop hl                                        ; $4d36: $e1
    add a                                         ; $4d37: $87
    add c                                         ; $4d38: $81
    ld b, h                                       ; $4d39: $44
    and c                                         ; $4d3a: $a1
    ld [$e5c0], sp                                ; $4d3b: $08 $c0 $e5
    jp nc, $d0e0                                  ; $4d3e: $d2 $e0 $d0

    ld [c], a                                     ; $4d41: $e2
    dec l                                         ; $4d42: $2d
    ldh a, [$84]                                  ; $4d43: $f0 $84
    ld c, [hl]                                    ; $4d45: $4e
    pop hl                                        ; $4d46: $e1
    xor l                                         ; $4d47: $ad
    jp nz, $82dc                                  ; $4d48: $c2 $dc $82

    nop                                           ; $4d4b: $00
    push de                                       ; $4d4c: $d5
    add b                                         ; $4d4d: $80
    ld l, b                                       ; $4d4e: $68
    rst $20                                       ; $4d4f: $e7
    ld h, d                                       ; $4d50: $62
    and b                                         ; $4d51: $a0
    rra                                           ; $4d52: $1f
    db $e4                                        ; $4d53: $e4
    add b                                         ; $4d54: $80
    ld [$a404], a                                 ; $4d55: $ea $04 $a4
    ld l, h                                       ; $4d58: $6c
    rst $20                                       ; $4d59: $e7
    or h                                          ; $4d5a: $b4
    and b                                         ; $4d5b: $a0
    inc b                                         ; $4d5c: $04
    ld a, [hl-]                                   ; $4d5d: $3a
    pop bc                                        ; $4d5e: $c1
    ld e, c                                       ; $4d5f: $59

Call_071_4d60:
    and e                                         ; $4d60: $a3
    dec c                                         ; $4d61: $0d
    ld l, b                                       ; $4d62: $68
    rst $20                                       ; $4d63: $e7
    add hl, bc                                    ; $4d64: $09
    pop hl                                        ; $4d65: $e1
    rra                                           ; $4d66: $1f
    ld [c], a                                     ; $4d67: $e2
    inc bc                                        ; $4d68: $03
    and d                                         ; $4d69: $a2
    ld b, b                                       ; $4d6a: $40
    db $e4                                        ; $4d6b: $e4
    ld [bc], a                                    ; $4d6c: $02
    adc h                                         ; $4d6d: $8c
    add b                                         ; $4d6e: $80
    ld c, $c0                                     ; $4d6f: $0e $c0
    db $ec                                        ; $4d71: $ec
    xor a                                         ; $4d72: $af
    add e                                         ; $4d73: $83
    pop hl                                        ; $4d74: $e1
    ld h, e                                       ; $4d75: $63
    call z, $14a1                                 ; $4d76: $cc $a1 $14
    and $1f                                       ; $4d79: $e6 $1f
    and $00                                       ; $4d7b: $e6 $00
    ret nz                                        ; $4d7d: $c0

    add sp, -$68                                  ; $4d7e: $e8 $98
    pop hl                                        ; $4d80: $e1
    adc a                                         ; $4d81: $8f
    ld [c], a                                     ; $4d82: $e2
    ret nz                                        ; $4d83: $c0

    add sp, -$80                                  ; $4d84: $e8 $80
    pop hl                                        ; $4d86: $e1
    pop hl                                        ; $4d87: $e1
    ld h, h                                       ; $4d88: $64
    call nc, $89c9                                ; $4d89: $d4 $c9 $89
    pop bc                                        ; $4d8c: $c1
    nop                                           ; $4d8d: $00
    set 0, l                                      ; $4d8e: $cb $c5
    cp [hl]                                       ; $4d90: $be
    and e                                         ; $4d91: $a3
    ret z                                         ; $4d92: $c8

    ld h, b                                       ; $4d93: $60
    sub [hl]                                      ; $4d94: $96
    pop bc                                        ; $4d95: $c1
    add a                                         ; $4d96: $87
    add d                                         ; $4d97: $82
    xor h                                         ; $4d98: $ac
    add $38                                       ; $4d99: $c6 $38
    and b                                         ; $4d9b: $a0
    ld d, $e1                                     ; $4d9c: $16 $e1
    nop                                           ; $4d9e: $00
    pop hl                                        ; $4d9f: $e1
    ld h, e                                       ; $4da0: $63
    ret nz                                        ; $4da1: $c0

    ld a, [c]                                     ; $4da2: $f2
    call z, Call_000_1863                         ; $4da3: $cc $63 $18
    ret nz                                        ; $4da6: $c0

    add b                                         ; $4da7: $80
    ld [c], a                                     ; $4da8: $e2
    ret                                           ; $4da9: $c9


    ld h, h                                       ; $4daa: $64
    ret nz                                        ; $4dab: $c0

    rst $20                                       ; $4dac: $e7
    ld e, a                                       ; $4dad: $5f
    ld h, c                                       ; $4dae: $61
    nop                                           ; $4daf: $00
    pop af                                        ; $4db0: $f1
    pop bc                                        ; $4db1: $c1
    pop hl                                        ; $4db2: $e1
    ld h, c                                       ; $4db3: $61
    dec d                                         ; $4db4: $15
    db $e3                                        ; $4db5: $e3
    ld b, b                                       ; $4db6: $40
    push hl                                       ; $4db7: $e5
    ret nz                                        ; $4db8: $c0

    ld [$6145], a                                 ; $4db9: $ea $45 $61
    db $f4                                        ; $4dbc: $f4
    ld h, e                                       ; $4dbd: $63
    adc c                                         ; $4dbe: $89
    ld h, b                                       ; $4dbf: $60
    adc h                                         ; $4dc0: $8c
    push af                                       ; $4dc1: $f5
    ld b, c                                       ; $4dc2: $41
    jp nz, $6da3                                  ; $4dc3: $c2 $a3 $6d

    ld l, l                                       ; $4dc6: $6d
    inc b                                         ; $4dc7: $04
    add c                                         ; $4dc8: $81
    ld d, h                                       ; $4dc9: $54
    ld [c], a                                     ; $4dca: $e2
    inc d                                         ; $4dcb: $14
    bit 5, l                                      ; $4dcc: $cb $6d
    ld [$ed80], sp                                ; $4dce: $08 $80 $ed
    ld a, [de]                                    ; $4dd1: $1a
    add b                                         ; $4dd2: $80
    dec e                                         ; $4dd3: $1d
    and h                                         ; $4dd4: $a4
    dec c                                         ; $4dd5: $0d
    call z, $83e1                                 ; $4dd6: $cc $e1 $83
    ld h, b                                       ; $4dd9: $60
    ld b, b                                       ; $4dda: $40
    and c                                         ; $4ddb: $a1
    inc b                                         ; $4ddc: $04
    add d                                         ; $4ddd: $82
    nop                                           ; $4dde: $00
    ret nz                                        ; $4ddf: $c0

    push hl                                       ; $4de0: $e5
    ld l, b                                       ; $4de1: $68
    ld [$e500], a                                 ; $4de2: $ea $00 $e5
    ld [de], a                                    ; $4de5: $12
    db $e3                                        ; $4de6: $e3

Call_071_4de7:
    db $e4                                        ; $4de7: $e4
    db $e3                                        ; $4de8: $e3
    or b                                          ; $4de9: $b0
    add d                                         ; $4dea: $82
    ldh a, [$e3]                                  ; $4deb: $f0 $e3
    ld de, $0182                                  ; $4ded: $11 $82 $01
    dec l                                         ; $4df0: $2d
    ld e, h                                       ; $4df1: $5c
    ld b, b                                       ; $4df2: $40
    ld [$6342], a                                 ; $4df3: $ea $42 $63
    ld b, e                                       ; $4df6: $43
    inc [hl]                                      ; $4df7: $34
    and b                                         ; $4df8: $a0
    ld a, [hl+]                                   ; $4df9: $2a
    and l                                         ; $4dfa: $a5
    ret                                           ; $4dfb: $c9


    and e                                         ; $4dfc: $a3
    rst $18                                       ; $4dfd: $df
    jp nz, $8530                                  ; $4dfe: $c2 $30 $85

    ld b, [hl]                                    ; $4e01: $46
    dec e                                         ; $4e02: $1d
    and l                                         ; $4e03: $a5
    ld h, l                                       ; $4e04: $65
    ldh [$09], a                                  ; $4e05: $e0 $09
    ret nz                                        ; $4e07: $c0

    ld c, l                                       ; $4e08: $4d
    dec l                                         ; $4e09: $2d
    or c                                          ; $4e0a: $b1
    ld b, e                                       ; $4e0b: $43
    xor d                                         ; $4e0c: $aa
    ld b, b                                       ; $4e0d: $40
    nop                                           ; $4e0e: $00
    jr c, jr_071_4e71                             ; $4e0f: $38 $60

    ld b, $81                                     ; $4e11: $06 $81
    sub h                                         ; $4e13: $94
    push bc                                       ; $4e14: $c5
    dec sp                                        ; $4e15: $3b
    ld b, h                                       ; $4e16: $44
    rra                                           ; $4e17: $1f
    push hl                                       ; $4e18: $e5
    add l                                         ; $4e19: $85
    ld b, [hl]                                    ; $4e1a: $46
    db $fd                                        ; $4e1b: $fd
    ld b, h                                       ; $4e1c: $44

jr_071_4e1d:
    add a                                         ; $4e1d: $87
    ld b, b                                       ; $4e1e: $40
    ld [$e1cc], sp                                ; $4e1f: $08 $cc $e1
    or h                                          ; $4e22: $b4
    add h                                         ; $4e23: $84
    or a                                          ; $4e24: $b7
    ld b, e                                       ; $4e25: $43
    ld c, $a3                                     ; $4e26: $0e $a3
    ld b, b                                       ; $4e28: $40
    ld e, e                                       ; $4e29: $5b
    add [hl]                                      ; $4e2a: $86
    sub d                                         ; $4e2b: $92
    ld b, c                                       ; $4e2c: $41
    dec sp                                        ; $4e2d: $3b
    ld h, c                                       ; $4e2e: $61
    nop                                           ; $4e2f: $00
    ret nz                                        ; $4e30: $c0

    inc h                                         ; $4e31: $24
    and h                                         ; $4e32: $a4
    add $b0                                       ; $4e33: $c6 $b0
    add l                                         ; $4e35: $85
    ldh a, [$c5]                                  ; $4e36: $f0 $c5
    add sp, -$3b                                  ; $4e38: $e8 $c5
    scf                                           ; $4e3a: $37
    ld b, c                                       ; $4e3b: $41
    ld [hl], e                                    ; $4e3c: $73
    add c                                         ; $4e3d: $81
    ld e, e                                       ; $4e3e: $5b
    add h                                         ; $4e3f: $84

jr_071_4e40:
    nop                                           ; $4e40: $00
    rrca                                          ; $4e41: $0f
    ld b, b                                       ; $4e42: $40
    dec sp                                        ; $4e43: $3b
    ld h, [hl]                                    ; $4e44: $66
    or e                                          ; $4e45: $b3
    db $e3                                        ; $4e46: $e3
    and h                                         ; $4e47: $a4
    call nz, Call_071_46b2                        ; $4e48: $c4 $b2 $46
    ret z                                         ; $4e4b: $c8

    add sp, $2f                                   ; $4e4c: $e8 $2f
    ld b, c                                       ; $4e4e: $41
    ret nz                                        ; $4e4f: $c0

    push hl                                       ; $4e50: $e5
    add b                                         ; $4e51: $80
    sub b                                         ; $4e52: $90
    ld l, b                                       ; $4e53: $68
    add b                                         ; $4e54: $80
    and $05                                       ; $4e55: $e6 $05
    ld b, [hl]                                    ; $4e57: $46
    jr jr_071_4e1d                                ; $4e58: $18 $c3

    sub e                                         ; $4e5a: $93
    add d                                         ; $4e5b: $82
    inc sp                                        ; $4e5c: $33
    jp nz, Jump_071_4242                          ; $4e5d: $c2 $42 $42

    dec c                                         ; $4e60: $0d
    ld bc, $c36d                                  ; $4e61: $01 $6d $c3
    jp nz, $e9c0                                  ; $4e64: $c2 $c0 $e9

    or c                                          ; $4e67: $b1
    ld [hl+], a                                   ; $4e68: $22
    sub c                                         ; $4e69: $91
    push hl                                       ; $4e6a: $e5
    nop                                           ; $4e6b: $00
    ld [hl+], a                                   ; $4e6c: $22
    and h                                         ; $4e6d: $a4
    call nz, $c24c                                ; $4e6e: $c4 $4c $c2

jr_071_4e71:
    nop                                           ; $4e71: $00
    ret nz                                        ; $4e72: $c0

    ld [hl+], a                                   ; $4e73: $22
    or b                                          ; $4e74: $b0
    jr nz, jr_071_4e7c                            ; $4e75: $20 $05

    jr nz, jr_071_4e40                            ; $4e77: $20 $c7

    add e                                         ; $4e79: $83
    or b                                          ; $4e7a: $b0
    add h                                         ; $4e7b: $84

jr_071_4e7c:
    rst $00                                       ; $4e7c: $c7
    xor d                                         ; $4e7d: $aa
    ld [hl], b                                    ; $4e7e: $70
    ld b, a                                       ; $4e7f: $47
    ld b, $69                                     ; $4e80: $06 $69
    nop                                           ; $4e82: $00
    sbc b                                         ; $4e83: $98
    and d                                         ; $4e84: $a2
    ld a, $23                                     ; $4e85: $3e $23
    dec sp                                        ; $4e87: $3b
    add c                                         ; $4e88: $81
    ld b, e                                       ; $4e89: $43
    ld b, c                                       ; $4e8a: $41
    or h                                          ; $4e8b: $b4
    inc bc                                        ; $4e8c: $03
    inc [hl]                                      ; $4e8d: $34
    ld b, b                                       ; $4e8e: $40
    cp [hl]                                       ; $4e8f: $be
    and e                                         ; $4e90: $a3
    ret nz                                        ; $4e91: $c0

    rst $20                                       ; $4e92: $e7
    nop                                           ; $4e93: $00
    ld a, l                                       ; $4e94: $7d
    dec h                                         ; $4e95: $25
    ld b, $67                                     ; $4e96: $06 $67
    ld [hl], a                                    ; $4e98: $77
    ld [hl+], a                                   ; $4e99: $22
    sub a                                         ; $4e9a: $97
    ld h, b                                       ; $4e9b: $60
    ld c, $21                                     ; $4e9c: $0e $21
    adc $21                                       ; $4e9e: $ce $21
    ld e, $c2                                     ; $4ea0: $1e $c2
    ld l, c                                       ; $4ea2: $69
    nop                                           ; $4ea3: $00
    rlca                                          ; $4ea4: $07
    dec bc                                        ; $4ea5: $0b
    dec bc                                        ; $4ea6: $0b
    dec bc                                        ; $4ea7: $0b
    ld a, [c]                                     ; $4ea8: $f2
    ld hl, $239e                                  ; $4ea9: $21 $9e $23
    ret nz                                        ; $4eac: $c0

    add sp, $03                                   ; $4ead: $e8 $03
    dec h                                         ; $4eaf: $25
    ld b, $65                                     ; $4eb0: $06 $65
    add sp, $37                                   ; $4eb2: $e8 $37
    ld [hl+], a                                   ; $4eb4: $22
    ld b, [hl]                                    ; $4eb5: $46
    ld b, c                                       ; $4eb6: $41
    scf                                           ; $4eb7: $37
    nop                                           ; $4eb8: $00
    dec hl                                        ; $4eb9: $2b
    ld sp, $2b00                                  ; $4eba: $31 $00 $2b
    dec c                                         ; $4ebd: $0d
    dec l                                         ; $4ebe: $2d
    inc b                                         ; $4ebf: $04
    push bc                                       ; $4ec0: $c5
    ldh [$c2], a                                  ; $4ec1: $e0 $c2
    ldh [$2b], a                                  ; $4ec3: $e0 $2b
    cp [hl]                                       ; $4ec5: $be
    ldh [$c0], a                                  ; $4ec6: $e0 $c0
    db $ec                                        ; $4ec8: $ec
    cp [hl]                                       ; $4ec9: $be
    ld c, c                                       ; $4eca: $49
    ld b, $68                                     ; $4ecb: $06 $68
    call nz, Call_071_6862                        ; $4ecd: $c4 $62 $68
    ei                                            ; $4ed0: $fb
    ld [hl+], a                                   ; $4ed1: $22
    add a                                         ; $4ed2: $87
    ld hl, $0145                                  ; $4ed3: $21 $45 $01
    dec l                                         ; $4ed6: $2d
    jp nz, Jump_000_2be1                          ; $4ed7: $c2 $e1 $2b

    dec hl                                        ; $4eda: $2b
    ld a, [hl]                                    ; $4edb: $7e
    pop hl                                        ; $4edc: $e1
    nop                                           ; $4edd: $00
    or l                                          ; $4ede: $b5
    nop                                           ; $4edf: $00
    add hl, de                                    ; $4ee0: $19
    ld b, a                                       ; $4ee1: $47
    or [hl]                                       ; $4ee2: $b6
    and [hl]                                      ; $4ee3: $a6
    ld b, $69                                     ; $4ee4: $06 $69
    add h                                         ; $4ee6: $84
    nop                                           ; $4ee7: $00
    sbc d                                         ; $4ee8: $9a
    ld h, b                                       ; $4ee9: $60
    ld d, c                                       ; $4eea: $51
    ld b, d                                       ; $4eeb: $42
    ld sp, $0020                                  ; $4eec: $31 $20 $00
    or [hl]                                       ; $4eef: $b6
    ret nz                                        ; $4ef0: $c0

    ret nz                                        ; $4ef1: $c0

    nop                                           ; $4ef2: $00
    add d                                         ; $4ef3: $82
    ld [c], a                                     ; $4ef4: $e2
    ld a, a                                       ; $4ef5: $7f
    pop hl                                        ; $4ef6: $e1
    ld a, [hl-]                                   ; $4ef7: $3a
    jr nz, jr_071_4f1e                            ; $4ef8: $20 $24

    ld h, b                                       ; $4efa: $60
    add h                                         ; $4efb: $84
    inc hl                                        ; $4efc: $23
    ld de, $c045                                  ; $4efd: $11 $45 $c0
    ld a, l                                       ; $4f00: $7d
    and e                                         ; $4f01: $a3
    ld l, e                                       ; $4f02: $6b
    rst $00                                       ; $4f03: $c7
    ld c, h                                       ; $4f04: $4c
    and d                                         ; $4f05: $a2
    ld de, $8520                                  ; $4f06: $11 $20 $85
    and d                                         ; $4f09: $a2
    ld b, e                                       ; $4f0a: $43
    and d                                         ; $4f0b: $a2
    dec bc                                        ; $4f0c: $0b
    dec bc                                        ; $4f0d: $0b
    dec c                                         ; $4f0e: $0d
    ld l, e                                       ; $4f0f: $6b
    nop                                           ; $4f10: $00
    ldh [rWX], a                                  ; $4f11: $e0 $4b
    ld c, e                                       ; $4f13: $4b
    ld sp, hl                                     ; $4f14: $f9
    and c                                         ; $4f15: $a1
    add b                                         ; $4f16: $80
    pop hl                                        ; $4f17: $e1
    inc b                                         ; $4f18: $04
    inc hl                                        ; $4f19: $23
    ld de, $e045                                  ; $4f1a: $11 $45 $e0
    add b                                         ; $4f1d: $80

jr_071_4f1e:
    db $ec                                        ; $4f1e: $ec
    ld b, b                                       ; $4f1f: $40
    db $e3                                        ; $4f20: $e3
    sub h                                         ; $4f21: $94
    and d                                         ; $4f22: $a2
    dec sp                                        ; $4f23: $3b
    ld h, c                                       ; $4f24: $61
    ld a, h                                       ; $4f25: $7c
    ld [bc], a                                    ; $4f26: $02
    dec bc                                        ; $4f27: $0b
    ld l, e                                       ; $4f28: $6b
    ld c, e                                       ; $4f29: $4b
    nop                                           ; $4f2a: $00
    cp $e0                                        ; $4f2b: $fe $e0
    add c                                         ; $4f2d: $81
    ldh [rNR30], a                                ; $4f2e: $e0 $1a
    add d                                         ; $4f30: $82
    inc b                                         ; $4f31: $04
    ld [hl+], a                                   ; $4f32: $22
    pop de                                        ; $4f33: $d1
    ld [hl+], a                                   ; $4f34: $22
    ld b, [hl]                                    ; $4f35: $46
    ld [hl+], a                                   ; $4f36: $22
    dec a                                         ; $4f37: $3d
    inc hl                                        ; $4f38: $23
    ld b, [hl]                                    ; $4f39: $46
    ld b, [hl]                                    ; $4f3a: $46
    ld h, b                                       ; $4f3b: $60
    jr nz, jr_071_4f60                            ; $4f3c: $20 $22

    ld d, e                                       ; $4f3e: $53
    ld hl, $a406                                  ; $4f3f: $21 $06 $a4
    add hl, bc                                    ; $4f42: $09
    ld hl, $e1bf                                  ; $4f43: $21 $bf $e1
    dec bc                                        ; $4f46: $0b
    dec bc                                        ; $4f47: $0b
    dec a                                         ; $4f48: $3d
    nop                                           ; $4f49: $00
    add b                                         ; $4f4a: $80
    ld a, l                                       ; $4f4b: $7d
    call nz, $e580                                ; $4f4c: $c4 $80 $e5
    ret nz                                        ; $4f4f: $c0

    db $e4                                        ; $4f50: $e4
    add $49                                       ; $4f51: $c6 $49
    or e                                          ; $4f53: $b3
    dec b                                         ; $4f54: $05
    add h                                         ; $4f55: $84
    ld [bc], a                                    ; $4f56: $02
    jp Jump_071_6d84                              ; $4f57: $c3 $84 $6d


    nop                                           ; $4f5a: $00
    ld a, [hl]                                    ; $4f5b: $7e
    ldh [$c1], a                                  ; $4f5c: $e0 $c1
    pop hl                                        ; $4f5e: $e1
    ld [hl], b                                    ; $4f5f: $70

jr_071_4f60:
    push hl                                       ; $4f60: $e5
    ret nz                                        ; $4f61: $c0

    db $ed                                        ; $4f62: $ed
    xor b                                         ; $4f63: $a8
    dec b                                         ; $4f64: $05
    dec l                                         ; $4f65: $2d
    and h                                         ; $4f66: $a4
    or e                                          ; $4f67: $b3
    ld [bc], a                                    ; $4f68: $02
    dec c                                         ; $4f69: $0d
    add b                                         ; $4f6a: $80
    nop                                           ; $4f6b: $00
    sub [hl]                                      ; $4f6c: $96
    ld b, b                                       ; $4f6d: $40
    push bc                                       ; $4f6e: $c5
    and d                                         ; $4f6f: $a2
    cp l                                          ; $4f70: $bd
    ret nz                                        ; $4f71: $c0

    ld [hl], b                                    ; $4f72: $70
    ld hl, $02fe                                  ; $4f73: $21 $fe $02
    ld sp, $5128                                  ; $4f76: $31 $28 $51
    dec h                                         ; $4f79: $25
    rra                                           ; $4f7a: $1f
    daa                                           ; $4f7b: $27
    nop                                           ; $4f7c: $00
    ld h, b                                       ; $4f7d: $60
    and e                                         ; $4f7e: $a3
    or e                                          ; $4f7f: $b3
    inc bc                                        ; $4f80: $03
    ld d, $80                                     ; $4f81: $16 $80
    add d                                         ; $4f83: $82
    ld h, d                                       ; $4f84: $62
    adc e                                         ; $4f85: $8b
    ld hl, $8109                                  ; $4f86: $21 $09 $81
    ccf                                           ; $4f89: $3f
    inc bc                                        ; $4f8a: $03
    inc e                                         ; $4f8b: $1c
    ld [hl+], a                                   ; $4f8c: $22
    nop                                           ; $4f8d: $00
    ld [de], a                                    ; $4f8e: $12
    ld b, e                                       ; $4f8f: $43
    or $a6                                        ; $4f90: $f6 $a6
    nop                                           ; $4f92: $00
    ld b, a                                       ; $4f93: $47
    dec bc                                        ; $4f94: $0b
    ld b, b                                       ; $4f95: $40
    jr nz, jr_071_4fbe                            ; $4f96: $20 $26

    rst $20                                       ; $4f98: $e7
    ld b, d                                       ; $4f99: $42
    ld d, [hl]                                    ; $4f9a: $56
    ld h, c                                       ; $4f9b: $61
    cp l                                          ; $4f9c: $bd
    pop bc                                        ; $4f9d: $c1
    nop                                           ; $4f9e: $00
    add l                                         ; $4f9f: $85
    ld h, d                                       ; $4fa0: $62
    pop bc                                        ; $4fa1: $c1
    ld h, c                                       ; $4fa2: $61
    db $e4                                        ; $4fa3: $e4
    ld h, b                                       ; $4fa4: $60
    ld [de], a                                    ; $4fa5: $12

Jump_071_4fa6:
    ld b, [hl]                                    ; $4fa6: $46
    ret nz                                        ; $4fa7: $c0

    and $00                                       ; $4fa8: $e6 $00
    ld b, [hl]                                    ; $4faa: $46
    ld l, a                                       ; $4fab: $6f
    and d                                         ; $4fac: $a2
    ldh [rTIMA], a                                ; $4fad: $e0 $05
    nop                                           ; $4faf: $00
    halt                                          ; $4fb0: $76
    and e                                         ; $4fb1: $a3
    add a                                         ; $4fb2: $87
    add b                                         ; $4fb3: $80
    adc b                                         ; $4fb4: $88
    ld [hl+], a                                   ; $4fb5: $22
    cp a                                          ; $4fb6: $bf
    ld h, h                                       ; $4fb7: $64
    ret                                           ; $4fb8: $c9


    jr z, jr_071_5030                             ; $4fb9: $28 $75

    ld h, c                                       ; $4fbb: $61
    ld [hl], h                                    ; $4fbc: $74
    ld h, d                                       ; $4fbd: $62

jr_071_4fbe:
    rlc l                                         ; $4fbe: $cb $05
    nop                                           ; $4fc0: $00
    dec d                                         ; $4fc1: $15
    and h                                         ; $4fc2: $a4
    ld a, [hl]                                    ; $4fc3: $7e
    push bc                                       ; $4fc4: $c5
    and d                                         ; $4fc5: $a2
    add d                                         ; $4fc6: $82
    cp l                                          ; $4fc7: $bd
    ld [bc], a                                    ; $4fc8: $02
    ret z                                         ; $4fc9: $c8

    ld hl, $64bf                                  ; $4fca: $21 $bf $64
    db $dd                                        ; $4fcd: $dd
    add hl, bc                                    ; $4fce: $09
    ld b, l                                       ; $4fcf: $45
    add h                                         ; $4fd0: $84
    nop                                           ; $4fd1: $00
    ret nz                                        ; $4fd2: $c0

    ld h, $ad                                     ; $4fd3: $26 $ad
    ld [$01c0], sp                                ; $4fd5: $08 $c0 $01
    push af                                       ; $4fd8: $f5
    ld hl, $45ae                                  ; $4fd9: $21 $ae $45
    ld b, h                                       ; $4fdc: $44
    add d                                         ; $4fdd: $82
    dec [hl]                                      ; $4fde: $35
    pop bc                                        ; $4fdf: $c1
    ld e, l                                       ; $4fe0: $5d
    ld [$7f00], sp                                ; $4fe1: $08 $00 $7f
    ld [bc], a                                    ; $4fe4: $02
    dec [hl]                                      ; $4fe5: $35
    ld [hl+], a                                   ; $4fe6: $22
    add b                                         ; $4fe7: $80
    push hl                                       ; $4fe8: $e5
    db $e4                                        ; $4fe9: $e4
    rst $00                                       ; $4fea: $c7
    ld [hl], c                                    ; $4feb: $71
    nop                                           ; $4fec: $00
    ld d, d                                       ; $4fed: $52
    jr z, @-$34                                   ; $4fee: $28 $ca

    nop                                           ; $4ff0: $00
    ld b, e                                       ; $4ff1: $43
    ld b, d                                       ; $4ff2: $42
    nop                                           ; $4ff3: $00
    pop bc                                        ; $4ff4: $c1

jr_071_4ff5:
    call nz, $0471                                ; $4ff5: $c4 $71 $04
    dec [hl]                                      ; $4ff8: $35
    add hl, hl                                    ; $4ff9: $29
    ret nz                                        ; $4ffa: $c0

    push hl                                       ; $4ffb: $e5
    or $05                                        ; $4ffc: $f6 $05
    ld b, $80                                     ; $4ffe: $06 $80
    ret nc                                        ; $5000: $d0

    ld h, c                                       ; $5001: $61
    ld b, e                                       ; $5002: $43
    inc b                                         ; $5003: $04
    nop                                           ; $5004: $00
    ld sp, $2380                                  ; $5005: $31 $80 $23
    add b                                         ; $5008: $80
    cp c                                          ; $5009: $b9
    pop bc                                        ; $500a: $c1
    ld [hl], c                                    ; $500b: $71
    jr z, @-$40                                   ; $500c: $28 $be

    dec b                                         ; $500e: $05
    ld l, a                                       ; $500f: $6f
    add d                                         ; $5010: $82
    ld e, a                                       ; $5011: $5f
    inc hl                                        ; $5012: $23
    xor l                                         ; $5013: $ad
    rlca                                          ; $5014: $07
    nop                                           ; $5015: $00
    dec a                                         ; $5016: $3d
    and h                                         ; $5017: $a4
    ld d, d                                       ; $5018: $52
    inc h                                         ; $5019: $24
    add b                                         ; $501a: $80
    db $e3                                        ; $501b: $e3
    rst $28                                       ; $501c: $ef
    add b                                         ; $501d: $80
    ret nz                                        ; $501e: $c0

    jp hl                                         ; $501f: $e9


    ld [hl], l                                    ; $5020: $75
    ld a, [hl+]                                   ; $5021: $2a
    ld b, c                                       ; $5022: $41
    and $66                                       ; $5023: $e6 $66
    ld h, [hl]                                    ; $5025: $66
    nop                                           ; $5026: $00
    ret nz                                        ; $5027: $c0

    db $ed                                        ; $5028: $ed
    jp $af22                                      ; $5029: $c3 $22 $af


    inc b                                         ; $502c: $04
    sub $c2                                       ; $502d: $d6 $c2
    ret nz                                        ; $502f: $c0

jr_071_5030:
    db $eb                                        ; $5030: $eb
    call nz, $c0c4                                ; $5031: $c4 $c4 $c0
    ld [$e10a], a                                 ; $5034: $ea $0a $e1
    nop                                           ; $5037: $00
    xor [hl]                                      ; $5038: $ae
    ld b, d                                       ; $5039: $42
    ret nz                                        ; $503a: $c0

    db $e4                                        ; $503b: $e4
    ld bc, $4b61                                  ; $503c: $01 $61 $4b
    jp nz, Jump_071_608a                          ; $503f: $c2 $8a $60

    ld b, b                                       ; $5042: $40
    pop hl                                        ; $5043: $e1
    sub c                                         ; $5044: $91
    ld b, e                                       ; $5045: $43
    cp e                                          ; $5046: $bb
    ld l, a                                       ; $5047: $6f
    nop                                           ; $5048: $00
    add b                                         ; $5049: $80
    rst $20                                       ; $504a: $e7
    sbc a                                         ; $504b: $9f
    push bc                                       ; $504c: $c5
    sub e                                         ; $504d: $93
    ld h, e                                       ; $504e: $63
    pop bc                                        ; $504f: $c1
    ld b, c                                       ; $5050: $41
    sub c                                         ; $5051: $91
    ld bc, $e4f3                                  ; $5052: $01 $f3 $e4
    dec [hl]                                      ; $5055: $35
    dec h                                         ; $5056: $25
    ret nz                                        ; $5057: $c0

    inc hl                                        ; $5058: $23
    nop                                           ; $5059: $00
    nop                                           ; $505a: $00
    ld b, e                                       ; $505b: $43
    or $05                                        ; $505c: $f6 $05
    call nz, Call_071_4444                        ; $505e: $c4 $44 $44
    ld b, d                                       ; $5061: $42
    adc a                                         ; $5062: $8f
    ld h, $81                                     ; $5063: $26 $81
    ld b, d                                       ; $5065: $42
    and b                                         ; $5066: $a0
    add l                                         ; $5067: $85
    ret z                                         ; $5068: $c8

    ld b, c                                       ; $5069: $41
    nop                                           ; $506a: $00
    ret nz                                        ; $506b: $c0

    ld b, a                                       ; $506c: $47
    nop                                           ; $506d: $00
    ld b, c                                       ; $506e: $41
    db $e4                                        ; $506f: $e4
    ret z                                         ; $5070: $c8

    jr nz, jr_071_4ff5                            ; $5071: $20 $82

    add [hl]                                      ; $5073: $86
    jr nz, @-$75                                  ; $5074: $20 $89

    and d                                         ; $5076: $a2
    adc a                                         ; $5077: $8f
    daa                                           ; $5078: $27
    ld h, c                                       ; $5079: $61
    and e                                         ; $507a: $a3
    ld b, b                                       ; $507b: $40
    jr jr_071_50e2                                ; $507c: $18 $64

    jp $fc43                                      ; $507e: $c3 $43 $fc


    jp hl                                         ; $5081: $e9


    xor l                                         ; $5082: $ad
    rlca                                          ; $5083: $07
    and b                                         ; $5084: $a0
    ld h, d                                       ; $5085: $62
    add $24                                       ; $5086: $c6 $24
    dec l                                         ; $5088: $2d
    adc a                                         ; $5089: $8f
    jr z, jr_071_508c                             ; $508a: $28 $00

jr_071_508c:
    ld b, c                                       ; $508c: $41
    ld b, b                                       ; $508d: $40
    ldh [$85], a                                  ; $508e: $e0 $85
    or [hl]                                       ; $5090: $b6
    ld b, c                                       ; $5091: $41
    add b                                         ; $5092: $80
    jp hl                                         ; $5093: $e9


    ld [hl], a                                    ; $5094: $77
    ld b, h                                       ; $5095: $44
    or $05                                        ; $5096: $f6 $05
    cp l                                          ; $5098: $bd
    push bc                                       ; $5099: $c5
    add b                                         ; $509a: $80
    db $e3                                        ; $509b: $e3
    nop                                           ; $509c: $00
    call $a3a5                                    ; $509d: $cd $a5 $a3
    add d                                         ; $50a0: $82
    ld h, b                                       ; $50a1: $60
    add l                                         ; $50a2: $85
    ld a, c                                       ; $50a3: $79
    ld h, e                                       ; $50a4: $63
    jp $6ae5                                      ; $50a5: $c3 $e5 $6a


    dec b                                         ; $50a8: $05
    add hl, bc                                    ; $50a9: $09
    ld [hl+], a                                   ; $50aa: $22
    ld [bc], a                                    ; $50ab: $02
    inc hl                                        ; $50ac: $23
    inc c                                         ; $50ad: $0c
    adc [hl]                                      ; $50ae: $8e
    inc bc                                        ; $50af: $03
    ld c, a                                       ; $50b0: $4f
    jr z, jr_071_50e0                             ; $50b1: $28 $2d

    dec c                                         ; $50b3: $0d
    rlca                                          ; $50b4: $07
    ld h, c                                       ; $50b5: $61
    and b                                         ; $50b6: $a0
    add a                                         ; $50b7: $87
    jp nz, Jump_071_6e06                          ; $50b8: $c2 $06 $6e

    ld h, c                                       ; $50bb: $61
    nop                                           ; $50bc: $00
    cp a                                          ; $50bd: $bf
    ld h, $60                                     ; $50be: $26 $60
    ld h, h                                       ; $50c0: $64
    add d                                         ; $50c1: $82
    inc hl                                        ; $50c2: $23
    ret nz                                        ; $50c3: $c0

    db $ec                                        ; $50c4: $ec
    add a                                         ; $50c5: $87
    ld b, l                                       ; $50c6: $45
    sbc c                                         ; $50c7: $99
    ld b, d                                       ; $50c8: $42
    add b                                         ; $50c9: $80
    rst $20                                       ; $50ca: $e7
    db $eb                                        ; $50cb: $eb
    ld [hl+], a                                   ; $50cc: $22
    nop                                           ; $50cd: $00
    cp a                                          ; $50ce: $bf
    dec h                                         ; $50cf: $25
    ld d, h                                       ; $50d0: $54
    ld [hl+], a                                   ; $50d1: $22
    ld sp, hl                                     ; $50d2: $f9
    ld [c], a                                     ; $50d3: $e2
    cp a                                          ; $50d4: $bf
    ret nz                                        ; $50d5: $c0

    ld a, [$c0a4]                                 ; $50d6: $fa $a4 $c0
    and $86                                       ; $50d9: $e6 $86
    push bc                                       ; $50db: $c5
    ld e, d                                       ; $50dc: $5a
    ld b, c                                       ; $50dd: $41
    nop                                           ; $50de: $00
    ld sp, hl                                     ; $50df: $f9

jr_071_50e0:
    ld b, h                                       ; $50e0: $44
    ld b, e                                       ; $50e1: $43

jr_071_50e2:
    ld h, e                                       ; $50e2: $63
    ld l, d                                       ; $50e3: $6a
    add hl, bc                                    ; $50e4: $09
    ld l, [hl]                                    ; $50e5: $6e
    ld bc, $618e                                  ; $50e6: $01 $8e $61
    ei                                            ; $50e9: $fb
    add e                                         ; $50ea: $83
    adc a                                         ; $50eb: $8f
    daa                                           ; $50ec: $27
    ret nc                                        ; $50ed: $d0

    dec b                                         ; $50ee: $05
    nop                                           ; $50ef: $00
    pop bc                                        ; $50f0: $c1
    jr z, jr_071_5133                             ; $50f1: $28 $40

    and $6a                                       ; $50f3: $e6 $6a
    inc l                                         ; $50f5: $2c
    adc [hl]                                      ; $50f6: $8e
    ld h, c                                       ; $50f7: $61
    nop                                           ; $50f8: $00
    db $e4                                        ; $50f9: $e4
    sub a                                         ; $50fa: $97
    daa                                           ; $50fb: $27
    ld l, e                                       ; $50fc: $6b
    inc bc                                        ; $50fd: $03
    call nc, Call_000_0007                        ; $50fe: $d4 $07 $00
    halt                                          ; $5101: $76
    db $e4                                        ; $5102: $e4
    ret nz                                        ; $5103: $c0

    xor $6a                                       ; $5104: $ee $6a
    inc b                                         ; $5106: $04
    rst $08                                       ; $5107: $cf
    ld h, d                                       ; $5108: $62
    rst $00                                       ; $5109: $c7
    ld h, e                                       ; $510a: $63
    add e                                         ; $510b: $83
    ld h, d                                       ; $510c: $62
    ld c, l                                       ; $510d: $4d
    pop hl                                        ; $510e: $e1
    call nc, Call_000_000c                        ; $510f: $d4 $0c $00
    ret nz                                        ; $5112: $c0

    dec b                                         ; $5113: $05
    ccf                                           ; $5114: $3f
    ld a, [hl+]                                   ; $5115: $2a
    ld a, $45                                     ; $5116: $3e $45
    inc bc                                        ; $5118: $03
    pop bc                                        ; $5119: $c1
    ccf                                           ; $511a: $3f
    ld [bc], a                                    ; $511b: $02
    or a                                          ; $511c: $b7
    jp $82c4                                      ; $511d: $c3 $c4 $82


    sub e                                         ; $5120: $93
    ld b, e                                       ; $5121: $43
    nop                                           ; $5122: $00
    dec d                                         ; $5123: $15
    rst $20                                       ; $5124: $e7
    cp l                                          ; $5125: $bd
    and $bf                                       ; $5126: $e6 $bf
    add hl, hl                                    ; $5128: $29
    or [hl]                                       ; $5129: $b6
    inc bc                                        ; $512a: $03
    ret nz                                        ; $512b: $c0

    dec h                                         ; $512c: $25
    add d                                         ; $512d: $82
    db $e3                                        ; $512e: $e3
    ld [hl], a                                    ; $512f: $77
    and d                                         ; $5130: $a2
    ret nc                                        ; $5131: $d0

    ld h, d                                       ; $5132: $62

jr_071_5133:
    nop                                           ; $5133: $00
    ldh a, [$a9]                                  ; $5134: $f0 $a9
    ld b, b                                       ; $5136: $40
    and $c0                                       ; $5137: $e6 $c0
    db $ec                                        ; $5139: $ec
    sbc [hl]                                      ; $513a: $9e
    and l                                         ; $513b: $a5
    cp h                                          ; $513c: $bc
    jp nz, $e380                                  ; $513d: $c2 $80 $e3

    push bc                                       ; $5140: $c5
    ld b, l                                       ; $5141: $45
    push de                                       ; $5142: $d5
    adc $00                                       ; $5143: $ce $00
    dec sp                                        ; $5145: $3b
    rlca                                          ; $5146: $07
    ld [hl], h                                    ; $5147: $74
    ld h, $9e                                     ; $5148: $26 $9e
    and [hl]                                      ; $514a: $a6
    ld c, e                                       ; $514b: $4b
    ld h, c                                       ; $514c: $61
    ld a, e                                       ; $514d: $7b
    inc h                                         ; $514e: $24
    inc sp                                        ; $514f: $33
    add h                                         ; $5150: $84
    add b                                         ; $5151: $80
    ldh a, [rP1]                                  ; $5152: $f0 $00
    nop                                           ; $5154: $00
    nop                                           ; $5155: $00
    db $dd                                        ; $5156: $dd
    add hl, de                                    ; $5157: $19
    rst $38                                       ; $5158: $ff
    db $ec                                        ; $5159: $ec
    ld [hl+], a                                   ; $515a: $22
    rra                                           ; $515b: $1f
    ld [hl+], a                                   ; $515c: $22
    db $ed                                        ; $515d: $ed
    pop hl                                        ; $515e: $e1
    jr z, jr_071_518a                             ; $515f: $28 $29

    or $e7                                        ; $5161: $f6 $e7
    ldh [$32], a                                  ; $5163: $e0 $32
    inc sp                                        ; $5165: $33
    ld [c], a                                     ; $5166: $e2
    ldh [$2c], a                                  ; $5167: $e0 $2c
    dec l                                         ; $5169: $2d
    add hl, de                                    ; $516a: $19
    add hl, de                                    ; $516b: $19
    db $e3                                        ; $516c: $e3
    jr nc, jr_071_51a0                            ; $516d: $30 $31

    reti                                          ; $516f: $d9


    db $ed                                        ; $5170: $ed
    jp z, $c2f3                                   ; $5171: $ca $f3 $c2

    ldh [rNR32], a                                ; $5174: $e0 $1c
    ld a, [de]                                    ; $5176: $1a
    inc e                                         ; $5177: $1c
    sbc [hl]                                      ; $5178: $9e
    cp a                                          ; $5179: $bf
    pop hl                                        ; $517a: $e1
    ld a, [hl+]                                   ; $517b: $2a
    dec hl                                        ; $517c: $2b
    add hl, de                                    ; $517d: $19
    inc [hl]                                      ; $517e: $34
    and l                                         ; $517f: $a5
    rst $20                                       ; $5180: $e7
    or a                                          ; $5181: $b7
    ldh [$35], a                                  ; $5182: $e0 $35
    sbc $be                                       ; $5184: $de $be
    ld a, [$1a1d]                                 ; $5186: $fa $1d $1a
    dec e                                         ; $5189: $1d

jr_071_518a:
    add hl, de                                    ; $518a: $19
    db $dd                                        ; $518b: $dd
    ldh [rNR43], a                                ; $518c: $e0 $22
    inc e                                         ; $518e: $1c
    sbc a                                         ; $518f: $9f
    ld a, [de]                                    ; $5190: $1a
    dec de                                        ; $5191: $1b
    ld a, [de]                                    ; $5192: $1a
    inc e                                         ; $5193: $1c
    ld hl, $e48a                                  ; $5194: $21 $8a $e4
    ld h, l                                       ; $5197: $65
    jp hl                                         ; $5198: $e9


    ld [hl], $5d                                  ; $5199: $36 $5d
    scf                                           ; $519b: $37
    ld a, [hl]                                    ; $519c: $7e
    ld a, [$1e21]                                 ; $519d: $fa $21 $1e

jr_071_51a0:
    ld hl, $e1dd                                  ; $51a0: $21 $dd $e1
    ld hl, $e082                                  ; $51a3: $21 $82 $e0
    ld h, a                                       ; $51a6: $67
    ld e, $21                                     ; $51a7: $1e $21
    inc h                                         ; $51a9: $24
    sub e                                         ; $51aa: $93
    db $f4                                        ; $51ab: $f4
    dec h                                         ; $51ac: $25
    ld [c], a                                     ; $51ad: $e2
    ld l, $2f                                     ; $51ae: $2e $2f
    dec [hl]                                      ; $51b0: $35
    pop af                                        ; $51b1: $f1
    rst $20                                       ; $51b2: $e7
    inc h                                         ; $51b3: $24
    inc hl                                        ; $51b4: $23
    inc h                                         ; $51b5: $24
    ld sp, hl                                     ; $51b6: $f9
    ld [c], a                                     ; $51b7: $e2
    cp b                                          ; $51b8: $b8
    ldh [rNR44], a                                ; $51b9: $e0 $23
    inc h                                         ; $51bb: $24
    ld h, $74                                     ; $51bc: $26 $74
    sub e                                         ; $51be: $93
    db $f4                                        ; $51bf: $f4
    ld e, e                                       ; $51c0: $5b
    pop hl                                        ; $51c1: $e1
    inc [hl]                                      ; $51c2: $34
    push af                                       ; $51c3: $f5
    db $d3                                        ; $51c4: $d3
    ld h, $25                                     ; $51c5: $26 $25
    ld h, $cd                                     ; $51c7: $26 $cd
    pop bc                                        ; $51c9: $c1
    ld bc, $b826                                  ; $51ca: $01 $26 $b8
    ldh [$f6], a                                  ; $51cd: $e0 $f6
    ldh [$5b], a                                  ; $51cf: $e0 $5b
    ld hl, sp-$54                                 ; $51d1: $f8 $ac
    jp $c6d0                                      ; $51d3: $c3 $d0 $c6


    add d                                         ; $51d6: $82
    ret                                           ; $51d7: $c9


    call Call_000_00c0                            ; $51d8: $cd $c0 $00
    cp b                                          ; $51db: $b8
    ld [c], a                                     ; $51dc: $e2
    sub l                                         ; $51dd: $95
    sub $5b                                       ; $51de: $d6 $5b
    db $e4                                        ; $51e0: $e4
    or l                                          ; $51e1: $b5
    pop bc                                        ; $51e2: $c1

jr_071_51e3:
    ret nc                                        ; $51e3: $d0

    jp nz, $cc84                                  ; $51e4: $c2 $84 $cc

    ld d, a                                       ; $51e7: $57
    ret nz                                        ; $51e8: $c0

    adc l                                         ; $51e9: $8d
    pop bc                                        ; $51ea: $c1
    ld b, $54                                     ; $51eb: $06 $54
    push de                                       ; $51ed: $d5
    jr z, @+$2b                                   ; $51ee: $28 $29

    and e                                         ; $51f0: $a3
    db $e4                                        ; $51f1: $e4
    or l                                          ; $51f2: $b5
    pop bc                                        ; $51f3: $c1
    ld [hl], l                                    ; $51f4: $75
    ld [c], a                                     ; $51f5: $e2
    rrca                                          ; $51f6: $0f
    call nz, $c04e                                ; $51f7: $c4 $4e $c0
    nop                                           ; $51fa: $00
    ld [hl], d                                    ; $51fb: $72
    jp hl                                         ; $51fc: $e9


    ld e, a                                       ; $51fd: $5f
    db $e3                                        ; $51fe: $e3
    db $10                                        ; $51ff: $10
    rst $08                                       ; $5200: $cf
    ld h, c                                       ; $5201: $61

jr_071_5202:
    pop hl                                        ; $5202: $e1
    pop hl                                        ; $5203: $e1
    and [hl]                                      ; $5204: $a6
    ld [hl], l                                    ; $5205: $75
    push hl                                       ; $5206: $e5
    add l                                         ; $5207: $85
    pop bc                                        ; $5208: $c1
    ld c, h                                       ; $5209: $4c
    jp nz, $cb06                                  ; $520a: $c2 $06 $cb

    and c                                         ; $520d: $a1
    ld [hl+], a                                   ; $520e: $22
    rra                                           ; $520f: $1f
    ld a, [hl+]                                   ; $5210: $2a
    ldh a, [$a0]                                  ; $5211: $f0 $a0
    and [hl]                                      ; $5213: $a6
    ld l, $c2                                     ; $5214: $2e $c2
    sub e                                         ; $5216: $93
    push hl                                       ; $5217: $e5
    jr jr_071_5202                                ; $5218: $18 $e8

    ld [hl], h                                    ; $521a: $74
    adc h                                         ; $521b: $8c
    ret nz                                        ; $521c: $c0

    call z, Call_000_21a0                         ; $521d: $cc $a0 $21
    push bc                                       ; $5220: $c5
    and c                                         ; $5221: $a1

jr_071_5222:
    jr nz, jr_071_5242                            ; $5222: $20 $1e

    jr nz, jr_071_51e3                            ; $5224: $20 $bd

    ld sp, hl                                     ; $5226: $f9
    ld e, b                                       ; $5227: $58
    xor a                                         ; $5228: $af
    and b                                         ; $5229: $a0
    sub e                                         ; $522a: $93
    rst $20                                       ; $522b: $e7
    add l                                         ; $522c: $85
    rst $00                                       ; $522d: $c7
    inc h                                         ; $522e: $24
    inc hl                                        ; $522f: $23
    ld [bc], a                                    ; $5230: $02
    ret nz                                        ; $5231: $c0

    inc h                                         ; $5232: $24
    cp l                                          ; $5233: $bd
    and b                                         ; $5234: $a0
    dec b                                         ; $5235: $05
    jr nz, @+$04                                  ; $5236: $20 $02

    pop bc                                        ; $5238: $c1
    jr nz, jr_071_5222                            ; $5239: $20 $e7

    jp nz, $c81a                                  ; $523b: $c2 $1a $c8

    ld l, d                                       ; $523e: $6a
    ld [$e593], a                                 ; $523f: $ea $93 $e5

jr_071_5242:
    ld h, h                                       ; $5242: $64
    xor b                                         ; $5243: $a8
    inc b                                         ; $5244: $04
    ld b, h                                       ; $5245: $44
    ret nz                                        ; $5246: $c0

    ld [bc], a                                    ; $5247: $02
    ret nz                                        ; $5248: $c0

    ld h, $7d                                     ; $5249: $26 $7d
    and b                                         ; $524b: $a0
    ld [hl], a                                    ; $524c: $77
    db $e3                                        ; $524d: $e3
    ld b, c                                       ; $524e: $41
    and d                                         ; $524f: $a2
    rrca                                          ; $5250: $0f
    and l                                         ; $5251: $a5
    dec l                                         ; $5252: $2d
    ldh [$a0], a                                  ; $5253: $e0 $a0
    ld l, e                                       ; $5255: $6b
    ldh [$e0], a                                  ; $5256: $e0 $e0
    rst $00                                       ; $5258: $c7
    sub e                                         ; $5259: $93
    push hl                                       ; $525a: $e5
    ld [bc], a                                    ; $525b: $02
    rst $08                                       ; $525c: $cf
    add h                                         ; $525d: $84
    and b                                         ; $525e: $a0
    daa                                           ; $525f: $27
    ld [hl], a                                    ; $5260: $77
    pop hl                                        ; $5261: $e1
    daa                                           ; $5262: $27
    inc l                                         ; $5263: $2c
    ld h, [hl]                                    ; $5264: $66
    jp nz, $c5bb                                  ; $5265: $c2 $bb $c5

    dec e                                         ; $5268: $1d
    jr nz, @+$25                                  ; $5269: $20 $23

    pop hl                                        ; $526b: $e1
    jr nz, @+$54                                  ; $526c: $20 $52

    rst $00                                       ; $526e: $c7
    sub e                                         ; $526f: $93
    db $e4                                        ; $5270: $e4
    cp $d2                                        ; $5271: $fe $d2
    ret nc                                        ; $5273: $d0

    inc h                                         ; $5274: $24
    dec e                                         ; $5275: $1d
    ld a, [de]                                    ; $5276: $1a
    ld a, [de]                                    ; $5277: $1a
    daa                                           ; $5278: $27
    inc hl                                        ; $5279: $23
    daa                                           ; $527a: $27
    ld hl, $9b1b                                  ; $527b: $21 $1b $9b
    and c                                         ; $527e: $a1
    ld h, h                                       ; $527f: $64
    rst $00                                       ; $5280: $c7
    ld l, $a3                                     ; $5281: $2e $a3
    ld [de], a                                    ; $5283: $12
    rst $00                                       ; $5284: $c7
    dec [hl]                                      ; $5285: $35
    db $dd                                        ; $5286: $dd
    and e                                         ; $5287: $a3
    ld l, b                                       ; $5288: $68
    jp hl                                         ; $5289: $e9


    ld c, $89                                     ; $528a: $0e $89
    call nz, Call_000_2126                        ; $528c: $c4 $26 $21
    ld e, $b7                                     ; $528f: $1e $b7
    ret nz                                        ; $5291: $c0

jr_071_5292:
    nop                                           ; $5292: $00
    and c                                         ; $5293: $a1
    dec l                                         ; $5294: $2d
    add h                                         ; $5295: $84
    ld d, $a0                                     ; $5296: $16 $a0
    rla                                           ; $5298: $17
    dec e                                         ; $5299: $1d
    ld a, [de]                                    ; $529a: $1a
    daa                                           ; $529b: $27
    ld l, $a1                                     ; $529c: $2e $a1
    daa                                           ; $529e: $27
    xor l                                         ; $529f: $ad
    add c                                         ; $52a0: $81
    ld l, $82                                     ; $52a1: $2e $82
    cp c                                          ; $52a3: $b9
    add l                                         ; $52a4: $85
    inc c                                         ; $52a5: $0c
    ld l, b                                       ; $52a6: $68
    rst $20                                       ; $52a7: $e7
    rra                                           ; $52a8: $1f
    rst $20                                       ; $52a9: $e7
    inc h                                         ; $52aa: $24
    inc hl                                        ; $52ab: $23
    or a                                          ; $52ac: $b7
    ret nz                                        ; $52ad: $c0

    nop                                           ; $52ae: $00
    and c                                         ; $52af: $a1
    sbc h                                         ; $52b0: $9c
    and h                                         ; $52b1: $a4
    dec bc                                        ; $52b2: $0b
    add b                                         ; $52b3: $80
    ld [hl], a                                    ; $52b4: $77
    dec e                                         ; $52b5: $1d
    ld a, [de]                                    ; $52b6: $1a
    dec de                                        ; $52b7: $1b
    ld l, l                                       ; $52b8: $6d
    ldh [rNR30], a                                ; $52b9: $e0 $1a
    ld a, [de]                                    ; $52bb: $1a
    dec e                                         ; $52bc: $1d
    ld [c], a                                     ; $52bd: $e2
    add b                                         ; $52be: $80
    jr jr_071_52c1                                ; $52bf: $18 $00

jr_071_52c1:
    ret                                           ; $52c1: $c9


    ld l, b                                       ; $52c2: $68
    add sp, $1f                                   ; $52c3: $e8 $1f
    rst $20                                       ; $52c5: $e7
    ld h, $25                                     ; $52c6: $26 $25
    or a                                          ; $52c8: $b7
    ret nz                                        ; $52c9: $c0

    nop                                           ; $52ca: $00
    and h                                         ; $52cb: $a4
    ld d, c                                       ; $52cc: $51
    add c                                         ; $52cd: $81
    jr jr_071_5292                                ; $52ce: $18 $c2

    ld h, b                                       ; $52d0: $60
    dec h                                         ; $52d1: $25
    pop bc                                        ; $52d2: $c1
    ld l, [hl]                                    ; $52d3: $6e
    add b                                         ; $52d4: $80
    ld e, $21                                     ; $52d5: $1e $21
    db $ec                                        ; $52d7: $ec
    add b                                         ; $52d8: $80
    cp b                                          ; $52d9: $b8
    ld h, c                                       ; $52da: $61
    pop hl                                        ; $52db: $e1
    ld h, l                                       ; $52dc: $65
    ld [$e868], sp                                ; $52dd: $08 $68 $e8
    rra                                           ; $52e0: $1f
    ld [$e0bd], a                                 ; $52e1: $ea $bd $e0
    ld h, $d6                                     ; $52e4: $26 $d6
    ld l, c                                       ; $52e6: $69
    dec h                                         ; $52e7: $25
    pop bc                                        ; $52e8: $c1
    ld l, [hl]                                    ; $52e9: $6e
    add b                                         ; $52ea: $80
    sub e                                         ; $52eb: $93
    and l                                         ; $52ec: $a5
    nop                                           ; $52ed: $00
    pop hl                                        ; $52ee: $e1
    ld h, [hl]                                    ; $52ef: $66
    ld l, b                                       ; $52f0: $68
    add sp, $1f                                   ; $52f1: $e8 $1f
    and $27                                       ; $52f3: $e6 $27
    add l                                         ; $52f5: $85
    sub $64                                       ; $52f6: $d6 $64
    ccf                                           ; $52f8: $3f
    ld h, d                                       ; $52f9: $62
    dec h                                         ; $52fa: $25
    pop bc                                        ; $52fb: $c1
    ld l, [hl]                                    ; $52fc: $6e
    add b                                         ; $52fd: $80
    nop                                           ; $52fe: $00
    ld h, e                                       ; $52ff: $63
    add b                                         ; $5300: $80
    add hl, hl                                    ; $5301: $29
    ld h, d                                       ; $5302: $62
    pop hl                                        ; $5303: $e1
    ld h, l                                       ; $5304: $65
    ld l, b                                       ; $5305: $68
    jp hl                                         ; $5306: $e9


    rra                                           ; $5307: $1f
    and $1c                                       ; $5308: $e6 $1c
    ld h, d                                       ; $530a: $62
    ld c, h                                       ; $530b: $4c
    ld h, c                                       ; $530c: $61
    cp $43                                        ; $530d: $fe $43
    nop                                           ; $530f: $00
    ccf                                           ; $5310: $3f
    ld h, b                                       ; $5311: $60
    push af                                       ; $5312: $f5
    ld b, c                                       ; $5313: $41
    ld l, [hl]                                    ; $5314: $6e
    ld [c], a                                     ; $5315: $e2
    ld e, a                                       ; $5316: $5f
    ld h, l                                       ; $5317: $65
    pop hl                                        ; $5318: $e1
    ld h, h                                       ; $5319: $64
    ld l, b                                       ; $531a: $68
    ld [$e61f], a                                 ; $531b: $ea $1f $e6
    daa                                           ; $531e: $27
    add e                                         ; $531f: $83
    inc bc                                        ; $5320: $03
    ld l, $2f                                     ; $5321: $2e $2f
    or b                                          ; $5323: $b0
    add h                                         ; $5324: $84
    ret                                           ; $5325: $c9


jr_071_5326:
    ld b, b                                       ; $5326: $40
    ld e, e                                       ; $5327: $5b
    adc c                                         ; $5328: $89
    inc b                                         ; $5329: $04
    add d                                         ; $532a: $82
    pop hl                                        ; $532b: $e1
    ld h, [hl]                                    ; $532c: $66

jr_071_532d:
    ld l, b                                       ; $532d: $68
    rst $20                                       ; $532e: $e7
    jr jr_071_5377                                ; $532f: $18 $46

    ld h, b                                       ; $5331: $60
    rra                                           ; $5332: $1f
    and $85                                       ; $5333: $e6 $85
    ld b, c                                       ; $5335: $41
    jr nc, @+$33                                  ; $5336: $30 $31

    or b                                          ; $5338: $b0
    add a                                         ; $5339: $87
    ld e, e                                       ; $533a: $5b
    add h                                         ; $533b: $84
    add $42                                       ; $533c: $c6 $42
    ret nz                                        ; $533e: $c0

    ld e, a                                       ; $533f: $5f
    ld h, e                                       ; $5340: $63
    pop hl                                        ; $5341: $e1
    ld h, a                                       ; $5342: $67
    ld l, b                                       ; $5343: $68
    push hl                                       ; $5344: $e5
    ld c, d                                       ; $5345: $4a
    pop bc                                        ; $5346: $c1
    or a                                          ; $5347: $b7
    db $e3                                        ; $5348: $e3
    add l                                         ; $5349: $85
    ld b, e                                       ; $534a: $43
    ld [hl-], a                                   ; $534b: $32
    inc sp                                        ; $534c: $33
    nop                                           ; $534d: $00
    or b                                          ; $534e: $b0
    add l                                         ; $534f: $85
    dec hl                                        ; $5350: $2b
    ld h, l                                       ; $5351: $65
    add $40                                       ; $5352: $c6 $40
    inc c                                         ; $5354: $0c
    ld h, b                                       ; $5355: $60
    and a                                         ; $5356: $a7

jr_071_5357:
    ld h, e                                       ; $5357: $63
    ld a, e                                       ; $5358: $7b
    ld b, b                                       ; $5359: $40
    ld e, e                                       ; $535a: $5b
    adc l                                         ; $535b: $8d
    rra                                           ; $535c: $1f
    push hl                                       ; $535d: $e5
    ld h, b                                       ; $535e: $60
    add l                                         ; $535f: $85
    ld b, [hl]                                    ; $5360: $46
    dec e                                         ; $5361: $1d
    and a                                         ; $5362: $a7
    dec hl                                        ; $5363: $2b
    ld h, c                                       ; $5364: $61
    pop de                                        ; $5365: $d1
    ld b, d                                       ; $5366: $42
    ld bc, $3645                                  ; $5367: $01 $45 $36
    scf                                           ; $536a: $37
    ld e, e                                       ; $536b: $5b
    adc b                                         ; $536c: $88
    nop                                           ; $536d: $00
    ld d, d                                       ; $536e: $52
    ld b, b                                       ; $536f: $40
    dec sp                                        ; $5370: $3b
    ld l, c                                       ; $5371: $69
    and h                                         ; $5372: $a4
    add $b0                                       ; $5373: $c6 $b0
    add h                                         ; $5375: $84
    sbc b                                         ; $5376: $98

jr_071_5377:
    ld b, h                                       ; $5377: $44
    add $22                                       ; $5378: $c6 $22
    cp b                                          ; $537a: $b8
    jr nz, jr_071_532d                            ; $537b: $20 $b0

    jr nz, @+$12                                  ; $537d: $20 $10

    add [hl]                                      ; $537f: $86
    ld b, c                                       ; $5380: $41
    ld e, e                                       ; $5381: $5b
    add a                                         ; $5382: $87
    cpl                                           ; $5383: $2f
    ld b, b                                       ; $5384: $40
    dec sp                                        ; $5385: $3b
    ld l, b                                       ; $5386: $68
    dec [hl]                                      ; $5387: $35
    and h                                         ; $5388: $a4
    rst $00                                       ; $5389: $c7
    or d                                          ; $538a: $b2
    ld b, h                                       ; $538b: $44
    adc l                                         ; $538c: $8d
    ld hl, $7b0c                                  ; $538d: $21 $0c $7b
    jr nz, jr_071_5357                            ; $5390: $20 $c5

    db $e3                                        ; $5392: $e3
    add hl, de                                    ; $5393: $19
    dec [hl]                                      ; $5394: $35
    or b                                          ; $5395: $b0
    jr nz, jr_071_5413                            ; $5396: $20 $7b

    ld hl, $8a5b                                  ; $5398: $21 $5b $8a
    dec sp                                        ; $539b: $3b
    ld h, a                                       ; $539c: $67
    ret nz                                        ; $539d: $c0

    ld [c], a                                     ; $539e: $e2
    jr nz, jr_071_5326                            ; $539f: $20 $85

    ld b, h                                       ; $53a1: $44
    and a                                         ; $53a2: $a7
    ld b, [hl]                                    ; $53a3: $46
    adc l                                         ; $53a4: $8d
    ld hl, $634d                                  ; $53a5: $21 $4d $63
    ld [hl], l                                    ; $53a8: $75
    jr nz, @+$38                                  ; $53a9: $20 $36

    scf                                           ; $53ab: $37
    nop                                           ; $53ac: $00
    ld a, [hl-]                                   ; $53ad: $3a
    jr nz, jr_071_53e2                            ; $53ae: $20 $32

    ld hl, $8a5b                                  ; $53b0: $21 $5b $8a
    dec sp                                        ; $53b3: $3b
    ld l, b                                       ; $53b4: $68
    and h                                         ; $53b5: $a4
    add $a7                                       ; $53b6: $c6 $a7
    ld b, e                                       ; $53b8: $43
    ld d, e                                       ; $53b9: $53
    ld [hl+], a                                   ; $53ba: $22
    set 4, d                                      ; $53bb: $cb $e2
    add b                                         ; $53bd: $80
    dec sp                                        ; $53be: $3b
    jr nz, jr_071_5436                            ; $53bf: $20 $75

    add hl, hl                                    ; $53c1: $29
    ld e, e                                       ; $53c2: $5b
    adc b                                         ; $53c3: $88
    or b                                          ; $53c4: $b0
    ld b, [hl]                                    ; $53c5: $46
    ld b, $6a                                     ; $53c6: $06 $6a
    inc e                                         ; $53c8: $1c
    ld b, d                                       ; $53c9: $42
    ld d, e                                       ; $53ca: $53
    add hl, hl                                    ; $53cb: $29
    ld d, $5d                                     ; $53cc: $16 $5d
    ld d, $fc                                     ; $53ce: $16 $fc
    ldh [rNR23], a                                ; $53d0: $e0 $18
    inc d                                         ; $53d2: $14
    inc d                                         ; $53d3: $14
    ld sp, hl                                     ; $53d4: $f9
    ldh [$34], a                                  ; $53d5: $e0 $34
    ld a, l                                       ; $53d7: $7d
    ld b, b                                       ; $53d8: $40
    and b                                         ; $53d9: $a0
    ld e, e                                       ; $53da: $5b
    add a                                         ; $53db: $87
    or b                                          ; $53dc: $b0
    ld b, e                                       ; $53dd: $43
    rlc h                                         ; $53de: $cb $04
    ld b, $66                                     ; $53e0: $06 $66

jr_071_53e2:
    and a                                         ; $53e2: $a7
    ld b, [hl]                                    ; $53e3: $46
    ld d, $ce                                     ; $53e4: $16 $ce
    ldh [rNR21], a                                ; $53e6: $e0 $16
    rst $18                                       ; $53e8: $df
    inc d                                         ; $53e9: $14
    inc d                                         ; $53ea: $14
    inc d                                         ; $53eb: $14
    inc de                                        ; $53ec: $13
    inc de                                        ; $53ed: $13
    db $fc                                        ; $53ee: $fc
    ldh [rNR11], a                                ; $53ef: $e0 $11
    ld de, $110f                                  ; $53f1: $11 $0f $11
    inc de                                        ; $53f4: $13
    jr @+$18                                      ; $53f5: $18 $16

    xor e                                         ; $53f7: $ab
    ld bc, $875b                                  ; $53f8: $01 $5b $87
    sbc $07                                       ; $53fb: $de $07
    ld b, $69                                     ; $53fd: $06 $69
    inc e                                         ; $53ff: $1c
    cp a                                          ; $5400: $bf
    inc hl                                        ; $5401: $23
    rst $00                                       ; $5402: $c7
    ldh [rNR13], a                                ; $5403: $e0 $13
    ld de, $fc13                                  ; $5405: $11 $13 $fc
    pop hl                                        ; $5408: $e1
    push bc                                       ; $5409: $c5
    pop hl                                        ; $540a: $e1
    jp nz, Jump_000_1fe0                          ; $540b: $c2 $e0 $1f

    ld c, $10                                     ; $540e: $0e $10
    ld de, $1511                                  ; $5410: $11 $11 $15

jr_071_5413:
    dec [hl]                                      ; $5413: $35
    ld bc, $895b                                  ; $5414: $01 $5b $89
    add e                                         ; $5417: $83
    rlca                                          ; $5418: $07
    ret nc                                        ; $5419: $d0

    ld b, $68                                     ; $541a: $06 $68
    add e                                         ; $541c: $83
    db $e4                                        ; $541d: $e4
    rst $38                                       ; $541e: $ff
    pop hl                                        ; $541f: $e1
    add l                                         ; $5420: $85
    ldh [rNR21], a                                ; $5421: $e0 $16
    or [hl]                                       ; $5423: $b6
    ld [c], a                                     ; $5424: $e2
    db $10                                        ; $5425: $10
    ld [bc], a                                    ; $5426: $02
    rra                                           ; $5427: $1f
    inc bc                                        ; $5428: $03
    inc bc                                        ; $5429: $03
    ld [de], a                                    ; $542a: $12
    ld de, $3613                                  ; $542b: $11 $13 $36
    ldh [$ce], a                                  ; $542e: $e0 $ce
    xor d                                         ; $5430: $aa
    ld de, $e245                                  ; $5431: $11 $45 $e2
    ld b, $69                                     ; $5434: $06 $69

jr_071_5436:
    inc [hl]                                      ; $5436: $34
    add h                                         ; $5437: $84
    ld bc, $44a2                                  ; $5438: $01 $a2 $44
    dec b                                         ; $543b: $05
    pop hl                                        ; $543c: $e1
    dec [hl]                                      ; $543d: $35
    add hl, de                                    ; $543e: $19
    ld d, $ff                                     ; $543f: $16 $ff
    inc de                                        ; $5441: $13
    ld de, $0004                                  ; $5442: $11 $04 $00
    nop                                           ; $5445: $00
    nop                                           ; $5446: $00
    dec b                                         ; $5447: $05

jr_071_5448:
    db $10                                        ; $5448: $10
    ld b, b                                       ; $5449: $40
    ld a, a                                       ; $544a: $7f
    ldh [$3b], a                                  ; $544b: $e0 $3b
    ld b, d                                       ; $544d: $42
    cp l                                          ; $544e: $bd
    ld h, h                                       ; $544f: $64
    ld de, $0644                                  ; $5450: $11 $44 $06
    ld l, e                                       ; $5453: $6b
    call nz, Call_000_34c7                        ; $5454: $c4 $c7 $34
    ld a, $82                                     ; $5457: $3e $82
    ld b, $b6                                     ; $5459: $06 $b6
    ret nz                                        ; $545b: $c0

    rla                                           ; $545c: $17
    ld de, $e4c0                                  ; $545d: $11 $c0 $e4
    add b                                         ; $5460: $80
    ldh [$28], a                                  ; $5461: $e0 $28
    ld [bc], a                                    ; $5463: $02
    inc b                                         ; $5464: $04
    inc hl                                        ; $5465: $23
    ld de, $cc45                                  ; $5466: $11 $45 $cc
    ld b, $71                                     ; $5469: $06 $71
    nop                                           ; $546b: $00
    ld b, e                                       ; $546c: $43
    ld a, [hl+]                                   ; $546d: $2a
    dec hl                                        ; $546e: $2b
    ld a, [de]                                    ; $546f: $1a
    ld b, d                                       ; $5470: $42
    add b                                         ; $5471: $80
    ldh [rNR10], a                                ; $5472: $e0 $10
    ld bc, $039f                                  ; $5474: $01 $9f $03
    ld [$1112], sp                                ; $5477: $08 $12 $11
    rla                                           ; $547a: $17
    push af                                       ; $547b: $f5
    add h                                         ; $547c: $84
    ld e, l                                       ; $547d: $5d
    pop bc                                        ; $547e: $c1
    inc [hl]                                      ; $547f: $34
    add b                                         ; $5480: $80
    ld de, $bc46                                  ; $5481: $11 $46 $bc
    add h                                         ; $5484: $84
    ld b, $65                                     ; $5485: $06 $65
    jr nz, @+$26                                  ; $5487: $20 $24

    cp e                                          ; $5489: $bb
    ld bc, $604f                                  ; $548a: $01 $4f $60
    cp c                                          ; $548d: $b9
    jr nz, jr_071_54b8                            ; $548e: $20 $28

jr_071_5490:
    dec b                                         ; $5490: $05
    add hl, hl                                    ; $5491: $29
    cp a                                          ; $5492: $bf
    pop hl                                        ; $5493: $e1
    ld c, $7f                                     ; $5494: $0e $7f
    ret nz                                        ; $5496: $c0

    ld bc, $a2e2                                  ; $5497: $01 $e2 $a2
    nop                                           ; $549a: $00
    ld a, c                                       ; $549b: $79
    inc bc                                        ; $549c: $03
    ld de, $0045                                  ; $549d: $11 $45 $00
    ld c, c                                       ; $54a0: $49
    ld h, h                                       ; $54a1: $64
    ld b, $64                                     ; $54a2: $06 $64
    or e                                          ; $54a4: $b3
    dec b                                         ; $54a5: $05
    cp e                                          ; $54a6: $bb
    inc b                                         ; $54a7: $04
    ld [hl], h                                    ; $54a8: $74
    nop                                           ; $54a9: $00
    ld b, a                                       ; $54aa: $47
    and b                                         ; $54ab: $a0
    cp $c0                                        ; $54ac: $fe $c0
    pop bc                                        ; $54ae: $c1
    pop hl                                        ; $54af: $e1
    inc bc                                        ; $54b0: $03
    jr z, @+$2b                                   ; $54b1: $28 $29

    adc d                                         ; $54b3: $8a
    jr nz, jr_071_5490                            ; $54b4: $20 $da

    ld h, b                                       ; $54b6: $60
    ld e, l                                       ; $54b7: $5d

jr_071_54b8:
    jp Jump_071_4511                              ; $54b8: $c3 $11 $45


    jr nc, jr_071_5448                            ; $54bb: $30 $8b

    jr nz, @+$2a                                  ; $54bd: $20 $28

    inc e                                         ; $54bf: $1c
    sub [hl]                                      ; $54c0: $96
    ld bc, $60ac                                  ; $54c1: $01 $ac $60
    inc l                                         ; $54c4: $2c
    dec l                                         ; $54c5: $2d
    inc [hl]                                      ; $54c6: $34
    ld hl, sp-$5e                                 ; $54c7: $f8 $a2
    ld [bc], a                                    ; $54c9: $02
    jp nz, Jump_000_089b                          ; $54ca: $c2 $9b $08

    db $10                                        ; $54cd: $10
    ld de, $8945                                  ; $54ce: $11 $45 $89
    rlca                                          ; $54d1: $07
    ld c, $61                                     ; $54d2: $0e $61
    inc bc                                        ; $54d4: $03
    add [hl]                                      ; $54d5: $86
    dec [hl]                                      ; $54d6: $35
    and d                                         ; $54d7: $a2
    adc e                                         ; $54d8: $8b
    ld a, a                                       ; $54d9: $7f
    inc b                                         ; $54da: $04
    ld sp, $8029                                  ; $54db: $31 $29 $80
    ld de, $1f44                                  ; $54de: $11 $44 $1f
    daa                                           ; $54e1: $27
    ret nc                                        ; $54e2: $d0

    pop bc                                        ; $54e3: $c1
    or e                                          ; $54e4: $b3
    dec b                                         ; $54e5: $05
    ld a, $a0                                     ; $54e6: $3e $a0
    add d                                         ; $54e8: $82
    ld h, e                                       ; $54e9: $63
    or $81                                        ; $54ea: $f6 $81
    ld [hl], $01                                  ; $54ec: $36 $01
    scf                                           ; $54ee: $37
    or e                                          ; $54ef: $b3
    ld b, b                                       ; $54f0: $40
    adc $02                                       ; $54f1: $ce $02
    ld sp, $1129                                  ; $54f3: $31 $29 $11
    ld b, h                                       ; $54f6: $44
    rra                                           ; $54f7: $1f
    daa                                           ; $54f8: $27
    ret c                                         ; $54f9: $d8

    add d                                         ; $54fa: $82
    jr nz, @+$29                                  ; $54fb: $20 $27

    nop                                           ; $54fd: $00
    and d                                         ; $54fe: $a2
    add d                                         ; $54ff: $82
    add e                                         ; $5500: $83
    ld h, e                                       ; $5501: $63
    inc d                                         ; $5502: $14
    and l                                         ; $5503: $a5
    ld sp, $9d29                                  ; $5504: $31 $29 $9d
    add c                                         ; $5507: $81
    ld de, $1f41                                  ; $5508: $11 $41 $1f
    dec l                                         ; $550b: $2d
    ld a, $a4                                     ; $550c: $3e $a4
    nop                                           ; $550e: $00
    and d                                         ; $550f: $a2
    add a                                         ; $5510: $87
    ld [hl], l                                    ; $5511: $75
    rst $00                                       ; $5512: $c7
    ld sp, $9d29                                  ; $5513: $31 $29 $9d
    add [hl]                                      ; $5516: $86
    rra                                           ; $5517: $1f
    daa                                           ; $5518: $27
    inc h                                         ; $5519: $24
    ld h, a                                       ; $551a: $67
    ld [hl+], a                                   ; $551b: $22
    nop                                           ; $551c: $00
    ld d, d                                       ; $551d: $52
    daa                                           ; $551e: $27
    nop                                           ; $551f: $00
    ld [hl], l                                    ; $5520: $75
    rst $00                                       ; $5521: $c7
    ld sp, $182a                                  ; $5522: $31 $2a $18

jr_071_5525:
    ld b, l                                       ; $5525: $45
    rra                                           ; $5526: $1f
    ld h, $e4                                     ; $5527: $26 $e4
    ret                                           ; $5529: $c9


    ld d, d                                       ; $552a: $52
    dec hl                                        ; $552b: $2b
    cp c                                          ; $552c: $b9
    and $31                                       ; $552d: $e6 $31

jr_071_552f:
    add hl, hl                                    ; $552f: $29
    nop                                           ; $5530: $00
    dec [hl]                                      ; $5531: $35
    dec h                                         ; $5532: $25
    rra                                           ; $5533: $1f
    ld h, $e4                                     ; $5534: $26 $e4
    ret                                           ; $5536: $c9


    ld d, d                                       ; $5537: $52
    dec hl                                        ; $5538: $2b
    xor e                                         ; $5539: $ab
    ld h, [hl]                                    ; $553a: $66
    ld sp, $9128                                  ; $553b: $31 $28 $91
    ld b, [hl]                                    ; $553e: $46
    rra                                           ; $553f: $1f
    dec h                                         ; $5540: $25
    nop                                           ; $5541: $00
    db $e4                                        ; $5542: $e4
    ret                                           ; $5543: $c9


    xor [hl]                                      ; $5544: $ae
    ld c, l                                       ; $5545: $4d
    xor e                                         ; $5546: $ab
    ld h, l                                       ; $5547: $65
    ret                                           ; $5548: $c9


    add hl, hl                                    ; $5549: $29
    dec [hl]                                      ; $554a: $35
    dec h                                         ; $554b: $25
    rra                                           ; $554c: $1f
    dec h                                         ; $554d: $25
    db $e4                                        ; $554e: $e4
    ret z                                         ; $554f: $c8

    or $04                                        ; $5550: $f6 $04
    nop                                           ; $5552: $00
    xor [hl]                                      ; $5553: $ae
    ld b, a                                       ; $5554: $47
    rla                                           ; $5555: $17

jr_071_5556:
    ld h, a                                       ; $5556: $67
    ret                                           ; $5557: $c9


    daa                                           ; $5558: $27
    dec [hl]                                      ; $5559: $35
    dec h                                         ; $555a: $25
    rra                                           ; $555b: $1f
    daa                                           ; $555c: $27
    or $0b                                        ; $555d: $f6 $0b
    ld d, d                                       ; $555f: $52
    jr z, jr_071_5525                             ; $5560: $28 $c3

    inc hl                                        ; $5562: $23
    nop                                           ; $5563: $00
    ld a, c                                       ; $5564: $79
    ld b, d                                       ; $5565: $42
    ld h, h                                       ; $5566: $64
    add l                                         ; $5567: $85
    db $e3                                        ; $5568: $e3
    add sp, $1f                                   ; $5569: $e8 $1f
    ld h, $f6                                     ; $556b: $26 $f6
    inc c                                         ; $556d: $0c
    ld [hl], $c5                                  ; $556e: $36 $c5
    ld l, e                                       ; $5570: $6b
    push bc                                       ; $5571: $c5
    ld a, c                                       ; $5572: $79
    ld b, d                                       ; $5573: $42
    nop                                           ; $5574: $00
    ld h, b                                       ; $5575: $60
    ld b, a                                       ; $5576: $47
    dec [hl]                                      ; $5577: $35
    daa                                           ; $5578: $27
    nop                                           ; $5579: $00
    ld b, h                                       ; $557a: $44
    db $e4                                        ; $557b: $e4
    rst $00                                       ; $557c: $c7
    ld h, c                                       ; $557d: $61
    add hl, hl                                    ; $557e: $29
    adc a                                         ; $557f: $8f
    daa                                           ; $5580: $27
    ld a, c                                       ; $5581: $79

Call_071_5582:
    ld b, d                                       ; $5582: $42
    and b                                         ; $5583: $a0
    add l                                         ; $5584: $85
    nop                                           ; $5585: $00
    cp $ec                                        ; $5586: $fe $ec
    db $e4                                        ; $5588: $e4
    jp z, $21fd                                   ; $5589: $ca $fd $21

    ld a, [hl]                                    ; $558c: $7e
    ld h, e                                       ; $558d: $63
    cp [hl]                                       ; $558e: $be
    ld h, b                                       ; $558f: $60
    db $e4                                        ; $5590: $e4
    ld c, c                                       ; $5591: $49
    and b                                         ; $5592: $a0
    adc b                                         ; $5593: $88
    ld h, d                                       ; $5594: $62
    inc h                                         ; $5595: $24
    nop                                           ; $5596: $00
    sub h                                         ; $5597: $94
    ld [$c7f6], a                                 ; $5598: $ea $f6 $c7
    ld c, c                                       ; $559b: $49
    dec b                                         ; $559c: $05
    adc e                                         ; $559d: $8b
    jr nz, jr_071_552f                            ; $559e: $20 $8f

    jr z, @+$2c                                   ; $55a0: $28 $2a

    ld h, c                                       ; $55a2: $61
    and b                                         ; $55a3: $a0
    add l                                         ; $55a4: $85
    xor $05                                       ; $55a5: $ee $05
    nop                                           ; $55a7: $00
    ld a, [$69f1]                                 ; $55a8: $fa $f1 $69
    daa                                           ; $55ab: $27
    cp e                                          ; $55ac: $bb
    and b                                         ; $55ad: $a0
    adc a                                         ; $55ae: $8f
    add hl, hl                                    ; $55af: $29
    ld h, h                                       ; $55b0: $64
    jr nz, jr_071_5556                            ; $55b1: $20 $a3

    dec b                                         ; $55b3: $05
    ldh [$60], a                                  ; $55b4: $e0 $60
    jp nz, $000a                                  ; $55b6: $c2 $0a $00

    ld b, [hl]                                    ; $55b9: $46
    and h                                         ; $55ba: $a4
    dec bc                                        ; $55bb: $0b
    ld h, d                                       ; $55bc: $62

jr_071_55bd:
    ld l, c                                       ; $55bd: $69
    ld hl, $6104                                  ; $55be: $21 $04 $61
    adc a                                         ; $55c1: $8f
    dec l                                         ; $55c2: $2d
    cp c                                          ; $55c3: $b9
    and d                                         ; $55c4: $a2
    and b                                         ; $55c5: $a0
    add a                                         ; $55c6: $87
    jp nz, $8008                                  ; $55c7: $c2 $08 $80

    ld l, d                                       ; $55ca: $6a
    ld [$00d8], sp                                ; $55cb: $08 $d8 $00
    cp a                                          ; $55ce: $bf
    add c                                         ; $55cf: $81
    and e                                         ; $55d0: $a3
    ld h, $e4                                     ; $55d1: $26 $e4
    ld c, c                                       ; $55d3: $49
    ret nc                                        ; $55d4: $d0

    inc bc                                        ; $55d5: $03
    and b                                         ; $55d6: $a0
    add e                                         ; $55d7: $83
    dec [hl]                                      ; $55d8: $35
    nop                                           ; $55d9: $00
    jp nz, $bf08                                  ; $55da: $c2 $08 $bf

    add hl, hl                                    ; $55dd: $29
    inc de                                        ; $55de: $13
    inc h                                         ; $55df: $24
    inc c                                         ; $55e0: $0c
    daa                                           ; $55e1: $27
    db $e4                                        ; $55e2: $e4
    ld c, b                                       ; $55e3: $48
    ret nc                                        ; $55e4: $d0

    ld [$201e], sp                                ; $55e5: $08 $1e $20
    jp nz, RST_08                                 ; $55e8: $c2 $08 $00

    cp a                                          ; $55eb: $bf
    cpl                                           ; $55ec: $2f
    rst $10                                       ; $55ed: $d7
    and h                                         ; $55ee: $a4
    db $e4                                        ; $55ef: $e4
    ld c, d                                       ; $55f0: $4a
    ldh a, [$ac]                                  ; $55f1: $f0 $ac
    rst $38                                       ; $55f3: $ff
    xor b                                         ; $55f4: $a8
    ld l, d                                       ; $55f5: $6a
    ld a, [bc]                                    ; $55f6: $0a
    jr nc, jr_071_55bd                            ; $55f7: $30 $c4

    ld h, a                                       ; $55f9: $67
    rst $08                                       ; $55fa: $cf
    nop                                           ; $55fb: $00
    ld l, e                                       ; $55fc: $6b
    ld [bc], a                                    ; $55fd: $02
    call nc, Call_071_6a09                        ; $55fe: $d4 $09 $6a
    ld de, $463e                                  ; $5601: $11 $3e $46
    call c, $d4b1                                 ; $5604: $dc $b1 $d4
    inc c                                         ; $5607: $0c
    ld b, $c7                                     ; $5608: $06 $c7
    cp a                                          ; $560a: $bf
    jr z, jr_071_560d                             ; $560b: $28 $00

jr_071_560d:
    sbc [hl]                                      ; $560d: $9e
    or h                                          ; $560e: $b4
    ret nc                                        ; $560f: $d0

    ld h, l                                       ; $5610: $65
    dec d                                         ; $5611: $15
    rst $28                                       ; $5612: $ef
    cp a                                          ; $5613: $bf
    inc l                                         ; $5614: $2c
    ld a, $48                                     ; $5615: $3e $48
    scf                                           ; $5617: $37
    xor l                                         ; $5618: $ad
    daa                                           ; $5619: $27
    ld b, c                                       ; $561a: $41
    dec d                                         ; $561b: $15
    xor $00                                       ; $561c: $ee $00
    db $db                                        ; $561e: $db
    call Call_071_453e                            ; $561f: $cd $3e $45
    ld e, [hl]                                    ; $5622: $5e
    xor h                                         ; $5623: $ac
    ret nc                                        ; $5624: $d0

    ld h, l                                       ; $5625: $65
    call nc, Call_071_420a                        ; $5626: $d4 $0a $42
    or c                                          ; $5629: $b1
    ld a, $45                                     ; $562a: $3e $45
    ld a, $20                                     ; $562c: $3e $20
    nop                                           ; $562e: $00
    cp l                                          ; $562f: $bd
    inc bc                                        ; $5630: $03
    ld a, [c]                                     ; $5631: $f2
    inc bc                                        ; $5632: $03
    or e                                          ; $5633: $b3
    ld h, l                                       ; $5634: $65
    call nc, Call_000_000e                        ; $5635: $d4 $0e $00
    nop                                           ; $5638: $00
    nop                                           ; $5639: $00
    ld sp, hl                                     ; $563a: $f9
    nop                                           ; $563b: $00
    rst $38                                       ; $563c: $ff
    rst $38                                       ; $563d: $ff
    xor $ed                                       ; $563e: $ee $ed
    ld d, $10                                     ; $5640: $16 $10
    rla                                           ; $5642: $17
    ld h, $20                                     ; $5643: $26 $20
    rrca                                          ; $5645: $0f
    daa                                           ; $5646: $27
    jr nc, jr_071_567f                            ; $5647: $30 $36

    scf                                           ; $5649: $37
    push de                                       ; $564a: $d5
    rst $38                                       ; $564b: $ff
    rst $38                                       ; $564c: $ff
    rst $38                                       ; $564d: $ff
    rst $38                                       ; $564e: $ff
    rst $38                                       ; $564f: $ff
    rst $38                                       ; $5650: $ff
    rst $38                                       ; $5651: $ff
    nop                                           ; $5652: $00
    rst $38                                       ; $5653: $ff
    rst $38                                       ; $5654: $ff
    rst $38                                       ; $5655: $ff
    rst $30                                       ; $5656: $f7
    nop                                           ; $5657: $00
    nop                                           ; $5658: $00
    nop                                           ; $5659: $00
    rst $38                                       ; $565a: $ff
    rst $38                                       ; $565b: $ff
    rst $38                                       ; $565c: $ff
    ld h, l                                       ; $565d: $65
    ld d, [hl]                                    ; $565e: $56
    ld c, d                                       ; $565f: $4a
    ld e, d                                       ; $5660: $5a
    ld d, e                                       ; $5661: $53
    ld e, a                                       ; $5662: $5f
    ld [hl], d                                    ; $5663: $72
    ld e, a                                       ; $5664: $5f
    ccf                                           ; $5665: $3f
    ld c, $0e                                     ; $5666: $0e $0e
    dec c                                         ; $5668: $0d
    dec c                                         ; $5669: $0d
    dec c                                         ; $566a: $0d
    ld c, $ff                                     ; $566b: $0e $ff
    db $e3                                        ; $566d: $e3
    or $f4                                        ; $566e: $f6 $f4
    ccf                                           ; $5670: $3f
    dec c                                         ; $5671: $0d
    ld c, l                                       ; $5672: $4d
    ld c, l                                       ; $5673: $4d
    ld c, l                                       ; $5674: $4d
    dec c                                         ; $5675: $0d
    inc c                                         ; $5676: $0c
    rst $38                                       ; $5677: $ff
    db $f4                                        ; $5678: $f4
    ret                                           ; $5679: $c9


    pop hl                                        ; $567a: $e1
    adc b                                         ; $567b: $88
    jp $f6e3                                      ; $567c: $c3 $e3 $f6


jr_071_567f:
    push af                                       ; $567f: $f5
    and c                                         ; $5680: $a1
    pop hl                                        ; $5681: $e1
    dec c                                         ; $5682: $0d
    ret nz                                        ; $5683: $c0

    ld sp, hl                                     ; $5684: $f9
    add l                                         ; $5685: $85
    ld hl, sp+$67                                 ; $5686: $f8 $67
    ld [c], a                                     ; $5688: $e2
    ld c, l                                       ; $5689: $4d
    db $10                                        ; $568a: $10
    ld a, a                                       ; $568b: $7f
    ldh [$c0], a                                  ; $568c: $e0 $c0
    ld a, [$f685]                                 ; $568e: $fa $85 $f6
    ld a, [hl+]                                   ; $5691: $2a
    db $e3                                        ; $5692: $e3
    ld c, l                                       ; $5693: $4d
    cp l                                          ; $5694: $bd
    pop hl                                        ; $5695: $e1
    ld b, b                                       ; $5696: $40
    rst $30                                       ; $5697: $f7
    nop                                           ; $5698: $00
    cp $60                                        ; $5699: $fe $60
    ret nz                                        ; $569b: $c0

    ldh [rLCDC], a                                ; $569c: $e0 $40
    ld a, [$ff00]                                 ; $569e: $fa $00 $ff
    add b                                         ; $56a1: $80
    ld a, [$fe00]                                 ; $56a2: $fa $00 $fe
    dec c                                         ; $56a5: $0d
    ld c, l                                       ; $56a6: $4d

jr_071_56a7:
    ld e, l                                       ; $56a7: $5d
    ret nz                                        ; $56a8: $c0

    nop                                           ; $56a9: $00
    nop                                           ; $56aa: $00
    rst $38                                       ; $56ab: $ff
    ld a, e                                       ; $56ac: $7b
    ret c                                         ; $56ad: $d8

    cp a                                          ; $56ae: $bf
    ldh [rP1], a                                  ; $56af: $e0 $00
    rst $38                                       ; $56b1: $ff
    nop                                           ; $56b2: $00
    ret c                                         ; $56b3: $d8

    ld a, [hl]                                    ; $56b4: $7e
    ldh [rP1], a                                  ; $56b5: $e0 $00
    rst $38                                       ; $56b7: $ff
    nop                                           ; $56b8: $00
    rst $38                                       ; $56b9: $ff
    add b                                         ; $56ba: $80
    nop                                           ; $56bb: $00
    rst $38                                       ; $56bc: $ff
    nop                                           ; $56bd: $00
    db $d3                                        ; $56be: $d3
    ret nz                                        ; $56bf: $c0

    cp l                                          ; $56c0: $bd
    nop                                           ; $56c1: $00
    call c, $bc80                                 ; $56c2: $dc $80 $bc
    add l                                         ; $56c5: $85
    jp c, $e5ff                                   ; $56c6: $da $ff $e5

    ld l, l                                       ; $56c9: $6d
    nop                                           ; $56ca: $00
    nop                                           ; $56cb: $00
    rst $38                                       ; $56cc: $ff
    or $d0                                        ; $56cd: $f6 $d0
    ld b, h                                       ; $56cf: $44
    and b                                         ; $56d0: $a0
    ld b, h                                       ; $56d1: $44
    ret nz                                        ; $56d2: $c0

    ld b, c                                       ; $56d3: $41
    ret nz                                        ; $56d4: $c0

    pop bc                                        ; $56d5: $c1
    or $00                                        ; $56d6: $f6 $00
    ld a, [c]                                     ; $56d8: $f2
    call $8084                                    ; $56d9: $cd $84 $80
    ld l, b                                       ; $56dc: $68
    push bc                                       ; $56dd: $c5
    ld [bc], a                                    ; $56de: $02
    ret c                                         ; $56df: $d8

    nop                                           ; $56e0: $00
    ld a, [c]                                     ; $56e1: $f2
    jr nc, jr_071_56a7                            ; $56e2: $30 $c3

    cp d                                          ; $56e4: $ba
    push hl                                       ; $56e5: $e5
    ret nz                                        ; $56e6: $c0

    cp $00                                        ; $56e7: $fe $00
    call $084d                                    ; $56e9: $cd $4d $08
    db $10                                        ; $56ec: $10
    and c                                         ; $56ed: $a1
    jp hl                                         ; $56ee: $e9


    and c                                         ; $56ef: $a1
    adc b                                         ; $56f0: $88
    add b                                         ; $56f1: $80
    dec l                                         ; $56f2: $2d
    ld b, e                                       ; $56f3: $43
    add d                                         ; $56f4: $82
    ld [bc], a                                    ; $56f5: $02
    rst $10                                       ; $56f6: $d7
    nop                                           ; $56f7: $00
    push de                                       ; $56f8: $d5
    call z, $80a2                                 ; $56f9: $cc $a2 $80
    ret                                           ; $56fc: $c9


    ld h, b                                       ; $56fd: $60
    ret nz                                        ; $56fe: $c0

    ldh [$c0], a                                  ; $56ff: $e0 $c0
    and d                                         ; $5701: $a2
    ld b, b                                       ; $5702: $40
    ei                                            ; $5703: $fb
    inc d                                         ; $5704: $14
    adc c                                         ; $5705: $89
    rst $08                                       ; $5706: $cf
    pop bc                                        ; $5707: $c1
    ld l, h                                       ; $5708: $6c
    and d                                         ; $5709: $a2
    ld l, l                                       ; $570a: $6d
    rrca                                          ; $570b: $0f
    dec c                                         ; $570c: $0d
    dec c                                         ; $570d: $0d
    ld c, e                                       ; $570e: $4b
    ld c, e                                       ; $570f: $4b
    ld a, a                                       ; $5710: $7f
    ldh [$83], a                                  ; $5711: $e0 $83
    and c                                         ; $5713: $a1
    pop bc                                        ; $5714: $c1
    rst $10                                       ; $5715: $d7
    nop                                           ; $5716: $00
    call z, $8f08                                 ; $5717: $cc $08 $8f
    jp $c24f                                      ; $571a: $c3 $4f $c2


    add hl, hl                                    ; $571d: $29
    and b                                         ; $571e: $a0
    ld c, e                                       ; $571f: $4b
    cp a                                          ; $5720: $bf
    ldh [$7a], a                                  ; $5721: $e0 $7a
    pop hl                                        ; $5723: $e1
    pop bc                                        ; $5724: $c1
    ld hl, sp+$00                                 ; $5725: $f8 $00
    xor e                                         ; $5727: $ab
    ld hl, sp-$2a                                 ; $5728: $f8 $d6
    ld h, c                                       ; $572a: $61
    inc de                                        ; $572b: $13
    ld h, c                                       ; $572c: $61
    adc [hl]                                      ; $572d: $8e
    ldh [$0d], a                                  ; $572e: $e0 $0d
    dec c                                         ; $5730: $0d
    dec bc                                        ; $5731: $0b
    dec bc                                        ; $5732: $0b
    dec bc                                        ; $5733: $0b
    ldh [$bf], a                                  ; $5734: $e0 $bf
    ldh [$fd], a                                  ; $5736: $e0 $fd
    pop hl                                        ; $5738: $e1
    pop bc                                        ; $5739: $c1
    ld hl, sp+$00                                 ; $573a: $f8 $00
    xor [hl]                                      ; $573c: $ae
    ld [$6de3], sp                                ; $573d: $08 $e3 $6d
    ld c, e                                       ; $5740: $4b
    dec c                                         ; $5741: $0d
    di                                            ; $5742: $f3
    ld c, e                                       ; $5743: $4b
    dec bc                                        ; $5744: $0b
    cp $e1                                        ; $5745: $fe $e1
    ei                                            ; $5747: $fb
    pop hl                                        ; $5748: $e1
    ld c, e                                       ; $5749: $4b
    inc c                                         ; $574a: $0c
    inc l                                         ; $574b: $2c
    inc l                                         ; $574c: $2c
    jr nz, jr_071_574f                            ; $574d: $20 $00

jr_071_574f:
    rst $38                                       ; $574f: $ff
    call nc, $8643                                ; $5750: $d4 $43 $86
    ld [c], a                                     ; $5753: $e2
    adc c                                         ; $5754: $89
    pop hl                                        ; $5755: $e1
    rst $00                                       ; $5756: $c7
    ld [c], a                                     ; $5757: $e2
    dec bc                                        ; $5758: $0b
    db $fc                                        ; $5759: $fc
    ret nz                                        ; $575a: $c0

    ret nz                                        ; $575b: $c0

    pop hl                                        ; $575c: $e1
    ld b, b                                       ; $575d: $40
    add b                                         ; $575e: $80
    ei                                            ; $575f: $fb
    inc d                                         ; $5760: $14
    xor d                                         ; $5761: $aa
    ld [$46e1], sp                                ; $5762: $08 $e1 $46
    ldh [$c3], a                                  ; $5765: $e0 $c3
    pop hl                                        ; $5767: $e1
    ret nz                                        ; $5768: $c0

    and $4c                                       ; $5769: $e6 $4c
    rst $38                                       ; $576b: $ff
    pop hl                                        ; $576c: $e1

jr_071_576d:
    ret nz                                        ; $576d: $c0

    nop                                           ; $576e: $00
    rst $38                                       ; $576f: $ff
    ld [de], a                                    ; $5770: $12
    and h                                         ; $5771: $a4
    jp nz, $02e1                                  ; $5772: $c2 $e1 $02

    ldh [$7c], a                                  ; $5775: $e0 $7c
    and $fb                                       ; $5777: $e6 $fb
    jp $4c4c                                      ; $5779: $c3 $4c $4c


    nop                                           ; $577c: $00
    dec sp                                        ; $577d: $3b
    di                                            ; $577e: $f3
    nop                                           ; $577f: $00
    adc e                                         ; $5780: $8b
    ld d, [hl]                                    ; $5781: $56
    ld h, c                                       ; $5782: $61
    ld b, h                                       ; $5783: $44
    pop hl                                        ; $5784: $e1
    ld c, b                                       ; $5785: $48
    pop hl                                        ; $5786: $e1
    or h                                          ; $5787: $b4

jr_071_5788:
    ld [c], a                                     ; $5788: $e2
    cp $c0                                        ; $5789: $fe $c0
    db $fc                                        ; $578b: $fc
    jp Jump_000_0d01                              ; $578c: $c3 $01 $0d


    ld a, l                                       ; $578f: $7d
    db $f4                                        ; $5790: $f4
    add l                                         ; $5791: $85
    xor h                                         ; $5792: $ac
    adc [hl]                                      ; $5793: $8e
    and b                                         ; $5794: $a0
    call $cfc2                                    ; $5795: $cd $c2 $cf
    ldh [$bd], a                                  ; $5798: $e0 $bd
    push hl                                       ; $579a: $e5
    ld [hl], c                                    ; $579b: $71
    pop hl                                        ; $579c: $e1
    jr c, @+$70                                   ; $579d: $38 $6e

    pop hl                                        ; $579f: $e1
    add hl, sp                                    ; $57a0: $39
    ldh [rP1], a                                  ; $57a1: $e0 $00
    rst $18                                       ; $57a3: $df
    ld c, $4d                                     ; $57a4: $0e $4d
    dec l                                         ; $57a6: $2d
    rst $00                                       ; $57a7: $c7
    jp nz, $e23e                                  ; $57a8: $c2 $3e $e2

    nop                                           ; $57ab: $00
    ld a, [hl]                                    ; $57ac: $7e
    pop bc                                        ; $57ad: $c1
    ld [hl], $e1                                  ; $57ae: $36 $e1
    inc [hl]                                      ; $57b0: $34
    pop bc                                        ; $57b1: $c1
    ld l, a                                       ; $57b2: $6f
    ret nz                                        ; $57b3: $c0

    jr c, jr_071_5788                             ; $57b4: $38 $d2

    nop                                           ; $57b6: $00
    ld l, e                                       ; $57b7: $6b
    jp nc, $bf21                                  ; $57b8: $d2 $21 $bf

    pop hl                                        ; $57bb: $e1
    nop                                           ; $57bc: $00
    rst $38                                       ; $57bd: $ff
    pop bc                                        ; $57be: $c1
    cp c                                          ; $57bf: $b9
    ld [c], a                                     ; $57c0: $e2
    ld a, l                                       ; $57c1: $7d
    jp nz, $c4ec                                  ; $57c2: $c2 $ec $c4

    ret nz                                        ; $57c5: $c0

    db $f4                                        ; $57c6: $f4
    nop                                           ; $57c7: $00
    ld l, e                                       ; $57c8: $6b
    jp nc, Jump_071_7e00                          ; $57c9: $d2 $00 $7e

    pop hl                                        ; $57cc: $e1
    nop                                           ; $57cd: $00
    ld bc, $04c0                                  ; $57ce: $01 $c0 $04
    and c                                         ; $57d1: $a1
    ld [hl-], a                                   ; $57d2: $32
    ldh [$b4], a                                  ; $57d3: $e0 $b4
    pop bc                                        ; $57d5: $c1
    or h                                          ; $57d6: $b4
    and d                                         ; $57d7: $a2
    ret nz                                        ; $57d8: $c0

    or $00                                        ; $57d9: $f6 $00
    ld [$4170], a                                 ; $57db: $ea $70 $41
    dec l                                         ; $57de: $2d
    ld l, e                                       ; $57df: $6b
    ret nz                                        ; $57e0: $c0

    ld [c], a                                     ; $57e1: $e2
    dec c                                         ; $57e2: $0d
    dec l                                         ; $57e3: $2d
    ei                                            ; $57e4: $fb
    pop bc                                        ; $57e5: $c1
    dec c                                         ; $57e6: $0d
    cp b                                          ; $57e7: $b8
    ldh [$30], a                                  ; $57e8: $e0 $30
    pop bc                                        ; $57ea: $c1
    jr z, jr_071_576d                             ; $57eb: $28 $80

    pop hl                                        ; $57ed: $e1
    dec sp                                        ; $57ee: $3b
    pop de                                        ; $57ef: $d1
    inc d                                         ; $57f0: $14
    ld [hl], c                                    ; $57f1: $71
    ld l, e                                       ; $57f2: $6b
    ret z                                         ; $57f3: $c8

    and c                                         ; $57f4: $a1
    ld c, e                                       ; $57f5: $4b
    dec a                                         ; $57f6: $3d
    pop bc                                        ; $57f7: $c1
    ld a, e                                       ; $57f8: $7b
    pop bc                                        ; $57f9: $c1
    inc bc                                        ; $57fa: $03
    dec l                                         ; $57fb: $2d
    dec l                                         ; $57fc: $2d
    ret nz                                        ; $57fd: $c0

    db $e4                                        ; $57fe: $e4
    ccf                                           ; $57ff: $3f
    ld a, [c]                                     ; $5800: $f2
    nop                                           ; $5801: $00
    xor e                                         ; $5802: $ab
    ret nz                                        ; $5803: $c0

    and $42                                       ; $5804: $e6 $42
    pop bc                                        ; $5806: $c1
    ld a, d                                       ; $5807: $7a
    and c                                         ; $5808: $a1
    inc bc                                        ; $5809: $03
    dec bc                                        ; $580a: $0b
    dec hl                                        ; $580b: $2b
    cp $e0                                        ; $580c: $fe $e0
    add b                                         ; $580e: $80
    ld [c], a                                     ; $580f: $e2
    dec a                                         ; $5810: $3d
    ret nz                                        ; $5811: $c0

    ret nz                                        ; $5812: $c0

    di                                            ; $5813: $f3
    nop                                           ; $5814: $00
    ld c, b                                       ; $5815: $48
    add h                                         ; $5816: $84
    add h                                         ; $5817: $84
    jr c, jr_071_5869                             ; $5818: $38 $4f

    pop bc                                        ; $581a: $c1
    add c                                         ; $581b: $81
    add c                                         ; $581c: $81
    push bc                                       ; $581d: $c5
    ld [c], a                                     ; $581e: $e2
    dec hl                                        ; $581f: $2b
    ld a, [bc]                                    ; $5820: $0a
    ld l, d                                       ; $5821: $6a
    cp a                                          ; $5822: $bf
    push hl                                       ; $5823: $e5
    nop                                           ; $5824: $00
    cp a                                          ; $5825: $bf
    ld a, [c]                                     ; $5826: $f2
    sub e                                         ; $5827: $93
    ld [hl+], a                                   ; $5828: $22
    ld l, l                                       ; $5829: $6d
    sub h                                         ; $582a: $94
    pop bc                                        ; $582b: $c1
    inc b                                         ; $582c: $04
    and b                                         ; $582d: $a0
    ld c, e                                       ; $582e: $4b
    ld c, e                                       ; $582f: $4b
    ld l, e                                       ; $5830: $6b
    ld l, e                                       ; $5831: $6b
    ld [bc], a                                    ; $5832: $02
    ret nz                                        ; $5833: $c0

    pop hl                                        ; $5834: $e1
    ld a, [bc]                                    ; $5835: $0a
    cp e                                          ; $5836: $bb
    and d                                         ; $5837: $a2
    ret nz                                        ; $5838: $c0

    ld hl, sp+$0a                                 ; $5839: $f8 $0a
    ld c, b                                       ; $583b: $48
    sub h                                         ; $583c: $94
    ld b, c                                       ; $583d: $41
    ld c, $c4                                     ; $583e: $0e $c4
    cp b                                          ; $5840: $b8
    add e                                         ; $5841: $83
    rrca                                          ; $5842: $0f
    ld l, e                                       ; $5843: $6b
    ld l, e                                       ; $5844: $6b
    ld a, [bc]                                    ; $5845: $0a
    ld c, d                                       ; $5846: $4a
    add b                                         ; $5847: $80
    ei                                            ; $5848: $fb
    nop                                           ; $5849: $00
    ld a, [hl+]                                   ; $584a: $2a
    jp nz, $ca62                                  ; $584b: $c2 $62 $ca

    and e                                         ; $584e: $a3
    ld c, $c5                                     ; $584f: $0e $c5
    and c                                         ; $5851: $a1
    dec hl                                        ; $5852: $2b
    ld c, e                                       ; $5853: $4b
    ld c, e                                       ; $5854: $4b
    add b                                         ; $5855: $80
    db $e4                                        ; $5856: $e4
    ld hl, sp+$75                                 ; $5857: $f8 $75
    inc d                                         ; $5859: $14
    inc l                                         ; $585a: $2c
    or c                                          ; $585b: $b1
    ld [bc], a                                    ; $585c: $02
    inc c                                         ; $585d: $0c
    ld b, d                                       ; $585e: $42
    and e                                         ; $585f: $a3
    ld a, [hl]                                    ; $5860: $7e
    pop bc                                        ; $5861: $c1
    ld l, e                                       ; $5862: $6b
    ld l, e                                       ; $5863: $6b
    cp a                                          ; $5864: $bf
    ldh [$fc], a                                  ; $5865: $e0 $fc
    add e                                         ; $5867: $83
    ret nz                                        ; $5868: $c0

jr_071_5869:
    rst $30                                       ; $5869: $f7
    add l                                         ; $586a: $85
    dec bc                                        ; $586b: $0b
    db $10                                        ; $586c: $10
    adc h                                         ; $586d: $8c
    ld b, c                                       ; $586e: $41
    jp Jump_071_7f82                              ; $586f: $c3 $82 $7f


    ld [c], a                                     ; $5872: $e2
    ret nz                                        ; $5873: $c0

    ldh [rWX], a                                  ; $5874: $e0 $4b
    ld a, a                                       ; $5876: $7f
    ret nz                                        ; $5877: $c0

    ld a, d                                       ; $5878: $7a
    add d                                         ; $5879: $82
    nop                                           ; $587a: $00
    sbc a                                         ; $587b: $9f
    ld b, b                                       ; $587c: $40
    ld a, a                                       ; $587d: $7f
    and d                                         ; $587e: $a2
    ld c, e                                       ; $587f: $4b
    ld b, c                                       ; $5880: $41
    ld [$c8a3], sp                                ; $5881: $08 $a3 $c8
    add b                                         ; $5884: $80
    ret nz                                        ; $5885: $c0

    pop hl                                        ; $5886: $e1
    inc a                                         ; $5887: $3c
    add h                                         ; $5888: $84
    inc c                                         ; $5889: $0c
    ld a, c                                       ; $588a: $79
    ld [hl], d                                    ; $588b: $72
    ld [$2f85], sp                                ; $588c: $08 $85 $2f
    ld a, [bc]                                    ; $588f: $0a
    ld b, c                                       ; $5890: $41
    ld [bc], a                                    ; $5891: $02
    db $e3                                        ; $5892: $e3
    dec l                                         ; $5893: $2d
    ld a, l                                       ; $5894: $7d
    jp nz, $82b2                                  ; $5895: $c2 $b2 $82

    ld a, d                                       ; $5898: $7a
    halt                                          ; $5899: $76
    add l                                         ; $589a: $85
    dec l                                         ; $589b: $2d
    nop                                           ; $589c: $00
    add c                                         ; $589d: $81
    ld b, c                                       ; $589e: $41
    cp $83                                        ; $589f: $fe $83
    add [hl]                                      ; $58a1: $86
    and c                                         ; $58a2: $a1
    ld a, a                                       ; $58a3: $7f
    pop bc                                        ; $58a4: $c1
    ld [hl], d                                    ; $58a5: $72
    add e                                         ; $58a6: $83
    ret nz                                        ; $58a7: $c0

    ld hl, sp-$71                                 ; $58a8: $f8 $8f
    ld de, $4285                                  ; $58aa: $11 $85 $42
    nop                                           ; $58ad: $00
    ld a, a                                       ; $58ae: $7f
    ld b, d                                       ; $58af: $42
    cp $c1                                        ; $58b0: $fe $c1
    ret nz                                        ; $58b2: $c0

    db $fc                                        ; $58b3: $fc
    nop                                           ; $58b4: $00
    xor e                                         ; $58b5: $ab
    rst $38                                       ; $58b6: $ff
    inc hl                                        ; $58b7: $23
    ld b, e                                       ; $58b8: $43
    add e                                         ; $58b9: $83
    cp $a3                                        ; $58ba: $fe $a3
    rst $30                                       ; $58bc: $f7
    pop bc                                        ; $58bd: $c1
    ld [bc], a                                    ; $58be: $02
    ld a, [hl-]                                   ; $58bf: $3a
    ld b, c                                       ; $58c0: $41
    ld l, h                                       ; $58c1: $6c
    rst $30                                       ; $58c2: $f7
    ld b, d                                       ; $58c3: $42
    push af                                       ; $58c4: $f5
    ld c, e                                       ; $58c5: $4b
    nop                                           ; $58c6: $00
    ld l, $be                                     ; $58c7: $2e $be
    add e                                         ; $58c9: $83
    ret nz                                        ; $58ca: $c0

    add sp, $3e                                   ; $58cb: $e8 $3e
    ldh [rNR21], a                                ; $58cd: $e0 $16
    ld b, d                                       ; $58cf: $42
    and e                                         ; $58d0: $a3
    ld l, h                                       ; $58d1: $6c
    ld l, h                                       ; $58d2: $6c
    ld h, d                                       ; $58d3: $62
    ld [c], a                                     ; $58d4: $e2
    dec l                                         ; $58d5: $2d
    push af                                       ; $58d6: $f5
    ld c, d                                       ; $58d7: $4a
    nop                                           ; $58d8: $00
    adc $33                                       ; $58d9: $ce $33
    ld [bc], a                                    ; $58db: $02
    ld [hl], b                                    ; $58dc: $70
    ret nz                                        ; $58dd: $c0

    add sp, -$43                                  ; $58de: $e8 $bd
    add b                                         ; $58e0: $80
    cp [hl]                                       ; $58e1: $be
    pop hl                                        ; $58e2: $e1
    ld a, d                                       ; $58e3: $7a
    ld b, b                                       ; $58e4: $40
    ld l, h                                       ; $58e5: $6c
    dec c                                         ; $58e6: $0d
    ld l, l                                       ; $58e7: $6d
    and h                                         ; $58e8: $a4
    ld bc, $4d01                                  ; $58e9: $01 $01 $4d
    cp a                                          ; $58ec: $bf
    ldh [rP1], a                                  ; $58ed: $e0 $00
    ld sp, hl                                     ; $58ef: $f9
    dec a                                         ; $58f0: $3d
    call nz, Call_071_4484                        ; $58f1: $c4 $84 $44
    ld h, d                                       ; $58f4: $62
    ret nz                                        ; $58f5: $c0

    ld a, [hl]                                    ; $58f6: $7e
    jp nz, $81f3                                  ; $58f7: $c2 $f3 $81

    nop                                           ; $58fa: $00
    or d                                          ; $58fb: $b2
    ld bc, $625e                                  ; $58fc: $01 $5e $62
    ld [hl-], a                                   ; $58ff: $32
    ld c, b                                       ; $5900: $48
    nop                                           ; $5901: $00
    ld c, l                                       ; $5902: $4d
    ld a, $c3                                     ; $5903: $3e $c3
    db $fc                                        ; $5905: $fc
    and d                                         ; $5906: $a2
    cp c                                          ; $5907: $b9
    ld b, h                                       ; $5908: $44
    cp a                                          ; $5909: $bf
    db $e4                                        ; $590a: $e4
    ld [bc], a                                    ; $590b: $02
    ld [hl], h                                    ; $590c: $74
    and b                                         ; $590d: $a0
    dec l                                         ; $590e: $2d
    ld sp, $bf03                                  ; $590f: $31 $03 $bf
    ld [c], a                                     ; $5912: $e2
    cp $e5                                        ; $5913: $fe $e5
    nop                                           ; $5915: $00
    xor $fa                                       ; $5916: $ee $fa
    and e                                         ; $5918: $a3
    db $fc                                        ; $5919: $fc
    and e                                         ; $591a: $a3
    inc a                                         ; $591b: $3c
    ld a, a                                       ; $591c: $7f
    ld h, d                                       ; $591d: $62
    ld l, [hl]                                    ; $591e: $6e
    ld b, b                                       ; $591f: $40
    ld l, e                                       ; $5920: $6b
    ld c, e                                       ; $5921: $4b
    dec hl                                        ; $5922: $2b
    dec hl                                        ; $5923: $2b
    rst $30                                       ; $5924: $f7
    ld h, b                                       ; $5925: $60
    ld sp, $8004                                  ; $5926: $31 $04 $80
    ld h, $00                                     ; $5929: $26 $00
    ld e, c                                       ; $592b: $59
    push bc                                       ; $592c: $c5
    ld c, d                                       ; $592d: $4a
    inc hl                                        ; $592e: $23
    nop                                           ; $592f: $00
    ld l, c                                       ; $5930: $69
    or a                                          ; $5931: $b7
    ld h, h                                       ; $5932: $64
    ld a, [hl]                                    ; $5933: $7e
    ldh [$f8], a                                  ; $5934: $e0 $f8
    ld [hl+], a                                   ; $5936: $22
    ld l, l                                       ; $5937: $6d
    ld [$416e], sp                                ; $5938: $08 $6e $41
    ld a, [$b661]                                 ; $593b: $fa $61 $b6
    ld h, c                                       ; $593e: $61
    ld l, e                                       ; $593f: $6b
    cp a                                          ; $5940: $bf
    pop hl                                        ; $5941: $e1
    inc e                                         ; $5942: $1c
    ld h, d                                       ; $5943: $62
    jp c, $2601                                   ; $5944: $da $01 $26

    ld [bc], a                                    ; $5947: $02
    ld [hl], b                                    ; $5948: $70
    db $10                                        ; $5949: $10
    ld h, b                                       ; $594a: $60
    nop                                           ; $594b: $00
    xor h                                         ; $594c: $ac
    dec a                                         ; $594d: $3d
    add $04                                       ; $594e: $c6 $04
    add b                                         ; $5950: $80
    ld c, e                                       ; $5951: $4b
    dec l                                         ; $5952: $2d
    dec l                                         ; $5953: $2d
    ldh a, [rSCX]                                 ; $5954: $f0 $43
    nop                                           ; $5956: $00
    ld a, h                                       ; $5957: $7c
    ld h, d                                       ; $5958: $62
    ld [hl], l                                    ; $5959: $75
    ld h, b                                       ; $595a: $60
    ld a, $e0                                     ; $595b: $3e $e0
    ret nz                                        ; $595d: $c0

    db $e4                                        ; $595e: $e4
    ld a, d                                       ; $595f: $7a
    ld [c], a                                     ; $5960: $e2
    ld d, b                                       ; $5961: $50
    ld h, d                                       ; $5962: $62
    nop                                           ; $5963: $00
    xor h                                         ; $5964: $ac
    ld [hl], c                                    ; $5965: $71
    ld b, e                                       ; $5966: $43
    ld h, h                                       ; $5967: $64
    ret                                           ; $5968: $c9


    pop bc                                        ; $5969: $c1
    add h                                         ; $596a: $84
    add b                                         ; $596b: $80
    dec l                                         ; $596c: $2d
    or b                                          ; $596d: $b0
    ld b, d                                       ; $596e: $42
    ld b, h                                       ; $596f: $44
    ldh [$0b], a                                  ; $5970: $e0 $0b
    dec bc                                        ; $5972: $0b
    ld a, [$8740]                                 ; $5973: $fa $40 $87
    dec hl                                        ; $5976: $2b
    dec bc                                        ; $5977: $0b
    dec l                                         ; $5978: $2d
    rst $28                                       ; $5979: $ef
    pop hl                                        ; $597a: $e1
    ld a, h                                       ; $597b: $7c
    pop bc                                        ; $597c: $c1
    add c                                         ; $597d: $81
    pop hl                                        ; $597e: $e1
    call nc, Call_071_4d60                        ; $597f: $d4 $60 $4d
    ld [$834f], sp                                ; $5982: $08 $4f $83
    ld a, e                                       ; $5985: $7b
    ld l, l                                       ; $5986: $6d
    ret nz                                        ; $5987: $c0

    db $e4                                        ; $5988: $e4
    ld l, e                                       ; $5989: $6b
    ret nz                                        ; $598a: $c0

    ldh [$af], a                                  ; $598b: $e0 $af
    ld h, c                                       ; $598d: $61
    add hl, sp                                    ; $598e: $39
    ld h, d                                       ; $598f: $62
    cp e                                          ; $5990: $bb
    db $e3                                        ; $5991: $e3
    ld bc, $052d                                  ; $5992: $01 $2d $05
    pop hl                                        ; $5995: $e1
    ld c, a                                       ; $5996: $4f
    adc e                                         ; $5997: $8b
    nop                                           ; $5998: $00
    xor $fa                                       ; $5999: $ee $fa
    ld h, l                                       ; $599b: $65
    add b                                         ; $599c: $80
    ld [c], a                                     ; $599d: $e2
    ld [hl], b                                    ; $599e: $70
    ld h, d                                       ; $599f: $62
    add d                                         ; $59a0: $82
    ldh [$82], a                                  ; $59a1: $e0 $82
    cp a                                          ; $59a3: $bf
    ret nz                                        ; $59a4: $c0

    dec hl                                        ; $59a5: $2b
    or b                                          ; $59a6: $b0
    ldh [$9b], a                                  ; $59a7: $e0 $9b
    add h                                         ; $59a9: $84
    jp z, $002a                                   ; $59aa: $ca $2a $00

    db $ed                                        ; $59ad: $ed
    db $fc                                        ; $59ae: $fc
    add e                                         ; $59af: $83
    ld l, l                                       ; $59b0: $6d
    ld [$e280], sp                                ; $59b1: $08 $80 $e2
    xor [hl]                                      ; $59b4: $ae
    inc bc                                        ; $59b5: $03
    add b                                         ; $59b6: $80
    db $e3                                        ; $59b7: $e3
    ld l, e                                       ; $59b8: $6b
    or c                                          ; $59b9: $b1
    jp nz, $cf4f                                  ; $59ba: $c2 $4f $cf

    nop                                           ; $59bd: $00
    db $ed                                        ; $59be: $ed
    ld a, d                                       ; $59bf: $7a
    ld [bc], a                                    ; $59c0: $02
    ld bc, $866d                                  ; $59c1: $01 $6d $86
    add d                                         ; $59c4: $82
    ld c, $c1                                     ; $59c5: $0e $c1
    cp a                                          ; $59c7: $bf
    and c                                         ; $59c8: $a1
    ld b, b                                       ; $59c9: $40
    pop hl                                        ; $59ca: $e1
    pop bc                                        ; $59cb: $c1
    pop hl                                        ; $59cc: $e1
    sub c                                         ; $59cd: $91
    jp $cb4f                                      ; $59ce: $c3 $4f $cb


    ld b, b                                       ; $59d1: $40
    or c                                          ; $59d2: $b1
    xor $be                                       ; $59d3: $ee $be
    ld [c], a                                     ; $59d5: $e2
    ld [bc], a                                    ; $59d6: $02
    pop hl                                        ; $59d7: $e1
    rst $08                                       ; $59d8: $cf
    pop hl                                        ; $59d9: $e1
    or c                                          ; $59da: $b1
    ld h, c                                       ; $59db: $61
    ld b, a                                       ; $59dc: $47
    ldh [$0b], a                                  ; $59dd: $e0 $0b
    add d                                         ; $59df: $82
    ld [c], a                                     ; $59e0: $e2
    add b                                         ; $59e1: $80
    pop af                                        ; $59e2: $f1
    ret nz                                        ; $59e3: $c0

    ld c, a                                       ; $59e4: $4f
    rst $08                                       ; $59e5: $cf
    nop                                           ; $59e6: $00
    rst $28                                       ; $59e7: $ef
    inc a                                         ; $59e8: $3c
    ld [hl+], a                                   ; $59e9: $22
    pop bc                                        ; $59ea: $c1
    ret nz                                        ; $59eb: $c0

    db $10                                        ; $59ec: $10
    and b                                         ; $59ed: $a0
    ld c, a                                       ; $59ee: $4f
    pop bc                                        ; $59ef: $c1
    dec l                                         ; $59f0: $2d
    ld b, b                                       ; $59f1: $40
    or [hl]                                       ; $59f2: $b6
    pop bc                                        ; $59f3: $c1
    ld b, e                                       ; $59f4: $43
    db $e3                                        ; $59f5: $e3
    adc a                                         ; $59f6: $8f
    jp nz, $cd4f                                  ; $59f7: $c2 $4f $cd

    inc l                                         ; $59fa: $2c
    ldh a, [rSCY]                                 ; $59fb: $f0 $42
    call nz, Call_071_400d                        ; $59fd: $c4 $0d $40
    jp nz, $9202                                  ; $5a00: $c2 $02 $92

    and h                                         ; $5a03: $a4
    ld l, l                                       ; $5a04: $6d
    db $f4                                        ; $5a05: $f4
    and b                                         ; $5a06: $a0
    rst $08                                       ; $5a07: $cf
    and d                                         ; $5a08: $a2
    nop                                           ; $5a09: $00
    cp $bc                                        ; $5a0a: $fe $bc
    ld [bc], a                                    ; $5a0c: $02
    dec b                                         ; $5a0d: $05
    add b                                         ; $5a0e: $80
    ld b, d                                       ; $5a0f: $42
    pop bc                                        ; $5a10: $c1
    nop                                           ; $5a11: $00
    xor l                                         ; $5a12: $ad
    ld h, a                                       ; $5a13: $67
    db $f4                                        ; $5a14: $f4
    and e                                         ; $5a15: $a3
    adc a                                         ; $5a16: $8f
    and c                                         ; $5a17: $a1
    nop                                           ; $5a18: $00
    ei                                            ; $5a19: $fb
    ld hl, $02a3                                  ; $5a1a: $21 $a3 $02
    jp nz, $84d0                                  ; $5a1d: $c2 $d0 $84

    db $db                                        ; $5a20: $db
    and a                                         ; $5a21: $a7
    nop                                           ; $5a22: $00
    call nc, Call_000_00cf                        ; $5a23: $d4 $cf $00
    pop de                                        ; $5a26: $d1
    ldh [$81], a                                  ; $5a27: $e0 $81
    add b                                         ; $5a29: $80
    ld [c], a                                     ; $5a2a: $e2
    ret nc                                        ; $5a2b: $d0

    add h                                         ; $5a2c: $84
    rst $08                                       ; $5a2d: $cf
    xor b                                         ; $5a2e: $a8
    call nc, Call_000_00d0                        ; $5a2f: $d4 $d0 $00
    rst $08                                       ; $5a32: $cf
    nop                                           ; $5a33: $00
    add b                                         ; $5a34: $80
    ld [c], a                                     ; $5a35: $e2
    ret nz                                        ; $5a36: $c0

    db $e3                                        ; $5a37: $e3
    ld de, $85e7                                  ; $5a38: $11 $e7 $85
    pop af                                        ; $5a3b: $f1
    nop                                           ; $5a3c: $00
    push de                                       ; $5a3d: $d5
    add b                                         ; $5a3e: $80
    rst $20                                       ; $5a3f: $e7
    ld de, $85e2                                  ; $5a40: $11 $e2 $85
    rst $30                                       ; $5a43: $f7
    inc bc                                        ; $5a44: $03
    dec c                                         ; $5a45: $0d
    ld c, $00                                     ; $5a46: $0e $00
    nop                                           ; $5a48: $00
    nop                                           ; $5a49: $00
    rst $38                                       ; $5a4a: $ff
    call c, $a0dd                                 ; $5a4b: $dc $dd $a0
    sbc $df                                       ; $5a4e: $de $df
    ldh [$e1], a                                  ; $5a50: $e0 $e1
    ld [c], a                                     ; $5a52: $e2
    db $eb                                        ; $5a53: $eb
    db $e3                                        ; $5a54: $e3
    db $e4                                        ; $5a55: $e4
    or $f6                                        ; $5a56: $f6 $f6
    and b                                         ; $5a58: $a0
    rst $38                                       ; $5a59: $ff
    ldh [$9e], a                                  ; $5a5a: $e0 $9e
    ld [$ff98], sp                                ; $5a5c: $08 $98 $ff
    sub a                                         ; $5a5f: $97
    sub [hl]                                      ; $5a60: $96
    sub l                                         ; $5a61: $95
    sub l                                         ; $5a62: $95
    sub [hl]                                      ; $5a63: $96
    sub [hl]                                      ; $5a64: $96
    sub a                                         ; $5a65: $97
    sub a                                         ; $5a66: $97
    rst $18                                       ; $5a67: $df
    sbc b                                         ; $5a68: $98
    sbc b                                         ; $5a69: $98
    sub a                                         ; $5a6a: $97
    sub a                                         ; $5a6b: $97
    sub [hl]                                      ; $5a6c: $96
    db $f4                                        ; $5a6d: $f4
    and $e5                                       ; $5a6e: $e6 $e5
    and $ff                                       ; $5a70: $e6 $ff
    rst $20                                       ; $5a72: $e7
    and b                                         ; $5a73: $a0
    add sp, -$17                                  ; $5a74: $e8 $e9
    ld [$eceb], a                                 ; $5a76: $ea $eb $ec
    and b                                         ; $5a79: $a0
    ld e, $f6                                     ; $5a7a: $1e $f6
    push af                                       ; $5a7c: $f5
    and b                                         ; $5a7d: $a0
    and b                                         ; $5a7e: $a0
    db $e3                                        ; $5a7f: $e3
    db $e4                                        ; $5a80: $e4
    ret nz                                        ; $5a81: $c0

    rst $30                                       ; $5a82: $f7
    add l                                         ; $5a83: $85
    ei                                            ; $5a84: $fb
    ld h, a                                       ; $5a85: $67
    ld [c], a                                     ; $5a86: $e2
    cp b                                          ; $5a87: $b8
    add b                                         ; $5a88: $80
    ld a, [$fa85]                                 ; $5a89: $fa $85 $fa
    ld h, a                                       ; $5a8c: $67
    db $e3                                        ; $5a8d: $e3
    and b                                         ; $5a8e: $a0
    sub $d7                                       ; $5a8f: $d6 $d7
    ld b, b                                       ; $5a91: $40
    push af                                       ; $5a92: $f5
    sub a                                         ; $5a93: $97
    dec a                                         ; $5a94: $3d
    sbc b                                         ; $5a95: $98
    nop                                           ; $5a96: $00
    rst $38                                       ; $5a97: $ff
    rst $18                                       ; $5a98: $df
    and b                                         ; $5a99: $a0
    ret c                                         ; $5a9a: $d8

    reti                                          ; $5a9b: $d9


    nop                                           ; $5a9c: $00
    di                                            ; $5a9d: $f3
    di                                            ; $5a9e: $f3
    pop bc                                        ; $5a9f: $c1
    ld e, $00                                     ; $5aa0: $1e $00
    rst $38                                       ; $5aa2: $ff
    and b                                         ; $5aa3: $a0
    and b                                         ; $5aa4: $a0
    jp c, $c0db                                   ; $5aa5: $da $db $c0

    pop de                                        ; $5aa8: $d1
    ld a, a                                       ; $5aa9: $7f
    db $e3                                        ; $5aaa: $e3
    nop                                           ; $5aab: $00
    rst $38                                       ; $5aac: $ff
    ld b, $00                                     ; $5aad: $06 $00
    ldh [$f5], a                                  ; $5aaf: $e0 $f5
    or $80                                        ; $5ab1: $f6 $80
    adc $7f                                       ; $5ab3: $ce $7f
    push hl                                       ; $5ab5: $e5
    nop                                           ; $5ab6: $00
    rst $38                                       ; $5ab7: $ff
    add c                                         ; $5ab8: $81
    pop bc                                        ; $5ab9: $c1
    ld b, b                                       ; $5aba: $40
    call Call_071_7f30                            ; $5abb: $cd $30 $7f
    rst $20                                       ; $5abe: $e7
    nop                                           ; $5abf: $00
    rst $38                                       ; $5ac0: $ff
    nop                                           ; $5ac1: $00
    rst $08                                       ; $5ac2: $cf
    ld a, a                                       ; $5ac3: $7f
    rst $20                                       ; $5ac4: $e7
    sub a                                         ; $5ac5: $97
    sub a                                         ; $5ac6: $97
    nop                                           ; $5ac7: $00
    rst $38                                       ; $5ac8: $ff
    add b                                         ; $5ac9: $80
    call Call_071_7f08                            ; $5aca: $cd $08 $7f
    rst $20                                       ; $5acd: $e7
    or d                                          ; $5ace: $b2
    and c                                         ; $5acf: $a1
    nop                                           ; $5ad0: $00
    rst $38                                       ; $5ad1: $ff
    db $e4                                        ; $5ad2: $e4
    add b                                         ; $5ad3: $80
    jp z, $e77f                                   ; $5ad4: $ca $7f $e7

    ld [hl], d                                    ; $5ad7: $72
    and e                                         ; $5ad8: $a3
    nop                                           ; $5ad9: $00
    rst $38                                       ; $5ada: $ff
    ldh a, [$80]                                  ; $5adb: $f0 $80
    ret                                           ; $5add: $c9


    ld a, a                                       ; $5ade: $7f
    rst $20                                       ; $5adf: $e7
    ld a, $a5                                     ; $5ae0: $3e $a5
    add l                                         ; $5ae2: $85
    cp [hl]                                       ; $5ae3: $be
    sbc $df                                       ; $5ae4: $de $df
    push af                                       ; $5ae6: $f5
    or $07                                        ; $5ae7: $f6 $07
    and b                                         ; $5ae9: $a0
    sbc a                                         ; $5aea: $9f
    sbc h                                         ; $5aeb: $9c
    nop                                           ; $5aec: $00
    and c                                         ; $5aed: $a1
    ld a, a                                       ; $5aee: $7f
    rst $20                                       ; $5aef: $e7
    cp $a7                                        ; $5af0: $fe $a7
    nop                                           ; $5af2: $00
    ld a, [$a087]                                 ; $5af3: $fa $87 $a0
    ld e, $ff                                     ; $5af6: $1e $ff
    ld [c], a                                     ; $5af8: $e2
    sbc a                                         ; $5af9: $9f
    sbc h                                         ; $5afa: $9c
    ld [bc], a                                    ; $5afb: $02
    rrca                                          ; $5afc: $0f
    jp z, $c081                                   ; $5afd: $ca $81 $c0

    db $ec                                        ; $5b00: $ec
    cp l                                          ; $5b01: $bd
    and c                                         ; $5b02: $a1
    db $fc                                        ; $5b03: $fc
    adc a                                         ; $5b04: $8f
    call nc, $e3c6                                ; $5b05: $d4 $c6 $e3
    ret c                                         ; $5b08: $d8

    reti                                          ; $5b09: $d9


    db $e3                                        ; $5b0a: $e3
    db $e4                                        ; $5b0b: $e4
    ret nc                                        ; $5b0c: $d0

    pop de                                        ; $5b0d: $d1
    ld c, $82                                     ; $5b0e: $0e $82
    add b                                         ; $5b10: $80
    ld [bc], a                                    ; $5b11: $02
    rrca                                          ; $5b12: $0f
    sbc c                                         ; $5b13: $99
    adc c                                         ; $5b14: $89
    add b                                         ; $5b15: $80
    cp a                                          ; $5b16: $bf
    ret                                           ; $5b17: $c9


    cp $a2                                        ; $5b18: $fe $a2
    ld [hl], b                                    ; $5b1a: $70
    add b                                         ; $5b1b: $80
    ld [hl], b                                    ; $5b1c: $70
    adc a                                         ; $5b1d: $8f
    sub h                                         ; $5b1e: $94
    ld c, l                                       ; $5b1f: $4d
    and b                                         ; $5b20: $a0
    ld c, c                                       ; $5b21: $49
    ldh [$87], a                                  ; $5b22: $e0 $87
    and b                                         ; $5b24: $a0
    and b                                         ; $5b25: $a0
    jp nc, $42d3                                  ; $5b26: $d2 $d3 $42

    add c                                         ; $5b29: $81
    rst $00                                       ; $5b2a: $c7
    nop                                           ; $5b2b: $00
    ld bc, $3f99                                  ; $5b2c: $01 $99 $3f
    res 7, l                                      ; $5b2f: $cb $bd
    and l                                         ; $5b31: $a5
    nop                                           ; $5b32: $00
    rst $08                                       ; $5b33: $cf
    and b                                         ; $5b34: $a0
    and b                                         ; $5b35: $a0
    ld hl, sp-$73                                 ; $5b36: $f8 $8d
    ldh [$c6], a                                  ; $5b38: $e0 $c6
    pop hl                                        ; $5b3a: $e1
    ld [$ed81], sp                                ; $5b3b: $08 $81 $ed
    xor $d4                                       ; $5b3e: $ee $d4
    push de                                       ; $5b40: $d5
    rst $28                                       ; $5b41: $ef
    jp nz, $8002                                  ; $5b42: $c2 $02 $80

    sbc c                                         ; $5b45: $99
    add b                                         ; $5b46: $80
    db $eb                                        ; $5b47: $eb
    cp l                                          ; $5b48: $bd
    and a                                         ; $5b49: $a7
    nop                                           ; $5b4a: $00
    pop de                                        ; $5b4b: $d1
    adc l                                         ; $5b4c: $8d
    pop hl                                        ; $5b4d: $e1
    and b                                         ; $5b4e: $a0
    sbc a                                         ; $5b4f: $9f
    db $fd                                        ; $5b50: $fd
    sbc l                                         ; $5b51: $9d
    rst $38                                       ; $5b52: $ff
    ldh [$9f], a                                  ; $5b53: $e0 $9f
    ldh a, [$f1]                                  ; $5b55: $f0 $f1
    ld a, [c]                                     ; $5b57: $f2
    di                                            ; $5b58: $f3
    db $f4                                        ; $5b59: $f4
    ret nz                                        ; $5b5a: $c0

    jp nz, $ca61                                  ; $5b5b: $c2 $61 $ca

    ld h, d                                       ; $5b5e: $62
    res 0, h                                      ; $5b5f: $cb $84
    cp l                                          ; $5b61: $bd
    xor c                                         ; $5b62: $a9
    inc d                                         ; $5b63: $14
    adc a                                         ; $5b64: $8f
    adc l                                         ; $5b65: $8d
    db $e3                                        ; $5b66: $e3
    sbc a                                         ; $5b67: $9f
    sbc h                                         ; $5b68: $9c
    ccf                                           ; $5b69: $3f
    xor [hl]                                      ; $5b6a: $ae
    xor [hl]                                      ; $5b6b: $ae
    ld b, [hl]                                    ; $5b6c: $46
    ld b, [hl]                                    ; $5b6d: $46
    sbc h                                         ; $5b6e: $9c
    sbc a                                         ; $5b6f: $9f
    pop bc                                        ; $5b70: $c1
    jp $6082                                      ; $5b71: $c3 $82 $60


    call nz, $c7cd                                ; $5b74: $c4 $cd $c7
    cp l                                          ; $5b77: $bd
    xor c                                         ; $5b78: $a9
    sub l                                         ; $5b79: $95
    adc a                                         ; $5b7a: $8f
    rst $08                                       ; $5b7b: $cf
    adc l                                         ; $5b7c: $8d
    ld [c], a                                     ; $5b7d: $e2
    pop bc                                        ; $5b7e: $c1
    ldh [$af], a                                  ; $5b7f: $e0 $af
    xor a                                         ; $5b81: $af
    ld bc, $bf46                                  ; $5b82: $01 $46 $bf
    ldh [$7a], a                                  ; $5b85: $e0 $7a
    pop hl                                        ; $5b87: $e1
    add d                                         ; $5b88: $82
    call nz, $818c                                ; $5b89: $c4 $8c $81
    cp l                                          ; $5b8c: $bd
    xor e                                         ; $5b8d: $ab
    ld l, $60                                     ; $5b8e: $2e $60
    nop                                           ; $5b90: $00
    xor d                                         ; $5b91: $aa
    inc b                                         ; $5b92: $04
    ld d, $81                                     ; $5b93: $16 $81
    ld c, a                                       ; $5b95: $4f
    call nz, $c2ae                                ; $5b96: $c4 $ae $c2
    pop hl                                        ; $5b99: $e1
    db $fd                                        ; $5b9a: $fd
    db $e4                                        ; $5b9b: $e4
    add d                                         ; $5b9c: $82
    jp $818b                                      ; $5b9d: $c3 $8b $81


    cp l                                          ; $5ba0: $bd
    xor d                                         ; $5ba1: $aa
    or b                                          ; $5ba2: $b0
    ld a, d                                       ; $5ba3: $7a
    add d                                         ; $5ba4: $82
    nop                                           ; $5ba5: $00
    xor e                                         ; $5ba6: $ab
    ld d, $80                                     ; $5ba7: $16 $80
    ld [$9ce2], sp                                ; $5ba9: $08 $e2 $9c
    ld b, [hl]                                    ; $5bac: $46
    pop bc                                        ; $5bad: $c1
    add sp, $46                                   ; $5bae: $e8 $46
    rlca                                          ; $5bb0: $07
    ld [$0001], sp                                ; $5bb1: $08 $01 $00
    cp a                                          ; $5bb4: $bf
    ld [c], a                                     ; $5bb5: $e2
    ret z                                         ; $5bb6: $c8

    ld l, c                                       ; $5bb7: $69
    ld a, d                                       ; $5bb8: $7a
    add l                                         ; $5bb9: $85
    add l                                         ; $5bba: $85
    adc d                                         ; $5bbb: $8a
    sub [hl]                                      ; $5bbc: $96
    and d                                         ; $5bbd: $a2
    jr jr_071_5bc8                                ; $5bbe: $18 $08

    pop hl                                        ; $5bc0: $e1
    add h                                         ; $5bc1: $84
    push hl                                       ; $5bc2: $e5
    db $f4                                        ; $5bc3: $f4
    db $e3                                        ; $5bc4: $e3
    ld [$4199], sp                                ; $5bc5: $08 $99 $41

jr_071_5bc8:
    pop bc                                        ; $5bc8: $c1
    cp l                                          ; $5bc9: $bd
    push bc                                       ; $5bca: $c5
    ld a, h                                       ; $5bcb: $7c
    ret z                                         ; $5bcc: $c8

    ldh [$79], a                                  ; $5bcd: $e0 $79
    ld b, b                                       ; $5bcf: $40
    add l                                         ; $5bd0: $85
    ld c, h                                       ; $5bd1: $4c
    ld [$43e5], sp                                ; $5bd2: $08 $e5 $43
    db $e4                                        ; $5bd5: $e4
    db $f4                                        ; $5bd6: $f4
    db $e3                                        ; $5bd7: $e3
    ld [bc], a                                    ; $5bd8: $02
    rlca                                          ; $5bd9: $07
    rlca                                          ; $5bda: $07
    add a                                         ; $5bdb: $87
    rlca                                          ; $5bdc: $07
    rrca                                          ; $5bdd: $0f
    sbc b                                         ; $5bde: $98
    dec a                                         ; $5bdf: $3d
    jp $c87c                                      ; $5be0: $c3 $7c $c8


    cp c                                          ; $5be3: $b9
    ld h, d                                       ; $5be4: $62
    nop                                           ; $5be5: $00
    adc h                                         ; $5be6: $8c
    sbc [hl]                                      ; $5be7: $9e
    add b                                         ; $5be8: $80
    ld [$7ce3], sp                                ; $5be9: $08 $e3 $7c
    jp hl                                         ; $5bec: $e9


    db $fc                                        ; $5bed: $fc
    push bc                                       ; $5bee: $c5
    dec sp                                        ; $5bef: $3b
    pop hl                                        ; $5bf0: $e1
    ld a, h                                       ; $5bf1: $7c
    ret z                                         ; $5bf2: $c8

    cp c                                          ; $5bf3: $b9
    ld h, h                                       ; $5bf4: $64
    inc d                                         ; $5bf5: $14
    ld c, h                                       ; $5bf6: $4c
    sbc [hl]                                      ; $5bf7: $9e
    ld a, c                                       ; $5bf8: $79
    xor a                                         ; $5bf9: $af
    ld b, d                                       ; $5bfa: $42
    ld [c], a                                     ; $5bfb: $e2
    add h                                         ; $5bfc: $84
    pop bc                                        ; $5bfd: $c1
    ld a, c                                       ; $5bfe: $79
    ld a, d                                       ; $5bff: $7a
    ld a, h                                       ; $5c00: $7c
    ld a, l                                       ; $5c01: $7d
    ld [hl], $e8                                  ; $5c02: $36 $e8
    pop bc                                        ; $5c04: $c1
    ld [bc], a                                    ; $5c05: $02
    ld a, l                                       ; $5c06: $7d
    ldh [$bc], a                                  ; $5c07: $e0 $bc
    add c                                         ; $5c09: $81
    ld b, $65                                     ; $5c0a: $06 $65
    cp c                                          ; $5c0c: $b9
    ld h, h                                       ; $5c0d: $64
    add l                                         ; $5c0e: $85
    xor h                                         ; $5c0f: $ac
    sbc a                                         ; $5c10: $9f
    sbc h                                         ; $5c11: $9c
    ld a, [hl]                                    ; $5c12: $7e
    adc b                                         ; $5c13: $88
    push bc                                       ; $5c14: $c5
    ld a, c                                       ; $5c15: $79
    ld a, [hl]                                    ; $5c16: $7e
    ld b, [hl]                                    ; $5c17: $46
    ld b, [hl]                                    ; $5c18: $46
    adc [hl]                                      ; $5c19: $8e
    ld a, e                                       ; $5c1a: $7b
    cp l                                          ; $5c1b: $bd
    db $e3                                        ; $5c1c: $e3
    ret nz                                        ; $5c1d: $c0

    or $a0                                        ; $5c1e: $f6 $a0
    xor b                                         ; $5c20: $a8
    ldh [$bc], a                                  ; $5c21: $e0 $bc
    add d                                         ; $5c23: $82
    ld b, l                                       ; $5c24: $45
    ld c, b                                       ; $5c25: $48
    ld a, b                                       ; $5c26: $78
    ld [hl+], a                                   ; $5c27: $22
    adc a                                         ; $5c28: $8f
    adc l                                         ; $5c29: $8d
    sbc a                                         ; $5c2a: $9f
    sbc h                                         ; $5c2b: $9c
    inc b                                         ; $5c2c: $04
    pop bc                                        ; $5c2d: $c1
    rst $20                                       ; $5c2e: $e7
    ld a, $c1                                     ; $5c2f: $3e $c1
    ld a, a                                       ; $5c31: $7f
    ld a, h                                       ; $5c32: $7c
    ldh [$34], a                                  ; $5c33: $e0 $34
    jp nz, $a0f2                                  ; $5c35: $c2 $f2 $a0

    ld a, d                                       ; $5c38: $7a
    xor e                                         ; $5c39: $ab
    jr c, jr_071_5c5f                             ; $5c3a: $38 $23

    jr nz, jr_071_5c3e                            ; $5c3c: $20 $00

jr_071_5c3e:
    adc $bf                                       ; $5c3e: $ce $bf
    db $e3                                        ; $5c40: $e3
    pop bc                                        ; $5c41: $c1
    push hl                                       ; $5c42: $e5
    cp a                                          ; $5c43: $bf
    ld [c], a                                     ; $5c44: $e2
    inc l                                         ; $5c45: $2c
    db $e3                                        ; $5c46: $e3
    xor [hl]                                      ; $5c47: $ae
    ld a, b                                       ; $5c48: $78
    ret nz                                        ; $5c49: $c0

    ld a, d                                       ; $5c4a: $7a
    add h                                         ; $5c4b: $84
    ld hl, sp-$08                                 ; $5c4c: $f8 $f8
    ld [$ce00], sp                                ; $5c4e: $08 $00 $ce
    cp a                                          ; $5c51: $bf
    db $e3                                        ; $5c52: $e3
    add b                                         ; $5c53: $80
    ld b, [hl]                                    ; $5c54: $46
    ld b, [hl]                                    ; $5c55: $46
    add e                                         ; $5c56: $83
    adc c                                         ; $5c57: $89
    ld c, a                                       ; $5c58: $4f
    adc b                                         ; $5c59: $88
    adc b                                         ; $5c5a: $88
    adc c                                         ; $5c5b: $89
    add e                                         ; $5c5c: $83
    cp a                                          ; $5c5d: $bf
    db $e3                                        ; $5c5e: $e3

jr_071_5c5f:
    ld [hl], h                                    ; $5c5f: $74
    jp nz, Jump_071_7a46                          ; $5c60: $c2 $46 $7a

    add [hl]                                      ; $5c63: $86
    add sp, -$48                                  ; $5c64: $e8 $b8
    ld [$8c85], sp                                ; $5c66: $08 $85 $8c
    add h                                         ; $5c69: $84
    add c                                         ; $5c6a: $81
    sbc [hl]                                      ; $5c6b: $9e
    ret nz                                        ; $5c6c: $c0

    db $e3                                        ; $5c6d: $e3
    adc d                                         ; $5c6e: $8a
    add l                                         ; $5c6f: $85
    ld b, [hl]                                    ; $5c70: $46
    ld a, a                                       ; $5c71: $7f
    ld b, [hl]                                    ; $5c72: $46
    add l                                         ; $5c73: $85
    add [hl]                                      ; $5c74: $86
    add e                                         ; $5c75: $83
    ld b, [hl]                                    ; $5c76: $46
    add e                                         ; $5c77: $83
    add h                                         ; $5c78: $84
    db $f4                                        ; $5c79: $f4
    and h                                         ; $5c7a: $a4
    ldh [$78], a                                  ; $5c7b: $e0 $78
    and h                                         ; $5c7d: $a4
    ld a, d                                       ; $5c7e: $7a
    ld l, c                                       ; $5c7f: $69
    nop                                           ; $5c80: $00
    ld l, [hl]                                    ; $5c81: $6e
    ld de, $c081                                  ; $5c82: $11 $81 $c0
    ldh [$79], a                                  ; $5c85: $e0 $79
    adc l                                         ; $5c87: $8d
    ld b, [hl]                                    ; $5c88: $46
    ld a, e                                       ; $5c89: $7b
    ld b, [hl]                                    ; $5c8a: $46
    add c                                         ; $5c8b: $81
    ccf                                           ; $5c8c: $3f
    and c                                         ; $5c8d: $a1
    add l                                         ; $5c8e: $85
    add a                                         ; $5c8f: $87
    adc b                                         ; $5c90: $88
    add a                                         ; $5c91: $87
    cp b                                          ; $5c92: $b8
    ldh [$80], a                                  ; $5c93: $e0 $80
    db $f4                                        ; $5c95: $f4
    and d                                         ; $5c96: $a2
    ccf                                           ; $5c97: $3f
    ldh [$7a], a                                  ; $5c98: $e0 $7a
    add [hl]                                      ; $5c9a: $86
    ld a, c                                       ; $5c9b: $79
    ld b, l                                       ; $5c9c: $45
    nop                                           ; $5c9d: $00
    ld c, e                                       ; $5c9e: $4b
    ld de, $8083                                  ; $5c9f: $11 $83 $80
    ldh [$80], a                                  ; $5ca2: $e0 $80
    inc c                                         ; $5ca4: $0c
    add [hl]                                      ; $5ca5: $86
    and b                                         ; $5ca6: $a0
    ret nz                                        ; $5ca7: $c0

    ld [c], a                                     ; $5ca8: $e2
    ld b, [hl]                                    ; $5ca9: $46
    ld b, l                                       ; $5caa: $45
    rst $38                                       ; $5cab: $ff
    ldh [$b3], a                                  ; $5cac: $e0 $b3
    and l                                         ; $5cae: $a5
    cp a                                          ; $5caf: $bf
    ret nz                                        ; $5cb0: $c0

    ld b, l                                       ; $5cb1: $45
    add hl, bc                                    ; $5cb2: $09
    or b                                          ; $5cb3: $b0
    ld l, [hl]                                    ; $5cb4: $6e
    and d                                         ; $5cb5: $a2
    nop                                           ; $5cb6: $00
    ld c, e                                       ; $5cb7: $4b
    ld de, $c082                                  ; $5cb8: $11 $82 $c0
    ld [c], a                                     ; $5cbb: $e2
    xor a                                         ; $5cbc: $af
    xor a                                         ; $5cbd: $af
    add b                                         ; $5cbe: $80
    ldh [rLYC], a                                 ; $5cbf: $e0 $45
    ccf                                           ; $5cc1: $3f
    dec hl                                        ; $5cc2: $2b
    ld sp, $2a2c                                  ; $5cc3: $31 $2c $2a
    ld c, d                                       ; $5cc6: $4a
    ld d, d                                       ; $5cc7: $52
    cp a                                          ; $5cc8: $bf
    push hl                                       ; $5cc9: $e5
    ei                                            ; $5cca: $fb
    ld b, c                                       ; $5ccb: $41
    add b                                         ; $5ccc: $80
    nop                                           ; $5ccd: $00
    ret                                           ; $5cce: $c9


    cp l                                          ; $5ccf: $bd
    pop hl                                        ; $5cd0: $e1
    add l                                         ; $5cd1: $85
    ld l, e                                       ; $5cd2: $6b
    sub l                                         ; $5cd3: $95
    ld b, b                                       ; $5cd4: $40
    ld a, a                                       ; $5cd5: $7f
    jp nz, $c0c1                                  ; $5cd6: $c2 $c1 $c0

    ld b, b                                       ; $5cd9: $40
    pop hl                                        ; $5cda: $e1
    ld b, l                                       ; $5cdb: $45
    ccf                                           ; $5cdc: $3f
    ld l, $20                                     ; $5cdd: $2e $20
    jr nz, jr_071_5d08                            ; $5cdf: $20 $27

    ld c, a                                       ; $5ce1: $4f
    ld d, [hl]                                    ; $5ce2: $56
    ld a, a                                       ; $5ce3: $7f
    push hl                                       ; $5ce4: $e5
    ld b, c                                       ; $5ce5: $41
    pop hl                                        ; $5ce6: $e1
    call z, Call_071_67fc                         ; $5ce7: $cc $fc $67
    or b                                          ; $5cea: $b0
    add c                                         ; $5ceb: $81
    sbc b                                         ; $5cec: $98
    sbc b                                         ; $5ced: $98
    nop                                           ; $5cee: $00
    db $ed                                        ; $5cef: $ed
    rst $00                                       ; $5cf0: $c7
    ld h, c                                       ; $5cf1: $61
    ld b, [hl]                                    ; $5cf2: $46
    ld b, [hl]                                    ; $5cf3: $46
    push af                                       ; $5cf4: $f5
    add d                                         ; $5cf5: $82
    adc b                                         ; $5cf6: $88
    ret nz                                        ; $5cf7: $c0

    adc h                                         ; $5cf8: $8c
    add d                                         ; $5cf9: $82
    and b                                         ; $5cfa: $a0
    cp l                                          ; $5cfb: $bd
    inc hl                                        ; $5cfc: $23
    inc hl                                        ; $5cfd: $23
    dec hl                                        ; $5cfe: $2b
    pop bc                                        ; $5cff: $c1
    ld c, e                                       ; $5d00: $4b
    ret nz                                        ; $5d01: $c0

    add sp, -$41                                  ; $5d02: $e8 $bf
    adc b                                         ; $5d04: $88
    cp a                                          ; $5d05: $bf
    db $e4                                        ; $5d06: $e4
    inc d                                         ; $5d07: $14

jr_071_5d08:
    ld l, $fe                                     ; $5d08: $2e $fe
    add d                                         ; $5d0a: $82
    add l                                         ; $5d0b: $85
    adc e                                         ; $5d0c: $8b
    ld a, $c5                                     ; $5d0d: $3e $c5
    and e                                         ; $5d0f: $a3
    ld b, h                                       ; $5d10: $44
    inc a                                         ; $5d11: $3c
    dec [hl]                                      ; $5d12: $35
    ld [hl], $52                                  ; $5d13: $36 $52
    ret nz                                        ; $5d15: $c0

    db $eb                                        ; $5d16: $eb
    ld a, $83                                     ; $5d17: $3e $83
    jr @-$01                                      ; $5d19: $18 $fd

    db $e3                                        ; $5d1b: $e3
    ld a, [hl]                                    ; $5d1c: $7e
    ldh [rNR14], a                                ; $5d1d: $e0 $14
    inc l                                         ; $5d1f: $2c
    sub $d7                                       ; $5d20: $d6 $d7
    cp $83                                        ; $5d22: $fe $83
    ld a, a                                       ; $5d24: $7f
    pop hl                                        ; $5d25: $e1
    ld a, [hl]                                    ; $5d26: $7e
    ret nz                                        ; $5d27: $c0

    ccf                                           ; $5d28: $3f
    ld b, l                                       ; $5d29: $45
    ld a, [hl-]                                   ; $5d2a: $3a
    dec [hl]                                      ; $5d2b: $35
    dec [hl]                                      ; $5d2c: $35
    jr c, jr_071_5d73                             ; $5d2d: $38 $44

    ld hl, sp+$66                                 ; $5d2f: $f8 $66
    ei                                            ; $5d31: $fb
    ld b, a                                       ; $5d32: $47
    inc c                                         ; $5d33: $0c
    cp a                                          ; $5d34: $bf
    and $85                                       ; $5d35: $e6 $85
    inc c                                         ; $5d37: $0c
    ret c                                         ; $5d38: $d8

    reti                                          ; $5d39: $d9


    cp $80                                        ; $5d3a: $fe $80
    rlca                                          ; $5d3c: $07
    ld h, b                                       ; $5d3d: $60
    rlca                                          ; $5d3e: $07
    pop bc                                        ; $5d3f: $c1
    ld a, $e1                                     ; $5d40: $3e $e1
    rra                                           ; $5d42: $1f
    add hl, sp                                    ; $5d43: $39
    dec [hl]                                      ; $5d44: $35
    dec [hl]                                      ; $5d45: $35
    dec [hl]                                      ; $5d46: $35
    ld [hl], $7f                                  ; $5d47: $36 $7f
    call nz, Call_000_26fb                        ; $5d49: $c4 $fb $26
    cp $e5                                        ; $5d4c: $fe $e5
    and b                                         ; $5d4e: $a0
    nop                                           ; $5d4f: $00
    jr nc, jr_071_5dd1                            ; $5d50: $30 $7f

    ld h, c                                       ; $5d52: $61
    cp a                                          ; $5d53: $bf
    db $e3                                        ; $5d54: $e3
    ld a, $e1                                     ; $5d55: $3e $e1
    ld a, a                                       ; $5d57: $7f
    ldh [$36], a                                  ; $5d58: $e0 $36
    cp a                                          ; $5d5a: $bf
    ldh [rLCDC], a                                ; $5d5b: $e0 $40
    inc b                                         ; $5d5d: $04
    ld a, $8a                                     ; $5d5e: $3e $8a
    ret nz                                        ; $5d60: $c0

    jp hl                                         ; $5d61: $e9


    sub [hl]                                      ; $5d62: $96
    nop                                           ; $5d63: $00
    dec l                                         ; $5d64: $2d
    ld d, d                                       ; $5d65: $52
    inc hl                                        ; $5d66: $23
    add $41                                       ; $5d67: $c6 $41
    cp l                                          ; $5d69: $bd
    ret nz                                        ; $5d6a: $c0

    add [hl]                                      ; $5d6b: $86
    and c                                         ; $5d6c: $a1
    ld [bc], a                                    ; $5d6d: $02
    ld a, $e1                                     ; $5d6e: $3e $e1
    add hl, sp                                    ; $5d70: $39
    ld a, a                                       ; $5d71: $7f
    add c                                         ; $5d72: $81

jr_071_5d73:
    ld [bc], a                                    ; $5d73: $02
    and c                                         ; $5d74: $a1
    cp [hl]                                       ; $5d75: $be
    ld h, e                                       ; $5d76: $63
    ld bc, $40e4                                  ; $5d77: $01 $e4 $40
    inc hl                                        ; $5d7a: $23
    add l                                         ; $5d7b: $85
    dec l                                         ; $5d7c: $2d
    jr nc, jr_071_5d08                            ; $5d7d: $30 $89

    ld hl, $827c                                  ; $5d7f: $21 $7c $82
    add [hl]                                      ; $5d82: $86
    and l                                         ; $5d83: $a5
    ld a, $e0                                     ; $5d84: $3e $e0
    ld a, [hl-]                                   ; $5d86: $3a
    ld b, l                                       ; $5d87: $45
    ld [$bc61], a                                 ; $5d88: $ea $61 $bc
    inc hl                                        ; $5d8b: $23
    sub b                                         ; $5d8c: $90
    add [hl]                                      ; $5d8d: $86
    add $f5                                       ; $5d8e: $c6 $f5
    ld b, h                                       ; $5d90: $44
    nop                                           ; $5d91: $00
    ld c, a                                       ; $5d92: $4f
    call nz, $9e20                                ; $5d93: $c4 $20 $9e
    db $fd                                        ; $5d96: $fd
    ld c, b                                       ; $5d97: $48
    ld a, $e1                                     ; $5d98: $3e $e1
    ld b, d                                       ; $5d9a: $42
    nop                                           ; $5d9b: $00
    ld [hl], d                                    ; $5d9c: $72
    ld b, c                                       ; $5d9d: $41
    inc a                                         ; $5d9e: $3c
    ld [hl+], a                                   ; $5d9f: $22
    rst $38                                       ; $5da0: $ff
    and $f5                                       ; $5da1: $e6 $f5
    ld b, e                                       ; $5da3: $43
    nop                                           ; $5da4: $00
    ld c, l                                       ; $5da5: $4d
    dec b                                         ; $5da6: $05
    ld hl, $e1c0                                  ; $5da7: $21 $c0 $e1
    ld a, d                                       ; $5daa: $7a
    ld h, e                                       ; $5dab: $63
    xor $bf                                       ; $5dac: $ee $bf
    db $e4                                        ; $5dae: $e4
    ld a, [hl-]                                   ; $5daf: $3a
    dec [hl]                                      ; $5db0: $35
    add hl, sp                                    ; $5db1: $39
    push af                                       ; $5db2: $f5
    ld hl, $9908                                  ; $5db3: $21 $08 $99
    rrca                                          ; $5db6: $0f
    add b                                         ; $5db7: $80
    ld hl, sp+$40                                 ; $5db8: $f8 $40
    push af                                       ; $5dba: $f5
    ld c, b                                       ; $5dbb: $48
    pop af                                        ; $5dbc: $f1
    ld [hl+], a                                   ; $5dbd: $22
    nop                                           ; $5dbe: $00
    inc l                                         ; $5dbf: $2c
    pop af                                        ; $5dc0: $f1
    nop                                           ; $5dc1: $00
    ld a, [hl]                                    ; $5dc2: $7e
    add d                                         ; $5dc3: $82
    ld b, c                                       ; $5dc4: $41
    ld c, c                                       ; $5dc5: $49
    add hl, sp                                    ; $5dc6: $39
    inc c                                         ; $5dc7: $0c
    ccf                                           ; $5dc8: $3f
    ldh [$3a], a                                  ; $5dc9: $e0 $3a
    ld b, c                                       ; $5dcb: $41
    rrca                                          ; $5dcc: $0f
    ld [bc], a                                    ; $5dcd: $02
    or d                                          ; $5dce: $b2
    dec h                                         ; $5dcf: $25
    push af                                       ; $5dd0: $f5

jr_071_5dd1:
    ld b, h                                       ; $5dd1: $44
    rst $28                                       ; $5dd2: $ef
    ld hl, $6c00                                  ; $5dd3: $21 $00 $6c
    cp b                                          ; $5dd6: $b8
    pop af                                        ; $5dd7: $f1
    nop                                           ; $5dd8: $00
    ld a, [hl]                                    ; $5dd9: $7e
    add d                                         ; $5dda: $82
    ret nz                                        ; $5ddb: $c0

    ld c, c                                       ; $5ddc: $49
    ld b, h                                       ; $5ddd: $44
    inc a                                         ; $5dde: $3c
    inc a                                         ; $5ddf: $3c
    db $fd                                        ; $5de0: $fd
    and c                                         ; $5de1: $a1
    ld [bc], a                                    ; $5de2: $02

jr_071_5de3:
    dec e                                         ; $5de3: $1d
    ld [bc], a                                    ; $5de4: $02
    ld [hl-], a                                   ; $5de5: $32
    ld hl, $d1d0                                  ; $5de6: $21 $d0 $d1
    sbc a                                         ; $5de9: $9f
    ld [hl], c                                    ; $5dea: $71
    jr nz, jr_071_5de3                            ; $5deb: $20 $f6

    rst $00                                       ; $5ded: $c7
    nop                                           ; $5dee: $00
    dec l                                         ; $5def: $2d
    xor b                                         ; $5df0: $a8
    adc a                                         ; $5df1: $8f
    ld [bc], a                                    ; $5df2: $02
    db $fc                                        ; $5df3: $fc
    and e                                         ; $5df4: $a3
    cp $24                                        ; $5df5: $fe $24
    xor [hl]                                      ; $5df7: $ae
    inc a                                         ; $5df8: $3c
    ret nz                                        ; $5df9: $c0

    add hl, sp                                    ; $5dfa: $39
    ld [hl], e                                    ; $5dfb: $73
    ld [hl+], a                                   ; $5dfc: $22
    sbc [hl]                                      ; $5dfd: $9e
    add b                                         ; $5dfe: $80
    dec l                                         ; $5dff: $2d
    nop                                           ; $5e00: $00
    ld sp, $bf00                                  ; $5e01: $31 $00 $bf
    pop hl                                        ; $5e04: $e1
    rst $30                                       ; $5e05: $f7
    add $00                                       ; $5e06: $c6 $00
    adc l                                         ; $5e08: $8d
    adc a                                         ; $5e09: $8f
    inc bc                                        ; $5e0a: $03
    cp a                                          ; $5e0b: $bf
    rst $20                                       ; $5e0c: $e7
    xor a                                         ; $5e0d: $af
    inc bc                                        ; $5e0e: $03
    xor a                                         ; $5e0f: $af
    xor a                                         ; $5e10: $af
    cp a                                          ; $5e11: $bf
    ldh [$c0], a                                  ; $5e12: $e0 $c0
    db $e4                                        ; $5e14: $e4
    and h                                         ; $5e15: $a4
    ld b, $ee                                     ; $5e16: $06 $ee
    ld hl, $c3f3                                  ; $5e18: $21 $f3 $c3
    nop                                           ; $5e1b: $00
    db $ec                                        ; $5e1c: $ec
    ret nz                                        ; $5e1d: $c0

    ld a, e                                       ; $5e1e: $7b
    ld h, d                                       ; $5e1f: $62
    ld a, c                                       ; $5e20: $79
    ld [hl+], a                                   ; $5e21: $22
    nop                                           ; $5e22: $00
    inc hl                                        ; $5e23: $23
    ret nz                                        ; $5e24: $c0

    nop                                           ; $5e25: $00
    ld l, [hl]                                    ; $5e26: $6e
    ld b, b                                       ; $5e27: $40
    db $fd                                        ; $5e28: $fd
    ld h, b                                       ; $5e29: $60
    ld b, l                                       ; $5e2a: $45
    ld b, c                                       ; $5e2b: $41
    ld bc, $7245                                  ; $5e2c: $01 $45 $72
    nop                                           ; $5e2f: $00
    ld sp, $2403                                  ; $5e30: $31 $03 $24
    inc bc                                        ; $5e33: $03
    cp $e3                                        ; $5e34: $fe $e3
    nop                                           ; $5e36: $00
    ld l, e                                       ; $5e37: $6b
    ld a, e                                       ; $5e38: $7b
    ld b, $b9                                     ; $5e39: $06 $b9
    ld b, h                                       ; $5e3b: $44
    dec sp                                        ; $5e3c: $3b
    sbc h                                         ; $5e3d: $9c
    sbc a                                         ; $5e3e: $9f
    ld l, [hl]                                    ; $5e3f: $6e
    ld b, h                                       ; $5e40: $44
    ld b, l                                       ; $5e41: $45
    ld [hl], $a6                                  ; $5e42: $36 $a6
    add hl, sp                                    ; $5e44: $39
    and b                                         ; $5e45: $a0
    ld sp, $0003                                  ; $5e46: $31 $03 $00
    db $db                                        ; $5e49: $db
    add b                                         ; $5e4a: $80
    add hl, de                                    ; $5e4b: $19
    jp $c113                                      ; $5e4c: $c3 $13 $c1


    nop                                           ; $5e4f: $00
    xor h                                         ; $5e50: $ac
    ld a, e                                       ; $5e51: $7b
    rlca                                          ; $5e52: $07
    ld a, [$4e41]                                 ; $5e53: $fa $41 $4e
    ldh [$6e], a                                  ; $5e56: $e0 $6e
    nop                                           ; $5e58: $00
    cp [hl]                                       ; $5e59: $be
    ldh a, [rLCDC]                                ; $5e5a: $f0 $40
    ld b, l                                       ; $5e5c: $45
    ld [hl], $62                                  ; $5e5d: $36 $62
    and a                                         ; $5e5f: $a7
    ld h, [hl]                                    ; $5e60: $66
    ld hl, sp-$80                                 ; $5e61: $f8 $80
    sbc [hl]                                      ; $5e63: $9e
    nop                                           ; $5e64: $00
    ldh [$a2], a                                  ; $5e65: $e0 $a2
    ld e, d                                       ; $5e67: $5a
    nop                                           ; $5e68: $00
    rst $10                                       ; $5e69: $d7
    ld h, c                                       ; $5e6a: $61
    call nc, Call_000_00a2                        ; $5e6b: $d4 $a2 $00
    xor h                                         ; $5e6e: $ac
    ld a, e                                       ; $5e6f: $7b
    inc bc                                        ; $5e70: $03
    dec a                                         ; $5e71: $3d
    ret nz                                        ; $5e72: $c0

    ret nz                                        ; $5e73: $c0

    push hl                                       ; $5e74: $e5
    ld a, [hl-]                                   ; $5e75: $3a
    ld l, [hl]                                    ; $5e76: $6e
    nop                                           ; $5e77: $00
    sbc [hl]                                      ; $5e78: $9e
    pop bc                                        ; $5e79: $c1
    pop hl                                        ; $5e7a: $e1
    ld h, a                                       ; $5e7b: $67
    and e                                         ; $5e7c: $a3
    ld l, b                                       ; $5e7d: $68
    cp a                                          ; $5e7e: $bf
    ldh [$c0], a                                  ; $5e7f: $e0 $c0
    ldh [rP1], a                                  ; $5e81: $e0 $00
    sbc h                                         ; $5e83: $9c
    and b                                         ; $5e84: $a0
    ld e, d                                       ; $5e85: $5a
    ld b, c                                       ; $5e86: $41
    ld a, [hl]                                    ; $5e87: $7e
    push hl                                       ; $5e88: $e5
    nop                                           ; $5e89: $00
    pop af                                        ; $5e8a: $f1
    sbc e                                         ; $5e8b: $9b
    pop bc                                        ; $5e8c: $c1
    add b                                         ; $5e8d: $80
    db $e4                                        ; $5e8e: $e4
    ld l, [hl]                                    ; $5e8f: $6e
    ld [bc], a                                    ; $5e90: $02
    pop bc                                        ; $5e91: $c1
    pop hl                                        ; $5e92: $e1
    ccf                                           ; $5e93: $3f
    dec [hl]                                      ; $5e94: $35
    dec [hl]                                      ; $5e95: $35
    ld l, h                                       ; $5e96: $6c
    or a                                          ; $5e97: $b7
    cp b                                          ; $5e98: $b8
    ld b, d                                       ; $5e99: $42
    add b                                         ; $5e9a: $80
    db $e3                                        ; $5e9b: $e3
    ld c, a                                       ; $5e9c: $4f
    adc c                                         ; $5e9d: $89
    ldh a, [rP1]                                  ; $5e9e: $f0 $00
    ldh a, [$9b]                                  ; $5ea0: $f0 $9b
    jp $e440                                      ; $5ea2: $c3 $40 $e4


    cpl                                           ; $5ea5: $2f
    ld bc, $b936                                  ; $5ea6: $01 $36 $b9
    cp d                                          ; $5ea9: $ba
    and e                                         ; $5eaa: $a3
    rrca                                          ; $5eab: $0f
    dec [hl]                                      ; $5eac: $35
    ld l, h                                       ; $5ead: $6c
    ld l, a                                       ; $5eae: $6f
    ld l, [hl]                                    ; $5eaf: $6e
    add b                                         ; $5eb0: $80
    ldh [rTIMA], a                                ; $5eb1: $e0 $05
    db $e4                                        ; $5eb3: $e4
    jp z, Jump_000_0027                           ; $5eb4: $ca $27 $00

    ldh a, [$f0]                                  ; $5eb7: $f0 $f0

jr_071_5eb9:
    cp e                                          ; $5eb9: $bb
    ld b, d                                       ; $5eba: $42
    jr c, @+$25                                   ; $5ebb: $38 $23

    db $10                                        ; $5ebd: $10
    ldh [$6e], a                                  ; $5ebe: $e0 $6e
    nop                                           ; $5ec0: $00
    ld [hl], $6e                                  ; $5ec1: $36 $6e
    ld l, a                                       ; $5ec3: $6f
    ld l, h                                       ; $5ec4: $6c
    ld e, $c1                                     ; $5ec5: $1e $c1
    ld [c], a                                     ; $5ec7: $e2
    sbc h                                         ; $5ec8: $9c
    sbc a                                         ; $5ec9: $9f
    ret c                                         ; $5eca: $d8

    reti                                          ; $5ecb: $d9


    ld c, a                                       ; $5ecc: $4f
    xor h                                         ; $5ecd: $ac
    nop                                           ; $5ece: $00
    ldh a, [$3c]                                  ; $5ecf: $f0 $3c
    add e                                         ; $5ed1: $83
    inc b                                         ; $5ed2: $04
    ld c, $c4                                     ; $5ed3: $0e $c4
    ld l, [hl]                                    ; $5ed5: $6e
    ld bc, $bf45                                  ; $5ed6: $01 $45 $bf
    ldh [$c1], a                                  ; $5ed9: $e0 $c1
    db $e3                                        ; $5edb: $e3
    ldh [$60], a                                  ; $5edc: $e0 $60
    ld c, a                                       ; $5ede: $4f
    call z, $cf00                                 ; $5edf: $cc $00 $cf
    nop                                           ; $5ee2: $00
    cp [hl]                                       ; $5ee3: $be
    add e                                         ; $5ee4: $83
    ld [bc], a                                    ; $5ee5: $02
    jp $a04f                                      ; $5ee6: $c3 $4f $a0


    ld l, [hl]                                    ; $5ee9: $6e
    ld bc, $e0bf                                  ; $5eea: $01 $bf $e0
    pop bc                                        ; $5eed: $c1
    db $e3                                        ; $5eee: $e3
    inc hl                                        ; $5eef: $23
    add b                                         ; $5ef0: $80
    ld c, a                                       ; $5ef1: $4f
    ld l, h                                       ; $5ef2: $6c
    ld h, b                                       ; $5ef3: $60
    nop                                           ; $5ef4: $00
    ret nc                                        ; $5ef5: $d0

    jr nz, jr_071_5eb9                            ; $5ef6: $20 $c1

    ld b, d                                       ; $5ef8: $42
    jp nz, $c311                                  ; $5ef9: $c2 $11 $c3

    ld l, [hl]                                    ; $5efc: $6e
    ld bc, $3645                                  ; $5efd: $01 $45 $36
    ld b, e                                       ; $5f00: $43
    pop hl                                        ; $5f01: $e1
    jr @-$17                                      ; $5f02: $18 $e7

    and d                                         ; $5f04: $a2
    ld c, a                                       ; $5f05: $4f
    ld l, h                                       ; $5f06: $6c
    nop                                           ; $5f07: $00
    rst $08                                       ; $5f08: $cf
    sbc $df                                       ; $5f09: $de $df
    inc c                                         ; $5f0b: $0c
    jp $c2c2                                      ; $5f0c: $c3 $c2 $c2


    ld [hl], d                                    ; $5f0f: $72
    add c                                         ; $5f10: $81
    ld [bc], a                                    ; $5f11: $02
    sub d                                         ; $5f12: $92
    and h                                         ; $5f13: $a4
    sbc a                                         ; $5f14: $9f
    rst $20                                       ; $5f15: $e7
    and e                                         ; $5f16: $a3
    nop                                           ; $5f17: $00
    rst $38                                       ; $5f18: $ff
    inc c                                         ; $5f19: $0c
    jp $87d0                                      ; $5f1a: $c3 $d0 $87


    sub e                                         ; $5f1d: $93
    and [hl]                                      ; $5f1e: $a6
    ld [$00c2], sp                                ; $5f1f: $08 $c2 $00
    nop                                           ; $5f22: $00
    cp $7b                                        ; $5f23: $fe $7b
    ld [hl+], a                                   ; $5f25: $22
    add d                                         ; $5f26: $82
    and h                                         ; $5f27: $a4
    ret nc                                        ; $5f28: $d0

    add e                                         ; $5f29: $83
    ld c, a                                       ; $5f2a: $4f
    and e                                         ; $5f2b: $a3
    ld e, c                                       ; $5f2c: $59
    xor $00                                       ; $5f2d: $ee $00
    or $42                                        ; $5f2f: $f6 $42
    and a                                         ; $5f31: $a7
    ld b, $d0                                     ; $5f32: $06 $d0
    add h                                         ; $5f34: $84
    ret c                                         ; $5f35: $d8

    reti                                          ; $5f36: $d9


    ld h, $62                                     ; $5f37: $26 $62
    call nc, Call_000_00d1                        ; $5f39: $d4 $d1 $00
    pop af                                        ; $5f3c: $f1
    ld [bc], a                                    ; $5f3d: $02
    and a                                         ; $5f3e: $a7
    ld h, b                                       ; $5f3f: $60
    and d                                         ; $5f40: $a2
    nop                                           ; $5f41: $00
    cpl                                           ; $5f42: $2f
    pop hl                                        ; $5f43: $e1
    ld e, c                                       ; $5f44: $59
    pop de                                        ; $5f45: $d1
    nop                                           ; $5f46: $00
    reti                                          ; $5f47: $d9


    ret nz                                        ; $5f48: $c0

    add $6a                                       ; $5f49: $c6 $6a
    ld b, h                                       ; $5f4b: $44
    ld e, c                                       ; $5f4c: $59
    pop de                                        ; $5f4d: $d1
    nop                                           ; $5f4e: $00
    jp nz, $0000                                  ; $5f4f: $c2 $00 $00

    nop                                           ; $5f52: $00
    pop bc                                        ; $5f53: $c1
    nop                                           ; $5f54: $00
    rst $38                                       ; $5f55: $ff
    rst $38                                       ; $5f56: $ff
    rst $38                                       ; $5f57: $ff
    rst $38                                       ; $5f58: $ff
    rst $38                                       ; $5f59: $ff
    rst $38                                       ; $5f5a: $ff
    rst $38                                       ; $5f5b: $ff
    rst $38                                       ; $5f5c: $ff
    rst $38                                       ; $5f5d: $ff
    rst $38                                       ; $5f5e: $ff
    nop                                           ; $5f5f: $00
    nop                                           ; $5f60: $00
    dec c                                         ; $5f61: $0d
    add b                                         ; $5f62: $80
    cp $e0                                        ; $5f63: $fe $e0
    nop                                           ; $5f65: $00
    ld b, b                                       ; $5f66: $40
    ret c                                         ; $5f67: $d8

    push hl                                       ; $5f68: $e5
    rst $30                                       ; $5f69: $f7
    and $ff                                       ; $5f6a: $e6 $ff
    rst $38                                       ; $5f6c: $ff
    rst $38                                       ; $5f6d: $ff
    rst $30                                       ; $5f6e: $f7
    nop                                           ; $5f6f: $00
    nop                                           ; $5f70: $00
    nop                                           ; $5f71: $00
    ld [bc], a                                    ; $5f72: $02
    nop                                           ; $5f73: $00
    ld a, [de]                                    ; $5f74: $1a
    inc de                                        ; $5f75: $13
    ld [bc], a                                    ; $5f76: $02
    ld bc, $131b                                  ; $5f77: $01 $1b $13
    ld [bc], a                                    ; $5f7a: $02
    ld [bc], a                                    ; $5f7b: $02
    add hl, de                                    ; $5f7c: $19
    inc d                                         ; $5f7d: $14
    ld [bc], a                                    ; $5f7e: $02
    inc bc                                        ; $5f7f: $03
    jr jr_071_5f97                                ; $5f80: $18 $15

    ld [bc], a                                    ; $5f82: $02
    inc b                                         ; $5f83: $04
    ld [de], a                                    ; $5f84: $12
    rla                                           ; $5f85: $17
    ld [bc], a                                    ; $5f86: $02
    dec b                                         ; $5f87: $05
    inc de                                        ; $5f88: $13
    rla                                           ; $5f89: $17
    ld [bc], a                                    ; $5f8a: $02
    ld b, $1e                                     ; $5f8b: $06 $1e
    rla                                           ; $5f8d: $17
    ld [bc], a                                    ; $5f8e: $02
    rlca                                          ; $5f8f: $07
    rra                                           ; $5f90: $1f
    rla                                           ; $5f91: $17
    ld [bc], a                                    ; $5f92: $02
    ld [$1811], sp                                ; $5f93: $08 $11 $18
    ld [bc], a                                    ; $5f96: $02

jr_071_5f97:
    add hl, bc                                    ; $5f97: $09
    db $10                                        ; $5f98: $10
    add hl, de                                    ; $5f99: $19
    ld [bc], a                                    ; $5f9a: $02
    ld a, [bc]                                    ; $5f9b: $0a
    ld d, $19                                     ; $5f9c: $16 $19
    ld [bc], a                                    ; $5f9e: $02
    dec bc                                        ; $5f9f: $0b
    rla                                           ; $5fa0: $17
    add hl, de                                    ; $5fa1: $19
    ld [bc], a                                    ; $5fa2: $02
    inc c                                         ; $5fa3: $0c
    ld de, $021a                                  ; $5fa4: $11 $1a $02
    dec c                                         ; $5fa7: $0d
    jr z, jr_071_5fc4                             ; $5fa8: $28 $1a

    ld [bc], a                                    ; $5faa: $02
    ld c, $25                                     ; $5fab: $0e $25
    dec de                                        ; $5fad: $1b
    ld [bc], a                                    ; $5fae: $02
    rrca                                          ; $5faf: $0f
    add hl, hl                                    ; $5fb0: $29
    dec de                                        ; $5fb1: $1b
    ld [bc], a                                    ; $5fb2: $02
    db $10                                        ; $5fb3: $10
    inc h                                         ; $5fb4: $24
    inc e                                         ; $5fb5: $1c
    ld [bc], a                                    ; $5fb6: $02
    ld de, $1d25                                  ; $5fb7: $11 $25 $1d
    ld [bc], a                                    ; $5fba: $02
    ld [de], a                                    ; $5fbb: $12
    ld a, [hl+]                                   ; $5fbc: $2a
    dec e                                         ; $5fbd: $1d
    ld [bc], a                                    ; $5fbe: $02
    inc de                                        ; $5fbf: $13
    ld a, [hl+]                                   ; $5fc0: $2a
    rra                                           ; $5fc1: $1f
    ld [bc], a                                    ; $5fc2: $02
    inc d                                         ; $5fc3: $14

jr_071_5fc4:
    dec hl                                        ; $5fc4: $2b
    jr nz, @+$04                                  ; $5fc5: $20 $02

    dec d                                         ; $5fc7: $15
    jr jr_071_5feb                                ; $5fc8: $18 $21

    ld [bc], a                                    ; $5fca: $02
    ld d, $19                                     ; $5fcb: $16 $19
    ld hl, $1702                                  ; $5fcd: $21 $02 $17
    inc de                                        ; $5fd0: $13
    inc h                                         ; $5fd1: $24
    ld [bc], a                                    ; $5fd2: $02
    jr jr_071_5fe7                                ; $5fd3: $18 $12

    dec h                                         ; $5fd5: $25
    ld [bc], a                                    ; $5fd6: $02
    add hl, de                                    ; $5fd7: $19
    inc de                                        ; $5fd8: $13
    ld h, $02                                     ; $5fd9: $26 $02
    ld a, [de]                                    ; $5fdb: $1a
    inc d                                         ; $5fdc: $14
    daa                                           ; $5fdd: $27
    ld [bc], a                                    ; $5fde: $02
    dec de                                        ; $5fdf: $1b
    dec d                                         ; $5fe0: $15
    jr z, @+$04                                   ; $5fe1: $28 $02

    inc e                                         ; $5fe3: $1c
    ld h, $29                                     ; $5fe4: $26 $29
    ld [bc], a                                    ; $5fe6: $02

jr_071_5fe7:
    dec e                                         ; $5fe7: $1d
    daa                                           ; $5fe8: $27
    ld a, [hl+]                                   ; $5fe9: $2a
    ld [bc], a                                    ; $5fea: $02

jr_071_5feb:
    ld e, $16                                     ; $5feb: $1e $16
    dec hl                                        ; $5fed: $2b
    ld [bc], a                                    ; $5fee: $02
    rra                                           ; $5fef: $1f
    ld h, $2b                                     ; $5ff0: $26 $2b
    ld [bc], a                                    ; $5ff2: $02
    jr nz, @+$19                                  ; $5ff3: $20 $17

    inc l                                         ; $5ff5: $2c
    ld [bc], a                                    ; $5ff6: $02
    ld hl, $2e17                                  ; $5ff7: $21 $17 $2e
    ld [bc], a                                    ; $5ffa: $02
    ld [hl+], a                                   ; $5ffb: $22
    jr jr_071_602d                                ; $5ffc: $18 $2f

    ld [bc], a                                    ; $5ffe: $02
    inc hl                                        ; $5fff: $23
    jr nz, jr_071_6031                            ; $6000: $20 $2f

    ld [bc], a                                    ; $6002: $02
    inc h                                         ; $6003: $24
    ld hl, $022f                                  ; $6004: $21 $2f $02
    dec h                                         ; $6007: $25
    ld [hl+], a                                   ; $6008: $22
    cpl                                           ; $6009: $2f
    ld [bc], a                                    ; $600a: $02
    ld h, $19                                     ; $600b: $26 $19
    jr nc, jr_071_6011                            ; $600d: $30 $02

    daa                                           ; $600f: $27
    inc hl                                        ; $6010: $23

jr_071_6011:
    jr nc, jr_071_6015                            ; $6011: $30 $02

    jr z, jr_071_6038                             ; $6013: $28 $23

jr_071_6015:
    ld [hl], $02                                  ; $6015: $36 $02
    add hl, hl                                    ; $6017: $29
    ld [hl+], a                                   ; $6018: $22
    scf                                           ; $6019: $37
    ld [bc], a                                    ; $601a: $02
    ld a, [hl+]                                   ; $601b: $2a
    inc hl                                        ; $601c: $23
    jr c, @+$01                                   ; $601d: $38 $ff

    rst $38                                       ; $601f: $ff
    rst $38                                       ; $6020: $ff
    add hl, hl                                    ; $6021: $29
    ld h, b                                       ; $6022: $60
    inc d                                         ; $6023: $14
    ld h, d                                       ; $6024: $62
    ld c, d                                       ; $6025: $4a
    ld h, h                                       ; $6026: $64
    ld l, d                                       ; $6027: $6a
    ld h, h                                       ; $6028: $64
    ccf                                           ; $6029: $3f
    ld c, $0e                                     ; $602a: $0e $0e
    dec c                                         ; $602c: $0d

jr_071_602d:
    dec c                                         ; $602d: $0d
    dec c                                         ; $602e: $0d
    ld c, $ff                                     ; $602f: $0e $ff

jr_071_6031:
    db $e3                                        ; $6031: $e3
    or $ff                                        ; $6032: $f6 $ff
    nop                                           ; $6034: $00
    db $ec                                        ; $6035: $ec
    rst $28                                       ; $6036: $ef
    db $dd                                        ; $6037: $dd

jr_071_6038:
    pop hl                                        ; $6038: $e1
    rst $10                                       ; $6039: $d7
    db $e3                                        ; $603a: $e3
    or $ff                                        ; $603b: $f6 $ff
    or $f6                                        ; $603d: $f6 $f6
    sbc c                                         ; $603f: $99
    rst $38                                       ; $6040: $ff
    or $f9                                        ; $6041: $f6 $f9
    sbc c                                         ; $6043: $99
    rst $38                                       ; $6044: $ff
    nop                                           ; $6045: $00
    add l                                         ; $6046: $85
    rst $38                                       ; $6047: $ff
    or $ff                                        ; $6048: $f6 $ff
    nop                                           ; $604a: $00
    rst $38                                       ; $604b: $ff
    or $ff                                        ; $604c: $f6 $ff
    ld a, e                                       ; $604e: $7b
    rst $38                                       ; $604f: $ff
    or $ff                                        ; $6050: $f6 $ff
    nop                                           ; $6052: $00
    rst $38                                       ; $6053: $ff
    or $ff                                        ; $6054: $f6 $ff
    nop                                           ; $6056: $00
    add l                                         ; $6057: $85
    rst $38                                       ; $6058: $ff
    or $ff                                        ; $6059: $f6 $ff
    nop                                           ; $605b: $00
    rst $38                                       ; $605c: $ff
    or $ff                                        ; $605d: $f6 $ff
    ld a, e                                       ; $605f: $7b
    rst $38                                       ; $6060: $ff
    or $ff                                        ; $6061: $f6 $ff
    sbc c                                         ; $6063: $99
    rst $38                                       ; $6064: $ff
    add l                                         ; $6065: $85
    rst $38                                       ; $6066: $ff
    nop                                           ; $6067: $00
    or $ff                                        ; $6068: $f6 $ff
    nop                                           ; $606a: $00
    rst $38                                       ; $606b: $ff
    or $ff                                        ; $606c: $f6 $ff
    ld a, e                                       ; $606e: $7b
    rst $38                                       ; $606f: $ff
    or $ff                                        ; $6070: $f6 $ff
    nop                                           ; $6072: $00
    rst $38                                       ; $6073: $ff
    or $ff                                        ; $6074: $f6 $ff
    add l                                         ; $6076: $85
    rst $38                                       ; $6077: $ff
    nop                                           ; $6078: $00
    or $ff                                        ; $6079: $f6 $ff
    nop                                           ; $607b: $00
    rst $38                                       ; $607c: $ff
    or $ff                                        ; $607d: $f6 $ff

Call_071_607f:
    ld a, e                                       ; $607f: $7b
    rst $38                                       ; $6080: $ff
    or $ff                                        ; $6081: $f6 $ff
    and e                                         ; $6083: $a3
    rst $38                                       ; $6084: $ff
    add l                                         ; $6085: $85
    rst $38                                       ; $6086: $ff

Call_071_6087:
    sbc c                                         ; $6087: $99
    db $fd                                        ; $6088: $fd
    rra                                           ; $6089: $1f

Jump_071_608a:
    ld c, l                                       ; $608a: $4d
    ld c, l                                       ; $608b: $4d
    ld c, l                                       ; $608c: $4d
    ld c, $0e                                     ; $608d: $0e $0e
    ei                                            ; $608f: $fb
    ldh [$f9], a                                  ; $6090: $e0 $f9
    pop hl                                        ; $6092: $e1
    nop                                           ; $6093: $00
    rst $38                                       ; $6094: $ff
    inc b                                         ; $6095: $04
    add l                                         ; $6096: $85
    rst $28                                       ; $6097: $ef
    pop bc                                        ; $6098: $c1
    pop hl                                        ; $6099: $e1
    dec c                                         ; $609a: $0d
    cp l                                          ; $609b: $bd
    pop hl                                        ; $609c: $e1
    ld a, e                                       ; $609d: $7b
    rst $38                                       ; $609e: $ff
    add l                                         ; $609f: $85
    rst $28                                       ; $60a0: $ef
    ld h, b                                       ; $60a1: $60
    db $e4                                        ; $60a2: $e4
    ret nz                                        ; $60a3: $c0

    ld [c], a                                     ; $60a4: $e2
    nop                                           ; $60a5: $00
    ld a, h                                       ; $60a6: $7c
    pop hl                                        ; $60a7: $e1
    nop                                           ; $60a8: $00
    rst $38                                       ; $60a9: $ff
    ld a, [bc]                                    ; $60aa: $0a
    rst $20                                       ; $60ab: $e7
    ld c, l                                       ; $60ac: $4d
    db $e3                                        ; $60ad: $e3
    call $80e2                                    ; $60ae: $cd $e2 $80
    db $e4                                        ; $60b1: $e4
    inc a                                         ; $60b2: $3c
    push hl                                       ; $60b3: $e5
    add l                                         ; $60b4: $85
    rst $38                                       ; $60b5: $ff
    nop                                           ; $60b6: $00
    ld a, [bc]                                    ; $60b7: $0a
    pop hl                                        ; $60b8: $e1
    ld c, b                                       ; $60b9: $48
    pop hl                                        ; $60ba: $e1
    ret nz                                        ; $60bb: $c0

    ld [c], a                                     ; $60bc: $e2
    pop af                                        ; $60bd: $f1
    and $fd                                       ; $60be: $e6 $fd
    jp $fc00                                      ; $60c0: $c3 $00 $fc


    reti                                          ; $60c3: $d9


    jp $e1c9                                      ; $60c4: $c3 $c9 $e1


    inc [hl]                                      ; $60c7: $34
    and e                                         ; $60c8: $a3
    pop bc                                        ; $60c9: $c1
    ld c, l                                       ; $60ca: $4d
    pop hl                                        ; $60cb: $e1
    dec l                                         ; $60cc: $2d
    cp h                                          ; $60cd: $bc
    ret nz                                        ; $60ce: $c0

    dec l                                         ; $60cf: $2d
    dec l                                         ; $60d0: $2d
    cp d                                          ; $60d1: $ba
    call nz, $ff00                                ; $60d2: $c4 $00 $ff
    cp h                                          ; $60d5: $bc
    adc a                                         ; $60d6: $8f
    call nz, $e308                                ; $60d7: $c4 $08 $e3
    dec c                                         ; $60da: $0d
    ld c, l                                       ; $60db: $4d
    ld l, l                                       ; $60dc: $6d
    ld c, e                                       ; $60dd: $4b
    db $fd                                        ; $60de: $fd
    ldh [rWX], a                                  ; $60df: $e0 $4b
    add e                                         ; $60e1: $83
    dec bc                                        ; $60e2: $0b
    ld l, l                                       ; $60e3: $6d
    or b                                          ; $60e4: $b0
    db $e3                                        ; $60e5: $e3
    nop                                           ; $60e6: $00
    rst $38                                       ; $60e7: $ff
    db $db                                        ; $60e8: $db
    jp $c1d5                                      ; $60e9: $c3 $d5 $c1


    ld b, [hl]                                    ; $60ec: $46
    pop hl                                        ; $60ed: $e1
    ld l, l                                       ; $60ee: $6d
    rla                                           ; $60ef: $17
    ld c, e                                       ; $60f0: $4b

Jump_071_60f1:
    dec bc                                        ; $60f1: $0b
    ld c, e                                       ; $60f2: $4b
    rst $38                                       ; $60f3: $ff
    pop hl                                        ; $60f4: $e1
    dec c                                         ; $60f5: $0d
    ret nz                                        ; $60f6: $c0

    db $e3                                        ; $60f7: $e3
    nop                                           ; $60f8: $00
    db $fc                                        ; $60f9: $fc
    add hl, de                                    ; $60fa: $19
    jp nz, $fbee                                  ; $60fb: $c2 $ee $fb

    db $e3                                        ; $60fe: $e3
    dec c                                         ; $60ff: $0d
    ld c, l                                       ; $6100: $4d
    dec l                                         ; $6101: $2d
    dec bc                                        ; $6102: $0b
    pop bc                                        ; $6103: $c1
    dec l                                         ; $6104: $2d
    ld c, e                                       ; $6105: $4b
    dec hl                                        ; $6106: $2b
    ccf                                           ; $6107: $3f
    dec bc                                        ; $6108: $0b
    dec bc                                        ; $6109: $0b
    dec bc                                        ; $610a: $0b
    dec hl                                        ; $610b: $2b
    dec bc                                        ; $610c: $0b
    ld l, l                                       ; $610d: $6d
    cp b                                          ; $610e: $b8
    jp $fb00                                      ; $610f: $c3 $00 $fb


    ld [de], a                                    ; $6112: $12
    call nz, Call_071_4de7                        ; $6113: $c4 $e7 $4d
    ld c, c                                       ; $6116: $49
    pop hl                                        ; $6117: $e1
    pop bc                                        ; $6118: $c1
    pop hl                                        ; $6119: $e1
    dec c                                         ; $611a: $0d
    pop bc                                        ; $611b: $c1
    pop hl                                        ; $611c: $e1
    ret nz                                        ; $611d: $c0

    ldh [$f6], a                                  ; $611e: $e0 $f6
    ldh [rSVBK], a                                ; $6120: $e0 $70
    cp b                                          ; $6122: $b8
    jp $fd00                                      ; $6123: $c3 $00 $fd


    jp Jump_000_10e1                              ; $6126: $c3 $e1 $10


    ldh [rWX], a                                  ; $6129: $e0 $4b
    dec c                                         ; $612b: $0d
    dec l                                         ; $612c: $2d
    ld c, b                                       ; $612d: $48
    pop hl                                        ; $612e: $e1
    cpl                                           ; $612f: $2f
    ld c, l                                       ; $6130: $4d
    ld l, l                                       ; $6131: $6d
    dec hl                                        ; $6132: $2b
    ld l, e                                       ; $6133: $6b
    add b                                         ; $6134: $80
    ldh [rOCPD], a                                ; $6135: $e0 $6b
    ld b, b                                       ; $6137: $40
    ldh [rP1], a                                  ; $6138: $e0 $00
    rst $18                                       ; $613a: $df
    jp nz, $a30a                                  ; $613b: $c2 $0a $a3

    ld l, l                                       ; $613e: $6d
    push bc                                       ; $613f: $c5
    ldh [rTAC], a                                 ; $6140: $e0 $07
    pop hl                                        ; $6142: $e1
    add a                                         ; $6143: $87
    pop bc                                        ; $6144: $c1
    dec b                                         ; $6145: $05
    ld [c], a                                     ; $6146: $e2
    ld c, e                                       ; $6147: $4b
    ld l, e                                       ; $6148: $6b
    rlca                                          ; $6149: $07
    ld l, e                                       ; $614a: $6b
    ld c, e                                       ; $614b: $4b
    ld c, e                                       ; $614c: $4b
    add c                                         ; $614d: $81
    ldh [rP1], a                                  ; $614e: $e0 $00
    rst $18                                       ; $6150: $df
    sub c                                         ; $6151: $91
    jp nz, $e1c5                                  ; $6152: $c2 $c5 $e1

    sub e                                         ; $6155: $93
    db $e3                                        ; $6156: $e3
    nop                                           ; $6157: $00
    ld b, h                                       ; $6158: $44
    jp nz, $e0c1                                  ; $6159: $c2 $c1 $e0

    pop bc                                        ; $615c: $c1
    jp nz, $df00                                  ; $615d: $c2 $00 $df

    nop                                           ; $6160: $00
    ld [c], a                                     ; $6161: $e2
    add a                                         ; $6162: $87
    pop hl                                        ; $6163: $e1
    push bc                                       ; $6164: $c5
    and e                                         ; $6165: $a3
    sub b                                         ; $6166: $90
    db $e3                                        ; $6167: $e3
    ld [bc], a                                    ; $6168: $02
    cp a                                          ; $6169: $bf
    ret nz                                        ; $616a: $c0

    ld c, e                                       ; $616b: $4b
    ld [hl], d                                    ; $616c: $72
    ld [c], a                                     ; $616d: $e2
    push hl                                       ; $616e: $e5
    and d                                         ; $616f: $a2
    nop                                           ; $6170: $00
    rst $18                                       ; $6171: $df
    cp h                                          ; $6172: $bc
    db $e3                                        ; $6173: $e3
    sub h                                         ; $6174: $94
    db $e4                                        ; $6175: $e4
    ld b, b                                       ; $6176: $40
    and h                                         ; $6177: $a4
    nop                                           ; $6178: $00
    add h                                         ; $6179: $84
    pop bc                                        ; $617a: $c1
    add e                                         ; $617b: $83
    jp $df00                                      ; $617c: $c3 $00 $df


    sbc c                                         ; $617f: $99
    add c                                         ; $6180: $81
    ret z                                         ; $6181: $c8

    add d                                         ; $6182: $82
    inc b                                         ; $6183: $04
    and e                                         ; $6184: $a3
    di                                            ; $6185: $f3
    push hl                                       ; $6186: $e5
    ld b, e                                       ; $6187: $43
    push bc                                       ; $6188: $c5
    nop                                           ; $6189: $00
    nop                                           ; $618a: $00
    cp h                                          ; $618b: $bc
    ld de, $c681                                  ; $618c: $11 $81 $c6
    add h                                         ; $618f: $84
    sub d                                         ; $6190: $92
    push bc                                       ; $6191: $c5
    ld a, c                                       ; $6192: $79
    ld h, d                                       ; $6193: $62

Jump_071_6194:
    ei                                            ; $6194: $fb
    add [hl]                                      ; $6195: $86
    nop                                           ; $6196: $00
    cp e                                          ; $6197: $bb
    sub $85                                       ; $6198: $d6 $85
    nop                                           ; $619a: $00
    jp $c584                                      ; $619b: $c3 $84 $c5


    add l                                         ; $619e: $85
    xor a                                         ; $619f: $af
    rst $20                                       ; $61a0: $e7
    nop                                           ; $61a1: $00
    rst $38                                       ; $61a2: $ff
    ld a, [bc]                                    ; $61a3: $0a
    ld h, l                                       ; $61a4: $65
    ld a, c                                       ; $61a5: $79
    and $f9                                       ; $61a6: $e6 $f9
    add sp, $00                                   ; $61a8: $e8 $00
    rst $38                                       ; $61aa: $ff
    nop                                           ; $61ab: $00
    ld [hl], c                                    ; $61ac: $71
    ld h, a                                       ; $61ad: $67
    ld [hl], $a8                                  ; $61ae: $36 $a8
    add l                                         ; $61b0: $85
    rst $38                                       ; $61b1: $ff
    or $ff                                        ; $61b2: $f6 $ff
    nop                                           ; $61b4: $00
    ld e, a                                       ; $61b5: $5f
    or $ff                                        ; $61b6: $f6 $ff
    nop                                           ; $61b8: $00
    ld a, a                                       ; $61b9: $7f
    or $ff                                        ; $61ba: $f6 $ff
    nop                                           ; $61bc: $00
    nop                                           ; $61bd: $00
    rst $38                                       ; $61be: $ff
    or $ff                                        ; $61bf: $f6 $ff
    add l                                         ; $61c1: $85
    rst $38                                       ; $61c2: $ff
    or $ff                                        ; $61c3: $f6 $ff
    nop                                           ; $61c5: $00
    rst $38                                       ; $61c6: $ff
    or $ff                                        ; $61c7: $f6 $ff
    ld a, e                                       ; $61c9: $7b
    rst $38                                       ; $61ca: $ff
    or $ff                                        ; $61cb: $f6 $ff
    nop                                           ; $61cd: $00
    and e                                         ; $61ce: $a3
    rst $38                                       ; $61cf: $ff
    add l                                         ; $61d0: $85
    rst $38                                       ; $61d1: $ff
    or $ff                                        ; $61d2: $f6 $ff
    nop                                           ; $61d4: $00
    rst $38                                       ; $61d5: $ff
    adc a                                         ; $61d6: $8f
    rst $38                                       ; $61d7: $ff
    ld a, e                                       ; $61d8: $7b
    rst $38                                       ; $61d9: $ff
    or $ff                                        ; $61da: $f6 $ff
    nop                                           ; $61dc: $00
    rst $38                                       ; $61dd: $ff
    nop                                           ; $61de: $00
    or $ff                                        ; $61df: $f6 $ff
    add l                                         ; $61e1: $85

Jump_071_61e2:
    rst $38                                       ; $61e2: $ff
    or $ff                                        ; $61e3: $f6 $ff
    nop                                           ; $61e5: $00
    rst $38                                       ; $61e6: $ff
    or $ff                                        ; $61e7: $f6 $ff
    ld a, e                                       ; $61e9: $7b
    rst $38                                       ; $61ea: $ff
    or $ff                                        ; $61eb: $f6 $ff
    nop                                           ; $61ed: $00
    rst $38                                       ; $61ee: $ff
    nop                                           ; $61ef: $00
    add l                                         ; $61f0: $85
    rst $38                                       ; $61f1: $ff
    sbc c                                         ; $61f2: $99
    rst $38                                       ; $61f3: $ff
    nop                                           ; $61f4: $00
    rst $38                                       ; $61f5: $ff
    adc a                                         ; $61f6: $8f
    rst $38                                       ; $61f7: $ff
    ld a, e                                       ; $61f8: $7b
    rst $38                                       ; $61f9: $ff
    or $ff                                        ; $61fa: $f6 $ff
    nop                                           ; $61fc: $00
    rst $38                                       ; $61fd: $ff
    or $ff                                        ; $61fe: $f6 $ff
    nop                                           ; $6200: $00
    add l                                         ; $6201: $85
    rst $38                                       ; $6202: $ff
    or $ff                                        ; $6203: $f6 $ff
    nop                                           ; $6205: $00
    rst $38                                       ; $6206: $ff
    or $ff                                        ; $6207: $f6 $ff
    ld a, e                                       ; $6209: $7b
    rst $38                                       ; $620a: $ff
    or $ff                                        ; $620b: $f6 $ff
    nop                                           ; $620d: $00
    rst $38                                       ; $620e: $ff
    or $ff                                        ; $620f: $f6 $ff
    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    nop                                           ; $6213: $00
    rst $38                                       ; $6214: $ff
    ld h, $27                                     ; $6215: $26 $27
    add hl, de                                    ; $6217: $19
    jr z, jr_071_6243                             ; $6218: $28 $29

    ld a, [hl+]                                   ; $621a: $2a
    dec hl                                        ; $621b: $2b
    inc l                                         ; $621c: $2c
    di                                            ; $621d: $f3
    dec l                                         ; $621e: $2d
    ld l, $f6                                     ; $621f: $2e $f6
    rst $38                                       ; $6221: $ff
    db $ec                                        ; $6222: $ec
    pop af                                        ; $6223: $f1
    cpl                                           ; $6224: $2f
    jr nc, jr_071_6258                            ; $6225: $30 $31

    add hl, de                                    ; $6227: $19
    ccf                                           ; $6228: $3f
    ld [hl-], a                                   ; $6229: $32
    inc sp                                        ; $622a: $33
    inc [hl]                                      ; $622b: $34
    dec [hl]                                      ; $622c: $35
    ld [hl], $19                                  ; $622d: $36 $19
    or $ff                                        ; $622f: $f6 $ff
    db $ec                                        ; $6231: $ec
    pop af                                        ; $6232: $f1
    nop                                           ; $6233: $00
    sbc c                                         ; $6234: $99
    rst $38                                       ; $6235: $ff
    or $fb                                        ; $6236: $f6 $fb
    sbc c                                         ; $6238: $99
    rst $38                                       ; $6239: $ff
    or $fb                                        ; $623a: $f6 $fb
    sbc c                                         ; $623c: $99
    rst $38                                       ; $623d: $ff
    nop                                           ; $623e: $00
    rst $38                                       ; $623f: $ff
    sbc c                                         ; $6240: $99
    rst $38                                       ; $6241: $ff
    nop                                           ; $6242: $00

jr_071_6243:
    rst $38                                       ; $6243: $ff
    nop                                           ; $6244: $00
    adc a                                         ; $6245: $8f
    rst $38                                       ; $6246: $ff
    nop                                           ; $6247: $00
    rst $38                                       ; $6248: $ff
    or $ff                                        ; $6249: $f6 $ff
    nop                                           ; $624b: $00
    rst $38                                       ; $624c: $ff
    or $ff                                        ; $624d: $f6 $ff
    nop                                           ; $624f: $00
    rst $38                                       ; $6250: $ff
    or $ff                                        ; $6251: $f6 $ff
    nop                                           ; $6253: $00
    rst $38                                       ; $6254: $ff
    nop                                           ; $6255: $00
    or $ff                                        ; $6256: $f6 $ff

jr_071_6258:
    nop                                           ; $6258: $00
    rst $38                                       ; $6259: $ff
    or $ff                                        ; $625a: $f6 $ff
    nop                                           ; $625c: $00
    rst $38                                       ; $625d: $ff
    nop                                           ; $625e: $00
    rst $38                                       ; $625f: $ff
    sbc c                                         ; $6260: $99
    rst $38                                       ; $6261: $ff
    nop                                           ; $6262: $00
    rst $38                                       ; $6263: $ff
    adc a                                         ; $6264: $8f
    rst $38                                       ; $6265: $ff
    nop                                           ; $6266: $00
    nop                                           ; $6267: $00
    rst $38                                       ; $6268: $ff
    or $ff                                        ; $6269: $f6 $ff
    nop                                           ; $626b: $00
    rst $38                                       ; $626c: $ff
    or $ff                                        ; $626d: $f6 $ff
    nop                                           ; $626f: $00
    rst $38                                       ; $6270: $ff
    or $ff                                        ; $6271: $f6 $ff
    nop                                           ; $6273: $00
    rst $38                                       ; $6274: $ff
    or $ff                                        ; $6275: $f6 $ff

Jump_071_6277:
    ldh a, [rP1]                                  ; $6277: $f0 $00
    rst $38                                       ; $6279: $ff
    or $ff                                        ; $627a: $f6 $ff
    nop                                           ; $627c: $00
    rst $38                                       ; $627d: $ff
    ld [c], a                                     ; $627e: $e2
    ld [c], a                                     ; $627f: $e2
    add hl, de                                    ; $6280: $19
    add hl, de                                    ; $6281: $19
    add hl, de                                    ; $6282: $19
    dec l                                         ; $6283: $2d
    push hl                                       ; $6284: $e5
    ld l, $fb                                     ; $6285: $2e $fb
    ldh [rNR24], a                                ; $6287: $e0 $19
    ld d, e                                       ; $6289: $53
    pop af                                        ; $628a: $f1
    sbc c                                         ; $628b: $99
    rst $38                                       ; $628c: $ff
    ld [hl-], a                                   ; $628d: $32
    add hl, de                                    ; $628e: $19
    add hl, de                                    ; $628f: $19
    ccf                                           ; $6290: $3f
    ld a, [de]                                    ; $6291: $1a
    dec de                                        ; $6292: $1b
    add hl, de                                    ; $6293: $19
    add hl, de                                    ; $6294: $19
    jr nz, jr_071_62b8                            ; $6295: $20 $21

    nop                                           ; $6297: $00
    rst $38                                       ; $6298: $ff
    add l                                         ; $6299: $85
    ldh a, [rIE]                                  ; $629a: $f0 $ff
    jr nz, jr_071_62bf                            ; $629c: $20 $21

    ccf                                           ; $629e: $3f
    ld b, b                                       ; $629f: $40
    add hl, de                                    ; $62a0: $19
    inc e                                         ; $62a1: $1c
    dec e                                         ; $62a2: $1d
    add hl, de                                    ; $62a3: $19
    rlca                                          ; $62a4: $07
    add hl, de                                    ; $62a5: $19
    ld [hl+], a                                   ; $62a6: $22
    inc hl                                        ; $62a7: $23
    ld a, l                                       ; $62a8: $7d
    ld [c], a                                     ; $62a9: $e2
    nop                                           ; $62aa: $00
    rst $38                                       ; $62ab: $ff
    ld a, [bc]                                    ; $62ac: $0a
    add sp, $46                                   ; $62ad: $e8 $46
    ldh [$c9], a                                  ; $62af: $e0 $c9
    ldh [rIE], a                                  ; $62b1: $e0 $ff
    scf                                           ; $62b3: $37
    jr c, jr_071_62d4                             ; $62b4: $38 $1e

    rra                                           ; $62b6: $1f
    add hl, sp                                    ; $62b7: $39

jr_071_62b8:
    add hl, de                                    ; $62b8: $19
    inc h                                         ; $62b9: $24
    dec h                                         ; $62ba: $25
    jp nz, $e17d                                  ; $62bb: $c2 $7d $e1

    add hl, de                                    ; $62be: $19

jr_071_62bf:
    nop                                           ; $62bf: $00
    rst $38                                       ; $62c0: $ff
    ld a, [bc]                                    ; $62c1: $0a
    rst $20                                       ; $62c2: $e7
    ld c, b                                       ; $62c3: $48
    pop hl                                        ; $62c4: $e1
    ret                                           ; $62c5: $c9


    ldh [$3a], a                                  ; $62c6: $e0 $3a
    dec sp                                        ; $62c8: $3b
    rlca                                          ; $62c9: $07
    inc a                                         ; $62ca: $3c
    dec a                                         ; $62cb: $3d
    ld a, $b4                                     ; $62cc: $3e $b4
    db $e4                                        ; $62ce: $e4
    or $c0                                        ; $62cf: $f6 $c0
    nop                                           ; $62d1: $00
    rst $38                                       ; $62d2: $ff
    db $ec                                        ; $62d3: $ec

jr_071_62d4:
    ret nz                                        ; $62d4: $c0

    ld [de], a                                    ; $62d5: $12
    ldh [$fc], a                                  ; $62d6: $e0 $fc
    ld c, b                                       ; $62d8: $48
    ld [c], a                                     ; $62d9: $e2
    ld b, e                                       ; $62da: $43
    ldh [rNR24], a                                ; $62db: $e0 $19
    ld d, $18                                     ; $62dd: $16 $18
    ld d, $16                                     ; $62df: $16 $16
    inc d                                         ; $62e1: $14
    rlca                                          ; $62e2: $07
    inc d                                         ; $62e3: $14
    jr @+$18                                      ; $62e4: $18 $16

    ld a, l                                       ; $62e6: $7d
    pop hl                                        ; $62e7: $e1
    or h                                          ; $62e8: $b4
    ret nz                                        ; $62e9: $c0

    nop                                           ; $62ea: $00
    rst $38                                       ; $62eb: $ff
    sub l                                         ; $62ec: $95
    db $e4                                        ; $62ed: $e4
    ld c, b                                       ; $62ee: $48
    db $e3                                        ; $62ef: $e3
    rst $38                                       ; $62f0: $ff
    ld d, $14                                     ; $62f1: $16 $14
    inc de                                        ; $62f3: $13
    ld de, $1313                                  ; $62f4: $11 $13 $13
    ld de, $8f11                                  ; $62f7: $11 $11 $8f
    ld de, $3f15                                  ; $62fa: $11 $15 $3f
    ld b, b                                       ; $62fd: $40
    cp b                                          ; $62fe: $b8
    ret nz                                        ; $62ff: $c0

    nop                                           ; $6300: $00
    rst $38                                       ; $6301: $ff
    ld d, c                                       ; $6302: $51
    ret nz                                        ; $6303: $c0

    ccf                                           ; $6304: $3f
    ret                                           ; $6305: $c9


    ld b, b                                       ; $6306: $40
    sub l                                         ; $6307: $95
    pop hl                                        ; $6308: $e1
    ld c, b                                       ; $6309: $48
    ld [c], a                                     ; $630a: $e2
    ld d, $c5                                     ; $630b: $16 $c5
    pop hl                                        ; $630d: $e1
    db $fd                                        ; $630e: $fd
    pop hl                                        ; $630f: $e1
    inc de                                        ; $6310: $13
    ld d, $61                                     ; $6311: $16 $61
    add hl, de                                    ; $6313: $19
    cp b                                          ; $6314: $b8
    jp nz, $fb00                                  ; $6315: $c2 $00 $fb

    add hl, de                                    ; $6318: $19
    jp nz, $e3fb                                  ; $6319: $c2 $fb $e3

    ld d, $14                                     ; $631c: $16 $14
    adc $e0                                       ; $631e: $ce $e0
    db $fd                                        ; $6320: $fd
    add hl, de                                    ; $6321: $19
    ret nz                                        ; $6322: $c0

    ldh [rNR10], a                                ; $6323: $e0 $10
    ld [bc], a                                    ; $6325: $02
    ld [$0208], sp                                ; $6326: $08 $08 $02
    db $10                                        ; $6329: $10
    sub c                                         ; $632a: $91
    dec d                                         ; $632b: $15
    cp b                                          ; $632c: $b8
    jp $fb00                                      ; $632d: $c3 $00 $fb


    call nz, $14e7                                ; $6330: $c4 $e7 $14
    ld c, c                                       ; $6333: $49
    pop hl                                        ; $6334: $e1
    ld a, [$16e0]                                 ; $6335: $fa $e0 $16
    rst $38                                       ; $6338: $ff
    rla                                           ; $6339: $17
    db $10                                        ; $633a: $10
    ld bc, $0000                                  ; $633b: $01 $00 $00
    nop                                           ; $633e: $00
    rlca                                          ; $633f: $07
    rrca                                          ; $6340: $0f
    inc bc                                        ; $6341: $03
    inc de                                        ; $6342: $13
    ld d, $b8                                     ; $6343: $16 $b8
    call nz, $fd00                                ; $6345: $c4 $00 $fd
    jp Jump_000_10e1                              ; $6348: $c3 $e1 $10


    pop hl                                        ; $634b: $e1
    dec bc                                        ; $634c: $0b
    ld [c], a                                     ; $634d: $e2
    dec b                                         ; $634e: $05
    ldh [rNR31], a                                ; $634f: $e0 $1b
    rrca                                          ; $6351: $0f
    dec b                                         ; $6352: $05
    ret nz                                        ; $6353: $c0

    ldh [rSB], a                                  ; $6354: $e0 $01
    db $10                                        ; $6356: $10
    ld b, b                                       ; $6357: $40
    pop hl                                        ; $6358: $e1
    nop                                           ; $6359: $00
    rst $18                                       ; $635a: $df
    ld [hl], c                                    ; $635b: $71
    and b                                         ; $635c: $a0
    add $0e                                       ; $635d: $c6 $0e
    ldh [rNR13], a                                ; $635f: $e0 $13
    inc de                                        ; $6361: $13
    add l                                         ; $6362: $85
    ldh [$8b], a                                  ; $6363: $e0 $8b
    pop bc                                        ; $6365: $c1
    inc bc                                        ; $6366: $03
    ld [c], a                                     ; $6367: $e2
    ld [de], a                                    ; $6368: $12
    inc bc                                        ; $6369: $03
    ld a, a                                       ; $636a: $7f
    inc bc                                        ; $636b: $03
    ld [bc], a                                    ; $636c: $02
    db $10                                        ; $636d: $10
    ld de, $3f17                                  ; $636e: $11 $17 $3f
    ld b, b                                       ; $6371: $40
    nop                                           ; $6372: $00
    rst $18                                       ; $6373: $df
    push bc                                       ; $6374: $c5
    add hl, hl                                    ; $6375: $29
    sub c                                         ; $6376: $91
    pop bc                                        ; $6377: $c1
    inc de                                        ; $6378: $13
    push bc                                       ; $6379: $c5
    ldh [$93], a                                  ; $637a: $e0 $93
    db $e3                                        ; $637c: $e3
    ld [hl], l                                    ; $637d: $75
    db $e4                                        ; $637e: $e4
    db $10                                        ; $637f: $10
    stop                                          ; $6380: $10 $00
    pop bc                                        ; $6382: $c1
    jp $df00                                      ; $6383: $c3 $00 $df


    ld b, $e2                                     ; $6386: $06 $e2
    ld d, a                                       ; $6388: $57
    ld [c], a                                     ; $6389: $e2
    ld c, b                                       ; $638a: $48
    and c                                         ; $638b: $a1
    sub b                                         ; $638c: $90
    ld [c], a                                     ; $638d: $e2
    ld a, a                                       ; $638e: $7f
    pop bc                                        ; $638f: $c1
    ld [hl], d                                    ; $6390: $72
    pop hl                                        ; $6391: $e1
    ret nz                                        ; $6392: $c0

    ei                                            ; $6393: $fb
    add b                                         ; $6394: $80
    nop                                           ; $6395: $00
    rst $18                                       ; $6396: $df
    nop                                           ; $6397: $00
    ld [c], a                                     ; $6398: $e2
    ld b, b                                       ; $6399: $40
    pop bc                                        ; $639a: $c1
    ld de, $0da2                                  ; $639b: $11 $a2 $0d
    and c                                         ; $639e: $a1
    ld a, [de]                                    ; $639f: $1a
    dec de                                        ; $63a0: $1b
    nop                                           ; $63a1: $00
    xor [hl]                                      ; $63a2: $ae
    ld [c], a                                     ; $63a3: $e2
    ei                                            ; $63a4: $fb
    add e                                         ; $63a5: $83
    nop                                           ; $63a6: $00
    sbc a                                         ; $63a7: $9f
    ld [hl], c                                    ; $63a8: $71
    add c                                         ; $63a9: $81
    cp h                                          ; $63aa: $bc
    ld [c], a                                     ; $63ab: $e2
    sub h                                         ; $63ac: $94
    pop hl                                        ; $63ad: $e1
    sub b                                         ; $63ae: $90
    pop hl                                        ; $63af: $e1
    push bc                                       ; $63b0: $c5
    add c                                         ; $63b1: $81
    ret nz                                        ; $63b2: $c0

    add h                                         ; $63b3: $84
    add c                                         ; $63b4: $81
    ei                                            ; $63b5: $fb
    add d                                         ; $63b6: $82
    nop                                           ; $63b7: $00
    sbc a                                         ; $63b8: $9f
    ld e, a                                       ; $63b9: $5f
    push hl                                       ; $63ba: $e5
    ld hl, sp-$5c                                 ; $63bb: $f8 $a4
    push bc                                       ; $63bd: $c5
    add d                                         ; $63be: $82
    ccf                                           ; $63bf: $3f
    ld b, b                                       ; $63c0: $40
    nop                                           ; $63c1: $00
    add h                                         ; $63c2: $84
    add b                                         ; $63c3: $80
    ei                                            ; $63c4: $fb
    add l                                         ; $63c5: $85
    nop                                           ; $63c6: $00
    db $dd                                        ; $63c7: $dd
    rrca                                          ; $63c8: $0f
    and c                                         ; $63c9: $a1
    cp e                                          ; $63ca: $bb
    and e                                         ; $63cb: $a3
    dec [hl]                                      ; $63cc: $35
    pop bc                                        ; $63cd: $c1
    push bc                                       ; $63ce: $c5
    add h                                         ; $63cf: $84
    rlca                                          ; $63d0: $07
    db $e3                                        ; $63d1: $e3
    nop                                           ; $63d2: $00
    and h                                         ; $63d3: $a4
    and h                                         ; $63d4: $a4
    nop                                           ; $63d5: $00
    cp a                                          ; $63d6: $bf
    ld a, [bc]                                    ; $63d7: $0a
    ld h, d                                       ; $63d8: $62
    or b                                          ; $63d9: $b0
    and [hl]                                      ; $63da: $a6
    add h                                         ; $63db: $84
    ld h, h                                       ; $63dc: $64
    ld a, l                                       ; $63dd: $7d
    ld h, c                                       ; $63de: $61
    nop                                           ; $63df: $00
    rst $38                                       ; $63e0: $ff
    ld [hl], c                                    ; $63e1: $71
    ld h, a                                       ; $63e2: $67
    nop                                           ; $63e3: $00
    rst $38                                       ; $63e4: $ff
    pop af                                        ; $63e5: $f1
    nop                                           ; $63e6: $00
    rst $38                                       ; $63e7: $ff
    or $ff                                        ; $63e8: $f6 $ff
    nop                                           ; $63ea: $00
    sbc a                                         ; $63eb: $9f
    or $ff                                        ; $63ec: $f6 $ff
    nop                                           ; $63ee: $00
    rst $38                                       ; $63ef: $ff
    or $ff                                        ; $63f0: $f6 $ff
    nop                                           ; $63f2: $00
    ld a, a                                       ; $63f3: $7f
    nop                                           ; $63f4: $00
    or $ff                                        ; $63f5: $f6 $ff
    nop                                           ; $63f7: $00
    rst $38                                       ; $63f8: $ff
    nop                                           ; $63f9: $00
    rst $38                                       ; $63fa: $ff
    sbc c                                         ; $63fb: $99
    rst $38                                       ; $63fc: $ff
    nop                                           ; $63fd: $00
    rst $38                                       ; $63fe: $ff
    sbc c                                         ; $63ff: $99
    rst $38                                       ; $6400: $ff
    nop                                           ; $6401: $00

Call_071_6402:
    rst $38                                       ; $6402: $ff
    adc a                                         ; $6403: $8f
    rst $38                                       ; $6404: $ff
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    rst $38                                       ; $6407: $ff
    or $ff                                        ; $6408: $f6 $ff
    nop                                           ; $640a: $00
    rst $38                                       ; $640b: $ff
    or $ff                                        ; $640c: $f6 $ff
    nop                                           ; $640e: $00
    rst $38                                       ; $640f: $ff
    or $ff                                        ; $6410: $f6 $ff
    nop                                           ; $6412: $00
    rst $38                                       ; $6413: $ff
    or $ff                                        ; $6414: $f6 $ff
    nop                                           ; $6416: $00
    nop                                           ; $6417: $00
    rst $38                                       ; $6418: $ff
    or $ff                                        ; $6419: $f6 $ff
    nop                                           ; $641b: $00
    rst $38                                       ; $641c: $ff
    nop                                           ; $641d: $00
    rst $38                                       ; $641e: $ff
    sbc c                                         ; $641f: $99
    rst $38                                       ; $6420: $ff
    nop                                           ; $6421: $00
    rst $38                                       ; $6422: $ff
    adc a                                         ; $6423: $8f
    rst $38                                       ; $6424: $ff
    nop                                           ; $6425: $00
    rst $38                                       ; $6426: $ff
    nop                                           ; $6427: $00
    or $ff                                        ; $6428: $f6 $ff
    nop                                           ; $642a: $00
    rst $38                                       ; $642b: $ff
    or $ff                                        ; $642c: $f6 $ff
    nop                                           ; $642e: $00
    rst $38                                       ; $642f: $ff
    or $ff                                        ; $6430: $f6 $ff
    nop                                           ; $6432: $00
    rst $38                                       ; $6433: $ff
    or $ff                                        ; $6434: $f6 $ff
    nop                                           ; $6436: $00
    rst $38                                       ; $6437: $ff
    nop                                           ; $6438: $00
    or $ff                                        ; $6439: $f6 $ff
    nop                                           ; $643b: $00
    rst $38                                       ; $643c: $ff
    nop                                           ; $643d: $00
    rst $38                                       ; $643e: $ff
    sbc c                                         ; $643f: $99
    rst $38                                       ; $6440: $ff
    nop                                           ; $6441: $00
    rst $38                                       ; $6442: $ff
    sbc c                                         ; $6443: $99
    rst $38                                       ; $6444: $ff
    nop                                           ; $6445: $00
    or $00                                        ; $6446: $f6 $00
    nop                                           ; $6448: $00
    nop                                           ; $6449: $00
    ld sp, hl                                     ; $644a: $f9
    nop                                           ; $644b: $00
    rst $38                                       ; $644c: $ff
    rst $38                                       ; $644d: $ff
    xor $ed                                       ; $644e: $ee $ed
    ld d, $10                                     ; $6450: $16 $10
    rla                                           ; $6452: $17
    ld h, $20                                     ; $6453: $26 $20
    rrca                                          ; $6455: $0f
    daa                                           ; $6456: $27
    jr nc, jr_071_648f                            ; $6457: $30 $36

    scf                                           ; $6459: $37
    push de                                       ; $645a: $d5
    rst $38                                       ; $645b: $ff
    rst $38                                       ; $645c: $ff
    rst $38                                       ; $645d: $ff
    rst $38                                       ; $645e: $ff
    rst $38                                       ; $645f: $ff
    rst $38                                       ; $6460: $ff
    rst $38                                       ; $6461: $ff
    nop                                           ; $6462: $00
    rst $38                                       ; $6463: $ff
    rst $38                                       ; $6464: $ff
    rst $38                                       ; $6465: $ff
    rst $30                                       ; $6466: $f7
    nop                                           ; $6467: $00
    nop                                           ; $6468: $00
    nop                                           ; $6469: $00
    rst $38                                       ; $646a: $ff
    rst $38                                       ; $646b: $ff
    rst $38                                       ; $646c: $ff
    ld [hl], l                                    ; $646d: $75
    ld h, h                                       ; $646e: $64
    ld sp, hl                                     ; $646f: $f9
    ld l, b                                       ; $6470: $68
    sbc e                                         ; $6471: $9b
    ld l, [hl]                                    ; $6472: $6e
    or [hl]                                       ; $6473: $b6
    ld l, [hl]                                    ; $6474: $6e
    dec e                                         ; $6475: $1d
    dec c                                         ; $6476: $0d
    rst $38                                       ; $6477: $ff
    rst $20                                       ; $6478: $e7
    ld c, $0e                                     ; $6479: $0e $0e
    ld c, $f2                                     ; $647b: $0e $f2
    add sp, -$01                                  ; $647d: $e8 $ff
    rst $38                                       ; $647f: $ff
    xor $ed                                       ; $6480: $ee $ed
    ld c, $c0                                     ; $6482: $0e $c0
    pop hl                                        ; $6484: $e1
    ld c, $0e                                     ; $6485: $0e $0e
    ld l, $b2                                     ; $6487: $2e $b2
    and $f3                                       ; $6489: $e6 $f3
    add sp, -$38                                  ; $648b: $e8 $c8
    cp $80                                        ; $648d: $fe $80

jr_071_648f:
    add sp, $0f                                   ; $648f: $e8 $0f
    ld c, $6e                                     ; $6491: $0e $6e
    ld l, [hl]                                    ; $6493: $6e
    ld l, $ba                                     ; $6494: $2e $ba
    ldh [$73], a                                  ; $6496: $e0 $73
    ld [c], a                                     ; $6498: $e2
    or c                                          ; $6499: $b1
    and $65                                       ; $649a: $e6 $65
    pop hl                                        ; $649c: $e1
    ldh a, [$b1]                                  ; $649d: $f0 $b1
    push af                                       ; $649f: $f5
    ld c, b                                       ; $64a0: $48
    ld [c], a                                     ; $64a1: $e2
    adc $e2                                       ; $64a2: $ce $e2
    add b                                         ; $64a4: $80
    ldh [$6e], a                                  ; $64a5: $e0 $6e
    ld l, [hl]                                    ; $64a7: $6e
    ld l, [hl]                                    ; $64a8: $6e
    dec bc                                        ; $64a9: $0b
    inc bc                                        ; $64aa: $03
    dec hl                                        ; $64ab: $2b
    ld c, [hl]                                    ; $64ac: $4e
    ld a, e                                       ; $64ad: $7b
    ldh [$eb], a                                  ; $64ae: $e0 $eb
    db $e4                                        ; $64b0: $e4
    ld a, [hl+]                                   ; $64b1: $2a
    db $e4                                        ; $64b2: $e4
    and l                                         ; $64b3: $a5
    db $e4                                        ; $64b4: $e4
    ld l, a                                       ; $64b5: $6f
    ld a, [c]                                     ; $64b6: $f2
    ld [$3de8], sp                                ; $64b7: $08 $e8 $3d
    ld c, $c3                                     ; $64ba: $0e $c3
    ldh [$0a], a                                  ; $64bc: $e0 $0a
    ld a, [bc]                                    ; $64be: $0a
    ld a, [bc]                                    ; $64bf: $0a
    ld a, [hl+]                                   ; $64c0: $2a
    cp a                                          ; $64c1: $bf
    pop hl                                        ; $64c2: $e1
    ld [$78ca], a                                 ; $64c3: $ea $ca $78
    ld [hl], d                                    ; $64c6: $72
    db $e3                                        ; $64c7: $e3
    add b                                         ; $64c8: $80
    ld hl, sp+$0f                                 ; $64c9: $f8 $0f
    db $e3                                        ; $64cb: $e3
    ld l, [hl]                                    ; $64cc: $6e
    dec hl                                        ; $64cd: $2b
    ld a, [bc]                                    ; $64ce: $0a
    ld a, [hl+]                                   ; $64cf: $2a
    ret nz                                        ; $64d0: $c0

    pop hl                                        ; $64d1: $e1
    ld b, c                                       ; $64d2: $41
    ld c, e                                       ; $64d3: $4b
    ld a, [hl]                                    ; $64d4: $7e
    ldh [$e9], a                                  ; $64d5: $e0 $e9
    and $aa                                       ; $64d7: $e6 $aa
    rst $18                                       ; $64d9: $df
    rst $08                                       ; $64da: $cf
    add $83                                       ; $64db: $c6 $83
    ldh [$2a], a                                  ; $64dd: $e0 $2a
    ld l, [hl]                                    ; $64df: $6e
    pop bc                                        ; $64e0: $c1
    ld b, e                                       ; $64e1: $43
    ld c, e                                       ; $64e2: $4b
    dec bc                                        ; $64e3: $0b
    ret nz                                        ; $64e4: $c0

    pop af                                        ; $64e5: $f1
    or l                                          ; $64e6: $b5
    rst $30                                       ; $64e7: $f7
    adc c                                         ; $64e8: $89
    pop bc                                        ; $64e9: $c1
    sub a                                         ; $64ea: $97
    ldh [$6e], a                                  ; $64eb: $e0 $6e
    jp nz, $83e2                                  ; $64ed: $c2 $e2 $83

    dec bc                                        ; $64f0: $0b
    dec hl                                        ; $64f1: $2b
    db $fc                                        ; $64f2: $fc
    ldh [$f1], a                                  ; $64f3: $e0 $f1
    call nz, $c372                                ; $64f5: $c4 $72 $c3
    ld l, d                                       ; $64f8: $6a
    call nz, $fd75                                ; $64f9: $c4 $75 $fd
    ld c, $ff                                     ; $64fc: $0e $ff
    dec bc                                        ; $64fe: $0b
    ld l, e                                       ; $64ff: $6b
    dec c                                         ; $6500: $0d
    dec c                                         ; $6501: $0d
    dec hl                                        ; $6502: $2b
    dec bc                                        ; $6503: $0b
    dec bc                                        ; $6504: $0b
    dec hl                                        ; $6505: $2b
    pop bc                                        ; $6506: $c1
    dec bc                                        ; $6507: $0b
    ret nz                                        ; $6508: $c0

    push hl                                       ; $6509: $e5
    ld a, l                                       ; $650a: $7d
    add $28                                       ; $650b: $c6 $28
    jp nz, $eaee                                  ; $650d: $c2 $ee $ea

    inc bc                                        ; $6510: $03
    pop de                                        ; $6511: $d1
    dec c                                         ; $6512: $0d
    dec bc                                        ; $6513: $0b
    ld a, [hl]                                    ; $6514: $7e
    ld b, l                                       ; $6515: $45
    ldh [rWX], a                                  ; $6516: $e0 $4b
    ld c, e                                       ; $6518: $4b
    ld l, e                                       ; $6519: $6b
    dec l                                         ; $651a: $2d
    dec c                                         ; $651b: $0d
    dec bc                                        ; $651c: $0b
    cp [hl]                                       ; $651d: $be
    call nz, Call_000_25c0                        ; $651e: $c4 $c0 $25
    push bc                                       ; $6521: $c5
    add b                                         ; $6522: $80
    db $eb                                        ; $6523: $eb
    rst $20                                       ; $6524: $e7
    xor e                                         ; $6525: $ab
    ld d, $c4                                     ; $6526: $16 $c4
    ret nz                                        ; $6528: $c0

    db $e4                                        ; $6529: $e4
    ld l, a                                       ; $652a: $6f
    and c                                         ; $652b: $a1
    dec l                                         ; $652c: $2d
    dec l                                         ; $652d: $2d
    rlca                                          ; $652e: $07
    inc c                                         ; $652f: $0c
    inc l                                         ; $6530: $2c
    ld c, [hl]                                    ; $6531: $4e
    ld sp, hl                                     ; $6532: $f9
    and b                                         ; $6533: $a0
    ret nz                                        ; $6534: $c0

    and $97                                       ; $6535: $e6 $97
    xor h                                         ; $6537: $ac
    xor c                                         ; $6538: $a9
    xor e                                         ; $6539: $ab
    ret nz                                        ; $653a: $c0

    rst $20                                       ; $653b: $e7
    ld a, [hl-]                                   ; $653c: $3a
    ld c, b                                       ; $653d: $48
    ldh [$0c], a                                  ; $653e: $e0 $0c
    rst $38                                       ; $6540: $ff
    db $e4                                        ; $6541: $e4
    inc l                                         ; $6542: $2c
    inc l                                         ; $6543: $2c
    dec bc                                        ; $6544: $0b
    ld a, h                                       ; $6545: $7c
    pop hl                                        ; $6546: $e1
    ret z                                         ; $6547: $c8

    and e                                         ; $6548: $a3
    ldh [$b5], a                                  ; $6549: $e0 $b5
    xor d                                         ; $654b: $aa
    add a                                         ; $654c: $87
    pop de                                        ; $654d: $d1
    db $e4                                        ; $654e: $e4
    jp $a0c9                                      ; $654f: $c3 $c9 $a0


    pop bc                                        ; $6552: $c1
    db $e3                                        ; $6553: $e3
    ld l, h                                       ; $6554: $6c
    ld l, h                                       ; $6555: $6c
    ld c, h                                       ; $6556: $4c
    add a                                         ; $6557: $87
    ld c, h                                       ; $6558: $4c
    ld c, h                                       ; $6559: $4c
    inc l                                         ; $655a: $2c
    ld a, h                                       ; $655b: $7c
    pop hl                                        ; $655c: $e1
    inc b                                         ; $655d: $04
    db $e3                                        ; $655e: $e3
    ld a, $ca                                     ; $655f: $3e $ca
    cpl                                           ; $6561: $2f
    ret c                                         ; $6562: $d8

    ld c, [hl]                                    ; $6563: $4e
    ld e, c                                       ; $6564: $59
    ld l, $c8                                     ; $6565: $2e $c8
    ldh [$c4], a                                  ; $6567: $e0 $c4
    ldh [$6c], a                                  ; $6569: $e0 $6c
    dec bc                                        ; $656b: $0b
    halt                                          ; $656c: $76
    pop hl                                        ; $656d: $e1
    ld c, h                                       ; $656e: $4c
    ld a, h                                       ; $656f: $7c
    ldh [$e0], a                                  ; $6570: $e0 $e0
    halt                                          ; $6572: $76
    and e                                         ; $6573: $a3
    rra                                           ; $6574: $1f
    push hl                                       ; $6575: $e5
    ld l, a                                       ; $6576: $6f
    xor c                                         ; $6577: $a9
    push hl                                       ; $6578: $e5
    adc [hl]                                      ; $6579: $8e
    add $81                                       ; $657a: $c6 $81
    ld c, [hl]                                    ; $657c: $4e
    ld l, $0b                                     ; $657d: $2e $0b
    ld b, $c3                                     ; $657f: $06 $c3
    ldh [$0d], a                                  ; $6581: $e0 $0d
    dec bc                                        ; $6583: $0b
    ret nz                                        ; $6584: $c0

    ldh [$b4], a                                  ; $6585: $e0 $b4
    ret nz                                        ; $6587: $c0

    cp a                                          ; $6588: $bf
    db $e4                                        ; $6589: $e4
    ret nz                                        ; $658a: $c0

    add sp, $3a                                   ; $658b: $e8 $3a
    jp nc, $9978                                  ; $658d: $d2 $78 $99

    adc c                                         ; $6590: $89
    cp a                                          ; $6591: $bf
    ldh [$7c], a                                  ; $6592: $e0 $7c
    ret nz                                        ; $6594: $c0

    dec hl                                        ; $6595: $2b
    dec bc                                        ; $6596: $0b
    dec hl                                        ; $6597: $2b
    ld c, e                                       ; $6598: $4b
    ld c, [hl]                                    ; $6599: $4e
    pop hl                                        ; $659a: $e1
    or b                                          ; $659b: $b0
    dec sp                                        ; $659c: $3b
    ldh [rPCM34], a                               ; $659d: $e0 $77
    push bc                                       ; $659f: $c5
    ret nz                                        ; $65a0: $c0

    ld hl, sp+$77                                 ; $65a1: $f8 $77
    jp z, Jump_000_2e4e                           ; $65a3: $ca $4e $2e

    ccf                                           ; $65a6: $3f
    add c                                         ; $65a7: $81
    ld a, [bc]                                    ; $65a8: $0a
    rlca                                          ; $65a9: $07
    dec bc                                        ; $65aa: $0b
    dec hl                                        ; $65ab: $2b
    dec hl                                        ; $65ac: $2b
    inc sp                                        ; $65ad: $33
    pop bc                                        ; $65ae: $c1
    ld [hl], a                                    ; $65af: $77
    pop hl                                        ; $65b0: $e1
    ld [hl], a                                    ; $65b1: $77
    ret nz                                        ; $65b2: $c0

    ld [hl], l                                    ; $65b3: $75
    pop bc                                        ; $65b4: $c1
    ld [hl+], a                                   ; $65b5: $22
    add e                                         ; $65b6: $83
    ldh a, [$3e]                                  ; $65b7: $f0 $3e
    sbc d                                         ; $65b9: $9a
    ld d, $a3                                     ; $65ba: $16 $a3
    add e                                         ; $65bc: $83
    add c                                         ; $65bd: $81
    ei                                            ; $65be: $fb
    and b                                         ; $65bf: $a0
    dec hl                                        ; $65c0: $2b
    dec hl                                        ; $65c1: $2b
    dec hl                                        ; $65c2: $2b
    ld a, [bc]                                    ; $65c3: $0a
    add d                                         ; $65c4: $82
    ld [hl], c                                    ; $65c5: $71
    ret nz                                        ; $65c6: $c0

    inc l                                         ; $65c7: $2c
    inc sp                                        ; $65c8: $33
    ld [c], a                                     ; $65c9: $e2
    pop af                                        ; $65ca: $f1
    and h                                         ; $65cb: $a4
    push af                                       ; $65cc: $f5
    add [hl]                                      ; $65cd: $86
    ld sp, $c08c                                  ; $65ce: $31 $8c $c0
    ld [$784d], a                                 ; $65d1: $ea $4d $78
    ret nc                                        ; $65d4: $d0

    add b                                         ; $65d5: $80
    ret nz                                        ; $65d6: $c0

    pop hl                                        ; $65d7: $e1
    ei                                            ; $65d8: $fb
    ret nz                                        ; $65d9: $c0

    dec hl                                        ; $65da: $2b
    dec bc                                        ; $65db: $0b
    ld l, h                                       ; $65dc: $6c
    inc l                                         ; $65dd: $2c
    inc [hl]                                      ; $65de: $34
    pop bc                                        ; $65df: $c1
    ld h, b                                       ; $65e0: $60
    rst $28                                       ; $65e1: $ef
    ret nz                                        ; $65e2: $c0

    pop af                                        ; $65e3: $f1
    and d                                         ; $65e4: $a2
    sbc a                                         ; $65e5: $9f
    ld h, [hl]                                    ; $65e6: $66
    ld sp, $9c8c                                  ; $65e7: $31 $8c $9c
    add b                                         ; $65ea: $80
    dec l                                         ; $65eb: $2d
    dec l                                         ; $65ec: $2d
    ld a, c                                       ; $65ed: $79
    xor b                                         ; $65ee: $a8
    ld l, [hl]                                    ; $65ef: $6e
    ld a, d                                       ; $65f0: $7a
    and c                                         ; $65f1: $a1
    ld l, e                                       ; $65f2: $6b
    ld l, e                                       ; $65f3: $6b
    ld c, e                                       ; $65f4: $4b
    cp c                                          ; $65f5: $b9
    ret nz                                        ; $65f6: $c0

    ld l, h                                       ; $65f7: $6c
    ld c, h                                       ; $65f8: $4c
    db $f4                                        ; $65f9: $f4
    and c                                         ; $65fa: $a1
    ld [bc], a                                    ; $65fb: $02
    pop af                                        ; $65fc: $f1
    and c                                         ; $65fd: $a1
    ld c, e                                       ; $65fe: $4b
    ld l, h                                       ; $65ff: $6c
    add c                                         ; $6600: $81
    adc l                                         ; $6601: $8d
    xor e                                         ; $6602: $ab
    add b                                         ; $6603: $80
    jp hl                                         ; $6604: $e9


    ret nz                                        ; $6605: $c0

    ldh [$bb], a                                  ; $6606: $e0 $bb
    add h                                         ; $6608: $84
    cp c                                          ; $6609: $b9
    and c                                         ; $660a: $a1
    cp a                                          ; $660b: $bf
    dec c                                         ; $660c: $0d
    ld l, e                                       ; $660d: $6b
    ld c, e                                       ; $660e: $4b
    ld l, e                                       ; $660f: $6b
    ld c, e                                       ; $6610: $4b
    ld a, [bc]                                    ; $6611: $0a
    pop af                                        ; $6612: $f1
    add b                                         ; $6613: $80
    dec bc                                        ; $6614: $0b
    inc c                                         ; $6615: $0c
    ld hl, sp-$5f                                 ; $6616: $f8 $a1
    or b                                          ; $6618: $b0
    and d                                         ; $6619: $a2
    inc c                                         ; $661a: $0c
    inc c                                         ; $661b: $0c
    ld h, $e2                                     ; $661c: $26 $e2
    ld sp, $8095                                  ; $661e: $31 $95 $80
    add sp, -$7e                                  ; $6621: $e8 $82
    ld h, b                                       ; $6623: $60
    add d                                         ; $6624: $82
    dec a                                         ; $6625: $3d
    pop bc                                        ; $6626: $c1
    dec c                                         ; $6627: $0d
    cp l                                          ; $6628: $bd
    ret nz                                        ; $6629: $c0

    ld [hl], $c0                                  ; $662a: $36 $c0
    or [hl]                                       ; $662c: $b6
    and b                                         ; $662d: $a0
    ld a, h                                       ; $662e: $7c
    pop hl                                        ; $662f: $e1
    ld l, b                                       ; $6630: $68
    and b                                         ; $6631: $a0
    dec c                                         ; $6632: $0d
    ld b, b                                       ; $6633: $40
    ld [$3f68], a                                 ; $6634: $ea $68 $3f
    push de                                       ; $6637: $d5
    jp nc, $fa62                                  ; $6638: $d2 $62 $fa

    and b                                         ; $663b: $a0
    sub b                                         ; $663c: $90
    and c                                         ; $663d: $a1
    inc a                                         ; $663e: $3c
    ret nz                                        ; $663f: $c0

    ld a, [bc]                                    ; $6640: $0a
    cp l                                          ; $6641: $bd
    ret nz                                        ; $6642: $c0

    nop                                           ; $6643: $00
    ld hl, sp-$60                                 ; $6644: $f8 $a0
    cp a                                          ; $6646: $bf
    ld [c], a                                     ; $6647: $e2
    dec a                                         ; $6648: $3d
    pop hl                                        ; $6649: $e1
    xor d                                         ; $664a: $aa
    ld h, h                                       ; $664b: $64
    ld [hl], e                                    ; $664c: $73
    adc b                                         ; $664d: $88
    nop                                           ; $664e: $00
    adc c                                         ; $664f: $89
    cp c                                          ; $6650: $b9
    xor c                                         ; $6651: $a9
    scf                                           ; $6652: $37
    add d                                         ; $6653: $82
    and $35                                       ; $6654: $e6 $35
    ld h, b                                       ; $6656: $60
    dec c                                         ; $6657: $0d
    ld a, [bc]                                    ; $6658: $0a
    or $a0                                        ; $6659: $f6 $a0
    ld a, a                                       ; $665b: $7f
    db $e3                                        ; $665c: $e3
    inc l                                         ; $665d: $2c
    inc c                                         ; $665e: $0c
    dec c                                         ; $665f: $0d
    ldh a, [$80]                                  ; $6660: $f0 $80
    add sp, $68                                   ; $6662: $e8 $68
    ld l, c                                       ; $6664: $69
    xor h                                         ; $6665: $ac
    ret z                                         ; $6666: $c8

    scf                                           ; $6667: $37
    and l                                         ; $6668: $a5
    ld l, $2e                                     ; $6669: $2e $2e
    ld l, e                                       ; $666b: $6b

Jump_071_666c:
    ld a, [bc]                                    ; $666c: $0a
    inc b                                         ; $666d: $04
    ld a, [hl]                                    ; $666e: $7e
    jp nz, Jump_071_60f1                          ; $666f: $c2 $f1 $60

    dec c                                         ; $6672: $0d
    db $fd                                        ; $6673: $fd
    jp $c4fe                                      ; $6674: $c3 $fe $c4


    or h                                          ; $6677: $b4
    ld b, [hl]                                    ; $6678: $46
    ld a, c                                       ; $6679: $79
    xor [hl]                                      ; $667a: $ae
    ld [hl], a                                    ; $667b: $77
    ld [$4e9f], a                                 ; $667c: $ea $9f $4e
    ld l, $4b                                     ; $667f: $2e $4b
    ld c, e                                       ; $6681: $4b
    dec bc                                        ; $6682: $0b
    ld a, l                                       ; $6683: $7d
    ret nz                                        ; $6684: $c0

    pop af                                        ; $6685: $f1
    ld h, b                                       ; $6686: $60
    dec bc                                        ; $6687: $0b
    add b                                         ; $6688: $80
    ret nz                                        ; $6689: $c0

    db $e4                                        ; $668a: $e4
    ld a, e                                       ; $668b: $7b
    ret nz                                        ; $668c: $c0

    ld h, [hl]                                    ; $668d: $66
    ld b, l                                       ; $668e: $45
    ld a, c                                       ; $668f: $79
    cp l                                          ; $6690: $bd
    cp a                                          ; $6691: $bf
    db $e3                                        ; $6692: $e3
    or e                                          ; $6693: $b3
    ld h, b                                       ; $6694: $60
    ld a, e                                       ; $6695: $7b
    ldh [rOCPD], a                                ; $6696: $e0 $6b
    and d                                         ; $6698: $a2
    inc l                                         ; $6699: $2c
    add a                                         ; $669a: $87
    inc l                                         ; $669b: $2c
    cp $c0                                        ; $669c: $fe $c0
    and [hl]                                      ; $669e: $a6
    ld a, $8f                                     ; $669f: $3e $8f
    ld b, b                                       ; $66a1: $40
    dec l                                         ; $66a2: $2d
    ld hl, sp-$5c                                 ; $66a3: $f8 $a4
    dec bc                                        ; $66a5: $0b
    add d                                         ; $66a6: $82
    ei                                            ; $66a7: $fb
    and b                                         ; $66a8: $a0
    ld c, e                                       ; $66a9: $4b
    db $ed                                        ; $66aa: $ed
    ld h, l                                       ; $66ab: $65
    ld [$c061], a                                 ; $66ac: $ea $61 $c0
    pop hl                                        ; $66af: $e1
    ld a, l                                       ; $66b0: $7d
    ld [hl], b                                    ; $66b1: $70
    inc h                                         ; $66b2: $24
    ld c, e                                       ; $66b3: $4b
    ld c, l                                       ; $66b4: $4d
    jr nc, jr_071_6733                            ; $66b5: $30 $7c

    and b                                         ; $66b7: $a0
    ret nz                                        ; $66b8: $c0

    db $e4                                        ; $66b9: $e4
    ld a, [c]                                     ; $66ba: $f2
    ld b, b                                       ; $66bb: $40
    ret nz                                        ; $66bc: $c0

    add sp, $6c                                   ; $66bd: $e8 $6c
    ld l, h                                       ; $66bf: $6c
    ld a, [hl]                                    ; $66c0: $7e
    ret                                           ; $66c1: $c9


    ld a, c                                       ; $66c2: $79
    ld [hl-], a                                   ; $66c3: $32
    sub d                                         ; $66c4: $92
    nop                                           ; $66c5: $00
    ld [hl+], a                                   ; $66c6: $22
    ld c, l                                       ; $66c7: $4d
    ld hl, sp-$5a                                 ; $66c8: $f8 $a6
    halt                                          ; $66ca: $76
    add b                                         ; $66cb: $80
    dec hl                                        ; $66cc: $2b
    nop                                           ; $66cd: $00
    push bc                                       ; $66ce: $c5
    xor c                                         ; $66cf: $a9
    ld h, b                                       ; $66d0: $60
    dec c                                         ; $66d1: $0d
    jp Jump_000_2e4b                              ; $66d2: $c3 $4b $2e


    and l                                         ; $66d5: $a5
    ld [c], a                                     ; $66d6: $e2
    cp c                                          ; $66d7: $b9
    ld a, [hl-]                                   ; $66d8: $3a
    adc h                                         ; $66d9: $8c
    ld h, [hl]                                    ; $66da: $66
    ld a, [c]                                     ; $66db: $f2
    ld h, b                                       ; $66dc: $60
    ld a, [bc]                                    ; $66dd: $0a
    dec bc                                        ; $66de: $0b
    dec c                                         ; $66df: $0d
    ld a, [bc]                                    ; $66e0: $0a
    cp a                                          ; $66e1: $bf
    rst $20                                       ; $66e2: $e7
    inc l                                         ; $66e3: $2c
    ld c, e                                       ; $66e4: $4b
    db $e3                                        ; $66e5: $e3
    nop                                           ; $66e6: $00
    ret nz                                        ; $66e7: $c0

    db $e3                                        ; $66e8: $e3
    cp d                                          ; $66e9: $ba
    or d                                          ; $66ea: $b2
    ld e, h                                       ; $66eb: $5c
    dec l                                         ; $66ec: $2d
    or a                                          ; $66ed: $b7
    ld c, l                                       ; $66ee: $4d
    ld c, $0a                                     ; $66ef: $0e $0a
    inc a                                         ; $66f1: $3c
    jp nz, $6c2b                                  ; $66f2: $c2 $2b $6c

    ld [bc], a                                    ; $66f5: $02
    push hl                                       ; $66f6: $e5
    ld c, $41                                     ; $66f7: $0e $41
    ld l, [hl]                                    ; $66f9: $6e
    dec h                                         ; $66fa: $25
    db $e3                                        ; $66fb: $e3
    ret nz                                        ; $66fc: $c0

    rst $30                                       ; $66fd: $f7
    sbc l                                         ; $66fe: $9d
    ld c, d                                       ; $66ff: $4a
    ret nz                                        ; $6700: $c0

    and $3c                                       ; $6701: $e6 $3c
    and e                                         ; $6703: $a3
    ld c, h                                       ; $6704: $4c
    ret nz                                        ; $6705: $c0

    and b                                         ; $6706: $a0
    ret nz                                        ; $6707: $c0

    db $e3                                        ; $6708: $e3
    ret nz                                        ; $6709: $c0

    ld [hl], $8a                                  ; $670a: $36 $8a
    jr nc, jr_071_6749                            ; $670c: $30 $3b

    ld a, b                                       ; $670e: $78
    ld h, b                                       ; $670f: $60
    ld a, a                                       ; $6710: $7f
    ld [c], a                                     ; $6711: $e2
    ld sp, hl                                     ; $6712: $f9
    add c                                         ; $6713: $81
    inc c                                         ; $6714: $0c
    ld l, h                                       ; $6715: $6c
    ld b, b                                       ; $6716: $40
    ret nz                                        ; $6717: $c0

    ld [c], a                                     ; $6718: $e2
    add $fa                                       ; $6719: $c6 $fa
    ld a, b                                       ; $671b: $78
    add c                                         ; $671c: $81
    rst $08                                       ; $671d: $cf
    nop                                           ; $671e: $00
    sbc h                                         ; $671f: $9c
    ld [c], a                                     ; $6720: $e2
    ld l, a                                       ; $6721: $6f
    ld b, d                                       ; $6722: $42
    ld l, e                                       ; $6723: $6b
    cp e                                          ; $6724: $bb
    and b                                         ; $6725: $a0
    add h                                         ; $6726: $84
    inc sp                                        ; $6727: $33
    ld h, b                                       ; $6728: $60
    cp [hl]                                       ; $6729: $be
    ldh [$4c], a                                  ; $672a: $e0 $4c
    add e                                         ; $672c: $83
    ret nz                                        ; $672d: $c0

    ld b, c                                       ; $672e: $41
    ldh [$b0], a                                  ; $672f: $e0 $b0
    nop                                           ; $6731: $00
    ld a, [hl]                                    ; $6732: $7e

jr_071_6733:
    ldh [rKEY1], a                                ; $6733: $e0 $4d
    add c                                         ; $6735: $81
    ld c, l                                       ; $6736: $4d
    ld a, c                                       ; $6737: $79
    db $e3                                        ; $6738: $e3
    db $fd                                        ; $6739: $fd
    ld c, l                                       ; $673a: $4d
    ret nz                                        ; $673b: $c0

    db $e4                                        ; $673c: $e4
    ld a, $c1                                     ; $673d: $3e $c1
    ld [hl-], a                                   ; $673f: $32
    ld h, h                                       ; $6740: $64
    cp a                                          ; $6741: $bf
    ldh [$0a], a                                  ; $6742: $e0 $0a
    inc c                                         ; $6744: $0c
    ld a, h                                       ; $6745: $7c
    ld [c], a                                     ; $6746: $e2
    ld [hl], a                                    ; $6747: $77
    and b                                         ; $6748: $a0

jr_071_6749:
    ld c, $6e                                     ; $6749: $0e $6e
    db $db                                        ; $674b: $db
    ld h, b                                       ; $674c: $60
    and d                                         ; $674d: $a2
    ldh [rNR23], a                                ; $674e: $e0 $18
    add h                                         ; $6750: $84
    cp e                                          ; $6751: $bb
    ld d, b                                       ; $6752: $50
    nop                                           ; $6753: $00
    ret nz                                        ; $6754: $c0

    push hl                                       ; $6755: $e5
    cp a                                          ; $6756: $bf
    ld [c], a                                     ; $6757: $e2
    ld l, $43                                     ; $6758: $2e $43
    cp c                                          ; $675a: $b9
    ld h, d                                       ; $675b: $62
    cp a                                          ; $675c: $bf
    db $e3                                        ; $675d: $e3
    jp nz, $6d94                                  ; $675e: $c2 $94 $6d

    ld a, [hl+]                                   ; $6761: $2a
    ret nz                                        ; $6762: $c0

    db $e4                                        ; $6763: $e4
    nop                                           ; $6764: $00
    dec hl                                        ; $6765: $2b
    add e                                         ; $6766: $83
    or a                                          ; $6767: $b7
    and c                                         ; $6768: $a1
    cp l                                          ; $6769: $bd
    add d                                         ; $676a: $82
    ld a, [$f380]                                 ; $676b: $fa $80 $f3
    add b                                         ; $676e: $80
    cp e                                          ; $676f: $bb
    ld b, l                                       ; $6770: $45
    cp c                                          ; $6771: $b9
    ld a, b                                       ; $6772: $78
    ld a, a                                       ; $6773: $7f
    and l                                         ; $6774: $a5
    jr @+$35                                      ; $6775: $18 $33

    ld h, a                                       ; $6777: $67
    dec a                                         ; $6778: $3d
    and c                                         ; $6779: $a1
    ret nz                                        ; $677a: $c0

    db $e4                                        ; $677b: $e4
    ld c, [hl]                                    ; $677c: $4e
    ld l, $3b                                     ; $677d: $2e $3b
    ld e, a                                       ; $677f: $5f
    or a                                          ; $6780: $b7
    ld [hl+], a                                   ; $6781: $22
    ld bc, $00a0                                  ; $6782: $01 $a0 $00
    ret nz                                        ; $6785: $c0

    rst $20                                       ; $6786: $e7
    cp a                                          ; $6787: $bf
    ld [c], a                                     ; $6788: $e2
    add b                                         ; $6789: $80
    pop hl                                        ; $678a: $e1
    ccf                                           ; $678b: $3f
    ldh [$3b], a                                  ; $678c: $e0 $3b
    ld e, c                                       ; $678e: $59
    ld b, h                                       ; $678f: $44
    call z, $85fb                                 ; $6790: $cc $fb $85
    ld [hl], h                                    ; $6793: $74
    jr nz, jr_071_6796                            ; $6794: $20 $00

jr_071_6796:
    ld a, e                                       ; $6796: $7b
    jp nz, $c1be                                  ; $6797: $c2 $be $c1

    ld bc, $b387                                  ; $679a: $01 $87 $b3
    ld [de], a                                    ; $679d: $12
    xor l                                         ; $679e: $ad
    ld h, a                                       ; $679f: $67
    add b                                         ; $67a0: $80
    jp hl                                         ; $67a1: $e9


    ld a, h                                       ; $67a2: $7c
    and b                                         ; $67a3: $a0
    or d                                          ; $67a4: $b2

jr_071_67a5:
    ld b, b                                       ; $67a5: $40
    jr nz, jr_071_67a5                            ; $67a6: $20 $fd

    jp nz, $8801                                  ; $67a8: $c2 $01 $88

    dec h                                         ; $67ab: $25
    ld de, $6564                                  ; $67ac: $11 $64 $65
    ld a, $c2                                     ; $67af: $3e $c2
    ld c, l                                       ; $67b1: $4d
    ld e, c                                       ; $67b2: $59
    pop bc                                        ; $67b3: $c1
    ld a, [$00a0]                                 ; $67b4: $fa $a0 $00
    ret nz                                        ; $67b7: $c0

    pop hl                                        ; $67b8: $e1
    db $fc                                        ; $67b9: $fc
    ld h, b                                       ; $67ba: $60
    ret nz                                        ; $67bb: $c0

    db $e3                                        ; $67bc: $e3
    inc a                                         ; $67bd: $3c
    ld c, [hl]                                    ; $67be: $4e
    ld a, [hl]                                    ; $67bf: $7e
    adc [hl]                                      ; $67c0: $8e
    dec sp                                        ; $67c1: $3b
    ld b, l                                       ; $67c2: $45
    ld a, d                                       ; $67c3: $7a
    add h                                         ; $67c4: $84
    rst $28                                       ; $67c5: $ef
    ld [bc], a                                    ; $67c6: $02
    nop                                           ; $67c7: $00
    cp h                                          ; $67c8: $bc
    ld h, c                                       ; $67c9: $61
    halt                                          ; $67ca: $76
    ld h, c                                       ; $67cb: $61
    ld l, d                                       ; $67cc: $6a
    nop                                           ; $67cd: $00
    cp [hl]                                       ; $67ce: $be
    ld b, e                                       ; $67cf: $43
    ld a, l                                       ; $67d0: $7d
    call nz, $f980                                ; $67d1: $c4 $80 $f9
    halt                                          ; $67d4: $76
    inc hl                                        ; $67d5: $23
    sub [hl]                                      ; $67d6: $96
    add c                                         ; $67d7: $81
    inc e                                         ; $67d8: $1c
    scf                                           ; $67d9: $37
    jr nz, jr_071_6855                            ; $67da: $20 $79

    add b                                         ; $67dc: $80
    ld l, e                                       ; $67dd: $6b
    dec bc                                        ; $67de: $0b
    ld c, e                                       ; $67df: $4b
    or e                                          ; $67e0: $b3
    add b                                         ; $67e1: $80
    ret nz                                        ; $67e2: $c0

    db $e4                                        ; $67e3: $e4
    ld c, l                                       ; $67e4: $4d
    ld b, h                                       ; $67e5: $44
    nop                                           ; $67e6: $00
    ld [hl], $99                                  ; $67e7: $36 $99
    sbc l                                         ; $67e9: $9d
    and $c0                                       ; $67ea: $e6 $c0
    pop hl                                        ; $67ec: $e1
    cpl                                           ; $67ed: $2f
    ld bc, $4172                                  ; $67ee: $01 $72 $41
    ret nz                                        ; $67f1: $c0

    and $a1                                       ; $67f2: $e6 $a1
    add h                                         ; $67f4: $84
    db $f4                                        ; $67f5: $f4
    sbc h                                         ; $67f6: $9c
    ld [bc], a                                    ; $67f7: $02
    cp a                                          ; $67f8: $bf
    and b                                         ; $67f9: $a0
    ld c, l                                       ; $67fa: $4d
    cp d                                          ; $67fb: $ba

Call_071_67fc:
    ld h, b                                       ; $67fc: $60
    cp b                                          ; $67fd: $b8
    inc hl                                        ; $67fe: $23
    ld a, d                                       ; $67ff: $7a
    and d                                         ; $6800: $a2
    xor c                                         ; $6801: $a9
    ld b, c                                       ; $6802: $41
    sbc d                                         ; $6803: $9a
    ret                                           ; $6804: $c9


    ld a, e                                       ; $6805: $7b
    xor h                                         ; $6806: $ac
    inc c                                         ; $6807: $0c
    xor c                                         ; $6808: $a9
    push hl                                       ; $6809: $e5
    inc l                                         ; $680a: $2c
    ld c, b                                       ; $680b: $48
    ld c, $4d                                     ; $680c: $0e $4d
    cp a                                          ; $680e: $bf
    ldh [$71], a                                  ; $680f: $e0 $71
    ld hl, $e27e                                  ; $6811: $21 $7e $e2
    rst $38                                       ; $6814: $ff
    ret nz                                        ; $6815: $c0

    add b                                         ; $6816: $80
    ld a, [$f50a]                                 ; $6817: $fa $0a $f5
    xor l                                         ; $681a: $ad
    rst $20                                       ; $681b: $e7
    jp z, $c17d                                   ; $681c: $ca $7d $c1

    ld [hl], c                                    ; $681f: $71
    inc h                                         ; $6820: $24
    rst $38                                       ; $6821: $ff
    and $27                                       ; $6822: $e6 $27
    nop                                           ; $6824: $00
    ld l, $00                                     ; $6825: $2e $00
    sub h                                         ; $6827: $94
    daa                                           ; $6828: $27
    add [hl]                                      ; $6829: $86
    xor a                                         ; $682a: $af
    add hl, sp                                    ; $682b: $39
    ld [$8099], sp                                ; $682c: $08 $99 $80
    cp c                                          ; $682f: $b9
    ld b, c                                       ; $6830: $41
    ld d, l                                       ; $6831: $55
    add b                                         ; $6832: $80
    or d                                          ; $6833: $b2
    ld hl, $e47f                                  ; $6834: $21 $7f $e4
    nop                                           ; $6837: $00
    db $fc                                        ; $6838: $fc
    xor h                                         ; $6839: $ac
    dec a                                         ; $683a: $3d
    ld d, a                                       ; $683b: $57
    cp $a1                                        ; $683c: $fe $a1
    ld b, b                                       ; $683e: $40
    db $e3                                        ; $683f: $e3
    adc a                                         ; $6840: $8f
    ld h, d                                       ; $6841: $62
    ld a, h                                       ; $6842: $7c
    and $bb                                       ; $6843: $e6 $bb
    and e                                         ; $6845: $a3
    sub l                                         ; $6846: $95
    ld b, a                                       ; $6847: $47
    nop                                           ; $6848: $00
    ret nz                                        ; $6849: $c0

    rst $30                                       ; $684a: $f7
    cp a                                          ; $684b: $bf
    ld [c], a                                     ; $684c: $e2
    inc a                                         ; $684d: $3c
    ld [c], a                                     ; $684e: $e2
    rst $08                                       ; $684f: $cf
    ld h, c                                       ; $6850: $61
    dec sp                                        ; $6851: $3b
    push hl                                       ; $6852: $e5
    ld [hl], h                                    ; $6853: $74
    ld h, b                                       ; $6854: $60

jr_071_6855:
    cp e                                          ; $6855: $bb
    xor c                                         ; $6856: $a9
    ret nz                                        ; $6857: $c0

    ld sp, hl                                     ; $6858: $f9
    ld [$e13d], sp                                ; $6859: $08 $3d $e1
    ld sp, $b923                                  ; $685c: $31 $23 $b9
    pop bc                                        ; $685f: $c1
    ld c, $7c                                     ; $6860: $0e $7c

Call_071_6862:
    jp nz, Jump_000_00f0                          ; $6862: $c2 $f0 $00

    ld hl, sp-$7d                                 ; $6865: $f8 $83
    ld a, [hl-]                                   ; $6867: $3a
    rst $00                                       ; $6868: $c7
    inc c                                         ; $6869: $0c
    ld b, l                                       ; $686a: $45
    jr nc, jr_071_6885                            ; $686b: $30 $18

    add h                                         ; $686d: $84
    dec c                                         ; $686e: $0d
    dec l                                         ; $686f: $2d
    inc a                                         ; $6870: $3c
    db $e3                                        ; $6871: $e3

jr_071_6872:
    scf                                           ; $6872: $37
    add e                                         ; $6873: $83
    dec sp                                        ; $6874: $3b
    pop bc                                        ; $6875: $c1
    db $f4                                        ; $6876: $f4
    ld h, d                                       ; $6877: $62
    nop                                           ; $6878: $00
    xor h                                         ; $6879: $ac
    nop                                           ; $687a: $00
    ld a, a                                       ; $687b: $7f
    ld [hl], b                                    ; $687c: $70
    call z, Call_000_3e46                         ; $687d: $cc $46 $3e
    ld b, l                                       ; $6880: $45
    dec a                                         ; $6881: $3d
    db $e3                                        ; $6882: $e3
    push af                                       ; $6883: $f5
    ld b, h                                       ; $6884: $44

jr_071_6885:
    rst $30                                       ; $6885: $f7
    ld h, c                                       ; $6886: $61
    ld [hl], d                                    ; $6887: $72
    ld [hl+], a                                   ; $6888: $22
    inc bc                                        ; $6889: $03
    dec bc                                        ; $688a: $0b
    dec l                                         ; $688b: $2d
    ld l, e                                       ; $688c: $6b
    ld bc, $f8c0                                  ; $688d: $01 $c0 $f8
    ld sp, hl                                     ; $6890: $f9
    xor h                                         ; $6891: $ac
    or a                                          ; $6892: $b7
    ld h, [hl]                                    ; $6893: $66
    rst $30                                       ; $6894: $f7
    add b                                         ; $6895: $80
    inc sp                                        ; $6896: $33
    ld [bc], a                                    ; $6897: $02
    and b                                         ; $6898: $a0
    ld [hl], e                                    ; $6899: $73
    ld b, c                                       ; $689a: $41
    add b                                         ; $689b: $80
    or $f6                                        ; $689c: $f6 $f6
    dec bc                                        ; $689e: $0b
    xor [hl]                                      ; $689f: $ae
    dec hl                                        ; $68a0: $2b
    ld sp, hl                                     ; $68a1: $f9
    and d                                         ; $68a2: $a2
    dec l                                         ; $68a3: $2d
    ld a, [c]                                     ; $68a4: $f2
    add b                                         ; $68a5: $80
    dec hl                                        ; $68a6: $2b
    ld bc, $ba6b                                  ; $68a7: $01 $6b $ba
    inc b                                         ; $68aa: $04
    ld a, [hl]                                    ; $68ab: $7e
    jp c, $8ae0                                   ; $68ac: $da $e0 $8a

    ld l, b                                       ; $68af: $68

jr_071_68b0:
    db $e3                                        ; $68b0: $e3
    db $f4                                        ; $68b1: $f4
    inc hl                                        ; $68b2: $23
    pop bc                                        ; $68b3: $c1
    ldh [rP1], a                                  ; $68b4: $e0 $00
    ld [c], a                                     ; $68b6: $e2
    jr c, jr_071_6872                             ; $68b7: $38 $b9

    jr c, jr_071_68b0                             ; $68b9: $38 $f5

    ld b, $b0                                     ; $68bb: $06 $b0
    ld l, b                                       ; $68bd: $68
    ld c, $2e                                     ; $68be: $0e $2e
    ld c, $f6                                     ; $68c0: $0e $f6
    ld b, c                                       ; $68c2: $41
    pop bc                                        ; $68c3: $c1
    ld [c], a                                     ; $68c4: $e2
    nop                                           ; $68c5: $00
    add hl, sp                                    ; $68c6: $39
    jr nz, jr_071_6943                            ; $68c7: $20 $7a

    ld [hl], a                                    ; $68c9: $77
    ret nz                                        ; $68ca: $c0

    db $f4                                        ; $68cb: $f4
    inc [hl]                                      ; $68cc: $34
    ld b, h                                       ; $68cd: $44
    pop bc                                        ; $68ce: $c1
    db $e4                                        ; $68cf: $e4
    ld a, c                                       ; $68d0: $79
    dec a                                         ; $68d1: $3d
    call c, Call_000_0f46                         ; $68d2: $dc $46 $0f
    ld c, c                                       ; $68d5: $49
    ret nz                                        ; $68d6: $c0

    ld [hl], c                                    ; $68d7: $71
    ld hl, $e4c1                                  ; $68d8: $21 $c1 $e4
    pop bc                                        ; $68db: $c1
    cp a                                          ; $68dc: $bf
    ld [hl], e                                    ; $68dd: $73
    adc b                                         ; $68de: $88
    ld l, h                                       ; $68df: $6c
    ld h, [hl]                                    ; $68e0: $66
    rst $30                                       ; $68e1: $f7
    add c                                         ; $68e2: $81
    ld l, $2e                                     ; $68e3: $2e $2e
    nop                                           ; $68e5: $00
    dec sp                                        ; $68e6: $3b
    ld [hl+], a                                   ; $68e7: $22
    jp nz, Jump_071_73b1                          ; $68e8: $c2 $b1 $73

    sbc c                                         ; $68eb: $99
    rrca                                          ; $68ec: $0f
    ld c, e                                       ; $68ed: $4b
    pop bc                                        ; $68ee: $c1
    dec sp                                        ; $68ef: $3b
    jr c, @-$31                                   ; $68f0: $38 $cd

    ld h, h                                       ; $68f2: $64
    ld c, d                                       ; $68f3: $4a
    add c                                         ; $68f4: $81
    inc l                                         ; $68f5: $2c
    nop                                           ; $68f6: $00
    nop                                           ; $68f7: $00
    nop                                           ; $68f8: $00
    dec e                                         ; $68f9: $1d
    and b                                         ; $68fa: $a0
    rst $38                                       ; $68fb: $ff
    rst $20                                       ; $68fc: $e7
    sub $d7                                       ; $68fd: $d6 $d7
    ret c                                         ; $68ff: $d8

    ld a, [c]                                     ; $6900: $f2
    add sp, -$01                                  ; $6901: $e8 $ff
    rst $38                                       ; $6903: $ff
    xor $ed                                       ; $6904: $ee $ed
    ld a, a                                       ; $6906: $7f
    reti                                          ; $6907: $d9


    jp c, $a0db                                   ; $6908: $da $db $a0

    call nc, $d4d5                                ; $690b: $d4 $d5 $d4
    xor [hl]                                      ; $690e: $ae
    db $e4                                        ; $690f: $e4
    db $e3                                        ; $6910: $e3
    ld [c], a                                     ; $6911: $e2
    db $e3                                        ; $6912: $e3
    di                                            ; $6913: $f3
    add sp, -$05                                  ; $6914: $e8 $fb
    ld a, [$e588]                                 ; $6916: $fa $88 $e5

Jump_071_6919:
    call c, $dedd                                 ; $6919: $dc $dd $de
    cp $72                                        ; $691c: $fe $72
    pop hl                                        ; $691e: $e1
    sbc a                                         ; $691f: $9f
    sbc l                                         ; $6920: $9d
    sbc l                                         ; $6921: $9d
    sbc a                                         ; $6922: $9f
    call nc, $a0d4                                ; $6923: $d4 $d4 $a0
    add e                                         ; $6926: $83
    db $e4                                        ; $6927: $e4
    push hl                                       ; $6928: $e5
    ld h, l                                       ; $6929: $65
    ldh [$b1], a                                  ; $692a: $e0 $b1
    and $b2                                       ; $692c: $e6 $b2
    ldh [$b1], a                                  ; $692e: $e0 $b1
    or $88                                        ; $6930: $f6 $88
    pop hl                                        ; $6932: $e1
    and b                                         ; $6933: $a0
    xor $ce                                       ; $6934: $ee $ce
    ldh [$df], a                                  ; $6936: $e0 $df
    ldh [$e1], a                                  ; $6938: $e0 $e1
    jp $9ce1                                      ; $693a: $c3 $e1 $9c


    ld b, [hl]                                    ; $693d: $46
    ld b, l                                       ; $693e: $45
    ccf                                           ; $693f: $3f
    sbc h                                         ; $6940: $9c
    sbc a                                         ; $6941: $9f
    and b                                         ; $6942: $a0

jr_071_6943:
    and b                                         ; $6943: $a0
    and $e7                                       ; $6944: $e6 $e7
    db $eb                                        ; $6946: $eb
    ld [c], a                                     ; $6947: $e2
    ld a, [hl+]                                   ; $6948: $2a
    db $e4                                        ; $6949: $e4
    ldh [$b2], a                                  ; $694a: $e0 $b2
    ld [c], a                                     ; $694c: $e2
    ld l, a                                       ; $694d: $6f
    db $f4                                        ; $694e: $f4
    adc b                                         ; $694f: $88
    db $e4                                        ; $6950: $e4
    add h                                         ; $6951: $84
    ld [c], a                                     ; $6952: $e2
    jp Jump_071_48e0                              ; $6953: $c3 $e0 $48


    ld c, [hl]                                    ; $6956: $4e
    ld c, c                                       ; $6957: $49
    ld bc, $bf49                                  ; $6958: $01 $49 $bf
    pop hl                                        ; $695b: $e1
    and d                                         ; $695c: $a2
    jp hl                                         ; $695d: $e9


    or d                                          ; $695e: $b2
    ld [c], a                                     ; $695f: $e2
    or c                                          ; $6960: $b1
    ld [c], a                                     ; $6961: $e2

Jump_071_6962:
    ld sp, $88f0                                  ; $6962: $31 $f0 $88
    pop hl                                        ; $6965: $e1
    rrca                                          ; $6966: $0f
    db $e3                                        ; $6967: $e3
    rst $38                                       ; $6968: $ff
    sbc a                                         ; $6969: $9f
    sbc h                                         ; $696a: $9c
    ld b, l                                       ; $696b: $45
    ld c, b                                       ; $696c: $48
    ld c, b                                       ; $696d: $48
    ld d, d                                       ; $696e: $52
    ld h, c                                       ; $696f: $61
    ld h, c                                       ; $6970: $61
    pop bc                                        ; $6971: $c1
    ld d, d                                       ; $6972: $52
    ld a, [hl]                                    ; $6973: $7e
    pop hl                                        ; $6974: $e1
    or c                                          ; $6975: $b1
    call nz, $e8a2                                ; $6976: $c4 $a2 $e8
    db $fc                                        ; $6979: $fc
    ei                                            ; $697a: $fb
    rrca                                          ; $697b: $0f
    ldh [$9e], a                                  ; $697c: $e0 $9e
    ld b, l                                       ; $697e: $45
    rst $38                                       ; $697f: $ff
    ld b, a                                       ; $6980: $47
    ld h, b                                       ; $6981: $60
    ld h, b                                       ; $6982: $60
    ld a, c                                       ; $6983: $79
    ld a, d                                       ; $6984: $7a

jr_071_6985:
    ld a, h                                       ; $6985: $7c
    ld a, l                                       ; $6986: $7d
    ld b, [hl]                                    ; $6987: $46
    jp $9e46                                      ; $6988: $c3 $46 $9e


    add a                                         ; $698b: $87
    db $e4                                        ; $698c: $e4
    and d                                         ; $698d: $a2
    push hl                                       ; $698e: $e5
    ld e, a                                       ; $698f: $5f
    db $db                                        ; $6990: $db
    adc c                                         ; $6991: $89
    pop bc                                        ; $6992: $c1
    and $e7                                       ; $6993: $e6 $e7
    rst $38                                       ; $6995: $ff
    sbc a                                         ; $6996: $9f
    sbc h                                         ; $6997: $9c
    ld d, c                                       ; $6998: $51
    ld d, d                                       ; $6999: $52
    ld a, c                                       ; $699a: $79
    ld a, d                                       ; $699b: $7a
    adc a                                         ; $699c: $8f
    dec hl                                        ; $699d: $2b
    rlca                                          ; $699e: $07
    dec hl                                        ; $699f: $2b
    ld a, a                                       ; $69a0: $7f
    ld a, l                                       ; $69a1: $7d
    ret nz                                        ; $69a2: $c0

    ldh [$b1], a                                  ; $69a3: $e0 $b1
    pop bc                                        ; $69a5: $c1
    ld c, [hl]                                    ; $69a6: $4e
    db $e4                                        ; $69a7: $e4
    ld l, d                                       ; $69a8: $6a
    call nz, $e4ae                                ; $69a9: $c4 $ae $e4
    cp $75                                        ; $69ac: $fe $75
    or $9e                                        ; $69ae: $f6 $9e
    ld b, [hl]                                    ; $69b0: $46
    ld b, l                                       ; $69b1: $45
    ld a, c                                       ; $69b2: $79
    ld a, [hl]                                    ; $69b3: $7e
    dec l                                         ; $69b4: $2d
    cpl                                           ; $69b5: $2f
    rrca                                          ; $69b6: $0f
    jr nz, jr_071_69e9                            ; $69b7: $20 $30

    ld b, [hl]                                    ; $69b9: $46
    add c                                         ; $69ba: $81
    add b                                         ; $69bb: $80
    ldh [$29], a                                  ; $69bc: $e0 $29
    db $e4                                        ; $69be: $e4
    ld l, $c3                                     ; $69bf: $2e $c3
    jr z, jr_071_6985                             ; $69c1: $28 $c2

    ld hl, sp+$5f                                 ; $69c3: $f8 $5f
    call nz, $d229                                ; $69c5: $c4 $29 $d2
    jp $9ea1                                      ; $69c8: $c3 $a1 $9e


    xor [hl]                                      ; $69cb: $ae
    ld b, [hl]                                    ; $69cc: $46
    add d                                         ; $69cd: $82
    add e                                         ; $69ce: $83
    ld a, a                                       ; $69cf: $7f
    cp l                                          ; $69d0: $bd
    inc l                                         ; $69d1: $2c
    cpl                                           ; $69d2: $2f
    ld a, [hl+]                                   ; $69d3: $2a
    add e                                         ; $69d4: $83
    add h                                         ; $69d5: $84
    ld b, [hl]                                    ; $69d6: $46
    cp [hl]                                       ; $69d7: $be
    call nz, $48c0                                ; $69d8: $c4 $c0 $48
    pop bc                                        ; $69db: $c1
    add $c6                                       ; $69dc: $c6 $c6
    dec [hl]                                      ; $69de: $35
    and $e7                                       ; $69df: $e6 $e7
    xor e                                         ; $69e1: $ab
    call c, $c3e2                                 ; $69e2: $dc $e2 $c3
    and c                                         ; $69e5: $a1
    sbc [hl]                                      ; $69e6: $9e
    xor a                                         ; $69e7: $af
    rst $28                                       ; $69e8: $ef

jr_071_69e9:
    ld b, [hl]                                    ; $69e9: $46
    add l                                         ; $69ea: $85
    add a                                         ; $69eb: $87
    adc b                                         ; $69ec: $88

jr_071_69ed:
    rst $38                                       ; $69ed: $ff
    ldh [$87], a                                  ; $69ee: $e0 $87
    add l                                         ; $69f0: $85
    inc bc                                        ; $69f1: $03
    inc bc                                        ; $69f2: $03
    inc bc                                        ; $69f3: $03
    sbc h                                         ; $69f4: $9c
    ld sp, hl                                     ; $69f5: $f9
    and b                                         ; $69f6: $a0
    ld c, b                                       ; $69f7: $48
    push bc                                       ; $69f8: $c5
    ld [de], a                                    ; $69f9: $12
    db $ed                                        ; $69fa: $ed
    xor c                                         ; $69fb: $a9
    xor e                                         ; $69fc: $ab
    sub $a2                                       ; $69fd: $d6 $a2
    jp $bfa1                                      ; $69ff: $c3 $a1 $bf


    sbc [hl]                                      ; $6a02: $9e
    ld b, [hl]                                    ; $6a03: $46
    xor [hl]                                      ; $6a04: $ae
    ld b, [hl]                                    ; $6a05: $46
    ld [bc], a                                    ; $6a06: $02
    rlca                                          ; $6a07: $07
    rst $38                                       ; $6a08: $ff

Call_071_6a09:
    ld [c], a                                     ; $6a09: $e2
    dec c                                         ; $6a0a: $0d
    rlca                                          ; $6a0b: $07
    rrca                                          ; $6a0c: $0f
    ld [bc], a                                    ; $6a0d: $02
    ld b, [hl]                                    ; $6a0e: $46
    ld a, h                                       ; $6a0f: $7c
    pop hl                                        ; $6a10: $e1
    ld a, [$28a1]                                 ; $6a11: $fa $a1 $28
    and e                                         ; $6a14: $a3
    ld [hl], e                                    ; $6a15: $73
    or a                                          ; $6a16: $b7
    inc h                                         ; $6a17: $24
    jp nz, $c3fe                                  ; $6a18: $c2 $fe $c3

    and d                                         ; $6a1b: $a2
    ret nc                                        ; $6a1c: $d0

    xor a                                         ; $6a1d: $af
    ld [bc], a                                    ; $6a1e: $02
    rrca                                          ; $6a1f: $0f
    nop                                           ; $6a20: $00
    ld bc, $7f99                                  ; $6a21: $01 $99 $7f
    sbc b                                         ; $6a24: $98
    rrca                                          ; $6a25: $0f
    inc b                                         ; $6a26: $04
    inc b                                         ; $6a27: $04
    rlca                                          ; $6a28: $07
    rlca                                          ; $6a29: $07
    inc c                                         ; $6a2a: $0c
    ld a, h                                       ; $6a2b: $7c
    pop hl                                        ; $6a2c: $e1
    ld hl, sp-$08                                 ; $6a2d: $f8 $f8
    and c                                         ; $6a2f: $a1
    ret                                           ; $6a30: $c9


    call z, $98d9                                 ; $6a31: $cc $d9 $98
    db $d3                                        ; $6a34: $d3
    ret nc                                        ; $6a35: $d0

    ld [bc], a                                    ; $6a36: $02
    rlca                                          ; $6a37: $07
    dec c                                         ; $6a38: $0d
    rst $30                                       ; $6a39: $f7
    dec c                                         ; $6a3a: $0d
    rlca                                          ; $6a3b: $07
    rlca                                          ; $6a3c: $07
    add h                                         ; $6a3d: $84
    ldh [$ae], a                                  ; $6a3e: $e0 $ae
    ld b, [hl]                                    ; $6a40: $46
    inc c                                         ; $6a41: $0c
    rlca                                          ; $6a42: $07
    nop                                           ; $6a43: $00
    ld a, h                                       ; $6a44: $7c
    ldh [rPCM12], a                               ; $6a45: $e0 $76
    and c                                         ; $6a47: $a1
    jr z, jr_071_69ed                             ; $6a48: $28 $a3

    and d                                         ; $6a4a: $a2
    add d                                         ; $6a4b: $82
    ld l, a                                       ; $6a4c: $6f
    and c                                         ; $6a4d: $a1
    xor a                                         ; $6a4e: $af
    and e                                         ; $6a4f: $a3
    or h                                          ; $6a50: $b4
    xor a                                         ; $6a51: $af
    ld d, e                                       ; $6a52: $53
    and c                                         ; $6a53: $a1
    rst $18                                       ; $6a54: $df
    db $d3                                        ; $6a55: $d3
    ret nc                                        ; $6a56: $d0

    ld b, [hl]                                    ; $6a57: $46
    inc bc                                        ; $6a58: $03
    inc bc                                        ; $6a59: $03
    ld a, [hl-]                                   ; $6a5a: $3a
    ldh [rDMA], a                                 ; $6a5b: $e0 $46
    ld b, [hl]                                    ; $6a5d: $46
    rra                                           ; $6a5e: $1f
    xor a                                         ; $6a5f: $af
    xor [hl]                                      ; $6a60: $ae
    ld b, [hl]                                    ; $6a61: $46
    xor [hl]                                      ; $6a62: $ae
    ld [bc], a                                    ; $6a63: $02
    cp a                                          ; $6a64: $bf
    db $e3                                        ; $6a65: $e3
    and b                                         ; $6a66: $a0
    and e                                         ; $6a67: $a3
    ld b, e                                       ; $6a68: $43
    add $f8                                       ; $6a69: $c6 $f8
    xor a                                         ; $6a6b: $af
    xor [hl]                                      ; $6a6c: $ae
    sbc c                                         ; $6a6d: $99
    adc c                                         ; $6a6e: $89
    cp a                                          ; $6a6f: $bf
    ldh [rDMA], a                                 ; $6a70: $e0 $46
    xor [hl]                                      ; $6a72: $ae
    xor a                                         ; $6a73: $af
    ld b, l                                       ; $6a74: $45
    scf                                           ; $6a75: $37
    rst $38                                       ; $6a76: $ff
    scf                                           ; $6a77: $37
    ccf                                           ; $6a78: $3f
    xor a                                         ; $6a79: $af
    xor [hl]                                      ; $6a7a: $ae
    xor a                                         ; $6a7b: $af
    xor [hl]                                      ; $6a7c: $ae
    ld [bc], a                                    ; $6a7d: $02
    rlca                                          ; $6a7e: $07
    pop bc                                        ; $6a7f: $c1
    inc c                                         ; $6a80: $0c
    ld [hl], a                                    ; $6a81: $77
    push bc                                       ; $6a82: $c5
    ld a, [de]                                    ; $6a83: $1a
    and a                                         ; $6a84: $a7
    xor a                                         ; $6a85: $af
    xor b                                         ; $6a86: $a8
    ld l, e                                       ; $6a87: $6b
    xor h                                         ; $6a88: $ac
    sbc e                                         ; $6a89: $9b
    add c                                         ; $6a8a: $81
    db $d3                                        ; $6a8b: $d3
    pop de                                        ; $6a8c: $d1
    rst $38                                       ; $6a8d: $ff
    ret nc                                        ; $6a8e: $d0

    xor a                                         ; $6a8f: $af
    xor [hl]                                      ; $6a90: $ae
    xor [hl]                                      ; $6a91: $ae
    jp $cfcd                                      ; $6a92: $c3 $cd $cf


    ld [hl], $01                                  ; $6a95: $36 $01
    xor a                                         ; $6a97: $af
    ld a, h                                       ; $6a98: $7c
    pop hl                                        ; $6a99: $e1
    scf                                           ; $6a9a: $37
    ldh [rPCM34], a                               ; $6a9b: $e0 $77
    ret nz                                        ; $6a9d: $c0

    ld [hl], l                                    ; $6a9e: $75
    pop bc                                        ; $6a9f: $c1
    and d                                         ; $6aa0: $a2
    add c                                         ; $6aa1: $81
    ld [hl-], a                                   ; $6aa2: $32
    call nz, $953e                                ; $6aa3: $c4 $3e $95
    cp $9b                                        ; $6aa6: $fe $9b
    add e                                         ; $6aa8: $83
    db $d3                                        ; $6aa9: $d3
    ret nc                                        ; $6aaa: $d0

    xor a                                         ; $6aab: $af
    xor a                                         ; $6aac: $af
    rst $08                                       ; $6aad: $cf
    call z, $5fcc                                 ; $6aae: $cc $cc $5f
    rst $08                                       ; $6ab1: $cf
    jr c, jr_071_6aeb                             ; $6ab2: $38 $37

    jp Jump_000_32af                              ; $6ab4: $c3 $af $32


    ldh [$af], a                                  ; $6ab7: $e0 $af
    cp h                                          ; $6ab9: $bc
    pop hl                                        ; $6aba: $e1
    ldh [$f1], a                                  ; $6abb: $e0 $f1
    and h                                         ; $6abd: $a4
    ld [hl-], a                                   ; $6abe: $32
    add $31                                       ; $6abf: $c6 $31
    adc h                                         ; $6ac1: $8c
    dec d                                         ; $6ac2: $15
    and h                                         ; $6ac3: $a4
    sbc e                                         ; $6ac4: $9b
    add d                                         ; $6ac5: $82
    and b                                         ; $6ac6: $a0
    and b                                         ; $6ac7: $a0
    jp nc, $aeff                                  ; $6ac8: $d2 $ff $ae

    xor [hl]                                      ; $6acb: $ae
    ld [hl], $cf                                  ; $6acc: $36 $cf
    call z, Call_000_35ce                         ; $6ace: $cc $ce $35
    dec [hl]                                      ; $6ad1: $35
    ld l, a                                       ; $6ad2: $6f
    dec sp                                        ; $6ad3: $3b
    ld [hl], $46                                  ; $6ad4: $36 $46
    ld b, $b2                                     ; $6ad6: $06 $b2
    ret nz                                        ; $6ad8: $c0

    rlca                                          ; $6ad9: $07
    ld [bc], a                                    ; $6ada: $02
    cp h                                          ; $6adb: $bc
    ldh [$c0], a                                  ; $6adc: $e0 $c0
    pop af                                        ; $6ade: $f1
    and d                                         ; $6adf: $a2
    inc l                                         ; $6ae0: $2c
    add b                                         ; $6ae1: $80
    sbc a                                         ; $6ae2: $9f
    ld h, e                                       ; $6ae3: $63
    ld sp, $3e8c                                  ; $6ae4: $31 $8c $3e
    add a                                         ; $6ae7: $87
    ld a, c                                       ; $6ae8: $79
    and d                                         ; $6ae9: $a2
    xor a                                         ; $6aea: $af

jr_071_6aeb:
    xor a                                         ; $6aeb: $af
    cp $bf                                        ; $6aec: $fe $bf
    ldh [$cf], a                                  ; $6aee: $e0 $cf
    jr c, jr_071_6b2a                             ; $6af0: $38 $38

    dec [hl]                                      ; $6af2: $35
    dec [hl]                                      ; $6af3: $35
    ld b, b                                       ; $6af4: $40
    dec b                                         ; $6af5: $05
    rst $38                                       ; $6af6: $ff
    ld c, $00                                     ; $6af7: $0e $00
    ld bc, $0f9b                                  ; $6af9: $01 $9b $0f
    rlca                                          ; $6afc: $07
    rlca                                          ; $6afd: $07
    inc b                                         ; $6afe: $04
    ld bc, $f103                                  ; $6aff: $01 $03 $f1
    and d                                         ; $6b02: $a2
    dec c                                         ; $6b03: $0d
    jp z, $8731                                   ; $6b04: $ca $31 $87

    ld a, $83                                     ; $6b07: $3e $83
    ld b, h                                       ; $6b09: $44
    ld h, c                                       ; $6b0a: $61
    ld a, c                                       ; $6b0b: $79
    and d                                         ; $6b0c: $a2
    cp [hl]                                       ; $6b0d: $be
    jp Jump_071_45ef                              ; $6b0e: $c3 $ef $45


    jp Jump_000_363c                              ; $6b11: $c3 $3c $36


    or b                                          ; $6b14: $b0
    and b                                         ; $6b15: $a0
    rrca                                          ; $6b16: $0f
    sbc d                                         ; $6b17: $9a
    sbc c                                         ; $6b18: $99
    dec a                                         ; $6b19: $3d
    sbc b                                         ; $6b1a: $98
    rst $38                                       ; $6b1b: $ff
    ldh [$0d], a                                  ; $6b1c: $e0 $0d
    rlca                                          ; $6b1e: $07
    dec b                                         ; $6b1f: $05
    xor [hl]                                      ; $6b20: $ae
    xor c                                         ; $6b21: $a9
    ld h, c                                       ; $6b22: $61
    db $db                                        ; $6b23: $db
    ld e, h                                       ; $6b24: $5c
    ld a, b                                       ; $6b25: $78
    inc a                                         ; $6b26: $3c
    ld h, c                                       ; $6b27: $61
    cp c                                          ; $6b28: $b9
    and b                                         ; $6b29: $a0

jr_071_6b2a:
    dec a                                         ; $6b2a: $3d
    pop bc                                        ; $6b2b: $c1
    xor [hl]                                      ; $6b2c: $ae
    add hl, sp                                    ; $6b2d: $39
    inc a                                         ; $6b2e: $3c
    xor [hl]                                      ; $6b2f: $ae
    inc bc                                        ; $6b30: $03
    ldh [$fe], a                                  ; $6b31: $e0 $fe
    ld l, a                                       ; $6b33: $6f
    and b                                         ; $6b34: $a0
    rrca                                          ; $6b35: $0f
    sbc b                                         ; $6b36: $98
    sbc b                                         ; $6b37: $98
    sbc c                                         ; $6b38: $99
    nop                                           ; $6b39: $00
    ld bc, $8106                                  ; $6b3a: $01 $06 $81
    xor a                                         ; $6b3d: $af
    db $eb                                        ; $6b3e: $eb
    add c                                         ; $6b3f: $81
    ld a, h                                       ; $6b40: $7c
    sub c                                         ; $6b41: $91
    ret c                                         ; $6b42: $d8

    ld c, b                                       ; $6b43: $48
    or h                                          ; $6b44: $b4
    ld h, d                                       ; $6b45: $62
    ld a, [$7ca0]                                 ; $6b46: $fa $a0 $7c
    ret nz                                        ; $6b49: $c0

    xor a                                         ; $6b4a: $af
    ld e, a                                       ; $6b4b: $5f
    ld a, [hl-]                                   ; $6b4c: $3a
    ld a, [hl-]                                   ; $6b4d: $3a
    xor a                                         ; $6b4e: $af
    add $c7                                       ; $6b4f: $c6 $c7
    or a                                          ; $6b51: $b7
    pop hl                                        ; $6b52: $e1
    ld [bc], a                                    ; $6b53: $02
    cp a                                          ; $6b54: $bf
    ldh [$03], a                                  ; $6b55: $e0 $03
    sbc b                                         ; $6b57: $98
    sbc c                                         ; $6b58: $99
    ld l, $a1                                     ; $6b59: $2e $a1
    ld a, [hl+]                                   ; $6b5b: $2a
    add e                                         ; $6b5c: $83
    jr z, jr_071_6bc7                             ; $6b5d: $28 $68

    nop                                           ; $6b5f: $00
    adc b                                         ; $6b60: $88
    sub l                                         ; $6b61: $95
    adc b                                         ; $6b62: $88
    cp a                                          ; $6b63: $bf
    pop hl                                        ; $6b64: $e1
    rst $38                                       ; $6b65: $ff
    xor a                                         ; $6b66: $af
    add hl, sp                                    ; $6b67: $39
    dec [hl]                                      ; $6b68: $35
    ld a, [hl-]                                   ; $6b69: $3a
    jp $c5c4                                      ; $6b6a: $c3 $c4 $c5


    xor a                                         ; $6b6d: $af
    db $fd                                        ; $6b6e: $fd
    jp $a0f6                                      ; $6b6f: $c3 $f6 $a0


    ld [bc], a                                    ; $6b72: $02
    sbc c                                         ; $6b73: $99
    sbc b                                         ; $6b74: $98
    sub a                                         ; $6b75: $97
    sbc b                                         ; $6b76: $98
    sbc b                                         ; $6b77: $98
    add a                                         ; $6b78: $87
    ld c, $05                                     ; $6b79: $0e $05
    xor [hl]                                      ; $6b7b: $ae
    ld a, [hl+]                                   ; $6b7c: $2a
    add [hl]                                      ; $6b7d: $86
    di                                            ; $6b7e: $f3
    ld l, e                                       ; $6b7f: $6b
    daa                                           ; $6b80: $27
    ld h, d                                       ; $6b81: $62
    sub l                                         ; $6b82: $95
    adc c                                         ; $6b83: $89
    db $d3                                        ; $6b84: $d3
    rst $38                                       ; $6b85: $ff
    pop de                                        ; $6b86: $d1
    pop de                                        ; $6b87: $d1
    ret nc                                        ; $6b88: $d0

    add hl, sp                                    ; $6b89: $39
    jp Jump_000_3b35                              ; $6b8a: $c3 $35 $3b


    dec [hl]                                      ; $6b8d: $35
    ld a, a                                       ; $6b8e: $7f
    jr c, jr_071_6bc9                             ; $6b8f: $38 $38

    adc $cd                                       ; $6b91: $ce $cd
    rst $08                                       ; $6b93: $cf
    xor a                                         ; $6b94: $af
    dec b                                         ; $6b95: $05
    ret nz                                        ; $6b96: $c0

    ldh [$1f], a                                  ; $6b97: $e0 $1f
    sub a                                         ; $6b99: $97
    sub a                                         ; $6b9a: $97
    sbc b                                         ; $6b9b: $98
    ld b, $af                                     ; $6b9c: $06 $af
    add sp, $42                                   ; $6b9e: $e8 $42
    inc l                                         ; $6ba0: $2c
    add e                                         ; $6ba1: $83
    jr z, jr_071_6c12                             ; $6ba2: $28 $6e

    cp h                                          ; $6ba4: $bc
    db $dd                                        ; $6ba5: $dd
    ld b, e                                       ; $6ba6: $43
    ld [hl], a                                    ; $6ba7: $77
    and $d3                                       ; $6ba8: $e6 $d3
    ret nc                                        ; $6baa: $d0

    ld [hl], $3b                                  ; $6bab: $36 $3b
    cp a                                          ; $6bad: $bf
    ldh [$35], a                                  ; $6bae: $e0 $35
    rst $38                                       ; $6bb0: $ff
    rst $08                                       ; $6bb1: $cf
    call Call_071_40cf                            ; $6bb2: $cd $cf $40
    ld b, $98                                     ; $6bb5: $06 $98
    sub a                                         ; $6bb7: $97
    sub [hl]                                      ; $6bb8: $96
    add a                                         ; $6bb9: $87
    sub [hl]                                      ; $6bba: $96
    sub a                                         ; $6bbb: $97
    sbc b                                         ; $6bbc: $98
    ldh a, [$84]                                  ; $6bbd: $f0 $84
    ld [hl], h                                    ; $6bbf: $74
    ld b, e                                       ; $6bc0: $43
    ld a, c                                       ; $6bc1: $79
    or a                                          ; $6bc2: $b7
    inc c                                         ; $6bc3: $0c
    add h                                         ; $6bc4: $84
    db $d3                                        ; $6bc5: $d3
    rst $38                                       ; $6bc6: $ff

jr_071_6bc7:
    ret nc                                        ; $6bc7: $d0

    ld b, e                                       ; $6bc8: $43

jr_071_6bc9:
    xor [hl]                                      ; $6bc9: $ae
    ld b, e                                       ; $6bca: $43
    ld [hl], $c3                                  ; $6bcb: $36 $c3
    dec [hl]                                      ; $6bcd: $35
    dec [hl]                                      ; $6bce: $35
    add hl, hl                                    ; $6bcf: $29
    ld [hl], $00                                  ; $6bd0: $36 $00
    ldh [$c0], a                                  ; $6bd2: $e0 $c0
    ld [c], a                                     ; $6bd4: $e2
    sbc e                                         ; $6bd5: $9b
    dec hl                                        ; $6bd6: $2b
    add b                                         ; $6bd7: $80
    sbc [hl]                                      ; $6bd8: $9e
    ld h, $42                                     ; $6bd9: $26 $42
    and [hl]                                      ; $6bdb: $a6
    ld a, [hl-]                                   ; $6bdc: $3a
    ld a, [$850c]                                 ; $6bdd: $fa $0c $85
    jp nc, $c081                                  ; $6be0: $d2 $81 $c0

    ld b, l                                       ; $6be3: $45
    ld [hl], $35                                  ; $6be4: $36 $35
    ld a, [hl-]                                   ; $6be6: $3a
    ld [bc], a                                    ; $6be7: $02
    ld de, $010f                                  ; $6be8: $11 $0f $01
    ldh [$81], a                                  ; $6beb: $e0 $81
    ldh [$7c], a                                  ; $6bed: $e0 $7c
    ret nz                                        ; $6bef: $c0

    ld [$e1c0], sp                                ; $6bf0: $08 $c0 $e1
    ld a, l                                       ; $6bf3: $7d
    ld [hl], b                                    ; $6bf4: $70
    inc h                                         ; $6bf5: $24
    ld c, [hl]                                    ; $6bf6: $4e
    ld a, [de]                                    ; $6bf7: $1a
    ld [hl], c                                    ; $6bf8: $71
    ld h, e                                       ; $6bf9: $63
    xor [hl]                                      ; $6bfa: $ae
    ret nz                                        ; $6bfb: $c0

    pop hl                                        ; $6bfc: $e1
    add hl, sp                                    ; $6bfd: $39
    ld [$61ed], sp                                ; $6bfe: $08 $ed $61
    cp a                                          ; $6c01: $bf
    pop hl                                        ; $6c02: $e1
    ccf                                           ; $6c03: $3f
    pop hl                                        ; $6c04: $e1
    ld hl, $379e                                  ; $6c05: $21 $9e $37
    add a                                         ; $6c08: $87
    add hl, sp                                    ; $6c09: $39
    ld sp, $2500                                  ; $6c0a: $31 $00 $25
    ld hl, sp-$5b                                 ; $6c0d: $f8 $a5
    ld b, b                                       ; $6c0f: $40
    or a                                          ; $6c10: $b7
    add b                                         ; $6c11: $80

jr_071_6c12:
    add b                                         ; $6c12: $80
    db $e4                                        ; $6c13: $e4
    jp nz, $e100                                  ; $6c14: $c2 $00 $e1

    xor [hl]                                      ; $6c17: $ae
    jr z, jr_071_6c61                             ; $6c18: $28 $47

    add hl, sp                                    ; $6c1a: $39
    inc sp                                        ; $6c1b: $33
    dec c                                         ; $6c1c: $0d
    dec h                                         ; $6c1d: $25
    ld hl, sp-$5b                                 ; $6c1e: $f8 $a5
    jp $f1ce                                      ; $6c20: $c3 $ce $f1


    jp $e1bf                                      ; $6c23: $c3 $bf $e1


    add c                                         ; $6c26: $81
    ret nz                                        ; $6c27: $c0

    ld a, e                                       ; $6c28: $7b
    and b                                         ; $6c29: $a0
    ld [$af46], sp                                ; $6c2a: $08 $46 $af
    ret nc                                        ; $6c2d: $d0

    pop hl                                        ; $6c2e: $e1
    sbc a                                         ; $6c2f: $9f
    reti                                          ; $6c30: $d9


    inc bc                                        ; $6c31: $03
    halt                                          ; $6c32: $76
    sub b                                         ; $6c33: $90
    pop bc                                        ; $6c34: $c1
    inc bc                                        ; $6c35: $03
    ld e, h                                       ; $6c36: $5c
    ld a, [hl+]                                   ; $6c37: $2a
    jp nc, $c7c6                                  ; $6c38: $d2 $c6 $c7

    xor l                                         ; $6c3b: $ad
    adc $76                                       ; $6c3c: $ce $76
    add b                                         ; $6c3e: $80
    ld [hl], $06                                  ; $6c3f: $36 $06
    ret nz                                        ; $6c41: $c0

    and c                                         ; $6c42: $a1
    sbc c                                         ; $6c43: $99
    ret nz                                        ; $6c44: $c0

    ldh [$d0], a                                  ; $6c45: $e0 $d0
    pop hl                                        ; $6c47: $e1
    db $d3                                        ; $6c48: $d3
    ld d, c                                       ; $6c49: $51
    inc h                                         ; $6c4a: $24
    xor b                                         ; $6c4b: $a8
    ld d, b                                       ; $6c4c: $50
    add sp, $6a                                   ; $6c4d: $e8 $6a
    dec d                                         ; $6c4f: $15
    inc hl                                        ; $6c50: $23
    sbc [hl]                                      ; $6c51: $9e
    call nz, $cec5                                ; $6c52: $c4 $c5 $ce
    ret nz                                        ; $6c55: $c0

    ldh [$ce], a                                  ; $6c56: $e0 $ce
    inc a                                         ; $6c58: $3c
    dec b                                         ; $6c59: $05
    inc a                                         ; $6c5a: $3c
    and b                                         ; $6c5b: $a0
    add sp, $40                                   ; $6c5c: $e8 $40
    ld b, $ae                                     ; $6c5e: $06 $ae
    ld [hl], c                                    ; $6c60: $71

jr_071_6c61:
    jp nc, Jump_071_4acc                          ; $6c61: $d2 $cc $4a

jr_071_6c64:
    inc l                                         ; $6c64: $2c
    dec sp                                        ; $6c65: $3b
    ld c, l                                       ; $6c66: $4d
    nop                                           ; $6c67: $00
    sbc [hl]                                      ; $6c68: $9e
    ld b, [hl]                                    ; $6c69: $46
    ld b, b                                       ; $6c6a: $40
    or $60                                        ; $6c6b: $f6 $60
    ld a, [hl-]                                   ; $6c6d: $3a
    ld a, a                                       ; $6c6e: $7f
    ldh [rLYC], a                                 ; $6c6f: $e0 $45
    cp b                                          ; $6c71: $b8
    add c                                         ; $6c72: $81
    db $10                                        ; $6c73: $10
    dec b                                         ; $6c74: $05
    xor a                                         ; $6c75: $af
    ld b, d                                       ; $6c76: $42

jr_071_6c77:
    ret nz                                        ; $6c77: $c0

    cp h                                          ; $6c78: $bc
    ld [hl], l                                    ; $6c79: $75
    jr c, jr_071_6c64                             ; $6c7a: $38 $e8

    ld h, [hl]                                    ; $6c7c: $66
    daa                                           ; $6c7d: $27
    and l                                         ; $6c7e: $a5
    reti                                          ; $6c7f: $d9


    and b                                         ; $6c80: $a0
    sbc a                                         ; $6c81: $9f
    ret nc                                        ; $6c82: $d0

    ld b, l                                       ; $6c83: $45
    or $60                                        ; $6c84: $f6 $60
    push af                                       ; $6c86: $f5
    ld h, b                                       ; $6c87: $60
    rrca                                          ; $6c88: $0f
    jr c, jr_071_6cc2                             ; $6c89: $38 $37

    ld b, l                                       ; $6c8b: $45

jr_071_6c8c:
    ld [bc], a                                    ; $6c8c: $02
    dec a                                         ; $6c8d: $3d
    add b                                         ; $6c8e: $80
    ld [bc], a                                    ; $6c8f: $02
    ldh [$ee], a                                  ; $6c90: $e0 $ee
    inc [hl]                                      ; $6c92: $34
    cp [hl]                                       ; $6c93: $be
    add h                                         ; $6c94: $84
    add sp, -$5b                                  ; $6c95: $e8 $a5
    and c                                         ; $6c97: $a1
    ld a, [de]                                    ; $6c98: $1a
    dec h                                         ; $6c99: $25
    add hl, hl                                    ; $6c9a: $29
    ld b, c                                       ; $6c9b: $41
    db $d3                                        ; $6c9c: $d3
    cp a                                          ; $6c9d: $bf
    pop hl                                        ; $6c9e: $e1
    jp Jump_000_35cd                              ; $6c9f: $c3 $cd $35


    ld h, $bb                                     ; $6ca2: $26 $bb
    and b                                         ; $6ca4: $a0
    ld b, l                                       ; $6ca5: $45
    ld b, [hl]                                    ; $6ca6: $46

jr_071_6ca7:
    ld [bc], a                                    ; $6ca7: $02
    ld [c], a                                     ; $6ca8: $e2
    cp h                                          ; $6ca9: $bc
    ld h, d                                       ; $6caa: $62
    call nc, $0fb5                                ; $6cab: $d4 $b5 $0f
    ld a, h                                       ; $6cae: $7c
    add e                                         ; $6caf: $83
    jr nz, jr_071_6ca7                            ; $6cb0: $20 $f5

    ld hl, $0a4f                                  ; $6cb2: $21 $4f $0a
    cp a                                          ; $6cb5: $bf
    pop hl                                        ; $6cb6: $e1
    jp nz, $bfe0                                  ; $6cb7: $c2 $e0 $bf

    db $e3                                        ; $6cba: $e3
    jp nc, $878b                                  ; $6cbb: $d2 $8b $87

    or l                                          ; $6cbe: $b5
    dec c                                         ; $6cbf: $0d
    ld a, h                                       ; $6cc0: $7c
    ld l, l                                       ; $6cc1: $6d

jr_071_6cc2:
    jr z, jr_071_6c8c                             ; $6cc2: $28 $c8

    ld a, [bc]                                    ; $6cc4: $0a
    and b                                         ; $6cc5: $a0
    jp nc, Jump_071_4446                          ; $6cc6: $d2 $46 $44

    inc a                                         ; $6cc9: $3c
    cp a                                          ; $6cca: $bf
    db $e3                                        ; $6ccb: $e3
    add c                                         ; $6ccc: $81
    ld b, b                                       ; $6ccd: $40
    inc l                                         ; $6cce: $2c
    inc b                                         ; $6ccf: $04
    or l                                          ; $6cd0: $b5
    add hl, bc                                    ; $6cd1: $09
    cp e                                          ; $6cd2: $bb
    db $db                                        ; $6cd3: $db
    inc sp                                        ; $6cd4: $33
    ld h, d                                       ; $6cd5: $62
    dec a                                         ; $6cd6: $3d
    and c                                         ; $6cd7: $a1
    ld a, [hl]                                    ; $6cd8: $7e
    ld [c], a                                     ; $6cd9: $e2
    add hl, sp                                    ; $6cda: $39
    ret nz                                        ; $6cdb: $c0

    xor h                                         ; $6cdc: $ac
    nop                                           ; $6cdd: $00
    dec sp                                        ; $6cde: $3b
    ld e, a                                       ; $6cdf: $5f
    ld b, h                                       ; $6ce0: $44
    jp $0389                                      ; $6ce1: $c3 $89 $03


    inc sp                                        ; $6ce4: $33
    ld h, e                                       ; $6ce5: $63
    cp a                                          ; $6ce6: $bf
    push hl                                       ; $6ce7: $e5
    ld a, [hl-]                                   ; $6ce8: $3a
    ld b, l                                       ; $6ce9: $45
    add e                                         ; $6cea: $83
    ld b, [hl]                                    ; $6ceb: $46
    sbc [hl]                                      ; $6cec: $9e
    dec sp                                        ; $6ced: $3b
    ld e, c                                       ; $6cee: $59
    ld a, l                                       ; $6cef: $7d
    adc a                                         ; $6cf0: $8f
    xor h                                         ; $6cf1: $ac
    inc bc                                        ; $6cf2: $03
    cp a                                          ; $6cf3: $bf
    pop hl                                        ; $6cf4: $e1
    jr c, jr_071_6c77                             ; $6cf5: $38 $80

    dec [hl]                                      ; $6cf7: $35
    inc bc                                        ; $6cf8: $03
    inc a                                         ; $6cf9: $3c
    ld b, h                                       ; $6cfa: $44
    dec hl                                        ; $6cfb: $2b
    inc bc                                        ; $6cfc: $03
    ld b, c                                       ; $6cfd: $41
    add d                                         ; $6cfe: $82
    nop                                           ; $6cff: $00
    or b                                          ; $6d00: $b0
    ld l, l                                       ; $6d01: $6d
    ld l, c                                       ; $6d02: $69

Jump_071_6d03:
    ld [hl], $43                                  ; $6d03: $36 $43
    or $c1                                        ; $6d05: $f6 $c1
    rst $38                                       ; $6d07: $ff
    sbc [hl]                                      ; $6d08: $9e
    ld b, [hl]                                    ; $6d09: $46
    add $c7                                       ; $6d0a: $c6 $c7
    ld b, [hl]                                    ; $6d0c: $46
    ld b, l                                       ; $6d0d: $45
    ld b, e                                       ; $6d0e: $43
    ld a, [hl-]                                   ; $6d0f: $3a
    add b                                         ; $6d10: $80
    add b                                         ; $6d11: $80
    ld [c], a                                     ; $6d12: $e2
    ld [hl], e                                    ; $6d13: $73
    ld [hl+], a                                   ; $6d14: $22
    push bc                                       ; $6d15: $c5
    and l                                         ; $6d16: $a5
    dec a                                         ; $6d17: $3d
    xor a                                         ; $6d18: $af
    sub a                                         ; $6d19: $97
    dec b                                         ; $6d1a: $05
    dec h                                         ; $6d1b: $25
    ld h, h                                       ; $6d1c: $64
    ld a, h                                       ; $6d1d: $7c
    and d                                         ; $6d1e: $a2
    sbc [hl]                                      ; $6d1f: $9e
    rla                                           ; $6d20: $17
    ld b, [hl]                                    ; $6d21: $46
    call nz, $f1c5                                ; $6d22: $c4 $c5 $f1
    nop                                           ; $6d25: $00
    add hl, sp                                    ; $6d26: $39
    nop                                           ; $6d27: $00
    pop hl                                        ; $6d28: $e1
    jp hl                                         ; $6d29: $e9


    nop                                           ; $6d2a: $00
    inc a                                         ; $6d2b: $3c
    ld c, b                                       ; $6d2c: $48

Jump_071_6d2d:
    ld d, b                                       ; $6d2d: $50
    dec a                                         ; $6d2e: $3d
    xor a                                         ; $6d2f: $af
    add e                                         ; $6d30: $83
    ld b, c                                       ; $6d31: $41
    dec sp                                        ; $6d32: $3b
    ld b, l                                       ; $6d33: $45
    sbc c                                         ; $6d34: $99
    dec h                                         ; $6d35: $25
    sbc a                                         ; $6d36: $9f
    rst $28                                       ; $6d37: $ef
    nop                                           ; $6d38: $00
    jp $c2fc                                      ; $6d39: $c3 $fc $c2


    ld bc, $7740                                  ; $6d3c: $01 $40 $77
    ld [hl+], a                                   ; $6d3f: $22
    ld b, b                                       ; $6d40: $40
    add d                                         ; $6d41: $82
    adc a                                         ; $6d42: $8f
    ld b, d                                       ; $6d43: $42
    dec a                                         ; $6d44: $3d
    xor a                                         ; $6d45: $af
    cp $85                                        ; $6d46: $fe $85
    sbc d                                         ; $6d48: $9a
    add $56                                       ; $6d49: $c6 $56
    ld h, c                                       ; $6d4b: $61
    ld a, l                                       ; $6d4c: $7d
    jp nc, $e189                                  ; $6d4d: $d2 $89 $e1

    jp Jump_071_4546                              ; $6d50: $c3 $46 $45


    ccf                                           ; $6d53: $3f
    ld b, l                                       ; $6d54: $45
    scf                                           ; $6d55: $37

jr_071_6d56:
    ldh [rSB], a                                  ; $6d56: $e0 $01
    xor a                                         ; $6d58: $af
    ld b, b                                       ; $6d59: $40
    add l                                         ; $6d5a: $85
    ld c, l                                       ; $6d5b: $4d
    ld b, d                                       ; $6d5c: $42
    db $f4                                        ; $6d5d: $f4
    dec [hl]                                      ; $6d5e: $35
    cp $a1                                        ; $6d5f: $fe $a1
    sbc l                                         ; $6d61: $9d
    and $bf                                       ; $6d62: $e6 $bf
    pop bc                                        ; $6d64: $c1
    cpl                                           ; $6d65: $2f
    ld bc, $4601                                  ; $6d66: $01 $01 $46
    scf                                           ; $6d69: $37
    pop hl                                        ; $6d6a: $e1
    nop                                           ; $6d6b: $00
    add c                                         ; $6d6c: $81
    ld e, d                                       ; $6d6d: $5a
    ld [c], a                                     ; $6d6e: $e2
    rrca                                          ; $6d6f: $0f
    ld b, d                                       ; $6d70: $42
    or $75                                        ; $6d71: $f6 $75
    ld e, [hl]                                    ; $6d73: $5e
    ld l, d                                       ; $6d74: $6a
    ccf                                           ; $6d75: $3f
    pop hl                                        ; $6d76: $e1
    inc b                                         ; $6d77: $04
    ld [hl], a                                    ; $6d78: $77
    ld [bc], a                                    ; $6d79: $02
    ld bc, $afe1                                  ; $6d7a: $01 $e1 $af
    ld a, h                                       ; $6d7d: $7c
    jr nz, jr_071_6dd8                            ; $6d7e: $20 $58

    add a                                         ; $6d80: $87
    cp e                                          ; $6d81: $bb
    xor l                                         ; $6d82: $ad
    cp b                                          ; $6d83: $b8

Jump_071_6d84:
    inc h                                         ; $6d84: $24
    db $e4                                        ; $6d85: $e4
    ld h, e                                       ; $6d86: $63
    jr nz, jr_071_6dc7                            ; $6d87: $20 $3e

    add d                                         ; $6d89: $82
    pop af                                        ; $6d8a: $f1
    ld bc, $20b2                                  ; $6d8b: $01 $b2 $20
    ld c, b                                       ; $6d8e: $48
    ldh [$7e], a                                  ; $6d8f: $e0 $7e
    ld [c], a                                     ; $6d91: $e2
    jp $e03f                                      ; $6d92: $c3 $3f $e0


    ld a, [$4008]                                 ; $6d95: $fa $08 $40
    cp e                                          ; $6d98: $bb
    xor a                                         ; $6d99: $af
    halt                                          ; $6d9a: $76
    ld [hl+], a                                   ; $6d9b: $22
    rst $30                                       ; $6d9c: $f7
    jr z, jr_071_6e0b                             ; $6d9d: $28 $6c

    ld h, d                                       ; $6d9f: $62
    cp a                                          ; $6da0: $bf
    pop hl                                        ; $6da1: $e1
    cp $e8                                        ; $6da2: $fe $e8
    sbc [hl]                                      ; $6da4: $9e
    and b                                         ; $6da5: $a0
    and [hl]                                      ; $6da6: $a6
    nop                                           ; $6da7: $00
    add [hl]                                      ; $6da8: $86
    or c                                          ; $6da9: $b1
    db $e4                                        ; $6daa: $e4
    ld l, b                                       ; $6dab: $68
    ld e, d                                       ; $6dac: $5a
    jr nz, @+$52                                  ; $6dad: $20 $50

    and e                                         ; $6daf: $a3
    or d                                          ; $6db0: $b2
    ld hl, $e57f                                  ; $6db1: $21 $7f $e5
    db $fc                                        ; $6db4: $fc
    and e                                         ; $6db5: $a3
    dec sp                                        ; $6db6: $3b
    sub d                                         ; $6db7: $92
    nop                                           ; $6db8: $00
    or [hl]                                       ; $6db9: $b6
    or b                                          ; $6dba: $b0
    ld l, h                                       ; $6dbb: $6c
    ld h, [hl]                                    ; $6dbc: $66
    ld a, h                                       ; $6dbd: $7c
    jp hl                                         ; $6dbe: $e9


    cp h                                          ; $6dbf: $bc
    jr nz, jr_071_6d56                            ; $6dc0: $20 $94

    ld hl, $39fc                                  ; $6dc2: $21 $fc $39
    ld h, c                                       ; $6dc5: $61
    adc c                                         ; $6dc6: $89

jr_071_6dc7:
    ld [hl], c                                    ; $6dc7: $71
    dec h                                         ; $6dc8: $25
    ld c, $bd                                     ; $6dc9: $0e $bd
    jp Jump_071_4145                              ; $6dcb: $c3 $45 $41


    ld b, l                                       ; $6dce: $45
    cp e                                          ; $6dcf: $bb
    xor c                                         ; $6dd0: $a9
    add hl, sp                                    ; $6dd1: $39
    jr @-$56                                      ; $6dd2: $18 $a8

    dec b                                         ; $6dd4: $05
    ld d, c                                       ; $6dd5: $51
    jr nz, jr_071_6de4                            ; $6dd6: $20 $0c

jr_071_6dd8:
    or d                                          ; $6dd8: $b2
    inc hl                                        ; $6dd9: $23
    pop bc                                        ; $6dda: $c1
    ld [c], a                                     ; $6ddb: $e2
    ld [hl], $a6                                  ; $6ddc: $36 $a6
    rst $30                                       ; $6dde: $f7
    ld h, b                                       ; $6ddf: $60
    ld a, [hl-]                                   ; $6de0: $3a
    jr nz, @+$66                                  ; $6de1: $20 $64

    add c                                         ; $6de3: $81

jr_071_6de4:
    ei                                            ; $6de4: $fb
    cpl                                           ; $6de5: $2f
    ldh [rBCPD], a                                ; $6de6: $e0 $69
    ld b, l                                       ; $6de8: $45
    sbc b                                         ; $6de9: $98
    adc c                                         ; $6dea: $89
    add sp, $00                                   ; $6deb: $e8 $00
    or d                                          ; $6ded: $b2
    dec h                                         ; $6dee: $25
    ld [hl], c                                    ; $6def: $71
    jr nz, jr_071_6e54                            ; $6df0: $20 $62

    and a                                         ; $6df2: $a7
    ld h, [hl]                                    ; $6df3: $66
    add b                                         ; $6df4: $80
    or [hl]                                       ; $6df5: $b6
    ld h, b                                       ; $6df6: $60
    ld a, [$e535]                                 ; $6df7: $fa $35 $e5
    nop                                           ; $6dfa: $00
    ld h, a                                       ; $6dfb: $67
    ld h, $70                                     ; $6dfc: $26 $70
    ld [$8377], sp                                ; $6dfe: $08 $77 $83
    ld [hl-], a                                   ; $6e01: $32
    ld hl, $0762                                  ; $6e02: $21 $62 $07
    ld h, a                                       ; $6e05: $67

Jump_071_6e06:
    and e                                         ; $6e06: $a3
    ld l, b                                       ; $6e07: $68
    cp a                                          ; $6e08: $bf
    ldh [$ba], a                                  ; $6e09: $e0 $ba

jr_071_6e0b:
    and e                                         ; $6e0b: $a3
    dec b                                         ; $6e0c: $05
    inc sp                                        ; $6e0d: $33
    dec h                                         ; $6e0e: $25
    dec h                                         ; $6e0f: $25
    ld e, l                                       ; $6e10: $5d
    ld c, b                                       ; $6e11: $48
    ld hl, sp+$6d                                 ; $6e12: $f8 $6d
    ld h, c                                       ; $6e14: $61
    rst $30                                       ; $6e15: $f7
    add b                                         ; $6e16: $80
    pop bc                                        ; $6e17: $c1
    pop hl                                        ; $6e18: $e1
    dec [hl]                                      ; $6e19: $35
    dec [hl]                                      ; $6e1a: $35
    ld l, h                                       ; $6e1b: $6c
    or a                                          ; $6e1c: $b7
    cp b                                          ; $6e1d: $b8
    add e                                         ; $6e1e: $83
    ld b, d                                       ; $6e1f: $42
    sbc [hl]                                      ; $6e20: $9e
    cp a                                          ; $6e21: $bf
    ld a, b                                       ; $6e22: $78
    dec [hl]                                      ; $6e23: $35
    ld h, a                                       ; $6e24: $67
    db $db                                        ; $6e25: $db
    ld b, e                                       ; $6e26: $43
    dec h                                         ; $6e27: $25
    ld h, l                                       ; $6e28: $65
    cpl                                           ; $6e29: $2f
    nop                                           ; $6e2a: $00
    cp c                                          ; $6e2b: $b9
    ccf                                           ; $6e2c: $3f
    cp d                                          ; $6e2d: $ba
    and e                                         ; $6e2e: $a3
    dec [hl]                                      ; $6e2f: $35
    ld l, h                                       ; $6e30: $6c
    ld l, a                                       ; $6e31: $6f
    ld l, [hl]                                    ; $6e32: $6e
    add b                                         ; $6e33: $80
    pop hl                                        ; $6e34: $e1
    cp h                                          ; $6e35: $bc

Jump_071_6e36:
    ld de, $b0f8                                  ; $6e36: $11 $f8 $b0
    dec c                                         ; $6e39: $0d
    db $db                                        ; $6e3a: $db
    ld b, a                                       ; $6e3b: $47
    ld [hl], b                                    ; $6e3c: $70
    ld h, d                                       ; $6e3d: $62
    jp nc, Jump_071_6e36                          ; $6e3e: $d2 $36 $6e

    ld l, a                                       ; $6e41: $6f
    ld l, h                                       ; $6e42: $6c
    adc b                                         ; $6e43: $88
    pop bc                                        ; $6e44: $c1
    ld [c], a                                     ; $6e45: $e2
    ld a, [$5b00]                                 ; $6e46: $fa $00 $5b
    and h                                         ; $6e49: $a4
    push de                                       ; $6e4a: $d5
    ld bc, $dbd9                                  ; $6e4b: $01 $d9 $db
    ld b, a                                       ; $6e4e: $47
    add sp, -$3f                                  ; $6e4f: $e8 $c1
    call nc, $9e03                                ; $6e51: $d4 $03 $9e

jr_071_6e54:
    ld b, l                                       ; $6e54: $45
    cp a                                          ; $6e55: $bf
    ldh [$c1], a                                  ; $6e56: $e0 $c1
    ld [c], a                                     ; $6e58: $e2
    ld a, [$7a00]                                 ; $6e59: $fa $00 $7a
    ld [hl], a                                    ; $6e5c: $77
    or l                                          ; $6e5d: $b5
    rlca                                          ; $6e5e: $07
    ld l, $27                                     ; $6e5f: $2e $27
    inc b                                         ; $6e61: $04
    add sp, -$3e                                  ; $6e62: $e8 $c2
    or d                                          ; $6e64: $b2
    ld hl, $c16e                                  ; $6e65: $21 $6e $c1
    ld [c], a                                     ; $6e68: $e2
    ld a, [$3f00]                                 ; $6e69: $fa $00 $3f
    ld a, [hl-]                                   ; $6e6c: $3a
    ld h, d                                       ; $6e6d: $62
    ld c, b                                       ; $6e6e: $48
    sub a                                         ; $6e6f: $97
    dec b                                         ; $6e70: $05
    ld b, $b6                                     ; $6e71: $06 $b6
    add e                                         ; $6e73: $83
    ld b, l                                       ; $6e74: $45
    ld [hl], $c1                                  ; $6e75: $36 $c1
    db $e4                                        ; $6e77: $e4
    ld [bc], a                                    ; $6e78: $02
    dec sp                                        ; $6e79: $3b
    rst $38                                       ; $6e7a: $ff
    ld h, [hl]                                    ; $6e7b: $66
    ld a, [hl-]                                   ; $6e7c: $3a
    jp Jump_071_666c                              ; $6e7d: $c3 $6c $66


    nop                                           ; $6e80: $00
    rst $30                                       ; $6e81: $f7
    add b                                         ; $6e82: $80
    cp $e0                                        ; $6e83: $fe $e0
    ld a, h                                       ; $6e85: $7c
    nop                                           ; $6e86: $00
    jp nz, Jump_000_2bb3                          ; $6e87: $c2 $b3 $2b

    ld sp, $45d2                                  ; $6e8a: $31 $d2 $45
    rst $08                                       ; $6e8d: $cf
    dec hl                                        ; $6e8e: $2b
    add $7b                                       ; $6e8f: $c6 $7b
    nop                                           ; $6e91: $00
    ld l, l                                       ; $6e92: $6d
    ld l, $22                                     ; $6e93: $2e $22
    add hl, bc                                    ; $6e95: $09
    add c                                         ; $6e96: $81
    inc l                                         ; $6e97: $2c
    nop                                           ; $6e98: $00
    nop                                           ; $6e99: $00
    nop                                           ; $6e9a: $00
    pop bc                                        ; $6e9b: $c1
    nop                                           ; $6e9c: $00
    rst $38                                       ; $6e9d: $ff
    rst $38                                       ; $6e9e: $ff
    rst $38                                       ; $6e9f: $ff
    rst $38                                       ; $6ea0: $ff
    rst $38                                       ; $6ea1: $ff
    rst $38                                       ; $6ea2: $ff
    rst $38                                       ; $6ea3: $ff
    rst $38                                       ; $6ea4: $ff
    rst $38                                       ; $6ea5: $ff
    rst $38                                       ; $6ea6: $ff
    nop                                           ; $6ea7: $00
    nop                                           ; $6ea8: $00
    ld bc, $fe80                                  ; $6ea9: $01 $80 $fe
    ldh [rIE], a                                  ; $6eac: $e0 $ff
    rst $38                                       ; $6eae: $ff
    rst $38                                       ; $6eaf: $ff
    rst $38                                       ; $6eb0: $ff
    rst $38                                       ; $6eb1: $ff
    add sp, $00                                   ; $6eb2: $e8 $00
    nop                                           ; $6eb4: $00
    nop                                           ; $6eb5: $00
    ld [bc], a                                    ; $6eb6: $02
    nop                                           ; $6eb7: $00
    dec c                                         ; $6eb8: $0d
    ld a, [bc]                                    ; $6eb9: $0a
    ld [bc], a                                    ; $6eba: $02
    ld bc, $0c0e                                  ; $6ebb: $01 $0e $0c
    ld [bc], a                                    ; $6ebe: $02
    ld [bc], a                                    ; $6ebf: $02
    jr @+$10                                      ; $6ec0: $18 $0e

    ld [bc], a                                    ; $6ec2: $02
    inc bc                                        ; $6ec3: $03
    inc d                                         ; $6ec4: $14
    rrca                                          ; $6ec5: $0f
    ld [bc], a                                    ; $6ec6: $02
    inc b                                         ; $6ec7: $04
    add hl, de                                    ; $6ec8: $19
    rrca                                          ; $6ec9: $0f
    ld [bc], a                                    ; $6eca: $02
    dec b                                         ; $6ecb: $05
    dec de                                        ; $6ecc: $1b
    rrca                                          ; $6ecd: $0f
    ld [bc], a                                    ; $6ece: $02
    ld b, $13                                     ; $6ecf: $06 $13
    db $10                                        ; $6ed1: $10
    ld [bc], a                                    ; $6ed2: $02
    rlca                                          ; $6ed3: $07
    ld a, [de]                                    ; $6ed4: $1a
    db $10                                        ; $6ed5: $10
    ld [bc], a                                    ; $6ed6: $02
    ld [$101c], sp                                ; $6ed7: $08 $1c $10
    ld [bc], a                                    ; $6eda: $02
    add hl, bc                                    ; $6edb: $09
    inc d                                         ; $6edc: $14
    ld de, $0a02                                  ; $6edd: $11 $02 $0a

Jump_071_6ee0:
    dec d                                         ; $6ee0: $15
    ld de, $0b02                                  ; $6ee1: $11 $02 $0b
    dec e                                         ; $6ee4: $1d
    ld de, $0c02                                  ; $6ee5: $11 $02 $0c
    ld hl, $0211                                  ; $6ee8: $21 $11 $02
    dec c                                         ; $6eeb: $0d
    dec h                                         ; $6eec: $25
    ld [de], a                                    ; $6eed: $12
    ld [bc], a                                    ; $6eee: $02
    ld c, $14                                     ; $6eef: $0e $14
    inc de                                        ; $6ef1: $13
    ld [bc], a                                    ; $6ef2: $02
    rrca                                          ; $6ef3: $0f
    dec d                                         ; $6ef4: $15
    inc de                                        ; $6ef5: $13
    ld [bc], a                                    ; $6ef6: $02
    db $10                                        ; $6ef7: $10
    ld d, $14                                     ; $6ef8: $16 $14
    ld [bc], a                                    ; $6efa: $02
    ld de, $1515                                  ; $6efb: $11 $15 $15
    ld [bc], a                                    ; $6efe: $02
    ld [de], a                                    ; $6eff: $12
    ld e, $15                                     ; $6f00: $1e $15
    ld [bc], a                                    ; $6f02: $02
    inc de                                        ; $6f03: $13
    dec hl                                        ; $6f04: $2b
    dec d                                         ; $6f05: $15
    ld [bc], a                                    ; $6f06: $02
    inc d                                         ; $6f07: $14
    rla                                           ; $6f08: $17
    ld d, $02                                     ; $6f09: $16 $02
    dec d                                         ; $6f0b: $15
    ld a, [de]                                    ; $6f0c: $1a
    ld d, $02                                     ; $6f0d: $16 $02
    ld d, $1d                                     ; $6f0f: $16 $1d
    ld d, $02                                     ; $6f11: $16 $02
    rla                                           ; $6f13: $17
    jr jr_071_6f2d                                ; $6f14: $18 $17

    ld [bc], a                                    ; $6f16: $02
    jr jr_071_6f32                                ; $6f17: $18 $19

    rla                                           ; $6f19: $17
    ld [bc], a                                    ; $6f1a: $02
    add hl, de                                    ; $6f1b: $19
    jr nz, jr_071_6f35                            ; $6f1c: $20 $17

    ld [bc], a                                    ; $6f1e: $02
    ld a, [de]                                    ; $6f1f: $1a
    inc hl                                        ; $6f20: $23
    rla                                           ; $6f21: $17
    ld [bc], a                                    ; $6f22: $02
    dec de                                        ; $6f23: $1b
    inc h                                         ; $6f24: $24
    jr jr_071_6f29                                ; $6f25: $18 $02

    inc e                                         ; $6f27: $1c
    dec l                                         ; $6f28: $2d

jr_071_6f29:
    jr jr_071_6f2d                                ; $6f29: $18 $02

    dec e                                         ; $6f2b: $1d
    dec e                                         ; $6f2c: $1d

jr_071_6f2d:
    dec de                                        ; $6f2d: $1b
    ld [bc], a                                    ; $6f2e: $02
    ld e, $1c                                     ; $6f2f: $1e $1c
    inc e                                         ; $6f31: $1c

jr_071_6f32:
    ld [bc], a                                    ; $6f32: $02
    rra                                           ; $6f33: $1f
    dec e                                         ; $6f34: $1d

jr_071_6f35:
    dec e                                         ; $6f35: $1d
    ld [bc], a                                    ; $6f36: $02
    jr nz, jr_071_6f67                            ; $6f37: $20 $2e

    ld e, $02                                     ; $6f39: $1e $02
    ld hl, $212d                                  ; $6f3b: $21 $2d $21
    ld [bc], a                                    ; $6f3e: $02
    ld [hl+], a                                   ; $6f3f: $22
    ld l, $2c                                     ; $6f40: $2e $2c
    ld [bc], a                                    ; $6f42: $02
    inc hl                                        ; $6f43: $23
    dec h                                         ; $6f44: $25
    ld l, $02                                     ; $6f45: $2e $02
    inc h                                         ; $6f47: $24
    ld l, $2e                                     ; $6f48: $2e $2e
    ld [bc], a                                    ; $6f4a: $02
    dec h                                         ; $6f4b: $25
    ld h, $2f                                     ; $6f4c: $26 $2f
    ld [bc], a                                    ; $6f4e: $02
    ld h, $2f                                     ; $6f4f: $26 $2f
    cpl                                           ; $6f51: $2f
    ld [bc], a                                    ; $6f52: $02
    daa                                           ; $6f53: $27
    ld a, [hl+]                                   ; $6f54: $2a
    dec [hl]                                      ; $6f55: $35
    ld [bc], a                                    ; $6f56: $02
    jr z, jr_071_6f84                             ; $6f57: $28 $2b

    ld [hl], $ff                                  ; $6f59: $36 $ff
    rst $38                                       ; $6f5b: $ff
    rst $38                                       ; $6f5c: $ff
    ld h, l                                       ; $6f5d: $65
    ld l, a                                       ; $6f5e: $6f
    ld [hl-], a                                   ; $6f5f: $32
    ld [hl], h                                    ; $6f60: $74
    jp z, $e57b                                   ; $6f61: $ca $7b $e5

    ld a, e                                       ; $6f64: $7b
    dec e                                         ; $6f65: $1d
    inc c                                         ; $6f66: $0c

jr_071_6f67:
    rst $38                                       ; $6f67: $ff
    and $2c                                       ; $6f68: $e6 $2c
    inc l                                         ; $6f6a: $2c
    inc l                                         ; $6f6b: $2c
    di                                            ; $6f6c: $f3
    rst $20                                       ; $6f6d: $e7
    ld a, [c]                                     ; $6f6e: $f2
    ldh [$f3], a                                  ; $6f6f: $e0 $f3
    ld [$e300], a                                 ; $6f71: $ea $00 $e3
    jp hl                                         ; $6f74: $e9


    rst $10                                       ; $6f75: $d7
    db $eb                                        ; $6f76: $eb
    rst $18                                       ; $6f77: $df
    rst $20                                       ; $6f78: $e7
    pop bc                                        ; $6f79: $c1
    db $e3                                        ; $6f7a: $e3
    push af                                       ; $6f7b: $f5
    db $e3                                        ; $6f7c: $e3
    db $dd                                        ; $6f7d: $dd
    db $eb                                        ; $6f7e: $eb
    and a                                         ; $6f7f: $a7
    pop hl                                        ; $6f80: $e1
    cp h                                          ; $6f81: $bc
    add sp, $00                                   ; $6f82: $e8 $00

jr_071_6f84:
    cp a                                          ; $6f84: $bf
    xor $c1                                       ; $6f85: $ee $c1
    and $98                                       ; $6f87: $e6 $98
    push hl                                       ; $6f89: $e5
    sub e                                         ; $6f8a: $93
    jp hl                                         ; $6f8b: $e9


    ld a, b                                       ; $6f8c: $78
    ldh a, [$a0]                                  ; $6f8d: $f0 $a0
    db $ec                                        ; $6f8f: $ec
    and a                                         ; $6f90: $a7
    add sp, $67                                   ; $6f91: $e8 $67
    db $ec                                        ; $6f93: $ec
    adc a                                         ; $6f94: $8f
    ld l, h                                       ; $6f95: $6c
    ld l, h                                       ; $6f96: $6c
    ld c, h                                       ; $6f97: $4c
    ld c, h                                       ; $6f98: $4c
    ld d, l                                       ; $6f99: $55
    xor $bf                                       ; $6f9a: $ee $bf
    db $ed                                        ; $6f9c: $ed
    pop bc                                        ; $6f9d: $c1
    or $6c                                        ; $6f9e: $f6 $6c
    rrca                                          ; $6fa0: $0f
    ld l, h                                       ; $6fa1: $6c
    ld l, h                                       ; $6fa2: $6c
    inc c                                         ; $6fa3: $0c
    inc l                                         ; $6fa4: $2c
    cp a                                          ; $6fa5: $bf
    db $e4                                        ; $6fa6: $e4
    or [hl]                                       ; $6fa7: $b6
    ldh [$e6], a                                  ; $6fa8: $e0 $e6
    jp z, $c8d2                                   ; $6faa: $ca $d2 $c8

    ld h, h                                       ; $6fad: $64
    ld b, [hl]                                    ; $6fae: $46
    and $0c                                       ; $6faf: $e6 $0c
    db $eb                                        ; $6fb1: $eb
    inc l                                         ; $6fb2: $2c
    jp nz, $aae0                                  ; $6fb3: $c2 $e0 $aa

    pop bc                                        ; $6fb6: $c1
    ld c, h                                       ; $6fb7: $4c
    ld c, h                                       ; $6fb8: $4c
    push af                                       ; $6fb9: $f5
    pop hl                                        ; $6fba: $e1
    rlca                                          ; $6fbb: $07
    ld l, h                                       ; $6fbc: $6c
    inc c                                         ; $6fbd: $0c
    ld c, h                                       ; $6fbe: $4c
    ld [hl], l                                    ; $6fbf: $75
    push hl                                       ; $6fc0: $e5
    ret c                                         ; $6fc1: $d8

    add $95                                       ; $6fc2: $c6 $95
    ret z                                         ; $6fc4: $c8

    or d                                          ; $6fc5: $b2
    jp hl                                         ; $6fc6: $e9


    adc c                                         ; $6fc7: $89
    ldh [$60], a                                  ; $6fc8: $e0 $60
    call nc, $83e1                                ; $6fca: $d4 $e1 $83
    ldh [$f7], a                                  ; $6fcd: $e0 $f7
    ld [c], a                                     ; $6fcf: $e2
    ld a, [hl]                                    ; $6fd0: $7e
    ldh [$b6], a                                  ; $6fd1: $e0 $b6
    db $e3                                        ; $6fd3: $e3
    inc c                                         ; $6fd4: $0c
    ld l, h                                       ; $6fd5: $6c
    add l                                         ; $6fd6: $85
    and $f8                                       ; $6fd7: $e6 $f8
    xor a                                         ; $6fd9: $af
    jp $c848                                      ; $6fda: $c3 $48 $c8


    ld b, l                                       ; $6fdd: $45
    ret z                                         ; $6fde: $c8

    ld l, h                                       ; $6fdf: $6c
    ld l, h                                       ; $6fe0: $6c
    dec bc                                        ; $6fe1: $0b
    dec bc                                        ; $6fe2: $0b
    dec hl                                        ; $6fe3: $2b
    dec l                                         ; $6fe4: $2d
    dec hl                                        ; $6fe5: $2b
    rst $00                                       ; $6fe6: $c7
    pop hl                                        ; $6fe7: $e1
    inc c                                         ; $6fe8: $0c
    ld c, h                                       ; $6fe9: $4c
    or $e0                                        ; $6fea: $f6 $e0

jr_071_6fec:
    ld l, h                                       ; $6fec: $6c
    ld sp, hl                                     ; $6fed: $f9
    ldh [rPCM34], a                               ; $6fee: $e0 $77
    pop hl                                        ; $6ff0: $e1
    ldh [$c0], a                                  ; $6ff1: $e0 $c0
    pop hl                                        ; $6ff3: $e1
    db $f4                                        ; $6ff4: $f4
    add $8d                                       ; $6ff5: $c6 $8d
    ld [$e7c0], a                                 ; $6ff7: $ea $c0 $e7
    add [hl]                                      ; $6ffa: $86
    pop hl                                        ; $6ffb: $e1
    inc c                                         ; $6ffc: $0c
    ld c, h                                       ; $6ffd: $4c
    dec hl                                        ; $6ffe: $2b
    ld [hl], c                                    ; $6fff: $71
    dec bc                                        ; $7000: $0b
    rst $38                                       ; $7001: $ff
    ldh [$bf], a                                  ; $7002: $e0 $bf
    ldh [$f1], a                                  ; $7004: $e0 $f1
    and b                                         ; $7006: $a0
    ld c, e                                       ; $7007: $4b
    ld c, e                                       ; $7008: $4b
    ld l, e                                       ; $7009: $6b
    ld a, [$90e1]                                 ; $700a: $fa $e1 $90
    db $ed                                        ; $700d: $ed
    and [hl]                                      ; $700e: $a6
    ld a, [$c0c6]                                 ; $700f: $fa $c6 $c0
    pop af                                        ; $7012: $f1
    dec d                                         ; $7013: $15
    ldh [$0b], a                                  ; $7014: $e0 $0b
    ld a, [de]                                    ; $7016: $1a
    pop hl                                        ; $7017: $e1
    pop bc                                        ; $7018: $c1
    ldh [rWX], a                                  ; $7019: $e0 $4b
    inc h                                         ; $701b: $24
    cp l                                          ; $701c: $bd
    ldh [$2a], a                                  ; $701d: $e0 $2a
    and $2c                                       ; $701f: $e6 $2c

jr_071_7021:
    ld c, $e5                                     ; $7021: $0e $e5
    ld [hl], c                                    ; $7023: $71
    ret nz                                        ; $7024: $c0

    ld c, e                                       ; $7025: $4b
    ld [hl], b                                    ; $7026: $70
    call nz, $e20d                                ; $7027: $c4 $0d $e2
    db $10                                        ; $702a: $10
    ld c, d                                       ; $702b: $4a
    ret z                                         ; $702c: $c8

    add l                                         ; $702d: $85
    and d                                         ; $702e: $a2
    sbc l                                         ; $702f: $9d
    ret nz                                        ; $7030: $c0

    sub [hl]                                      ; $7031: $96
    and c                                         ; $7032: $a1
    ld l, e                                       ; $7033: $6b
    add c                                         ; $7034: $81
    pop hl                                        ; $7035: $e1
    ld a, a                                       ; $7036: $7f
    ldh [$3a], a                                  ; $7037: $e0 $3a
    rst $00                                       ; $7039: $c7
    nop                                           ; $703a: $00
    inc a                                         ; $703b: $3c
    jp nz, $e128                                  ; $703c: $c2 $28 $e1

    ld h, [hl]                                    ; $703f: $66
    ldh [$fb], a                                  ; $7040: $e0 $fb
    jp $c8ff                                      ; $7042: $c3 $ff $c8


    nop                                           ; $7045: $00
    rst $20                                       ; $7046: $e7
    ld c, [hl]                                    ; $7047: $4e
    pop hl                                        ; $7048: $e1
    jr c, jr_071_6fec                             ; $7049: $38 $a1

    ld a, [bc]                                    ; $704b: $0a
    add d                                         ; $704c: $82
    ldh [$2b], a                                  ; $704d: $e0 $2b
    cp $c0                                        ; $704f: $fe $c0
    inc c                                         ; $7051: $0c
    cp $e1                                        ; $7052: $fe $e1
    ld [$08e0], a                                 ; $7054: $ea $e0 $08
    db $e3                                        ; $7057: $e3
    pop bc                                        ; $7058: $c1
    db $e4                                        ; $7059: $e4
    pop bc                                        ; $705a: $c1
    dec bc                                        ; $705b: $0b

jr_071_705c:
    jr c, jr_071_7021                             ; $705c: $38 $c3

    adc h                                         ; $705e: $8c
    rst $00                                       ; $705f: $c7
    or e                                          ; $7060: $b3
    ret z                                         ; $7061: $c8

    dec e                                         ; $7062: $1d
    call nz, $e2bf                                ; $7063: $c4 $bf $e2
    dec bc                                        ; $7066: $0b
    dec hl                                        ; $7067: $2b
    jr jr_071_705c                                ; $7068: $18 $f2

    add a                                         ; $706a: $87
    dec b                                         ; $706b: $05
    pop bc                                        ; $706c: $c1
    pop bc                                        ; $706d: $c1
    push hl                                       ; $706e: $e5
    dec bc                                        ; $706f: $0b
    dec bc                                        ; $7070: $0b
    rst $38                                       ; $7071: $ff
    ret z                                         ; $7072: $c8

    ld a, [hl-]                                   ; $7073: $3a
    and $c5                                       ; $7074: $e6 $c5
    add e                                         ; $7076: $83
    ld c, b                                       ; $7077: $48
    db $dd                                        ; $7078: $dd
    and c                                         ; $7079: $a1
    ld [hl], e                                    ; $707a: $73
    jp $e03d                                      ; $707b: $c3 $3d $e0


    dec hl                                        ; $707e: $2b
    ld c, $c0                                     ; $707f: $0e $c0
    xor h                                         ; $7081: $ac
    add e                                         ; $7082: $83
    ld l, h                                       ; $7083: $6c
    or [hl]                                       ; $7084: $b6
    pop bc                                        ; $7085: $c1
    nop                                           ; $7086: $00
    xor d                                         ; $7087: $aa
    jp $f1c0                                      ; $7088: $c3 $c0 $f1


    sub e                                         ; $708b: $93
    adc b                                         ; $708c: $88
    sbc h                                         ; $708d: $9c
    and l                                         ; $708e: $a5
    ld d, $e1                                     ; $708f: $16 $e1
    nop                                           ; $7091: $00
    db $e3                                        ; $7092: $e3
    add $82                                       ; $7093: $c6 $82
    add b                                         ; $7095: $80
    ret nz                                        ; $7096: $c0

    dec c                                         ; $7097: $0d
    ld l, h                                       ; $7098: $6c
    ld l, d                                       ; $7099: $6a
    call nz, Call_071_4b0b                        ; $709a: $c4 $0b $4b
    sbc d                                         ; $709d: $9a
    add l                                         ; $709e: $85
    push bc                                       ; $709f: $c5
    add sp, -$58                                  ; $70a0: $e8 $a8
    add a                                         ; $70a2: $87
    ld [de], a                                    ; $70a3: $12
    and l                                         ; $70a4: $a5
    xor a                                         ; $70a5: $af
    dec bc                                        ; $70a6: $0b
    ld l, e                                       ; $70a7: $6b
    ld l, e                                       ; $70a8: $6b
    ld c, e                                       ; $70a9: $4b
    rlca                                          ; $70aa: $07
    and [hl]                                      ; $70ab: $a6
    ld c, h                                       ; $70ac: $4c
    adc e                                         ; $70ad: $8b
    ret nz                                        ; $70ae: $c0

    ld l, h                                       ; $70af: $6c
    ld b, $2b                                     ; $70b0: $06 $2b
    jp Jump_000_2b2b                              ; $70b2: $c3 $2b $2b


    ret nz                                        ; $70b5: $c0

    push hl                                       ; $70b6: $e5
    or $87                                        ; $70b7: $f6 $87
    ld l, a                                       ; $70b9: $6f
    and a                                         ; $70ba: $a7
    ld e, e                                       ; $70bb: $5b
    and l                                         ; $70bc: $a5
    cp [hl]                                       ; $70bd: $be
    ret nz                                        ; $70be: $c0

    ld [hl], a                                    ; $70bf: $77
    ld c, e                                       ; $70c0: $4b
    ld c, e                                       ; $70c1: $4b
    dec c                                         ; $70c2: $0d
    ld [hl], e                                    ; $70c3: $73
    and $4c                                       ; $70c4: $e6 $4c
    ld c, e                                       ; $70c6: $4b
    dec c                                         ; $70c7: $0d
    ldh a, [$e0]                                  ; $70c8: $f0 $e0
    ld hl, $aa4b                                  ; $70ca: $21 $4b $aa
    jp nz, $e481                                  ; $70cd: $c2 $81 $e4

    ld b, b                                       ; $70d0: $40
    rst $00                                       ; $70d1: $c7
    add e                                         ; $70d2: $83
    xor b                                         ; $70d3: $a8
    ld l, h                                       ; $70d4: $6c
    sub l                                         ; $70d5: $95
    and b                                         ; $70d6: $a0
    ld de, $bea1                                  ; $70d7: $11 $a1 $be
    ret                                           ; $70da: $c9


    add b                                         ; $70db: $80
    dec bc                                        ; $70dc: $0b
    ld a, [bc]                                    ; $70dd: $0a
    dec bc                                        ; $70de: $0b
    dec c                                         ; $70df: $0d
    dec c                                         ; $70e0: $0d
    rrca                                          ; $70e1: $0f
    and b                                         ; $70e2: $a0
    ld c, h                                       ; $70e3: $4c
    cp [hl]                                       ; $70e4: $be
    add b                                         ; $70e5: $80
    add b                                         ; $70e6: $80
    ld l, h                                       ; $70e7: $6c
    ld c, e                                       ; $70e8: $4b
    dec c                                         ; $70e9: $0d
    dec c                                         ; $70ea: $0d
    ld a, [bc]                                    ; $70eb: $0a
    rst $38                                       ; $70ec: $ff
    ldh [$2a], a                                  ; $70ed: $e0 $2a
    ld b, d                                       ; $70ef: $42
    db $eb                                        ; $70f0: $eb
    and b                                         ; $70f1: $a0
    ld l, e                                       ; $70f2: $6b
    or b                                          ; $70f3: $b0
    add l                                         ; $70f4: $85
    xor $64                                       ; $70f5: $ee $64
    push hl                                       ; $70f7: $e5
    ld h, h                                       ; $70f8: $64
    sub b                                         ; $70f9: $90
    ld h, e                                       ; $70fa: $63
    ld c, h                                       ; $70fb: $4c
    inc h                                         ; $70fc: $24
    pop hl                                        ; $70fd: $e1
    ld a, [hl-]                                   ; $70fe: $3a
    ret nc                                        ; $70ff: $d0

    add b                                         ; $7100: $80
    ld l, h                                       ; $7101: $6c
    jp nc, $0ae1                                  ; $7102: $d2 $e1 $0a

    ld a, [hl+]                                   ; $7105: $2a
    dec c                                         ; $7106: $0d
    adc d                                         ; $7107: $8a
    db $e3                                        ; $7108: $e3
    halt                                          ; $7109: $76
    ldh [$3e], a                                  ; $710a: $e0 $3e
    pop bc                                        ; $710c: $c1
    ld [c], a                                     ; $710d: $e2
    ld a, [bc]                                    ; $710e: $0a
    ld a, [hl+]                                   ; $710f: $2a
    ld a, [hl+]                                   ; $7110: $2a
    ld c, e                                       ; $7111: $4b
    ld l, e                                       ; $7112: $6b
    ld a, [$4b82]                                 ; $7113: $fa $82 $4b
    jp z, $8078                                   ; $7116: $ca $78 $80

    jp hl                                         ; $7119: $e9


    ld h, a                                       ; $711a: $67
    add h                                         ; $711b: $84
    pop bc                                        ; $711c: $c1
    ld [c], a                                     ; $711d: $e2
    ld a, [bc]                                    ; $711e: $0a
    ld a, [bc]                                    ; $711f: $0a
    ld l, d                                       ; $7120: $6a

jr_071_7121:
    dec c                                         ; $7121: $0d
    rst $38                                       ; $7122: $ff
    push hl                                       ; $7123: $e5
    add [hl]                                      ; $7124: $86
    rst $28                                       ; $7125: $ef
    db $e4                                        ; $7126: $e4
    ld a, [bc]                                    ; $7127: $0a
    ld l, e                                       ; $7128: $6b
    scf                                           ; $7129: $37
    and d                                         ; $712a: $a2
    jp c, $c0a5                                   ; $712b: $da $a5 $c0

    rst $28                                       ; $712e: $ef
    ret nz                                        ; $712f: $c0

    and d                                         ; $7130: $a2
    ld c, h                                       ; $7131: $4c
    ld [$e5d2], sp                                ; $7132: $08 $d2 $e5
    cp a                                          ; $7135: $bf
    and $c1                                       ; $7136: $e6 $c1
    push hl                                       ; $7138: $e5
    ld c, d                                       ; $7139: $4a
    dec l                                         ; $713a: $2d
    and c                                         ; $713b: $a1
    add hl, sp                                    ; $713c: $39
    add b                                         ; $713d: $80
    cp $8a                                        ; $713e: $fe $8a
    ld b, e                                       ; $7140: $43
    adc b                                         ; $7141: $88
    jr nz, jr_071_7121                            ; $7142: $20 $dd

    ld h, e                                       ; $7144: $63
    ld b, d                                       ; $7145: $42
    db $e3                                        ; $7146: $e3
    ld a, [hl]                                    ; $7147: $7e
    db $e3                                        ; $7148: $e3
    ld c, d                                       ; $7149: $4a
    ld [c], a                                     ; $714a: $e2
    ldh a, [$e7]                                  ; $714b: $f0 $e7
    dec bc                                        ; $714d: $0b
    ld a, b                                       ; $714e: $78
    and d                                         ; $714f: $a2
    ld e, d                                       ; $7150: $5a
    and e                                         ; $7151: $a3
    nop                                           ; $7152: $00
    ret nz                                        ; $7153: $c0

    jp hl                                         ; $7154: $e9


    ld de, $e365                                  ; $7155: $11 $65 $e3
    add d                                         ; $7158: $82
    ret nz                                        ; $7159: $c0

    add sp, -$0a                                  ; $715a: $e8 $f6
    db $ed                                        ; $715c: $ed
    ret nz                                        ; $715d: $c0

    pop hl                                        ; $715e: $e1
    or e                                          ; $715f: $b3
    and b                                         ; $7160: $a0
    push de                                       ; $7161: $d5
    ld b, h                                       ; $7162: $44
    call z, Call_071_434e                         ; $7163: $cc $4e $43
    ld [bc], a                                    ; $7166: $02
    adc b                                         ; $7167: $88
    inc l                                         ; $7168: $2c
    inc c                                         ; $7169: $0c
    ld a, [bc]                                    ; $716a: $0a
    add c                                         ; $716b: $81
    ret nz                                        ; $716c: $c0

    ld hl, sp+$0a                                 ; $716d: $f8 $0a
    ld c, h                                       ; $716f: $4c
    ld [bc], a                                    ; $7170: $02
    ld l, h                                       ; $7171: $6c
    ld h, b                                       ; $7172: $60
    inc l                                         ; $7173: $2c
    ld [hl], c                                    ; $7174: $71
    ld h, b                                       ; $7175: $60
    cp $a9                                        ; $7176: $fe $a9
    ld b, d                                       ; $7178: $42
    add a                                         ; $7179: $87
    sbc h                                         ; $717a: $9c
    and c                                         ; $717b: $a1
    ret z                                         ; $717c: $c8

    ld h, b                                       ; $717d: $60
    add b                                         ; $717e: $80
    pop af                                        ; $717f: $f1
    adc b                                         ; $7180: $88
    dec sp                                        ; $7181: $3b
    ldh [$38], a                                  ; $7182: $e0 $38
    pop hl                                        ; $7184: $e1
    ld [hl], a                                    ; $7185: $77
    ld h, b                                       ; $7186: $60
    ld c, e                                       ; $7187: $4b
    rst $38                                       ; $7188: $ff
    push bc                                       ; $7189: $c5
    cp a                                          ; $718a: $bf
    rst $08                                       ; $718b: $cf
    rst $00                                       ; $718c: $c7
    ld h, d                                       ; $718d: $62
    dec hl                                        ; $718e: $2b
    add hl, de                                    ; $718f: $19
    dec bc                                        ; $7190: $0b
    ld d, h                                       ; $7191: $54
    jp $ebc1                                      ; $7192: $c3 $c1 $eb


    ld c, e                                       ; $7195: $4b
    ld c, d                                       ; $7196: $4a
    inc l                                         ; $7197: $2c
    jp nz, Jump_071_41ee                          ; $7198: $c2 $ee $41

    ld e, e                                       ; $719b: $5b
    and h                                         ; $719c: $a4
    ldh [$3d], a                                  ; $719d: $e0 $3d
    ld h, l                                       ; $719f: $65
    ld b, d                                       ; $71a0: $42
    ld l, b                                       ; $71a1: $68
    ld e, h                                       ; $71a2: $5c
    and b                                         ; $71a3: $a0
    ret z                                         ; $71a4: $c8

    ld h, c                                       ; $71a5: $61
    dec d                                         ; $71a6: $15
    jp nz, Jump_071_4b6a                          ; $71a7: $c2 $6a $4b

    ld l, e                                       ; $71aa: $6b
    ld [bc], a                                    ; $71ab: $02
    pop bc                                        ; $71ac: $c1
    jp hl                                         ; $71ad: $e9


    ld c, e                                       ; $71ae: $4b
    inc l                                         ; $71af: $2c
    jp Jump_071_6277                              ; $71b0: $c3 $77 $62


    add b                                         ; $71b3: $80
    ld b, l                                       ; $71b4: $45
    nop                                           ; $71b5: $00
    push hl                                       ; $71b6: $e5
    add c                                         ; $71b7: $81
    add a                                         ; $71b8: $87
    adc b                                         ; $71b9: $88
    ld h, b                                       ; $71ba: $60
    call z, Call_071_6087                         ; $71bb: $cc $87 $60
    push de                                       ; $71be: $d5
    db $e4                                        ; $71bf: $e4
    ld c, e                                       ; $71c0: $4b
    ld l, e                                       ; $71c1: $6b
    add l                                         ; $71c2: $85
    push bc                                       ; $71c3: $c5
    add a                                         ; $71c4: $87
    and b                                         ; $71c5: $a0
    ld c, e                                       ; $71c6: $4b
    dec hl                                        ; $71c7: $2b
    add b                                         ; $71c8: $80
    xor h                                         ; $71c9: $ac
    and d                                         ; $71ca: $a2
    sbc d                                         ; $71cb: $9a
    ld h, e                                       ; $71cc: $63
    add b                                         ; $71cd: $80
    call z, $8701                                 ; $71ce: $cc $01 $87
    ret nz                                        ; $71d1: $c0

    ld [c], a                                     ; $71d2: $e2
    ld d, l                                       ; $71d3: $55
    call nz, Call_071_607f                        ; $71d4: $c4 $7f $60
    ld a, [hl+]                                   ; $71d7: $2a
    ld c, a                                       ; $71d8: $4f
    ld a, [bc]                                    ; $71d9: $0a
    ld l, d                                       ; $71da: $6a
    ld c, d                                       ; $71db: $4a
    ld l, d                                       ; $71dc: $6a
    ld b, a                                       ; $71dd: $47
    ldh [$74], a                                  ; $71de: $e0 $74
    ld h, b                                       ; $71e0: $60
    dec bc                                        ; $71e1: $0b
    ret nz                                        ; $71e2: $c0

    db $e3                                        ; $71e3: $e3
    ldh [$c5], a                                  ; $71e4: $e0 $c5
    ld h, [hl]                                    ; $71e6: $66
    ccf                                           ; $71e7: $3f
    adc h                                         ; $71e8: $8c
    add b                                         ; $71e9: $80
    jp hl                                         ; $71ea: $e9


    ret nz                                        ; $71eb: $c0

    push hl                                       ; $71ec: $e5
    ret nc                                        ; $71ed: $d0

    add b                                         ; $71ee: $80
    ld a, [hl+]                                   ; $71ef: $2a
    ld a, [hl+]                                   ; $71f0: $2a
    ld c, d                                       ; $71f1: $4a
    ld b, b                                       ; $71f2: $40
    db $fd                                        ; $71f3: $fd
    and c                                         ; $71f4: $a1
    push af                                       ; $71f5: $f5
    pop hl                                        ; $71f6: $e1
    add b                                         ; $71f7: $80
    ld [c], a                                     ; $71f8: $e2
    ret nz                                        ; $71f9: $c0

    and d                                         ; $71fa: $a2
    ret nz                                        ; $71fb: $c0

    add $3f                                       ; $71fc: $c6 $3f
    xor [hl]                                      ; $71fe: $ae
    ld l, h                                       ; $71ff: $6c
    jp z, Jump_000_0261                           ; $7200: $ca $61 $02

    ret nz                                        ; $7203: $c0

    xor $2a                                       ; $7204: $ee $2a
    dec hl                                        ; $7206: $2b
    ldh [rSTAT], a                                ; $7207: $e0 $41
    db $e4                                        ; $7209: $e4
    add l                                         ; $720a: $85

jr_071_720b:
    ld h, d                                       ; $720b: $62
    ret nz                                        ; $720c: $c0

    and [hl]                                      ; $720d: $a6
    jp z, $0223                                   ; $720e: $ca $23 $02

    ld c, c                                       ; $7211: $49
    ld [bc], a                                    ; $7212: $02
    ld b, a                                       ; $7213: $47
    ld b, b                                       ; $7214: $40
    dec hl                                        ; $7215: $2b
    cp a                                          ; $7216: $bf
    and $ca                                       ; $7217: $e6 $ca
    db $e4                                        ; $7219: $e4
    pop bc                                        ; $721a: $c1
    ld [c], a                                     ; $721b: $e2
    ld bc, $1fe4                                  ; $721c: $01 $e4 $1f
    ld b, h                                       ; $721f: $44
    ld l, e                                       ; $7220: $6b
    rlca                                          ; $7221: $07
    ld h, b                                       ; $7222: $60
    adc c                                         ; $7223: $89
    ld b, $5a                                     ; $7224: $06 $5a
    inc b                                         ; $7226: $04
    ld a, [de]                                    ; $7227: $1a
    add d                                         ; $7228: $82
    inc d                                         ; $7229: $14
    and e                                         ; $722a: $a3
    cp $60                                        ; $722b: $fe $60
    ld l, e                                       ; $722d: $6b
    ld l, e                                       ; $722e: $6b
    ld [$04c1], sp                                ; $722f: $08 $c1 $04
    ld a, e                                       ; $7232: $7b

jr_071_7233:
    add e                                         ; $7233: $83
    ret nz                                        ; $7234: $c0

    db $e3                                        ; $7235: $e3
    ld c, h                                       ; $7236: $4c
    ld a, l                                       ; $7237: $7d
    ld b, c                                       ; $7238: $41
    rst $38                                       ; $7239: $ff
    adc d                                         ; $723a: $8a
    inc a                                         ; $723b: $3c
    ld h, a                                       ; $723c: $67
    ld b, c                                       ; $723d: $41
    ld b, c                                       ; $723e: $41
    ld b, b                                       ; $723f: $40
    rst $20                                       ; $7240: $e7
    ld [bc], a                                    ; $7241: $02
    add b                                         ; $7242: $80
    pop hl                                        ; $7243: $e1
    dec hl                                        ; $7244: $2b
    dec bc                                        ; $7245: $0b
    db $e3                                        ; $7246: $e3
    ld [hl], h                                    ; $7247: $74
    ld h, c                                       ; $7248: $61
    ld l, e                                       ; $7249: $6b
    call nz, Call_000_21e5                        ; $724a: $c4 $e5 $21
    cp a                                          ; $724d: $bf
    ld b, [hl]                                    ; $724e: $46
    ld b, b                                       ; $724f: $40
    push hl                                       ; $7250: $e5
    jr nz, jr_071_7296                            ; $7251: $20 $43

    ld h, $c0                                     ; $7253: $26 $c0
    and e                                         ; $7255: $a3
    inc d                                         ; $7256: $14
    add h                                         ; $7257: $84
    cp $e0                                        ; $7258: $fe $e0
    ld a, [bc]                                    ; $725a: $0a
    jp nz, Jump_071_7a4a                          ; $725b: $c2 $4a $7a

    ldh [$bb], a                                  ; $725e: $e0 $bb
    add [hl]                                      ; $7260: $86
    nop                                           ; $7261: $00
    ld h, [hl]                                    ; $7262: $66
    jr nz, jr_071_720b                            ; $7263: $20 $a6

    jr nz, jr_071_7233                            ; $7265: $20 $cc

jr_071_7267:
    add a                                         ; $7267: $87
    ret nz                                        ; $7268: $c0

    db $eb                                        ; $7269: $eb
    nop                                           ; $726a: $00
    pop bc                                        ; $726b: $c1
    ret nz                                        ; $726c: $c0

    and e                                         ; $726d: $a3
    cp h                                          ; $726e: $bc
    push hl                                       ; $726f: $e5
    ld [hl], l                                    ; $7270: $75
    xor h                                         ; $7271: $ac
    add b                                         ; $7272: $80
    pop bc                                        ; $7273: $c1
    ld b, c                                       ; $7274: $41
    cp [hl]                                       ; $7275: $be
    ld b, b                                       ; $7276: $40
    ccf                                           ; $7277: $3f
    ld c, d                                       ; $7278: $4a
    or e                                          ; $7279: $b3
    jr z, jr_071_727c                             ; $727a: $28 $00

jr_071_727c:
    ret                                           ; $727c: $c9


    ld a, e                                       ; $727d: $7b
    sub d                                         ; $727e: $92
    add c                                         ; $727f: $81
    ld [c], a                                     ; $7280: $e2
    dec hl                                        ; $7281: $2b
    nop                                           ; $7282: $00
    rst $38                                       ; $7283: $ff
    add hl, hl                                    ; $7284: $29
    nop                                           ; $7285: $00
    ld l, e                                       ; $7286: $6b
    ld c, b                                       ; $7287: $48
    inc hl                                        ; $7288: $23
    jp z, $c08a                                   ; $7289: $ca $8a $c0

    db $ed                                        ; $728c: $ed
    ccf                                           ; $728d: $3f
    ld c, [hl]                                    ; $728e: $4e
    ret nz                                        ; $728f: $c0

    ld c, c                                       ; $7290: $49
    jp z, Jump_000_0321                           ; $7291: $ca $21 $03

    dec hl                                        ; $7294: $2b
    dec bc                                        ; $7295: $0b

jr_071_7296:
    push de                                       ; $7296: $d5
    add e                                         ; $7297: $83
    jp nz, $c0ef                                  ; $7298: $c2 $ef $c0

    db $e3                                        ; $729b: $e3
    ccf                                           ; $729c: $3f
    ld c, l                                       ; $729d: $4d
    ld [hl], $09                                  ; $729e: $36 $09
    dec bc                                        ; $72a0: $0b
    ld b, b                                       ; $72a1: $40
    nop                                           ; $72a2: $00
    ccf                                           ; $72a3: $3f
    rst $20                                       ; $72a4: $e7
    adc b                                         ; $72a5: $88
    ld h, a                                       ; $72a6: $67
    ld a, [hl]                                    ; $72a7: $7e
    ld h, [hl]                                    ; $72a8: $66
    push af                                       ; $72a9: $f5
    and d                                         ; $72aa: $a2
    ccf                                           ; $72ab: $3f
    ld c, h                                       ; $72ac: $4c
    nop                                           ; $72ad: $00
    jp z, $e1c0                                   ; $72ae: $ca $c0 $e1

    ld b, b                                       ; $72b1: $40
    db $e4                                        ; $72b2: $e4
    ld b, $49                                     ; $72b3: $06 $49
    ld h, c                                       ; $72b5: $61
    ld l, d                                       ; $72b6: $6a
    ld c, d                                       ; $72b7: $4a
    rst $38                                       ; $72b8: $ff
    pop hl                                        ; $72b9: $e1
    jr c, @+$65                                   ; $72ba: $38 $63

    add c                                         ; $72bc: $81
    jp nz, $e2c0                                  ; $72bd: $c2 $c0 $e2

    pop bc                                        ; $72c0: $c1
    ld h, [hl]                                    ; $72c1: $66
    nop                                           ; $72c2: $00
    dec a                                         ; $72c3: $3d
    add h                                         ; $72c4: $84
    rst $38                                       ; $72c5: $ff
    daa                                           ; $72c6: $27
    ret nz                                        ; $72c7: $c0

    jp hl                                         ; $72c8: $e9


    nop                                           ; $72c9: $00
    ld [$a03a], a                                 ; $72ca: $ea $3a $a0
    push af                                       ; $72cd: $f5
    and l                                         ; $72ce: $a5
    add d                                         ; $72cf: $82
    xor e                                         ; $72d0: $ab
    cp a                                          ; $72d1: $bf
    dec hl                                        ; $72d2: $2b
    ldh [$b2], a                                  ; $72d3: $e0 $b2
    and b                                         ; $72d5: $a0
    sbc d                                         ; $72d6: $9a
    jr nz, jr_071_7267                            ; $72d7: $20 $8e

    ldh [rTIMA], a                                ; $72d9: $e0 $05
    rst $28                                       ; $72db: $ef
    ld a, a                                       ; $72dc: $7f
    ld h, c                                       ; $72dd: $61
    dec hl                                        ; $72de: $2b
    ld l, e                                       ; $72df: $6b
    ld l, e                                       ; $72e0: $6b
    ld b, c                                       ; $72e1: $41
    dec hl                                        ; $72e2: $2b

jr_071_72e3:
    add d                                         ; $72e3: $82
    and l                                         ; $72e4: $a5
    ld c, e                                       ; $72e5: $4b
    rlca                                          ; $72e6: $07
    ret nz                                        ; $72e7: $c0

    add [hl]                                      ; $72e8: $86
    ld b, b                                       ; $72e9: $40
    ld hl, $61a0                                  ; $72ea: $21 $a0 $61
    ld l, e                                       ; $72ed: $6b
    cp a                                          ; $72ee: $bf
    push bc                                       ; $72ef: $c5
    nop                                           ; $72f0: $00
    dec a                                         ; $72f1: $3d
    ld l, h                                       ; $72f2: $6c
    dec b                                         ; $72f3: $05
    ret nz                                        ; $72f4: $c0

    ret nz                                        ; $72f5: $c0

    pop bc                                        ; $72f6: $c1
    ld b, c                                       ; $72f7: $41
    ld l, [hl]                                    ; $72f8: $6e
    add b                                         ; $72f9: $80
    add a                                         ; $72fa: $87
    and [hl]                                      ; $72fb: $a6
    ld hl, $a0f7                                  ; $72fc: $21 $f7 $a0
    add [hl]                                      ; $72ff: $86
    ld l, b                                       ; $7300: $68
    ld b, b                                       ; $7301: $40
    inc bc                                        ; $7302: $03
    call z, $02fa                                 ; $7303: $cc $fa $02
    jp c, $80e2                                   ; $7306: $da $e2 $80

    ld c, b                                       ; $7309: $48
    pop bc                                        ; $730a: $c1
    ld h, [hl]                                    ; $730b: $66
    rst $20                                       ; $730c: $e7
    and $6b                                       ; $730d: $e6 $6b
    ld b, l                                       ; $730f: $45
    rst $08                                       ; $7310: $cf
    nop                                           ; $7311: $00
    jp $c0c4                                      ; $7312: $c3 $c4 $c0


    ld [c], a                                     ; $7315: $e2
    nop                                           ; $7316: $00
    adc d                                         ; $7317: $8a
    ld [hl], e                                    ; $7318: $73
    ld b, a                                       ; $7319: $47
    add sp, $24                                   ; $731a: $e8 $24
    sub b                                         ; $731c: $90
    ld bc, $f000                                  ; $731d: $01 $00 $f0
    rlca                                          ; $7320: $07
    ret nz                                        ; $7321: $c0

    jr nz, jr_071_72e3                            ; $7322: $20 $bf

    and $00                                       ; $7324: $e6 $00
    adc a                                         ; $7326: $8f
    db $ed                                        ; $7327: $ed
    ld h, b                                       ; $7328: $60
    xor b                                         ; $7329: $a8
    inc h                                         ; $732a: $24
    add e                                         ; $732b: $83
    nop                                           ; $732c: $00
    dec hl                                        ; $732d: $2b
    db $fc                                        ; $732e: $fc
    and a                                         ; $732f: $a7
    cp $45                                        ; $7330: $fe $45
    nop                                           ; $7332: $00
    push bc                                       ; $7333: $c5
    nop                                           ; $7334: $00
    ld b, d                                       ; $7335: $42
    db $e3                                        ; $7336: $e3
    add hl, sp                                    ; $7337: $39
    ld bc, $7380                                  ; $7338: $01 $80 $73
    add b                                         ; $733b: $80

jr_071_733c:
    nop                                           ; $733c: $00
    inc a                                         ; $733d: $3c
    ld [hl+], a                                   ; $733e: $22
    sbc h                                         ; $733f: $9c
    add c                                         ; $7340: $81
    db $10                                        ; $7341: $10
    ld h, d                                       ; $7342: $62
    dec de                                        ; $7343: $1b
    ld a, [hl+]                                   ; $7344: $2a
    ld a, [bc]                                    ; $7345: $0a
    ld [hl], d                                    ; $7346: $72
    ld b, c                                       ; $7347: $41
    dec hl                                        ; $7348: $2b
    ld c, e                                       ; $7349: $4b
    adc b                                         ; $734a: $88
    nop                                           ; $734b: $00
    ld d, e                                       ; $734c: $53
    inc bc                                        ; $734d: $03
    ld h, e                                       ; $734e: $63
    ret nz                                        ; $734f: $c0

    jr jr_071_733c                                ; $7350: $18 $ea

    ld h, d                                       ; $7352: $62
    nop                                           ; $7353: $00
    ld [hl], e                                    ; $7354: $73
    jr z, jr_071_7398                             ; $7355: $28 $41

    ld l, h                                       ; $7357: $6c
    ld c, h                                       ; $7358: $4c
    inc a                                         ; $7359: $3c
    ld b, c                                       ; $735a: $41
    reti                                          ; $735b: $d9


    jp $8354                                      ; $735c: $c3 $54 $83


    nop                                           ; $735f: $00
    or e                                          ; $7360: $b3
    pop hl                                        ; $7361: $e1
    adc l                                         ; $7362: $8d
    and a                                         ; $7363: $a7
    rra                                           ; $7364: $1f
    and b                                         ; $7365: $a0
    rst $38                                       ; $7366: $ff
    and l                                         ; $7367: $a5
    add h                                         ; $7368: $84
    and a                                         ; $7369: $a7
    inc sp                                        ; $736a: $33
    add a                                         ; $736b: $87
    daa                                           ; $736c: $27
    ld h, c                                       ; $736d: $61
    ret nz                                        ; $736e: $c0

    db $e3                                        ; $736f: $e3
    nop                                           ; $7370: $00
    ld [hl], $80                                  ; $7371: $36 $80
    ld [hl], h                                    ; $7373: $74
    and b                                         ; $7374: $a0
    jp nc, Jump_000_2c62                          ; $7375: $d2 $62 $2c

    ld b, b                                       ; $7378: $40
    ld c, h                                       ; $7379: $4c
    ld h, [hl]                                    ; $737a: $66
    dec b                                         ; $737b: $05
    inc h                                         ; $737c: $24
    ld c, d                                       ; $737d: $4a
    ld c, d                                       ; $737e: $4a
    ld a, a                                       ; $737f: $7f
    xor d                                         ; $7380: $aa
    nop                                           ; $7381: $00

jr_071_7382:
    ld a, h                                       ; $7382: $7c
    add d                                         ; $7383: $82
    sbc h                                         ; $7384: $9c
    ld h, c                                       ; $7385: $61
    sbc c                                         ; $7386: $99
    ldh [$ba], a                                  ; $7387: $e0 $ba
    ld [c], a                                     ; $7389: $e2
    db $10                                        ; $738a: $10
    add c                                         ; $738b: $81
    adc [hl]                                      ; $738c: $8e
    ld hl, $224c                                  ; $738d: $21 $4c $22
    ld b, l                                       ; $7390: $45
    dec b                                         ; $7391: $05
    nop                                           ; $7392: $00
    rst $08                                       ; $7393: $cf
    and [hl]                                      ; $7394: $a6
    or [hl]                                       ; $7395: $b6
    jr z, jr_071_7382                             ; $7396: $28 $ea

jr_071_7398:
    ld b, l                                       ; $7398: $45
    ld a, h                                       ; $7399: $7c
    add b                                         ; $739a: $80
    ld e, c                                       ; $739b: $59
    and h                                         ; $739c: $a4
    ld c, d                                       ; $739d: $4a
    ld h, b                                       ; $739e: $60
    rst $08                                       ; $739f: $cf
    and d                                         ; $73a0: $a2
    ld c, $a1                                     ; $73a1: $0e $a1
    nop                                           ; $73a3: $00
    inc h                                         ; $73a4: $24
    pop hl                                        ; $73a5: $e1
    ld b, [hl]                                    ; $73a6: $46
    ld b, $47                                     ; $73a7: $06 $47
    and [hl]                                      ; $73a9: $a6
    ld [hl], a                                    ; $73aa: $77
    ld b, a                                       ; $73ab: $47
    di                                            ; $73ac: $f3
    add sp, -$39                                  ; $73ad: $e8 $c7
    ld b, c                                       ; $73af: $41
    inc sp                                        ; $73b0: $33

Jump_071_73b1:
    and [hl]                                      ; $73b1: $a6
    cp e                                          ; $73b2: $bb
    ld b, c                                       ; $73b3: $41
    ld b, b                                       ; $73b4: $40
    ld d, b                                       ; $73b5: $50
    push hl                                       ; $73b6: $e5
    add a                                         ; $73b7: $87
    ld b, a                                       ; $73b8: $47
    add d                                         ; $73b9: $82
    jp hl                                         ; $73ba: $e9


    ld a, c                                       ; $73bb: $79
    rst $20                                       ; $73bc: $e7
    db $e3                                        ; $73bd: $e3
    jp hl                                         ; $73be: $e9


    adc a                                         ; $73bf: $8f
    call nz, $b52c                                ; $73c0: $c4 $2c $b5
    db $e3                                        ; $73c3: $e3
    nop                                           ; $73c4: $00
    rlc d                                         ; $73c5: $cb $02
    rst $20                                       ; $73c7: $e7
    add sp, -$3f                                  ; $73c8: $e8 $c1
    ld [$2a3d], a                                 ; $73ca: $ea $3d $2a
    db $fd                                        ; $73cd: $fd
    db $ec                                        ; $73ce: $ec
    add hl, hl                                    ; $73cf: $29
    rst $20                                       ; $73d0: $e7
    add e                                         ; $73d1: $83
    add sp, $4a                                   ; $73d2: $e8 $4a
    add h                                         ; $73d4: $84
    ld [$e8d1], sp                                ; $73d5: $08 $d1 $e8
    ld l, a                                       ; $73d8: $6f
    and $bd                                       ; $73d9: $e6 $bd
    db $eb                                        ; $73db: $eb
    ld l, h                                       ; $73dc: $6c
    cpl                                           ; $73dd: $2f
    pop bc                                        ; $73de: $c1
    push bc                                       ; $73df: $c5
    call nz, $fad5                                ; $73e0: $c4 $d5 $fa
    ld l, c                                       ; $73e3: $69
    ret                                           ; $73e4: $c9


    ld [bc], a                                    ; $73e5: $02
    ld a, c                                       ; $73e6: $79
    add sp, $2c                                   ; $73e7: $e8 $2c
    ld b, b                                       ; $73e9: $40
    jp $06cf                                      ; $73ea: $c3 $cf $06


    ld [c], a                                     ; $73ed: $e2
    and $97                                       ; $73ee: $e6 $97
    db $ed                                        ; $73f0: $ed
    ld [hl], c                                    ; $73f1: $71
    ld [$e765], a                                 ; $73f2: $ea $65 $e7
    ccf                                           ; $73f5: $3f
    ld c, h                                       ; $73f6: $4c
    dec bc                                        ; $73f7: $0b
    dec c                                         ; $73f8: $0d
    dec bc                                        ; $73f9: $0b
    dec bc                                        ; $73fa: $0b
    dec l                                         ; $73fb: $2d
    ld de, $e7a6                                  ; $73fc: $11 $a6 $e7
    ret                                           ; $73ff: $c9


    nop                                           ; $7400: $00
    ld d, $f0                                     ; $7401: $16 $f0
    rst $28                                       ; $7403: $ef
    ret                                           ; $7404: $c9


    dec e                                         ; $7405: $1d
    inc h                                         ; $7406: $24
    ret nz                                        ; $7407: $c0

    and e                                         ; $7408: $a3
    ret nc                                        ; $7409: $d0

    ld b, a                                       ; $740a: $47
    pop bc                                        ; $740b: $c1
    rst $30                                       ; $740c: $f7
    ld h, d                                       ; $740d: $62
    push hl                                       ; $740e: $e5
    ld [hl], l                                    ; $740f: $75
    rlc b                                         ; $7410: $cb $00
    ld b, b                                       ; $7412: $40
    db $e4                                        ; $7413: $e4
    dec de                                        ; $7414: $1b
    ret                                           ; $7415: $c9


    jp nz, $bdf4                                  ; $7416: $c2 $f4 $bd

    jp hl                                         ; $7419: $e9


    ld sp, $2767                                  ; $741a: $31 $67 $27
    ld l, c                                       ; $741d: $69
    pop bc                                        ; $741e: $c1
    rst $38                                       ; $741f: $ff
    daa                                           ; $7420: $27
    and a                                         ; $7421: $a7
    nop                                           ; $7422: $00
    dec [hl]                                      ; $7423: $35
    adc $ca                                       ; $7424: $ce $ca
    db $d3                                        ; $7426: $d3
    ld a, e                                       ; $7427: $7b
    db $f4                                        ; $7428: $f4
    dec [hl]                                      ; $7429: $35
    ret nc                                        ; $742a: $d0

    ld d, c                                       ; $742b: $51
    xor c                                         ; $742c: $a9
    ret nc                                        ; $742d: $d0

    db $ec                                        ; $742e: $ec
    nop                                           ; $742f: $00
    nop                                           ; $7430: $00
    nop                                           ; $7431: $00
    rst $18                                       ; $7432: $df
    sbc c                                         ; $7433: $99
    sbc b                                         ; $7434: $98
    sbc b                                         ; $7435: $98
    sbc b                                         ; $7436: $98
    sub a                                         ; $7437: $97
    rst $38                                       ; $7438: $ff
    ld [c], a                                     ; $7439: $e2
    sub [hl]                                      ; $743a: $96
    sub [hl]                                      ; $743b: $96
    dec de                                        ; $743c: $1b
    sub [hl]                                      ; $743d: $96
    sub l                                         ; $743e: $95
    rst $38                                       ; $743f: $ff
    rst $20                                       ; $7440: $e7
    sub [hl]                                      ; $7441: $96
    sub [hl]                                      ; $7442: $96
    ld [$e2e2], a                                 ; $7443: $ea $e2 $e2
    ldh [$e1], a                                  ; $7446: $e0 $e1
    ldh [$30], a                                  ; $7448: $e0 $30
    push hl                                       ; $744a: $e5
    ldh [$e3], a                                  ; $744b: $e0 $e3
    add sp, -$29                                  ; $744d: $e8 $d7
    ldh [$e5], a                                  ; $744f: $e0 $e5
    db $e4                                        ; $7451: $e4
    sbc c                                         ; $7452: $99
    sbc c                                         ; $7453: $99
    pop bc                                        ; $7454: $c1
    db $e4                                        ; $7455: $e4
    rst $18                                       ; $7456: $df
    ld [c], a                                     ; $7457: $e2
    nop                                           ; $7458: $00
    pop bc                                        ; $7459: $c1
    db $e3                                        ; $745a: $e3
    push af                                       ; $745b: $f5
    db $e3                                        ; $745c: $e3
    pop bc                                        ; $745d: $c1
    pop hl                                        ; $745e: $e1
    call nz, $dde1                                ; $745f: $c4 $e1 $dd
    ldh [$a0], a                                  ; $7462: $e0 $a0
    ldh [$b4], a                                  ; $7464: $e0 $b4
    pop hl                                        ; $7466: $e1
    cp h                                          ; $7467: $bc
    add sp, -$40                                  ; $7468: $e8 $c0
    cp a                                          ; $746a: $bf
    jp hl                                         ; $746b: $e9


    pop bc                                        ; $746c: $c1
    db $eb                                        ; $746d: $eb
    rst $00                                       ; $746e: $c7
    db $e3                                        ; $746f: $e3
    ld [hl], h                                    ; $7470: $74
    ldh [$85], a                                  ; $7471: $e0 $85
    ld [c], a                                     ; $7473: $e2
    and d                                         ; $7474: $a2
    ldh [$99], a                                  ; $7475: $e0 $99
    ld bc, $0003                                  ; $7477: $01 $03 $00
    sbc c                                         ; $747a: $99
    ld h, b                                       ; $747b: $60
    pop hl                                        ; $747c: $e1
    ld e, h                                       ; $747d: $5c
    db $e3                                        ; $747e: $e3
    reti                                          ; $747f: $d9


    db $ec                                        ; $7480: $ec
    ld a, [hl]                                    ; $7481: $7e
    pop hl                                        ; $7482: $e1
    add d                                         ; $7483: $82
    db $e4                                        ; $7484: $e4
    ld c, e                                       ; $7485: $4b
    jp hl                                         ; $7486: $e9


    db $fc                                        ; $7487: $fc
    cpl                                           ; $7488: $2f
    ld [c], a                                     ; $7489: $e2
    ld h, d                                       ; $748a: $62
    pop hl                                        ; $748b: $e1
    nop                                           ; $748c: $00
    ld bc, $040d                                  ; $748d: $01 $0d $04
    inc b                                         ; $7490: $04
    rrca                                          ; $7491: $0f
    nop                                           ; $7492: $00
    ld a, c                                       ; $7493: $79
    ld [c], a                                     ; $7494: $e2
    ld [hl], h                                    ; $7495: $74
    ld [c], a                                     ; $7496: $e2
    add hl, de                                    ; $7497: $19
    db $e4                                        ; $7498: $e4
    cp a                                          ; $7499: $bf
    ld [$e322], a                                 ; $749a: $ea $22 $e3
    inc c                                         ; $749d: $0c
    rst $20                                       ; $749e: $e7
    jp nc, Jump_000_25e6                          ; $749f: $d2 $e6 $25

    ldh [$7f], a                                  ; $74a2: $e0 $7f
    rrca                                          ; $74a4: $0f
    inc b                                         ; $74a5: $04
    inc bc                                        ; $74a6: $03
    inc bc                                        ; $74a7: $03
    inc bc                                        ; $74a8: $03
    ld [bc], a                                    ; $74a9: $02
    rrca                                          ; $74aa: $0f
    inc a                                         ; $74ab: $3c
    ld [c], a                                     ; $74ac: $e2
    rlca                                          ; $74ad: $07
    dec c                                         ; $74ae: $0d
    rlca                                          ; $74af: $07
    dec c                                         ; $74b0: $0d
    cp h                                          ; $74b1: $bc
    db $e4                                        ; $74b2: $e4
    reti                                          ; $74b3: $d9


    jp $e67e                                      ; $74b4: $c3 $7e $e6


    xor [hl]                                      ; $74b7: $ae
    add sp, $0c                                   ; $74b8: $e8 $0c
    ld [c], a                                     ; $74ba: $e2
    db $fc                                        ; $74bb: $fc
    db $ed                                        ; $74bc: $ed
    pop bc                                        ; $74bd: $c1
    ld b, a                                       ; $74be: $47
    db $e3                                        ; $74bf: $e3
    rrca                                          ; $74c0: $0f
    ld [bc], a                                    ; $74c1: $02
    inc bc                                        ; $74c2: $03
    inc b                                         ; $74c3: $04
    dec c                                         ; $74c4: $0d
    dec c                                         ; $74c5: $0d
    rst $30                                       ; $74c6: $f7
    ld [bc], a                                    ; $74c7: $02
    ld [bc], a                                    ; $74c8: $02
    rrca                                          ; $74c9: $0f
    push af                                       ; $74ca: $f5
    ldh [rDIV], a                                 ; $74cb: $e0 $04
    inc bc                                        ; $74cd: $03
    dec bc                                        ; $74ce: $0b
    inc bc                                        ; $74cf: $03
    inc bc                                        ; $74d0: $03
    inc b                                         ; $74d1: $04
    rrca                                          ; $74d2: $0f
    ld de, $d8e3                                  ; $74d3: $11 $e3 $d8
    add $55                                       ; $74d6: $c6 $55
    db $e4                                        ; $74d8: $e4
    adc b                                         ; $74d9: $88
    pop bc                                        ; $74da: $c1
    sub c                                         ; $74db: $91
    add $c8                                       ; $74dc: $c6 $c8
    pop hl                                        ; $74de: $e1
    ld [hl], h                                    ; $74df: $74
    adc c                                         ; $74e0: $89
    ldh [$d4], a                                  ; $74e1: $e0 $d4
    ldh [rIF], a                                  ; $74e3: $e0 $0f
    add $e0                                       ; $74e5: $c6 $e0
    inc b                                         ; $74e7: $04
    add hl, bc                                    ; $74e8: $09
    inc b                                         ; $74e9: $04
    ld sp, hl                                     ; $74ea: $f9
    pop hl                                        ; $74eb: $e1
    ld c, $b6                                     ; $74ec: $0e $b6
    ld [c], a                                     ; $74ee: $e2
    rlca                                          ; $74ef: $07
    dec b                                         ; $74f0: $05
    ld b, $f3                                     ; $74f1: $06 $f3
    pop bc                                        ; $74f3: $c1
    or d                                          ; $74f4: $b2
    ret nz                                        ; $74f5: $c0

    call nc, Call_000_15c5                        ; $74f6: $d4 $c5 $15
    db $e3                                        ; $74f9: $e3
    db $fc                                        ; $74fa: $fc
    ld c, b                                       ; $74fb: $48
    jp nz, $c691                                  ; $74fc: $c2 $91 $c6

    nop                                           ; $74ff: $00
    ld bc, $020f                                  ; $7500: $01 $0f $02
    ld [hl], $3b                                  ; $7503: $36 $3b
    rst $38                                       ; $7505: $ff
    jr c, jr_071_753f                             ; $7506: $38 $37

    ld [bc], a                                    ; $7508: $02
    rrca                                          ; $7509: $0f
    ld b, $05                                     ; $750a: $06 $05
    ld c, $06                                     ; $750c: $0e $06
    rst $38                                       ; $750e: $ff
    ld a, [hl+]                                   ; $750f: $2a
    cpl                                           ; $7510: $2f
    ld a, [hl+]                                   ; $7511: $2a
    ld b, $0e                                     ; $7512: $06 $0e
    dec b                                         ; $7514: $05
    ld [bc], a                                    ; $7515: $02
    ld [bc], a                                    ; $7516: $02
    rst $18                                       ; $7517: $df
    ld [bc], a                                    ; $7518: $02
    dec c                                         ; $7519: $0d
    sbc b                                         ; $751a: $98
    sbc c                                         ; $751b: $99
    sbc e                                         ; $751c: $9b
    rst $28                                       ; $751d: $ef
    ldh [rP1], a                                  ; $751e: $e0 $00
    ld bc, $b2f0                                  ; $7520: $01 $f0 $b2
    jp nz, $e68d                                  ; $7523: $c2 $8d $e6

    add b                                         ; $7526: $80
    rst $20                                       ; $7527: $e7
    sub c                                         ; $7528: $91
    jp nz, Jump_000_070f                          ; $7529: $c2 $0f $07

    rlca                                          ; $752c: $07
    dec c                                         ; $752d: $0d
    rst $38                                       ; $752e: $ff
    sbc c                                         ; $752f: $99
    ld b, $39                                     ; $7530: $06 $39
    dec [hl]                                      ; $7532: $35
    ld h, d                                       ; $7533: $62
    ld h, e                                       ; $7534: $63
    ld h, [hl]                                    ; $7535: $66
    ld [hl], $ff                                  ; $7536: $36 $ff
    ld [bc], a                                    ; $7538: $02
    dec b                                         ; $7539: $05
    ld b, $99                                     ; $753a: $06 $99
    ld b, $2c                                     ; $753c: $06 $2c
    cpl                                           ; $753e: $2f

jr_071_753f:
    inc l                                         ; $753f: $2c
    cp $fa                                        ; $7540: $fe $fa
    ldh [rDMA], a                                 ; $7542: $e0 $46
    inc c                                         ; $7544: $0c
    ld c, $98                                     ; $7545: $0e $98
    sub a                                         ; $7547: $97
    sbc b                                         ; $7548: $98
    sbc c                                         ; $7549: $99
    rra                                           ; $754a: $1f
    ld c, $0c                                     ; $754b: $0e $0c
    ld [$070d], sp                                ; $754d: $08 $0d $07
    or c                                          ; $7550: $b1
    jp nz, $e23c                                  ; $7551: $c2 $3c $e2

    ld a, l                                       ; $7554: $7d
    call nz, $c0ec                                ; $7555: $c4 $ec $c0
    and $55                                       ; $7558: $e6 $55
    ret nz                                        ; $755a: $c0

    ld b, $46                                     ; $755b: $06 $46
    ld a, [de]                                    ; $755d: $1a
    ldh [rTIMA], a                                ; $755e: $e0 $05
    ld a, $35                                     ; $7560: $3e $35
    ld a, a                                       ; $7562: $7f
    ld l, c                                       ; $7563: $69
    dec [hl]                                      ; $7564: $35
    ld l, b                                       ; $7565: $68
    ld h, [hl]                                    ; $7566: $66
    add hl, sp                                    ; $7567: $39
    dec b                                         ; $7568: $05
    ld c, $bf                                     ; $7569: $0e $bf
    ret nz                                        ; $756b: $c0

    sbc $40                                       ; $756c: $de $40
    ldh [$98], a                                  ; $756e: $e0 $98
    ld c, $05                                     ; $7570: $0e $05
    dec b                                         ; $7572: $05
    inc a                                         ; $7573: $3c
    pop bc                                        ; $7574: $c1
    sbc b                                         ; $7575: $98
    ld [$0c1f], sp                                ; $7576: $08 $1f $0c
    inc b                                         ; $7579: $04
    inc bc                                        ; $757a: $03
    ccf                                           ; $757b: $3f
    ld [bc], a                                    ; $757c: $02
    ei                                            ; $757d: $fb
    jp $e20d                                      ; $757e: $c3 $0d $e2


    call c, $fca1                                 ; $7581: $dc $a1 $fc
    add b                                         ; $7584: $80
    jp hl                                         ; $7585: $e9


    ld d, [hl]                                    ; $7586: $56
    ldh [$0d], a                                  ; $7587: $e0 $0d
    rlca                                          ; $7589: $07
    inc b                                         ; $758a: $04
    inc bc                                        ; $758b: $03
    add hl, sp                                    ; $758c: $39
    dec [hl]                                      ; $758d: $35
    ccf                                           ; $758e: $3f
    ld l, e                                       ; $758f: $6b
    ld l, h                                       ; $7590: $6c
    ld l, h                                       ; $7591: $6c
    ld l, l                                       ; $7592: $6d
    ld a, $0a                                     ; $7593: $3e $0a
    or a                                          ; $7595: $b7
    jp nz, $c1b2                                  ; $7596: $c2 $b2 $c1

    ei                                            ; $7599: $fb
    ld a, [bc]                                    ; $759a: $0a
    ld a, [bc]                                    ; $759b: $0a
    pop bc                                        ; $759c: $c1
    pop hl                                        ; $759d: $e1
    rrca                                          ; $759e: $0f
    ld [bc], a                                    ; $759f: $02
    scf                                           ; $75a0: $37
    jr c, jr_071_75de                             ; $75a1: $38 $3b

    inc bc                                        ; $75a3: $03
    dec [hl]                                      ; $75a4: $35
    add hl, sp                                    ; $75a5: $39
    ei                                            ; $75a6: $fb
    jp nz, $c2bc                                  ; $75a7: $c2 $bc $c2

    ret nz                                        ; $75aa: $c0

    db $e4                                        ; $75ab: $e4
    nop                                           ; $75ac: $00
    rst $20                                       ; $75ad: $e7
    ld c, $e0                                     ; $75ae: $0e $e0
    ld [hl-], a                                   ; $75b0: $32
    and b                                         ; $75b1: $a0
    rst $38                                       ; $75b2: $ff
    dec c                                         ; $75b3: $0d
    ld [bc], a                                    ; $75b4: $02
    ld [hl], $6e                                  ; $75b5: $36 $6e
    ld [hl], b                                    ; $75b7: $70
    ld [hl], b                                    ; $75b8: $70
    ld l, [hl]                                    ; $75b9: $6e
    ld a, $99                                     ; $75ba: $3e $99
    ld a, [bc]                                    ; $75bc: $0a
    daa                                           ; $75bd: $27
    and b                                         ; $75be: $a0
    inc hl                                        ; $75bf: $23
    and c                                         ; $75c0: $a1
    sbc b                                         ; $75c1: $98
    sbc b                                         ; $75c2: $98
    ret nz                                        ; $75c3: $c0

    pop hl                                        ; $75c4: $e1
    pop bc                                        ; $75c5: $c1
    ldh [$36], a                                  ; $75c6: $e0 $36
    ld a, a                                       ; $75c8: $7f
    ld h, d                                       ; $75c9: $62
    ld h, e                                       ; $75ca: $63
    ld h, l                                       ; $75cb: $65
    ld h, [hl]                                    ; $75cc: $66
    ld a, [hl-]                                   ; $75cd: $3a
    dec b                                         ; $75ce: $05
    ld c, $bc                                     ; $75cf: $0e $bc
    jp $1df0                                      ; $75d1: $c3 $f0 $1d


    and l                                         ; $75d4: $a5
    or e                                          ; $75d5: $b3
    add $98                                       ; $75d6: $c6 $98
    db $e4                                        ; $75d8: $e4
    sub $e2                                       ; $75d9: $d6 $e2
    dec [hl]                                      ; $75db: $35
    dec [hl]                                      ; $75dc: $35
    dec [hl]                                      ; $75dd: $35

jr_071_75de:
    ld a, $e5                                     ; $75de: $3e $e5
    ld b, $e8                                     ; $75e0: $06 $e8
    add h                                         ; $75e2: $84
    sub a                                         ; $75e3: $97
    ret nz                                        ; $75e4: $c0

    pop hl                                        ; $75e5: $e1
    pop bc                                        ; $75e6: $c1
    ld [c], a                                     ; $75e7: $e2
    ld h, a                                       ; $75e8: $67
    dec [hl]                                      ; $75e9: $35
    dec [hl]                                      ; $75ea: $35
    rrca                                          ; $75eb: $0f
    ld l, d                                       ; $75ec: $6a
    dec [hl]                                      ; $75ed: $35
    ld b, d                                       ; $75ee: $42
    ld [$a30e], sp                                ; $75ef: $08 $0e $a3
    ld hl, sp-$7c                                 ; $75f2: $f8 $84
    ld [hl], h                                    ; $75f4: $74
    ret z                                         ; $75f5: $c8

    ld e, b                                       ; $75f6: $58
    ld [c], a                                     ; $75f7: $e2
    ld c, $b7                                     ; $75f8: $0e $b7

jr_071_75fa:
    pop hl                                        ; $75fa: $e1
    ld c, $05                                     ; $75fb: $0e $05
    ld a, [hl-]                                   ; $75fd: $3a
    ret nz                                        ; $75fe: $c0

    ld [c], a                                     ; $75ff: $e2
    ld d, l                                       ; $7600: $55
    jp nz, $e1f1                                  ; $7601: $c2 $f1 $e1

    push af                                       ; $7604: $f5
    ldh [rNR13], a                                ; $7605: $e0 $13
    ld b, $39                                     ; $7607: $06 $39
    pop bc                                        ; $7609: $c1
    pop hl                                        ; $760a: $e1
    ret nz                                        ; $760b: $c0

    ldh [rLCDC], a                                ; $760c: $e0 $40
    ret nz                                        ; $760e: $c0

    db $ed                                        ; $760f: $ed
    add a                                         ; $7610: $87
    and a                                         ; $7611: $a7
    ld b, b                                       ; $7612: $40
    pop hl                                        ; $7613: $e1
    adc [hl]                                      ; $7614: $8e
    adc h                                         ; $7615: $8c
    add c                                         ; $7616: $81
    sbc c                                         ; $7617: $99
    ld a, [bc]                                    ; $7618: $0a
    ld a, $80                                     ; $7619: $3e $80
    ldh [rP1], a                                  ; $761b: $e0 $00
    ldh [$f7], a                                  ; $761d: $e0 $f7
    add d                                         ; $761f: $82
    sbc b                                         ; $7620: $98
    rst $38                                       ; $7621: $ff
    ld [$0846], sp                                ; $7622: $08 $46 $08
    sbc b                                         ; $7625: $98
    db $10                                        ; $7626: $10
    dec b                                         ; $7627: $05
    ld a, [hl-]                                   ; $7628: $3a
    ld l, e                                       ; $7629: $6b
    rra                                           ; $762a: $1f
    ld l, h                                       ; $762b: $6c
    dec [hl]                                      ; $762c: $35
    dec [hl]                                      ; $762d: $35
    ld l, h                                       ; $762e: $6c
    ld l, l                                       ; $762f: $6d
    ld b, b                                       ; $7630: $40
    db $ed                                        ; $7631: $ed
    ld [hl], $c7                                  ; $7632: $36 $c7
    ld b, c                                       ; $7634: $41
    ret nz                                        ; $7635: $c0

    db $fc                                        ; $7636: $fc
    jr jr_071_75fa                                ; $7637: $18 $c1

    ld d, [hl]                                    ; $7639: $56
    pop bc                                        ; $763a: $c1
    ld b, $3e                                     ; $763b: $06 $3e
    jr c, jr_071_7676                             ; $763d: $38 $37

    ld b, e                                       ; $763f: $43
    ld a, [bc]                                    ; $7640: $0a
    ld a, l                                       ; $7641: $7d
    sbc d                                         ; $7642: $9a
    add $83                                       ; $7643: $c6 $83
    sbc b                                         ; $7645: $98
    ld b, $46                                     ; $7646: $06 $46
    inc bc                                        ; $7648: $03
    add hl, bc                                    ; $7649: $09
    xor e                                         ; $764a: $ab
    ret nz                                        ; $764b: $c0

    rst $38                                       ; $764c: $ff
    ld l, [hl]                                    ; $764d: $6e
    ld l, a                                       ; $764e: $6f
    ld l, h                                       ; $764f: $6c
    ld l, h                                       ; $7650: $6c
    ld l, a                                       ; $7651: $6f
    ld l, [hl]                                    ; $7652: $6e
    add hl, sp                                    ; $7653: $39
    ld b, $c0                                     ; $7654: $06 $c0
    db $fc                                        ; $7656: $fc
    and d                                         ; $7657: $a2
    cp a                                          ; $7658: $bf
    and [hl]                                      ; $7659: $a6
    jp Jump_071_4fa6                              ; $765a: $c3 $a6 $4f


    and d                                         ; $765d: $a2
    ld e, e                                       ; $765e: $5b
    and c                                         ; $765f: $a1
    sub $a0                                       ; $7660: $d6 $a0
    ld [$bf43], sp                                ; $7662: $08 $43 $bf
    ld b, l                                       ; $7665: $45
    ld b, [hl]                                    ; $7666: $46
    xor [hl]                                      ; $7667: $ae
    dec b                                         ; $7668: $05
    db $10                                        ; $7669: $10
    sbc e                                         ; $766a: $9b
    db $e3                                        ; $766b: $e3
    ld h, c                                       ; $766c: $61
    sbc c                                         ; $766d: $99
    rst $38                                       ; $766e: $ff
    db $10                                        ; $766f: $10
    dec b                                         ; $7670: $05
    ld b, [hl]                                    ; $7671: $46
    xor [hl]                                      ; $7672: $ae
    ld b, [hl]                                    ; $7673: $46
    ld b, [hl]                                    ; $7674: $46
    ld b, e                                       ; $7675: $43

jr_071_7676:
    scf                                           ; $7676: $37
    dec e                                         ; $7677: $1d
    jr c, @-$54                                   ; $7678: $38 $aa

    pop bc                                        ; $767a: $c1
    ld a, [hl-]                                   ; $767b: $3a
    rla                                           ; $767c: $17
    ld c, $40                                     ; $767d: $0e $40
    jp z, $a8c3                                   ; $767f: $ca $c3 $a8

    ld c, a                                       ; $7682: $4f
    and b                                         ; $7683: $a0
    rst $20                                       ; $7684: $e7
    dec b                                         ; $7685: $05
    ld c, $04                                     ; $7686: $0e $04
    ret nc                                        ; $7688: $d0

    add b                                         ; $7689: $80
    ret                                           ; $768a: $c9


    add b                                         ; $768b: $80
    ld b, e                                       ; $768c: $43
    ld d, b                                       ; $768d: $50
    ld b, e                                       ; $768e: $43
    rst $38                                       ; $768f: $ff
    xor a                                         ; $7690: $af
    xor [hl]                                      ; $7691: $ae
    inc bc                                        ; $7692: $03
    add hl, bc                                    ; $7693: $09
    add hl, bc                                    ; $7694: $09
    inc b                                         ; $7695: $04
    inc b                                         ; $7696: $04
    add hl, bc                                    ; $7697: $09
    rst $38                                       ; $7698: $ff
    add hl, bc                                    ; $7699: $09
    inc bc                                        ; $769a: $03
    ld b, [hl]                                    ; $769b: $46
    xor [hl]                                      ; $769c: $ae
    xor a                                         ; $769d: $af
    ld c, b                                       ; $769e: $48
    ld c, [hl]                                    ; $769f: $4e
    ld c, [hl]                                    ; $76a0: $4e
    dec bc                                        ; $76a1: $0b
    ld c, [hl]                                    ; $76a2: $4e
    ld c, b                                       ; $76a3: $48
    xor d                                         ; $76a4: $aa
    ret nz                                        ; $76a5: $c0

    ld [hl], $b0                                  ; $76a6: $36 $b0
    add d                                         ; $76a8: $82
    db $fc                                        ; $76a9: $fc
    add h                                         ; $76aa: $84
    ret nz                                        ; $76ab: $c0

    jp Jump_071_6194                              ; $76ac: $c3 $94 $61


    ldh a, [$c3]                                  ; $76af: $f0 $c3
    and d                                         ; $76b1: $a2
    sbc b                                         ; $76b2: $98
    and b                                         ; $76b3: $a0
    call $d0c0                                    ; $76b4: $cd $c0 $d0
    add b                                         ; $76b7: $80
    ld [bc], a                                    ; $76b8: $02
    ld c, b                                       ; $76b9: $48
    ld c, c                                       ; $76ba: $49
    ld c, h                                       ; $76bb: $4c
    rst $08                                       ; $76bc: $cf
    ld e, l                                       ; $76bd: $5d
    ld c, h                                       ; $76be: $4c
    ld b, a                                       ; $76bf: $47
    xor a                                         ; $76c0: $af
    adc d                                         ; $76c1: $8a
    ldh [$fe], a                                  ; $76c2: $e0 $fe
    ld [c], a                                     ; $76c4: $e2
    xor [hl]                                      ; $76c5: $ae
    xor a                                         ; $76c6: $af
    rst $38                                       ; $76c7: $ff
    ld b, a                                       ; $76c8: $47
    ld h, b                                       ; $76c9: $60
    ld h, c                                       ; $76ca: $61
    ld h, c                                       ; $76cb: $61
    ld h, c                                       ; $76cc: $61
    ld h, b                                       ; $76cd: $60
    ld c, d                                       ; $76ce: $4a
    ld [hl], $8f                                  ; $76cf: $36 $8f
    ld [hl], $02                                  ; $76d1: $36 $02
    dec c                                         ; $76d3: $0d
    db $10                                        ; $76d4: $10
    or e                                          ; $76d5: $b3
    pop bc                                        ; $76d6: $c1
    adc d                                         ; $76d7: $8a
    ret z                                         ; $76d8: $c8

    add b                                         ; $76d9: $80
    add sp, $0a                                   ; $76da: $e8 $0a
    xor $c1                                       ; $76dc: $ee $c1
    pop bc                                        ; $76de: $c1
    sbc b                                         ; $76df: $98
    rrca                                          ; $76e0: $0f
    inc c                                         ; $76e1: $0c
    jp nc, Jump_071_61e2                          ; $76e2: $d2 $e2 $61

    ld h, c                                       ; $76e5: $61
    ld d, d                                       ; $76e6: $52
    di                                            ; $76e7: $f3
    xor a                                         ; $76e8: $af
    xor [hl]                                      ; $76e9: $ae
    rst $38                                       ; $76ea: $ff
    db $e3                                        ; $76eb: $e3
    pop bc                                        ; $76ec: $c1
    db $e3                                        ; $76ed: $e3
    ld h, c                                       ; $76ee: $61
    ld h, c                                       ; $76ef: $61
    ld e, d                                       ; $76f0: $5a
    ld b, l                                       ; $76f1: $45
    dec b                                         ; $76f2: $05
    ld b, l                                       ; $76f3: $45
    ld b, h                                       ; $76f4: $44
    ret nz                                        ; $76f5: $c0

    ld b, $a8                                     ; $76f6: $06 $a8
    jp nz, $868b                                  ; $76f8: $c2 $8b $86

    jp $9987                                      ; $76fb: $c3 $87 $99


    and b                                         ; $76fe: $a0
    adc $c0                                       ; $76ff: $ce $c0
    rrca                                          ; $7701: $0f
    sbc b                                         ; $7702: $98
    ld b, $51                                     ; $7703: $06 $51
    ld e, [hl]                                    ; $7705: $5e
    pop bc                                        ; $7706: $c1
    ld [c], a                                     ; $7707: $e2
    cp a                                          ; $7708: $bf
    pop hl                                        ; $7709: $e1
    rst $38                                       ; $770a: $ff
    db $e3                                        ; $770b: $e3
    or b                                          ; $770c: $b0
    db $e4                                        ; $770d: $e4
    rlca                                          ; $770e: $07
    ld h, c                                       ; $770f: $61
    ld d, [hl]                                    ; $7710: $56
    ld b, l                                       ; $7711: $45
    and b                                         ; $7712: $a0
    and c                                         ; $7713: $a1
    ret nz                                        ; $7714: $c0

    pop hl                                        ; $7715: $e1
    cp $88                                        ; $7716: $fe $88
    ld b, e                                       ; $7718: $43
    add [hl]                                      ; $7719: $86
    ld e, c                                       ; $771a: $59
    and b                                         ; $771b: $a0
    halt                                          ; $771c: $76
    add c                                         ; $771d: $81
    and d                                         ; $771e: $a2
    ld a, [bc]                                    ; $771f: $0a
    ld c, d                                       ; $7720: $4a
    pop de                                        ; $7721: $d1
    db $e4                                        ; $7722: $e4
    ld h, c                                       ; $7723: $61
    ld h, c                                       ; $7724: $61
    ld d, h                                       ; $7725: $54
    ld a, [bc]                                    ; $7726: $0a
    ldh [$b7], a                                  ; $7727: $e0 $b7
    ld c, [hl]                                    ; $7729: $4e
    ld c, [hl]                                    ; $772a: $4e
    ld c, c                                       ; $772b: $49
    ldh a, [$e5]                                  ; $772c: $f0 $e5
    ld e, b                                       ; $772e: $58
    ld b, h                                       ; $772f: $44
    ld a, b                                       ; $7730: $78
    and c                                         ; $7731: $a1
    ld a, [bc]                                    ; $7732: $0a
    or c                                          ; $7733: $b1
    ld a, [bc]                                    ; $7734: $0a
    jp z, $c042                                   ; $7735: $ca $42 $c0

    jp hl                                         ; $7738: $e9


    ld b, d                                       ; $7739: $42
    add h                                         ; $773a: $84
    ld b, $46                                     ; $773b: $06 $46
    db $e3                                        ; $773d: $e3
    add b                                         ; $773e: $80
    sbc b                                         ; $773f: $98
    inc hl                                        ; $7740: $23
    ld a, [bc]                                    ; $7741: $0a
    ld c, a                                       ; $7742: $4f
    pop bc                                        ; $7743: $c1
    push hl                                       ; $7744: $e5
    ld hl, sp-$13                                 ; $7745: $f8 $ed
    ret nz                                        ; $7747: $c0

    ldh [$99], a                                  ; $7748: $e0 $99
    or e                                          ; $774a: $b3
    and c                                         ; $774b: $a1
    db $ec                                        ; $774c: $ec
    ld b, e                                       ; $774d: $43
    ld hl, sp-$42                                 ; $774e: $f8 $be
    add h                                         ; $7750: $84
    ld [bc], a                                    ; $7751: $02
    add h                                         ; $7752: $84
    ld [hl], h                                    ; $7753: $74
    ld b, c                                       ; $7754: $41
    ld c, $05                                     ; $7755: $0e $05
    ld b, l                                       ; $7757: $45
    dec bc                                        ; $7758: $0b
    ld [bc], a                                    ; $7759: $02
    db $fd                                        ; $775a: $fd
    rrca                                          ; $775b: $0f
    ret nz                                        ; $775c: $c0

    rst $30                                       ; $775d: $f7
    ld h, c                                       ; $775e: $61
    ld e, h                                       ; $775f: $5c
    ld a, [bc]                                    ; $7760: $0a
    sbc d                                         ; $7761: $9a

jr_071_7762:
    rrca                                          ; $7762: $0f
    ld [bc], a                                    ; $7763: $02
    ld b, c                                       ; $7764: $41
    rla                                           ; $7765: $17
    ld [hl], c                                    ; $7766: $71
    ld h, b                                       ; $7767: $60
    ld a, [hl]                                    ; $7768: $7e
    add h                                         ; $7769: $84
    cp a                                          ; $776a: $bf
    ret                                           ; $776b: $c9


    sub a                                         ; $776c: $97
    ld b, b                                       ; $776d: $40
    ld c, c                                       ; $776e: $49
    and b                                         ; $776f: $a0
    dec sp                                        ; $7770: $3b
    add hl, bc                                    ; $7771: $09
    add b                                         ; $7772: $80
    xor $80                                       ; $7773: $ee $80
    pop af                                        ; $7775: $f1
    ld d, h                                       ; $7776: $54
    ld e, c                                       ; $7777: $59
    ld d, h                                       ; $7778: $54
    ret nz                                        ; $7779: $c0

    ld [c], a                                     ; $777a: $e2
    rrca                                          ; $777b: $0f
    ld [bc], a                                    ; $777c: $02
    ld b, [hl]                                    ; $777d: $46
    or b                                          ; $777e: $b0
    sbc l                                         ; $777f: $9d
    ldh [$3a], a                                  ; $7780: $e0 $3a
    ld h, e                                       ; $7782: $63
    cp a                                          ; $7783: $bf
    jp z, $21f4                                   ; $7784: $ca $f4 $21

    ld b, $40                                     ; $7787: $06 $40
    ret z                                         ; $7789: $c8

    ld h, c                                       ; $778a: $61
    ld b, l                                       ; $778b: $45
    call Call_000_064b                            ; $778c: $cd $4b $06
    pop hl                                        ; $778f: $e1
    ld d, e                                       ; $7790: $53
    ld d, e                                       ; $7791: $53
    rst $08                                       ; $7792: $cf
    pop hl                                        ; $7793: $e1
    rst $30                                       ; $7794: $f7
    push bc                                       ; $7795: $c5
    ld d, d                                       ; $7796: $52
    ld b, l                                       ; $7797: $45
    dec de                                        ; $7798: $1b
    ld c, d                                       ; $7799: $4a
    ld e, l                                       ; $779a: $5d
    dec a                                         ; $779b: $3d
    ret nz                                        ; $779c: $c0

    ld e, h                                       ; $779d: $5c
    dec b                                         ; $779e: $05
    xor $40                                       ; $779f: $ee $40
    add hl, hl                                    ; $77a1: $29
    ld h, c                                       ; $77a2: $61
    bit 0, a                                      ; $77a3: $cb $47
    ld l, [hl]                                    ; $77a5: $6e
    ld b, d                                       ; $77a6: $42
    ld l, b                                       ; $77a7: $68
    sbc c                                         ; $77a8: $99
    ld a, [bc]                                    ; $77a9: $0a
    add hl, sp                                    ; $77aa: $39
    ret z                                         ; $77ab: $c8

    ld h, c                                       ; $77ac: $61
    ld b, b                                       ; $77ad: $40
    ld c, l                                       ; $77ae: $4d
    dec d                                         ; $77af: $15
    ret nz                                        ; $77b0: $c0

    ld e, a                                       ; $77b1: $5f
    ld e, l                                       ; $77b2: $5d
    ld c, d                                       ; $77b3: $4a
    ld b, [hl]                                    ; $77b4: $46
    ld b, l                                       ; $77b5: $45
    ld d, d                                       ; $77b6: $52
    pop bc                                        ; $77b7: $c1
    add sp, $46                                   ; $77b8: $e8 $46
    ld l, e                                       ; $77ba: $6b
    jp nz, $5c83                                  ; $77bb: $c2 $83 $5c

    ld b, [hl]                                    ; $77be: $46
    jr nz, jr_071_7762                            ; $77bf: $20 $a1

    ld a, c                                       ; $77c1: $79
    ld h, b                                       ; $77c2: $60
    add c                                         ; $77c3: $81
    and $00                                       ; $77c4: $e6 $00
    pop hl                                        ; $77c6: $e1
    add c                                         ; $77c7: $81
    add a                                         ; $77c8: $87
    ld a, $71                                     ; $77c9: $3e $71
    ld l, c                                       ; $77cb: $69
    ld e, a                                       ; $77cc: $5f
    add b                                         ; $77cd: $80
    ret nz                                        ; $77ce: $c0

    pop hl                                        ; $77cf: $e1
    push de                                       ; $77d0: $d5
    pop hl                                        ; $77d1: $e1
    ld b, [hl]                                    ; $77d2: $46
    ld b, l                                       ; $77d3: $45
    ld d, [hl]                                    ; $77d4: $56
    add d                                         ; $77d5: $82
    and $17                                       ; $77d6: $e6 $17
    ld b, l                                       ; $77d8: $45
    ld b, [hl]                                    ; $77d9: $46
    ld b, h                                       ; $77da: $44
    ld [$5ce1], a                                 ; $77db: $ea $e1 $5c
    rst $18                                       ; $77de: $df
    and d                                         ; $77df: $a2
    ret nz                                        ; $77e0: $c0

    pop hl                                        ; $77e1: $e1
    ld b, b                                       ; $77e2: $40
    ret                                           ; $77e3: $c9


    ld hl, sp+$01                                 ; $77e4: $f8 $01
    add a                                         ; $77e6: $87
    ret nz                                        ; $77e7: $c0

    ld [c], a                                     ; $77e8: $e2
    ld bc, $58c2                                  ; $77e9: $01 $c2 $58
    ld b, h                                       ; $77ec: $44
    ld b, l                                       ; $77ed: $45
    scf                                           ; $77ee: $37
    scf                                           ; $77ef: $37
    rst $30                                       ; $77f0: $f7
    ld d, l                                       ; $77f1: $55
    ld h, c                                       ; $77f2: $61
    ld h, b                                       ; $77f3: $60
    rst $38                                       ; $77f4: $ff
    ldh [$61], a                                  ; $77f5: $e0 $61
    ld d, [hl]                                    ; $77f7: $56
    add hl, sp                                    ; $77f8: $39
    dec sp                                        ; $77f9: $3b
    inc de                                        ; $77fa: $13
    ld [hl], $45                                  ; $77fb: $36 $45
    ret nz                                        ; $77fd: $c0

    db $e3                                        ; $77fe: $e3
    ld a, b                                       ; $77ff: $78
    ld h, d                                       ; $7800: $62
    ld [$64be], sp                                ; $7801: $08 $be $64
    ccf                                           ; $7804: $3f
    adc b                                         ; $7805: $88
    add b                                         ; $7806: $80
    jp hl                                         ; $7807: $e9


    ld a, [hl]                                    ; $7808: $7e
    ret nz                                        ; $7809: $c0

    db $e4                                        ; $780a: $e4
    add hl, sp                                    ; $780b: $39
    dec [hl]                                      ; $780c: $35
    dec [hl]                                      ; $780d: $35
    add hl, sp                                    ; $780e: $39
    ld d, [hl]                                    ; $780f: $56
    ld e, [hl]                                    ; $7810: $5e
    rst $38                                       ; $7811: $ff
    ldh [rOCPD], a                                ; $7812: $e0 $6b
    ld h, c                                       ; $7814: $61
    ld d, l                                       ; $7815: $55
    di                                            ; $7816: $f3
    ld h, b                                       ; $7817: $60
    add hl, sp                                    ; $7818: $39
    add b                                         ; $7819: $80
    pop hl                                        ; $781a: $e1
    ld e, b                                       ; $781b: $58
    ld b, h                                       ; $781c: $44
    xor l                                         ; $781d: $ad
    ld h, b                                       ; $781e: $60
    ret nz                                        ; $781f: $c0

    ld a, a                                       ; $7820: $7f
    and c                                         ; $7821: $a1
    ld a, [hl]                                    ; $7822: $7e
    adc d                                         ; $7823: $8a
    nop                                           ; $7824: $00
    jp hl                                         ; $7825: $e9


    ld [$8061], sp                                ; $7826: $08 $61 $80
    db $e4                                        ; $7829: $e4
    cp [hl]                                       ; $782a: $be
    ld h, b                                       ; $782b: $60
    ld a, [hl-]                                   ; $782c: $3a
    ld d, l                                       ; $782d: $55
    ld [hl-], a                                   ; $782e: $32
    ret nz                                        ; $782f: $c0

jr_071_7830:
    pop hl                                        ; $7830: $e1
    ld d, d                                       ; $7831: $52
    ld [hl], e                                    ; $7832: $73
    ld h, d                                       ; $7833: $62
    ld l, e                                       ; $7834: $6b
    and c                                         ; $7835: $a1
    ld e, b                                       ; $7836: $58
    ld b, h                                       ; $7837: $44
    add l                                         ; $7838: $85
    ld h, b                                       ; $7839: $60

jr_071_783a:
    ld [hl], c                                    ; $783a: $71
    add b                                         ; $783b: $80
    ld sp, $ac06                                  ; $783c: $31 $06 $ac
    inc bc                                        ; $783f: $03
    jp z, Jump_000_0023                           ; $7840: $ca $23 $00

    ret z                                         ; $7843: $c8

    ld b, $40                                     ; $7844: $06 $40
    ld [$0061], sp                                ; $7846: $08 $61 $00
    db $e4                                        ; $7849: $e4
    ld a, l                                       ; $784a: $7d
    inc a                                         ; $784b: $3c
    dec a                                         ; $784c: $3d
    ld h, b                                       ; $784d: $60
    ld [hl], $53                                  ; $784e: $36 $53
    ld e, c                                       ; $7850: $59
    ld e, c                                       ; $7851: $59
    ld d, e                                       ; $7852: $53
    inc [hl]                                      ; $7853: $34
    ld h, c                                       ; $7854: $61
    dec sp                                        ; $7855: $3b
    dec [hl]                                      ; $7856: $35
    ld a, $6b                                     ; $7857: $3e $6b
    and c                                         ; $7859: $a1
    ld e, b                                       ; $785a: $58
    inc c                                         ; $785b: $0c
    ld c, $78                                     ; $785c: $0e $78
    ld hl, $817f                                  ; $785e: $21 $7f $81
    ld hl, sp+$3e                                 ; $7861: $f8 $3e
    ld h, a                                       ; $7863: $67
    add b                                         ; $7864: $80
    and h                                         ; $7865: $a4
    db $d3                                        ; $7866: $d3
    ld bc, $050e                                  ; $7867: $01 $0e $05
    scf                                           ; $786a: $37
    dec a                                         ; $786b: $3d
    dec a                                         ; $786c: $3d
    db $fd                                        ; $786d: $fd
    jr c, jr_071_7830                             ; $786e: $38 $c0

    jp Jump_000_3855                              ; $7870: $c3 $55 $38


    dec [hl]                                      ; $7873: $35
    dec [hl]                                      ; $7874: $35
    scf                                           ; $7875: $37
    ld a, [hl-]                                   ; $7876: $3a
    rst $38                                       ; $7877: $ff

jr_071_7878:
    ld c, a                                       ; $7878: $4f
    ld c, c                                       ; $7879: $49
    ld c, c                                       ; $787a: $49
    ld e, d                                       ; $787b: $5a
    ld a, [hl-]                                   ; $787c: $3a
    scf                                           ; $787d: $37
    dec [hl]                                      ; $787e: $35
    dec [hl]                                      ; $787f: $35
    ld e, e                                       ; $7880: $5b
    dec sp                                        ; $7881: $3b
    add hl, sp                                    ; $7882: $39
    dec hl                                        ; $7883: $2b
    pop bc                                        ; $7884: $c1
    ld e, b                                       ; $7885: $58
    inc c                                         ; $7886: $0c
    ld a, l                                       ; $7887: $7d
    ld b, c                                       ; $7888: $41
    ld a, [hl-]                                   ; $7889: $3a
    ret nz                                        ; $788a: $c0

    rst $28                                       ; $788b: $ef
    cp h                                          ; $788c: $bc
    jp $8041                                      ; $788d: $c3 $41 $80


    and d                                         ; $7890: $a2
    scf                                           ; $7891: $37
    dec a                                         ; $7892: $3d
    scf                                           ; $7893: $37
    ld b, l                                       ; $7894: $45
    pop bc                                        ; $7895: $c1
    add e                                         ; $7896: $83
    ld d, l                                       ; $7897: $55
    ld l, b                                       ; $7898: $68
    ret nc                                        ; $7899: $d0

    ld h, b                                       ; $789a: $60
    ret nz                                        ; $789b: $c0

    ldh [$8b], a                                  ; $789c: $e0 $8b
    add b                                         ; $789e: $80
    ld a, [hl-]                                   ; $789f: $3a
    rst $30                                       ; $78a0: $f7

Jump_071_78a1:
    ldh [rSCX], a                                 ; $78a1: $e0 $43
    ld b, e                                       ; $78a3: $43
    inc sp                                        ; $78a4: $33
    jp nz, $5c3b                                  ; $78a5: $c2 $3b $5c

    dec bc                                        ; $78a8: $0b
    ld a, l                                       ; $78a9: $7d
    ld b, b                                       ; $78aa: $40
    ld h, [hl]                                    ; $78ab: $66
    ld b, h                                       ; $78ac: $44
    ld [$eb40], sp                                ; $78ad: $08 $40 $eb
    ld b, e                                       ; $78b0: $43
    ld h, $ee                                     ; $78b1: $26 $ee
    db $dd                                        ; $78b3: $dd
    ld b, b                                       ; $78b4: $40
    ld h, e                                       ; $78b5: $63
    ld h, [hl]                                    ; $78b6: $66
    jr c, jr_071_783a                             ; $78b7: $38 $81

    add d                                         ; $78b9: $82
    ld h, b                                       ; $78ba: $60
    ld e, l                                       ; $78bb: $5d
    ld c, h                                       ; $78bc: $4c
    rst $28                                       ; $78bd: $ef
    ld c, c                                       ; $78be: $49
    ld c, b                                       ; $78bf: $48
    scf                                           ; $78c0: $37
    jr c, jr_071_7878                             ; $78c1: $38 $b5

    and b                                         ; $78c3: $a0
    ld d, [hl]                                    ; $78c4: $56
    jr c, jr_071_78fe                             ; $78c5: $38 $37

    jp c, Jump_071_60f1                           ; $78c7: $da $f1 $60

    ld c, h                                       ; $78ca: $4c
    pop bc                                        ; $78cb: $c1
    and c                                         ; $78cc: $a1
    ld h, c                                       ; $78cd: $61
    ld e, h                                       ; $78ce: $5c
    cp h                                          ; $78cf: $bc
    ld b, c                                       ; $78d0: $41
    ld l, d                                       ; $78d1: $6a
    add hl, sp                                    ; $78d2: $39
    pop bc                                        ; $78d3: $c1

jr_071_78d4:
    ld [$29fe], sp                                ; $78d4: $08 $fe $29
    nop                                           ; $78d7: $00
    adc c                                         ; $78d8: $89
    nop                                           ; $78d9: $00
    ret nz                                        ; $78da: $c0

    ret nz                                        ; $78db: $c0

    and e                                         ; $78dc: $a3
    nop                                           ; $78dd: $00
    add d                                         ; $78de: $82
    ld h, b                                       ; $78df: $60
    ld c, h                                       ; $78e0: $4c
    or c                                          ; $78e1: $b1
    ld c, h                                       ; $78e2: $4c
    ret                                           ; $78e3: $c9


    ld h, c                                       ; $78e4: $61
    ld a, [$80e3]                                 ; $78e5: $fa $e3 $80
    add e                                         ; $78e8: $83
    ld a, [hl-]                                   ; $78e9: $3a

jr_071_78ea:
    ld l, c                                       ; $78ea: $69
    cp [hl]                                       ; $78eb: $be
    ld b, b                                       ; $78ec: $40
    add hl, sp                                    ; $78ed: $39
    ldh [$80], a                                  ; $78ee: $e0 $80
    db $e4                                        ; $78f0: $e4
    ret nz                                        ; $78f1: $c0

    add h                                         ; $78f2: $84
    add b                                         ; $78f3: $80
    ld h, a                                       ; $78f4: $67
    nop                                           ; $78f5: $00
    ret z                                         ; $78f6: $c8

    add b                                         ; $78f7: $80
    sub e                                         ; $78f8: $93
    ld b, d                                       ; $78f9: $42
    ld h, d                                       ; $78fa: $62
    halt                                          ; $78fb: $76
    rlca                                          ; $78fc: $07
    dec [hl]                                      ; $78fd: $35

jr_071_78fe:
    ld [hl], e                                    ; $78fe: $73
    ld l, [hl]                                    ; $78ff: $6e
    ld a, d                                       ; $7900: $7a
    pop bc                                        ; $7901: $c1
    nop                                           ; $7902: $00
    adc h                                         ; $7903: $8c
    add b                                         ; $7904: $80
    push hl                                       ; $7905: $e5
    ld c, b                                       ; $7906: $48
    ld hl, $a296                                  ; $7907: $21 $96 $a2
    ld b, d                                       ; $790a: $42
    ld b, b                                       ; $790b: $40
    sub e                                         ; $790c: $93
    ld b, b                                       ; $790d: $40
    jr z, @+$23                                   ; $790e: $28 $21

    ld a, a                                       ; $7910: $7f
    jr nz, jr_071_78d4                            ; $7911: $20 $c1

    adc a                                         ; $7913: $8f
    add b                                         ; $7914: $80
    ld h, e                                       ; $7915: $63
    add hl, sp                                    ; $7916: $39
    ld b, b                                       ; $7917: $40
    jp nz, $c050                                  ; $7918: $c2 $50 $c0

    add c                                         ; $791b: $81
    adc h                                         ; $791c: $8c
    add e                                         ; $791d: $83
    rst $38                                       ; $791e: $ff
    db $e4                                        ; $791f: $e4
    or [hl]                                       ; $7920: $b6
    add l                                         ; $7921: $85
    ld d, [hl]                                    ; $7922: $56
    ldh [$e2], a                                  ; $7923: $e0 $e2
    add hl, sp                                    ; $7925: $39
    ld bc, $6cc4                                  ; $7926: $01 $c4 $6c
    ld b, c                                       ; $7929: $41
    adc c                                         ; $792a: $89
    halt                                          ; $792b: $76
    inc bc                                        ; $792c: $03
    ld b, $45                                     ; $792d: $06 $45
    adc c                                         ; $792f: $89
    jr nz, jr_071_7967                            ; $7930: $20 $35

    add hl, sp                                    ; $7932: $39
    ret nz                                        ; $7933: $c0

    ld h, h                                       ; $7934: $64
    xor c                                         ; $7935: $a9
    ld d, d                                       ; $7936: $52
    adc h                                         ; $7937: $8c
    ld b, c                                       ; $7938: $41
    ld a, a                                       ; $7939: $7f
    ld h, d                                       ; $793a: $62
    ld c, b                                       ; $793b: $48
    or [hl]                                       ; $793c: $b6
    add h                                         ; $793d: $84
    ld e, d                                       ; $793e: $5a
    xor d                                         ; $793f: $aa
    jr nz, jr_071_7977                            ; $7940: $20 $35

    or b                                          ; $7942: $b0
    nop                                           ; $7943: $00
    jr nz, @+$01                                  ; $7944: $20 $ff

    dec h                                         ; $7946: $25
    add b                                         ; $7947: $80
    jr z, jr_071_79c9                             ; $7948: $28 $7f

    jp nz, Jump_000_050e                          ; $794a: $c2 $0e $05

    ld c, e                                       ; $794d: $4b
    and b                                         ; $794e: $a0
    dec [hl]                                      ; $794f: $35
    db $dd                                        ; $7950: $dd
    ld a, $80                                     ; $7951: $3e $80
    ld h, c                                       ; $7953: $61
    ld d, a                                       ; $7954: $57
    ld d, a                                       ; $7955: $57
    ld d, d                                       ; $7956: $52
    adc h                                         ; $7957: $8c
    ld b, b                                       ; $7958: $40
    ld h, b                                       ; $7959: $60
    ld e, l                                       ; $795a: $5d
    inc a                                         ; $795b: $3c
    rst $38                                       ; $795c: $ff
    ldh [$85], a                                  ; $795d: $e0 $85
    ld b, b                                       ; $795f: $40
    ld d, d                                       ; $7960: $52
    ld d, d                                       ; $7961: $52
    ld d, a                                       ; $7962: $57
    ld d, a                                       ; $7963: $57
    ret nz                                        ; $7964: $c0

    ld b, c                                       ; $7965: $41
    and c                                         ; $7966: $a1

jr_071_7967:
    ld [c], a                                     ; $7967: $e2
    jr c, jr_071_78ea                             ; $7968: $38 $80

    ld [bc], a                                    ; $796a: $02
    ld b, c                                       ; $796b: $41
    ld h, [hl]                                    ; $796c: $66
    add b                                         ; $796d: $80
    ld l, c                                       ; $796e: $69
    sbc c                                         ; $796f: $99
    ld b, $45                                     ; $7970: $06 $45
    rst $00                                       ; $7972: $c7
    nop                                           ; $7973: $00
    ret nz                                        ; $7974: $c0

    pop hl                                        ; $7975: $e1
    and e                                         ; $7976: $a3

jr_071_7977:
    ld e, d                                       ; $7977: $5a
    ld c, b                                       ; $7978: $48
    ld a, [bc]                                    ; $7979: $0a
    ld h, d                                       ; $797a: $62
    ret nz                                        ; $797b: $c0

    push hl                                       ; $797c: $e5
    rst $30                                       ; $797d: $f7
    ld b, b                                       ; $797e: $40
    ld c, b                                       ; $797f: $48
    ld a, [hl+]                                   ; $7980: $2a
    ld h, b                                       ; $7981: $60
    ld d, l                                       ; $7982: $55
    rrca                                          ; $7983: $0f
    inc a                                         ; $7984: $3c
    dec [hl]                                      ; $7985: $35
    jr c, @+$39                                   ; $7986: $38 $37

    jp nz, $c160                                  ; $7988: $c2 $60 $c1

    ld h, e                                       ; $798b: $63
    cp a                                          ; $798c: $bf
    inc l                                         ; $798d: $2c
    add b                                         ; $798e: $80
    and b                                         ; $798f: $a0
    pop bc                                        ; $7990: $c1
    sbc c                                         ; $7991: $99
    ld h, d                                       ; $7992: $62
    and b                                         ; $7993: $a0
    and b                                         ; $7994: $a0
    and b                                         ; $7995: $a0
    ret nz                                        ; $7996: $c0

    ld b, b                                       ; $7997: $40
    adc d                                         ; $7998: $8a
    add b                                         ; $7999: $80
    ei                                            ; $799a: $fb
    ld c, h                                       ; $799b: $4c
    ld h, b                                       ; $799c: $60
    ld e, l                                       ; $799d: $5d
    rla                                           ; $799e: $17
    ld h, c                                       ; $799f: $61
    ld d, d                                       ; $79a0: $52
    add hl, sp                                    ; $79a1: $39
    dec hl                                        ; $79a2: $2b
    jr nz, jr_071_79ea                            ; $79a3: $20 $45

    add d                                         ; $79a5: $82
    and h                                         ; $79a6: $a4
    nop                                           ; $79a7: $00
    ld b, [hl]                                    ; $79a8: $46
    add b                                         ; $79a9: $80
    ld h, a                                       ; $79aa: $67
    ld [hl], $40                                  ; $79ab: $36 $40
    jr nz, jr_071_79b3                            ; $79ad: $20 $04

    inc bc                                        ; $79af: $03
    ld d, $20                                     ; $79b0: $16 $20
    ld b, l                                       ; $79b2: $45

jr_071_79b3:
    ld b, a                                       ; $79b3: $47
    cp a                                          ; $79b4: $bf
    ld d, d                                       ; $79b5: $52
    ld a, [$8760]                                 ; $79b6: $fa $60 $87
    scf                                           ; $79b9: $37
    jr c, @+$3d                                   ; $79ba: $38 $3b

    ld a, a                                       ; $79bc: $7f
    pop hl                                        ; $79bd: $e1
    jr z, jr_071_79c2                             ; $79be: $28 $02

    nop                                           ; $79c0: $00
    ld b, a                                       ; $79c1: $47

jr_071_79c2:
    add b                                         ; $79c2: $80
    add [hl]                                      ; $79c3: $86
    rrca                                          ; $79c4: $0f
    ld [hl+], a                                   ; $79c5: $22
    ld h, d                                       ; $79c6: $62
    ld h, b                                       ; $79c7: $60
    dec c                                         ; $79c8: $0d

jr_071_79c9:
    ld a, a                                       ; $79c9: $7f
    jr nz, @-$78                                  ; $79ca: $20 $86

    ld l, b                                       ; $79cc: $68
    ld [hl], l                                    ; $79cd: $75
    ld b, a                                       ; $79ce: $47
    ld d, [hl]                                    ; $79cf: $56
    jp nz, $b6e0                                  ; $79d0: $c2 $e0 $b6

    add c                                         ; $79d3: $81
    ld h, b                                       ; $79d4: $60
    rst $38                                       ; $79d5: $ff
    ret nz                                        ; $79d6: $c0

    ld d, h                                       ; $79d7: $54
    and c                                         ; $79d8: $a1
    ccf                                           ; $79d9: $3f
    ld b, $80                                     ; $79da: $06 $80
    ld h, a                                       ; $79dc: $67
    add d                                         ; $79dd: $82
    inc bc                                        ; $79de: $03
    sbc c                                         ; $79df: $99
    sbc e                                         ; $79e0: $9b
    ld a, c                                       ; $79e1: $79
    ld b, b                                       ; $79e2: $40
    inc b                                         ; $79e3: $04
    add [hl]                                      ; $79e4: $86
    ld h, l                                       ; $79e5: $65
    ld [hl], $48                                  ; $79e6: $36 $48
    ld d, l                                       ; $79e8: $55
    and h                                         ; $79e9: $a4

jr_071_79ea:
    pop bc                                        ; $79ea: $c1
    ld [hl], l                                    ; $79eb: $75
    add c                                         ; $79ec: $81
    ccf                                           ; $79ed: $3f
    ld bc, $4880                                  ; $79ee: $01 $80 $48
    scf                                           ; $79f1: $37
    ld [hl+], a                                   ; $79f2: $22

jr_071_79f3:
    ld [hl+], a                                   ; $79f3: $22
    ccf                                           ; $79f4: $3f
    ld b, d                                       ; $79f5: $42
    ld b, $41                                     ; $79f6: $06 $41
    ld hl, $8077                                  ; $79f8: $21 $77 $80
    sub b                                         ; $79fb: $90
    nop                                           ; $79fc: $00
    ld d, l                                       ; $79fd: $55
    ld b, d                                       ; $79fe: $42
    ldh a, [rNR50]                                ; $79ff: $f0 $24
    pop bc                                        ; $7a01: $c1
    add b                                         ; $7a02: $80
    ld a, a                                       ; $7a03: $7f
    db $e4                                        ; $7a04: $e4
    ld a, $03                                     ; $7a05: $3e $03
    nop                                           ; $7a07: $00
    adc c                                         ; $7a08: $89
    rst $38                                       ; $7a09: $ff
    jr nz, jr_071_79f3                            ; $7a0a: $20 $e7

    jr nz, @+$64                                  ; $7a0c: $20 $62

    ld h, c                                       ; $7a0e: $61
    add e                                         ; $7a0f: $83
    ld bc, $c53f                                  ; $7a10: $01 $3f $c5
    ld b, l                                       ; $7a13: $45
    add d                                         ; $7a14: $82
    ld b, e                                       ; $7a15: $43
    ld d, a                                       ; $7a16: $57
    ld a, c                                       ; $7a17: $79
    ld b, c                                       ; $7a18: $41
    ld b, [hl]                                    ; $7a19: $46
    ret nz                                        ; $7a1a: $c0

    ld hl, sp-$20                                 ; $7a1b: $f8 $e0
    ld b, l                                       ; $7a1d: $45
    ld b, l                                       ; $7a1e: $45
    adc l                                         ; $7a1f: $8d
    ccf                                           ; $7a20: $3f
    ld b, b                                       ; $7a21: $40
    db $e4                                        ; $7a22: $e4
    dec [hl]                                      ; $7a23: $35
    ld a, [hl-]                                   ; $7a24: $3a
    ld a, a                                       ; $7a25: $7f
    jr nz, jr_071_7a28                            ; $7a26: $20 $00

jr_071_7a28:
    ld c, [hl]                                    ; $7a28: $4e
    add hl, hl                                    ; $7a29: $29
    ld h, b                                       ; $7a2a: $60
    inc c                                         ; $7a2b: $0c
    db $fc                                        ; $7a2c: $fc
    and h                                         ; $7a2d: $a4
    ld b, b                                       ; $7a2e: $40
    ld [bc], a                                    ; $7a2f: $02
    pop hl                                        ; $7a30: $e1
    ld [hl], $3b                                  ; $7a31: $36 $3b
    dec [hl]                                      ; $7a33: $35
    jr c, jr_071_7a73                             ; $7a34: $38 $3d

    scf                                           ; $7a36: $37
    rst $18                                       ; $7a37: $df
    ld e, e                                       ; $7a38: $5b
    ld d, e                                       ; $7a39: $53
    ld d, e                                       ; $7a3a: $53
    ld e, e                                       ; $7a3b: $5b
    ccf                                           ; $7a3c: $3f
    ldh a, [$60]                                  ; $7a3d: $f0 $60
    scf                                           ; $7a3f: $37
    ccf                                           ; $7a40: $3f
    rst $38                                       ; $7a41: $ff
    ld e, e                                       ; $7a42: $5b
    ld e, e                                       ; $7a43: $5b
    ld b, e                                       ; $7a44: $43
    inc bc                                        ; $7a45: $03

Jump_071_7a46:
    add hl, bc                                    ; $7a46: $09
    inc b                                         ; $7a47: $04
    rlca                                          ; $7a48: $07
    rlca                                          ; $7a49: $07

Jump_071_7a4a:
    dec bc                                        ; $7a4a: $0b
    inc b                                         ; $7a4b: $04
    inc bc                                        ; $7a4c: $03
    and $e0                                       ; $7a4d: $e6 $e0
    dec [hl]                                      ; $7a4f: $35
    cp [hl]                                       ; $7a50: $be
    ret nz                                        ; $7a51: $c0

    rst $38                                       ; $7a52: $ff
    pop bc                                        ; $7a53: $c1
    ccf                                           ; $7a54: $3f
    rst $00                                       ; $7a55: $c7
    rst $38                                       ; $7a56: $ff
    ld h, l                                       ; $7a57: $65
    jp nz, $c1c2                                  ; $7a58: $c2 $c2 $c1

    inc b                                         ; $7a5b: $04
    add d                                         ; $7a5c: $82
    ret nz                                        ; $7a5d: $c0

    sub b                                         ; $7a5e: $90
    ld h, d                                       ; $7a5f: $62
    inc bc                                        ; $7a60: $03
    ld h, b                                       ; $7a61: $60
    ret nc                                        ; $7a62: $d0

    pop bc                                        ; $7a63: $c1
    ld h, d                                       ; $7a64: $62
    ld h, e                                       ; $7a65: $63
    ld a, a                                       ; $7a66: $7f
    ld h, l                                       ; $7a67: $65
    ld h, [hl]                                    ; $7a68: $66
    dec [hl]                                      ; $7a69: $35
    jr c, @+$46                                   ; $7a6a: $38 $44

    dec b                                         ; $7a6c: $05
    db $10                                        ; $7a6d: $10
    ld hl, $7f81                                  ; $7a6e: $21 $81 $7f
    sbc b                                         ; $7a71: $98
    db $10                                        ; $7a72: $10

jr_071_7a73:
    dec b                                         ; $7a73: $05
    ld b, e                                       ; $7a74: $43
    ccf                                           ; $7a75: $3f
    ccf                                           ; $7a76: $3f
    ld b, e                                       ; $7a77: $43
    cp $20                                        ; $7a78: $fe $20
    inc [hl]                                      ; $7a7a: $34
    add b                                         ; $7a7b: $80
    add hl, bc                                    ; $7a7c: $09
    rst $38                                       ; $7a7d: $ff
    dec b                                         ; $7a7e: $05
    sbc b                                         ; $7a7f: $98
    ld b, [hl]                                    ; $7a80: $46
    pop hl                                        ; $7a81: $e1
    inc bc                                        ; $7a82: $03
    inc b                                         ; $7a83: $04
    ld a, l                                       ; $7a84: $7d
    and d                                         ; $7a85: $a2
    sbc c                                         ; $7a86: $99
    jp nz, Jump_071_4067                          ; $7a87: $c2 $67 $40

    dec [hl]                                      ; $7a8a: $35
    dec [hl]                                      ; $7a8b: $35
    ld [de], a                                    ; $7a8c: $12
    add b                                         ; $7a8d: $80
    cpl                                           ; $7a8e: $2f
    add b                                         ; $7a8f: $80
    dec [hl]                                      ; $7a90: $35
    ld b, b                                       ; $7a91: $40
    ret nz                                        ; $7a92: $c0

    pop hl                                        ; $7a93: $e1
    inc e                                         ; $7a94: $1c
    ld e, [hl]                                    ; $7a95: $5e
    ld h, b                                       ; $7a96: $60
    sbc $c0                                       ; $7a97: $de $c0
    rlca                                          ; $7a99: $07
    rlca                                          ; $7a9a: $07
    rlca                                          ; $7a9b: $07
    ld e, d                                       ; $7a9c: $5a
    pop hl                                        ; $7a9d: $e1
    ld c, d                                       ; $7a9e: $4a
    ld b, a                                       ; $7a9f: $47
    ccf                                           ; $7aa0: $3f
    ret                                           ; $7aa1: $c9


    ld hl, sp+$7c                                 ; $7aa2: $f8 $7c
    add e                                         ; $7aa4: $83
    sbc c                                         ; $7aa5: $99
    jp $2038                                      ; $7aa6: $c3 $38 $20


    ld [hl], $35                                  ; $7aa9: $36 $35
    ld l, e                                       ; $7aab: $6b
    ld l, h                                       ; $7aac: $6c
    dec [hl]                                      ; $7aad: $35
    ld a, [$8010]                                 ; $7aae: $fa $10 $80
    ld a, [hl-]                                   ; $7ab1: $3a
    adc d                                         ; $7ab2: $8a
    ld hl, $980d                                  ; $7ab3: $21 $0d $98
    sbc c                                         ; $7ab6: $99
    sbc d                                         ; $7ab7: $9a
    sbc c                                         ; $7ab8: $99
    ld [hl], b                                    ; $7ab9: $70
    add [hl]                                      ; $7aba: $86
    ld b, e                                       ; $7abb: $43
    ld b, h                                       ; $7abc: $44
    ld h, h                                       ; $7abd: $64
    add b                                         ; $7abe: $80
    and l                                         ; $7abf: $a5
    ld a, $09                                     ; $7ac0: $3e $09
    nop                                           ; $7ac2: $00
    ld bc, $5906                                  ; $7ac3: $01 $06 $59
    jp nz, $593c                                  ; $7ac6: $c2 $3c $59

    and c                                         ; $7ac9: $a1
    inc sp                                        ; $7aca: $33
    and b                                         ; $7acb: $a0
    ld l, [hl]                                    ; $7acc: $6e
    ld [hl], b                                    ; $7acd: $70
    ld [hl], c                                    ; $7ace: $71
    ld [hl], c                                    ; $7acf: $71
    adc a                                         ; $7ad0: $8f
    add c                                         ; $7ad1: $81
    ld h, [hl]                                    ; $7ad2: $66
    ld [c], a                                     ; $7ad3: $e2
    rlca                                          ; $7ad4: $07
    rlca                                          ; $7ad5: $07
    sbc c                                         ; $7ad6: $99
    rlca                                          ; $7ad7: $07
    add [hl]                                      ; $7ad8: $86
    ld b, h                                       ; $7ad9: $44
    call z, $c126                                 ; $7ada: $cc $26 $c1
    ld [c], a                                     ; $7add: $e2
    cp $a5                                        ; $7ade: $fe $a5
    ld a, h                                       ; $7ae0: $7c
    inc bc                                        ; $7ae1: $03
    ldh [$de], a                                  ; $7ae2: $e0 $de
    ld b, b                                       ; $7ae4: $40
    call z, $1ac0                                 ; $7ae5: $cc $c0 $1a
    jr nz, jr_071_7b1d                            ; $7ae8: $20 $33

    and e                                         ; $7aea: $a3
    or l                                          ; $7aeb: $b5
    db $e3                                        ; $7aec: $e3
    nop                                           ; $7aed: $00
    ld bc, $820d                                  ; $7aee: $01 $0d $82
    adc b                                         ; $7af1: $88
    ld b, b                                       ; $7af2: $40
    dec bc                                        ; $7af3: $0b
    add [hl]                                      ; $7af4: $86
    ld b, l                                       ; $7af5: $45
    dec c                                         ; $7af6: $0d
    call nz, $834a                                ; $7af7: $c4 $4a $83
    ld a, [hl]                                    ; $7afa: $7e
    dec h                                         ; $7afb: $25
    ei                                            ; $7afc: $fb
    ld b, l                                       ; $7afd: $45
    rrca                                          ; $7afe: $0f
    ld b, a                                       ; $7aff: $47
    inc b                                         ; $7b00: $04
    add hl, bc                                    ; $7b01: $09
    add hl, bc                                    ; $7b02: $09
    ld a, d                                       ; $7b03: $7a
    and b                                         ; $7b04: $a0
    ld sp, $cba1                                  ; $7b05: $31 $a1 $cb
    ldh [$37], a                                  ; $7b08: $e0 $37
    or l                                          ; $7b0a: $b5
    pop hl                                        ; $7b0b: $e1
    inc e                                         ; $7b0c: $1c
    and h                                         ; $7b0d: $a4
    ld h, b                                       ; $7b0e: $60
    ld c, $60                                     ; $7b0f: $0e $60
    dec c                                         ; $7b11: $0d
    rlca                                          ; $7b12: $07
    dec c                                         ; $7b13: $0d
    ld b, h                                       ; $7b14: $44
    db $e4                                        ; $7b15: $e4
    pop bc                                        ; $7b16: $c1
    jp hl                                         ; $7b17: $e9


    or l                                          ; $7b18: $b5
    jp $f330                                      ; $7b19: $c3 $30 $f3


    add [hl]                                      ; $7b1c: $86

jr_071_7b1d:
    cp b                                          ; $7b1d: $b8
    ld b, d                                       ; $7b1e: $42
    db $fc                                        ; $7b1f: $fc
    db $e3                                        ; $7b20: $e3
    db $db                                        ; $7b21: $db
    ld hl, $040d                                  ; $7b22: $21 $0d $04
    or l                                          ; $7b25: $b5
    pop hl                                        ; $7b26: $e1
    di                                            ; $7b27: $f3
    db $e4                                        ; $7b28: $e4
    nop                                           ; $7b29: $00
    ld c, c                                       ; $7b2a: $49
    and h                                         ; $7b2b: $a4
    ld b, h                                       ; $7b2c: $44
    push hl                                       ; $7b2d: $e5
    call z, $ae63                                 ; $7b2e: $cc $63 $ae
    db $eb                                        ; $7b31: $eb
    cpl                                           ; $7b32: $2f
    db $e3                                        ; $7b33: $e3
    ldh [$82], a                                  ; $7b34: $e0 $82
    ld [hl], l                                    ; $7b36: $75
    pop hl                                        ; $7b37: $e1
    inc c                                         ; $7b38: $0c
    ret nz                                        ; $7b39: $c0

    nop                                           ; $7b3a: $00
    ld [$4fc0], sp                                ; $7b3b: $08 $c0 $4f
    add d                                         ; $7b3e: $82
    ld c, $42                                     ; $7b3f: $0e $42
    push de                                       ; $7b41: $d5
    db $ed                                        ; $7b42: $ed
    ld c, e                                       ; $7b43: $4b
    ld h, c                                       ; $7b44: $61
    ldh a, [$c4]                                  ; $7b45: $f0 $c4
    ld a, [hl-]                                   ; $7b47: $3a
    and d                                         ; $7b48: $a2
    or b                                          ; $7b49: $b0
    inc hl                                        ; $7b4a: $23
    ld e, h                                       ; $7b4b: $5c
    cp h                                          ; $7b4c: $bc
    db $e3                                        ; $7b4d: $e3
    call c, Call_000_0820                         ; $7b4e: $dc $20 $08
    and h                                         ; $7b51: $a4
    ld h, h                                       ; $7b52: $64
    rst $38                                       ; $7b53: $ff
    ldh [$a5], a                                  ; $7b54: $e0 $a5
    ld d, c                                       ; $7b56: $51
    ld b, e                                       ; $7b57: $43
    add b                                         ; $7b58: $80
    jp c, $05e3                                   ; $7b59: $da $e3 $05

    jp hl                                         ; $7b5c: $e9


    ld c, [hl]                                    ; $7b5d: $4e

jr_071_7b5e:
    jp $e53e                                      ; $7b5e: $c3 $3e $e5


    cp a                                          ; $7b61: $bf
    db $e3                                        ; $7b62: $e3
    ld h, l                                       ; $7b63: $65
    push hl                                       ; $7b64: $e5
    ld b, c                                       ; $7b65: $41
    ld [c], a                                     ; $7b66: $e2
    ld b, $3f                                     ; $7b67: $06 $3f
    ld l, c                                       ; $7b69: $69
    and e                                         ; $7b6a: $a3
    dec [hl]                                      ; $7b6b: $35
    dec [hl]                                      ; $7b6c: $35
    and e                                         ; $7b6d: $a3
    ld l, d                                       ; $7b6e: $6a
    ld de, $de25                                  ; $7b6f: $11 $25 $de
    push hl                                       ; $7b72: $e5
    jr nz, jr_071_7bcd                            ; $7b73: $20 $58

    push hl                                       ; $7b75: $e5
    jr z, jr_071_7b5e                             ; $7b76: $28 $e6

    ld sp, $bd83                                  ; $7b78: $31 $83 $bd
    jp hl                                         ; $7b7b: $e9


    or c                                          ; $7b7c: $b1
    ld h, e                                       ; $7b7d: $63
    ld b, $31                                     ; $7b7e: $06 $31
    ld b, b                                       ; $7b80: $40
    cpl                                           ; $7b81: $2f
    ld b, b                                       ; $7b82: $40
    add b                                         ; $7b83: $80
    ld d, c                                       ; $7b84: $51
    and [hl]                                      ; $7b85: $a6
    pop bc                                        ; $7b86: $c1
    ld [$c3dd], a                                 ; $7b87: $ea $dd $c3
    ld c, d                                       ; $7b8a: $4a
    ld b, b                                       ; $7b8b: $40
    cp a                                          ; $7b8c: $bf
    jp hl                                         ; $7b8d: $e9


    ld [hl], l                                    ; $7b8e: $75
    add $c1                                       ; $7b8f: $c6 $c1
    jp nz, Jump_000_1b08                          ; $7b91: $c2 $08 $1b

    ld l, e                                       ; $7b94: $6b
    ld [hl], c                                    ; $7b95: $71
    rst $38                                       ; $7b96: $ff
    ldh [$6d], a                                  ; $7b97: $e0 $6d
    ld [$c68b], sp                                ; $7b99: $08 $8b $c6
    call c, $83e4                                 ; $7b9c: $dc $e4 $83
    rst $20                                       ; $7b9f: $e7
    nop                                           ; $7ba0: $00
    cp a                                          ; $7ba1: $bf
    push hl                                       ; $7ba2: $e5
    db $e3                                        ; $7ba3: $e3
    jp $e6be                                      ; $7ba4: $c3 $be $e6


    dec [hl]                                      ; $7ba7: $35
    push bc                                       ; $7ba8: $c5
    ret nz                                        ; $7ba9: $c0

    call nz, $a751                                ; $7baa: $c4 $51 $a7
    pop bc                                        ; $7bad: $c1
    jp hl                                         ; $7bae: $e9


    jp nz, Jump_000_00e4                          ; $7baf: $c2 $e4 $00

    cp a                                          ; $7bb2: $bf
    jp hl                                         ; $7bb3: $e9


    or c                                          ; $7bb4: $b1
    ld b, [hl]                                    ; $7bb5: $46
    dec [hl]                                      ; $7bb6: $35
    call z, $aa51                                 ; $7bb7: $cc $51 $aa
    add e                                         ; $7bba: $83
    db $eb                                        ; $7bbb: $eb
    ld a, l                                       ; $7bbc: $7d
    rst $20                                       ; $7bbd: $e7
    ld e, a                                       ; $7bbe: $5f
    ret                                           ; $7bbf: $c9


    dec [hl]                                      ; $7bc0: $35
    add $00                                       ; $7bc1: $c6 $00
    xor d                                         ; $7bc3: $aa
    push hl                                       ; $7bc4: $e5
    pop bc                                        ; $7bc5: $c1
    rst $30                                       ; $7bc6: $f7
    nop                                           ; $7bc7: $00
    nop                                           ; $7bc8: $00
    nop                                           ; $7bc9: $00
    pop bc                                        ; $7bca: $c1
    nop                                           ; $7bcb: $00
    rst $38                                       ; $7bcc: $ff

jr_071_7bcd:
    rst $38                                       ; $7bcd: $ff
    rst $38                                       ; $7bce: $ff
    rst $38                                       ; $7bcf: $ff
    rst $38                                       ; $7bd0: $ff
    rst $38                                       ; $7bd1: $ff
    rst $38                                       ; $7bd2: $ff
    rst $38                                       ; $7bd3: $ff
    rst $38                                       ; $7bd4: $ff
    rst $38                                       ; $7bd5: $ff
    nop                                           ; $7bd6: $00
    nop                                           ; $7bd7: $00
    ld bc, $fe80                                  ; $7bd8: $01 $80 $fe
    ldh [rIE], a                                  ; $7bdb: $e0 $ff
    rst $38                                       ; $7bdd: $ff
    rst $38                                       ; $7bde: $ff
    rst $38                                       ; $7bdf: $ff
    rst $38                                       ; $7be0: $ff
    add sp, $00                                   ; $7be1: $e8 $00
    nop                                           ; $7be3: $00
    nop                                           ; $7be4: $00
    ld [bc], a                                    ; $7be5: $02
    nop                                           ; $7be6: $00
    add hl, de                                    ; $7be7: $19
    ld de, $0102                                  ; $7be8: $11 $02 $01
    dec h                                         ; $7beb: $25
    ld de, $0202                                  ; $7bec: $11 $02 $02
    ld a, [de]                                    ; $7bef: $1a
    ld [de], a                                    ; $7bf0: $12
    ld [bc], a                                    ; $7bf1: $02
    inc bc                                        ; $7bf2: $03
    inc h                                         ; $7bf3: $24
    ld [de], a                                    ; $7bf4: $12
    ld [bc], a                                    ; $7bf5: $02
    inc b                                         ; $7bf6: $04
    dec de                                        ; $7bf7: $1b
    inc de                                        ; $7bf8: $13
    ld [bc], a                                    ; $7bf9: $02
    dec b                                         ; $7bfa: $05
    inc hl                                        ; $7bfb: $23
    inc de                                        ; $7bfc: $13
    ld [bc], a                                    ; $7bfd: $02
    ld b, $1c                                     ; $7bfe: $06 $1c
    inc d                                         ; $7c00: $14
    ld [bc], a                                    ; $7c01: $02
    rlca                                          ; $7c02: $07
    dec e                                         ; $7c03: $1d
    inc d                                         ; $7c04: $14
    ld [bc], a                                    ; $7c05: $02
    ld [$141e], sp                                ; $7c06: $08 $1e $14
    ld [bc], a                                    ; $7c09: $02
    add hl, bc                                    ; $7c0a: $09
    rra                                           ; $7c0b: $1f
    inc d                                         ; $7c0c: $14
    ld [bc], a                                    ; $7c0d: $02
    ld a, [bc]                                    ; $7c0e: $0a
    jr nz, jr_071_7c25                            ; $7c0f: $20 $14

    ld [bc], a                                    ; $7c11: $02
    dec bc                                        ; $7c12: $0b
    ld hl, $0214                                  ; $7c13: $21 $14 $02
    inc c                                         ; $7c16: $0c
    ld [hl+], a                                   ; $7c17: $22
    inc d                                         ; $7c18: $14
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

jr_071_7c25:
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

Jump_071_7e00:
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

Call_071_7f08:
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

Call_071_7f30:
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

Jump_071_7f82:
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
