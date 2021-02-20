; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $058", ROMX[$4000], BANK[$58]

    db $d3                                        ; $4000: $d3
    ld b, h                                       ; $4001: $44
    ld h, e                                       ; $4002: $63
    ld c, c                                       ; $4003: $49
    ld l, a                                       ; $4004: $6f
    ld c, [hl]                                    ; $4005: $4e
    ld b, l                                       ; $4006: $45
    ld d, e                                       ; $4007: $53
    add hl, sp                                    ; $4008: $39
    ld e, b                                       ; $4009: $58
    ld [hl-], a                                   ; $400a: $32
    ld e, l                                       ; $400b: $5d
    ld c, b                                       ; $400c: $48
    ld h, c                                       ; $400d: $61
    add hl, bc                                    ; $400e: $09
    ld h, [hl]                                    ; $400f: $66
    ld b, $6b                                     ; $4010: $06 $6b
    db $f4                                        ; $4012: $f4
    ld l, a                                       ; $4013: $6f
    sbc a                                         ; $4014: $9f
    ld [hl], h                                    ; $4015: $74
    ld h, h                                       ; $4016: $64
    ld a, c                                       ; $4017: $79
    jr nz, jr_058_405a                            ; $4018: $20 $40

    ld d, b                                       ; $401a: $50
    ld b, b                                       ; $401b: $40
    ldh [rSCY], a                                 ; $401c: $e0 $42
    sbc a                                         ; $401e: $9f
    ld b, h                                       ; $401f: $44
    ldh a, [$03]                                  ; $4020: $f0 $03
    ld c, l                                       ; $4022: $4d
    rrca                                          ; $4023: $0f
    ld b, b                                       ; $4024: $40
    ld [bc], a                                    ; $4025: $02
    ret nz                                        ; $4026: $c0

    nop                                           ; $4027: $00
    ldh a, [$03]                                  ; $4028: $f0 $03
    push af                                       ; $402a: $f5

Jump_058_402b:
    inc bc                                        ; $402b: $03
    ld c, b                                       ; $402c: $48
    rrca                                          ; $402d: $0f
    ld b, b                                       ; $402e: $40
    ld [bc], a                                    ; $402f: $02
    ld e, a                                       ; $4030: $5f
    dec sp                                        ; $4031: $3b
    jr c, @+$10                                   ; $4032: $38 $0e

    ld sp, $4819                                  ; $4034: $31 $19 $48
    rrca                                          ; $4037: $0f
    ld [$0825], sp                                ; $4038: $08 $25 $08
    dec h                                         ; $403b: $25
    ld [$0825], sp                                ; $403c: $08 $25 $08
    dec h                                         ; $403f: $25
    ld [$0825], sp                                ; $4040: $08 $25 $08
    dec h                                         ; $4043: $25
    ld [$0825], sp                                ; $4044: $08 $25 $08
    dec h                                         ; $4047: $25
    ld [$0825], sp                                ; $4048: $08 $25 $08
    dec h                                         ; $404b: $25
    ld [$0825], sp                                ; $404c: $08 $25 $08
    dec h                                         ; $404f: $25
    db $ed                                        ; $4050: $ed
    inc c                                         ; $4051: $0c
    rst $38                                       ; $4052: $ff
    rst $20                                       ; $4053: $e7
    inc l                                         ; $4054: $2c
    dec bc                                        ; $4055: $0b
    rst $38                                       ; $4056: $ff
    pop hl                                        ; $4057: $e1
    ld c, e                                       ; $4058: $4b
    ld c, e                                       ; $4059: $4b

jr_058_405a:
    ld a, [bc]                                    ; $405a: $0a
    add [hl]                                      ; $405b: $86
    db $ec                                        ; $405c: $ec
    ldh [$4c], a                                  ; $405d: $e0 $4c
    ld c, h                                       ; $405f: $4c
    db $fd                                        ; $4060: $fd
    rst $20                                       ; $4061: $e7
    db $fc                                        ; $4062: $fc
    push hl                                       ; $4063: $e5
    or $e0                                        ; $4064: $f6 $e0
    cp $f7                                        ; $4066: $fe $f7
    ld c, h                                       ; $4068: $4c
    cp a                                          ; $4069: $bf
    ld c, h                                       ; $406a: $4c
    ld c, h                                       ; $406b: $4c
    ld l, h                                       ; $406c: $6c
    dec bc                                        ; $406d: $0b
    dec bc                                        ; $406e: $0b
    dec hl                                        ; $406f: $2b
    ret nz                                        ; $4070: $c0

    ldh [$0a], a                                  ; $4071: $e0 $0a
    add c                                         ; $4073: $81
    ld c, e                                       ; $4074: $4b
    pop bc                                        ; $4075: $c1
    db $e4                                        ; $4076: $e4
    db $ed                                        ; $4077: $ed
    ldh [$be], a                                  ; $4078: $e0 $be
    rst $38                                       ; $407a: $ff
    add b                                         ; $407b: $80
    push hl                                       ; $407c: $e5
    add h                                         ; $407d: $84
    ld [c], a                                     ; $407e: $e2
    cp a                                          ; $407f: $bf
    ldh [$2b], a                                  ; $4080: $e0 $2b
    nop                                           ; $4082: $00
    ld a, a                                       ; $4083: $7f
    ldh [$ad], a                                  ; $4084: $e0 $ad
    push hl                                       ; $4086: $e5

Call_058_4087:
    cp b                                          ; $4087: $b8
    push hl                                       ; $4088: $e5
    and d                                         ; $4089: $a2
    ld [c], a                                     ; $408a: $e2
    cp d                                          ; $408b: $ba
    db $e4                                        ; $408c: $e4
    jp nz, $befa                                  ; $408d: $c2 $fa $be

    db $e3                                        ; $4090: $e3
    ret nz                                        ; $4091: $c0

    db $e4                                        ; $4092: $e4
    add sp, $51                                   ; $4093: $e8 $51
    and $48                                       ; $4095: $e6 $48
    push hl                                       ; $4097: $e5
    pop bc                                        ; $4098: $c1
    push af                                       ; $4099: $f5
    ld l, h                                       ; $409a: $6c
    add e                                         ; $409b: $83
    ld [c], a                                     ; $409c: $e2
    ld l, e                                       ; $409d: $6b
    ld l, e                                       ; $409e: $6b
    ld c, e                                       ; $409f: $4b

Jump_058_40a0:
    db $10                                        ; $40a0: $10
    rst $38                                       ; $40a1: $ff
    ld [c], a                                     ; $40a2: $e2
    cp $c0                                        ; $40a3: $fe $c0
    add l                                         ; $40a5: $85
    pop hl                                        ; $40a6: $e1
    rst $38                                       ; $40a7: $ff
    ret c                                         ; $40a8: $d8

    inc l                                         ; $40a9: $2c
    ld sp, hl                                     ; $40aa: $f9
    ld [$e0c0], a                                 ; $40ab: $ea $c0 $e0
    jp nz, Jump_000_01e2                          ; $40ae: $c2 $e2 $01

    ld l, e                                       ; $40b1: $6b
    jp $c1c2                                      ; $40b2: $c3 $c2 $c1


    ret nz                                        ; $40b5: $c0

    ret nz                                        ; $40b6: $c0

    pop hl                                        ; $40b7: $e1
    ret nz                                        ; $40b8: $c0

    ret                                           ; $40b9: $c9


    ld b, c                                       ; $40ba: $41
    add sp, -$42                                  ; $40bb: $e8 $be
    ret nc                                        ; $40bd: $d0

    ret                                           ; $40be: $c9


    ret nz                                        ; $40bf: $c0

    ld bc, $c20c                                  ; $40c0: $01 $0c $c2
    push hl                                       ; $40c3: $e5
    add d                                         ; $40c4: $82
    jp nz, $e07f                                  ; $40c5: $c2 $7f $e0

    or c                                          ; $40c8: $b1
    jp $e512                                      ; $40c9: $c3 $12 $e5


    ld b, c                                       ; $40cc: $41
    add sp, -$40                                  ; $40cd: $e8 $c0
    di                                            ; $40cf: $f3
    nop                                           ; $40d0: $00
    ld b, l                                       ; $40d1: $45
    ldh [$88], a                                  ; $40d2: $e0 $88
    ret nz                                        ; $40d4: $c0

    cp a                                          ; $40d5: $bf
    push hl                                       ; $40d6: $e5
    dec sp                                        ; $40d7: $3b
    ret nz                                        ; $40d8: $c0

    ld d, d                                       ; $40d9: $52
    push bc                                       ; $40da: $c5
    ld c, a                                       ; $40db: $4f
    jp nz, $c14a                                  ; $40dc: $c2 $4a $c1

    adc b                                         ; $40df: $88
    db $db                                        ; $40e0: $db
    nop                                           ; $40e1: $00
    pop bc                                        ; $40e2: $c1
    ldh [$c0], a                                  ; $40e3: $e0 $c0
    rst $20                                       ; $40e5: $e7

Call_058_40e6:
    db $fc                                        ; $40e6: $fc
    and c                                         ; $40e7: $a1
    add [hl]                                      ; $40e8: $86
    call nz, $c6f9                                ; $40e9: $c4 $f9 $c6
    inc sp                                        ; $40ec: $33
    ret z                                         ; $40ed: $c8

    ld c, b                                       ; $40ee: $48
    ret nc                                        ; $40ef: $d0

    pop bc                                        ; $40f0: $c1
    pop hl                                        ; $40f1: $e1
    nop                                           ; $40f2: $00
    ret nz                                        ; $40f3: $c0

    db $ec                                        ; $40f4: $ec
    ret nz                                        ; $40f5: $c0

    and l                                         ; $40f6: $a5
    pop bc                                        ; $40f7: $c1
    and $fb                                       ; $40f8: $e6 $fb
    and [hl]                                      ; $40fa: $a6
    ret nz                                        ; $40fb: $c0

    pop af                                        ; $40fc: $f1
    dec bc                                        ; $40fd: $0b
    ret nz                                        ; $40fe: $c0

Jump_058_40ff:
    ret nz                                        ; $40ff: $c0

    xor $43                                       ; $4100: $ee $43
    push hl                                       ; $4102: $e5
    nop                                           ; $4103: $00
    rst $38                                       ; $4104: $ff
    push hl                                       ; $4105: $e5
    jp nz, $81c8                                  ; $4106: $c2 $c8 $81

    jp nz, $c683                                  ; $4109: $c2 $83 $c6

    ld c, h                                       ; $410c: $4c
    and d                                         ; $410d: $a2
    ret nz                                        ; $410e: $c0

    rst $00                                       ; $410f: $c7
    ld b, b                                       ; $4110: $40
    push hl                                       ; $4111: $e5
    ld a, a                                       ; $4112: $7f
    and a                                         ; $4113: $a7
    nop                                           ; $4114: $00
    or $a6                                        ; $4115: $f6 $a6
    ccf                                           ; $4117: $3f
    and e                                         ; $4118: $a3
    ld c, d                                       ; $4119: $4a
    add $c0                                       ; $411a: $c6 $c0
    db $ec                                        ; $411c: $ec
    ld b, b                                       ; $411d: $40
    jp nz, $a041                                  ; $411e: $c2 $41 $a0

    sub h                                         ; $4121: $94
    rst $00                                       ; $4122: $c7
    cp $c3                                        ; $4123: $fe $c3
    nop                                           ; $4125: $00
    cp c                                          ; $4126: $b9
    call nz, $c574                                ; $4127: $c4 $74 $c5
    ld sp, hl                                     ; $412a: $f9
    adc [hl]                                      ; $412b: $8e
    ld c, b                                       ; $412c: $48
    and e                                         ; $412d: $a3
    ld bc, $c0c4                                  ; $412e: $01 $c4 $c0
    add sp, $01                                   ; $4131: $e8 $01
    xor b                                         ; $4133: $a8
    nop                                           ; $4134: $00
    push hl                                       ; $4135: $e5
    inc b                                         ; $4136: $04
    ld [hl], h                                    ; $4137: $74
    call nz, $81f1                                ; $4138: $c4 $f1 $81
    inc l                                         ; $413b: $2c
    rst $38                                       ; $413c: $ff
    ldh [$08], a                                  ; $413d: $e0 $08
    and l                                         ; $413f: $a5
    ld b, h                                       ; $4140: $44
    jp nz, $e780                                  ; $4141: $c2 $80 $e7

    adc d                                         ; $4144: $8a
    db $e4                                        ; $4145: $e4
    nop                                           ; $4146: $00
    ld c, b                                       ; $4147: $48
    ld [$8aba], a                                 ; $4148: $ea $ba $8a
    xor c                                         ; $414b: $a9
    add c                                         ; $414c: $81
    ret nz                                        ; $414d: $c0

    ld [$e3bf], a                                 ; $414e: $ea $bf $e3
    add b                                         ; $4151: $80
    push hl                                       ; $4152: $e5
    inc de                                        ; $4153: $13
    db $e4                                        ; $4154: $e4
    ld c, b                                       ; $4155: $48
    ld [$ba00], a                                 ; $4156: $ea $00 $ba
    adc d                                         ; $4159: $8a
    dec d                                         ; $415a: $15
    add d                                         ; $415b: $82
    add c                                         ; $415c: $81
    push hl                                       ; $415d: $e5
    ld [$5ac2], a                                 ; $415e: $ea $c2 $5a
    ret z                                         ; $4161: $c8

    ld c, e                                       ; $4162: $4b
    add h                                         ; $4163: $84
    ld c, b                                       ; $4164: $48
    db $ed                                        ; $4165: $ed
    add hl, sp                                    ; $4166: $39
    push bc                                       ; $4167: $c5
    nop                                           ; $4168: $00
    xor c                                         ; $4169: $a9
    add l                                         ; $416a: $85
    ret nz                                        ; $416b: $c0

    rst $20                                       ; $416c: $e7
    add hl, de                                    ; $416d: $19
    xor l                                         ; $416e: $ad
    ld b, $88                                     ; $416f: $06 $88
    ld c, b                                       ; $4171: $48
    adc c                                         ; $4172: $89
    ei                                            ; $4173: $fb
    ld h, [hl]                                    ; $4174: $66
    ld a, d                                       ; $4175: $7a
    jp hl                                         ; $4176: $e9


    ld a, [hl+]                                   ; $4177: $2a
    xor d                                         ; $4178: $aa
    nop                                           ; $4179: $00
    and d                                         ; $417a: $a2
    ld l, a                                       ; $417b: $6f
    rlca                                          ; $417c: $07
    xor c                                         ; $417d: $a9
    ei                                            ; $417e: $fb
    ld h, [hl]                                    ; $417f: $66

Jump_058_4180:
    ld h, a                                       ; $4180: $67
    ld h, e                                       ; $4181: $63
    pop bc                                        ; $4182: $c1
    pop bc                                        ; $4183: $c1
    ld [hl], $cb                                  ; $4184: $36 $cb
    ld e, e                                       ; $4186: $5b
    ret                                           ; $4187: $c9


    xor $ee                                       ; $4188: $ee $ee
    nop                                           ; $418a: $00
    ld a, [c]                                     ; $418b: $f2
    ld l, d                                       ; $418c: $6a
    add b                                         ; $418d: $80
    call nz, $8439                                ; $418e: $c4 $39 $84
    and d                                         ; $4191: $a2
    add $19                                       ; $4192: $c6 $19
    and [hl]                                      ; $4194: $a6
    xor $ef                                       ; $4195: $ee $ef
    nop                                           ; $4197: $00
    jp hl                                         ; $4198: $e9


    cp a                                          ; $4199: $bf
    rst $08                                       ; $419a: $cf
    nop                                           ; $419b: $00
    add hl, de                                    ; $419c: $19
    xor h                                         ; $419d: $ac
    cp $e4                                        ; $419e: $fe $e4
    rlca                                          ; $41a0: $07
    xor h                                         ; $41a1: $ac
    ld [hl], l                                    ; $41a2: $75
    xor c                                         ; $41a3: $a9
    ld a, a                                       ; $41a4: $7f
    push hl                                       ; $41a5: $e5
    ld l, e                                       ; $41a6: $6b

Jump_058_41a7:
    ld h, a                                       ; $41a7: $67
    add hl, de                                    ; $41a8: $19

Jump_058_41a9:
    xor c                                         ; $41a9: $a9
    or l                                          ; $41aa: $b5
    ret                                           ; $41ab: $c9


    nop                                           ; $41ac: $00
    ret                                           ; $41ad: $c9


    ld h, [hl]                                    ; $41ae: $66
    pop bc                                        ; $41af: $c1
    ret                                           ; $41b0: $c9


    ld sp, hl                                     ; $41b1: $f9
    ld c, e                                       ; $41b2: $4b
    adc d                                         ; $41b3: $8a
    and $08                                       ; $41b4: $e6 $08
    db $eb                                        ; $41b6: $eb
    cp a                                          ; $41b7: $bf
    xor a                                         ; $41b8: $af
    ld a, e                                       ; $41b9: $7b
    ld l, c                                       ; $41ba: $69
    cp a                                          ; $41bb: $bf
    jp Jump_000_3f00                              ; $41bc: $c3 $00 $3f


    db $ed                                        ; $41bf: $ed
    add a                                         ; $41c0: $87
    xor d                                         ; $41c1: $aa
    xor $e6                                       ; $41c2: $ee $e6
    or e                                          ; $41c4: $b3
    ld d, e                                       ; $41c5: $53
    rst $38                                       ; $41c6: $ff
    xor d                                         ; $41c7: $aa
    ld e, d                                       ; $41c8: $5a
    and $00                                       ; $41c9: $e6 $00
    and $ee                                       ; $41cb: $e6 $ee
    ld [$7b00], a                                 ; $41cd: $ea $00 $7b
    ld l, c                                       ; $41d0: $69
    nop                                           ; $41d1: $00
    push hl                                       ; $41d2: $e5
    pop bc                                        ; $41d3: $c1
    cpl                                           ; $41d4: $2f
    inc e                                         ; $41d5: $1c
    ld b, l                                       ; $41d6: $45
    reti                                          ; $41d7: $d9


    ld b, l                                       ; $41d8: $45
    xor $ea                                       ; $41d9: $ee $ea
    ld a, e                                       ; $41db: $7b
    ld h, [hl]                                    ; $41dc: $66
    ld d, b                                       ; $41dd: $50
    and l                                         ; $41de: $a5
    nop                                           ; $41df: $00
    reti                                          ; $41e0: $d9


    or b                                          ; $41e1: $b0
    ld d, l                                       ; $41e2: $55
    xor $07                                       ; $41e3: $ee $07
    add [hl]                                      ; $41e5: $86
    ld h, d                                       ; $41e6: $62
    ret                                           ; $41e7: $c9


    sbc d                                         ; $41e8: $9a
    push bc                                       ; $41e9: $c5
    add a                                         ; $41ea: $87
    db $ec                                        ; $41eb: $ec
    nop                                           ; $41ec: $00
    db $ec                                        ; $41ed: $ec
    xor $e8                                       ; $41ee: $ee $e8
    nop                                           ; $41f0: $00
    ld h, d                                       ; $41f1: $62
    call z, Call_000_0dfa                         ; $41f2: $cc $fa $0d
    inc hl                                        ; $41f5: $23
    ld h, a                                       ; $41f6: $67
    rst $18                                       ; $41f7: $df
    ld b, $56                                     ; $41f8: $06 $56
    add a                                         ; $41fa: $87
    inc sp                                        ; $41fb: $33
    adc a                                         ; $41fc: $8f
    ld [hl], c                                    ; $41fd: $71
    ld c, [hl]                                    ; $41fe: $4e
    sbc l                                         ; $41ff: $9d
    ld c, c                                       ; $4200: $49
    nop                                           ; $4201: $00
    ld de, $c772                                  ; $4202: $11 $72 $c7
    add a                                         ; $4205: $87
    rst $00                                       ; $4206: $c7
    rst $00                                       ; $4207: $c7
    dec sp                                        ; $4208: $3b
    ld l, c                                       ; $4209: $69
    sbc l                                         ; $420a: $9d
    ld b, a                                       ; $420b: $47
    ret                                           ; $420c: $c9


    ld l, [hl]                                    ; $420d: $6e
    ld a, c                                       ; $420e: $79
    dec hl                                        ; $420f: $2b
    ld sp, $0064                                  ; $4210: $31 $64 $00
    add a                                         ; $4213: $87
    ld h, c                                       ; $4214: $61
    jp Jump_058_4180                              ; $4215: $c3 $80 $41


    jp z, Jump_000_2692                           ; $4218: $ca $92 $26

    ld de, $3c6c                                  ; $421b: $11 $6c $3c
    jr z, jr_058_4289                             ; $421e: $28 $69

    ld h, l                                       ; $4220: $65
    ld b, a                                       ; $4221: $47
    ld h, d                                       ; $4222: $62
    nop                                           ; $4223: $00
    ld b, c                                       ; $4224: $41
    ld h, a                                       ; $4225: $67
    ld d, l                                       ; $4226: $55
    ld l, c                                       ; $4227: $69
    ld de, $b86e                                  ; $4228: $11 $6e $b8
    xor b                                         ; $422b: $a8
    inc b                                         ; $422c: $04
    add [hl]                                      ; $422d: $86
    ld [$c162], sp                                ; $422e: $08 $62 $c1
    ld l, b                                       ; $4231: $68
    ld [hl+], a                                   ; $4232: $22
    db $eb                                        ; $4233: $eb
    nop                                           ; $4234: $00
    ld c, d                                       ; $4235: $4a
    ld l, h                                       ; $4236: $6c
    inc b                                         ; $4237: $04
    adc h                                         ; $4238: $8c
    cp l                                          ; $4239: $bd
    dec h                                         ; $423a: $25
    add c                                         ; $423b: $81
    add sp, $00                                   ; $423c: $e8 $00
    xor $81                                       ; $423e: $ee $81
    jp hl                                         ; $4240: $e9


    or a                                          ; $4241: $b7
    jp hl                                         ; $4242: $e9


    cp l                                          ; $4243: $bd
    rla                                           ; $4244: $17
    nop                                           ; $4245: $00
    sbc b                                         ; $4246: $98
    ld b, $60                                     ; $4247: $06 $60
    ld c, $3a                                     ; $4249: $0e $3a
    rst $20                                       ; $424b: $e7
    or l                                          ; $424c: $b5
    ld b, $3c                                     ; $424d: $06 $3c
    ld [hl+], a                                   ; $424f: $22
    add b                                         ; $4250: $80
    ld [$3329], a                                 ; $4251: $ea $29 $33
    ret nz                                        ; $4254: $c0

    rst $08                                       ; $4255: $cf
    nop                                           ; $4256: $00
    ccf                                           ; $4257: $3f
    add sp, -$40                                  ; $4258: $e8 $c0
    db $eb                                        ; $425a: $eb
    ld sp, hl                                     ; $425b: $f9
    ld hl, sp-$5b                                 ; $425c: $f8 $a5
    ld l, l                                       ; $425e: $6d
    ld b, c                                       ; $425f: $41
    pop af                                        ; $4260: $f1
    add e                                         ; $4261: $83
    ld a, [$6cb7]                                 ; $4262: $fa $b7 $6c
    ld d, h                                       ; $4265: $54
    ld a, [$8080]                                 ; $4266: $fa $80 $80
    ld d, d                                       ; $4269: $52
    and l                                         ; $426a: $a5
    ld l, h                                       ; $426b: $6c
    ld a, a                                       ; $426c: $7f
    rst $38                                       ; $426d: $ff
    ccf                                           ; $426e: $3f
    pop af                                        ; $426f: $f1
    ld a, [bc]                                    ; $4270: $0a
    adc b                                         ; $4271: $88
    ld a, a                                       ; $4272: $7f
    rst $38                                       ; $4273: $ff
    ld [$2c66], a                                 ; $4274: $ea $66 $2c
    nop                                           ; $4277: $00
    db $e4                                        ; $4278: $e4
    ld b, a                                       ; $4279: $47
    rlca                                          ; $427a: $07
    push bc                                       ; $427b: $c5
    add b                                         ; $427c: $80
    rst $38                                       ; $427d: $ff
    ret nz                                        ; $427e: $c0

    ld [$68a8], a                                 ; $427f: $ea $a8 $68
    cp l                                          ; $4282: $bd
    add hl, bc                                    ; $4283: $09
    rst $38                                       ; $4284: $ff
    rst $38                                       ; $4285: $ff
    ld a, a                                       ; $4286: $7f
    rlc b                                         ; $4287: $cb $00

jr_058_4289:
    add [hl]                                      ; $4289: $86
    ld b, $13                                     ; $428a: $06 $13
    call c, $d67f                                 ; $428c: $dc $7f $d6
    ret nz                                        ; $428f: $c0

    add sp, -$01                                  ; $4290: $e8 $ff
    rst $38                                       ; $4292: $ff
    di                                            ; $4293: $f3
    call nc, $bfcd                                ; $4294: $d4 $cd $bf
    rst $38                                       ; $4297: $ff
    rst $38                                       ; $4298: $ff
    nop                                           ; $4299: $00
    rst $38                                       ; $429a: $ff
    rst $38                                       ; $429b: $ff
    sub [hl]                                      ; $429c: $96
    rst $38                                       ; $429d: $ff
    sbc c                                         ; $429e: $99
    db $d3                                        ; $429f: $d3
    rst $38                                       ; $42a0: $ff
    rst $38                                       ; $42a1: $ff
    rst $38                                       ; $42a2: $ff
    rst $38                                       ; $42a3: $ff
    rst $38                                       ; $42a4: $ff
    rst $38                                       ; $42a5: $ff
    rst $38                                       ; $42a6: $ff
    rst $38                                       ; $42a7: $ff
    scf                                           ; $42a8: $37
    db $eb                                        ; $42a9: $eb
    nop                                           ; $42aa: $00
    call c, $ffff                                 ; $42ab: $dc $ff $ff
    rst $38                                       ; $42ae: $ff
    rst $38                                       ; $42af: $ff
    rst $38                                       ; $42b0: $ff
    rst $38                                       ; $42b1: $ff
    rst $38                                       ; $42b2: $ff
    rst $38                                       ; $42b3: $ff
    rst $38                                       ; $42b4: $ff
    rst $38                                       ; $42b5: $ff
    rst $38                                       ; $42b6: $ff
    rst $38                                       ; $42b7: $ff
    rst $38                                       ; $42b8: $ff
    rst $38                                       ; $42b9: $ff
    rst $38                                       ; $42ba: $ff
    nop                                           ; $42bb: $00
    rst $38                                       ; $42bc: $ff
    rst $38                                       ; $42bd: $ff
    rst $38                                       ; $42be: $ff
    rst $38                                       ; $42bf: $ff
    rst $38                                       ; $42c0: $ff
    rst $38                                       ; $42c1: $ff
    rst $38                                       ; $42c2: $ff

Jump_058_42c3:
    rst $38                                       ; $42c3: $ff
    rst $38                                       ; $42c4: $ff
    rst $38                                       ; $42c5: $ff
    rst $38                                       ; $42c6: $ff
    rst $38                                       ; $42c7: $ff
    rst $38                                       ; $42c8: $ff
    rst $38                                       ; $42c9: $ff
    rst $38                                       ; $42ca: $ff
    rst $38                                       ; $42cb: $ff
    nop                                           ; $42cc: $00
    rst $38                                       ; $42cd: $ff
    rst $38                                       ; $42ce: $ff
    rst $38                                       ; $42cf: $ff
    rst $38                                       ; $42d0: $ff
    nop                                           ; $42d1: $00
    cp a                                          ; $42d2: $bf
    rst $38                                       ; $42d3: $ff
    rst $38                                       ; $42d4: $ff
    rst $38                                       ; $42d5: $ff
    rst $38                                       ; $42d6: $ff
    rst $38                                       ; $42d7: $ff
    rst $38                                       ; $42d8: $ff
    rst $38                                       ; $42d9: $ff
    rst $38                                       ; $42da: $ff
    ld e, l                                       ; $42db: $5d
    inc sp                                        ; $42dc: $33
    nop                                           ; $42dd: $00
    nop                                           ; $42de: $00
    nop                                           ; $42df: $00
    ld a, l                                       ; $42e0: $7d
    jr nz, @+$01                                  ; $42e1: $20 $ff

    and $2d                                       ; $42e3: $e6 $2d
    daa                                           ; $42e5: $27
    ld sp, $5b61                                  ; $42e6: $31 $61 $5b
    rst $38                                       ; $42e9: $ff
    pop hl                                        ; $42ea: $e1
    db $e3                                        ; $42eb: $e3
    ld e, d                                       ; $42ec: $5a
    nop                                           ; $42ed: $00
    rst $38                                       ; $42ee: $ff
    rst $38                                       ; $42ef: $ff
    rst $20                                       ; $42f0: $e7
    and $c0                                       ; $42f1: $e6 $c0
    push hl                                       ; $42f3: $e5
    dec b                                         ; $42f4: $05
    dec b                                         ; $42f5: $05
    inc d                                         ; $42f6: $14
    cpl                                           ; $42f7: $2f
    add hl, hl                                    ; $42f8: $29
    ld sp, $6031                                  ; $42f9: $31 $31 $60
    pop bc                                        ; $42fc: $c1
    pop hl                                        ; $42fd: $e1
    ld e, e                                       ; $42fe: $5b
    jp z, $c0ff                                   ; $42ff: $ca $ff $c0

    db $ed                                        ; $4302: $ed
    scf                                           ; $4303: $37
    ld a, [bc]                                    ; $4304: $0a
    dec bc                                        ; $4305: $0b
    ld sp, $e3ff                                  ; $4306: $31 $ff $e3
    ld e, l                                       ; $4309: $5d
    ld e, h                                       ; $430a: $5c
    ld a, l                                       ; $430b: $7d
    ldh [$ca], a                                  ; $430c: $e0 $ca
    rst $38                                       ; $430e: $ff
    ld h, b                                       ; $430f: $60
    add b                                         ; $4310: $80
    db $eb                                        ; $4311: $eb
    jp nz, $bee6                                  ; $4312: $c2 $e6 $be

    db $e4                                        ; $4315: $e4
    jp z, Jump_058_40ff                           ; $4316: $ca $ff $40

    ld [$2627], a                                 ; $4319: $ea $27 $26
    add e                                         ; $431c: $83
    pop hl                                        ; $431d: $e1
    rst $38                                       ; $431e: $ff
    ld b, a                                       ; $431f: $47
    ld b, [hl]                                    ; $4320: $46
    ld d, l                                       ; $4321: $55
    ld d, h                                       ; $4322: $54
    ld d, l                                       ; $4323: $55
    ld d, h                                       ; $4324: $54
    ld b, [hl]                                    ; $4325: $46
    ld b, a                                       ; $4326: $47
    ld h, a                                       ; $4327: $67
    ld sp, $5f31                                  ; $4328: $31 $31 $5f
    jp z, Jump_000_00ff                           ; $432b: $ca $ff $00

    jp hl                                         ; $432e: $e9


    dec l                                         ; $432f: $2d
    rla                                           ; $4330: $17
    jp nz, $ffe2                                  ; $4331: $c2 $e2 $ff

    ld [hl], $6c                                  ; $4334: $36 $6c
    ld h, a                                       ; $4336: $67
    ld l, d                                       ; $4337: $6a
    ld l, l                                       ; $4338: $6d
    jr nc, jr_058_436b                            ; $4339: $30 $30

    ld [hl], $67                                  ; $433b: $36 $67
    ld c, c                                       ; $433d: $49
    ld sp, $ca5e                                  ; $433e: $31 $5e $ca
    rst $38                                       ; $4341: $ff
    add sp, -$19                                  ; $4342: $e8 $e7
    inc h                                         ; $4344: $24
    inc h                                         ; $4345: $24
    add c                                         ; $4346: $81
    ldh [$71], a                                  ; $4347: $e0 $71
    ld c, l                                       ; $4349: $4d
    jp nz, $ffe0                                  ; $434a: $c2 $e0 $ff

    ldh [$bf], a                                  ; $434d: $e0 $bf
    ld [c], a                                     ; $434f: $e2
    add hl, sp                                    ; $4350: $39
    ld sp, $ca31                                  ; $4351: $31 $31 $ca
    rst $38                                       ; $4354: $ff
    cp d                                          ; $4355: $ba
    add sp, -$19                                  ; $4356: $e8 $e7
    inc d                                         ; $4358: $14
    adc c                                         ; $4359: $89
    ret nz                                        ; $435a: $c0

    ld c, l                                       ; $435b: $4d
    ld [hl-], a                                   ; $435c: $32
    ld h, [hl]                                    ; $435d: $66
    pop bc                                        ; $435e: $c1
    pop hl                                        ; $435f: $e1
    ld l, h                                       ; $4360: $6c
    adc a                                         ; $4361: $8f
    ld l, h                                       ; $4362: $6c
    ld h, [hl]                                    ; $4363: $66
    ld l, c                                       ; $4364: $69
    ld l, e                                       ; $4365: $6b
    ret nz                                        ; $4366: $c0

    rst $38                                       ; $4367: $ff
    db $ec                                        ; $4368: $ec
    db $eb                                        ; $4369: $eb
    adc b                                         ; $436a: $88

jr_058_436b:
    ret nz                                        ; $436b: $c0

    ld c, l                                       ; $436c: $4d
    sbc e                                         ; $436d: $9b
    ld [hl-], a                                   ; $436e: $32
    ld l, c                                       ; $436f: $69
    ret nz                                        ; $4370: $c0

    rst $20                                       ; $4371: $e7
    ld c, b                                       ; $4372: $48
    ld c, c                                       ; $4373: $49
    ret nz                                        ; $4374: $c0

    rst $38                                       ; $4375: $ff
    ret nz                                        ; $4376: $c0

    db $eb                                        ; $4377: $eb
    ld b, e                                       ; $4378: $43
    jp Jump_058_6b32                              ; $4379: $c3 $32 $6b


    ret nz                                        ; $437c: $c0

    add sp, -$7f                                  ; $437d: $e8 $81
    ldh [$c0], a                                  ; $437f: $e0 $c0
    rst $38                                       ; $4381: $ff
    add b                                         ; $4382: $80
    ld [$3039], a                                 ; $4383: $ea $39 $30
    ldh a, [$c0]                                  ; $4386: $f0 $c0
    add sp, -$3f                                  ; $4388: $e8 $c1
    ret nz                                        ; $438a: $c0

    ret nz                                        ; $438b: $c0

    rst $38                                       ; $438c: $ff
    ld b, b                                       ; $438d: $40
    db $eb                                        ; $438e: $eb
    ld d, d                                       ; $438f: $52
    jr nc, @+$32                                  ; $4390: $30 $30

    ld l, l                                       ; $4392: $6d
    dec sp                                        ; $4393: $3b
    ld l, d                                       ; $4394: $6a
    ld h, a                                       ; $4395: $67
    ret nz                                        ; $4396: $c0

    ret nz                                        ; $4397: $c0

    ld [hl], $54                                  ; $4398: $36 $54
    ld d, l                                       ; $439a: $55
    ld b, c                                       ; $439b: $41
    pop bc                                        ; $439c: $c1
    ret nz                                        ; $439d: $c0

    rst $38                                       ; $439e: $ff
    db $fc                                        ; $439f: $fc
    ret nz                                        ; $43a0: $c0

    rst $28                                       ; $43a1: $ef
    cp a                                          ; $43a2: $bf
    ldh [rSCY], a                                 ; $43a3: $e0 $42
    ld l, [hl]                                    ; $43a5: $6e
    ld l, a                                       ; $43a6: $6f
    add b                                         ; $43a7: $80
    and b                                         ; $43a8: $a0
    ld sp, $311f                                  ; $43a9: $31 $1f $31
    add hl, hl                                    ; $43ac: $29
    inc d                                         ; $43ad: $14
    inc d                                         ; $43ae: $14
    inc d                                         ; $43af: $14
    jp z, $80ff                                   ; $43b0: $ca $ff $80

    db $ec                                        ; $43b3: $ec
    cp a                                          ; $43b4: $bf
    pop hl                                        ; $43b5: $e1
    rst $30                                       ; $43b6: $f7
    add e                                         ; $43b7: $83
    add b                                         ; $43b8: $80
    add b                                         ; $43b9: $80
    ret nz                                        ; $43ba: $c0

    pop hl                                        ; $43bb: $e1
    dec hl                                        ; $43bc: $2b
    db $10                                        ; $43bd: $10
    inc h                                         ; $43be: $24
    inc h                                         ; $43bf: $24
    ret c                                         ; $43c0: $d8

    jp z, Jump_000_00ff                           ; $43c1: $ca $ff $00

    db $eb                                        ; $43c4: $eb
    cp a                                          ; $43c5: $bf
    pop hl                                        ; $43c6: $e1
    ld [hl], a                                    ; $43c7: $77
    ld a, c                                       ; $43c8: $79
    ret nz                                        ; $43c9: $c0

    push hl                                       ; $43ca: $e5
    jr nz, jr_058_43ed                            ; $43cb: $20 $20

    inc d                                         ; $43cd: $14
    jp z, $80ff                                   ; $43ce: $ca $ff $80

    jp z, Jump_058_473a                           ; $43d1: $ca $3a $47

    and c                                         ; $43d4: $a1
    ld [hl], d                                    ; $43d5: $72
    add c                                         ; $43d6: $81
    ldh [$c0], a                                  ; $43d7: $e0 $c0
    rst $38                                       ; $43d9: $ff
    rst $38                                       ; $43da: $ff
    rst $38                                       ; $43db: $ff
    nop                                           ; $43dc: $00
    rst $38                                       ; $43dd: $ff
    rst $38                                       ; $43de: $ff
    rst $38                                       ; $43df: $ff
    rst $38                                       ; $43e0: $ff
    rst $38                                       ; $43e1: $ff
    rst $38                                       ; $43e2: $ff
    rst $38                                       ; $43e3: $ff
    rst $38                                       ; $43e4: $ff
    rst $38                                       ; $43e5: $ff
    rst $38                                       ; $43e6: $ff
    rst $38                                       ; $43e7: $ff
    rst $38                                       ; $43e8: $ff
    rst $38                                       ; $43e9: $ff
    rst $38                                       ; $43ea: $ff
    rst $38                                       ; $43eb: $ff
    rst $38                                       ; $43ec: $ff

jr_058_43ed:
    nop                                           ; $43ed: $00
    rst $38                                       ; $43ee: $ff
    rst $38                                       ; $43ef: $ff
    rst $38                                       ; $43f0: $ff
    rst $38                                       ; $43f1: $ff
    rst $38                                       ; $43f2: $ff
    rst $38                                       ; $43f3: $ff
    rst $38                                       ; $43f4: $ff
    rst $38                                       ; $43f5: $ff
    rst $38                                       ; $43f6: $ff
    rst $38                                       ; $43f7: $ff
    rst $38                                       ; $43f8: $ff
    rst $38                                       ; $43f9: $ff
    rst $38                                       ; $43fa: $ff
    rst $38                                       ; $43fb: $ff
    rst $38                                       ; $43fc: $ff
    rst $38                                       ; $43fd: $ff
    nop                                           ; $43fe: $00
    rst $38                                       ; $43ff: $ff
    rst $38                                       ; $4400: $ff
    rst $38                                       ; $4401: $ff
    rst $38                                       ; $4402: $ff
    rst $38                                       ; $4403: $ff
    rst $38                                       ; $4404: $ff
    rst $38                                       ; $4405: $ff
    rst $38                                       ; $4406: $ff
    rst $38                                       ; $4407: $ff
    rst $38                                       ; $4408: $ff
    rst $38                                       ; $4409: $ff
    rst $38                                       ; $440a: $ff
    rst $38                                       ; $440b: $ff
    rst $38                                       ; $440c: $ff
    rst $38                                       ; $440d: $ff
    rst $38                                       ; $440e: $ff
    nop                                           ; $440f: $00
    rst $38                                       ; $4410: $ff
    rst $38                                       ; $4411: $ff
    rst $38                                       ; $4412: $ff
    rst $38                                       ; $4413: $ff
    rst $38                                       ; $4414: $ff
    rst $38                                       ; $4415: $ff
    rst $38                                       ; $4416: $ff
    rst $38                                       ; $4417: $ff
    rst $38                                       ; $4418: $ff
    rst $38                                       ; $4419: $ff
    rst $38                                       ; $441a: $ff
    rst $38                                       ; $441b: $ff
    rst $38                                       ; $441c: $ff
    rst $38                                       ; $441d: $ff
    rst $38                                       ; $441e: $ff
    rst $38                                       ; $441f: $ff
    nop                                           ; $4420: $00
    rst $38                                       ; $4421: $ff
    rst $38                                       ; $4422: $ff
    rst $38                                       ; $4423: $ff
    rst $38                                       ; $4424: $ff
    rst $38                                       ; $4425: $ff
    rst $38                                       ; $4426: $ff
    rst $38                                       ; $4427: $ff
    rst $38                                       ; $4428: $ff
    rst $38                                       ; $4429: $ff
    rst $38                                       ; $442a: $ff
    rst $38                                       ; $442b: $ff
    rst $38                                       ; $442c: $ff
    rst $38                                       ; $442d: $ff
    rst $38                                       ; $442e: $ff
    rst $38                                       ; $442f: $ff
    rst $38                                       ; $4430: $ff
    nop                                           ; $4431: $00
    rst $38                                       ; $4432: $ff
    rst $38                                       ; $4433: $ff
    rst $38                                       ; $4434: $ff
    rst $38                                       ; $4435: $ff
    rst $38                                       ; $4436: $ff
    rst $38                                       ; $4437: $ff
    rst $38                                       ; $4438: $ff
    rst $38                                       ; $4439: $ff
    rst $38                                       ; $443a: $ff
    rst $38                                       ; $443b: $ff
    rst $38                                       ; $443c: $ff
    rst $38                                       ; $443d: $ff
    rst $38                                       ; $443e: $ff
    rst $38                                       ; $443f: $ff
    rst $38                                       ; $4440: $ff
    rst $38                                       ; $4441: $ff
    nop                                           ; $4442: $00
    rst $38                                       ; $4443: $ff
    rst $38                                       ; $4444: $ff
    rst $38                                       ; $4445: $ff
    rst $38                                       ; $4446: $ff
    rst $38                                       ; $4447: $ff
    rst $38                                       ; $4448: $ff
    rst $38                                       ; $4449: $ff
    rst $38                                       ; $444a: $ff
    rst $38                                       ; $444b: $ff
    rst $38                                       ; $444c: $ff
    rst $38                                       ; $444d: $ff
    rst $38                                       ; $444e: $ff
    rst $38                                       ; $444f: $ff
    rst $38                                       ; $4450: $ff
    rst $38                                       ; $4451: $ff
    rst $38                                       ; $4452: $ff
    nop                                           ; $4453: $00
    rst $38                                       ; $4454: $ff
    rst $38                                       ; $4455: $ff
    rst $38                                       ; $4456: $ff
    rst $38                                       ; $4457: $ff
    rst $38                                       ; $4458: $ff
    rst $38                                       ; $4459: $ff
    rst $38                                       ; $445a: $ff
    rst $38                                       ; $445b: $ff
    rst $38                                       ; $445c: $ff
    rst $38                                       ; $445d: $ff
    rst $38                                       ; $445e: $ff
    rst $38                                       ; $445f: $ff
    rst $38                                       ; $4460: $ff
    rst $38                                       ; $4461: $ff
    rst $38                                       ; $4462: $ff
    rst $38                                       ; $4463: $ff
    nop                                           ; $4464: $00
    rst $38                                       ; $4465: $ff
    rst $38                                       ; $4466: $ff
    rst $38                                       ; $4467: $ff
    rst $38                                       ; $4468: $ff
    rst $38                                       ; $4469: $ff
    rst $38                                       ; $446a: $ff
    rst $38                                       ; $446b: $ff
    rst $38                                       ; $446c: $ff
    rst $38                                       ; $446d: $ff
    rst $38                                       ; $446e: $ff
    rst $38                                       ; $446f: $ff
    rst $38                                       ; $4470: $ff
    rst $38                                       ; $4471: $ff
    rst $38                                       ; $4472: $ff
    rst $38                                       ; $4473: $ff
    rst $38                                       ; $4474: $ff
    nop                                           ; $4475: $00
    rst $38                                       ; $4476: $ff
    rst $38                                       ; $4477: $ff
    rst $38                                       ; $4478: $ff
    rst $38                                       ; $4479: $ff
    rst $38                                       ; $447a: $ff
    rst $38                                       ; $447b: $ff
    rst $38                                       ; $447c: $ff
    rst $38                                       ; $447d: $ff
    rst $38                                       ; $447e: $ff
    rst $38                                       ; $447f: $ff
    rst $38                                       ; $4480: $ff
    rst $38                                       ; $4481: $ff
    rst $38                                       ; $4482: $ff
    rst $38                                       ; $4483: $ff
    rst $38                                       ; $4484: $ff
    rst $38                                       ; $4485: $ff
    nop                                           ; $4486: $00
    rst $38                                       ; $4487: $ff
    rst $38                                       ; $4488: $ff
    rst $38                                       ; $4489: $ff
    rst $38                                       ; $448a: $ff
    rst $38                                       ; $448b: $ff
    rst $38                                       ; $448c: $ff
    rst $38                                       ; $448d: $ff
    rst $38                                       ; $448e: $ff
    rst $38                                       ; $448f: $ff
    rst $38                                       ; $4490: $ff
    rst $38                                       ; $4491: $ff
    rst $38                                       ; $4492: $ff
    rst $38                                       ; $4493: $ff
    rst $38                                       ; $4494: $ff
    rst $38                                       ; $4495: $ff
    rst $38                                       ; $4496: $ff
    nop                                           ; $4497: $00
    rst $38                                       ; $4498: $ff
    rst $38                                       ; $4499: $ff
    rst $38                                       ; $449a: $ff
    ei                                            ; $449b: $fb
    nop                                           ; $449c: $00
    nop                                           ; $449d: $00
    nop                                           ; $449e: $00
    and l                                         ; $449f: $a5
    nop                                           ; $44a0: $00
    rst $38                                       ; $44a1: $ff
    push hl                                       ; $44a2: $e5
    ld [hl-], a                                   ; $44a3: $32
    or $e6                                        ; $44a4: $f6 $e6
    rst $30                                       ; $44a6: $f7
    rst $20                                       ; $44a7: $e7
    dec [hl]                                      ; $44a8: $35
    db $ec                                        ; $44a9: $ec
    xor $37                                       ; $44aa: $ee $37
    db $ec                                        ; $44ac: $ec
    jp c, $c7f0                                   ; $44ad: $da $f0 $c7

    add sp, $33                                   ; $44b0: $e8 $33
    ld sp, $f2e0                                  ; $44b2: $31 $e0 $f2
    ld [hl], $30                                  ; $44b5: $36 $30
    scf                                           ; $44b7: $37
    cp a                                          ; $44b8: $bf
    ld h, $20                                     ; $44b9: $26 $20
    daa                                           ; $44bb: $27
    db $10                                        ; $44bc: $10
    ld d, $17                                     ; $44bd: $16 $17
    jp nz, Jump_000_34f6                          ; $44bf: $c2 $f6 $34

    rst $38                                       ; $44c2: $ff
    ld [hl], $32                                  ; $44c3: $36 $32
    jr nc, jr_058_44fe                            ; $44c5: $30 $37

    ld sp, $3133                                  ; $44c7: $31 $33 $31
    inc sp                                        ; $44ca: $33
    nop                                           ; $44cb: $00
    and b                                         ; $44cc: $a0
    ei                                            ; $44cd: $fb
    rst $38                                       ; $44ce: $ff
    rst $28                                       ; $44cf: $ef
    nop                                           ; $44d0: $00
    nop                                           ; $44d1: $00
    nop                                           ; $44d2: $00
    db $db                                        ; $44d3: $db
    ld b, h                                       ; $44d4: $44
    dec bc                                        ; $44d5: $0b
    ld b, l                                       ; $44d6: $45
    ld a, [hl]                                    ; $44d7: $7e
    ld b, a                                       ; $44d8: $47
    cpl                                           ; $44d9: $2f
    ld c, c                                       ; $44da: $49
    ldh a, [$03]                                  ; $44db: $f0 $03
    ld c, l                                       ; $44dd: $4d
    rrca                                          ; $44de: $0f
    ld b, b                                       ; $44df: $40
    ld [bc], a                                    ; $44e0: $02
    ret nz                                        ; $44e1: $c0

    nop                                           ; $44e2: $00
    ldh a, [$03]                                  ; $44e3: $f0 $03
    push af                                       ; $44e5: $f5
    inc bc                                        ; $44e6: $03
    ld c, b                                       ; $44e7: $48
    rrca                                          ; $44e8: $0f
    ld b, b                                       ; $44e9: $40
    ld [bc], a                                    ; $44ea: $02
    ld e, a                                       ; $44eb: $5f
    dec sp                                        ; $44ec: $3b
    jr c, @+$10                                   ; $44ed: $38 $0e

    ld sp, $4819                                  ; $44ef: $31 $19 $48
    rrca                                          ; $44f2: $0f
    ld [$0825], sp                                ; $44f3: $08 $25 $08
    dec h                                         ; $44f6: $25
    ld [$0825], sp                                ; $44f7: $08 $25 $08
    dec h                                         ; $44fa: $25
    ld [$0825], sp                                ; $44fb: $08 $25 $08

jr_058_44fe:
    dec h                                         ; $44fe: $25
    ld [$0825], sp                                ; $44ff: $08 $25 $08
    dec h                                         ; $4502: $25
    ld [$0825], sp                                ; $4503: $08 $25 $08
    dec h                                         ; $4506: $25
    ld [$0825], sp                                ; $4507: $08 $25 $08
    dec h                                         ; $450a: $25
    dec hl                                        ; $450b: $2b
    ld l, h                                       ; $450c: $6c
    inc c                                         ; $450d: $0c
    rst $38                                       ; $450e: $ff
    pop af                                        ; $450f: $f1
    ld c, h                                       ; $4510: $4c
    di                                            ; $4511: $f3
    ld [$f04c], a                                 ; $4512: $ea $4c $f0
    db $eb                                        ; $4515: $eb
    rst $38                                       ; $4516: $ff
    rst $38                                       ; $4517: $ff
    ldh [$ce], a                                  ; $4518: $e0 $ce
    ldh [$bc], a                                  ; $451a: $e0 $bc
    ld [c], a                                     ; $451c: $e2
    cp c                                          ; $451d: $b9
    ld [c], a                                     ; $451e: $e2
    ld hl, sp-$1f                                 ; $451f: $f8 $e1
    ret nz                                        ; $4521: $c0

    rst $30                                       ; $4522: $f7
    inc l                                         ; $4523: $2c
    inc l                                         ; $4524: $2c
    ld c, h                                       ; $4525: $4c
    db $10                                        ; $4526: $10
    rst $38                                       ; $4527: $ff
    db $ec                                        ; $4528: $ec
    adc [hl]                                      ; $4529: $8e
    db $e4                                        ; $452a: $e4
    db $fd                                        ; $452b: $fd
    db $e3                                        ; $452c: $e3
    halt                                          ; $452d: $76
    cp $0b                                        ; $452e: $fe $0b
    rst $38                                       ; $4530: $ff
    db $ec                                        ; $4531: $ec
    cp [hl]                                       ; $4532: $be
    ld [c], a                                     ; $4533: $e2
    ret nz                                        ; $4534: $c0

    push hl                                       ; $4535: $e5
    ld a, h                                       ; $4536: $7c
    cp c                                          ; $4537: $b9
    ld [c], a                                     ; $4538: $e2
    halt                                          ; $4539: $76
    ei                                            ; $453a: $fb
    dec bc                                        ; $453b: $0b
    dec bc                                        ; $453c: $0b
    ld l, e                                       ; $453d: $6b
    ld l, e                                       ; $453e: $6b
    ld c, e                                       ; $453f: $4b
    rst $38                                       ; $4540: $ff
    rst $20                                       ; $4541: $e7
    ld h, b                                       ; $4542: $60
    cp [hl]                                       ; $4543: $be
    ld [c], a                                     ; $4544: $e2
    ld a, [hl]                                    ; $4545: $7e
    and $bd                                       ; $4546: $e6 $bd
    push hl                                       ; $4548: $e5
    or e                                          ; $4549: $b3
    db $e3                                        ; $454a: $e3
    ld h, [hl]                                    ; $454b: $66
    db $e4                                        ; $454c: $e4
    inc l                                         ; $454d: $2c
    inc l                                         ; $454e: $2c
    ld b, [hl]                                    ; $454f: $46
    db $e4                                        ; $4550: $e4
    ld a, $80                                     ; $4551: $3e $80
    db $e3                                        ; $4553: $e3
    ld l, e                                       ; $4554: $6b
    ld l, e                                       ; $4555: $6b
    dec bc                                        ; $4556: $0b
    dec hl                                        ; $4557: $2b
    dec hl                                        ; $4558: $2b
    ld a, d                                       ; $4559: $7a
    db $e4                                        ; $455a: $e4
    or [hl]                                       ; $455b: $b6
    pop hl                                        ; $455c: $e1
    jr nz, @+$71                                  ; $455d: $20 $6f

    ldh [$3f], a                                  ; $455f: $e0 $3f
    db $e4                                        ; $4561: $e4
    ret nz                                        ; $4562: $c0

    jp hl                                         ; $4563: $e9


    cp l                                          ; $4564: $bd
    jp $c1b6                                      ; $4565: $c3 $b6 $c1


    inc l                                         ; $4568: $2c
    ret nz                                        ; $4569: $c0

    push hl                                       ; $456a: $e5
    add a                                         ; $456b: $87
    jp $6b07                                      ; $456c: $c3 $07 $6b


    ld l, e                                       ; $456f: $6b
    dec hl                                        ; $4570: $2b
    rst $38                                       ; $4571: $ff
    ldh [$3a], a                                  ; $4572: $e0 $3a
    rst $20                                       ; $4574: $e7
    ld a, h                                       ; $4575: $7c
    pop hl                                        ; $4576: $e1
    add c                                         ; $4577: $81
    call nz, $e4fa                                ; $4578: $c4 $fa $e4
    ld [$e576], sp                                ; $457b: $08 $76 $e5
    or [hl]                                       ; $457e: $b6
    call nz, $ebc1                                ; $457f: $c4 $c1 $eb
    inc c                                         ; $4582: $0c
    pop bc                                        ; $4583: $c1
    ld [c], a                                     ; $4584: $e2
    ret nz                                        ; $4585: $c0

    add sp, -$42                                  ; $4586: $e8 $be
    pop hl                                        ; $4588: $e1
    inc a                                         ; $4589: $3c
    rst $00                                       ; $458a: $c7
    sub b                                         ; $458b: $90
    ld hl, sp-$3a                                 ; $458c: $f8 $c6
    ld b, b                                       ; $458e: $40
    add sp, -$40                                  ; $458f: $e8 $c0
    call z, $e2c0                                 ; $4591: $cc $c0 $e2
    dec hl                                        ; $4594: $2b
    dec b                                         ; $4595: $05
    db $e3                                        ; $4596: $e3
    or e                                          ; $4597: $b3
    jp nz, Jump_058_402b                          ; $4598: $c2 $2b $40

    add b                                         ; $459b: $80
    ldh [rWY], a                                  ; $459c: $e0 $4a
    ld [$a8f1], a                                 ; $459e: $ea $f1 $a8
    push af                                       ; $45a1: $f5
    xor a                                         ; $45a2: $af
    ret nz                                        ; $45a3: $c0

    db $e3                                        ; $45a4: $e3
    ld a, d                                       ; $45a5: $7a
    ret z                                         ; $45a6: $c8

    ld l, e                                       ; $45a7: $6b
    nop                                           ; $45a8: $00
    pop hl                                        ; $45a9: $e1
    nop                                           ; $45aa: $00
    pop bc                                        ; $45ab: $c1
    rst $28                                       ; $45ac: $ef
    push af                                       ; $45ad: $f5
    or l                                          ; $45ae: $b5
    ret nz                                        ; $45af: $c0

    xor $c0                                       ; $45b0: $ee $c0
    jp nz, $c291                                  ; $45b2: $c2 $91 $c2

    pop af                                        ; $45b5: $f1
    and h                                         ; $45b6: $a4
    ld [hl], $c6                                  ; $45b7: $36 $c6
    ccf                                           ; $45b9: $3f
    jp hl                                         ; $45ba: $e9


    inc c                                         ; $45bb: $0c
    cp h                                          ; $45bc: $bc
    add $c0                                       ; $45bd: $c6 $c0
    rst $28                                       ; $45bf: $ef
    ld l, e                                       ; $45c0: $6b
    ld l, e                                       ; $45c1: $6b
    ld c, l                                       ; $45c2: $4d
    and [hl]                                      ; $45c3: $a6
    or h                                          ; $45c4: $b4
    and [hl]                                      ; $45c5: $a6
    or [hl]                                       ; $45c6: $b6
    and d                                         ; $45c7: $a2
    xor [hl]                                      ; $45c8: $ae
    and h                                         ; $45c9: $a4
    jr jr_058_45db                                ; $45ca: $18 $0f

    xor e                                         ; $45cc: $ab
    ld bc, $c2e4                                  ; $45cd: $01 $e4 $c2
    add sp, $0b                                   ; $45d0: $e8 $0b
    ld a, [bc]                                    ; $45d2: $0a
    ld c, l                                       ; $45d3: $4d
    and l                                         ; $45d4: $a5
    ld b, c                                       ; $45d5: $41
    and e                                         ; $45d6: $a3
    ld l, b                                       ; $45d7: $68
    and a                                         ; $45d8: $a7
    ld c, h                                       ; $45d9: $4c
    or b                                          ; $45da: $b0

jr_058_45db:
    and l                                         ; $45db: $a5
    call Call_058_4b89                            ; $45dc: $cd $89 $4b
    ld c, e                                       ; $45df: $4b
    pop bc                                        ; $45e0: $c1

Jump_058_45e1:
    jp $e7c2                                      ; $45e1: $c3 $c2 $e7


    ld a, [bc]                                    ; $45e4: $0a
    nop                                           ; $45e5: $00
    pop hl                                        ; $45e6: $e1
    nop                                           ; $45e7: $00
    ret nc                                        ; $45e8: $d0

    and h                                         ; $45e9: $a4
    adc l                                         ; $45ea: $8d
    and $af                                       ; $45eb: $e6 $af
    add h                                         ; $45ed: $84
    or l                                          ; $45ee: $b5
    add l                                         ; $45ef: $85
    ei                                            ; $45f0: $fb
    and b                                         ; $45f1: $a0
    cp d                                          ; $45f2: $ba
    and h                                         ; $45f3: $a4
    ret nz                                        ; $45f4: $c0

    db $e4                                        ; $45f5: $e4
    add h                                         ; $45f6: $84
    push hl                                       ; $45f7: $e5
    nop                                           ; $45f8: $00
    nop                                           ; $45f9: $00
    db $e4                                        ; $45fa: $e4
    adc a                                         ; $45fb: $8f
    and l                                         ; $45fc: $a5
    ld b, $c8                                     ; $45fd: $06 $c8
    or b                                          ; $45ff: $b0
    add h                                         ; $4600: $84
    ld l, b                                       ; $4601: $68
    push hl                                       ; $4602: $e5
    ret nz                                        ; $4603: $c0

    rst $20                                       ; $4604: $e7
    ld a, a                                       ; $4605: $7f
    ldh [$86], a                                  ; $4606: $e0 $86
    add $00                                       ; $4608: $c6 $00
    ld a, [c]                                     ; $460a: $f2
    add c                                         ; $460b: $81
    add b                                         ; $460c: $80
    ldh [rDMA], a                                 ; $460d: $e0 $46
    and h                                         ; $460f: $a4
    ld [bc], a                                    ; $4610: $02
    and h                                         ; $4611: $a4
    push af                                       ; $4612: $f5
    rst $20                                       ; $4613: $e7
    dec [hl]                                      ; $4614: $35
    add h                                         ; $4615: $84
    ret nz                                        ; $4616: $c0

    ld [c], a                                     ; $4617: $e2
    inc hl                                        ; $4618: $23
    adc b                                         ; $4619: $88
    nop                                           ; $461a: $00
    adc e                                         ; $461b: $8b
    add e                                         ; $461c: $83
    adc [hl]                                      ; $461d: $8e
    push hl                                       ; $461e: $e5
    ld d, $e6                                     ; $461f: $16 $e6
    ld b, b                                       ; $4621: $40
    and $81                                       ; $4622: $e6 $81
    call nz, $a878                                ; $4624: $c4 $78 $a8
    dec sp                                        ; $4627: $3b
    xor b                                         ; $4628: $a8
    push de                                       ; $4629: $d5
    ld [hl], l                                    ; $462a: $75
    nop                                           ; $462b: $00
    jp Jump_058_41a7                              ; $462c: $c3 $a7 $41


    and [hl]                                      ; $462f: $a6
    ld a, a                                       ; $4630: $7f
    and l                                         ; $4631: $a5
    db $fc                                        ; $4632: $fc
    adc c                                         ; $4633: $89
    push de                                       ; $4634: $d5
    ld [hl], l                                    ; $4635: $75
    push af                                       ; $4636: $f5
    db $f4                                        ; $4637: $f4
    ld [c], a                                     ; $4638: $e2
    ld h, e                                       ; $4639: $63
    ld a, l                                       ; $463a: $7d
    add b                                         ; $463b: $80
    nop                                           ; $463c: $00
    cp $e1                                        ; $463d: $fe $e1
    pop hl                                        ; $463f: $e1
    add a                                         ; $4640: $87
    ld e, a                                       ; $4641: $5f
    adc h                                         ; $4642: $8c
    push af                                       ; $4643: $f5
    pop af                                        ; $4644: $f1
    dec [hl]                                      ; $4645: $35
    ld h, l                                       ; $4646: $65
    adc a                                         ; $4647: $8f
    ld h, c                                       ; $4648: $61
    ld b, d                                       ; $4649: $42
    add d                                         ; $464a: $82
    ret nz                                        ; $464b: $c0

    db $eb                                        ; $464c: $eb
    nop                                           ; $464d: $00
    ld e, a                                       ; $464e: $5f
    adc d                                         ; $464f: $8a
    push af                                       ; $4650: $f5
    jp hl                                         ; $4651: $e9


    jp z, $e2a8                                   ; $4652: $ca $a8 $e2

    and $e1                                       ; $4655: $e6 $e1
    ld b, b                                       ; $4657: $40
    ld a, $ea                                     ; $4658: $3e $ea
    ld e, a                                       ; $465a: $5f
    adc l                                         ; $465b: $8d
    ld d, h                                       ; $465c: $54
    adc d                                         ; $465d: $8a
    nop                                           ; $465e: $00
    jp z, Jump_058_41a9                           ; $465f: $ca $a9 $41

    add e                                         ; $4662: $83
    pop hl                                        ; $4663: $e1
    ld b, c                                       ; $4664: $41
    ld a, [$5f66]                                 ; $4665: $fa $66 $5f
    sub c                                         ; $4668: $91
    ld d, h                                       ; $4669: $54
    adc h                                         ; $466a: $8c
    ld a, a                                       ; $466b: $7f
    ld b, a                                       ; $466c: $47
    ld a, [hl-]                                   ; $466d: $3a
    add $00                                       ; $466e: $c6 $00
    ld d, l                                       ; $4670: $55
    ld e, a                                       ; $4671: $5f
    inc d                                         ; $4672: $14
    rst $00                                       ; $4673: $c7
    ld a, a                                       ; $4674: $7f
    ld b, a                                       ; $4675: $47
    jp hl                                         ; $4676: $e9


    adc b                                         ; $4677: $88
    ld a, [hl-]                                   ; $4678: $3a
    ld h, l                                       ; $4679: $65
    ld d, l                                       ; $467a: $55
    ld d, d                                       ; $467b: $52
    rrca                                          ; $467c: $0f
    ld b, h                                       ; $467d: $44
    adc d                                         ; $467e: $8a
    ret z                                         ; $467f: $c8

    nop                                           ; $4680: $00
    ld [hl], $49                                  ; $4681: $36 $49
    ret nz                                        ; $4683: $c0

    jp $e7c0                                      ; $4684: $c3 $c0 $e7


    rst $18                                       ; $4687: $df
    ld d, b                                       ; $4688: $50
    ld e, b                                       ; $4689: $58
    rst $20                                       ; $468a: $e7
    ld b, d                                       ; $468b: $42
    ld h, a                                       ; $468c: $67
    and $26                                       ; $468d: $e6 $26
    or c                                          ; $468f: $b1
    ld a, [hl+]                                   ; $4690: $2a
    nop                                           ; $4691: $00
    rst $18                                       ; $4692: $df
    ld d, e                                       ; $4693: $53
    cp d                                          ; $4694: $ba
    db $e4                                        ; $4695: $e4
    dec c                                         ; $4696: $0d
    ret z                                         ; $4697: $c8

    ld a, b                                       ; $4698: $78
    ld [$2e61], a                                 ; $4699: $ea $61 $2e
    add b                                         ; $469c: $80
    adc $45                                       ; $469d: $ce $45
    call nz, $e82d                                ; $469f: $c4 $2d $e8
    nop                                           ; $46a2: $00
    ld [hl], h                                    ; $46a3: $74
    and $ab                                       ; $46a4: $e6 $ab
    inc l                                         ; $46a6: $2c
    rst $18                                       ; $46a7: $df
    ld d, d                                       ; $46a8: $52
    cp d                                          ; $46a9: $ba
    push hl                                       ; $46aa: $e5
    push af                                       ; $46ab: $f5
    push bc                                       ; $46ac: $c5
    ld b, c                                       ; $46ad: $41
    adc e                                         ; $46ae: $8b
    ld sp, $df29                                  ; $46af: $31 $29 $df
    ld d, e                                       ; $46b2: $53
    nop                                           ; $46b3: $00
    ld e, b                                       ; $46b4: $58
    ret z                                         ; $46b5: $c8

    ld b, c                                       ; $46b6: $41
    adc a                                         ; $46b7: $8f
    pop af                                        ; $46b8: $f1
    rrca                                          ; $46b9: $0f
    rst $18                                       ; $46ba: $df
    ld c, l                                       ; $46bb: $4d
    ld e, c                                       ; $46bc: $59
    add l                                         ; $46bd: $85
    ld b, c                                       ; $46be: $41
    sub e                                         ; $46bf: $93
    ld [bc], a                                    ; $46c0: $02
    ld l, b                                       ; $46c1: $68
    ld b, b                                       ; $46c2: $40
    xor d                                         ; $46c3: $aa
    nop                                           ; $46c4: $00
    ccf                                           ; $46c5: $3f
    db $eb                                        ; $46c6: $eb
    add b                                         ; $46c7: $80
    ret z                                         ; $46c8: $c8

    ld b, c                                       ; $46c9: $41
    adc h                                         ; $46ca: $8c
    inc bc                                        ; $46cb: $03
    and d                                         ; $46cc: $a2
    ld a, e                                       ; $46cd: $7b
    daa                                           ; $46ce: $27
    rst $18                                       ; $46cf: $df
    ld d, d                                       ; $46d0: $52
    ld [hl], h                                    ; $46d1: $74
    xor h                                         ; $46d2: $ac
    ld b, c                                       ; $46d3: $41
    adc d                                         ; $46d4: $8a
    nop                                           ; $46d5: $00
    ld b, c                                       ; $46d6: $41
    ld l, c                                       ; $46d7: $69
    rst $18                                       ; $46d8: $df
    ld d, e                                       ; $46d9: $53
    inc c                                         ; $46da: $0c
    ld l, b                                       ; $46db: $68
    ld b, c                                       ; $46dc: $41
    ld [hl-], a                                   ; $46dd: $32
    pop bc                                        ; $46de: $c1
    db $eb                                        ; $46df: $eb
    sbc [hl]                                      ; $46e0: $9e
    rst $10                                       ; $46e1: $d7
    ld b, c                                       ; $46e2: $41
    inc [hl]                                      ; $46e3: $34
    add c                                         ; $46e4: $81
    jp hl                                         ; $46e5: $e9


    nop                                           ; $46e6: $00
    rst $18                                       ; $46e7: $df
    ld d, e                                       ; $46e8: $53
    ld b, a                                       ; $46e9: $47
    dec hl                                        ; $46ea: $2b
    ld b, c                                       ; $46eb: $41
    jr c, jr_058_4743                             ; $46ec: $38 $55

    ld c, b                                       ; $46ee: $48
    sbc l                                         ; $46ef: $9d
    or [hl]                                       ; $46f0: $b6
    ld b, c                                       ; $46f1: $41
    ld l, $01                                     ; $46f2: $2e $01
    db $ec                                        ; $46f4: $ec
    rst $18                                       ; $46f5: $df
    ld d, b                                       ; $46f6: $50
    nop                                           ; $46f7: $00
    add l                                         ; $46f8: $85
    add [hl]                                      ; $46f9: $86
    ld h, d                                       ; $46fa: $62
    jp nc, $ee40                                  ; $46fb: $d2 $40 $ee

    sbc [hl]                                      ; $46fe: $9e
    rst $08                                       ; $46ff: $cf
    ret c                                         ; $4700: $d8

    add [hl]                                      ; $4701: $86
    ld b, c                                       ; $4702: $41
    inc a                                         ; $4703: $3c
    cp d                                          ; $4704: $ba

jr_058_4705:
    ld a, [$4502]                                 ; $4705: $fa $02 $45
    nop                                           ; $4708: $00
    ld b, c                                       ; $4709: $41
    jr c, jr_058_4705                             ; $470a: $38 $f9

    ld hl, sp-$22                                 ; $470c: $f8 $de
    ld [hl+], a                                   ; $470e: $22
    ld b, c                                       ; $470f: $41
    inc sp                                        ; $4710: $33
    rst $38                                       ; $4711: $ff
    rst $38                                       ; $4712: $ff
    ld h, d                                       ; $4713: $62
    reti                                          ; $4714: $d9


    rst $38                                       ; $4715: $ff
    rst $38                                       ; $4716: $ff
    add b                                         ; $4717: $80
    db $e4                                        ; $4718: $e4
    nop                                           ; $4719: $00
    ld b, c                                       ; $471a: $41
    inc [hl]                                      ; $471b: $34
    rst $38                                       ; $471c: $ff
    rst $38                                       ; $471d: $ff
    ld b, b                                       ; $471e: $40
    db $eb                                        ; $471f: $eb
    nop                                           ; $4720: $00
    xor a                                         ; $4721: $af
    rst $38                                       ; $4722: $ff
    rst $38                                       ; $4723: $ff
    ld h, d                                       ; $4724: $62
    db $db                                        ; $4725: $db
    rst $38                                       ; $4726: $ff
    rst $38                                       ; $4727: $ff
    ld d, d                                       ; $4728: $52
    add hl, hl                                    ; $4729: $29
    nop                                           ; $472a: $00
    ld bc, $ff29                                  ; $472b: $01 $29 $ff
    rst $38                                       ; $472e: $ff
    ld [hl], e                                    ; $472f: $73
    call nc, $898e                                ; $4730: $d4 $8e $89
    rst $38                                       ; $4733: $ff
    rst $38                                       ; $4734: $ff
    rst $38                                       ; $4735: $ff
    rst $38                                       ; $4736: $ff
    sub [hl]                                      ; $4737: $96
    rst $38                                       ; $4738: $ff
    rst $38                                       ; $4739: $ff

Jump_058_473a:
    rst $38                                       ; $473a: $ff
    nop                                           ; $473b: $00
    reti                                          ; $473c: $d9


    and a                                         ; $473d: $a7
    rst $38                                       ; $473e: $ff
    rst $38                                       ; $473f: $ff
    rst $38                                       ; $4740: $ff
    rst $38                                       ; $4741: $ff
    rst $38                                       ; $4742: $ff

jr_058_4743:
    rst $38                                       ; $4743: $ff
    rst $38                                       ; $4744: $ff
    rst $38                                       ; $4745: $ff
    scf                                           ; $4746: $37
    db $eb                                        ; $4747: $eb
    call c, $ffff                                 ; $4748: $dc $ff $ff
    rst $38                                       ; $474b: $ff
    nop                                           ; $474c: $00

jr_058_474d:
    rst $38                                       ; $474d: $ff
    rst $38                                       ; $474e: $ff
    rst $38                                       ; $474f: $ff
    rst $38                                       ; $4750: $ff
    rst $38                                       ; $4751: $ff
    rst $38                                       ; $4752: $ff
    rst $38                                       ; $4753: $ff
    rst $38                                       ; $4754: $ff
    rst $38                                       ; $4755: $ff
    rst $38                                       ; $4756: $ff
    rst $38                                       ; $4757: $ff
    rst $38                                       ; $4758: $ff
    rst $38                                       ; $4759: $ff
    rst $38                                       ; $475a: $ff
    rst $38                                       ; $475b: $ff
    rst $38                                       ; $475c: $ff
    nop                                           ; $475d: $00
    rst $38                                       ; $475e: $ff
    rst $38                                       ; $475f: $ff
    rst $38                                       ; $4760: $ff
    rst $38                                       ; $4761: $ff
    rst $38                                       ; $4762: $ff
    rst $38                                       ; $4763: $ff
    rst $38                                       ; $4764: $ff
    rst $38                                       ; $4765: $ff
    rst $38                                       ; $4766: $ff
    rst $38                                       ; $4767: $ff
    rst $38                                       ; $4768: $ff
    rst $38                                       ; $4769: $ff
    rst $38                                       ; $476a: $ff
    rst $38                                       ; $476b: $ff
    rst $38                                       ; $476c: $ff
    rst $38                                       ; $476d: $ff
    nop                                           ; $476e: $00
    nop                                           ; $476f: $00

jr_058_4770:
    cp a                                          ; $4770: $bf
    rst $38                                       ; $4771: $ff
    rst $38                                       ; $4772: $ff
    rst $38                                       ; $4773: $ff
    rst $38                                       ; $4774: $ff
    rst $38                                       ; $4775: $ff
    rst $38                                       ; $4776: $ff
    rst $38                                       ; $4777: $ff
    rst $38                                       ; $4778: $ff
    ld e, d                                       ; $4779: $5a
    ld [hl], e                                    ; $477a: $73
    nop                                           ; $477b: $00
    nop                                           ; $477c: $00
    nop                                           ; $477d: $00
    sub a                                         ; $477e: $97
    dec d                                         ; $477f: $15
    ld d, $20                                     ; $4780: $16 $20
    rst $38                                       ; $4782: $ff
    xor $00                                       ; $4783: $ee $00
    rst $38                                       ; $4785: $ff
    rst $38                                       ; $4786: $ff
    rst $20                                       ; $4787: $e7
    and $17                                       ; $4788: $e6 $17
    cp c                                          ; $478a: $b9
    jr z, jr_058_474d                             ; $478b: $28 $c0

    rst $38                                       ; $478d: $ff
    ld a, [$07f9]                                 ; $478e: $fa $f9 $07
    ld b, $05                                     ; $4791: $06 $05
    rst $38                                       ; $4793: $ff
    ld [$e824], a                                 ; $4794: $ea $24 $e8
    or b                                          ; $4797: $b0
    ldh [$ca], a                                  ; $4798: $e0 $ca
    rst $38                                       ; $479a: $ff
    add sp, -$19                                  ; $479b: $e8 $e7
    ld sp, $ecff                                  ; $479d: $31 $ff $ec
    ld de, $2112                                  ; $47a0: $11 $12 $21
    ld sp, hl                                     ; $47a3: $f9
    jr z, jr_058_4770                             ; $47a4: $28 $ca

    rst $38                                       ; $47a6: $ff
    ret nz                                        ; $47a7: $c0

    jp hl                                         ; $47a8: $e9


    ld c, l                                       ; $47a9: $4d
    ld a, [hl-]                                   ; $47aa: $3a
    ld d, h                                       ; $47ab: $54
    ld d, l                                       ; $47ac: $55
    ld d, h                                       ; $47ad: $54
    rst $38                                       ; $47ae: $ff
    ld d, l                                       ; $47af: $55
    ld d, l                                       ; $47b0: $55
    ld d, l                                       ; $47b1: $55
    ld d, h                                       ; $47b2: $54
    ld d, h                                       ; $47b3: $54
    ld d, h                                       ; $47b4: $54
    dec sp                                        ; $47b5: $3b
    ld b, a                                       ; $47b6: $47
    ld hl, sp-$42                                 ; $47b7: $f8 $be
    ld [c], a                                     ; $47b9: $e2
    jp z, $80ff                                   ; $47ba: $ca $ff $80

    add sp, $4d                                   ; $47bd: $e8 $4d
    ld [hl-], a                                   ; $47bf: $32
    jr nc, jr_058_482c                            ; $47c0: $30 $6a

    ld l, d                                       ; $47c2: $6a
    adc l                                         ; $47c3: $8d
    ld l, b                                       ; $47c4: $68
    rst $38                                       ; $47c5: $ff
    db $e3                                        ; $47c6: $e3
    jr nc, jr_058_47ff                            ; $47c7: $30 $36

    cp [hl]                                       ; $47c9: $be
    ld [c], a                                     ; $47ca: $e2
    jp z, $e8ff                                   ; $47cb: $ca $ff $e8

    rst $20                                       ; $47ce: $e7
    ld c, l                                       ; $47cf: $4d
    ld [hl], e                                    ; $47d0: $73
    ld [hl-], a                                   ; $47d1: $32
    ld l, d                                       ; $47d2: $6a
    rst $38                                       ; $47d3: $ff
    ldh [$c0], a                                  ; $47d4: $e0 $c0
    db $e4                                        ; $47d6: $e4
    ld l, b                                       ; $47d7: $68
    ld l, b                                       ; $47d8: $68
    ld l, h                                       ; $47d9: $6c
    cp [hl]                                       ; $47da: $be
    pop hl                                        ; $47db: $e1
    or h                                          ; $47dc: $b4
    jp z, $e8ff                                   ; $47dd: $ca $ff $e8

    rst $20                                       ; $47e0: $e7
    add hl, sp                                    ; $47e1: $39
    pop bc                                        ; $47e2: $c1
    pop hl                                        ; $47e3: $e1
    ld l, d                                       ; $47e4: $6a
    ld l, h                                       ; $47e5: $6c

Jump_058_47e6:
    rst $38                                       ; $47e6: $ff
    push hl                                       ; $47e7: $e5
    ld l, l                                       ; $47e8: $6d
    rst $08                                       ; $47e9: $cf
    ld l, l                                       ; $47ea: $6d
    ld l, l                                       ; $47eb: $6d
    ld [hl], $3c                                  ; $47ec: $36 $3c
    jp z, $e8ff                                   ; $47ee: $ca $ff $e8

    rst $20                                       ; $47f1: $e7
    ld d, e                                       ; $47f2: $53
    ld l, c                                       ; $47f3: $69
    xor [hl]                                      ; $47f4: $ae
    add b                                         ; $47f5: $80
    ldh [$6d], a                                  ; $47f6: $e0 $6d
    ld l, l                                       ; $47f8: $6d
    jr nc, @+$01                                  ; $47f9: $30 $ff

    ld [c], a                                     ; $47fb: $e2
    ld l, e                                       ; $47fc: $6b
    rst $38                                       ; $47fd: $ff
    pop hl                                        ; $47fe: $e1

Jump_058_47ff:
jr_058_47ff:
    ccf                                           ; $47ff: $3f
    inc a                                         ; $4800: $3c
    ret nz                                        ; $4801: $c0

    rst $38                                       ; $4802: $ff
    jp hl                                         ; $4803: $e9


    add sp, $52                                   ; $4804: $e8 $52
    ld l, c                                       ; $4806: $69
    ld l, c                                       ; $4807: $69
    ld l, c                                       ; $4808: $69
    pop bc                                        ; $4809: $c1
    push hl                                       ; $480a: $e5
    ret nz                                        ; $480b: $c0

    ld [c], a                                     ; $480c: $e2
    di                                            ; $480d: $f3
    ld c, h                                       ; $480e: $4c
    ld c, c                                       ; $480f: $49
    ld b, b                                       ; $4810: $40
    rst $38                                       ; $4811: $ff
    add b                                         ; $4812: $80
    ld [$6969], a                                 ; $4813: $ea $69 $69
    ld l, e                                       ; $4816: $6b
    ld l, e                                       ; $4817: $6b
    ret nc                                        ; $4818: $d0

    ret nz                                        ; $4819: $c0

    and $bf                                       ; $481a: $e6 $bf
    jp nz, $ffca                                  ; $481c: $c2 $ca $ff

    ret nz                                        ; $481f: $c0

    di                                            ; $4820: $f3
    ld c, d                                       ; $4821: $4a
    ccf                                           ; $4822: $3f
    jp nz, Jump_058_5c5d                          ; $4823: $c2 $5d $5c

    or h                                          ; $4826: $b4
    jp z, $e8ff                                   ; $4827: $ca $ff $e8

    rst $20                                       ; $482a: $e7
    add e                                         ; $482b: $83

jr_058_482c:
    add b                                         ; $482c: $80
    rst $20                                       ; $482d: $e7
    inc sp                                        ; $482e: $33
    ld c, l                                       ; $482f: $4d
    or e                                          ; $4830: $b3
    and b                                         ; $4831: $a0
    ld e, l                                       ; $4832: $5d
    ld h, a                                       ; $4833: $67
    ld e, h                                       ; $4834: $5c
    ld e, e                                       ; $4835: $5b
    ld e, d                                       ; $4836: $5a
    jp z, $e8ff                                   ; $4837: $ca $ff $e8

    rst $20                                       ; $483a: $e7
    ld a, c                                       ; $483b: $79
    ld [hl], c                                    ; $483c: $71
    ld b, b                                       ; $483d: $40
    push hl                                       ; $483e: $e5
    call z, $e1c1                                 ; $483f: $cc $c1 $e1
    jp nz, Jump_058_5ae1                          ; $4842: $c2 $e1 $5a

    ld e, e                                       ; $4845: $5b
    jp z, $e8ff                                   ; $4846: $ca $ff $e8

    rst $20                                       ; $4849: $e7
    add b                                         ; $484a: $80
    ld a, c                                       ; $484b: $79
    inc bc                                        ; $484c: $03
    ld l, [hl]                                    ; $484d: $6e
    ld [hl], $00                                  ; $484e: $36 $00
    ld [c], a                                     ; $4850: $e2
    add d                                         ; $4851: $82
    ldh [$84], a                                  ; $4852: $e0 $84
    ldh [rIE], a                                  ; $4854: $e0 $ff
    ld [c], a                                     ; $4856: $e2
    jp z, $c0ff                                   ; $4857: $ca $ff $c0

    add sp, -$11                                  ; $485a: $e8 $ef
    add b                                         ; $485c: $80
    add b                                         ; $485d: $80
    ld l, a                                       ; $485e: $6f
    ld l, [hl]                                    ; $485f: $6e
    ld b, h                                       ; $4860: $44
    and b                                         ; $4861: $a0
    dec sp                                        ; $4862: $3b
    ld c, l                                       ; $4863: $4d
    ld sp, $6001                                  ; $4864: $31 $01 $60
    jp nz, $80e3                                  ; $4867: $c2 $e3 $80

    rst $38                                       ; $486a: $ff
    rst $38                                       ; $486b: $ff
    rst $38                                       ; $486c: $ff
    rst $38                                       ; $486d: $ff
    rst $38                                       ; $486e: $ff
    rst $38                                       ; $486f: $ff
    rst $38                                       ; $4870: $ff
    rst $38                                       ; $4871: $ff
    rst $38                                       ; $4872: $ff
    rst $38                                       ; $4873: $ff
    rst $38                                       ; $4874: $ff
    nop                                           ; $4875: $00
    rst $38                                       ; $4876: $ff
    rst $38                                       ; $4877: $ff
    rst $38                                       ; $4878: $ff
    rst $38                                       ; $4879: $ff
    rst $38                                       ; $487a: $ff
    rst $38                                       ; $487b: $ff
    rst $38                                       ; $487c: $ff
    rst $38                                       ; $487d: $ff
    rst $38                                       ; $487e: $ff
    rst $38                                       ; $487f: $ff
    rst $38                                       ; $4880: $ff
    rst $38                                       ; $4881: $ff
    rst $38                                       ; $4882: $ff
    rst $38                                       ; $4883: $ff
    rst $38                                       ; $4884: $ff
    rst $38                                       ; $4885: $ff
    nop                                           ; $4886: $00
    rst $38                                       ; $4887: $ff
    rst $38                                       ; $4888: $ff
    rst $38                                       ; $4889: $ff
    rst $38                                       ; $488a: $ff
    rst $38                                       ; $488b: $ff
    rst $38                                       ; $488c: $ff
    rst $38                                       ; $488d: $ff
    rst $38                                       ; $488e: $ff
    rst $38                                       ; $488f: $ff
    rst $38                                       ; $4890: $ff
    rst $38                                       ; $4891: $ff
    rst $38                                       ; $4892: $ff
    rst $38                                       ; $4893: $ff
    rst $38                                       ; $4894: $ff
    rst $38                                       ; $4895: $ff
    rst $38                                       ; $4896: $ff
    nop                                           ; $4897: $00
    rst $38                                       ; $4898: $ff
    rst $38                                       ; $4899: $ff
    rst $38                                       ; $489a: $ff
    rst $38                                       ; $489b: $ff
    rst $38                                       ; $489c: $ff
    rst $38                                       ; $489d: $ff
    rst $38                                       ; $489e: $ff
    rst $38                                       ; $489f: $ff
    rst $38                                       ; $48a0: $ff
    rst $38                                       ; $48a1: $ff
    rst $38                                       ; $48a2: $ff
    rst $38                                       ; $48a3: $ff
    rst $38                                       ; $48a4: $ff
    rst $38                                       ; $48a5: $ff
    rst $38                                       ; $48a6: $ff
    rst $38                                       ; $48a7: $ff
    nop                                           ; $48a8: $00
    rst $38                                       ; $48a9: $ff
    rst $38                                       ; $48aa: $ff
    rst $38                                       ; $48ab: $ff
    rst $38                                       ; $48ac: $ff
    rst $38                                       ; $48ad: $ff
    rst $38                                       ; $48ae: $ff
    rst $38                                       ; $48af: $ff
    rst $38                                       ; $48b0: $ff
    rst $38                                       ; $48b1: $ff
    rst $38                                       ; $48b2: $ff
    rst $38                                       ; $48b3: $ff
    rst $38                                       ; $48b4: $ff
    rst $38                                       ; $48b5: $ff
    rst $38                                       ; $48b6: $ff
    rst $38                                       ; $48b7: $ff
    rst $38                                       ; $48b8: $ff
    nop                                           ; $48b9: $00
    rst $38                                       ; $48ba: $ff
    rst $38                                       ; $48bb: $ff
    rst $38                                       ; $48bc: $ff
    rst $38                                       ; $48bd: $ff
    rst $38                                       ; $48be: $ff
    rst $38                                       ; $48bf: $ff
    rst $38                                       ; $48c0: $ff
    rst $38                                       ; $48c1: $ff
    rst $38                                       ; $48c2: $ff
    rst $38                                       ; $48c3: $ff
    rst $38                                       ; $48c4: $ff
    rst $38                                       ; $48c5: $ff
    rst $38                                       ; $48c6: $ff
    rst $38                                       ; $48c7: $ff
    rst $38                                       ; $48c8: $ff
    rst $38                                       ; $48c9: $ff
    nop                                           ; $48ca: $00
    rst $38                                       ; $48cb: $ff
    rst $38                                       ; $48cc: $ff
    rst $38                                       ; $48cd: $ff
    rst $38                                       ; $48ce: $ff
    rst $38                                       ; $48cf: $ff
    rst $38                                       ; $48d0: $ff
    rst $38                                       ; $48d1: $ff
    rst $38                                       ; $48d2: $ff
    rst $38                                       ; $48d3: $ff
    rst $38                                       ; $48d4: $ff
    rst $38                                       ; $48d5: $ff
    rst $38                                       ; $48d6: $ff
    rst $38                                       ; $48d7: $ff
    rst $38                                       ; $48d8: $ff
    rst $38                                       ; $48d9: $ff
    rst $38                                       ; $48da: $ff
    nop                                           ; $48db: $00
    rst $38                                       ; $48dc: $ff
    rst $38                                       ; $48dd: $ff
    rst $38                                       ; $48de: $ff

Jump_058_48df:
    rst $38                                       ; $48df: $ff
    rst $38                                       ; $48e0: $ff
    rst $38                                       ; $48e1: $ff
    rst $38                                       ; $48e2: $ff
    rst $38                                       ; $48e3: $ff
    rst $38                                       ; $48e4: $ff
    rst $38                                       ; $48e5: $ff
    rst $38                                       ; $48e6: $ff
    rst $38                                       ; $48e7: $ff
    rst $38                                       ; $48e8: $ff
    rst $38                                       ; $48e9: $ff
    rst $38                                       ; $48ea: $ff
    rst $38                                       ; $48eb: $ff
    nop                                           ; $48ec: $00
    rst $38                                       ; $48ed: $ff
    rst $38                                       ; $48ee: $ff
    rst $38                                       ; $48ef: $ff
    rst $38                                       ; $48f0: $ff
    rst $38                                       ; $48f1: $ff
    rst $38                                       ; $48f2: $ff
    rst $38                                       ; $48f3: $ff
    rst $38                                       ; $48f4: $ff
    rst $38                                       ; $48f5: $ff
    rst $38                                       ; $48f6: $ff
    rst $38                                       ; $48f7: $ff
    rst $38                                       ; $48f8: $ff
    rst $38                                       ; $48f9: $ff
    rst $38                                       ; $48fa: $ff
    rst $38                                       ; $48fb: $ff
    rst $38                                       ; $48fc: $ff
    nop                                           ; $48fd: $00
    rst $38                                       ; $48fe: $ff
    rst $38                                       ; $48ff: $ff
    rst $38                                       ; $4900: $ff
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
    rst $38                                       ; $490b: $ff
    rst $38                                       ; $490c: $ff
    rst $38                                       ; $490d: $ff
    nop                                           ; $490e: $00
    rst $38                                       ; $490f: $ff
    rst $38                                       ; $4910: $ff
    rst $38                                       ; $4911: $ff
    rst $38                                       ; $4912: $ff
    rst $38                                       ; $4913: $ff
    rst $38                                       ; $4914: $ff
    rst $38                                       ; $4915: $ff
    rst $38                                       ; $4916: $ff
    rst $38                                       ; $4917: $ff
    rst $38                                       ; $4918: $ff
    rst $38                                       ; $4919: $ff
    rst $38                                       ; $491a: $ff
    rst $38                                       ; $491b: $ff
    rst $38                                       ; $491c: $ff
    rst $38                                       ; $491d: $ff
    rst $38                                       ; $491e: $ff
    nop                                           ; $491f: $00
    rst $38                                       ; $4920: $ff
    rst $38                                       ; $4921: $ff
    rst $38                                       ; $4922: $ff
    rst $38                                       ; $4923: $ff
    rst $38                                       ; $4924: $ff
    rst $38                                       ; $4925: $ff
    rst $38                                       ; $4926: $ff
    rst $38                                       ; $4927: $ff
    rst $38                                       ; $4928: $ff
    rst $38                                       ; $4929: $ff
    rst $38                                       ; $492a: $ff
    push af                                       ; $492b: $f5
    nop                                           ; $492c: $00
    nop                                           ; $492d: $00
    nop                                           ; $492e: $00
    and l                                         ; $492f: $a5
    nop                                           ; $4930: $00
    rst $38                                       ; $4931: $ff
    push hl                                       ; $4932: $e5
    ld [hl-], a                                   ; $4933: $32
    or $e6                                        ; $4934: $f6 $e6
    rst $30                                       ; $4936: $f7
    rst $20                                       ; $4937: $e7
    dec [hl]                                      ; $4938: $35
    db $ec                                        ; $4939: $ec
    xor $37                                       ; $493a: $ee $37
    db $ec                                        ; $493c: $ec
    jp c, $c7f0                                   ; $493d: $da $f0 $c7

    add sp, $33                                   ; $4940: $e8 $33
    ld sp, $f2e0                                  ; $4942: $31 $e0 $f2
    ld [hl], $30                                  ; $4945: $36 $30
    scf                                           ; $4947: $37
    cp a                                          ; $4948: $bf
    ld h, $20                                     ; $4949: $26 $20
    daa                                           ; $494b: $27
    db $10                                        ; $494c: $10
    ld d, $17                                     ; $494d: $16 $17
    jp nz, Jump_000_34f6                          ; $494f: $c2 $f6 $34

    rst $38                                       ; $4952: $ff
    ld [hl], $32                                  ; $4953: $36 $32
    jr nc, jr_058_498e                            ; $4955: $30 $37

    ld sp, $3133                                  ; $4957: $31 $33 $31
    inc sp                                        ; $495a: $33
    nop                                           ; $495b: $00
    and b                                         ; $495c: $a0
    ei                                            ; $495d: $fb
    rst $38                                       ; $495e: $ff
    rst $28                                       ; $495f: $ef
    nop                                           ; $4960: $00
    nop                                           ; $4961: $00
    nop                                           ; $4962: $00
    ld l, e                                       ; $4963: $6b
    ld c, c                                       ; $4964: $49
    sbc e                                         ; $4965: $9b
    ld c, c                                       ; $4966: $49
    ld [hl], d                                    ; $4967: $72
    ld c, h                                       ; $4968: $4c
    dec sp                                        ; $4969: $3b
    ld c, [hl]                                    ; $496a: $4e
    ldh a, [$03]                                  ; $496b: $f0 $03
    ld c, l                                       ; $496d: $4d
    rrca                                          ; $496e: $0f
    ld b, b                                       ; $496f: $40
    ld [bc], a                                    ; $4970: $02
    ret nz                                        ; $4971: $c0

    nop                                           ; $4972: $00
    ldh a, [$03]                                  ; $4973: $f0 $03
    push af                                       ; $4975: $f5
    inc bc                                        ; $4976: $03
    ld c, b                                       ; $4977: $48
    rrca                                          ; $4978: $0f
    ld b, b                                       ; $4979: $40
    ld [bc], a                                    ; $497a: $02
    ld e, a                                       ; $497b: $5f
    dec sp                                        ; $497c: $3b
    jr c, @+$10                                   ; $497d: $38 $0e

    ld sp, $4819                                  ; $497f: $31 $19 $48
    rrca                                          ; $4982: $0f
    ld [$0825], sp                                ; $4983: $08 $25 $08
    dec h                                         ; $4986: $25
    ld [$0825], sp                                ; $4987: $08 $25 $08
    dec h                                         ; $498a: $25
    ld [$0825], sp                                ; $498b: $08 $25 $08

jr_058_498e:
    dec h                                         ; $498e: $25
    ld [$0825], sp                                ; $498f: $08 $25 $08
    dec h                                         ; $4992: $25
    ld [$0825], sp                                ; $4993: $08 $25 $08
    dec h                                         ; $4996: $25
    ld [$0825], sp                                ; $4997: $08 $25 $08
    dec h                                         ; $499a: $25
    cp a                                          ; $499b: $bf
    dec hl                                        ; $499c: $2b
    dec hl                                        ; $499d: $2b
    dec hl                                        ; $499e: $2b
    ld l, e                                       ; $499f: $6b
    ld l, e                                       ; $49a0: $6b
    ld c, e                                       ; $49a1: $4b
    rst $38                                       ; $49a2: $ff
    ldh [$0b], a                                  ; $49a3: $e0 $0b
    ld l, [hl]                                    ; $49a5: $6e
    ld hl, sp-$1f                                 ; $49a6: $f8 $e1
    dec hl                                        ; $49a8: $2b
    dec bc                                        ; $49a9: $0b
    inc c                                         ; $49aa: $0c
    rst $38                                       ; $49ab: $ff
    db $e4                                        ; $49ac: $e4
    ld c, h                                       ; $49ad: $4c
    ld c, h                                       ; $49ae: $4c
    db $fd                                        ; $49af: $fd
    db $e3                                        ; $49b0: $e3
    db $e4                                        ; $49b1: $e4
    ld sp, hl                                     ; $49b2: $f9
    ldh [$f2], a                                  ; $49b3: $e0 $f2
    db $e4                                        ; $49b5: $e4
    inc l                                         ; $49b6: $2c
    push hl                                       ; $49b7: $e5
    push hl                                       ; $49b8: $e5
    ld hl, sp-$16                                 ; $49b9: $f8 $ea
    dec bc                                        ; $49bb: $0b
    dec bc                                        ; $49bc: $0b
    dec bc                                        ; $49bd: $0b
    rra                                           ; $49be: $1f
    ld l, e                                       ; $49bf: $6b
    dec bc                                        ; $49c0: $0b
    dec hl                                        ; $49c1: $2b
    dec bc                                        ; $49c2: $0b
    dec bc                                        ; $49c3: $0b
    cp a                                          ; $49c4: $bf
    ld [c], a                                     ; $49c5: $e2
    ret nz                                        ; $49c6: $c0

    ld [c], a                                     ; $49c7: $e2
    add $e0                                       ; $49c8: $c6 $e0
    ld h, b                                       ; $49ca: $60
    pop bc                                        ; $49cb: $c1
    ldh [$be], a                                  ; $49cc: $e0 $be
    push hl                                       ; $49ce: $e5
    db $fc                                        ; $49cf: $fc
    db $e3                                        ; $49d0: $e3
    or b                                          ; $49d1: $b0
    pop hl                                        ; $49d2: $e1
    ret nz                                        ; $49d3: $c0

    di                                            ; $49d4: $f3
    ld c, e                                       ; $49d5: $4b
    dec bc                                        ; $49d6: $0b
    jp nz, Jump_000_00e0                          ; $49d7: $c2 $e0 $00

    ret nz                                        ; $49da: $c0

    ldh [$bf], a                                  ; $49db: $e0 $bf
    pop hl                                        ; $49dd: $e1
    rst $38                                       ; $49de: $ff
    pop hl                                        ; $49df: $e1
    adc [hl]                                      ; $49e0: $8e
    ldh [$8d], a                                  ; $49e1: $e0 $8d
    rst $20                                       ; $49e3: $e7
    ret nz                                        ; $49e4: $c0

    db $e3                                        ; $49e5: $e3
    xor a                                         ; $49e6: $af
    db $e3                                        ; $49e7: $e3
    ld a, c                                       ; $49e8: $79
    pop hl                                        ; $49e9: $e1
    ld a, [bc]                                    ; $49ea: $0a
    add b                                         ; $49eb: $80
    ld a, [c]                                     ; $49ec: $f2
    dec hl                                        ; $49ed: $2b
    ret nz                                        ; $49ee: $c0

    ld [c], a                                     ; $49ef: $e2
    ld c, e                                       ; $49f0: $4b
    cp a                                          ; $49f1: $bf
    push hl                                       ; $49f2: $e5
    cp [hl]                                       ; $49f3: $be
    ldh [rLCDC], a                                ; $49f4: $e0 $40
    ld [c], a                                     ; $49f6: $e2
    ld a, [hl-]                                   ; $49f7: $3a
    db $e3                                        ; $49f8: $e3
    db $e4                                        ; $49f9: $e4
    ld sp, $40e9                                  ; $49fa: $31 $e9 $40
    ld a, [c]                                     ; $49fd: $f2
    ld l, e                                       ; $49fe: $6b
    rst $38                                       ; $49ff: $ff
    ret nz                                        ; $4a00: $c0

    ld b, b                                       ; $4a01: $40
    ldh [rWX], a                                  ; $4a02: $e0 $4b
    dec hl                                        ; $4a04: $2b
    ld c, e                                       ; $4a05: $4b
    ld bc, $f94b                                  ; $4a06: $01 $4b $f9
    jp nz, $e17a                                  ; $4a09: $c2 $7a $e1

    ld b, a                                       ; $4a0c: $47
    db $e3                                        ; $4a0d: $e3
    cp e                                          ; $4a0e: $bb
    db $e4                                        ; $4a0f: $e4
    or d                                          ; $4a10: $b2
    push hl                                       ; $4a11: $e5
    ld a, a                                       ; $4a12: $7f
    rst $20                                       ; $4a13: $e7
    rst $30                                       ; $4a14: $f7
    call nz, $f030                                ; $4a15: $c4 $30 $f0
    jp $e081                                      ; $4a18: $c3 $81 $e0


    ld b, b                                       ; $4a1b: $40
    ldh [$82], a                                  ; $4a1c: $e0 $82
    pop hl                                        ; $4a1e: $e1
    ld c, e                                       ; $4a1f: $4b
    ld c, e                                       ; $4a20: $4b
    or l                                          ; $4a21: $b5
    pop hl                                        ; $4a22: $e1
    add hl, sp                                    ; $4a23: $39
    pop hl                                        ; $4a24: $e1
    add b                                         ; $4a25: $80
    ld b, c                                       ; $4a26: $41
    and $c0                                       ; $4a27: $e6 $c0
    jp $fa3f                                      ; $4a29: $c3 $3f $fa


    ret nz                                        ; $4a2c: $c0

    ld [c], a                                     ; $4a2d: $e2
    cp h                                          ; $4a2e: $bc
    ret nz                                        ; $4a2f: $c0

    ld a, [hl]                                    ; $4a30: $7e
    jp nz, $e2b5                                  ; $4a31: $c2 $b5 $e2

    ld c, e                                       ; $4a34: $4b
    nop                                           ; $4a35: $00
    ld a, h                                       ; $4a36: $7c
    pop bc                                        ; $4a37: $c1
    ret nz                                        ; $4a38: $c0

    push bc                                       ; $4a39: $c5
    add c                                         ; $4a3a: $81
    pop bc                                        ; $4a3b: $c1
    ld [hl], l                                    ; $4a3c: $75
    call nz, $f300                                ; $4a3d: $c4 $00 $f3
    ld b, b                                       ; $4a40: $40
    ret nz                                        ; $4a41: $c0

    add d                                         ; $4a42: $82
    jp nz, $c1c1                                  ; $4a43: $c2 $c1 $c1

    ld [bc], a                                    ; $4a46: $02
    dec [hl]                                      ; $4a47: $35
    db $e4                                        ; $4a48: $e4
    ld c, e                                       ; $4a49: $4b
    ld a, l                                       ; $4a4a: $7d
    call nz, $e5ff                                ; $4a4b: $c4 $ff $e5
    ld [hl], l                                    ; $4a4e: $75
    add $80                                       ; $4a4f: $c6 $80
    jp nc, $e04a                                  ; $4a51: $d2 $4a $e0

    pop bc                                        ; $4a54: $c1
    db $e4                                        ; $4a55: $e4
    nop                                           ; $4a56: $00
    dec [hl]                                      ; $4a57: $35
    and $0d                                       ; $4a58: $e6 $0d
    add $be                                       ; $4a5a: $c6 $be
    rst $00                                       ; $4a5c: $c7
    ret nz                                        ; $4a5d: $c0

    sub $07                                       ; $4a5e: $d6 $07
    ret nz                                        ; $4a60: $c0

    push bc                                       ; $4a61: $c5
    ret nz                                        ; $4a62: $c0

    pop bc                                        ; $4a63: $c1
    and b                                         ; $4a64: $a0
    call nz, Call_000_06a0                        ; $4a65: $c4 $a0 $06
    dec [hl]                                      ; $4a68: $35
    db $e3                                        ; $4a69: $e3
    ld c, e                                       ; $4a6a: $4b
    dec hl                                        ; $4a6b: $2b
    adc $c8                                       ; $4a6c: $ce $c8
    db $f4                                        ; $4a6e: $f4
    and l                                         ; $4a6f: $a5
    ccf                                           ; $4a70: $3f
    sub $c6                                       ; $4a71: $d6 $c6
    jp $c042                                      ; $4a73: $c3 $42 $c0


    nop                                           ; $4a76: $00
    ld sp, hl                                     ; $4a77: $f9
    and c                                         ; $4a78: $a1
    dec [hl]                                      ; $4a79: $35
    db $e3                                        ; $4a7a: $e3
    ret nz                                        ; $4a7b: $c0

    ldh [$3f], a                                  ; $4a7c: $e0 $3f
    and $07                                       ; $4a7e: $e6 $07
    push bc                                       ; $4a80: $c5
    ld b, b                                       ; $4a81: $40
    ret z                                         ; $4a82: $c8

    ld a, b                                       ; $4a83: $78
    and d                                         ; $4a84: $a2
    ld [hl], e                                    ; $4a85: $73
    and [hl]                                      ; $4a86: $a6
    nop                                           ; $4a87: $00
    add [hl]                                      ; $4a88: $86
    pop hl                                        ; $4a89: $e1
    pop bc                                        ; $4a8a: $c1
    ld [c], a                                     ; $4a8b: $e2
    ret nz                                        ; $4a8c: $c0

    db $e4                                        ; $4a8d: $e4
    ld [hl], $a1                                  ; $4a8e: $36 $a1
    ccf                                           ; $4a90: $3f
    and a                                         ; $4a91: $a7
    ld a, l                                       ; $4a92: $7d
    add $b8                                       ; $4a93: $c6 $b8
    and d                                         ; $4a95: $a2
    scf                                           ; $4a96: $37
    or c                                          ; $4a97: $b1
    nop                                           ; $4a98: $00
    inc c                                         ; $4a99: $0c
    jp nz, $e302                                  ; $4a9a: $c2 $02 $e3

    dec [hl]                                      ; $4a9d: $35
    pop bc                                        ; $4a9e: $c1
    rst $38                                       ; $4a9f: $ff
    and d                                         ; $4aa0: $a2
    ld c, $c6                                     ; $4aa1: $0e $c6
    ld b, c                                       ; $4aa3: $41
    and l                                         ; $4aa4: $a5
    db $fd                                        ; $4aa5: $fd
    add e                                         ; $4aa6: $83
    rst $38                                       ; $4aa7: $ff
    add b                                         ; $4aa8: $80
    ld b, b                                       ; $4aa9: $40
    scf                                           ; $4aaa: $37
    xor a                                         ; $4aab: $af
    ld [$3fc2], sp                                ; $4aac: $08 $c2 $3f
    and d                                         ; $4aaf: $a2
    nop                                           ; $4ab0: $00
    pop hl                                        ; $4ab1: $e1
    ret nz                                        ; $4ab2: $c0

    and e                                         ; $4ab3: $a3
    add b                                         ; $4ab4: $80
    db $f4                                        ; $4ab5: $f4
    inc l                                         ; $4ab6: $2c
    scf                                           ; $4ab7: $37
    and a                                         ; $4ab8: $a7
    add c                                         ; $4ab9: $81
    inc l                                         ; $4aba: $2c
    rst $38                                       ; $4abb: $ff
    ldh [$80], a                                  ; $4abc: $e0 $80

jr_058_4abe:
    add $bf                                       ; $4abe: $c6 $bf
    add c                                         ; $4ac0: $81
    cp [hl]                                       ; $4ac1: $be
    add b                                         ; $4ac2: $80
    ld [hl], $c1                                  ; $4ac3: $36 $c1
    ei                                            ; $4ac5: $fb
    add d                                         ; $4ac6: $82
    ld l, e                                       ; $4ac7: $6b
    nop                                           ; $4ac8: $00
    add b                                         ; $4ac9: $80
    db $f4                                        ; $4aca: $f4
    scf                                           ; $4acb: $37
    xor b                                         ; $4acc: $a8
    ret nz                                        ; $4acd: $c0

    rst $20                                       ; $4ace: $e7
    jp nz, Jump_058_45e1                          ; $4acf: $c2 $e1 $45

    jp nz, $a303                                  ; $4ad2: $c2 $03 $a3

    ld [hl], c                                    ; $4ad5: $71
    add c                                         ; $4ad6: $81
    ret nz                                        ; $4ad7: $c0

    pop bc                                        ; $4ad8: $c1
    nop                                           ; $4ad9: $00
    dec a                                         ; $4ada: $3d
    add h                                         ; $4adb: $84
    add b                                         ; $4adc: $80
    jp z, $e63f                                   ; $4add: $ca $3f $e6

    add c                                         ; $4ae0: $81
    add sp, $15                                   ; $4ae1: $e8 $15
    adc a                                         ; $4ae3: $8f
    adc d                                         ; $4ae4: $8a
    add [hl]                                      ; $4ae5: $86
    add b                                         ; $4ae6: $80
    adc $3f                                       ; $4ae7: $ce $3f
    rst $20                                       ; $4ae9: $e7
    nop                                           ; $4aea: $00
    ret nz                                        ; $4aeb: $c0

    jp hl                                         ; $4aec: $e9


    ld d, $84                                     ; $4aed: $16 $84
    dec c                                         ; $4aef: $0d
    add c                                         ; $4af0: $81
    cp $e7                                        ; $4af1: $fe $e7
    add b                                         ; $4af3: $80
    call nc, $a437                                ; $4af4: $d4 $37 $a4
    or [hl]                                       ; $4af7: $b6
    ld l, c                                       ; $4af8: $69
    ld d, [hl]                                    ; $4af9: $56
    and h                                         ; $4afa: $a4
    jr nz, jr_058_4abe                            ; $4afb: $20 $c1

    db $ed                                        ; $4afd: $ed
    ld c, [hl]                                    ; $4afe: $4e
    add $00                                       ; $4aff: $c6 $00
    jp hl                                         ; $4b01: $e9


    push af                                       ; $4b02: $f5

Jump_058_4b03:
    add l                                         ; $4b03: $85
    jp nz, Jump_000_2cc1                          ; $4b04: $c2 $c1 $2c

Jump_058_4b07:
    db $fd                                        ; $4b07: $fd
    and [hl]                                      ; $4b08: $a6
    add d                                         ; $4b09: $82
    push hl                                       ; $4b0a: $e5
    nop                                           ; $4b0b: $00
    xor e                                         ; $4b0c: $ab
    jp hl                                         ; $4b0d: $e9


    call Call_058_4087                            ; $4b0e: $cd $87 $40
    xor c                                         ; $4b11: $a9
    add hl, hl                                    ; $4b12: $29
    and [hl]                                      ; $4b13: $a6
    ret nz                                        ; $4b14: $c0

    jp hl                                         ; $4b15: $e9


    ld b, b                                       ; $4b16: $40
    di                                            ; $4b17: $f3
    ld b, [hl]                                    ; $4b18: $46
    ld l, b                                       ; $4b19: $68
    ret nz                                        ; $4b1a: $c0

    rst $00                                       ; $4b1b: $c7
    nop                                           ; $4b1c: $00
    ei                                            ; $4b1d: $fb
    ld b, e                                       ; $4b1e: $43
    db $ec                                        ; $4b1f: $ec
    ld b, c                                       ; $4b20: $41
    rst $38                                       ; $4b21: $ff
    jp z, $f380                                   ; $4b22: $ca $80 $f3

    bit 0, l                                      ; $4b25: $cb $45
    ret nz                                        ; $4b27: $c0

    ret z                                         ; $4b28: $c8

    db $fc                                        ; $4b29: $fc
    and h                                         ; $4b2a: $a4
    ld a, a                                       ; $4b2b: $7f
    rlc b                                         ; $4b2c: $cb $00
    push hl                                       ; $4b2e: $e5
    sub d                                         ; $4b2f: $92
    bit 1, b                                      ; $4b30: $cb $48
    ret nz                                        ; $4b32: $c0

    jp z, $c6d2                                   ; $4b33: $ca $d2 $c6

    ret nz                                        ; $4b36: $c0

    call z, $efc0                                 ; $4b37: $cc $c0 $ef

Jump_058_4b3a:
    ld [de], a                                    ; $4b3a: $12
    and [hl]                                      ; $4b3b: $a6
    ld b, b                                       ; $4b3c: $40
    and a                                         ; $4b3d: $a7
    nop                                           ; $4b3e: $00
    inc sp                                        ; $4b3f: $33
    ld b, h                                       ; $4b40: $44
    ld h, b                                       ; $4b41: $60
    ld b, c                                       ; $4b42: $41
    add b                                         ; $4b43: $80
    and a                                         ; $4b44: $a7
    ld h, d                                       ; $4b45: $62
    ld b, h                                       ; $4b46: $44
    ccf                                           ; $4b47: $3f
    call nz, $e504                                ; $4b48: $c4 $04 $e5
    sub h                                         ; $4b4b: $94
    xor b                                         ; $4b4c: $a8
    cp a                                          ; $4b4d: $bf
    jp hl                                         ; $4b4e: $e9


    add b                                         ; $4b4f: $80
    or e                                          ; $4b50: $b3
    add [hl]                                      ; $4b51: $86
    ld b, b                                       ; $4b52: $40
    jp hl                                         ; $4b53: $e9


    ld h, d                                       ; $4b54: $62
    ld b, [hl]                                    ; $4b55: $46
    ret                                           ; $4b56: $c9


    ld b, l                                       ; $4b57: $45
    ld hl, sp-$19                                 ; $4b58: $f8 $e7
    cp l                                          ; $4b5a: $bd
    add a                                         ; $4b5b: $87
    ld b, b                                       ; $4b5c: $40
    jp z, Jump_000_004c                           ; $4b5d: $ca $4c $00

    add d                                         ; $4b60: $82
    xor h                                         ; $4b61: $ac
    ret nc                                        ; $4b62: $d0

    ld l, c                                       ; $4b63: $69
    ld a, b                                       ; $4b64: $78
    and $fd                                       ; $4b65: $e6 $fd
    ld h, a                                       ; $4b67: $67
    rst $00                                       ; $4b68: $c7
    add b                                         ; $4b69: $80
    or [hl]                                       ; $4b6a: $b6

Jump_058_4b6b:
    dec h                                         ; $4b6b: $25
    ld h, h                                       ; $4b6c: $64
    call nz, $a942                                ; $4b6d: $c4 $42 $a9
    nop                                           ; $4b70: $00
    ld [de], a                                    ; $4b71: $12
    add sp, -$0f                                  ; $4b72: $e8 $f1
    ret z                                         ; $4b74: $c8

    cp $a9                                        ; $4b75: $fe $a9
    ld a, e                                       ; $4b77: $7b
    push bc                                       ; $4b78: $c5
    db $f4                                        ; $4b79: $f4
    ld b, a                                       ; $4b7a: $47
    pop bc                                        ; $4b7b: $c1
    db $ec                                        ; $4b7c: $ec
    ld a, [de]                                    ; $4b7d: $1a
    adc d                                         ; $4b7e: $8a
    or h                                          ; $4b7f: $b4
    and $00                                       ; $4b80: $e6 $00
    ld d, h                                       ; $4b82: $54
    push hl                                       ; $4b83: $e5
    push bc                                       ; $4b84: $c5
    daa                                           ; $4b85: $27
    ld [hl], $87                                  ; $4b86: $36 $87
    ret nz                                        ; $4b88: $c0

Call_058_4b89:
    xor $76                                       ; $4b89: $ee $76
    rst $00                                       ; $4b8b: $c7
    bit 1, h                                      ; $4b8c: $cb $4c
    ld b, e                                       ; $4b8e: $43
    ld [c], a                                     ; $4b8f: $e2
    ei                                            ; $4b90: $fb
    ld c, e                                       ; $4b91: $4b
    nop                                           ; $4b92: $00
    dec [hl]                                      ; $4b93: $35
    ld l, $42                                     ; $4b94: $2e $42
    jp hl                                         ; $4b96: $e9


    ld c, e                                       ; $4b97: $4b
    adc [hl]                                      ; $4b98: $8e
    ld b, d                                       ; $4b99: $42
    ld c, b                                       ; $4b9a: $48
    dec sp                                        ; $4b9b: $3b
    ld h, $40                                     ; $4b9c: $26 $40
    xor $19                                       ; $4b9e: $ee $19
    res 1, l                                      ; $4ba0: $cb $8d
    rlc b                                         ; $4ba2: $cb $00
    ld a, b                                       ; $4ba4: $78
    daa                                           ; $4ba5: $27
    inc b                                         ; $4ba6: $04
    add h                                         ; $4ba7: $84
    ld a, $21                                     ; $4ba8: $3e $21
    ld b, c                                       ; $4baa: $41
    xor d                                         ; $4bab: $aa
    push af                                       ; $4bac: $f5
    ld l, h                                       ; $4bad: $6c
    bit 1, e                                      ; $4bae: $cb $4b
    db $fc                                        ; $4bb0: $fc
    xor h                                         ; $4bb1: $ac
    ld b, a                                       ; $4bb2: $47
    ld h, d                                       ; $4bb3: $62
    nop                                           ; $4bb4: $00
    ret nz                                        ; $4bb5: $c0

    ld l, e                                       ; $4bb6: $6b
    ld b, b                                       ; $4bb7: $40
    db $ec                                        ; $4bb8: $ec
    or c                                          ; $4bb9: $b1
    adc $30                                       ; $4bba: $ce $30
    add [hl]                                      ; $4bbc: $86
    ld b, l                                       ; $4bbd: $45
    add $c1                                       ; $4bbe: $c6 $c1
    db $ec                                        ; $4bc0: $ec
    jp z, Jump_000_3cf1                           ; $4bc1: $ca $f1 $3c

Jump_058_4bc4:
    add a                                         ; $4bc4: $87
    nop                                           ; $4bc5: $00
    ld [hl], b                                    ; $4bc6: $70
    add h                                         ; $4bc7: $84
    cp e                                          ; $4bc8: $bb
    ld [$ed81], sp                                ; $4bc9: $08 $81 $ed
    jp z, $fdd1                                   ; $4bcc: $ca $d1 $fd

    ld h, l                                       ; $4bcf: $65
    ld b, [hl]                                    ; $4bd0: $46
    ld a, [bc]                                    ; $4bd1: $0a
    cp c                                          ; $4bd2: $b9
    ld de, $3295                                  ; $4bd3: $11 $95 $32
    nop                                           ; $4bd6: $00
    ld d, e                                       ; $4bd7: $53
    xor c                                         ; $4bd8: $a9
    and c                                         ; $4bd9: $a1
    ld h, a                                       ; $4bda: $67
    ld d, l                                       ; $4bdb: $55
    add l                                         ; $4bdc: $85
    ld bc, $15ec                                  ; $4bdd: $01 $ec $15
    ld [hl], e                                    ; $4be0: $73
    add h                                         ; $4be1: $84
    add a                                         ; $4be2: $87
    ld a, c                                       ; $4be3: $79
    dec h                                         ; $4be4: $25
    ld [bc], a                                    ; $4be5: $02
    ld d, b                                       ; $4be6: $50
    nop                                           ; $4be7: $00
    nop                                           ; $4be8: $00
    or $83                                        ; $4be9: $f6 $83
    jp hl                                         ; $4beb: $e9


    ld [hl], d                                    ; $4bec: $72
    ld [$133a], a                                 ; $4bed: $ea $3a $13
    cp c                                          ; $4bf0: $b9
    or $7e                                        ; $4bf1: $f6 $7e
    call nz, $abb8                                ; $4bf3: $c4 $b8 $ab
    db $fc                                        ; $4bf6: $fc
    ld hl, sp+$00                                 ; $4bf7: $f8 $00
    cp e                                          ; $4bf9: $bb
    di                                            ; $4bfa: $f3
    cp d                                          ; $4bfb: $ba
    ld c, d                                       ; $4bfc: $4a
    rst $38                                       ; $4bfd: $ff
    rst $38                                       ; $4bfe: $ff
    ld h, l                                       ; $4bff: $65
    jp c, $ffcb                                   ; $4c00: $da $cb $ff

    ld l, b                                       ; $4c03: $68
    inc h                                         ; $4c04: $24
    ld c, d                                       ; $4c05: $4a
    adc l                                         ; $4c06: $8d
    add b                                         ; $4c07: $80
    rst $38                                       ; $4c08: $ff
    nop                                           ; $4c09: $00
    ret nz                                        ; $4c0a: $c0

    db $ed                                        ; $4c0b: $ed
    ld a, d                                       ; $4c0c: $7a
    ld [de], a                                    ; $4c0d: $12
    rst $00                                       ; $4c0e: $c7
    rst $38                                       ; $4c0f: $ff
    ld h, l                                       ; $4c10: $65
    cp e                                          ; $4c11: $bb
    set 7, a                                      ; $4c12: $cb $ff
    and l                                         ; $4c14: $a5
    xor [hl]                                      ; $4c15: $ae
    ld a, [hl-]                                   ; $4c16: $3a
    jr z, @+$01                                   ; $4c17: $28 $ff

    rst $38                                       ; $4c19: $ff
    nop                                           ; $4c1a: $00
    di                                            ; $4c1b: $f3
    call nc, $ac8d                                ; $4c1c: $d4 $8d $ac
    rst $38                                       ; $4c1f: $ff
    rst $38                                       ; $4c20: $ff
    rst $38                                       ; $4c21: $ff
    rst $38                                       ; $4c22: $ff
    sub [hl]                                      ; $4c23: $96
    rst $38                                       ; $4c24: $ff
    rst $38                                       ; $4c25: $ff
    rst $38                                       ; $4c26: $ff
    ld [hl], h                                    ; $4c27: $74
    ld l, l                                       ; $4c28: $6d
    rst $38                                       ; $4c29: $ff
    rst $38                                       ; $4c2a: $ff
    nop                                           ; $4c2b: $00

Call_058_4c2c:
    rst $38                                       ; $4c2c: $ff
    rst $38                                       ; $4c2d: $ff
    rst $38                                       ; $4c2e: $ff
    rst $38                                       ; $4c2f: $ff
    rst $38                                       ; $4c30: $ff
    rst $38                                       ; $4c31: $ff
    sbc d                                         ; $4c32: $9a
    add d                                         ; $4c33: $82
    call c, $ffff                                 ; $4c34: $dc $ff $ff
    rst $38                                       ; $4c37: $ff
    rst $38                                       ; $4c38: $ff
    rst $38                                       ; $4c39: $ff
    rst $38                                       ; $4c3a: $ff
    rst $38                                       ; $4c3b: $ff
    nop                                           ; $4c3c: $00
    sub e                                         ; $4c3d: $93
    ld l, [hl]                                    ; $4c3e: $6e
    sbc b                                         ; $4c3f: $98
    rst $18                                       ; $4c40: $df
    cp h                                          ; $4c41: $bc
    ei                                            ; $4c42: $fb
    or [hl]                                       ; $4c43: $b6
    cp a                                          ; $4c44: $bf
    ld l, l                                       ; $4c45: $6d
    sbc [hl]                                      ; $4c46: $9e
    add b                                         ; $4c47: $80
    rst $38                                       ; $4c48: $ff
    ld b, b                                       ; $4c49: $40
    rst $38                                       ; $4c4a: $ff
    ret nz                                        ; $4c4b: $c0

    rst $38                                       ; $4c4c: $ff
    nop                                           ; $4c4d: $00
    ld b, b                                       ; $4c4e: $40
    rst $38                                       ; $4c4f: $ff
    rst $38                                       ; $4c50: $ff
    rst $38                                       ; $4c51: $ff
    ld b, b                                       ; $4c52: $40
    rst $38                                       ; $4c53: $ff
    rst $38                                       ; $4c54: $ff
    rst $38                                       ; $4c55: $ff
    rst $38                                       ; $4c56: $ff
    daa                                           ; $4c57: $27
    ld a, e                                       ; $4c58: $7b
    ld d, l                                       ; $4c59: $55
    rst $38                                       ; $4c5a: $ff
    rst $38                                       ; $4c5b: $ff
    ldh [rTMA], a                                 ; $4c5c: $e0 $06
    nop                                           ; $4c5e: $00
    cp h                                          ; $4c5f: $bc
    dec hl                                        ; $4c60: $2b
    cp e                                          ; $4c61: $bb
    rst $38                                       ; $4c62: $ff
    cp [hl]                                       ; $4c63: $be
    ldh a, [rIE]                                  ; $4c64: $f0 $ff
    rst $38                                       ; $4c66: $ff
    ret nz                                        ; $4c67: $c0

    rst $18                                       ; $4c68: $df
    rst $38                                       ; $4c69: $ff
    rst $38                                       ; $4c6a: $ff
    jr nc, jr_058_4ce0                            ; $4c6b: $30 $73

    halt                                          ; $4c6d: $76
    ld l, e                                       ; $4c6e: $6b
    nop                                           ; $4c6f: $00
    nop                                           ; $4c70: $00
    nop                                           ; $4c71: $00
    rst $38                                       ; $4c72: $ff
    ld sp, $3131                                  ; $4c73: $31 $31 $31
    ld c, l                                       ; $4c76: $4d
    ld a, [hl-]                                   ; $4c77: $3a
    ld d, h                                       ; $4c78: $54
    ld d, l                                       ; $4c79: $55
    dec sp                                        ; $4c7a: $3b
    rst $38                                       ; $4c7b: $ff
    ld c, l                                       ; $4c7c: $4d
    ld sp, $5b60                                  ; $4c7d: $31 $60 $5b
    ld e, e                                       ; $4c80: $5b
    ld e, e                                       ; $4c81: $5b
    ld h, c                                       ; $4c82: $61
    ld sp, $2b9f                                  ; $4c83: $31 $9f $2b
    inc l                                         ; $4c86: $2c
    jr nz, jr_058_4ca9                            ; $4c87: $20 $20

    nop                                           ; $4c89: $00
    rst $38                                       ; $4c8a: $ff
    rst $38                                       ; $4c8b: $ff
    rst $20                                       ; $4c8c: $e7
    and $a4                                       ; $4c8d: $e6 $a4
    rst $38                                       ; $4c8f: $ff
    and h                                         ; $4c90: $a4
    or b                                          ; $4c91: $b0
    ld [hl-], a                                   ; $4c92: $32
    jr nc, jr_058_4d00                            ; $4c93: $30 $6b

    jr nc, jr_058_4cc7                            ; $4c95: $30 $30

    ld [hl-], a                                   ; $4c97: $32
    db $e4                                        ; $4c98: $e4
    cp a                                          ; $4c99: $bf
    ld [c], a                                     ; $4c9a: $e2
    ret nz                                        ; $4c9b: $c0

    pop hl                                        ; $4c9c: $e1
    db $10                                        ; $4c9d: $10
    ret nz                                        ; $4c9e: $c0

    rst $38                                       ; $4c9f: $ff
    jp hl                                         ; $4ca0: $e9


    add sp, -$80                                  ; $4ca1: $e8 $80
    ld a, c                                       ; $4ca3: $79
    ld [hl], c                                    ; $4ca4: $71
    ld sp, hl                                     ; $4ca5: $f9
    ld l, e                                       ; $4ca6: $6b
    ret nz                                        ; $4ca7: $c0

    pop hl                                        ; $4ca8: $e1

jr_058_4ca9:
    cp a                                          ; $4ca9: $bf
    pop hl                                        ; $4caa: $e1
    ld h, d                                       ; $4cab: $62
    ld h, d                                       ; $4cac: $62
    ld sp, $1131                                  ; $4cad: $31 $31 $11
    rst $20                                       ; $4cb0: $e7
    ld [de], a                                    ; $4cb1: $12
    ld hl, $ca22                                  ; $4cb2: $21 $22 $ca
    rst $38                                       ; $4cb5: $ff
    add sp, -$19                                  ; $4cb6: $e8 $e7
    ld a, c                                       ; $4cb8: $79
    ld [hl], c                                    ; $4cb9: $71
    ld l, c                                       ; $4cba: $69
    ld [hl-], a                                   ; $4cbb: $32
    ret nz                                        ; $4cbc: $c0

    ld [c], a                                     ; $4cbd: $e2
    ld l, l                                       ; $4cbe: $6d
    ld a, [hl]                                    ; $4cbf: $7e
    pop hl                                        ; $4cc0: $e1
    rst $38                                       ; $4cc1: $ff
    ld [c], a                                     ; $4cc2: $e2
    ld de, $ca12                                  ; $4cc3: $11 $12 $ca
    rst $38                                       ; $4cc6: $ff

jr_058_4cc7:
    add sp, -$19                                  ; $4cc7: $e8 $e7
    ei                                            ; $4cc9: $fb
    add e                                         ; $4cca: $83
    ld l, e                                       ; $4ccb: $6b
    ret nz                                        ; $4ccc: $c0

    ld [c], a                                     ; $4ccd: $e2
    ld l, l                                       ; $4cce: $6d
    jr nc, jr_058_4d3e                            ; $4ccf: $30 $6d

    ld l, d                                       ; $4cd1: $6a
    ccf                                           ; $4cd2: $3f
    ld c, l                                       ; $4cd3: $4d
    ld d, h                                       ; $4cd4: $54
    ld hl, sp-$3e                                 ; $4cd5: $f8 $c2
    ld sp, $ca31                                  ; $4cd7: $31 $31 $ca
    rst $38                                       ; $4cda: $ff
    add sp, -$19                                  ; $4cdb: $e8 $e7
    ld d, e                                       ; $4cdd: $53
    ret nz                                        ; $4cde: $c0

    ld [c], a                                     ; $4cdf: $e2

jr_058_4ce0:
    add [hl]                                      ; $4ce0: $86
    pop bc                                        ; $4ce1: $c1
    pop hl                                        ; $4ce2: $e1
    ld l, d                                       ; $4ce3: $6a
    ld l, l                                       ; $4ce4: $6d
    or l                                          ; $4ce5: $b5
    pop hl                                        ; $4ce6: $e1
    ld a, d                                       ; $4ce7: $7a
    pop hl                                        ; $4ce8: $e1
    jp z, $e8ff                                   ; $4ce9: $ca $ff $e8

    rst $20                                       ; $4cec: $e7
    ld d, d                                       ; $4ced: $52
    ld [$e180], sp                                ; $4cee: $08 $80 $e1
    ld b, c                                       ; $4cf1: $41
    ldh [$c1], a                                  ; $4cf2: $e0 $c1
    ldh [$30], a                                  ; $4cf4: $e0 $30

jr_058_4cf6:
    ld [hl], l                                    ; $4cf6: $75
    ld [c], a                                     ; $4cf7: $e2
    or a                                          ; $4cf8: $b7
    ret nz                                        ; $4cf9: $c0

    jp z, Jump_058_40ff                           ; $4cfa: $ca $ff $40

    db $ec                                        ; $4cfd: $ec
    add b                                         ; $4cfe: $80
    pop bc                                        ; $4cff: $c1

jr_058_4d00:
    db $e3                                        ; $4d00: $e3
    ret nz                                        ; $4d01: $c0

    db $e3                                        ; $4d02: $e3
    halt                                          ; $4d03: $76
    ret nz                                        ; $4d04: $c0

    jp z, $c0ff                                   ; $4d05: $ca $ff $c0

    call z, $e3c1                                 ; $4d08: $cc $c1 $e3
    add b                                         ; $4d0b: $80
    db $e3                                        ; $4d0c: $e3
    ld l, l                                       ; $4d0d: $6d
    inc hl                                        ; $4d0e: $23
    jr nc, jr_058_4d4a                            ; $4d0f: $30 $39

    jp z, Jump_058_40ff                           ; $4d11: $ca $ff $40

    bit 0, e                                      ; $4d14: $cb $43
    ld [c], a                                     ; $4d16: $e2
    ld l, l                                       ; $4d17: $6d
    add hl, sp                                    ; $4d18: $39
    ret nz                                        ; $4d19: $c0

    dec [hl]                                      ; $4d1a: $35
    db $e3                                        ; $4d1b: $e3
    add c                                         ; $4d1c: $81
    ld d, e                                       ; $4d1d: $53
    jp z, Jump_000_00ff                           ; $4d1e: $ca $ff $00

    ret z                                         ; $4d21: $c8

    rst $38                                       ; $4d22: $ff
    and b                                         ; $4d23: $a0
    pop bc                                        ; $4d24: $c1
    ld [c], a                                     ; $4d25: $e2
    cp e                                          ; $4d26: $bb
    and b                                         ; $4d27: $a0
    dec [hl]                                      ; $4d28: $35
    db $e4                                        ; $4d29: $e4
    ld d, d                                       ; $4d2a: $52
    ldh [$ca], a                                  ; $4d2b: $e0 $ca
    rst $38                                       ; $4d2d: $ff
    ret nz                                        ; $4d2e: $c0

    jp hl                                         ; $4d2f: $e9


    cp [hl]                                       ; $4d30: $be
    and b                                         ; $4d31: $a0
    pop bc                                        ; $4d32: $c1
    pop hl                                        ; $4d33: $e1
    ret nz                                        ; $4d34: $c0

    db $e4                                        ; $4d35: $e4
    ld l, l                                       ; $4d36: $6d
    ld l, d                                       ; $4d37: $6a
    ld l, l                                       ; $4d38: $6d
    add b                                         ; $4d39: $80
    ld b, b                                       ; $4d3a: $40
    rst $38                                       ; $4d3b: $ff
    ret nz                                        ; $4d3c: $c0

    db $eb                                        ; $4d3d: $eb

jr_058_4d3e:
    cp a                                          ; $4d3e: $bf
    ld [c], a                                     ; $4d3f: $e2
    ret nz                                        ; $4d40: $c0

    db $e4                                        ; $4d41: $e4
    pop bc                                        ; $4d42: $c1
    ldh [$c0], a                                  ; $4d43: $e0 $c0
    rst $18                                       ; $4d45: $df
    ret nz                                        ; $4d46: $c0

    db $ed                                        ; $4d47: $ed
    xor d                                         ; $4d48: $aa
    adc e                                         ; $4d49: $8b

jr_058_4d4a:
    ld e, b                                       ; $4d4a: $58
    ld [hl-], a                                   ; $4d4b: $32
    ret nz                                        ; $4d4c: $c0

    db $e4                                        ; $4d4d: $e4
    ld l, h                                       ; $4d4e: $6c
    pop bc                                        ; $4d4f: $c1
    pop hl                                        ; $4d50: $e1
    ld b, b                                       ; $4d51: $40
    rst $18                                       ; $4d52: $df
    nop                                           ; $4d53: $00
    ld [$8faa], a                                 ; $4d54: $ea $aa $8f
    ld e, b                                       ; $4d57: $58
    xor e                                         ; $4d58: $ab
    ld sp, $bf4d                                  ; $4d59: $31 $4d $bf
    ldh [$c0], a                                  ; $4d5c: $e0 $c0
    ld [c], a                                     ; $4d5e: $e2
    pop bc                                        ; $4d5f: $c1
    pop hl                                        ; $4d60: $e1
    ld h, b                                       ; $4d61: $60
    ldh a, [$ca]                                  ; $4d62: $f0 $ca
    rst $38                                       ; $4d64: $ff
    add sp, -$19                                  ; $4d65: $e8 $e7
    jp nz, Jump_000_3ce1                          ; $4d67: $c2 $e1 $3c

    add d                                         ; $4d6a: $82
    ld d, l                                       ; $4d6b: $55
    ld d, h                                       ; $4d6c: $54
    ld d, l                                       ; $4d6d: $55
    ld d, l                                       ; $4d6e: $55
    rlca                                          ; $4d6f: $07
    ld d, h                                       ; $4d70: $54
    ld d, h                                       ; $4d71: $54
    ld a, [hl-]                                   ; $4d72: $3a
    jr c, jr_058_4cf6                             ; $4d73: $38 $81

    jp z, $ffff                                   ; $4d75: $ca $ff $ff

    rst $38                                       ; $4d78: $ff
    rst $38                                       ; $4d79: $ff
    rst $38                                       ; $4d7a: $ff
    rst $38                                       ; $4d7b: $ff
    rst $38                                       ; $4d7c: $ff
    nop                                           ; $4d7d: $00
    rst $38                                       ; $4d7e: $ff
    rst $38                                       ; $4d7f: $ff
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
    rst $38                                       ; $4d8a: $ff
    rst $38                                       ; $4d8b: $ff
    rst $38                                       ; $4d8c: $ff
    rst $38                                       ; $4d8d: $ff
    nop                                           ; $4d8e: $00
    rst $38                                       ; $4d8f: $ff
    rst $38                                       ; $4d90: $ff
    rst $38                                       ; $4d91: $ff
    rst $38                                       ; $4d92: $ff
    rst $38                                       ; $4d93: $ff
    rst $38                                       ; $4d94: $ff
    rst $38                                       ; $4d95: $ff
    rst $38                                       ; $4d96: $ff
    rst $38                                       ; $4d97: $ff
    rst $38                                       ; $4d98: $ff
    rst $38                                       ; $4d99: $ff
    rst $38                                       ; $4d9a: $ff
    rst $38                                       ; $4d9b: $ff
    rst $38                                       ; $4d9c: $ff
    rst $38                                       ; $4d9d: $ff
    rst $38                                       ; $4d9e: $ff
    nop                                           ; $4d9f: $00
    rst $38                                       ; $4da0: $ff
    rst $38                                       ; $4da1: $ff
    rst $38                                       ; $4da2: $ff
    rst $38                                       ; $4da3: $ff
    rst $38                                       ; $4da4: $ff
    rst $38                                       ; $4da5: $ff
    rst $38                                       ; $4da6: $ff
    rst $38                                       ; $4da7: $ff
    rst $38                                       ; $4da8: $ff
    rst $38                                       ; $4da9: $ff
    rst $38                                       ; $4daa: $ff
    rst $38                                       ; $4dab: $ff
    rst $38                                       ; $4dac: $ff
    rst $38                                       ; $4dad: $ff
    rst $38                                       ; $4dae: $ff
    rst $38                                       ; $4daf: $ff
    nop                                           ; $4db0: $00
    rst $38                                       ; $4db1: $ff
    rst $38                                       ; $4db2: $ff
    rst $38                                       ; $4db3: $ff
    rst $38                                       ; $4db4: $ff
    rst $38                                       ; $4db5: $ff
    rst $38                                       ; $4db6: $ff
    rst $38                                       ; $4db7: $ff
    rst $38                                       ; $4db8: $ff
    rst $38                                       ; $4db9: $ff
    rst $38                                       ; $4dba: $ff
    rst $38                                       ; $4dbb: $ff
    rst $38                                       ; $4dbc: $ff
    rst $38                                       ; $4dbd: $ff
    rst $38                                       ; $4dbe: $ff
    rst $38                                       ; $4dbf: $ff
    rst $38                                       ; $4dc0: $ff
    nop                                           ; $4dc1: $00
    rst $38                                       ; $4dc2: $ff
    rst $38                                       ; $4dc3: $ff
    rst $38                                       ; $4dc4: $ff
    rst $38                                       ; $4dc5: $ff
    rst $38                                       ; $4dc6: $ff
    rst $38                                       ; $4dc7: $ff
    rst $38                                       ; $4dc8: $ff
    rst $38                                       ; $4dc9: $ff
    rst $38                                       ; $4dca: $ff
    rst $38                                       ; $4dcb: $ff
    rst $38                                       ; $4dcc: $ff
    rst $38                                       ; $4dcd: $ff
    rst $38                                       ; $4dce: $ff
    rst $38                                       ; $4dcf: $ff
    rst $38                                       ; $4dd0: $ff
    rst $38                                       ; $4dd1: $ff
    nop                                           ; $4dd2: $00
    rst $38                                       ; $4dd3: $ff
    rst $38                                       ; $4dd4: $ff
    rst $38                                       ; $4dd5: $ff
    rst $38                                       ; $4dd6: $ff
    rst $38                                       ; $4dd7: $ff
    rst $38                                       ; $4dd8: $ff
    rst $38                                       ; $4dd9: $ff
    rst $38                                       ; $4dda: $ff
    rst $38                                       ; $4ddb: $ff
    rst $38                                       ; $4ddc: $ff
    rst $38                                       ; $4ddd: $ff
    rst $38                                       ; $4dde: $ff
    rst $38                                       ; $4ddf: $ff
    rst $38                                       ; $4de0: $ff
    rst $38                                       ; $4de1: $ff
    rst $38                                       ; $4de2: $ff
    nop                                           ; $4de3: $00
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
    rst $38                                       ; $4df2: $ff
    rst $38                                       ; $4df3: $ff
    nop                                           ; $4df4: $00
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
    rst $38                                       ; $4e03: $ff
    rst $38                                       ; $4e04: $ff
    nop                                           ; $4e05: $00
    rst $38                                       ; $4e06: $ff
    rst $38                                       ; $4e07: $ff
    rst $38                                       ; $4e08: $ff
    rst $38                                       ; $4e09: $ff
    rst $38                                       ; $4e0a: $ff
    rst $38                                       ; $4e0b: $ff
    rst $38                                       ; $4e0c: $ff
    rst $38                                       ; $4e0d: $ff
    rst $38                                       ; $4e0e: $ff
    rst $38                                       ; $4e0f: $ff
    rst $38                                       ; $4e10: $ff
    rst $38                                       ; $4e11: $ff
    rst $38                                       ; $4e12: $ff
    rst $38                                       ; $4e13: $ff
    rst $38                                       ; $4e14: $ff
    rst $38                                       ; $4e15: $ff
    nop                                           ; $4e16: $00
    rst $38                                       ; $4e17: $ff
    rst $38                                       ; $4e18: $ff
    rst $38                                       ; $4e19: $ff
    rst $38                                       ; $4e1a: $ff
    rst $38                                       ; $4e1b: $ff
    rst $38                                       ; $4e1c: $ff
    rst $38                                       ; $4e1d: $ff
    rst $38                                       ; $4e1e: $ff
    rst $38                                       ; $4e1f: $ff
    rst $38                                       ; $4e20: $ff
    rst $38                                       ; $4e21: $ff
    rst $38                                       ; $4e22: $ff
    rst $38                                       ; $4e23: $ff
    rst $38                                       ; $4e24: $ff
    rst $38                                       ; $4e25: $ff
    rst $38                                       ; $4e26: $ff
    nop                                           ; $4e27: $00
    rst $38                                       ; $4e28: $ff
    rst $38                                       ; $4e29: $ff
    rst $38                                       ; $4e2a: $ff
    rst $38                                       ; $4e2b: $ff
    rst $38                                       ; $4e2c: $ff
    rst $38                                       ; $4e2d: $ff
    rst $38                                       ; $4e2e: $ff
    rst $38                                       ; $4e2f: $ff
    rst $38                                       ; $4e30: $ff
    rst $38                                       ; $4e31: $ff
    rst $38                                       ; $4e32: $ff
    rst $38                                       ; $4e33: $ff
    rst $38                                       ; $4e34: $ff
    rst $38                                       ; $4e35: $ff
    rst $38                                       ; $4e36: $ff
    di                                            ; $4e37: $f3
    nop                                           ; $4e38: $00
    nop                                           ; $4e39: $00
    nop                                           ; $4e3a: $00
    and l                                         ; $4e3b: $a5
    nop                                           ; $4e3c: $00
    rst $38                                       ; $4e3d: $ff
    push hl                                       ; $4e3e: $e5
    ld [hl-], a                                   ; $4e3f: $32
    or $e6                                        ; $4e40: $f6 $e6
    rst $30                                       ; $4e42: $f7
    rst $20                                       ; $4e43: $e7
    dec [hl]                                      ; $4e44: $35
    db $ec                                        ; $4e45: $ec
    xor $37                                       ; $4e46: $ee $37
    db $ec                                        ; $4e48: $ec
    jp c, $c7f0                                   ; $4e49: $da $f0 $c7

    add sp, $33                                   ; $4e4c: $e8 $33
    ld sp, $f2e0                                  ; $4e4e: $31 $e0 $f2
    ld [hl], $30                                  ; $4e51: $36 $30
    scf                                           ; $4e53: $37
    cp a                                          ; $4e54: $bf
    ld h, $20                                     ; $4e55: $26 $20
    daa                                           ; $4e57: $27
    db $10                                        ; $4e58: $10
    ld d, $17                                     ; $4e59: $16 $17
    jp nz, Jump_000_34f6                          ; $4e5b: $c2 $f6 $34

    rst $38                                       ; $4e5e: $ff
    ld [hl], $32                                  ; $4e5f: $36 $32
    jr nc, jr_058_4e9a                            ; $4e61: $30 $37

    ld sp, $3133                                  ; $4e63: $31 $33 $31
    inc sp                                        ; $4e66: $33
    nop                                           ; $4e67: $00
    and b                                         ; $4e68: $a0
    ei                                            ; $4e69: $fb
    rst $38                                       ; $4e6a: $ff
    rst $28                                       ; $4e6b: $ef
    nop                                           ; $4e6c: $00
    nop                                           ; $4e6d: $00

Call_058_4e6e:
    nop                                           ; $4e6e: $00
    ld [hl], a                                    ; $4e6f: $77
    ld c, [hl]                                    ; $4e70: $4e
    and a                                         ; $4e71: $a7
    ld c, [hl]                                    ; $4e72: $4e
    dec h                                         ; $4e73: $25
    ld d, c                                       ; $4e74: $51
    ld de, $f053                                  ; $4e75: $11 $53 $f0
    inc bc                                        ; $4e78: $03
    ld c, l                                       ; $4e79: $4d
    rrca                                          ; $4e7a: $0f
    ld b, b                                       ; $4e7b: $40
    ld [bc], a                                    ; $4e7c: $02
    ret nz                                        ; $4e7d: $c0

    nop                                           ; $4e7e: $00
    ldh a, [$03]                                  ; $4e7f: $f0 $03
    push af                                       ; $4e81: $f5
    inc bc                                        ; $4e82: $03
    ld c, b                                       ; $4e83: $48
    rrca                                          ; $4e84: $0f
    ld b, b                                       ; $4e85: $40
    ld [bc], a                                    ; $4e86: $02
    ld e, a                                       ; $4e87: $5f
    dec sp                                        ; $4e88: $3b
    jr c, @+$10                                   ; $4e89: $38 $0e

    ld sp, $4819                                  ; $4e8b: $31 $19 $48
    rrca                                          ; $4e8e: $0f
    ld [$0825], sp                                ; $4e8f: $08 $25 $08
    dec h                                         ; $4e92: $25
    ld [$0825], sp                                ; $4e93: $08 $25 $08
    dec h                                         ; $4e96: $25
    ld [$0825], sp                                ; $4e97: $08 $25 $08

jr_058_4e9a:
    dec h                                         ; $4e9a: $25
    ld [$0825], sp                                ; $4e9b: $08 $25 $08
    dec h                                         ; $4e9e: $25
    ld [$0825], sp                                ; $4e9f: $08 $25 $08
    dec h                                         ; $4ea2: $25
    ld [$0825], sp                                ; $4ea3: $08 $25 $08
    dec h                                         ; $4ea6: $25
    push af                                       ; $4ea7: $f5
    inc c                                         ; $4ea8: $0c
    rst $38                                       ; $4ea9: $ff
    db $e4                                        ; $4eaa: $e4
    dec bc                                        ; $4eab: $0b
    rst $38                                       ; $4eac: $ff
    db $e4                                        ; $4ead: $e4
    ld c, e                                       ; $4eae: $4b
    dec bc                                        ; $4eaf: $0b
    ld a, [bc]                                    ; $4eb0: $0a
    dec bc                                        ; $4eb1: $0b
    add $ec                                       ; $4eb2: $c6 $ec
    ldh [$4c], a                                  ; $4eb4: $e0 $4c
    ld c, h                                       ; $4eb6: $4c
    db $fd                                        ; $4eb7: $fd
    and $f5                                       ; $4eb8: $e6 $f5
    ldh [$f0], a                                  ; $4eba: $e0 $f0
    ld [c], a                                     ; $4ebc: $e2
    inc l                                         ; $4ebd: $2c
    inc l                                         ; $4ebe: $2c
    db $e3                                        ; $4ebf: $e3
    inc c                                         ; $4ec0: $0c
    inc c                                         ; $4ec1: $0c
    db $fd                                        ; $4ec2: $fd
    ldh [$fe], a                                  ; $4ec3: $e0 $fe
    di                                            ; $4ec5: $f3
    pop bc                                        ; $4ec6: $c1
    ldh [$2b], a                                  ; $4ec7: $e0 $2b
    ld l, e                                       ; $4ec9: $6b
    ld c, e                                       ; $4eca: $4b
    adc e                                         ; $4ecb: $8b
    ld c, e                                       ; $4ecc: $4b
    ld c, e                                       ; $4ecd: $4b
    ret nz                                        ; $4ece: $c0

    ldh [$0b], a                                  ; $4ecf: $e0 $0b
    ret nz                                        ; $4ed1: $c0

    jp hl                                         ; $4ed2: $e9


    cp c                                          ; $4ed3: $b9
    ldh [$b2], a                                  ; $4ed4: $e0 $b2
    db $e4                                        ; $4ed6: $e4
    inc l                                         ; $4ed7: $2c
    ret c                                         ; $4ed8: $d8

    ret nz                                        ; $4ed9: $c0

    ld [c], a                                     ; $4eda: $e2
    cp h                                          ; $4edb: $bc
    di                                            ; $4edc: $f3
    add e                                         ; $4edd: $83
    ldh [rOCPD], a                                ; $4ede: $e0 $6b
    ld l, e                                       ; $4ee0: $6b
    db $fd                                        ; $4ee1: $fd
    ldh [rOCPD], a                                ; $4ee2: $e0 $6b
    dec hl                                        ; $4ee4: $2b
    ld [bc], a                                    ; $4ee5: $02
    cp l                                          ; $4ee6: $bd
    pop hl                                        ; $4ee7: $e1
    ld a, [bc]                                    ; $4ee8: $0a
    add c                                         ; $4ee9: $81
    ldh [$7e], a                                  ; $4eea: $e0 $7e
    push hl                                       ; $4eec: $e5
    db $fc                                        ; $4eed: $fc
    db $e3                                        ; $4eee: $e3
    ld [hl], b                                    ; $4eef: $70
    pop hl                                        ; $4ef0: $e1
    add c                                         ; $4ef1: $81
    pop hl                                        ; $4ef2: $e1
    ret nz                                        ; $4ef3: $c0

    rst $30                                       ; $4ef4: $f7
    ld b, $c1                                     ; $4ef5: $06 $c1
    db $e3                                        ; $4ef7: $e3
    ld l, e                                       ; $4ef8: $6b
    ld l, e                                       ; $4ef9: $6b
    ld a, a                                       ; $4efa: $7f
    ld [c], a                                     ; $4efb: $e2

jr_058_4efc:
    inc l                                         ; $4efc: $2c
    pop hl                                        ; $4efd: $e1
    add d                                         ; $4efe: $82
    db $e4                                        ; $4eff: $e4
    ld b, b                                       ; $4f00: $40
    add sp, -$3f                                  ; $4f01: $e8 $c1
    db $e4                                        ; $4f03: $e4
    jr jr_058_4f42                                ; $4f04: $18 $3c

    db $ec                                        ; $4f06: $ec
    ld [hl+], a                                   ; $4f07: $22
    pop hl                                        ; $4f08: $e1
    pop bc                                        ; $4f09: $c1
    rst $20                                       ; $4f0a: $e7
    ld l, e                                       ; $4f0b: $6b
    dec hl                                        ; $4f0c: $2b
    ld hl, sp-$3f                                 ; $4f0d: $f8 $c1
    nop                                           ; $4f0f: $00
    pop hl                                        ; $4f10: $e1
    db $e3                                        ; $4f11: $e3
    db $e3                                        ; $4f12: $e3
    ld h, b                                       ; $4f13: $60
    jp c, $f4e8                                   ; $4f14: $da $e8 $f4

    push hl                                       ; $4f17: $e5
    jr c, jr_058_4efc                             ; $4f18: $38 $e2

    or e                                          ; $4f1a: $b3
    ld [c], a                                     ; $4f1b: $e2
    ret nz                                        ; $4f1c: $c0

    db $e4                                        ; $4f1d: $e4
    ld c, h                                       ; $4f1e: $4c
    inc c                                         ; $4f1f: $0c
    pop bc                                        ; $4f20: $c1
    rst $20                                       ; $4f21: $e7
    pop bc                                        ; $4f22: $c1

jr_058_4f23:
    ld l, e                                       ; $4f23: $6b
    cp c                                          ; $4f24: $b9
    jp nz, $dcc0                                  ; $4f25: $c2 $c0 $dc

    cp e                                          ; $4f28: $bb
    jp z, $c0d2                                   ; $4f29: $ca $d2 $c0

    inc bc                                        ; $4f2c: $03
    ldh [rWX], a                                  ; $4f2d: $e0 $4b
    ld c, e                                       ; $4f2f: $4b
    nop                                           ; $4f30: $00
    nop                                           ; $4f31: $00
    db $e3                                        ; $4f32: $e3
    ld a, d                                       ; $4f33: $7a
    jp $d8c0                                      ; $4f34: $c3 $c0 $d8


    add b                                         ; $4f37: $80
    add sp, $46                                   ; $4f38: $e8 $46
    jp $c190                                      ; $4f3a: $c3 $90 $c1


    adc d                                         ; $4f3d: $8a
    db $e3                                        ; $4f3e: $e3
    cp a                                          ; $4f3f: $bf
    pop bc                                        ; $4f40: $c1
    nop                                           ; $4f41: $00

jr_058_4f42:
    ret nz                                        ; $4f42: $c0

    push hl                                       ; $4f43: $e5
    ret nz                                        ; $4f44: $c0

    sub $c0                                       ; $4f45: $d6 $c0
    xor $ca                                       ; $4f47: $ee $ca
    rst $20                                       ; $4f49: $e7
    ld b, d                                       ; $4f4a: $42
    add sp, -$40                                  ; $4f4b: $e8 $c0
    jp c, $abfb                                   ; $4f4d: $da $fb $ab

    ld c, c                                       ; $4f50: $49
    ret nz                                        ; $4f51: $c0

    nop                                           ; $4f52: $00
    push bc                                       ; $4f53: $c5
    and l                                         ; $4f54: $a5
    ld [bc], a                                    ; $4f55: $02
    ld [c], a                                     ; $4f56: $e2
    xor c                                         ; $4f57: $a9
    push bc                                       ; $4f58: $c5
    ret nz                                        ; $4f59: $c0

    sub $be                                       ; $4f5a: $d6 $be
    xor h                                         ; $4f5c: $ac
    adc $c1                                       ; $4f5d: $ce $c1
    call z, Call_000_3ea1                         ; $4f5f: $cc $a1 $3e
    db $e3                                        ; $4f62: $e3
    nop                                           ; $4f63: $00
    call nz, Call_058_52a0                        ; $4f64: $c4 $a0 $52
    rst $00                                       ; $4f67: $c7
    push bc                                       ; $4f68: $c5
    and e                                         ; $4f69: $a3
    ld a, b                                       ; $4f6a: $78
    call nz, $a27a                                ; $4f6b: $c4 $7a $a2
    add b                                         ; $4f6e: $80
    rst $20                                       ; $4f6f: $e7
    ld [hl], a                                    ; $4f70: $77
    and [hl]                                      ; $4f71: $a6
    ld c, a                                       ; $4f72: $4f
    jp nz, $bf70                                  ; $4f73: $c2 $70 $bf

    push hl                                       ; $4f76: $e5
    ret nz                                        ; $4f77: $c0

    push hl                                       ; $4f78: $e5
    add b                                         ; $4f79: $80
    rst $18                                       ; $4f7a: $df
    jr c, jr_058_4f23                             ; $4f7b: $38 $a6

    dec hl                                        ; $4f7d: $2b
    dec bc                                        ; $4f7e: $0b
    dec hl                                        ; $4f7f: $2b
    inc c                                         ; $4f80: $0c
    jp nz, Jump_058_7d20                          ; $4f81: $c2 $20 $7d

    and c                                         ; $4f84: $a1
    inc bc                                        ; $4f85: $03
    pop bc                                        ; $4f86: $c1
    ld de, $80a3                                  ; $4f87: $11 $a3 $80
    ret c                                         ; $4f8a: $d8

    cp $8c                                        ; $4f8b: $fe $8c
    ld c, e                                       ; $4f8d: $4b
    cp a                                          ; $4f8e: $bf
    ldh [$c0], a                                  ; $4f8f: $e0 $c0
    add $42                                       ; $4f91: $c6 $42
    nop                                           ; $4f93: $00
    and b                                         ; $4f94: $a0
    inc l                                         ; $4f95: $2c
    pop de                                        ; $4f96: $d1
    add e                                         ; $4f97: $83
    add b                                         ; $4f98: $80
    rst $10                                       ; $4f99: $d7
    cp e                                          ; $4f9a: $bb
    and l                                         ; $4f9b: $a5
    or l                                          ; $4f9c: $b5
    add h                                         ; $4f9d: $84
    ld a, [bc]                                    ; $4f9e: $0a
    ld a, a                                       ; $4f9f: $7f
    ldh [rP1], a                                  ; $4fa0: $e0 $00
    nop                                           ; $4fa2: $00
    ld [c], a                                     ; $4fa3: $e2
    ld b, h                                       ; $4fa4: $44
    and c                                         ; $4fa5: $a1
    or l                                          ; $4fa6: $b5
    pop hl                                        ; $4fa7: $e1
    inc b                                         ; $4fa8: $04
    push hl                                       ; $4fa9: $e5
    add b                                         ; $4faa: $80
    rst $10                                       ; $4fab: $d7
    pop bc                                        ; $4fac: $c1
    db $e3                                        ; $4fad: $e3
    ld [hl], l                                    ; $4fae: $75
    add h                                         ; $4faf: $84
    ld c, [hl]                                    ; $4fb0: $4e
    add c                                         ; $4fb1: $81
    nop                                           ; $4fb2: $00
    ld c, e                                       ; $4fb3: $4b
    and d                                         ; $4fb4: $a2
    add l                                         ; $4fb5: $85
    and d                                         ; $4fb6: $a2
    ld a, a                                       ; $4fb7: $7f
    ld [c], a                                     ; $4fb8: $e2
    add b                                         ; $4fb9: $80
    rst $18                                       ; $4fba: $df
    add c                                         ; $4fbb: $81
    rst $20                                       ; $4fbc: $e7

jr_058_4fbd:
    dec d                                         ; $4fbd: $15
    adc c                                         ; $4fbe: $89
    jp c, Jump_000_1584                           ; $4fbf: $da $84 $15

    add l                                         ; $4fc2: $85
    nop                                           ; $4fc3: $00
    nop                                           ; $4fc4: $00
    sbc b                                         ; $4fc5: $98
    ret nz                                        ; $4fc6: $c0

    xor $58                                       ; $4fc7: $ee $58
    add a                                         ; $4fc9: $87
    ld b, b                                       ; $4fca: $40
    add $c0                                       ; $4fcb: $c6 $c0
    db $e3                                        ; $4fcd: $e3
    ret nz                                        ; $4fce: $c0

    ret nc                                        ; $4fcf: $d0

    add e                                         ; $4fd0: $83
    ld [$8615], a                                 ; $4fd1: $ea $15 $86
    nop                                           ; $4fd4: $00
    ld [de], a                                    ; $4fd5: $12
    call nz, $c611                                ; $4fd6: $c4 $11 $c6
    add b                                         ; $4fd9: $80
    ldh [$c0], a                                  ; $4fda: $e0 $c0
    db $db                                        ; $4fdc: $db
    ld [hl], h                                    ; $4fdd: $74
    ld h, a                                       ; $4fde: $67
    ld c, [hl]                                    ; $4fdf: $4e
    add $d3                                       ; $4fe0: $c6 $d3
    and [hl]                                      ; $4fe2: $a6
    pop de                                        ; $4fe3: $d1
    ld h, e                                       ; $4fe4: $63
    nop                                           ; $4fe5: $00
    ret nz                                        ; $4fe6: $c0

    sub $36                                       ; $4fe7: $d6 $36
    ld h, e                                       ; $4fe9: $63
    inc [hl]                                      ; $4fea: $34
    ld h, l                                       ; $4feb: $65
    dec d                                         ; $4fec: $15
    adc b                                         ; $4fed: $88
    ld b, h                                       ; $4fee: $44
    add $fd                                       ; $4fef: $c6 $fd
    xor d                                         ; $4ff1: $aa
    nop                                           ; $4ff2: $00
    ld l, [hl]                                    ; $4ff3: $6e
    ld [hl], $65                                  ; $4ff4: $36 $65
    nop                                           ; $4ff6: $00
    add e                                         ; $4ff7: $83
    rst $20                                       ; $4ff8: $e7
    nop                                           ; $4ff9: $00
    ld [$a455], a                                 ; $4ffa: $ea $55 $a4
    ret nz                                        ; $4ffd: $c0

    cp e                                          ; $4ffe: $bb
    ld a, [hl-]                                   ; $4fff: $3a
    add a                                         ; $5000: $87
    call c, $0042                                 ; $5001: $dc $42 $00
    ld [$4392], a                                 ; $5004: $ea $92 $43
    nop                                           ; $5007: $00
    ret nz                                        ; $5008: $c0

    cp c                                          ; $5009: $b9
    pop bc                                        ; $500a: $c1
    jp hl                                         ; $500b: $e9


    ld c, c                                       ; $500c: $49
    rst $00                                       ; $500d: $c7
    db $d3                                        ; $500e: $d3
    add a                                         ; $500f: $87
    inc de                                        ; $5010: $13
    ld h, e                                       ; $5011: $63
    nop                                           ; $5012: $00
    ld [hl], c                                    ; $5013: $71
    dec l                                         ; $5014: $2d
    ld h, [hl]                                    ; $5015: $66
    ld b, b                                       ; $5016: $40
    push hl                                       ; $5017: $e5
    nop                                           ; $5018: $00
    ld b, h                                       ; $5019: $44
    add sp, $55                                   ; $501a: $e8 $55
    ld b, l                                       ; $501c: $45
    inc bc                                        ; $501d: $03
    ld h, e                                       ; $501e: $63
    sbc l                                         ; $501f: $9d
    pop bc                                        ; $5020: $c1
    ld c, h                                       ; $5021: $4c
    ld b, e                                       ; $5022: $43
    ei                                            ; $5023: $fb
    and $11                                       ; $5024: $e6 $11
    rst $20                                       ; $5026: $e7
    cp a                                          ; $5027: $bf
    xor a                                         ; $5028: $af
    nop                                           ; $5029: $00
    ret nz                                        ; $502a: $c0

    jp z, $8453                                   ; $502b: $ca $53 $84

    ret nz                                        ; $502e: $c0

    db $ed                                        ; $502f: $ed
    add b                                         ; $5030: $80
    rst $20                                       ; $5031: $e7
    add b                                         ; $5032: $80
    xor c                                         ; $5033: $a9
    jr nz, jr_058_4fbd                            ; $5034: $20 $87

    and d                                         ; $5036: $a2
    ld a, [hl+]                                   ; $5037: $2a
    add b                                         ; $5038: $80
    ld [c], a                                     ; $5039: $e2
    nop                                           ; $503a: $00
    ld c, e                                       ; $503b: $4b
    ld b, [hl]                                    ; $503c: $46
    add $a4                                       ; $503d: $c6 $a4
    or a                                          ; $503f: $b7
    ld l, [hl]                                    ; $5040: $6e
    sub c                                         ; $5041: $91
    add l                                         ; $5042: $85
    ld h, a                                       ; $5043: $67
    ld sp, $eec1                                  ; $5044: $31 $c1 $ee
    ld h, b                                       ; $5047: $60
    and d                                         ; $5048: $a2
    ld [hl], a                                    ; $5049: $77
    ld l, l                                       ; $504a: $6d
    nop                                           ; $504b: $00
    ret z                                         ; $504c: $c8

    and l                                         ; $504d: $a5
    jp nz, Jump_000_10f2                          ; $504e: $c2 $f2 $10

    ld l, $36                                     ; $5051: $2e $36
    ld l, l                                       ; $5053: $6d
    add b                                         ; $5054: $80
    rst $30                                       ; $5055: $f7
    inc e                                         ; $5056: $1c
    add h                                         ; $5057: $84
    add b                                         ; $5058: $80
    db $ed                                        ; $5059: $ed
    ld a, a                                       ; $505a: $7f
    ldh a, [rP1]                                  ; $505b: $f0 $00
    push hl                                       ; $505d: $e5
    ld d, h                                       ; $505e: $54
    ld b, b                                       ; $505f: $40
    pop af                                        ; $5060: $f1
    or [hl]                                       ; $5061: $b6
    ld d, b                                       ; $5062: $50
    db $db                                        ; $5063: $db
    rlca                                          ; $5064: $07
    or l                                          ; $5065: $b5
    sub $92                                       ; $5066: $d6 $92
    adc c                                         ; $5068: $89
    inc bc                                        ; $5069: $03
    and h                                         ; $506a: $a4
    ld [bc], a                                    ; $506b: $02
    and [hl]                                      ; $506c: $a6
    nop                                           ; $506d: $00
    ld [hl+], a                                   ; $506e: $22
    inc bc                                        ; $506f: $03
    sub l                                         ; $5070: $95
    dec b                                         ; $5071: $05
    ld d, l                                       ; $5072: $55
    ld e, c                                       ; $5073: $59
    ld [hl+], a                                   ; $5074: $22
    add d                                         ; $5075: $82
    db $ed                                        ; $5076: $ed
    and l                                         ; $5077: $a5
    ld b, b                                       ; $5078: $40
    res 0, b                                      ; $5079: $cb $80
    rst $38                                       ; $507b: $ff
    sub d                                         ; $507c: $92
    dec b                                         ; $507d: $05
    nop                                           ; $507e: $00
    scf                                           ; $507f: $37
    push bc                                       ; $5080: $c5
    ret nz                                        ; $5081: $c0

    res 0, b                                      ; $5082: $cb $80
    rst $38                                       ; $5084: $ff
    dec d                                         ; $5085: $15
    adc c                                         ; $5086: $89
    cp [hl]                                       ; $5087: $be
    ld l, e                                       ; $5088: $6b
    ld e, $a6                                     ; $5089: $1e $a6
    cp h                                          ; $508b: $bc
    rst $38                                       ; $508c: $ff
    ld a, c                                       ; $508d: $79
    ld [hl-], a                                   ; $508e: $32
    nop                                           ; $508f: $00
    ld a, $87                                     ; $5090: $3e $87
    ld a, h                                       ; $5092: $7c
    xor l                                         ; $5093: $ad
    ld a, c                                       ; $5094: $79
    scf                                           ; $5095: $37
    add b                                         ; $5096: $80
    db $eb                                        ; $5097: $eb
    sub c                                         ; $5098: $91
    ret c                                         ; $5099: $d8

    add hl, sp                                    ; $509a: $39
    rlca                                          ; $509b: $07
    ld a, b                                       ; $509c: $78
    adc b                                         ; $509d: $88
    cp $4c                                        ; $509e: $fe $4c
    nop                                           ; $50a0: $00
    ld d, d                                       ; $50a1: $52
    reti                                          ; $50a2: $d9


    ld a, d                                       ; $50a3: $7a
    daa                                           ; $50a4: $27
    ld e, c                                       ; $50a5: $59
    ld b, h                                       ; $50a6: $44
    set 7, a                                      ; $50a7: $cb $ff
    ld h, l                                       ; $50a9: $65
    xor h                                         ; $50aa: $ac
    rst $38                                       ; $50ab: $ff
    push hl                                       ; $50ac: $e5
    dec h                                         ; $50ad: $25
    adc c                                         ; $50ae: $89
    rst $38                                       ; $50af: $ff
    rst $38                                       ; $50b0: $ff
    nop                                           ; $50b1: $00
    push hl                                       ; $50b2: $e5
    ld l, b                                       ; $50b3: $68
    sbc a                                         ; $50b4: $9f
    adc b                                         ; $50b5: $88
    ld a, a                                       ; $50b6: $7f
    rst $38                                       ; $50b7: $ff
    ccf                                           ; $50b8: $3f
    ld a, [c]                                     ; $50b9: $f2
    db $e4                                        ; $50ba: $e4
    cp a                                          ; $50bb: $bf
    ld [bc], a                                    ; $50bc: $02
    or d                                          ; $50bd: $b2
    db $e4                                        ; $50be: $e4
    cp a                                          ; $50bf: $bf
    ret nz                                        ; $50c0: $c0

    db $fc                                        ; $50c1: $fc
    nop                                           ; $50c2: $00
    cp c                                          ; $50c3: $b9
    ld b, $7d                                     ; $50c4: $06 $7d
    push bc                                       ; $50c6: $c5
    add b                                         ; $50c7: $80
    rst $38                                       ; $50c8: $ff
    ld a, a                                       ; $50c9: $7f
    pop de                                        ; $50ca: $d1
    ld a, [hl-]                                   ; $50cb: $3a
    dec b                                         ; $50cc: $05
    ld e, a                                       ; $50cd: $5f
    ld c, b                                       ; $50ce: $48
    rst $38                                       ; $50cf: $ff
    rst $38                                       ; $50d0: $ff
    inc h                                         ; $50d1: $24
    xor c                                         ; $50d2: $a9
    nop                                           ; $50d3: $00
    ret nz                                        ; $50d4: $c0

    add sp, -$01                                  ; $50d5: $e8 $ff
    rst $38                                       ; $50d7: $ff
    push af                                       ; $50d8: $f5
    ld [hl], l                                    ; $50d9: $75
    call $ffbf                                    ; $50da: $cd $bf $ff
    rst $38                                       ; $50dd: $ff
    rst $38                                       ; $50de: $ff
    rst $38                                       ; $50df: $ff
    sub [hl]                                      ; $50e0: $96
    rst $38                                       ; $50e1: $ff
    sbc c                                         ; $50e2: $99

Call_058_50e3:
    jp nc, $ff00                                  ; $50e3: $d2 $00 $ff

    rst $38                                       ; $50e6: $ff
    rst $38                                       ; $50e7: $ff
    rst $38                                       ; $50e8: $ff
    rst $38                                       ; $50e9: $ff
    rst $38                                       ; $50ea: $ff
    rst $38                                       ; $50eb: $ff
    rst $38                                       ; $50ec: $ff
    ld b, b                                       ; $50ed: $40
    ld e, a                                       ; $50ee: $5f
    rst $38                                       ; $50ef: $ff
    rst $38                                       ; $50f0: $ff
    rst $38                                       ; $50f1: $ff
    rst $38                                       ; $50f2: $ff
    rst $38                                       ; $50f3: $ff
    rst $38                                       ; $50f4: $ff
    nop                                           ; $50f5: $00
    rst $38                                       ; $50f6: $ff
    rst $38                                       ; $50f7: $ff
    rst $38                                       ; $50f8: $ff
    rst $38                                       ; $50f9: $ff
    rst $38                                       ; $50fa: $ff
    rst $38                                       ; $50fb: $ff
    rst $38                                       ; $50fc: $ff
    rst $38                                       ; $50fd: $ff
    rst $38                                       ; $50fe: $ff
    rst $38                                       ; $50ff: $ff
    rst $38                                       ; $5100: $ff
    rst $38                                       ; $5101: $ff
    rst $38                                       ; $5102: $ff
    rst $38                                       ; $5103: $ff
    rst $38                                       ; $5104: $ff
    rst $38                                       ; $5105: $ff
    nop                                           ; $5106: $00
    rst $38                                       ; $5107: $ff
    rst $38                                       ; $5108: $ff
    rst $38                                       ; $5109: $ff
    rst $38                                       ; $510a: $ff
    rst $38                                       ; $510b: $ff
    rst $38                                       ; $510c: $ff
    rst $38                                       ; $510d: $ff
    rst $38                                       ; $510e: $ff
    rst $38                                       ; $510f: $ff
    rst $38                                       ; $5110: $ff
    rst $38                                       ; $5111: $ff
    rst $38                                       ; $5112: $ff
    nop                                           ; $5113: $00
    cp a                                          ; $5114: $bf
    rst $38                                       ; $5115: $ff
    rst $38                                       ; $5116: $ff
    jr nc, @+$01                                  ; $5117: $30 $ff

    rst $38                                       ; $5119: $ff
    rst $38                                       ; $511a: $ff
    rst $38                                       ; $511b: $ff
    rst $38                                       ; $511c: $ff
    rst $38                                       ; $511d: $ff
    rst $38                                       ; $511e: $ff
    rst $38                                       ; $511f: $ff
    inc c                                         ; $5120: $0c
    inc c                                         ; $5121: $0c
    nop                                           ; $5122: $00
    nop                                           ; $5123: $00
    nop                                           ; $5124: $00
    db $ed                                        ; $5125: $ed
    jr nz, @+$01                                  ; $5126: $20 $ff

    db $e3                                        ; $5128: $e3
    rrca                                          ; $5129: $0f
    ld sp, $e4ff                                  ; $512a: $31 $ff $e4
    ld e, a                                       ; $512d: $5f
    ld e, e                                       ; $512e: $5b
    ld e, d                                       ; $512f: $5a
    ld h, e                                       ; $5130: $63
    ld e, e                                       ; $5131: $5b
    nop                                           ; $5132: $00
    rst $38                                       ; $5133: $ff
    rst $38                                       ; $5134: $ff
    rst $20                                       ; $5135: $e7
    and $c0                                       ; $5136: $e6 $c0
    ld [c], a                                     ; $5138: $e2
    ld a, [bc]                                    ; $5139: $0a
    dec bc                                        ; $513a: $0b
    pop bc                                        ; $513b: $c1
    ldh [rIE], a                                  ; $513c: $e0 $ff
    ld a, $3a                                     ; $513e: $3e $3a
    ld d, h                                       ; $5140: $54
    ld d, h                                       ; $5141: $54
    inc a                                         ; $5142: $3c
    ld sp, $5b5e                                  ; $5143: $31 $5e $5b
    jp hl                                         ; $5146: $e9


    ld e, e                                       ; $5147: $5b
    ret nz                                        ; $5148: $c0

    rst $38                                       ; $5149: $ff
    ret nz                                        ; $514a: $c0

    db $ec                                        ; $514b: $ec
    nop                                           ; $514c: $00
    add e                                         ; $514d: $83
    ldh [rKEY1], a                                ; $514e: $e0 $4d
    ld b, l                                       ; $5150: $45
    ld b, d                                       ; $5151: $42
    rra                                           ; $5152: $1f
    ld l, d                                       ; $5153: $6a
    ld l, d                                       ; $5154: $6a
    ld l, d                                       ; $5155: $6a
    dec [hl]                                      ; $5156: $35
    ld c, l                                       ; $5157: $4d
    ld a, a                                       ; $5158: $7f
    pop hl                                        ; $5159: $e1
    jp z, $80ff                                   ; $515a: $ca $ff $80

    db $eb                                        ; $515d: $eb
    cp [hl]                                       ; $515e: $be
    ld b, e                                       ; $515f: $43
    ldh [rKEY1], a                                ; $5160: $e0 $4d
    ld [hl-], a                                   ; $5162: $32
    jr nc, jr_058_51d2                            ; $5163: $30 $6d

    ld l, l                                       ; $5165: $6d
    cp a                                          ; $5166: $bf
    ldh [$39], a                                  ; $5167: $e0 $39
    jr @+$81                                      ; $5169: $18 $7f

    pop hl                                        ; $516b: $e1
    jp z, $e8ff                                   ; $516c: $ca $ff $e8

    rst $20                                       ; $516f: $e7
    ld hl, $8128                                  ; $5170: $21 $28 $81
    pop hl                                        ; $5173: $e1
    pop bc                                        ; $5174: $c1
    ld [c], a                                     ; $5175: $e2
    cp a                                          ; $5176: $bf
    pop hl                                        ; $5177: $e1
    rst $20                                       ; $5178: $e7
    ld d, d                                       ; $5179: $52
    ld sp, $c031                                  ; $517a: $31 $31 $c0
    rst $38                                       ; $517d: $ff
    ld [$11e9], a                                 ; $517e: $ea $e9 $11
    ld [de], a                                    ; $5181: $12
    ld hl, $0fe1                                  ; $5182: $21 $e1 $0f
    pop bc                                        ; $5185: $c1
    push hl                                       ; $5186: $e5
    ld a, [hl]                                    ; $5187: $7e
    ldh [$80], a                                  ; $5188: $e0 $80
    rst $38                                       ; $518a: $ff
    db $ed                                        ; $518b: $ed
    db $ec                                        ; $518c: $ec
    ld sp, $0431                                  ; $518d: $31 $31 $04
    rst $08                                       ; $5190: $cf
    ld sp, $3931                                  ; $5191: $31 $31 $39
    jr nc, @+$01                                  ; $5194: $30 $ff

    pop hl                                        ; $5196: $e1
    ld a, [hl]                                    ; $5197: $7e
    ldh [rOBP0], a                                ; $5198: $e0 $48
    ld c, c                                       ; $519a: $49
    rst $08                                       ; $519b: $cf
    ld sp, $5c5f                                  ; $519c: $31 $5f $5c
    ld e, l                                       ; $519f: $5d
    jp z, $e8ff                                   ; $51a0: $ca $ff $e8

    rst $20                                       ; $51a3: $e7
    ld e, l                                       ; $51a4: $5d
    ld sp, $31bf                                  ; $51a5: $31 $bf $31
    ld c, e                                       ; $51a8: $4b
    ld b, l                                       ; $51a9: $45
    ld b, d                                       ; $51aa: $42
    ld h, l                                       ; $51ab: $65
    ld h, l                                       ; $51ac: $65
    cp a                                          ; $51ad: $bf
    db $e3                                        ; $51ae: $e3
    add hl, sp                                    ; $51af: $39
    sbc a                                         ; $51b0: $9f
    ld sp, $6231                                  ; $51b1: $31 $31 $62
    ld sp, $ca31                                  ; $51b4: $31 $31 $ca
    rst $38                                       ; $51b7: $ff
    add sp, -$19                                  ; $51b8: $e8 $e7
    ld e, a                                       ; $51ba: $5f
    rst $38                                       ; $51bb: $ff
    ld sp, $4849                                  ; $51bc: $31 $49 $48
    ld l, l                                       ; $51bf: $6d
    ld l, d                                       ; $51c0: $6a
    ld l, b                                       ; $51c1: $68
    ld l, b                                       ; $51c2: $68
    ld h, a                                       ; $51c3: $67
    inc a                                         ; $51c4: $3c
    ld a, a                                       ; $51c5: $7f
    pop hl                                        ; $51c6: $e1
    add c                                         ; $51c7: $81
    ldh [$31], a                                  ; $51c8: $e0 $31
    ld sp, $1211                                  ; $51ca: $31 $11 $12
    jp z, $e8ff                                   ; $51cd: $ca $ff $e8

jr_058_51d0:
    rst $20                                       ; $51d0: $e7
    add a                                         ; $51d1: $87

jr_058_51d2:
    ld e, [hl]                                    ; $51d2: $5e
    ld sp, $0639                                  ; $51d3: $31 $39 $06
    db $e3                                        ; $51d6: $e3
    cp a                                          ; $51d7: $bf
    ldh [$81], a                                  ; $51d8: $e0 $81
    pop hl                                        ; $51da: $e1
    ldh a, [$c0]                                  ; $51db: $f0 $c0
    ld [hl+], a                                   ; $51dd: $22
    db $f4                                        ; $51de: $f4
    jp z, Jump_000_00ff                           ; $51df: $ca $ff $00

    jp hl                                         ; $51e2: $e9


    ld d, d                                       ; $51e3: $52
    ld b, $e2                                     ; $51e4: $06 $e2
    ld l, l                                       ; $51e6: $6d
    ld l, c                                       ; $51e7: $69
    ld h, [hl]                                    ; $51e8: $66
    jr nc, jr_058_522a                            ; $51e9: $30 $3f

    ld b, d                                       ; $51eb: $42
    scf                                           ; $51ec: $37
    ld sp, $2b31                                  ; $51ed: $31 $31 $2b
    db $10                                        ; $51f0: $10
    ldh a, [$a0]                                  ; $51f1: $f0 $a0
    rst $38                                       ; $51f3: $ff
    rst $38                                       ; $51f4: $ff
    nop                                           ; $51f5: $00
    add b                                         ; $51f6: $80
    add sp, -$40                                  ; $51f7: $e8 $c0
    ldh [rSCX], a                                 ; $51f9: $e0 $43
    pop bc                                        ; $51fb: $c1
    ret nz                                        ; $51fc: $c0

    ldh [rSC], a                                  ; $51fd: $e0 $02
    ldh [$c0], a                                  ; $51ff: $e0 $c0
    rst $38                                       ; $5201: $ff
    nop                                           ; $5202: $00
    ldh a, [$84]                                  ; $5203: $f0 $84
    jp nz, Jump_058_6a6f                          ; $5205: $c2 $6f $6a

    jr nc, jr_058_527b                            ; $5208: $30 $71

    xor a                                         ; $520a: $af
    ei                                            ; $520b: $fb
    add b                                         ; $520c: $80
    rla                                           ; $520d: $17
    jr z, jr_058_51d0                             ; $520e: $28 $c0

    rst $38                                       ; $5210: $ff
    ld a, [c]                                     ; $5211: $f2
    ld [$5be9], a                                 ; $5212: $ea $e9 $5b
    rst $38                                       ; $5215: $ff
    ret nz                                        ; $5216: $c0

    ld b, e                                       ; $5217: $43
    jp Jump_058_7971                              ; $5218: $c3 $71 $79


    xor d                                         ; $521b: $aa
    ld e, b                                       ; $521c: $58
    ld c, a                                       ; $521d: $4f
    xor h                                         ; $521e: $ac
    ld sp, $1615                                  ; $521f: $31 $15 $16
    ret nz                                        ; $5222: $c0

    rst $38                                       ; $5223: $ff
    ld [$5ae9], a                                 ; $5224: $ea $e9 $5a
    ld a, a                                       ; $5227: $7f
    ret nz                                        ; $5228: $c0

    db $fd                                        ; $5229: $fd

jr_058_522a:
    ld b, d                                       ; $522a: $42
    inc bc                                        ; $522b: $03
    pop bc                                        ; $522c: $c1
    ld [hl], c                                    ; $522d: $71
    ld a, c                                       ; $522e: $79
    add b                                         ; $522f: $80
    add b                                         ; $5230: $80
    add b                                         ; $5231: $80
    add c                                         ; $5232: $81
    ld hl, sp+$7f                                 ; $5233: $f8 $7f
    ld [c], a                                     ; $5235: $e2
    jp z, $80ff                                   ; $5236: $ca $ff $80

    add sp, $5b                                   ; $5239: $e8 $5b
    ld h, b                                       ; $523b: $60
    ld sp, $553c                                  ; $523c: $31 $3c $55
    ld [hl], a                                    ; $523f: $77
    ld d, h                                       ; $5240: $54
    ld d, l                                       ; $5241: $55
    ld l, [hl]                                    ; $5242: $6e
    pop bc                                        ; $5243: $c1
    pop hl                                        ; $5244: $e1
    add b                                         ; $5245: $80
    xor [hl]                                      ; $5246: $ae
    ld [hl], b                                    ; $5247: $70
    ld a, a                                       ; $5248: $7f
    pop hl                                        ; $5249: $e1
    nop                                           ; $524a: $00
    jp z, $ffff                                   ; $524b: $ca $ff $ff

    rst $38                                       ; $524e: $ff
    rst $38                                       ; $524f: $ff
    rst $38                                       ; $5250: $ff
    rst $38                                       ; $5251: $ff
    rst $38                                       ; $5252: $ff
    rst $38                                       ; $5253: $ff
    rst $38                                       ; $5254: $ff
    rst $38                                       ; $5255: $ff
    rst $38                                       ; $5256: $ff
    rst $38                                       ; $5257: $ff
    rst $38                                       ; $5258: $ff
    rst $38                                       ; $5259: $ff
    rst $38                                       ; $525a: $ff
    nop                                           ; $525b: $00
    rst $38                                       ; $525c: $ff
    rst $38                                       ; $525d: $ff
    rst $38                                       ; $525e: $ff
    rst $38                                       ; $525f: $ff
    rst $38                                       ; $5260: $ff
    rst $38                                       ; $5261: $ff
    rst $38                                       ; $5262: $ff
    rst $38                                       ; $5263: $ff
    rst $38                                       ; $5264: $ff
    rst $38                                       ; $5265: $ff
    rst $38                                       ; $5266: $ff
    rst $38                                       ; $5267: $ff
    rst $38                                       ; $5268: $ff
    rst $38                                       ; $5269: $ff
    rst $38                                       ; $526a: $ff
    rst $38                                       ; $526b: $ff
    nop                                           ; $526c: $00
    rst $38                                       ; $526d: $ff
    rst $38                                       ; $526e: $ff
    rst $38                                       ; $526f: $ff
    rst $38                                       ; $5270: $ff
    rst $38                                       ; $5271: $ff
    rst $38                                       ; $5272: $ff
    rst $38                                       ; $5273: $ff
    rst $38                                       ; $5274: $ff
    rst $38                                       ; $5275: $ff
    rst $38                                       ; $5276: $ff
    rst $38                                       ; $5277: $ff
    rst $38                                       ; $5278: $ff
    rst $38                                       ; $5279: $ff
    rst $38                                       ; $527a: $ff

jr_058_527b:
    rst $38                                       ; $527b: $ff
    rst $38                                       ; $527c: $ff
    nop                                           ; $527d: $00
    rst $38                                       ; $527e: $ff
    rst $38                                       ; $527f: $ff
    rst $38                                       ; $5280: $ff
    rst $38                                       ; $5281: $ff
    rst $38                                       ; $5282: $ff
    rst $38                                       ; $5283: $ff
    rst $38                                       ; $5284: $ff
    rst $38                                       ; $5285: $ff
    rst $38                                       ; $5286: $ff
    rst $38                                       ; $5287: $ff
    rst $38                                       ; $5288: $ff
    rst $38                                       ; $5289: $ff
    rst $38                                       ; $528a: $ff
    rst $38                                       ; $528b: $ff
    rst $38                                       ; $528c: $ff
    rst $38                                       ; $528d: $ff
    nop                                           ; $528e: $00
    rst $38                                       ; $528f: $ff
    rst $38                                       ; $5290: $ff
    rst $38                                       ; $5291: $ff
    rst $38                                       ; $5292: $ff
    rst $38                                       ; $5293: $ff
    rst $38                                       ; $5294: $ff
    rst $38                                       ; $5295: $ff
    rst $38                                       ; $5296: $ff
    rst $38                                       ; $5297: $ff
    rst $38                                       ; $5298: $ff
    rst $38                                       ; $5299: $ff
    rst $38                                       ; $529a: $ff
    rst $38                                       ; $529b: $ff
    rst $38                                       ; $529c: $ff
    rst $38                                       ; $529d: $ff
    rst $38                                       ; $529e: $ff
    nop                                           ; $529f: $00

Call_058_52a0:
    rst $38                                       ; $52a0: $ff
    rst $38                                       ; $52a1: $ff
    rst $38                                       ; $52a2: $ff
    rst $38                                       ; $52a3: $ff
    rst $38                                       ; $52a4: $ff
    rst $38                                       ; $52a5: $ff
    rst $38                                       ; $52a6: $ff
    rst $38                                       ; $52a7: $ff
    rst $38                                       ; $52a8: $ff
    rst $38                                       ; $52a9: $ff
    rst $38                                       ; $52aa: $ff
    rst $38                                       ; $52ab: $ff
    rst $38                                       ; $52ac: $ff
    rst $38                                       ; $52ad: $ff
    rst $38                                       ; $52ae: $ff
    rst $38                                       ; $52af: $ff
    nop                                           ; $52b0: $00
    rst $38                                       ; $52b1: $ff
    rst $38                                       ; $52b2: $ff
    rst $38                                       ; $52b3: $ff
    rst $38                                       ; $52b4: $ff
    rst $38                                       ; $52b5: $ff
    rst $38                                       ; $52b6: $ff
    rst $38                                       ; $52b7: $ff
    rst $38                                       ; $52b8: $ff
    rst $38                                       ; $52b9: $ff
    rst $38                                       ; $52ba: $ff
    rst $38                                       ; $52bb: $ff
    rst $38                                       ; $52bc: $ff
    rst $38                                       ; $52bd: $ff
    rst $38                                       ; $52be: $ff
    rst $38                                       ; $52bf: $ff
    rst $38                                       ; $52c0: $ff
    nop                                           ; $52c1: $00
    rst $38                                       ; $52c2: $ff
    rst $38                                       ; $52c3: $ff
    rst $38                                       ; $52c4: $ff
    rst $38                                       ; $52c5: $ff
    rst $38                                       ; $52c6: $ff
    rst $38                                       ; $52c7: $ff
    rst $38                                       ; $52c8: $ff
    rst $38                                       ; $52c9: $ff
    rst $38                                       ; $52ca: $ff
    rst $38                                       ; $52cb: $ff
    rst $38                                       ; $52cc: $ff
    rst $38                                       ; $52cd: $ff
    rst $38                                       ; $52ce: $ff
    rst $38                                       ; $52cf: $ff
    rst $38                                       ; $52d0: $ff
    rst $38                                       ; $52d1: $ff
    nop                                           ; $52d2: $00
    rst $38                                       ; $52d3: $ff
    rst $38                                       ; $52d4: $ff
    rst $38                                       ; $52d5: $ff
    rst $38                                       ; $52d6: $ff
    rst $38                                       ; $52d7: $ff
    rst $38                                       ; $52d8: $ff
    rst $38                                       ; $52d9: $ff
    rst $38                                       ; $52da: $ff
    rst $38                                       ; $52db: $ff
    rst $38                                       ; $52dc: $ff
    rst $38                                       ; $52dd: $ff
    rst $38                                       ; $52de: $ff
    rst $38                                       ; $52df: $ff
    rst $38                                       ; $52e0: $ff
    rst $38                                       ; $52e1: $ff
    rst $38                                       ; $52e2: $ff
    nop                                           ; $52e3: $00
    rst $38                                       ; $52e4: $ff
    rst $38                                       ; $52e5: $ff
    rst $38                                       ; $52e6: $ff
    rst $38                                       ; $52e7: $ff
    rst $38                                       ; $52e8: $ff
    rst $38                                       ; $52e9: $ff
    rst $38                                       ; $52ea: $ff
    rst $38                                       ; $52eb: $ff
    rst $38                                       ; $52ec: $ff
    rst $38                                       ; $52ed: $ff
    rst $38                                       ; $52ee: $ff
    rst $38                                       ; $52ef: $ff
    rst $38                                       ; $52f0: $ff
    rst $38                                       ; $52f1: $ff
    rst $38                                       ; $52f2: $ff
    rst $38                                       ; $52f3: $ff
    nop                                           ; $52f4: $00
    rst $38                                       ; $52f5: $ff
    rst $38                                       ; $52f6: $ff
    rst $38                                       ; $52f7: $ff
    rst $38                                       ; $52f8: $ff
    rst $38                                       ; $52f9: $ff
    rst $38                                       ; $52fa: $ff
    rst $38                                       ; $52fb: $ff
    rst $38                                       ; $52fc: $ff
    rst $38                                       ; $52fd: $ff
    rst $38                                       ; $52fe: $ff
    rst $38                                       ; $52ff: $ff
    rst $38                                       ; $5300: $ff
    rst $38                                       ; $5301: $ff
    rst $38                                       ; $5302: $ff
    rst $38                                       ; $5303: $ff
    rst $38                                       ; $5304: $ff
    nop                                           ; $5305: $00
    rst $38                                       ; $5306: $ff
    rst $38                                       ; $5307: $ff
    rst $38                                       ; $5308: $ff
    rst $38                                       ; $5309: $ff
    rst $38                                       ; $530a: $ff
    rst $38                                       ; $530b: $ff
    rst $38                                       ; $530c: $ff
    di                                            ; $530d: $f3
    nop                                           ; $530e: $00
    nop                                           ; $530f: $00
    nop                                           ; $5310: $00
    and l                                         ; $5311: $a5
    nop                                           ; $5312: $00
    rst $38                                       ; $5313: $ff
    push hl                                       ; $5314: $e5
    ld [hl-], a                                   ; $5315: $32
    or $e6                                        ; $5316: $f6 $e6
    rst $30                                       ; $5318: $f7
    rst $20                                       ; $5319: $e7
    dec [hl]                                      ; $531a: $35
    db $ec                                        ; $531b: $ec
    xor $37                                       ; $531c: $ee $37
    db $ec                                        ; $531e: $ec
    jp c, $c7f0                                   ; $531f: $da $f0 $c7

    add sp, $33                                   ; $5322: $e8 $33
    ld sp, $f2e0                                  ; $5324: $31 $e0 $f2
    ld [hl], $30                                  ; $5327: $36 $30
    scf                                           ; $5329: $37
    cp a                                          ; $532a: $bf
    ld h, $20                                     ; $532b: $26 $20
    daa                                           ; $532d: $27
    db $10                                        ; $532e: $10
    ld d, $17                                     ; $532f: $16 $17
    jp nz, Jump_000_34f6                          ; $5331: $c2 $f6 $34

    rst $38                                       ; $5334: $ff
    ld [hl], $32                                  ; $5335: $36 $32
    jr nc, jr_058_5370                            ; $5337: $30 $37

    ld sp, $3133                                  ; $5339: $31 $33 $31
    inc sp                                        ; $533c: $33
    nop                                           ; $533d: $00
    and b                                         ; $533e: $a0
    ei                                            ; $533f: $fb
    rst $38                                       ; $5340: $ff
    rst $28                                       ; $5341: $ef
    nop                                           ; $5342: $00
    nop                                           ; $5343: $00
    nop                                           ; $5344: $00
    ld c, l                                       ; $5345: $4d
    ld d, e                                       ; $5346: $53
    ld a, l                                       ; $5347: $7d
    ld d, e                                       ; $5348: $53
    ld [hl-], a                                   ; $5349: $32
    ld d, [hl]                                    ; $534a: $56
    dec b                                         ; $534b: $05
    ld e, b                                       ; $534c: $58
    ldh a, [$03]                                  ; $534d: $f0 $03
    ld c, l                                       ; $534f: $4d
    rrca                                          ; $5350: $0f
    ld b, b                                       ; $5351: $40
    ld [bc], a                                    ; $5352: $02
    ret nz                                        ; $5353: $c0

    nop                                           ; $5354: $00
    ldh a, [$03]                                  ; $5355: $f0 $03
    push af                                       ; $5357: $f5
    inc bc                                        ; $5358: $03
    ld c, b                                       ; $5359: $48
    rrca                                          ; $535a: $0f
    ld b, b                                       ; $535b: $40
    ld [bc], a                                    ; $535c: $02
    ld e, a                                       ; $535d: $5f
    dec sp                                        ; $535e: $3b
    jr c, @+$10                                   ; $535f: $38 $0e

    ld sp, $4819                                  ; $5361: $31 $19 $48
    rrca                                          ; $5364: $0f
    ld [$0825], sp                                ; $5365: $08 $25 $08
    dec h                                         ; $5368: $25
    ld [$0825], sp                                ; $5369: $08 $25 $08
    dec h                                         ; $536c: $25
    ld [$0825], sp                                ; $536d: $08 $25 $08

jr_058_5370:
    dec h                                         ; $5370: $25
    ld [$0825], sp                                ; $5371: $08 $25 $08
    dec h                                         ; $5374: $25
    ld [$0825], sp                                ; $5375: $08 $25 $08
    dec h                                         ; $5378: $25
    ld [$0825], sp                                ; $5379: $08 $25 $08
    dec h                                         ; $537c: $25
    rst $28                                       ; $537d: $ef
    dec bc                                        ; $537e: $0b
    dec bc                                        ; $537f: $0b
    ld a, [bc]                                    ; $5380: $0a
    dec bc                                        ; $5381: $0b
    rst $38                                       ; $5382: $ff
    ld [c], a                                     ; $5383: $e2
    dec hl                                        ; $5384: $2b
    dec hl                                        ; $5385: $2b
    dec bc                                        ; $5386: $0b
    rrca                                          ; $5387: $0f

Jump_058_5388:
    ld c, h                                       ; $5388: $4c
    ld c, h                                       ; $5389: $4c
    ld c, h                                       ; $538a: $4c
    inc c                                         ; $538b: $0c
    rst $38                                       ; $538c: $ff
    ld [c], a                                     ; $538d: $e2
    rst $30                                       ; $538e: $f7
    ldh [$f6], a                                  ; $538f: $e0 $f6
    pop hl                                        ; $5391: $e1
    ld a, [c]                                     ; $5392: $f2
    ldh [rNR10], a                                ; $5393: $e0 $10
    rst $28                                       ; $5395: $ef
    db $e4                                        ; $5396: $e4
    ld a, [$c3f7]                                 ; $5397: $fa $f7 $c3
    db $e3                                        ; $539a: $e3
    cp l                                          ; $539b: $bd
    db $e3                                        ; $539c: $e3
    ld c, e                                       ; $539d: $4b
    ret nz                                        ; $539e: $c0

    push hl                                       ; $539f: $e5
    cp [hl]                                       ; $53a0: $be
    pop hl                                        ; $53a1: $e1
    db $fd                                        ; $53a2: $fd
    and $0c                                       ; $53a3: $e6 $0c
    db $eb                                        ; $53a5: $eb
    rst $20                                       ; $53a6: $e7
    ret nz                                        ; $53a7: $c0

    db $fd                                        ; $53a8: $fd
    dec hl                                        ; $53a9: $2b
    dec hl                                        ; $53aa: $2b
    cp a                                          ; $53ab: $bf
    and $c3                                       ; $53ac: $e6 $c3
    and $7b                                       ; $53ae: $e6 $7b
    ld [c], a                                     ; $53b0: $e2
    ld hl, sp-$1b                                 ; $53b1: $f8 $e5
    ld [bc], a                                    ; $53b3: $02
    ld [hl], e                                    ; $53b4: $73
    ldh a, [$0a]                                  ; $53b5: $f0 $0a
    ld b, c                                       ; $53b7: $41
    db $e4                                        ; $53b8: $e4
    ld a, b                                       ; $53b9: $78
    db $e4                                        ; $53ba: $e4
    ld a, [hl]                                    ; $53bb: $7e
    db $ed                                        ; $53bc: $ed
    db $fc                                        ; $53bd: $fc
    ld [c], a                                     ; $53be: $e2
    scf                                           ; $53bf: $37
    db $e3                                        ; $53c0: $e3
    ld [hl], e                                    ; $53c1: $73
    di                                            ; $53c2: $f3
    ld c, $03                                     ; $53c3: $0e $03
    ld [c], a                                     ; $53c5: $e2
    ld l, e                                       ; $53c6: $6b
    ld l, e                                       ; $53c7: $6b

jr_058_53c8:
    ld c, e                                       ; $53c8: $4b
    rst $38                                       ; $53c9: $ff
    pop hl                                        ; $53ca: $e1
    rst $30                                       ; $53cb: $f7
    pop bc                                        ; $53cc: $c1
    rst $38                                       ; $53cd: $ff
    call nz, $e582                                ; $53ce: $c4 $82 $e5
    jr c, jr_058_53c8                             ; $53d1: $38 $f5

    jp nz, $e2b8                                  ; $53d3: $c2 $b8 $e2

    ld [hl], e                                    ; $53d6: $73
    push hl                                       ; $53d7: $e5
    inc c                                         ; $53d8: $0c
    inc c                                         ; $53d9: $0c
    inc l                                         ; $53da: $2c
    db $db                                        ; $53db: $db
    jp $e3f9                                      ; $53dc: $c3 $f9 $e3


    inc c                                         ; $53df: $0c
    pop bc                                        ; $53e0: $c1
    db $e3                                        ; $53e1: $e3
    cp [hl]                                       ; $53e2: $be
    ldh [rOCPD], a                                ; $53e3: $e0 $6b
    dec hl                                        ; $53e5: $2b
    ret nz                                        ; $53e6: $c0

    ld [c], a                                     ; $53e7: $e2
    cp h                                          ; $53e8: $bc
    db $e4                                        ; $53e9: $e4
    or a                                          ; $53ea: $b7
    jp $c9b1                                      ; $53eb: $c3 $b1 $c9


    nop                                           ; $53ee: $00
    ld [hl], e                                    ; $53ef: $73
    and $c0                                       ; $53f0: $e6 $c0
    call z, $e1c4                                 ; $53f2: $cc $c4 $e1
    pop bc                                        ; $53f5: $c1
    ld [c], a                                     ; $53f6: $e2
    ld a, l                                       ; $53f7: $7d
    ret nz                                        ; $53f8: $c0

    ld a, e                                       ; $53f9: $7b
    db $e4                                        ; $53fa: $e4
    cp e                                          ; $53fb: $bb
    add $bd                                       ; $53fc: $c6 $bd
    rst $20                                       ; $53fe: $e7
    nop                                           ; $53ff: $00
    ld [hl], e                                    ; $5400: $73
    rst $20                                       ; $5401: $e7
    ret nz                                        ; $5402: $c0

    ldh a, [$c1]                                  ; $5403: $f0 $c1
    push hl                                       ; $5405: $e5
    dec a                                         ; $5406: $3d
    ret nz                                        ; $5407: $c0

    cp e                                          ; $5408: $bb
    pop hl                                        ; $5409: $e1
    add b                                         ; $540a: $80
    ld [c], a                                     ; $540b: $e2
    ret nz                                        ; $540c: $c0

    rst $00                                       ; $540d: $c7
    ld a, [hl+]                                   ; $540e: $2a
    push bc                                       ; $540f: $c5
    ld b, d                                       ; $5410: $42
    dec [hl]                                      ; $5411: $35
    db $d3                                        ; $5412: $d3
    dec bc                                        ; $5413: $0b
    call z, $81e1                                 ; $5414: $cc $e1 $81
    ld [c], a                                     ; $5417: $e2
    pop bc                                        ; $5418: $c1
    db $e3                                        ; $5419: $e3
    ld hl, sp-$60                                 ; $541a: $f8 $a0
    ld c, e                                       ; $541c: $4b
    ld b, $c3                                     ; $541d: $06 $c3
    nop                                           ; $541f: $00
    add c                                         ; $5420: $81
    push bc                                       ; $5421: $c5
    cp b                                          ; $5422: $b8
    db $eb                                        ; $5423: $eb
    db $ec                                        ; $5424: $ec
    xor l                                         ; $5425: $ad
    ret nz                                        ; $5426: $c0

    call nz, $ebc0                                ; $5427: $c4 $c0 $eb
    jp $ffa2                                      ; $542a: $c3 $a2 $ff


jr_058_542d:
    push hl                                       ; $542d: $e5
    call nz, Call_000_00c5                        ; $542e: $c4 $c5 $00
    db $ec                                        ; $5431: $ec
    or e                                          ; $5432: $b3
    ld c, [hl]                                    ; $5433: $4e
    ld [c], a                                     ; $5434: $e2
    add b                                         ; $5435: $80
    jp hl                                         ; $5436: $e9


    halt                                          ; $5437: $76
    and b                                         ; $5438: $a0
    cp a                                          ; $5439: $bf
    and l                                         ; $543a: $a5
    cp b                                          ; $543b: $b8
    push bc                                       ; $543c: $c5
    ccf                                           ; $543d: $3f
    push hl                                       ; $543e: $e5
    db $ec                                        ; $543f: $ec
    xor c                                         ; $5440: $a9
    ld [de], a                                    ; $5441: $12
    add b                                         ; $5442: $80
    and [hl]                                      ; $5443: $a6
    ld c, h                                       ; $5444: $4c
    ld c, [hl]                                    ; $5445: $4e
    pop hl                                        ; $5446: $e1
    nop                                           ; $5447: $00
    db $e4                                        ; $5448: $e4
    ld l, e                                       ; $5449: $6b
    inc sp                                        ; $544a: $33
    jp nz, $c480                                  ; $544b: $c2 $80 $c4

    ld c, d                                       ; $544e: $4a
    jp Jump_058_7580                              ; $544f: $c3 $80 $75


    jp z, $d279                                   ; $5452: $ca $79 $d2

    cp a                                          ; $5455: $bf
    ldh [rSTAT], a                                ; $5456: $e0 $41
    pop bc                                        ; $5458: $c1
    call nz, $fce0                                ; $5459: $c4 $e0 $fc
    ret nz                                        ; $545c: $c0

    pop bc                                        ; $545d: $c1
    pop hl                                        ; $545e: $e1
    dec bc                                        ; $545f: $0b
    jr nz, jr_058_542d                            ; $5460: $20 $cb

    and h                                         ; $5462: $a4
    ld c, e                                       ; $5463: $4b
    push hl                                       ; $5464: $e5
    ldh a, [$a3]                                  ; $5465: $f0 $a3
    db $ec                                        ; $5467: $ec
    xor h                                         ; $5468: $ac
    add sp, -$79                                  ; $5469: $e8 $87
    inc l                                         ; $546b: $2c
    adc l                                         ; $546c: $8d
    pop bc                                        ; $546d: $c1
    cp a                                          ; $546e: $bf
    pop hl                                        ; $546f: $e1
    ld b, b                                       ; $5470: $40
    cp [hl]                                       ; $5471: $be
    pop hl                                        ; $5472: $e1
    cp l                                          ; $5473: $bd
    jp nz, $c610                                  ; $5474: $c2 $10 $c6

    cp h                                          ; $5477: $bc
    add sp, -$4c                                  ; $5478: $e8 $b4
    add [hl]                                      ; $547a: $86
    sbc l                                         ; $547b: $9d
    add h                                         ; $547c: $84
    inc l                                         ; $547d: $2c
    cp d                                          ; $547e: $ba
    and h                                         ; $547f: $a4
    ld b, a                                       ; $5480: $47
    inc c                                         ; $5481: $0c
    inc c                                         ; $5482: $0c
    ld l, h                                       ; $5483: $6c
    ld a, $e0                                     ; $5484: $3e $e0
    cp a                                          ; $5486: $bf
    ld [c], a                                     ; $5487: $e2
    or l                                          ; $5488: $b5
    add l                                         ; $5489: $85
    ld l, e                                       ; $548a: $6b
    pop bc                                        ; $548b: $c1
    adc h                                         ; $548c: $8c
    ld d, b                                       ; $548d: $50
    or d                                          ; $548e: $b2
    jp $acec                                      ; $548f: $c3 $ec $ac


    ret nz                                        ; $5492: $c0

    rst $20                                       ; $5493: $e7
    ld a, a                                       ; $5494: $7f
    ldh [$0b], a                                  ; $5495: $e0 $0b
    jp nz, $4ba1                                  ; $5497: $c2 $a1 $4b

    pop bc                                        ; $549a: $c1
    jp Jump_058_7300                              ; $549b: $c3 $00 $73


    and b                                         ; $549e: $a0
    pop bc                                        ; $549f: $c1
    adc l                                         ; $54a0: $8d
    ld a, [$ec85]                                 ; $54a1: $fa $85 $ec
    xor c                                         ; $54a4: $a9
    add c                                         ; $54a5: $81
    push hl                                       ; $54a6: $e5
    ld e, l                                       ; $54a7: $5d
    add l                                         ; $54a8: $85
    ld hl, sp-$19                                 ; $54a9: $f8 $e7
    ld c, $e4                                     ; $54ab: $0e $e4
    nop                                           ; $54ad: $00
    ld c, [hl]                                    ; $54ae: $4e
    xor d                                         ; $54af: $aa
    ld [hl], a                                    ; $54b0: $77
    add [hl]                                      ; $54b1: $86
    db $ec                                        ; $54b2: $ec
    and [hl]                                      ; $54b3: $a6
    ret nz                                        ; $54b4: $c0

    rst $20                                       ; $54b5: $e7
    db $d3                                        ; $54b6: $d3
    add $cd                                       ; $54b7: $c6 $cd
    ld l, c                                       ; $54b9: $69
    pop bc                                        ; $54ba: $c1
    adc h                                         ; $54bb: $8c
    ld [hl], l                                    ; $54bc: $75
    push bc                                       ; $54bd: $c5
    ld b, b                                       ; $54be: $40
    db $ec                                        ; $54bf: $ec
    and a                                         ; $54c0: $a7
    add b                                         ; $54c1: $80
    ret z                                         ; $54c2: $c8

    call nc, $cdc6                                ; $54c3: $d4 $c6 $cd
    ld l, l                                       ; $54c6: $6d
    or d                                          ; $54c7: $b2
    ld l, c                                       ; $54c8: $69
    db $ec                                        ; $54c9: $ec
    xor l                                         ; $54ca: $ad
    inc l                                         ; $54cb: $2c
    ld a, c                                       ; $54cc: $79
    add l                                         ; $54cd: $85
    nop                                           ; $54ce: $00
    ret nz                                        ; $54cf: $c0

    xor $e1                                       ; $54d0: $ee $e1
    and [hl]                                      ; $54d2: $a6
    inc bc                                        ; $54d3: $03
    ret z                                         ; $54d4: $c8

    dec a                                         ; $54d5: $3d
    add h                                         ; $54d6: $84
    db $ec                                        ; $54d7: $ec
    xor b                                         ; $54d8: $a8
    ret nz                                        ; $54d9: $c0

    rst $20                                       ; $54da: $e7
    sub h                                         ; $54db: $94
    and [hl]                                      ; $54dc: $a6
    call Call_000_0069                            ; $54dd: $cd $69 $00
    ld d, c                                       ; $54e0: $51
    rst $00                                       ; $54e1: $c7
    ld b, l                                       ; $54e2: $45
    xor b                                         ; $54e3: $a8
    db $ec                                        ; $54e4: $ec
    xor c                                         ; $54e5: $a9
    ld b, b                                       ; $54e6: $40
    add $17                                       ; $54e7: $c6 $17
    ld h, [hl]                                    ; $54e9: $66
    pop hl                                        ; $54ea: $e1
    xor e                                         ; $54eb: $ab
    ld b, h                                       ; $54ec: $44
    add $e1                                       ; $54ed: $c6 $e1
    rst $00                                       ; $54ef: $c7
    inc b                                         ; $54f0: $04
    push af                                       ; $54f1: $f5
    ld b, l                                       ; $54f2: $45
    ret nz                                        ; $54f3: $c0

    ld h, b                                       ; $54f4: $60
    inc l                                         ; $54f5: $2c
    rst $38                                       ; $54f6: $ff
    ldh [rNR30], a                                ; $54f7: $e0 $1a
    adc c                                         ; $54f9: $89
    db $d3                                        ; $54fa: $d3
    ld h, a                                       ; $54fb: $67
    db $10                                        ; $54fc: $10
    adc c                                         ; $54fd: $89
    add c                                         ; $54fe: $81
    and a                                         ; $54ff: $a7
    nop                                           ; $5500: $00
    di                                            ; $5501: $f3
    adc b                                         ; $5502: $88
    ld l, a                                       ; $5503: $6f
    ld d, e                                       ; $5504: $53
    pop hl                                        ; $5505: $e1
    xor l                                         ; $5506: $ad
    jp nc, $8668                                  ; $5507: $d2 $68 $86

    xor d                                         ; $550a: $aa
    ld b, l                                       ; $550b: $45
    call nz, $ea80                                ; $550c: $c4 $80 $ea
    ret nz                                        ; $550f: $c0

    rst $08                                       ; $5510: $cf
    nop                                           ; $5511: $00
    rst $28                                       ; $5512: $ef
    bit 7, c                                      ; $5513: $cb $79
    and a                                         ; $5515: $a7
    ld b, b                                       ; $5516: $40
    pop af                                        ; $5517: $f1
    push de                                       ; $5518: $d5
    ld h, h                                       ; $5519: $64
    call Call_058_4e6e                            ; $551a: $cd $6e $4e
    adc a                                         ; $551d: $8f
    ld sp, $4367                                  ; $551e: $31 $67 $43
    xor b                                         ; $5521: $a8
    nop                                           ; $5522: $00
    jp $cdaa                                      ; $5523: $c3 $aa $cd


    ld l, c                                       ; $5526: $69
    ld a, [hl-]                                   ; $5527: $3a
    ld c, [hl]                                    ; $5528: $4e
    ld h, h                                       ; $5529: $64
    rst $20                                       ; $552a: $e7
    inc bc                                        ; $552b: $03
    xor c                                         ; $552c: $a9
    ld b, c                                       ; $552d: $41
    call z, Call_058_67cd                         ; $552e: $cc $cd $67
    ld l, l                                       ; $5531: $6d
    pop de                                        ; $5532: $d1
    nop                                           ; $5533: $00
    ld sp, $0564                                  ; $5534: $31 $64 $05
    ret z                                         ; $5537: $c8

    push de                                       ; $5538: $d5
    ld h, a                                       ; $5539: $67
    call $ff6c                                    ; $553a: $cd $6c $ff
    dec b                                         ; $553d: $05
    ld a, [hl-]                                   ; $553e: $3a
    ld c, e                                       ; $553f: $4b
    ld a, $c7                                     ; $5540: $3e $c7
    ld h, l                                       ; $5542: $65
    xor d                                         ; $5543: $aa
    nop                                           ; $5544: $00
    ccf                                           ; $5545: $3f
    jp hl                                         ; $5546: $e9


    ld d, c                                       ; $5547: $51
    ld h, a                                       ; $5548: $67
    ld l, l                                       ; $5549: $6d
    call $557c                                    ; $554a: $cd $7c $55
    ld [hl+], a                                   ; $554d: $22
    jp z, $4686                                   ; $554e: $ca $86 $46

    adc $49                                       ; $5551: $ce $49
    cp c                                          ; $5553: $b9
    dec b                                         ; $5554: $05
    nop                                           ; $5555: $00
    inc bc                                        ; $5556: $03
    add [hl]                                      ; $5557: $86
    ld b, b                                       ; $5558: $40
    ldh a, [rNR43]                                ; $5559: $f0 $22
    push bc                                       ; $555b: $c5
    ld d, e                                       ; $555c: $53

jr_058_555d:
    add [hl]                                      ; $555d: $86
    ld a, [hl-]                                   ; $555e: $3a
    ld c, l                                       ; $555f: $4d
    ld a, $ca                                     ; $5560: $3e $ca
    ld b, c                                       ; $5562: $41
    and a                                         ; $5563: $a7
    dec d                                         ; $5564: $15
    ld l, h                                       ; $5565: $6c
    nop                                           ; $5566: $00
    push af                                       ; $5567: $f5
    jp hl                                         ; $5568: $e9


    ld c, [hl]                                    ; $5569: $4e
    adc l                                         ; $556a: $8d
    dec hl                                        ; $556b: $2b
    ld bc, $a247                                  ; $556c: $01 $47 $a2
    ld b, c                                       ; $556f: $41
    xor h                                         ; $5570: $ac
    and h                                         ; $5571: $a4
    jp z, Jump_000_24c3                           ; $5572: $ca $c3 $24

    ld c, c                                       ; $5575: $49
    ld h, [hl]                                    ; $5576: $66
    nop                                           ; $5577: $00
    dec h                                         ; $5578: $25
    db $ec                                        ; $5579: $ec
    ld [$0262], sp                                ; $557a: $08 $62 $02

jr_058_557d:
    xor h                                         ; $557d: $ac
    ld [$57cc], sp                                ; $557e: $08 $cc $57
    daa                                           ; $5581: $27
    dec h                                         ; $5582: $25
    db $eb                                        ; $5583: $eb
    or $26                                        ; $5584: $f6 $26
    jp nz, Jump_000_0089                          ; $5586: $c2 $89 $00

    ld [$c9d1], sp                                ; $5589: $08 $d1 $c9
    add hl, hl                                    ; $558c: $29
    ld l, l                                       ; $558d: $6d
    set 0, l                                      ; $558e: $cb $c5
    ld a, [hl+]                                   ; $5590: $2a
    ret nz                                        ; $5591: $c0

    pop de                                        ; $5592: $d1
    ld [hl], e                                    ; $5593: $73
    and l                                         ; $5594: $a5
    ld e, $49                                     ; $5595: $1e $49
    ld a, b                                       ; $5597: $78
    daa                                           ; $5598: $27
    nop                                           ; $5599: $00
    rst $20                                       ; $559a: $e7
    call nz, $8cc2                                ; $559b: $c4 $c2 $8c
    set 1, l                                      ; $559e: $cb $cd
    db $fd                                        ; $55a0: $fd
    adc b                                         ; $55a1: $88
    ld a, c                                       ; $55a2: $79
    ld c, $c0                                     ; $55a3: $0e $c0
    xor $54                                       ; $55a5: $ee $54
    jr nc, jr_058_555d                            ; $55a7: $30 $b4

    ld b, a                                       ; $55a9: $47
    nop                                           ; $55aa: $00
    ld a, c                                       ; $55ab: $79
    ld c, $41                                     ; $55ac: $0e $41
    pop af                                        ; $55ae: $f1
    ld c, d                                       ; $55af: $4a
    pop de                                        ; $55b0: $d1
    and h                                         ; $55b1: $a4
    db $d3                                        ; $55b2: $d3
    ld e, a                                       ; $55b3: $5f
    push bc                                       ; $55b4: $c5
    cp l                                          ; $55b5: $bd
    rst $38                                       ; $55b6: $ff
    sbc $43                                       ; $55b7: $de $43
    add [hl]                                      ; $55b9: $86
    ld l, [hl]                                    ; $55ba: $6e
    jr nz, jr_058_557d                            ; $55bb: $20 $c0

    jp nc, $f676                                  ; $55bd: $d2 $76 $f6

    xor h                                         ; $55c0: $ac
    adc a                                         ; $55c1: $8f
    add l                                         ; $55c2: $85
    dec c                                         ; $55c3: $0d
    ei                                            ; $55c4: $fb
    ld a, [$792c]                                 ; $55c5: $fa $2c $79
    db $10                                        ; $55c8: $10
    add b                                         ; $55c9: $80
    ld a, [$c000]                                 ; $55ca: $fa $00 $c0
    xor $21                                       ; $55cd: $ee $21
    ld a, [hl+]                                   ; $55cf: $2a
    jr nc, jr_058_55fc                            ; $55d0: $30 $2a

    rst $38                                       ; $55d2: $ff
    rst $38                                       ; $55d3: $ff
    inc hl                                        ; $55d4: $23
    ld l, b                                       ; $55d5: $68
    ld a, $05                                     ; $55d6: $3e $05
    ld a, b                                       ; $55d8: $78
    ld a, [bc]                                    ; $55d9: $0a
    rst $38                                       ; $55da: $ff
    rst $38                                       ; $55db: $ff
    nop                                           ; $55dc: $00
    db $e4                                        ; $55dd: $e4
    ld h, a                                       ; $55de: $67
    ret nz                                        ; $55df: $c0

    add sp, -$01                                  ; $55e0: $e8 $ff
    rst $38                                       ; $55e2: $ff
    di                                            ; $55e3: $f3
    call nc, $ab0d                                ; $55e4: $d4 $0d $ab
    rst $38                                       ; $55e7: $ff
    rst $38                                       ; $55e8: $ff
    rst $38                                       ; $55e9: $ff
    rst $38                                       ; $55ea: $ff
    sub [hl]                                      ; $55eb: $96
    rst $38                                       ; $55ec: $ff
    nop                                           ; $55ed: $00
    rst $38                                       ; $55ee: $ff
    rst $38                                       ; $55ef: $ff
    ld [hl], h                                    ; $55f0: $74
    ld l, l                                       ; $55f1: $6d
    rst $38                                       ; $55f2: $ff
    rst $38                                       ; $55f3: $ff
    rst $38                                       ; $55f4: $ff
    rst $38                                       ; $55f5: $ff
    rst $38                                       ; $55f6: $ff
    rst $38                                       ; $55f7: $ff
    rst $38                                       ; $55f8: $ff
    rst $38                                       ; $55f9: $ff
    sbc e                                         ; $55fa: $9b
    inc l                                         ; $55fb: $2c

jr_058_55fc:
    rst $38                                       ; $55fc: $ff
    rst $38                                       ; $55fd: $ff
    nop                                           ; $55fe: $00
    rst $38                                       ; $55ff: $ff
    rst $38                                       ; $5600: $ff
    rst $38                                       ; $5601: $ff
    rst $38                                       ; $5602: $ff
    rst $38                                       ; $5603: $ff
    rst $38                                       ; $5604: $ff
    rst $38                                       ; $5605: $ff
    rst $38                                       ; $5606: $ff
    rst $38                                       ; $5607: $ff
    rst $38                                       ; $5608: $ff
    rst $38                                       ; $5609: $ff
    rst $38                                       ; $560a: $ff
    rst $38                                       ; $560b: $ff
    rst $38                                       ; $560c: $ff
    rst $38                                       ; $560d: $ff
    rst $38                                       ; $560e: $ff
    nop                                           ; $560f: $00
    rst $38                                       ; $5610: $ff
    rst $38                                       ; $5611: $ff
    rst $38                                       ; $5612: $ff
    rst $38                                       ; $5613: $ff
    rst $38                                       ; $5614: $ff
    rst $38                                       ; $5615: $ff
    rst $38                                       ; $5616: $ff
    rst $38                                       ; $5617: $ff
    rst $38                                       ; $5618: $ff
    rst $38                                       ; $5619: $ff
    rst $38                                       ; $561a: $ff
    rst $38                                       ; $561b: $ff
    rst $38                                       ; $561c: $ff
    rst $38                                       ; $561d: $ff
    rst $38                                       ; $561e: $ff
    rst $38                                       ; $561f: $ff
    nop                                           ; $5620: $00
    nop                                           ; $5621: $00
    cp a                                          ; $5622: $bf
    rst $38                                       ; $5623: $ff
    rst $38                                       ; $5624: $ff
    rst $38                                       ; $5625: $ff
    rst $38                                       ; $5626: $ff
    rst $38                                       ; $5627: $ff
    rst $38                                       ; $5628: $ff
    rst $38                                       ; $5629: $ff
    rst $38                                       ; $562a: $ff
    rst $38                                       ; $562b: $ff
    rst $38                                       ; $562c: $ff
    inc b                                         ; $562d: $04
    ld c, d                                       ; $562e: $4a
    nop                                           ; $562f: $00
    nop                                           ; $5630: $00
    nop                                           ; $5631: $00
    rst $28                                       ; $5632: $ef
    ld e, e                                       ; $5633: $5b
    ld e, e                                       ; $5634: $5b
    ld e, d                                       ; $5635: $5a
    ld e, e                                       ; $5636: $5b
    rst $38                                       ; $5637: $ff
    db $e3                                        ; $5638: $e3
    ld h, c                                       ; $5639: $61
    ld sp, $1729                                  ; $563a: $31 $29 $17
    daa                                           ; $563d: $27
    db $10                                        ; $563e: $10
    jr nz, @+$01                                  ; $563f: $20 $ff

    pop hl                                        ; $5641: $e1
    nop                                           ; $5642: $00
    rst $38                                       ; $5643: $ff
    rst $38                                       ; $5644: $ff
    rst $20                                       ; $5645: $e7
    and $c3                                       ; $5646: $e6 $c3
    db $e4                                        ; $5648: $e4
    rra                                           ; $5649: $1f
    ld e, e                                       ; $564a: $5b
    ld e, e                                       ; $564b: $5b
    ld h, b                                       ; $564c: $60
    ld sp, $bf31                                  ; $564d: $31 $31 $bf
    ldh [$c0], a                                  ; $5650: $e0 $c0
    rst $38                                       ; $5652: $ff
    ret nz                                        ; $5653: $c0

    pop af                                        ; $5654: $f1
    ld c, a                                       ; $5655: $4f
    ld e, h                                       ; $5656: $5c
    ld e, l                                       ; $5657: $5d
    ld h, d                                       ; $5658: $62
    ld h, d                                       ; $5659: $62
    pop bc                                        ; $565a: $c1
    ldh [$bf], a                                  ; $565b: $e0 $bf
    ldh [rNR42], a                                ; $565d: $e0 $21
    ret nz                                        ; $565f: $c0

    rst $38                                       ; $5660: $ff
    ld [bc], a                                    ; $5661: $02
    db $ec                                        ; $5662: $ec
    db $eb                                        ; $5663: $eb
    ld e, d                                       ; $5664: $5a
    ld b, c                                       ; $5665: $41
    ldh [$85], a                                  ; $5666: $e0 $85
    pop hl                                        ; $5668: $e1
    db $fd                                        ; $5669: $fd
    db $e4                                        ; $566a: $e4
    cp a                                          ; $566b: $bf
    ld [c], a                                     ; $566c: $e2
    jp z, Jump_058_40ff                           ; $566d: $ca $ff $40

    ld [$60ff], a                                 ; $5670: $ea $ff $60
    ld sp, $3a4d                                  ; $5673: $31 $4d $3a
    ld d, h                                       ; $5676: $54
    ld d, l                                       ; $5677: $55
    ld d, h                                       ; $5678: $54
    ld a, [hl-]                                   ; $5679: $3a
    add l                                         ; $567a: $85
    ld c, l                                       ; $567b: $4d
    ld a, l                                       ; $567c: $7d
    pop hl                                        ; $567d: $e1
    inc b                                         ; $567e: $04
    rst $38                                       ; $567f: $ff
    ldh [$ca], a                                  ; $5680: $e0 $ca
    rst $38                                       ; $5682: $ff
    nop                                           ; $5683: $00
    jp hl                                         ; $5684: $e9


    pop bc                                        ; $5685: $c1
    ldh [$32], a                                  ; $5686: $e0 $32
    ld a, a                                       ; $5688: $7f
    jr nc, jr_058_56f8                            ; $5689: $30 $6d

    ld l, l                                       ; $568b: $6d
    ld l, l                                       ; $568c: $6d
    ld l, d                                       ; $568d: $6a
    ld [hl-], a                                   ; $568e: $32
    ld a, $78                                     ; $568f: $3e $78
    db $e4                                        ; $5691: $e4
    db $f4                                        ; $5692: $f4
    jp z, $c0ff                                   ; $5693: $ca $ff $c0

    ret z                                         ; $5696: $c8

    ld e, a                                       ; $5697: $5f
    pop bc                                        ; $5698: $c1
    push hl                                       ; $5699: $e5
    jr nc, @+$32                                  ; $569a: $30 $30

    ld b, d                                       ; $569c: $42
    ld d, l                                       ; $569d: $55
    rst $00                                       ; $569e: $c7
    ld d, l                                       ; $569f: $55
    ld d, h                                       ; $56a0: $54
    dec sp                                        ; $56a1: $3b
    cp e                                          ; $56a2: $bb
    ldh [$ca], a                                  ; $56a3: $e0 $ca
    rst $38                                       ; $56a5: $ff
    add b                                         ; $56a6: $80
    ret z                                         ; $56a7: $c8

    ld e, [hl]                                    ; $56a8: $5e
    ld sp, $39ed                                  ; $56a9: $31 $ed $39
    add d                                         ; $56ac: $82
    pop hl                                        ; $56ad: $e1
    ld l, c                                       ; $56ae: $69
    jr nc, @+$7e                                  ; $56af: $30 $7c

    ldh [$67], a                                  ; $56b1: $e0 $67
    ld l, e                                       ; $56b3: $6b
    ld l, e                                       ; $56b4: $6b
    rst $20                                       ; $56b5: $e7
    ld l, e                                       ; $56b6: $6b
    ld b, d                                       ; $56b7: $42
    inc a                                         ; $56b8: $3c
    ret nz                                        ; $56b9: $c0

    rst $38                                       ; $56ba: $ff
    ld b, b                                       ; $56bb: $40
    ret                                           ; $56bc: $c9


    ld h, c                                       ; $56bd: $61
    ld sp, $4e53                                  ; $56be: $31 $53 $4e
    ret nz                                        ; $56c1: $c0

    db $e3                                        ; $56c2: $e3
    ld l, l                                       ; $56c3: $6d
    ld l, l                                       ; $56c4: $6d
    ld h, [hl]                                    ; $56c5: $66
    pop bc                                        ; $56c6: $c1
    ldh [$7a], a                                  ; $56c7: $e0 $7a
    ldh [rOBP1], a                                ; $56c9: $e0 $49
    jp z, Jump_000_34ff                           ; $56cb: $ca $ff $34

jr_058_56ce:
    add sp, -$19                                  ; $56ce: $e8 $e7
    add hl, bc                                    ; $56d0: $09
    ret nz                                        ; $56d1: $c0

    ld d, d                                       ; $56d2: $52
    ret nz                                        ; $56d3: $c0

    db $eb                                        ; $56d4: $eb
    jr nc, jr_058_5710                            ; $56d5: $30 $39

    jp z, $e8ff                                   ; $56d7: $ca $ff $e8

    rst $20                                       ; $56da: $e7
    ret z                                         ; $56db: $c8

    jp z, Jump_058_40a0                           ; $56dc: $ca $a0 $40

    db $e4                                        ; $56df: $e4
    ret nz                                        ; $56e0: $c0

    and $52                                       ; $56e1: $e6 $52
    jp z, $c0ff                                   ; $56e3: $ca $ff $c0

    add sp, $04                                   ; $56e6: $e8 $04
    ld sp, $49c3                                  ; $56e8: $31 $c3 $49
    ld c, b                                       ; $56eb: $48
    add c                                         ; $56ec: $81
    ret nz                                        ; $56ed: $c0

    nop                                           ; $56ee: $00
    push hl                                       ; $56ef: $e5
    add b                                         ; $56f0: $80
    rst $38                                       ; $56f1: $ff
    db $ec                                        ; $56f2: $ec
    db $eb                                        ; $56f3: $eb
    inc d                                         ; $56f4: $14
    inc d                                         ; $56f5: $14
    cp c                                          ; $56f6: $b9
    dec d                                         ; $56f7: $15

jr_058_56f8:
    cp a                                          ; $56f8: $bf
    jp $c080                                      ; $56f9: $c3 $80 $c0


    ld l, l                                       ; $56fc: $6d
    ld [hl], $36                                  ; $56fd: $36 $36
    rst $38                                       ; $56ff: $ff
    ret nz                                        ; $5700: $c0

    ld [hl-], a                                   ; $5701: $32
    ld sp, hl                                     ; $5702: $f9
    ld c, l                                       ; $5703: $4d
    jp z, $e8ff                                   ; $5704: $ca $ff $e8

    rst $20                                       ; $5707: $e7
    inc h                                         ; $5708: $24
    inc h                                         ; $5709: $24
    rla                                           ; $570a: $17
    ld sp, $fd49                                  ; $570b: $31 $49 $fd
    ld b, d                                       ; $570e: $42
    nop                                           ; $570f: $00

jr_058_5710:
    jp nz, Jump_000_3a42                          ; $5710: $c2 $42 $3a

    ld b, a                                       ; $5713: $47
    ld b, a                                       ; $5714: $47
    ld a, [hl-]                                   ; $5715: $3a
    ld d, l                                       ; $5716: $55
    ld hl, sp-$47                                 ; $5717: $f8 $b9
    and b                                         ; $5719: $a0
    jp z, $e8ff                                   ; $571a: $ca $ff $e8

    rst $20                                       ; $571d: $e7
    jr nz, @+$22                                  ; $571e: $20 $20

    inc l                                         ; $5720: $2c
    dec d                                         ; $5721: $15
    ld sp, $3c91                                  ; $5722: $31 $91 $3c
    cp a                                          ; $5725: $bf
    pop hl                                        ; $5726: $e1
    ld b, a                                       ; $5727: $47
    ret nz                                        ; $5728: $c0

    jr c, jr_058_56ce                             ; $5729: $38 $a3

    ld h, b                                       ; $572b: $60
    jp z, $c0ff                                   ; $572c: $ca $ff $c0

    jp hl                                         ; $572f: $e9


    jr nz, jr_058_57b1                            ; $5730: $20 $7f

    rla                                           ; $5732: $17
    ld sp, $3e31                                  ; $5733: $31 $31 $3e
    ld a, [hl-]                                   ; $5736: $3a
    ld d, h                                       ; $5737: $54
    ld a, [hl-]                                   ; $5738: $3a
    add d                                         ; $5739: $82
    and h                                         ; $573a: $a4
    rlca                                          ; $573b: $07
    ld e, l                                       ; $573c: $5d
    ld e, h                                       ; $573d: $5c
    ld e, e                                       ; $573e: $5b
    jp z, $ffff                                   ; $573f: $ca $ff $ff

    rst $38                                       ; $5742: $ff
    rst $38                                       ; $5743: $ff
    rst $38                                       ; $5744: $ff
    rst $38                                       ; $5745: $ff
    rst $38                                       ; $5746: $ff
    rst $38                                       ; $5747: $ff
    rst $38                                       ; $5748: $ff
    nop                                           ; $5749: $00
    rst $38                                       ; $574a: $ff
    rst $38                                       ; $574b: $ff
    rst $38                                       ; $574c: $ff
    rst $38                                       ; $574d: $ff
    rst $38                                       ; $574e: $ff
    rst $38                                       ; $574f: $ff
    rst $38                                       ; $5750: $ff
    rst $38                                       ; $5751: $ff
    rst $38                                       ; $5752: $ff
    rst $38                                       ; $5753: $ff
    rst $38                                       ; $5754: $ff
    rst $38                                       ; $5755: $ff
    rst $38                                       ; $5756: $ff
    rst $38                                       ; $5757: $ff
    rst $38                                       ; $5758: $ff
    rst $38                                       ; $5759: $ff
    nop                                           ; $575a: $00
    rst $38                                       ; $575b: $ff
    rst $38                                       ; $575c: $ff
    rst $38                                       ; $575d: $ff
    rst $38                                       ; $575e: $ff
    rst $38                                       ; $575f: $ff
    rst $38                                       ; $5760: $ff
    rst $38                                       ; $5761: $ff
    rst $38                                       ; $5762: $ff
    rst $38                                       ; $5763: $ff
    rst $38                                       ; $5764: $ff
    rst $38                                       ; $5765: $ff
    rst $38                                       ; $5766: $ff
    rst $38                                       ; $5767: $ff
    rst $38                                       ; $5768: $ff
    rst $38                                       ; $5769: $ff
    rst $38                                       ; $576a: $ff
    nop                                           ; $576b: $00
    rst $38                                       ; $576c: $ff
    rst $38                                       ; $576d: $ff
    rst $38                                       ; $576e: $ff
    rst $38                                       ; $576f: $ff
    rst $38                                       ; $5770: $ff
    rst $38                                       ; $5771: $ff
    rst $38                                       ; $5772: $ff
    rst $38                                       ; $5773: $ff
    rst $38                                       ; $5774: $ff
    rst $38                                       ; $5775: $ff
    rst $38                                       ; $5776: $ff
    rst $38                                       ; $5777: $ff
    rst $38                                       ; $5778: $ff
    rst $38                                       ; $5779: $ff
    rst $38                                       ; $577a: $ff
    rst $38                                       ; $577b: $ff
    nop                                           ; $577c: $00
    rst $38                                       ; $577d: $ff
    rst $38                                       ; $577e: $ff
    rst $38                                       ; $577f: $ff
    rst $38                                       ; $5780: $ff
    rst $38                                       ; $5781: $ff
    rst $38                                       ; $5782: $ff
    rst $38                                       ; $5783: $ff
    rst $38                                       ; $5784: $ff
    rst $38                                       ; $5785: $ff
    rst $38                                       ; $5786: $ff
    rst $38                                       ; $5787: $ff
    rst $38                                       ; $5788: $ff
    rst $38                                       ; $5789: $ff
    rst $38                                       ; $578a: $ff
    rst $38                                       ; $578b: $ff
    rst $38                                       ; $578c: $ff
    nop                                           ; $578d: $00
    rst $38                                       ; $578e: $ff
    rst $38                                       ; $578f: $ff
    rst $38                                       ; $5790: $ff
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
    nop                                           ; $579e: $00
    rst $38                                       ; $579f: $ff
    rst $38                                       ; $57a0: $ff
    rst $38                                       ; $57a1: $ff
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
    nop                                           ; $57af: $00
    rst $38                                       ; $57b0: $ff

jr_058_57b1:
    rst $38                                       ; $57b1: $ff
    rst $38                                       ; $57b2: $ff
    rst $38                                       ; $57b3: $ff
    rst $38                                       ; $57b4: $ff
    rst $38                                       ; $57b5: $ff
    rst $38                                       ; $57b6: $ff
    rst $38                                       ; $57b7: $ff
    rst $38                                       ; $57b8: $ff
    rst $38                                       ; $57b9: $ff
    rst $38                                       ; $57ba: $ff
    rst $38                                       ; $57bb: $ff
    rst $38                                       ; $57bc: $ff
    rst $38                                       ; $57bd: $ff
    rst $38                                       ; $57be: $ff
    rst $38                                       ; $57bf: $ff
    nop                                           ; $57c0: $00
    rst $38                                       ; $57c1: $ff
    rst $38                                       ; $57c2: $ff
    rst $38                                       ; $57c3: $ff
    rst $38                                       ; $57c4: $ff
    rst $38                                       ; $57c5: $ff
    rst $38                                       ; $57c6: $ff
    rst $38                                       ; $57c7: $ff
    rst $38                                       ; $57c8: $ff
    rst $38                                       ; $57c9: $ff
    rst $38                                       ; $57ca: $ff
    rst $38                                       ; $57cb: $ff
    rst $38                                       ; $57cc: $ff
    rst $38                                       ; $57cd: $ff
    rst $38                                       ; $57ce: $ff
    rst $38                                       ; $57cf: $ff
    rst $38                                       ; $57d0: $ff
    nop                                           ; $57d1: $00
    rst $38                                       ; $57d2: $ff
    rst $38                                       ; $57d3: $ff
    rst $38                                       ; $57d4: $ff
    rst $38                                       ; $57d5: $ff
    rst $38                                       ; $57d6: $ff
    rst $38                                       ; $57d7: $ff
    rst $38                                       ; $57d8: $ff
    rst $38                                       ; $57d9: $ff
    rst $38                                       ; $57da: $ff
    rst $38                                       ; $57db: $ff
    rst $38                                       ; $57dc: $ff
    rst $38                                       ; $57dd: $ff
    rst $38                                       ; $57de: $ff
    rst $38                                       ; $57df: $ff
    rst $38                                       ; $57e0: $ff
    rst $38                                       ; $57e1: $ff
    nop                                           ; $57e2: $00
    rst $38                                       ; $57e3: $ff
    rst $38                                       ; $57e4: $ff
    rst $38                                       ; $57e5: $ff
    rst $38                                       ; $57e6: $ff
    rst $38                                       ; $57e7: $ff
    rst $38                                       ; $57e8: $ff
    rst $38                                       ; $57e9: $ff
    rst $38                                       ; $57ea: $ff
    rst $38                                       ; $57eb: $ff
    rst $38                                       ; $57ec: $ff
    rst $38                                       ; $57ed: $ff
    rst $38                                       ; $57ee: $ff
    rst $38                                       ; $57ef: $ff
    rst $38                                       ; $57f0: $ff
    rst $38                                       ; $57f1: $ff
    rst $38                                       ; $57f2: $ff
    nop                                           ; $57f3: $00
    rst $38                                       ; $57f4: $ff
    rst $38                                       ; $57f5: $ff
    rst $38                                       ; $57f6: $ff
    rst $38                                       ; $57f7: $ff
    rst $38                                       ; $57f8: $ff
    rst $38                                       ; $57f9: $ff
    rst $38                                       ; $57fa: $ff
    rst $38                                       ; $57fb: $ff
    rst $38                                       ; $57fc: $ff
    rst $38                                       ; $57fd: $ff
    rst $38                                       ; $57fe: $ff
    rst $38                                       ; $57ff: $ff
    rst $38                                       ; $5800: $ff
    di                                            ; $5801: $f3
    nop                                           ; $5802: $00
    nop                                           ; $5803: $00
    nop                                           ; $5804: $00
    and l                                         ; $5805: $a5
    nop                                           ; $5806: $00
    rst $38                                       ; $5807: $ff
    push hl                                       ; $5808: $e5
    ld [hl-], a                                   ; $5809: $32
    or $e6                                        ; $580a: $f6 $e6
    rst $30                                       ; $580c: $f7
    rst $20                                       ; $580d: $e7
    dec [hl]                                      ; $580e: $35
    db $ec                                        ; $580f: $ec
    xor $37                                       ; $5810: $ee $37
    db $ec                                        ; $5812: $ec
    jp c, $c7f0                                   ; $5813: $da $f0 $c7

    add sp, $33                                   ; $5816: $e8 $33
    ld sp, $f2e0                                  ; $5818: $31 $e0 $f2
    ld [hl], $30                                  ; $581b: $36 $30
    scf                                           ; $581d: $37
    cp a                                          ; $581e: $bf
    ld h, $20                                     ; $581f: $26 $20
    daa                                           ; $5821: $27
    db $10                                        ; $5822: $10
    ld d, $17                                     ; $5823: $16 $17
    jp nz, Jump_000_34f6                          ; $5825: $c2 $f6 $34

    rst $38                                       ; $5828: $ff
    ld [hl], $32                                  ; $5829: $36 $32
    jr nc, jr_058_5864                            ; $582b: $30 $37

    ld sp, $3133                                  ; $582d: $31 $33 $31
    inc sp                                        ; $5830: $33
    nop                                           ; $5831: $00
    and b                                         ; $5832: $a0
    ei                                            ; $5833: $fb
    rst $38                                       ; $5834: $ff
    rst $28                                       ; $5835: $ef
    nop                                           ; $5836: $00
    nop                                           ; $5837: $00
    nop                                           ; $5838: $00
    ld b, c                                       ; $5839: $41
    ld e, b                                       ; $583a: $58
    ld [hl], c                                    ; $583b: $71
    ld e, b                                       ; $583c: $58
    daa                                           ; $583d: $27
    ld e, e                                       ; $583e: $5b
    cp $5c                                        ; $583f: $fe $5c
    ldh a, [$03]                                  ; $5841: $f0 $03
    ld c, l                                       ; $5843: $4d
    rrca                                          ; $5844: $0f
    ld b, b                                       ; $5845: $40
    ld [bc], a                                    ; $5846: $02
    ret nz                                        ; $5847: $c0

    nop                                           ; $5848: $00
    ldh a, [$03]                                  ; $5849: $f0 $03
    push af                                       ; $584b: $f5
    inc bc                                        ; $584c: $03
    ld c, b                                       ; $584d: $48
    rrca                                          ; $584e: $0f
    ld b, b                                       ; $584f: $40
    ld [bc], a                                    ; $5850: $02
    ld e, a                                       ; $5851: $5f
    dec sp                                        ; $5852: $3b

jr_058_5853:
    jr c, @+$10                                   ; $5853: $38 $0e

    ld sp, $4819                                  ; $5855: $31 $19 $48
    rrca                                          ; $5858: $0f
    ld [$0825], sp                                ; $5859: $08 $25 $08
    dec h                                         ; $585c: $25
    ld [$0825], sp                                ; $585d: $08 $25 $08
    dec h                                         ; $5860: $25
    ld [$0825], sp                                ; $5861: $08 $25 $08

jr_058_5864:
    dec h                                         ; $5864: $25
    ld [$0825], sp                                ; $5865: $08 $25 $08
    dec h                                         ; $5868: $25
    ld [$0825], sp                                ; $5869: $08 $25 $08
    dec h                                         ; $586c: $25
    ld [$0825], sp                                ; $586d: $08 $25 $08
    dec h                                         ; $5870: $25
    di                                            ; $5871: $f3
    ld a, [bc]                                    ; $5872: $0a
    dec bc                                        ; $5873: $0b
    rst $38                                       ; $5874: $ff
    ldh [$fb], a                                  ; $5875: $e0 $fb
    ldh [$2b], a                                  ; $5877: $e0 $2b
    dec hl                                        ; $5879: $2b
    dec bc                                        ; $587a: $0b
    ld a, [bc]                                    ; $587b: $0a
    dec hl                                        ; $587c: $2b
    ld c, d                                       ; $587d: $4a
    ld l, d                                       ; $587e: $6a
    rst $38                                       ; $587f: $ff
    db $e3                                        ; $5880: $e3
    inc c                                         ; $5881: $0c
    rst $38                                       ; $5882: $ff
    ldh [$4c], a                                  ; $5883: $e0 $4c
    db $fd                                        ; $5885: $fd
    ldh [$fc], a                                  ; $5886: $e0 $fc
    ldh [rSVBK], a                                ; $5888: $e0 $70
    ld hl, sp-$1e                                 ; $588a: $f8 $e2
    ldh a, [$e8]                                  ; $588c: $f0 $e8
    db $ec                                        ; $588e: $ec
    ld [c], a                                     ; $588f: $e2
    db $fd                                        ; $5890: $fd
    jp hl                                         ; $5891: $e9


    dec bc                                        ; $5892: $0b
    dec bc                                        ; $5893: $0b
    ld c, d                                       ; $5894: $4a
    cp [hl]                                       ; $5895: $be
    pop hl                                        ; $5896: $e1
    jr nz, jr_058_5853                            ; $5897: $20 $ba

    ldh [$be], a                                  ; $5899: $e0 $be
    ldh [$bf], a                                  ; $589b: $e0 $bf
    db $e4                                        ; $589d: $e4
    add $e0                                       ; $589e: $c6 $e0
    push bc                                       ; $58a0: $c5
    ld [c], a                                     ; $58a1: $e2
    ld c, h                                       ; $58a2: $4c
    db $fd                                        ; $58a3: $fd
    and $f0                                       ; $58a4: $e6 $f0
    push hl                                       ; $58a6: $e5
    pop af                                        ; $58a7: $f1
    inc l                                         ; $58a8: $2c
    db $fc                                        ; $58a9: $fc
    pop hl                                        ; $58aa: $e1
    ret nz                                        ; $58ab: $c0

    db $ec                                        ; $58ac: $ec
    call nz, Call_058_6be2                        ; $58ad: $c4 $e2 $6b
    ld c, e                                       ; $58b0: $4b
    dec bc                                        ; $58b1: $0b
    dec bc                                        ; $58b2: $0b
    pop bc                                        ; $58b3: $c1
    ld c, e                                       ; $58b4: $4b
    cp a                                          ; $58b5: $bf
    push hl                                       ; $58b6: $e5
    sbc d                                         ; $58b7: $9a
    db $e4                                        ; $58b8: $e4
    jp Jump_058_7ee6                              ; $58b9: $c3 $e6 $7e


    ld [c], a                                     ; $58bc: $e2
    or d                                          ; $58bd: $b2
    pop hl                                        ; $58be: $e1
    inc l                                         ; $58bf: $2c
    inc l                                         ; $58c0: $2c
    ld l, h                                       ; $58c1: $6c
    db $fc                                        ; $58c2: $fc
    ld [c], a                                     ; $58c3: $e2
    ld a, l                                       ; $58c4: $7d
    jp hl                                         ; $58c5: $e9


    ld a, [bc]                                    ; $58c6: $0a
    dec hl                                        ; $58c7: $2b
    jp nz, Jump_058_6be1                          ; $58c8: $c2 $e1 $6b

    ld c, e                                       ; $58cb: $4b
    rst $38                                       ; $58cc: $ff
    pop hl                                        ; $58cd: $e1
    ld b, c                                       ; $58ce: $41
    dec bc                                        ; $58cf: $0b
    ld a, [hl]                                    ; $58d0: $7e
    db $e4                                        ; $58d1: $e4
    ld c, c                                       ; $58d2: $49
    and $7e                                       ; $58d3: $e6 $7e
    db $e3                                        ; $58d5: $e3
    ld b, a                                       ; $58d6: $47
    db $e3                                        ; $58d7: $e3
    jr nc, @-$1d                                  ; $58d8: $30 $e1

    inc l                                         ; $58da: $2c

jr_058_58db:
    add b                                         ; $58db: $80
    ldh [$0e], a                                  ; $58dc: $e0 $0e
    ret nz                                        ; $58de: $c0

    db $ec                                        ; $58df: $ec
    dec hl                                        ; $58e0: $2b
    ld l, e                                       ; $58e1: $6b
    dec bc                                        ; $58e2: $0b
    jp nz, $bfe4                                  ; $58e3: $c2 $e4 $bf

    ld [c], a                                     ; $58e6: $e2
    db $fc                                        ; $58e7: $fc
    jp nz, $e344                                  ; $58e8: $c2 $44 $e3

    nop                                           ; $58eb: $00
    ccf                                           ; $58ec: $3f
    db $e4                                        ; $58ed: $e4
    rst $30                                       ; $58ee: $f7
    jp nz, $e530                                  ; $58ef: $c2 $30 $e5

    db $ec                                        ; $58f2: $ec
    jp nz, $e43f                                  ; $58f3: $c2 $3f $e4

    jr c, jr_058_58db                             ; $58f6: $38 $e3

    ld b, [hl]                                    ; $58f8: $46
    ldh [$c1], a                                  ; $58f9: $e0 $c1
    and $00                                       ; $58fb: $e6 $00
    cp a                                          ; $58fd: $bf
    push hl                                       ; $58fe: $e5
    db $dd                                        ; $58ff: $dd
    call nz, $c3d5                                ; $5900: $c4 $d5 $c3
    rst $08                                       ; $5903: $cf
    add $38                                       ; $5904: $c6 $38
    ld [c], a                                     ; $5906: $e2
    inc [hl]                                      ; $5907: $34
    pop hl                                        ; $5908: $e1
    rst $38                                       ; $5909: $ff
    jp z, $e981                                   ; $590a: $ca $81 $e9

    add b                                         ; $590d: $80
    dec a                                         ; $590e: $3d
    push hl                                       ; $590f: $e5
    pop de                                        ; $5910: $d1
    push hl                                       ; $5911: $e5
    cp e                                          ; $5912: $bb
    push hl                                       ; $5913: $e5
    ld a, a                                       ; $5914: $7f
    call z, $edc0                                 ; $5915: $cc $c0 $ed
    cp $c0                                        ; $5918: $fe $c0
    ld bc, $6be0                                  ; $591a: $01 $e0 $6b
    inc e                                         ; $591d: $1c
    ld a, l                                       ; $591e: $7d
    pop bc                                        ; $591f: $c1
    db $fc                                        ; $5920: $fc
    ret nz                                        ; $5921: $c0

    ld c, e                                       ; $5922: $4b
    dec bc                                        ; $5923: $0b
    ld c, d                                       ; $5924: $4a
    adc a                                         ; $5925: $8f
    add sp, -$40                                  ; $5926: $e8 $c0
    call nz, $eb3f                                ; $5928: $c4 $3f $eb
    add d                                         ; $592b: $82
    ld b, b                                       ; $592c: $40
    sra e                                         ; $592d: $cb $2b
    add e                                         ; $592f: $83
    ret nz                                        ; $5930: $c0

    ret nz                                        ; $5931: $c0

    pop hl                                        ; $5932: $e1
    ld a, l                                       ; $5933: $7d
    ret nz                                        ; $5934: $c0

    cp c                                          ; $5935: $b9
    ret nz                                        ; $5936: $c0

    ret nz                                        ; $5937: $c0

    ldh [$0b], a                                  ; $5938: $e0 $0b
    ld c, b                                       ; $593a: $48
    ld b, d                                       ; $593b: $42
    push hl                                       ; $593c: $e5
    rst $38                                       ; $593d: $ff
    or d                                          ; $593e: $b2
    nop                                           ; $593f: $00
    adc $2b                                       ; $5940: $ce $2b
    adc d                                         ; $5942: $8a
    pop hl                                        ; $5943: $e1
    cp a                                          ; $5944: $bf
    and c                                         ; $5945: $a1
    dec hl                                        ; $5946: $2b
    ld a, c                                       ; $5947: $79
    ldh [rNR41], a                                ; $5948: $e0 $20
    ld [hl], d                                    ; $594a: $72
    ret nz                                        ; $594b: $c0

    ret nz                                        ; $594c: $c0

    pop hl                                        ; $594d: $e1
    rst $38                                       ; $594e: $ff
    cp b                                          ; $594f: $b8
    ret nz                                        ; $5950: $c0

    xor [hl]                                      ; $5951: $ae
    ld c, d                                       ; $5952: $4a
    ldh [$0b], a                                  ; $5953: $e0 $0b

jr_058_5955:
    ld a, h                                       ; $5955: $7c
    ret nz                                        ; $5956: $c0

    cp b                                          ; $5957: $b8
    ld [c], a                                     ; $5958: $e2
    nop                                           ; $5959: $00
    ret nz                                        ; $595a: $c0

    rst $20                                       ; $595b: $e7
    rst $38                                       ; $595c: $ff
    or a                                          ; $595d: $b7
    add l                                         ; $595e: $85
    jp nz, $a6bb                                  ; $595f: $c2 $bb $a6

    add [hl]                                      ; $5962: $86
    db $e3                                        ; $5963: $e3
    ld b, d                                       ; $5964: $42
    and b                                         ; $5965: $a0

jr_058_5966:
    pop bc                                        ; $5966: $c1
    ld [c], a                                     ; $5967: $e2
    ld [hl], a                                    ; $5968: $77
    pop hl                                        ; $5969: $e1
    ld [hl], b                                    ; $596a: $70
    ld b, b                                       ; $596b: $40
    db $e3                                        ; $596c: $e3
    rst $38                                       ; $596d: $ff
    or a                                          ; $596e: $b7
    ccf                                           ; $596f: $3f
    ret nz                                        ; $5970: $c0

    ld a, l                                       ; $5971: $7d
    xor b                                         ; $5972: $a8
    inc l                                         ; $5973: $2c
    inc l                                         ; $5974: $2c
    dec hl                                        ; $5975: $2b
    cp [hl]                                       ; $5976: $be
    ret nz                                        ; $5977: $c0

    add h                                         ; $5978: $84
    pop bc                                        ; $5979: $c1
    db $e4                                        ; $597a: $e4
    ld [hl], $a3                                  ; $597b: $36 $a3
    ld a, [bc]                                    ; $597d: $0a
    add c                                         ; $597e: $81
    add $ff                                       ; $597f: $c6 $ff
    or b                                          ; $5981: $b0
    rst $20                                       ; $5982: $e7
    add c                                         ; $5983: $81
    ret nz                                        ; $5984: $c0

    db $eb                                        ; $5985: $eb
    inc l                                         ; $5986: $2c
    pop af                                        ; $5987: $f1
    inc l                                         ; $5988: $2c
    ld b, c                                       ; $5989: $41
    ldh [$08], a                                  ; $598a: $e0 $08
    ld [c], a                                     ; $598c: $e2
    ld a, c                                       ; $598d: $79
    ret nz                                        ; $598e: $c0

    dec bc                                        ; $598f: $0b
    ld l, e                                       ; $5990: $6b
    dec bc                                        ; $5991: $0b
    ld a, [bc]                                    ; $5992: $0a
    jr nz, jr_058_5955                            ; $5993: $20 $c0

    ld [c], a                                     ; $5995: $e2
    rst $38                                       ; $5996: $ff
    or [hl]                                       ; $5997: $b6
    or d                                          ; $5998: $b2
    add d                                         ; $5999: $82
    jp z, $c0e1                                   ; $599a: $ca $e1 $c0

    and $6c                                       ; $599d: $e6 $6c
    cp a                                          ; $599f: $bf
    ldh [$84], a                                  ; $59a0: $e0 $84
    push hl                                       ; $59a2: $e5
    jr nz, jr_058_5966                            ; $59a3: $20 $c1

    pop hl                                        ; $59a5: $e1
    add b                                         ; $59a6: $80
    pop hl                                        ; $59a7: $e1
    add d                                         ; $59a8: $82
    sub $34                                       ; $59a9: $d6 $34
    and e                                         ; $59ab: $a3
    ret nz                                        ; $59ac: $c0

    jp hl                                         ; $59ad: $e9


    ld l, h                                       ; $59ae: $6c
    ld a, a                                       ; $59af: $7f
    pop hl                                        ; $59b0: $e1
    jp nz, $02e4                                  ; $59b1: $c2 $e4 $02

    pop bc                                        ; $59b4: $c1
    ld [c], a                                     ; $59b5: $e2
    ld a, [bc]                                    ; $59b6: $0a
    add d                                         ; $59b7: $82
    db $dd                                        ; $59b8: $dd
    ret nz                                        ; $59b9: $c0

    ld [c], a                                     ; $59ba: $e2
    jr c, @-$72                                   ; $59bb: $38 $8c

    ld c, h                                       ; $59bd: $4c
    add sp, $08                                   ; $59be: $e8 $08
    sub c                                         ; $59c0: $91
    add c                                         ; $59c1: $81
    add l                                         ; $59c2: $85
    nop                                           ; $59c3: $00
    daa                                           ; $59c4: $27
    and h                                         ; $59c5: $a4
    ld a, [$546a]                                 ; $59c6: $fa $6a $54
    ld hl, sp+$09                                 ; $59c9: $f8 $09
    ret                                           ; $59cb: $c9


    add l                                         ; $59cc: $85
    add h                                         ; $59cd: $84
    xor d                                         ; $59ce: $aa
    ld h, h                                       ; $59cf: $64
    ld a, [$d565]                                 ; $59d0: $fa $65 $d5
    ld [hl], a                                    ; $59d3: $77
    nop                                           ; $59d4: $00
    ld a, d                                       ; $59d5: $7a
    ld l, b                                       ; $59d6: $68
    inc c                                         ; $59d7: $0c
    add c                                         ; $59d8: $81
    ld [hl], d                                    ; $59d9: $72
    ld h, l                                       ; $59da: $65
    and l                                         ; $59db: $a5
    add e                                         ; $59dc: $83
    or $60                                        ; $59dd: $f6 $60
    cp b                                          ; $59df: $b8
    ld h, e                                       ; $59e0: $63
    push de                                       ; $59e1: $d5
    ld [hl], a                                    ; $59e2: $77
    adc d                                         ; $59e3: $8a
    ld l, b                                       ; $59e4: $68
    nop                                           ; $59e5: $00
    jp nc, $86e1                                  ; $59e6: $d2 $e1 $86

    ld h, d                                       ; $59e9: $62
    ld l, l                                       ; $59ea: $6d
    add l                                         ; $59eb: $85
    ret nz                                        ; $59ec: $c0

    rst $20                                       ; $59ed: $e7
    push de                                       ; $59ee: $d5
    ld [hl], a                                    ; $59ef: $77
    adc d                                         ; $59f0: $8a
    ld l, c                                       ; $59f1: $69
    call $83a1                                    ; $59f2: $cd $a1 $83
    and e                                         ; $59f5: $a3
    nop                                           ; $59f6: $00
    xor d                                         ; $59f7: $aa
    ld h, h                                       ; $59f8: $64
    ld a, [$d566]                                 ; $59f9: $fa $66 $d5
    ld [hl], a                                    ; $59fc: $77
    sub l                                         ; $59fd: $95
    and d                                         ; $59fe: $a2
    adc d                                         ; $59ff: $8a
    ld h, h                                       ; $5a00: $64
    adc l                                         ; $5a01: $8d
    and b                                         ; $5a02: $a0
    xor l                                         ; $5a03: $ad
    push hl                                       ; $5a04: $e5
    ld sp, $0063                                  ; $5a05: $31 $63 $00
    ld sp, hl                                     ; $5a08: $f9
    ld c, h                                       ; $5a09: $4c
    push de                                       ; $5a0a: $d5
    ld [hl], c                                    ; $5a0b: $71
    call nc, $8b44                                ; $5a0c: $d4 $44 $8b
    add l                                         ; $5a0f: $85
    ld [hl], d                                    ; $5a10: $72
    ld b, h                                       ; $5a11: $44
    ld a, [hl+]                                   ; $5a12: $2a
    ld h, a                                       ; $5a13: $67
    ld c, h                                       ; $5a14: $4c
    ret z                                         ; $5a15: $c8

    push de                                       ; $5a16: $d5
    ld [hl], d                                    ; $5a17: $72
    nop                                           ; $5a18: $00
    ld c, [hl]                                    ; $5a19: $4e
    db $e4                                        ; $5a1a: $e4
    adc d                                         ; $5a1b: $8a
    ld h, l                                       ; $5a1c: $65
    ld c, e                                       ; $5a1d: $4b
    rst $00                                       ; $5a1e: $c7
    ld l, b                                       ; $5a1f: $68
    ld b, e                                       ; $5a20: $43
    add b                                         ; $5a21: $80
    db $eb                                        ; $5a22: $eb
    push de                                       ; $5a23: $d5
    ld [hl], e                                    ; $5a24: $73
    ld b, [hl]                                    ; $5a25: $46
    pop hl                                        ; $5a26: $e1
    ld sp, hl                                     ; $5a27: $f9
    daa                                           ; $5a28: $27
    nop                                           ; $5a29: $00

jr_058_5a2a:
    dec b                                         ; $5a2a: $05
    ld c, b                                       ; $5a2b: $48
    nop                                           ; $5a2c: $00
    jp hl                                         ; $5a2d: $e9


    db $d3                                        ; $5a2e: $d3
    ld h, $56                                     ; $5a2f: $26 $56
    ld b, e                                       ; $5a31: $43
    ld a, [bc]                                    ; $5a32: $0a
    ld b, h                                       ; $5a33: $44
    ld a, $68                                     ; $5a34: $3e $68
    ret nz                                        ; $5a36: $c0

    add sp, -$74                                  ; $5a37: $e8 $8c
    ret z                                         ; $5a39: $c8

    nop                                           ; $5a3a: $00
    ld b, c                                       ; $5a3b: $41
    db $ec                                        ; $5a3c: $ec
    call c, $fc21                                 ; $5a3d: $dc $21 $fc
    ld [c], a                                     ; $5a40: $e2
    jr nz, jr_058_5a2a                            ; $5a41: $20 $e7

    or d                                          ; $5a43: $b2
    push hl                                       ; $5a44: $e5
    ld a, [hl]                                    ; $5a45: $7e
    daa                                           ; $5a46: $27
    ld l, c                                       ; $5a47: $69
    ld b, [hl]                                    ; $5a48: $46
    ld a, c                                       ; $5a49: $79
    ld l, d                                       ; $5a4a: $6a
    nop                                           ; $5a4b: $00
    sub h                                         ; $5a4c: $94
    dec h                                         ; $5a4d: $25
    sub e                                         ; $5a4e: $93
    ld b, a                                       ; $5a4f: $47
    call $c028                                    ; $5a50: $cd $28 $c0
    call z, $e7df                                 ; $5a53: $cc $df $e7
    ld a, [bc]                                    ; $5a56: $0a
    or c                                          ; $5a57: $b1
    rrca                                          ; $5a58: $0f
    daa                                           ; $5a59: $27
    rrca                                          ; $5a5a: $0f
    ld c, c                                       ; $5a5b: $49
    nop                                           ; $5a5c: $00
    ret nz                                        ; $5a5d: $c0

    ret z                                         ; $5a5e: $c8

    dec bc                                        ; $5a5f: $0b
    rst $00                                       ; $5a60: $c7
    cp [hl]                                       ; $5a61: $be
    ld l, b                                       ; $5a62: $68
    ccf                                           ; $5a63: $3f
    rst $20                                       ; $5a64: $e7
    ld b, a                                       ; $5a65: $47
    ld l, c                                       ; $5a66: $69
    ld a, e                                       ; $5a67: $7b
    ld a, [hl+]                                   ; $5a68: $2a
    pop bc                                        ; $5a69: $c1
    rlca                                          ; $5a6a: $07
    ld l, [hl]                                    ; $5a6b: $6e
    daa                                           ; $5a6c: $27
    nop                                           ; $5a6d: $00
    ret nz                                        ; $5a6e: $c0

    rst $20                                       ; $5a6f: $e7
    sub l                                         ; $5a70: $95
    ld h, $52                                     ; $5a71: $26 $52
    ld b, l                                       ; $5a73: $45
    sub h                                         ; $5a74: $94
    ld [$cb40], sp                                ; $5a75: $08 $40 $cb
    ld h, [hl]                                    ; $5a78: $66
    jp hl                                         ; $5a79: $e9


    ld a, l                                       ; $5a7a: $7d
    adc [hl]                                      ; $5a7b: $8e
    ret                                           ; $5a7c: $c9


    db $ec                                        ; $5a7d: $ec
    nop                                           ; $5a7e: $00
    call z, Call_058_40e6                         ; $5a7f: $cc $e6 $40
    rst $00                                       ; $5a82: $c7
    ld a, $12                                     ; $5a83: $3e $12
    ld a, a                                       ; $5a85: $7f
    rst $00                                       ; $5a86: $c7
    sbc $2d                                       ; $5a87: $de $2d
    ld a, c                                       ; $5a89: $79
    ld b, $77                                     ; $5a8a: $06 $77
    adc b                                         ; $5a8c: $88
    rst $00                                       ; $5a8d: $c7
    halt                                          ; $5a8e: $76
    nop                                           ; $5a8f: $00
    pop af                                        ; $5a90: $f1
    ld b, a                                       ; $5a91: $47
    ld bc, $9567                                  ; $5a92: $01 $67 $95
    xor $81                                       ; $5a95: $ee $81
    inc b                                         ; $5a97: $04
    add c                                         ; $5a98: $81
    ld l, h                                       ; $5a99: $6c
    add b                                         ; $5a9a: $80
    ei                                            ; $5a9b: $fb
    ld d, $af                                     ; $5a9c: $16 $af
    ld a, d                                       ; $5a9e: $7a
    ld hl, sp+$00                                 ; $5a9f: $f8 $00
    ld e, a                                       ; $5aa1: $5f
    ld [$c612], a                                 ; $5aa2: $ea $12 $c6
    ld a, l                                       ; $5aa5: $7d
    ld a, [bc]                                    ; $5aa6: $0a
    rst $38                                       ; $5aa7: $ff
    ei                                            ; $5aa8: $fb
    ld e, $f0                                     ; $5aa9: $1e $f0
    ld a, l                                       ; $5aab: $7d
    dec c                                         ; $5aac: $0d
    ld a, [$afcc]                                 ; $5aad: $fa $cc $af
    rst $08                                       ; $5ab0: $cf
    nop                                           ; $5ab1: $00
    jp c, Jump_058_7dc8                           ; $5ab2: $da $c8 $7d

    ld de, $dfba                                  ; $5ab5: $11 $ba $df
    xor b                                         ; $5ab8: $a8
    sbc e                                         ; $5ab9: $9b
    rst $38                                       ; $5aba: $ff
    rst $38                                       ; $5abb: $ff
    xor b                                         ; $5abc: $a8
    sbc e                                         ; $5abd: $9b
    rst $38                                       ; $5abe: $ff
    rst $38                                       ; $5abf: $ff
    xor b                                         ; $5ac0: $a8
    sbc h                                         ; $5ac1: $9c
    nop                                           ; $5ac2: $00
    rst $38                                       ; $5ac3: $ff
    rst $38                                       ; $5ac4: $ff
    xor b                                         ; $5ac5: $a8
    sbc e                                         ; $5ac6: $9b
    rst $38                                       ; $5ac7: $ff
    rst $38                                       ; $5ac8: $ff
    xor b                                         ; $5ac9: $a8
    sbc e                                         ; $5aca: $9b
    rst $38                                       ; $5acb: $ff
    rst $38                                       ; $5acc: $ff
    xor b                                         ; $5acd: $a8
    sbc d                                         ; $5ace: $9a
    rst $38                                       ; $5acf: $ff
    rst $38                                       ; $5ad0: $ff
    xor b                                         ; $5ad1: $a8
    sbc e                                         ; $5ad2: $9b
    nop                                           ; $5ad3: $00
    rst $38                                       ; $5ad4: $ff
    rst $38                                       ; $5ad5: $ff
    jr z, @-$42                                   ; $5ad6: $28 $bc

    rst $38                                       ; $5ad8: $ff
    rst $38                                       ; $5ad9: $ff
    ld l, c                                       ; $5ada: $69
    cp a                                          ; $5adb: $bf
    rst $38                                       ; $5adc: $ff
    rst $38                                       ; $5add: $ff
    rst $38                                       ; $5ade: $ff
    rst $38                                       ; $5adf: $ff
    sub [hl]                                      ; $5ae0: $96

Jump_058_5ae1:
    rst $38                                       ; $5ae1: $ff
    rst $38                                       ; $5ae2: $ff
    rst $38                                       ; $5ae3: $ff
    nop                                           ; $5ae4: $00
    cp b                                          ; $5ae5: $b8
    dec hl                                        ; $5ae6: $2b
    rst $38                                       ; $5ae7: $ff
    rst $38                                       ; $5ae8: $ff
    rst $38                                       ; $5ae9: $ff
    rst $38                                       ; $5aea: $ff
    rst $38                                       ; $5aeb: $ff
    rst $38                                       ; $5aec: $ff
    rst $38                                       ; $5aed: $ff
    rst $38                                       ; $5aee: $ff
    ld a, d                                       ; $5aef: $7a
    add e                                         ; $5af0: $83
    call c, $ffff                                 ; $5af1: $dc $ff $ff
    rst $38                                       ; $5af4: $ff
    nop                                           ; $5af5: $00
    rst $38                                       ; $5af6: $ff
    rst $38                                       ; $5af7: $ff
    rst $38                                       ; $5af8: $ff
    rst $38                                       ; $5af9: $ff
    rst $38                                       ; $5afa: $ff
    rst $38                                       ; $5afb: $ff
    rst $38                                       ; $5afc: $ff
    rst $38                                       ; $5afd: $ff
    rst $38                                       ; $5afe: $ff
    rst $38                                       ; $5aff: $ff
    rst $38                                       ; $5b00: $ff
    rst $38                                       ; $5b01: $ff
    rst $38                                       ; $5b02: $ff
    rst $38                                       ; $5b03: $ff
    rst $38                                       ; $5b04: $ff
    rst $38                                       ; $5b05: $ff
    nop                                           ; $5b06: $00
    rst $38                                       ; $5b07: $ff
    rst $38                                       ; $5b08: $ff
    rst $38                                       ; $5b09: $ff
    rst $38                                       ; $5b0a: $ff
    rst $38                                       ; $5b0b: $ff
    rst $38                                       ; $5b0c: $ff
    rst $38                                       ; $5b0d: $ff
    rst $38                                       ; $5b0e: $ff
    rst $38                                       ; $5b0f: $ff
    rst $38                                       ; $5b10: $ff
    rst $38                                       ; $5b11: $ff
    rst $38                                       ; $5b12: $ff
    rst $38                                       ; $5b13: $ff
    rst $38                                       ; $5b14: $ff
    rst $38                                       ; $5b15: $ff
    rst $38                                       ; $5b16: $ff
    nop                                           ; $5b17: $00
    nop                                           ; $5b18: $00
    cp a                                          ; $5b19: $bf
    rst $38                                       ; $5b1a: $ff
    rst $38                                       ; $5b1b: $ff
    rst $38                                       ; $5b1c: $ff
    rst $38                                       ; $5b1d: $ff
    rst $38                                       ; $5b1e: $ff
    rst $38                                       ; $5b1f: $ff
    rst $38                                       ; $5b20: $ff
    rst $38                                       ; $5b21: $ff
    ld e, b                                       ; $5b22: $58
    ld [hl], e                                    ; $5b23: $73
    nop                                           ; $5b24: $00
    nop                                           ; $5b25: $00
    nop                                           ; $5b26: $00
    ei                                            ; $5b27: $fb
    ld e, d                                       ; $5b28: $5a
    ld e, e                                       ; $5b29: $5b
    rst $38                                       ; $5b2a: $ff
    ldh [$5a], a                                  ; $5b2b: $e0 $5a
    ld e, h                                       ; $5b2d: $5c
    ld e, l                                       ; $5b2e: $5d
    ld e, l                                       ; $5b2f: $5d
    ld e, h                                       ; $5b30: $5c
    cpl                                           ; $5b31: $2f
    ld e, e                                       ; $5b32: $5b
    ld e, d                                       ; $5b33: $5a
    adc h                                         ; $5b34: $8c
    ld c, [hl]                                    ; $5b35: $4e
    rst $38                                       ; $5b36: $ff
    db $e3                                        ; $5b37: $e3
    nop                                           ; $5b38: $00
    rst $38                                       ; $5b39: $ff
    rst $38                                       ; $5b3a: $ff
    rst $20                                       ; $5b3b: $e7
    and $1e                                       ; $5b3c: $e6 $1e
    jp Jump_058_5be0                              ; $5b3e: $c3 $e0 $5b


    ld e, h                                       ; $5b41: $5c
    ld e, l                                       ; $5b42: $5d
    ld sp, $e0ff                                  ; $5b43: $31 $ff $e0
    cp [hl]                                       ; $5b46: $be
    ldh [$bf], a                                  ; $5b47: $e0 $bf

jr_058_5b49:
    db $e4                                        ; $5b49: $e4
    db $fc                                        ; $5b4a: $fc
    jp z, $c0ff                                   ; $5b4b: $ca $ff $c0

    jp hl                                         ; $5b4e: $e9


    ld e, e                                       ; $5b4f: $5b
    ld h, b                                       ; $5b50: $60
    ld sp, $3e31                                  ; $5b51: $31 $31 $3e
    ld b, [hl]                                    ; $5b54: $46
    rra                                           ; $5b55: $1f
    ld b, [hl]                                    ; $5b56: $46
    ld a, $31                                     ; $5b57: $3e $31
    ld sp, $bf60                                  ; $5b59: $31 $60 $bf
    db $e4                                        ; $5b5c: $e4
    jp z, $e8ff                                   ; $5b5d: $ca $ff $e8

    rst $20                                       ; $5b60: $e7
    db $fd                                        ; $5b61: $fd
    ld e, d                                       ; $5b62: $5a
    pop bc                                        ; $5b63: $c1
    ldh [$3e], a                                  ; $5b64: $e0 $3e
    ld b, [hl]                                    ; $5b66: $46
    ld [hl], $65                                  ; $5b67: $36 $65
    ld h, l                                       ; $5b69: $65
    ld [hl], $e3                                  ; $5b6a: $36 $e3
    ld b, [hl]                                    ; $5b6c: $46
    ld c, l                                       ; $5b6d: $4d
    cp a                                          ; $5b6e: $bf
    push hl                                       ; $5b6f: $e5
    jp z, Jump_058_40ff                           ; $5b70: $ca $ff $40

    add sp, $5f                                   ; $5b73: $e8 $5f
    ld sp, $8449                                  ; $5b75: $31 $49 $84
    jp nz, $fee0                                  ; $5b78: $c2 $e0 $fe

    pop hl                                        ; $5b7b: $e1
    ld [hl-], a                                   ; $5b7c: $32
    cp a                                          ; $5b7d: $bf
    ldh [$fc], a                                  ; $5b7e: $e0 $fc
    jp nz, $ffca                                  ; $5b80: $c2 $ca $ff

    nop                                           ; $5b83: $00
    add sp, $5e                                   ; $5b84: $e8 $5e
    rlca                                          ; $5b86: $07
    ld sp, $6839                                  ; $5b87: $31 $39 $68
    rst $38                                       ; $5b8a: $ff
    db $e4                                        ; $5b8b: $e4
    cp a                                          ; $5b8c: $bf
    push hl                                       ; $5b8d: $e5
    jp z, $e8ff                                   ; $5b8e: $ca $ff $e8

    rst $20                                       ; $5b91: $e7
    add c                                         ; $5b92: $81
    ldh [$03], a                                  ; $5b93: $e0 $03
    ld c, b                                       ; $5b95: $48
    ld l, h                                       ; $5b96: $6c
    rst $38                                       ; $5b97: $ff
    push hl                                       ; $5b98: $e5
    ld a, [hl]                                    ; $5b99: $7e
    pop hl                                        ; $5b9a: $e1
    cp e                                          ; $5b9b: $bb
    ret nz                                        ; $5b9c: $c0

    jp z, $e8ff                                   ; $5b9d: $ca $ff $e8

    rst $20                                       ; $5ba0: $e7
    add c                                         ; $5ba1: $81
    ldh [rIE], a                                  ; $5ba2: $e0 $ff
    ld l, e                                       ; $5ba4: $6b
    jr nc, @+$32                                  ; $5ba5: $30 $30

    ld l, l                                       ; $5ba7: $6d
    ld l, b                                       ; $5ba8: $68
    ld l, b                                       ; $5ba9: $68
    ld l, l                                       ; $5baa: $6d
    jr nc, jr_058_5b49                            ; $5bab: $30 $9c

    rst $38                                       ; $5bad: $ff
    ldh [$3d], a                                  ; $5bae: $e0 $3d
    ldh [$5f], a                                  ; $5bb0: $e0 $5f
    ld e, e                                       ; $5bb2: $5b
    adc h                                         ; $5bb3: $8c
    jp z, $e8ff                                   ; $5bb4: $ca $ff $e8

    rst $20                                       ; $5bb7: $e7
    ld sp, $c0be                                  ; $5bb8: $31 $be $c0
    pop hl                                        ; $5bbb: $e1
    ld l, l                                       ; $5bbc: $6d
    ld l, d                                       ; $5bbd: $6a
    jr nc, @+$32                                  ; $5bbe: $30 $30

    ld l, d                                       ; $5bc0: $6a
    cp a                                          ; $5bc1: $bf
    pop hl                                        ; $5bc2: $e1
    ld l, l                                       ; $5bc3: $6d
    sbc a                                         ; $5bc4: $9f
    add hl, sp                                    ; $5bc5: $39
    ld sp, $5b5e                                  ; $5bc6: $31 $5e $5b
    ld e, e                                       ; $5bc9: $5b
    jp z, $c0ff                                   ; $5bca: $ca $ff $c0

    jp hl                                         ; $5bcd: $e9


    ld c, c                                       ; $5bce: $49
    db $eb                                        ; $5bcf: $eb
    ld c, b                                       ; $5bd0: $48
    ld l, l                                       ; $5bd1: $6d
    call nz, Call_058_69e2                        ; $5bd2: $c4 $e2 $69
    ld a, c                                       ; $5bd5: $79
    ldh [$67], a                                  ; $5bd6: $e0 $67
    ld d, d                                       ; $5bd8: $52
    ld sp, $6159                                  ; $5bd9: $31 $59 $61
    ret nz                                        ; $5bdc: $c0

    rst $38                                       ; $5bdd: $ff
    add b                                         ; $5bde: $80
    db $eb                                        ; $5bdf: $eb

Jump_058_5be0:
    ld sp, $8539                                  ; $5be0: $31 $39 $85
    db $e3                                        ; $5be3: $e3
    ld l, c                                       ; $5be4: $69
    pop bc                                        ; $5be5: $c1
    ldh [$b3], a                                  ; $5be6: $e0 $b3
    ld h, a                                       ; $5be8: $67
    ld d, e                                       ; $5be9: $53
    ret nz                                        ; $5bea: $c0

    rst $38                                       ; $5beb: $ff
    ret nz                                        ; $5bec: $c0

    xor $49                                       ; $5bed: $ee $49
    ld [hl], $46                                  ; $5bef: $36 $46
    pop hl                                        ; $5bf1: $e1
    ld l, d                                       ; $5bf2: $6a
    ld h, l                                       ; $5bf3: $65
    ld l, l                                       ; $5bf4: $6d
    pop bc                                        ; $5bf5: $c1
    ldh [$67], a                                  ; $5bf6: $e0 $67
    ld b, b                                       ; $5bf8: $40
    rst $38                                       ; $5bf9: $ff
    db $ed                                        ; $5bfa: $ed
    db $ec                                        ; $5bfb: $ec
    ld [de], a                                    ; $5bfc: $12
    ld de, $a182                                  ; $5bfd: $11 $82 $a1
    add hl, sp                                    ; $5c00: $39
    ld [hl], $c1                                  ; $5c01: $36 $c1
    db $e3                                        ; $5c03: $e3
    cp h                                          ; $5c04: $bc
    and c                                         ; $5c05: $a1
    ld e, a                                       ; $5c06: $5f
    ld e, e                                       ; $5c07: $5b
    adc [hl]                                      ; $5c08: $8e
    jp z, $e8ff                                   ; $5c09: $ca $ff $e8

    rst $20                                       ; $5c0c: $e7
    ld a, e                                       ; $5c0d: $7b
    ld [hl+], a                                   ; $5c0e: $22
    ld hl, $e3be                                  ; $5c0f: $21 $be $e3
    ld d, l                                       ; $5c12: $55
    ld d, h                                       ; $5c13: $54
    ld d, l                                       ; $5c14: $55
    ld d, l                                       ; $5c15: $55
    inc a                                         ; $5c16: $3c
    and e                                         ; $5c17: $a3
    di                                            ; $5c18: $f3
    adc [hl]                                      ; $5c19: $8e
    ld c, a                                       ; $5c1a: $4f
    jp z, $e8ff                                   ; $5c1b: $ca $ff $e8

    rst $20                                       ; $5c1e: $e7
    jr nz, jr_058_5c31                            ; $5c1f: $20 $10

    ld hl, $c12b                                  ; $5c21: $21 $2b $c1
    ld bc, $81c1                                  ; $5c24: $01 $c1 $81
    db $fc                                        ; $5c27: $fc
    db $e3                                        ; $5c28: $e3
    pop bc                                        ; $5c29: $c1
    pop hl                                        ; $5c2a: $e1
    ret nz                                        ; $5c2b: $c0

    rst $38                                       ; $5c2c: $ff
    ret nz                                        ; $5c2d: $c0

    jp hl                                         ; $5c2e: $e9


    jr nz, jr_058_5c41                            ; $5c2f: $20 $10

jr_058_5c31:
    nop                                           ; $5c31: $00
    ret nz                                        ; $5c32: $c0

    rst $20                                       ; $5c33: $e7
    dec sp                                        ; $5c34: $3b
    add b                                         ; $5c35: $80
    pop bc                                        ; $5c36: $c1
    ldh [$c0], a                                  ; $5c37: $e0 $c0
    rst $38                                       ; $5c39: $ff
    rst $38                                       ; $5c3a: $ff
    rst $38                                       ; $5c3b: $ff
    rst $38                                       ; $5c3c: $ff
    rst $38                                       ; $5c3d: $ff
    rst $38                                       ; $5c3e: $ff
    rst $38                                       ; $5c3f: $ff
    rst $38                                       ; $5c40: $ff

jr_058_5c41:
    rst $38                                       ; $5c41: $ff
    nop                                           ; $5c42: $00
    rst $38                                       ; $5c43: $ff
    rst $38                                       ; $5c44: $ff
    rst $38                                       ; $5c45: $ff
    rst $38                                       ; $5c46: $ff
    rst $38                                       ; $5c47: $ff
    rst $38                                       ; $5c48: $ff
    rst $38                                       ; $5c49: $ff
    rst $38                                       ; $5c4a: $ff
    rst $38                                       ; $5c4b: $ff
    rst $38                                       ; $5c4c: $ff
    rst $38                                       ; $5c4d: $ff
    rst $38                                       ; $5c4e: $ff
    rst $38                                       ; $5c4f: $ff
    rst $38                                       ; $5c50: $ff
    rst $38                                       ; $5c51: $ff
    rst $38                                       ; $5c52: $ff
    nop                                           ; $5c53: $00
    rst $38                                       ; $5c54: $ff
    rst $38                                       ; $5c55: $ff
    rst $38                                       ; $5c56: $ff
    rst $38                                       ; $5c57: $ff
    rst $38                                       ; $5c58: $ff
    rst $38                                       ; $5c59: $ff
    rst $38                                       ; $5c5a: $ff
    rst $38                                       ; $5c5b: $ff
    rst $38                                       ; $5c5c: $ff

Jump_058_5c5d:
    rst $38                                       ; $5c5d: $ff
    rst $38                                       ; $5c5e: $ff
    rst $38                                       ; $5c5f: $ff
    rst $38                                       ; $5c60: $ff
    rst $38                                       ; $5c61: $ff
    rst $38                                       ; $5c62: $ff
    rst $38                                       ; $5c63: $ff
    nop                                           ; $5c64: $00
    rst $38                                       ; $5c65: $ff
    rst $38                                       ; $5c66: $ff
    rst $38                                       ; $5c67: $ff
    rst $38                                       ; $5c68: $ff
    rst $38                                       ; $5c69: $ff
    rst $38                                       ; $5c6a: $ff
    rst $38                                       ; $5c6b: $ff
    rst $38                                       ; $5c6c: $ff
    rst $38                                       ; $5c6d: $ff
    rst $38                                       ; $5c6e: $ff
    rst $38                                       ; $5c6f: $ff
    rst $38                                       ; $5c70: $ff
    rst $38                                       ; $5c71: $ff
    rst $38                                       ; $5c72: $ff
    rst $38                                       ; $5c73: $ff
    rst $38                                       ; $5c74: $ff
    nop                                           ; $5c75: $00
    rst $38                                       ; $5c76: $ff
    rst $38                                       ; $5c77: $ff
    rst $38                                       ; $5c78: $ff
    rst $38                                       ; $5c79: $ff
    rst $38                                       ; $5c7a: $ff
    rst $38                                       ; $5c7b: $ff
    rst $38                                       ; $5c7c: $ff
    rst $38                                       ; $5c7d: $ff
    rst $38                                       ; $5c7e: $ff
    rst $38                                       ; $5c7f: $ff
    rst $38                                       ; $5c80: $ff
    rst $38                                       ; $5c81: $ff
    rst $38                                       ; $5c82: $ff
    rst $38                                       ; $5c83: $ff
    rst $38                                       ; $5c84: $ff
    rst $38                                       ; $5c85: $ff
    nop                                           ; $5c86: $00
    rst $38                                       ; $5c87: $ff
    rst $38                                       ; $5c88: $ff
    rst $38                                       ; $5c89: $ff
    rst $38                                       ; $5c8a: $ff
    rst $38                                       ; $5c8b: $ff
    rst $38                                       ; $5c8c: $ff
    rst $38                                       ; $5c8d: $ff
    rst $38                                       ; $5c8e: $ff
    rst $38                                       ; $5c8f: $ff
    rst $38                                       ; $5c90: $ff
    rst $38                                       ; $5c91: $ff
    rst $38                                       ; $5c92: $ff
    rst $38                                       ; $5c93: $ff
    rst $38                                       ; $5c94: $ff
    rst $38                                       ; $5c95: $ff
    rst $38                                       ; $5c96: $ff
    nop                                           ; $5c97: $00
    rst $38                                       ; $5c98: $ff
    rst $38                                       ; $5c99: $ff
    rst $38                                       ; $5c9a: $ff
    rst $38                                       ; $5c9b: $ff
    rst $38                                       ; $5c9c: $ff
    rst $38                                       ; $5c9d: $ff
    rst $38                                       ; $5c9e: $ff
    rst $38                                       ; $5c9f: $ff
    rst $38                                       ; $5ca0: $ff
    rst $38                                       ; $5ca1: $ff
    rst $38                                       ; $5ca2: $ff
    rst $38                                       ; $5ca3: $ff
    rst $38                                       ; $5ca4: $ff
    rst $38                                       ; $5ca5: $ff
    rst $38                                       ; $5ca6: $ff
    rst $38                                       ; $5ca7: $ff
    nop                                           ; $5ca8: $00
    rst $38                                       ; $5ca9: $ff
    rst $38                                       ; $5caa: $ff
    rst $38                                       ; $5cab: $ff
    rst $38                                       ; $5cac: $ff
    rst $38                                       ; $5cad: $ff
    rst $38                                       ; $5cae: $ff
    rst $38                                       ; $5caf: $ff
    rst $38                                       ; $5cb0: $ff
    rst $38                                       ; $5cb1: $ff
    rst $38                                       ; $5cb2: $ff
    rst $38                                       ; $5cb3: $ff
    rst $38                                       ; $5cb4: $ff
    rst $38                                       ; $5cb5: $ff
    rst $38                                       ; $5cb6: $ff
    rst $38                                       ; $5cb7: $ff
    rst $38                                       ; $5cb8: $ff
    nop                                           ; $5cb9: $00
    rst $38                                       ; $5cba: $ff
    rst $38                                       ; $5cbb: $ff
    rst $38                                       ; $5cbc: $ff
    rst $38                                       ; $5cbd: $ff
    rst $38                                       ; $5cbe: $ff
    rst $38                                       ; $5cbf: $ff
    rst $38                                       ; $5cc0: $ff
    rst $38                                       ; $5cc1: $ff
    rst $38                                       ; $5cc2: $ff
    rst $38                                       ; $5cc3: $ff
    rst $38                                       ; $5cc4: $ff
    rst $38                                       ; $5cc5: $ff
    rst $38                                       ; $5cc6: $ff
    rst $38                                       ; $5cc7: $ff
    rst $38                                       ; $5cc8: $ff
    rst $38                                       ; $5cc9: $ff
    nop                                           ; $5cca: $00
    rst $38                                       ; $5ccb: $ff
    rst $38                                       ; $5ccc: $ff
    rst $38                                       ; $5ccd: $ff
    rst $38                                       ; $5cce: $ff
    rst $38                                       ; $5ccf: $ff
    rst $38                                       ; $5cd0: $ff
    rst $38                                       ; $5cd1: $ff
    rst $38                                       ; $5cd2: $ff
    rst $38                                       ; $5cd3: $ff
    rst $38                                       ; $5cd4: $ff
    rst $38                                       ; $5cd5: $ff
    rst $38                                       ; $5cd6: $ff
    rst $38                                       ; $5cd7: $ff
    rst $38                                       ; $5cd8: $ff
    rst $38                                       ; $5cd9: $ff
    rst $38                                       ; $5cda: $ff
    nop                                           ; $5cdb: $00
    rst $38                                       ; $5cdc: $ff
    rst $38                                       ; $5cdd: $ff
    rst $38                                       ; $5cde: $ff
    rst $38                                       ; $5cdf: $ff
    rst $38                                       ; $5ce0: $ff
    rst $38                                       ; $5ce1: $ff
    rst $38                                       ; $5ce2: $ff
    rst $38                                       ; $5ce3: $ff
    rst $38                                       ; $5ce4: $ff
    rst $38                                       ; $5ce5: $ff
    rst $38                                       ; $5ce6: $ff
    rst $38                                       ; $5ce7: $ff
    rst $38                                       ; $5ce8: $ff
    rst $38                                       ; $5ce9: $ff
    rst $38                                       ; $5cea: $ff
    rst $38                                       ; $5ceb: $ff
    nop                                           ; $5cec: $00
    rst $38                                       ; $5ced: $ff
    rst $38                                       ; $5cee: $ff
    rst $38                                       ; $5cef: $ff
    rst $38                                       ; $5cf0: $ff
    rst $38                                       ; $5cf1: $ff
    rst $38                                       ; $5cf2: $ff
    rst $38                                       ; $5cf3: $ff
    rst $38                                       ; $5cf4: $ff
    rst $38                                       ; $5cf5: $ff
    rst $38                                       ; $5cf6: $ff
    rst $38                                       ; $5cf7: $ff
    rst $38                                       ; $5cf8: $ff
    rst $38                                       ; $5cf9: $ff
    db $f4                                        ; $5cfa: $f4
    nop                                           ; $5cfb: $00
    nop                                           ; $5cfc: $00
    nop                                           ; $5cfd: $00
    and l                                         ; $5cfe: $a5
    nop                                           ; $5cff: $00
    rst $38                                       ; $5d00: $ff
    push hl                                       ; $5d01: $e5
    ld [hl-], a                                   ; $5d02: $32
    or $e6                                        ; $5d03: $f6 $e6
    rst $30                                       ; $5d05: $f7
    rst $20                                       ; $5d06: $e7
    dec [hl]                                      ; $5d07: $35
    db $ec                                        ; $5d08: $ec
    xor $37                                       ; $5d09: $ee $37
    db $ec                                        ; $5d0b: $ec
    jp c, $c7f0                                   ; $5d0c: $da $f0 $c7

    add sp, $33                                   ; $5d0f: $e8 $33
    ld sp, $f2e0                                  ; $5d11: $31 $e0 $f2
    ld [hl], $30                                  ; $5d14: $36 $30
    scf                                           ; $5d16: $37
    cp a                                          ; $5d17: $bf
    ld h, $20                                     ; $5d18: $26 $20
    daa                                           ; $5d1a: $27
    db $10                                        ; $5d1b: $10
    ld d, $17                                     ; $5d1c: $16 $17
    jp nz, Jump_000_34f6                          ; $5d1e: $c2 $f6 $34

    rst $38                                       ; $5d21: $ff
    ld [hl], $32                                  ; $5d22: $36 $32
    jr nc, jr_058_5d5d                            ; $5d24: $30 $37

    ld sp, $3133                                  ; $5d26: $31 $33 $31
    inc sp                                        ; $5d29: $33
    nop                                           ; $5d2a: $00
    and b                                         ; $5d2b: $a0
    ei                                            ; $5d2c: $fb
    rst $38                                       ; $5d2d: $ff
    rst $28                                       ; $5d2e: $ef
    nop                                           ; $5d2f: $00
    nop                                           ; $5d30: $00
    nop                                           ; $5d31: $00
    ld a, [hl-]                                   ; $5d32: $3a
    ld e, l                                       ; $5d33: $5d
    ld l, d                                       ; $5d34: $6a
    ld e, l                                       ; $5d35: $5d
    ld c, d                                       ; $5d36: $4a
    ld e, a                                       ; $5d37: $5f
    inc d                                         ; $5d38: $14
    ld h, c                                       ; $5d39: $61
    ldh a, [$03]                                  ; $5d3a: $f0 $03
    ld c, l                                       ; $5d3c: $4d
    rrca                                          ; $5d3d: $0f
    ld b, b                                       ; $5d3e: $40
    ld [bc], a                                    ; $5d3f: $02
    ret nz                                        ; $5d40: $c0

    nop                                           ; $5d41: $00
    ldh a, [$03]                                  ; $5d42: $f0 $03
    push af                                       ; $5d44: $f5
    inc bc                                        ; $5d45: $03
    ld c, b                                       ; $5d46: $48
    rrca                                          ; $5d47: $0f
    ld b, b                                       ; $5d48: $40
    ld [bc], a                                    ; $5d49: $02
    ld e, a                                       ; $5d4a: $5f
    dec sp                                        ; $5d4b: $3b
    jr c, @+$10                                   ; $5d4c: $38 $0e

    ld sp, $4819                                  ; $5d4e: $31 $19 $48
    rrca                                          ; $5d51: $0f
    ld [$0825], sp                                ; $5d52: $08 $25 $08
    dec h                                         ; $5d55: $25
    ld [$0825], sp                                ; $5d56: $08 $25 $08
    dec h                                         ; $5d59: $25
    ld [$0825], sp                                ; $5d5a: $08 $25 $08

jr_058_5d5d:
    dec h                                         ; $5d5d: $25
    ld [$0825], sp                                ; $5d5e: $08 $25 $08
    dec h                                         ; $5d61: $25
    ld [$0825], sp                                ; $5d62: $08 $25 $08
    dec h                                         ; $5d65: $25
    ld [$0825], sp                                ; $5d66: $08 $25 $08
    dec h                                         ; $5d69: $25
    ld e, a                                       ; $5d6a: $5f
    dec bc                                        ; $5d6b: $0b
    ld l, e                                       ; $5d6c: $6b
    dec bc                                        ; $5d6d: $0b
    ld l, h                                       ; $5d6e: $6c
    inc c                                         ; $5d6f: $0c
    rst $38                                       ; $5d70: $ff
    db $e4                                        ; $5d71: $e4
    dec bc                                        ; $5d72: $0b
    rst $38                                       ; $5d73: $ff
    db $e4                                        ; $5d74: $e4
    inc b                                         ; $5d75: $04
    ldh a, [$e5]                                  ; $5d76: $f0 $e5
    add sp, -$1d                                  ; $5d78: $e8 $e3
    ld c, h                                       ; $5d7a: $4c
    rst $38                                       ; $5d7b: $ff
    pop hl                                        ; $5d7c: $e1
    ld a, [$fde0]                                 ; $5d7d: $fa $e0 $fd
    pop hl                                        ; $5d80: $e1
    rst $38                                       ; $5d81: $ff
    rst $28                                       ; $5d82: $ef
    ret nz                                        ; $5d83: $c0

    ldh [$0e], a                                  ; $5d84: $e0 $0e
    db $f4                                        ; $5d86: $f4
    rst $20                                       ; $5d87: $e7
    dec bc                                        ; $5d88: $0b
    dec hl                                        ; $5d89: $2b
    dec hl                                        ; $5d8a: $2b
    ret nz                                        ; $5d8b: $c0

    rst $28                                       ; $5d8c: $ef
    or h                                          ; $5d8d: $b4
    ld [$efc0], a                                 ; $5d8e: $ea $c0 $ef
    add c                                         ; $5d91: $81
    rst $20                                       ; $5d92: $e7
    sub b                                         ; $5d93: $90
    add b                                         ; $5d94: $80
    ld [c], a                                     ; $5d95: $e2
    cp [hl]                                       ; $5d96: $be
    pop hl                                        ; $5d97: $e1
    ret nz                                        ; $5d98: $c0

    rst $30                                       ; $5d99: $f7
    add b                                         ; $5d9a: $80
    ldh a, [$0b]                                  ; $5d9b: $f0 $0b
    ld h, b                                       ; $5d9d: $60
    ld [c], a                                     ; $5d9e: $e2
    ld h, l                                       ; $5d9f: $65
    ldh [rOCPD], a                                ; $5da0: $e0 $6b
    ldh [$c2], a                                  ; $5da2: $e0 $c2
    pop hl                                        ; $5da4: $e1
    cp [hl]                                       ; $5da5: $be
    ld [c], a                                     ; $5da6: $e2
    jp z, $80ff                                   ; $5da7: $ca $ff $80

    jp hl                                         ; $5daa: $e9


    ld a, [bc]                                    ; $5dab: $0a
    db $e3                                        ; $5dac: $e3
    ld l, e                                       ; $5dad: $6b
    ld l, e                                       ; $5dae: $6b
    ld c, e                                       ; $5daf: $4b
    db $10                                        ; $5db0: $10
    rst $38                                       ; $5db1: $ff
    db $e3                                        ; $5db2: $e3
    ld b, b                                       ; $5db3: $40
    rst $28                                       ; $5db4: $ef
    rst $38                                       ; $5db5: $ff
    call nz, $e600                                ; $5db6: $c4 $00 $e6
    inc l                                         ; $5db9: $2c
    ld sp, hl                                     ; $5dba: $f9
    jp hl                                         ; $5dbb: $e9


    jp z, $87e0                                   ; $5dbc: $ca $e0 $87

    pop hl                                        ; $5dbf: $e1
    add e                                         ; $5dc0: $83
    ld l, e                                       ; $5dc1: $6b
    ld l, e                                       ; $5dc2: $6b
    ld b, $e2                                     ; $5dc3: $06 $e2
    cp $c0                                        ; $5dc5: $fe $c0
    cp [hl]                                       ; $5dc7: $be
    ldh [rP1], a                                  ; $5dc8: $e0 $00
    rst $38                                       ; $5dca: $ff
    add b                                         ; $5dcb: $80
    db $eb                                        ; $5dcc: $eb
    dec hl                                        ; $5dcd: $2b
    sbc b                                         ; $5dce: $98
    pop bc                                        ; $5dcf: $c1
    pop hl                                        ; $5dd0: $e1
    rst $00                                       ; $5dd1: $c7
    ldh [$b4], a                                  ; $5dd2: $e0 $b4
    db $e3                                        ; $5dd4: $e3

jr_058_5dd5:
    ld c, e                                       ; $5dd5: $4b
    ld c, e                                       ; $5dd6: $4b
    ld c, d                                       ; $5dd7: $4a
    rst $38                                       ; $5dd8: $ff
    add b                                         ; $5dd9: $80
    ret z                                         ; $5dda: $c8

    ld c, d                                       ; $5ddb: $4a
    ret nz                                        ; $5ddc: $c0

    adc d                                         ; $5ddd: $8a
    ret nz                                        ; $5dde: $c0

    pop bc                                        ; $5ddf: $c1
    push hl                                       ; $5de0: $e5
    scf                                           ; $5de1: $37
    ld [c], a                                     ; $5de2: $e2

Call_058_5de3:
    ret nz                                        ; $5de3: $c0

    db $ed                                        ; $5de4: $ed
    pop hl                                        ; $5de5: $e1
    call nz, $f700                                ; $5de6: $c4 $00 $f7
    ld l, e                                       ; $5de9: $6b
    dec bc                                        ; $5dea: $0b
    ld d, b                                       ; $5deb: $50
    add d                                         ; $5dec: $82
    db $e3                                        ; $5ded: $e3
    ld bc, $c0c5                                  ; $5dee: $01 $c5 $c0
    rst $18                                       ; $5df1: $df
    rst $18                                       ; $5df2: $df
    xor b                                         ; $5df3: $a8
    ld a, [bc]                                    ; $5df4: $0a
    ret nz                                        ; $5df5: $c0

    pop hl                                        ; $5df6: $e1
    dec hl                                        ; $5df7: $2b
    ld b, d                                       ; $5df8: $42
    pop hl                                        ; $5df9: $e1
    sub b                                         ; $5dfa: $90
    jp nz, Jump_000_3ea0                          ; $5dfb: $c2 $a0 $3e

    db $e3                                        ; $5dfe: $e3
    ret nz                                        ; $5dff: $c0

    rst $38                                       ; $5e00: $ff
    add b                                         ; $5e01: $80
    bit 1, e                                      ; $5e02: $cb $4b
    ret nz                                        ; $5e04: $c0

    push hl                                       ; $5e05: $e5
    ld a, [hl]                                    ; $5e06: $7e
    jp Jump_000_006b                              ; $5e07: $c3 $6b $00


    ret nz                                        ; $5e0a: $c0

    db $ec                                        ; $5e0b: $ec
    ld b, b                                       ; $5e0c: $40
    db $ed                                        ; $5e0d: $ed
    add c                                         ; $5e0e: $81
    jp nz, $c47c                                  ; $5e0f: $c2 $7c $c4

    ld c, h                                       ; $5e12: $4c
    and e                                         ; $5e13: $a3
    cp a                                          ; $5e14: $bf
    pop hl                                        ; $5e15: $e1
    add [hl]                                      ; $5e16: $86
    jp nz, $c33d                                  ; $5e17: $c2 $3d $c3

    nop                                           ; $5e1a: $00
    add b                                         ; $5e1b: $80
    rst $38                                       ; $5e1c: $ff
    ld b, b                                       ; $5e1d: $40
    xor c                                         ; $5e1e: $a9
    ccf                                           ; $5e1f: $3f
    ldh [$7e], a                                  ; $5e20: $e0 $7e
    ldh [rSCX], a                                 ; $5e22: $e0 $43
    db $e4                                        ; $5e24: $e4
    inc a                                         ; $5e25: $3c
    ld [c], a                                     ; $5e26: $e2
    add b                                         ; $5e27: $80
    cp a                                          ; $5e28: $bf
    ret nz                                        ; $5e29: $c0

    xor l                                         ; $5e2a: $ad
    ld h, d                                       ; $5e2b: $62
    ret z                                         ; $5e2c: $c8

    and e                                         ; $5e2d: $a3
    dec hl                                        ; $5e2e: $2b
    cp [hl]                                       ; $5e2f: $be
    jp $88ef                                      ; $5e30: $c3 $ef $88


    rst $30                                       ; $5e33: $f7
    or c                                          ; $5e34: $b1
    inc l                                         ; $5e35: $2c
    inc l                                         ; $5e36: $2c
    ret nz                                        ; $5e37: $c0

    and b                                         ; $5e38: $a0
    nop                                           ; $5e39: $00
    ei                                            ; $5e3a: $fb
    ldh [$ba], a                                  ; $5e3b: $e0 $ba
    and h                                         ; $5e3d: $a4
    adc h                                         ; $5e3e: $8c
    add b                                         ; $5e3f: $80
    ld a, [hl]                                    ; $5e40: $7e
    pop hl                                        ; $5e41: $e1
    dec sp                                        ; $5e42: $3b
    push hl                                       ; $5e43: $e5
    ret nz                                        ; $5e44: $c0

    ldh a, [rLCDC]                                ; $5e45: $f0 $40
    call z, $ecc0                                 ; $5e47: $cc $c0 $ec
    nop                                           ; $5e4a: $00
    jp $bbe3                                      ; $5e4b: $c3 $e3 $bb


    pop hl                                        ; $5e4e: $e1
    cp a                                          ; $5e4f: $bf
    and $80                                       ; $5e50: $e6 $80
    or a                                          ; $5e52: $b7
    jr c, jr_058_5dd5                             ; $5e53: $38 $80

    add c                                         ; $5e55: $81
    db $ec                                        ; $5e56: $ec
    ld d, $b4                                     ; $5e57: $16 $b4
    dec bc                                        ; $5e59: $0b
    add c                                         ; $5e5a: $81
    nop                                           ; $5e5b: $00
    dec c                                         ; $5e5c: $0d
    add l                                         ; $5e5d: $85
    ret nz                                        ; $5e5e: $c0

    xor e                                         ; $5e5f: $ab
    ret nz                                        ; $5e60: $c0

    ld a, [$bf0d]                                 ; $5e61: $fa $0d $bf
    rst $38                                       ; $5e64: $ff
    rst $38                                       ; $5e65: $ff
    db $fd                                        ; $5e66: $fd
    db $fc                                        ; $5e67: $fc
    pop bc                                        ; $5e68: $c1
    pop bc                                        ; $5e69: $c1
    jp nz, Jump_000_00c1                          ; $5e6a: $c2 $c1 $00

    ld a, [$d3e0]                                 ; $5e6d: $fa $e0 $d3
    rst $38                                       ; $5e70: $ff
    ret nz                                        ; $5e71: $c0

    rst $38                                       ; $5e72: $ff
    nop                                           ; $5e73: $00
    push af                                       ; $5e74: $f5
    db $10                                        ; $5e75: $10
    ld h, h                                       ; $5e76: $64
    dec c                                         ; $5e77: $0d
    ld h, h                                       ; $5e78: $64
    nop                                           ; $5e79: $00
    db $eb                                        ; $5e7a: $eb
    rst $38                                       ; $5e7b: $ff
    rst $18                                       ; $5e7c: $df
    nop                                           ; $5e7d: $00
    dec c                                         ; $5e7e: $0d
    ld a, b                                       ; $5e7f: $78
    ret nz                                        ; $5e80: $c0

    ld a, [$9b55]                                 ; $5e81: $fa $55 $9b
    rst $38                                       ; $5e84: $ff
    rst $38                                       ; $5e85: $ff
    or l                                          ; $5e86: $b5
    rst $38                                       ; $5e87: $ff
    ccf                                           ; $5e88: $3f
    rst $18                                       ; $5e89: $df
    cp a                                          ; $5e8a: $bf
    rst $18                                       ; $5e8b: $df
    ret nz                                        ; $5e8c: $c0

    ld a, [$3d00]                                 ; $5e8d: $fa $00 $3d
    rst $38                                       ; $5e90: $ff
    db $fc                                        ; $5e91: $fc
    add d                                         ; $5e92: $82
    sbc b                                         ; $5e93: $98
    rst $38                                       ; $5e94: $ff
    swap e                                        ; $5e95: $cb $33
    ld a, l                                       ; $5e97: $7d
    inc hl                                        ; $5e98: $23
    ret nz                                        ; $5e99: $c0

    rst $38                                       ; $5e9a: $ff
    ld c, d                                       ; $5e9b: $4a
    call z, $8d7c                                 ; $5e9c: $cc $7c $8d
    nop                                           ; $5e9f: $00
    adc l                                         ; $5ea0: $8d
    rst $38                                       ; $5ea1: $ff
    db $fc                                        ; $5ea2: $fc
    db $db                                        ; $5ea3: $db
    adc b                                         ; $5ea4: $88
    rst $38                                       ; $5ea5: $ff
    or c                                          ; $5ea6: $b1
    rst $38                                       ; $5ea7: $ff
    rst $38                                       ; $5ea8: $ff
    rst $38                                       ; $5ea9: $ff
    xor [hl]                                      ; $5eaa: $ae
    call Call_058_66ca                            ; $5eab: $cd $ca $66
    ld bc, $00ff                                  ; $5eae: $01 $ff $00
    ld b, l                                       ; $5eb1: $45
    push de                                       ; $5eb2: $d5
    jp Jump_000_3e81                              ; $5eb3: $c3 $81 $3e


    ld hl, $9000                                  ; $5eb6: $21 $00 $90
    sbc c                                         ; $5eb9: $99
    rst $08                                       ; $5eba: $cf
    cp l                                          ; $5ebb: $bd
    push af                                       ; $5ebc: $f5
    pop bc                                        ; $5ebd: $c1
    cp a                                          ; $5ebe: $bf
    pop bc                                        ; $5ebf: $c1
    ei                                            ; $5ec0: $fb
    nop                                           ; $5ec1: $00
    db $fc                                        ; $5ec2: $fc
    ld b, e                                       ; $5ec3: $43
    jp Jump_058_48df                              ; $5ec4: $c3 $df $48


    ld l, e                                       ; $5ec7: $6b
    cp d                                          ; $5ec8: $ba
    xor $ff                                       ; $5ec9: $ee $ff
    rst $38                                       ; $5ecb: $ff
    rst $38                                       ; $5ecc: $ff
    rst $38                                       ; $5ecd: $ff
    rst $38                                       ; $5ece: $ff
    rst $38                                       ; $5ecf: $ff
    ld c, l                                       ; $5ed0: $4d
    or b                                          ; $5ed1: $b0
    nop                                           ; $5ed2: $00
    pop bc                                        ; $5ed3: $c1
    ld d, b                                       ; $5ed4: $50
    ld e, a                                       ; $5ed5: $5f
    ld l, $eb                                     ; $5ed6: $2e $eb
    xor $40                                       ; $5ed8: $ee $40
    rst $38                                       ; $5eda: $ff
    db $e3                                        ; $5edb: $e3
    adc [hl]                                      ; $5edc: $8e
    ret                                           ; $5edd: $c9


    cp a                                          ; $5ede: $bf
    and e                                         ; $5edf: $a3
    sbc a                                         ; $5ee0: $9f
    adc h                                         ; $5ee1: $8c
    rst $38                                       ; $5ee2: $ff
    nop                                           ; $5ee3: $00
    rst $38                                       ; $5ee4: $ff
    rst $38                                       ; $5ee5: $ff
    ret nz                                        ; $5ee6: $c0

    rst $38                                       ; $5ee7: $ff
    add b                                         ; $5ee8: $80
    cp $c1                                        ; $5ee9: $fe $c1
    rst $38                                       ; $5eeb: $ff
    db $e4                                        ; $5eec: $e4
    ld l, [hl]                                    ; $5eed: $6e
    ld e, [hl]                                    ; $5eee: $5e
    ld a, [hl+]                                   ; $5eef: $2a
    ret nz                                        ; $5ef0: $c0

    rst $38                                       ; $5ef1: $ff
    ret nz                                        ; $5ef2: $c0

    ei                                            ; $5ef3: $fb
    nop                                           ; $5ef4: $00
    rst $38                                       ; $5ef5: $ff
    rst $38                                       ; $5ef6: $ff
    ld bc, $daff                                  ; $5ef7: $01 $ff $da
    rst $38                                       ; $5efa: $ff
    add c                                         ; $5efb: $81
    rst $18                                       ; $5efc: $df
    rst $38                                       ; $5efd: $ff
    rst $38                                       ; $5efe: $ff
    ret nz                                        ; $5eff: $c0

    rst $38                                       ; $5f00: $ff
    rst $38                                       ; $5f01: $ff
    rst $38                                       ; $5f02: $ff
    rst $38                                       ; $5f03: $ff
    rst $38                                       ; $5f04: $ff
    nop                                           ; $5f05: $00
    ld d, $ff                                     ; $5f06: $16 $ff
    rst $38                                       ; $5f08: $ff
    rst $38                                       ; $5f09: $ff
    sbc c                                         ; $5f0a: $99
    rst $18                                       ; $5f0b: $df
    rst $38                                       ; $5f0c: $ff
    rst $38                                       ; $5f0d: $ff
    rst $38                                       ; $5f0e: $ff
    rst $38                                       ; $5f0f: $ff
    rst $38                                       ; $5f10: $ff
    rst $38                                       ; $5f11: $ff
    or a                                          ; $5f12: $b7
    rst $18                                       ; $5f13: $df
    rst $38                                       ; $5f14: $ff
    rst $38                                       ; $5f15: $ff
    nop                                           ; $5f16: $00
    rst $38                                       ; $5f17: $ff
    rst $38                                       ; $5f18: $ff
    rst $38                                       ; $5f19: $ff
    rst $38                                       ; $5f1a: $ff
    rst $38                                       ; $5f1b: $ff
    rst $38                                       ; $5f1c: $ff
    rst $38                                       ; $5f1d: $ff
    rst $38                                       ; $5f1e: $ff
    rst $38                                       ; $5f1f: $ff
    rst $38                                       ; $5f20: $ff
    rst $38                                       ; $5f21: $ff
    rst $38                                       ; $5f22: $ff
    rst $38                                       ; $5f23: $ff
    rst $38                                       ; $5f24: $ff
    rst $38                                       ; $5f25: $ff
    rst $38                                       ; $5f26: $ff
    nop                                           ; $5f27: $00
    rst $38                                       ; $5f28: $ff
    rst $38                                       ; $5f29: $ff
    rst $38                                       ; $5f2a: $ff
    rst $38                                       ; $5f2b: $ff
    rst $38                                       ; $5f2c: $ff
    rst $38                                       ; $5f2d: $ff
    rst $38                                       ; $5f2e: $ff
    rst $38                                       ; $5f2f: $ff
    rst $38                                       ; $5f30: $ff
    rst $38                                       ; $5f31: $ff
    rst $38                                       ; $5f32: $ff
    rst $38                                       ; $5f33: $ff
    rst $38                                       ; $5f34: $ff
    rst $38                                       ; $5f35: $ff
    rst $38                                       ; $5f36: $ff
    rst $38                                       ; $5f37: $ff
    nop                                           ; $5f38: $00
    nop                                           ; $5f39: $00
    cp a                                          ; $5f3a: $bf
    rst $38                                       ; $5f3b: $ff
    rst $38                                       ; $5f3c: $ff
    rst $38                                       ; $5f3d: $ff
    rst $38                                       ; $5f3e: $ff
    rst $38                                       ; $5f3f: $ff
    rst $38                                       ; $5f40: $ff
    rst $38                                       ; $5f41: $ff
    rst $38                                       ; $5f42: $ff
    rst $38                                       ; $5f43: $ff
    rst $38                                       ; $5f44: $ff
    add [hl]                                      ; $5f45: $86
    ld a, [bc]                                    ; $5f46: $0a
    nop                                           ; $5f47: $00
    nop                                           ; $5f48: $00
    nop                                           ; $5f49: $00
    cp a                                          ; $5f4a: $bf
    ld e, e                                       ; $5f4b: $5b
    ld e, a                                       ; $5f4c: $5f
    ld sp, $1615                                  ; $5f4d: $31 $15 $16
    jr nz, @+$01                                  ; $5f50: $20 $ff

    ld [c], a                                     ; $5f52: $e2
    nop                                           ; $5f53: $00
    sub a                                         ; $5f54: $97
    ld sp, $5b61                                  ; $5f55: $31 $61 $5b
    rst $38                                       ; $5f58: $ff
    ld [c], a                                     ; $5f59: $e2
    nop                                           ; $5f5a: $00
    rst $38                                       ; $5f5b: $ff
    rst $38                                       ; $5f5c: $ff
    rst $20                                       ; $5f5d: $e7
    and $5b                                       ; $5f5e: $e6 $5b
    rst $28                                       ; $5f60: $ef
    ld e, [hl]                                    ; $5f61: $5e
    ld sp, $2817                                  ; $5f62: $31 $17 $28
    ret nz                                        ; $5f65: $c0

    push hl                                       ; $5f66: $e5
    ld sp, $5c5d                                  ; $5f67: $31 $5d $5c
    ld [hl], h                                    ; $5f6a: $74
    ret nz                                        ; $5f6b: $c0

    rst $38                                       ; $5f6c: $ff
    db $ec                                        ; $5f6d: $ec
    db $eb                                        ; $5f6e: $eb
    ld h, b                                       ; $5f6f: $60
    add c                                         ; $5f70: $81
    and $0a                                       ; $5f71: $e6 $0a
    dec bc                                        ; $5f73: $0b
    ld sp, $e0ff                                  ; $5f74: $31 $ff $e0
    ld a, b                                       ; $5f77: $78
    cp [hl]                                       ; $5f78: $be
    pop hl                                        ; $5f79: $e1
    jp z, $e8ff                                   ; $5f7a: $ca $ff $e8

    rst $20                                       ; $5f7d: $e7
    ld sp, $2931                                  ; $5f7e: $31 $31 $29
    dec b                                         ; $5f81: $05
    rst $38                                       ; $5f82: $ff
    pop hl                                        ; $5f83: $e1
    ldh [$c2], a                                  ; $5f84: $e0 $c2
    db $e3                                        ; $5f86: $e3
    cp [hl]                                       ; $5f87: $be
    db $e3                                        ; $5f88: $e3
    jp z, $c0ff                                   ; $5f89: $ca $ff $c0

    jp hl                                         ; $5f8c: $e9


    ret z                                         ; $5f8d: $c8

    db $e3                                        ; $5f8e: $e3
    ld c, l                                       ; $5f8f: $4d
    ld a, [hl-]                                   ; $5f90: $3a
    ld d, h                                       ; $5f91: $54
    ccf                                           ; $5f92: $3f
    ld d, h                                       ; $5f93: $54
    ld d, l                                       ; $5f94: $55
    ld d, h                                       ; $5f95: $54
    ld d, l                                       ; $5f96: $55
    ld b, [hl]                                    ; $5f97: $46
    ld b, a                                       ; $5f98: $47
    ld a, e                                       ; $5f99: $7b
    ldh [$ca], a                                  ; $5f9a: $e0 $ca
    rst $38                                       ; $5f9c: $ff
    ld [hl], d                                    ; $5f9d: $72
    add sp, -$19                                  ; $5f9e: $e8 $e7
    ld h, d                                       ; $5fa0: $62
    rst $38                                       ; $5fa1: $ff
    ldh [$c1], a                                  ; $5fa2: $e0 $c1
    pop hl                                        ; $5fa4: $e1
    ld [hl-], a                                   ; $5fa5: $32
    ld h, a                                       ; $5fa6: $67
    ld l, b                                       ; $5fa7: $68
    rst $38                                       ; $5fa8: $ff
    ld [c], a                                     ; $5fa9: $e2
    ld b, a                                       ; $5faa: $47
    ld e, c                                       ; $5fab: $59
    dec sp                                        ; $5fac: $3b
    ld c, l                                       ; $5fad: $4d
    ret nz                                        ; $5fae: $c0

    rst $38                                       ; $5faf: $ff
    ret nz                                        ; $5fb0: $c0

    ret                                           ; $5fb1: $c9


    adc l                                         ; $5fb2: $8d
    ret nz                                        ; $5fb3: $c0

    ld h, c                                       ; $5fb4: $61
    pop bc                                        ; $5fb5: $c1
    pop hl                                        ; $5fb6: $e1
    ei                                            ; $5fb7: $fb
    ld l, d                                       ; $5fb8: $6a
    ld l, l                                       ; $5fb9: $6d
    rst $38                                       ; $5fba: $ff
    pop hl                                        ; $5fbb: $e1
    jr nc, jr_058_5fee                            ; $5fbc: $30 $30

    jr nc, jr_058_5ff2                            ; $5fbe: $30 $32

    ld c, l                                       ; $5fc0: $4d
    add h                                         ; $5fc1: $84
    jp z, $80ff                                   ; $5fc2: $ca $ff $80

    ret z                                         ; $5fc5: $c8

    ld e, d                                       ; $5fc6: $5a
    ret nz                                        ; $5fc7: $c0

    ldh [$c1], a                                  ; $5fc8: $e0 $c1
    push hl                                       ; $5fca: $e5
    jp nz, $bfe0                                  ; $5fcb: $c2 $e0 $bf

    ldh [$39], a                                  ; $5fce: $e0 $39
    ld a, h                                       ; $5fd0: $7c
    jp z, $80ff                                   ; $5fd1: $ca $ff $80

    ld [$315f], a                                 ; $5fd4: $ea $5f $31
    add hl, sp                                    ; $5fd7: $39
    ld h, [hl]                                    ; $5fd8: $66
    ld l, c                                       ; $5fd9: $69
    jp nz, Jump_058_47e6                          ; $5fda: $c2 $e6 $47

    jr nc, jr_058_600f                            ; $5fdd: $30 $30

    ld d, d                                       ; $5fdf: $52
    jp z, $e8ff                                   ; $5fe0: $ca $ff $e8

    rst $20                                       ; $5fe3: $e7
    add c                                         ; $5fe4: $81
    ldh [$5e], a                                  ; $5fe5: $e0 $5e
    ret nz                                        ; $5fe7: $c0

    db $e3                                        ; $5fe8: $e3
    ld c, d                                       ; $5fe9: $4a
    ld b, l                                       ; $5fea: $45
    ldh [rOCPS], a                                ; $5feb: $e0 $6a
    db $fc                                        ; $5fed: $fc

jr_058_5fee:
    ret nz                                        ; $5fee: $c0

    ld l, d                                       ; $5fef: $6a
    ret nz                                        ; $5ff0: $c0

    rst $38                                       ; $5ff1: $ff

jr_058_5ff2:
    nop                                           ; $5ff2: $00
    db $ec                                        ; $5ff3: $ec
    ld h, b                                       ; $5ff4: $60
    jp nz, $16c0                                  ; $5ff5: $c2 $c0 $16

    ret nz                                        ; $5ff8: $c0

    ld [c], a                                     ; $5ff9: $e2
    ld l, d                                       ; $5ffa: $6a
    ld l, h                                       ; $5ffb: $6c
    rst $38                                       ; $5ffc: $ff
    pop hl                                        ; $5ffd: $e1
    ld l, d                                       ; $5ffe: $6a
    ret nz                                        ; $5fff: $c0

    rst $38                                       ; $6000: $ff
    ret nz                                        ; $6001: $c0

    call z, $e0bf                                 ; $6002: $cc $bf $e0
    ld a, [de]                                    ; $6005: $1a
    ld b, d                                       ; $6006: $42
    ret nz                                        ; $6007: $c0

    ld [hl], $c1                                  ; $6008: $36 $c1
    db $e3                                        ; $600a: $e3
    ld l, h                                       ; $600b: $6c
    ld l, h                                       ; $600c: $6c
    ret nz                                        ; $600d: $c0

    rst $38                                       ; $600e: $ff

jr_058_600f:
    ret nz                                        ; $600f: $c0

    call z, $e07e                                 ; $6010: $cc $7e $e0
    sbc $85                                       ; $6013: $de $85
    and b                                         ; $6015: $a0
    ld c, e                                       ; $6016: $4b
    dec [hl]                                      ; $6017: $35
    ld l, h                                       ; $6018: $6c
    ld l, h                                       ; $6019: $6c
    add c                                         ; $601a: $81
    ret nz                                        ; $601b: $c0

    ld l, h                                       ; $601c: $6c
    ld l, h                                       ; $601d: $6c
    ld a, c                                       ; $601e: $79
    add e                                         ; $601f: $83
    jp z, Jump_058_40ff                           ; $6020: $ca $ff $40

    bit 3, e                                      ; $6023: $cb $5b
    ld e, e                                       ; $6025: $5b
    ld e, h                                       ; $6026: $5c
    ld e, l                                       ; $6027: $5d
    ei                                            ; $6028: $fb
    and b                                         ; $6029: $a0
    dec a                                         ; $602a: $3d
    add hl, sp                                    ; $602b: $39
    pop bc                                        ; $602c: $c1
    pop hl                                        ; $602d: $e1
    jr nc, jr_058_6060                            ; $602e: $30 $30

    ld b, d                                       ; $6030: $42
    add h                                         ; $6031: $84
    jp z, Jump_000_00ff                           ; $6032: $ca $ff $00

    jp z, Jump_058_7e38                           ; $6035: $ca $38 $7e

    pop hl                                        ; $6038: $e1
    ld a, [$40c3]                                 ; $6039: $fa $c3 $40
    pop bc                                        ; $603c: $c1
    ld [hl], $72                                  ; $603d: $36 $72
    add b                                         ; $603f: $80
    jp z, $80ff                                   ; $6040: $ca $ff $80

    jp z, Jump_058_4b3a                           ; $6043: $ca $3a $4b

    add d                                         ; $6046: $82
    ld e, d                                       ; $6047: $5a
    ld a, [$6ec4]                                 ; $6048: $fa $c4 $6e
    ld l, a                                       ; $604b: $6f
    add b                                         ; $604c: $80
    ret nz                                        ; $604d: $c0

    rst $38                                       ; $604e: $ff
    rst $38                                       ; $604f: $ff
    rst $38                                       ; $6050: $ff
    nop                                           ; $6051: $00
    rst $38                                       ; $6052: $ff
    rst $38                                       ; $6053: $ff
    rst $38                                       ; $6054: $ff
    rst $38                                       ; $6055: $ff
    rst $38                                       ; $6056: $ff
    rst $38                                       ; $6057: $ff
    rst $38                                       ; $6058: $ff
    rst $38                                       ; $6059: $ff
    rst $38                                       ; $605a: $ff
    rst $38                                       ; $605b: $ff
    rst $38                                       ; $605c: $ff
    rst $38                                       ; $605d: $ff
    rst $38                                       ; $605e: $ff
    rst $38                                       ; $605f: $ff

jr_058_6060:
    rst $38                                       ; $6060: $ff
    rst $38                                       ; $6061: $ff
    nop                                           ; $6062: $00
    rst $38                                       ; $6063: $ff
    rst $38                                       ; $6064: $ff
    rst $38                                       ; $6065: $ff
    rst $38                                       ; $6066: $ff
    rst $38                                       ; $6067: $ff
    rst $38                                       ; $6068: $ff
    rst $38                                       ; $6069: $ff
    rst $38                                       ; $606a: $ff
    rst $38                                       ; $606b: $ff
    rst $38                                       ; $606c: $ff
    rst $38                                       ; $606d: $ff
    rst $38                                       ; $606e: $ff
    rst $38                                       ; $606f: $ff
    rst $38                                       ; $6070: $ff
    rst $38                                       ; $6071: $ff
    rst $38                                       ; $6072: $ff
    nop                                           ; $6073: $00
    rst $38                                       ; $6074: $ff
    rst $38                                       ; $6075: $ff
    rst $38                                       ; $6076: $ff
    rst $38                                       ; $6077: $ff
    rst $38                                       ; $6078: $ff
    rst $38                                       ; $6079: $ff
    rst $38                                       ; $607a: $ff
    rst $38                                       ; $607b: $ff
    rst $38                                       ; $607c: $ff
    rst $38                                       ; $607d: $ff
    rst $38                                       ; $607e: $ff
    rst $38                                       ; $607f: $ff
    rst $38                                       ; $6080: $ff
    rst $38                                       ; $6081: $ff
    rst $38                                       ; $6082: $ff
    rst $38                                       ; $6083: $ff
    nop                                           ; $6084: $00
    rst $38                                       ; $6085: $ff
    rst $38                                       ; $6086: $ff
    rst $38                                       ; $6087: $ff
    rst $38                                       ; $6088: $ff
    rst $38                                       ; $6089: $ff
    rst $38                                       ; $608a: $ff
    rst $38                                       ; $608b: $ff
    rst $38                                       ; $608c: $ff
    rst $38                                       ; $608d: $ff
    rst $38                                       ; $608e: $ff
    rst $38                                       ; $608f: $ff
    rst $38                                       ; $6090: $ff
    rst $38                                       ; $6091: $ff
    rst $38                                       ; $6092: $ff
    rst $38                                       ; $6093: $ff
    rst $38                                       ; $6094: $ff
    nop                                           ; $6095: $00
    rst $38                                       ; $6096: $ff
    rst $38                                       ; $6097: $ff
    rst $38                                       ; $6098: $ff
    rst $38                                       ; $6099: $ff
    rst $38                                       ; $609a: $ff
    rst $38                                       ; $609b: $ff
    rst $38                                       ; $609c: $ff
    rst $38                                       ; $609d: $ff
    rst $38                                       ; $609e: $ff
    rst $38                                       ; $609f: $ff
    rst $38                                       ; $60a0: $ff
    rst $38                                       ; $60a1: $ff
    rst $38                                       ; $60a2: $ff
    rst $38                                       ; $60a3: $ff
    rst $38                                       ; $60a4: $ff
    rst $38                                       ; $60a5: $ff
    nop                                           ; $60a6: $00
    rst $38                                       ; $60a7: $ff
    rst $38                                       ; $60a8: $ff
    rst $38                                       ; $60a9: $ff
    rst $38                                       ; $60aa: $ff
    rst $38                                       ; $60ab: $ff
    rst $38                                       ; $60ac: $ff
    rst $38                                       ; $60ad: $ff
    rst $38                                       ; $60ae: $ff
    rst $38                                       ; $60af: $ff
    rst $38                                       ; $60b0: $ff
    rst $38                                       ; $60b1: $ff
    rst $38                                       ; $60b2: $ff
    rst $38                                       ; $60b3: $ff
    rst $38                                       ; $60b4: $ff
    rst $38                                       ; $60b5: $ff
    rst $38                                       ; $60b6: $ff
    nop                                           ; $60b7: $00
    rst $38                                       ; $60b8: $ff
    rst $38                                       ; $60b9: $ff
    rst $38                                       ; $60ba: $ff
    rst $38                                       ; $60bb: $ff
    rst $38                                       ; $60bc: $ff
    rst $38                                       ; $60bd: $ff
    rst $38                                       ; $60be: $ff
    rst $38                                       ; $60bf: $ff
    rst $38                                       ; $60c0: $ff
    rst $38                                       ; $60c1: $ff
    rst $38                                       ; $60c2: $ff
    rst $38                                       ; $60c3: $ff
    rst $38                                       ; $60c4: $ff
    rst $38                                       ; $60c5: $ff
    rst $38                                       ; $60c6: $ff
    rst $38                                       ; $60c7: $ff
    nop                                           ; $60c8: $00
    rst $38                                       ; $60c9: $ff
    rst $38                                       ; $60ca: $ff
    rst $38                                       ; $60cb: $ff
    rst $38                                       ; $60cc: $ff
    rst $38                                       ; $60cd: $ff
    rst $38                                       ; $60ce: $ff
    rst $38                                       ; $60cf: $ff
    rst $38                                       ; $60d0: $ff
    rst $38                                       ; $60d1: $ff
    rst $38                                       ; $60d2: $ff
    rst $38                                       ; $60d3: $ff
    rst $38                                       ; $60d4: $ff
    rst $38                                       ; $60d5: $ff
    rst $38                                       ; $60d6: $ff
    rst $38                                       ; $60d7: $ff
    rst $38                                       ; $60d8: $ff
    nop                                           ; $60d9: $00
    rst $38                                       ; $60da: $ff
    rst $38                                       ; $60db: $ff
    rst $38                                       ; $60dc: $ff
    rst $38                                       ; $60dd: $ff
    rst $38                                       ; $60de: $ff
    rst $38                                       ; $60df: $ff
    rst $38                                       ; $60e0: $ff
    rst $38                                       ; $60e1: $ff
    rst $38                                       ; $60e2: $ff
    rst $38                                       ; $60e3: $ff
    rst $38                                       ; $60e4: $ff
    rst $38                                       ; $60e5: $ff
    rst $38                                       ; $60e6: $ff
    rst $38                                       ; $60e7: $ff
    rst $38                                       ; $60e8: $ff
    rst $38                                       ; $60e9: $ff
    nop                                           ; $60ea: $00
    rst $38                                       ; $60eb: $ff
    rst $38                                       ; $60ec: $ff
    rst $38                                       ; $60ed: $ff
    rst $38                                       ; $60ee: $ff
    rst $38                                       ; $60ef: $ff
    rst $38                                       ; $60f0: $ff
    rst $38                                       ; $60f1: $ff
    rst $38                                       ; $60f2: $ff
    rst $38                                       ; $60f3: $ff
    rst $38                                       ; $60f4: $ff
    rst $38                                       ; $60f5: $ff
    rst $38                                       ; $60f6: $ff
    rst $38                                       ; $60f7: $ff
    rst $38                                       ; $60f8: $ff
    rst $38                                       ; $60f9: $ff
    rst $38                                       ; $60fa: $ff
    nop                                           ; $60fb: $00
    rst $38                                       ; $60fc: $ff
    rst $38                                       ; $60fd: $ff
    rst $38                                       ; $60fe: $ff
    rst $38                                       ; $60ff: $ff
    rst $38                                       ; $6100: $ff
    rst $38                                       ; $6101: $ff
    rst $38                                       ; $6102: $ff
    rst $38                                       ; $6103: $ff
    rst $38                                       ; $6104: $ff
    rst $38                                       ; $6105: $ff
    rst $38                                       ; $6106: $ff
    rst $38                                       ; $6107: $ff
    rst $38                                       ; $6108: $ff
    rst $38                                       ; $6109: $ff
    rst $38                                       ; $610a: $ff
    rst $38                                       ; $610b: $ff
    nop                                           ; $610c: $00
    rst $38                                       ; $610d: $ff
    rst $38                                       ; $610e: $ff
    rst $38                                       ; $610f: $ff
    db $f4                                        ; $6110: $f4
    nop                                           ; $6111: $00
    nop                                           ; $6112: $00
    nop                                           ; $6113: $00
    and l                                         ; $6114: $a5
    nop                                           ; $6115: $00
    rst $38                                       ; $6116: $ff
    push hl                                       ; $6117: $e5
    ld [hl-], a                                   ; $6118: $32
    or $e6                                        ; $6119: $f6 $e6
    rst $30                                       ; $611b: $f7
    rst $20                                       ; $611c: $e7
    dec [hl]                                      ; $611d: $35
    db $ec                                        ; $611e: $ec
    xor $37                                       ; $611f: $ee $37
    db $ec                                        ; $6121: $ec
    jp c, $c7f0                                   ; $6122: $da $f0 $c7

    add sp, $33                                   ; $6125: $e8 $33
    ld sp, $f2e0                                  ; $6127: $31 $e0 $f2
    ld [hl], $30                                  ; $612a: $36 $30
    scf                                           ; $612c: $37
    cp a                                          ; $612d: $bf
    ld h, $20                                     ; $612e: $26 $20
    daa                                           ; $6130: $27
    db $10                                        ; $6131: $10
    ld d, $17                                     ; $6132: $16 $17
    jp nz, Jump_000_34f6                          ; $6134: $c2 $f6 $34

    rst $38                                       ; $6137: $ff
    ld [hl], $32                                  ; $6138: $36 $32
    jr nc, jr_058_6173                            ; $613a: $30 $37

    ld sp, $3133                                  ; $613c: $31 $33 $31
    inc sp                                        ; $613f: $33
    nop                                           ; $6140: $00
    and b                                         ; $6141: $a0
    ei                                            ; $6142: $fb
    rst $38                                       ; $6143: $ff
    rst $28                                       ; $6144: $ef
    nop                                           ; $6145: $00
    nop                                           ; $6146: $00
    nop                                           ; $6147: $00
    ld d, b                                       ; $6148: $50
    ld h, c                                       ; $6149: $61
    add b                                         ; $614a: $80
    ld h, c                                       ; $614b: $61
    rla                                           ; $614c: $17
    ld h, h                                       ; $614d: $64
    push de                                       ; $614e: $d5
    ld h, l                                       ; $614f: $65
    ldh a, [$03]                                  ; $6150: $f0 $03
    ld c, l                                       ; $6152: $4d
    rrca                                          ; $6153: $0f
    ld b, b                                       ; $6154: $40
    ld [bc], a                                    ; $6155: $02
    ret nz                                        ; $6156: $c0

    nop                                           ; $6157: $00
    ldh a, [$03]                                  ; $6158: $f0 $03
    push af                                       ; $615a: $f5
    inc bc                                        ; $615b: $03
    ld c, b                                       ; $615c: $48
    rrca                                          ; $615d: $0f
    ld b, b                                       ; $615e: $40
    ld [bc], a                                    ; $615f: $02
    ld e, a                                       ; $6160: $5f
    dec sp                                        ; $6161: $3b
    jr c, @+$10                                   ; $6162: $38 $0e

    ld sp, $4819                                  ; $6164: $31 $19 $48
    rrca                                          ; $6167: $0f
    ld [$0825], sp                                ; $6168: $08 $25 $08
    dec h                                         ; $616b: $25
    ld [$0825], sp                                ; $616c: $08 $25 $08
    dec h                                         ; $616f: $25
    ld [$0825], sp                                ; $6170: $08 $25 $08

jr_058_6173:
    dec h                                         ; $6173: $25
    ld [$0825], sp                                ; $6174: $08 $25 $08
    dec h                                         ; $6177: $25
    ld [$0825], sp                                ; $6178: $08 $25 $08
    dec h                                         ; $617b: $25
    ld [$0825], sp                                ; $617c: $08 $25 $08
    dec h                                         ; $617f: $25
    rst $38                                       ; $6180: $ff
    ld c, h                                       ; $6181: $4c
    ld c, h                                       ; $6182: $4c
    ld c, h                                       ; $6183: $4c
    inc c                                         ; $6184: $0c
    dec bc                                        ; $6185: $0b
    dec bc                                        ; $6186: $0b
    dec bc                                        ; $6187: $0b
    ld l, e                                       ; $6188: $6b
    sbc $fc                                       ; $6189: $de $fc
    ldh [rWX], a                                  ; $618b: $e0 $4b
    dec bc                                        ; $618d: $0b
    ld c, e                                       ; $618e: $4b
    ld a, [hl+]                                   ; $618f: $2a
    push af                                       ; $6190: $f5
    ldh [$0b], a                                  ; $6191: $e0 $0b
    dec bc                                        ; $6193: $0b
    rlca                                          ; $6194: $07
    inc c                                         ; $6195: $0c
    inc c                                         ; $6196: $0c
    ld c, h                                       ; $6197: $4c
    db $fd                                        ; $6198: $fd
    ldh [$fc], a                                  ; $6199: $e0 $fc
    ldh [$f8], a                                  ; $619b: $e0 $f8
    ld [c], a                                     ; $619d: $e2
    ld sp, hl                                     ; $619e: $f9
    ldh [$fb], a                                  ; $619f: $e0 $fb
    db $e3                                        ; $61a1: $e3
    xor d                                         ; $61a2: $aa
    db $fc                                        ; $61a3: $fc
    ld a, [c]                                     ; $61a4: $f2
    inc l                                         ; $61a5: $2c
    ret nz                                        ; $61a6: $c0

    ld [c], a                                     ; $61a7: $e2
    ld l, e                                       ; $61a8: $6b
    rst $38                                       ; $61a9: $ff
    ldh [rWX], a                                  ; $61aa: $e0 $4b
    ret nz                                        ; $61ac: $c0

    ldh [$2b], a                                  ; $61ad: $e0 $2b
    rra                                           ; $61af: $1f
    dec hl                                        ; $61b0: $2b
    dec bc                                        ; $61b1: $0b
    dec bc                                        ; $61b2: $0b
    ld a, [hl+]                                   ; $61b3: $2a
    dec bc                                        ; $61b4: $0b
    call z, $a8e2                                 ; $61b5: $cc $e2 $a8
    ldh [$fd], a                                  ; $61b8: $e0 $fd
    push hl                                       ; $61ba: $e5
    ld [hl], h                                    ; $61bb: $74
    or l                                          ; $61bc: $b5
    ld [c], a                                     ; $61bd: $e2
    cp [hl]                                       ; $61be: $be
    db $f4                                        ; $61bf: $f4
    ld c, e                                       ; $61c0: $4b
    add b                                         ; $61c1: $80
    pop hl                                        ; $61c2: $e1
    ld l, e                                       ; $61c3: $6b
    ld l, e                                       ; $61c4: $6b
    dec hl                                        ; $61c5: $2b
    ret nz                                        ; $61c6: $c0

    pop hl                                        ; $61c7: $e1
    add c                                         ; $61c8: $81
    ld c, e                                       ; $61c9: $4b
    add d                                         ; $61ca: $82
    ld [c], a                                     ; $61cb: $e2
    add b                                         ; $61cc: $80
    pop hl                                        ; $61cd: $e1
    ret nz                                        ; $61ce: $c0

    add sp, -$47                                  ; $61cf: $e8 $b9
    ldh [$b2], a                                  ; $61d1: $e0 $b2
    ld [c], a                                     ; $61d3: $e2
    cp d                                          ; $61d4: $ba
    db $f4                                        ; $61d5: $f4
    ld c, e                                       ; $61d6: $4b
    ld b, a                                       ; $61d7: $47
    inc l                                         ; $61d8: $2c
    ld c, h                                       ; $61d9: $4c
    inc c                                         ; $61da: $0c

jr_058_61db:
    pop bc                                        ; $61db: $c1
    ldh [$c0], a                                  ; $61dc: $e0 $c0
    ld [c], a                                     ; $61de: $e2
    pop bc                                        ; $61df: $c1
    db $e4                                        ; $61e0: $e4
    ld a, [hl+]                                   ; $61e1: $2a
    ld c, c                                       ; $61e2: $49
    db $e4                                        ; $61e3: $e4
    ldh a, [$7e]                                  ; $61e4: $f0 $7e
    db $e3                                        ; $61e6: $e3
    db $fc                                        ; $61e7: $fc
    db $e3                                        ; $61e8: $e3
    xor l                                         ; $61e9: $ad
    push hl                                       ; $61ea: $e5
    jr c, jr_058_61db                             ; $61eb: $38 $ee

    dec hl                                        ; $61ed: $2b
    dec bc                                        ; $61ee: $0b
    inc c                                         ; $61ef: $0c
    dec hl                                        ; $61f0: $2b
    sbc h                                         ; $61f1: $9c

jr_058_61f2:
    pop bc                                        ; $61f2: $c1
    ldh [$80], a                                  ; $61f3: $e0 $80
    db $e4                                        ; $61f5: $e4
    ld c, e                                       ; $61f6: $4b
    dec bc                                        ; $61f7: $0b
    ld a, [hl+]                                   ; $61f8: $2a
    db $fd                                        ; $61f9: $fd
    ret nz                                        ; $61fa: $c0

    nop                                           ; $61fb: $00
    db $fc                                        ; $61fc: $fc
    inc l                                         ; $61fd: $2c
    nop                                           ; $61fe: $00
    ld sp, hl                                     ; $61ff: $f9
    jp hl                                         ; $6200: $e9


    rrca                                          ; $6201: $0f
    ldh [$81], a                                  ; $6202: $e0 $81
    pop hl                                        ; $6204: $e1
    ld b, b                                       ; $6205: $40
    db $e3                                        ; $6206: $e3
    ld a, $e1                                     ; $6207: $3e $e1
    ret nz                                        ; $6209: $c0

    pop hl                                        ; $620a: $e1
    nop                                           ; $620b: $00
    pop af                                        ; $620c: $f1
    jr c, jr_058_61f2                             ; $620d: $38 $e3

    ld b, $00                                     ; $620f: $06 $00
    rst $28                                       ; $6211: $ef
    dec hl                                        ; $6212: $2b
    dec bc                                        ; $6213: $0b
    add d                                         ; $6214: $82
    ldh [rLCDC], a                                ; $6215: $e0 $40
    db $e4                                        ; $6217: $e4
    ld a, a                                       ; $6218: $7f
    pop hl                                        ; $6219: $e1
    nop                                           ; $621a: $00
    push af                                       ; $621b: $f5
    ld [hl], h                                    ; $621c: $74
    add $12                                       ; $621d: $c6 $12
    ld [hl], l                                    ; $621f: $75
    rrc e                                         ; $6220: $cb $0b
    ret nz                                        ; $6222: $c0

    rst $20                                       ; $6223: $e7
    ld a, $c0                                     ; $6224: $3e $c0
    ld c, e                                       ; $6226: $4b
    ld a, $c2                                     ; $6227: $3e $c2
    nop                                           ; $6229: $00
    or $3a                                        ; $622a: $f6 $3a
    ret nc                                        ; $622c: $d0

    nop                                           ; $622d: $00
    ret nz                                        ; $622e: $c0

    rst $20                                       ; $622f: $e7
    dec b                                         ; $6230: $05
    pop bc                                        ; $6231: $c1
    ld a, a                                       ; $6232: $7f
    db $e3                                        ; $6233: $e3

jr_058_6234:
    inc b                                         ; $6234: $04
    call nz, $c382                                ; $6235: $c4 $82 $c3
    ld b, b                                       ; $6238: $40
    and $b8                                       ; $6239: $e6 $b8
    rst $00                                       ; $623b: $c7
    ret nz                                        ; $623c: $c0

    ld hl, sp+$20                                 ; $623d: $f8 $20
    ei                                            ; $623f: $fb
    and b                                         ; $6240: $a0
    nop                                           ; $6241: $00
    ret nz                                        ; $6242: $c0

    ret nz                                        ; $6243: $c0

    or d                                          ; $6244: $b2
    ld [hl], d                                    ; $6245: $72
    jp $ce00                                      ; $6246: $c3 $00 $ce


    ld a, [hl+]                                   ; $6249: $2a
    ld a, a                                       ; $624a: $7f
    rst $28                                       ; $624b: $ef
    pop bc                                        ; $624c: $c1
    ei                                            ; $624d: $fb
    nop                                           ; $624e: $00
    add c                                         ; $624f: $81
    jp nz, $c47c                                  ; $6250: $c2 $7c $c4

    ret nz                                        ; $6253: $c0

    and b                                         ; $6254: $a0
    cp a                                          ; $6255: $bf
    push bc                                       ; $6256: $c5
    ld a, $e3                                     ; $6257: $3e $e3
    cp e                                          ; $6259: $bb
    and d                                         ; $625a: $a2
    add c                                         ; $625b: $81
    sub $14                                       ; $625c: $d6 $14
    and b                                         ; $625e: $a0
    add b                                         ; $625f: $80
    rst $00                                       ; $6260: $c7
    and $00                                       ; $6261: $e6 $00
    add $bf                                       ; $6263: $c6 $bf
    db $eb                                        ; $6265: $eb
    add b                                         ; $6266: $80
    and l                                         ; $6267: $a5
    add c                                         ; $6268: $81
    ret nc                                        ; $6269: $d0

    add hl, sp                                    ; $626a: $39
    and h                                         ; $626b: $a4
    db $f4                                        ; $626c: $f4
    adc e                                         ; $626d: $8b
    ld a, [hl+]                                   ; $626e: $2a
    ld b, h                                       ; $626f: $44
    ret nz                                        ; $6270: $c0

    rst $20                                       ; $6271: $e7
    cp a                                          ; $6272: $bf
    push hl                                       ; $6273: $e5
    ld a, [bc]                                    ; $6274: $0a
    add c                                         ; $6275: $81
    or h                                          ; $6276: $b4
    db $fd                                        ; $6277: $fd
    jp $82b0                                      ; $6278: $c3 $b0 $82


    inc l                                         ; $627b: $2c
    rst $38                                       ; $627c: $ff
    ldh [rP1], a                                  ; $627d: $e0 $00
    ld b, b                                       ; $627f: $40
    call nz, $8185                                ; $6280: $c4 $85 $81
    ld a, a                                       ; $6283: $7f
    and c                                         ; $6284: $a1
    ld a, [$c2a1]                                 ; $6285: $fa $a1 $c2
    ld [c], a                                     ; $6288: $e2
    ld b, b                                       ; $6289: $40
    ldh [$81], a                                  ; $628a: $e0 $81
    pop de                                        ; $628c: $d1
    ld [hl], b                                    ; $628d: $70
    add $00                                       ; $628e: $c6 $00
    ld a, [hl-]                                   ; $6290: $3a
    ld [c], a                                     ; $6291: $e2
    ret nz                                        ; $6292: $c0

    ld [$c044], a                                 ; $6293: $ea $44 $c0
    add d                                         ; $6296: $82
    and e                                         ; $6297: $a3
    cp a                                          ; $6298: $bf
    ld [c], a                                     ; $6299: $e2
    ret nz                                        ; $629a: $c0

    db $e3                                        ; $629b: $e3
    ld c, $cc                                     ; $629c: $0e $cc
    ld bc, $00e5                                  ; $629e: $01 $e5 $00
    cpl                                           ; $62a1: $2f
    add e                                         ; $62a2: $83
    add c                                         ; $62a3: $81
    rst $20                                       ; $62a4: $e7
    jr z, jr_058_6234                             ; $62a5: $28 $8d

    rlca                                          ; $62a7: $07
    sub h                                         ; $62a8: $94
    ccf                                           ; $62a9: $3f
    and $34                                       ; $62aa: $e6 $34
    add e                                         ; $62ac: $83
    ret nz                                        ; $62ad: $c0

    jp hl                                         ; $62ae: $e9


    dec d                                         ; $62af: $15
    db $d3                                        ; $62b0: $d3
    nop                                           ; $62b1: $00
    rlca                                          ; $62b2: $07
    xor c                                         ; $62b3: $a9
    add $a4                                       ; $62b4: $c6 $a4
    ld b, b                                       ; $62b6: $40
    and a                                         ; $62b7: $a7
    or d                                          ; $62b8: $b2
    ld l, c                                       ; $62b9: $69
    push de                                       ; $62ba: $d5
    ld [hl], l                                    ; $62bb: $75
    rlca                                          ; $62bc: $07
    xor c                                         ; $62bd: $a9
    or [hl]                                       ; $62be: $b6
    ld h, e                                       ; $62bf: $63
    ld a, b                                       ; $62c0: $78
    ld h, [hl]                                    ; $62c1: $66
    nop                                           ; $62c2: $00
    ld bc, $36e4                                  ; $62c3: $01 $e4 $36
    rst $00                                       ; $62c6: $c7
    push de                                       ; $62c7: $d5
    ld l, [hl]                                    ; $62c8: $6e
    ld b, a                                       ; $62c9: $47
    and l                                         ; $62ca: $a5
    ccf                                           ; $62cb: $3f
    ld h, l                                       ; $62cc: $65
    or h                                          ; $62cd: $b4
    ld l, b                                       ; $62ce: $68
    add hl, sp                                    ; $62cf: $39
    and l                                         ; $62d0: $a5
    ret nz                                        ; $62d1: $c0

    push hl                                       ; $62d2: $e5
    nop                                           ; $62d3: $00
    push de                                       ; $62d4: $d5
    ld [hl], d                                    ; $62d5: $72
    ret nz                                        ; $62d6: $c0

    ld h, l                                       ; $62d7: $65
    ld b, a                                       ; $62d8: $47
    ld h, a                                       ; $62d9: $67
    ld hl, sp-$7d                                 ; $62da: $f8 $83
    ld a, d                                       ; $62dc: $7a
    push bc                                       ; $62dd: $c5
    ld a, $c2                                     ; $62de: $3e $c2
    adc $df                                       ; $62e0: $ce $df
    add [hl]                                      ; $62e2: $86
    ret z                                         ; $62e3: $c8

    inc b                                         ; $62e4: $04
    ccf                                           ; $62e5: $3f
    ld h, e                                       ; $62e6: $63
    ld l, c                                       ; $62e7: $69
    rst $20                                       ; $62e8: $e7
    ld c, h                                       ; $62e9: $4c
    nop                                           ; $62ea: $00
    push bc                                       ; $62eb: $c5
    pop de                                        ; $62ec: $d1
    rst $00                                       ; $62ed: $c7
    sub d                                         ; $62ee: $92
    ld c, d                                       ; $62ef: $4a
    add e                                         ; $62f0: $83
    ld b, h                                       ; $62f1: $44
    ret                                           ; $62f2: $c9


    ld h, [hl]                                    ; $62f3: $66
    nop                                           ; $62f4: $00
    ld a, [$1044]                                 ; $62f5: $fa $44 $10
    and $4e                                       ; $62f8: $e6 $4e
    ret                                           ; $62fa: $c9


    sub d                                         ; $62fb: $92
    ld d, h                                       ; $62fc: $54
    ld b, a                                       ; $62fd: $47
    ld c, b                                       ; $62fe: $48
    dec h                                         ; $62ff: $25
    xor $40                                       ; $6300: $ee $40
    rst $20                                       ; $6302: $e7
    xor l                                         ; $6303: $ad
    rst $20                                       ; $6304: $e7
    nop                                           ; $6305: $00
    sub d                                         ; $6306: $92
    ld l, h                                       ; $6307: $6c
    ld b, a                                       ; $6308: $47
    ld b, a                                       ; $6309: $47
    ld a, [hl-]                                   ; $630a: $3a
    ret                                           ; $630b: $c9


    ld h, b                                       ; $630c: $60
    and $bf                                       ; $630d: $e6 $bf
    xor b                                         ; $630f: $a8
    sub d                                         ; $6310: $92
    ld d, c                                       ; $6311: $51
    dec bc                                        ; $6312: $0b
    ld b, d                                       ; $6313: $42
    cp d                                          ; $6314: $ba
    ld l, b                                       ; $6315: $68
    nop                                           ; $6316: $00
    ei                                            ; $6317: $fb
    ld b, [hl]                                    ; $6318: $46
    or b                                          ; $6319: $b0
    dec l                                         ; $631a: $2d
    sub [hl]                                      ; $631b: $96
    ld h, $92                                     ; $631c: $26 $92
    ld l, e                                       ; $631e: $6b
    ld c, l                                       ; $631f: $4d
    add sp, -$78                                  ; $6320: $e8 $88
    ret z                                         ; $6322: $c8

    cpl                                           ; $6323: $2f
    ld b, l                                       ; $6324: $45
    ld [hl], c                                    ; $6325: $71
    jr z, jr_058_6328                             ; $6326: $28 $00

jr_058_6328:
    dec de                                        ; $6328: $1b
    ld b, l                                       ; $6329: $45
    ld de, $47ac                                  ; $632a: $11 $ac $47
    ld l, e                                       ; $632d: $6b
    adc b                                         ; $632e: $88
    ret z                                         ; $632f: $c8

    ld h, [hl]                                    ; $6330: $66
    db $e4                                        ; $6331: $e4
    sub $e8                                       ; $6332: $d6 $e8
    rst $20                                       ; $6334: $e7
    daa                                           ; $6335: $27
    adc e                                         ; $6336: $8b
    ret z                                         ; $6337: $c8

    nop                                           ; $6338: $00
    add $89                                       ; $6339: $c6 $89
    adc b                                         ; $633b: $88
    jp z, $e9d0                                   ; $633c: $ca $d0 $e9

    sbc b                                         ; $633f: $98
    ret                                           ; $6340: $c9


    sbc [hl]                                      ; $6341: $9e
    xor a                                         ; $6342: $af
    pop af                                        ; $6343: $f1
    adc d                                         ; $6344: $8a
    ld [bc], a                                    ; $6345: $02
    xor l                                         ; $6346: $ad
    xor a                                         ; $6347: $af
    inc c                                         ; $6348: $0c
    nop                                           ; $6349: $00
    rst $08                                       ; $634a: $cf
    add [hl]                                      ; $634b: $86
    sbc [hl]                                      ; $634c: $9e
    and [hl]                                      ; $634d: $a6
    ld d, e                                       ; $634e: $53
    xor b                                         ; $634f: $a8
    adc b                                         ; $6350: $88
    ret z                                         ; $6351: $c8

    or a                                          ; $6352: $b7
    adc h                                         ; $6353: $8c
    inc a                                         ; $6354: $3c
    db $eb                                        ; $6355: $eb
    sbc [hl]                                      ; $6356: $9e
    xor c                                         ; $6357: $a9
    set 1, d                                      ; $6358: $cb $ca
    nop                                           ; $635a: $00
    ld b, d                                       ; $635b: $42
    adc $40                                       ; $635c: $ce $40
    pop bc                                        ; $635e: $c1
    jp $f989                                      ; $635f: $c3 $89 $f9


    add sp, $18                                   ; $6362: $e8 $18
    add a                                         ; $6364: $87
    or l                                          ; $6365: $b5
    and $7b                                       ; $6366: $e6 $7b
    ld a, [hl+]                                   ; $6368: $2a
    ld b, a                                       ; $6369: $47
    ld h, d                                       ; $636a: $62
    ld b, b                                       ; $636b: $40
    nop                                           ; $636c: $00
    adc h                                         ; $636d: $8c
    sbc [hl]                                      ; $636e: $9e
    or e                                          ; $636f: $b3
    push bc                                       ; $6370: $c5
    ld h, [hl]                                    ; $6371: $66
    jp hl                                         ; $6372: $e9


    xor d                                         ; $6373: $aa
    ld [$8162], sp                                ; $6374: $08 $62 $81
    ld l, e                                       ; $6377: $6b
    inc l                                         ; $6378: $2c
    sbc [hl]                                      ; $6379: $9e
    or e                                          ; $637a: $b3
    nop                                           ; $637b: $00
    ld d, e                                       ; $637c: $53
    and l                                         ; $637d: $a5
    ld a, e                                       ; $637e: $7b
    dec hl                                        ; $637f: $2b
    jp nz, $c34b                                  ; $6380: $c2 $4b $c3

    db $f4                                        ; $6383: $f4
    or l                                          ; $6384: $b5
    ldh a, [rNR14]                                ; $6385: $f0 $14
    jp hl                                         ; $6387: $e9


    dec c                                         ; $6388: $0d
    ld l, h                                       ; $6389: $6c

jr_058_638a:
    inc c                                         ; $638a: $0c
    rst $20                                       ; $638b: $e7
    nop                                           ; $638c: $00
    and $f3                                       ; $638d: $e6 $f3
    jp hl                                         ; $638f: $e9


    xor d                                         ; $6390: $aa
    ld bc, $726d                                  ; $6391: $01 $6d $72
    adc h                                         ; $6394: $8c
    ld a, [hl+]                                   ; $6395: $2a
    jp hl                                         ; $6396: $e9


    jp hl                                         ; $6397: $e9


    or b                                          ; $6398: $b0
    ret nz                                        ; $6399: $c0

    pop af                                        ; $639a: $f1
    ld sp, hl                                     ; $639b: $f9
    ld hl, sp+$00                                 ; $639c: $f8 $00
    jp hl                                         ; $639e: $e9


    or b                                          ; $639f: $b0
    set 7, a                                      ; $63a0: $cb $ff
    jp hl                                         ; $63a2: $e9


    cp e                                          ; $63a3: $bb
    ret                                           ; $63a4: $c9


    rst $38                                       ; $63a5: $ff
    ld h, l                                       ; $63a6: $65
    ld c, [hl]                                    ; $63a7: $4e
    jp c, $c86b                                   ; $63a8: $da $6b $c8

    rst $38                                       ; $63ab: $ff
    or c                                          ; $63ac: $b1
    cpl                                           ; $63ad: $2f
    nop                                           ; $63ae: $00
    xor h                                         ; $63af: $ac
    ld c, c                                       ; $63b0: $49
    set 7, a                                      ; $63b1: $cb $ff
    jp hl                                         ; $63b3: $e9


    cp b                                          ; $63b4: $b8
    add b                                         ; $63b5: $80
    rst $38                                       ; $63b6: $ff
    ld a, a                                       ; $63b7: $7f
    pop de                                        ; $63b8: $d1
    call nz, $c76a                                ; $63b9: $c4 $6a $c7
    rst $38                                       ; $63bc: $ff
    pop af                                        ; $63bd: $f1
    dec c                                         ; $63be: $0d
    nop                                           ; $63bf: $00
    ld a, h                                       ; $63c0: $7c
    adc c                                         ; $63c1: $89
    ret nz                                        ; $63c2: $c0

    rst $38                                       ; $63c3: $ff
    ld l, b                                       ; $63c4: $68
    sub b                                         ; $63c5: $90
    inc a                                         ; $63c6: $3c
    adc c                                         ; $63c7: $89
    rst $38                                       ; $63c8: $ff
    rst $38                                       ; $63c9: $ff
    or d                                          ; $63ca: $b2
    or e                                          ; $63cb: $b3
    call $ffbf                                    ; $63cc: $cd $bf $ff
    rst $38                                       ; $63cf: $ff
    nop                                           ; $63d0: $00
    rst $38                                       ; $63d1: $ff
    rst $38                                       ; $63d2: $ff
    sub [hl]                                      ; $63d3: $96
    rst $38                                       ; $63d4: $ff
    jr jr_058_638a                                ; $63d5: $18 $b3

    rst $38                                       ; $63d7: $ff
    rst $38                                       ; $63d8: $ff
    rst $38                                       ; $63d9: $ff
    rst $38                                       ; $63da: $ff
    rst $38                                       ; $63db: $ff
    rst $38                                       ; $63dc: $ff
    rst $38                                       ; $63dd: $ff
    rst $38                                       ; $63de: $ff
    scf                                           ; $63df: $37
    db $eb                                        ; $63e0: $eb
    nop                                           ; $63e1: $00
    call c, $ffff                                 ; $63e2: $dc $ff $ff
    rst $38                                       ; $63e5: $ff
    rst $38                                       ; $63e6: $ff
    rst $38                                       ; $63e7: $ff
    rst $38                                       ; $63e8: $ff
    rst $38                                       ; $63e9: $ff
    rst $38                                       ; $63ea: $ff
    rst $38                                       ; $63eb: $ff
    rst $38                                       ; $63ec: $ff
    rst $38                                       ; $63ed: $ff
    rst $38                                       ; $63ee: $ff
    rst $38                                       ; $63ef: $ff
    rst $38                                       ; $63f0: $ff
    rst $38                                       ; $63f1: $ff
    nop                                           ; $63f2: $00
    rst $38                                       ; $63f3: $ff
    rst $38                                       ; $63f4: $ff
    rst $38                                       ; $63f5: $ff
    rst $38                                       ; $63f6: $ff
    rst $38                                       ; $63f7: $ff
    rst $38                                       ; $63f8: $ff
    rst $38                                       ; $63f9: $ff
    rst $38                                       ; $63fa: $ff
    rst $38                                       ; $63fb: $ff
    rst $38                                       ; $63fc: $ff
    rst $38                                       ; $63fd: $ff
    rst $38                                       ; $63fe: $ff
    rst $38                                       ; $63ff: $ff
    rst $38                                       ; $6400: $ff
    rst $38                                       ; $6401: $ff
    rst $38                                       ; $6402: $ff
    nop                                           ; $6403: $00
    rst $38                                       ; $6404: $ff
    rst $38                                       ; $6405: $ff
    rst $38                                       ; $6406: $ff
    rst $38                                       ; $6407: $ff
    nop                                           ; $6408: $00
    cp a                                          ; $6409: $bf
    rst $38                                       ; $640a: $ff
    rst $38                                       ; $640b: $ff
    rst $38                                       ; $640c: $ff
    rst $38                                       ; $640d: $ff
    rst $38                                       ; $640e: $ff
    rst $38                                       ; $640f: $ff
    rst $38                                       ; $6410: $ff
    rst $38                                       ; $6411: $ff
    jp c, Jump_000_0033                           ; $6412: $da $33 $00

    nop                                           ; $6415: $00
    nop                                           ; $6416: $00
    rst $38                                       ; $6417: $ff
    rla                                           ; $6418: $17
    jr z, jr_058_643b                             ; $6419: $28 $20

    nop                                           ; $641b: $00
    ld sp, $3131                                  ; $641c: $31 $31 $31
    ld c, l                                       ; $641f: $4d
    rst $38                                       ; $6420: $ff
    ld d, [hl]                                    ; $6421: $56
    ld d, [hl]                                    ; $6422: $56
    ld d, a                                       ; $6423: $57
    ld c, l                                       ; $6424: $4d
    ld sp, $5a5f                                  ; $6425: $31 $5f $5a
    ld e, e                                       ; $6428: $5b
    or d                                          ; $6429: $b2
    rst $38                                       ; $642a: $ff
    pop hl                                        ; $642b: $e1
    nop                                           ; $642c: $00
    rst $38                                       ; $642d: $ff
    rst $38                                       ; $642e: $ff
    rst $20                                       ; $642f: $e7
    and $15                                       ; $6430: $e6 $15
    ld d, $c0                                     ; $6432: $16 $c0
    pop hl                                        ; $6434: $e1
    ld c, l                                       ; $6435: $4d
    ld a, a                                       ; $6436: $7f
    ld [hl-], a                                   ; $6437: $32
    ld l, d                                       ; $6438: $6a
    ld l, l                                       ; $6439: $6d
    ld l, l                                       ; $643a: $6d

jr_058_643b:
    add hl, sp                                    ; $643b: $39
    ld sp, $c15e                                  ; $643c: $31 $5e $c1
    pop hl                                        ; $643f: $e1
    ld a, c                                       ; $6440: $79
    ld e, d                                       ; $6441: $5a
    ret nz                                        ; $6442: $c0

    rst $38                                       ; $6443: $ff
    jp hl                                         ; $6444: $e9


    add sp, $31                                   ; $6445: $e8 $31
    rla                                           ; $6447: $17
    jr z, jr_058_644a                             ; $6448: $28 $00

jr_058_644a:
    pop bc                                        ; $644a: $c1
    ldh [rNR33], a                                ; $644b: $e0 $1d
    ld l, e                                       ; $644d: $6b
    ret nz                                        ; $644e: $c0

    ldh [rOBP0], a                                ; $644f: $e0 $48
    ld c, c                                       ; $6451: $49
    ld h, c                                       ; $6452: $61
    add c                                         ; $6453: $81
    ld [c], a                                     ; $6454: $e2
    ret nz                                        ; $6455: $c0

    rst $38                                       ; $6456: $ff
    ret nz                                        ; $6457: $c0

    jp hl                                         ; $6458: $e9


    cp a                                          ; $6459: $bf
    dec d                                         ; $645a: $15
    ld d, $0f                                     ; $645b: $16 $0f
    ld c, l                                       ; $645d: $4d
    ld [hl-], a                                   ; $645e: $32
    ld l, c                                       ; $645f: $69

jr_058_6460:
    ret nz                                        ; $6460: $c0

    pop hl                                        ; $6461: $e1
    ld l, d                                       ; $6462: $6a
    push hl                                       ; $6463: $e5
    ld d, c                                       ; $6464: $51
    ret nz                                        ; $6465: $c0

    db $e3                                        ; $6466: $e3
    ld e, d                                       ; $6467: $5a
    jp z, $e8ff                                   ; $6468: $ca $ff $e8

    rst $20                                       ; $646b: $e7
    ld e, [hl]                                    ; $646c: $5e
    ld sp, $f704                                  ; $646d: $31 $04 $f7
    ld sp, $6b39                                  ; $6470: $31 $39 $6b
    ret nz                                        ; $6473: $c0

    db $e3                                        ; $6474: $e3
    add hl, sp                                    ; $6475: $39
    ld sp, $5b5f                                  ; $6476: $31 $5f $5b
    pop af                                        ; $6479: $f1
    ld e, d                                       ; $647a: $5a
    db $fd                                        ; $647b: $fd
    ret nz                                        ; $647c: $c0

    jp z, $e8ff                                   ; $647d: $ca $ff $e8

    rst $20                                       ; $6480: $e7
    ld e, a                                       ; $6481: $5f
    ld sp, $4931                                  ; $6482: $31 $31 $49
    adc l                                         ; $6485: $8d
    ld c, b                                       ; $6486: $48
    ret nz                                        ; $6487: $c0

    db $e4                                        ; $6488: $e4
    ld c, b                                       ; $6489: $48
    ld c, c                                       ; $648a: $49
    rst $38                                       ; $648b: $ff
    ret nz                                        ; $648c: $c0

    ret nz                                        ; $648d: $c0

    rst $38                                       ; $648e: $ff
    db $eb                                        ; $648f: $eb
    ld [$2f5b], a                                 ; $6490: $ea $5b $2f
    ld h, c                                       ; $6493: $61
    ld sp, $6b51                                  ; $6494: $31 $51 $6b
    add b                                         ; $6497: $80
    db $e4                                        ; $6498: $e4
    ld l, e                                       ; $6499: $6b
    ld a, a                                       ; $649a: $7f
    pop hl                                        ; $649b: $e1
    nop                                           ; $649c: $00
    rst $38                                       ; $649d: $ff
    jr nz, jr_058_6460                            ; $649e: $20 $c0

    rst $30                                       ; $64a0: $f7
    ld a, a                                       ; $64a1: $7f
    ldh [$3e], a                                  ; $64a2: $e0 $3e
    pop bc                                        ; $64a4: $c1
    jp z, $80ff                                   ; $64a5: $ca $ff $80

    add sp, $5e                                   ; $64a8: $e8 $5e
    add b                                         ; $64aa: $80
    add sp, $7f                                   ; $64ab: $e8 $7f
    db $e4                                        ; $64ad: $e4
    inc d                                         ; $64ae: $14
    jp z, Jump_058_40ff                           ; $64af: $ca $ff $40

    add sp, $5f                                   ; $64b2: $e8 $5f
    nop                                           ; $64b4: $00
    push hl                                       ; $64b5: $e5
    jr nc, jr_058_6537                            ; $64b6: $30 $7f

    db $e3                                        ; $64b8: $e3
    nop                                           ; $64b9: $00
    rst $18                                       ; $64ba: $df
    nop                                           ; $64bb: $00
    db $eb                                        ; $64bc: $eb
    inc bc                                        ; $64bd: $03
    ld e, d                                       ; $64be: $5a
    ld e, [hl]                                    ; $64bf: $5e
    add b                                         ; $64c0: $80
    ret nz                                        ; $64c1: $c0

    cp a                                          ; $64c2: $bf
    and $fe                                       ; $64c3: $e6 $fe
    jp nz, $ffca                                  ; $64c5: $c2 $ca $ff

    ret nz                                        ; $64c8: $c0

    ret z                                         ; $64c9: $c8

    ld a, a                                       ; $64ca: $7f
    db $e3                                        ; $64cb: $e3
    nop                                           ; $64cc: $00
    ld a, [hl]                                    ; $64cd: $7e
    push hl                                       ; $64ce: $e5
    ld a, l                                       ; $64cf: $7d
    jp nz, $ffca                                  ; $64d0: $c2 $ca $ff

    ret nz                                        ; $64d3: $c0

    jp hl                                         ; $64d4: $e9


    ld a, [hl]                                    ; $64d5: $7e
    ret nz                                        ; $64d6: $c0

    ld a, a                                       ; $64d7: $7f
    ldh [$3d], a                                  ; $64d8: $e0 $3d
    db $e4                                        ; $64da: $e4
    ret nz                                        ; $64db: $c0

    rst $38                                       ; $64dc: $ff
    inc a                                         ; $64dd: $3c
    db $ed                                        ; $64de: $ed
    db $ec                                        ; $64df: $ec
    adc $80                                       ; $64e0: $ce $80
    ld h, c                                       ; $64e2: $61
    ld sp, $3649                                  ; $64e3: $31 $49 $36
    cp a                                          ; $64e6: $bf
    push hl                                       ; $64e7: $e5
    cp l                                          ; $64e8: $bd
    and d                                         ; $64e9: $a2
    ld a, h                                       ; $64ea: $7c
    jp z, Jump_058_40ff                           ; $64eb: $ca $ff $40

    db $eb                                        ; $64ee: $eb
    ld sp, $6f70                                  ; $64ef: $31 $70 $6f
    ld l, [hl]                                    ; $64f2: $6e
    ld c, d                                       ; $64f3: $4a
    ei                                            ; $64f4: $fb
    and c                                         ; $64f5: $a1
    rst $00                                       ; $64f6: $c7
    ld b, h                                       ; $64f7: $44
    ld b, l                                       ; $64f8: $45
    ld c, l                                       ; $64f9: $4d
    ccf                                           ; $64fa: $3f
    pop bc                                        ; $64fb: $c1
    jp z, Jump_000_00ff                           ; $64fc: $ca $ff $00

    jp hl                                         ; $64ff: $e9


    ld e, [hl]                                    ; $6500: $5e
    ld sp, $70ff                                  ; $6501: $31 $ff $70
    xor [hl]                                      ; $6504: $ae
    add b                                         ; $6505: $80
    add b                                         ; $6506: $80
    ld a, b                                       ; $6507: $78
    ld a, l                                       ; $6508: $7d
    ld a, h                                       ; $6509: $7c
    ld a, l                                       ; $650a: $7d
    rlca                                          ; $650b: $07
    ld a, l                                       ; $650c: $7d
    xor a                                         ; $650d: $af
    ld sp, $df40                                  ; $650e: $31 $40 $df
    rst $38                                       ; $6511: $ff
    rst $38                                       ; $6512: $ff
    rst $38                                       ; $6513: $ff
    rst $38                                       ; $6514: $ff
    rst $38                                       ; $6515: $ff
    rst $38                                       ; $6516: $ff
    rst $38                                       ; $6517: $ff
    rst $38                                       ; $6518: $ff
    nop                                           ; $6519: $00
    rst $38                                       ; $651a: $ff
    rst $38                                       ; $651b: $ff
    rst $38                                       ; $651c: $ff
    rst $38                                       ; $651d: $ff
    rst $38                                       ; $651e: $ff
    rst $38                                       ; $651f: $ff
    rst $38                                       ; $6520: $ff
    rst $38                                       ; $6521: $ff
    rst $38                                       ; $6522: $ff
    rst $38                                       ; $6523: $ff
    rst $38                                       ; $6524: $ff
    rst $38                                       ; $6525: $ff
    rst $38                                       ; $6526: $ff
    rst $38                                       ; $6527: $ff
    rst $38                                       ; $6528: $ff
    rst $38                                       ; $6529: $ff
    nop                                           ; $652a: $00
    rst $38                                       ; $652b: $ff
    rst $38                                       ; $652c: $ff
    rst $38                                       ; $652d: $ff
    rst $38                                       ; $652e: $ff
    rst $38                                       ; $652f: $ff
    rst $38                                       ; $6530: $ff
    rst $38                                       ; $6531: $ff
    rst $38                                       ; $6532: $ff
    rst $38                                       ; $6533: $ff
    rst $38                                       ; $6534: $ff
    rst $38                                       ; $6535: $ff
    rst $38                                       ; $6536: $ff

jr_058_6537:
    rst $38                                       ; $6537: $ff
    rst $38                                       ; $6538: $ff
    rst $38                                       ; $6539: $ff
    rst $38                                       ; $653a: $ff
    nop                                           ; $653b: $00
    rst $38                                       ; $653c: $ff
    rst $38                                       ; $653d: $ff
    rst $38                                       ; $653e: $ff
    rst $38                                       ; $653f: $ff
    rst $38                                       ; $6540: $ff
    rst $38                                       ; $6541: $ff
    rst $38                                       ; $6542: $ff
    rst $38                                       ; $6543: $ff
    rst $38                                       ; $6544: $ff
    rst $38                                       ; $6545: $ff
    rst $38                                       ; $6546: $ff
    rst $38                                       ; $6547: $ff
    rst $38                                       ; $6548: $ff
    rst $38                                       ; $6549: $ff
    rst $38                                       ; $654a: $ff
    rst $38                                       ; $654b: $ff
    nop                                           ; $654c: $00
    rst $38                                       ; $654d: $ff
    rst $38                                       ; $654e: $ff
    rst $38                                       ; $654f: $ff
    rst $38                                       ; $6550: $ff
    rst $38                                       ; $6551: $ff
    rst $38                                       ; $6552: $ff
    rst $38                                       ; $6553: $ff
    rst $38                                       ; $6554: $ff
    rst $38                                       ; $6555: $ff
    rst $38                                       ; $6556: $ff
    rst $38                                       ; $6557: $ff
    rst $38                                       ; $6558: $ff
    rst $38                                       ; $6559: $ff
    rst $38                                       ; $655a: $ff
    rst $38                                       ; $655b: $ff
    rst $38                                       ; $655c: $ff
    nop                                           ; $655d: $00
    rst $38                                       ; $655e: $ff
    rst $38                                       ; $655f: $ff
    rst $38                                       ; $6560: $ff
    rst $38                                       ; $6561: $ff
    rst $38                                       ; $6562: $ff
    rst $38                                       ; $6563: $ff
    rst $38                                       ; $6564: $ff
    rst $38                                       ; $6565: $ff
    rst $38                                       ; $6566: $ff
    rst $38                                       ; $6567: $ff
    rst $38                                       ; $6568: $ff
    rst $38                                       ; $6569: $ff
    rst $38                                       ; $656a: $ff
    rst $38                                       ; $656b: $ff
    rst $38                                       ; $656c: $ff
    rst $38                                       ; $656d: $ff
    nop                                           ; $656e: $00
    rst $38                                       ; $656f: $ff
    rst $38                                       ; $6570: $ff
    rst $38                                       ; $6571: $ff
    rst $38                                       ; $6572: $ff
    rst $38                                       ; $6573: $ff
    rst $38                                       ; $6574: $ff
    rst $38                                       ; $6575: $ff
    rst $38                                       ; $6576: $ff
    rst $38                                       ; $6577: $ff
    rst $38                                       ; $6578: $ff
    rst $38                                       ; $6579: $ff
    rst $38                                       ; $657a: $ff
    rst $38                                       ; $657b: $ff
    rst $38                                       ; $657c: $ff
    rst $38                                       ; $657d: $ff
    rst $38                                       ; $657e: $ff
    nop                                           ; $657f: $00
    rst $38                                       ; $6580: $ff
    rst $38                                       ; $6581: $ff
    rst $38                                       ; $6582: $ff
    rst $38                                       ; $6583: $ff
    rst $38                                       ; $6584: $ff
    rst $38                                       ; $6585: $ff
    rst $38                                       ; $6586: $ff
    rst $38                                       ; $6587: $ff
    rst $38                                       ; $6588: $ff
    rst $38                                       ; $6589: $ff
    rst $38                                       ; $658a: $ff
    rst $38                                       ; $658b: $ff
    rst $38                                       ; $658c: $ff
    rst $38                                       ; $658d: $ff
    rst $38                                       ; $658e: $ff
    rst $38                                       ; $658f: $ff
    nop                                           ; $6590: $00
    rst $38                                       ; $6591: $ff
    rst $38                                       ; $6592: $ff
    rst $38                                       ; $6593: $ff
    rst $38                                       ; $6594: $ff
    rst $38                                       ; $6595: $ff
    rst $38                                       ; $6596: $ff
    rst $38                                       ; $6597: $ff
    rst $38                                       ; $6598: $ff
    rst $38                                       ; $6599: $ff
    rst $38                                       ; $659a: $ff
    rst $38                                       ; $659b: $ff
    rst $38                                       ; $659c: $ff
    rst $38                                       ; $659d: $ff
    rst $38                                       ; $659e: $ff
    rst $38                                       ; $659f: $ff
    rst $38                                       ; $65a0: $ff
    nop                                           ; $65a1: $00
    rst $38                                       ; $65a2: $ff
    rst $38                                       ; $65a3: $ff
    rst $38                                       ; $65a4: $ff
    rst $38                                       ; $65a5: $ff
    rst $38                                       ; $65a6: $ff
    rst $38                                       ; $65a7: $ff
    rst $38                                       ; $65a8: $ff
    rst $38                                       ; $65a9: $ff
    rst $38                                       ; $65aa: $ff
    rst $38                                       ; $65ab: $ff
    rst $38                                       ; $65ac: $ff
    rst $38                                       ; $65ad: $ff
    rst $38                                       ; $65ae: $ff
    rst $38                                       ; $65af: $ff
    rst $38                                       ; $65b0: $ff
    rst $38                                       ; $65b1: $ff
    nop                                           ; $65b2: $00
    rst $38                                       ; $65b3: $ff
    rst $38                                       ; $65b4: $ff
    rst $38                                       ; $65b5: $ff
    rst $38                                       ; $65b6: $ff
    rst $38                                       ; $65b7: $ff
    rst $38                                       ; $65b8: $ff
    rst $38                                       ; $65b9: $ff
    rst $38                                       ; $65ba: $ff
    rst $38                                       ; $65bb: $ff
    rst $38                                       ; $65bc: $ff
    rst $38                                       ; $65bd: $ff
    rst $38                                       ; $65be: $ff
    rst $38                                       ; $65bf: $ff
    rst $38                                       ; $65c0: $ff
    rst $38                                       ; $65c1: $ff
    rst $38                                       ; $65c2: $ff
    nop                                           ; $65c3: $00
    rst $38                                       ; $65c4: $ff
    rst $38                                       ; $65c5: $ff
    rst $38                                       ; $65c6: $ff
    rst $38                                       ; $65c7: $ff
    rst $38                                       ; $65c8: $ff
    rst $38                                       ; $65c9: $ff
    rst $38                                       ; $65ca: $ff
    rst $38                                       ; $65cb: $ff
    rst $38                                       ; $65cc: $ff
    rst $38                                       ; $65cd: $ff
    rst $38                                       ; $65ce: $ff
    rst $38                                       ; $65cf: $ff
    rst $38                                       ; $65d0: $ff
    ld hl, sp+$00                                 ; $65d1: $f8 $00
    nop                                           ; $65d3: $00
    nop                                           ; $65d4: $00
    and l                                         ; $65d5: $a5
    nop                                           ; $65d6: $00
    rst $38                                       ; $65d7: $ff
    push hl                                       ; $65d8: $e5
    ld [hl-], a                                   ; $65d9: $32
    or $e6                                        ; $65da: $f6 $e6
    rst $30                                       ; $65dc: $f7
    rst $20                                       ; $65dd: $e7
    dec [hl]                                      ; $65de: $35
    db $ec                                        ; $65df: $ec
    xor $37                                       ; $65e0: $ee $37
    db $ec                                        ; $65e2: $ec
    jp c, $c7f0                                   ; $65e3: $da $f0 $c7

    add sp, $33                                   ; $65e6: $e8 $33
    ld sp, $f2e0                                  ; $65e8: $31 $e0 $f2
    ld [hl], $30                                  ; $65eb: $36 $30
    scf                                           ; $65ed: $37
    cp a                                          ; $65ee: $bf
    ld h, $20                                     ; $65ef: $26 $20
    daa                                           ; $65f1: $27
    db $10                                        ; $65f2: $10
    ld d, $17                                     ; $65f3: $16 $17
    jp nz, Jump_000_34f6                          ; $65f5: $c2 $f6 $34

    rst $38                                       ; $65f8: $ff
    ld [hl], $32                                  ; $65f9: $36 $32
    jr nc, jr_058_6634                            ; $65fb: $30 $37

    ld sp, $3133                                  ; $65fd: $31 $33 $31
    inc sp                                        ; $6600: $33
    nop                                           ; $6601: $00
    and b                                         ; $6602: $a0
    ei                                            ; $6603: $fb
    rst $38                                       ; $6604: $ff
    rst $28                                       ; $6605: $ef
    nop                                           ; $6606: $00
    nop                                           ; $6607: $00
    nop                                           ; $6608: $00
    ld de, $4166                                  ; $6609: $11 $66 $41
    ld h, [hl]                                    ; $660c: $66
    push de                                       ; $660d: $d5
    ld l, b                                       ; $660e: $68
    jp nc, $f86a                                  ; $660f: $d2 $6a $f8

    inc bc                                        ; $6612: $03
    ld c, h                                       ; $6613: $4c
    inc bc                                        ; $6614: $03
    ld d, e                                       ; $6615: $53
    ld bc, $008a                                  ; $6616: $01 $8a $00
    ldh a, [$03]                                  ; $6619: $f0 $03
    ld hl, sp+$03                                 ; $661b: $f8 $03
    ld c, h                                       ; $661d: $4c
    inc bc                                        ; $661e: $03
    ld d, e                                       ; $661f: $53
    ld bc, $47ff                                  ; $6620: $01 $ff $47
    ldh a, [rP1]                                  ; $6623: $f0 $00
    ld e, l                                       ; $6625: $5d
    add hl, de                                    ; $6626: $19
    ld c, h                                       ; $6627: $4c
    inc bc                                        ; $6628: $03
    ld [$0825], sp                                ; $6629: $08 $25 $08
    dec h                                         ; $662c: $25
    ld [$0825], sp                                ; $662d: $08 $25 $08
    dec h                                         ; $6630: $25
    ld [$0825], sp                                ; $6631: $08 $25 $08

jr_058_6634:
    dec h                                         ; $6634: $25
    ld [$0825], sp                                ; $6635: $08 $25 $08
    dec h                                         ; $6638: $25
    ld [$0825], sp                                ; $6639: $08 $25 $08
    dec h                                         ; $663c: $25
    ld [$0825], sp                                ; $663d: $08 $25 $08
    dec h                                         ; $6640: $25
    db $fd                                        ; $6641: $fd
    dec bc                                        ; $6642: $0b
    rst $38                                       ; $6643: $ff
    ldh [rOCPD], a                                ; $6644: $e0 $6b
    dec bc                                        ; $6646: $0b
    ld l, e                                       ; $6647: $6b
    ld l, e                                       ; $6648: $6b
    ld c, e                                       ; $6649: $4b
    ld c, e                                       ; $664a: $4b
    rla                                           ; $664b: $17
    dec bc                                        ; $664c: $0b
    dec bc                                        ; $664d: $0b
    inc c                                         ; $664e: $0c
    rst $38                                       ; $664f: $ff
    and $4c                                       ; $6650: $e6 $4c
    rst $38                                       ; $6652: $ff
    push hl                                       ; $6653: $e5
    push af                                       ; $6654: $f5
    pop hl                                        ; $6655: $e1
    jp hl                                         ; $6656: $e9


    pop hl                                        ; $6657: $e1
    or e                                          ; $6658: $b3
    inc l                                         ; $6659: $2c
    inc l                                         ; $665a: $2c
    db $e3                                        ; $665b: $e3
    rst $20                                       ; $665c: $e7
    or $ea                                        ; $665d: $f6 $ea
    dec bc                                        ; $665f: $0b
    ld a, [bc]                                    ; $6660: $0a
    ret nz                                        ; $6661: $c0

    ld [c], a                                     ; $6662: $e2
    dec bc                                        ; $6663: $0b
    ld de, $c00b                                  ; $6664: $11 $0b $c0
    ldh [$d5], a                                  ; $6667: $e0 $d5
    db $e3                                        ; $6669: $e3
    pop bc                                        ; $666a: $c1
    ld [c], a                                     ; $666b: $e2
    inc c                                         ; $666c: $0c
    jp z, $f1e1                                   ; $666d: $ca $e1 $f1

    db $e4                                        ; $6670: $e4
    cp a                                          ; $6671: $bf
    pop hl                                        ; $6672: $e1
    ld [hl], d                                    ; $6673: $72
    pop bc                                        ; $6674: $c1
    push af                                       ; $6675: $f5
    inc c                                         ; $6676: $0c
    pop bc                                        ; $6677: $c1
    db $e3                                        ; $6678: $e3
    ret nz                                        ; $6679: $c0

    pop hl                                        ; $667a: $e1
    ld c, e                                       ; $667b: $4b
    dec bc                                        ; $667c: $0b
    inc l                                         ; $667d: $2c
    ret nz                                        ; $667e: $c0

    push hl                                       ; $667f: $e5
    ld b, b                                       ; $6680: $40
    adc d                                         ; $6681: $8a
    db $e3                                        ; $6682: $e3
    cp l                                          ; $6683: $bd
    db $e4                                        ; $6684: $e4
    add b                                         ; $6685: $80
    db $e3                                        ; $6686: $e3
    ld h, h                                       ; $6687: $64
    ld [c], a                                     ; $6688: $e2
    ld a, d                                       ; $6689: $7a
    ldh a, [rSTAT]                                ; $668a: $f0 $41
    ld [c], a                                     ; $668c: $e2
    dec hl                                        ; $668d: $2b
    ld a, [hl-]                                   ; $668e: $3a
    pop hl                                        ; $668f: $e1
    add b                                         ; $6690: $80
    ld a, a                                       ; $6691: $7f
    jp hl                                         ; $6692: $e9


    cp c                                          ; $6693: $b9
    add sp, -$13                                  ; $6694: $e8 $ed
    jp hl                                         ; $6696: $e9


    dec sp                                        ; $6697: $3b
    ldh a, [rP1]                                  ; $6698: $f0 $00
    pop hl                                        ; $669a: $e1
    ret nz                                        ; $669b: $c0

    db $e3                                        ; $669c: $e3
    ld a, e                                       ; $669d: $7b
    ldh [$2c], a                                  ; $669e: $e0 $2c
    ld [bc], a                                    ; $66a0: $02
    inc de                                        ; $66a1: $13
    ld [c], a                                     ; $66a2: $e2

jr_058_66a3:
    dec bc                                        ; $66a3: $0b
    adc d                                         ; $66a4: $8a
    and $01                                       ; $66a5: $e6 $01
    and $80                                       ; $66a7: $e6 $80
    push hl                                       ; $66a9: $e5
    cp d                                          ; $66aa: $ba
    jp hl                                         ; $66ab: $e9


    xor $c3                                       ; $66ac: $ee $c3
    ret nz                                        ; $66ae: $c0

    ld [c], a                                     ; $66af: $e2
    nop                                           ; $66b0: $00
    ld bc, $b8e0                                  ; $66b1: $01 $e0 $b8
    jp $c2cd                                      ; $66b4: $c3 $cd $c2


    cp b                                          ; $66b7: $b8
    ret nz                                        ; $66b8: $c0

    rst $38                                       ; $66b9: $ff
    pop bc                                        ; $66ba: $c1
    jp nz, $c1c2                                  ; $66bb: $c2 $c2 $c1

    pop bc                                        ; $66be: $c1
    call nz, Call_000_01c1                        ; $66bf: $c4 $c1 $01
    inc l                                         ; $66c2: $2c
    cp [hl]                                       ; $66c3: $be
    push de                                       ; $66c4: $d5
    add $e3                                       ; $66c5: $c6 $e3
    ld a, [$b9e4]                                 ; $66c7: $fa $e4 $b9

Call_058_66ca:
    ret nz                                        ; $66ca: $c0

    ret nz                                        ; $66cb: $c0

    push hl                                       ; $66cc: $e5
    cp [hl]                                       ; $66cd: $be
    call nz, $c0b7                                ; $66ce: $c4 $b7 $c0
    pop de                                        ; $66d1: $d1
    inc l                                         ; $66d2: $2c
    ret nz                                        ; $66d3: $c0

    ld [c], a                                     ; $66d4: $e2
    ld a, [$7be3]                                 ; $66d5: $fa $e3 $7b
    rst $08                                       ; $66d8: $cf
    inc l                                         ; $66d9: $2c
    cp a                                          ; $66da: $bf
    add sp, $2b                                   ; $66db: $e8 $2b
    dec hl                                        ; $66dd: $2b
    add b                                         ; $66de: $80
    ld a, [hl-]                                   ; $66df: $3a
    pop bc                                        ; $66e0: $c1
    jr c, jr_058_66a3                             ; $66e1: $38 $c0

    ld c, b                                       ; $66e3: $48
    push bc                                       ; $66e4: $c5
    ld b, c                                       ; $66e5: $41
    jp nz, $c245                                  ; $66e6: $c2 $45 $c2

    cp e                                          ; $66e9: $bb
    ld [c], a                                     ; $66ea: $e2
    ld a, d                                       ; $66eb: $7a
    pop af                                        ; $66ec: $f1
    inc l                                         ; $66ed: $2c
    ld bc, $ff4c                                  ; $66ee: $01 $4c $ff
    add $ba                                       ; $66f1: $c6 $ba
    ret nz                                        ; $66f3: $c0

    cp [hl]                                       ; $66f4: $be
    ldh [$c0], a                                  ; $66f5: $e0 $c0
    rst $20                                       ; $66f7: $e7
    ld b, b                                       ; $66f8: $40
    push hl                                       ; $66f9: $e5
    pop bc                                        ; $66fa: $c1
    db $e3                                        ; $66fb: $e3
    cp d                                          ; $66fc: $ba
    db $e4                                        ; $66fd: $e4
    inc e                                         ; $66fe: $1c
    ret nz                                        ; $66ff: $c0

    xor $7f                                       ; $6700: $ee $7f
    ld [c], a                                     ; $6702: $e2
    dec hl                                        ; $6703: $2b

jr_058_6704:
    dec hl                                        ; $6704: $2b
    dec hl                                        ; $6705: $2b
    add d                                         ; $6706: $82
    ldh [$7a], a                                  ; $6707: $e0 $7a
    call nz, $e100                                ; $6709: $c4 $00 $e1
    nop                                           ; $670c: $00
    ld a, a                                       ; $670d: $7f
    db $d3                                        ; $670e: $d3
    ld a, d                                       ; $670f: $7a
    db $e3                                        ; $6710: $e3
    ld e, e                                       ; $6711: $5b
    res 7, a                                      ; $6712: $cb $bf
    pop hl                                        ; $6714: $e1
    pop bc                                        ; $6715: $c1
    ldh [$fd], a                                  ; $6716: $e0 $fd
    pop hl                                        ; $6718: $e1
    ld a, [hl-]                                   ; $6719: $3a
    jp nz, $a178                                  ; $671a: $c2 $78 $a1

    nop                                           ; $671d: $00
    jp $80a6                                      ; $671e: $c3 $a6 $80


    and l                                         ; $6721: $a5
    add b                                         ; $6722: $80
    rst $20                                       ; $6723: $e7
    ld h, c                                       ; $6724: $61
    and h                                         ; $6725: $a4
    ld [hl], c                                    ; $6726: $71
    xor b                                         ; $6727: $a8
    ld a, $e0                                     ; $6728: $3e $e0
    ret nz                                        ; $672a: $c0

    add sp, $00                                   ; $672b: $e8 $00
    ld [c], a                                     ; $672d: $e2
    nop                                           ; $672e: $00
    ret nz                                        ; $672f: $c0

    jp $e83f                                      ; $6730: $c3 $3f $e8


    ld b, a                                       ; $6733: $47
    db $eb                                        ; $6734: $eb
    ld a, a                                       ; $6735: $7f
    db $f4                                        ; $6736: $f4
    db $fc                                        ; $6737: $fc
    add d                                         ; $6738: $82
    or h                                          ; $6739: $b4
    and c                                         ; $673a: $a1
    add c                                         ; $673b: $81
    call nz, $c23b                                ; $673c: $c4 $3b $c2
    db $10                                        ; $673f: $10
    ret nz                                        ; $6740: $c0

    xor e                                         ; $6741: $ab
    ld b, b                                       ; $6742: $40
    ldh a, [rNR51]                                ; $6743: $f0 $25
    and b                                         ; $6745: $a0
    add [hl]                                      ; $6746: $86
    pop bc                                        ; $6747: $c1
    ld l, e                                       ; $6748: $6b
    cp l                                          ; $6749: $bd
    add c                                         ; $674a: $81
    cp $e0                                        ; $674b: $fe $e0
    ld [hl], h                                    ; $674d: $74
    and c                                         ; $674e: $a1
    nop                                           ; $674f: $00
    call nz, Call_058_6d89                        ; $6750: $c4 $89 $6d
    xor d                                         ; $6753: $aa
    pop bc                                        ; $6754: $c1
    add $2b                                       ; $6755: $c6 $2b
    jp $e7c0                                      ; $6757: $c3 $c0 $e7


    cp a                                          ; $675a: $bf
    ld [c], a                                     ; $675b: $e2
    pop bc                                        ; $675c: $c1
    ld [c], a                                     ; $675d: $e2
    or l                                          ; $675e: $b5
    pop bc                                        ; $675f: $c1
    ret nz                                        ; $6760: $c0

    ld e, h                                       ; $6761: $5c
    add sp, $3f                                   ; $6762: $e8 $3f
    xor h                                         ; $6764: $ac
    ccf                                           ; $6765: $3f
    and $77                                       ; $6766: $e6 $77
    ret                                           ; $6768: $c9


    dec a                                         ; $6769: $3d
    jp nz, $e702                                  ; $676a: $c2 $02 $e7

    ld l, e                                       ; $676d: $6b
    ld c, e                                       ; $676e: $4b
    nop                                           ; $676f: $00
    add l                                         ; $6770: $85
    add h                                         ; $6771: $84
    rst $38                                       ; $6772: $ff
    and l                                         ; $6773: $a5
    jp nz, $2aee                                  ; $6774: $c2 $ee $2a

    add b                                         ; $6777: $80
    jr nc, jr_058_6704                            ; $6778: $30 $8a

    rla                                           ; $677a: $17
    and $8a                                       ; $677b: $e6 $8a
    add e                                         ; $677d: $83
    ld c, e                                       ; $677e: $4b
    db $e3                                        ; $677f: $e3
    nop                                           ; $6780: $00
    ld [$8083], sp                                ; $6781: $08 $83 $80
    pop af                                        ; $6784: $f1
    inc h                                         ; $6785: $24
    and c                                         ; $6786: $a1
    ldh a, [$66]                                  ; $6787: $f0 $66
    ld e, d                                       ; $6789: $5a
    and l                                         ; $678a: $a5
    ret nz                                        ; $678b: $c0

    db $e4                                        ; $678c: $e4
    ret                                           ; $678d: $c9


    ld [hl], l                                    ; $678e: $75
    sub b                                         ; $678f: $90
    db $ed                                        ; $6790: $ed
    nop                                           ; $6791: $00
    db $f4                                        ; $6792: $f4
    db $ec                                        ; $6793: $ec
    sub l                                         ; $6794: $95
    call nz, $e37b                                ; $6795: $c4 $7b $e3
    ld e, d                                       ; $6798: $5a
    ret z                                         ; $6799: $c8

    db $db                                        ; $679a: $db
    ret z                                         ; $679b: $c8

    jr z, @-$73                                   ; $679c: $28 $8b

    ld [hl], b                                    ; $679e: $70
    ld h, b                                       ; $679f: $60
    ld l, [hl]                                    ; $67a0: $6e
    ld h, [hl]                                    ; $67a1: $66
    nop                                           ; $67a2: $00
    ld d, [hl]                                    ; $67a3: $56
    call nz, $a60b                                ; $67a4: $c4 $0b $a6
    cp c                                          ; $67a7: $b9
    add sp, -$40                                  ; $67a8: $e8 $c0
    db $f4                                        ; $67aa: $f4
    ld l, h                                       ; $67ab: $6c
    add d                                         ; $67ac: $82
    ld l, $67                                     ; $67ad: $2e $67
    ld d, $e4                                     ; $67af: $16 $e4
    add d                                         ; $67b1: $82
    ld l, d                                       ; $67b2: $6a
    nop                                           ; $67b3: $00
    adc d                                         ; $67b4: $8a
    ret nc                                        ; $67b5: $d0

    cp d                                          ; $67b6: $ba
    ld l, b                                       ; $67b7: $68
    rst $30                                       ; $67b8: $f7
    sub b                                         ; $67b9: $90
    jp nc, $c944                                  ; $67ba: $d2 $44 $c9

    ld [hl], c                                    ; $67bd: $71
    nop                                           ; $67be: $00
    ld h, [hl]                                    ; $67bf: $66
    inc [hl]                                      ; $67c0: $34
    and h                                         ; $67c1: $a4
    or a                                          ; $67c2: $b7
    adc d                                         ; $67c3: $8a
    nop                                           ; $67c4: $00
    ld c, d                                       ; $67c5: $4a
    and $77                                       ; $67c6: $e6 $77
    push bc                                       ; $67c8: $c5
    ret                                           ; $67c9: $c9


    ld l, a                                       ; $67ca: $6f
    ret nz                                        ; $67cb: $c0

    ld l, d                                       ; $67cc: $6a

Call_058_67cd:
    dec e                                         ; $67cd: $1d
    ld l, [hl]                                    ; $67ce: $6e
    ld b, a                                       ; $67cf: $47
    rst $00                                       ; $67d0: $c7
    ret                                           ; $67d1: $c9


    ld a, b                                       ; $67d2: $78
    ld b, [hl]                                    ; $67d3: $46
    add [hl]                                      ; $67d4: $86
    nop                                           ; $67d5: $00
    ld [hl], c                                    ; $67d6: $71
    ld h, h                                       ; $67d7: $64
    scf                                           ; $67d8: $37
    adc b                                         ; $67d9: $88
    ld e, d                                       ; $67da: $5a
    ld h, e                                       ; $67db: $63
    sub a                                         ; $67dc: $97
    ld h, c                                       ; $67dd: $61
    ret                                           ; $67de: $c9


    ld [hl], l                                    ; $67df: $75
    ld b, [hl]                                    ; $67e0: $46
    add a                                         ; $67e1: $87
    push bc                                       ; $67e2: $c5
    and l                                         ; $67e3: $a5
    rst $30                                       ; $67e4: $f7
    ld h, a                                       ; $67e5: $67
    nop                                           ; $67e6: $00
    add sp, $22                                   ; $67e7: $e8 $22
    sub $22                                       ; $67e9: $d6 $22
    ret                                           ; $67eb: $c9


    and l                                         ; $67ec: $a5
    ret                                           ; $67ed: $c9


    ld l, a                                       ; $67ee: $6f
    ret nz                                        ; $67ef: $c0

    ld h, [hl]                                    ; $67f0: $66
    ldh a, [$85]                                  ; $67f1: $f0 $85
    or d                                          ; $67f3: $b2
    inc l                                         ; $67f4: $2c
    sub d                                         ; $67f5: $92
    and a                                         ; $67f6: $a7
    nop                                           ; $67f7: $00
    ld a, a                                       ; $67f8: $7f
    sbc $72                                       ; $67f9: $de $72
    ld l, $96                                     ; $67fb: $2e $96
    ld b, h                                       ; $67fd: $44
    adc d                                         ; $67fe: $8a
    or l                                          ; $67ff: $b5
    add b                                         ; $6800: $80
    db $eb                                        ; $6801: $eb
    ld [hl], d                                    ; $6802: $72
    ld [hl-], a                                   ; $6803: $32
    ld d, e                                       ; $6804: $53
    jr c, jr_058_6847                             ; $6805: $38 $40

    xor $00                                       ; $6807: $ee $00
    xor c                                         ; $6809: $a9
    xor l                                         ; $680a: $ad
    ld d, e                                       ; $680b: $53
    add hl, sp                                    ; $680c: $39
    ld b, d                                       ; $680d: $42
    pop af                                        ; $680e: $f1
    xor c                                         ; $680f: $a9
    cp c                                          ; $6810: $b9
    adc d                                         ; $6811: $8a
    cp h                                          ; $6812: $bc
    add $89                                       ; $6813: $c6 $89
    or e                                          ; $6815: $b3
    adc l                                         ; $6816: $8d
    adc d                                         ; $6817: $8a
    or l                                          ; $6818: $b5
    nop                                           ; $6819: $00
    pop bc                                        ; $681a: $c1
    pop de                                        ; $681b: $d1
    ld [hl], d                                    ; $681c: $72
    dec l                                         ; $681d: $2d
    jp nz, Jump_058_5388                          ; $681e: $c2 $88 $53

    ld a, $72                                     ; $6821: $3e $72
    dec hl                                        ; $6823: $2b
    ld b, $a8                                     ; $6824: $06 $a8
    ld d, e                                       ; $6826: $53
    ld sp, $d341                                  ; $6827: $31 $41 $d3
    nop                                           ; $682a: $00
    xor c                                         ; $682b: $a9
    xor e                                         ; $682c: $ab
    ld l, l                                       ; $682d: $6d
    ld bc, $b88a                                  ; $682e: $01 $8a $b8
    ld bc, $81d6                                  ; $6831: $01 $d6 $81
    db $eb                                        ; $6834: $eb
    adc d                                         ; $6835: $8a
    or l                                          ; $6836: $b5
    sbc [hl]                                      ; $6837: $9e
    rst $18                                       ; $6838: $df
    pop af                                        ; $6839: $f1
    dec hl                                        ; $683a: $2b
    nop                                           ; $683b: $00
    add hl, bc                                    ; $683c: $09
    sub h                                         ; $683d: $94
    ld [hl], d                                    ; $683e: $72
    dec [hl]                                      ; $683f: $35
    pop hl                                        ; $6840: $e1
    db $fd                                        ; $6841: $fd
    rst $38                                       ; $6842: $ff
    ld h, $72                                     ; $6843: $26 $72
    dec sp                                        ; $6845: $3b
    ld d, e                                       ; $6846: $53

jr_058_6847:
    ld [hl], $6d                                  ; $6847: $36 $6d
    ld b, l                                       ; $6849: $45
    ld [hl], d                                    ; $684a: $72
    dec [hl]                                      ; $684b: $35
    nop                                           ; $684c: $00
    add c                                         ; $684d: $81
    jp z, $f1e1                                   ; $684e: $ca $e1 $f1

    ld h, $84                                     ; $6851: $26 $84
    ld [hl], d                                    ; $6853: $72
    dec [hl]                                      ; $6854: $35
    ld b, a                                       ; $6855: $47
    ld l, b                                       ; $6856: $68
    ld d, e                                       ; $6857: $53
    ld [hl-], a                                   ; $6858: $32
    db $e3                                        ; $6859: $e3
    sub b                                         ; $685a: $90
    add sp, $54                                   ; $685b: $e8 $54
    nop                                           ; $685d: $00
    ld d, e                                       ; $685e: $53
    ld [hl], $af                                  ; $685f: $36 $af
    ld h, a                                       ; $6861: $67
    ld [hl], d                                    ; $6862: $72
    ld [hl], $53                                  ; $6863: $36 $53
    ld [hl], $e6                                  ; $6865: $36 $e6
    and e                                         ; $6867: $a3
    daa                                           ; $6868: $27
    ld c, b                                       ; $6869: $48
    ld a, [c]                                     ; $686a: $f2
    inc d                                         ; $686b: $14
    ld d, e                                       ; $686c: $53
    dec [hl]                                      ; $686d: $35
    nop                                           ; $686e: $00
    ld b, b                                       ; $686f: $40
    and $81                                       ; $6870: $e6 $81
    call nz, Call_000_282a                        ; $6872: $c4 $2a $28
    ret nz                                        ; $6875: $c0

    rst $08                                       ; $6876: $cf
    pop hl                                        ; $6877: $e1
    db $f4                                        ; $6878: $f4
    or c                                          ; $6879: $b1
    inc h                                         ; $687a: $24
    ld e, [hl]                                    ; $687b: $5e
    ld c, d                                       ; $687c: $4a
    pop bc                                        ; $687d: $c1
    or b                                          ; $687e: $b0
    nop                                           ; $687f: $00
    pop hl                                        ; $6880: $e1
    db $f4                                        ; $6881: $f4
    ld b, b                                       ; $6882: $40
    push hl                                       ; $6883: $e5
    ld e, h                                       ; $6884: $5c
    jp hl                                         ; $6885: $e9


    rst $38                                       ; $6886: $ff
    rst $38                                       ; $6887: $ff
    adc h                                         ; $6888: $8c
    inc sp                                        ; $6889: $33
    db $ec                                        ; $688a: $ec
    sub a                                         ; $688b: $97
    rst $38                                       ; $688c: $ff
    rst $38                                       ; $688d: $ff
    rst $38                                       ; $688e: $ff
    rst $38                                       ; $688f: $ff
    nop                                           ; $6890: $00
    sub [hl]                                      ; $6891: $96
    rst $38                                       ; $6892: $ff
    ld a, [c]                                     ; $6893: $f2
    add hl, de                                    ; $6894: $19
    rst $38                                       ; $6895: $ff
    rst $38                                       ; $6896: $ff
    rst $38                                       ; $6897: $ff
    rst $38                                       ; $6898: $ff
    rst $38                                       ; $6899: $ff
    rst $38                                       ; $689a: $ff
    rst $38                                       ; $689b: $ff
    rst $38                                       ; $689c: $ff
    scf                                           ; $689d: $37
    db $ed                                        ; $689e: $ed
    call c, Call_000_00ff                         ; $689f: $dc $ff $00
    rst $38                                       ; $68a2: $ff
    rst $38                                       ; $68a3: $ff
    rst $38                                       ; $68a4: $ff
    rst $38                                       ; $68a5: $ff
    rst $38                                       ; $68a6: $ff
    rst $38                                       ; $68a7: $ff
    rst $38                                       ; $68a8: $ff
    rst $38                                       ; $68a9: $ff
    rst $38                                       ; $68aa: $ff
    rst $38                                       ; $68ab: $ff
    rst $38                                       ; $68ac: $ff
    rst $38                                       ; $68ad: $ff
    rst $38                                       ; $68ae: $ff
    rst $38                                       ; $68af: $ff
    rst $38                                       ; $68b0: $ff
    rst $38                                       ; $68b1: $ff
    nop                                           ; $68b2: $00
    rst $38                                       ; $68b3: $ff
    rst $38                                       ; $68b4: $ff
    rst $38                                       ; $68b5: $ff
    rst $38                                       ; $68b6: $ff
    rst $38                                       ; $68b7: $ff
    rst $38                                       ; $68b8: $ff
    rst $38                                       ; $68b9: $ff
    rst $38                                       ; $68ba: $ff
    rst $38                                       ; $68bb: $ff
    rst $38                                       ; $68bc: $ff

jr_058_68bd:
    rst $38                                       ; $68bd: $ff
    rst $38                                       ; $68be: $ff
    rst $38                                       ; $68bf: $ff
    rst $38                                       ; $68c0: $ff
    rst $38                                       ; $68c1: $ff
    rst $38                                       ; $68c2: $ff
    nop                                           ; $68c3: $00
    rst $38                                       ; $68c4: $ff
    rst $38                                       ; $68c5: $ff
    nop                                           ; $68c6: $00
    cp a                                          ; $68c7: $bf
    rst $38                                       ; $68c8: $ff
    rst $38                                       ; $68c9: $ff
    rst $38                                       ; $68ca: $ff
    rst $38                                       ; $68cb: $ff
    rst $38                                       ; $68cc: $ff
    rst $38                                       ; $68cd: $ff
    rst $38                                       ; $68ce: $ff
    rst $38                                       ; $68cf: $ff
    xor l                                         ; $68d0: $ad
    inc de                                        ; $68d1: $13
    nop                                           ; $68d2: $00
    nop                                           ; $68d3: $00
    nop                                           ; $68d4: $00
    db $fd                                        ; $68d5: $fd
    ld e, e                                       ; $68d6: $5b
    rst $38                                       ; $68d7: $ff
    ldh [$5f], a                                  ; $68d8: $e0 $5f
    ld sp, $3a4d                                  ; $68da: $31 $4d $3a
    dec sp                                        ; $68dd: $3b
    ld c, l                                       ; $68de: $4d
    ld e, a                                       ; $68df: $5f
    ld sp, $2b31                                  ; $68e0: $31 $31 $2b
    inc l                                         ; $68e3: $2c
    jr nz, @+$01                                  ; $68e4: $20 $ff

    ld [c], a                                     ; $68e6: $e2
    nop                                           ; $68e7: $00
    rst $38                                       ; $68e8: $ff
    rst $38                                       ; $68e9: $ff
    cp $e7                                        ; $68ea: $fe $e7
    and $5b                                       ; $68ec: $e6 $5b
    ld e, d                                       ; $68ee: $5a
    ld e, e                                       ; $68ef: $5b
    ld e, e                                       ; $68f0: $5b
    ld e, [hl]                                    ; $68f1: $5e
    ld sp, $7f39                                  ; $68f2: $31 $39 $7f
    ld l, l                                       ; $68f5: $6d
    ld l, l                                       ; $68f6: $6d
    add hl, sp                                    ; $68f7: $39
    ld sp, $1731                                  ; $68f8: $31 $31 $17
    jr z, jr_058_68bd                             ; $68fb: $28 $c0

    rst $38                                       ; $68fd: $ff
    db $fc                                        ; $68fe: $fc
    xor $ed                                       ; $68ff: $ee $ed
    pop bc                                        ; $6901: $c1
    ldh [$5f], a                                  ; $6902: $e0 $5f
    ld sp, $4849                                  ; $6904: $31 $49 $48
    ld l, l                                       ; $6907: $6d
    ld l, l                                       ; $6908: $6d
    ld e, a                                       ; $6909: $5f
    ld c, b                                       ; $690a: $48
    ld c, c                                       ; $690b: $49
    ld sp, $1615                                  ; $690c: $31 $15 $16
    ret nz                                        ; $690f: $c0

    ld [c], a                                     ; $6910: $e2
    ld [$ffca], sp                                ; $6911: $08 $ca $ff
    ld e, h                                       ; $6914: $5c
    add b                                         ; $6915: $80
    add sp, -$7f                                  ; $6916: $e8 $81
    pop hl                                        ; $6918: $e1
    ld d, c                                       ; $6919: $51
    ld l, d                                       ; $691a: $6a
    ld l, l                                       ; $691b: $6d
    ld a, a                                       ; $691c: $7f
    add sp, $15                                   ; $691d: $e8 $15
    jp z, $beff                                   ; $691f: $ca $ff $be

    ret nz                                        ; $6922: $c0

    jp hl                                         ; $6923: $e9


    ld h, b                                       ; $6924: $60
    ld sp, $5131                                  ; $6925: $31 $31 $51
    ld h, a                                       ; $6928: $67
    cp a                                          ; $6929: $bf
    ldh [$93], a                                  ; $692a: $e0 $93
    ld e, a                                       ; $692c: $5f
    sub l                                         ; $692d: $95
    ld sp, $2715                                  ; $692e: $31 $15 $27
    ld [hl+], a                                   ; $6931: $22
    ld b, d                                       ; $6932: $42
    ldh [$31], a                                  ; $6933: $e0 $31
    jp z, $9eff                                   ; $6935: $ca $ff $9e

    add sp, -$19                                  ; $6938: $e8 $e7
    ld h, d                                       ; $693a: $62
    ld h, d                                       ; $693b: $62
    ld sp, $0131                                  ; $693c: $31 $31 $01
    ldh [$bf], a                                  ; $693f: $e0 $bf
    ldh [$30], a                                  ; $6941: $e0 $30
    ld a, a                                       ; $6943: $7f
    sbc l                                         ; $6944: $9d
    sub l                                         ; $6945: $95
    ld sp, $1211                                  ; $6946: $31 $11 $12
    ld hl, $c028                                  ; $6949: $21 $28 $c0
    rst $38                                       ; $694c: $ff
    cp h                                          ; $694d: $bc
    ld [$c2e9], a                                 ; $694e: $ea $e9 $c2
    ldh [$31], a                                  ; $6951: $e0 $31
    ld sp, $6d53                                  ; $6953: $31 $53 $6d
    cp a                                          ; $6956: $bf
    ldh [$30], a                                  ; $6957: $e0 $30
    cpl                                           ; $6959: $2f
    sbc l                                         ; $695a: $9d
    add [hl]                                      ; $695b: $86
    sub l                                         ; $695c: $95
    ld sp, $e0be                                  ; $695d: $31 $be $e0
    rrca                                          ; $6960: $0f
    ret nz                                        ; $6961: $c0

    rst $38                                       ; $6962: $ff
    jp hl                                         ; $6963: $e9


    add sp, -$0b                                  ; $6964: $e8 $f5
    add hl, hl                                    ; $6966: $29
    cp a                                          ; $6967: $bf
    pop hl                                        ; $6968: $e1
    ld d, d                                       ; $6969: $52
    ld bc, $65e0                                  ; $696a: $01 $e0 $65
    ld h, l                                       ; $696d: $65
    sub h                                         ; $696e: $94
    sbc h                                         ; $696f: $9c
    rst $00                                       ; $6970: $c7
    sbc h                                         ; $6971: $9c
    sub [hl]                                      ; $6972: $96
    sub a                                         ; $6973: $97
    or b                                          ; $6974: $b0
    pop hl                                        ; $6975: $e1
    jp z, $e8ff                                   ; $6976: $ca $ff $e8

    rst $20                                       ; $6979: $e7
    ld d, $15                                     ; $697a: $16 $15
    cp [hl]                                       ; $697c: $be
    add b                                         ; $697d: $80
    pop hl                                        ; $697e: $e1
    ld l, c                                       ; $697f: $69
    ld l, l                                       ; $6980: $6d
    ld l, l                                       ; $6981: $6d
    ld l, h                                       ; $6982: $6c
    ld l, h                                       ; $6983: $6c
    cp l                                          ; $6984: $bd
    ldh [$99], a                                  ; $6985: $e0 $99
    or e                                          ; $6987: $b3
    sbc b                                         ; $6988: $98
    ld c, c                                       ; $6989: $49
    ret nz                                        ; $698a: $c0

    rst $38                                       ; $698b: $ff
    db $eb                                        ; $698c: $eb
    ld [$1728], a                                 ; $698d: $ea $28 $17
    add b                                         ; $6990: $80
    pop hl                                        ; $6991: $e1
    ld l, c                                       ; $6992: $69
    rst $38                                       ; $6993: $ff
    ld l, c                                       ; $6994: $69
    ld l, l                                       ; $6995: $6d
    ld l, h                                       ; $6996: $6c
    ld l, l                                       ; $6997: $6d
    ld h, a                                       ; $6998: $67
    ld l, h                                       ; $6999: $6c
    ld l, h                                       ; $699a: $6c
    ld h, a                                       ; $699b: $67
    ret c                                         ; $699c: $d8

    ld sp, hl                                     ; $699d: $f9
    and c                                         ; $699e: $a1
    ret nz                                        ; $699f: $c0

    rst $38                                       ; $69a0: $ff
    jp hl                                         ; $69a1: $e9


    add sp, $20                                   ; $69a2: $e8 $20
    ld d, $3e                                     ; $69a4: $16 $3e
    ldh [$39], a                                  ; $69a6: $e0 $39
    ld l, c                                       ; $69a8: $69
    ld l, a                                       ; $69a9: $6f
    ld l, c                                       ; $69aa: $69
    ld l, e                                       ; $69ab: $6b
    ld l, l                                       ; $69ac: $6d
    ld h, a                                       ; $69ad: $67
    cp l                                          ; $69ae: $bd
    ldh [rOCPD], a                                ; $69af: $e0 $6b
    ld h, [hl]                                    ; $69b1: $66
    ld sp, hl                                     ; $69b2: $f9
    and b                                         ; $69b3: $a0
    db $f4                                        ; $69b4: $f4
    ret nz                                        ; $69b5: $c0

    rst $38                                       ; $69b6: $ff
    ret nz                                        ; $69b7: $c0

    jp hl                                         ; $69b8: $e9


    jr nz, jr_058_69f9                            ; $69b9: $20 $3e

    ldh [rOBP1], a                                ; $69bb: $e0 $49
    ld c, b                                       ; $69bd: $48
    ld l, c                                       ; $69be: $69
    ld l, e                                       ; $69bf: $6b
    ld e, a                                       ; $69c0: $5f
    ld h, [hl]                                    ; $69c1: $66
    ld l, e                                       ; $69c2: $6b
    ld l, l                                       ; $69c3: $6d
    jr nc, jr_058_6a31                            ; $69c4: $30 $6b

    ld a, [$50e0]                                 ; $69c6: $fa $e0 $50
    ret nz                                        ; $69c9: $c0

    rst $38                                       ; $69ca: $ff
    inc h                                         ; $69cb: $24
    ret nz                                        ; $69cc: $c0

    db $eb                                        ; $69cd: $eb
    ld a, $e1                                     ; $69ce: $3e $e1
    add hl, sp                                    ; $69d0: $39
    ret nz                                        ; $69d1: $c0

    ld [c], a                                     ; $69d2: $e2
    add b                                         ; $69d3: $80
    ld [c], a                                     ; $69d4: $e2
    xor a                                         ; $69d5: $af
    ret nz                                        ; $69d6: $c0

    rst $38                                       ; $69d7: $ff
    add b                                         ; $69d8: $80
    db $eb                                        ; $69d9: $eb
    xor [hl]                                      ; $69da: $ae
    rst $08                                       ; $69db: $cf
    and b                                         ; $69dc: $a0
    ld sp, $324d                                  ; $69dd: $31 $4d $32
    ld a, $c0                                     ; $69e0: $3e $c0

Call_058_69e2:
    ld l, h                                       ; $69e2: $6c
    nop                                           ; $69e3: $00
    pop hl                                        ; $69e4: $e1
    add e                                         ; $69e5: $83
    pop af                                        ; $69e6: $f1
    add c                                         ; $69e7: $81
    ret nz                                        ; $69e8: $c0

    rst $38                                       ; $69e9: $ff
    ret nz                                        ; $69ea: $c0

    rst $28                                       ; $69eb: $ef
    cp a                                          ; $69ec: $bf
    ld [c], a                                     ; $69ed: $e2
    ld h, l                                       ; $69ee: $65
    ld h, l                                       ; $69ef: $65
    ld h, l                                       ; $69f0: $65
    ld l, l                                       ; $69f1: $6d
    ld c, a                                       ; $69f2: $4f
    ld [hl], $84                                  ; $69f3: $36 $84
    xor c                                         ; $69f5: $a9
    xor e                                         ; $69f6: $ab
    ret nz                                        ; $69f7: $c0

    rst $38                                       ; $69f8: $ff

jr_058_69f9:
    add b                                         ; $69f9: $80
    db $eb                                        ; $69fa: $eb
    jr z, jr_058_6a3a                             ; $69fb: $28 $3d

    pop bc                                        ; $69fd: $c1
    rst $38                                       ; $69fe: $ff
    ld c, l                                       ; $69ff: $4d
    ld b, l                                       ; $6a00: $45
    ld d, h                                       ; $6a01: $54
    ld d, h                                       ; $6a02: $54
    ld d, l                                       ; $6a03: $55
    ld d, h                                       ; $6a04: $54
    ld l, [hl]                                    ; $6a05: $6e
    ld l, a                                       ; $6a06: $6f
    rrca                                          ; $6a07: $0f
    add b                                         ; $6a08: $80
    add b                                         ; $6a09: $80
    xor d                                         ; $6a0a: $aa
    ld e, b                                       ; $6a0b: $58
    jp z, $ffff                                   ; $6a0c: $ca $ff $ff

    rst $38                                       ; $6a0f: $ff
    rst $38                                       ; $6a10: $ff
    rst $38                                       ; $6a11: $ff
    rst $38                                       ; $6a12: $ff
    rst $38                                       ; $6a13: $ff
    nop                                           ; $6a14: $00
    rst $38                                       ; $6a15: $ff
    rst $38                                       ; $6a16: $ff
    rst $38                                       ; $6a17: $ff
    rst $38                                       ; $6a18: $ff
    rst $38                                       ; $6a19: $ff
    rst $38                                       ; $6a1a: $ff
    rst $38                                       ; $6a1b: $ff
    rst $38                                       ; $6a1c: $ff
    rst $38                                       ; $6a1d: $ff
    rst $38                                       ; $6a1e: $ff
    rst $38                                       ; $6a1f: $ff
    rst $38                                       ; $6a20: $ff
    rst $38                                       ; $6a21: $ff
    rst $38                                       ; $6a22: $ff
    rst $38                                       ; $6a23: $ff
    rst $38                                       ; $6a24: $ff
    nop                                           ; $6a25: $00
    rst $38                                       ; $6a26: $ff
    rst $38                                       ; $6a27: $ff
    rst $38                                       ; $6a28: $ff
    rst $38                                       ; $6a29: $ff
    rst $38                                       ; $6a2a: $ff
    rst $38                                       ; $6a2b: $ff
    rst $38                                       ; $6a2c: $ff
    rst $38                                       ; $6a2d: $ff
    rst $38                                       ; $6a2e: $ff
    rst $38                                       ; $6a2f: $ff
    rst $38                                       ; $6a30: $ff

jr_058_6a31:
    rst $38                                       ; $6a31: $ff
    rst $38                                       ; $6a32: $ff
    rst $38                                       ; $6a33: $ff
    rst $38                                       ; $6a34: $ff
    rst $38                                       ; $6a35: $ff
    nop                                           ; $6a36: $00
    rst $38                                       ; $6a37: $ff
    rst $38                                       ; $6a38: $ff
    rst $38                                       ; $6a39: $ff

jr_058_6a3a:
    rst $38                                       ; $6a3a: $ff
    rst $38                                       ; $6a3b: $ff
    rst $38                                       ; $6a3c: $ff
    rst $38                                       ; $6a3d: $ff
    rst $38                                       ; $6a3e: $ff
    rst $38                                       ; $6a3f: $ff
    rst $38                                       ; $6a40: $ff
    rst $38                                       ; $6a41: $ff
    rst $38                                       ; $6a42: $ff
    rst $38                                       ; $6a43: $ff
    rst $38                                       ; $6a44: $ff
    rst $38                                       ; $6a45: $ff
    rst $38                                       ; $6a46: $ff
    nop                                           ; $6a47: $00
    rst $38                                       ; $6a48: $ff
    rst $38                                       ; $6a49: $ff
    rst $38                                       ; $6a4a: $ff
    rst $38                                       ; $6a4b: $ff
    rst $38                                       ; $6a4c: $ff
    rst $38                                       ; $6a4d: $ff
    rst $38                                       ; $6a4e: $ff
    rst $38                                       ; $6a4f: $ff
    rst $38                                       ; $6a50: $ff
    rst $38                                       ; $6a51: $ff
    rst $38                                       ; $6a52: $ff
    rst $38                                       ; $6a53: $ff
    rst $38                                       ; $6a54: $ff
    rst $38                                       ; $6a55: $ff
    rst $38                                       ; $6a56: $ff
    rst $38                                       ; $6a57: $ff
    nop                                           ; $6a58: $00
    rst $38                                       ; $6a59: $ff
    rst $38                                       ; $6a5a: $ff
    rst $38                                       ; $6a5b: $ff
    rst $38                                       ; $6a5c: $ff
    rst $38                                       ; $6a5d: $ff
    rst $38                                       ; $6a5e: $ff
    rst $38                                       ; $6a5f: $ff
    rst $38                                       ; $6a60: $ff
    rst $38                                       ; $6a61: $ff
    rst $38                                       ; $6a62: $ff
    rst $38                                       ; $6a63: $ff
    rst $38                                       ; $6a64: $ff
    rst $38                                       ; $6a65: $ff
    rst $38                                       ; $6a66: $ff
    rst $38                                       ; $6a67: $ff
    rst $38                                       ; $6a68: $ff
    nop                                           ; $6a69: $00
    rst $38                                       ; $6a6a: $ff
    rst $38                                       ; $6a6b: $ff
    rst $38                                       ; $6a6c: $ff
    rst $38                                       ; $6a6d: $ff
    rst $38                                       ; $6a6e: $ff

Jump_058_6a6f:
    rst $38                                       ; $6a6f: $ff
    rst $38                                       ; $6a70: $ff
    rst $38                                       ; $6a71: $ff
    rst $38                                       ; $6a72: $ff
    rst $38                                       ; $6a73: $ff
    rst $38                                       ; $6a74: $ff
    rst $38                                       ; $6a75: $ff
    rst $38                                       ; $6a76: $ff
    rst $38                                       ; $6a77: $ff
    rst $38                                       ; $6a78: $ff
    rst $38                                       ; $6a79: $ff
    nop                                           ; $6a7a: $00
    rst $38                                       ; $6a7b: $ff
    rst $38                                       ; $6a7c: $ff
    rst $38                                       ; $6a7d: $ff
    rst $38                                       ; $6a7e: $ff
    rst $38                                       ; $6a7f: $ff
    rst $38                                       ; $6a80: $ff
    rst $38                                       ; $6a81: $ff
    rst $38                                       ; $6a82: $ff
    rst $38                                       ; $6a83: $ff
    rst $38                                       ; $6a84: $ff
    rst $38                                       ; $6a85: $ff
    rst $38                                       ; $6a86: $ff
    rst $38                                       ; $6a87: $ff
    rst $38                                       ; $6a88: $ff
    rst $38                                       ; $6a89: $ff
    rst $38                                       ; $6a8a: $ff
    nop                                           ; $6a8b: $00
    rst $38                                       ; $6a8c: $ff
    rst $38                                       ; $6a8d: $ff
    rst $38                                       ; $6a8e: $ff
    rst $38                                       ; $6a8f: $ff
    rst $38                                       ; $6a90: $ff
    rst $38                                       ; $6a91: $ff
    rst $38                                       ; $6a92: $ff
    rst $38                                       ; $6a93: $ff
    rst $38                                       ; $6a94: $ff
    rst $38                                       ; $6a95: $ff
    rst $38                                       ; $6a96: $ff
    rst $38                                       ; $6a97: $ff
    rst $38                                       ; $6a98: $ff
    rst $38                                       ; $6a99: $ff
    rst $38                                       ; $6a9a: $ff
    rst $38                                       ; $6a9b: $ff
    nop                                           ; $6a9c: $00
    rst $38                                       ; $6a9d: $ff
    rst $38                                       ; $6a9e: $ff
    rst $38                                       ; $6a9f: $ff
    rst $38                                       ; $6aa0: $ff
    rst $38                                       ; $6aa1: $ff
    rst $38                                       ; $6aa2: $ff
    rst $38                                       ; $6aa3: $ff
    rst $38                                       ; $6aa4: $ff
    rst $38                                       ; $6aa5: $ff
    rst $38                                       ; $6aa6: $ff
    rst $38                                       ; $6aa7: $ff
    rst $38                                       ; $6aa8: $ff
    rst $38                                       ; $6aa9: $ff
    rst $38                                       ; $6aaa: $ff
    rst $38                                       ; $6aab: $ff
    rst $38                                       ; $6aac: $ff
    nop                                           ; $6aad: $00
    rst $38                                       ; $6aae: $ff
    rst $38                                       ; $6aaf: $ff
    rst $38                                       ; $6ab0: $ff
    rst $38                                       ; $6ab1: $ff
    rst $38                                       ; $6ab2: $ff
    rst $38                                       ; $6ab3: $ff
    rst $38                                       ; $6ab4: $ff
    rst $38                                       ; $6ab5: $ff
    rst $38                                       ; $6ab6: $ff
    rst $38                                       ; $6ab7: $ff
    rst $38                                       ; $6ab8: $ff
    rst $38                                       ; $6ab9: $ff
    rst $38                                       ; $6aba: $ff
    rst $38                                       ; $6abb: $ff
    rst $38                                       ; $6abc: $ff
    rst $38                                       ; $6abd: $ff
    nop                                           ; $6abe: $00
    rst $38                                       ; $6abf: $ff
    rst $38                                       ; $6ac0: $ff
    rst $38                                       ; $6ac1: $ff
    rst $38                                       ; $6ac2: $ff
    rst $38                                       ; $6ac3: $ff
    rst $38                                       ; $6ac4: $ff
    rst $38                                       ; $6ac5: $ff
    rst $38                                       ; $6ac6: $ff
    rst $38                                       ; $6ac7: $ff
    rst $38                                       ; $6ac8: $ff
    rst $38                                       ; $6ac9: $ff
    rst $38                                       ; $6aca: $ff
    rst $38                                       ; $6acb: $ff
    rst $38                                       ; $6acc: $ff
    rst $38                                       ; $6acd: $ff
    di                                            ; $6ace: $f3
    nop                                           ; $6acf: $00
    nop                                           ; $6ad0: $00
    nop                                           ; $6ad1: $00
    and l                                         ; $6ad2: $a5
    nop                                           ; $6ad3: $00
    rst $38                                       ; $6ad4: $ff
    push hl                                       ; $6ad5: $e5
    ld [hl-], a                                   ; $6ad6: $32
    or $e6                                        ; $6ad7: $f6 $e6
    rst $30                                       ; $6ad9: $f7
    rst $20                                       ; $6ada: $e7
    dec [hl]                                      ; $6adb: $35
    db $ec                                        ; $6adc: $ec
    xor $37                                       ; $6add: $ee $37
    db $ec                                        ; $6adf: $ec
    jp c, $c7f0                                   ; $6ae0: $da $f0 $c7

    add sp, $33                                   ; $6ae3: $e8 $33
    ld sp, $f2e0                                  ; $6ae5: $31 $e0 $f2
    ld [hl], $30                                  ; $6ae8: $36 $30
    scf                                           ; $6aea: $37
    cp a                                          ; $6aeb: $bf
    ld h, $20                                     ; $6aec: $26 $20
    daa                                           ; $6aee: $27
    db $10                                        ; $6aef: $10
    ld d, $17                                     ; $6af0: $16 $17
    jp nz, Jump_000_34f6                          ; $6af2: $c2 $f6 $34

    rst $38                                       ; $6af5: $ff
    ld [hl], $32                                  ; $6af6: $36 $32
    jr nc, jr_058_6b31                            ; $6af8: $30 $37

    ld sp, $3133                                  ; $6afa: $31 $33 $31
    inc sp                                        ; $6afd: $33
    nop                                           ; $6afe: $00
    and b                                         ; $6aff: $a0
    ei                                            ; $6b00: $fb
    rst $38                                       ; $6b01: $ff
    rst $28                                       ; $6b02: $ef
    nop                                           ; $6b03: $00
    nop                                           ; $6b04: $00
    nop                                           ; $6b05: $00
    ld c, $6b                                     ; $6b06: $0e $6b
    ld a, $6b                                     ; $6b08: $3e $6b
    pop hl                                        ; $6b0a: $e1
    ld l, l                                       ; $6b0b: $6d
    ret nz                                        ; $6b0c: $c0

    ld l, a                                       ; $6b0d: $6f
    ld hl, sp+$03                                 ; $6b0e: $f8 $03
    ld c, h                                       ; $6b10: $4c
    inc bc                                        ; $6b11: $03
    ld d, e                                       ; $6b12: $53
    ld bc, $008a                                  ; $6b13: $01 $8a $00
    ldh a, [$03]                                  ; $6b16: $f0 $03
    ld hl, sp+$03                                 ; $6b18: $f8 $03
    ld c, h                                       ; $6b1a: $4c
    inc bc                                        ; $6b1b: $03
    ld d, e                                       ; $6b1c: $53
    ld bc, $47ff                                  ; $6b1d: $01 $ff $47
    ldh a, [rP1]                                  ; $6b20: $f0 $00
    ld e, l                                       ; $6b22: $5d
    add hl, de                                    ; $6b23: $19
    ld c, h                                       ; $6b24: $4c
    inc bc                                        ; $6b25: $03

jr_058_6b26:
    ld [$0825], sp                                ; $6b26: $08 $25 $08
    dec h                                         ; $6b29: $25
    ld [$0825], sp                                ; $6b2a: $08 $25 $08
    dec h                                         ; $6b2d: $25
    ld [$0825], sp                                ; $6b2e: $08 $25 $08

jr_058_6b31:
    dec h                                         ; $6b31: $25

Jump_058_6b32:
    ld [$0825], sp                                ; $6b32: $08 $25 $08
    dec h                                         ; $6b35: $25
    ld [$0825], sp                                ; $6b36: $08 $25 $08
    dec h                                         ; $6b39: $25
    ld [$0825], sp                                ; $6b3a: $08 $25 $08
    dec h                                         ; $6b3d: $25
    cp l                                          ; $6b3e: $bd
    ld c, e                                       ; $6b3f: $4b
    rst $38                                       ; $6b40: $ff
    pop hl                                        ; $6b41: $e1
    dec bc                                        ; $6b42: $0b
    dec bc                                        ; $6b43: $0b
    ld l, e                                       ; $6b44: $6b
    dec bc                                        ; $6b45: $0b
    rst $38                                       ; $6b46: $ff
    ld [c], a                                     ; $6b47: $e2
    ld c, e                                       ; $6b48: $4b
    ld a, e                                       ; $6b49: $7b
    dec bc                                        ; $6b4a: $0b
    dec hl                                        ; $6b4b: $2b
    rst $28                                       ; $6b4c: $ef
    ldh [$0c], a                                  ; $6b4d: $e0 $0c
    ld c, h                                       ; $6b4f: $4c
    inc c                                         ; $6b50: $0c
    ld c, h                                       ; $6b51: $4c
    rst $38                                       ; $6b52: $ff
    ldh [$03], a                                  ; $6b53: $e0 $03
    inc c                                         ; $6b55: $0c
    inc c                                         ; $6b56: $0c
    rst $30                                       ; $6b57: $f7
    ldh [$fd], a                                  ; $6b58: $e0 $fd
    pop hl                                        ; $6b5a: $e1
    ld hl, sp-$1b                                 ; $6b5b: $f8 $e5
    push af                                       ; $6b5d: $f5
    ld [c], a                                     ; $6b5e: $e2
    db $fc                                        ; $6b5f: $fc
    db $ec                                        ; $6b60: $ec
    ret nc                                        ; $6b61: $d0

    pop hl                                        ; $6b62: $e1
    jr jr_058_6b26                                ; $6b63: $18 $c1

    ldh [$c0], a                                  ; $6b65: $e0 $c0
    push hl                                       ; $6b67: $e5
    cp a                                          ; $6b68: $bf
    ldh [$0a], a                                  ; $6b69: $e0 $0a
    ld c, e                                       ; $6b6b: $4b
    reti                                          ; $6b6c: $d9


    ld [c], a                                     ; $6b6d: $e2
    ret nz                                        ; $6b6e: $c0

    ldh [$fd], a                                  ; $6b6f: $e0 $fd
    push hl                                       ; $6b71: $e5
    nop                                           ; $6b72: $00
    or l                                          ; $6b73: $b5
    and $bc                                       ; $6b74: $e6 $bc
    ldh a, [$8f]                                  ; $6b76: $f0 $8f
    ldh [$82], a                                  ; $6b78: $e0 $82
    and $bf                                       ; $6b7a: $e6 $bf
    db $e3                                        ; $6b7c: $e3
    add b                                         ; $6b7d: $80
    ld [c], a                                     ; $6b7e: $e2
    ret nz                                        ; $6b7f: $c0

    rst $20                                       ; $6b80: $e7
    ld [hl], h                                    ; $6b81: $74

Jump_058_6b82:
    ldh [rP1], a                                  ; $6b82: $e0 $00
    or d                                          ; $6b84: $b2
    and $6e                                       ; $6b85: $e6 $6e
    db $e3                                        ; $6b87: $e3
    ret nz                                        ; $6b88: $c0

    db $eb                                        ; $6b89: $eb
    ld b, a                                       ; $6b8a: $47
    ldh [$c1], a                                  ; $6b8b: $e0 $c1
    rst $20                                       ; $6b8d: $e7
    ld a, h                                       ; $6b8e: $7c
    db $e3                                        ; $6b8f: $e3
    push de                                       ; $6b90: $d5
    push hl                                       ; $6b91: $e5
    call z, Call_058_50e3                         ; $6b92: $cc $e3 $50
    adc d                                         ; $6b95: $8a
    db $e4                                        ; $6b96: $e4
    dec [hl]                                      ; $6b97: $35
    ld [c], a                                     ; $6b98: $e2
    cp h                                          ; $6b99: $bc

jr_058_6b9a:
    db $e3                                        ; $6b9a: $e3
    add hl, sp                                    ; $6b9b: $39
    jp hl                                         ; $6b9c: $e9


    ld c, h                                       ; $6b9d: $4c
    ret nz                                        ; $6b9e: $c0

    xor $0b                                       ; $6b9f: $ee $0b
    ld b, b                                       ; $6ba1: $40
    ld [c], a                                     ; $6ba2: $e2
    inc h                                         ; $6ba3: $24
    add d                                         ; $6ba4: $82
    and $40                                       ; $6ba5: $e6 $40
    rst $28                                       ; $6ba7: $ef
    inc l                                         ; $6ba8: $2c
    ld sp, hl                                     ; $6ba9: $f9
    jp $e3f9                                      ; $6baa: $c3 $f9 $e3


    inc l                                         ; $6bad: $2c
    inc bc                                        ; $6bae: $03
    rst $20                                       ; $6baf: $e7
    dec sp                                        ; $6bb0: $3b
    push hl                                       ; $6bb1: $e5
    ld h, c                                       ; $6bb2: $61
    ld a, [bc]                                    ; $6bb3: $0a
    nop                                           ; $6bb4: $00
    db $e3                                        ; $6bb5: $e3
    ld a, [$3fe8]                                 ; $6bb6: $fa $e8 $3f
    add sp, -$44                                  ; $6bb9: $e8 $bc
    call Call_058_4c2c                            ; $6bbb: $cd $2c $4c
    jp Jump_000_20c9                              ; $6bbe: $c3 $c9 $20


    ld b, b                                       ; $6bc1: $40

Call_058_6bc2:
    db $e4                                        ; $6bc2: $e4
    ld h, d                                       ; $6bc3: $62
    rst $20                                       ; $6bc4: $e7
    ld c, $e5                                     ; $6bc5: $0e $e5
    ld [hl], a                                    ; $6bc7: $77
    add $c0                                       ; $6bc8: $c6 $c0
    xor $2c                                       ; $6bca: $ee $2c
    add e                                         ; $6bcc: $83
    ret nz                                        ; $6bcd: $c0

    ld b, d                                       ; $6bce: $42
    jp nz, Jump_058_4b03                          ; $6bcf: $c2 $03 $4b

    ld c, e                                       ; $6bd2: $4b
    dec sp                                        ; $6bd3: $3b
    jp $e1c0                                      ; $6bd4: $c3 $c0 $e1


    sub e                                         ; $6bd7: $93
    jp $c5c0                                      ; $6bd8: $c3 $c0 $c5


    inc [hl]                                      ; $6bdb: $34
    jp $d1c2                                      ; $6bdc: $c3 $c2 $d1


    ld a, $1d                                     ; $6bdf: $3e $1d

Jump_058_6be1:
    ret nz                                        ; $6be1: $c0

Call_058_6be2:
    ld l, h                                       ; $6be2: $6c
    dec bc                                        ; $6be3: $0b
    dec hl                                        ; $6be4: $2b
    ld l, e                                       ; $6be5: $6b
    ld l, e                                       ; $6be6: $6b
    ld a, [$81a2]                                 ; $6be7: $fa $a2 $81
    ld [c], a                                     ; $6bea: $e2
    nop                                           ; $6beb: $00
    push af                                       ; $6bec: $f5
    pop hl                                        ; $6bed: $e1
    sub $c2                                       ; $6bee: $d6 $c2
    ld a, $c4                                     ; $6bf0: $3e $c4
    add c                                         ; $6bf2: $81
    pop bc                                        ; $6bf3: $c1
    dec [hl]                                      ; $6bf4: $35
    rst $00                                       ; $6bf5: $c7
    rst $38                                       ; $6bf6: $ff
    or b                                          ; $6bf7: $b0
    ld a, $c1                                     ; $6bf8: $3e $c1
    ret nz                                        ; $6bfa: $c0

    db $e3                                        ; $6bfb: $e3
    add d                                         ; $6bfc: $82
    ld [hl], l                                    ; $6bfd: $75
    jp nz, $c00a                                  ; $6bfe: $c2 $0a $c0

    ld [c], a                                     ; $6c01: $e2
    ld a, $c4                                     ; $6c02: $3e $c4
    cp $e4                                        ; $6c04: $fe $e4
    di                                            ; $6c06: $f3
    and [hl]                                      ; $6c07: $a6
    add b                                         ; $6c08: $80
    ret nc                                        ; $6c09: $d0

    inc c                                         ; $6c0a: $0c
    jr nz, jr_058_6b9a                            ; $6c0b: $20 $8d

    and b                                         ; $6c0d: $a0
    ret                                           ; $6c0e: $c9


    and b                                         ; $6c0f: $a0
    ld a, e                                       ; $6c10: $7b
    and d                                         ; $6c11: $a2
    ld a, b                                       ; $6c12: $78
    and b                                         ; $6c13: $a0
    pop bc                                        ; $6c14: $c1
    pop hl                                        ; $6c15: $e1
    ld c, e                                       ; $6c16: $4b
    sbc [hl]                                      ; $6c17: $9e
    jp $c506                                      ; $6c18: $c3 $06 $c5


    nop                                           ; $6c1b: $00
    ret nz                                        ; $6c1c: $c0

    ret z                                         ; $6c1d: $c8

    di                                            ; $6c1e: $f3
    and d                                         ; $6c1f: $a2
    add c                                         ; $6c20: $81
    jp nz, $c47c                                  ; $6c21: $c2 $7c $c4

    ret nz                                        ; $6c24: $c0

    db $e4                                        ; $6c25: $e4
    ld [bc], a                                    ; $6c26: $02
    jp z, $c4c0                                   ; $6c27: $ca $c0 $c4

    sub b                                         ; $6c2a: $90
    xor b                                         ; $6c2b: $a8
    nop                                           ; $6c2c: $00
    ld b, d                                       ; $6c2d: $42
    xor b                                         ; $6c2e: $a8
    rst $38                                       ; $6c2f: $ff
    xor [hl]                                      ; $6c30: $ae
    ld a, [bc]                                    ; $6c31: $0a
    and e                                         ; $6c32: $a3
    add b                                         ; $6c33: $80
    and l                                         ; $6c34: $a5
    rst $30                                       ; $6c35: $f7
    ret nz                                        ; $6c36: $c0

    ccf                                           ; $6c37: $3f
    ldh [rNR34], a                                ; $6c38: $e0 $1e
    ret nz                                        ; $6c3a: $c0

    ld [bc], a                                    ; $6c3b: $02
    and e                                         ; $6c3c: $a3
    ldh [rLY], a                                  ; $6c3d: $e0 $44
    push hl                                       ; $6c3f: $e5
    ld sp, $02a7                                  ; $6c40: $31 $a7 $02
    rst $28                                       ; $6c43: $ef
    ld b, a                                       ; $6c44: $47
    rst $00                                       ; $6c45: $c7
    jp nz, Jump_058_4bc4                          ; $6c46: $c2 $c4 $4b

    ld c, e                                       ; $6c49: $4b
    ld c, h                                       ; $6c4a: $4c
    ld b, b                                       ; $6c4b: $40
    ld b, b                                       ; $6c4c: $40
    and $81                                       ; $6c4d: $e6 $81
    call nz, $a706                                ; $6c4f: $c4 $06 $a7
    cp l                                          ; $6c52: $bd
    and l                                         ; $6c53: $a5
    rst $38                                       ; $6c54: $ff
    ldh [rP1], a                                  ; $6c55: $e0 $00
    and h                                         ; $6c57: $a4
    ld l, e                                       ; $6c58: $6b
    ld c, c                                       ; $6c59: $49
    ret nz                                        ; $6c5a: $c0

    add d                                         ; $6c5b: $82
    cp a                                          ; $6c5c: $bf
    push hl                                       ; $6c5d: $e5
    ld l, e                                       ; $6c5e: $6b
    add d                                         ; $6c5f: $82
    pop hl                                        ; $6c60: $e1
    nop                                           ; $6c61: $00
    rst $00                                       ; $6c62: $c7
    cp c                                          ; $6c63: $b9
    ld a, [c]                                     ; $6c64: $f2
    ret nz                                        ; $6c65: $c0

    db $ec                                        ; $6c66: $ec
    inc b                                         ; $6c67: $04
    push bc                                       ; $6c68: $c5
    ld c, e                                       ; $6c69: $4b
    inc c                                         ; $6c6a: $0c
    ld a, [$38c1]                                 ; $6c6b: $fa $c1 $38
    jp nz, Jump_000_0b0a                          ; $6c6e: $c2 $0a $0b

    add b                                         ; $6c71: $80
    and l                                         ; $6c72: $a5
    cp c                                          ; $6c73: $b9
    jp nc, $8128                                  ; $6c74: $d2 $28 $81

    add c                                         ; $6c77: $81
    rst $20                                       ; $6c78: $e7
    nop                                           ; $6c79: $00
    ld e, d                                       ; $6c7a: $5a
    add sp, $52                                   ; $6c7b: $e8 $52
    and $94                                       ; $6c7d: $e6 $94
    jp hl                                         ; $6c7f: $e9


    cp c                                          ; $6c80: $b9
    rst $08                                       ; $6c81: $cf
    db $eb                                        ; $6c82: $eb
    ld h, c                                       ; $6c83: $61
    ret nz                                        ; $6c84: $c0

    jp hl                                         ; $6c85: $e9


    jr nz, @-$19                                  ; $6c86: $20 $e5

    ld e, $c5                                     ; $6c88: $1e $c5
    nop                                           ; $6c8a: $00
    res 0, e                                      ; $6c8b: $cb $83
    add $6a                                       ; $6c8d: $c6 $6a
    cp c                                          ; $6c8f: $b9
    res 7, d                                      ; $6c90: $cb $ba
    or e                                          ; $6c92: $b3
    ld c, $a7                                     ; $6c93: $0e $a7
    ld [hl], d                                    ; $6c95: $72
    and $7b                                       ; $6c96: $e6 $7b
    ld h, [hl]                                    ; $6c98: $66
    nop                                           ; $6c99: $00
    db $eb                                        ; $6c9a: $eb
    dec bc                                        ; $6c9b: $0b
    ld c, h                                       ; $6c9c: $4c
    ld c, h                                       ; $6c9d: $4c
    jp nz, Jump_000_2cc1                          ; $6c9e: $c2 $c1 $2c

    ld a, c                                       ; $6ca1: $79
    add h                                         ; $6ca2: $84
    ld e, d                                       ; $6ca3: $5a
    ld h, [hl]                                    ; $6ca4: $66
    ld e, a                                       ; $6ca5: $5f
    xor d                                         ; $6ca6: $aa
    add $6b                                       ; $6ca7: $c6 $6b
    nop                                           ; $6ca9: $00
    or [hl]                                       ; $6caa: $b6
    adc l                                         ; $6cab: $8d
    ret nz                                        ; $6cac: $c0

    ld [$a617], a                                 ; $6cad: $ea $17 $a6
    ld d, e                                       ; $6cb0: $53
    and [hl]                                      ; $6cb1: $a6
    ld c, [hl]                                    ; $6cb2: $4e
    rst $00                                       ; $6cb3: $c7
    add hl, bc                                    ; $6cb4: $09
    ld h, h                                       ; $6cb5: $64
    or [hl]                                       ; $6cb6: $b6
    adc a                                         ; $6cb7: $8f
    cp a                                          ; $6cb8: $bf
    ret z                                         ; $6cb9: $c8

    nop                                           ; $6cba: $00
    jp hl                                         ; $6cbb: $e9


    ld c, h                                       ; $6cbc: $4c
    or b                                          ; $6cbd: $b0
    rst $20                                       ; $6cbe: $e7
    add $68                                       ; $6cbf: $c6 $68
    or [hl]                                       ; $6cc1: $b6
    adc h                                         ; $6cc2: $8c
    ld a, a                                       ; $6cc3: $7f
    res 2, e                                      ; $6cc4: $cb $93
    add h                                         ; $6cc6: $84
    ei                                            ; $6cc7: $fb
    and $fa                                       ; $6cc8: $e6 $fa
    and $00                                       ; $6cca: $e6 $00
    ld e, [hl]                                    ; $6ccc: $5e
    res 6, [hl]                                   ; $6ccd: $cb $b6
    adc b                                         ; $6ccf: $88
    ret nz                                        ; $6cd0: $c0

    reti                                          ; $6cd1: $d9


    or b                                          ; $6cd2: $b0
    rst $20                                       ; $6cd3: $e7
    ld a, a                                       ; $6cd4: $7f
    ret                                           ; $6cd5: $c9


jr_058_6cd6:
    or [hl]                                       ; $6cd6: $b6
    adc h                                         ; $6cd7: $8c
    ccf                                           ; $6cd8: $3f
    bit 7, h                                      ; $6cd9: $cb $7c
    jp nc, $c600                                  ; $6cdb: $d2 $00 $c6

    ld l, e                                       ; $6cde: $6b
    db $fd                                        ; $6cdf: $fd
    xor l                                         ; $6ce0: $ad
    ld b, b                                       ; $6ce1: $40
    and a                                         ; $6ce2: $a7
    xor h                                         ; $6ce3: $ac
    ld d, d                                       ; $6ce4: $52
    db $10                                        ; $6ce5: $10
    xor $b6                                       ; $6ce6: $ee $b6
    adc h                                         ; $6ce8: $8c
    jp $fcc8                                      ; $6ce9: $c3 $c8 $fc


    or d                                          ; $6cec: $b2
    nop                                           ; $6ced: $00
    sub [hl]                                      ; $6cee: $96
    ld h, h                                       ; $6cef: $64
    add e                                         ; $6cf0: $83
    ld b, e                                       ; $6cf1: $43
    inc a                                         ; $6cf2: $3c
    ld h, a                                       ; $6cf3: $67
    db $fd                                        ; $6cf4: $fd
    add [hl]                                      ; $6cf5: $86
    add e                                         ; $6cf6: $83
    push de                                       ; $6cf7: $d5
    call $8acc                                    ; $6cf8: $cd $cc $8a
    ld a, [hl+]                                   ; $6cfb: $2a
    cp d                                          ; $6cfc: $ba
    add hl, hl                                    ; $6cfd: $29
    nop                                           ; $6cfe: $00
    add c                                         ; $6cff: $81
    add sp, $6e                                   ; $6d00: $e8 $6e
    ld [hl], b                                    ; $6d02: $70
    or l                                          ; $6d03: $b5
    and a                                         ; $6d04: $a7
    add e                                         ; $6d05: $83
    inc hl                                        ; $6d06: $23
    pop bc                                        ; $6d07: $c1
    ld b, h                                       ; $6d08: $44
    add c                                         ; $6d09: $81
    ret z                                         ; $6d0a: $c8

    ld b, c                                       ; $6d0b: $41
    db $eb                                        ; $6d0c: $eb
    push de                                       ; $6d0d: $d5
    ld sp, $8a00                                  ; $6d0e: $31 $00 $8a
    db $eb                                        ; $6d11: $eb
    or c                                          ; $6d12: $b1
    add a                                         ; $6d13: $87
    adc a                                         ; $6d14: $8f
    ld a, [c]                                     ; $6d15: $f2
    push de                                       ; $6d16: $d5
    cpl                                           ; $6d17: $2f
    call nz, $81ab                                ; $6d18: $c4 $ab $81
    rst $08                                       ; $6d1b: $cf
    rst $00                                       ; $6d1c: $c7
    sub d                                         ; $6d1d: $92
    push de                                       ; $6d1e: $d5
    inc l                                         ; $6d1f: $2c
    nop                                           ; $6d20: $00
    ld c, h                                       ; $6d21: $4c
    rst $20                                       ; $6d22: $e7
    ld a, [hl]                                    ; $6d23: $7e
    adc [hl]                                      ; $6d24: $8e
    jp $bf80                                      ; $6d25: $c3 $80 $bf


    ld b, [hl]                                    ; $6d28: $46
    push de                                       ; $6d29: $d5
    ld sp, $8843                                  ; $6d2a: $31 $43 $88
    ld a, [hl]                                    ; $6d2d: $7e
    ld [hl], d                                    ; $6d2e: $72
    ld bc, $00a9                                  ; $6d2f: $01 $a9 $00
    push de                                       ; $6d32: $d5
    ld sp, $8843                                  ; $6d33: $31 $43 $88
    ret z                                         ; $6d36: $c8

    rst $00                                       ; $6d37: $c7
    cp [hl]                                       ; $6d38: $be
    inc bc                                        ; $6d39: $03
    ld [$c262], sp                                ; $6d3a: $08 $62 $c2
    adc c                                         ; $6d3d: $89
    push de                                       ; $6d3e: $d5
    ld [hl-], a                                   ; $6d3f: $32
    or l                                          ; $6d40: $b5
    jp hl                                         ; $6d41: $e9


    nop                                           ; $6d42: $00
    cp h                                          ; $6d43: $bc
    ld l, b                                       ; $6d44: $68
    add c                                         ; $6d45: $81
    ldh a, [$d5]                                  ; $6d46: $f0 $d5
    jr c, jr_058_6cd6                             ; $6d48: $38 $8c

    rrca                                          ; $6d4a: $0f
    dec a                                         ; $6d4b: $3d
    inc [hl]                                      ; $6d4c: $34
    inc e                                         ; $6d4d: $1c
    ld [hl], d                                    ; $6d4e: $72
    ld c, d                                       ; $6d4f: $4a
    ld a, [bc]                                    ; $6d50: $0a
    or l                                          ; $6d51: $b5
    adc c                                         ; $6d52: $89
    nop                                           ; $6d53: $00
    add b                                         ; $6d54: $80
    db $ed                                        ; $6d55: $ed
    push de                                       ; $6d56: $d5
    ld [hl-], a                                   ; $6d57: $32
    adc d                                         ; $6d58: $8a
    daa                                           ; $6d59: $27
    xor b                                         ; $6d5a: $a8
    ld c, c                                       ; $6d5b: $49
    ret nz                                        ; $6d5c: $c0

    ld a, [c]                                     ; $6d5d: $f2
    push de                                       ; $6d5e: $d5
    inc sp                                        ; $6d5f: $33
    pop de                                        ; $6d60: $d1
    ld c, b                                       ; $6d61: $48
    ld a, e                                       ; $6d62: $7b
    ld a, [bc]                                    ; $6d63: $0a
    nop                                           ; $6d64: $00
    call nz, $d158                                ; $6d65: $c4 $58 $d1
    inc sp                                        ; $6d68: $33
    ld l, c                                       ; $6d69: $69
    and h                                         ; $6d6a: $a4
    pop af                                        ; $6d6b: $f1
    ret z                                         ; $6d6c: $c8

    add c                                         ; $6d6d: $81
    ld e, c                                       ; $6d6e: $59
    ld b, $33                                     ; $6d6f: $06 $33
    ld a, e                                       ; $6d71: $7b
    add hl, bc                                    ; $6d72: $09
    ret nz                                        ; $6d73: $c0

    db $fd                                        ; $6d74: $fd
    nop                                           ; $6d75: $00
    ld a, h                                       ; $6d76: $7c
    db $f4                                        ; $6d77: $f4
    pop af                                        ; $6d78: $f1
    rst $00                                       ; $6d79: $c7
    rst $38                                       ; $6d7a: $ff
    rst $38                                       ; $6d7b: $ff
    and [hl]                                      ; $6d7c: $a6
    db $dd                                        ; $6d7d: $dd
    rst $38                                       ; $6d7e: $ff
    rst $38                                       ; $6d7f: $ff
    and [hl]                                      ; $6d80: $a6
    rst $10                                       ; $6d81: $d7
    ret nz                                        ; $6d82: $c0

    rst $38                                       ; $6d83: $ff
    and $ae                                       ; $6d84: $e6 $ae
    nop                                           ; $6d86: $00
    cp h                                          ; $6d87: $bc
    ld h, l                                       ; $6d88: $65

Call_058_6d89:
    or d                                          ; $6d89: $b2
    jr z, @+$01                                   ; $6d8a: $28 $ff

    rst $38                                       ; $6d8c: $ff
    scf                                           ; $6d8d: $37
    adc c                                         ; $6d8e: $89
    ret nz                                        ; $6d8f: $c0

    add sp, -$01                                  ; $6d90: $e8 $ff
    rst $38                                       ; $6d92: $ff
    inc sp                                        ; $6d93: $33
    db $f4                                        ; $6d94: $f4
    call Call_000_008a                            ; $6d95: $cd $8a $00
    rst $38                                       ; $6d98: $ff
    rst $38                                       ; $6d99: $ff
    rst $38                                       ; $6d9a: $ff
    rst $38                                       ; $6d9b: $ff
    sub [hl]                                      ; $6d9c: $96
    rst $38                                       ; $6d9d: $ff
    rst $38                                       ; $6d9e: $ff
    rst $38                                       ; $6d9f: $ff
    ld [hl], h                                    ; $6da0: $74
    ld [hl], l                                    ; $6da1: $75
    rst $38                                       ; $6da2: $ff
    rst $38                                       ; $6da3: $ff
    rst $38                                       ; $6da4: $ff
    rst $38                                       ; $6da5: $ff
    rst $38                                       ; $6da6: $ff
    rst $38                                       ; $6da7: $ff
    nop                                           ; $6da8: $00
    scf                                           ; $6da9: $37
    cp $dc                                        ; $6daa: $fe $dc
    rst $38                                       ; $6dac: $ff
    rst $38                                       ; $6dad: $ff
    rst $38                                       ; $6dae: $ff
    rst $38                                       ; $6daf: $ff
    rst $38                                       ; $6db0: $ff
    rst $38                                       ; $6db1: $ff
    rst $38                                       ; $6db2: $ff
    rst $38                                       ; $6db3: $ff
    rst $38                                       ; $6db4: $ff
    rst $38                                       ; $6db5: $ff
    rst $38                                       ; $6db6: $ff
    rst $38                                       ; $6db7: $ff
    rst $38                                       ; $6db8: $ff
    nop                                           ; $6db9: $00
    rst $38                                       ; $6dba: $ff
    rst $38                                       ; $6dbb: $ff
    rst $38                                       ; $6dbc: $ff
    rst $38                                       ; $6dbd: $ff
    rst $38                                       ; $6dbe: $ff
    rst $38                                       ; $6dbf: $ff
    rst $38                                       ; $6dc0: $ff
    rst $38                                       ; $6dc1: $ff
    rst $38                                       ; $6dc2: $ff
    rst $38                                       ; $6dc3: $ff
    rst $38                                       ; $6dc4: $ff
    rst $38                                       ; $6dc5: $ff
    rst $38                                       ; $6dc6: $ff
    rst $38                                       ; $6dc7: $ff
    rst $38                                       ; $6dc8: $ff
    rst $38                                       ; $6dc9: $ff
    nop                                           ; $6dca: $00
    rst $38                                       ; $6dcb: $ff
    rst $38                                       ; $6dcc: $ff
    rst $38                                       ; $6dcd: $ff
    rst $38                                       ; $6dce: $ff
    rst $38                                       ; $6dcf: $ff
    rst $38                                       ; $6dd0: $ff
    nop                                           ; $6dd1: $00
    cp a                                          ; $6dd2: $bf
    rst $38                                       ; $6dd3: $ff
    rst $38                                       ; $6dd4: $ff
    rst $38                                       ; $6dd5: $ff
    rst $38                                       ; $6dd6: $ff
    rst $38                                       ; $6dd7: $ff
    rst $38                                       ; $6dd8: $ff
    rst $38                                       ; $6dd9: $ff
    rst $38                                       ; $6dda: $ff
    nop                                           ; $6ddb: $00
    dec e                                         ; $6ddc: $1d
    ld [hl], e                                    ; $6ddd: $73
    nop                                           ; $6dde: $00
    nop                                           ; $6ddf: $00
    nop                                           ; $6de0: $00
    ld a, l                                       ; $6de1: $7d
    ld e, e                                       ; $6de2: $5b
    rst $38                                       ; $6de3: $ff
    pop hl                                        ; $6de4: $e1
    ld h, b                                       ; $6de5: $60
    ld sp, $5647                                  ; $6de6: $31 $47 $56
    ld d, a                                       ; $6de9: $57
    cp $e1                                        ; $6dea: $fe $e1

jr_058_6dec:
    rla                                           ; $6dec: $17
    ld c, l                                       ; $6ded: $4d
    ld sp, $ef60                                  ; $6dee: $31 $60 $ef
    ldh [rP1], a                                  ; $6df1: $e0 $00
    rst $38                                       ; $6df3: $ff
    rst $38                                       ; $6df4: $ff
    rst $20                                       ; $6df5: $e7
    and $d0                                       ; $6df6: $e6 $d0
    pop hl                                        ; $6df8: $e1
    rst $38                                       ; $6df9: $ff
    ld h, b                                       ; $6dfa: $60
    ld sp, $363c                                  ; $6dfb: $31 $3c $36
    ld l, h                                       ; $6dfe: $6c
    ld l, h                                       ; $6dff: $6c
    jr nc, jr_058_6e6b                            ; $6e00: $30 $69

    rla                                           ; $6e02: $17
    jr nc, jr_058_6e35                            ; $6e03: $30 $30

    ld [hl-], a                                   ; $6e05: $32
    cp a                                          ; $6e06: $bf
    ldh [$5a], a                                  ; $6e07: $e0 $5a
    ret nz                                        ; $6e09: $c0

    rst $38                                       ; $6e0a: $ff
    jp hl                                         ; $6e0b: $e9


    add sp, -$71                                  ; $6e0c: $e8 $8f
    ldh [rPCM12], a                               ; $6e0e: $e0 $76
    pop bc                                        ; $6e10: $c1
    ldh [rSCY], a                                 ; $6e11: $e0 $42
    ld l, h                                       ; $6e13: $6c
    rst $38                                       ; $6e14: $ff
    ldh [$66], a                                  ; $6e15: $e0 $66
    ld l, c                                       ; $6e17: $69
    ld l, e                                       ; $6e18: $6b
    cp a                                          ; $6e19: $bf
    pop hl                                        ; $6e1a: $e1
    ld a, c                                       ; $6e1b: $79
    ld e, a                                       ; $6e1c: $5f
    ret nz                                        ; $6e1d: $c0

    rst $38                                       ; $6e1e: $ff
    ret nz                                        ; $6e1f: $c0

    jp hl                                         ; $6e20: $e9


    ld sp, $3162                                  ; $6e21: $31 $62 $31
    ld c, c                                       ; $6e24: $49
    pop bc                                        ; $6e25: $c1
    ld [c], a                                     ; $6e26: $e2
    ld a, $c0                                     ; $6e27: $3e $c0
    pop hl                                        ; $6e29: $e1
    ld l, e                                       ; $6e2a: $6b
    jr nc, jr_058_6e7e                            ; $6e2b: $30 $51

    ld sp, $c05e                                  ; $6e2d: $31 $5e $c0
    rst $38                                       ; $6e30: $ff
    jp hl                                         ; $6e31: $e9


    add sp, $1f                                   ; $6e32: $e8 $1f
    dec d                                         ; $6e34: $15

jr_058_6e35:
    ld sp, $3131                                  ; $6e35: $31 $31 $31
    add hl, sp                                    ; $6e38: $39
    pop bc                                        ; $6e39: $c1
    ld [c], a                                     ; $6e3a: $e2
    ret nz                                        ; $6e3b: $c0

    rst $38                                       ; $6e3c: $ff
    ld a, [c]                                     ; $6e3d: $f2
    pop af                                        ; $6e3e: $f1
    sbc a                                         ; $6e3f: $9f
    rla                                           ; $6e40: $17
    ld sp, $4931                                  ; $6e41: $31 $31 $49
    ld c, b                                       ; $6e44: $48
    ret nz                                        ; $6e45: $c0

    and $40                                       ; $6e46: $e6 $40
    ld [c], a                                     ; $6e48: $e2
    ld e, d                                       ; $6e49: $5a
    db $fc                                        ; $6e4a: $fc
    jp z, $e8ff                                   ; $6e4b: $ca $ff $e8

    rst $20                                       ; $6e4e: $e7
    ld d, $15                                     ; $6e4f: $16 $15
    ld sp, $6d50                                  ; $6e51: $31 $50 $6d
    jr nc, jr_058_6dec                            ; $6e54: $30 $96

    add b                                         ; $6e56: $80
    ld [c], a                                     ; $6e57: $e2
    ld h, a                                       ; $6e58: $67
    ld l, d                                       ; $6e59: $6a
    ret nz                                        ; $6e5a: $c0

    pop bc                                        ; $6e5b: $c1
    ld e, [hl]                                    ; $6e5c: $5e
    add b                                         ; $6e5d: $80
    rst $18                                       ; $6e5e: $df
    ld [$28e9], a                                 ; $6e5f: $ea $e9 $28
    rst $18                                       ; $6e62: $df
    rla                                           ; $6e63: $17
    ld sp, $6a51                                  ; $6e64: $31 $51 $6a
    ld h, a                                       ; $6e67: $67
    cp a                                          ; $6e68: $bf
    pop hl                                        ; $6e69: $e1
    ld h, a                                       ; $6e6a: $67

jr_058_6e6b:
    ld l, d                                       ; $6e6b: $6a
    adc a                                         ; $6e6c: $8f
    ld b, d                                       ; $6e6d: $42
    ld b, l                                       ; $6e6e: $45
    ld c, l                                       ; $6e6f: $4d
    ld sp, $c0c1                                  ; $6e70: $31 $c1 $c0
    ret nz                                        ; $6e73: $c0

    rst $38                                       ; $6e74: $ff
    jp hl                                         ; $6e75: $e9


    add sp, $20                                   ; $6e76: $e8 $20
    db $ed                                        ; $6e78: $ed
    rla                                           ; $6e79: $17
    add b                                         ; $6e7a: $80
    ldh [rOCPS], a                                ; $6e7b: $e0 $6a
    ld h, l                                       ; $6e7d: $65

jr_058_6e7e:
    rst $38                                       ; $6e7e: $ff
    ldh [rOCPS], a                                ; $6e7f: $e0 $6a
    ld l, l                                       ; $6e81: $6d
    add hl, sp                                    ; $6e82: $39
    ld hl, sp-$0c                                 ; $6e83: $f8 $f4
    ret nz                                        ; $6e85: $c0

    nop                                           ; $6e86: $00
    rst $18                                       ; $6e87: $df
    ret nz                                        ; $6e88: $c0

    db $ec                                        ; $6e89: $ec
    ld a, [de]                                    ; $6e8a: $1a
    ld sp, $3050                                  ; $6e8b: $31 $50 $30
    ld l, l                                       ; $6e8e: $6d
    ld e, l                                       ; $6e8f: $5d
    ld l, b                                       ; $6e90: $68
    rst $38                                       ; $6e91: $ff
    ldh [$6d], a                                  ; $6e92: $e0 $6d
    jr nc, jr_058_6ee6                            ; $6e94: $30 $50

    pop bc                                        ; $6e96: $c1
    ldh [$5a], a                                  ; $6e97: $e0 $5a
    ret nz                                        ; $6e99: $c0

    rst $38                                       ; $6e9a: $ff
    cp [hl]                                       ; $6e9b: $be
    db $eb                                        ; $6e9c: $eb
    ld [$3118], a                                 ; $6e9d: $ea $18 $31
    ld sp, $3051                                  ; $6ea0: $31 $51 $30
    nop                                           ; $6ea3: $00
    ld [c], a                                     ; $6ea4: $e2
    jr nc, @-$2e                                  ; $6ea5: $30 $d0

    add h                                         ; $6ea7: $84
    pop bc                                        ; $6ea8: $c1
    pop bc                                        ; $6ea9: $c1
    pop hl                                        ; $6eaa: $e1
    ret nz                                        ; $6eab: $c0

    rst $38                                       ; $6eac: $ff
    jp hl                                         ; $6ead: $e9


    add sp, $1a                                   ; $6eae: $e8 $1a
    ret nz                                        ; $6eb0: $c0

    ldh [rOCPS], a                                ; $6eb1: $e0 $6a
    ld l, l                                       ; $6eb3: $6d
    adc l                                         ; $6eb4: $8d
    jr nc, @+$01                                  ; $6eb5: $30 $ff

    pop hl                                        ; $6eb7: $e1
    ld c, b                                       ; $6eb8: $48
    ld c, c                                       ; $6eb9: $49
    inc bc                                        ; $6eba: $03
    pop hl                                        ; $6ebb: $e1
    ret nz                                        ; $6ebc: $c0

    rst $38                                       ; $6ebd: $ff
    ret nz                                        ; $6ebe: $c0

    xor h                                         ; $6ebf: $ac
    ld sp, $afaf                                  ; $6ec0: $31 $af $af
    ld [hl], c                                    ; $6ec3: $71
    ld l, d                                       ; $6ec4: $6a
    ld l, l                                       ; $6ec5: $6d
    cp [hl]                                       ; $6ec6: $be
    pop hl                                        ; $6ec7: $e1
    add hl, sp                                    ; $6ec8: $39
    add h                                         ; $6ec9: $84
    pop bc                                        ; $6eca: $c1
    ld e, e                                       ; $6ecb: $5b
    ld e, b                                       ; $6ecc: $58
    ccf                                           ; $6ecd: $3f
    ldh [$ca], a                                  ; $6ece: $e0 $ca
    rst $38                                       ; $6ed0: $ff
    ret nz                                        ; $6ed1: $c0

    ld [$7981], a                                 ; $6ed2: $ea $81 $79
    cp a                                          ; $6ed5: $bf
    pop hl                                        ; $6ed6: $e1
    ld l, l                                       ; $6ed7: $6d
    ld b, l                                       ; $6ed8: $45
    and d                                         ; $6ed9: $a2
    inc a                                         ; $6eda: $3c
    add b                                         ; $6edb: $80
    rst $38                                       ; $6edc: $ff
    nop                                           ; $6edd: $00
    xor l                                         ; $6ede: $ad
    ld [hl], b                                    ; $6edf: $70
    and l                                         ; $6ee0: $a5
    xor [hl]                                      ; $6ee1: $ae
    add b                                         ; $6ee2: $80
    cp a                                          ; $6ee3: $bf
    pop hl                                        ; $6ee4: $e1
    dec b                                         ; $6ee5: $05

jr_058_6ee6:
    jp Jump_000_00dc                              ; $6ee6: $c3 $dc $00


    rst $38                                       ; $6ee9: $ff
    db $ed                                        ; $6eea: $ed
    db $ec                                        ; $6eeb: $ec
    ld [hl], b                                    ; $6eec: $70
    xor [hl]                                      ; $6eed: $ae
    add b                                         ; $6eee: $80
    rst $38                                       ; $6eef: $ff
    ldh [$79], a                                  ; $6ef0: $e0 $79
    ld a, h                                       ; $6ef2: $7c
    inc bc                                        ; $6ef3: $03
    ld a, h                                       ; $6ef4: $7c
    xor a                                         ; $6ef5: $af
    dec b                                         ; $6ef6: $05
    jp nz, $e23f                                  ; $6ef7: $c2 $3f $e2

    jp z, $ffff                                   ; $6efa: $ca $ff $ff

    rst $38                                       ; $6efd: $ff
    rst $38                                       ; $6efe: $ff
    rst $38                                       ; $6eff: $ff
    rst $38                                       ; $6f00: $ff
    rst $38                                       ; $6f01: $ff
    nop                                           ; $6f02: $00
    rst $38                                       ; $6f03: $ff
    rst $38                                       ; $6f04: $ff
    rst $38                                       ; $6f05: $ff
    rst $38                                       ; $6f06: $ff
    rst $38                                       ; $6f07: $ff
    rst $38                                       ; $6f08: $ff
    rst $38                                       ; $6f09: $ff
    rst $38                                       ; $6f0a: $ff
    rst $38                                       ; $6f0b: $ff
    rst $38                                       ; $6f0c: $ff
    rst $38                                       ; $6f0d: $ff
    rst $38                                       ; $6f0e: $ff
    rst $38                                       ; $6f0f: $ff
    rst $38                                       ; $6f10: $ff
    rst $38                                       ; $6f11: $ff
    rst $38                                       ; $6f12: $ff
    nop                                           ; $6f13: $00
    rst $38                                       ; $6f14: $ff
    rst $38                                       ; $6f15: $ff
    rst $38                                       ; $6f16: $ff
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
    nop                                           ; $6f24: $00
    rst $38                                       ; $6f25: $ff
    rst $38                                       ; $6f26: $ff
    rst $38                                       ; $6f27: $ff
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
    nop                                           ; $6f35: $00
    rst $38                                       ; $6f36: $ff
    rst $38                                       ; $6f37: $ff
    rst $38                                       ; $6f38: $ff
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
    nop                                           ; $6f46: $00
    rst $38                                       ; $6f47: $ff
    rst $38                                       ; $6f48: $ff
    rst $38                                       ; $6f49: $ff
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
    nop                                           ; $6f57: $00
    rst $38                                       ; $6f58: $ff
    rst $38                                       ; $6f59: $ff
    rst $38                                       ; $6f5a: $ff
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
    nop                                           ; $6f68: $00
    rst $38                                       ; $6f69: $ff
    rst $38                                       ; $6f6a: $ff
    rst $38                                       ; $6f6b: $ff
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
    nop                                           ; $6f79: $00
    rst $38                                       ; $6f7a: $ff
    rst $38                                       ; $6f7b: $ff
    rst $38                                       ; $6f7c: $ff
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
    nop                                           ; $6f8a: $00
    rst $38                                       ; $6f8b: $ff
    rst $38                                       ; $6f8c: $ff
    rst $38                                       ; $6f8d: $ff
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
    nop                                           ; $6f9b: $00
    rst $38                                       ; $6f9c: $ff
    rst $38                                       ; $6f9d: $ff
    rst $38                                       ; $6f9e: $ff
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
    nop                                           ; $6fac: $00
    rst $38                                       ; $6fad: $ff
    rst $38                                       ; $6fae: $ff
    rst $38                                       ; $6faf: $ff
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
    di                                            ; $6fbc: $f3
    nop                                           ; $6fbd: $00
    nop                                           ; $6fbe: $00
    nop                                           ; $6fbf: $00
    and l                                         ; $6fc0: $a5
    nop                                           ; $6fc1: $00
    rst $38                                       ; $6fc2: $ff
    push hl                                       ; $6fc3: $e5
    ld [hl-], a                                   ; $6fc4: $32
    or $e6                                        ; $6fc5: $f6 $e6
    rst $30                                       ; $6fc7: $f7
    rst $20                                       ; $6fc8: $e7
    dec [hl]                                      ; $6fc9: $35
    db $ec                                        ; $6fca: $ec
    xor $37                                       ; $6fcb: $ee $37
    db $ec                                        ; $6fcd: $ec
    jp c, $c7f0                                   ; $6fce: $da $f0 $c7

    add sp, $33                                   ; $6fd1: $e8 $33
    ld sp, $f2e0                                  ; $6fd3: $31 $e0 $f2
    ld [hl], $30                                  ; $6fd6: $36 $30
    scf                                           ; $6fd8: $37
    cp a                                          ; $6fd9: $bf
    ld h, $20                                     ; $6fda: $26 $20
    daa                                           ; $6fdc: $27
    db $10                                        ; $6fdd: $10
    ld d, $17                                     ; $6fde: $16 $17
    jp nz, Jump_000_34f6                          ; $6fe0: $c2 $f6 $34

    rst $38                                       ; $6fe3: $ff
    ld [hl], $32                                  ; $6fe4: $36 $32
    jr nc, jr_058_701f                            ; $6fe6: $30 $37

    ld sp, $3133                                  ; $6fe8: $31 $33 $31
    inc sp                                        ; $6feb: $33
    nop                                           ; $6fec: $00
    and b                                         ; $6fed: $a0
    ei                                            ; $6fee: $fb
    rst $38                                       ; $6fef: $ff
    rst $28                                       ; $6ff0: $ef
    nop                                           ; $6ff1: $00
    nop                                           ; $6ff2: $00
    nop                                           ; $6ff3: $00
    db $fc                                        ; $6ff4: $fc
    ld l, a                                       ; $6ff5: $6f
    inc l                                         ; $6ff6: $2c
    ld [hl], b                                    ; $6ff7: $70
    adc h                                         ; $6ff8: $8c
    ld [hl], d                                    ; $6ff9: $72
    ld l, e                                       ; $6ffa: $6b
    ld [hl], h                                    ; $6ffb: $74
    ld hl, sp+$03                                 ; $6ffc: $f8 $03
    ld c, h                                       ; $6ffe: $4c
    inc bc                                        ; $6fff: $03
    ld d, e                                       ; $7000: $53
    ld bc, $008a                                  ; $7001: $01 $8a $00
    ldh a, [$03]                                  ; $7004: $f0 $03
    ld hl, sp+$03                                 ; $7006: $f8 $03
    ld c, h                                       ; $7008: $4c
    inc bc                                        ; $7009: $03
    ld d, e                                       ; $700a: $53
    ld bc, $47ff                                  ; $700b: $01 $ff $47
    ldh a, [rP1]                                  ; $700e: $f0 $00
    ld e, l                                       ; $7010: $5d
    add hl, de                                    ; $7011: $19
    ld c, h                                       ; $7012: $4c
    inc bc                                        ; $7013: $03
    ld [$0825], sp                                ; $7014: $08 $25 $08
    dec h                                         ; $7017: $25
    ld [$0825], sp                                ; $7018: $08 $25 $08
    dec h                                         ; $701b: $25
    ld [$0825], sp                                ; $701c: $08 $25 $08

jr_058_701f:
    dec h                                         ; $701f: $25
    ld [$0825], sp                                ; $7020: $08 $25 $08
    dec h                                         ; $7023: $25
    ld [$0825], sp                                ; $7024: $08 $25 $08
    dec h                                         ; $7027: $25
    ld [$0825], sp                                ; $7028: $08 $25 $08
    dec h                                         ; $702b: $25
    cp l                                          ; $702c: $bd
    inc c                                         ; $702d: $0c
    rst $38                                       ; $702e: $ff
    db $ec                                        ; $702f: $ec
    dec bc                                        ; $7030: $0b
    dec bc                                        ; $7031: $0b
    ld a, [bc]                                    ; $7032: $0a
    dec bc                                        ; $7033: $0b
    db $ec                                        ; $7034: $ec
    ldh [$4c], a                                  ; $7035: $e0 $4c
    ld b, b                                       ; $7037: $40
    add sp, -$1e                                  ; $7038: $e8 $e2
    ld a, [$f1e3]                                 ; $703a: $fa $e3 $f1
    pop hl                                        ; $703d: $e1
    ldh a, [$e2]                                  ; $703e: $f0 $e2
    ld a, [$fce3]                                 ; $7040: $fa $e3 $fc
    ld sp, hl                                     ; $7043: $f9
    dec bc                                        ; $7044: $0b
    rst $38                                       ; $7045: $ff
    ldh [rSB], a                                  ; $7046: $e0 $01
    dec hl                                        ; $7048: $2b
    ret nz                                        ; $7049: $c0

    pop hl                                        ; $704a: $e1
    pop bc                                        ; $704b: $c1
    and $c7                                       ; $704c: $e6 $c7
    db $e3                                        ; $704e: $e3
    db $fd                                        ; $704f: $fd
    add sp, -$3e                                  ; $7050: $e8 $c2
    db $fc                                        ; $7052: $fc
    cp [hl]                                       ; $7053: $be
    pop hl                                        ; $7054: $e1
    pop de                                        ; $7055: $d1
    pop hl                                        ; $7056: $e1
    ld bc, $fd4c                                  ; $7057: $01 $4c $fd
    db $e3                                        ; $705a: $e3
    db $fc                                        ; $705b: $fc
    ld [c], a                                     ; $705c: $e2
    cp b                                          ; $705d: $b8
    ld [c], a                                     ; $705e: $e2
    ld a, [$7fe3]                                 ; $705f: $fa $e3 $7f
    ld a, [c]                                     ; $7062: $f2
    db $dd                                        ; $7063: $dd
    db $e3                                        ; $7064: $e3
    jp nz, $81e3                                  ; $7065: $c2 $e3 $81

    dec hl                                        ; $7068: $2b
    ret nz                                        ; $7069: $c0

    ld [c], a                                     ; $706a: $e2
    cp [hl]                                       ; $706b: $be
    push hl                                       ; $706c: $e5
    or $e1                                        ; $706d: $f6 $e1
    or l                                          ; $706f: $b5
    push hl                                       ; $7070: $e5
    xor h                                         ; $7071: $ac
    ld [c], a                                     ; $7072: $e2
    ld c, d                                       ; $7073: $4a
    or $6b                                        ; $7074: $f6 $6b
    dec de                                        ; $7076: $1b
    ld l, e                                       ; $7077: $6b
    ld c, e                                       ; $7078: $4b
    rst $38                                       ; $7079: $ff
    db $e4                                        ; $707a: $e4
    ld l, e                                       ; $707b: $6b
    ld l, e                                       ; $707c: $6b
    ld b, a                                       ; $707d: $47
    db $e3                                        ; $707e: $e3
    rst $38                                       ; $707f: $ff
    push hl                                       ; $7080: $e5
    ld [hl], e                                    ; $7081: $73
    rst $20                                       ; $7082: $e7
    ld [hl+], a                                   ; $7083: $22
    ld sp, hl                                     ; $7084: $f9
    call nz, $cc2c                                ; $7085: $c4 $2c $cc
    jp $e4f9                                      ; $7088: $c3 $f9 $e4


    call z, Call_058_6bc2                         ; $708b: $cc $c2 $6b
    pop bc                                        ; $708e: $c1
    ldh [rTIMA], a                                ; $708f: $e0 $05
    pop hl                                        ; $7091: $e1
    adc e                                         ; $7092: $8b
    dec hl                                        ; $7093: $2b
    dec hl                                        ; $7094: $2b
    cp c                                          ; $7095: $b9
    ldh [rOCPD], a                                ; $7096: $e0 $6b
    adc $c4                                       ; $7098: $ce $c4
    ld c, a                                       ; $709a: $4f
    add sp, -$40                                  ; $709b: $e8 $c0
    rst $10                                       ; $709d: $d7
    inc l                                         ; $709e: $2c
    dec de                                        ; $709f: $1b
    inc l                                         ; $70a0: $2c
    inc c                                         ; $70a1: $0c
    jp nz, Jump_000_0be1                          ; $70a2: $c2 $e1 $0b

    dec bc                                        ; $70a5: $0b
    ret nz                                        ; $70a6: $c0

    pop hl                                        ; $70a7: $e1
    cp a                                          ; $70a8: $bf
    ldh [$c0], a                                  ; $70a9: $e0 $c0
    db $e4                                        ; $70ab: $e4
    add b                                         ; $70ac: $80
    db $fd                                        ; $70ad: $fd
    jp $c5be                                      ; $70ae: $c3 $be $c5


    ret nz                                        ; $70b1: $c0

    ret c                                         ; $70b2: $d8

    rlca                                          ; $70b3: $07
    pop hl                                        ; $70b4: $e1
    add h                                         ; $70b5: $84
    ld [c], a                                     ; $70b6: $e2
    dec b                                         ; $70b7: $05
    db $e3                                        ; $70b8: $e3
    ld [hl], a                                    ; $70b9: $77
    ldh [$2b], a                                  ; $70ba: $e0 $2b
    ld bc, $512b                                  ; $70bc: $01 $2b $51
    jp $e644                                      ; $70bf: $c3 $44 $e6


    ld b, b                                       ; $70c2: $40
    jp c, $e205                                   ; $70c3: $da $05 $e2

    add $c3                                       ; $70c6: $c6 $c3
    push bc                                       ; $70c8: $c5
    pop bc                                        ; $70c9: $c1
    ld hl, sp-$3e                                 ; $70ca: $f8 $c2
    jr nz, jr_058_710e                            ; $70cc: $20 $40

    push hl                                       ; $70ce: $e5
    add c                                         ; $70cf: $81
    call nz, $e476                                ; $70d0: $c4 $76 $e4
    ld [hl], b                                    ; $70d3: $70
    push hl                                       ; $70d4: $e5
    ret nz                                        ; $70d5: $c0

    rst $28                                       ; $70d6: $ef
    dec bc                                        ; $70d7: $0b

jr_058_70d8:
    push bc                                       ; $70d8: $c5
    ret nz                                        ; $70d9: $c0

    inc b                                         ; $70da: $04
    pop hl                                        ; $70db: $e1
    ld c, $40                                     ; $70dc: $0e $40
    jp nz, Jump_058_4b6b                          ; $70de: $c2 $6b $4b

    dec hl                                        ; $70e1: $2b
    ld b, b                                       ; $70e2: $40
    push hl                                       ; $70e3: $e5
    dec sp                                        ; $70e4: $3b
    push hl                                       ; $70e5: $e5
    ld b, b                                       ; $70e6: $40
    reti                                          ; $70e7: $d9


    ret                                           ; $70e8: $c9


    pop bc                                        ; $70e9: $c1
    inc b                                         ; $70ea: $04
    add [hl]                                      ; $70eb: $86
    pop bc                                        ; $70ec: $c1
    ret nz                                        ; $70ed: $c0

    and $0b                                       ; $70ee: $e6 $0b
    ret nz                                        ; $70f0: $c0

    ld [c], a                                     ; $70f1: $e2
    ld a, a                                       ; $70f2: $7f
    or b                                          ; $70f3: $b0
    or l                                          ; $70f4: $b5
    jp z, $c683                                   ; $70f5: $ca $83 $c6

    rrca                                          ; $70f8: $0f
    pop bc                                        ; $70f9: $c1
    nop                                           ; $70fa: $00
    add c                                         ; $70fb: $81
    rst $20                                       ; $70fc: $e7
    dec a                                         ; $70fd: $3d
    ld [c], a                                     ; $70fe: $e2

jr_058_70ff:
    ret nz                                        ; $70ff: $c0

    ld [c], a                                     ; $7100: $e2
    ld a, a                                       ; $7101: $7f
    or c                                          ; $7102: $b1
    or $eb                                        ; $7103: $f6 $eb
    ret nz                                        ; $7105: $c0

    jp hl                                         ; $7106: $e9


    add l                                         ; $7107: $85
    db $e4                                        ; $7108: $e4
    db $fc                                        ; $7109: $fc
    call nz, $c100                                ; $710a: $c4 $00 $c1
    and [hl]                                      ; $710d: $a6

jr_058_710e:
    ld a, a                                       ; $710e: $7f
    xor d                                         ; $710f: $aa
    dec l                                         ; $7110: $2d

jr_058_7111:
    xor e                                         ; $7111: $ab
    add b                                         ; $7112: $80
    add sp, -$3d                                  ; $7113: $e8 $c3
    push hl                                       ; $7115: $e5
    ld sp, hl                                     ; $7116: $f9
    ret nz                                        ; $7117: $c0

    ld a, $a3                                     ; $7118: $3e $a3
    adc e                                         ; $711a: $8b
    and c                                         ; $711b: $a1
    inc b                                         ; $711c: $04
    ld a, a                                       ; $711d: $7f
    xor a                                         ; $711e: $af
    scf                                           ; $711f: $37
    jp hl                                         ; $7120: $e9


    inc l                                         ; $7121: $2c
    rst $38                                       ; $7122: $ff
    ldh [$90], a                                  ; $7123: $e0 $90
    add h                                         ; $7125: $84
    call z, $88e4                                 ; $7126: $cc $e4 $88
    and c                                         ; $7129: $a1
    rst $30                                       ; $712a: $f7
    jp nz, Jump_058_7920                          ; $712b: $c2 $20 $79

    and b                                         ; $712e: $a0
    add $84                                       ; $712f: $c6 $84
    ld a, a                                       ; $7131: $7f
    xor h                                         ; $7132: $ac
    ld [hl], l                                    ; $7133: $75
    xor b                                         ; $7134: $a8
    ret nz                                        ; $7135: $c0

    add sp, $0a                                   ; $7136: $e8 $0a
    adc d                                         ; $7138: $8a
    ld [c], a                                     ; $7139: $e2
    dec a                                         ; $713a: $3d
    call nz, $bf00                                ; $713b: $c4 $00 $bf
    add h                                         ; $713e: $84
    adc $c9                                       ; $713f: $ce $c9
    adc c                                         ; $7141: $89
    ld [$8535], a                                 ; $7142: $ea $35 $85
    add c                                         ; $7145: $81
    rst $20                                       ; $7146: $e7
    jr jr_058_7111                                ; $7147: $18 $c8

    db $10                                        ; $7149: $10
    add $4d                                       ; $714a: $c6 $4d
    add [hl]                                      ; $714c: $86
    nop                                           ; $714d: $00
    ld a, a                                       ; $714e: $7f
    xor l                                         ; $714f: $ad
    jr c, jr_058_70d8                             ; $7150: $38 $86

    ret nz                                        ; $7152: $c0

    add sp, -$1a                                  ; $7153: $e8 $e6
    set 7, e                                      ; $7155: $cb $fb
    push hl                                       ; $7157: $e5
    ld a, a                                       ; $7158: $7f
    or d                                          ; $7159: $b2
    cp e                                          ; $715a: $bb
    ld a, b                                       ; $715b: $78
    sub c                                         ; $715c: $91
    ld h, h                                       ; $715d: $64
    jr nz, jr_058_70ff                            ; $715e: $20 $9f

    ld h, l                                       ; $7160: $65
    inc c                                         ; $7161: $0c
    add sp, $7f                                   ; $7162: $e8 $7f
    xor d                                         ; $7164: $aa
    ld [hl], l                                    ; $7165: $75
    and h                                         ; $7166: $a4
    jp nz, Jump_000_2cc1                          ; $7167: $c2 $c1 $2c

    ld a, c                                       ; $716a: $79
    add h                                         ; $716b: $84
    ld l, l                                       ; $716c: $6d
    ld l, b                                       ; $716d: $68
    nop                                           ; $716e: $00
    ld de, $c383                                  ; $716f: $11 $83 $c3
    adc b                                         ; $7172: $88
    ld a, a                                       ; $7173: $7f
    xor a                                         ; $7174: $af
    or l                                          ; $7175: $b5
    ld h, e                                       ; $7176: $63
    ret nz                                        ; $7177: $c0

    db $eb                                        ; $7178: $eb
    sub e                                         ; $7179: $93
    jp hl                                         ; $717a: $e9


    or h                                          ; $717b: $b4
    ld h, l                                       ; $717c: $65
    cp $65                                        ; $717d: $fe $65
    nop                                           ; $717f: $00
    ld b, a                                       ; $7180: $47
    db $ed                                        ; $7181: $ed
    cp $45                                        ; $7182: $fe $45
    cp a                                          ; $7184: $bf
    ret                                           ; $7185: $c9


    ld [de], a                                    ; $7186: $12
    push bc                                       ; $7187: $c5
    ld e, a                                       ; $7188: $5f
    ld h, h                                       ; $7189: $64
    sub a                                         ; $718a: $97
    ld l, l                                       ; $718b: $6d
    dec d                                         ; $718c: $15
    rst $00                                       ; $718d: $c7
    adc d                                         ; $718e: $8a
    ret z                                         ; $718f: $c8

    nop                                           ; $7190: $00
    cp a                                          ; $7191: $bf
    rst $08                                       ; $7192: $cf
    adc c                                         ; $7193: $89
    push bc                                       ; $7194: $c5
    inc e                                         ; $7195: $1c
    rst $00                                       ; $7196: $c7
    sub h                                         ; $7197: $94
    ld e, b                                       ; $7198: $58
    ld [hl], a                                    ; $7199: $77
    ld c, a                                       ; $719a: $4f
    sub c                                         ; $719b: $91
    ld [hl], c                                    ; $719c: $71
    sub d                                         ; $719d: $92
    reti                                          ; $719e: $d9


    cp h                                          ; $719f: $bc
    ret nz                                        ; $71a0: $c0

    nop                                           ; $71a1: $00
    dec h                                         ; $71a2: $25
    ld c, c                                       ; $71a3: $49
    sub c                                         ; $71a4: $91
    ld [hl], b                                    ; $71a5: $70
    ld a, [$3ba7]                                 ; $71a6: $fa $a7 $3b
    call z, $c5bc                                 ; $71a9: $cc $bc $c5
    ld [hl], c                                    ; $71ac: $71
    db $ec                                        ; $71ad: $ec
    sub c                                         ; $71ae: $91
    ld l, h                                       ; $71af: $6c
    xor a                                         ; $71b0: $af
    rlc b                                         ; $71b1: $cb $00
    cp d                                          ; $71b3: $ba
    ld h, [hl]                                    ; $71b4: $66
    ld [hl], a                                    ; $71b5: $77
    ld d, l                                       ; $71b6: $55
    sub c                                         ; $71b7: $91
    ld [hl], b                                    ; $71b8: $70
    adc h                                         ; $71b9: $8c
    ld c, b                                       ; $71ba: $48
    dec sp                                        ; $71bb: $3b
    adc $76                                       ; $71bc: $ce $76
    jr z, jr_058_7200                             ; $71be: $28 $40

    rst $20                                       ; $71c0: $e7
    sub c                                         ; $71c1: $91
    ld l, h                                       ; $71c2: $6c
    nop                                           ; $71c3: $00
    db $fc                                        ; $71c4: $fc
    daa                                           ; $71c5: $27
    ld b, l                                       ; $71c6: $45
    jp z, Jump_000_3037                           ; $71c7: $ca $37 $30

    ldh [$ab], a                                  ; $71ca: $e0 $ab
    nop                                           ; $71cc: $00
    and [hl]                                      ; $71cd: $a6
    dec c                                         ; $71ce: $0d
    jr z, jr_058_71e1                             ; $71cf: $28 $10

    jp z, Jump_000_3937                           ; $71d1: $ca $37 $39

    nop                                           ; $71d4: $00
    and $89                                       ; $71d5: $e6 $89
    dec c                                         ; $71d7: $0d
    ld sp, $1fb7                                  ; $71d8: $31 $b7 $1f
    sub $fb                                       ; $71db: $d6 $fb
    ld [hl], c                                    ; $71dd: $71
    ld b, a                                       ; $71de: $47
    ld e, $da                                     ; $71df: $1e $da

jr_058_71e1:
    sub $e9                                       ; $71e1: $d6 $e9
    ldh [$d3], a                                  ; $71e3: $e0 $d3
    nop                                           ; $71e5: $00
    ld b, b                                       ; $71e6: $40
    adc b                                         ; $71e7: $88
    inc d                                         ; $71e8: $14
    ld c, a                                       ; $71e9: $4f
    ld b, a                                       ; $71ea: $47
    ld c, e                                       ; $71eb: $4b
    ldh [$d2], a                                  ; $71ec: $e0 $d2
    nop                                           ; $71ee: $00
    adc e                                         ; $71ef: $8b
    inc d                                         ; $71f0: $14
    ld c, l                                       ; $71f1: $4d
    adc l                                         ; $71f2: $8d
    rst $08                                       ; $71f3: $cf
    rlca                                          ; $71f4: $07
    or d                                          ; $71f5: $b2
    nop                                           ; $71f6: $00
    add e                                         ; $71f7: $83
    push de                                       ; $71f8: $d5
    sbc l                                         ; $71f9: $9d
    adc d                                         ; $71fa: $8a
    call nc, $a3df                                ; $71fb: $d4 $df $a3
    rst $30                                       ; $71fe: $f7
    rst $38                                       ; $71ff: $ff

jr_058_7200:
    rst $38                                       ; $7200: $ff
    rst $38                                       ; $7201: $ff
    rst $38                                       ; $7202: $ff
    cp d                                          ; $7203: $ba
    dec hl                                        ; $7204: $2b
    ldh a, [$a1]                                  ; $7205: $f0 $a1
    nop                                           ; $7207: $00
    sbc b                                         ; $7208: $98
    rst $38                                       ; $7209: $ff
    add sp, -$39                                  ; $720a: $e8 $c7
    cp d                                          ; $720c: $ba
    dec l                                         ; $720d: $2d
    ret nz                                        ; $720e: $c0

    rst $38                                       ; $720f: $ff
    dec h                                         ; $7210: $25
    ld [$36ba], sp                                ; $7211: $08 $ba $36
    rst $38                                       ; $7214: $ff
    rst $38                                       ; $7215: $ff
    xor b                                         ; $7216: $a8
    ld l, b                                       ; $7217: $68
    nop                                           ; $7218: $00
    cp d                                          ; $7219: $ba
    ld a, [hl+]                                   ; $721a: $2a
    jp z, Jump_058_47ff                           ; $721b: $ca $ff $47

    ld h, [hl]                                    ; $721e: $66
    cp d                                          ; $721f: $ba
    add hl, sp                                    ; $7220: $39
    rst $38                                       ; $7221: $ff
    rst $38                                       ; $7222: $ff
    db $fd                                        ; $7223: $fd
    ret z                                         ; $7224: $c8

    cp d                                          ; $7225: $ba
    add hl, hl                                    ; $7226: $29
    ret nz                                        ; $7227: $c0

    rst $38                                       ; $7228: $ff
    nop                                           ; $7229: $00
    add b                                         ; $722a: $80
    rst $20                                       ; $722b: $e7
    xor b                                         ; $722c: $a8
    ld [hl], e                                    ; $722d: $73
    rst $38                                       ; $722e: $ff
    rst $38                                       ; $722f: $ff
    ld b, b                                       ; $7230: $40
    db $ec                                        ; $7231: $ec
    dec h                                         ; $7232: $25
    xor l                                         ; $7233: $ad
    rst $38                                       ; $7234: $ff
    rst $38                                       ; $7235: $ff
    dec h                                         ; $7236: $25
    cp e                                          ; $7237: $bb
    rst $38                                       ; $7238: $ff
    rst $38                                       ; $7239: $ff
    nop                                           ; $723a: $00
    dec h                                         ; $723b: $25
    cp h                                          ; $723c: $bc
    rst $38                                       ; $723d: $ff
    rst $38                                       ; $723e: $ff
    dec h                                         ; $723f: $25
    cp a                                          ; $7240: $bf
    rst $38                                       ; $7241: $ff
    rst $38                                       ; $7242: $ff
    rst $38                                       ; $7243: $ff
    rst $38                                       ; $7244: $ff
    sub [hl]                                      ; $7245: $96
    rst $38                                       ; $7246: $ff
    rst $38                                       ; $7247: $ff
    rst $38                                       ; $7248: $ff
    rst $30                                       ; $7249: $f7
    ld l, c                                       ; $724a: $69
    nop                                           ; $724b: $00
    rst $38                                       ; $724c: $ff
    rst $38                                       ; $724d: $ff
    rst $38                                       ; $724e: $ff
    rst $38                                       ; $724f: $ff
    rst $38                                       ; $7250: $ff
    rst $38                                       ; $7251: $ff
    rst $38                                       ; $7252: $ff
    rst $38                                       ; $7253: $ff
    cp a                                          ; $7254: $bf
    ld h, l                                       ; $7255: $65
    call c, $ffff                                 ; $7256: $dc $ff $ff
    rst $38                                       ; $7259: $ff
    rst $38                                       ; $725a: $ff
    rst $38                                       ; $725b: $ff
    nop                                           ; $725c: $00
    rst $38                                       ; $725d: $ff
    rst $38                                       ; $725e: $ff
    rst $38                                       ; $725f: $ff
    rst $38                                       ; $7260: $ff
    rst $38                                       ; $7261: $ff
    rst $38                                       ; $7262: $ff
    rst $38                                       ; $7263: $ff
    rst $38                                       ; $7264: $ff
    rst $38                                       ; $7265: $ff
    rst $38                                       ; $7266: $ff
    rst $38                                       ; $7267: $ff
    rst $38                                       ; $7268: $ff
    rst $38                                       ; $7269: $ff
    rst $38                                       ; $726a: $ff
    rst $38                                       ; $726b: $ff
    rst $38                                       ; $726c: $ff
    nop                                           ; $726d: $00
    rst $38                                       ; $726e: $ff
    rst $38                                       ; $726f: $ff
    rst $38                                       ; $7270: $ff
    rst $38                                       ; $7271: $ff
    rst $38                                       ; $7272: $ff
    rst $38                                       ; $7273: $ff
    rst $38                                       ; $7274: $ff
    rst $38                                       ; $7275: $ff
    rst $38                                       ; $7276: $ff
    rst $38                                       ; $7277: $ff
    rst $38                                       ; $7278: $ff
    rst $38                                       ; $7279: $ff
    rst $38                                       ; $727a: $ff
    rst $38                                       ; $727b: $ff
    nop                                           ; $727c: $00
    cp a                                          ; $727d: $bf
    nop                                           ; $727e: $00
    rst $38                                       ; $727f: $ff
    rst $38                                       ; $7280: $ff
    rst $38                                       ; $7281: $ff

jr_058_7282:
    rst $38                                       ; $7282: $ff
    rst $38                                       ; $7283: $ff
    rst $38                                       ; $7284: $ff
    rst $38                                       ; $7285: $ff
    rst $38                                       ; $7286: $ff
    ld e, b                                       ; $7287: $58
    ld [hl], e                                    ; $7288: $73
    nop                                           ; $7289: $00
    nop                                           ; $728a: $00
    nop                                           ; $728b: $00
    db $dd                                        ; $728c: $dd
    inc d                                         ; $728d: $14
    rst $38                                       ; $728e: $ff
    ldh [rNR42], a                                ; $728f: $e0 $21
    ld [hl+], a                                   ; $7291: $22
    jr nz, @+$01                                  ; $7292: $20 $ff

    db $e4                                        ; $7294: $e4
    ld a, [bc]                                    ; $7295: $0a
    dec bc                                        ; $7296: $0b
    sbc a                                         ; $7297: $9f
    ld sp, $5a61                                  ; $7298: $31 $61 $5a
    ld e, e                                       ; $729b: $5b
    nop                                           ; $729c: $00
    rst $38                                       ; $729d: $ff
    rst $38                                       ; $729e: $ff
    rst $20                                       ; $729f: $e7
    and $24                                       ; $72a0: $e6 $24
    ld [$e0ff], sp                                ; $72a2: $08 $ff $e0
    jp nz, $ffe8                                  ; $72a5: $c2 $e8 $ff

    ldh [$60], a                                  ; $72a8: $e0 $60
    ret nz                                        ; $72aa: $c0

    rst $38                                       ; $72ab: $ff
    jp hl                                         ; $72ac: $e9


    add sp, -$7a                                  ; $72ad: $e8 $86
    push hl                                       ; $72af: $e5
    jp nz, $92e5                                  ; $72b0: $c2 $e5 $92

    cp [hl]                                       ; $72b3: $be
    ldh [$62], a                                  ; $72b4: $e0 $62
    jp z, $c0ff                                   ; $72b6: $ca $ff $c0

    db $eb                                        ; $72b9: $eb
    dec b                                         ; $72ba: $05
    rst $38                                       ; $72bb: $ff
    ldh [$c2], a                                  ; $72bc: $e0 $c2
    push hl                                       ; $72be: $e5
    and [hl]                                      ; $72bf: $a6
    and a                                         ; $72c0: $a7
    and h                                         ; $72c1: $a4
    and h                                         ; $72c2: $a4
    and h                                         ; $72c3: $a4
    jp z, $80ff                                   ; $72c4: $ca $ff $80

    ld [$4a0c], a                                 ; $72c7: $ea $0c $4a
    pop hl                                        ; $72ca: $e1
    ld b, a                                       ; $72cb: $47
    rst $38                                       ; $72cc: $ff
    ld b, [hl]                                    ; $72cd: $46
    ld d, h                                       ; $72ce: $54
    ld d, l                                       ; $72cf: $55
    ld d, h                                       ; $72d0: $54
    ld d, h                                       ; $72d1: $54
    ld d, h                                       ; $72d2: $54
    ld d, l                                       ; $72d3: $55
    ld l, [hl]                                    ; $72d4: $6e
    and a                                         ; $72d5: $a7
    ld l, a                                       ; $72d6: $6f
    add b                                         ; $72d7: $80
    add b                                         ; $72d8: $80
    jp z, Jump_058_40ff                           ; $72d9: $ca $ff $40

    ld [$c21a], a                                 ; $72dc: $ea $1a $c2
    pop hl                                        ; $72df: $e1
    ld [hl], $fd                                  ; $72e0: $36 $fd
    jr nc, @+$01                                  ; $72e2: $30 $ff

    ldh [rOCPD], a                                ; $72e4: $e0 $6b
    ld l, e                                       ; $72e6: $6b
    ld l, e                                       ; $72e7: $6b
    ld l, c                                       ; $72e8: $69
    ld [hl], $76                                  ; $72e9: $36 $76
    db $fc                                        ; $72eb: $fc
    ret nz                                        ; $72ec: $c0

    rst $38                                       ; $72ed: $ff
    nop                                           ; $72ee: $00
    ld [$310c], a                                 ; $72ef: $ea $0c $31
    ld c, l                                       ; $72f2: $4d
    ld b, [hl]                                    ; $72f3: $46
    ld [hl], $6b                                  ; $72f4: $36 $6b
    add hl, sp                                    ; $72f6: $39
    ld l, e                                       ; $72f7: $6b
    ret nz                                        ; $72f8: $c0

    pop hl                                        ; $72f9: $e1
    cp a                                          ; $72fa: $bf
    ldh [rBCPD], a                                ; $72fb: $e0 $69
    jr nc, jr_058_7282                            ; $72fd: $30 $83

    ret nz                                        ; $72ff: $c0

Jump_058_7300:
    rst $38                                       ; $7300: $ff
    jp hl                                         ; $7301: $e9


    add sp, $7f                                   ; $7302: $e8 $7f
    dec b                                         ; $7304: $05
    ld b, $1e                                     ; $7305: $06 $1e

jr_058_7307:
    ld sp, $3039                                  ; $7307: $31 $39 $30
    ld l, c                                       ; $730a: $69
    add [hl]                                      ; $730b: $86
    ldh [rIE], a                                  ; $730c: $e0 $ff
    jr nc, @+$6f                                  ; $730e: $30 $6d

    ld l, h                                       ; $7310: $6c
    ld l, h                                       ; $7311: $6c
    jr nc, jr_058_7381                            ; $7312: $30 $6d

    ld l, l                                       ; $7314: $6d
    ld l, d                                       ; $7315: $6a
    ld h, e                                       ; $7316: $63
    ld [hl], a                                    ; $7317: $77
    ld a, c                                       ; $7318: $79
    jp z, $e8ff                                   ; $7319: $ca $ff $e8

    rst $20                                       ; $731c: $e7
    ld c, [hl]                                    ; $731d: $4e
    ret nz                                        ; $731e: $c0

    ld c, c                                       ; $731f: $49
    ld c, b                                       ; $7320: $48
    ret nz                                        ; $7321: $c0

    pop hl                                        ; $7322: $e1
    ld l, [hl]                                    ; $7323: $6e
    push bc                                       ; $7324: $c5
    ldh [$6c], a                                  ; $7325: $e0 $6c
    ld l, h                                       ; $7327: $6c
    ld l, l                                       ; $7328: $6d
    cp a                                          ; $7329: $bf
    ldh [rBCPS], a                                ; $732a: $e0 $68
    add e                                         ; $732c: $83
    jp z, $deff                                   ; $732d: $ca $ff $de

    ret nz                                        ; $7330: $c0

    ld [$3039], a                                 ; $7331: $ea $39 $30
    ld l, d                                       ; $7334: $6a
    ld l, l                                       ; $7335: $6d
    rst $00                                       ; $7336: $c7
    pop hl                                        ; $7337: $e1
    ld l, l                                       ; $7338: $6d
    ld l, b                                       ; $7339: $68
    call $f868                                    ; $733a: $cd $68 $f8
    pop hl                                        ; $733d: $e1
    ld l, h                                       ; $733e: $6c
    ld d, e                                       ; $733f: $53
    jp z, $e8ff                                   ; $7340: $ca $ff $e8

    rst $20                                       ; $7343: $e7
    ld h, b                                       ; $7344: $60
    ld sp, $31b3                                  ; $7345: $31 $b3 $31
    ld d, e                                       ; $7348: $53
    pop bc                                        ; $7349: $c1
    ldh [$87], a                                  ; $734a: $e0 $87
    pop hl                                        ; $734c: $e1
    ld l, d                                       ; $734d: $6a
    jr nc, jr_058_7307                            ; $734e: $30 $b7

    ld [c], a                                     ; $7350: $e2
    ld l, h                                       ; $7351: $6c
    ld a, c                                       ; $7352: $79
    ld d, d                                       ; $7353: $52
    jp z, $e8ff                                   ; $7354: $ca $ff $e8

    rst $20                                       ; $7357: $e7
    ld e, e                                       ; $7358: $5b
    ld h, c                                       ; $7359: $61
    ld sp, $c152                                  ; $735a: $31 $52 $c1
    db $e4                                        ; $735d: $e4
    adc a                                         ; $735e: $8f
    ld [hl], $55                                  ; $735f: $36 $55
    ld d, h                                       ; $7361: $54
    ld [hl], $76                                  ; $7362: $36 $76
    pop hl                                        ; $7364: $e1
    add b                                         ; $7365: $80
    rst $38                                       ; $7366: $ff
    ret nz                                        ; $7367: $c0

    db $eb                                        ; $7368: $eb
    ld d, e                                       ; $7369: $53
    db $ec                                        ; $736a: $ec
    ld b, d                                       ; $736b: $42
    ldh [$c4], a                                  ; $736c: $e0 $c4
    ldh [rDMA], a                                 ; $736e: $e0 $46
    ld b, a                                       ; $7370: $47
    ld a, [$55a1]                                 ; $7371: $fa $a1 $55
    ld d, h                                       ; $7374: $54
    ld d, l                                       ; $7375: $55
    ld c, c                                       ; $7376: $49
    inc a                                         ; $7377: $3c
    jp z, $80ff                                   ; $7378: $ca $ff $80

    ld [$c43c], a                                 ; $737b: $ea $3c $c4
    db $e3                                        ; $737e: $e3
    ld b, a                                       ; $737f: $47
    and b                                         ; $7380: $a0

jr_058_7381:
    ld h, d                                       ; $7381: $62
    ld a, $a3                                     ; $7382: $3e $a3
    ldh a, [$ca]                                  ; $7384: $f0 $ca
    rst $38                                       ; $7386: $ff
    ld b, b                                       ; $7387: $40
    add sp, -$01                                  ; $7388: $e8 $ff
    ret nz                                        ; $738a: $c0

    call nz, Call_058_5de3                        ; $738b: $c4 $e3 $5d
    ld e, h                                       ; $738e: $5c
    ld e, e                                       ; $738f: $5b
    ld e, e                                       ; $7390: $5b
    ld b, a                                       ; $7391: $47
    ld e, h                                       ; $7392: $5c
    ld e, l                                       ; $7393: $5d
    ld h, d                                       ; $7394: $62
    rst $38                                       ; $7395: $ff
    ldh [$ca], a                                  ; $7396: $e0 $ca
    rst $38                                       ; $7398: $ff
    add sp, -$19                                  ; $7399: $e8 $e7
    ld e, d                                       ; $739b: $5a
    call z, $03e0                                 ; $739c: $cc $e0 $03
    ld sp, $c431                                  ; $739f: $31 $31 $c4
    pop hl                                        ; $73a2: $e1
    cp $e7                                        ; $73a3: $fe $e7
    jp z, $ffff                                   ; $73a5: $ca $ff $ff

    rst $38                                       ; $73a8: $ff
    rst $38                                       ; $73a9: $ff
    rst $38                                       ; $73aa: $ff
    rst $38                                       ; $73ab: $ff
    rst $38                                       ; $73ac: $ff
    nop                                           ; $73ad: $00
    rst $38                                       ; $73ae: $ff
    rst $38                                       ; $73af: $ff
    rst $38                                       ; $73b0: $ff
    rst $38                                       ; $73b1: $ff
    rst $38                                       ; $73b2: $ff
    rst $38                                       ; $73b3: $ff
    rst $38                                       ; $73b4: $ff
    rst $38                                       ; $73b5: $ff
    rst $38                                       ; $73b6: $ff
    rst $38                                       ; $73b7: $ff
    rst $38                                       ; $73b8: $ff
    rst $38                                       ; $73b9: $ff
    rst $38                                       ; $73ba: $ff
    rst $38                                       ; $73bb: $ff
    rst $38                                       ; $73bc: $ff
    rst $38                                       ; $73bd: $ff
    nop                                           ; $73be: $00
    rst $38                                       ; $73bf: $ff
    rst $38                                       ; $73c0: $ff
    rst $38                                       ; $73c1: $ff
    rst $38                                       ; $73c2: $ff
    rst $38                                       ; $73c3: $ff
    rst $38                                       ; $73c4: $ff
    rst $38                                       ; $73c5: $ff
    rst $38                                       ; $73c6: $ff
    rst $38                                       ; $73c7: $ff
    rst $38                                       ; $73c8: $ff
    rst $38                                       ; $73c9: $ff
    rst $38                                       ; $73ca: $ff
    rst $38                                       ; $73cb: $ff
    rst $38                                       ; $73cc: $ff
    rst $38                                       ; $73cd: $ff
    rst $38                                       ; $73ce: $ff
    nop                                           ; $73cf: $00
    rst $38                                       ; $73d0: $ff
    rst $38                                       ; $73d1: $ff
    rst $38                                       ; $73d2: $ff
    rst $38                                       ; $73d3: $ff
    rst $38                                       ; $73d4: $ff
    rst $38                                       ; $73d5: $ff
    rst $38                                       ; $73d6: $ff
    rst $38                                       ; $73d7: $ff
    rst $38                                       ; $73d8: $ff
    rst $38                                       ; $73d9: $ff
    rst $38                                       ; $73da: $ff
    rst $38                                       ; $73db: $ff
    rst $38                                       ; $73dc: $ff
    rst $38                                       ; $73dd: $ff
    rst $38                                       ; $73de: $ff
    rst $38                                       ; $73df: $ff
    nop                                           ; $73e0: $00
    rst $38                                       ; $73e1: $ff
    rst $38                                       ; $73e2: $ff
    rst $38                                       ; $73e3: $ff
    rst $38                                       ; $73e4: $ff
    rst $38                                       ; $73e5: $ff
    rst $38                                       ; $73e6: $ff
    rst $38                                       ; $73e7: $ff
    rst $38                                       ; $73e8: $ff
    rst $38                                       ; $73e9: $ff
    rst $38                                       ; $73ea: $ff
    rst $38                                       ; $73eb: $ff
    rst $38                                       ; $73ec: $ff
    rst $38                                       ; $73ed: $ff
    rst $38                                       ; $73ee: $ff
    rst $38                                       ; $73ef: $ff
    rst $38                                       ; $73f0: $ff
    nop                                           ; $73f1: $00
    rst $38                                       ; $73f2: $ff
    rst $38                                       ; $73f3: $ff
    rst $38                                       ; $73f4: $ff
    rst $38                                       ; $73f5: $ff
    rst $38                                       ; $73f6: $ff
    rst $38                                       ; $73f7: $ff
    rst $38                                       ; $73f8: $ff
    rst $38                                       ; $73f9: $ff
    rst $38                                       ; $73fa: $ff
    rst $38                                       ; $73fb: $ff
    rst $38                                       ; $73fc: $ff
    rst $38                                       ; $73fd: $ff
    rst $38                                       ; $73fe: $ff
    rst $38                                       ; $73ff: $ff
    rst $38                                       ; $7400: $ff
    rst $38                                       ; $7401: $ff
    nop                                           ; $7402: $00
    rst $38                                       ; $7403: $ff
    rst $38                                       ; $7404: $ff
    rst $38                                       ; $7405: $ff
    rst $38                                       ; $7406: $ff
    rst $38                                       ; $7407: $ff
    rst $38                                       ; $7408: $ff
    rst $38                                       ; $7409: $ff
    rst $38                                       ; $740a: $ff
    rst $38                                       ; $740b: $ff
    rst $38                                       ; $740c: $ff
    rst $38                                       ; $740d: $ff
    rst $38                                       ; $740e: $ff
    rst $38                                       ; $740f: $ff
    rst $38                                       ; $7410: $ff
    rst $38                                       ; $7411: $ff
    rst $38                                       ; $7412: $ff
    nop                                           ; $7413: $00
    rst $38                                       ; $7414: $ff
    rst $38                                       ; $7415: $ff
    rst $38                                       ; $7416: $ff
    rst $38                                       ; $7417: $ff
    rst $38                                       ; $7418: $ff
    rst $38                                       ; $7419: $ff
    rst $38                                       ; $741a: $ff
    rst $38                                       ; $741b: $ff
    rst $38                                       ; $741c: $ff
    rst $38                                       ; $741d: $ff
    rst $38                                       ; $741e: $ff
    rst $38                                       ; $741f: $ff
    rst $38                                       ; $7420: $ff
    rst $38                                       ; $7421: $ff
    rst $38                                       ; $7422: $ff
    rst $38                                       ; $7423: $ff
    nop                                           ; $7424: $00
    rst $38                                       ; $7425: $ff
    rst $38                                       ; $7426: $ff
    rst $38                                       ; $7427: $ff
    rst $38                                       ; $7428: $ff
    rst $38                                       ; $7429: $ff
    rst $38                                       ; $742a: $ff
    rst $38                                       ; $742b: $ff
    rst $38                                       ; $742c: $ff
    rst $38                                       ; $742d: $ff
    rst $38                                       ; $742e: $ff
    rst $38                                       ; $742f: $ff
    rst $38                                       ; $7430: $ff
    rst $38                                       ; $7431: $ff
    rst $38                                       ; $7432: $ff
    rst $38                                       ; $7433: $ff
    rst $38                                       ; $7434: $ff
    nop                                           ; $7435: $00
    rst $38                                       ; $7436: $ff
    rst $38                                       ; $7437: $ff
    rst $38                                       ; $7438: $ff
    rst $38                                       ; $7439: $ff
    rst $38                                       ; $743a: $ff
    rst $38                                       ; $743b: $ff
    rst $38                                       ; $743c: $ff
    rst $38                                       ; $743d: $ff
    rst $38                                       ; $743e: $ff
    rst $38                                       ; $743f: $ff
    rst $38                                       ; $7440: $ff
    rst $38                                       ; $7441: $ff
    rst $38                                       ; $7442: $ff
    rst $38                                       ; $7443: $ff
    rst $38                                       ; $7444: $ff
    rst $38                                       ; $7445: $ff
    nop                                           ; $7446: $00
    rst $38                                       ; $7447: $ff
    rst $38                                       ; $7448: $ff
    rst $38                                       ; $7449: $ff
    rst $38                                       ; $744a: $ff
    rst $38                                       ; $744b: $ff
    rst $38                                       ; $744c: $ff
    rst $38                                       ; $744d: $ff
    rst $38                                       ; $744e: $ff
    rst $38                                       ; $744f: $ff
    rst $38                                       ; $7450: $ff
    rst $38                                       ; $7451: $ff
    rst $38                                       ; $7452: $ff
    rst $38                                       ; $7453: $ff
    rst $38                                       ; $7454: $ff
    rst $38                                       ; $7455: $ff
    rst $38                                       ; $7456: $ff
    nop                                           ; $7457: $00
    rst $38                                       ; $7458: $ff
    rst $38                                       ; $7459: $ff
    rst $38                                       ; $745a: $ff
    rst $38                                       ; $745b: $ff
    rst $38                                       ; $745c: $ff
    rst $38                                       ; $745d: $ff
    rst $38                                       ; $745e: $ff
    rst $38                                       ; $745f: $ff
    rst $38                                       ; $7460: $ff
    rst $38                                       ; $7461: $ff
    rst $38                                       ; $7462: $ff
    rst $38                                       ; $7463: $ff
    rst $38                                       ; $7464: $ff
    rst $38                                       ; $7465: $ff
    rst $38                                       ; $7466: $ff
    di                                            ; $7467: $f3
    nop                                           ; $7468: $00
    nop                                           ; $7469: $00
    nop                                           ; $746a: $00
    and l                                         ; $746b: $a5
    nop                                           ; $746c: $00
    rst $38                                       ; $746d: $ff
    push hl                                       ; $746e: $e5
    ld [hl-], a                                   ; $746f: $32
    or $e6                                        ; $7470: $f6 $e6
    rst $30                                       ; $7472: $f7
    rst $20                                       ; $7473: $e7
    dec [hl]                                      ; $7474: $35
    db $ec                                        ; $7475: $ec
    xor $37                                       ; $7476: $ee $37
    db $ec                                        ; $7478: $ec
    jp c, $c7f0                                   ; $7479: $da $f0 $c7

    add sp, $33                                   ; $747c: $e8 $33
    ld sp, $f2e0                                  ; $747e: $31 $e0 $f2
    ld [hl], $30                                  ; $7481: $36 $30
    scf                                           ; $7483: $37
    cp a                                          ; $7484: $bf
    ld h, $20                                     ; $7485: $26 $20
    daa                                           ; $7487: $27
    db $10                                        ; $7488: $10
    ld d, $17                                     ; $7489: $16 $17
    jp nz, Jump_000_34f6                          ; $748b: $c2 $f6 $34

    rst $38                                       ; $748e: $ff
    ld [hl], $32                                  ; $748f: $36 $32
    jr nc, jr_058_74ca                            ; $7491: $30 $37

    ld sp, $3133                                  ; $7493: $31 $33 $31
    inc sp                                        ; $7496: $33
    nop                                           ; $7497: $00
    and b                                         ; $7498: $a0
    ei                                            ; $7499: $fb
    rst $38                                       ; $749a: $ff
    rst $28                                       ; $749b: $ef
    nop                                           ; $749c: $00
    nop                                           ; $749d: $00
    nop                                           ; $749e: $00
    and a                                         ; $749f: $a7
    ld [hl], h                                    ; $74a0: $74
    rst $10                                       ; $74a1: $d7
    ld [hl], h                                    ; $74a2: $74
    ld e, l                                       ; $74a3: $5d
    ld [hl], a                                    ; $74a4: $77
    jr nc, jr_058_7520                            ; $74a5: $30 $79

    ld hl, sp+$03                                 ; $74a7: $f8 $03
    ld c, h                                       ; $74a9: $4c
    inc bc                                        ; $74aa: $03
    ld d, e                                       ; $74ab: $53
    ld bc, $008a                                  ; $74ac: $01 $8a $00
    ldh a, [$03]                                  ; $74af: $f0 $03
    ld hl, sp+$03                                 ; $74b1: $f8 $03
    ld c, h                                       ; $74b3: $4c
    inc bc                                        ; $74b4: $03
    ld d, e                                       ; $74b5: $53
    ld bc, $47ff                                  ; $74b6: $01 $ff $47
    ldh a, [rP1]                                  ; $74b9: $f0 $00
    ld e, l                                       ; $74bb: $5d
    add hl, de                                    ; $74bc: $19
    ld c, h                                       ; $74bd: $4c
    inc bc                                        ; $74be: $03
    ld [$0825], sp                                ; $74bf: $08 $25 $08
    dec h                                         ; $74c2: $25
    ld [$0825], sp                                ; $74c3: $08 $25 $08
    dec h                                         ; $74c6: $25
    ld [$0825], sp                                ; $74c7: $08 $25 $08

jr_058_74ca:
    dec h                                         ; $74ca: $25
    ld [$0825], sp                                ; $74cb: $08 $25 $08
    dec h                                         ; $74ce: $25
    ld [$0825], sp                                ; $74cf: $08 $25 $08
    dec h                                         ; $74d2: $25
    ld [$0825], sp                                ; $74d3: $08 $25 $08
    dec h                                         ; $74d6: $25
    ld e, e                                       ; $74d7: $5b
    ld c, d                                       ; $74d8: $4a
    ld a, [bc]                                    ; $74d9: $0a
    rst $38                                       ; $74da: $ff
    ld [$0b6a], a                                 ; $74db: $ea $6a $0b

jr_058_74de:
    rst $38                                       ; $74de: $ff
    ldh [$0c], a                                  ; $74df: $e0 $0c
    rst $38                                       ; $74e1: $ff
    ldh [$31], a                                  ; $74e2: $e0 $31
    ld c, h                                       ; $74e4: $4c
    db $fd                                        ; $74e5: $fd
    ld [c], a                                     ; $74e6: $e2
    ld hl, sp-$1d                                 ; $74e7: $f8 $e3
    rst $30                                       ; $74e9: $f7
    ld [c], a                                     ; $74ea: $e2
    inc c                                         ; $74eb: $0c
    inc l                                         ; $74ec: $2c
    ld a, [$fbe2]                                 ; $74ed: $fa $e2 $fb
    db $ed                                        ; $74f0: $ed
    ld bc, $bf0a                                  ; $74f1: $01 $0a $bf
    ld [$e2c1], a                                 ; $74f4: $ea $c1 $e2
    ret nz                                        ; $74f7: $c0

    ldh [$cd], a                                  ; $74f8: $e0 $cd
    ldh [$fd], a                                  ; $74fa: $e0 $fd
    ld [c], a                                     ; $74fc: $e2
    push bc                                       ; $74fd: $c5
    ld [c], a                                     ; $74fe: $e2
    ret nz                                        ; $74ff: $c0

    ldh [$b1], a                                  ; $7500: $e0 $b1
    inc l                                         ; $7502: $2c
    jp $c0e0                                      ; $7503: $c3 $e0 $c0


    db $f4                                        ; $7506: $f4
    adc [hl]                                      ; $7507: $8e
    ldh [rWX], a                                  ; $7508: $e0 $4b
    ld c, e                                       ; $750a: $4b
    adc d                                         ; $750b: $8a
    ldh [$2b], a                                  ; $750c: $e0 $2b
    pop bc                                        ; $750e: $c1
    dec hl                                        ; $750f: $2b
    call nz, $f9e2                                ; $7510: $c4 $e2 $f9
    pop hl                                        ; $7513: $e1
    ret nz                                        ; $7514: $c0

    db $e4                                        ; $7515: $e4
    cp h                                          ; $7516: $bc
    ldh [$c2], a                                  ; $7517: $e0 $c2
    db $e3                                        ; $7519: $e3
    ld c, h                                       ; $751a: $4c
    inc l                                         ; $751b: $2c
    jr nc, jr_058_74de                            ; $751c: $30 $c0

    ld [c], a                                     ; $751e: $e2
    ld a, a                                       ; $751f: $7f

jr_058_7520:
    ld a, [c]                                     ; $7520: $f2
    adc [hl]                                      ; $7521: $8e
    db $e3                                        ; $7522: $e3
    ei                                            ; $7523: $fb
    jp hl                                         ; $7524: $e9


    dec hl                                        ; $7525: $2b
    dec bc                                        ; $7526: $0b
    add c                                         ; $7527: $81
    db $e4                                        ; $7528: $e4
    db $fc                                        ; $7529: $fc
    db $e3                                        ; $752a: $e3
    ld h, b                                       ; $752b: $60
    ld b, b                                       ; $752c: $40
    pop hl                                        ; $752d: $e1
    push bc                                       ; $752e: $c5
    ld [c], a                                     ; $752f: $e2
    ret nz                                        ; $7530: $c0

    di                                            ; $7531: $f3
    jp z, Jump_000_06e7                           ; $7532: $ca $e7 $06

    pop hl                                        ; $7535: $e1
    ld l, e                                       ; $7536: $6b
    dec bc                                        ; $7537: $0b
    ld [hl], l                                    ; $7538: $75
    ldh [rSB], a                                  ; $7539: $e0 $01
    ld c, e                                       ; $753b: $4b
    inc bc                                        ; $753c: $03
    ldh [rDMA], a                                 ; $753d: $e0 $46
    ld [c], a                                     ; $753f: $e2
    ld b, b                                       ; $7540: $40
    rst $20                                       ; $7541: $e7
    pop bc                                        ; $7542: $c1
    ld [c], a                                     ; $7543: $e2
    rst $38                                       ; $7544: $ff
    push bc                                       ; $7545: $c5
    rst $30                                       ; $7546: $f7
    call nz, $c3f0                                ; $7547: $c4 $f0 $c3
    inc b                                         ; $754a: $04
    add c                                         ; $754b: $81
    db $e3                                        ; $754c: $e3
    ret z                                         ; $754d: $c8

    ldh [rWX], a                                  ; $754e: $e0 $4b
    ld b, b                                       ; $7550: $40
    pop hl                                        ; $7551: $e1
    ld hl, sp-$1f                                 ; $7552: $f8 $e1

jr_058_7554:
    ret nz                                        ; $7554: $c0

    ldh [$bf], a                                  ; $7555: $e0 $bf
    call nz, $c3cf                                ; $7557: $c4 $cf $c3
    add sp, $38                                   ; $755a: $e8 $38
    db $e4                                        ; $755c: $e4
    db $fd                                        ; $755d: $fd
    db $f4                                        ; $755e: $f4
    adc d                                         ; $755f: $8a
    ld [c], a                                     ; $7560: $e2
    ld l, e                                       ; $7561: $6b
    inc b                                         ; $7562: $04
    ldh [rOCPD], a                                ; $7563: $e0 $6b
    ld c, e                                       ; $7565: $4b
    ld c, e                                       ; $7566: $4b
    nop                                           ; $7567: $00
    ld hl, sp-$1e                                 ; $7568: $f8 $e2
    di                                            ; $756a: $f3
    ret nz                                        ; $756b: $c0

    pop bc                                        ; $756c: $c1
    push hl                                       ; $756d: $e5
    ld a, a                                       ; $756e: $7f
    jp z, $e780                                   ; $756f: $ca $80 $e7

    ld b, b                                       ; $7572: $40
    db $ec                                        ; $7573: $ec
    jp nz, $c4e0                                  ; $7574: $c2 $e0 $c4

    call nz, $bc02                                ; $7577: $c4 $02 $bc
    jp $804b                                      ; $757a: $c3 $4b $80


    ldh [$c0], a                                  ; $757d: $e0 $c0
    push bc                                       ; $757f: $c5

Jump_058_7580:
    add b                                         ; $7580: $80
    jp $d935                                      ; $7581: $c3 $35 $d9


    jp nz, $c1e2                                  ; $7584: $c2 $e2 $c1

    jp hl                                         ; $7587: $e9


    nop                                           ; $7588: $00
    nop                                           ; $7589: $00
    ld [c], a                                     ; $758a: $e2
    add c                                         ; $758b: $81
    push bc                                       ; $758c: $c5
    jr c, jr_058_7554                             ; $758d: $38 $c5

    dec [hl]                                      ; $758f: $35
    rst $10                                       ; $7590: $d7
    ld c, b                                       ; $7591: $48
    ret nz                                        ; $7592: $c0

    ld b, [hl]                                    ; $7593: $46
    pop bc                                        ; $7594: $c1
    ld a, $c1                                     ; $7595: $3e $c1
    cp h                                          ; $7597: $bc
    jp Jump_058_4b07                              ; $7598: $c3 $07 $4b


    dec bc                                        ; $759b: $0b
    dec hl                                        ; $759c: $2b
    rlca                                          ; $759d: $07
    jp nz, $e2fc                                  ; $759e: $c2 $fc $e2

    ld b, b                                       ; $75a1: $40
    call nz, $d835                                ; $75a2: $c4 $35 $d8
    ret nz                                        ; $75a5: $c0

    pop hl                                        ; $75a6: $e1
    ld b, $fe                                     ; $75a7: $06 $fe
    and b                                         ; $75a9: $a0
    ld l, e                                       ; $75aa: $6b
    ld l, e                                       ; $75ab: $6b
    add [hl]                                      ; $75ac: $86
    ld [c], a                                     ; $75ad: $e2
    rst $38                                       ; $75ae: $ff
    ld [c], a                                     ; $75af: $e2
    ret nz                                        ; $75b0: $c0

    ldh [rSB], a                                  ; $75b1: $e0 $01
    add sp, $35                                   ; $75b3: $e8 $35
    db $d3                                        ; $75b5: $d3
    nop                                           ; $75b6: $00
    ld [hl], e                                    ; $75b7: $73
    and [hl]                                      ; $75b8: $a6
    add d                                         ; $75b9: $82
    db $e3                                        ; $75ba: $e3
    adc e                                         ; $75bb: $8b
    ldh [$bf], a                                  ; $75bc: $e0 $bf
    ldh [$c1], a                                  ; $75be: $e0 $c1
    db $e3                                        ; $75c0: $e3
    ret nz                                        ; $75c1: $c0

    pop bc                                        ; $75c2: $c1
    ld b, $c4                                     ; $75c3: $06 $c4
    or a                                          ; $75c5: $b7
    ld [c], a                                     ; $75c6: $e2
    inc [hl]                                      ; $75c7: $34
    dec [hl]                                      ; $75c8: $35
    reti                                          ; $75c9: $d9


    ret nz                                        ; $75ca: $c0

    ld [c], a                                     ; $75cb: $e2
    dec hl                                        ; $75cc: $2b
    add c                                         ; $75cd: $81
    and b                                         ; $75ce: $a0
    ld l, e                                       ; $75cf: $6b
    ld c, e                                       ; $75d0: $4b
    ld sp, hl                                     ; $75d1: $f9
    ldh [$c1], a                                  ; $75d2: $e0 $c1
    db $e4                                        ; $75d4: $e4
    nop                                           ; $75d5: $00
    ld b, b                                       ; $75d6: $40
    and d                                         ; $75d7: $a2
    ret nz                                        ; $75d8: $c0

    and l                                         ; $75d9: $a5
    dec [hl]                                      ; $75da: $35
    db $dd                                        ; $75db: $dd
    rlca                                          ; $75dc: $07
    jp nz, $e243                                  ; $75dd: $c2 $43 $e2

    or a                                          ; $75e0: $b7
    pop hl                                        ; $75e1: $e1
    pop bc                                        ; $75e2: $c1
    ld [c], a                                     ; $75e3: $e2
    add b                                         ; $75e4: $80
    and b                                         ; $75e5: $a0
    add b                                         ; $75e6: $80
    dec b                                         ; $75e7: $05
    and e                                         ; $75e8: $a3
    ld bc, $35a3                                  ; $75e9: $01 $a3 $35
    jp nc, $a6b2                                  ; $75ec: $d2 $b2 $a6

    rst $00                                       ; $75ef: $c7
    jp nz, $86fd                                  ; $75f0: $c2 $fd $86

    ld a, [hl-]                                   ; $75f3: $3a
    pop hl                                        ; $75f4: $e1
    dec bc                                        ; $75f5: $0b
    pop bc                                        ; $75f6: $c1
    ld l, e                                       ; $75f7: $6b
    nop                                           ; $75f8: $00
    jp hl                                         ; $75f9: $e9


    dec [hl]                                      ; $75fa: $35
    ret z                                         ; $75fb: $c8

    ld [hl], h                                    ; $75fc: $74
    and [hl]                                      ; $75fd: $a6
    ret nz                                        ; $75fe: $c0

    jp hl                                         ; $75ff: $e9


    jp Jump_058_6b82                              ; $7600: $c3 $82 $6b


    ld l, e                                       ; $7603: $6b
    ld bc, $bb0a                                  ; $7604: $01 $0a $bb
    add h                                         ; $7607: $84
    dec [hl]                                      ; $7608: $35
    pop hl                                        ; $7609: $e1
    nop                                           ; $760a: $00
    db $eb                                        ; $760b: $eb
    dec [hl]                                      ; $760c: $35
    call z, $a53c                                 ; $760d: $cc $3c $a5
    ld [hl-], a                                   ; $7610: $32
    add l                                         ; $7611: $85
    ld e, c                                       ; $7612: $59
    add l                                         ; $7613: $85
    nop                                           ; $7614: $00
    call Call_000_0884                            ; $7615: $cd $84 $08
    sub d                                         ; $7618: $92
    dec [hl]                                      ; $7619: $35
    call nz, $e5dd                                ; $761a: $c4 $dd $e5
    ret nz                                        ; $761d: $c0

    ld [$f5cd], a                                 ; $761e: $ea $cd $f5
    ld [$b78b], sp                                ; $7621: $08 $8b $b7
    push bc                                       ; $7624: $c5
    nop                                           ; $7625: $00
    push af                                       ; $7626: $f5
    sub b                                         ; $7627: $90
    push de                                       ; $7628: $d5
    ld [hl], l                                    ; $7629: $75
    ld [$3a89], sp                                ; $762a: $08 $89 $3a
    and a                                         ; $762d: $a7
    ld l, l                                       ; $762e: $6d
    push bc                                       ; $762f: $c5
    xor a                                         ; $7630: $af
    ld h, b                                       ; $7631: $60
    ld [hl], b                                    ; $7632: $70
    ld h, h                                       ; $7633: $64
    push de                                       ; $7634: $d5
    ld [hl], h                                    ; $7635: $74
    nop                                           ; $7636: $00
    ld [$3c89], sp                                ; $7637: $08 $89 $3c
    ld h, [hl]                                    ; $763a: $66
    rst $38                                       ; $763b: $ff
    ret                                           ; $763c: $c9


    jr nc, @+$66                                  ; $763d: $30 $64

    push de                                       ; $763f: $d5
    ld [hl], h                                    ; $7640: $74
    ld [$b28a], sp                                ; $7641: $08 $8a $b2
    add [hl]                                      ; $7644: $86
    db $ed                                        ; $7645: $ed
    and a                                         ; $7646: $a7
    nop                                           ; $7647: $00
    ld a, [c]                                     ; $7648: $f2
    ld b, [hl]                                    ; $7649: $46
    push de                                       ; $764a: $d5
    ld [hl], a                                    ; $764b: $77
    ld [$0187], sp                                ; $764c: $08 $87 $01
    add a                                         ; $764f: $87
    scf                                           ; $7650: $37
    ld h, c                                       ; $7651: $61
    inc b                                         ; $7652: $04
    jp $ccbf                                      ; $7653: $c3 $bf $cc


    push de                                       ; $7656: $d5
    ld l, a                                       ; $7657: $6f
    nop                                           ; $7658: $00
    ld [$c188], sp                                ; $7659: $08 $88 $c1
    ld l, d                                       ; $765c: $6a
    push bc                                       ; $765d: $c5
    and h                                         ; $765e: $a4
    ld a, a                                       ; $765f: $7f
    rst $18                                       ; $7660: $df
    ret z                                         ; $7661: $c8

    ld l, b                                       ; $7662: $68
    ld [hl], h                                    ; $7663: $74
    ld h, [hl]                                    ; $7664: $66
    dec sp                                        ; $7665: $3b
    ld h, [hl]                                    ; $7666: $66
    or d                                          ; $7667: $b2
    ld l, b                                       ; $7668: $68
    nop                                           ; $7669: $00
    ld d, h                                       ; $766a: $54
    ld d, h                                       ; $766b: $54
    ld c, c                                       ; $766c: $49
    ld l, b                                       ; $766d: $68
    ld a, [bc]                                    ; $766e: $0a
    add $46                                       ; $766f: $c6 $46
    xor d                                         ; $7671: $aa
    add c                                         ; $7672: $81
    ld a, [$c3cc]                                 ; $7673: $fa $cc $c3
    rra                                           ; $7676: $1f
    xor $b8                                       ; $7677: $ee $b8
    ld b, [hl]                                    ; $7679: $46
    nop                                           ; $767a: $00
    or d                                          ; $767b: $b2
    ld b, a                                       ; $767c: $47
    push de                                       ; $767d: $d5
    ld [hl], $c0                                  ; $767e: $36 $c0
    ret z                                         ; $7680: $c8

    ret nz                                        ; $7681: $c0

    ld c, a                                       ; $7682: $4f
    ret nz                                        ; $7683: $c0

jr_058_7684:
    db $ec                                        ; $7684: $ec
    push de                                       ; $7685: $d5
    jr nc, @+$55                                  ; $7686: $30 $53

    ret                                           ; $7688: $c9


    ld a, e                                       ; $7689: $7b
    ld e, b                                       ; $768a: $58
    nop                                           ; $768b: $00
    and b                                         ; $768c: $a0
    ld [hl], a                                    ; $768d: $77
    ld [hl], e                                    ; $768e: $73
    pop de                                        ; $768f: $d1
    ret nz                                        ; $7690: $c0

    ldh a, [$d5]                                  ; $7691: $f0 $d5
    inc sp                                        ; $7693: $33
    call z, $80a1                                 ; $7694: $cc $a1 $80
    rst $38                                       ; $7697: $ff
    nop                                           ; $7698: $00
    rst $10                                       ; $7699: $d7
    adc e                                         ; $769a: $8b
    add c                                         ; $769b: $81
    nop                                           ; $769c: $00
    cp e                                          ; $769d: $bb
    ld h, a                                       ; $769e: $67
    or e                                          ; $769f: $b3
    db $ec                                        ; $76a0: $ec
    pop bc                                        ; $76a1: $c1
    ldh a, [$d5]                                  ; $76a2: $f0 $d5
    inc sp                                        ; $76a4: $33
    cp l                                          ; $76a5: $bd
    rst $38                                       ; $76a6: $ff
    and b                                         ; $76a7: $a0
    halt                                          ; $76a8: $76
    ld b, e                                       ; $76a9: $43
    ld c, e                                       ; $76aa: $4b
    ld [hl], a                                    ; $76ab: $77
    rst $30                                       ; $76ac: $f7
    nop                                           ; $76ad: $00
    and b                                         ; $76ae: $a0
    ld [hl], l                                    ; $76af: $75
    rst $08                                       ; $76b0: $cf
    inc h                                         ; $76b1: $24
    ld b, b                                       ; $76b2: $40
    ld e, [hl]                                    ; $76b3: $5e
    push de                                       ; $76b4: $d5
    jr z, jr_058_7684                             ; $76b5: $28 $cd

    xor d                                         ; $76b7: $aa
    and e                                         ; $76b8: $a3
    add [hl]                                      ; $76b9: $86
    and b                                         ; $76ba: $a0
    call nc, $c880                                ; $76bb: $d4 $80 $c8
    nop                                           ; $76be: $00
    and b                                         ; $76bf: $a0
    ld a, b                                       ; $76c0: $78
    cp l                                          ; $76c1: $bd
    ld b, h                                       ; $76c2: $44
    ld a, d                                       ; $76c3: $7a
    reti                                          ; $76c4: $d9


    push de                                       ; $76c5: $d5
    ld b, a                                       ; $76c6: $47
    ld a, [de]                                    ; $76c7: $1a
    push de                                       ; $76c8: $d5
    ld b, b                                       ; $76c9: $40
    ld d, d                                       ; $76ca: $52
    ret nz                                        ; $76cb: $c0

    ret z                                         ; $76cc: $c8

    push de                                       ; $76cd: $d5
    daa                                           ; $76ce: $27
    nop                                           ; $76cf: $00
    ldh [$2b], a                                  ; $76d0: $e0 $2b
    call $4046                                    ; $76d2: $cd $46 $40
    ld d, c                                       ; $76d5: $51
    ret nz                                        ; $76d6: $c0

    xor d                                         ; $76d7: $aa
    ld a, [de]                                    ; $76d8: $1a
    db $d3                                        ; $76d9: $d3
    rlc d                                         ; $76da: $cb $02
    ld b, b                                       ; $76dc: $40
    ld d, h                                       ; $76dd: $54
    add b                                         ; $76de: $80
    xor e                                         ; $76df: $ab
    nop                                           ; $76e0: $00
    jp c, $81b4                                   ; $76e1: $da $b4 $81

    inc bc                                        ; $76e4: $03
    and b                                         ; $76e5: $a0
    ret c                                         ; $76e6: $d8

    ei                                            ; $76e7: $fb
    ld a, [$897b]                                 ; $76e8: $fa $7b $89
    ld b, b                                       ; $76eb: $40
    ld e, b                                       ; $76ec: $58
    ei                                            ; $76ed: $fb
    ld a, [$0746]                                 ; $76ee: $fa $46 $07
    nop                                           ; $76f1: $00
    and b                                         ; $76f2: $a0
    ret c                                         ; $76f3: $d8

    add b                                         ; $76f4: $80
    or $6e                                        ; $76f5: $f6 $6e
    and h                                         ; $76f7: $a4
    and b                                         ; $76f8: $a0
    push de                                       ; $76f9: $d5
    ld b, b                                       ; $76fa: $40
    rst $38                                       ; $76fb: $ff
    ld hl, $ba29                                  ; $76fc: $21 $29 $ba
    sbc l                                         ; $76ff: $9d
    ld b, b                                       ; $7700: $40
    rst $30                                       ; $7701: $f7
    nop                                           ; $7702: $00
    dec sp                                        ; $7703: $3b
    push hl                                       ; $7704: $e5
    db $ec                                        ; $7705: $ec
    daa                                           ; $7706: $27
    rst $38                                       ; $7707: $ff
    rst $38                                       ; $7708: $ff
    ret z                                         ; $7709: $c8

    ld b, a                                       ; $770a: $47
    ret nz                                        ; $770b: $c0

    db $eb                                        ; $770c: $eb
    rst $38                                       ; $770d: $ff
    rst $38                                       ; $770e: $ff
    ld [hl], e                                    ; $770f: $73
    call nc, $4f89                                ; $7710: $d4 $89 $4f
    nop                                           ; $7713: $00
    rst $38                                       ; $7714: $ff
    rst $38                                       ; $7715: $ff
    rst $38                                       ; $7716: $ff
    rst $38                                       ; $7717: $ff
    sub [hl]                                      ; $7718: $96
    rst $38                                       ; $7719: $ff
    ret nc                                        ; $771a: $d0

    rst $38                                       ; $771b: $ff
    db $dd                                        ; $771c: $dd
    rst $38                                       ; $771d: $ff
    rst $38                                       ; $771e: $ff
    rst $38                                       ; $771f: $ff
    rst $38                                       ; $7720: $ff
    rst $38                                       ; $7721: $ff
    rst $38                                       ; $7722: $ff
    rst $38                                       ; $7723: $ff
    nop                                           ; $7724: $00
    db $dd                                        ; $7725: $dd
    cpl                                           ; $7726: $2f
    call c, $ffff                                 ; $7727: $dc $ff $ff
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
    nop                                           ; $7735: $00
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
    nop                                           ; $7746: $00
    rst $38                                       ; $7747: $ff
    rst $38                                       ; $7748: $ff
    rst $38                                       ; $7749: $ff
    rst $38                                       ; $774a: $ff
    rst $38                                       ; $774b: $ff
    rst $38                                       ; $774c: $ff
    nop                                           ; $774d: $00
    cp a                                          ; $774e: $bf
    rst $38                                       ; $774f: $ff
    rst $38                                       ; $7750: $ff
    rst $38                                       ; $7751: $ff
    rst $38                                       ; $7752: $ff
    rst $38                                       ; $7753: $ff
    rst $38                                       ; $7754: $ff
    rst $38                                       ; $7755: $ff
    rst $38                                       ; $7756: $ff
    nop                                           ; $7757: $00
    ld e, e                                       ; $7758: $5b
    ld [hl], e                                    ; $7759: $73
    nop                                           ; $775a: $00
    nop                                           ; $775b: $00
    nop                                           ; $775c: $00
    ld e, e                                       ; $775d: $5b
    ld c, [hl]                                    ; $775e: $4e
    adc b                                         ; $775f: $88
    rst $38                                       ; $7760: $ff
    ld [$5b8c], a                                 ; $7761: $ea $8c $5b
    rst $38                                       ; $7764: $ff
    ldh [rP1], a                                  ; $7765: $e0 $00
    rst $38                                       ; $7767: $ff
    rst $38                                       ; $7768: $ff
    add d                                         ; $7769: $82
    rst $20                                       ; $776a: $e7
    and $87                                       ; $776b: $e6 $87
    cp a                                          ; $776d: $bf
    ld [$e2c1], a                                 ; $776e: $ea $c1 $e2
    ret nz                                        ; $7771: $c0

    rst $38                                       ; $7772: $ff
    ret nz                                        ; $7773: $c0

    jp hl                                         ; $7774: $e9


    adc [hl]                                      ; $7775: $8e
    ld [c], a                                     ; $7776: $e2
    ld e, h                                       ; $7777: $5c
    cpl                                           ; $7778: $2f
    ld e, l                                       ; $7779: $5d
    ld sp, $5c5d                                  ; $777a: $31 $5d $5c
    ld sp, hl                                     ; $777d: $f9
    pop hl                                        ; $777e: $e1
    ld h, d                                       ; $777f: $62
    ld sp, hl                                     ; $7780: $f9
    pop hl                                        ; $7781: $e1
    jp z, $b0ff                                   ; $7782: $ca $ff $b0

    add sp, -$19                                  ; $7785: $e8 $e7
    ld c, a                                       ; $7787: $4f
    pop hl                                        ; $7788: $e1
    jp nz, $ffe0                                  ; $7789: $c2 $e0 $ff

    pop hl                                        ; $778c: $e1
    ld h, d                                       ; $778d: $62
    ld h, d                                       ; $778e: $62
    ld sp, hl                                     ; $778f: $f9
    ld [c], a                                     ; $7790: $e2
    ld e, h                                       ; $7791: $5c
    cp b                                          ; $7792: $b8
    ret nz                                        ; $7793: $c0

    rst $38                                       ; $7794: $ff
    jp hl                                         ; $7795: $e9


    add sp, -$3e                                  ; $7796: $e8 $c2
    db $e3                                        ; $7798: $e3
    inc [hl]                                      ; $7799: $34
    ld d, a                                       ; $779a: $57
    inc [hl]                                      ; $779b: $34
    cp l                                          ; $779c: $bd
    ld [c], a                                     ; $779d: $e2
    ld c, l                                       ; $779e: $4d
    rra                                           ; $779f: $1f
    ld d, a                                       ; $77a0: $57
    ld c, l                                       ; $77a1: $4d
    ld sp, $5f31                                  ; $77a2: $31 $31 $5f
    jp z, $e8ff                                   ; $77a5: $ca $ff $e8

    rst $20                                       ; $77a8: $e7
    add h                                         ; $77a9: $84
    ld [c], a                                     ; $77aa: $e2
    sbc a                                         ; $77ab: $9f
    inc [hl]                                      ; $77ac: $34
    ld [hl-], a                                   ; $77ad: $32
    ld l, b                                       ; $77ae: $68
    ld b, h                                       ; $77af: $44
    ld a, [hl-]                                   ; $77b0: $3a
    cp [hl]                                       ; $77b1: $be
    ldh [$f8], a                                  ; $77b2: $e0 $f8
    ldh [$3d], a                                  ; $77b4: $e0 $3d
    rst $00                                       ; $77b6: $c7
    ld c, l                                       ; $77b7: $4d
    ld sp, $ca5e                                  ; $77b8: $31 $5e $ca
    rst $38                                       ; $77bb: $ff
    add sp, -$19                                  ; $77bc: $e8 $e7
    jp nz, Jump_058_45e1                          ; $77be: $c2 $e1 $45

    ld b, h                                       ; $77c1: $44
    ld a, a                                       ; $77c2: $7f
    ld l, d                                       ; $77c3: $6a
    ld l, b                                       ; $77c4: $68
    ld l, d                                       ; $77c5: $6a
    jr nc, jr_058_780c                            ; $77c6: $30 $44

    ld a, [hl-]                                   ; $77c8: $3a
    ld a, [hl-]                                   ; $77c9: $3a
    ld hl, sp-$1f                                 ; $77ca: $f8 $e1
    rst $00                                       ; $77cc: $c7
    ld [hl-], a                                   ; $77cd: $32
    ld c, l                                       ; $77ce: $4d
    ld sp, $ffca                                  ; $77cf: $31 $ca $ff
    ret nz                                        ; $77d2: $c0

    add sp, -$3e                                  ; $77d3: $e8 $c2
    ldh [$6d], a                                  ; $77d5: $e0 $6d
    ld l, d                                       ; $77d7: $6a
    dec hl                                        ; $77d8: $2b

jr_058_77d9:
    ld l, d                                       ; $77d9: $6a
    jr nc, jr_058_77d9                            ; $77da: $30 $fd

    ldh [$30], a                                  ; $77dc: $e0 $30
    ei                                            ; $77de: $fb
    pop hl                                        ; $77df: $e1
    ld l, d                                       ; $77e0: $6a
    cp a                                          ; $77e1: $bf
    ldh [$ca], a                                  ; $77e2: $e0 $ca
    rst $38                                       ; $77e4: $ff
    ld c, [hl]                                    ; $77e5: $4e
    add sp, -$19                                  ; $77e6: $e8 $e7
    inc a                                         ; $77e8: $3c
    ld b, h                                       ; $77e9: $44
    ld l, l                                       ; $77ea: $6d
    pop bc                                        ; $77eb: $c1
    pop hl                                        ; $77ec: $e1
    call nz, $68e1                                ; $77ed: $c4 $e1 $68
    cp h                                          ; $77f0: $bc
    db $e3                                        ; $77f1: $e3
    ld d, e                                       ; $77f2: $53
    ld l, c                                       ; $77f3: $69
    add hl, sp                                    ; $77f4: $39
    jp z, $e8ff                                   ; $77f5: $ca $ff $e8

    rst $20                                       ; $77f8: $e7
    ld d, d                                       ; $77f9: $52
    pop bc                                        ; $77fa: $c1
    db $e3                                        ; $77fb: $e3
    ld l, b                                       ; $77fc: $68
    add e                                         ; $77fd: $83
    ldh [$a4], a                                  ; $77fe: $e0 $a4
    inc a                                         ; $7800: $3c
    ldh [$c0], a                                  ; $7801: $e0 $c0
    ld [c], a                                     ; $7803: $e2
    ld d, d                                       ; $7804: $52
    jp z, $e8ff                                   ; $7805: $ca $ff $e8

    rst $20                                       ; $7808: $e7
    ld d, e                                       ; $7809: $53
    add d                                         ; $780a: $82
    ld [c], a                                     ; $780b: $e2

jr_058_780c:
    ld l, d                                       ; $780c: $6a
    dec [hl]                                      ; $780d: $35
    ld l, h                                       ; $780e: $6c
    call nz, $68e2                                ; $780f: $c4 $e2 $68
    rst $38                                       ; $7812: $ff
    ldh [rOCPS], a                                ; $7813: $e0 $6a
    ld h, a                                       ; $7815: $67
    ret nz                                        ; $7816: $c0

    rst $38                                       ; $7817: $ff
    jp hl                                         ; $7818: $e9


    add sp, -$63                                  ; $7819: $e8 $9d
    add hl, sp                                    ; $781b: $39
    pop bc                                        ; $781c: $c1
    ld [c], a                                     ; $781d: $e2
    ld l, l                                       ; $781e: $6d
    ld b, h                                       ; $781f: $44
    ld b, h                                       ; $7820: $44
    cp d                                          ; $7821: $ba
    pop hl                                        ; $7822: $e1
    ret nz                                        ; $7823: $c0

    pop hl                                        ; $7824: $e1
    ld h, a                                       ; $7825: $67
    ld sp, hl                                     ; $7826: $f9
    ld h, a                                       ; $7827: $67
    ld b, b                                       ; $7828: $40
    rst $38                                       ; $7829: $ff
    jp hl                                         ; $782a: $e9


    add sp, $4d                                   ; $782b: $e8 $4d
    ld b, l                                       ; $782d: $45
    ld b, h                                       ; $782e: $44
    jr nc, jr_058_789b                            ; $782f: $30 $6a

    ld a, [hl]                                    ; $7831: $7e
    ld b, e                                       ; $7832: $43
    ret nz                                        ; $7833: $c0

    inc [hl]                                      ; $7834: $34
    ld b, [hl]                                    ; $7835: $46
    ld [hl], $6a                                  ; $7836: $36 $6a
    ld l, d                                       ; $7838: $6a
    ld h, l                                       ; $7839: $65
    rst $38                                       ; $783a: $ff
    pop hl                                        ; $783b: $e1
    call c, $dfc0                                 ; $783c: $dc $c0 $df
    ld b, b                                       ; $783f: $40
    swap h                                        ; $7840: $cb $34
    ld b, l                                       ; $7842: $45
    ld b, l                                       ; $7843: $45
    jp $47a2                                      ; $7844: $c3 $a2 $47


    ld b, [hl]                                    ; $7847: $46
    ld bc, $c136                                  ; $7848: $01 $36 $c1
    db $e3                                        ; $784b: $e3
    ld b, b                                       ; $784c: $40
    rst $18                                       ; $784d: $df
    jp hl                                         ; $784e: $e9


    add sp, $45                                   ; $784f: $e8 $45
    and e                                         ; $7851: $a3
    ld b, h                                       ; $7852: $44
    and e                                         ; $7853: $a3
    cp [hl]                                       ; $7854: $be
    pop hl                                        ; $7855: $e1
    pop bc                                        ; $7856: $c1
    ldh [$71], a                                  ; $7857: $e0 $71
    ld h, b                                       ; $7859: $60
    jp z, Jump_058_40ff                           ; $785a: $ca $ff $40

    xor b                                         ; $785d: $a8
    inc bc                                        ; $785e: $03
    and c                                         ; $785f: $a1
    ld e, l                                       ; $7860: $5d
    ld e, h                                       ; $7861: $5c
    ld e, d                                       ; $7862: $5a
    ei                                            ; $7863: $fb
    add e                                         ; $7864: $83
    inc bc                                        ; $7865: $03
    ld b, a                                       ; $7866: $47
    ld d, [hl]                                    ; $7867: $56
    pop bc                                        ; $7868: $c1
    ldh [rP1], a                                  ; $7869: $e0 $00
    cp a                                          ; $786b: $bf
    rst $38                                       ; $786c: $ff
    rst $38                                       ; $786d: $ff
    rst $38                                       ; $786e: $ff
    rst $38                                       ; $786f: $ff
    rst $38                                       ; $7870: $ff
    rst $38                                       ; $7871: $ff
    rst $38                                       ; $7872: $ff
    rst $38                                       ; $7873: $ff
    nop                                           ; $7874: $00
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
    nop                                           ; $7885: $00
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
    nop                                           ; $7896: $00
    rst $38                                       ; $7897: $ff
    rst $38                                       ; $7898: $ff
    rst $38                                       ; $7899: $ff
    rst $38                                       ; $789a: $ff

jr_058_789b:
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
    nop                                           ; $78a7: $00
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
    nop                                           ; $78b8: $00
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
    nop                                           ; $78c9: $00
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
    nop                                           ; $78da: $00
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
    nop                                           ; $78eb: $00
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
    nop                                           ; $78fc: $00
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
    nop                                           ; $790d: $00
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
    nop                                           ; $791e: $00
    rst $38                                       ; $791f: $ff

Jump_058_7920:
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
    db $f4                                        ; $792c: $f4
    nop                                           ; $792d: $00
    nop                                           ; $792e: $00
    nop                                           ; $792f: $00
    and l                                         ; $7930: $a5
    nop                                           ; $7931: $00
    rst $38                                       ; $7932: $ff
    push hl                                       ; $7933: $e5
    ld [hl-], a                                   ; $7934: $32
    or $e6                                        ; $7935: $f6 $e6
    rst $30                                       ; $7937: $f7
    rst $20                                       ; $7938: $e7
    dec [hl]                                      ; $7939: $35
    db $ec                                        ; $793a: $ec
    xor $37                                       ; $793b: $ee $37
    db $ec                                        ; $793d: $ec
    jp c, $c7f0                                   ; $793e: $da $f0 $c7

    add sp, $33                                   ; $7941: $e8 $33
    ld sp, $f2e0                                  ; $7943: $31 $e0 $f2
    ld [hl], $30                                  ; $7946: $36 $30
    scf                                           ; $7948: $37
    cp a                                          ; $7949: $bf
    ld h, $20                                     ; $794a: $26 $20
    daa                                           ; $794c: $27
    db $10                                        ; $794d: $10
    ld d, $17                                     ; $794e: $16 $17
    jp nz, Jump_000_34f6                          ; $7950: $c2 $f6 $34

    rst $38                                       ; $7953: $ff
    ld [hl], $32                                  ; $7954: $36 $32
    jr nc, jr_058_798f                            ; $7956: $30 $37

    ld sp, $3133                                  ; $7958: $31 $33 $31
    inc sp                                        ; $795b: $33
    nop                                           ; $795c: $00
    and b                                         ; $795d: $a0
    ei                                            ; $795e: $fb
    rst $38                                       ; $795f: $ff
    rst $28                                       ; $7960: $ef
    nop                                           ; $7961: $00
    nop                                           ; $7962: $00
    nop                                           ; $7963: $00
    ld l, h                                       ; $7964: $6c
    ld a, c                                       ; $7965: $79
    sbc h                                         ; $7966: $9c
    ld a, c                                       ; $7967: $79
    dec l                                         ; $7968: $2d
    ld a, h                                       ; $7969: $7c
    inc b                                         ; $796a: $04
    ld a, [hl]                                    ; $796b: $7e
    ld hl, sp+$03                                 ; $796c: $f8 $03
    ld c, h                                       ; $796e: $4c
    inc bc                                        ; $796f: $03
    ld d, e                                       ; $7970: $53

Jump_058_7971:
    ld bc, $008a                                  ; $7971: $01 $8a $00
    ldh a, [$03]                                  ; $7974: $f0 $03
    ld hl, sp+$03                                 ; $7976: $f8 $03
    ld c, h                                       ; $7978: $4c
    inc bc                                        ; $7979: $03
    ld d, e                                       ; $797a: $53
    ld bc, $47ff                                  ; $797b: $01 $ff $47
    ldh a, [rP1]                                  ; $797e: $f0 $00
    ld e, l                                       ; $7980: $5d
    add hl, de                                    ; $7981: $19
    ld c, h                                       ; $7982: $4c
    inc bc                                        ; $7983: $03
    ld [$0825], sp                                ; $7984: $08 $25 $08
    dec h                                         ; $7987: $25
    ld [$0825], sp                                ; $7988: $08 $25 $08
    dec h                                         ; $798b: $25
    ld [$0825], sp                                ; $798c: $08 $25 $08

jr_058_798f:
    dec h                                         ; $798f: $25
    ld [$0825], sp                                ; $7990: $08 $25 $08
    dec h                                         ; $7993: $25
    ld [$0825], sp                                ; $7994: $08 $25 $08
    dec h                                         ; $7997: $25
    ld [$0825], sp                                ; $7998: $08 $25 $08
    dec h                                         ; $799b: $25
    db $fd                                        ; $799c: $fd
    inc c                                         ; $799d: $0c
    rst $38                                       ; $799e: $ff
    db $e4                                        ; $799f: $e4
    dec bc                                        ; $79a0: $0b
    dec bc                                        ; $79a1: $0b
    dec bc                                        ; $79a2: $0b
    ld l, e                                       ; $79a3: $6b
    ld l, e                                       ; $79a4: $6b
    ld c, e                                       ; $79a5: $4b
    rst $38                                       ; $79a6: $ff
    ld c, e                                       ; $79a7: $4b
    ld c, e                                       ; $79a8: $4b
    dec bc                                        ; $79a9: $0b
    dec bc                                        ; $79aa: $0b
    ld c, e                                       ; $79ab: $4b
    dec hl                                        ; $79ac: $2b
    ld c, h                                       ; $79ad: $4c
    ld c, h                                       ; $79ae: $4c
    inc bc                                        ; $79af: $03
    inc c                                         ; $79b0: $0c
    ld c, h                                       ; $79b1: $4c
    rst $38                                       ; $79b2: $ff
    ldh [$e5], a                                  ; $79b3: $e0 $e5
    ldh [$fc], a                                  ; $79b5: $e0 $fc
    ldh [$f9], a                                  ; $79b7: $e0 $f9
    pop hl                                        ; $79b9: $e1
    ei                                            ; $79ba: $fb
    db $e3                                        ; $79bb: $e3
    db $fc                                        ; $79bc: $fc
    ld sp, hl                                     ; $79bd: $f9
    inc c                                         ; $79be: $0c
    pop bc                                        ; $79bf: $c1
    ld [c], a                                     ; $79c0: $e2
    cp a                                          ; $79c1: $bf
    ldh [$2b], a                                  ; $79c2: $e0 $2b
    ld c, e                                       ; $79c4: $4b
    ret nz                                        ; $79c5: $c0

    ldh [$ac], a                                  ; $79c6: $e0 $ac
    ld [c], a                                     ; $79c8: $e2
    cp e                                          ; $79c9: $bb
    ld [c], a                                     ; $79ca: $e2
    ld a, [$08e3]                                 ; $79cb: $fa $e3 $08
    or l                                          ; $79ce: $b5
    ld [c], a                                     ; $79cf: $e2
    cp d                                          ; $79d0: $ba
    ld a, [$e282]                                 ; $79d1: $fa $82 $e2
    dec hl                                        ; $79d4: $2b
    ld a, a                                       ; $79d5: $7f
    pop hl                                        ; $79d6: $e1
    cp a                                          ; $79d7: $bf
    pop hl                                        ; $79d8: $e1
    adc h                                         ; $79d9: $8c

jr_058_79da:
    ld [c], a                                     ; $79da: $e2
    jp Jump_000_00e6                              ; $79db: $c3 $e6 $00


    ld a, [c]                                     ; $79de: $f2
    db $e4                                        ; $79df: $e4
    cp d                                          ; $79e0: $ba
    and $75                                       ; $79e1: $e6 $75
    db $eb                                        ; $79e3: $eb
    ld d, a                                       ; $79e4: $57
    ld [c], a                                     ; $79e5: $e2
    pop bc                                        ; $79e6: $c1
    db $e3                                        ; $79e7: $e3
    ret nz                                        ; $79e8: $c0

    ld [c], a                                     ; $79e9: $e2
    ld a, $e0                                     ; $79ea: $3e $e0
    ret nz                                        ; $79ec: $c0

    ldh [$80], a                                  ; $79ed: $e0 $80
    ld c, e                                       ; $79ef: $4b
    db $e3                                        ; $79f0: $e3
    ld a, [hl]                                    ; $79f1: $7e
    ld [c], a                                     ; $79f2: $e2
    db $fc                                        ; $79f3: $fc
    db $e3                                        ; $79f4: $e3
    jr c, jr_058_79da                             ; $79f5: $38 $e3

    or e                                          ; $79f7: $b3
    db $e4                                        ; $79f8: $e4
    ld b, a                                       ; $79f9: $47
    db $ec                                        ; $79fa: $ec
    db $fd                                        ; $79fb: $fd
    pop hl                                        ; $79fc: $e1
    ld l, e                                       ; $79fd: $6b
    dec hl                                        ; $79fe: $2b
    ld l, e                                       ; $79ff: $6b
    dec bc                                        ; $7a00: $0b
    ret nz                                        ; $7a01: $c0

    pop hl                                        ; $7a02: $e1
    dec bc                                        ; $7a03: $0b
    rst $38                                       ; $7a04: $ff
    pop bc                                        ; $7a05: $c1
    dec bc                                        ; $7a06: $0b
    ld c, $e3                                     ; $7a07: $0e $e3
    add d                                         ; $7a09: $82
    db $e4                                        ; $7a0a: $e4

jr_058_7a0b:
    add h                                         ; $7a0b: $84
    push af                                       ; $7a0c: $f5
    set 5, e                                      ; $7a0d: $cb $eb
    pop bc                                        ; $7a0f: $c1
    inc l                                         ; $7a10: $2c
    call z, $f9c3                                 ; $7a11: $cc $c3 $f9
    db $e3                                        ; $7a14: $e3
    call $c1c2                                    ; $7a15: $cd $c2 $c1
    pop hl                                        ; $7a18: $e1
    dec bc                                        ; $7a19: $0b
    ld [bc], a                                    ; $7a1a: $02
    cp a                                          ; $7a1b: $bf
    pop hl                                        ; $7a1c: $e1
    dec bc                                        ; $7a1d: $0b
    pop bc                                        ; $7a1e: $c1
    pop hl                                        ; $7a1f: $e1
    ret nz                                        ; $7a20: $c0

    ld [c], a                                     ; $7a21: $e2
    call $c7c4                                    ; $7a22: $cd $c4 $c7
    add $fa                                       ; $7a25: $c6 $fa
    add $39                                       ; $7a27: $c6 $39
    db $ec                                        ; $7a29: $ec
    ld bc, $ff2b                                  ; $7a2a: $01 $2b $ff
    ldh [$c1], a                                  ; $7a2d: $e0 $c1
    db $e3                                        ; $7a2f: $e3
    ld a, a                                       ; $7a30: $7f
    ldh [$c3], a                                  ; $7a31: $e0 $c3
    ret nz                                        ; $7a33: $c0

    ret nz                                        ; $7a34: $c0

    and $ce                                       ; $7a35: $e6 $ce
    add $7f                                       ; $7a37: $c6 $7f
    ret                                           ; $7a39: $c9


    ld b, $40                                     ; $7a3a: $06 $40
    rst $28                                       ; $7a3c: $ef
    ld a, [bc]                                    ; $7a3d: $0a
    dec hl                                        ; $7a3e: $2b
    add d                                         ; $7a3f: $82
    db $e4                                        ; $7a40: $e4
    scf                                           ; $7a41: $37
    ld [c], a                                     ; $7a42: $e2
    add c                                         ; $7a43: $81
    ld [c], a                                     ; $7a44: $e2

jr_058_7a45:
    ld b, b                                       ; $7a45: $40
    ldh [$09], a                                  ; $7a46: $e0 $09
    db $e3                                        ; $7a48: $e3
    jr nc, jr_058_7a0b                            ; $7a49: $30 $c0

    push bc                                       ; $7a4b: $c5
    ld a, a                                       ; $7a4c: $7f
    ret z                                         ; $7a4d: $c8

    scf                                           ; $7a4e: $37
    adc $c1                                       ; $7a4f: $ce $c1
    ldh [$0b], a                                  ; $7a51: $e0 $0b
    ld l, e                                       ; $7a53: $6b
    ret                                           ; $7a54: $c9


    db $e3                                        ; $7a55: $e3
    pop bc                                        ; $7a56: $c1
    db $e3                                        ; $7a57: $e3
    nop                                           ; $7a58: $00
    sbc b                                         ; $7a59: $98
    rst $20                                       ; $7a5a: $e7
    add c                                         ; $7a5b: $81
    add $f0                                       ; $7a5c: $c6 $f0
    and h                                         ; $7a5e: $a4
    ccf                                           ; $7a5f: $3f
    push hl                                       ; $7a60: $e5
    ret nz                                        ; $7a61: $c0

    rst $08                                       ; $7a62: $cf
    adc c                                         ; $7a63: $89
    pop bc                                        ; $7a64: $c1
    add l                                         ; $7a65: $85

jr_058_7a66:
    jp nz, $e643                                  ; $7a66: $c2 $43 $e6

    add b                                         ; $7a69: $80
    ld c, h                                       ; $7a6a: $4c
    add $b7                                       ; $7a6b: $c6 $b7
    and e                                         ; $7a6d: $a3
    ld a, b                                       ; $7a6e: $78
    call nz, $c475                                ; $7a6f: $c4 $75 $c4
    rst $00                                       ; $7a72: $c7
    xor e                                         ; $7a73: $ab
    add d                                         ; $7a74: $82
    ldh [$c1], a                                  ; $7a75: $e0 $c1
    add sp, $6c                                   ; $7a77: $e8 $6c
    nop                                           ; $7a79: $00
    and l                                         ; $7a7a: $a5
    add $06                                       ; $7a7b: $c6 $06
    push bc                                       ; $7a7d: $c5
    jr jr_058_7a45                                ; $7a7e: $18 $c5

    cpl                                           ; $7a80: $2f
    add $83                                       ; $7a81: $c6 $83
    rst $00                                       ; $7a83: $c7
    ld b, e                                       ; $7a84: $43
    and b                                         ; $7a85: $a0
    dec c                                         ; $7a86: $0d
    jp $e7ff                                      ; $7a87: $c3 $ff $e7


    ld b, b                                       ; $7a8a: $40
    push bc                                       ; $7a8b: $c5
    ret                                           ; $7a8c: $c9


    sub c                                         ; $7a8d: $91
    push hl                                       ; $7a8e: $e5
    adc d                                         ; $7a8f: $8a
    rst $20                                       ; $7a90: $e7
    cp [hl]                                       ; $7a91: $be
    add sp, $07                                   ; $7a92: $e8 $07
    and h                                         ; $7a94: $a4
    jp nz, Jump_000_2cf2                          ; $7a95: $c2 $f2 $2c

    cp [hl]                                       ; $7a98: $be
    and e                                         ; $7a99: $a3
    nop                                           ; $7a9a: $00
    ld b, h                                       ; $7a9b: $44
    rst $20                                       ; $7a9c: $e7
    xor $c5                                       ; $7a9d: $ee $c5
    xor h                                         ; $7a9f: $ac
    rst $20                                       ; $7aa0: $e7
    ret nz                                        ; $7aa1: $c0

    and $85                                       ; $7aa2: $e6 $85
    ret z                                         ; $7aa4: $c8

    ld l, h                                       ; $7aa5: $6c
    and [hl]                                      ; $7aa6: $a6
    ld b, b                                       ; $7aa7: $40
    and $81                                       ; $7aa8: $e6 $81
    call nz, $8748                                ; $7aaa: $c4 $48 $87
    and [hl]                                      ; $7aad: $a6
    daa                                           ; $7aae: $27
    and h                                         ; $7aaf: $a4
    cp h                                          ; $7ab0: $bc
    and b                                         ; $7ab1: $a0
    inc l                                         ; $7ab2: $2c
    cp d                                          ; $7ab3: $ba
    and h                                         ; $7ab4: $a4
    ld b, [hl]                                    ; $7ab5: $46
    push bc                                       ; $7ab6: $c5
    ld l, e                                       ; $7ab7: $6b
    scf                                           ; $7ab8: $37
    ret nz                                        ; $7ab9: $c0

    nop                                           ; $7aba: $00
    sbc e                                         ; $7abb: $9b
    adc h                                         ; $7abc: $8c
    cp d                                          ; $7abd: $ba
    pop af                                        ; $7abe: $f1
    jr c, jr_058_7a66                             ; $7abf: $38 $a5

    ret nz                                        ; $7ac1: $c0

    db $ed                                        ; $7ac2: $ed
    ld [bc], a                                    ; $7ac3: $02
    and b                                         ; $7ac4: $a0
    ret nz                                        ; $7ac5: $c0

    add sp, $40                                   ; $7ac6: $e8 $40
    sub c                                         ; $7ac8: $91
    ld [hl], $eb                                  ; $7ac9: $36 $eb
    nop                                           ; $7acb: $00
    add c                                         ; $7acc: $81
    push hl                                       ; $7acd: $e5
    ld e, d                                       ; $7ace: $5a
    add sp, $52                                   ; $7acf: $e8 $52
    and $58                                       ; $7ad1: $e6 $58
    and [hl]                                      ; $7ad3: $a6
    ld b, b                                       ; $7ad4: $40
    adc d                                         ; $7ad5: $8a
    ld [hl], $eb                                  ; $7ad6: $36 $eb
    ret nz                                        ; $7ad8: $c0

    rst $20                                       ; $7ad9: $e7
    ret                                           ; $7ada: $c9


    ld [$9000], a                                 ; $7adb: $ea $00 $90
    jp hl                                         ; $7ade: $e9


    ld b, b                                       ; $7adf: $40
    adc h                                         ; $7ae0: $8c

jr_058_7ae1:
    ld a, [c]                                     ; $7ae1: $f2
    adc e                                         ; $7ae2: $8b
    inc a                                         ; $7ae3: $3c
    adc e                                         ; $7ae4: $8b
    ret nc                                        ; $7ae5: $d0

    ld [hl], e                                    ; $7ae6: $73
    ld b, b                                       ; $7ae7: $40
    adc e                                         ; $7ae8: $8b
    ld a, [c]                                     ; $7ae9: $f2
    adc e                                         ; $7aea: $8b
    pop bc                                        ; $7aeb: $c1
    ret nz                                        ; $7aec: $c0

    nop                                           ; $7aed: $00
    ld a, c                                       ; $7aee: $79
    add e                                         ; $7aef: $83
    xor [hl]                                      ; $7af0: $ae
    add $90                                       ; $7af1: $c6 $90
    xor $40                                       ; $7af3: $ee $40

jr_058_7af5:
    adc h                                         ; $7af5: $8c
    ld a, [c]                                     ; $7af6: $f2
    adc e                                         ; $7af7: $8b
    ret nz                                        ; $7af8: $c0

    rst $20                                       ; $7af9: $e7
    ld h, d                                       ; $7afa: $62
    add sp, -$30                                  ; $7afb: $e8 $d0
    ld l, [hl]                                    ; $7afd: $6e
    nop                                           ; $7afe: $00
    ld b, b                                       ; $7aff: $40
    adc e                                         ; $7b00: $8b
    ld a, [c]                                     ; $7b01: $f2
    adc c                                         ; $7b02: $89
    ld b, b                                       ; $7b03: $40
    add $5f                                       ; $7b04: $c6 $5f
    add a                                         ; $7b06: $87
    sub b                                         ; $7b07: $90
    db $ed                                        ; $7b08: $ed
    ld b, b                                       ; $7b09: $40
    adc h                                         ; $7b0a: $8c
    ld a, [c]                                     ; $7b0b: $f2
    adc e                                         ; $7b0c: $8b
    ret nz                                        ; $7b0d: $c0

    jp hl                                         ; $7b0e: $e9


    nop                                           ; $7b0f: $00
    sbc l                                         ; $7b10: $9d
    ld c, c                                       ; $7b11: $49
    sub b                                         ; $7b12: $90
    db $ec                                        ; $7b13: $ec
    ld b, b                                       ; $7b14: $40
    adc b                                         ; $7b15: $88
    ld a, [c]                                     ; $7b16: $f2
    adc e                                         ; $7b17: $8b
    ld [hl], b                                    ; $7b18: $70
    ld d, h                                       ; $7b19: $54
    ret nc                                        ; $7b1a: $d0

    ld l, d                                       ; $7b1b: $6a

jr_058_7b1c:
    ld b, b                                       ; $7b1c: $40
    adc e                                         ; $7b1d: $8b
    ld a, [c]                                     ; $7b1e: $f2
    adc e                                         ; $7b1f: $8b
    nop                                           ; $7b20: $00
    ld b, b                                       ; $7b21: $40
    rst $20                                       ; $7b22: $e7
    and l                                         ; $7b23: $a5
    push hl                                       ; $7b24: $e5
    ret nc                                        ; $7b25: $d0

    ld l, a                                       ; $7b26: $6f
    ld b, b                                       ; $7b27: $40
    adc [hl]                                      ; $7b28: $8e
    ld a, [c]                                     ; $7b29: $f2
    adc b                                         ; $7b2a: $88
    ret nz                                        ; $7b2b: $c0

    jp hl                                         ; $7b2c: $e9


    cp [hl]                                       ; $7b2d: $be
    ld [$ea90], a                                 ; $7b2e: $ea $90 $ea
    nop                                           ; $7b31: $00
    ld b, b                                       ; $7b32: $40
    adc e                                         ; $7b33: $8b
    jr c, jr_058_7ae1                             ; $7b34: $38 $ab

    ld [bc], a                                    ; $7b36: $02
    rst $28                                       ; $7b37: $ef
    ret nc                                        ; $7b38: $d0

    ld l, e                                       ; $7b39: $6b
    ld b, l                                       ; $7b3a: $45
    xor h                                         ; $7b3b: $ac
    rst $28                                       ; $7b3c: $ef
    jr z, @+$43                                   ; $7b3d: $28 $41

    and c                                         ; $7b3f: $a1
    db $db                                        ; $7b40: $db
    adc e                                         ; $7b41: $8b
    nop                                           ; $7b42: $00
    ret nc                                        ; $7b43: $d0

    ld [hl], c                                    ; $7b44: $71
    add l                                         ; $7b45: $85
    dec hl                                        ; $7b46: $2b
    ld a, [hl]                                    ; $7b47: $7e
    ld h, [hl]                                    ; $7b48: $66

jr_058_7b49:
    db $fd                                        ; $7b49: $fd
    ld [hl], b                                    ; $7b4a: $70
    ld c, l                                       ; $7b4b: $4d
    xor c                                         ; $7b4c: $a9
    ret nc                                        ; $7b4d: $d0

    ld l, b                                       ; $7b4e: $68
    add l                                         ; $7b4f: $85
    jr z, jr_058_7b9d                             ; $7b50: $28 $4b

    ld b, [hl]                                    ; $7b52: $46
    nop                                           ; $7b53: $00
    rst $28                                       ; $7b54: $ef
    ld l, b                                       ; $7b55: $68
    push de                                       ; $7b56: $d5
    ld l, c                                       ; $7b57: $69
    ret nc                                        ; $7b58: $d0

    ld [hl], c                                    ; $7b59: $71
    ld b, l                                       ; $7b5a: $45
    xor d                                         ; $7b5b: $aa
    ld a, d                                       ; $7b5c: $7a
    ld l, e                                       ; $7b5d: $6b
    or c                                          ; $7b5e: $b1
    add hl, bc                                    ; $7b5f: $09
    ld b, b                                       ; $7b60: $40
    db $eb                                        ; $7b61: $eb
    ret nc                                        ; $7b62: $d0

    ld l, c                                       ; $7b63: $69
    nop                                           ; $7b64: $00
    add l                                         ; $7b65: $85
    jr z, jr_058_7be2                             ; $7b66: $28 $7a

    ld l, b                                       ; $7b68: $68
    cp c                                          ; $7b69: $b9
    jp hl                                         ; $7b6a: $e9


    or d                                          ; $7b6b: $b2
    adc e                                         ; $7b6c: $8b
    sub l                                         ; $7b6d: $95
    jr z, jr_058_7af5                             ; $7b6e: $28 $85

    jr nc, jr_058_7b1c                            ; $7b70: $30 $aa

    add sp, -$40                                  ; $7b72: $e8 $c0
    add h                                         ; $7b74: $84
    nop                                           ; $7b75: $00
    push bc                                       ; $7b76: $c5
    cp c                                          ; $7b77: $b9
    add l                                         ; $7b78: $85
    ld l, $33                                     ; $7b79: $2e $33
    ld l, h                                       ; $7b7b: $6c
    ld bc, $95a8                                  ; $7b7c: $01 $a8 $95
    jr nc, jr_058_7bc6                            ; $7b7f: $30 $45

    xor a                                         ; $7b81: $af
    ld a, e                                       ; $7b82: $7b
    ld b, $47                                     ; $7b83: $06 $47
    ld h, b                                       ; $7b85: $60
    nop                                           ; $7b86: $00
    ld [bc], a                                    ; $7b87: $02
    ld l, c                                       ; $7b88: $69
    sub l                                         ; $7b89: $95
    inc sp                                        ; $7b8a: $33
    add l                                         ; $7b8b: $85
    ld l, $f6                                     ; $7b8c: $2e $f6
    jp z, Jump_058_42c3                           ; $7b8e: $ca $c3 $42

    jp nz, $958c                                  ; $7b91: $c2 $8c $95

    inc l                                         ; $7b94: $2c
    or l                                          ; $7b95: $b5
    xor a                                         ; $7b96: $af
    nop                                           ; $7b97: $00
    ld bc, $9b47                                  ; $7b98: $01 $47 $9b
    ld d, l                                       ; $7b9b: $55
    push bc                                       ; $7b9c: $c5

jr_058_7b9d:
    xor l                                         ; $7b9d: $ad
    or $d3                                        ; $7b9e: $f6 $d3
    ld b, e                                       ; $7ba0: $43
    ld b, l                                       ; $7ba1: $45
    pop bc                                        ; $7ba2: $c1
    jp z, Jump_000_2d95                           ; $7ba3: $ca $95 $2d

    ldh a, [$ee]                                  ; $7ba6: $f0 $ee
    nop                                           ; $7ba8: $00
    cp d                                          ; $7ba9: $ba
    ld c, d                                       ; $7baa: $4a
    ld b, b                                       ; $7bab: $40
    db $eb                                        ; $7bac: $eb
    sub l                                         ; $7bad: $95
    ld [hl-], a                                   ; $7bae: $32
    or l                                          ; $7baf: $b5
    xor a                                         ; $7bb0: $af
    xor [hl]                                      ; $7bb1: $ae
    adc c                                         ; $7bb2: $89
    db $db                                        ; $7bb3: $db
    ccf                                           ; $7bb4: $3f
    or l                                          ; $7bb5: $b5
    xor [hl]                                      ; $7bb6: $ae
    ld l, c                                       ; $7bb7: $69
    ret z                                         ; $7bb8: $c8

    nop                                           ; $7bb9: $00
    rst $38                                       ; $7bba: $ff
    rst $38                                       ; $7bbb: $ff
    and $d8                                       ; $7bbc: $e6 $d8
    ld a, a                                       ; $7bbe: $7f
    ldh a, [$fb]                                  ; $7bbf: $f0 $fb
    ld a, [$90ab]                                 ; $7bc1: $fa $ab $90
    set 7, a                                      ; $7bc4: $cb $ff

jr_058_7bc6:
    ld a, e                                       ; $7bc6: $7b
    jr jr_058_7b49                                ; $7bc7: $18 $80

    rst $38                                       ; $7bc9: $ff
    nop                                           ; $7bca: $00
    and $df                                       ; $7bcb: $e6 $df
    rst $38                                       ; $7bcd: $ff
    rst $38                                       ; $7bce: $ff
    ld h, $cc                                     ; $7bcf: $26 $cc
    nop                                           ; $7bd1: $00
    ld h, [hl]                                    ; $7bd2: $66
    and h                                         ; $7bd3: $a4
    add a                                         ; $7bd4: $87
    rst $38                                       ; $7bd5: $ff
    rst $38                                       ; $7bd6: $ff
    and h                                         ; $7bd7: $a4
    jr z, @-$3e                                   ; $7bd8: $28 $c0

    jp hl                                         ; $7bda: $e9


    nop                                           ; $7bdb: $00
    rst $38                                       ; $7bdc: $ff
    rst $38                                       ; $7bdd: $ff
    ld [hl], e                                    ; $7bde: $73
    call nc, $ac8d                                ; $7bdf: $d4 $8d $ac

jr_058_7be2:
    rst $38                                       ; $7be2: $ff
    rst $38                                       ; $7be3: $ff
    rst $38                                       ; $7be4: $ff
    rst $38                                       ; $7be5: $ff
    sub [hl]                                      ; $7be6: $96
    rst $38                                       ; $7be7: $ff
    rst $38                                       ; $7be8: $ff
    rst $38                                       ; $7be9: $ff
    ld [hl], l                                    ; $7bea: $75
    ld c, c                                       ; $7beb: $49
    nop                                           ; $7bec: $00
    rst $38                                       ; $7bed: $ff
    rst $38                                       ; $7bee: $ff
    rst $38                                       ; $7bef: $ff
    rst $38                                       ; $7bf0: $ff
    rst $38                                       ; $7bf1: $ff
    rst $38                                       ; $7bf2: $ff
    rst $38                                       ; $7bf3: $ff
    rst $38                                       ; $7bf4: $ff
    scf                                           ; $7bf5: $37
    and $dc                                       ; $7bf6: $e6 $dc
    rst $38                                       ; $7bf8: $ff
    rst $38                                       ; $7bf9: $ff
    rst $38                                       ; $7bfa: $ff
    rst $38                                       ; $7bfb: $ff
    rst $38                                       ; $7bfc: $ff
    nop                                           ; $7bfd: $00
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
    nop                                           ; $7c0e: $00
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
    nop                                           ; $7c1d: $00
    cp a                                          ; $7c1e: $bf
    nop                                           ; $7c1f: $00
    rst $38                                       ; $7c20: $ff
    rst $38                                       ; $7c21: $ff
    rst $38                                       ; $7c22: $ff
    rst $38                                       ; $7c23: $ff
    rst $38                                       ; $7c24: $ff
    rst $38                                       ; $7c25: $ff
    rst $38                                       ; $7c26: $ff
    rst $38                                       ; $7c27: $ff
    dec d                                         ; $7c28: $15
    ld [hl], e                                    ; $7c29: $73
    nop                                           ; $7c2a: $00
    nop                                           ; $7c2b: $00
    nop                                           ; $7c2c: $00
    db $fd                                        ; $7c2d: $fd
    jr nz, @+$01                                  ; $7c2e: $20 $ff

    db $e3                                        ; $7c30: $e3
    rrca                                          ; $7c31: $0f
    ld sp, $3131                                  ; $7c32: $31 $31 $31
    ld c, l                                       ; $7c35: $4d
    dec sp                                        ; $7c36: $3b
    rst $38                                       ; $7c37: $ff
    ld d, l                                       ; $7c38: $55
    ld d, h                                       ; $7c39: $54
    inc a                                         ; $7c3a: $3c
    ld sp, $5f31                                  ; $7c3b: $31 $31 $5f
    ld e, e                                       ; $7c3e: $5b
    nop                                           ; $7c3f: $00
    ld hl, sp-$01                                 ; $7c40: $f8 $ff
    rst $38                                       ; $7c42: $ff
    rst $20                                       ; $7c43: $e7
    and $c1                                       ; $7c44: $e6 $c1
    add sp, $32                                   ; $7c46: $e8 $32
    ld l, c                                       ; $7c48: $69
    ld l, c                                       ; $7c49: $69
    jr nc, jr_058_7c8e                            ; $7c4a: $30 $42

    ld b, a                                       ; $7c4c: $47
    inc a                                         ; $7c4d: $3c
    ld sp, $c05e                                  ; $7c4e: $31 $5e $c0
    rst $38                                       ; $7c51: $ff
    ret nz                                        ; $7c52: $c0

    db $ed                                        ; $7c53: $ed
    pop bc                                        ; $7c54: $c1
    db $e3                                        ; $7c55: $e3
    ld l, e                                       ; $7c56: $6b
    ret nz                                        ; $7c57: $c0

    ldh [$9f], a                                  ; $7c58: $e0 $9f
    ld l, c                                       ; $7c5a: $69
    ld b, d                                       ; $7c5b: $42
    ld c, c                                       ; $7c5c: $49
    ld sp, $ca5f                                  ; $7c5d: $31 $5f $ca
    rst $38                                       ; $7c60: $ff
    add sp, -$19                                  ; $7c61: $e8 $e7
    dec b                                         ; $7c63: $05
    ld a, b                                       ; $7c64: $78
    rst $38                                       ; $7c65: $ff
    ldh [$c1], a                                  ; $7c66: $e0 $c1
    db $e4                                        ; $7c68: $e4
    ret nz                                        ; $7c69: $c0

    ld [c], a                                     ; $7c6a: $e2
    ld l, c                                       ; $7c6b: $69
    add hl, sp                                    ; $7c6c: $39
    ld sp, $ca5e                                  ; $7c6d: $31 $5e $ca
    rst $38                                       ; $7c70: $ff
    ld a, b                                       ; $7c71: $78
    add sp, -$19                                  ; $7c72: $e8 $e7
    ld [$fde0], sp                                ; $7c74: $08 $e0 $fd
    pop hl                                        ; $7c77: $e1
    ld c, l                                       ; $7c78: $4d
    ld [hl-], a                                   ; $7c79: $32
    ld l, h                                       ; $7c7a: $6c
    ld l, l                                       ; $7c7b: $6d
    ret nz                                        ; $7c7c: $c0

    push hl                                       ; $7c7d: $e5
    cp c                                          ; $7c7e: $b9
    ld sp, $ffca                                  ; $7c7f: $31 $ca $ff
    add sp, -$19                                  ; $7c82: $e8 $e7
    ld h, d                                       ; $7c84: $62
    ld h, d                                       ; $7c85: $62
    ld h, d                                       ; $7c86: $62
    pop bc                                        ; $7c87: $c1
    db $e3                                        ; $7c88: $e3
    ld l, h                                       ; $7c89: $6c
    scf                                           ; $7c8a: $37
    ld l, h                                       ; $7c8b: $6c
    ld l, l                                       ; $7c8c: $6d
    ld l, d                                       ; $7c8d: $6a

jr_058_7c8e:
    ld b, b                                       ; $7c8e: $40
    ldh [rOBP0], a                                ; $7c8f: $e0 $48
    ld c, c                                       ; $7c91: $49
    ret nz                                        ; $7c92: $c0

    rst $38                                       ; $7c93: $ff
    ld [$afe9], a                                 ; $7c94: $ea $e9 $af
    ld e, e                                       ; $7c97: $5b
    ld e, e                                       ; $7c98: $5b
    ld e, e                                       ; $7c99: $5b
    ld h, c                                       ; $7c9a: $61
    push bc                                       ; $7c9b: $c5
    ret nz                                        ; $7c9c: $c0

    ld l, b                                       ; $7c9d: $68
    rst $38                                       ; $7c9e: $ff
    ldh [rOCPS], a                                ; $7c9f: $e0 $6a
    rst $00                                       ; $7ca1: $c7
    ld l, d                                       ; $7ca2: $6a
    jr nc, jr_058_7cd5                            ; $7ca3: $30 $30

    add c                                         ; $7ca5: $81
    pop hl                                        ; $7ca6: $e1
    ret nz                                        ; $7ca7: $c0

    rst $38                                       ; $7ca8: $ff
    jp hl                                         ; $7ca9: $e9


    add sp, $5a                                   ; $7caa: $e8 $5a
    ld e, e                                       ; $7cac: $5b
    db $fd                                        ; $7cad: $fd
    ld h, b                                       ; $7cae: $60
    pop bc                                        ; $7caf: $c1
    db $e4                                        ; $7cb0: $e4
    ld l, b                                       ; $7cb1: $68
    ld l, b                                       ; $7cb2: $68
    jr nc, jr_058_7ce5                            ; $7cb3: $30 $30

    ld l, d                                       ; $7cb5: $6a
    ld [hl-], a                                   ; $7cb6: $32
    ld sp, hl                                     ; $7cb7: $f9

jr_058_7cb8:
    ld c, l                                       ; $7cb8: $4d
    ret nz                                        ; $7cb9: $c0

    rst $38                                       ; $7cba: $ff
    add b                                         ; $7cbb: $80
    db $eb                                        ; $7cbc: $eb
    ld h, b                                       ; $7cbd: $60
    ld sp, $3931                                  ; $7cbe: $31 $31 $39
    jr nc, @+$1e                                  ; $7cc1: $30 $1c

    rst $38                                       ; $7cc3: $ff

jr_058_7cc4:
    db $e4                                        ; $7cc4: $e4
    pop bc                                        ; $7cc5: $c1
    pop hl                                        ; $7cc6: $e1
    dec de                                        ; $7cc7: $1b
    ld de, $ca14                                  ; $7cc8: $11 $14 $ca
    rst $38                                       ; $7ccb: $ff
    add sp, -$19                                  ; $7ccc: $e8 $e7
    pop bc                                        ; $7cce: $c1
    ldh [$db], a                                  ; $7ccf: $e0 $db
    xor e                                         ; $7cd1: $ab
    ld d, e                                       ; $7cd2: $53
    add c                                         ; $7cd3: $81
    db $e3                                        ; $7cd4: $e3

jr_058_7cd5:
    ld l, b                                       ; $7cd5: $68
    ld l, b                                       ; $7cd6: $68
    add d                                         ; $7cd7: $82
    pop hl                                        ; $7cd8: $e1
    rla                                           ; $7cd9: $17
    inc h                                         ; $7cda: $24
    add hl, sp                                    ; $7cdb: $39
    inc h                                         ; $7cdc: $24
    jp z, $80ff                                   ; $7cdd: $ca $ff $80

    ret z                                         ; $7ce0: $c8

    xor e                                         ; $7ce1: $ab
    ld e, b                                       ; $7ce2: $58
    xor d                                         ; $7ce3: $aa
    ret nz                                        ; $7ce4: $c0

jr_058_7ce5:
    push hl                                       ; $7ce5: $e5
    ld b, e                                       ; $7ce6: $43
    pop hl                                        ; $7ce7: $e1
    rst $08                                       ; $7ce8: $cf
    dec d                                         ; $7ce9: $15
    ld d, $20                                     ; $7cea: $16 $20
    jr nz, jr_058_7cb8                            ; $7cec: $20 $ca

    rst $38                                       ; $7cee: $ff
    add sp, -$19                                  ; $7cef: $e8 $e7
    ld e, b                                       ; $7cf1: $58
    xor d                                         ; $7cf2: $aa
    rst $38                                       ; $7cf3: $ff
    add b                                         ; $7cf4: $80
    add b                                         ; $7cf5: $80
    ld [hl], d                                    ; $7cf6: $72
    ld d, h                                       ; $7cf7: $54
    ld d, h                                       ; $7cf8: $54
    ld d, l                                       ; $7cf9: $55
    ld d, l                                       ; $7cfa: $55
    ld d, l                                       ; $7cfb: $55
    sbc e                                         ; $7cfc: $9b
    ld d, h                                       ; $7cfd: $54
    ld b, l                                       ; $7cfe: $45
    inc b                                         ; $7cff: $04
    pop hl                                        ; $7d00: $e1
    rla                                           ; $7d01: $17
    jr z, jr_058_7cc4                             ; $7d02: $28 $c0

    rst $38                                       ; $7d04: $ff
    ld [$80e9], a                                 ; $7d05: $ea $e9 $80
    halt                                          ; $7d08: $76
    rst $38                                       ; $7d09: $ff
    ld [c], a                                     ; $7d0a: $e2
    xor [hl]                                      ; $7d0b: $ae
    ld [hl], b                                    ; $7d0c: $70
    ld hl, sp-$5d                                 ; $7d0d: $f8 $a3
    ld de, $2212                                  ; $7d0f: $11 $12 $22
    rst $28                                       ; $7d12: $ef
    add b                                         ; $7d13: $80
    ld [hl], b                                    ; $7d14: $70
    jp z, $c0ff                                   ; $7d15: $ca $ff $c0

    db $ec                                        ; $7d18: $ec
    pop bc                                        ; $7d19: $c1
    pop hl                                        ; $7d1a: $e1
    ld sp, hl                                     ; $7d1b: $f9
    and b                                         ; $7d1c: $a0
    ld de, $2112                                  ; $7d1d: $11 $12 $21

Jump_058_7d20:
    pop bc                                        ; $7d20: $c1
    pop hl                                        ; $7d21: $e1
    ld hl, sp-$40                                 ; $7d22: $f8 $c0
    rst $38                                       ; $7d24: $ff
    add b                                         ; $7d25: $80
    db $ec                                        ; $7d26: $ec
    add d                                         ; $7d27: $82
    pop hl                                        ; $7d28: $e1
    ld h, b                                       ; $7d29: $60
    ld e, d                                       ; $7d2a: $5a
    ld e, [hl]                                    ; $7d2b: $5e
    ld sp, $f02b                                  ; $7d2c: $31 $2b $f0
    jp nz, $c0e2                                  ; $7d2f: $c2 $e2 $c0

    rst $38                                       ; $7d32: $ff
    ld b, b                                       ; $7d33: $40
    db $ec                                        ; $7d34: $ec
    pop bc                                        ; $7d35: $c1
    ld [c], a                                     ; $7d36: $e2
    ld e, e                                       ; $7d37: $5b
    ld e, e                                       ; $7d38: $5b
    ld e, a                                       ; $7d39: $5f
    ld sp, $2b03                                  ; $7d3a: $31 $03 $2b
    inc l                                         ; $7d3d: $2c
    ret nz                                        ; $7d3e: $c0

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
    nop                                           ; $7d4a: $00
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
    nop                                           ; $7d5b: $00
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
    nop                                           ; $7d6c: $00
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
    nop                                           ; $7d7d: $00
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
    nop                                           ; $7d8e: $00
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
    nop                                           ; $7d9f: $00
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
    nop                                           ; $7db0: $00
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
    nop                                           ; $7dc1: $00
    rst $38                                       ; $7dc2: $ff
    rst $38                                       ; $7dc3: $ff
    rst $38                                       ; $7dc4: $ff
    rst $38                                       ; $7dc5: $ff
    rst $38                                       ; $7dc6: $ff
    rst $38                                       ; $7dc7: $ff

Jump_058_7dc8:
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
    nop                                           ; $7dd2: $00
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
    nop                                           ; $7de3: $00
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
    nop                                           ; $7df4: $00
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
    ld sp, hl                                     ; $7e00: $f9
    nop                                           ; $7e01: $00
    nop                                           ; $7e02: $00
    nop                                           ; $7e03: $00
    and l                                         ; $7e04: $a5
    nop                                           ; $7e05: $00
    rst $38                                       ; $7e06: $ff
    push hl                                       ; $7e07: $e5
    ld [hl-], a                                   ; $7e08: $32
    or $e6                                        ; $7e09: $f6 $e6
    rst $30                                       ; $7e0b: $f7
    rst $20                                       ; $7e0c: $e7
    dec [hl]                                      ; $7e0d: $35
    db $ec                                        ; $7e0e: $ec
    xor $37                                       ; $7e0f: $ee $37
    db $ec                                        ; $7e11: $ec
    jp c, $c7f0                                   ; $7e12: $da $f0 $c7

    add sp, $33                                   ; $7e15: $e8 $33
    ld sp, $f2e0                                  ; $7e17: $31 $e0 $f2
    ld [hl], $30                                  ; $7e1a: $36 $30
    scf                                           ; $7e1c: $37
    cp a                                          ; $7e1d: $bf
    ld h, $20                                     ; $7e1e: $26 $20
    daa                                           ; $7e20: $27
    db $10                                        ; $7e21: $10
    ld d, $17                                     ; $7e22: $16 $17
    jp nz, Jump_000_34f6                          ; $7e24: $c2 $f6 $34

    rst $38                                       ; $7e27: $ff
    ld [hl], $32                                  ; $7e28: $36 $32
    jr nc, jr_058_7e63                            ; $7e2a: $30 $37

    ld sp, $3133                                  ; $7e2c: $31 $33 $31
    inc sp                                        ; $7e2f: $33
    nop                                           ; $7e30: $00
    and b                                         ; $7e31: $a0
    ei                                            ; $7e32: $fb
    rst $38                                       ; $7e33: $ff
    rst $28                                       ; $7e34: $ef
    nop                                           ; $7e35: $00
    nop                                           ; $7e36: $00
    nop                                           ; $7e37: $00

Jump_058_7e38:
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

jr_058_7e63:
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

Jump_058_7ee6:
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
