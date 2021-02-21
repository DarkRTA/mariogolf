; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $061", ROMX[$4000], BANK[$61]

    inc c                                         ; $4000: $0c
    ld b, b                                       ; $4001: $40
    cp b                                          ; $4002: $b8
    ld c, c                                       ; $4003: $49
    ld d, l                                       ; $4004: $55
    ld d, e                                       ; $4005: $53
    ld [hl], c                                    ; $4006: $71
    ld e, e                                       ; $4007: $5b
    ld l, d                                       ; $4008: $6a
    ld h, l                                       ; $4009: $65
    ld c, l                                       ; $400a: $4d
    ld l, [hl]                                    ; $400b: $6e
    inc d                                         ; $400c: $14
    ld b, b                                       ; $400d: $40
    ld sp, $0644                                  ; $400e: $31 $44 $06
    ld c, c                                       ; $4011: $49
    ld hl, $3f49                                  ; $4012: $21 $49 $3f
    ld c, $0e                                     ; $4015: $0e $0e
    dec c                                         ; $4017: $0d
    dec c                                         ; $4018: $0d
    dec c                                         ; $4019: $0d
    ld c, $fa                                     ; $401a: $0e $fa
    ld [c], a                                     ; $401c: $e2
    ld sp, hl                                     ; $401d: $f9
    ldh [$03], a                                  ; $401e: $e0 $03
    ld c, l                                       ; $4020: $4d
    ld c, l                                       ; $4021: $4d
    db $fc                                        ; $4022: $fc
    ei                                            ; $4023: $fb
    sub $e4                                       ; $4024: $d6 $e4
    ld a, [$c5e8]                                 ; $4026: $fa $e8 $c5
    ldh [$fd], a                                  ; $4029: $e0 $fd
    db $e3                                        ; $402b: $e3
    cp c                                          ; $402c: $b9
    db $e3                                        ; $402d: $e3
    nop                                           ; $402e: $00
    or [hl]                                       ; $402f: $b6
    ldh [$bc], a                                  ; $4030: $e0 $bc
    pop hl                                        ; $4032: $e1
    ld hl, sp-$1b                                 ; $4033: $f8 $e5

Jump_061_4035:
    or b                                          ; $4035: $b0
    jp hl                                         ; $4036: $e9


    cp $fc                                        ; $4037: $fe $fc
    ld a, a                                       ; $4039: $7f
    pop hl                                        ; $403a: $e1
    ld a, [hl]                                    ; $403b: $7e
    ld [c], a                                     ; $403c: $e2
    ld a, l                                       ; $403d: $7d
    pop hl                                        ; $403e: $e1
    ld h, $f8                                     ; $403f: $26 $f8
    ld [c], a                                     ; $4041: $e2
    ld c, l                                       ; $4042: $4d
    dec c                                         ; $4043: $0d
    ei                                            ; $4044: $fb
    pop hl                                        ; $4045: $e1
    rst $28                                       ; $4046: $ef
    ldh [$2d], a                                  ; $4047: $e0 $2d
    ld hl, sp-$1e                                 ; $4049: $f8 $e2
    jp hl                                         ; $404b: $e9


    ld [c], a                                     ; $404c: $e2
    ld h, b                                       ; $404d: $60
    ret                                           ; $404e: $c9


    ldh a, [$6d]                                  ; $404f: $f0 $6d
    db $ec                                        ; $4051: $ec

jr_061_4052:
    jp Jump_000_36e2                              ; $4052: $c3 $e2 $36


    ldh [$c3], a                                  ; $4055: $e0 $c3
    ldh [$6d], a                                  ; $4057: $e0 $6d
    ld l, e                                       ; $4059: $6b
    rst $38                                       ; $405a: $ff
    db $e3                                        ; $405b: $e3
    and b                                         ; $405c: $a0
    cp l                                          ; $405d: $bd
    db $e3                                        ; $405e: $e3
    sbc e                                         ; $405f: $9b
    push hl                                       ; $4060: $e5
    ret nc                                        ; $4061: $d0

    db $ed                                        ; $4062: $ed
    ld a, l                                       ; $4063: $7d
    jp hl                                         ; $4064: $e9


    add e                                         ; $4065: $83
    rst $20                                       ; $4066: $e7
    dec c                                         ; $4067: $0d
    jp Jump_000_0de1                              ; $4068: $c3 $e1 $0d


    nop                                           ; $406b: $00
    cp a                                          ; $406c: $bf
    db $e4                                        ; $406d: $e4
    cp l                                          ; $406e: $bd
    ldh [$7c], a                                  ; $406f: $e0 $7c

jr_061_4071:
    pop hl                                        ; $4071: $e1
    jr c, jr_061_4071                             ; $4072: $38 $fd

    add b                                         ; $4074: $80
    db $e4                                        ; $4075: $e4
    ld b, a                                       ; $4076: $47
    pop hl                                        ; $4077: $e1
    pop bc                                        ; $4078: $c1

Jump_061_4079:
    ld [c], a                                     ; $4079: $e2
    ret nz                                        ; $407a: $c0

    ld [c], a                                     ; $407b: $e2
    ld [bc], a                                    ; $407c: $02
    cp h                                          ; $407d: $bc
    db $e4                                        ; $407e: $e4
    ld l, l                                       ; $407f: $6d
    cp $d6                                        ; $4080: $fe $d6
    add b                                         ; $4082: $80
    rst $00                                       ; $4083: $c7
    nop                                           ; $4084: $00
    db $e4                                        ; $4085: $e4
    jp Jump_061_43e4                              ; $4086: $c3 $e4 $43


    db $e4                                        ; $4089: $e4
    cp h                                          ; $408a: $bc
    db $e3                                        ; $408b: $e3
    pop bc                                        ; $408c: $c1
    dec c                                         ; $408d: $0d
    ret nz                                        ; $408e: $c0

    pop hl                                        ; $408f: $e1
    ld h, d                                       ; $4090: $62
    jp $de80                                      ; $4091: $c3 $80 $de


    add h                                         ; $4094: $84
    rst $20                                       ; $4095: $e7
    cp h                                          ; $4096: $bc
    and $0d                                       ; $4097: $e6 $0d
    ld l, l                                       ; $4099: $6d
    ret nz                                        ; $409a: $c0

    ld h, [hl]                                    ; $409b: $66
    rst $00                                       ; $409c: $c7
    dec bc                                        ; $409d: $0b
    db $ec                                        ; $409e: $ec
    ld b, b                                       ; $409f: $40
    jp z, $c200                                   ; $40a0: $ca $00 $c2

    sub d                                         ; $40a3: $92
    ldh [rDIV], a                                 ; $40a4: $e0 $04
    push hl                                       ; $40a6: $e5
    dec hl                                        ; $40a7: $2b
    dec bc                                        ; $40a8: $0b
    ret nz                                        ; $40a9: $c0

    ld b, d                                       ; $40aa: $42
    rst $20                                       ; $40ab: $e7
    ld l, e                                       ; $40ac: $6b
    jp $edc0                                      ; $40ad: $c3 $c0 $ed


    di                                            ; $40b0: $f3
    xor c                                         ; $40b1: $a9
    add b                                         ; $40b2: $80
    push hl                                       ; $40b3: $e5
    ret z                                         ; $40b4: $c8

    add $0b                                       ; $40b5: $c6 $0b

jr_061_40b7:
    dec bc                                        ; $40b7: $0b
    inc bc                                        ; $40b8: $03
    dec hl                                        ; $40b9: $2b
    dec hl                                        ; $40ba: $2b
    pop bc                                        ; $40bb: $c1
    call nz, $c568                                ; $40bc: $c4 $68 $c5
    ld a, d                                       ; $40bf: $7a
    adc $e7                                       ; $40c0: $ce $e7
    xor b                                         ; $40c2: $a8
    add d                                         ; $40c3: $82
    and e                                         ; $40c4: $a3
    db $10                                        ; $40c5: $10
    ret nz                                        ; $40c6: $c0

    jr c, jr_061_4052                             ; $40c7: $38 $89

    add $bf                                       ; $40c9: $c6 $bf
    ldh [$7e], a                                  ; $40cb: $e0 $7e
    db $e3                                        ; $40cd: $e3
    ld c, l                                       ; $40ce: $4d
    dec l                                         ; $40cf: $2d
    dec l                                         ; $40d0: $2d
    add sp, -$5b                                  ; $40d1: $e8 $a5
    adc d                                         ; $40d3: $8a
    xor d                                         ; $40d4: $aa
    ld hl, sp-$57                                 ; $40d5: $f8 $a9
    or b                                          ; $40d7: $b0
    cp a                                          ; $40d8: $bf

jr_061_40d9:
    ld [c], a                                     ; $40d9: $e2
    ld b, [hl]                                    ; $40da: $46
    ret nz                                        ; $40db: $c0

    dec bc                                        ; $40dc: $0b
    dec bc                                        ; $40dd: $0b
    dec bc                                        ; $40de: $0b
    ld l, e                                       ; $40df: $6b
    ld c, e                                       ; $40e0: $4b
    rla                                           ; $40e1: $17
    ld c, e                                       ; $40e2: $4b
    ld c, e                                       ; $40e3: $4b
    dec bc                                        ; $40e4: $0b
    ld a, [hl-]                                   ; $40e5: $3a
    ret nz                                        ; $40e6: $c0

    dec bc                                        ; $40e7: $0b
    cp $e0                                        ; $40e8: $fe $e0
    ld a, $c4                                     ; $40ea: $3e $c4
    add b                                         ; $40ec: $80
    ret c                                         ; $40ed: $d8

Jump_061_40ee:
    jr nz, jr_061_40f4                            ; $40ee: $20 $04

    and [hl]                                      ; $40f0: $a6
    adc [hl]                                      ; $40f1: $8e
    and b                                         ; $40f2: $a0
    ret nz                                        ; $40f3: $c0

jr_061_40f4:
    db $e4                                        ; $40f4: $e4
    nop                                           ; $40f5: $00
    ldh [$c0], a                                  ; $40f6: $e0 $c0
    push hl                                       ; $40f8: $e5
    dec c                                         ; $40f9: $0d
    ld a, c                                       ; $40fa: $79
    and e                                         ; $40fb: $a3
    call c, $1b83                                 ; $40fc: $dc $83 $1b
    dec l                                         ; $40ff: $2d
    dec l                                         ; $4100: $2d
    nop                                           ; $4101: $00
    xor [hl]                                      ; $4102: $ae
    ld c, l                                       ; $4103: $4d
    ld l, l                                       ; $4104: $6d
    sbc h                                         ; $4105: $9c
    jp nz, $83fe                                  ; $4106: $c2 $fe $83

    add c                                         ; $4109: $81
    ld [c], a                                     ; $410a: $e2
    ld e, l                                       ; $410b: $5d
    dec c                                         ; $410c: $0d
    ld [bc], a                                    ; $410d: $02
    ldh [rWX], a                                  ; $410e: $e0 $4b
    dec bc                                        ; $4110: $0b
    ld c, e                                       ; $4111: $4b
    jr c, jr_061_40d9                             ; $4112: $38 $c5

    dec bc                                        ; $4114: $0b
    jr c, jr_061_40b7                             ; $4115: $38 $a0

    jr @-$04                                      ; $4117: $18 $fa

    add a                                         ; $4119: $87
    rst $28                                       ; $411a: $ef
    ret nz                                        ; $411b: $c0

    inc bc                                        ; $411c: $03
    db $ec                                        ; $411d: $ec
    ld l, l                                       ; $411e: $6d
    ld l, l                                       ; $411f: $6d
    add d                                         ; $4120: $82
    add a                                         ; $4121: $87
    ld c, l                                       ; $4122: $4d
    ldh [$c0], a                                  ; $4123: $e0 $c0
    pop hl                                        ; $4125: $e1
    or e                                          ; $4126: $b3
    ld l, e                                       ; $4127: $6b
    dec bc                                        ; $4128: $0b
    ld b, b                                       ; $4129: $40
    pop hl                                        ; $412a: $e1
    or [hl]                                       ; $412b: $b6
    and h                                         ; $412c: $a4
    dec bc                                        ; $412d: $0b

jr_061_412e:
    dec bc                                        ; $412e: $0b
    db $fc                                        ; $412f: $fc
    and l                                         ; $4130: $a5
    dec l                                         ; $4131: $2d
    db $10                                        ; $4132: $10
    or d                                          ; $4133: $b2
    ret nz                                        ; $4134: $c0

    ret nz                                        ; $4135: $c0

    push hl                                       ; $4136: $e5
    add b                                         ; $4137: $80
    rst $08                                       ; $4138: $cf
    ld a, h                                       ; $4139: $7c
    add d                                         ; $413a: $82
    dec l                                         ; $413b: $2d
    dec c                                         ; $413c: $0d
    ldh [$82], a                                  ; $413d: $e0 $82
    ret nz                                        ; $413f: $c0

    nop                                           ; $4140: $00
    pop hl                                        ; $4141: $e1
    ret nz                                        ; $4142: $c0

    dec a                                         ; $4143: $3d
    jp nz, $e6c0                                  ; $4144: $c2 $c0 $e6

    add a                                         ; $4147: $87
    xor [hl]                                      ; $4148: $ae
    ld a, [hl]                                    ; $4149: $7e
    ret nc                                        ; $414a: $d0

    db $fc                                        ; $414b: $fc
    and d                                         ; $414c: $a2
    ld b, h                                       ; $414d: $44
    ret nz                                        ; $414e: $c0

    ld a, [bc]                                    ; $414f: $0a
    ld a, [bc]                                    ; $4150: $0a
    add b                                         ; $4151: $80
    cp a                                          ; $4152: $bf
    ret nz                                        ; $4153: $c0

    jp Jump_000_34c0                              ; $4154: $c3 $c0 $34


    call nz, $a07c                                ; $4157: $c4 $7c $a0
    db $fc                                        ; $415a: $fc
    sbc a                                         ; $415b: $9f
    ld a, h                                       ; $415c: $7c
    and l                                         ; $415d: $a5
    pop bc                                        ; $415e: $c1
    ld [c], a                                     ; $415f: $e2
    ld a, [hl+]                                   ; $4160: $2a
    ld [bc], a                                    ; $4161: $02
    ld b, b                                       ; $4162: $40
    ldh [$2b], a                                  ; $4163: $e0 $2b
    rst $38                                       ; $4165: $ff
    ret nz                                        ; $4166: $c0

    ld a, h                                       ; $4167: $7c
    pop hl                                        ; $4168: $e1
    pop bc                                        ; $4169: $c1
    pop hl                                        ; $416a: $e1
    dec a                                         ; $416b: $3d
    sub d                                         ; $416c: $92
    add b                                         ; $416d: $80
    ld h, l                                       ; $416e: $65
    nop                                           ; $416f: $00
    jp hl                                         ; $4170: $e9


    ld e, $c0                                     ; $4171: $1e $c0
    ldh [$0d], a                                  ; $4173: $e0 $0d
    ld l, e                                       ; $4175: $6b
    ld a, [hl+]                                   ; $4176: $2a
    ld a, [bc]                                    ; $4177: $0a
    ld b, b                                       ; $4178: $40
    ldh [$bb], a                                  ; $4179: $e0 $bb
    and b                                         ; $417b: $a0
    call nz, $a0c1                                ; $417c: $c4 $c1 $a0
    ld e, e                                       ; $417f: $5b
    ld h, b                                       ; $4180: $60
    pop hl                                        ; $4181: $e1
    call nz, Call_061_6c7a                        ; $4182: $c4 $7a $6c
    add b                                         ; $4185: $80
    ld h, a                                       ; $4186: $67
    add b                                         ; $4187: $80
    jp z, $826d                                   ; $4188: $ca $6d $82

    ret nz                                        ; $418b: $c0

    ld a, [hl+]                                   ; $418c: $2a
    add c                                         ; $418d: $81
    ld a, [hl+]                                   ; $418e: $2a
    nop                                           ; $418f: $00
    pop hl                                        ; $4190: $e1
    ld a, e                                       ; $4191: $7b
    ldh [$84], a                                  ; $4192: $e0 $84
    ret nz                                        ; $4194: $c0

    nop                                           ; $4195: $00
    add d                                         ; $4196: $82
    cp l                                          ; $4197: $bd
    ld [hl], h                                    ; $4198: $74
    nop                                           ; $4199: $00
    xor [hl]                                      ; $419a: $ae
    dec c                                         ; $419b: $0d
    ld d, e                                       ; $419c: $53
    ld c, l                                       ; $419d: $4d
    ld l, l                                       ; $419e: $6d
    jp $c2a0                                      ; $419f: $c3 $a0 $c2


    and d                                         ; $41a2: $a2
    ld c, e                                       ; $41a3: $4b
    ei                                            ; $41a4: $fb
    ret nz                                        ; $41a5: $c0

    ld l, d                                       ; $41a6: $6a
    or [hl]                                       ; $41a7: $b6
    and b                                         ; $41a8: $a0
    jr nz, jr_061_412e                            ; $41a9: $20 $83

    push hl                                       ; $41ab: $e5
    nop                                           ; $41ac: $00
    cp a                                          ; $41ad: $bf
    ld [hl], a                                    ; $41ae: $77
    ldh [rTIMA], a                                ; $41af: $e0 $05
    pop bc                                        ; $41b1: $c1
    rst $38                                       ; $41b2: $ff
    ld [c], a                                     ; $41b3: $e2
    ld l, e                                       ; $41b4: $6b
    ld a, a                                       ; $41b5: $7f
    and b                                         ; $41b6: $a0
    cp a                                          ; $41b7: $bf
    db $e3                                        ; $41b8: $e3
    and b                                         ; $41b9: $a0
    inc b                                         ; $41ba: $04
    jp nz, $c6c6                                  ; $41bb: $c2 $c6 $c6

    nop                                           ; $41be: $00
    cp c                                          ; $41bf: $b9
    pop bc                                        ; $41c0: $c1
    pop hl                                        ; $41c1: $e1

Jump_061_41c2:
    ret nz                                        ; $41c2: $c0

    db $e4                                        ; $41c3: $e4
    dec hl                                        ; $41c4: $2b
    add b                                         ; $41c5: $80
    pop bc                                        ; $41c6: $c1
    ld c, e                                       ; $41c7: $4b
    adc a                                         ; $41c8: $8f
    dec bc                                        ; $41c9: $0b
    ld a, [bc]                                    ; $41ca: $0a
    ld a, [bc]                                    ; $41cb: $0a
    ld a, [bc]                                    ; $41cc: $0a
    ld b, c                                       ; $41cd: $41
    and h                                         ; $41ce: $a4
    add [hl]                                      ; $41cf: $86
    rst $18                                       ; $41d0: $df
    add [hl]                                      ; $41d1: $86

jr_061_41d2:
    pop bc                                        ; $41d2: $c1
    dec c                                         ; $41d3: $0d
    ld [$e148], sp                                ; $41d4: $08 $48 $e1
    pop bc                                        ; $41d7: $c1
    ld [c], a                                     ; $41d8: $e2
    ret nz                                        ; $41d9: $c0

    db $e4                                        ; $41da: $e4
    ld a, [hl+]                                   ; $41db: $2a
    scf                                           ; $41dc: $37
    pop hl                                        ; $41dd: $e1
    add d                                         ; $41de: $82
    xor d                                         ; $41df: $aa
    nop                                           ; $41e0: $00
    or a                                          ; $41e1: $b7
    add [hl]                                      ; $41e2: $86
    pop bc                                        ; $41e3: $c1
    pop bc                                        ; $41e4: $c1
    dec bc                                        ; $41e5: $0b
    adc c                                         ; $41e6: $89
    and b                                         ; $41e7: $a0
    ld b, $e2                                     ; $41e8: $06 $e2
    ld b, b                                       ; $41ea: $40
    pop bc                                        ; $41eb: $c1
    rst $38                                       ; $41ec: $ff
    and b                                         ; $41ed: $a0
    ld hl, sp-$3f                                 ; $41ee: $f8 $c1
    dec c                                         ; $41f0: $0d
    ld c, e                                       ; $41f1: $4b
    add b                                         ; $41f2: $80
    ld a, [hl]                                    ; $41f3: $7e

Jump_061_41f4:
    ld h, e                                       ; $41f4: $63
    ld e, c                                       ; $41f5: $59
    ld b, h                                       ; $41f6: $44
    nop                                           ; $41f7: $00
    ld c, a                                       ; $41f8: $4f
    and d                                         ; $41f9: $a2
    add h                                         ; $41fa: $84
    ld d, d                                       ; $41fb: $52
    ld b, b                                       ; $41fc: $40
    add a                                         ; $41fd: $87
    add b                                         ; $41fe: $80
    add $c1                                       ; $41ff: $c6 $c1
    ld l, e                                       ; $4201: $6b
    ld bc, $400a                                  ; $4202: $01 $0a $40
    pop bc                                        ; $4205: $c1
    cp a                                          ; $4206: $bf
    and c                                         ; $4207: $a1
    or c                                          ; $4208: $b1
    pop hl                                        ; $4209: $e1
    ret nz                                        ; $420a: $c0

    db $e3                                        ; $420b: $e3

Call_061_420c:
    adc e                                         ; $420c: $8b
    or d                                          ; $420d: $b2
    ld c, c                                       ; $420e: $49
    add [hl]                                      ; $420f: $86
    nop                                           ; $4210: $00
    add h                                         ; $4211: $84
    nop                                           ; $4212: $00
    cp a                                          ; $4213: $bf
    ldh [$91], a                                  ; $4214: $e0 $91
    ldh [$bf], a                                  ; $4216: $e0 $bf
    pop hl                                        ; $4218: $e1
    ld b, b                                       ; $4219: $40
    and c                                         ; $421a: $a1
    cp c                                          ; $421b: $b9
    ldh [$79], a                                  ; $421c: $e0 $79
    ld [c], a                                     ; $421e: $e2
    add d                                         ; $421f: $82
    and [hl]                                      ; $4220: $a6
    add b                                         ; $4221: $80
    ld a, [hl]                                    ; $4222: $7e
    jr nz, jr_061_4228                            ; $4223: $20 $03

    and b                                         ; $4225: $a0
    ret nz                                        ; $4226: $c0

    ld [c], a                                     ; $4227: $e2

jr_061_4228:
    add l                                         ; $4228: $85
    and b                                         ; $4229: $a0
    add b                                         ; $422a: $80
    and c                                         ; $422b: $a1
    pop bc                                        ; $422c: $c1
    ret nz                                        ; $422d: $c0

    ld a, [bc]                                    ; $422e: $0a
    pop bc                                        ; $422f: $c1
    db $e4                                        ; $4230: $e4
    db $fc                                        ; $4231: $fc
    inc h                                         ; $4232: $24
    adc h                                         ; $4233: $8c
    jp z, $7e2a                                   ; $4234: $ca $2a $7e

    ld [hl], c                                    ; $4237: $71
    dec c                                         ; $4238: $0d
    dec l                                         ; $4239: $2d
    ld b, $c2                                     ; $423a: $06 $c2
    ret z                                         ; $423c: $c8

    jp nz, $e2bf                                  ; $423d: $c2 $bf $e2

    ld c, e                                       ; $4240: $4b
    nop                                           ; $4241: $00
    ld [bc], a                                    ; $4242: $02
    ldh [rP1], a                                  ; $4243: $e0 $00
    ld h, l                                       ; $4245: $65
    ld a, d                                       ; $4246: $7a
    rst $18                                       ; $4247: $df
    ld b, [hl]                                    ; $4248: $46
    jr nz, jr_061_41d2                            ; $4249: $20 $87

    and c                                         ; $424b: $a1
    ld c, b                                       ; $424c: $48
    pop bc                                        ; $424d: $c1
    ld hl, sp-$5e                                 ; $424e: $f8 $a2
    add c                                         ; $4250: $81
    ldh [rNR42], a                                ; $4251: $e0 $21
    ld c, e                                       ; $4253: $4b
    ld a, a                                       ; $4254: $7f
    and l                                         ; $4255: $a5
    nop                                           ; $4256: $00
    ld e, b                                       ; $4257: $58
    jp z, $0108                                   ; $4258: $ca $08 $01

    db $e3                                        ; $425b: $e3
    ld a, [hl+]                                   ; $425c: $2a
    cp d                                          ; $425d: $ba
    and e                                         ; $425e: $a3
    ld [hl], c                                    ; $425f: $71
    pop bc                                        ; $4260: $c1
    db $10                                        ; $4261: $10
    add d                                         ; $4262: $82
    ld h, c                                       ; $4263: $61
    nop                                           ; $4264: $00
    ld h, a                                       ; $4265: $67
    add b                                         ; $4266: $80
    ld de, $8a82                                  ; $4267: $11 $82 $8a
    ld l, l                                       ; $426a: $6d
    ld c, a                                       ; $426b: $4f
    pop bc                                        ; $426c: $c1
    ld b, d                                       ; $426d: $42
    ld b, b                                       ; $426e: $40
    ld a, d                                       ; $426f: $7a
    and e                                         ; $4270: $a3
    ld b, b                                       ; $4271: $40
    ret nz                                        ; $4272: $c0

    pop hl                                        ; $4273: $e1
    nop                                           ; $4274: $00
    pop bc                                        ; $4275: $c1
    ld b, [hl]                                    ; $4276: $46
    rst $38                                       ; $4277: $ff
    add [hl]                                      ; $4278: $86
    inc bc                                        ; $4279: $03
    pop bc                                        ; $427a: $c1
    pop hl                                        ; $427b: $e1
    rrca                                          ; $427c: $0f
    ret nz                                        ; $427d: $c0

Call_061_427e:
    dec hl                                        ; $427e: $2b
    ret nz                                        ; $427f: $c0

    db $e4                                        ; $4280: $e4
    jr nz, jr_061_42bd                            ; $4281: $20 $3a

    jp nz, $a0bf                                  ; $4283: $c2 $bf $a0

    cp d                                          ; $4286: $ba
    inc b                                         ; $4287: $04
    cp e                                          ; $4288: $bb
    ld l, l                                       ; $4289: $6d
    or b                                          ; $428a: $b0
    rrca                                          ; $428b: $0f
    dec c                                         ; $428c: $0d
    add c                                         ; $428d: $81
    call nz, $e541                                ; $428e: $c4 $41 $e5
    nop                                           ; $4291: $00
    cp a                                          ; $4292: $bf
    and h                                         ; $4293: $a4
    ld a, h                                       ; $4294: $7c
    and [hl]                                      ; $4295: $a6
    dec a                                         ; $4296: $3d
    ld a, [hl+]                                   ; $4297: $2a
    inc [hl]                                      ; $4298: $34
    inc c                                         ; $4299: $0c
    jr nz, jr_061_42de                            ; $429a: $20 $42

    ld b, c                                       ; $429c: $41
    jp $e6c1                                      ; $429d: $c3 $c1 $e6


    cp a                                          ; $42a0: $bf
    and h                                         ; $42a1: $a4
    nop                                           ; $42a2: $00
    inc sp                                        ; $42a3: $33
    ld b, b                                       ; $42a4: $40
    ld a, [hl]                                    ; $42a5: $7e
    ld a, e                                       ; $42a6: $7b
    cp $06                                        ; $42a7: $fe $06
    ld b, c                                       ; $42a9: $41
    ret nz                                        ; $42aa: $c0

    ld b, [hl]                                    ; $42ab: $46
    ld h, d                                       ; $42ac: $62
    ret nz                                        ; $42ad: $c0

    add $ed                                       ; $42ae: $c6 $ed
    add d                                         ; $42b0: $82
    add sp, -$80                                  ; $42b1: $e8 $80
    nop                                           ; $42b3: $00
    ld a, d                                       ; $42b4: $7a
    ld de, $0db0                                  ; $42b5: $11 $b0 $0d
    nop                                           ; $42b8: $00
    ld b, d                                       ; $42b9: $42
    ld a, a                                       ; $42ba: $7f
    and c                                         ; $42bb: $a1
    cp l                                          ; $42bc: $bd

jr_061_42bd:
    ld [hl+], a                                   ; $42bd: $22
    cp a                                          ; $42be: $bf
    jp $e4c0                                      ; $42bf: $c3 $c0 $e4


    ld a, d                                       ; $42c2: $7a
    db $10                                        ; $42c3: $10
    inc b                                         ; $42c4: $04
    ld a, l                                       ; $42c5: $7d
    db $ed                                        ; $42c6: $ed
    ret c                                         ; $42c7: $d8

    inc b                                         ; $42c8: $04
    dec l                                         ; $42c9: $2d
    ccf                                           ; $42ca: $3f
    and d                                         ; $42cb: $a2
    ld bc, $bce8                                  ; $42cc: $01 $e8 $bc
    add d                                         ; $42cf: $82
    sbc $26                                       ; $42d0: $de $26
    ld [hl], a                                    ; $42d2: $77
    halt                                          ; $42d3: $76
    ld bc, $1b0d                                  ; $42d4: $01 $0d $1b
    and l                                         ; $42d7: $a5
    add $84                                       ; $42d8: $c6 $84
    pop bc                                        ; $42da: $c1
    jp z, Jump_061_65bc                           ; $42db: $ca $bc $65

jr_061_42de:
    ld a, d                                       ; $42de: $7a
    ret                                           ; $42df: $c9


    add b                                         ; $42e0: $80
    dec bc                                        ; $42e1: $0b
    inc a                                         ; $42e2: $3c
    ld [bc], a                                    ; $42e3: $02
    add b                                         ; $42e4: $80
    db $fd                                        ; $42e5: $fd
    inc bc                                        ; $42e6: $03
    nop                                           ; $42e7: $00
    and e                                         ; $42e8: $a3
    ld b, c                                       ; $42e9: $41
    and $fd                                       ; $42ea: $e6 $fd
    pop hl                                        ; $42ec: $e1
    nop                                           ; $42ed: $00
    ld e, a                                       ; $42ee: $5f
    nop                                           ; $42ef: $00
    db $e4                                        ; $42f0: $e4
    add hl, sp                                    ; $42f1: $39
    add d                                         ; $42f2: $82
    ld c, e                                       ; $42f3: $4b
    nop                                           ; $42f4: $00
    ld a, e                                       ; $42f5: $7b
    ld [hl+], a                                   ; $42f6: $22
    add d                                         ; $42f7: $82
    and e                                         ; $42f8: $a3
    ld b, d                                       ; $42f9: $42
    db $e3                                        ; $42fa: $e3
    ld a, [hl]                                    ; $42fb: $7e
    ld h, e                                       ; $42fc: $63
    add d                                         ; $42fd: $82
    ld hl, $bfbb                                  ; $42fe: $21 $bb $bf
    dec a                                         ; $4301: $3d
    and b                                         ; $4302: $a0
    ld a, h                                       ; $4303: $7c
    inc bc                                        ; $4304: $03
    nop                                           ; $4305: $00
    ld bc, $40e5                                  ; $4306: $01 $e5 $40
    ld b, h                                       ; $4309: $44
    add b                                         ; $430a: $80
    jr jr_061_438b                                ; $430b: $18 $7e

    ld b, a                                       ; $430d: $47
    db $fd                                        ; $430e: $fd
    add [hl]                                      ; $430f: $86
    ld a, [$c142]                                 ; $4310: $fa $42 $c1
    ld h, d                                       ; $4313: $62
    add e                                         ; $4314: $83
    ld h, $48                                     ; $4315: $26 $48
    nop                                           ; $4317: $00
    ld d, [hl]                                    ; $4318: $56
    ld [hl], h                                    ; $4319: $74
    rlca                                          ; $431a: $07
    ld a, $81                                     ; $431b: $3e $81
    ld c, l                                       ; $431d: $4d
    inc a                                         ; $431e: $3c
    and c                                         ; $431f: $a1
    rst $38                                       ; $4320: $ff
    add d                                         ; $4321: $82
    dec hl                                        ; $4322: $2b
    or e                                          ; $4323: $b3
    ld h, c                                       ; $4324: $61
    nop                                           ; $4325: $00
    nop                                           ; $4326: $00

jr_061_4327:
    ld e, a                                       ; $4327: $5f
    nop                                           ; $4328: $00
    ld b, d                                       ; $4329: $42
    nop                                           ; $432a: $00
    push bc                                       ; $432b: $c5
    cp $82                                        ; $432c: $fe $82
    add b                                         ; $432e: $80
    and $c7                                       ; $432f: $e6 $c7
    and d                                         ; $4331: $a2
    nop                                           ; $4332: $00
    ld b, [hl]                                    ; $4333: $46
    ld b, [hl]                                    ; $4334: $46
    dec bc                                        ; $4335: $0b
    inc b                                         ; $4336: $04
    add b                                         ; $4337: $80
    ld de, $e5c1                                  ; $4338: $11 $c1 $e5
    dec c                                         ; $433b: $0d
    ld a, a                                       ; $433c: $7f
    add d                                         ; $433d: $82
    ret nz                                        ; $433e: $c0

    ld b, d                                       ; $433f: $42
    nop                                           ; $4340: $00
    ld c, d                                       ; $4341: $4a
    cp l                                          ; $4342: $bd
    ld c, d                                       ; $4343: $4a
    nop                                           ; $4344: $00
    or b                                          ; $4345: $b0
    nop                                           ; $4346: $00
    call nz, $c0c1                                ; $4347: $c4 $c1 $c0
    db $e3                                        ; $434a: $e3
    add hl, sp                                    ; $434b: $39
    ld b, c                                       ; $434c: $41
    add d                                         ; $434d: $82
    add h                                         ; $434e: $84
    nop                                           ; $434f: $00
    ld b, l                                       ; $4350: $45
    ld b, d                                       ; $4351: $42
    ld h, l                                       ; $4352: $65
    nop                                           ; $4353: $00
    cp c                                          ; $4354: $b9
    ld a, a                                       ; $4355: $7f
    add h                                         ; $4356: $84
    nop                                           ; $4357: $00
    ld a, $a3                                     ; $4358: $3e $a3
    add e                                         ; $435a: $83
    add h                                         ; $435b: $84
    nop                                           ; $435c: $00
    ld c, b                                       ; $435d: $48
    adc b                                         ; $435e: $88
    adc e                                         ; $435f: $8b

Call_061_4360:
    nop                                           ; $4360: $00
    or e                                          ; $4361: $b3
    ld c, a                                       ; $4362: $4f
    add e                                         ; $4363: $83
    ld b, [hl]                                    ; $4364: $46
    ld bc, $8543                                  ; $4365: $01 $43 $85
    nop                                           ; $4368: $00
    nop                                           ; $4369: $00
    ld b, d                                       ; $436a: $42
    call nz, $8042                                ; $436b: $c4 $42 $80
    ld a, b                                       ; $436e: $78
    db $fc                                        ; $436f: $fc
    ld [bc], a                                    ; $4370: $02
    add c                                         ; $4371: $81
    and e                                         ; $4372: $a3
    dec a                                         ; $4373: $3d
    ld b, d                                       ; $4374: $42
    ld a, b                                       ; $4375: $78
    add c                                         ; $4376: $81
    ld bc, $00a4                                  ; $4377: $01 $a4 $00
    add h                                         ; $437a: $84
    add l                                         ; $437b: $85
    nop                                           ; $437c: $00
    ld d, h                                       ; $437d: $54
    nop                                           ; $437e: $00
    and [hl]                                      ; $437f: $a6
    ld a, [hl]                                    ; $4380: $7e

Call_061_4381:
    rst $20                                       ; $4381: $e7
    inc a                                         ; $4382: $3c
    ld h, c                                       ; $4383: $61
    push bc                                       ; $4384: $c5
    add l                                         ; $4385: $85
    nop                                           ; $4386: $00
    ld b, l                                       ; $4387: $45
    rrc l                                         ; $4388: $cb $0d
    nop                                           ; $438a: $00

jr_061_438b:
    nop                                           ; $438b: $00
    xor a                                         ; $438c: $af
    ld a, [hl]                                    ; $438d: $7e
    ld b, a                                       ; $438e: $47
    ld a, [$41c4]                                 ; $438f: $fa $c4 $41
    ld [hl+], a                                   ; $4392: $22
    add c                                         ; $4393: $81
    and e                                         ; $4394: $a3
    ld d, b                                       ; $4395: $50
    ld [hl], e                                    ; $4396: $73
    ld a, [hl]                                    ; $4397: $7e
    ret nc                                        ; $4398: $d0

    ld a, a                                       ; $4399: $7f
    add e                                         ; $439a: $83
    ld b, b                                       ; $439b: $40
    add h                                         ; $439c: $84
    push hl                                       ; $439d: $e5
    ld b, b                                       ; $439e: $40
    ld b, e                                       ; $439f: $43
    inc b                                         ; $43a0: $04
    ld e, a                                       ; $43a1: $5f
    or [hl]                                       ; $43a2: $b6
    add hl, hl                                    ; $43a3: $29
    cp l                                          ; $43a4: $bd
    jr nz, jr_061_4327                            ; $43a5: $20 $80

    ld b, h                                       ; $43a7: $44
    dec c                                         ; $43a8: $0d
    ld b, b                                       ; $43a9: $40
    ld b, c                                       ; $43aa: $41
    inc h                                         ; $43ab: $24
    add [hl]                                      ; $43ac: $86
    ld [hl], c                                    ; $43ad: $71
    nop                                           ; $43ae: $00
    ld d, c                                       ; $43af: $51
    dec c                                         ; $43b0: $0d
    and d                                         ; $43b1: $a2
    add b                                         ; $43b2: $80
    db $fc                                        ; $43b3: $fc
    and h                                         ; $43b4: $a4
    dec hl                                        ; $43b5: $2b
    ld [hl], a                                    ; $43b6: $77
    nop                                           ; $43b7: $00
    rst $38                                       ; $43b8: $ff
    add h                                         ; $43b9: $84
    add b                                         ; $43ba: $80
    jp Jump_000_0084                              ; $43bb: $c3 $84 $00


    db $e3                                        ; $43be: $e3
    add b                                         ; $43bf: $80
    reti                                          ; $43c0: $d9


    ld h, d                                       ; $43c1: $62
    add [hl]                                      ; $43c2: $86
    ret nz                                        ; $43c3: $c0

    db $eb                                        ; $43c4: $eb
    inc b                                         ; $43c5: $04
    rst $00                                       ; $43c6: $c7
    add b                                         ; $43c7: $80
    call c, Call_000_202d                         ; $43c8: $dc $2d $20
    rst $38                                       ; $43cb: $ff
    pop hl                                        ; $43cc: $e1
    db $fc                                        ; $43cd: $fc
    inc bc                                        ; $43ce: $03
    ld b, b                                       ; $43cf: $40
    ld b, c                                       ; $43d0: $41
    cp [hl]                                       ; $43d1: $be
    ldh [$31], a                                  ; $43d2: $e0 $31
    ld [bc], a                                    ; $43d4: $02
    ld c, l                                       ; $43d5: $4d
    ld l, d                                       ; $43d6: $6a
    db $e4                                        ; $43d7: $e4
    call nz, Call_000_0402                        ; $43d8: $c4 $02 $04
    nop                                           ; $43db: $00
    ld e, e                                       ; $43dc: $5b
    db $fc                                        ; $43dd: $fc
    dec h                                         ; $43de: $25
    ld l, l                                       ; $43df: $6d
    nop                                           ; $43e0: $00
    ld c, d                                       ; $43e1: $4a
    res 1, l                                      ; $43e2: $cb $8d

Jump_061_43e4:
    add b                                         ; $43e4: $80
    inc d                                         ; $43e5: $14
    ld a, d                                       ; $43e6: $7a
    rlca                                          ; $43e7: $07
    cp h                                          ; $43e8: $bc
    jr nz, jr_061_43eb                            ; $43e9: $20 $00

jr_061_43eb:
    ret nz                                        ; $43eb: $c0

    dec h                                         ; $43ec: $25
    ld a, a                                       ; $43ed: $7f
    add c                                         ; $43ee: $81
    ld b, b                                       ; $43ef: $40
    add d                                         ; $43f0: $82
    ld [$f4b5], sp                                ; $43f1: $08 $b5 $f4
    ld [hl-], a                                   ; $43f4: $32
    ld b, c                                       ; $43f5: $41
    ld h, b                                       ; $43f6: $60
    ld b, c                                       ; $43f7: $41
    and b                                         ; $43f8: $a0
    cp $80                                        ; $43f9: $fe $80
    jp Jump_061_6b6b                              ; $43fb: $c3 $6b $6b


    cp b                                          ; $43fe: $b8
    and b                                         ; $43ff: $a0
    ld c, h                                       ; $4400: $4c
    ld a, b                                       ; $4401: $78
    or b                                          ; $4402: $b0
    bit 7, a                                      ; $4403: $cb $7f
    ld b, l                                       ; $4405: $45
    ld c, l                                       ; $4406: $4d
    dec c                                         ; $4407: $0d
    ld bc, $442d                                  ; $4408: $01 $2d $44
    and a                                         ; $440b: $a7
    add d                                         ; $440c: $82
    ld h, b                                       ; $440d: $60
    add [hl]                                      ; $440e: $86
    rrca                                          ; $440f: $0f
    add b                                         ; $4410: $80
    jp nc, Jump_000_069c                          ; $4411: $d2 $9c $06

    ld a, h                                       ; $4414: $7c
    ld h, c                                       ; $4415: $61
    rst $38                                       ; $4416: $ff
    and $00                                       ; $4417: $e6 $00
    ld [$c948], sp                                ; $4419: $08 $48 $c9
    cp l                                          ; $441c: $bd
    jr nz, jr_061_4465                            ; $441d: $20 $46

    rst $38                                       ; $441f: $ff
    ld [$4b0c], a                                 ; $4420: $ea $0c $4b
    add b                                         ; $4423: $80
    rst $18                                       ; $4424: $df
    cp d                                          ; $4425: $ba
    push bc                                       ; $4426: $c5
    ld c, h                                       ; $4427: $4c
    xor [hl]                                      ; $4428: $ae
    ld b, $13                                     ; $4429: $06 $13
    db $ec                                        ; $442b: $ec

Jump_061_442c:
    ld c, $0e                                     ; $442c: $0e $0e
    nop                                           ; $442e: $00
    nop                                           ; $442f: $00
    nop                                           ; $4430: $00
    cp a                                          ; $4431: $bf
    db $dd                                        ; $4432: $dd

Jump_061_4433:
    sbc $a0                                       ; $4433: $de $a0
    and b                                         ; $4435: $a0
    and b                                         ; $4436: $a0
    call c, $e2fa                                 ; $4437: $dc $fa $e2
    and b                                         ; $443a: $a0
    dec de                                        ; $443b: $1b
    ret c                                         ; $443c: $d8

    reti                                          ; $443d: $d9


    db $fc                                        ; $443e: $fc
    rst $20                                       ; $443f: $e7
    jp nc, $fcd3                                  ; $4440: $d2 $d3 $fc

    rst $28                                       ; $4443: $ef
    ldh [$e0], a                                  ; $4444: $e0 $e0
    sub $e3                                       ; $4446: $d6 $e3
    ld a, [hl]                                    ; $4448: $7e
    ld a, [$e2e8]                                 ; $4449: $fa $e8 $e2
    db $e3                                        ; $444c: $e3
    db $e4                                        ; $444d: $e4
    rst $18                                       ; $444e: $df
    ldh [$e1], a                                  ; $444f: $e0 $e1
    ld a, [$7ee0]                                 ; $4451: $fa $e0 $7e
    cp c                                          ; $4454: $b9
    ldh [$da], a                                  ; $4455: $e0 $da
    db $db                                        ; $4457: $db
    sub $d7                                       ; $4458: $d6 $d7
    jp c, $f8db                                   ; $445a: $da $db $f8

    pop hl                                        ; $445d: $e1
    cp a                                          ; $445e: $bf
    ret nc                                        ; $445f: $d0

    pop de                                        ; $4460: $d1
    call nc, $a0d5                                ; $4461: $d4 $d5 $a0
    and b                                         ; $4464: $a0

jr_061_4465:
    db $fc                                        ; $4465: $fc
    db $eb                                        ; $4466: $eb
    ret nc                                        ; $4467: $d0

    rst $00                                       ; $4468: $c7
    pop de                                        ; $4469: $d1
    jp c, $d6db                                   ; $446a: $da $db $d6

    ld [c], a                                     ; $446d: $e2
    ret nc                                        ; $446e: $d0

    db $e3                                        ; $446f: $e3
    ld a, [$e8e4]                                 ; $4470: $fa $e4 $e8
    jp hl                                         ; $4473: $e9


    adc a                                         ; $4474: $8f
    ld [$e6e5], a                                 ; $4475: $ea $e5 $e6
    rst $20                                       ; $4478: $e7
    ld a, [$7fe0]                                 ; $4479: $fa $e0 $7f
    pop hl                                        ; $447c: $e1
    ld a, [hl]                                    ; $447d: $7e
    ld [c], a                                     ; $447e: $e2

Call_061_447f:
    and b                                         ; $447f: $a0
    ld a, e                                       ; $4480: $7b
    ret nc                                        ; $4481: $d0

    pop de                                        ; $4482: $d1
    add d                                         ; $4483: $82
    ld [c], a                                     ; $4484: $e2
    and b                                         ; $4485: $a0
    and b                                         ; $4486: $a0
    sbc a                                         ; $4487: $9f
    sbc l                                         ; $4488: $9d
    rst $38                                       ; $4489: $ff
    db $e3                                        ; $448a: $e3
    ld bc, $e49f                                  ; $448b: $01 $9f $e4
    ld [c], a                                     ; $448e: $e2
    ld l, [hl]                                    ; $448f: $6e
    ldh [$d6], a                                  ; $4490: $e0 $d6
    db $e3                                        ; $4492: $e3
    ld a, [$73ea]                                 ; $4493: $fa $ea $73
    ld [$e286], a                                 ; $4496: $ea $86 $e2
    ld b, l                                       ; $4499: $45
    pop hl                                        ; $449a: $e1
    xor h                                         ; $449b: $ac
    add d                                         ; $449c: $82
    ldh [$c3], a                                  ; $449d: $e0 $c3
    ldh [$9c], a                                  ; $449f: $e0 $9c
    ld b, [hl]                                    ; $44a1: $46
    rst $38                                       ; $44a2: $ff
    db $e3                                        ; $44a3: $e3
    sbc h                                         ; $44a4: $9c
    cp l                                          ; $44a5: $bd
    ld [c], a                                     ; $44a6: $e2
    call nc, $d507                                ; $44a7: $d4 $07 $d5
    sub $d7                                       ; $44aa: $d6 $d7
    ld a, [de]                                    ; $44ac: $1a

Jump_061_44ad:
    pop hl                                        ; $44ad: $e1
    dec a                                         ; $44ae: $3d

Jump_061_44af:
    db $eb                                        ; $44af: $eb
    ld [hl], e                                    ; $44b0: $73
    jp hl                                         ; $44b1: $e9


    sbc d                                         ; $44b2: $9a
    db $e4                                        ; $44b3: $e4
    ld b, l                                       ; $44b4: $45
    pop hl                                        ; $44b5: $e1
    dec bc                                        ; $44b6: $0b
    and b                                         ; $44b7: $a0
    sbc a                                         ; $44b8: $9f
    jp $aee1                                      ; $44b9: $c3 $e1 $ae


    cp a                                          ; $44bc: $bf
    db $e4                                        ; $44bd: $e4
    cp l                                          ; $44be: $bd
    ldh [$7c], a                                  ; $44bf: $e0 $7c
    pop hl                                        ; $44c1: $e1
    ldh [$c1], a                                  ; $44c2: $e0 $c1
    ld a, b                                       ; $44c4: $78
    ld b, e                                       ; $44c5: $43
    ld [$e007], a                                 ; $44c6: $ea $07 $e0
    ld l, l                                       ; $44c9: $6d
    jp hl                                         ; $44ca: $e9


    and b                                         ; $44cb: $a0
    and b                                         ; $44cc: $a0
    sub $d7                                       ; $44cd: $d6 $d7
    jp $2be3                                      ; $44cf: $c3 $e3 $2b


    sbc l                                         ; $44d2: $9d
    and d                                         ; $44d3: $a2
    add h                                         ; $44d4: $84
    ld [c], a                                     ; $44d5: $e2
    xor a                                         ; $44d6: $af
    cp h                                          ; $44d7: $bc
    rst $20                                       ; $44d8: $e7
    sbc [hl]                                      ; $44d9: $9e
    add hl, hl                                    ; $44da: $29
    ldh [$e0], a                                  ; $44db: $e0 $e0
    pop bc                                        ; $44dd: $c1
    nop                                           ; $44de: $00
    dec a                                         ; $44df: $3d
    db $ed                                        ; $44e0: $ed
    add b                                         ; $44e1: $80
    ret                                           ; $44e2: $c9


    nop                                           ; $44e3: $00
    db $e4                                        ; $44e4: $e4
    add h                                         ; $44e5: $84
    db $e3                                        ; $44e6: $e3
    add l                                         ; $44e7: $85
    push hl                                       ; $44e8: $e5
    cp h                                          ; $44e9: $bc
    db $e3                                        ; $44ea: $e3
    add b                                         ; $44eb: $80
    ldh [$7e], a                                  ; $44ec: $e0 $7e
    call nz, Call_000_3d80                        ; $44ee: $c4 $80 $3d
    db $ec                                        ; $44f1: $ec
    add b                                         ; $44f2: $80
    ret                                           ; $44f3: $c9


    add d                                         ; $44f4: $82
    pop bc                                        ; $44f5: $c1
    jp $c1c0                                      ; $44f6: $c3 $c0 $c1


    db $e3                                        ; $44f9: $e3
    ld b, h                                       ; $44fa: $44
    rst $20                                       ; $44fb: $e7

Jump_061_44fc:
    ld a, b                                       ; $44fc: $78
    ldh [$9c], a                                  ; $44fd: $e0 $9c
    ld b, c                                       ; $44ff: $41
    sbc a                                         ; $4500: $9f
    ld l, [hl]                                    ; $4501: $6e
    jp $c15e                                      ; $4502: $c3 $5e $c1


    dec a                                         ; $4505: $3d
    db $eb                                        ; $4506: $eb
    add b                                         ; $4507: $80
    ret                                           ; $4508: $c9


    ld [$9ec4], sp                                ; $4509: $08 $c4 $9e
    ld [$0ee2], sp                                ; $450c: $08 $e2 $0e
    ld b, h                                       ; $450f: $44
    pop hl                                        ; $4510: $e1
    ld b, [hl]                                    ; $4511: $46
    ld b, l                                       ; $4512: $45
    ld b, l                                       ; $4513: $45
    ld b, d                                       ; $4514: $42
    push hl                                       ; $4515: $e5
    ldh a, [$a0]                                  ; $4516: $f0 $a0
    ld l, b                                       ; $4518: $68
    ret nz                                        ; $4519: $c0

jr_061_451a:
    call c, $c8a2                                 ; $451a: $dc $a2 $c8
    add b                                         ; $451d: $80
    sub $00                                       ; $451e: $d6 $00
    pop bc                                        ; $4520: $c1
    ld [$9ec0], sp                                ; $4521: $08 $c0 $9e
    call nz, $83e3                                ; $4524: $c4 $e3 $83
    ret nz                                        ; $4527: $c0

    cp l                                          ; $4528: $bd
    inc l                                         ; $4529: $2c
    inc bc                                        ; $452a: $03
    inc l                                         ; $452b: $2c
    cp l                                          ; $452c: $bd
    pop bc                                        ; $452d: $c1
    call nz, $a0f0                                ; $452e: $c4 $f0 $a0
    cp l                                          ; $4531: $bd
    ld [c], a                                     ; $4532: $e2
    ld a, [hl]                                    ; $4533: $7e
    ld [c], a                                     ; $4534: $e2
    add b                                         ; $4535: $80

Jump_061_4536:
    sub $00                                       ; $4536: $d6 $00
    jp nz, $01de                                  ; $4538: $c2 $de $01

    rst $20                                       ; $453b: $e7
    dec l                                         ; $453c: $2d
    jr nz, jr_061_455f                            ; $453d: $20 $20

    ld [hl-], a                                   ; $453f: $32
    ld a, [hl]                                    ; $4540: $7e
    db $e3                                        ; $4541: $e3
    sbc h                                         ; $4542: $9c
    and d                                         ; $4543: $a2
    add c                                         ; $4544: $81
    sbc a                                         ; $4545: $9f
    or c                                          ; $4546: $b1
    and c                                         ; $4547: $a1
    db $fc                                        ; $4548: $fc
    push bc                                       ; $4549: $c5
    add b                                         ; $454a: $80
    db $d3                                        ; $454b: $d3
    nop                                           ; $454c: $00

jr_061_454d:
    db $e4                                        ; $454d: $e4
    ld b, h                                       ; $454e: $44
    pop bc                                        ; $454f: $c1
    ld b, [hl]                                    ; $4550: $46
    jp $0f45                                      ; $4551: $c3 $45 $0f


    ld a, [hl+]                                   ; $4554: $2a
    ld h, $24                                     ; $4555: $26 $24
    ld b, d                                       ; $4557: $42
    ld a, [hl-]                                   ; $4558: $3a
    call nz, $c23e                                ; $4559: $c4 $3e $c2
    db $fc                                        ; $455c: $fc
    and c                                         ; $455d: $a1
    ld a, d                                       ; $455e: $7a

jr_061_455f:
    set 5, h                                      ; $455f: $cb $ec

Jump_061_4561:
    nop                                           ; $4561: $00
    xor l                                         ; $4562: $ad
    add [hl]                                      ; $4563: $86
    and d                                         ; $4564: $a2
    sbc a                                         ; $4565: $9f
    sbc h                                         ; $4566: $9c
    ld a, $e4                                     ; $4567: $3e $e4
    add hl, sp                                    ; $4569: $39
    dec [hl]                                      ; $456a: $35
    inc a                                         ; $456b: $3c
    add l                                         ; $456c: $85
    ld b, h                                       ; $456d: $44
    ld [hl-], a                                   ; $456e: $32
    db $e4                                        ; $456f: $e4
    xor [hl]                                      ; $4570: $ae
    db $fd                                        ; $4571: $fd
    and d                                         ; $4572: $a2
    call c, Call_000_0086                         ; $4573: $dc $86 $00
    or l                                          ; $4576: $b5
    jr jr_061_451a                                ; $4577: $18 $a1

    and b                                         ; $4579: $a0
    ei                                            ; $457a: $fb
    and b                                         ; $457b: $a0
    and c                                         ; $457c: $a1
    ld a, [hl]                                    ; $457d: $7e

Jump_061_457e:
    jp Jump_000_3a44                              ; $457e: $c3 $44 $3a


Call_061_4581:
    dec [hl]                                      ; $4581: $35
    dec [hl]                                      ; $4582: $35
    ld b, b                                       ; $4583: $40
    ld b, b                                       ; $4584: $40
    jr c, jr_061_454d                             ; $4585: $38 $c6

    cp h                                          ; $4587: $bc
    and b                                         ; $4588: $a0
    db $fc                                        ; $4589: $fc
    and e                                         ; $458a: $a3
    ld a, d                                       ; $458b: $7a
    ret                                           ; $458c: $c9


    nop                                           ; $458d: $00
    xor a                                         ; $458e: $af
    add [hl]                                      ; $458f: $86
    add c                                         ; $4590: $81
    sbc [hl]                                      ; $4591: $9e
    jp nz, Jump_000_1fa3                          ; $4592: $c2 $a3 $1f

    ld b, b                                       ; $4595: $40
    dec [hl]                                      ; $4596: $35
    dec [hl]                                      ; $4597: $35
    dec [hl]                                      ; $4598: $35
    add hl, sp                                    ; $4599: $39
    add d                                         ; $459a: $82
    db $e3                                        ; $459b: $e3
    ld a, d                                       ; $459c: $7a
    add $5a                                       ; $459d: $c6 $5a
    add l                                         ; $459f: $85
    ldh a, [rP1]                                  ; $45a0: $f0 $00
    or b                                          ; $45a2: $b0
    inc h                                         ; $45a3: $24
    db $e3                                        ; $45a4: $e3
    sub [hl]                                      ; $45a5: $96
    add c                                         ; $45a6: $81
    cp [hl]                                       ; $45a7: $be
    and h                                         ; $45a8: $a4
    ld b, h                                       ; $45a9: $44
    ld [hl], $35                                  ; $45aa: $36 $35
    dec [hl]                                      ; $45ac: $35
    add hl, bc                                    ; $45ad: $09
    ld a, [hl-]                                   ; $45ae: $3a
    dec a                                         ; $45af: $3d
    jp nz, $c232                                  ; $45b0: $c2 $32 $c2

    sbc [hl]                                      ; $45b3: $9e
    ld a, d                                       ; $45b4: $7a
    add h                                         ; $45b5: $84
    ld e, d                                       ; $45b6: $5a
    add c                                         ; $45b7: $81
    nop                                           ; $45b8: $00
    or c                                          ; $45b9: $b1
    inc b                                         ; $45ba: $04
    adc b                                         ; $45bb: $88
    ld c, $7f                                     ; $45bc: $0e $7f
    pop hl                                        ; $45be: $e1
    ld b, l                                       ; $45bf: $45

Jump_061_45c0:
    ld c, b                                       ; $45c0: $48
    ld c, c                                       ; $45c1: $49
    ld a, a                                       ; $45c2: $7f
    ldh [rIE], a                                  ; $45c3: $e0 $ff
    ret nz                                        ; $45c5: $c0

    db $fc                                        ; $45c6: $fc
    adc c                                         ; $45c7: $89
    ld hl, sp+$63                                 ; $45c8: $f8 $63
    ldh a, [rP1]                                  ; $45ca: $f0 $00
    or e                                          ; $45cc: $b3
    nop                                           ; $45cd: $00
    add e                                         ; $45ce: $83
    inc b                                         ; $45cf: $04
    add d                                         ; $45d0: $82
    ccf                                           ; $45d1: $3f
    ldh [rLYC], a                                 ; $45d2: $e0 $45
    ld b, a                                       ; $45d4: $47
    ld h, b                                       ; $45d5: $60
    ld d, d                                       ; $45d6: $52
    add b                                         ; $45d7: $80
    add b                                         ; $45d8: $80
    ldh [rIE], a                                  ; $45d9: $e0 $ff
    add $01                                       ; $45db: $c6 $01
    ld [c], a                                     ; $45dd: $e2
    ld a, [hl]                                    ; $45de: $7e
    call nz, $b900                                ; $45df: $c4 $00 $b9
    inc b                                         ; $45e2: $04
    add d                                         ; $45e3: $82
    ld a, h                                       ; $45e4: $7c
    and b                                         ; $45e5: $a0
    ld b, l                                       ; $45e6: $45
    ld a, a                                       ; $45e7: $7f
    ld d, [hl]                                    ; $45e8: $56
    ld h, c                                       ; $45e9: $61
    add hl, sp                                    ; $45ea: $39
    dec [hl]                                      ; $45eb: $35
    dec [hl]                                      ; $45ec: $35
    jr c, jr_061_4626                             ; $45ed: $38 $37

    add b                                         ; $45ef: $80
    ldh [$80], a                                  ; $45f0: $e0 $80
    nop                                           ; $45f2: $00
    and b                                         ; $45f3: $a0
    ld a, [$e962]                                 ; $45f4: $fa $62 $e9
    ld h, d                                       ; $45f7: $62
    ld a, d                                       ; $45f8: $7a
    ld l, e                                       ; $45f9: $6b
    nop                                           ; $45fa: $00
    xor a                                         ; $45fb: $af
    add [hl]                                      ; $45fc: $86
    ld h, c                                       ; $45fd: $61
    ld b, d                                       ; $45fe: $42

Call_061_45ff:
    add b                                         ; $45ff: $80
    xor a                                         ; $4600: $af
    ld [hl], a                                    ; $4601: $77
    ld b, [hl]                                    ; $4602: $46
    ld d, l                                       ; $4603: $55
    ld d, d                                       ; $4604: $52
    add c                                         ; $4605: $81
    pop bc                                        ; $4606: $c1
    ld e, a                                       ; $4607: $5f
    ld c, c                                       ; $4608: $49
    ld b, l                                       ; $4609: $45
    ld a, b                                       ; $460a: $78
    add b                                         ; $460b: $80
    ld h, c                                       ; $460c: $61
    and c                                         ; $460d: $a1
    xor c                                         ; $460e: $a9
    ld h, d                                       ; $460f: $62
    ld l, e                                       ; $4610: $6b
    ld h, b                                       ; $4611: $60
    ld e, [hl]                                    ; $4612: $5e
    ld h, c                                       ; $4613: $61
    nop                                           ; $4614: $00
    cp h                                          ; $4615: $bc
    sbc a                                         ; $4616: $9f
    and d                                         ; $4617: $a2
    add $63                                       ; $4618: $c6 $63
    ld a, e                                       ; $461a: $7b
    ld b, l                                       ; $461b: $45
    ld b, e                                       ; $461c: $43
    pop bc                                        ; $461d: $c1
    ret nz                                        ; $461e: $c0

    ld [hl], $52                                  ; $461f: $36 $52
    ld h, c                                       ; $4621: $61
    ld d, e                                       ; $4622: $53
    ei                                            ; $4623: $fb
    add b                                         ; $4624: $80
    ld b, c                                       ; $4625: $41

jr_061_4626:
    sbc [hl]                                      ; $4626: $9e
    and $a4                                       ; $4627: $e6 $a4
    nop                                           ; $4629: $00
    cp h                                          ; $462a: $bc
    ld [$c661], sp                                ; $462b: $08 $61 $c6
    ld h, c                                       ; $462e: $61
    rst $00                                       ; $462f: $c7
    ld h, h                                       ; $4630: $64
    ld b, l                                       ; $4631: $45
    nop                                           ; $4632: $00
    ret nz                                        ; $4633: $c0

    ld b, $bf                                     ; $4634: $06 $bf
    ldh [rHDMA2], a                               ; $4636: $e0 $52
    ld b, l                                       ; $4638: $45
    ret nz                                        ; $4639: $c0

    ld h, c                                       ; $463a: $61
    xor $41                                       ; $463b: $ee $41
    add [hl]                                      ; $463d: $86
    ret                                           ; $463e: $c9


    add b                                         ; $463f: $80
    ld [hl], c                                    ; $4640: $71
    add d                                         ; $4641: $82
    pop hl                                        ; $4642: $e1
    db $ec                                        ; $4643: $ec
    ld c, d                                       ; $4644: $4a
    ld h, c                                       ; $4645: $61
    cp a                                          ; $4646: $bf
    add e                                         ; $4647: $83
    ld b, l                                       ; $4648: $45
    ld d, b                                       ; $4649: $50
    rst $38                                       ; $464a: $ff
    ret nz                                        ; $464b: $c0

    dec [hl]                                      ; $464c: $35
    add hl, sp                                    ; $464d: $39
    ld e, [hl]                                    ; $464e: $5e
    add e                                         ; $464f: $83
    ld h, c                                       ; $4650: $61
    ld e, h                                       ; $4651: $5c
    ld a, a                                       ; $4652: $7f
    ld h, h                                       ; $4653: $64
    add [hl]                                      ; $4654: $86
    jp z, $b100                                   ; $4655: $ca $00 $b1

    add d                                         ; $4658: $82
    add d                                         ; $4659: $82
    ld c, d                                       ; $465a: $4a
    ld h, l                                       ; $465b: $65
    ld b, l                                       ; $465c: $45
    dec de                                        ; $465d: $1b
    ld b, a                                       ; $465e: $47
    ld e, l                                       ; $465f: $5d
    cp a                                          ; $4660: $bf
    and c                                         ; $4661: $a1
    ld a, [hl-]                                   ; $4662: $3a
    ld d, e                                       ; $4663: $53
    ccf                                           ; $4664: $3f
    pop hl                                        ; $4665: $e1
    add d                                         ; $4666: $82
    and l                                         ; $4667: $a5
    add b                                         ; $4668: $80
    ld a, c                                       ; $4669: $79
    db $10                                        ; $466a: $10
    add d                                         ; $466b: $82
    ld b, d                                       ; $466c: $42
    ld b, d                                       ; $466d: $42
    add [hl]                                      ; $466e: $86
    ld b, b                                       ; $466f: $40
    push bc                                       ; $4670: $c5
    rst $38                                       ; $4671: $ff
    and e                                         ; $4672: $a3
    xor [hl]                                      ; $4673: $ae
    add d                                         ; $4674: $82
    and h                                         ; $4675: $a4
    add b                                         ; $4676: $80
    ld a, c                                       ; $4677: $79
    add d                                         ; $4678: $82
    ld l, b                                       ; $4679: $68
    ld d, d                                       ; $467a: $52
    call nz, Call_061_5261                        ; $467b: $c4 $61 $52
    ld b, b                                       ; $467e: $40
    pop bc                                        ; $467f: $c1
    ld a, $c0                                     ; $4680: $3e $c0
    ld b, e                                       ; $4682: $43
    cp e                                          ; $4683: $bb
    ld h, c                                       ; $4684: $61
    xor a                                         ; $4685: $af
    add d                                         ; $4686: $82
    and d                                         ; $4687: $a2
    or b                                          ; $4688: $b0
    ld a, [hl]                                    ; $4689: $7e
    ld b, d                                       ; $468a: $42
    nop                                           ; $468b: $00
    ld e, b                                       ; $468c: $58
    adc d                                         ; $468d: $8a
    ld hl, $4686                                  ; $468e: $21 $86 $46
    ld b, l                                       ; $4691: $45
    ld e, e                                       ; $4692: $5b
    pop bc                                        ; $4693: $c1
    add b                                         ; $4694: $80
    dec [hl]                                      ; $4695: $35
    rrca                                          ; $4696: $0f
    ld [hl], $47                                  ; $4697: $36 $47
    ld c, h                                       ; $4699: $4c
    ld b, a                                       ; $469a: $47
    ld b, b                                       ; $469b: $40
    db $e4                                        ; $469c: $e4
    ldh [rNR50], a                                ; $469d: $e0 $24
    nop                                           ; $469f: $00

Call_061_46a0:
    ld d, [hl]                                    ; $46a0: $56
    add d                                         ; $46a1: $82
    add h                                         ; $46a2: $84
    ld l, h                                       ; $46a3: $6c
    ld b, l                                       ; $46a4: $45
    ld b, c                                       ; $46a5: $41
    ld b, d                                       ; $46a6: $42
    ld h, d                                       ; $46a7: $62
    ld b, h                                       ; $46a8: $44
    inc a                                         ; $46a9: $3c
    ret nz                                        ; $46aa: $c0

    pop hl                                        ; $46ab: $e1
    ld d, d                                       ; $46ac: $52
    ld h, c                                       ; $46ad: $61

Call_061_46ae:
    ret nz                                        ; $46ae: $c0

    rst $00                                       ; $46af: $c7
    ldh [$82], a                                  ; $46b0: $e0 $82
    ld h, e                                       ; $46b2: $63
    ld hl, sp+$21                                 ; $46b3: $f8 $21
    nop                                           ; $46b5: $00
    or l                                          ; $46b6: $b5
    ld a, [hl]                                    ; $46b7: $7e
    ld [c], a                                     ; $46b8: $e2
    add $22                                       ; $46b9: $c6 $22
    ld b, l                                       ; $46bb: $45
    ld c, b                                       ; $46bc: $48
    ld c, b                                       ; $46bd: $48
    inc bc                                        ; $46be: $03
    scf                                           ; $46bf: $37
    jr c, @-$3f                                   ; $46c0: $38 $bf

    db $e3                                        ; $46c2: $e3
    add b                                         ; $46c3: $80
    ret nz                                        ; $46c4: $c0

    rst $38                                       ; $46c5: $ff
    and b                                         ; $46c6: $a0
    nop                                           ; $46c7: $00
    ld h, l                                       ; $46c8: $65
    nop                                           ; $46c9: $00
    cp d                                          ; $46ca: $ba
    nop                                           ; $46cb: $00
    add a                                         ; $46cc: $87
    rst $28                                       ; $46cd: $ef
    ld d, c                                       ; $46ce: $51
    ld e, a                                       ; $46cf: $5f
    ld h, c                                       ; $46d0: $61
    ld e, h                                       ; $46d1: $5c
    nop                                           ; $46d2: $00
    and c                                         ; $46d3: $a1
    dec [hl]                                      ; $46d4: $35
    add hl, sp                                    ; $46d5: $39
    ld e, e                                       ; $46d6: $5b
    ret nz                                        ; $46d7: $c0

    cp d                                          ; $46d8: $ba
    ld b, b                                       ; $46d9: $40
    ld a, a                                       ; $46da: $7f
    and b                                         ; $46db: $a0
    nop                                           ; $46dc: $00
    ld h, [hl]                                    ; $46dd: $66
    nop                                           ; $46de: $00
    or h                                          ; $46df: $b4

Jump_061_46e0:
    ld a, d                                       ; $46e0: $7a
    nop                                           ; $46e1: $00
    nop                                           ; $46e2: $00
    adc c                                         ; $46e3: $89
    ld b, l                                       ; $46e4: $45
    ld d, d                                       ; $46e5: $52
    nop                                           ; $46e6: $00
    pop bc                                        ; $46e7: $c1
    add d                                         ; $46e8: $82
    ld a, $83                                     ; $46e9: $3e $83
    add d                                         ; $46eb: $82

Call_061_46ec:
    ld h, c                                       ; $46ec: $61
    nop                                           ; $46ed: $00
    ld h, a                                       ; $46ee: $67
    add b                                         ; $46ef: $80
    ld de, $027a                                  ; $46f0: $11 $7a $02
    ld a, [hl]                                    ; $46f3: $7e
    ld b, h                                       ; $46f4: $44
    ld a, l                                       ; $46f5: $7d
    and e                                         ; $46f6: $a3
    ld bc, $8145                                  ; $46f7: $01 $45 $81
    jp nz, $833e                                  ; $46fa: $c2 $3e $83

    add d                                         ; $46fd: $82
    ld h, d                                       ; $46fe: $62
    ld a, d                                       ; $46ff: $7a
    ld de, $0cb0                                  ; $4700: $11 $b0 $0c
    jr nz, jr_061_4767                            ; $4703: $20 $62

    ld a, l                                       ; $4705: $7d
    and h                                         ; $4706: $a4
    nop                                           ; $4707: $00
    ld b, d                                       ; $4708: $42
    and c                                         ; $4709: $a1
    ld a, a                                       ; $470a: $7f
    ld [c], a                                     ; $470b: $e2
    dec a                                         ; $470c: $3d
    ld h, e                                       ; $470d: $63
    ld a, l                                       ; $470e: $7d
    add [hl]                                      ; $470f: $86
    add b                                         ; $4710: $80
    jr jr_061_4791                                ; $4711: $18 $7e

    inc hl                                        ; $4713: $23
    ld a, l                                       ; $4714: $7d
    and h                                         ; $4715: $a4
    add c                                         ; $4716: $81
    db $e4                                        ; $4717: $e4
    or b                                          ; $4718: $b0
    dec a                                         ; $4719: $3d
    ld h, h                                       ; $471a: $64
    or h                                          ; $471b: $b4
    ld bc, $82fa                                  ; $471c: $01 $fa $82
    nop                                           ; $471f: $00
    ld e, l                                       ; $4720: $5d
    jp nc, $bfd3                                  ; $4721: $d2 $d3 $bf

    inc h                                         ; $4724: $24
    ld a, $80                                     ; $4725: $3e $80
    ret nz                                        ; $4727: $c0

    push hl                                       ; $4728: $e5
    dec a                                         ; $4729: $3d
    ld h, d                                       ; $472a: $62
    ld a, $64                                     ; $472b: $3e $64
    nop                                           ; $472d: $00
    ld e, c                                       ; $472e: $59
    ld a, [hl]                                    ; $472f: $7e
    ld b, l                                       ; $4730: $45
    ret nz                                        ; $4731: $c0

    inc b                                         ; $4732: $04
    add b                                         ; $4733: $80
    and $35                                       ; $4734: $e6 $35
    ld bc, $3740                                  ; $4736: $01 $40 $37
    ld [bc], a                                    ; $4739: $02
    ld [hl-], a                                   ; $473a: $32
    nop                                           ; $473b: $00
    ld a, d                                       ; $473c: $7a
    rrca                                          ; $473d: $0f
    add b                                         ; $473e: $80
    bit 7, [hl]                                   ; $473f: $cb $7e
    daa                                           ; $4741: $27
    pop bc                                        ; $4742: $c1
    nop                                           ; $4743: $00
    nop                                           ; $4744: $00
    and $43                                       ; $4745: $e6 $43
    inc a                                         ; $4747: $3c
    ld b, h                                       ; $4748: $44
    di                                            ; $4749: $f3
    ld [bc], a                                    ; $474a: $02
    ld a, $42                                     ; $474b: $3e $42
    ld a, d                                       ; $474d: $7a
    dec c                                         ; $474e: $0d
    add b                                         ; $474f: $80
    set 4, h                                      ; $4750: $cb $e4
    db $fc                                        ; $4752: $fc
    jr nz, jr_061_4755                            ; $4753: $20 $00

jr_061_4755:
    ret c                                         ; $4755: $d8

    ld bc, $23bf                                  ; $4756: $01 $bf $23
    rst $38                                       ; $4759: $ff
    push bc                                       ; $475a: $c5
    ld a, l                                       ; $475b: $7d
    ld b, e                                       ; $475c: $43
    dec a                                         ; $475d: $3d
    and c                                         ; $475e: $a1
    ld h, d                                       ; $475f: $62
    ld h, c                                       ; $4760: $61
    nop                                           ; $4761: $00
    ld d, h                                       ; $4762: $54
    ld a, [$2087]                                 ; $4763: $fa $87 $20
    ld a, [de]                                    ; $4766: $1a

jr_061_4767:
    ld h, c                                       ; $4767: $61
    cp a                                          ; $4768: $bf
    ld [hl+], a                                   ; $4769: $22
    ld bc, $c041                                  ; $476a: $01 $41 $c0
    push bc                                       ; $476d: $c5
    ld sp, $a101                                  ; $476e: $31 $01 $a1
    nop                                           ; $4771: $00
    ld e, [hl]                                    ; $4772: $5e
    inc h                                         ; $4773: $24
    and d                                         ; $4774: $a2
    nop                                           ; $4775: $00
    rst $38                                       ; $4776: $ff
    ld b, h                                       ; $4777: $44
    nop                                           ; $4778: $00
    and h                                         ; $4779: $a4
    ld a, $41                                     ; $477a: $3e $41
    xor $60                                       ; $477c: $ee $60
    ld a, $e0                                     ; $477e: $3e $e0
    add d                                         ; $4780: $82
    call nz, Call_061_5f00                        ; $4781: $c4 $00 $5f
    ld a, $e3                                     ; $4784: $3e $e3
    dec de                                        ; $4786: $1b
    ld b, [hl]                                    ; $4787: $46
    xor [hl]                                      ; $4788: $ae
    add b                                         ; $4789: $80
    db $e4                                        ; $478a: $e4
    ld a, [hl-]                                   ; $478b: $3a
    ld b, l                                       ; $478c: $45
    ld bc, $00e2                                  ; $478d: $01 $e2 $00
    add hl, hl                                    ; $4790: $29

jr_061_4791:
    nop                                           ; $4791: $00
    ld e, e                                       ; $4792: $5b
    ld [bc], a                                    ; $4793: $02
    dec a                                         ; $4794: $3d
    inc h                                         ; $4795: $24
    xor a                                         ; $4796: $af
    cp a                                          ; $4797: $bf
    and h                                         ; $4798: $a4
    ld a, $23                                     ; $4799: $3e $23
    ld b, b                                       ; $479b: $40
    add c                                         ; $479c: $81
    push hl                                       ; $479d: $e5
    add b                                         ; $479e: $80
    nop                                           ; $479f: $00
    cp b                                          ; $47a0: $b8
    ld a, [hl]                                    ; $47a1: $7e
    rlca                                          ; $47a2: $07
    ld [$413d], sp                                ; $47a3: $08 $3d $41
    db $fd                                        ; $47a6: $fd
    ld bc, $a33f                                  ; $47a7: $01 $3f $a3
    ld b, d                                       ; $47aa: $42
    add e                                         ; $47ab: $83
    and d                                         ; $47ac: $a2
    add e                                         ; $47ad: $83
    dec h                                         ; $47ae: $25
    nop                                           ; $47af: $00
    ld e, h                                       ; $47b0: $5c
    nop                                           ; $47b1: $00
    and d                                         ; $47b2: $a2
    add d                                         ; $47b3: $82
    dec a                                         ; $47b4: $3d
    add l                                         ; $47b5: $85
    ld b, d                                       ; $47b6: $42
    ld [bc], a                                    ; $47b7: $02
    add $00                                       ; $47b8: $c6 $00
    ld e, a                                       ; $47ba: $5f
    inc h                                         ; $47bb: $24
    ld a, [bc]                                    ; $47bc: $0a
    ret nz                                        ; $47bd: $c0

    inc b                                         ; $47be: $04
    ld a, a                                       ; $47bf: $7f
    jp $2042                                      ; $47c0: $c3 $42 $20


    ld [bc], a                                    ; $47c3: $02
    ret nz                                        ; $47c4: $c0

    nop                                           ; $47c5: $00
    ld e, a                                       ; $47c6: $5f
    nop                                           ; $47c7: $00
    ld b, d                                       ; $47c8: $42
    nop                                           ; $47c9: $00
    db $e4                                        ; $47ca: $e4
    add c                                         ; $47cb: $81
    inc b                                         ; $47cc: $04
    xor [hl]                                      ; $47cd: $ae
    add b                                         ; $47ce: $80
    ld [c], a                                     ; $47cf: $e2
    cp a                                          ; $47d0: $bf
    ld [bc], a                                    ; $47d1: $02
    ld [$4800], sp                                ; $47d2: $08 $00 $48
    nop                                           ; $47d5: $00
    cp a                                          ; $47d6: $bf
    inc a                                         ; $47d7: $3c
    ld b, l                                       ; $47d8: $45
    xor a                                         ; $47d9: $af
    ccf                                           ; $47da: $3f
    ld h, d                                       ; $47db: $62
    ccf                                           ; $47dc: $3f
    inc bc                                        ; $47dd: $03
    nop                                           ; $47de: $00
    ld b, [hl]                                    ; $47df: $46

Jump_061_47e0:
    nop                                           ; $47e0: $00
    cp a                                          ; $47e1: $bf
    ld bc, $c2d5                                  ; $47e2: $01 $d5 $c2
    and b                                         ; $47e5: $a0
    cp a                                          ; $47e6: $bf
    inc h                                         ; $47e7: $24
    cp a                                          ; $47e8: $bf
    ld b, c                                       ; $47e9: $41
    jp nz, Jump_000_00a4                          ; $47ea: $c2 $a4 $00

    ld b, h                                       ; $47ed: $44
    ld e, [hl]                                    ; $47ee: $5e
    add c                                         ; $47ef: $81
    cp l                                          ; $47f0: $bd
    ld c, c                                       ; $47f1: $49
    ld [$b500], sp                                ; $47f2: $08 $00 $b5
    inc a                                         ; $47f5: $3c
    inc hl                                        ; $47f6: $23
    ld a, a                                       ; $47f7: $7f
    nop                                           ; $47f8: $00
    ld [hl], $83                                  ; $47f9: $36 $83
    add l                                         ; $47fb: $85
    nop                                           ; $47fc: $00
    ld b, e                                       ; $47fd: $43

Call_061_47fe:
    ldh [$c2], a                                  ; $47fe: $e0 $c2
    add b                                         ; $4800: $80
    halt                                          ; $4801: $76
    jr jr_061_4804                                ; $4802: $18 $00

jr_061_4804:
    and c                                         ; $4804: $a1
    nop                                           ; $4805: $00
    ld h, c                                       ; $4806: $61
    ld a, l                                       ; $4807: $7d
    ld b, l                                       ; $4808: $45
    ld b, l                                       ; $4809: $45
    ld [hl], $c1                                  ; $480a: $36 $c1
    ld [c], a                                     ; $480c: $e2
    xor $22                                       ; $480d: $ee $22
    nop                                           ; $480f: $00
    ld b, e                                       ; $4810: $43
    add b                                         ; $4811: $80
    ldh [$80], a                                  ; $4812: $e0 $80
    nop                                           ; $4814: $00
    ld d, e                                       ; $4815: $53
    ld a, [$1b26]                                 ; $4816: $fa $26 $1b
    jp nz, $c37f                                  ; $4819: $c2 $7f $c3

    inc a                                         ; $481c: $3c
    ld h, b                                       ; $481d: $60
    push bc                                       ; $481e: $c5
    add h                                         ; $481f: $84
    xor [hl]                                      ; $4820: $ae
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    ld e, a                                       ; $4823: $5f
    nop                                           ; $4824: $00
    and l                                         ; $4825: $a5
    ld a, [hl]                                    ; $4826: $7e
    ld b, e                                       ; $4827: $43
    cp [hl]                                       ; $4828: $be
    ld b, c                                       ; $4829: $41
    ld [hl], $25                                  ; $482a: $36 $25
    jp nz, $8161                                  ; $482c: $c2 $61 $81

    and e                                         ; $482f: $a3
    inc b                                         ; $4830: $04
    pop hl                                        ; $4831: $e1
    nop                                           ; $4832: $00
    add b                                         ; $4833: $80
    rla                                           ; $4834: $17
    nop                                           ; $4835: $00
    and l                                         ; $4836: $a5
    ld a, [hl]                                    ; $4837: $7e
    ld b, l                                       ; $4838: $45
    scf                                           ; $4839: $37
    inc h                                         ; $483a: $24
    or b                                          ; $483b: $b0
    ld [bc], a                                    ; $483c: $02
    cp a                                          ; $483d: $bf
    and b                                         ; $483e: $a0
    add c                                         ; $483f: $81
    and d                                         ; $4840: $a2
    add b                                         ; $4841: $80
    add hl, de                                    ; $4842: $19
    ld a, b                                       ; $4843: $78
    nop                                           ; $4844: $00
    and e                                         ; $4845: $a3
    db $fc                                        ; $4846: $fc
    inc hl                                        ; $4847: $23
    ld a, [hl-]                                   ; $4848: $3a
    ld hl, $4345                                  ; $4849: $21 $45 $43
    ld b, c                                       ; $484c: $41
    ld b, e                                       ; $484d: $43
    db $fd                                        ; $484e: $fd
    ldh [$c0], a                                  ; $484f: $e0 $c0
    jp $8261                                      ; $4851: $c3 $61 $82


    ld [bc], a                                    ; $4854: $02
    add d                                         ; $4855: $82
    add c                                         ; $4856: $81
    add b                                         ; $4857: $80
    jr jr_061_485a                                ; $4858: $18 $00

jr_061_485a:
    ld b, h                                       ; $485a: $44
    db $fc                                        ; $485b: $fc

Jump_061_485c:
    and [hl]                                      ; $485c: $a6
    ld b, l                                       ; $485d: $45
    xor [hl]                                      ; $485e: $ae
    rlca                                          ; $485f: $07
    dec sp                                        ; $4860: $3b
    dec [hl]                                      ; $4861: $35
    dec sp                                        ; $4862: $3b
    db $fd                                        ; $4863: $fd
    ldh [$7e], a                                  ; $4864: $e0 $7e
    ret nz                                        ; $4866: $c0

    inc bc                                        ; $4867: $03
    pop hl                                        ; $4868: $e1
    add [hl]                                      ; $4869: $86
    ld l, l                                       ; $486a: $6d
    nop                                           ; $486b: $00
    ld d, e                                       ; $486c: $53
    ld a, [hl]                                    ; $486d: $7e
    db $fc                                        ; $486e: $fc
    and [hl]                                      ; $486f: $a6
    sbc [hl]                                      ; $4870: $9e
    ld b, [hl]                                    ; $4871: $46
    ld b, d                                       ; $4872: $42
    xor l                                         ; $4873: $ad
    and h                                         ; $4874: $a4
    ld h, h                                       ; $4875: $64
    rst $38                                       ; $4876: $ff
    ldh [$81], a                                  ; $4877: $e0 $81
    and l                                         ; $4879: $a5
    nop                                           ; $487a: $00
    ld b, b                                       ; $487b: $40
    ld [$8661], sp                                ; $487c: $08 $61 $86
    ld l, l                                       ; $487f: $6d
    add b                                         ; $4880: $80
    halt                                          ; $4881: $76
    db $fc                                        ; $4882: $fc
    add e                                         ; $4883: $83
    ret nz                                        ; $4884: $c0

    ldh [$35], a                                  ; $4885: $e0 $35
    cp a                                          ; $4887: $bf
    ld l, c                                       ; $4888: $69
    and e                                         ; $4889: $a3
    dec [hl]                                      ; $488a: $35
    dec [hl]                                      ; $488b: $35
    and e                                         ; $488c: $a3
    ld l, d                                       ; $488d: $6a
    ld a, a                                       ; $488e: $7f
    add b                                         ; $488f: $80
    sbc h                                         ; $4890: $9c
    ld bc, $869f                                  ; $4891: $01 $9f $86
    ld l, a                                       ; $4894: $6f
    nop                                           ; $4895: $00
    ld d, c                                       ; $4896: $51
    ld a, d                                       ; $4897: $7a
    inc bc                                        ; $4898: $03
    db $fc                                        ; $4899: $fc
    ld h, c                                       ; $489a: $61
    ld a, [hl-]                                   ; $489b: $3a
    nop                                           ; $489c: $00
    ret nz                                        ; $489d: $c0

    ldh [$c0], a                                  ; $489e: $e0 $c0
    add c                                         ; $48a0: $81
    add [hl]                                      ; $48a1: $86
    ret nz                                        ; $48a2: $c0

    pop hl                                        ; $48a3: $e1
    ld b, [hl]                                    ; $48a4: $46
    sbc [hl]                                      ; $48a5: $9e
    add [hl]                                      ; $48a6: $86
    ld l, a                                       ; $48a7: $6f
    add b                                         ; $48a8: $80
    rrca                                          ; $48a9: $0f
    ld a, d                                       ; $48aa: $7a
    add hl, bc                                    ; $48ab: $09
    cp h                                          ; $48ac: $bc
    jr nz, jr_061_48f3                            ; $48ad: $20 $44

    rla                                           ; $48af: $17
    inc a                                         ; $48b0: $3c
    ld l, e                                       ; $48b1: $6b
    ld [hl], c                                    ; $48b2: $71
    rst $38                                       ; $48b3: $ff
    ldh [$6d], a                                  ; $48b4: $e0 $6d
    ld b, b                                       ; $48b6: $40
    ld h, c                                       ; $48b7: $61
    add b                                         ; $48b8: $80
    add b                                         ; $48b9: $80
    add [hl]                                      ; $48ba: $86
    dec c                                         ; $48bb: $0d
    add sp, -$80                                  ; $48bc: $e8 $80
    rst $08                                       ; $48be: $cf
    ld a, d                                       ; $48bf: $7a
    add hl, bc                                    ; $48c0: $09
    add c                                         ; $48c1: $81
    ld h, c                                       ; $48c2: $61
    ld [hl], $c0                                  ; $48c3: $36 $c0
    push bc                                       ; $48c5: $c5
    xor a                                         ; $48c6: $af
    ld b, [hl]                                    ; $48c7: $46
    sbc [hl]                                      ; $48c8: $9e
    ld b, b                                       ; $48c9: $40
    add [hl]                                      ; $48ca: $86
    rrca                                          ; $48cb: $0f
    nop                                           ; $48cc: $00
    ld d, e                                       ; $48cd: $53
    ld a, d                                       ; $48ce: $7a
    ld h, l                                       ; $48cf: $65
    cp a                                          ; $48d0: $bf
    ld h, c                                       ; $48d1: $61
    ld b, b                                       ; $48d2: $40
    call nz, $c081                                ; $48d3: $c4 $81 $c0
    sbc l                                         ; $48d6: $9d
    nop                                           ; $48d7: $00
    push hl                                       ; $48d8: $e5
    db $10                                        ; $48d9: $10
    inc de                                        ; $48da: $13
    db $ed                                        ; $48db: $ed
    nop                                           ; $48dc: $00
    ld c, [hl]                                    ; $48dd: $4e
    sbc d                                         ; $48de: $9a
    and e                                         ; $48df: $a3
    db $fc                                        ; $48e0: $fc
    add d                                         ; $48e1: $82
    sbc l                                         ; $48e2: $9d
    rst $38                                       ; $48e3: $ff
    and $08                                       ; $48e4: $e6 $08
    ld b, [hl]                                    ; $48e6: $46
    inc de                                        ; $48e7: $13
    xor $00                                       ; $48e8: $ee $00
    nop                                           ; $48ea: $00
    or h                                          ; $48eb: $b4
    sub h                                         ; $48ec: $94
    ld h, e                                       ; $48ed: $63
    db $fc                                        ; $48ee: $fc
    rst $20                                       ; $48ef: $e7
    ld [$1344], sp                                ; $48f0: $08 $44 $13

jr_061_48f3:
    rst $28                                       ; $48f3: $ef
    add b                                         ; $48f4: $80
    ret nc                                        ; $48f5: $d0

    inc e                                         ; $48f6: $1c
    ld b, c                                       ; $48f7: $41
    db $fc                                        ; $48f8: $fc
    add e                                         ; $48f9: $83
    nop                                           ; $48fa: $00
    db $fc                                        ; $48fb: $fc
    rst $20                                       ; $48fc: $e7
    ld [$4343], sp                                ; $48fd: $08 $43 $43
    xor $87                                       ; $4900: $ee $87
    ld b, b                                       ; $4902: $40
    nop                                           ; $4903: $00

Jump_061_4904:
    nop                                           ; $4904: $00
    nop                                           ; $4905: $00
    pop bc                                        ; $4906: $c1
    nop                                           ; $4907: $00
    rst $38                                       ; $4908: $ff
    rst $38                                       ; $4909: $ff
    rst $38                                       ; $490a: $ff
    rst $38                                       ; $490b: $ff
    rst $38                                       ; $490c: $ff
    rst $38                                       ; $490d: $ff
    rst $38                                       ; $490e: $ff
    rst $38                                       ; $490f: $ff
    rst $38                                       ; $4910: $ff
    rst $38                                       ; $4911: $ff
    nop                                           ; $4912: $00
    nop                                           ; $4913: $00
    ld bc, $fe80                                  ; $4914: $01 $80 $fe
    ldh [rIE], a                                  ; $4917: $e0 $ff
    rst $38                                       ; $4919: $ff
    rst $38                                       ; $491a: $ff
    rst $38                                       ; $491b: $ff
    rst $38                                       ; $491c: $ff
    add sp, $00                                   ; $491d: $e8 $00
    nop                                           ; $491f: $00
    nop                                           ; $4920: $00
    ld [bc], a                                    ; $4921: $02
    nop                                           ; $4922: $00
    dec e                                         ; $4923: $1d
    dec b                                         ; $4924: $05
    ld [bc], a                                    ; $4925: $02
    ld bc, $0621                                  ; $4926: $01 $21 $06
    ld [bc], a                                    ; $4929: $02
    ld [bc], a                                    ; $492a: $02
    dec h                                         ; $492b: $25
    rlca                                          ; $492c: $07
    ld [bc], a                                    ; $492d: $02
    inc bc                                        ; $492e: $03
    add hl, de                                    ; $492f: $19
    ld [$0402], sp                                ; $4930: $08 $02 $04
    dec d                                         ; $4933: $15
    add hl, bc                                    ; $4934: $09
    ld [bc], a                                    ; $4935: $02
    dec b                                         ; $4936: $05
    rla                                           ; $4937: $17
    inc c                                         ; $4938: $0c
    ld [bc], a                                    ; $4939: $02
    ld b, $23                                     ; $493a: $06 $23
    inc c                                         ; $493c: $0c
    ld [bc], a                                    ; $493d: $02
    rlca                                          ; $493e: $07
    add hl, hl                                    ; $493f: $29
    dec c                                         ; $4940: $0d
    ld [bc], a                                    ; $4941: $02
    ld [$0e1b], sp                                ; $4942: $08 $1b $0e
    ld [bc], a                                    ; $4945: $02
    add hl, bc                                    ; $4946: $09
    daa                                           ; $4947: $27
    rrca                                          ; $4948: $0f
    ld [bc], a                                    ; $4949: $02
    ld a, [bc]                                    ; $494a: $0a
    add hl, de                                    ; $494b: $19
    inc de                                        ; $494c: $13
    ld [bc], a                                    ; $494d: $02
    dec bc                                        ; $494e: $0b
    dec h                                         ; $494f: $25
    inc de                                        ; $4950: $13
    ld [bc], a                                    ; $4951: $02
    inc c                                         ; $4952: $0c
    ld d, $16                                     ; $4953: $16 $16
    ld [bc], a                                    ; $4955: $02
    dec c                                         ; $4956: $0d
    inc de                                        ; $4957: $13
    jr jr_061_495c                                ; $4958: $18 $02

    ld c, $28                                     ; $495a: $0e $28

jr_061_495c:
    add hl, de                                    ; $495c: $19
    ld [bc], a                                    ; $495d: $02
    rrca                                          ; $495e: $0f
    rla                                           ; $495f: $17
    dec de                                        ; $4960: $1b
    ld [bc], a                                    ; $4961: $02
    db $10                                        ; $4962: $10
    daa                                           ; $4963: $27
    rra                                           ; $4964: $1f
    ld [bc], a                                    ; $4965: $02
    ld de, $2019                                  ; $4966: $11 $19 $20
    ld [bc], a                                    ; $4969: $02
    ld [de], a                                    ; $496a: $12
    ld d, $22                                     ; $496b: $16 $22
    ld [bc], a                                    ; $496d: $02
    inc de                                        ; $496e: $13
    add hl, hl                                    ; $496f: $29
    ld [hl+], a                                   ; $4970: $22
    ld [bc], a                                    ; $4971: $02
    inc d                                         ; $4972: $14
    ld h, $24                                     ; $4973: $26 $24
    ld [bc], a                                    ; $4975: $02
    dec d                                         ; $4976: $15
    dec hl                                        ; $4977: $2b
    inc h                                         ; $4978: $24
    ld [bc], a                                    ; $4979: $02
    ld d, $18                                     ; $497a: $16 $18
    dec h                                         ; $497c: $25
    ld [bc], a                                    ; $497d: $02
    rla                                           ; $497e: $17
    jr z, @+$29                                   ; $497f: $28 $27

    ld [bc], a                                    ; $4981: $02
    jr jr_061_49a9                                ; $4982: $18 $25

    jr z, jr_061_4988                             ; $4984: $28 $02

    add hl, de                                    ; $4986: $19
    dec de                                        ; $4987: $1b

jr_061_4988:
    add hl, hl                                    ; $4988: $29
    ld [bc], a                                    ; $4989: $02
    ld a, [de]                                    ; $498a: $1a
    inc h                                         ; $498b: $24
    inc l                                         ; $498c: $2c
    ld [bc], a                                    ; $498d: $02
    dec de                                        ; $498e: $1b
    inc e                                         ; $498f: $1c
    ld l, $02                                     ; $4990: $2e $02
    inc e                                         ; $4992: $1c
    rla                                           ; $4993: $17
    cpl                                           ; $4994: $2f
    ld [bc], a                                    ; $4995: $02
    dec e                                         ; $4996: $1d
    ld h, $30                                     ; $4997: $26 $30
    ld [bc], a                                    ; $4999: $02
    ld e, $1a                                     ; $499a: $1e $1a
    ld sp, $1f02                                  ; $499c: $31 $02 $1f
    dec e                                         ; $499f: $1d
    inc sp                                        ; $49a0: $33
    ld [bc], a                                    ; $49a1: $02
    jr nz, jr_061_49cb                            ; $49a2: $20 $27

    inc sp                                        ; $49a4: $33
    ld [bc], a                                    ; $49a5: $02
    ld hl, $3523                                  ; $49a6: $21 $23 $35

jr_061_49a9:
    ld [bc], a                                    ; $49a9: $02
    ld [hl+], a                                   ; $49aa: $22
    inc e                                         ; $49ab: $1c
    scf                                           ; $49ac: $37
    ld [bc], a                                    ; $49ad: $02
    inc hl                                        ; $49ae: $23
    ld a, [de]                                    ; $49af: $1a
    dec sp                                        ; $49b0: $3b
    ld [bc], a                                    ; $49b1: $02
    inc h                                         ; $49b2: $24
    dec h                                         ; $49b3: $25
    dec sp                                        ; $49b4: $3b
    rst $38                                       ; $49b5: $ff
    rst $38                                       ; $49b6: $ff
    rst $38                                       ; $49b7: $ff
    ret nz                                        ; $49b8: $c0

    ld c, c                                       ; $49b9: $49
    ld d, h                                       ; $49ba: $54
    ld c, l                                       ; $49bb: $4d
    rst $08                                       ; $49bc: $cf
    ld d, d                                       ; $49bd: $52
    ld [$bf52], a                                 ; $49be: $ea $52 $bf
    ld c, $0e                                     ; $49c1: $0e $0e
    dec c                                         ; $49c3: $0d
    dec c                                         ; $49c4: $0d
    dec c                                         ; $49c5: $0d
    ld c, $fa                                     ; $49c6: $0e $fa
    db $ed                                        ; $49c8: $ed
    ld c, l                                       ; $49c9: $4d
    ld [hl], a                                    ; $49ca: $77

jr_061_49cb:
    ld c, l                                       ; $49cb: $4d
    ld c, $0e                                     ; $49cc: $0e $0e
    db $fc                                        ; $49ce: $fc
    rst $20                                       ; $49cf: $e7
    dec c                                         ; $49d0: $0d
    dec c                                         ; $49d1: $0d
    inc c                                         ; $49d2: $0c
    rst $38                                       ; $49d3: $ff
    or $00                                        ; $49d4: $f6 $00
    push bc                                       ; $49d6: $c5
    ldh [$fd], a                                  ; $49d7: $e0 $fd
    rst $28                                       ; $49d9: $ef
    xor a                                         ; $49da: $af
    pop hl                                        ; $49db: $e1
    pop af                                        ; $49dc: $f1
    jp hl                                         ; $49dd: $e9


    ret nz                                        ; $49de: $c0

    rst $38                                       ; $49df: $ff
    cp c                                          ; $49e0: $b9
    db $eb                                        ; $49e1: $eb
    add d                                         ; $49e2: $82
    ldh [rOCPD], a                                ; $49e3: $e0 $6b
    pop hl                                        ; $49e5: $e1
    ld [bc], a                                    ; $49e6: $02
    db $fc                                        ; $49e7: $fc
    rst $20                                       ; $49e8: $e7
    ld c, h                                       ; $49e9: $4c
    cp a                                          ; $49ea: $bf
    or $43                                        ; $49eb: $f6 $43
    ldh a, [$82]                                  ; $49ed: $f0 $82
    db $ec                                        ; $49ef: $ec
    ret nz                                        ; $49f0: $c0

    ld [c], a                                     ; $49f1: $e2
    cp a                                          ; $49f2: $bf
    or $83                                        ; $49f3: $f6 $83
    ldh a, [$80]                                  ; $49f5: $f0 $80
    inc b                                         ; $49f7: $04
    db $e4                                        ; $49f8: $e4
    ld a, [hl]                                    ; $49f9: $7e
    rst $20                                       ; $49fa: $e7
    sbc $c0                                       ; $49fb: $de $c0
    cp a                                          ; $49fd: $bf
    or $00                                        ; $49fe: $f6 $00
    ld a, [c]                                     ; $4a00: $f2
    ld a, [bc]                                    ; $4a01: $0a
    db $e4                                        ; $4a02: $e4
    ret nz                                        ; $4a03: $c0

    and $6d                                       ; $4a04: $e6 $6d
    sub c                                         ; $4a06: $91
    ld l, e                                       ; $4a07: $6b
    cp $d6                                        ; $4a08: $fe $d6
    add [hl]                                      ; $4a0a: $86
    pop de                                        ; $4a0b: $d1
    adc d                                         ; $4a0c: $8a
    and $4d                                       ; $4a0d: $e6 $4d
    rst $38                                       ; $4a0f: $ff
    ldh [$74], a                                  ; $4a10: $e0 $74
    ret nz                                        ; $4a12: $c0

    ld l, l                                       ; $4a13: $6d
    pop hl                                        ; $4a14: $e1
    ld l, e                                       ; $4a15: $6b
    ret nz                                        ; $4a16: $c0

    ld sp, hl                                     ; $4a17: $f9
    add b                                         ; $4a18: $80
    rst $30                                       ; $4a19: $f7
    ret z                                         ; $4a1a: $c8

    ldh [$fe], a                                  ; $4a1b: $e0 $fe
    pop hl                                        ; $4a1d: $e1
    dec c                                         ; $4a1e: $0d
    ld l, e                                       ; $4a1f: $6b
    ld l, e                                       ; $4a20: $6b
    adc c                                         ; $4a21: $89
    dec l                                         ; $4a22: $2d
    ret nz                                        ; $4a23: $c0

    rst $38                                       ; $4a24: $ff
    scf                                           ; $4a25: $37
    jp $866d                                      ; $4a26: $c3 $6d $86


    ret z                                         ; $4a29: $c8

Jump_061_4a2a:
    adc c                                         ; $4a2a: $89
    pop hl                                        ; $4a2b: $e1
    cp [hl]                                       ; $4a2c: $be
    ldh [$2d], a                                  ; $4a2d: $e0 $2d
    rrca                                          ; $4a2f: $0f
    dec c                                         ; $4a30: $0d
    ld l, e                                       ; $4a31: $6b
    dec l                                         ; $4a32: $2d
    dec l                                         ; $4a33: $2d
    add b                                         ; $4a34: $80
    rst $18                                       ; $4a35: $df
    add [hl]                                      ; $4a36: $86
    jp z, $c242                                   ; $4a37: $ca $42 $c2

    add l                                         ; $4a3a: $85
    pop hl                                        ; $4a3b: $e1
    rrca                                          ; $4a3c: $0f
    dec l                                         ; $4a3d: $2d
    dec c                                         ; $4a3e: $0d
    dec c                                         ; $4a3f: $0d
    dec l                                         ; $4a40: $2d
    rst $38                                       ; $4a41: $ff
    ldh [rP1], a                                  ; $4a42: $e0 $00
    rst $18                                       ; $4a44: $df
    add e                                         ; $4a45: $83
    ld [c], a                                     ; $4a46: $e2
    add d                                         ; $4a47: $82
    ldh [$e0], a                                  ; $4a48: $e0 $e0
    add [hl]                                      ; $4a4a: $86
    jp $c28c                                      ; $4a4b: $c3 $8c $c2


    ld b, a                                       ; $4a4e: $47
    ldh [$c4], a                                  ; $4a4f: $e0 $c4
    ldh [$3f], a                                  ; $4a51: $e0 $3f
    pop hl                                        ; $4a53: $e1
    inc c                                         ; $4a54: $0c
    inc c                                         ; $4a55: $0c
    inc l                                         ; $4a56: $2c
    ld bc, $c02c                                  ; $4a57: $01 $2c $c0
    rst $38                                       ; $4a5a: $ff
    sub b                                         ; $4a5b: $90
    xor b                                         ; $4a5c: $a8
    add $c1                                       ; $4a5d: $c6 $c1
    adc e                                         ; $4a5f: $8b
    ret nz                                        ; $4a60: $c0

    add b                                         ; $4a61: $80
    ldh [rIE], a                                  ; $4a62: $e0 $ff
    jp nz, $f781                                  ; $4a64: $c2 $81 $f7

    nop                                           ; $4a67: $00
    add b                                         ; $4a68: $80
    ret                                           ; $4a69: $c9


    ld sp, hl                                     ; $4a6a: $f9
    add b                                         ; $4a6b: $80
    add d                                         ; $4a6c: $82
    push hl                                       ; $4a6d: $e5
    add $c4                                       ; $4a6e: $c6 $c4
    dec b                                         ; $4a70: $05
    ldh [$c0], a                                  ; $4a71: $e0 $c0
    rst $38                                       ; $4a73: $ff
    adc e                                         ; $4a74: $8b
    rst $20                                       ; $4a75: $e7
    db $10                                        ; $4a76: $10
    and a                                         ; $4a77: $a7
    ld [$e3c3], sp                                ; $4a78: $08 $c3 $e3
    dec b                                         ; $4a7b: $05
    ldh [$7c], a                                  ; $4a7c: $e0 $7c
    pop hl                                        ; $4a7e: $e1
    ld l, e                                       ; $4a7f: $6b
    add c                                         ; $4a80: $81
    cp b                                          ; $4a81: $b8
    ret nz                                        ; $4a82: $c0

    ld [$a70c], a                                 ; $4a83: $ea $0c $a7
    ld c, [hl]                                    ; $4a86: $4e
    pop bc                                        ; $4a87: $c1
    ld b, b                                       ; $4a88: $40
    dec b                                         ; $4a89: $05
    ld [c], a                                     ; $4a8a: $e2
    ret nz                                        ; $4a8b: $c0

    ld [c], a                                     ; $4a8c: $e2
    ccf                                           ; $4a8d: $3f
    ld sp, hl                                     ; $4a8e: $f9
    ld b, e                                       ; $4a8f: $43
    adc c                                         ; $4a90: $89
    add b                                         ; $4a91: $80
    add sp, -$75                                  ; $4a92: $e8 $8b
    ret nz                                        ; $4a94: $c0

    dec bc                                        ; $4a95: $0b
    ld [bc], a                                    ; $4a96: $02
    ret nz                                        ; $4a97: $c0

    ld a, a                                       ; $4a98: $7f
    dec hl                                        ; $4a99: $2b
    ld c, e                                       ; $4a9a: $4b
    dec bc                                        ; $4a9b: $0b
    dec bc                                        ; $4a9c: $0b
    dec bc                                        ; $4a9d: $0b
    dec hl                                        ; $4a9e: $2b
    dec bc                                        ; $4a9f: $0b
    add b                                         ; $4aa0: $80
    sbc a                                         ; $4aa1: $9f
    cp h                                          ; $4aa2: $bc
    inc b                                         ; $4aa3: $04
    xor b                                         ; $4aa4: $a8
    ld d, b                                       ; $4aa5: $50
    and e                                         ; $4aa6: $a3
    dec l                                         ; $4aa7: $2d
    ld a, [bc]                                    ; $4aa8: $0a
    ld a, [hl+]                                   ; $4aa9: $2a
    dec bc                                        ; $4aaa: $0b
    jp nz, Jump_000_2be0                          ; $4aab: $c2 $e0 $2b

    ld [c], a                                     ; $4aae: $e2
    ret nz                                        ; $4aaf: $c0

    ldh [$0b], a                                  ; $4ab0: $e0 $0b
    ret nz                                        ; $4ab2: $c0

    ldh [$80], a                                  ; $4ab3: $e0 $80
    rst $18                                       ; $4ab5: $df
    adc b                                         ; $4ab6: $88
    xor d                                         ; $4ab7: $aa
    dec l                                         ; $4ab8: $2d
    dec c                                         ; $4ab9: $0d
    ld a, [bc]                                    ; $4aba: $0a
    dec sp                                        ; $4abb: $3b
    ld a, [bc]                                    ; $4abc: $0a
    ld a, [hl+]                                   ; $4abd: $2a
    add h                                         ; $4abe: $84
    ldh [rWX], a                                  ; $4abf: $e0 $4b
    ld l, e                                       ; $4ac1: $6b
    dec bc                                        ; $4ac2: $0b
    ld a, c                                       ; $4ac3: $79

jr_061_4ac4:
    ldh [$82], a                                  ; $4ac4: $e0 $82
    or a                                          ; $4ac6: $b7
    ld [hl], b                                    ; $4ac7: $70
    nop                                           ; $4ac8: $00
    xor d                                         ; $4ac9: $aa
    ld [de], a                                    ; $4aca: $12
    and b                                         ; $4acb: $a0
    sub d                                         ; $4acc: $92
    add e                                         ; $4acd: $83
    ret z                                         ; $4ace: $c8

    and c                                         ; $4acf: $a1
    ld a, [bc]                                    ; $4ad0: $0a
    ld a, [bc]                                    ; $4ad1: $0a
    ld a, [bc]                                    ; $4ad2: $0a
    add h                                         ; $4ad3: $84
    ld [c], a                                     ; $4ad4: $e2
    pop hl                                        ; $4ad5: $e1
    ld c, e                                       ; $4ad6: $4b
    or $c1                                        ; $4ad7: $f6 $c1
    add b                                         ; $4ad9: $80
    rst $18                                       ; $4ada: $df
    ld c, b                                       ; $4adb: $48
    add h                                         ; $4adc: $84
    add d                                         ; $4add: $82
    push bc                                       ; $4ade: $c5
    dec c                                         ; $4adf: $0d
    ld l, e                                       ; $4ae0: $6b
    ld a, [hl+]                                   ; $4ae1: $2a
    ld b, $c0                                     ; $4ae2: $06 $c0
    db $e3                                        ; $4ae4: $e3
    ld l, e                                       ; $4ae5: $6b
    ld c, e                                       ; $4ae6: $4b
    add e                                         ; $4ae7: $83
    cp c                                          ; $4ae8: $b9
    ld b, b                                       ; $4ae9: $40
    ld l, c                                       ; $4aea: $69
    add d                                         ; $4aeb: $82
    ld [c], a                                     ; $4aec: $e2
    ld [$d183], sp                                ; $4aed: $08 $83 $d1
    add b                                         ; $4af0: $80
    inc bc                                        ; $4af1: $03
    dec hl                                        ; $4af2: $2b
    ld a, [hl+]                                   ; $4af3: $2a
    pop bc                                        ; $4af4: $c1
    db $e4                                        ; $4af5: $e4
    jp $80ba                                      ; $4af6: $c3 $ba $80


    jp nc, $a147                                  ; $4af9: $d2 $47 $a1

    jp nz, $c1c2                                  ; $4afc: $c2 $c2 $c1

    ld [c], a                                     ; $4aff: $e2

Jump_061_4b00:
    jr nc, @+$08                                  ; $4b00: $30 $06

    add b                                         ; $4b02: $80
    call nz, Call_000_00d6                        ; $4b03: $c4 $d6 $00
    or c                                          ; $4b06: $b1
    jp nc, Jump_061_6b63                          ; $4b07: $d2 $63 $6b

    ld c, d                                       ; $4b0a: $4a
    ld bc, $47e1                                  ; $4b0b: $01 $e1 $47
    ret nz                                        ; $4b0e: $c0

    ld [$8006], sp                                ; $4b0f: $08 $06 $80
    jp $80b8                                      ; $4b12: $c3 $b8 $80


    db $d3                                        ; $4b15: $d3
    ld l, e                                       ; $4b16: $6b
    ld l, $40                                     ; $4b17: $2e $40
    jp nz, Jump_061_7cc4                          ; $4b19: $c2 $c4 $7c

    add d                                         ; $4b1c: $82
    cp a                                          ; $4b1d: $bf
    ld a, [$00b8]                                 ; $4b1e: $fa $b8 $00
    ld c, b                                       ; $4b21: $48
    add d                                         ; $4b22: $82
    add l                                         ; $4b23: $85
    ret z                                         ; $4b24: $c8

    add c                                         ; $4b25: $81
    ld a, [hl+]                                   ; $4b26: $2a
    ld c, d                                       ; $4b27: $4a
    dec bc                                        ; $4b28: $0b
    ld b, l                                       ; $4b29: $45
    ret nz                                        ; $4b2a: $c0

    dec hl                                        ; $4b2b: $2b
    ld bc, $b40b                                  ; $4b2c: $01 $0b $b4
    ldh [$7e], a                                  ; $4b2f: $e0 $7e
    ei                                            ; $4b31: $fb
    ld b, e                                       ; $4b32: $43
    adc b                                         ; $4b33: $88
    call nz, Call_061_4360                        ; $4b34: $c4 $60 $43
    ld b, d                                       ; $4b37: $42
    ld c, l                                       ; $4b38: $4d
    add b                                         ; $4b39: $80
    add b                                         ; $4b3a: $80
    pop bc                                        ; $4b3b: $c1
    nop                                           ; $4b3c: $00
    dec b                                         ; $4b3d: $05
    ret nz                                        ; $4b3e: $c0

    add l                                         ; $4b3f: $85
    and c                                         ; $4b40: $a1
    jr c, jr_061_4ac4                             ; $4b41: $38 $81

    ld b, b                                       ; $4b43: $40
    rst $38                                       ; $4b44: $ff
    ret nz                                        ; $4b45: $c0

    ld [c], a                                     ; $4b46: $e2
    nop                                           ; $4b47: $00
    db $e4                                        ; $4b48: $e4
    cp a                                          ; $4b49: $bf
    ldh [$03], a                                  ; $4b4a: $e0 $03
    add b                                         ; $4b4c: $80
    ldh [$85], a                                  ; $4b4d: $e0 $85
    and e                                         ; $4b4f: $a3
    ld a, [hl]                                    ; $4b50: $7e
    pop hl                                        ; $4b51: $e1
    ret nz                                        ; $4b52: $c0

    sbc d                                         ; $4b53: $9a
    add b                                         ; $4b54: $80
    pop de                                        ; $4b55: $d1
    cp a                                          ; $4b56: $bf
    pop hl                                        ; $4b57: $e1
    ld a, [bc]                                    ; $4b58: $0a
    ld a, [hl+]                                   ; $4b59: $2a
    ld l, e                                       ; $4b5a: $6b
    ld e, $04                                     ; $4b5b: $1e $04
    and c                                         ; $4b5d: $a1
    dec bc                                        ; $4b5e: $0b
    dec hl                                        ; $4b5f: $2b
    dec hl                                        ; $4b60: $2b
    ld c, e                                       ; $4b61: $4b
    nop                                           ; $4b62: $00
    and b                                         ; $4b63: $a0
    nop                                           ; $4b64: $00
    ld e, a                                       ; $4b65: $5f
    nop                                           ; $4b66: $00
    xor d                                         ; $4b67: $aa
    ld e, $ff                                     ; $4b68: $1e $ff
    pop bc                                        ; $4b6a: $c1
    ld a, [bc]                                    ; $4b6b: $0a
    ld l, d                                       ; $4b6c: $6a
    dec bc                                        ; $4b6d: $0b
    ld c, e                                       ; $4b6e: $4b
    cp [hl]                                       ; $4b6f: $be
    ld [c], a                                     ; $4b70: $e2
    cp l                                          ; $4b71: $bd
    ldh [$bf], a                                  ; $4b72: $e0 $bf
    ld hl, sp+$08                                 ; $4b74: $f8 $08
    ld b, $53                                     ; $4b76: $06 $53
    ld a, l                                       ; $4b78: $7d
    ret nz                                        ; $4b79: $c0

    nop                                           ; $4b7a: $00
    and b                                         ; $4b7b: $a0
    ld a, [bc]                                    ; $4b7c: $0a
    ld a, l                                       ; $4b7d: $7d
    db $e3                                        ; $4b7e: $e3
    ld a, [hl]                                    ; $4b7f: $7e
    sbc d                                         ; $4b80: $9a
    nop                                           ; $4b81: $00
    xor l                                         ; $4b82: $ad
    add [hl]                                      ; $4b83: $86
    ld [hl+], a                                   ; $4b84: $22
    ld b, $fe                                     ; $4b85: $06 $fe
    jp nz, Jump_000_0a4b                          ; $4b87: $c2 $4b $0a

    ld a, l                                       ; $4b8a: $7d
    pop hl                                        ; $4b8b: $e1
    cp a                                          ; $4b8c: $bf
    db $e3                                        ; $4b8d: $e3
    ld a, [hl]                                    ; $4b8e: $7e
    sub a                                         ; $4b8f: $97
    ld b, b                                       ; $4b90: $40
    xor e                                         ; $4b91: $ab
    cp a                                          ; $4b92: $bf
    ld b, $0c                                     ; $4b93: $06 $0c
    cp l                                          ; $4b95: $bd
    pop bc                                        ; $4b96: $c1
    db $fc                                        ; $4b97: $fc
    ret nz                                        ; $4b98: $c0

    ld l, d                                       ; $4b99: $6a
    ld l, e                                       ; $4b9a: $6b
    cp [hl]                                       ; $4b9b: $be
    ld [c], a                                     ; $4b9c: $e2
    cp $d8                                        ; $4b9d: $fe $d8
    nop                                           ; $4b9f: $00
    xor a                                         ; $4ba0: $af
    db $fc                                        ; $4ba1: $fc
    add h                                         ; $4ba2: $84
    ld b, $b9                                     ; $4ba3: $06 $b9
    and c                                         ; $4ba5: $a1
    ld a, [hl+]                                   ; $4ba6: $2a
    ld a, [hl+]                                   ; $4ba7: $2a
    ld a, [hl]                                    ; $4ba8: $7e
    and b                                         ; $4ba9: $a0
    cp c                                          ; $4baa: $b9
    jp nz, Jump_000_363f                          ; $4bab: $c2 $3f $36

    add b                                         ; $4bae: $80
    ld [hl], c                                    ; $4baf: $71
    cp $c4                                        ; $4bb0: $fe $c4
    ld [bc], a                                    ; $4bb2: $02
    add a                                         ; $4bb3: $87
    jr nz, jr_061_4c01                            ; $4bb4: $20 $4b

    and e                                         ; $4bb6: $a3
    ld b, b                                       ; $4bb7: $40
    cp l                                          ; $4bb8: $bd
    ld h, h                                       ; $4bb9: $64
    ld a, l                                       ; $4bba: $7d
    call nc, Call_000_1386                        ; $4bbb: $d4 $86 $13
    db $fc                                        ; $4bbe: $fc
    and d                                         ; $4bbf: $a2
    add h                                         ; $4bc0: $84
    and d                                         ; $4bc1: $a2
    nop                                           ; $4bc2: $00
    ret nz                                        ; $4bc3: $c0

    push hl                                       ; $4bc4: $e5
    cp [hl]                                       ; $4bc5: $be
    dec d                                         ; $4bc6: $15

Jump_061_4bc7:
    ld b, [hl]                                    ; $4bc7: $46
    dec c                                         ; $4bc8: $0d
    db $fc                                        ; $4bc9: $fc
    xor c                                         ; $4bca: $a9
    ld a, h                                       ; $4bcb: $7c
    db $e3                                        ; $4bcc: $e3
    dec a                                         ; $4bcd: $3d
    ld h, e                                       ; $4bce: $63
    db $fc                                        ; $4bcf: $fc
    ld d, l                                       ; $4bd0: $55
    add b                                         ; $4bd1: $80
    dec c                                         ; $4bd2: $0d
    nop                                           ; $4bd3: $00

jr_061_4bd4:
    db $fc                                        ; $4bd4: $fc
    xor c                                         ; $4bd5: $a9
    add h                                         ; $4bd6: $84
    ld b, d                                       ; $4bd7: $42
    ld [bc], a                                    ; $4bd8: $02
    ret nz                                        ; $4bd9: $c0

    cp h                                          ; $4bda: $bc
    ld e, c                                       ; $4bdb: $59
    add l                                         ; $4bdc: $85
    inc c                                         ; $4bdd: $0c
    ld a, [hl]                                    ; $4bde: $7e
    add sp, -$7e                                  ; $4bdf: $e8 $82
    ld [$f880], a                                 ; $4be1: $ea $80 $f8
    nop                                           ; $4be4: $00
    ld a, a                                       ; $4be5: $7f
    ld c, h                                       ; $4be6: $4c
    ld a, [hl]                                    ; $4be7: $7e
    ret                                           ; $4be8: $c9


    ld a, b                                       ; $4be9: $78
    ld h, b                                       ; $4bea: $60
    pop bc                                        ; $4beb: $c1
    push hl                                       ; $4bec: $e5
    inc a                                         ; $4bed: $3c
    ld d, l                                       ; $4bee: $55
    add b                                         ; $4bef: $80
    ld c, $7a                                     ; $4bf0: $0e $7a
    ld h, a                                       ; $4bf2: $67
    cp l                                          ; $4bf3: $bd
    ld hl, $c000                                  ; $4bf4: $21 $00 $c0
    cp $40                                        ; $4bf7: $fe $40
    xor a                                         ; $4bf9: $af
    ld a, [hl]                                    ; $4bfa: $7e
    ld b, $84                                     ; $4bfb: $06 $84
    nop                                           ; $4bfd: $00
    inc bc                                        ; $4bfe: $03
    db $e3                                        ; $4bff: $e3
    nop                                           ; $4c00: $00

jr_061_4c01:
    rst $38                                       ; $4c01: $ff
    db $fc                                        ; $4c02: $fc
    sub d                                         ; $4c03: $92
    add b                                         ; $4c04: $80
    ld hl, $8246                                  ; $4c05: $21 $46 $82
    push hl                                       ; $4c08: $e5
    ld c, e                                       ; $4c09: $4b
    ld c, e                                       ; $4c0a: $4b
    ld a, h                                       ; $4c0b: $7c
    add b                                         ; $4c0c: $80
    cp e                                          ; $4c0d: $bb
    ld sp, $cd80                                  ; $4c0e: $31 $80 $cd
    dec c                                         ; $4c11: $0d
    db $fc                                        ; $4c12: $fc
    adc b                                         ; $4c13: $88
    nop                                           ; $4c14: $00
    jp $b7c7                                      ; $4c15: $c3 $c7 $b7


    jr nz, jr_061_4bd4                            ; $4c18: $20 $ba

    inc d                                         ; $4c1a: $14
    ret nz                                        ; $4c1b: $c0

    pop de                                        ; $4c1c: $d1
    ld a, b                                       ; $4c1d: $78
    ld h, [hl]                                    ; $4c1e: $66
    add e                                         ; $4c1f: $83
    add $37                                       ; $4c20: $c6 $37
    ld h, b                                       ; $4c22: $60
    cp d                                          ; $4c23: $ba
    inc d                                         ; $4c24: $14
    ret nz                                        ; $4c25: $c0

    add b                                         ; $4c26: $80
    rst $08                                       ; $4c27: $cf
    ld hl, sp+$28                                 ; $4c28: $f8 $28
    ld b, e                                       ; $4c2a: $43
    add $f8                                       ; $4c2b: $c6 $f8
    ld hl, $137a                                  ; $4c2d: $21 $7a $13
    add b                                         ; $4c30: $80
    db $d3                                        ; $4c31: $d3
    dec l                                         ; $4c32: $2d
    dec l                                         ; $4c33: $2d
    ld [bc], a                                    ; $4c34: $02
    ret nz                                        ; $4c35: $c0

    ld [$f84b], a                                 ; $4c36: $ea $4b $f8
    ld hl, $ff80                                  ; $4c39: $21 $80 $ff
    ld hl, sp-$79                                 ; $4c3c: $f8 $87
    pop bc                                        ; $4c3e: $c1

jr_061_4c3f:
    ld [c], a                                     ; $4c3f: $e2
    ret nz                                        ; $4c40: $c0

    add sp, -$4c                                  ; $4c41: $e8 $b4
    pop bc                                        ; $4c43: $c1
    jr nz, jr_061_4c3f                            ; $4c44: $20 $f9

    ld b, c                                       ; $4c46: $41
    cp $e0                                        ; $4c47: $fe $e0
    ret nz                                        ; $4c49: $c0

    rst $38                                       ; $4c4a: $ff
    add b                                         ; $4c4b: $80
    pop hl                                        ; $4c4c: $e1
    ret nz                                        ; $4c4d: $c0

    db $e3                                        ; $4c4e: $e3
    ld l, e                                       ; $4c4f: $6b
    ld a, h                                       ; $4c50: $7c
    ld b, c                                       ; $4c51: $41
    ld b, d                                       ; $4c52: $42
    db $e4                                        ; $4c53: $e4
    nop                                           ; $4c54: $00
    ld [$2c21], a                                 ; $4c55: $ea $21 $2c
    ret nz                                        ; $4c58: $c0

    or $4d                                        ; $4c59: $f6 $4d
    add b                                         ; $4c5b: $80
    adc $f1                                       ; $4c5c: $ce $f1
    add d                                         ; $4c5e: $82
    db $fd                                        ; $4c5f: $fd
    pop hl                                        ; $4c60: $e1
    add hl, sp                                    ; $4c61: $39
    nop                                           ; $4c62: $00
    ret nz                                        ; $4c63: $c0

    db $e3                                        ; $4c64: $e3
    ld l, $3a                                     ; $4c65: $2e $3a
    ld [hl+], a                                   ; $4c67: $22
    ld l, e                                       ; $4c68: $6b
    dec c                                         ; $4c69: $0d
    ld l, l                                       ; $4c6a: $6d
    ld h, l                                       ; $4c6b: $65
    ld bc, $bf4d                                  ; $4c6c: $01 $4d $bf
    ldh [$7b], a                                  ; $4c6f: $e0 $7b
    ld [$0920], a                                 ; $4c71: $ea $20 $09
    adc $80                                       ; $4c74: $ce $80
    and [hl]                                      ; $4c76: $a6
    add hl, sp                                    ; $4c77: $39
    ld hl, $00ff                                  ; $4c78: $21 $ff $00
    add d                                         ; $4c7b: $82
    db $e4                                        ; $4c7c: $e4
    ld l, e                                       ; $4c7d: $6b
    xor $c2                                       ; $4c7e: $ee $c2
    inc e                                         ; $4c80: $1c
    add b                                         ; $4c81: $80
    nop                                           ; $4c82: $00
    ld a, e                                       ; $4c83: $7b
    db $e3                                        ; $4c84: $e3
    cpl                                           ; $4c85: $2f
    ld b, [hl]                                    ; $4c86: $46
    ret nz                                        ; $4c87: $c0

    pop af                                        ; $4c88: $f1
    ld a, d                                       ; $4c89: $7a
    inc b                                         ; $4c8a: $04
    ret                                           ; $4c8b: $c9


    ld [c], a                                     ; $4c8c: $e2
    ccf                                           ; $4c8d: $3f
    ld h, b                                       ; $4c8e: $60
    ld a, h                                       ; $4c8f: $7c
    ld hl, $e2c0                                  ; $4c90: $21 $c0 $e2
    nop                                           ; $4c93: $00
    ldh [rSCX], a                                 ; $4c94: $e0 $43
    inc h                                         ; $4c96: $24
    add b                                         ; $4c97: $80
    add hl, sp                                    ; $4c98: $39
    add sp, $00                                   ; $4c99: $e8 $00
    cp b                                          ; $4c9b: $b8
    rst $38                                       ; $4c9c: $ff
    and $75                                       ; $4c9d: $e6 $75
    and d                                         ; $4c9f: $a2
    ld l, [hl]                                    ; $4ca0: $6e
    ret nz                                        ; $4ca1: $c0

    ld h, [hl]                                    ; $4ca2: $66
    and l                                         ; $4ca3: $a5
    nop                                           ; $4ca4: $00
    ld e, h                                       ; $4ca5: $5c
    ld hl, $18c0                                  ; $4ca6: $21 $c0 $18
    inc bc                                        ; $4ca9: $03
    ld [c], a                                     ; $4caa: $e2
    ld [bc], a                                    ; $4cab: $02
    pop hl                                        ; $4cac: $e1
    ld b, h                                       ; $4cad: $44
    add a                                         ; $4cae: $87
    ld l, $20                                     ; $4caf: $2e $20
    ld bc, $28e0                                  ; $4cb1: $01 $e0 $28
    jp Jump_061_5e08                              ; $4cb4: $c3 $08 $5e


    ld h, e                                       ; $4cb7: $63
    xor [hl]                                      ; $4cb8: $ae
    dec h                                         ; $4cb9: $25
    nop                                           ; $4cba: $00
    or [hl]                                       ; $4cbb: $b6
    ld l, e                                       ; $4cbc: $6b
    ld b, h                                       ; $4cbd: $44
    add [hl]                                      ; $4cbe: $86
    add hl, sp                                    ; $4cbf: $39
    ld bc, $c0c2                                  ; $4cc0: $01 $c2 $c0
    ld [c], a                                     ; $4cc3: $e2
    adc d                                         ; $4cc4: $8a
    nop                                           ; $4cc5: $00
    cp b                                          ; $4cc6: $b8
    add $80                                       ; $4cc7: $c6 $80
    rst $08                                       ; $4cc9: $cf
    ld a, d                                       ; $4cca: $7a
    ld b, $84                                     ; $4ccb: $06 $84
    add a                                         ; $4ccd: $87
    jp nz, Jump_061_66c0                          ; $4cce: $c2 $c0 $66

    ld h, l                                       ; $4cd1: $65
    ld a, [hl]                                    ; $4cd2: $7e
    db $e3                                        ; $4cd3: $e3
    db $fc                                        ; $4cd4: $fc
    pop bc                                        ; $4cd5: $c1
    ld a, b                                       ; $4cd6: $78
    inc sp                                        ; $4cd7: $33
    pop bc                                        ; $4cd8: $c1
    add b                                         ; $4cd9: $80
    ret c                                         ; $4cda: $d8

    add e                                         ; $4cdb: $83
    add d                                         ; $4cdc: $82
    dec c                                         ; $4cdd: $0d
    dec bc                                        ; $4cde: $0b
    dec bc                                        ; $4cdf: $0b
    dec l                                         ; $4ce0: $2d
    ld b, c                                       ; $4ce1: $41
    ld [c], a                                     ; $4ce2: $e2
    nop                                           ; $4ce3: $00
    ld [bc], a                                    ; $4ce4: $02
    and $18                                       ; $4ce5: $e6 $18
    add hl, hl                                    ; $4ce7: $29
    ld [hl], h                                    ; $4ce8: $74
    pop bc                                        ; $4ce9: $c1
    ld b, b                                       ; $4cea: $40
    rst $08                                       ; $4ceb: $cf
    nop                                           ; $4cec: $00
    db $e3                                        ; $4ced: $e3
    jp nz, $c089                                  ; $4cee: $c2 $89 $c0

    db $e3                                        ; $4cf1: $e3
    add d                                         ; $4cf2: $82
    push hl                                       ; $4cf3: $e5
    ld [$c7fc], sp                                ; $4cf4: $08 $fc $c7
    jp nc, $80a5                                  ; $4cf7: $d2 $a5 $80

    ld [hl], d                                    ; $4cfa: $72
    ld c, l                                       ; $4cfb: $4d
    add h                                         ; $4cfc: $84
    ld h, [hl]                                    ; $4cfd: $66
    inc a                                         ; $4cfe: $3c
    ld bc, $0026                                  ; $4cff: $01 $26 $00
    sub [hl]                                      ; $4d02: $96
    db $d3                                        ; $4d03: $d3
    stop                                          ; $4d04: $10 $00
    or e                                          ; $4d06: $b3
    ld b, c                                       ; $4d07: $41
    and e                                         ; $4d08: $a3
    jp $fda1                                      ; $4d09: $c3 $a1 $fd


    pop hl                                        ; $4d0c: $e1
    ld c, e                                       ; $4d0d: $4b
    add h                                         ; $4d0e: $84
    and d                                         ; $4d0f: $a2
    xor d                                         ; $4d10: $aa
    add l                                         ; $4d11: $85
    ld e, d                                       ; $4d12: $5a
    ld b, a                                       ; $4d13: $47
    inc b                                         ; $4d14: $04
    ld c, $29                                     ; $4d15: $0e $29
    jr c, @+$72                                   ; $4d17: $38 $70

    dec l                                         ; $4d19: $2d
    add [hl]                                      ; $4d1a: $86
    and b                                         ; $4d1b: $a0
    add [hl]                                      ; $4d1c: $86
    add b                                         ; $4d1d: $80
    add l                                         ; $4d1e: $85
    ld h, b                                       ; $4d1f: $60
    ld b, h                                       ; $4d20: $44
    jp nz, $c922                                  ; $4d21: $c2 $22 $c9

    nop                                           ; $4d24: $00
    ld c, l                                       ; $4d25: $4d
    xor a                                         ; $4d26: $af
    ld a, d                                       ; $4d27: $7a
    ld de, $40fd                                  ; $4d28: $11 $fd $40
    ret                                           ; $4d2b: $c9


    add d                                         ; $4d2c: $82
    add d                                         ; $4d2d: $82
    db $e3                                        ; $4d2e: $e3
    ld h, [hl]                                    ; $4d2f: $66
    ld [hl+], a                                   ; $4d30: $22

jr_061_4d31:
    dec e                                         ; $4d31: $1d
    xor b                                         ; $4d32: $a8
    or [hl]                                       ; $4d33: $b6
    rst $28                                       ; $4d34: $ef
    nop                                           ; $4d35: $00
    ld a, d                                       ; $4d36: $7a
    dec c                                         ; $4d37: $0d
    ld e, d                                       ; $4d38: $5a
    jp nz, $e006                                  ; $4d39: $c2 $06 $e0

    jr jr_061_4d31                                ; $4d3c: $18 $f3

    sbc b                                         ; $4d3e: $98
    add h                                         ; $4d3f: $84
    nop                                           ; $4d40: $00
    ld d, h                                       ; $4d41: $54
    sbc [hl]                                      ; $4d42: $9e
    rst $00                                       ; $4d43: $c7
    add sp, $07                                   ; $4d44: $e8 $07
    nop                                           ; $4d46: $00
    dec sp                                        ; $4d47: $3b
    jp z, $8455                                   ; $4d48: $ca $55 $84

    nop                                           ; $4d4b: $00
    ld d, l                                       ; $4d4c: $55

Jump_061_4d4d:
    sbc [hl]                                      ; $4d4d: $9e
    call nc, $ce50                                ; $4d4e: $d4 $50 $ce
    nop                                           ; $4d51: $00
    nop                                           ; $4d52: $00
    nop                                           ; $4d53: $00
    cp a                                          ; $4d54: $bf
    db $dd                                        ; $4d55: $dd
    sbc $a0                                       ; $4d56: $de $a0
    and b                                         ; $4d58: $a0
    and b                                         ; $4d59: $a0
    call c, $eefa                                 ; $4d5a: $dc $fa $ee
    and b                                         ; $4d5d: $a0
    ei                                            ; $4d5e: $fb
    ret c                                         ; $4d5f: $d8

    reti                                          ; $4d60: $d9


    db $fc                                        ; $4d61: $fc
    rst $20                                       ; $4d62: $e7
    and b                                         ; $4d63: $a0
    sbc [hl]                                      ; $4d64: $9e
    sbc c                                         ; $4d65: $99
    sbc c                                         ; $4d66: $99
    sbc b                                         ; $4d67: $98
    rst $38                                       ; $4d68: $ff
    sbc b                                         ; $4d69: $98
    sub a                                         ; $4d6a: $97
    sub a                                         ; $4d6b: $97
    sub [hl]                                      ; $4d6c: $96
    sub [hl]                                      ; $4d6d: $96
    sub l                                         ; $4d6e: $95
    sub l                                         ; $4d6f: $95
    sub [hl]                                      ; $4d70: $96
    rst $08                                       ; $4d71: $cf
    sub [hl]                                      ; $4d72: $96
    sub a                                         ; $4d73: $97
    sbc b                                         ; $4d74: $98
    sub a                                         ; $4d75: $97
    ld hl, sp-$1c                                 ; $4d76: $f8 $e4
    rst $30                                       ; $4d78: $f7
    ldh [$96], a                                  ; $4d79: $e0 $96
    ld [c], a                                     ; $4d7b: $e2
    rst $18                                       ; $4d7c: $df
    db $e3                                        ; $4d7d: $e3
    db $e4                                        ; $4d7e: $e4
    rst $18                                       ; $4d7f: $df
    ldh [$e1], a                                  ; $4d80: $e0 $e1
    ld a, [$a0ec]                                 ; $4d82: $fa $ec $a0
    sub $47                                       ; $4d85: $d6 $47
    rst $10                                       ; $4d87: $d7
    jp c, $fcdb                                   ; $4d88: $da $db $fc

    rst $20                                       ; $4d8b: $e7
    ret nz                                        ; $4d8c: $c0

    pop hl                                        ; $4d8d: $e1
    cp a                                          ; $4d8e: $bf
    db $e3                                        ; $4d8f: $e3
    sub l                                         ; $4d90: $95
    cp a                                          ; $4d91: $bf
    ldh [$f4], a                                  ; $4d92: $e0 $f4
    ret nz                                        ; $4d94: $c0

    pop hl                                        ; $4d95: $e1
    or a                                          ; $4d96: $b7
    pop hl                                        ; $4d97: $e1
    sub a                                         ; $4d98: $97
    or a                                          ; $4d99: $b7
    ldh [$97], a                                  ; $4d9a: $e0 $97
    sub [hl]                                      ; $4d9c: $96
    add sp, -$17                                  ; $4d9d: $e8 $e9
    adc a                                         ; $4d9f: $8f
    ld [$e6e5], a                                 ; $4da0: $ea $e5 $e6
    rst $20                                       ; $4da3: $e7
    ld a, [$82ec]                                 ; $4da4: $fa $ec $82
    ld [$e076], a                                 ; $4da7: $ea $76 $e0
    sbc [hl]                                      ; $4daa: $9e
    ld h, c                                       ; $4dab: $61
    rrca                                          ; $4dac: $0f
    add b                                         ; $4dad: $80
    db $eb                                        ; $4dae: $eb
    ld a, a                                       ; $4daf: $7f
    add sp, $43                                   ; $4db0: $e8 $43
    pop af                                        ; $4db2: $f1
    add d                                         ; $4db3: $82
    pop hl                                        ; $4db4: $e1
    ret nc                                        ; $4db5: $d0

    pop de                                        ; $4db6: $d1
    db $fc                                        ; $4db7: $fc
    rst $20                                       ; $4db8: $e7
    rrca                                          ; $4db9: $0f
    and b                                         ; $4dba: $a0
    sbc [hl]                                      ; $4dbb: $9e
    ld [bc], a                                    ; $4dbc: $02
    rrca                                          ; $4dbd: $0f
    ld d, e                                       ; $4dbe: $53
    ld [c], a                                     ; $4dbf: $e2
    ld b, c                                       ; $4dc0: $41
    ld [c], a                                     ; $4dc1: $e2
    ld c, b                                       ; $4dc2: $48
    ld [c], a                                     ; $4dc3: $e2
    ld [hl], a                                    ; $4dc4: $77
    ld [c], a                                     ; $4dc5: $e2
    ret c                                         ; $4dc6: $d8

    ld [hl], $e1                                  ; $4dc7: $36 $e1
    ld b, e                                       ; $4dc9: $43
    ldh a, [rDIV]                                 ; $4dca: $f0 $04
    ld [c], a                                     ; $4dcc: $e2
    jp nc, $fcd3                                  ; $4dcd: $d2 $d3 $fc

    rst $20                                       ; $4dd0: $e7
    and b                                         ; $4dd1: $a0
    sbc [hl]                                      ; $4dd2: $9e
    pop bc                                        ; $4dd3: $c1
    ld a, a                                       ; $4dd4: $7f
    cp a                                          ; $4dd5: $bf
    ldh [$8a], a                                  ; $4dd6: $e0 $8a
    add sp, -$0a                                  ; $4dd8: $e8 $f6
    add sp, $43                                   ; $4dda: $e8 $43
    rst $28                                       ; $4ddc: $ef
    inc b                                         ; $4ddd: $04
    db $e3                                        ; $4dde: $e3
    call nc, $fbd5                                ; $4ddf: $d4 $d5 $fb
    and b                                         ; $4de2: $a0
    and b                                         ; $4de3: $a0
    db $fc                                        ; $4de4: $fc
    push hl                                       ; $4de5: $e5
    sbc a                                         ; $4de6: $9f
    sbc h                                         ; $4de7: $9c
    ld b, [hl]                                    ; $4de8: $46
    add c                                         ; $4de9: $81
    ld [$7fa0], sp                                ; $4dea: $08 $a0 $7f
    push hl                                       ; $4ded: $e5
    add b                                         ; $4dee: $80
    db $e3                                        ; $4def: $e3
    or $e6                                        ; $4df0: $f6 $e6
    add [hl]                                      ; $4df2: $86
    rst $10                                       ; $4df3: $d7
    ret z                                         ; $4df4: $c8

    ldh [$9d], a                                  ; $4df5: $e0 $9d
    rst $38                                       ; $4df7: $ff
    ldh [$a2], a                                  ; $4df8: $e0 $a2
    cpl                                           ; $4dfa: $2f
    sbc l                                         ; $4dfb: $9d
    sbc l                                         ; $4dfc: $9d
    sbc h                                         ; $4dfd: $9c
    ld b, [hl]                                    ; $4dfe: $46
    ret nz                                        ; $4dff: $c0

    ldh [$99], a                                  ; $4e00: $e0 $99
    add hl, bc                                    ; $4e02: $09
    and $ff                                       ; $4e03: $e6 $ff
    rst $00                                       ; $4e05: $c7
    ldh [$75], a                                  ; $4e06: $e0 $75
    ret nz                                        ; $4e08: $c0

    add b                                         ; $4e09: $80
    call $e704                                    ; $4e0a: $cd $04 $e7
    adc c                                         ; $4e0d: $89
    pop hl                                        ; $4e0e: $e1
    rst $38                                       ; $4e0f: $ff
    ld [c], a                                     ; $4e10: $e2
    add c                                         ; $4e11: $81
    ld b, [hl]                                    ; $4e12: $46
    ld b, [hl]                                    ; $4e13: $46
    inc bc                                        ; $4e14: $03
    add e                                         ; $4e15: $83
    add h                                         ; $4e16: $84
    ret nz                                        ; $4e17: $c0

    ldh [$fe], a                                  ; $4e18: $e0 $fe
    add $f6                                       ; $4e1a: $c6 $f6
    jp hl                                         ; $4e1c: $e9


    add [hl]                                      ; $4e1d: $86
    pop de                                        ; $4e1e: $d1
    inc b                                         ; $4e1f: $04
    db $e3                                        ; $4e20: $e3
    pop bc                                        ; $4e21: $c1
    pop hl                                        ; $4e22: $e1
    db $fd                                        ; $4e23: $fd
    xor [hl]                                      ; $4e24: $ae
    cp [hl]                                       ; $4e25: $be
    ldh [$83], a                                  ; $4e26: $e0 $83
    add h                                         ; $4e28: $84
    ld b, [hl]                                    ; $4e29: $46
    add e                                         ; $4e2a: $83
    add [hl]                                      ; $4e2b: $86
    ld [bc], a                                    ; $4e2c: $02
    add c                                         ; $4e2d: $81
    rrca                                          ; $4e2e: $0f
    db $fd                                        ; $4e2f: $fd
    and b                                         ; $4e30: $a0
    ccf                                           ; $4e31: $3f
    push bc                                       ; $4e32: $c5
    ld a, [hl]                                    ; $4e33: $7e
    call nz, $c23d                                ; $4e34: $c4 $3d $c2
    add [hl]                                      ; $4e37: $86
    pop de                                        ; $4e38: $d1
    inc b                                         ; $4e39: $04
    db $e3                                        ; $4e3a: $e3
    and c                                         ; $4e3b: $a1
    ld a, [hl]                                    ; $4e3c: $7e
    add d                                         ; $4e3d: $82
    ldh [$af], a                                  ; $4e3e: $e0 $af
    add e                                         ; $4e40: $83
    adc c                                         ; $4e41: $89
    adc b                                         ; $4e42: $88
    add a                                         ; $4e43: $87
    add l                                         ; $4e44: $85
    pop bc                                        ; $4e45: $c1
    db $e4                                        ; $4e46: $e4
    add sp, -$80                                  ; $4e47: $e8 $80
    ld a, [c]                                     ; $4e49: $f2
    add [hl]                                      ; $4e4a: $86
    db $d3                                        ; $4e4b: $d3
    ld a, [hl]                                    ; $4e4c: $7e
    and c                                         ; $4e4d: $a1
    sbc [hl]                                      ; $4e4e: $9e
    add d                                         ; $4e4f: $82
    ldh [$83], a                                  ; $4e50: $e0 $83
    add [hl]                                      ; $4e52: $86
    add l                                         ; $4e53: $85
    ld a, $3c                                     ; $4e54: $3e $3c
    ldh [$8a], a                                  ; $4e56: $e0 $8a
    ld [bc], a                                    ; $4e58: $02
    rrca                                          ; $4e59: $0f
    ld bc, $0000                                  ; $4e5a: $01 $00 $00
    db $f4                                        ; $4e5d: $f4
    add [hl]                                      ; $4e5e: $86
    db $d3                                        ; $4e5f: $d3
    ld a, $c6                                     ; $4e60: $3e $c6
    pop bc                                        ; $4e62: $c1
    sbc h                                         ; $4e63: $9c
    ld b, [hl]                                    ; $4e64: $46
    xor a                                         ; $4e65: $af
    ld b, [hl]                                    ; $4e66: $46
    adc d                                         ; $4e67: $8a
    pop bc                                        ; $4e68: $c1
    pop hl                                        ; $4e69: $e1
    add e                                         ; $4e6a: $83
    ret nz                                        ; $4e6b: $c0

    inc bc                                        ; $4e6c: $03
    nop                                           ; $4e6d: $00
    ld bc, $e601                                  ; $4e6e: $01 $01 $e6
    add b                                         ; $4e71: $80
    rst $10                                       ; $4e72: $d7
    db $10                                        ; $4e73: $10
    and a                                         ; $4e74: $a7
    add $c5                                       ; $4e75: $c6 $c5
    dec b                                         ; $4e77: $05
    ldh [$c0], a                                  ; $4e78: $e0 $c0
    db $e3                                        ; $4e7a: $e3
    ld c, b                                       ; $4e7b: $48
    ld b, c                                       ; $4e7c: $41
    and [hl]                                      ; $4e7d: $a6
    nop                                           ; $4e7e: $00
    adc $c9                                       ; $4e7f: $ce $c9
    xor b                                         ; $4e81: $a8
    and b                                         ; $4e82: $a0
    inc c                                         ; $4e83: $0c
    and e                                         ; $4e84: $a3
    add [hl]                                      ; $4e85: $86
    ret nz                                        ; $4e86: $c0

    sbc [hl]                                      ; $4e87: $9e
    jp $1ce2                                      ; $4e88: $c3 $e2 $1c


    dec b                                         ; $4e8b: $05
    pop hl                                        ; $4e8c: $e1
    cp [hl]                                       ; $4e8d: $be
    ret nz                                        ; $4e8e: $c0

    xor [hl]                                      ; $4e8f: $ae
    ld b, [hl]                                    ; $4e90: $46
    adc h                                         ; $4e91: $8c
    add c                                         ; $4e92: $81
    and d                                         ; $4e93: $a2
    ld a, [bc]                                    ; $4e94: $0a
    xor c                                         ; $4e95: $a9
    nop                                           ; $4e96: $00
    or b                                          ; $4e97: $b0
    jr jr_061_4ea5                                ; $4e98: $18 $0b

    ld [c], a                                     ; $4e9a: $e2
    add [hl]                                      ; $4e9b: $86
    and h                                         ; $4e9c: $a4
    push bc                                       ; $4e9d: $c5
    ret nz                                        ; $4e9e: $c0

    add e                                         ; $4e9f: $83
    adc c                                         ; $4ea0: $89
    jp $bee0                                      ; $4ea1: $c3 $e0 $be


    pop bc                                        ; $4ea4: $c1

jr_061_4ea5:
    ld a, [hl-]                                   ; $4ea5: $3a
    ldh [$50], a                                  ; $4ea6: $e0 $50
    ld [bc], a                                    ; $4ea8: $02
    jp nz, $b3c1                                  ; $4ea9: $c2 $c1 $b3

    nop                                           ; $4eac: $00
    xor d                                         ; $4ead: $aa
    add d                                         ; $4eae: $82
    add $9e                                       ; $4eaf: $c6 $9e
    rst $00                                       ; $4eb1: $c7
    pop bc                                        ; $4eb2: $c1
    ld b, l                                       ; $4eb3: $45
    ld [bc], a                                    ; $4eb4: $02
    ret nz                                        ; $4eb5: $c0

    ld a, a                                       ; $4eb6: $7f
    ld b, l                                       ; $4eb7: $45
    ccf                                           ; $4eb8: $3f
    dec hl                                        ; $4eb9: $2b
    ld sp, $2b31                                  ; $4eba: $31 $31 $2b
    ld b, l                                       ; $4ebd: $45
    ccf                                           ; $4ebe: $3f
    ld [c], a                                     ; $4ebf: $e2
    ld [c], a                                     ; $4ec0: $e2
    pop bc                                        ; $4ec1: $c1
    or d                                          ; $4ec2: $b2
    sub a                                         ; $4ec3: $97
    ld b, e                                       ; $4ec4: $43
    adc c                                         ; $4ec5: $89
    ld [$50a5], sp                                ; $4ec6: $08 $a5 $50
    and b                                         ; $4ec9: $a0
    adc d                                         ; $4eca: $8a
    add l                                         ; $4ecb: $85
    ld b, a                                       ; $4ecc: $47
    ld a, a                                       ; $4ecd: $7f
    ld c, c                                       ; $4ece: $49
    ld b, l                                       ; $4ecf: $45
    ld b, l                                       ; $4ed0: $45
    ccf                                           ; $4ed1: $3f
    ld [hl], $24                                  ; $4ed2: $36 $24
    jr nz, @+$01                                  ; $4ed4: $20 $ff

    ldh [$1f], a                                  ; $4ed6: $e0 $1f
    ld b, d                                       ; $4ed8: $42
    add c                                         ; $4ed9: $81
    ld [$0001], sp                                ; $4eda: $08 $01 $00
    pop bc                                        ; $4edd: $c1
    or e                                          ; $4ede: $b3
    nop                                           ; $4edf: $00
    xor d                                         ; $4ee0: $aa
    ld [$fea4], sp                                ; $4ee1: $08 $a4 $fe
    ld de, $83a0                                  ; $4ee4: $11 $a0 $83
    add h                                         ; $4ee7: $84
    ld c, d                                       ; $4ee8: $4a
    ld h, b                                       ; $4ee9: $60
    ld d, d                                       ; $4eea: $52
    ld b, l                                       ; $4eeb: $45
    ld [hl], $1b                                  ; $4eec: $36 $1b
    dec [hl]                                      ; $4eee: $35
    dec [hl]                                      ; $4eef: $35
    ret nz                                        ; $4ef0: $c0

    ldh [$2c], a                                  ; $4ef1: $e0 $2c
    dec hl                                        ; $4ef3: $2b
    add d                                         ; $4ef4: $82
    and c                                         ; $4ef5: $a1
    pop bc                                        ; $4ef6: $c1
    or h                                          ; $4ef7: $b4
    add b                                         ; $4ef8: $80
    jp z, $92fc                                   ; $4ef9: $ca $fc $92

    ld h, l                                       ; $4efc: $65
    ld c, $c0                                     ; $4efd: $0e $c0
    add l                                         ; $4eff: $85

Call_061_4f00:
    ld c, e                                       ; $4f00: $4b
    ld h, c                                       ; $4f01: $61
    ld e, h                                       ; $4f02: $5c
    add hl, sp                                    ; $4f03: $39
    dec [hl]                                      ; $4f04: $35
    ld b, $ff                                     ; $4f05: $06 $ff
    ldh [rNR42], a                                ; $4f07: $e0 $21
    ld a, [hl+]                                   ; $4f09: $2a
    or $c0                                        ; $4f0a: $f6 $c0
    pop bc                                        ; $4f0c: $c1
    or a                                          ; $4f0d: $b7
    nop                                           ; $4f0e: $00
    xor b                                         ; $4f0f: $a8
    ld [$8285], sp                                ; $4f10: $08 $85 $82
    pop bc                                        ; $4f13: $c1
    cp a                                          ; $4f14: $bf
    add c                                         ; $4f15: $81
    ld b, l                                       ; $4f16: $45
    ld d, [hl]                                    ; $4f17: $56
    ld h, c                                       ; $4f18: $61
    ld e, h                                       ; $4f19: $5c
    ld a, [hl-]                                   ; $4f1a: $3a
    ret nz                                        ; $4f1b: $c0

    ldh [$36], a                                  ; $4f1c: $e0 $36
    dec b                                         ; $4f1e: $05
    ld b, c                                       ; $4f1f: $41
    ld b, h                                       ; $4f20: $44
    and b                                         ; $4f21: $a0
    rlca                                          ; $4f22: $07
    add d                                         ; $4f23: $82
    and e                                         ; $4f24: $a3
    nop                                           ; $4f25: $00
    ld a, [c]                                     ; $4f26: $f2
    add b                                         ; $4f27: $80
    ret                                           ; $4f28: $c9


    ld [$c284], sp                                ; $4f29: $08 $84 $c2
    ret nz                                        ; $4f2c: $c0

    cp a                                          ; $4f2d: $bf
    add h                                         ; $4f2e: $84
    ld b, e                                       ; $4f2f: $43
    ld d, l                                       ; $4f30: $55
    ld d, [hl]                                    ; $4f31: $56
    ld b, h                                       ; $4f32: $44
    inc a                                         ; $4f33: $3c
    pop bc                                        ; $4f34: $c1
    ldh [rLYC], a                                 ; $4f35: $e0 $45
    adc b                                         ; $4f37: $88
    add e                                         ; $4f38: $83
    and c                                         ; $4f39: $a1
    jp nz, Jump_000_02a0                          ; $4f3a: $c2 $a0 $02

    and c                                         ; $4f3d: $a1
    sub [hl]                                      ; $4f3e: $96
    ld c, c                                       ; $4f3f: $49
    ld h, e                                       ; $4f40: $63
    add b                                         ; $4f41: $80
    rst $10                                       ; $4f42: $d7
    ld [$a184], sp                                ; $4f43: $08 $84 $a1
    ld b, $41                                     ; $4f46: $06 $41
    pop hl                                        ; $4f48: $e1
    ld b, a                                       ; $4f49: $47
    ld b, h                                       ; $4f4a: $44
    ld b, c                                       ; $4f4b: $41
    ldh [$c1], a                                  ; $4f4c: $e0 $c1
    ldh [rTMA], a                                 ; $4f4e: $e0 $06
    add b                                         ; $4f50: $80
    ld b, h                                       ; $4f51: $44
    and b                                         ; $4f52: $a0
    ld [bc], a                                    ; $4f53: $02
    and e                                         ; $4f54: $a3
    and b                                         ; $4f55: $a0
    ld [bc], a                                    ; $4f56: $02
    ld h, c                                       ; $4f57: $61
    ld b, c                                       ; $4f58: $41
    ld l, e                                       ; $4f59: $6b
    add b                                         ; $4f5a: $80
    ld l, e                                       ; $4f5b: $6b
    adc d                                         ; $4f5c: $8a
    ld b, e                                       ; $4f5d: $43
    jp nc, Jump_061_4561                          ; $4f5e: $d2 $61 $45

    ld bc, $3ae0                                  ; $4f61: $01 $e0 $3a
    rlca                                          ; $4f64: $07
    dec [hl]                                      ; $4f65: $35
    inc a                                         ; $4f66: $3c
    ld b, h                                       ; $4f67: $44
    add b                                         ; $4f68: $80
    add b                                         ; $4f69: $80
    jp $82a0                                      ; $4f6a: $c3 $a0 $82


    ld b, c                                       ; $4f6d: $41
    add e                                         ; $4f6e: $83
    adc c                                         ; $4f6f: $89
    cp b                                          ; $4f70: $b8
    ld l, c                                       ; $4f71: $69
    halt                                          ; $4f72: $76
    add [hl]                                      ; $4f73: $86
    ld l, l                                       ; $4f74: $6d
    ret nc                                        ; $4f75: $d0

    pop de                                        ; $4f76: $d1
    ret z                                         ; $4f77: $c8

    add b                                         ; $4f78: $80
    adc h                                         ; $4f79: $8c
    ld a, l                                       ; $4f7a: $7d
    ld c, a                                       ; $4f7b: $4f
    ld b, c                                       ; $4f7c: $41
    ld [c], a                                     ; $4f7d: $e2
    dec b                                         ; $4f7e: $05
    ld b, b                                       ; $4f7f: $40
    call nz, Call_061_46a0                        ; $4f80: $c4 $a0 $46
    ld b, h                                       ; $4f83: $44
    ld h, c                                       ; $4f84: $61
    ld b, e                                       ; $4f85: $43
    ld b, b                                       ; $4f86: $40
    inc bc                                        ; $4f87: $03
    adc b                                         ; $4f88: $88
    cp b                                          ; $4f89: $b8
    ld l, c                                       ; $4f8a: $69
    inc c                                         ; $4f8b: $0c
    ld c, l                                       ; $4f8c: $4d
    rst $30                                       ; $4f8d: $f7
    jp nc, $9ed3                                  ; $4f8e: $d2 $d3 $9e

    ret z                                         ; $4f91: $c8

    add b                                         ; $4f92: $80
    add c                                         ; $4f93: $81
    ld d, l                                       ; $4f94: $55
    ld d, [hl]                                    ; $4f95: $56
    ld b, l                                       ; $4f96: $45
    inc c                                         ; $4f97: $0c
    pop bc                                        ; $4f98: $c1
    ret nz                                        ; $4f99: $c0

    ld bc, $aee0                                  ; $4f9a: $01 $e0 $ae
    xor [hl]                                      ; $4f9d: $ae
    cp a                                          ; $4f9e: $bf
    db $e4                                        ; $4f9f: $e4
    inc bc                                        ; $4fa0: $03
    ld b, c                                       ; $4fa1: $41
    ld b, c                                       ; $4fa2: $41
    ld l, d                                       ; $4fa3: $6a
    rst $38                                       ; $4fa4: $ff
    inc hl                                        ; $4fa5: $23
    add $00                                       ; $4fa6: $c6 $00
    xor l                                         ; $4fa8: $ad
    call nc, $89d5                                ; $4fa9: $d4 $d5 $89
    ld h, c                                       ; $4fac: $61
    add b                                         ; $4fad: $80
    ret nz                                        ; $4fae: $c0

    ld b, c                                       ; $4faf: $41
    jp nz, Jump_061_4536                          ; $4fb0: $c2 $36 $45

    rlca                                          ; $4fb3: $07
    xor a                                         ; $4fb4: $af
    xor a                                         ; $4fb5: $af
    xor [hl]                                      ; $4fb6: $ae
    ld b, e                                       ; $4fb7: $43
    ld h, l                                       ; $4fb8: $65
    add b                                         ; $4fb9: $80
    ld b, [hl]                                    ; $4fba: $46
    push af                                       ; $4fbb: $f5
    adc c                                         ; $4fbc: $89
    nop                                           ; $4fbd: $00
    xor a                                         ; $4fbe: $af
    pop de                                        ; $4fbf: $d1

jr_061_4fc0:
    ld b, c                                       ; $4fc0: $41
    sbc a                                         ; $4fc1: $9f
    adc h                                         ; $4fc2: $8c
    ld a, l                                       ; $4fc3: $7d
    ld b, l                                       ; $4fc4: $45
    ld b, l                                       ; $4fc5: $45
    ld b, b                                       ; $4fc6: $40
    ld bc, $7fc1                                  ; $4fc7: $01 $c1 $7f
    ret nz                                        ; $4fca: $c0

    xor a                                         ; $4fcb: $af
    ld h, b                                       ; $4fcc: $60
    ret nz                                        ; $4fcd: $c0

    add l                                         ; $4fce: $85
    ld a, $ef                                     ; $4fcf: $3e $ef
    ld l, e                                       ; $4fd1: $6b
    jr nz, jr_061_4fd4                            ; $4fd2: $20 $00

jr_061_4fd4:
    xor a                                         ; $4fd4: $af
    sub b                                         ; $4fd5: $90
    ld b, e                                       ; $4fd6: $43
    ld c, d                                       ; $4fd7: $4a
    ld c, e                                       ; $4fd8: $4b
    add c                                         ; $4fd9: $81
    and c                                         ; $4fda: $a1
    ld a, a                                       ; $4fdb: $7f
    dec [hl]                                      ; $4fdc: $35
    dec [hl]                                      ; $4fdd: $35
    jr c, jr_061_5017                             ; $4fde: $38 $37

    ccf                                           ; $4fe0: $3f
    ld b, e                                       ; $4fe1: $43
    ld b, l                                       ; $4fe2: $45
    db $fd                                        ; $4fe3: $fd
    jp nz, Jump_061_7ef0                          ; $4fe4: $c2 $f0 $7e

    adc b                                         ; $4fe7: $88

jr_061_4fe8:
    ld [hl], l                                    ; $4fe8: $75
    ld c, b                                       ; $4fe9: $48
    nop                                           ; $4fea: $00
    or c                                          ; $4feb: $b1
    add l                                         ; $4fec: $85
    ld h, b                                       ; $4fed: $60
    add c                                         ; $4fee: $81
    ld d, l                                       ; $4fef: $55
    ld h, c                                       ; $4ff0: $61
    ld d, d                                       ; $4ff1: $52
    ld [hl], a                                    ; $4ff2: $77
    ld b, l                                       ; $4ff3: $45
    scf                                           ; $4ff4: $37
    jr c, @+$80                                   ; $4ff5: $38 $7e

    and c                                         ; $4ff7: $a1
    dec [hl]                                      ; $4ff8: $35
    dec sp                                        ; $4ff9: $3b
    ld [hl], $bf                                  ; $4ffa: $36 $bf
    pop hl                                        ; $4ffc: $e1
    add sp, -$42                                  ; $4ffd: $e8 $be
    or h                                          ; $4fff: $b4
    nop                                           ; $5000: $00
    xor a                                         ; $5001: $af
    add [hl]                                      ; $5002: $86
    ld b, b                                       ; $5003: $40
    and c                                         ; $5004: $a1
    ccf                                           ; $5005: $3f
    ldh [rHDMA2], a                               ; $5006: $e0 $52
    ld d, h                                       ; $5008: $54
    ld b, h                                       ; $5009: $44
    ld bc, $7d50                                  ; $500a: $01 $50 $7d
    db $e3                                        ; $500d: $e3
    cp c                                          ; $500e: $b9
    and c                                         ; $500f: $a1
    cp l                                          ; $5010: $bd
    ld h, h                                       ; $5011: $64
    ld a, a                                       ; $5012: $7f
    ld c, a                                       ; $5013: $4f
    nop                                           ; $5014: $00
    xor a                                         ; $5015: $af
    add [hl]                                      ; $5016: $86

jr_061_5017:
    jr nz, jr_061_4fe8                            ; $5017: $20 $cf

    jr nz, jr_061_503a                            ; $5019: $20 $1f

    ld a, a                                       ; $501b: $7f
    ld a, l                                       ; $501c: $7d
    ld b, l                                       ; $501d: $45
    ld d, c                                       ; $501e: $51
    ld e, a                                       ; $501f: $5f
    cp l                                          ; $5020: $bd
    add d                                         ; $5021: $82
    ld a, [$7e81]                                 ; $5022: $fa $81 $7e
    add d                                         ; $5025: $82
    ret c                                         ; $5026: $d8

    ld a, a                                       ; $5027: $7f
    ld d, d                                       ; $5028: $52
    add b                                         ; $5029: $80
    ld l, c                                       ; $502a: $69
    add [hl]                                      ; $502b: $86
    dec h                                         ; $502c: $25
    ret nc                                        ; $502d: $d0

    pop de                                        ; $502e: $d1
    adc [hl]                                      ; $502f: $8e
    jr nz, jr_061_4fc0                            ; $5030: $20 $8e

    ld a, h                                       ; $5032: $7c
    rst $08                                       ; $5033: $cf
    ld a, l                                       ; $5034: $7d
    ld e, e                                       ; $5035: $5b
    ld d, [hl]                                    ; $5036: $56
    ld d, d                                       ; $5037: $52
    dec a                                         ; $5038: $3d
    add b                                         ; $5039: $80

jr_061_503a:
    cp d                                          ; $503a: $ba
    add b                                         ; $503b: $80
    inc a                                         ; $503c: $3c
    ld b, h                                       ; $503d: $44
    ldh [$ba], a                                  ; $503e: $e0 $ba
    and c                                         ; $5040: $a1
    rst $38                                       ; $5041: $ff
    ld [hl-], a                                   ; $5042: $32
    nop                                           ; $5043: $00

jr_061_5044:
    xor l                                         ; $5044: $ad
    db $fc                                        ; $5045: $fc
    add [hl]                                      ; $5046: $86
    ld [$7dc0], sp                                ; $5047: $08 $c0 $7d
    ld d, l                                       ; $504a: $55
    ld d, h                                       ; $504b: $54
    dec bc                                        ; $504c: $0b
    ld b, h                                       ; $504d: $44
    xor [hl]                                      ; $504e: $ae
    cp c                                          ; $504f: $b9
    jp nz, $7d39                                  ; $5050: $c2 $39 $7d

    ld h, h                                       ; $5053: $64
    db $fd                                        ; $5054: $fd
    rrca                                          ; $5055: $0f
    nop                                           ; $5056: $00
    xor l                                         ; $5057: $ad
    inc b                                         ; $5058: $04
    inc h                                         ; $5059: $24
    ld a, h                                       ; $505a: $7c
    cp e                                          ; $505b: $bb
    and b                                         ; $505c: $a0
    ld [$45c0], sp                                ; $505d: $08 $c0 $45
    ld b, l                                       ; $5060: $45
    xor [hl]                                      ; $5061: $ae
    xor a                                         ; $5062: $af
    xor [hl]                                      ; $5063: $ae
    cp b                                          ; $5064: $b8
    add c                                         ; $5065: $81
    add e                                         ; $5066: $83
    ld a, [hl-]                                   ; $5067: $3a
    ld b, l                                       ; $5068: $45
    ld a, a                                       ; $5069: $7f
    jp hl                                         ; $506a: $e9


    db $fd                                        ; $506b: $fd
    add hl, bc                                    ; $506c: $09
    add [hl]                                      ; $506d: $86
    rrca                                          ; $506e: $0f
    ld a, [hl]                                    ; $506f: $7e
    ld b, l                                       ; $5070: $45
    ld [$7dc0], sp                                ; $5071: $08 $c0 $7d
    ld b, $ba                                     ; $5074: $06 $ba
    ldh [$af], a                                  ; $5076: $e0 $af
    ld b, d                                       ; $5078: $42
    ld sp, hl                                     ; $5079: $f9
    ld h, c                                       ; $507a: $61
    ld a, a                                       ; $507b: $7f
    ld [c], a                                     ; $507c: $e2
    db $fd                                        ; $507d: $fd
    ld de, $2a43                                  ; $507e: $11 $43 $2a
    ld a, [hl]                                    ; $5081: $7e
    ld b, a                                       ; $5082: $47
    db $10                                        ; $5083: $10
    adc h                                         ; $5084: $8c
    ld bc, $e13e                                  ; $5085: $01 $3e $e1
    db $fc                                        ; $5088: $fc
    jr nz, jr_061_5044                            ; $5089: $20 $b9

    ld h, d                                       ; $508b: $62
    ld a, [hl-]                                   ; $508c: $3a

jr_061_508d:
    ld a, [hl]                                    ; $508d: $7e
    ret nc                                        ; $508e: $d0

    ld [hl], c                                    ; $508f: $71
    add d                                         ; $5090: $82
    add b                                         ; $5091: $80
    dec c                                         ; $5092: $0d
    ld [bc], a                                    ; $5093: $02
    ld a, [hl]                                    ; $5094: $7e
    ld h, $a1                                     ; $5095: $26 $a1
    ld a, $e2                                     ; $5097: $3e $e2
    cp l                                          ; $5099: $bd
    ld b, b                                       ; $509a: $40
    cp c                                          ; $509b: $b9
    ld h, c                                       ; $509c: $61
    ld [hl], l                                    ; $509d: $75
    add b                                         ; $509e: $80
    cp e                                          ; $509f: $bb
    inc hl                                        ; $50a0: $23
    ld a, d                                       ; $50a1: $7a
    adc d                                         ; $50a2: $8a
    ld d, b                                       ; $50a3: $50
    ld a, l                                       ; $50a4: $7d
    pop bc                                        ; $50a5: $c1
    add b                                         ; $50a6: $80
    inc c                                         ; $50a7: $0c
    db $fc                                        ; $50a8: $fc
    ld h, h                                       ; $50a9: $64
    db $fc                                        ; $50aa: $fc
    ld [hl+], a                                   ; $50ab: $22
    xor [hl]                                      ; $50ac: $ae
    cp b                                          ; $50ad: $b8
    add b                                         ; $50ae: $80
    ld b, [hl]                                    ; $50af: $46
    ld a, $c8                                     ; $50b0: $3e $c8
    sub b                                         ; $50b2: $90
    cp $ac                                        ; $50b3: $fe $ac
    dec a                                         ; $50b5: $3d
    jp Jump_000_0d80                              ; $50b6: $c3 $80 $0d


    ld a, d                                       ; $50b9: $7a
    ld l, b                                       ; $50ba: $68
    xor a                                         ; $50bb: $af
    ld c, c                                       ; $50bc: $49
    nop                                           ; $50bd: $00
    cp [hl]                                       ; $50be: $be
    and l                                         ; $50bf: $a5
    dec [hl]                                      ; $50c0: $35
    ld bc, $be40                                  ; $50c1: $01 $40 $be
    xor e                                         ; $50c4: $ab
    inc a                                         ; $50c5: $3c
    and b                                         ; $50c6: $a0
    ld l, a                                       ; $50c7: $6f
    ld h, d                                       ; $50c8: $62
    nop                                           ; $50c9: $00
    ld c, d                                       ; $50ca: $4a
    ld a, d                                       ; $50cb: $7a
    ld l, d                                       ; $50cc: $6a
    db $fc                                        ; $50cd: $fc
    jr nz, jr_061_508d                            ; $50ce: $20 $bd

    jr nz, @-$7e                                  ; $50d0: $20 $80

    cp h                                          ; $50d2: $bc
    ld b, d                                       ; $50d3: $42
    add b                                         ; $50d4: $80
    and $3d                                       ; $50d5: $e6 $3d
    ld b, $7a                                     ; $50d7: $06 $7a
    ld h, c                                       ; $50d9: $61
    db $ec                                        ; $50da: $ec
    ld h, c                                       ; $50db: $61
    add b                                         ; $50dc: $80
    ld l, e                                       ; $50dd: $6b
    ld a, d                                       ; $50de: $7a
    add hl, bc                                    ; $50df: $09
    and b                                         ; $50e0: $a0
    ld bc, $429e                                  ; $50e1: $01 $9e $42
    ld hl, $e303                                  ; $50e4: $21 $03 $e3
    nop                                           ; $50e7: $00
    add sp, $7f                                   ; $50e8: $e8 $7f
    rst $20                                       ; $50ea: $e7
    ld a, [hl]                                    ; $50eb: $7e
    pop hl                                        ; $50ec: $e1
    ld [hl], a                                    ; $50ed: $77
    add b                                         ; $50ee: $80
    nop                                           ; $50ef: $00
    xor c                                         ; $50f0: $a9
    nop                                           ; $50f1: $00
    ld a, d                                       ; $50f2: $7a
    ld l, c                                       ; $50f3: $69
    db $fc                                        ; $50f4: $fc
    inc bc                                        ; $50f5: $03
    cp h                                          ; $50f6: $bc
    ld b, c                                       ; $50f7: $41
    cp h                                          ; $50f8: $bc
    add d                                         ; $50f9: $82
    rst $38                                       ; $50fa: $ff
    and d                                         ; $50fb: $a2
    dec sp                                        ; $50fc: $3b
    inc b                                         ; $50fd: $04
    push bc                                       ; $50fe: $c5
    add d                                         ; $50ff: $82
    cp [hl]                                       ; $5100: $be
    pop hl                                        ; $5101: $e1
    nop                                           ; $5102: $00
    dec sp                                        ; $5103: $3b
    pop hl                                        ; $5104: $e1
    add b                                         ; $5105: $80
    call $89fc                                    ; $5106: $cd $fc $89
    jp Jump_061_7fc6                              ; $5109: $c3 $c6 $7f


    and c                                         ; $510c: $a1
    jr c, jr_061_5170                             ; $510d: $38 $61

    ld a, d                                       ; $510f: $7a
    ld b, e                                       ; $5110: $43
    ld a, b                                       ; $5111: $78
    ld h, c                                       ; $5112: $61
    ret nz                                        ; $5113: $c0

    cp [hl]                                       ; $5114: $be
    pop hl                                        ; $5115: $e1
    ld a, e                                       ; $5116: $7b
    ld [c], a                                     ; $5117: $e2
    ld b, e                                       ; $5118: $43
    xor $7e                                       ; $5119: $ee $7e
    add $bb                                       ; $511b: $c6 $bb
    add b                                         ; $511d: $80
    add c                                         ; $511e: $81
    and $3c                                       ; $511f: $e6 $3c
    ld b, h                                       ; $5121: $44
    nop                                           ; $5122: $00
    add hl, sp                                    ; $5123: $39
    inc bc                                        ; $5124: $03
    set 0, h                                      ; $5125: $cb $c4
    cp l                                          ; $5127: $bd
    and $00                                       ; $5128: $e6 $00
    ld c, b                                       ; $512a: $48
    ld a, d                                       ; $512b: $7a
    ld de, $627d                                  ; $512c: $11 $7d $62
    ld a, c                                       ; $512f: $79
    ld h, h                                       ; $5130: $64
    add hl, sp                                    ; $5131: $39
    ld h, d                                       ; $5132: $62
    add [hl]                                      ; $5133: $86
    cp d                                          ; $5134: $ba
    ld bc, $9697                                  ; $5135: $01 $97 $96
    dec b                                         ; $5138: $05
    call nz, $e239                                ; $5139: $c4 $39 $e2
    add b                                         ; $513c: $80
    rst $08                                       ; $513d: $cf
    ld a, d                                       ; $513e: $7a
    ld bc, $01a0                                  ; $513f: $01 $a0 $01
    and b                                         ; $5142: $a0
    ld a, d                                       ; $5143: $7a
    ld [bc], a                                    ; $5144: $02
    ld b, l                                       ; $5145: $45
    and d                                         ; $5146: $a2
    add d                                         ; $5147: $82
    and d                                         ; $5148: $a2
    scf                                           ; $5149: $37
    ld bc, $a3fe                                  ; $514a: $01 $fe $a3
    adc c                                         ; $514d: $89
    jp nz, $c245                                  ; $514e: $c2 $45 $c2

    db $10                                        ; $5151: $10
    pop af                                        ; $5152: $f1
    ld [hl+], a                                   ; $5153: $22
    add b                                         ; $5154: $80
    rst $08                                       ; $5155: $cf
    db $fc                                        ; $5156: $fc
    ld [bc], a                                    ; $5157: $02
    add hl, sp                                    ; $5158: $39
    ld h, c                                       ; $5159: $61
    sbc [hl]                                      ; $515a: $9e
    pop bc                                        ; $515b: $c1
    add $02                                       ; $515c: $c6 $02
    ldh [rLCDC], a                                ; $515e: $e0 $40
    pop hl                                        ; $5160: $e1
    rrca                                          ; $5161: $0f
    ld [bc], a                                    ; $5162: $02
    rlca                                          ; $5163: $07
    rlca                                          ; $5164: $07
    rlca                                          ; $5165: $07
    scf                                           ; $5166: $37
    ld h, c                                       ; $5167: $61
    cp h                                          ; $5168: $bc
    db $e3                                        ; $5169: $e3
    add b                                         ; $516a: $80
    and e                                         ; $516b: $a3
    add b                                         ; $516c: $80
    rst $08                                       ; $516d: $cf
    db $e4                                        ; $516e: $e4
    ld a, d                                       ; $516f: $7a

jr_061_5170:
    ld bc, $a23d                                  ; $5170: $01 $3d $a2
    sbc [hl]                                      ; $5173: $9e
    ld b, c                                       ; $5174: $41
    push bc                                       ; $5175: $c5
    ld b, d                                       ; $5176: $42
    ld [c], a                                     ; $5177: $e2
    ld b, [hl]                                    ; $5178: $46
    sbc h                                         ; $5179: $9c
    sbc l                                         ; $517a: $9d
    ld [bc], a                                    ; $517b: $02
    rst $38                                       ; $517c: $ff
    ldh [$9c], a                                  ; $517d: $e0 $9c
    scf                                           ; $517f: $37
    ld h, c                                       ; $5180: $61
    ld a, d                                       ; $5181: $7a
    push hl                                       ; $5182: $e5
    ld l, a                                       ; $5183: $6f
    ld b, c                                       ; $5184: $41
    add b                                         ; $5185: $80
    rst $08                                       ; $5186: $cf
    ld hl, sp+$62                                 ; $5187: $f8 $62
    add hl, sp                                    ; $5189: $39
    inc bc                                        ; $518a: $03
    cp h                                          ; $518b: $bc
    call nz, Call_000_3a83                        ; $518c: $c4 $83 $3a
    ld hl, $46af                                  ; $518f: $21 $af $46
    sbc h                                         ; $5192: $9c
    sbc a                                         ; $5193: $9f
    push hl                                       ; $5194: $e5
    pop bc                                        ; $5195: $c1
    sbc a                                         ; $5196: $9f
    add c                                         ; $5197: $81
    sbc h                                         ; $5198: $9c
    ld a, e                                       ; $5199: $7b
    ld [c], a                                     ; $519a: $e2
    ld l, a                                       ; $519b: $6f
    ld hl, $437a                                  ; $519c: $21 $7a $43
    add b                                         ; $519f: $80
    rst $08                                       ; $51a0: $cf
    ld a, [hl]                                    ; $51a1: $7e
    add h                                         ; $51a2: $84
    ld a, a                                       ; $51a3: $7f
    add d                                         ; $51a4: $82
    ld b, l                                       ; $51a5: $45
    db $db                                        ; $51a6: $db
    ld [hl], $3b                                  ; $51a7: $36 $3b
    add d                                         ; $51a9: $82
    db $e4                                        ; $51aa: $e4
    ld b, [hl]                                    ; $51ab: $46
    and c                                         ; $51ac: $a1
    ld h, [hl]                                    ; $51ad: $66
    ld b, c                                       ; $51ae: $41
    sub $d7                                       ; $51af: $d6 $d7
    pop bc                                        ; $51b1: $c1
    sbc a                                         ; $51b2: $9f
    ld a, e                                       ; $51b3: $7b
    ld [c], a                                     ; $51b4: $e2
    add hl, sp                                    ; $51b5: $39
    ldh [$74], a                                  ; $51b6: $e0 $74
    call nz, $b800                                ; $51b8: $c4 $00 $b8
    cp $60                                        ; $51bb: $fe $60
    ld b, [hl]                                    ; $51bd: $46
    ld b, l                                       ; $51be: $45
    sub e                                         ; $51bf: $93
    ld b, e                                       ; $51c0: $43
    ccf                                           ; $51c1: $3f
    ld a, h                                       ; $51c2: $7c
    jr nz, jr_061_51fe                            ; $51c3: $20 $39

    ld hl, $6a9e                                  ; $51c5: $21 $9e $6a
    add c                                         ; $51c8: $81
    db $e4                                        ; $51c9: $e4
    ld h, d                                       ; $51ca: $62
    and b                                         ; $51cb: $a0
    ld de, $399f                                  ; $51cc: $11 $9f $39
    ld [c], a                                     ; $51cf: $e2
    ld [hl], h                                    ; $51d0: $74
    jp $b600                                      ; $51d1: $c3 $00 $b6


    and c                                         ; $51d4: $a1
    call z, $c7c2                                 ; $51d5: $cc $c2 $c7
    jp nz, Jump_000_01fa                          ; $51d8: $c2 $fa $01

    ld c, a                                       ; $51db: $4f
    ld b, [hl]                                    ; $51dc: $46
    sbc [hl]                                      ; $51dd: $9e
    call nc, Call_061_62d5                        ; $51de: $d4 $d5 $62
    ld h, e                                       ; $51e1: $63
    ld a, d                                       ; $51e2: $7a
    ld [c], a                                     ; $51e3: $e2
    sbc h                                         ; $51e4: $9c
    ld sp, $3861                                  ; $51e5: $31 $61 $38
    or a                                          ; $51e8: $b7
    ld hl, $b500                                  ; $51e9: $21 $00 $b5
    add c                                         ; $51ec: $81
    and d                                         ; $51ed: $a2
    ld b, e                                       ; $51ee: $43
    ld b, c                                       ; $51ef: $41
    ld b, e                                       ; $51f0: $43
    db $fd                                        ; $51f1: $fd
    ldh [$c2], a                                  ; $51f2: $e0 $c2
    jp $0108                                      ; $51f4: $c3 $08 $01


    ldh [$62], a                                  ; $51f7: $e0 $62
    ld h, l                                       ; $51f9: $65
    ldh [$a0], a                                  ; $51fa: $e0 $a0
    sbc [hl]                                      ; $51fc: $9e
    cp b                                          ; $51fd: $b8

jr_061_51fe:
    call nz, $b600                                ; $51fe: $c4 $00 $b6
    cp a                                          ; $5201: $bf
    ld b, b                                       ; $5202: $40
    inc bc                                        ; $5203: $03
    pop hl                                        ; $5204: $e1
    ld sp, $fd3b                                  ; $5205: $31 $3b $fd
    ldh [$fb], a                                  ; $5208: $e0 $fb
    nop                                           ; $520a: $00
    jp nz, $d0c1                                  ; $520b: $c2 $c1 $d0

    pop de                                        ; $520e: $d1

jr_061_520f:
    ldh [rLYC], a                                 ; $520f: $e0 $45
    ldh [$a0], a                                  ; $5211: $e0 $a0
    ld a, b                                       ; $5213: $78
    cp b                                          ; $5214: $b8
    call nz, $b700                                ; $5215: $c4 $00 $b7
    ld a, d                                       ; $5218: $7a
    nop                                           ; $5219: $00
    ld b, h                                       ; $521a: $44
    inc a                                         ; $521b: $3c
    and h                                         ; $521c: $a4
    ld h, h                                       ; $521d: $64
    rst $38                                       ; $521e: $ff
    ldh [$85], a                                  ; $521f: $e0 $85
    and l                                         ; $5221: $a5
    ld b, e                                       ; $5222: $43
    and c                                         ; $5223: $a1
    sbc [hl]                                      ; $5224: $9e
    ld l, d                                       ; $5225: $6a
    ld h, e                                       ; $5226: $63
    ldh [rDMA], a                                 ; $5227: $e0 $46
    db $fc                                        ; $5229: $fc
    ret nz                                        ; $522a: $c0

    inc sp                                        ; $522b: $33
    pop bc                                        ; $522c: $c1
    sbc c                                         ; $522d: $99
    ld sp, hl                                     ; $522e: $f9
    sbc c                                         ; $522f: $99
    nop                                           ; $5230: $00
    or l                                          ; $5231: $b5
    add c                                         ; $5232: $81
    add b                                         ; $5233: $80
    ld b, d                                       ; $5234: $42
    dec [hl]                                      ; $5235: $35
    ld l, c                                       ; $5236: $69
    and e                                         ; $5237: $a3
    dec [hl]                                      ; $5238: $35
    rst $28                                       ; $5239: $ef
    dec [hl]                                      ; $523a: $35
    and e                                         ; $523b: $a3
    ld l, d                                       ; $523c: $6a
    dec [hl]                                      ; $523d: $35
    add c                                         ; $523e: $81
    ret nz                                        ; $523f: $c0

    sbc [hl]                                      ; $5240: $9e
    ret nc                                        ; $5241: $d0

    pop de                                        ; $5242: $d1
    add b                                         ; $5243: $80
    nop                                           ; $5244: $00
    push hl                                       ; $5245: $e5
    db $fc                                        ; $5246: $fc
    push bc                                       ; $5247: $c5
    cp h                                          ; $5248: $bc
    db $e3                                        ; $5249: $e3
    nop                                           ; $524a: $00
    or l                                          ; $524b: $b5
    ld a, l                                       ; $524c: $7d
    jr nz, jr_061_520f                            ; $524d: $20 $c0

    ldh [$c6], a                                  ; $524f: $e0 $c6
    ld h, c                                       ; $5251: $61
    ld l, d                                       ; $5252: $6a
    dec b                                         ; $5253: $05
    dec [hl]                                      ; $5254: $35
    ret nz                                        ; $5255: $c0

    ret nz                                        ; $5256: $c0

    and c                                         ; $5257: $a1
    add d                                         ; $5258: $82
    jp hl                                         ; $5259: $e9


    ld a, d                                       ; $525a: $7a
    rst $20                                       ; $525b: $e7
    jp nc, Jump_000_0081                          ; $525c: $d2 $81 $00

    or c                                          ; $525f: $b1
    nop                                           ; $5260: $00

Call_061_5261:
    jp nz, Jump_061_44af                          ; $5261: $c2 $af $44

    inc a                                         ; $5264: $3c
    ld l, e                                       ; $5265: $6b
    ld [hl], c                                    ; $5266: $71
    rst $38                                       ; $5267: $ff
    ldh [$6d], a                                  ; $5268: $e0 $6d
    add e                                         ; $526a: $83
    add b                                         ; $526b: $80
    sbc h                                         ; $526c: $9c
    ld bc, $829f                                  ; $526d: $01 $9f $82
    jp hl                                         ; $5270: $e9


    ld a, d                                       ; $5271: $7a
    jp hl                                         ; $5272: $e9


    nop                                           ; $5273: $00
    or e                                          ; $5274: $b3
    ld b, c                                       ; $5275: $41
    and d                                         ; $5276: $a2
    ret nz                                        ; $5277: $c0

    rst $00                                       ; $5278: $c7
    add h                                         ; $5279: $84
    and d                                         ; $527a: $a2
    add d                                         ; $527b: $82
    db $ed                                        ; $527c: $ed
    nop                                           ; $527d: $00
    call nc, Call_000_0023                        ; $527e: $d4 $23 $00
    or e                                          ; $5281: $b3
    db $fc                                        ; $5282: $fc
    inc bc                                        ; $5283: $03
    ld b, b                                       ; $5284: $40
    push bc                                       ; $5285: $c5
    ld b, l                                       ; $5286: $45
    and c                                         ; $5287: $a1
    add d                                         ; $5288: $82
    push bc                                       ; $5289: $c5
    ldh [$61], a                                  ; $528a: $e0 $61
    ret c                                         ; $528c: $d8

    dec h                                         ; $528d: $25
    nop                                           ; $528e: $00
    call nc, $0021                                ; $528f: $d4 $21 $00
    or h                                          ; $5292: $b4
    ld a, d                                       ; $5293: $7a
    ld [bc], a                                    ; $5294: $02
    pop de                                        ; $5295: $d1
    add b                                         ; $5296: $80
    ret                                           ; $5297: $c9


    add d                                         ; $5298: $82
    ld b, $a1                                     ; $5299: $06 $a1
    add d                                         ; $529b: $82
    and h                                         ; $529c: $a4
    add hl, de                                    ; $529d: $19
    and $10                                       ; $529e: $e6 $10
    ld d, [hl]                                    ; $52a0: $56
    dec h                                         ; $52a1: $25
    nop                                           ; $52a2: $00
    or e                                          ; $52a3: $b3
    db $fc                                        ; $52a4: $fc
    inc h                                         ; $52a5: $24
    ld e, d                                       ; $52a6: $5a
    pop bc                                        ; $52a7: $c1
    sbc a                                         ; $52a8: $9f
    dec [hl]                                      ; $52a9: $35
    add c                                         ; $52aa: $81
    add d                                         ; $52ab: $82
    push bc                                       ; $52ac: $c5
    sbc c                                         ; $52ad: $99
    ld b, a                                       ; $52ae: $47
    add d                                         ; $52af: $82
    halt                                          ; $52b0: $76
    db $e4                                        ; $52b1: $e4
    rst $18                                       ; $52b2: $df
    nop                                           ; $52b3: $00
    ld d, e                                       ; $52b4: $53
    ld a, d                                       ; $52b5: $7a
    ld h, $86                                     ; $52b6: $26 $86
    db $e4                                        ; $52b8: $e4
    inc b                                         ; $52b9: $04
    and h                                         ; $52ba: $a4
    ld d, [hl]                                    ; $52bb: $56
    ld l, [hl]                                    ; $52bc: $6e
    and b                                         ; $52bd: $a0
    ld bc, $00e5                                  ; $52be: $01 $e5 $00
    ld d, e                                       ; $52c1: $53
    ld a, [hl]                                    ; $52c2: $7e
    rst $20                                       ; $52c3: $e7
    ld [$04c3], sp                                ; $52c4: $08 $c3 $04
    and e                                         ; $52c7: $a3
    sub $2d                                       ; $52c8: $d6 $2d
    adc l                                         ; $52ca: $8d
    ld b, c                                       ; $52cb: $41
    nop                                           ; $52cc: $00
    nop                                           ; $52cd: $00
    nop                                           ; $52ce: $00
    pop bc                                        ; $52cf: $c1
    nop                                           ; $52d0: $00
    rst $38                                       ; $52d1: $ff
    rst $38                                       ; $52d2: $ff
    rst $38                                       ; $52d3: $ff
    rst $38                                       ; $52d4: $ff
    rst $38                                       ; $52d5: $ff
    rst $38                                       ; $52d6: $ff
    rst $38                                       ; $52d7: $ff
    rst $38                                       ; $52d8: $ff
    rst $38                                       ; $52d9: $ff
    rst $38                                       ; $52da: $ff
    nop                                           ; $52db: $00
    nop                                           ; $52dc: $00
    ld bc, $fe80                                  ; $52dd: $01 $80 $fe

Jump_061_52e0:
    ldh [rIE], a                                  ; $52e0: $e0 $ff
    rst $38                                       ; $52e2: $ff
    rst $38                                       ; $52e3: $ff
    rst $38                                       ; $52e4: $ff
    rst $38                                       ; $52e5: $ff
    add sp, $00                                   ; $52e6: $e8 $00
    nop                                           ; $52e8: $00
    nop                                           ; $52e9: $00
    ld [bc], a                                    ; $52ea: $02
    nop                                           ; $52eb: $00
    ld e, $09                                     ; $52ec: $1e $09
    ld [bc], a                                    ; $52ee: $02
    ld bc, $0b1c                                  ; $52ef: $01 $1c $0b
    ld [bc], a                                    ; $52f2: $02
    ld [bc], a                                    ; $52f3: $02
    jr nz, @+$10                                  ; $52f4: $20 $0e

    ld [bc], a                                    ; $52f6: $02
    inc bc                                        ; $52f7: $03
    ld [hl+], a                                   ; $52f8: $22
    ld c, $02                                     ; $52f9: $0e $02
    inc b                                         ; $52fb: $04
    ld e, $17                                     ; $52fc: $1e $17
    ld [bc], a                                    ; $52fe: $02
    dec b                                         ; $52ff: $05
    inc d                                         ; $5300: $14
    jr jr_061_5305                                ; $5301: $18 $02

    ld b, $20                                     ; $5303: $06 $20

jr_061_5305:
    add hl, de                                    ; $5305: $19
    ld [bc], a                                    ; $5306: $02
    rlca                                          ; $5307: $07
    ld hl, $0219                                  ; $5308: $21 $19 $02
    ld [$1a22], sp                                ; $530b: $08 $22 $1a
    ld [bc], a                                    ; $530e: $02
    add hl, bc                                    ; $530f: $09
    add hl, de                                    ; $5310: $19
    ld hl, $0a02                                  ; $5311: $21 $02 $0a
    jr nz, jr_061_5337                            ; $5314: $20 $21

    ld [bc], a                                    ; $5316: $02
    dec bc                                        ; $5317: $0b
    ld a, [de]                                    ; $5318: $1a
    ld [hl+], a                                   ; $5319: $22
    ld [bc], a                                    ; $531a: $02
    inc c                                         ; $531b: $0c
    rra                                           ; $531c: $1f
    ld [hl+], a                                   ; $531d: $22
    ld [bc], a                                    ; $531e: $02
    dec c                                         ; $531f: $0d
    ld hl, $0222                                  ; $5320: $21 $22 $02
    ld c, $20                                     ; $5323: $0e $20
    inc hl                                        ; $5325: $23
    ld [bc], a                                    ; $5326: $02
    rrca                                          ; $5327: $0f
    dec de                                        ; $5328: $1b
    inc h                                         ; $5329: $24
    ld [bc], a                                    ; $532a: $02
    db $10                                        ; $532b: $10
    inc e                                         ; $532c: $1c
    dec h                                         ; $532d: $25
    ld [bc], a                                    ; $532e: $02
    ld de, $261b                                  ; $532f: $11 $1b $26
    ld [bc], a                                    ; $5332: $02
    ld [de], a                                    ; $5333: $12
    add hl, hl                                    ; $5334: $29
    dec l                                         ; $5335: $2d
    ld [bc], a                                    ; $5336: $02

jr_061_5337:
    inc de                                        ; $5337: $13
    daa                                           ; $5338: $27
    jr nc, jr_061_533d                            ; $5339: $30 $02

    inc d                                         ; $533b: $14
    inc e                                         ; $533c: $1c

jr_061_533d:
    ld [hl-], a                                   ; $533d: $32
    ld [bc], a                                    ; $533e: $02
    dec d                                         ; $533f: $15
    dec h                                         ; $5340: $25
    ld [hl-], a                                   ; $5341: $32
    ld [bc], a                                    ; $5342: $02
    ld d, $24                                     ; $5343: $16 $24
    inc sp                                        ; $5345: $33
    ld [bc], a                                    ; $5346: $02
    rla                                           ; $5347: $17

jr_061_5348:
    dec h                                         ; $5348: $25
    dec [hl]                                      ; $5349: $35
    ld [bc], a                                    ; $534a: $02
    jr jr_061_5367                                ; $534b: $18 $1a

    ld [hl], $02                                  ; $534d: $36 $02
    add hl, de                                    ; $534f: $19
    inc h                                         ; $5350: $24
    jr c, @+$01                                   ; $5351: $38 $ff

    rst $38                                       ; $5353: $ff
    rst $38                                       ; $5354: $ff
    ld e, l                                       ; $5355: $5d
    ld d, e                                       ; $5356: $53
    sbc a                                         ; $5357: $9f
    ld d, [hl]                                    ; $5358: $56
    sub a                                         ; $5359: $97
    ld e, d                                       ; $535a: $5a
    or d                                          ; $535b: $b2
    ld e, d                                       ; $535c: $5a
    ccf                                           ; $535d: $3f
    ld c, $0e                                     ; $535e: $0e $0e
    dec c                                         ; $5360: $0d
    dec c                                         ; $5361: $0d
    dec c                                         ; $5362: $0d
    ld c, $fa                                     ; $5363: $0e $fa
    rst $38                                       ; $5365: $ff
    db $f4                                        ; $5366: $f4

jr_061_5367:
    push af                                       ; $5367: $f5
    ret nz                                        ; $5368: $c0

    db $dd                                        ; $5369: $dd
    ldh [rIE], a                                  ; $536a: $e0 $ff
    rst $38                                       ; $536c: $ff
    rst $38                                       ; $536d: $ff
    rst $38                                       ; $536e: $ff
    rst $38                                       ; $536f: $ff
    rst $38                                       ; $5370: $ff
    push af                                       ; $5371: $f5
    db $f4                                        ; $5372: $f4
    ld e, e                                       ; $5373: $5b
    push af                                       ; $5374: $f5
    ld c, $0e                                     ; $5375: $0e $0e
    dec bc                                        ; $5377: $0b
    ld c, l                                       ; $5378: $4d
    ld c, l                                       ; $5379: $4d
    ld h, b                                       ; $537a: $60
    db $e3                                        ; $537b: $e3
    ld c, l                                       ; $537c: $4d
    scf                                           ; $537d: $37
    ei                                            ; $537e: $fb
    sbc l                                         ; $537f: $9d
    or $c0                                        ; $5380: $f6 $c0
    pop hl                                        ; $5382: $e1
    db $fc                                        ; $5383: $fc
    push hl                                       ; $5384: $e5
    ld d, b                                       ; $5385: $50
    rst $38                                       ; $5386: $ff
    rst $38                                       ; $5387: $ff
    rst $38                                       ; $5388: $ff
    rst $38                                       ; $5389: $ff
    ld a, $f7                                     ; $538a: $3e $f7
    sbc b                                         ; $538c: $98
    ret nc                                        ; $538d: $d0

    ld c, l                                       ; $538e: $4d
    add d                                         ; $538f: $82
    jp hl                                         ; $5390: $e9


    ld c, l                                       ; $5391: $4d
    dec a                                         ; $5392: $3d
    ldh [rP1], a                                  ; $5393: $e0 $00
    db $fc                                        ; $5395: $fc
    pop hl                                        ; $5396: $e1
    add b                                         ; $5397: $80
    rst $18                                       ; $5398: $df
    ld b, l                                       ; $5399: $45
    and $4c                                       ; $539a: $e6 $4c
    ld [c], a                                     ; $539c: $e2
    ld h, d                                       ; $539d: $62
    rst $00                                       ; $539e: $c7
    dec [hl]                                      ; $539f: $35
    pop bc                                        ; $53a0: $c1
    ld de, $c0fc                                  ; $53a1: $11 $fc $c0
    xor $08                                       ; $53a4: $ee $08
    nop                                           ; $53a6: $00
    jp nz, $e2c8                                  ; $53a7: $c2 $c8 $e2

    cp b                                          ; $53aa: $b8
    call nz, $c04d                                ; $53ab: $c4 $4d $c0
    pop af                                        ; $53ae: $f1
    add [hl]                                      ; $53af: $86
    push de                                       ; $53b0: $d5
    ld h, h                                       ; $53b1: $64
    jp nz, $c278                                  ; $53b2: $c2 $78 $c2

    nop                                           ; $53b5: $00
    xor [hl]                                      ; $53b6: $ae
    res 0, b                                      ; $53b7: $cb $80
    rst $18                                       ; $53b9: $df
    ld b, [hl]                                    ; $53ba: $46
    rst $00                                       ; $53bb: $c7
    ld d, b                                       ; $53bc: $50
    ld [c], a                                     ; $53bd: $e2
    ld a, [hl]                                    ; $53be: $7e
    ld [$ff45], a                                 ; $53bf: $ea $45 $ff
    and [hl]                                      ; $53c2: $a6
    adc $3e                                       ; $53c3: $ce $3e
    db $e4                                        ; $53c5: $e4
    jr nc, jr_061_5348                            ; $53c6: $30 $80

    rst $18                                       ; $53c8: $df
    add [hl]                                      ; $53c9: $86
    ret                                           ; $53ca: $c9


    ret nc                                        ; $53cb: $d0

    call nz, $c3c9                                ; $53cc: $c4 $c9 $c3
    dec l                                         ; $53cf: $2d
    dec l                                         ; $53d0: $2d
    rst $30                                       ; $53d1: $f7
    db $e4                                        ; $53d2: $e4
    halt                                          ; $53d3: $76
    jp $80d8                                      ; $53d4: $c3 $d8 $80


    jp c, $c486                                   ; $53d7: $da $86 $c4

    ld h, [hl]                                    ; $53da: $66
    and e                                         ; $53db: $a3
    ld c, l                                       ; $53dc: $4d
    ld c, l                                       ; $53dd: $4d
    add $e1                                       ; $53de: $c6 $e1
    ld l, l                                       ; $53e0: $6d
    dec c                                         ; $53e1: $0d
    ldh a, [$f9]                                  ; $53e2: $f0 $f9
    pop hl                                        ; $53e4: $e1
    ld [de], a                                    ; $53e5: $12
    res 0, [hl]                                   ; $53e6: $cb $86
    db $dd                                        ; $53e8: $dd
    adc b                                         ; $53e9: $88
    add c                                         ; $53ea: $81
    ld l, l                                       ; $53eb: $6d
    dec bc                                        ; $53ec: $0b
    dec c                                         ; $53ed: $0d
    dec bc                                        ; $53ee: $0b
    add b                                         ; $53ef: $80
    ld sp, hl                                     ; $53f0: $f9
    and b                                         ; $53f1: $a0
    ld sp, hl                                     ; $53f2: $f9
    ldh [$bf], a                                  ; $53f3: $e0 $bf
    ld [c], a                                     ; $53f5: $e2
    ld l, $a6                                     ; $53f6: $2e $a6
    ld a, [hl-]                                   ; $53f8: $3a
    res 0, [hl]                                   ; $53f9: $cb $86
    db $d3                                        ; $53fb: $d3
    ld c, b                                       ; $53fc: $48
    add b                                         ; $53fd: $80
    ld l, l                                       ; $53fe: $6d
    dec h                                         ; $53ff: $25
    dec c                                         ; $5400: $0d
    rst $00                                       ; $5401: $c7
    ldh [$0b], a                                  ; $5402: $e0 $0b
    rst $38                                       ; $5404: $ff
    ldh [$f8], a                                  ; $5405: $e0 $f8
    ldh [$0b], a                                  ; $5407: $e0 $0b
    ld a, [hl]                                    ; $5409: $7e
    rst $20                                       ; $540a: $e7
    add b                                         ; $540b: $80
    db $db                                        ; $540c: $db
    jr nc, jr_061_5413                            ; $540d: $30 $04

    add sp, -$7e                                  ; $540f: $e8 $82
    ldh [$c5], a                                  ; $5411: $e0 $c5

jr_061_5413:
    ld [c], a                                     ; $5413: $e2
    ld hl, sp-$1f                                 ; $5414: $f8 $e1
    dec bc                                        ; $5416: $0b
    dec bc                                        ; $5417: $0b
    db $fd                                        ; $5418: $fd
    pop bc                                        ; $5419: $c1
    ld a, [hl]                                    ; $541a: $7e
    rst $18                                       ; $541b: $df
    nop                                           ; $541c: $00
    inc l                                         ; $541d: $2c
    xor c                                         ; $541e: $a9
    add l                                         ; $541f: $85
    pop hl                                        ; $5420: $e1
    jp $7ae4                                      ; $5421: $c3 $e4 $7a


    ldh [$f6], a                                  ; $5424: $e0 $f6
    ret nz                                        ; $5426: $c0

    add b                                         ; $5427: $80
    sbc $9a                                       ; $5428: $de $9a
    add $16                                       ; $542a: $c6 $16
    and c                                         ; $542c: $a1
    ld bc, $c76d                                  ; $542d: $01 $6d $c7
    db $e4                                        ; $5430: $e4
    ret nz                                        ; $5431: $c0

    db $e4                                        ; $5432: $e4
    cp h                                          ; $5433: $bc
    ret nz                                        ; $5434: $c0

    ld a, [hl]                                    ; $5435: $7e
    ret z                                         ; $5436: $c8

    add b                                         ; $5437: $80
    ld [hl], c                                    ; $5438: $71

jr_061_5439:
    ld [hl-], a                                   ; $5439: $32
    adc b                                         ; $543a: $88
    pop bc                                        ; $543b: $c1
    db $ec                                        ; $543c: $ec
    jr c, jr_061_5439                             ; $543d: $38 $fa

    pop bc                                        ; $543f: $c1
    ld a, [hl-]                                   ; $5440: $3a
    ret nz                                        ; $5441: $c0

    ld c, d                                       ; $5442: $4a
    db $e3                                        ; $5443: $e3
    ld l, l                                       ; $5444: $6d
    ld l, l                                       ; $5445: $6d
    ld l, l                                       ; $5446: $6d
    db $d3                                        ; $5447: $d3
    cp c                                          ; $5448: $b9
    ld [$24a3], sp                                ; $5449: $08 $a3 $24
    add e                                         ; $544c: $83
    db $e4                                        ; $544d: $e4
    inc a                                         ; $544e: $3c
    jp hl                                         ; $544f: $e9


    dec c                                         ; $5450: $0d
    inc a                                         ; $5451: $3c
    jp nz, Jump_061_40ee                          ; $5452: $c2 $ee $40

    ld l, l                                       ; $5455: $6d
    db $fd                                        ; $5456: $fd
    res 1, h                                      ; $5457: $cb $8c
    ld l, e                                       ; $5459: $6b
    jr c, jr_061_54ca                             ; $545a: $38 $6e

    ld h, e                                       ; $545c: $63
    add l                                         ; $545d: $85
    ret nz                                        ; $545e: $c0

    inc bc                                        ; $545f: $03
    push hl                                       ; $5460: $e5
    dec hl                                        ; $5461: $2b
    ld a, [bc]                                    ; $5462: $0a
    ld a, [hl+]                                   ; $5463: $2a
    cp $c9                                        ; $5464: $fe $c9
    ret nz                                        ; $5466: $c0

    pop hl                                        ; $5467: $e1
    ret nz                                        ; $5468: $c0

    ld a, [hl]                                    ; $5469: $7e
    ldh [$80], a                                  ; $546a: $e0 $80
    ld [hl], h                                    ; $546c: $74
    ld e, d                                       ; $546d: $5a
    add h                                         ; $546e: $84
    pop hl                                        ; $546f: $e1
    ldh [$c6], a                                  ; $5470: $e0 $c6
    call nz, $e0c2                                ; $5472: $c4 $c2 $e0
    ld a, [bc]                                    ; $5475: $0a
    ld a, [bc]                                    ; $5476: $0a
    and c                                         ; $5477: $a1
    ld a, [bc]                                    ; $5478: $0a
    cp $c6                                        ; $5479: $fe $c6
    ld c, a                                       ; $547b: $4f
    ld h, h                                       ; $547c: $64
    dec a                                         ; $547d: $3d
    or $48                                        ; $547e: $f6 $48
    ld h, h                                       ; $5480: $64
    dec l                                         ; $5481: $2d
    ld c, c                                       ; $5482: $49
    add $0a                                       ; $5483: $c6 $0a
    dec c                                         ; $5485: $0d
    ld c, d                                       ; $5486: $4a
    add d                                         ; $5487: $82
    ldh [$0a], a                                  ; $5488: $e0 $0a
    ld c, d                                       ; $548a: $4a
    halt                                          ; $548b: $76
    call nz, $e67e                                ; $548c: $c4 $7e $e6
    add b                                         ; $548f: $80
    push de                                       ; $5490: $d5
    call z, $fb44                                 ; $5491: $cc $44 $fb
    ld c, l                                       ; $5494: $4d
    dec l                                         ; $5495: $2d
    ld c, c                                       ; $5496: $49
    push bc                                       ; $5497: $c5
    ld l, e                                       ; $5498: $6b
    ld a, [bc]                                    ; $5499: $0a
    dec hl                                        ; $549a: $2b
    dec bc                                        ; $549b: $0b
    dec hl                                        ; $549c: $2b
    pop bc                                        ; $549d: $c1
    ld a, [hl+]                                   ; $549e: $2a
    ret nz                                        ; $549f: $c0

    ldh [$32], a                                  ; $54a0: $e0 $32
    jp $e43e                                      ; $54a2: $c3 $3e $e4


    db $e4                                        ; $54a5: $e4
    ld h, e                                       ; $54a6: $63
    add b                                         ; $54a7: $80
    ret c                                         ; $54a8: $d8

    ld c, l                                       ; $54a9: $4d
    dec l                                         ; $54aa: $2d
    cp l                                          ; $54ab: $bd
    dec l                                         ; $54ac: $2d
    ld [bc], a                                    ; $54ad: $02
    jp nz, Jump_000_0a2b                          ; $54ae: $c2 $2b $0a

    ld c, d                                       ; $54b1: $4a
    dec hl                                        ; $54b2: $2b
    ld a, e                                       ; $54b3: $7b
    ldh [$2a], a                                  ; $54b4: $e0 $2a
    ld bc, $b94b                                  ; $54b6: $01 $4b $b9
    and h                                         ; $54b9: $a4
    cp $c2                                        ; $54ba: $fe $c2
    ld a, b                                       ; $54bc: $78
    and l                                         ; $54bd: $a5
    ld sp, hl                                     ; $54be: $f9
    ld d, b                                       ; $54bf: $50
    inc e                                         ; $54c0: $1c

jr_061_54c1:
    and a                                         ; $54c1: $a7
    ld a, l                                       ; $54c2: $7d
    ldh [$81], a                                  ; $54c3: $e0 $81
    ld [c], a                                     ; $54c5: $e2
    rra                                           ; $54c6: $1f
    ld c, d                                       ; $54c7: $4a
    ld c, e                                       ; $54c8: $4b
    ld c, e                                       ; $54c9: $4b

jr_061_54ca:
    ld l, e                                       ; $54ca: $6b
    dec hl                                        ; $54cb: $2b
    cp [hl]                                       ; $54cc: $be
    jp $a034                                      ; $54cd: $c3 $34 $a0


    or c                                          ; $54d0: $b1
    add d                                         ; $54d1: $82
    ld [hl], b                                    ; $54d2: $70
    ld l, [hl]                                    ; $54d3: $6e
    ld h, l                                       ; $54d4: $65
    add b                                         ; $54d5: $80
    sub $ea                                       ; $54d6: $d6 $ea
    ld [hl+], a                                   ; $54d8: $22
    cp a                                          ; $54d9: $bf
    pop hl                                        ; $54da: $e1
    dec c                                         ; $54db: $0d
    dec hl                                        ; $54dc: $2b
    dec hl                                        ; $54dd: $2b
    ld b, b                                       ; $54de: $40
    ld [c], a                                     ; $54df: $e2
    and b                                         ; $54e0: $a0
    add b                                         ; $54e1: $80

jr_061_54e2:
    ldh [$fe], a                                  ; $54e2: $e0 $fe
    ret                                           ; $54e4: $c9


    adc $b1                                       ; $54e5: $ce $b1
    ret c                                         ; $54e7: $d8

    ld c, e                                       ; $54e8: $4b
    ld a, [hl]                                    ; $54e9: $7e
    db $e3                                        ; $54ea: $e3
    dec hl                                        ; $54eb: $2b
    ret nz                                        ; $54ec: $c0

    ldh [rOCPD], a                                ; $54ed: $e0 $6b
    sub d                                         ; $54ef: $92
    ld b, b                                       ; $54f0: $40
    ldh [$0b], a                                  ; $54f1: $e0 $0b
    pop bc                                        ; $54f3: $c1
    push hl                                       ; $54f4: $e5
    xor a                                         ; $54f5: $af
    add b                                         ; $54f6: $80
    ld l, l                                       ; $54f7: $6d
    db $fc                                        ; $54f8: $fc
    sbc h                                         ; $54f9: $9c
    adc [hl]                                      ; $54fa: $8e
    ld c, c                                       ; $54fb: $49
    dec hl                                        ; $54fc: $2b
    ld b, b                                       ; $54fd: $40
    rst $38                                       ; $54fe: $ff
    ldh [$7c], a                                  ; $54ff: $e0 $7c
    xor c                                         ; $5501: $a9
    pop bc                                        ; $5502: $c1
    pop hl                                        ; $5503: $e1
    add b                                         ; $5504: $80
    ld a, a                                       ; $5505: $7f
    add d                                         ; $5506: $82
    ld h, a                                       ; $5507: $67
    ret nz                                        ; $5508: $c0

    push hl                                       ; $5509: $e5
    ld c, e                                       ; $550a: $4b
    ld b, c                                       ; $550b: $41
    pop hl                                        ; $550c: $e1
    and b                                         ; $550d: $a0
    inc a                                         ; $550e: $3c
    and d                                         ; $550f: $a2
    add d                                         ; $5510: $82
    push hl                                       ; $5511: $e5

jr_061_5512:
    add b                                         ; $5512: $80
    jr jr_061_54e2                                ; $5513: $18 $cd

    ld b, e                                       ; $5515: $43
    ld [de], a                                    ; $5516: $12
    ld b, c                                       ; $5517: $41
    ld l, l                                       ; $5518: $6d
    add b                                         ; $5519: $80
    ldh [rOCPD], a                                ; $551a: $e0 $6b
    ld b, c                                       ; $551c: $41
    ld l, e                                       ; $551d: $6b
    ld b, c                                       ; $551e: $41
    pop hl                                        ; $551f: $e1
    ld [hl], l                                    ; $5520: $75
    add l                                         ; $5521: $85
    jp z, $c0ba                                   ; $5522: $ca $ba $c0

    rst $20                                       ; $5525: $e7
    sbc b                                         ; $5526: $98
    ld [hl+], a                                   ; $5527: $22
    ld c, l                                       ; $5528: $4d
    pop bc                                        ; $5529: $c1
    pop hl                                        ; $552a: $e1
    nop                                           ; $552b: $00
    nop                                           ; $552c: $00
    ldh [$3e], a                                  ; $552d: $e0 $3e
    and b                                         ; $552f: $a0
    nop                                           ; $5530: $00
    and l                                         ; $5531: $a5
    add d                                         ; $5532: $82
    jp hl                                         ; $5533: $e9


    add b                                         ; $5534: $80

jr_061_5535:
    jr jr_061_5535                                ; $5535: $18 $fe

    add e                                         ; $5537: $83
    jp $c0c1                                      ; $5538: $c3 $c1 $c0


    push hl                                       ; $553b: $e5
    jr nc, jr_061_54c1                            ; $553c: $30 $83

    db $e3                                        ; $553e: $e3
    sub d                                         ; $553f: $92
    add hl, bc                                    ; $5540: $09
    nop                                           ; $5541: $00
    cp b                                          ; $5542: $b8
    ld c, d                                       ; $5543: $4a
    ld [bc], a                                    ; $5544: $02
    ld l, l                                       ; $5545: $6d
    dec c                                         ; $5546: $0d
    ret nz                                        ; $5547: $c0

    ld [c], a                                     ; $5548: $e2
    ccf                                           ; $5549: $3f
    ret nz                                        ; $554a: $c0

    nop                                           ; $554b: $00
    ret nz                                        ; $554c: $c0

    push hl                                       ; $554d: $e5
    push bc                                       ; $554e: $c5
    and e                                         ; $554f: $a3
    ccf                                           ; $5550: $3f
    inc a                                         ; $5551: $3c
    inc e                                         ; $5552: $1c
    ld h, a                                       ; $5553: $67
    add d                                         ; $5554: $82
    db $e3                                        ; $5555: $e3
    ret nz                                        ; $5556: $c0

    ld [c], a                                     ; $5557: $e2
    pop bc                                        ; $5558: $c1
    jp nz, $a545                                  ; $5559: $c2 $45 $a5

    nop                                           ; $555c: $00
    add b                                         ; $555d: $80
    rst $18                                       ; $555e: $df
    ld [$4143], sp                                ; $555f: $08 $43 $41
    db $e4                                        ; $5562: $e4
    cp a                                          ; $5563: $bf
    pop bc                                        ; $5564: $c1
    jp $85a0                                      ; $5565: $c3 $a0 $85


    and d                                         ; $5568: $a2
    ld h, $24                                     ; $5569: $26 $24
    nop                                           ; $556b: $00
    ld e, h                                       ; $556c: $5c
    jr jr_061_5512                                ; $556d: $18 $a3

    ld h, d                                       ; $556f: $62
    call nz, Call_000_00a3                        ; $5570: $c4 $a3 $00
    jp nz, Jump_061_6b6b                          ; $5573: $c2 $6b $6b

    ret nz                                        ; $5576: $c0

    db $e3                                        ; $5577: $e3
    ld a, [hl]                                    ; $5578: $7e
    ld b, [hl]                                    ; $5579: $46
    ld a, d                                       ; $557a: $7a
    inc e                                         ; $557b: $1c
    ld bc, $7e6d                                  ; $557c: $01 $6d $7e
    add h                                         ; $557f: $84
    adc b                                         ; $5580: $88
    add b                                         ; $5581: $80
    ld bc, $c1e2                                  ; $5582: $01 $e2 $c1
    pop hl                                        ; $5585: $e1
    ld b, d                                       ; $5586: $42
    add [hl]                                      ; $5587: $86
    ld a, [hl-]                                   ; $5588: $3a
    ld de, $ab00                                  ; $5589: $11 $00 $ab
    nop                                           ; $558c: $00
    inc hl                                        ; $558d: $23
    ld h, l                                       ; $558e: $65
    dec a                                         ; $558f: $3d
    add c                                         ; $5590: $81
    ld b, b                                       ; $5591: $40
    and c                                         ; $5592: $a1
    rst $38                                       ; $5593: $ff
    inc h                                         ; $5594: $24
    ei                                            ; $5595: $fb
    ld [hl+], a                                   ; $5596: $22
    ld a, [hl]                                    ; $5597: $7e
    ld b, e                                       ; $5598: $43
    add b                                         ; $5599: $80
    dec de                                        ; $559a: $1b
    db $e3                                        ; $559b: $e3
    ld b, c                                       ; $559c: $41
    nop                                           ; $559d: $00
    db $fc                                        ; $559e: $fc
    ld h, h                                       ; $559f: $64
    jp $0520                                      ; $55a0: $c3 $20 $05


    push bc                                       ; $55a3: $c5
    ld [bc], a                                    ; $55a4: $02
    and e                                         ; $55a5: $a3
    ld a, $41                                     ; $55a6: $3e $41
    nop                                           ; $55a8: $00
    ld e, l                                       ; $55a9: $5d
    and e                                         ; $55aa: $a3
    ld b, a                                       ; $55ab: $47
    ld a, $c1                                     ; $55ac: $3e $c1
    nop                                           ; $55ae: $00
    inc b                                         ; $55af: $04
    ld b, h                                       ; $55b0: $44
    cp [hl]                                       ; $55b1: $be
    and d                                         ; $55b2: $a2
    ld hl, sp+$01                                 ; $55b3: $f8 $01
    add b                                         ; $55b5: $80
    rst $18                                       ; $55b6: $df
    ld a, d                                       ; $55b7: $7a
    ld l, b                                       ; $55b8: $68
    add $a5                                       ; $55b9: $c6 $a5
    ld a, [hl]                                    ; $55bb: $7e
    and e                                         ; $55bc: $a3
    ld [$0042], a                                 ; $55bd: $ea $42 $00
    ld l, d                                       ; $55c0: $6a
    ld [$b600], sp                                ; $55c1: $08 $00 $b6
    jr jr_061_55ec                                ; $55c4: $18 $26

    add [hl]                                      ; $55c6: $86
    and d                                         ; $55c7: $a2
    adc e                                         ; $55c8: $8b
    ld h, c                                       ; $55c9: $61
    ld a, b                                       ; $55ca: $78
    inc hl                                        ; $55cb: $23
    add h                                         ; $55cc: $84
    ld h, a                                       ; $55cd: $67
    cp e                                          ; $55ce: $bb
    cp d                                          ; $55cf: $ba
    nop                                           ; $55d0: $00
    ld a, d                                       ; $55d1: $7a
    ld h, $00                                     ; $55d2: $26 $00
    add b                                         ; $55d4: $80
    ld b, d                                       ; $55d5: $42
    add a                                         ; $55d6: $87
    inc b                                         ; $55d7: $04
    ld l, e                                       ; $55d8: $6b
    nop                                           ; $55d9: $00
    cp e                                          ; $55da: $bb
    sbc b                                         ; $55db: $98
    dec b                                         ; $55dc: $05
    inc a                                         ; $55dd: $3c
    pop bc                                        ; $55de: $c1
    nop                                           ; $55df: $00
    push hl                                       ; $55e0: $e5
    ldh a, [rLY]                                  ; $55e1: $f0 $44
    add h                                         ; $55e3: $84
    ld a, h                                       ; $55e4: $7c
    and [hl]                                      ; $55e5: $a6
    add b                                         ; $55e6: $80
    sub $7a                                       ; $55e7: $d6 $7a
    add hl, bc                                    ; $55e9: $09
    dec c                                         ; $55ea: $0d
    ld l, e                                       ; $55eb: $6b

jr_061_55ec:
    ld c, e                                       ; $55ec: $4b
    ld l, e                                       ; $55ed: $6b
    and b                                         ; $55ee: $a0
    ret nz                                        ; $55ef: $c0

    and b                                         ; $55f0: $a0
    cp l                                          ; $55f1: $bd
    and d                                         ; $55f2: $a2
    ld [bc], a                                    ; $55f3: $02
    db $e3                                        ; $55f4: $e3
    add e                                         ; $55f5: $83
    xor $7e                                       ; $55f6: $ee $7e
    ld a, [de]                                    ; $55f8: $1a
    ld l, l                                       ; $55f9: $6d
    ld bc, $6b80                                  ; $55fa: $01 $80 $6b
    ld hl, $fc0d                                  ; $55fd: $21 $0d $fc

Call_061_5600:
    ldh [$c1], a                                  ; $5600: $e0 $c1
    ld [c], a                                     ; $5602: $e2
    inc h                                         ; $5603: $24
    ld h, a                                       ; $5604: $67
    add b                                         ; $5605: $80
    call c, $824d                                 ; $5606: $dc $4d $82
    db $e4                                        ; $5609: $e4
    rst $38                                       ; $560a: $ff
    ld b, e                                       ; $560b: $43
    nop                                           ; $560c: $00
    ld b, a                                       ; $560d: $47
    ld b, l                                       ; $560e: $45
    add [hl]                                      ; $560f: $86
    ld [hl], b                                    ; $5610: $70
    add b                                         ; $5611: $80
    ld [hl], d                                    ; $5612: $72
    jp nz, $b9e2                                  ; $5613: $c2 $e2 $b9

    ld h, e                                       ; $5616: $63
    ld d, b                                       ; $5617: $50
    jr nz, jr_061_5654                            ; $5618: $20 $3a

    add e                                         ; $561a: $83
    call nz, $0000                                ; $561b: $c4 $00 $00
    ld d, b                                       ; $561e: $50
    rst $38                                       ; $561f: $ff
    ret nz                                        ; $5620: $c0

    jp hl                                         ; $5621: $e9


    sbc d                                         ; $5622: $9a
    add b                                         ; $5623: $80
    ld a, l                                       ; $5624: $7d
    ld b, [hl]                                    ; $5625: $46
    dec sp                                        ; $5626: $3b
    and c                                         ; $5627: $a1
    ld b, h                                       ; $5628: $44
    ld bc, $6f86                                  ; $5629: $01 $86 $6f
    add b                                         ; $562c: $80
    reti                                          ; $562d: $d9


    ld b, b                                       ; $562e: $40
    dec d                                         ; $562f: $15
    and e                                         ; $5630: $a3
    inc a                                         ; $5631: $3c
    ld b, c                                       ; $5632: $41
    ret nz                                        ; $5633: $c0

    ld [c], a                                     ; $5634: $e2
    adc b                                         ; $5635: $88
    ld b, a                                       ; $5636: $47
    sub e                                         ; $5637: $93
    xor h                                         ; $5638: $ac
    ld l, a                                       ; $5639: $6f
    pop af                                        ; $563a: $f1
    dec l                                         ; $563b: $2d
    sub d                                         ; $563c: $92
    ld [c], a                                     ; $563d: $e2
    nop                                           ; $563e: $00
    ei                                            ; $563f: $fb
    and h                                         ; $5640: $a4
    ld [hl], a                                    ; $5641: $77
    ld h, b                                       ; $5642: $60
    add l                                         ; $5643: $85
    and e                                         ; $5644: $a3
    ld b, l                                       ; $5645: $45
    rst $38                                       ; $5646: $ff
    ret nz                                        ; $5647: $c0

    jp hl                                         ; $5648: $e9


    ld a, [hl]                                    ; $5649: $7e
    rst $20                                       ; $564a: $e7
    inc c                                         ; $564b: $0c
    ld b, c                                       ; $564c: $41
    ld c, b                                       ; $564d: $48
    ld a, e                                       ; $564e: $7b
    nop                                           ; $564f: $00
    ld l, l                                       ; $5650: $6d
    rst $28                                       ; $5651: $ef
    ld hl, sp+$43                                 ; $5652: $f8 $43

jr_061_5654:
    ld a, c                                       ; $5654: $79
    and e                                         ; $5655: $a3
    adc [hl]                                      ; $5656: $8e
    dec h                                         ; $5657: $25
    add [hl]                                      ; $5658: $86
    ld l, a                                       ; $5659: $6f
    nop                                           ; $565a: $00
    ld d, d                                       ; $565b: $52
    dec a                                         ; $565c: $3d
    db $e4                                        ; $565d: $e4
    push af                                       ; $565e: $f5
    daa                                           ; $565f: $27
    nop                                           ; $5660: $00
    ld de, $3d3a                                  ; $5661: $11 $3a $3d
    rst $30                                       ; $5664: $f7
    db $fc                                        ; $5665: $fc
    push bc                                       ; $5666: $c5
    ld [hl], d                                    ; $5667: $72
    jp nz, $a66e                                  ; $5668: $c2 $6e $a6

    add b                                         ; $566b: $80
    rst $18                                       ; $566c: $df
    ld a, d                                       ; $566d: $7a
    call $ea80                                    ; $566e: $cd $80 $ea
    nop                                           ; $5671: $00
    add b                                         ; $5672: $80
    rst $18                                       ; $5673: $df
    ld a, d                                       ; $5674: $7a
    adc $f0                                       ; $5675: $ce $f0
    ld [$ff49], sp                                ; $5677: $08 $49 $ff
    ld a, d                                       ; $567a: $7a
    ret nc                                        ; $567b: $d0

    ldh a, [rTAC]                                 ; $567c: $f0 $07
    call nz, $8036                                ; $567e: $c4 $36 $80
    pop de                                        ; $5681: $d1
    nop                                           ; $5682: $00
    and h                                         ; $5683: $a4
    dec b                                         ; $5684: $05
    db $f4                                        ; $5685: $f4
    and c                                         ; $5686: $a1
    ld [c], a                                     ; $5687: $e2
    push af                                       ; $5688: $f5
    add b                                         ; $5689: $80
    ret c                                         ; $568a: $d8

    ld a, d                                       ; $568b: $7a
    ret z                                         ; $568c: $c8

    rst $38                                       ; $568d: $ff
    rst $38                                       ; $568e: $ff
    ld a, d                                       ; $568f: $7a
    db $db                                        ; $5690: $db
    cp e                                          ; $5691: $bb
    db $fd                                        ; $5692: $fd
    nop                                           ; $5693: $00
    ld b, e                                       ; $5694: $43
    or $74                                        ; $5695: $f6 $74
    ld h, a                                       ; $5697: $67
    rra                                           ; $5698: $1f
    rst $30                                       ; $5699: $f7
    or b                                          ; $569a: $b0
    nop                                           ; $569b: $00
    nop                                           ; $569c: $00
    nop                                           ; $569d: $00
    nop                                           ; $569e: $00
    ccf                                           ; $569f: $3f
    db $dd                                        ; $56a0: $dd
    sbc $a0                                       ; $56a1: $de $a0
    and b                                         ; $56a3: $a0
    and b                                         ; $56a4: $a0
    call c, $fffa                                 ; $56a5: $dc $fa $ff
    db $f4                                        ; $56a8: $f4
    push af                                       ; $56a9: $f5
    ccf                                           ; $56aa: $3f
    ld [c], a                                     ; $56ab: $e2
    db $e3                                        ; $56ac: $e3
    db $e4                                        ; $56ad: $e4
    rst $18                                       ; $56ae: $df
    ldh [$e1], a                                  ; $56af: $e0 $e1
    ld a, [$f4ff]                                 ; $56b1: $fa $ff $f4
    push af                                       ; $56b4: $f5
    ccf                                           ; $56b5: $3f
    add sp, -$17                                  ; $56b6: $e8 $e9
    ld [$e6e5], a                                 ; $56b8: $ea $e5 $e6
    rst $20                                       ; $56bb: $e7
    ld a, [$f4ff]                                 ; $56bc: $fa $ff $f4
    push af                                       ; $56bf: $f5
    adc [hl]                                      ; $56c0: $8e
    ld e, e                                       ; $56c1: $5b
    push af                                       ; $56c2: $f5
    sub $d7                                       ; $56c3: $d6 $d7
    and b                                         ; $56c5: $a0
    db $fc                                        ; $56c6: $fc
    and $37                                       ; $56c7: $e6 $37
    ld sp, hl                                     ; $56c9: $f9
    ld e, e                                       ; $56ca: $5b
    push af                                       ; $56cb: $f5
    ret c                                         ; $56cc: $d8

    rst $00                                       ; $56cd: $c7
    reti                                          ; $56ce: $d9


    and b                                         ; $56cf: $a0
    and b                                         ; $56d0: $a0
    db $fc                                        ; $56d1: $fc
    push hl                                       ; $56d2: $e5
    scf                                           ; $56d3: $37
    ld sp, hl                                     ; $56d4: $f9
    ld e, e                                       ; $56d5: $5b
    push af                                       ; $56d6: $f5
    jp c, Jump_000_03db                           ; $56d7: $da $db $03

    sub $d7                                       ; $56da: $d6 $d7
    db $fc                                        ; $56dc: $fc
    push hl                                       ; $56dd: $e5
    scf                                           ; $56de: $37
    ld sp, hl                                     ; $56df: $f9
    sbc [hl]                                      ; $56e0: $9e
    call nc, $c083                                ; $56e1: $d4 $83 $c0
    ld a, [hl]                                    ; $56e4: $7e
    jp hl                                         ; $56e5: $e9


    cp $e6                                        ; $56e6: $fe $e6
    jr nc, @-$7e                                  ; $56e8: $30 $80

    rst $18                                       ; $56ea: $df
    adc h                                         ; $56eb: $8c
    pop bc                                        ; $56ec: $c1
    ld b, l                                       ; $56ed: $45
    ret nz                                        ; $56ee: $c0

    add d                                         ; $56ef: $82
    pop hl                                        ; $56f0: $e1
    and b                                         ; $56f1: $a0
    and b                                         ; $56f2: $a0
    ld a, d                                       ; $56f3: $7a
    push hl                                       ; $56f4: $e5
    ld hl, sp-$3c                                 ; $56f5: $f8 $c4
    add b                                         ; $56f7: $80
    add b                                         ; $56f8: $80
    rst $18                                       ; $56f9: $df
    adc h                                         ; $56fa: $8c
    jp $e482                                      ; $56fb: $c3 $82 $e4


    cp e                                          ; $56fe: $bb
    pop bc                                        ; $56ff: $c1
    ld a, d                                       ; $5700: $7a
    ld [$df80], a                                 ; $5701: $ea $80 $df
    add [hl]                                      ; $5704: $86
    add $da                                       ; $5705: $c6 $da
    rlca                                          ; $5707: $07
    db $db                                        ; $5708: $db
    ret nc                                        ; $5709: $d0

    pop de                                        ; $570a: $d1
    cp a                                          ; $570b: $bf
    pop bc                                        ; $570c: $c1
    ld hl, sp-$1f                                 ; $570d: $f8 $e1
    db $fc                                        ; $570f: $fc
    db $e3                                        ; $5710: $e3
    ld l, [hl]                                    ; $5711: $6e
    push bc                                       ; $5712: $c5
    add b                                         ; $5713: $80
    db $dd                                        ; $5714: $dd
    ld b, $86                                     ; $5715: $06 $86
    push bc                                       ; $5717: $c5
    jp nc, $c3d3                                  ; $5718: $d2 $d3 $c3

    ld [c], a                                     ; $571b: $e2
    ld hl, sp-$1f                                 ; $571c: $f8 $e1
    db $fc                                        ; $571e: $fc
    ld [c], a                                     ; $571f: $e2
    ld l, [hl]                                    ; $5720: $6e
    jp $df80                                      ; $5721: $c3 $80 $df


    ld e, $86                                     ; $5724: $1e $86
    jp $d1d0                                      ; $5726: $c3 $d0 $d1


    call nc, Call_000_3ed5                        ; $5729: $d4 $d5 $3e
    and b                                         ; $572c: $a0
    cp e                                          ; $572d: $bb
    ldh [$f8], a                                  ; $572e: $e0 $f8
    pop hl                                        ; $5730: $e1
    dec de                                        ; $5731: $1b
    call nc, Call_061_7ed5                        ; $5732: $d4 $d5 $7e
    db $e3                                        ; $5735: $e3
    jp c, $80db                                   ; $5736: $da $db $80

    sbc $86                                       ; $5739: $de $86
    call nz, $e18a                                ; $573b: $c4 $8a $e1
    inc e                                         ; $573e: $1c
    cp $80                                        ; $573f: $fe $80
    cp e                                          ; $5741: $bb
    ldh [$9f], a                                  ; $5742: $e0 $9f
    and d                                         ; $5744: $a2
    sbc a                                         ; $5745: $9f
    or a                                          ; $5746: $b7
    db $e3                                        ; $5747: $e3
    halt                                          ; $5748: $76
    rst $00                                       ; $5749: $c7
    nop                                           ; $574a: $00
    or a                                          ; $574b: $b7
    cp h                                          ; $574c: $bc
    add [hl]                                      ; $574d: $86
    call nz, $e182                                ; $574e: $c4 $82 $e1
    sbc a                                         ; $5751: $9f
    and d                                         ; $5752: $a2
    sbc l                                         ; $5753: $9d
    sbc l                                         ; $5754: $9d
    add $e0                                       ; $5755: $c6 $e0
    sbc a                                         ; $5757: $9f
    rlca                                          ; $5758: $07
    sbc h                                         ; $5759: $9c
    xor [hl]                                      ; $575a: $ae
    sbc h                                         ; $575b: $9c
    cp a                                          ; $575c: $bf
    ldh [$7e], a                                  ; $575d: $e0 $7e
    push hl                                       ; $575f: $e5
    ld a, d                                       ; $5760: $7a
    call $d386                                    ; $5761: $cd $86 $d3
    inc b                                         ; $5764: $04
    ldh [rIE], a                                  ; $5765: $e0 $ff
    sbc a                                         ; $5767: $9f
    sbc h                                         ; $5768: $9c
    ld b, [hl]                                    ; $5769: $46
    xor [hl]                                      ; $576a: $ae
    ld b, [hl]                                    ; $576b: $46
    sbc h                                         ; $576c: $9c
    sbc l                                         ; $576d: $9d
    sbc l                                         ; $576e: $9d
    rlca                                          ; $576f: $07
    sbc h                                         ; $5770: $9c
    ld b, [hl]                                    ; $5771: $46
    xor a                                         ; $5772: $af
    cp a                                          ; $5773: $bf
    ld [c], a                                     ; $5774: $e2
    ld a, [hl]                                    ; $5775: $7e
    rst $20                                       ; $5776: $e7
    nop                                           ; $5777: $00

jr_061_5778:
    or [hl]                                       ; $5778: $b6
    add [hl]                                      ; $5779: $86
    rst $00                                       ; $577a: $c7
    add d                                         ; $577b: $82
    ldh [rWX], a                                  ; $577c: $e0 $4b
    sbc h                                         ; $577e: $9c
    xor [hl]                                      ; $577f: $ae
    rst $00                                       ; $5780: $c7
    ldh [rDMA], a                                 ; $5781: $e0 $46
    rst $38                                       ; $5783: $ff
    ldh [$f8], a                                  ; $5784: $e0 $f8
    ldh [rDMA], a                                 ; $5786: $e0 $46
    ld a, [hl]                                    ; $5788: $7e
    db $e3                                        ; $5789: $e3
    jr jr_061_5778                                ; $578a: $18 $ec

    and e                                         ; $578c: $a3
    nop                                           ; $578d: $00
    or a                                          ; $578e: $b7
    add [hl]                                      ; $578f: $86
    ret z                                         ; $5790: $c8

    and b                                         ; $5791: $a0
    sbc [hl]                                      ; $5792: $9e
    jp z, $c7e0                                   ; $5793: $ca $e0 $c7

    ldh [$be], a                                  ; $5796: $e0 $be
    ldh [$8e], a                                  ; $5798: $e0 $8e
    ld hl, sp-$20                                 ; $579a: $f8 $e0
    ld b, [hl]                                    ; $579c: $46
    ld b, [hl]                                    ; $579d: $46
    sbc [hl]                                      ; $579e: $9e
    ld l, [hl]                                    ; $579f: $6e
    and l                                         ; $57a0: $a5
    add b                                         ; $57a1: $80
    reti                                          ; $57a2: $d9


    add [hl]                                      ; $57a3: $86
    ret                                           ; $57a4: $c9


    sbc [hl]                                      ; $57a5: $9e
    nop                                           ; $57a6: $00
    add l                                         ; $57a7: $85
    pop hl                                        ; $57a8: $e1
    jp $7ae4                                      ; $57a9: $c3 $e4 $7a


    ldh [$fd], a                                  ; $57ac: $e0 $fd
    ret nz                                        ; $57ae: $c0

    db $fc                                        ; $57af: $fc
    and e                                         ; $57b0: $a3
    nop                                           ; $57b1: $00
    cp b                                          ; $57b2: $b8
    add [hl]                                      ; $57b3: $86
    ret                                           ; $57b4: $c9


    ld [bc], a                                    ; $57b5: $02
    ldh [rP1], a                                  ; $57b6: $e0 $00
    rst $38                                       ; $57b8: $ff
    ld [$c0bc], a                                 ; $57b9: $ea $bc $c0
    ld a, [hl]                                    ; $57bc: $7e
    ret z                                         ; $57bd: $c8

    add b                                         ; $57be: $80
    ld [hl], c                                    ; $57bf: $71
    add [hl]                                      ; $57c0: $86
    ret z                                         ; $57c1: $c8

    ld c, l                                       ; $57c2: $4d
    ret nz                                        ; $57c3: $c0

    pop bc                                        ; $57c4: $c1
    jp hl                                         ; $57c5: $e9


    ld a, [$07c1]                                 ; $57c6: $fa $c1 $07
    xor a                                         ; $57c9: $af
    xor [hl]                                      ; $57ca: $ae
    and c                                         ; $57cb: $a1
    db $fc                                        ; $57cc: $fc
    and e                                         ; $57cd: $a3
    add b                                         ; $57ce: $80
    sub $08                                       ; $57cf: $d6 $08
    ret z                                         ; $57d1: $c8

    add e                                         ; $57d2: $83
    push hl                                       ; $57d3: $e5
    pop bc                                        ; $57d4: $c1
    jp nz, $ff02                                  ; $57d5: $c2 $02 $ff

    call nz, $feaf                                ; $57d8: $c4 $af $fe
    ret nz                                        ; $57db: $c0

    ld l, [hl]                                    ; $57dc: $6e
    and b                                         ; $57dd: $a0
    xor c                                         ; $57de: $a9
    ld h, c                                       ; $57df: $61
    add b                                         ; $57e0: $80
    halt                                          ; $57e1: $76
    inc c                                         ; $57e2: $0c
    add c                                         ; $57e3: $81
    rst $08                                       ; $57e4: $cf
    and c                                         ; $57e5: $a1
    inc a                                         ; $57e6: $3c
    add l                                         ; $57e7: $85
    ret nz                                        ; $57e8: $c0

    inc bc                                        ; $57e9: $03
    push hl                                       ; $57ea: $e5
    ld b, l                                       ; $57eb: $45
    ld c, b                                       ; $57ec: $48
    ld c, b                                       ; $57ed: $48
    ld b, l                                       ; $57ee: $45
    cp $c6                                        ; $57ef: $fe $c6
    ld l, [hl]                                    ; $57f1: $6e
    and b                                         ; $57f2: $a0
    add b                                         ; $57f3: $80
    cp l                                          ; $57f4: $bd
    xor [hl]                                      ; $57f5: $ae
    ld c, c                                       ; $57f6: $49
    adc e                                         ; $57f7: $8b
    adc d                                         ; $57f8: $8a
    ld h, c                                       ; $57f9: $61
    rst $08                                       ; $57fa: $cf
    and b                                         ; $57fb: $a0
    adc l                                         ; $57fc: $8d
    pop bc                                        ; $57fd: $c1
    ld b, h                                       ; $57fe: $44
    pop bc                                        ; $57ff: $c1
    jp nz, Jump_061_52e0                          ; $5800: $c2 $e0 $52

    add e                                         ; $5803: $83
    ld h, c                                       ; $5804: $61
    ld e, h                                       ; $5805: $5c
    cp a                                          ; $5806: $bf
    db $e3                                        ; $5807: $e3
    ei                                            ; $5808: $fb
    and e                                         ; $5809: $a3
    cp l                                          ; $580a: $bd
    xor [hl]                                      ; $580b: $ae
    db $db                                        ; $580c: $db
    ld c, c                                       ; $580d: $49
    adc d                                         ; $580e: $8a
    add e                                         ; $580f: $83
    sbc a                                         ; $5810: $9f
    db $fd                                        ; $5811: $fd
    sbc h                                         ; $5812: $9c
    ld c, c                                       ; $5813: $49
    add $51                                       ; $5814: $c6 $51
    ld e, [hl]                                    ; $5816: $5e
    ld d, d                                       ; $5817: $52
    inc l                                         ; $5818: $2c
    dec l                                         ; $5819: $2d
    ld b, a                                       ; $581a: $47
    ld bc, $7655                                  ; $581b: $01 $55 $76
    call nz, $c27c                                ; $581e: $c4 $7c $c2
    dec hl                                        ; $5821: $2b
    ld h, c                                       ; $5822: $61
    ld l, [hl]                                    ; $5823: $6e
    ld l, c                                       ; $5824: $69
    adc h                                         ; $5825: $8c
    ld l, c                                       ; $5826: $69
    add [hl]                                      ; $5827: $86
    and a                                         ; $5828: $a7
    ld c, c                                       ; $5829: $49
    call nz, Call_061_45ff                        ; $582a: $c4 $ff $45
    ld e, e                                       ; $582d: $5b
    dec l                                         ; $582e: $2d
    jr nz, @+$34                                  ; $582f: $20 $32

    ld d, [hl]                                    ; $5831: $56
    ld d, [hl]                                    ; $5832: $56
    ld b, l                                       ; $5833: $45
    ld [bc], a                                    ; $5834: $02
    or $c4                                        ; $5835: $f6 $c4
    sbc [hl]                                      ; $5837: $9e
    ld l, h                                       ; $5838: $6c
    add e                                         ; $5839: $83
    ld a, d                                       ; $583a: $7a
    jp z, $698c                                   ; $583b: $ca $8c $69

    nop                                           ; $583e: $00
    db $e3                                        ; $583f: $e3
    ld a, [hl]                                    ; $5840: $7e
    ldh [rWX], a                                  ; $5841: $e0 $4b
    and b                                         ; $5843: $a0
    cp $c1                                        ; $5844: $fe $c1
    ld [c], a                                     ; $5846: $e2
    ld b, a                                       ; $5847: $47
    ld d, l                                       ; $5848: $55
    ld l, $20                                     ; $5849: $2e $20
    ld l, $4f                                     ; $584b: $2e $4f
    ld d, d                                       ; $584d: $52
    add hl, bc                                    ; $584e: $09
    ld b, l                                       ; $584f: $45
    or h                                          ; $5850: $b4
    and c                                         ; $5851: $a1
    ld [hl], h                                    ; $5852: $74
    and b                                         ; $5853: $a0
    and c                                         ; $5854: $a1
    ld [hl], h                                    ; $5855: $74
    add d                                         ; $5856: $82
    ld l, [hl]                                    ; $5857: $6e
    ld h, h                                       ; $5858: $64
    add b                                         ; $5859: $80
    ret nc                                        ; $585a: $d0

    ld a, [hl]                                    ; $585b: $7e
    call Call_061_447f                            ; $585c: $cd $7f $44
    ld d, h                                       ; $585f: $54
    ld d, [hl]                                    ; $5860: $56
    ld a, [hl+]                                   ; $5861: $2a
    ld h, $21                                     ; $5862: $26 $21
    ld b, l                                       ; $5864: $45
    cp [hl]                                       ; $5865: $be
    jp $7140                                      ; $5866: $c3 $40 $71


    and b                                         ; $5869: $a0
    ld sp, hl                                     ; $586a: $f9
    add d                                         ; $586b: $82
    ld l, d                                       ; $586c: $6a
    ld b, l                                       ; $586d: $45
    nop                                           ; $586e: $00
    or d                                          ; $586f: $b2
    ld a, [hl]                                    ; $5870: $7e
    push hl                                       ; $5871: $e5
    ret nz                                        ; $5872: $c0

    and d                                         ; $5873: $a2
    xor [hl]                                      ; $5874: $ae
    cp a                                          ; $5875: $bf
    ldh [$8f], a                                  ; $5876: $e0 $8f
    add hl, sp                                    ; $5878: $39
    dec [hl]                                      ; $5879: $35
    inc a                                         ; $587a: $3c
    ld d, l                                       ; $587b: $55
    add b                                         ; $587c: $80
    ldh [$f8], a                                  ; $587d: $e0 $f8
    and h                                         ; $587f: $a4
    ld a, d                                       ; $5880: $7a
    and [hl]                                      ; $5881: $a6
    jp c, $dbf9                                   ; $5882: $da $f9 $db

    nop                                           ; $5885: $00
    cp l                                          ; $5886: $bd
    ei                                            ; $5887: $fb
    jp Jump_000_3a44                              ; $5888: $c3 $44 $3a


    dec [hl]                                      ; $588b: $35
    dec [hl]                                      ; $588c: $35
    add hl, sp                                    ; $588d: $39
    add b                                         ; $588e: $80
    pop bc                                        ; $588f: $c1
    push hl                                       ; $5890: $e5
    cp c                                          ; $5891: $b9
    add d                                         ; $5892: $82
    halt                                          ; $5893: $76
    ld h, e                                       ; $5894: $63
    nop                                           ; $5895: $00
    or l                                          ; $5896: $b5
    adc [hl]                                      ; $5897: $8e
    ld b, c                                       ; $5898: $41
    add [hl]                                      ; $5899: $86
    ld h, c                                       ; $589a: $61
    inc b                                         ; $589b: $04
    ld h, b                                       ; $589c: $60
    and c                                         ; $589d: $a1
    ld a, $40                                     ; $589e: $3e $40
    pop bc                                        ; $58a0: $c1
    ld [hl], $35                                  ; $58a1: $36 $35
    dec [hl]                                      ; $58a3: $35
    dec [hl]                                      ; $58a4: $35
    ld a, [hl-]                                   ; $58a5: $3a
    rst $38                                       ; $58a6: $ff
    and c                                         ; $58a7: $a1
    cp b                                          ; $58a8: $b8
    add d                                         ; $58a9: $82
    add e                                         ; $58aa: $83
    sbc h                                         ; $58ab: $9c
    sbc a                                         ; $58ac: $9f
    ld l, d                                       ; $58ad: $6a
    ld h, c                                       ; $58ae: $61
    ld a, d                                       ; $58af: $7a
    ld l, e                                       ; $58b0: $6b
    ld b, $4f                                     ; $58b1: $06 $4f
    db $10                                        ; $58b3: $10
    ld h, h                                       ; $58b4: $64
    cp a                                          ; $58b5: $bf
    add c                                         ; $58b6: $81
    ld b, b                                       ; $58b7: $40
    nop                                           ; $58b8: $00
    pop bc                                        ; $58b9: $c1
    ldh [$c0], a                                  ; $58ba: $e0 $c0
    db $e3                                        ; $58bc: $e3
    ld a, e                                       ; $58bd: $7b
    add c                                         ; $58be: $81
    add d                                         ; $58bf: $82
    and $80                                       ; $58c0: $e6 $80
    ld a, c                                       ; $58c2: $79
    ld a, [hl]                                    ; $58c3: $7e
    and d                                         ; $58c4: $a2
    inc c                                         ; $58c5: $0c
    ld h, b                                       ; $58c6: $60
    cp a                                          ; $58c7: $bf
    add d                                         ; $58c8: $82
    dec c                                         ; $58c9: $0d
    ld b, l                                       ; $58ca: $45
    ld b, c                                       ; $58cb: $41
    ldh [$35], a                                  ; $58cc: $e0 $35
    add hl, sp                                    ; $58ce: $39
    add hl, sp                                    ; $58cf: $39
    and h                                         ; $58d0: $a4
    add d                                         ; $58d1: $82
    rst $20                                       ; $58d2: $e7
    add b                                         ; $58d3: $80
    ld a, c                                       ; $58d4: $79
    sub d                                         ; $58d5: $92
    inc hl                                        ; $58d6: $23
    cp [hl]                                       ; $58d7: $be
    ld a, $c5                                     ; $58d8: $3e $c5
    add hl, sp                                    ; $58da: $39
    dec [hl]                                      ; $58db: $35
    dec [hl]                                      ; $58dc: $35
    inc a                                         ; $58dd: $3c
    ld b, h                                       ; $58de: $44
    rst $38                                       ; $58df: $ff
    ld h, d                                       ; $58e0: $62
    sbc h                                         ; $58e1: $9c
    ret nz                                        ; $58e2: $c0

    inc [hl]                                      ; $58e3: $34
    ld h, b                                       ; $58e4: $60
    ld a, d                                       ; $58e5: $7a
    ld b, h                                       ; $58e6: $44
    add b                                         ; $58e7: $80
    jr jr_061_58f2                                ; $58e8: $18 $08

    ld b, h                                       ; $58ea: $44
    ld b, h                                       ; $58eb: $44
    ld h, d                                       ; $58ec: $62
    ld a, $c2                                     ; $58ed: $3e $c2
    inc a                                         ; $58ef: $3c
    dec [hl]                                      ; $58f0: $35
    inc bc                                        ; $58f1: $03

jr_061_58f2:
    dec [hl]                                      ; $58f2: $35
    ld b, b                                       ; $58f3: $40
    nop                                           ; $58f4: $00
    add h                                         ; $58f5: $84
    ld a, [hl]                                    ; $58f6: $7e
    ld h, l                                       ; $58f7: $65
    add b                                         ; $58f8: $80
    rla                                           ; $58f9: $17
    ld [$4445], sp                                ; $58fa: $08 $45 $44
    ld h, d                                       ; $58fd: $62
    ld b, [hl]                                    ; $58fe: $46
    ld h, d                                       ; $58ff: $62
    ld d, $ff                                     ; $5900: $16 $ff
    ret nz                                        ; $5902: $c0

    inc a                                         ; $5903: $3c
    ld b, h                                       ; $5904: $44
    dec sp                                        ; $5905: $3b
    ld h, c                                       ; $5906: $61
    and c                                         ; $5907: $a1
    ld b, l                                       ; $5908: $45
    and c                                         ; $5909: $a1
    nop                                           ; $590a: $00
    ld e, l                                       ; $590b: $5d
    ld a, [hl]                                    ; $590c: $7e
    and l                                         ; $590d: $a5
    ld bc, $bfa1                                  ; $590e: $01 $a1 $bf
    add d                                         ; $5911: $82
    ld b, c                                       ; $5912: $41
    ld h, c                                       ; $5913: $61
    add b                                         ; $5914: $80
    ldh [$81], a                                  ; $5915: $e0 $81
    jp nz, $a345                                  ; $5917: $c2 $45 $a3

    halt                                          ; $591a: $76
    ld hl, $1d80                                  ; $591b: $21 $80 $1d
    ld [hl], d                                    ; $591e: $72
    db $10                                        ; $591f: $10
    ld hl, $089e                                  ; $5920: $21 $9e $08
    ld h, d                                       ; $5923: $62
    rst $38                                       ; $5924: $ff
    add d                                         ; $5925: $82
    ld a, [hl-]                                   ; $5926: $3a
    dec [hl]                                      ; $5927: $35
    add hl, sp                                    ; $5928: $39
    cp a                                          ; $5929: $bf
    ld h, d                                       ; $592a: $62
    add e                                         ; $592b: $83
    sbc h                                         ; $592c: $9c
    sbc a                                         ; $592d: $9f
    or c                                          ; $592e: $b1
    jr nz, @-$12                                  ; $592f: $20 $ec

    inc h                                         ; $5931: $24
    nop                                           ; $5932: $00
    ld e, d                                       ; $5933: $5a
    ld a, [hl]                                    ; $5934: $7e
    add e                                         ; $5935: $83
    ld [$3966], sp                                ; $5936: $08 $66 $39
    ld bc, $0136                                  ; $5939: $01 $36 $01
    add b                                         ; $593c: $80
    ld b, e                                       ; $593d: $43
    call nz, Call_061_427e                        ; $593e: $c4 $7e $42
    nop                                           ; $5941: $00
    ld e, a                                       ; $5942: $5f
    inc b                                         ; $5943: $04
    ld b, e                                       ; $5944: $43
    cp $65                                        ; $5945: $fe $65
    ld b, h                                       ; $5947: $44
    xor c                                         ; $5948: $a9
    ret nz                                        ; $5949: $c0

    nop                                           ; $594a: $00
    ld e, a                                       ; $594b: $5f
    ld c, l                                       ; $594c: $4d
    ld bc, $827e                                  ; $594d: $01 $7e $82
    jp $8b21                                      ; $5950: $c3 $21 $8b


    add e                                         ; $5953: $83
    nop                                           ; $5954: $00
    ld h, h                                       ; $5955: $64
    ld b, [hl]                                    ; $5956: $46
    xor [hl]                                      ; $5957: $ae
    ldh a, [$bd]                                  ; $5958: $f0 $bd
    pop bc                                        ; $595a: $c1
    nop                                           ; $595b: $00
    ld e, a                                       ; $595c: $5f
    add d                                         ; $595d: $82
    ld h, $c3                                     ; $595e: $26 $c3
    jr nz, jr_061_59a7                            ; $5960: $20 $45

    ld b, e                                       ; $5962: $43
    xor a                                         ; $5963: $af
    ld b, e                                       ; $5964: $43
    rla                                           ; $5965: $17
    ld b, e                                       ; $5966: $43
    ld b, c                                       ; $5967: $41
    ld b, e                                       ; $5968: $43
    rst $38                                       ; $5969: $ff
    ld [hl+], a                                   ; $596a: $22
    xor [hl]                                      ; $596b: $ae
    rst $38                                       ; $596c: $ff
    ld b, b                                       ; $596d: $40
    halt                                          ; $596e: $76
    ld bc, $5b00                                  ; $596f: $01 $00 $5b
    cp $fc                                        ; $5972: $fe $fc
    ld h, a                                       ; $5974: $67
    and c                                         ; $5975: $a1
    ld b, [hl]                                    ; $5976: $46
    xor a                                         ; $5977: $af
    ld b, l                                       ; $5978: $45
    ld [hl], $3b                                  ; $5979: $36 $3b
    dec [hl]                                      ; $597b: $35
    dec c                                         ; $597c: $0d
    dec sp                                        ; $597d: $3b
    db $fd                                        ; $597e: $fd
    ldh [$36], a                                  ; $597f: $e0 $36
    ld b, l                                       ; $5981: $45
    cp d                                          ; $5982: $ba
    ld hl, $6200                                  ; $5983: $21 $00 $62
    nop                                           ; $5986: $00
    ld e, d                                       ; $5987: $5a
    ld a, d                                       ; $5988: $7a
    ld l, d                                       ; $5989: $6a
    ld e, [hl]                                    ; $598a: $5e
    ret nz                                        ; $598b: $c0

    jr nz, jr_061_59d2                            ; $598c: $20 $44

    inc a                                         ; $598e: $3c
    and h                                         ; $598f: $a4
    ld h, h                                       ; $5990: $64
    rst $38                                       ; $5991: $ff
    ldh [$a5], a                                  ; $5992: $e0 $a5
    ld a, [hl]                                    ; $5994: $7e
    and c                                         ; $5995: $a1
    ldh a, [$fd]                                  ; $5996: $f0 $fd
    inc bc                                        ; $5998: $03
    nop                                           ; $5999: $00
    ld e, c                                       ; $599a: $59
    ld a, d                                       ; $599b: $7a
    ld l, h                                       ; $599c: $6c
    add b                                         ; $599d: $80
    jr nz, jr_061_59e2                            ; $599e: $20 $42

    dec [hl]                                      ; $59a0: $35
    ld l, c                                       ; $59a1: $69
    and e                                         ; $59a2: $a3
    ccf                                           ; $59a3: $3f
    dec [hl]                                      ; $59a4: $35
    dec [hl]                                      ; $59a5: $35
    and e                                         ; $59a6: $a3

jr_061_59a7:
    ld l, d                                       ; $59a7: $6a
    dec [hl]                                      ; $59a8: $35
    ld b, d                                       ; $59a9: $42
    ld b, c                                       ; $59aa: $41
    ld b, d                                       ; $59ab: $42
    cp a                                          ; $59ac: $bf
    and c                                         ; $59ad: $a1
    nop                                           ; $59ae: $00
    add [hl]                                      ; $59af: $86
    ld l, c                                       ; $59b0: $69
    add b                                         ; $59b1: $80
    dec d                                         ; $59b2: $15
    ld a, d                                       ; $59b3: $7a
    ld b, l                                       ; $59b4: $45
    ret nz                                        ; $59b5: $c0

    pop hl                                        ; $59b6: $e1
    add b                                         ; $59b7: $80
    add c                                         ; $59b8: $81
    ret nz                                        ; $59b9: $c0

    ld [c], a                                     ; $59ba: $e2
    inc b                                         ; $59bb: $04
    ld h, e                                       ; $59bc: $63
    add h                                         ; $59bd: $84
    ld b, b                                       ; $59be: $40
    ld a, b                                       ; $59bf: $78
    nop                                           ; $59c0: $00
    cp e                                          ; $59c1: $bb
    ld a, d                                       ; $59c2: $7a
    ld h, l                                       ; $59c3: $65
    ld a, [hl]                                    ; $59c4: $7e
    ld h, d                                       ; $59c5: $62
    ld b, h                                       ; $59c6: $44
    inc a                                         ; $59c7: $3c
    ld l, e                                       ; $59c8: $6b
    ld [hl], c                                    ; $59c9: $71
    rst $38                                       ; $59ca: $ff
    ldh [rSTAT], a                                ; $59cb: $e0 $41
    ld l, l                                       ; $59cd: $6d
    ld a, $a1                                     ; $59ce: $3e $a1
    ld [bc], a                                    ; $59d0: $02
    ld b, [hl]                                    ; $59d1: $46

jr_061_59d2:
    nop                                           ; $59d2: $00
    cp c                                          ; $59d3: $b9
    ld a, d                                       ; $59d4: $7a
    ld h, a                                       ; $59d5: $67
    db $fc                                        ; $59d6: $fc
    ld h, c                                       ; $59d7: $61
    and c                                         ; $59d8: $a1
    ret nz                                        ; $59d9: $c0

    rst $00                                       ; $59da: $c7
    ret nz                                        ; $59db: $c0

    ld b, $64                                     ; $59dc: $06 $64
    add h                                         ; $59de: $84
    ld b, c                                       ; $59df: $41
    add b                                         ; $59e0: $80
    add hl, de                                    ; $59e1: $19

jr_061_59e2:
    ld a, d                                       ; $59e2: $7a
    rlca                                          ; $59e3: $07
    ld a, d                                       ; $59e4: $7a
    ld [hl+], a                                   ; $59e5: $22
    ld b, b                                       ; $59e6: $40
    ret nz                                        ; $59e7: $c0

    ld b, c                                       ; $59e8: $41
    xor [hl]                                      ; $59e9: $ae
    nop                                           ; $59ea: $00
    ld b, b                                       ; $59eb: $40
    ret nz                                        ; $59ec: $c0

    pop bc                                        ; $59ed: $c1
    ld [c], a                                     ; $59ee: $e2
    pop bc                                        ; $59ef: $c1
    add c                                         ; $59f0: $81
    ld b, e                                       ; $59f1: $43
    ld l, $80                                     ; $59f2: $2e $80
    ld [hl], d                                    ; $59f4: $72
    sbc d                                         ; $59f5: $9a
    inc b                                         ; $59f6: $04
    inc a                                         ; $59f7: $3c
    add e                                         ; $59f8: $83
    ld b, a                                       ; $59f9: $47
    ld b, l                                       ; $59fa: $45
    ld b, b                                       ; $59fb: $40
    add [hl]                                      ; $59fc: $86
    ld [hl], b                                    ; $59fd: $70
    add b                                         ; $59fe: $80
    push de                                       ; $59ff: $d5
    ld a, d                                       ; $5a00: $7a
    ld b, c                                       ; $5a01: $41
    sub a                                         ; $5a02: $97
    ld hl, $2478                                  ; $5a03: $21 $78 $24
    add l                                         ; $5a06: $85
    and c                                         ; $5a07: $a1
    sbc [hl]                                      ; $5a08: $9e
    add [hl]                                      ; $5a09: $86
    ld [hl], c                                    ; $5a0a: $71
    nop                                           ; $5a0b: $00
    nop                                           ; $5a0c: $00
    or l                                          ; $5a0d: $b5
    ld a, [hl]                                    ; $5a0e: $7e
    ld h, d                                       ; $5a0f: $62
    ld a, l                                       ; $5a10: $7d
    ld b, [hl]                                    ; $5a11: $46
    push bc                                       ; $5a12: $c5
    and b                                         ; $5a13: $a0
    add l                                         ; $5a14: $85
    and b                                         ; $5a15: $a0
    add [hl]                                      ; $5a16: $86
    ld [hl], c                                    ; $5a17: $71
    add b                                         ; $5a18: $80
    push de                                       ; $5a19: $d5
    db $dd                                        ; $5a1a: $dd
    ld [bc], a                                    ; $5a1b: $02
    add b                                         ; $5a1c: $80
    ei                                            ; $5a1d: $fb
    dec h                                         ; $5a1e: $25
    or l                                          ; $5a1f: $b5
    ld bc, $a085                                  ; $5a20: $01 $85 $a0
    add [hl]                                      ; $5a23: $86
    ld [hl], c                                    ; $5a24: $71
    add b                                         ; $5a25: $80
    push de                                       ; $5a26: $d5
    ld a, [hl]                                    ; $5a27: $7e
    ld [$00ca], a                                 ; $5a28: $ea $ca $00
    sbc l                                         ; $5a2b: $9d
    ld b, b                                       ; $5a2c: $40
    ld b, $60                                     ; $5a2d: $06 $60
    add [hl]                                      ; $5a2f: $86
    ld [hl], c                                    ; $5a30: $71
    add b                                         ; $5a31: $80
    push de                                       ; $5a32: $d5
    ld e, e                                       ; $5a33: $5b
    inc b                                         ; $5a34: $04
    ld a, c                                       ; $5a35: $79
    inc h                                         ; $5a36: $24
    inc c                                         ; $5a37: $0c
    ld b, c                                       ; $5a38: $41
    and b                                         ; $5a39: $a0
    add [hl]                                      ; $5a3a: $86
    ld [hl], d                                    ; $5a3b: $72
    nop                                           ; $5a3c: $00
    nop                                           ; $5a3d: $00
    ld d, h                                       ; $5a3e: $54
    ld a, d                                       ; $5a3f: $7a
    ld h, [hl]                                    ; $5a40: $66
    ld a, c                                       ; $5a41: $79
    inc hl                                        ; $5a42: $23
    adc [hl]                                      ; $5a43: $8e
    inc hl                                        ; $5a44: $23
    add [hl]                                      ; $5a45: $86
    ld [hl], c                                    ; $5a46: $71
    add b                                         ; $5a47: $80
    ld [hl], d                                    ; $5a48: $72
    ld a, d                                       ; $5a49: $7a
    ld h, [hl]                                    ; $5a4a: $66
    db $fc                                        ; $5a4b: $fc
    push bc                                       ; $5a4c: $c5
    nop                                           ; $5a4d: $00
    adc [hl]                                      ; $5a4e: $8e
    inc hl                                        ; $5a4f: $23
    add [hl]                                      ; $5a50: $86
    ld [hl], c                                    ; $5a51: $71
    nop                                           ; $5a52: $00
    ld d, d                                       ; $5a53: $52
    ld a, d                                       ; $5a54: $7a
    adc $8e                                       ; $5a55: $ce $8e
    inc h                                         ; $5a57: $24
    add [hl]                                      ; $5a58: $86
    ld [hl], b                                    ; $5a59: $70
    nop                                           ; $5a5a: $00
    or l                                          ; $5a5b: $b5
    ld a, d                                       ; $5a5c: $7a
    jp z, $0c00                                   ; $5a5d: $ca $00 $0c

    ld b, h                                       ; $5a60: $44
    db $ec                                        ; $5a61: $ec
    and d                                         ; $5a62: $a2
    sub $f2                                       ; $5a63: $d6 $f2
    xor d                                         ; $5a65: $aa
    db $d3                                        ; $5a66: $d3
    ld a, d                                       ; $5a67: $7a
    add $f0                                       ; $5a68: $c6 $f0
    ld h, h                                       ; $5a6a: $64
    ld h, [hl]                                    ; $5a6b: $66
    ld bc, $df80                                  ; $5a6c: $01 $80 $df
    nop                                           ; $5a6f: $00
    ld a, d                                       ; $5a70: $7a
    ret nc                                        ; $5a71: $d0

    ld [hl], d                                    ; $5a72: $72
    and e                                         ; $5a73: $a3
    rst $00                                       ; $5a74: $c7
    add c                                         ; $5a75: $81
    ld b, e                                       ; $5a76: $43
    pop af                                        ; $5a77: $f1
    add b                                         ; $5a78: $80
    sub $7a                                       ; $5a79: $d6 $7a
    rst $00                                       ; $5a7b: $c7
    inc c                                         ; $5a7c: $0c
    or c                                          ; $5a7d: $b1
    add b                                         ; $5a7e: $80
    sbc $00                                       ; $5a7f: $de $00
    ld a, d                                       ; $5a81: $7a
    ret z                                         ; $5a82: $c8

    inc c                                         ; $5a83: $0c
    or c                                          ; $5a84: $b1
    add b                                         ; $5a85: $80
    sbc $f4                                       ; $5a86: $de $f4
    adc c                                         ; $5a88: $89
    rra                                           ; $5a89: $1f
    push af                                       ; $5a8a: $f5
    add b                                         ; $5a8b: $80
    call c, $85f4                                 ; $5a8c: $dc $f4 $85
    ld b, e                                       ; $5a8f: $43
    ld a, [$4400]                                 ; $5a90: $fa $00 $44
    nop                                           ; $5a93: $00
    nop                                           ; $5a94: $00
    nop                                           ; $5a95: $00
    nop                                           ; $5a96: $00
    pop bc                                        ; $5a97: $c1
    nop                                           ; $5a98: $00
    rst $38                                       ; $5a99: $ff
    rst $38                                       ; $5a9a: $ff
    rst $38                                       ; $5a9b: $ff
    rst $38                                       ; $5a9c: $ff
    rst $38                                       ; $5a9d: $ff
    rst $38                                       ; $5a9e: $ff
    rst $38                                       ; $5a9f: $ff
    rst $38                                       ; $5aa0: $ff
    rst $38                                       ; $5aa1: $ff
    rst $38                                       ; $5aa2: $ff
    nop                                           ; $5aa3: $00
    nop                                           ; $5aa4: $00
    ld bc, $fe80                                  ; $5aa5: $01 $80 $fe
    ldh [rIE], a                                  ; $5aa8: $e0 $ff
    rst $38                                       ; $5aaa: $ff
    rst $38                                       ; $5aab: $ff
    rst $38                                       ; $5aac: $ff
    rst $38                                       ; $5aad: $ff
    add sp, $00                                   ; $5aae: $e8 $00
    nop                                           ; $5ab0: $00
    nop                                           ; $5ab1: $00
    ld [bc], a                                    ; $5ab2: $02
    nop                                           ; $5ab3: $00
    inc hl                                        ; $5ab4: $23
    ld c, $02                                     ; $5ab5: $0e $02
    ld bc, $0f1c                                  ; $5ab7: $01 $1c $0f
    ld [bc], a                                    ; $5aba: $02
    ld [bc], a                                    ; $5abb: $02
    inc h                                         ; $5abc: $24
    rrca                                          ; $5abd: $0f
    ld [bc], a                                    ; $5abe: $02
    inc bc                                        ; $5abf: $03
    ld a, [de]                                    ; $5ac0: $1a
    db $10                                        ; $5ac1: $10
    ld [bc], a                                    ; $5ac2: $02
    inc b                                         ; $5ac3: $04
    dec e                                         ; $5ac4: $1d
    db $10                                        ; $5ac5: $10
    ld [bc], a                                    ; $5ac6: $02
    dec b                                         ; $5ac7: $05
    ld [hl+], a                                   ; $5ac8: $22
    db $10                                        ; $5ac9: $10
    ld [bc], a                                    ; $5aca: $02
    ld b, $1f                                     ; $5acb: $06 $1f
    ld de, $0702                                  ; $5acd: $11 $02 $07
    daa                                           ; $5ad0: $27
    inc de                                        ; $5ad1: $13
    ld [bc], a                                    ; $5ad2: $02
    ld [$1423], sp                                ; $5ad3: $08 $23 $14
    ld [bc], a                                    ; $5ad6: $02
    add hl, bc                                    ; $5ad7: $09
    jr z, jr_061_5aee                             ; $5ad8: $28 $14

    ld [bc], a                                    ; $5ada: $02
    ld a, [bc]                                    ; $5adb: $0a
    inc e                                         ; $5adc: $1c
    dec d                                         ; $5add: $15
    ld [bc], a                                    ; $5ade: $02
    dec bc                                        ; $5adf: $0b
    dec d                                         ; $5ae0: $15
    ld d, $02                                     ; $5ae1: $16 $02
    inc c                                         ; $5ae3: $0c
    inc d                                         ; $5ae4: $14
    rla                                           ; $5ae5: $17
    ld [bc], a                                    ; $5ae6: $02
    dec c                                         ; $5ae7: $0d
    add hl, de                                    ; $5ae8: $19
    rla                                           ; $5ae9: $17
    ld [bc], a                                    ; $5aea: $02
    ld c, $29                                     ; $5aeb: $0e $29
    rla                                           ; $5aed: $17

jr_061_5aee:
    ld [bc], a                                    ; $5aee: $02
    rrca                                          ; $5aef: $0f
    ld d, $18                                     ; $5af0: $16 $18
    ld [bc], a                                    ; $5af2: $02
    db $10                                        ; $5af3: $10
    ld h, $19                                     ; $5af4: $26 $19
    ld [bc], a                                    ; $5af6: $02
    ld de, $1a29                                  ; $5af7: $11 $29 $1a
    ld [bc], a                                    ; $5afa: $02
    ld [de], a                                    ; $5afb: $12
    dec de                                        ; $5afc: $1b
    inc e                                         ; $5afd: $1c
    ld [bc], a                                    ; $5afe: $02
    inc de                                        ; $5aff: $13
    dec hl                                        ; $5b00: $2b
    inc e                                         ; $5b01: $1c
    ld [bc], a                                    ; $5b02: $02
    inc d                                         ; $5b03: $14
    ld a, [hl+]                                   ; $5b04: $2a
    dec e                                         ; $5b05: $1d
    ld [bc], a                                    ; $5b06: $02
    dec d                                         ; $5b07: $15
    daa                                           ; $5b08: $27
    ld e, $02                                     ; $5b09: $1e $02
    ld d, $23                                     ; $5b0b: $16 $23
    jr nz, @+$04                                  ; $5b0d: $20 $02

    rla                                           ; $5b0f: $17
    jr @+$24                                      ; $5b10: $18 $22

    ld [bc], a                                    ; $5b12: $02
    jr jr_061_5b2b                                ; $5b13: $18 $16

    inc hl                                        ; $5b15: $23
    ld [bc], a                                    ; $5b16: $02
    add hl, de                                    ; $5b17: $19
    inc e                                         ; $5b18: $1c
    inc hl                                        ; $5b19: $23
    ld [bc], a                                    ; $5b1a: $02
    ld a, [de]                                    ; $5b1b: $1a
    dec d                                         ; $5b1c: $15
    inc h                                         ; $5b1d: $24
    ld [bc], a                                    ; $5b1e: $02
    dec de                                        ; $5b1f: $1b
    rla                                           ; $5b20: $17
    dec h                                         ; $5b21: $25
    ld [bc], a                                    ; $5b22: $02
    inc e                                         ; $5b23: $1c
    inc h                                         ; $5b24: $24
    dec h                                         ; $5b25: $25
    ld [bc], a                                    ; $5b26: $02
    dec e                                         ; $5b27: $1d
    dec de                                        ; $5b28: $1b
    daa                                           ; $5b29: $27
    ld [bc], a                                    ; $5b2a: $02

jr_061_5b2b:
    ld e, $27                                     ; $5b2b: $1e $27
    daa                                           ; $5b2d: $27
    ld [bc], a                                    ; $5b2e: $02
    rra                                           ; $5b2f: $1f
    add hl, de                                    ; $5b30: $19
    jr z, jr_061_5b35                             ; $5b31: $28 $02

    jr nz, jr_061_5b53                            ; $5b33: $20 $1e

jr_061_5b35:
    jr z, @+$04                                   ; $5b35: $28 $02

    ld hl, $2823                                  ; $5b37: $21 $23 $28
    ld [bc], a                                    ; $5b3a: $02
    ld [hl+], a                                   ; $5b3b: $22
    add hl, hl                                    ; $5b3c: $29
    jr z, jr_061_5b41                             ; $5b3d: $28 $02

    inc hl                                        ; $5b3f: $23
    ld a, [de]                                    ; $5b40: $1a

jr_061_5b41:
    add hl, hl                                    ; $5b41: $29
    ld [bc], a                                    ; $5b42: $02
    inc h                                         ; $5b43: $24
    jr z, jr_061_5b6f                             ; $5b44: $28 $29

    ld [bc], a                                    ; $5b46: $02
    dec h                                         ; $5b47: $25
    dec h                                         ; $5b48: $25
    ld a, [hl+]                                   ; $5b49: $2a
    ld [bc], a                                    ; $5b4a: $02
    ld h, $27                                     ; $5b4b: $26 $27
    dec hl                                        ; $5b4d: $2b
    ld [bc], a                                    ; $5b4e: $02
    daa                                           ; $5b4f: $27
    rra                                           ; $5b50: $1f
    jr nc, jr_061_5b55                            ; $5b51: $30 $02

jr_061_5b53:
    jr z, jr_061_5b71                             ; $5b53: $28 $1c

jr_061_5b55:
    ld sp, $2902                                  ; $5b55: $31 $02 $29
    ld [hl+], a                                   ; $5b58: $22
    ld sp, $2a02                                  ; $5b59: $31 $02 $2a
    ld e, $32                                     ; $5b5c: $1e $32
    ld [bc], a                                    ; $5b5e: $02
    dec hl                                        ; $5b5f: $2b
    inc h                                         ; $5b60: $24
    ld [hl-], a                                   ; $5b61: $32
    ld [bc], a                                    ; $5b62: $02
    inc l                                         ; $5b63: $2c
    jr nz, jr_061_5b99                            ; $5b64: $20 $33

    ld [bc], a                                    ; $5b66: $02
    dec l                                         ; $5b67: $2d
    inc hl                                        ; $5b68: $23
    inc sp                                        ; $5b69: $33
    ld [bc], a                                    ; $5b6a: $02
    ld l, $1f                                     ; $5b6b: $2e $1f
    inc [hl]                                      ; $5b6d: $34
    rst $38                                       ; $5b6e: $ff

jr_061_5b6f:
    rst $38                                       ; $5b6f: $ff
    rst $38                                       ; $5b70: $ff

jr_061_5b71:
    ld a, c                                       ; $5b71: $79
    ld e, e                                       ; $5b72: $5b
    ld l, b                                       ; $5b73: $68
    ld e, a                                       ; $5b74: $5f
    or b                                          ; $5b75: $b0
    ld h, h                                       ; $5b76: $64
    bit 4, h                                      ; $5b77: $cb $64
    rrca                                          ; $5b79: $0f
    dec c                                         ; $5b7a: $0d
    ld c, $0e                                     ; $5b7b: $0e $0e
    dec c                                         ; $5b7d: $0d
    rst $38                                       ; $5b7e: $ff
    ldh [$fa], a                                  ; $5b7f: $e0 $fa
    ldh [$fd], a                                  ; $5b81: $e0 $fd
    db $e3                                        ; $5b83: $e3
    db $f4                                        ; $5b84: $f4
    db $e3                                        ; $5b85: $e3
    nop                                           ; $5b86: $00
    ld [$e9e0], a                                 ; $5b87: $ea $e0 $e9
    pop hl                                        ; $5b8a: $e1
    ld a, [$e2ff]                                 ; $5b8b: $fa $ff $e2
    ld [c], a                                     ; $5b8e: $e2
    ret nc                                        ; $5b8f: $d0

    ld [c], a                                     ; $5b90: $e2
    ret nz                                        ; $5b91: $c0

    push hl                                       ; $5b92: $e5
    ldh a, [$e1]                                  ; $5b93: $f0 $e1

jr_061_5b95:
    rst $38                                       ; $5b95: $ff
    rst $38                                       ; $5b96: $ff
    ld a, b                                       ; $5b97: $78
    rst $20                                       ; $5b98: $e7

jr_061_5b99:
    and $90                                       ; $5b99: $e6 $90
    db $e4                                        ; $5b9b: $e4
    cp $e6                                        ; $5b9c: $fe $e6
    ld c, l                                       ; $5b9e: $4d
    ld c, $0e                                     ; $5b9f: $0e $0e
    ld c, l                                       ; $5ba1: $4d
    db $fc                                        ; $5ba2: $fc
    ldh [rBCPS], a                                ; $5ba3: $e0 $68
    rst $38                                       ; $5ba5: $ff
    rst $38                                       ; $5ba6: $ff
    cp [hl]                                       ; $5ba7: $be
    rst $20                                       ; $5ba8: $e7
    ld a, $e2                                     ; $5ba9: $3e $e2
    ld c, l                                       ; $5bab: $4d
    rst $38                                       ; $5bac: $ff
    ld [c], a                                     ; $5bad: $e2
    dec l                                         ; $5bae: $2d
    dec l                                         ; $5baf: $2d
    jr nc, jr_061_5b95                            ; $5bb0: $30 $e3

    cp h                                          ; $5bb2: $bc
    dec a                                         ; $5bb3: $3d
    rst $38                                       ; $5bb4: $ff
    ld b, e                                       ; $5bb5: $43
    jp hl                                         ; $5bb6: $e9


    dec c                                         ; $5bb7: $0d
    dec c                                         ; $5bb8: $0d
    ld l, l                                       ; $5bb9: $6d
    ld c, e                                       ; $5bba: $4b
    rst $38                                       ; $5bbb: $ff
    ldh [$0d], a                                  ; $5bbc: $e0 $0d
    add $fb                                       ; $5bbe: $c6 $fb
    ldh [rKEY1], a                                ; $5bc0: $e0 $4d
    dec l                                         ; $5bc2: $2d
    ld [hl], h                                    ; $5bc3: $74
    ld [c], a                                     ; $5bc4: $e2
    adc d                                         ; $5bc5: $8a
    rst $38                                       ; $5bc6: $ff
    ld a, $ea                                     ; $5bc7: $3e $ea
    ld l, l                                       ; $5bc9: $6d
    dec c                                         ; $5bca: $0d
    ld [hl], a                                    ; $5bcb: $77
    ld c, e                                       ; $5bcc: $4b
    dec hl                                        ; $5bcd: $2b
    dec bc                                        ; $5bce: $0b
    ret nz                                        ; $5bcf: $c0

    ld [c], a                                     ; $5bd0: $e2
    dec c                                         ; $5bd1: $0d
    ld c, l                                       ; $5bd2: $4d
    dec l                                         ; $5bd3: $2d
    ld b, c                                       ; $5bd4: $41
    rst $38                                       ; $5bd5: $ff
    cp $00                                        ; $5bd6: $fe $00
    db $ec                                        ; $5bd8: $ec
    dec c                                         ; $5bd9: $0d
    dec c                                         ; $5bda: $0d
    ld c, e                                       ; $5bdb: $4b
    dec c                                         ; $5bdc: $0d
    dec hl                                        ; $5bdd: $2b
    ld a, [bc]                                    ; $5bde: $0a
    ld l, d                                       ; $5bdf: $6a
    rst $00                                       ; $5be0: $c7
    dec bc                                        ; $5be1: $0b
    dec hl                                        ; $5be2: $2b
    dec bc                                        ; $5be3: $0b
    cp h                                          ; $5be4: $bc
    ldh [$bf], a                                  ; $5be5: $e0 $bf
    ldh [$6d], a                                  ; $5be7: $e0 $6d
    jp nz, Jump_061_4d4d                          ; $5be9: $c2 $4d $4d

    inc a                                         ; $5bec: $3c
    ld b, e                                       ; $5bed: $43
    rst $38                                       ; $5bee: $ff
    jp nz, Jump_061_4bc7                          ; $5bef: $c2 $c7 $4b

    dec hl                                        ; $5bf2: $2b
    ld a, [bc]                                    ; $5bf3: $0a
    ld a, [bc]                                    ; $5bf4: $0a
    pop bc                                        ; $5bf5: $c1
    ldh [$7b], a                                  ; $5bf6: $e0 $7b
    ld [c], a                                     ; $5bf8: $e2
    di                                            ; $5bf9: $f3
    ld c, l                                       ; $5bfa: $4d
    dec l                                         ; $5bfb: $2d
    halt                                          ; $5bfc: $76
    rst $18                                       ; $5bfd: $df
    jp nz, Jump_000_0bcd                          ; $5bfe: $c2 $cd $0b

    ld l, e                                       ; $5c01: $6b
    ld a, [bc]                                    ; $5c02: $0a
    ld a, [hl+]                                   ; $5c03: $2a
    inc e                                         ; $5c04: $1c
    add c                                         ; $5c05: $81
    ldh [$be], a                                  ; $5c06: $e0 $be
    pop hl                                        ; $5c08: $e1
    dec bc                                        ; $5c09: $0b
    ld c, e                                       ; $5c0a: $4b
    ld l, l                                       ; $5c0b: $6d
    ld a, d                                       ; $5c0c: $7a
    jp nz, $c176                                  ; $5c0d: $c2 $76 $c1

    rst $38                                       ; $5c10: $ff
    rst $38                                       ; $5c11: $ff
    db $fc                                        ; $5c12: $fc
    call z, $c6a3                                 ; $5c13: $cc $a3 $c6
    ldh [rOCPD], a                                ; $5c16: $e0 $6b
    ld c, e                                       ; $5c18: $4b
    dec hl                                        ; $5c19: $2b
    ld c, e                                       ; $5c1a: $4b
    ld c, e                                       ; $5c1b: $4b
    ld l, e                                       ; $5c1c: $6b
    dec c                                         ; $5c1d: $0d
    ld c, e                                       ; $5c1e: $4b
    add hl, sp                                    ; $5c1f: $39
    ldh [rWX], a                                  ; $5c20: $e0 $4b
    ld l, l                                       ; $5c22: $6d
    ld b, h                                       ; $5c23: $44
    ldh [$3a], a                                  ; $5c24: $e0 $3a
    ret nz                                        ; $5c26: $c0

    and a                                         ; $5c27: $a7
    and l                                         ; $5c28: $a5
    add b                                         ; $5c29: $80
    rst $18                                       ; $5c2a: $df
    sbc a                                         ; $5c2b: $9f
    dec c                                         ; $5c2c: $0d
    dec bc                                        ; $5c2d: $0b
    dec c                                         ; $5c2e: $0d
    dec bc                                        ; $5c2f: $0b
    ld c, e                                       ; $5c30: $4b
    cp [hl]                                       ; $5c31: $be
    ret nz                                        ; $5c32: $c0

    cp $c0                                        ; $5c33: $fe $c0
    ld a, [bc]                                    ; $5c35: $0a
    ld b, a                                       ; $5c36: $47
    ld a, [hl+]                                   ; $5c37: $2a
    ld c, e                                       ; $5c38: $4b
    ld c, e                                       ; $5c39: $4b
    inc a                                         ; $5c3a: $3c
    add $b6                                       ; $5c3b: $c6 $b6
    rst $18                                       ; $5c3d: $df
    ret nz                                        ; $5c3e: $c0

    rst $20                                       ; $5c3f: $e7
    dec c                                         ; $5c40: $0d
    pop bc                                        ; $5c41: $c1
    pop bc                                        ; $5c42: $c1
    add l                                         ; $5c43: $85
    dec hl                                        ; $5c44: $2b
    ld a, d                                       ; $5c45: $7a
    ret nz                                        ; $5c46: $c0

    dec hl                                        ; $5c47: $2b
    ret nz                                        ; $5c48: $c0

    ld [c], a                                     ; $5c49: $e2
    jp nz, $fdc0                                  ; $5c4a: $c2 $c0 $fd

    rst $18                                       ; $5c4d: $df
    ld a, [hl]                                    ; $5c4e: $7e
    and l                                         ; $5c4f: $a5
    ld c, l                                       ; $5c50: $4d
    rra                                           ; $5c51: $1f
    dec l                                         ; $5c52: $2d
    dec bc                                        ; $5c53: $0b
    dec bc                                        ; $5c54: $0b
    dec c                                         ; $5c55: $0d
    dec c                                         ; $5c56: $0d
    nop                                           ; $5c57: $00
    ld [c], a                                     ; $5c58: $e2
    cp a                                          ; $5c59: $bf
    jp z, $df7a                                   ; $5c5a: $ca $7a $df

    ld [$84c5], sp                                ; $5c5d: $08 $c5 $84
    cp a                                          ; $5c60: $bf
    ldh [$c0], a                                  ; $5c61: $e0 $c0
    push hl                                       ; $5c63: $e5
    dec bc                                        ; $5c64: $0b
    cp b                                          ; $5c65: $b8
    ldh [$bb], a                                  ; $5c66: $e0 $bb
    and c                                         ; $5c68: $a1
    db $eb                                        ; $5c69: $eb
    add h                                         ; $5c6a: $84
    ld a, l                                       ; $5c6b: $7d
    cp $10                                        ; $5c6c: $fe $10
    ld d, h                                       ; $5c6e: $54
    and e                                         ; $5c6f: $a3
    adc c                                         ; $5c70: $89
    and d                                         ; $5c71: $a2
    ret nz                                        ; $5c72: $c0

    db $e3                                        ; $5c73: $e3
    ld a, c                                       ; $5c74: $79
    and b                                         ; $5c75: $a0
    dec hl                                        ; $5c76: $2b
    db $fc                                        ; $5c77: $fc
    and h                                         ; $5c78: $a4
    ret nz                                        ; $5c79: $c0

    rst $38                                       ; $5c7a: $ff
    jp c, Jump_061_66e6                           ; $5c7b: $da $e6 $66

    ld c, b                                       ; $5c7e: $48
    and b                                         ; $5c7f: $a0
    ld l, e                                       ; $5c80: $6b
    ld l, e                                       ; $5c81: $6b
    ld bc, $7fe0                                  ; $5c82: $01 $e0 $7f
    pop hl                                        ; $5c85: $e1
    ld c, e                                       ; $5c86: $4b
    dec c                                         ; $5c87: $0d
    ld a, [hl]                                    ; $5c88: $7e
    db $e4                                        ; $5c89: $e4
    jr nc, jr_061_5cae                            ; $5c8a: $30 $22

    and l                                         ; $5c8c: $a5
    sbc a                                         ; $5c8d: $9f
    add l                                         ; $5c8e: $85
    jp Jump_000_08b3                              ; $5c8f: $c3 $b3 $08


    add l                                         ; $5c92: $85
    ld c, e                                       ; $5c93: $4b
    ld l, e                                       ; $5c94: $6b
    rst $38                                       ; $5c95: $ff
    jp nz, $a137                                  ; $5c96: $c2 $37 $a1

    ld b, e                                       ; $5c99: $43
    ld l, e                                       ; $5c9a: $6b
    ld l, e                                       ; $5c9b: $6b
    ld a, [hl]                                    ; $5c9c: $7e
    jp hl                                         ; $5c9d: $e9


    db $dd                                        ; $5c9e: $dd
    ld h, [hl]                                    ; $5c9f: $66
    ld b, b                                       ; $5ca0: $40
    or $bc                                        ; $5ca1: $f6 $bc
    and h                                         ; $5ca3: $a4
    ld c, e                                       ; $5ca4: $4b
    cp a                                          ; $5ca5: $bf
    db $e3                                        ; $5ca6: $e3
    rrca                                          ; $5ca7: $0f
    dec hl                                        ; $5ca8: $2b
    dec bc                                        ; $5ca9: $0b
    ld l, e                                       ; $5caa: $6b
    ld l, e                                       ; $5cab: $6b
    db $fc                                        ; $5cac: $fc
    ret nz                                        ; $5cad: $c0

jr_061_5cae:
    ld b, b                                       ; $5cae: $40
    jp $e4fd                                      ; $5caf: $c3 $fd $e4


    ld [hl], $da                                  ; $5cb2: $36 $da
    nop                                           ; $5cb4: $00
    cp h                                          ; $5cb5: $bc
    and e                                         ; $5cb6: $a3
    ld a, e                                       ; $5cb7: $7b
    and b                                         ; $5cb8: $a0
    ld a, [hl]                                    ; $5cb9: $7e
    db $e3                                        ; $5cba: $e3
    cp [hl]                                       ; $5cbb: $be
    ld [c], a                                     ; $5cbc: $e2
    db $ed                                        ; $5cbd: $ed
    jp $eb5d                                      ; $5cbe: $c3 $5d $eb


    dec hl                                        ; $5cc1: $2b
    jp nz, $8cee                                  ; $5cc2: $c2 $ee $8c

    nop                                           ; $5cc5: $00
    cp l                                          ; $5cc6: $bd
    add l                                         ; $5cc7: $85
    cp h                                          ; $5cc8: $bc
    and b                                         ; $5cc9: $a0
    ld a, [hl-]                                   ; $5cca: $3a
    and b                                         ; $5ccb: $a0
    ld a, l                                       ; $5ccc: $7d
    jp $a1f8                                      ; $5ccd: $c3 $f8 $a1


    db $fc                                        ; $5cd0: $fc
    pop bc                                        ; $5cd1: $c1
    rst $28                                       ; $5cd2: $ef
    ld h, c                                       ; $5cd3: $61
    db $f4                                        ; $5cd4: $f4
    and d                                         ; $5cd5: $a2
    nop                                           ; $5cd6: $00
    dec h                                         ; $5cd7: $25
    ld h, l                                       ; $5cd8: $65
    di                                            ; $5cd9: $f3
    or e                                          ; $5cda: $b3
    ld d, [hl]                                    ; $5cdb: $56
    and d                                         ; $5cdc: $a2
    dec a                                         ; $5cdd: $3d
    pop bc                                        ; $5cde: $c1
    dec sp                                        ; $5cdf: $3b
    and b                                         ; $5ce0: $a0
    dec a                                         ; $5ce1: $3d
    db $e3                                        ; $5ce2: $e3
    or [hl]                                       ; $5ce3: $b6
    and e                                         ; $5ce4: $a3
    inc sp                                        ; $5ce5: $33
    pop bc                                        ; $5ce6: $c1
    nop                                           ; $5ce7: $00
    ldh a, [$63]                                  ; $5ce8: $f0 $63
    or b                                          ; $5cea: $b0
    and d                                         ; $5ceb: $a2
    ld [hl], h                                    ; $5cec: $74
    db $d3                                        ; $5ced: $d3
    and b                                         ; $5cee: $a0
    add $bb                                       ; $5cef: $c6 $bb
    and e                                         ; $5cf1: $a3
    db $fc                                        ; $5cf2: $fc
    pop bc                                        ; $5cf3: $c1
    ld sp, hl                                     ; $5cf4: $f9
    add $aa                                       ; $5cf5: $c6 $aa
    and b                                         ; $5cf7: $a0
    pop bc                                        ; $5cf8: $c1
    dec bc                                        ; $5cf9: $0b
    ld l, d                                       ; $5cfa: $6a
    ld h, h                                       ; $5cfb: $64
    xor [hl]                                      ; $5cfc: $ae
    add d                                         ; $5cfd: $82
    xor $91                                       ; $5cfe: $ee $91
    add e                                         ; $5d00: $83
    ld b, a                                       ; $5d01: $47
    cp e                                          ; $5d02: $bb
    and d                                         ; $5d03: $a2
    dec c                                         ; $5d04: $0d
    ld l, e                                       ; $5d05: $6b
    nop                                           ; $5d06: $00
    or $80                                        ; $5d07: $f6 $80
    ld a, [hl-]                                   ; $5d09: $3a
    and $72                                       ; $5d0a: $e6 $72
    push hl                                       ; $5d0c: $e5
    xor a                                         ; $5d0d: $af
    and h                                         ; $5d0e: $a4
    ld l, $b1                                     ; $5d0f: $2e $b1
    sub h                                         ; $5d11: $94
    add d                                         ; $5d12: $82
    cp e                                          ; $5d13: $bb
    and l                                         ; $5d14: $a5
    adc a                                         ; $5d15: $8f
    pop hl                                        ; $5d16: $e1
    rlca                                          ; $5d17: $07
    dec hl                                        ; $5d18: $2b
    dec l                                         ; $5d19: $2d
    dec c                                         ; $5d1a: $0d
    dec sp                                        ; $5d1b: $3b
    push hl                                       ; $5d1c: $e5
    cp l                                          ; $5d1d: $bd
    rst $20                                       ; $5d1e: $e7
    xor e                                         ; $5d1f: $ab
    ld h, e                                       ; $5d20: $63
    xor [hl]                                      ; $5d21: $ae
    sub e                                         ; $5d22: $93
    ccf                                           ; $5d23: $3f
    and d                                         ; $5d24: $a2
    ld a, h                                       ; $5d25: $7c
    ld a, [hl-]                                   ; $5d26: $3a
    ld b, d                                       ; $5d27: $42
    inc de                                        ; $5d28: $13
    and b                                         ; $5d29: $a0
    dec l                                         ; $5d2a: $2d
    dec hl                                        ; $5d2b: $2b
    dec l                                         ; $5d2c: $2d
    dec l                                         ; $5d2d: $2d
    dec l                                         ; $5d2e: $2d
    ld sp, hl                                     ; $5d2f: $f9
    rst $00                                       ; $5d30: $c7
    ld b, b                                       ; $5d31: $40
    xor $63                                       ; $5d32: $ee $63
    or e                                          ; $5d34: $b3
    jp nz, Jump_061_485c                          ; $5d35: $c2 $5c $48

    add b                                         ; $5d38: $80
    call z, $a99b                                 ; $5d39: $cc $9b $a9
    ld a, [hl]                                    ; $5d3c: $7e
    ld b, b                                       ; $5d3d: $40
    dec l                                         ; $5d3e: $2d
    ld sp, $0080                                  ; $5d3f: $31 $80 $00
    cp [hl]                                       ; $5d42: $be
    jp hl                                         ; $5d43: $e9


    add hl, hl                                    ; $5d44: $29
    ld h, b                                       ; $5d45: $60
    sbc a                                         ; $5d46: $9f
    ld h, b                                       ; $5d47: $60
    add sp, $43                                   ; $5d48: $e8 $43
    dec a                                         ; $5d4a: $3d
    db $f4                                        ; $5d4b: $f4
    db $e3                                        ; $5d4c: $e3
    add $0c                                       ; $5d4d: $c6 $0c
    add b                                         ; $5d4f: $80
    ld a, [$00c2]                                 ; $5d50: $fa $c2 $00
    or b                                          ; $5d53: $b0
    ld h, c                                       ; $5d54: $61
    cp a                                          ; $5d55: $bf
    ld [$e83d], a                                 ; $5d56: $ea $3d $e8
    dec hl                                        ; $5d59: $2b
    adc e                                         ; $5d5a: $8b
    sbc [hl]                                      ; $5d5b: $9e
    ld h, e                                       ; $5d5c: $63
    cp b                                          ; $5d5d: $b8
    dec h                                         ; $5d5e: $25
    ld [hl], h                                    ; $5d5f: $74
    add h                                         ; $5d60: $84
    ret nc                                        ; $5d61: $d0

    pop hl                                        ; $5d62: $e1
    nop                                           ; $5d63: $00
    ld [hl], d                                    ; $5d64: $72
    and d                                         ; $5d65: $a2
    ld l, [hl]                                    ; $5d66: $6e
    and l                                         ; $5d67: $a5
    ld a, h                                       ; $5d68: $7c
    pop hl                                        ; $5d69: $e1
    ld l, [hl]                                    ; $5d6a: $6e
    and d                                         ; $5d6b: $a2
    sub h                                         ; $5d6c: $94
    ld h, $43                                     ; $5d6d: $26 $43
    daa                                           ; $5d6f: $27
    ld a, b                                       ; $5d70: $78
    add hl, hl                                    ; $5d71: $29
    sbc d                                         ; $5d72: $9a
    and h                                         ; $5d73: $a4
    nop                                           ; $5d74: $00
    dec a                                         ; $5d75: $3d
    pop hl                                        ; $5d76: $e1
    ld [hl], b                                    ; $5d77: $70
    and c                                         ; $5d78: $a1
    ld [hl], h                                    ; $5d79: $74
    ret z                                         ; $5d7a: $c8

    db $fc                                        ; $5d7b: $fc
    rst $00                                       ; $5d7c: $c7
    ld a, d                                       ; $5d7d: $7a
    call nc, Call_000_2938                        ; $5d7e: $d4 $38 $29
    ld a, h                                       ; $5d81: $7c
    db $e3                                        ; $5d82: $e3
    ld l, h                                       ; $5d83: $6c
    ld b, b                                       ; $5d84: $40
    ld bc, $396a                                  ; $5d85: $01 $6a $39
    and $a2                                       ; $5d88: $e6 $a2
    ld b, c                                       ; $5d8a: $41
    ld a, d                                       ; $5d8b: $7a
    db $d3                                        ; $5d8c: $d3
    or [hl]                                       ; $5d8d: $b6
    ld h, a                                       ; $5d8e: $67
    inc [hl]                                      ; $5d8f: $34
    rst $00                                       ; $5d90: $c7
    ld l, [hl]                                    ; $5d91: $6e
    ld h, c                                       ; $5d92: $61
    ld l, h                                       ; $5d93: $6c
    ld b, b                                       ; $5d94: $40
    nop                                           ; $5d95: $00
    ld l, e                                       ; $5d96: $6b
    ld b, h                                       ; $5d97: $44
    xor b                                         ; $5d98: $a8
    ld h, e                                       ; $5d99: $63
    ld e, d                                       ; $5d9a: $5a
    ld b, b                                       ; $5d9b: $40
    ld a, [hl-]                                   ; $5d9c: $3a
    call nz, $ce80                                ; $5d9d: $c4 $80 $ce
    ld a, [hl-]                                   ; $5da0: $3a
    and d                                         ; $5da1: $a2
    call Call_000_2d66                            ; $5da2: $cd $66 $2d
    ld h, [hl]                                    ; $5da5: $66
    ld sp, $ec6b                                  ; $5da6: $31 $6b $ec
    jr nz, jr_061_5dda                            ; $5da9: $20 $2f

    and h                                         ; $5dab: $a4
    cp $c2                                        ; $5dac: $fe $c2
    dec c                                         ; $5dae: $0d
    dec l                                         ; $5daf: $2d
    jr z, @+$5a                                   ; $5db0: $28 $58

    ld h, c                                       ; $5db2: $61
    jp nz, Jump_061_4b00                          ; $5db3: $c2 $00 $4b

    ld b, d                                       ; $5db6: $42
    ld sp, $29a5                                  ; $5db7: $31 $a5 $29
    ld b, b                                       ; $5dba: $40
    add c                                         ; $5dbb: $81
    rst $20                                       ; $5dbc: $e7
    add hl, hl                                    ; $5dbd: $29
    and c                                         ; $5dbe: $a1

jr_061_5dbf:
    add sp, -$40                                  ; $5dbf: $e8 $c0
    xor l                                         ; $5dc1: $ad
    ld c, [hl]                                    ; $5dc2: $4e
    or [hl]                                       ; $5dc3: $b6
    jp z, Jump_061_6d08                           ; $5dc4: $ca $08 $6d

    daa                                           ; $5dc7: $27
    scf                                           ; $5dc8: $37
    jp nz, $216f                                  ; $5dc9: $c2 $6f $21

    ld l, e                                       ; $5dcc: $6b
    ld l, e                                       ; $5dcd: $6b
    add [hl]                                      ; $5dce: $86
    dec de                                        ; $5dcf: $1b
    ld b, b                                       ; $5dd0: $40
    ret nz                                        ; $5dd1: $c0

    db $e3                                        ; $5dd2: $e3
    cp c                                          ; $5dd3: $b9
    push hl                                       ; $5dd4: $e5
    nop                                           ; $5dd5: $00
    inc hl                                        ; $5dd6: $23
    ld [hl], h                                    ; $5dd7: $74
    ldh a, [$86]                                  ; $5dd8: $f0 $86

jr_061_5dda:
    ld [hl], d                                    ; $5dda: $72
    and b                                         ; $5ddb: $a0
    jp nz, $b4e0                                  ; $5ddc: $c2 $e0 $b4

    ld h, b                                       ; $5ddf: $60
    jp hl                                         ; $5de0: $e9


    ld h, h                                       ; $5de1: $64
    nop                                           ; $5de2: $00
    db $e3                                        ; $5de3: $e3
    ld h, [hl]                                    ; $5de4: $66
    ld hl, $b200                                  ; $5de5: $21 $00 $b2
    ld a, e                                       ; $5de8: $7b
    ld l, [hl]                                    ; $5de9: $6e
    ld h, [hl]                                    ; $5dea: $66
    daa                                           ; $5deb: $27
    ld b, c                                       ; $5dec: $41
    ld a, e                                       ; $5ded: $7b
    jp nz, $85f0                                  ; $5dee: $c2 $f0 $85

    xor c                                         ; $5df1: $a9
    ld b, [hl]                                    ; $5df2: $46
    add b                                         ; $5df3: $80
    jp nc, $0992                                  ; $5df4: $d2 $92 $09

    nop                                           ; $5df7: $00
    jr nc, jr_061_5dbf                            ; $5df8: $30 $c5

    ret nz                                        ; $5dfa: $c0

    pop hl                                        ; $5dfb: $e1
    and [hl]                                      ; $5dfc: $a6
    ld bc, $03e5                                  ; $5dfd: $01 $e5 $03
    and l                                         ; $5e00: $a5
    ld [bc], a                                    ; $5e01: $02
    rrca                                          ; $5e02: $0f
    ld b, d                                       ; $5e03: $42
    add sp, $26                                   ; $5e04: $e8 $26
    dec hl                                        ; $5e06: $2b
    dec d                                         ; $5e07: $15

Jump_061_5e08:
    nop                                           ; $5e08: $00
    and $05                                       ; $5e09: $e6 $05
    dec sp                                        ; $5e0b: $3b
    ret nz                                        ; $5e0c: $c0

    ret nz                                        ; $5e0d: $c0

    rst $20                                       ; $5e0e: $e7
    cp c                                          ; $5e0f: $b9
    add e                                         ; $5e10: $83
    inc a                                         ; $5e11: $3c
    add $64                                       ; $5e12: $c6 $64
    ld [hl], $42                                  ; $5e14: $36 $42
    inc hl                                        ; $5e16: $23
    and a                                         ; $5e17: $a7
    inc hl                                        ; $5e18: $23
    nop                                           ; $5e19: $00
    dec sp                                        ; $5e1a: $3b
    pop bc                                        ; $5e1b: $c1
    ld a, [hl]                                    ; $5e1c: $7e
    push bc                                       ; $5e1d: $c5
    cp [hl]                                       ; $5e1e: $be
    jp $a555                                      ; $5e1f: $c3 $55 $a5


    add b                                         ; $5e22: $80
    call Call_000_0a92                            ; $5e23: $cd $92 $0a
    jp hl                                         ; $5e26: $e9


    ld b, h                                       ; $5e27: $44
    cp $c1                                        ; $5e28: $fe $c1
    nop                                           ; $5e2a: $00
    inc [hl]                                      ; $5e2b: $34
    add a                                         ; $5e2c: $87
    ld h, $a1                                     ; $5e2d: $26 $a1
    jr z, jr_061_5e79                             ; $5e2f: $28 $48

    ldh [rNR24], a                                ; $5e31: $e0 $19
    ld a, $e7                                     ; $5e33: $3e $e7
    xor d                                         ; $5e35: $aa
    inc hl                                        ; $5e36: $23
    inc hl                                        ; $5e37: $23
    inc h                                         ; $5e38: $24
    or a                                          ; $5e39: $b7
    ld h, l                                       ; $5e3a: $65
    nop                                           ; $5e3b: $00
    cp d                                          ; $5e3c: $ba
    adc $c0                                       ; $5e3d: $ce $c0
    rst $30                                       ; $5e3f: $f7
    ld [hl], $88                                  ; $5e40: $36 $88
    dec [hl]                                      ; $5e42: $35
    ld h, d                                       ; $5e43: $62
    ret nz                                        ; $5e44: $c0

    db $ed                                        ; $5e45: $ed
    sbc [hl]                                      ; $5e46: $9e
    dec d                                         ; $5e47: $15
    add sp, $26                                   ; $5e48: $e8 $26
    db $eb                                        ; $5e4a: $eb
    ld b, c                                       ; $5e4b: $41
    ld b, d                                       ; $5e4c: $42
    ld a, h                                       ; $5e4d: $7c
    and [hl]                                      ; $5e4e: $a6
    dec l                                         ; $5e4f: $2d
    and e                                         ; $5e50: $a3
    inc b                                         ; $5e51: $04
    xor a                                         ; $5e52: $af
    inc hl                                        ; $5e53: $23
    pop hl                                        ; $5e54: $e1
    ld a, [de]                                    ; $5e55: $1a
    add sp, $26                                   ; $5e56: $e8 $26
    dec hl                                        ; $5e58: $2b
    xor b                                         ; $5e59: $a8
    dec h                                         ; $5e5a: $25
    ld [bc], a                                    ; $5e5b: $02
    cp $a0                                        ; $5e5c: $fe $a0
    dec l                                         ; $5e5e: $2d
    cp a                                          ; $5e5f: $bf
    ld [c], a                                     ; $5e60: $e2
    xor b                                         ; $5e61: $a8
    rra                                           ; $5e62: $1f
    xor [hl]                                      ; $5e63: $ae
    add l                                         ; $5e64: $85
    dec h                                         ; $5e65: $25
    ld [bc], a                                    ; $5e66: $02
    ld h, $25                                     ; $5e67: $26 $25
    cp $80                                        ; $5e69: $fe $80
    nop                                           ; $5e6b: $00
    ld [hl+], a                                   ; $5e6c: $22
    ld h, b                                       ; $5e6d: $60
    ld [hl], e                                    ; $5e6e: $73
    ld b, l                                       ; $5e6f: $45
    add b                                         ; $5e70: $80
    jp c, Jump_000_2644                           ; $5e71: $da $44 $26

    jp z, $e562                                   ; $5e74: $ca $62 $e5

    ld [bc], a                                    ; $5e77: $02

jr_061_5e78:
    ld a, c                                       ; $5e78: $79

jr_061_5e79:
    ld h, d                                       ; $5e79: $62
    ld a, [$0083]                                 ; $5e7a: $fa $83 $00
    ld l, a                                       ; $5e7d: $6f
    dec sp                                        ; $5e7e: $3b
    xor b                                         ; $5e7f: $a8
    dec b                                         ; $5e80: $05
    call z, $8923                                 ; $5e81: $cc $23 $89
    ld h, d                                       ; $5e84: $62
    ccf                                           ; $5e85: $3f
    ld h, b                                       ; $5e86: $60
    pop bc                                        ; $5e87: $c1
    db $e3                                        ; $5e88: $e3
    inc sp                                        ; $5e89: $33
    ld c, b                                       ; $5e8a: $48
    add b                                         ; $5e8b: $80
    rst $18                                       ; $5e8c: $df
    nop                                           ; $5e8d: $00
    dec hl                                        ; $5e8e: $2b
    ld h, e                                       ; $5e8f: $63
    ld c, b                                       ; $5e90: $48
    ld h, d                                       ; $5e91: $62
    or c                                          ; $5e92: $b1
    inc hl                                        ; $5e93: $23
    ld [hl], $a3                                  ; $5e94: $36 $a3
    ld a, d                                       ; $5e96: $7a
    and a                                         ; $5e97: $a7
    add b                                         ; $5e98: $80
    db $db                                        ; $5e99: $db
    or e                                          ; $5e9a: $b3
    ld l, b                                       ; $5e9b: $68
    and $04                                       ; $5e9c: $e6 $04
    ld h, b                                       ; $5e9e: $60
    rst $30                                       ; $5e9f: $f7
    call nz, $28f2                                ; $5ea0: $c4 $f2 $28
    add hl, hl                                    ; $5ea3: $29
    dec e                                         ; $5ea4: $1d
    ld sp, $7c65                                  ; $5ea5: $31 $65 $7c
    ret nz                                        ; $5ea8: $c0

    ld c, e                                       ; $5ea9: $4b
    ld c, e                                       ; $5eaa: $4b
    cp b                                          ; $5eab: $b8
    call nz, $b500                                ; $5eac: $c4 $00 $b5
    ld b, e                                       ; $5eaf: $43
    rst $38                                       ; $5eb0: $ff
    call c, $6516                                 ; $5eb1: $dc $16 $65
    ld sp, $7c64                                  ; $5eb4: $31 $64 $7c
    add c                                         ; $5eb7: $81
    db $ec                                        ; $5eb8: $ec
    dec h                                         ; $5eb9: $25
    or c                                          ; $5eba: $b1
    ld [hl+], a                                   ; $5ebb: $22
    ld [hl-], a                                   ; $5ebc: $32
    ld [hl+], a                                   ; $5ebd: $22
    ld hl, $800d                                  ; $5ebe: $21 $0d $80
    ret c                                         ; $5ec1: $d8

    push af                                       ; $5ec2: $f5
    ld l, d                                       ; $5ec3: $6a
    xor a                                         ; $5ec4: $af
    ld b, d                                       ; $5ec5: $42
    or $22                                        ; $5ec6: $f6 $22
    dec hl                                        ; $5ec8: $2b
    inc h                                         ; $5ec9: $24
    nop                                           ; $5eca: $00
    or c                                          ; $5ecb: $b1
    ld [hl+], a                                   ; $5ecc: $22
    nop                                           ; $5ecd: $00
    cp h                                          ; $5ece: $bc
    rst $18                                       ; $5ecf: $df
    dec a                                         ; $5ed0: $3d
    jp hl                                         ; $5ed1: $e9


    ld l, l                                       ; $5ed2: $6d
    jr nz, jr_061_5e78                            ; $5ed3: $20 $a3

    ld bc, $c178                                  ; $5ed5: $01 $78 $c1
    ld [$bc43], a                                 ; $5ed8: $ea $43 $bc
    jp z, $b97d                                   ; $5edb: $ca $7d $b9

    ld c, $f8                                     ; $5ede: $0e $f8
    add l                                         ; $5ee0: $85
    dec bc                                        ; $5ee1: $0b
    dec hl                                        ; $5ee2: $2b
    dec c                                         ; $5ee3: $0d
    or l                                          ; $5ee4: $b5
    add e                                         ; $5ee5: $83
    or c                                          ; $5ee6: $b1
    ld h, e                                       ; $5ee7: $63
    or $67                                        ; $5ee8: $f6 $67
    dec a                                         ; $5eea: $3d
    cp $00                                        ; $5eeb: $fe $00
    ld c, d                                       ; $5eed: $4a
    ld [hl+], a                                   ; $5eee: $22
    ret nz                                        ; $5eef: $c0

    and l                                         ; $5ef0: $a5
    and $20                                       ; $5ef1: $e6 $20
    add b                                         ; $5ef3: $80
    db $e4                                        ; $5ef4: $e4
    cp a                                          ; $5ef5: $bf
    sbc $7a                                       ; $5ef6: $de $7a
    ret                                           ; $5ef8: $c9


    rst $38                                       ; $5ef9: $ff
    and d                                         ; $5efa: $a2
    ld a, e                                       ; $5efb: $7b
    and [hl]                                      ; $5efc: $a6
    nop                                           ; $5efd: $00
    db $f4                                        ; $5efe: $f4
    ld b, l                                       ; $5eff: $45

Call_061_5f00:
    ei                                            ; $5f00: $fb
    sbc a                                         ; $5f01: $9f
    dec a                                         ; $5f02: $3d
    ret                                           ; $5f03: $c9


    cp [hl]                                       ; $5f04: $be
    ld b, c                                       ; $5f05: $41
    cp [hl]                                       ; $5f06: $be
    pop bc                                        ; $5f07: $c1
    and l                                         ; $5f08: $a5
    nop                                           ; $5f09: $00
    ld [hl], h                                    ; $5f0a: $74
    daa                                           ; $5f0b: $27
    add b                                         ; $5f0c: $80
    db $db                                        ; $5f0d: $db
    jr jr_061_5f8a                                ; $5f0e: $18 $7a

    add $3d                                       ; $5f10: $c6 $3d
    ret nz                                        ; $5f12: $c0

    ei                                            ; $5f13: $fb
    add l                                         ; $5f14: $85
    ld l, e                                       ; $5f15: $6b
    ld c, e                                       ; $5f16: $4b
    or d                                          ; $5f17: $b2
    ld bc, $02b3                                  ; $5f18: $01 $b3 $02
    add c                                         ; $5f1b: $81
    rst $38                                       ; $5f1c: $ff
    jr nz, @+$79                                  ; $5f1d: $20 $77

    add d                                         ; $5f1f: $82
    ld l, [hl]                                    ; $5f20: $6e
    inc h                                         ; $5f21: $24
    dec l                                         ; $5f22: $2d
    ld bc, $e3c1                                  ; $5f23: $01 $c1 $e3
    inc hl                                        ; $5f26: $23
    jr nz, @+$6f                                  ; $5f27: $20 $6d

    halt                                          ; $5f29: $76
    inc de                                        ; $5f2a: $13
    dec a                                         ; $5f2b: $3d
    ld a, [$7e00]                                 ; $5f2c: $fa $00 $7e
    ldh [$82], a                                  ; $5f2f: $e0 $82
    pop hl                                        ; $5f31: $e1
    db $f4                                        ; $5f32: $f4
    ld bc, $e0c1                                  ; $5f33: $01 $c1 $e0
    or $47                                        ; $5f36: $f6 $47
    dec a                                         ; $5f38: $3d
    ei                                            ; $5f39: $fb
    rst $08                                       ; $5f3a: $cf
    nop                                           ; $5f3b: $00
    db $e3                                        ; $5f3c: $e3
    ld [bc], a                                    ; $5f3d: $02
    nop                                           ; $5f3e: $00
    dec a                                         ; $5f3f: $3d
    ld [c], a                                     ; $5f40: $e2
    ld a, h                                       ; $5f41: $7c
    ld [c], a                                     ; $5f42: $e2
    add d                                         ; $5f43: $82
    pop hl                                        ; $5f44: $e1
    ld [bc], a                                    ; $5f45: $02
    rst $20                                       ; $5f46: $e7
    cp d                                          ; $5f47: $ba
    ld a, h                                       ; $5f48: $7c
    call nz, $aae3                                ; $5f49: $c4 $e3 $aa
    ld h, $6a                                     ; $5f4c: $26 $6a
    ld h, d                                       ; $5f4e: $62
    nop                                           ; $5f4f: $00
    ld b, e                                       ; $5f50: $43
    db $e4                                        ; $5f51: $e4
    ld [hl], h                                    ; $5f52: $74
    dec d                                         ; $5f53: $15
    ret nz                                        ; $5f54: $c0

    ldh a, [$79]                                  ; $5f55: $f0 $79
    and l                                         ; $5f57: $a5
    add a                                         ; $5f58: $87
    adc b                                         ; $5f59: $88
    sbc $62                                       ; $5f5a: $de $62
    add b                                         ; $5f5c: $80
    rst $18                                       ; $5f5d: $df
    xor $27                                       ; $5f5e: $ee $27
    nop                                           ; $5f60: $00
    db $10                                        ; $5f61: $10
    add sp, $02                                   ; $5f62: $e8 $02
    ld b, [hl]                                    ; $5f64: $46
    nop                                           ; $5f65: $00
    nop                                           ; $5f66: $00
    nop                                           ; $5f67: $00
    ld l, a                                       ; $5f68: $6f
    and b                                         ; $5f69: $a0
    ret c                                         ; $5f6a: $d8

    reti                                          ; $5f6b: $d9


    and b                                         ; $5f6c: $a0
    rst $38                                       ; $5f6d: $ff
    ldh [$d2], a                                  ; $5f6e: $e0 $d2
    db $d3                                        ; $5f70: $d3
    rst $30                                       ; $5f71: $f7
    pop hl                                        ; $5f72: $e1
    jr c, @-$04                                   ; $5f73: $38 $fa

    ldh [$f3], a                                  ; $5f75: $e0 $f3
    ldh [$ee], a                                  ; $5f77: $e0 $ee
    pop hl                                        ; $5f79: $e1
    call c, $dedd                                 ; $5f7a: $dc $dd $de
    jp hl                                         ; $5f7d: $e9


    ldh [$fa], a                                  ; $5f7e: $e0 $fa
    rst $38                                       ; $5f80: $ff
    rst $38                                       ; $5f81: $ff
    and b                                         ; $5f82: $a0
    and b                                         ; $5f83: $a0
    jp c, $d0db                                   ; $5f84: $da $db $d0

    pop de                                        ; $5f87: $d1
    and b                                         ; $5f88: $a0
    and b                                         ; $5f89: $a0

jr_061_5f8a:
    di                                            ; $5f8a: $f3
    call nc, $f7d5                                ; $5f8b: $d4 $d5 $f7
    ldh [$fa], a                                  ; $5f8e: $e0 $fa
    pop hl                                        ; $5f90: $e1
    and b                                         ; $5f91: $a0
    ret nc                                        ; $5f92: $d0

    pop de                                        ; $5f93: $d1
    jp c, $db7f                                   ; $5f94: $da $7f $db

    rst $18                                       ; $5f97: $df
    ldh [$e1], a                                  ; $5f98: $e0 $e1
    ld [c], a                                     ; $5f9a: $e2
    db $e3                                        ; $5f9b: $e3
    db $e4                                        ; $5f9c: $e4
    ld a, [$f0ff]                                 ; $5f9d: $fa $ff $f0
    call c, $84e0                                 ; $5fa0: $dc $e0 $84
    db $e3                                        ; $5fa3: $e3
    rst $38                                       ; $5fa4: $ff
    add sp, $7c                                   ; $5fa5: $e8 $7c
    pop hl                                        ; $5fa7: $e1
    push hl                                       ; $5fa8: $e5
    and $e7                                       ; $5fa9: $e6 $e7
    add sp, -$4d                                  ; $5fab: $e8 $b3
    jp hl                                         ; $5fad: $e9


    ld [$fffa], a                                 ; $5fae: $ea $fa $ff
    call c, $d6e0                                 ; $5fb1: $dc $e0 $d6
    rst $10                                       ; $5fb4: $d7
    add h                                         ; $5fb5: $84
    pop hl                                        ; $5fb6: $e1
    sbc a                                         ; $5fb7: $9f
    ld e, e                                       ; $5fb8: $5b
    and d                                         ; $5fb9: $a2
    sbc l                                         ; $5fba: $9d
    rst $38                                       ; $5fbb: $ff
    ld [c], a                                     ; $5fbc: $e2
    and d                                         ; $5fbd: $a2
    sbc a                                         ; $5fbe: $9f
    ld a, h                                       ; $5fbf: $7c
    ld [c], a                                     ; $5fc0: $e2
    and b                                         ; $5fc1: $a0
    ld [$b8e0], a                                 ; $5fc2: $ea $e0 $b8
    ld b, e                                       ; $5fc5: $43
    rst $38                                       ; $5fc6: $ff
    ld [c], a                                     ; $5fc7: $e2
    ld [c], a                                     ; $5fc8: $e2
    ld bc, $9fe2                                  ; $5fc9: $01 $e2 $9f
    sbc h                                         ; $5fcc: $9c
    ld b, [hl]                                    ; $5fcd: $46
    rst $38                                       ; $5fce: $ff
    ldh [$ae], a                                  ; $5fcf: $e0 $ae
    ld [hl], $fb                                  ; $5fd1: $36 $fb
    ldh [$9c], a                                  ; $5fd3: $e0 $9c
    sbc a                                         ; $5fd5: $9f
    ld [hl], h                                    ; $5fd6: $74
    ld [c], a                                     ; $5fd7: $e2
    ret c                                         ; $5fd8: $d8

    reti                                          ; $5fd9: $d9


    ld b, e                                       ; $5fda: $43
    rst $38                                       ; $5fdb: $ff
    ld [c], a                                     ; $5fdc: $e2
    db $e3                                        ; $5fdd: $e3
    db $fc                                        ; $5fde: $fc
    ld a, [bc]                                    ; $5fdf: $0a
    ldh [$c1], a                                  ; $5fe0: $e0 $c1
    ldh [$ae], a                                  ; $5fe2: $e0 $ae
    ld b, [hl]                                    ; $5fe4: $46
    ld b, l                                       ; $5fe5: $45
    ld b, l                                       ; $5fe6: $45
    ld b, [hl]                                    ; $5fe7: $46
    xor a                                         ; $5fe8: $af
    ret nz                                        ; $5fe9: $c0

    cp h                                          ; $5fea: $bc
    pop hl                                        ; $5feb: $e1
    cp a                                          ; $5fec: $bf
    pop hl                                        ; $5fed: $e1
    db $fd                                        ; $5fee: $fd
    pop bc                                        ; $5fef: $c1
    ld b, e                                       ; $5ff0: $43
    rst $38                                       ; $5ff1: $ff
    ld [c], a                                     ; $5ff2: $e2
    db $e3                                        ; $5ff3: $e3
    add e                                         ; $5ff4: $83
    pop bc                                        ; $5ff5: $c1
    sbc [hl]                                      ; $5ff6: $9e
    ld b, [hl]                                    ; $5ff7: $46
    ld a, a                                       ; $5ff8: $7f
    xor a                                         ; $5ff9: $af
    ld b, l                                       ; $5ffa: $45
    ld b, a                                       ; $5ffb: $47
    ld d, d                                       ; $5ffc: $52
    ld b, l                                       ; $5ffd: $45
    ld b, l                                       ; $5ffe: $45
    ld b, c                                       ; $5fff: $41
    cp h                                          ; $6000: $bc
    ldh [$f0], a                                  ; $6001: $e0 $f0
    cp a                                          ; $6003: $bf
    pop hl                                        ; $6004: $e1
    rst $28                                       ; $6005: $ef
    add $3d                                       ; $6006: $c6 $3d
    rst $38                                       ; $6008: $ff
    sub b                                         ; $6009: $90
    pop bc                                        ; $600a: $c1
    and b                                         ; $600b: $a0
    sbc [hl]                                      ; $600c: $9e
    xor [hl]                                      ; $600d: $ae
    ld b, [hl]                                    ; $600e: $46
    ld a, a                                       ; $600f: $7f
    ld b, h                                       ; $6010: $44
    ld c, l                                       ; $6011: $4d
    ld e, b                                       ; $6012: $58
    ld b, l                                       ; $6013: $45
    ld a, [hl+]                                   ; $6014: $2a
    jr nz, jr_061_6041                            ; $6015: $20 $2a

    ld a, e                                       ; $6017: $7b
    pop hl                                        ; $6018: $e1
    add e                                         ; $6019: $83
    sbc h                                         ; $601a: $9c
    sbc a                                         ; $601b: $9f
    ld [hl], e                                    ; $601c: $73
    ret nz                                        ; $601d: $c0

    rst $38                                       ; $601e: $ff

jr_061_601f:
    pop bc                                        ; $601f: $c1
    ld b, e                                       ; $6020: $43
    rst $38                                       ; $6021: $ff
    add b                                         ; $6022: $80
    pop bc                                        ; $6023: $c1
    ld b, $c0                                     ; $6024: $06 $c0
    sbc [hl]                                      ; $6026: $9e
    rst $38                                       ; $6027: $ff
    xor a                                         ; $6028: $af
    ld b, [hl]                                    ; $6029: $46
    ld b, l                                       ; $602a: $45
    ld d, d                                       ; $602b: $52
    ld d, d                                       ; $602c: $52
    ld b, d                                       ; $602d: $42
    jr nz, jr_061_6050                            ; $602e: $20 $20

    dec de                                        ; $6030: $1b
    jr nz, jr_061_6075                            ; $6031: $20 $42

    add hl, sp                                    ; $6033: $39
    ldh [rDMA], a                                 ; $6034: $e0 $46
    sbc [hl]                                      ; $6036: $9e
    db $fc                                        ; $6037: $fc
    and h                                         ; $6038: $a4
    ld b, e                                       ; $6039: $43
    rst $38                                       ; $603a: $ff
    rra                                           ; $603b: $1f
    ldh [$fa], a                                  ; $603c: $e0 $fa
    ld b, $c1                                     ; $603e: $06 $c1
    sbc [hl]                                      ; $6040: $9e

jr_061_6041:
    jp nz, Jump_061_45c0                          ; $6041: $c2 $c0 $45

    ld b, l                                       ; $6044: $45
    ld b, d                                       ; $6045: $42
    ld hl, $8126                                  ; $6046: $21 $26 $81
    ld a, [hl+]                                   ; $6049: $2a
    add hl, sp                                    ; $604a: $39
    pop hl                                        ; $604b: $e1
    ret nz                                        ; $604c: $c0

    ld [c], a                                     ; $604d: $e2
    di                                            ; $604e: $f3
    and b                                         ; $604f: $a0

jr_061_6050:
    ld a, h                                       ; $6050: $7c
    pop bc                                        ; $6051: $c1
    dec a                                         ; $6052: $3d
    rst $38                                       ; $6053: $ff
    ld d, [hl]                                    ; $6054: $56
    pop bc                                        ; $6055: $c1
    sbc [hl]                                      ; $6056: $9e
    ld e, $85                                     ; $6057: $1e $85
    jp nz, Jump_000_3c44                          ; $6059: $c2 $44 $3c

    dec [hl]                                      ; $605c: $35
    ld [hl], $79                                  ; $605d: $36 $79
    ldh [$c0], a                                  ; $605f: $e0 $c0
    pop hl                                        ; $6061: $e1
    xor [hl]                                      ; $6062: $ae
    and c                                         ; $6063: $a1
    add sp, $67                                   ; $6064: $e8 $67
    and d                                         ; $6066: $a2
    dec a                                         ; $6067: $3d
    rst $38                                       ; $6068: $ff
    ld b, c                                       ; $6069: $41
    and c                                         ; $606a: $a1
    and c                                         ; $606b: $a1
    add l                                         ; $606c: $85
    ret nz                                        ; $606d: $c0

    xor [hl]                                      ; $606e: $ae
    ld b, [hl]                                    ; $606f: $46
    ld b, d                                       ; $6070: $42
    ld e, a                                       ; $6071: $5f
    dec [hl]                                      ; $6072: $35
    dec [hl]                                      ; $6073: $35
    dec [hl]                                      ; $6074: $35

jr_061_6075:
    ld [hl], $44                                  ; $6075: $36 $44
    ld b, b                                       ; $6077: $40
    ldh [$a1], a                                  ; $6078: $e0 $a1
    jr c, jr_061_601f                             ; $607a: $38 $a3

    ret z                                         ; $607c: $c8

    ld h, [hl]                                    ; $607d: $66
    pop bc                                        ; $607e: $c1
    dec a                                         ; $607f: $3d
    rst $38                                       ; $6080: $ff
    ld b, b                                       ; $6081: $40
    jp $8746                                      ; $6082: $c3 $46 $87


    ret nz                                        ; $6085: $c0

    add b                                         ; $6086: $80
    ldh [$35], a                                  ; $6087: $e0 $35
    dec [hl]                                      ; $6089: $35
    add c                                         ; $608a: $81
    add hl, sp                                    ; $608b: $39
    ld a, [$bfa0]                                 ; $608c: $fa $a0 $bf
    jp nz, $e27d                                  ; $608f: $c2 $7d $e2

    ld a, d                                       ; $6092: $7a
    rst $18                                       ; $6093: $df
    ld a, a                                       ; $6094: $7f
    jp $a0c0                                      ; $6095: $c3 $c0 $a0


    xor [hl]                                      ; $6098: $ae
    dec e                                         ; $6099: $1d
    xor a                                         ; $609a: $af
    add b                                         ; $609b: $80
    pop hl                                        ; $609c: $e1
    dec [hl]                                      ; $609d: $35
    ld a, [hl-]                                   ; $609e: $3a
    ld b, l                                       ; $609f: $45
    ld a, [$bba0]                                 ; $60a0: $fa $a0 $bb
    and c                                         ; $60a3: $a1
    or l                                          ; $60a4: $b5
    add c                                         ; $60a5: $81
    ld hl, sp-$02                                 ; $60a6: $f8 $fe
    jp nz, $be00                                  ; $60a8: $c2 $00 $be

    adc e                                         ; $60ab: $8b
    add c                                         ; $60ac: $81
    sbc a                                         ; $60ad: $9f
    sbc h                                         ; $60ae: $9c
    xor a                                         ; $60af: $af
    ld a, c                                       ; $60b0: $79
    ld a, d                                       ; $60b1: $7a
    rrca                                          ; $60b2: $0f
    ld h, h                                       ; $60b3: $64
    ld h, h                                       ; $60b4: $64
    ld h, l                                       ; $60b5: $65
    ld h, [hl]                                    ; $60b6: $66
    ld a, a                                       ; $60b7: $7f
    ld [c], a                                     ; $60b8: $e2
    ld a, d                                       ; $60b9: $7a
    and c                                         ; $60ba: $a1
    or l                                          ; $60bb: $b5
    add c                                         ; $60bc: $81
    ld h, l                                       ; $60bd: $65
    add d                                         ; $60be: $82
    db $fc                                        ; $60bf: $fc
    add b                                         ; $60c0: $80
    db $dd                                        ; $60c1: $dd
    rrca                                          ; $60c2: $0f
    and e                                         ; $60c3: $a3
    sbc a                                         ; $60c4: $9f
    sbc h                                         ; $60c5: $9c
    ld a, [hl]                                    ; $60c6: $7e
    ld b, l                                       ; $60c7: $45
    ld a, [hl-]                                   ; $60c8: $3a
    dec [hl]                                      ; $60c9: $35

Jump_061_60ca:
    rlca                                          ; $60ca: $07
    dec [hl]                                      ; $60cb: $35
    ld l, b                                       ; $60cc: $68
    ld h, [hl]                                    ; $60cd: $66
    ld a, a                                       ; $60ce: $7f
    pop hl                                        ; $60cf: $e1
    dec a                                         ; $60d0: $3d
    pop hl                                        ; $60d1: $e1
    ld [hl], a                                    ; $60d2: $77
    add e                                         ; $60d3: $83
    ld a, [hl-]                                   ; $60d4: $3a
    db $e3                                        ; $60d5: $e3
    halt                                          ; $60d6: $76
    jp Jump_061_7428                              ; $60d7: $c3 $28 $74


    db $d3                                        ; $60da: $d3
    call nc, $bc82                                ; $60db: $d4 $82 $bc
    and e                                         ; $60de: $a3
    add hl, sp                                    ; $60df: $39
    cp a                                          ; $60e0: $bf
    ret nz                                        ; $60e1: $c0

    ld l, d                                       ; $60e2: $6a
    ld a, h                                       ; $60e3: $7c
    ret nz                                        ; $60e4: $c0

    scf                                           ; $60e5: $37
    and c                                         ; $60e6: $a1
    ldh [$7a], a                                  ; $60e7: $e0 $7a
    and h                                         ; $60e9: $a4
    rst $28                                       ; $60ea: $ef
    ld h, a                                       ; $60eb: $67
    ld [hl], h                                    ; $60ec: $74
    push de                                       ; $60ed: $d5
    pop de                                        ; $60ee: $d1
    ld h, d                                       ; $60ef: $62
    cp h                                          ; $60f0: $bc
    and h                                         ; $60f1: $a4
    ld [hl], $35                                  ; $60f2: $36 $35
    dec [hl]                                      ; $60f4: $35
    rra                                           ; $60f5: $1f
    ld [hl], l                                    ; $60f6: $75
    ld h, [hl]                                    ; $60f7: $66
    dec [hl]                                      ; $60f8: $35
    jr c, jr_061_6132                             ; $60f9: $38 $37

    cp h                                          ; $60fb: $bc
    and b                                         ; $60fc: $a0
    ld a, d                                       ; $60fd: $7a
    and e                                         ; $60fe: $a3
    jp hl                                         ; $60ff: $e9


    ld h, c                                       ; $6100: $61
    ld l, h                                       ; $6101: $6c
    ld [c], a                                     ; $6102: $e2
    ld h, b                                       ; $6103: $60
    call c, $d681                                 ; $6104: $dc $81 $d6
    rst $10                                       ; $6107: $d7
    ld [hl], h                                    ; $6108: $74
    db $d3                                        ; $6109: $d3
    db $dd                                        ; $610a: $dd
    sbc $c8                                       ; $610b: $de $c8
    ld h, e                                       ; $610d: $63
    inc b                                         ; $610e: $04
    db $fc                                        ; $610f: $fc
    and c                                         ; $6110: $a1
    ld a, $e1                                     ; $6111: $3e $e1
    ld [hl], a                                    ; $6113: $77
    db $fc                                        ; $6114: $fc
    ret nz                                        ; $6115: $c0

    cp [hl]                                       ; $6116: $be
    pop hl                                        ; $6117: $e1
    or a                                          ; $6118: $b7
    add d                                         ; $6119: $82
    ldh a, [$65]                                  ; $611a: $f0 $65
    sbc [hl]                                      ; $611c: $9e
    ld h, b                                       ; $611d: $60
    nop                                           ; $611e: $00
    ld e, c                                       ; $611f: $59
    ld h, e                                       ; $6120: $63
    xor $8f                                       ; $6121: $ee $8f
    ld e, $a0                                     ; $6123: $1e $a0
    jp nz, $fc62                                  ; $6125: $c2 $62 $fc

    and b                                         ; $6128: $a0
    ld a, $e3                                     ; $6129: $3e $e3
    db $fc                                        ; $612b: $fc
    ret nz                                        ; $612c: $c0

    ld hl, sp-$60                                 ; $612d: $f8 $a0
    ld [bc], a                                    ; $612f: $02
    ld a, c                                       ; $6130: $79
    ret nz                                        ; $6131: $c0

jr_061_6132:
    sbc h                                         ; $6132: $9c
    db $ec                                        ; $6133: $ec
    ld h, c                                       ; $6134: $61
    ldh a, [$63]                                  ; $6135: $f0 $63
    ld [hl+], a                                   ; $6137: $22
    ld h, b                                       ; $6138: $60
    ld e, b                                       ; $6139: $58
    add c                                         ; $613a: $81
    or c                                          ; $613b: $b1
    or c                                          ; $613c: $b1
    ld e, $a0                                     ; $613d: $1e $a0
    ld e, b                                       ; $613f: $58
    jp nc, $fd62                                  ; $6140: $d2 $62 $fd

    ld h, b                                       ; $6143: $60
    ld a, [$3780]                                 ; $6144: $fa $80 $37
    jr c, @-$02                                   ; $6147: $38 $fc

    jp nz, Jump_000_3b35                          ; $6149: $c2 $35 $3b

    db $e4                                        ; $614c: $e4
    ld h, b                                       ; $614d: $60
    ld a, d                                       ; $614e: $7a
    push hl                                       ; $614f: $e5
    xor h                                         ; $6150: $ac
    ld h, d                                       ; $6151: $62
    ld [hl], h                                    ; $6152: $74
    db $d3                                        ; $6153: $d3
    ldh [$c6], a                                  ; $6154: $e0 $c6
    cp h                                          ; $6156: $bc
    ld h, c                                       ; $6157: $61
    xor [hl]                                      ; $6158: $ae
    xor [hl]                                      ; $6159: $ae
    db $fc                                        ; $615a: $fc
    pop bc                                        ; $615b: $c1
    nop                                           ; $615c: $00
    ret nz                                        ; $615d: $c0

    pop hl                                        ; $615e: $e1
    cp [hl]                                       ; $615f: $be
    db $e4                                        ; $6160: $e4
    ld [hl], d                                    ; $6161: $72
    add b                                         ; $6162: $80
    ld l, d                                       ; $6163: $6a
    ld h, e                                       ; $6164: $63
    ld e, b                                       ; $6165: $58
    add d                                         ; $6166: $82
    xor $91                                       ; $6167: $ee $91
    add e                                         ; $6169: $83
    ld b, c                                       ; $616a: $41
    add $40                                       ; $616b: $c6 $40
    ld a, [hl]                                    ; $616d: $7e
    cp e                                          ; $616e: $bb
    and e                                         ; $616f: $a3
    xor a                                         ; $6170: $af
    xor a                                         ; $6171: $af
    xor [hl]                                      ; $6172: $ae
    ld b, l                                       ; $6173: $45
    ccf                                           ; $6174: $3f
    ld [hl], $c0                                  ; $6175: $36 $c0
    db $e3                                        ; $6177: $e3
    ld [bc], a                                    ; $6178: $02
    ld a, h                                       ; $6179: $7c
    pop hl                                        ; $617a: $e1
    ccf                                           ; $617b: $3f
    ld a, e                                       ; $617c: $7b
    ld [c], a                                     ; $617d: $e2
    xor a                                         ; $617e: $af
    and [hl]                                      ; $617f: $a6
    xor $91                                       ; $6180: $ee $91
    inc de                                        ; $6182: $13
    ld h, h                                       ; $6183: $64
    cp e                                          ; $6184: $bb
    and e                                         ; $6185: $a3
    adc a                                         ; $6186: $8f
    pop hl                                        ; $6187: $e1
    rlca                                          ; $6188: $07
    ld b, [hl]                                    ; $6189: $46
    add e                                         ; $618a: $83
    add h                                         ; $618b: $84
    ld a, b                                       ; $618c: $78
    ret nz                                        ; $618d: $c0

    cp l                                          ; $618e: $bd
    db $ec                                        ; $618f: $ec
    xor a                                         ; $6190: $af
    and e                                         ; $6191: $a3
    xor $91                                       ; $6192: $ee $91
    sbc [hl]                                      ; $6194: $9e
    ld h, b                                       ; $6195: $60
    or $fe                                        ; $6196: $f6 $fe
    ld hl, $d5d4                                  ; $6198: $21 $d4 $d5
    add hl, sp                                    ; $619b: $39
    and c                                         ; $619c: $a1
    sbc l                                         ; $619d: $9d
    sbc l                                         ; $619e: $9d
    sbc h                                         ; $619f: $9c
    ld b, [hl]                                    ; $61a0: $46
    rlca                                          ; $61a1: $07
    add e                                         ; $61a2: $83
    add [hl]                                      ; $61a3: $86
    add l                                         ; $61a4: $85
    ld sp, hl                                     ; $61a5: $f9
    jp $e47a                                      ; $61a6: $c3 $7a $e4


    ldh a, [$a0]                                  ; $61a9: $f0 $a0
    xor a                                         ; $61ab: $af
    and h                                         ; $61ac: $a4
    ld e, d                                       ; $61ad: $5a
    ld b, a                                       ; $61ae: $47
    ld hl, sp-$80                                 ; $61af: $f8 $80
    res 4, l                                      ; $61b1: $cb $a5
    jp nz, Jump_000_24c4                          ; $61b3: $c2 $c4 $24

    sbc a                                         ; $61b6: $9f
    sbc h                                         ; $61b7: $9c
    add [hl]                                      ; $61b8: $86
    add l                                         ; $61b9: $85
    xor [hl]                                      ; $61ba: $ae
    inc bc                                        ; $61bb: $03
    ld b, [hl]                                    ; $61bc: $46
    xor [hl]                                      ; $61bd: $ae
    cp [hl]                                       ; $61be: $be
    jp hl                                         ; $61bf: $e9


    xor a                                         ; $61c0: $af
    and c                                         ; $61c1: $a1
    ld l, [hl]                                    ; $61c2: $6e
    and l                                         ; $61c3: $a5
    ld l, b                                       ; $61c4: $68
    ld l, a                                       ; $61c5: $6f
    add b                                         ; $61c6: $80
    pop bc                                        ; $61c7: $c1
    ld d, b                                       ; $61c8: $50
    ld b, d                                       ; $61c9: $42
    ld d, $48                                     ; $61ca: $16 $48
    ld b, d                                       ; $61cc: $42
    ret nc                                        ; $61cd: $d0

    pop de                                        ; $61ce: $d1
    ld a, b                                       ; $61cf: $78
    pop bc                                        ; $61d0: $c1
    xor [hl]                                      ; $61d1: $ae
    or [hl]                                       ; $61d2: $b6
    ld b, b                                       ; $61d3: $40
    or e                                          ; $61d4: $b3
    and c                                         ; $61d5: $a1
    cp a                                          ; $61d6: $bf
    add sp, $00                                   ; $61d7: $e8 $00
    ld l, [hl]                                    ; $61d9: $6e
    and l                                         ; $61da: $a5
    ld l, b                                       ; $61db: $68
    ld l, [hl]                                    ; $61dc: $6e
    sbc [hl]                                      ; $61dd: $9e
    ld h, e                                       ; $61de: $63
    dec sp                                        ; $61df: $3b
    ld [hl+], a                                   ; $61e0: $22
    push af                                       ; $61e1: $f5
    jr nz, jr_061_621d                            ; $61e2: $20 $39

    jr nz, jr_061_621d                            ; $61e4: $20 $37

    jp nz, Jump_061_4035                          ; $61e6: $c2 $35 $40

    ld a, [bc]                                    ; $61e9: $0a
    cp a                                          ; $61ea: $bf
    ld [c], a                                     ; $61eb: $e2
    dec sp                                        ; $61ec: $3b
    dec a                                         ; $61ed: $3d
    db $e3                                        ; $61ee: $e3
    ld b, c                                       ; $61ef: $41
    and [hl]                                      ; $61f0: $a6
    ld b, b                                       ; $61f1: $40
    ld h, [hl]                                    ; $61f2: $66
    ld b, b                                       ; $61f3: $40
    db $fd                                        ; $61f4: $fd
    call nz, $8a2b                                ; $61f5: $c4 $2b $8a
    ret nz                                        ; $61f8: $c0

    sbc [hl]                                      ; $61f9: $9e
    ld h, e                                       ; $61fa: $63
    ld [c], a                                     ; $61fb: $e2
    and d                                         ; $61fc: $a2
    or $00                                        ; $61fd: $f6 $00
    ccf                                           ; $61ff: $3f
    ld hl, $c1fa                                  ; $6200: $21 $fa $c1
    or b                                          ; $6203: $b0
    ld h, c                                       ; $6204: $61
    xor [hl]                                      ; $6205: $ae
    ccf                                           ; $6206: $3f
    rlca                                          ; $6207: $07
    ld b, c                                       ; $6208: $41
    ccf                                           ; $6209: $3f
    ld b, e                                       ; $620a: $43
    or l                                          ; $620b: $b5
    push bc                                       ; $620c: $c5
    xor a                                         ; $620d: $af
    and d                                         ; $620e: $a2
    db $e4                                        ; $620f: $e4
    inc hl                                        ; $6210: $23
    and l                                         ; $6211: $a5
    ld c, e                                       ; $6212: $4b
    sbc [hl]                                      ; $6213: $9e
    ld h, e                                       ; $6214: $63
    jr nc, jr_061_6256                            ; $6215: $30 $3f

    ld [hl+], a                                   ; $6217: $22
    and h                                         ; $6218: $a4
    and $b3                                       ; $6219: $e6 $b3
    and e                                         ; $621b: $a3
    inc l                                         ; $621c: $2c

jr_061_621d:
    ld b, b                                       ; $621d: $40
    ld c, h                                       ; $621e: $4c
    ld d, d                                       ; $621f: $52
    add hl, sp                                    ; $6220: $39
    and $b9                                       ; $6221: $e6 $b9
    pop bc                                        ; $6223: $c1
    add b                                         ; $6224: $80
    and e                                         ; $6225: $a3
    jr nz, jr_061_625e                            ; $6226: $20 $36

    and h                                         ; $6228: $a4
    add b                                         ; $6229: $80
    jp z, Jump_061_66b6                           ; $622a: $ca $b6 $66

    ld b, a                                       ; $622d: $47
    inc h                                         ; $622e: $24
    xor a                                         ; $622f: $af
    ld h, e                                       ; $6230: $63
    xor l                                         ; $6231: $ad
    ld b, b                                       ; $6232: $40
    ld d, d                                       ; $6233: $52
    db $fd                                        ; $6234: $fd
    ld h, c                                       ; $6235: $61
    ret nz                                        ; $6236: $c0

    push hl                                       ; $6237: $e5
    ld h, d                                       ; $6238: $62
    ld h, e                                       ; $6239: $63
    ld h, h                                       ; $623a: $64
    ld a, e                                       ; $623b: $7b
    ld a, h                                       ; $623c: $7c
    ld a, l                                       ; $623d: $7d
    add b                                         ; $623e: $80
    ld h, $63                                     ; $623f: $26 $63
    sbc b                                         ; $6241: $98
    nop                                           ; $6242: $00
    nop                                           ; $6243: $00
    xor e                                         ; $6244: $ab
    db $db                                        ; $6245: $db
    ld b, e                                       ; $6246: $43
    dec bc                                        ; $6247: $0b
    inc hl                                        ; $6248: $23
    ld [hl-], a                                   ; $6249: $32
    ld bc, $a5f4                                  ; $624a: $01 $f4 $a5
    xor [hl]                                      ; $624d: $ae
    ei                                            ; $624e: $fb
    ld b, l                                       ; $624f: $45
    ld e, e                                       ; $6250: $5b
    pop bc                                        ; $6251: $c1
    push hl                                       ; $6252: $e5
    ld h, a                                       ; $6253: $67
    dec [hl]                                      ; $6254: $35
    dec [hl]                                      ; $6255: $35

jr_061_6256:
    ld b, d                                       ; $6256: $42
    ld b, [hl]                                    ; $6257: $46
    rlca                                          ; $6258: $07
    ld a, a                                       ; $6259: $7f
    ld a, l                                       ; $625a: $7d
    sbc [hl]                                      ; $625b: $9e
    ld e, [hl]                                    ; $625c: $5e
    ld [bc], a                                    ; $625d: $02

jr_061_625e:
    nop                                           ; $625e: $00
    xor l                                         ; $625f: $ad
    dec a                                         ; $6260: $3d
    push hl                                       ; $6261: $e5
    sbc l                                         ; $6262: $9d
    add c                                         ; $6263: $81
    ld sp, $7421                                  ; $6264: $31 $21 $74
    xor a                                         ; $6267: $af
    ld h, h                                       ; $6268: $64
    jr nc, jr_061_628c                            ; $6269: $30 $21

    ld b, d                                       ; $626b: $42
    db $ec                                        ; $626c: $ec
    ld b, c                                       ; $626d: $41
    dec [hl]                                      ; $626e: $35
    dec [hl]                                      ; $626f: $35
    ld l, c                                       ; $6270: $69
    and $42                                       ; $6271: $e6 $42
    inc bc                                        ; $6273: $03
    ld b, [hl]                                    ; $6274: $46
    ld a, a                                       ; $6275: $7f
    and $21                                       ; $6276: $e6 $21
    scf                                           ; $6278: $37
    adc h                                         ; $6279: $8c
    ld e, $48                                     ; $627a: $1e $48
    ld h, a                                       ; $627c: $67
    and $ae                                       ; $627d: $e6 $ae
    ld h, d                                       ; $627f: $62
    xor h                                         ; $6280: $ac
    ld [bc], a                                    ; $6281: $02
    ld [hl], c                                    ; $6282: $71
    ld b, b                                       ; $6283: $40
    ld a, [hl]                                    ; $6284: $7e
    ret nz                                        ; $6285: $c0

    ld a, h                                       ; $6286: $7c
    ret nz                                        ; $6287: $c0

    ret nz                                        ; $6288: $c0

    pop hl                                        ; $6289: $e1
    ld a, [hl-]                                   ; $628a: $3a
    ld b, l                                       ; $628b: $45

jr_061_628c:
    xor [hl]                                      ; $628c: $ae
    and [hl]                                      ; $628d: $a6
    ld h, $f0                                     ; $628e: $26 $f0
    add b                                         ; $6290: $80
    adc $18                                       ; $6291: $ce $18
    ld c, c                                       ; $6293: $49
    xor [hl]                                      ; $6294: $ae
    ld h, l                                       ; $6295: $65
    ld [hl], d                                    ; $6296: $72
    and c                                         ; $6297: $a1
    ld b, l                                       ; $6298: $45
    ccf                                           ; $6299: $3f
    ld b, e                                       ; $629a: $43
    ld b, c                                       ; $629b: $41
    ld e, a                                       ; $629c: $5f
    ld b, e                                       ; $629d: $43
    ccf                                           ; $629e: $3f
    ld a, [hl-]                                   ; $629f: $3a
    ld l, e                                       ; $62a0: $6b
    ld l, h                                       ; $62a1: $6c
    ld h, l                                       ; $62a2: $65
    ld b, c                                       ; $62a3: $41
    xor a                                         ; $62a4: $af
    and $22                                       ; $62a5: $e6 $22
    ret nz                                        ; $62a7: $c0

    scf                                           ; $62a8: $37
    adc h                                         ; $62a9: $8c
    ld e, $4f                                     ; $62aa: $1e $4f
    add e                                         ; $62ac: $83
    ld [hl+], a                                   ; $62ad: $22
    ld c, [hl]                                    ; $62ae: $4e
    add e                                         ; $62af: $83
    jr z, jr_061_62b2                             ; $62b0: $28 $00

jr_061_62b2:
    ld a, e                                       ; $62b2: $7b
    pop bc                                        ; $62b3: $c1
    add hl, sp                                    ; $62b4: $39
    ld l, [hl]                                    ; $62b5: $6e
    add c                                         ; $62b6: $81
    ld [hl], h                                    ; $62b7: $74
    ld h, l                                       ; $62b8: $65
    ld b, d                                       ; $62b9: $42
    ld h, $20                                     ; $62ba: $26 $20
    ld l, c                                       ; $62bc: $69
    ld b, h                                       ; $62bd: $44
    add b                                         ; $62be: $80
    jp nc, Jump_061_4a2a                          ; $62bf: $d2 $2a $4a

    and [hl]                                      ; $62c2: $a6
    inc bc                                        ; $62c3: $03
    and c                                         ; $62c4: $a1
    sbc $a7                                       ; $62c5: $de $a7
    nop                                           ; $62c7: $00
    ld h, c                                       ; $62c8: $61
    ld d, [hl]                                    ; $62c9: $56
    ld b, h                                       ; $62ca: $44
    inc a                                         ; $62cb: $3c
    rst $38                                       ; $62cc: $ff
    pop bc                                        ; $62cd: $c1
    inc a                                         ; $62ce: $3c
    ld b, h                                       ; $62cf: $44
    and b                                         ; $62d0: $a0
    dec hl                                        ; $62d1: $2b
    ld h, h                                       ; $62d2: $64
    ld [hl], l                                    ; $62d3: $75
    ld h, h                                       ; $62d4: $64

Call_061_62d5:
    add b                                         ; $62d5: $80
    call z, $eb3d                                 ; $62d6: $cc $3d $eb
    ld [hl], e                                    ; $62d9: $73
    and h                                         ; $62da: $a4
    sbc [hl]                                      ; $62db: $9e
    dec sp                                        ; $62dc: $3b
    pop bc                                        ; $62dd: $c1
    ld d, l                                       ; $62de: $55
    ld bc, $bf42                                  ; $62df: $01 $42 $bf
    jp nz, $c07e                                  ; $62e2: $c2 $7e $c0

    cp l                                          ; $62e5: $bd
    and e                                         ; $62e6: $a3
    db $e4                                        ; $62e7: $e4
    inc bc                                        ; $62e8: $03
    add b                                         ; $62e9: $80
    call $eb3d                                    ; $62ea: $cd $3d $eb
    ld [hl], e                                    ; $62ed: $73
    and h                                         ; $62ee: $a4
    ld c, h                                       ; $62ef: $4c
    ccf                                           ; $62f0: $3f

jr_061_62f1:
    pop hl                                        ; $62f1: $e1
    dec sp                                        ; $62f2: $3b
    ret nz                                        ; $62f3: $c0

    ld h, d                                       ; $62f4: $62
    halt                                          ; $62f5: $76
    and h                                         ; $62f6: $a4
    ld hl, $2164                                  ; $62f7: $21 $64 $21
    and c                                         ; $62fa: $a1
    sbc l                                         ; $62fb: $9d
    and e                                         ; $62fc: $a3
    jr nz, jr_061_62f1                            ; $62fd: $20 $f2

    ld b, b                                       ; $62ff: $40
    add b                                         ; $6300: $80
    rst $08                                       ; $6301: $cf
    sub d                                         ; $6302: $92
    ld a, [bc]                                    ; $6303: $0a
    rla                                           ; $6304: $17
    and h                                         ; $6305: $a4
    cp $c1                                        ; $6306: $fe $c1
    ld [hl], $01                                  ; $6308: $36 $01
    pop bc                                        ; $630a: $c1
    ld h, h                                       ; $630b: $64
    inc hl                                        ; $630c: $23
    ld bc, $24ae                                  ; $630d: $01 $ae $24
    nop                                           ; $6310: $00
    and e                                         ; $6311: $a3
    ld bc, $85f9                                  ; $6312: $01 $f9 $85
    add b                                         ; $6315: $80
    pop de                                        ; $6316: $d1
    or c                                          ; $6317: $b1
    xor b                                         ; $6318: $a8
    add sp, $21                                   ; $6319: $e8 $21
    inc a                                         ; $631b: $3c
    ret nz                                        ; $631c: $c0

    inc b                                         ; $631d: $04
    ld b, d                                       ; $631e: $42
    ld [c], a                                     ; $631f: $e2
    db $e3                                        ; $6320: $e3
    ld [bc], a                                    ; $6321: $02
    xor a                                         ; $6322: $af
    add sp, $23                                   ; $6323: $e8 $23
    sub [hl]                                      ; $6325: $96
    and c                                         ; $6326: $a1
    dec a                                         ; $6327: $3d
    db $e4                                        ; $6328: $e4
    sbc [hl]                                      ; $6329: $9e
    dec d                                         ; $632a: $15
    add sp, $26                                   ; $632b: $e8 $26
    nop                                           ; $632d: $00
    jp hl                                         ; $632e: $e9


    jr nz, jr_061_62f1                            ; $632f: $20 $c0

    push hl                                       ; $6331: $e5
    ld a, [hl]                                    ; $6332: $7e
    ret nz                                        ; $6333: $c0

    and e                                         ; $6334: $a3
    inc bc                                        ; $6335: $03
    inc sp                                        ; $6336: $33
    ld b, c                                       ; $6337: $41
    dec a                                         ; $6338: $3d
    db $e4                                        ; $6339: $e4
    and h                                         ; $633a: $a4
    rla                                           ; $633b: $17
    add sp, $26                                   ; $633c: $e8 $26
    inc sp                                        ; $633e: $33
    ld a, c                                       ; $633f: $79
    ld a, [hl]                                    ; $6340: $7e
    ld h, $20                                     ; $6341: $26 $20
    ld a, a                                       ; $6343: $7f
    db $e4                                        ; $6344: $e4
    ld b, [hl]                                    ; $6345: $46
    add e                                         ; $6346: $83
    ld a, d                                       ; $6347: $7a
    add c                                         ; $6348: $81
    ld c, e                                       ; $6349: $4b
    ld bc, $da23                                  ; $634a: $01 $23 $da
    db $db                                        ; $634d: $db
    add b                                         ; $634e: $80
    rst $10                                       ; $634f: $d7
    ld a, d                                       ; $6350: $7a

jr_061_6351:
    add $e8                                       ; $6351: $c6 $e8
    ld [hl+], a                                   ; $6353: $22
    add b                                         ; $6354: $80
    add sp, $23                                   ; $6355: $e8 $23
    ld h, d                                       ; $6357: $62
    ld [bc], a                                    ; $6358: $02
    ret nz                                        ; $6359: $c0

    ld [hl+], a                                   ; $635a: $22
    ld h, b                                       ; $635b: $60
    add hl, sp                                    ; $635c: $39
    add h                                         ; $635d: $84
    add b                                         ; $635e: $80
    reti                                          ; $635f: $d9


    dec hl                                        ; $6360: $2b
    add l                                         ; $6361: $85
    xor [hl]                                      ; $6362: $ae
    ld h, b                                       ; $6363: $60
    halt                                          ; $6364: $76
    add b                                         ; $6365: $80
    add d                                         ; $6366: $82
    add e                                         ; $6367: $83
    ld e, $73                                     ; $6368: $1e $73
    ld h, h                                       ; $636a: $64
    ld l, h                                       ; $636b: $6c
    ld [hl], d                                    ; $636c: $72
    adc b                                         ; $636d: $88
    add a                                         ; $636e: $87
    ld [hl+], a                                   ; $636f: $22
    ld h, b                                       ; $6370: $60
    cp h                                          ; $6371: $bc
    jp $dc80                                      ; $6372: $c3 $80 $dc


    db $ec                                        ; $6375: $ec
    ld e, c                                       ; $6376: $59
    push bc                                       ; $6377: $c5
    dec [hl]                                      ; $6378: $35
    add b                                         ; $6379: $80

Jump_061_637a:
    add l                                         ; $637a: $85
    add [hl]                                      ; $637b: $86
    cp a                                          ; $637c: $bf
    db $e3                                        ; $637d: $e3
    ld l, h                                       ; $637e: $6c
    ld l, a                                       ; $637f: $6f
    ld l, [hl]                                    ; $6380: $6e
    add d                                         ; $6381: $82
    cp e                                          ; $6382: $bb
    add b                                         ; $6383: $80
    xor a                                         ; $6384: $af
    inc a                                         ; $6385: $3c
    pop bc                                        ; $6386: $c1
    cp h                                          ; $6387: $bc
    call nz, $dd80                                ; $6388: $c4 $80 $dd
    rst $20                                       ; $638b: $e7
    ld [hl+], a                                   ; $638c: $22
    cp a                                          ; $638d: $bf
    ld [c], a                                     ; $638e: $e2
    ld b, h                                       ; $638f: $44
    ld bc, $c13c                                  ; $6390: $01 $3c $c1
    pop hl                                        ; $6393: $e1
    cp [hl]                                       ; $6394: $be
    jp nz, Jump_061_4433                          ; $6395: $c2 $33 $44

    rst $28                                       ; $6398: $ef
    nop                                           ; $6399: $00
    add b                                         ; $639a: $80
    sbc $c1                                       ; $639b: $de $c1
    inc bc                                        ; $639d: $03
    ld a, [hl]                                    ; $639e: $7e
    ldh [$3f], a                                  ; $639f: $e0 $3f
    add a                                         ; $63a1: $87
    adc b                                         ; $63a2: $88
    ld [hl], c                                    ; $63a3: $71
    ld [hl], c                                    ; $63a4: $71
    ld [hl], b                                    ; $63a5: $70
    ld l, [hl]                                    ; $63a6: $6e
    inc a                                         ; $63a7: $3c
    and d                                         ; $63a8: $a2
    or c                                          ; $63a9: $b1
    inc h                                         ; $63aa: $24
    nop                                           ; $63ab: $00
    cp c                                          ; $63ac: $b9
    ld h, c                                       ; $63ad: $61
    add b                                         ; $63ae: $80
    db $dd                                        ; $63af: $dd
    xor a                                         ; $63b0: $af
    ld h, c                                       ; $63b1: $61
    xor $42                                       ; $63b2: $ee $42
    cp c                                          ; $63b4: $b9
    add b                                         ; $63b5: $80
    db $ed                                        ; $63b6: $ed
    inc hl                                        ; $63b7: $23
    di                                            ; $63b8: $f3
    ld hl, $e5bf                                  ; $63b9: $21 $bf $e5
    ldh a, [rNR13]                                ; $63bc: $f0 $13
    ld h, e                                       ; $63be: $63
    add b                                         ; $63bf: $80
    reti                                          ; $63c0: $d9


    ld c, h                                       ; $63c1: $4c
    inc bc                                        ; $63c2: $03
    ld sp, $4564                                  ; $63c3: $31 $64 $45
    ccf                                           ; $63c6: $3f
    scf                                           ; $63c7: $37
    jr c, jr_061_63ca                             ; $63c8: $38 $00

jr_061_63ca:
    pop bc                                        ; $63ca: $c1
    db $e4                                        ; $63cb: $e4
    ld a, [c]                                     ; $63cc: $f2
    ld h, $31                                     ; $63cd: $26 $31
    jr nz, jr_061_6351                            ; $63cf: $20 $80

    reti                                          ; $63d1: $d9


    rst $10                                       ; $63d2: $d7
    add e                                         ; $63d3: $83
    dec h                                         ; $63d4: $25
    dec h                                         ; $63d5: $25
    dec l                                         ; $63d6: $2d
    ld b, b                                       ; $63d7: $40
    pop af                                        ; $63d8: $f1
    inc b                                         ; $63d9: $04
    nop                                           ; $63da: $00
    or c                                          ; $63db: $b1
    inc hl                                        ; $63dc: $23
    adc a                                         ; $63dd: $8f
    ld [hl+], a                                   ; $63de: $22
    add b                                         ; $63df: $80
    ret c                                         ; $63e0: $d8

    ld l, [hl]                                    ; $63e1: $6e
    jp nz, Jump_061_442c                          ; $63e2: $c2 $2c $44

    cp a                                          ; $63e5: $bf
    db $e4                                        ; $63e6: $e4
    xor e                                         ; $63e7: $ab
    ld b, c                                       ; $63e8: $41
    push af                                       ; $63e9: $f5
    jr nz, jr_061_63ec                            ; $63ea: $20 $00

jr_061_63ec:
    or c                                          ; $63ec: $b1
    inc hl                                        ; $63ed: $23
    rst $28                                       ; $63ee: $ef
    nop                                           ; $63ef: $00
    ld a, c                                       ; $63f0: $79
    add a                                         ; $63f1: $87
    ld a, [$2495]                                 ; $63f2: $fa $95 $24
    inc hl                                        ; $63f5: $23
    ld hl, sp-$7e                                 ; $63f6: $f8 $82
    ld c, b                                       ; $63f8: $48
    pop hl                                        ; $63f9: $e1
    xor d                                         ; $63fa: $aa
    jr nz, jr_061_63fe                            ; $63fb: $20 $01

    and [hl]                                      ; $63fd: $a6

jr_061_63fe:
    db $fc                                        ; $63fe: $fc
    call nz, $8176                                ; $63ff: $c4 $76 $81
    ld a, c                                       ; $6402: $79
    add a                                         ; $6403: $87
    ld a, [$f696]                                 ; $6404: $fa $96 $f6
    ld h, a                                       ; $6407: $67
    adc c                                         ; $6408: $89
    pop hl                                        ; $6409: $e1
    dec [hl]                                      ; $640a: $35
    add b                                         ; $640b: $80
    inc bc                                        ; $640c: $03
    and a                                         ; $640d: $a7
    ld h, [hl]                                    ; $640e: $66
    cp e                                          ; $640f: $bb
    jp Jump_061_41f4                              ; $6410: $c3 $f4 $41


    dec [hl]                                      ; $6413: $35
    ld b, b                                       ; $6414: $40
    ld b, e                                       ; $6415: $43
    ld sp, hl                                     ; $6416: $f9
    dec a                                         ; $6417: $3d
    jp hl                                         ; $6418: $e9


    add b                                         ; $6419: $80
    pop hl                                        ; $641a: $e1
    add [hl]                                      ; $641b: $86
    dec [hl]                                      ; $641c: $35
    add d                                         ; $641d: $82
    and e                                         ; $641e: $a3
    ld l, b                                       ; $641f: $68
    cp a                                          ; $6420: $bf
    db $e3                                        ; $6421: $e3
    db $f4                                        ; $6422: $f4
    ld b, c                                       ; $6423: $41
    add b                                         ; $6424: $80
    db $db                                        ; $6425: $db
    dec a                                         ; $6426: $3d
    ld [$cca1], a                                 ; $6427: $ea $a1 $cc
    pop bc                                        ; $642a: $c1
    db $e4                                        ; $642b: $e4
    ld a, [hl-]                                   ; $642c: $3a
    and b                                         ; $642d: $a0
    or a                                          ; $642e: $b7
    cp b                                          ; $642f: $b8
    halt                                          ; $6430: $76
    ld h, b                                       ; $6431: $60
    db $f4                                        ; $6432: $f4
    ld b, e                                       ; $6433: $43
    sub $d7                                       ; $6434: $d6 $d7
    jr c, jr_061_6438                             ; $6436: $38 $00

jr_061_6438:
    cp b                                          ; $6438: $b8
    dec a                                         ; $6439: $3d
    ld [$62b7], a                                 ; $643a: $ea $b7 $62
    cp c                                          ; $643d: $b9
    cp d                                          ; $643e: $ba
    and e                                         ; $643f: $a3
    ld a, [hl-]                                   ; $6440: $3a
    and c                                         ; $6441: $a1
    ld l, $00                                     ; $6442: $2e $00
    ldh [$34], a                                  ; $6444: $e0 $34
    ld b, c                                       ; $6446: $41
    scf                                           ; $6447: $37
    add h                                         ; $6448: $84
    ld b, e                                       ; $6449: $43
    ld a, [$c67a]                                 ; $644a: $fa $7a $c6
    dec l                                         ; $644d: $2d
    jr nz, jr_061_6495                            ; $644e: $20 $45

    ld [hl], $6e                                  ; $6450: $36 $6e
    inc bc                                        ; $6452: $03
    ld l, a                                       ; $6453: $6f
    ld l, h                                       ; $6454: $6c
    pop bc                                        ; $6455: $c1
    db $e3                                        ; $6456: $e3
    ld a, [$5683]                                 ; $6457: $fa $83 $56
    ld b, c                                       ; $645a: $41
    ld b, e                                       ; $645b: $43
    ei                                            ; $645c: $fb
    ld a, d                                       ; $645d: $7a
    ret                                           ; $645e: $c9


    cp a                                          ; $645f: $bf
    db $e3                                        ; $6460: $e3
    nop                                           ; $6461: $00
    pop bc                                        ; $6462: $c1
    db $e3                                        ; $6463: $e3
    or [hl]                                       ; $6464: $b6
    ld b, e                                       ; $6465: $43
    rrca                                          ; $6466: $0f
    ld hl, $fb43                                  ; $6467: $21 $43 $fb
    ld h, d                                       ; $646a: $62
    rlca                                          ; $646b: $07
    xor e                                         ; $646c: $ab
    ld [bc], a                                    ; $646d: $02
    ld a, [hl]                                    ; $646e: $7e
    ldh [$c1], a                                  ; $646f: $e0 $c1
    add sp, $30                                   ; $6471: $e8 $30
    scf                                           ; $6473: $37
    ld b, d                                       ; $6474: $42
    ld b, e                                       ; $6475: $43
    rst $38                                       ; $6476: $ff
    and a                                         ; $6477: $a7
    inc bc                                        ; $6478: $03
    xor e                                         ; $6479: $ab
    inc bc                                        ; $647a: $03
    ld b, l                                       ; $647b: $45
    ld [hl], $82                                  ; $647c: $36 $82
    and $5a                                       ; $647e: $e6 $5a
    nop                                           ; $6480: $00
    db $10                                        ; $6481: $10
    db $d3                                        ; $6482: $d3
    ld bc, $ff43                                  ; $6483: $01 $43 $ff
    ld l, e                                       ; $6486: $6b
    inc bc                                        ; $6487: $03
    xor e                                         ; $6488: $ab
    inc bc                                        ; $6489: $03
    sbc l                                         ; $648a: $9d
    rst $38                                       ; $648b: $ff
    db $e4                                        ; $648c: $e4
    ret nz                                        ; $648d: $c0

    add b                                         ; $648e: $80
    ld b, c                                       ; $648f: $41
    and d                                         ; $6490: $a2
    nop                                           ; $6491: $00
    nop                                           ; $6492: $00
    cp d                                          ; $6493: $ba
    db $f4                                        ; $6494: $f4

jr_061_6495:
    ld h, $52                                     ; $6495: $26 $52
    ld b, l                                       ; $6497: $45
    adc $82                                       ; $6498: $ce $82
    add [hl]                                      ; $649a: $86
    add l                                         ; $649b: $85
    ld b, c                                       ; $649c: $41
    and e                                         ; $649d: $a3
    nop                                           ; $649e: $00
    cp l                                          ; $649f: $bd
    ld l, b                                       ; $64a0: $68
    ld l, b                                       ; $64a1: $68
    di                                            ; $64a2: $f3
    sub $d7                                       ; $64a3: $d6 $d7
    inc bc                                        ; $64a5: $03
    inc h                                         ; $64a6: $24
    or a                                          ; $64a7: $b7
    and $d8                                       ; $64a8: $e6 $d8
    reti                                          ; $64aa: $d9


    call c, Call_000_00dd                         ; $64ab: $dc $dd $00
    nop                                           ; $64ae: $00
    nop                                           ; $64af: $00
    pop bc                                        ; $64b0: $c1
    nop                                           ; $64b1: $00
    rst $38                                       ; $64b2: $ff
    rst $38                                       ; $64b3: $ff
    rst $38                                       ; $64b4: $ff
    rst $38                                       ; $64b5: $ff
    rst $38                                       ; $64b6: $ff
    rst $38                                       ; $64b7: $ff
    rst $38                                       ; $64b8: $ff
    rst $38                                       ; $64b9: $ff
    rst $38                                       ; $64ba: $ff
    rst $38                                       ; $64bb: $ff
    nop                                           ; $64bc: $00
    nop                                           ; $64bd: $00
    ld bc, $fe80                                  ; $64be: $01 $80 $fe
    ldh [rIE], a                                  ; $64c1: $e0 $ff
    rst $38                                       ; $64c3: $ff
    rst $38                                       ; $64c4: $ff
    rst $38                                       ; $64c5: $ff
    rst $38                                       ; $64c6: $ff
    add sp, $00                                   ; $64c7: $e8 $00
    nop                                           ; $64c9: $00
    nop                                           ; $64ca: $00
    ld [bc], a                                    ; $64cb: $02
    nop                                           ; $64cc: $00
    dec bc                                        ; $64cd: $0b
    dec b                                         ; $64ce: $05
    ld [bc], a                                    ; $64cf: $02
    ld bc, $0606                                  ; $64d0: $01 $06 $06
    ld [bc], a                                    ; $64d3: $02
    ld [bc], a                                    ; $64d4: $02
    rrca                                          ; $64d5: $0f
    ld b, $02                                     ; $64d6: $06 $02
    inc bc                                        ; $64d8: $03
    db $10                                        ; $64d9: $10
    rlca                                          ; $64da: $07
    ld [bc], a                                    ; $64db: $02
    inc b                                         ; $64dc: $04
    dec b                                         ; $64dd: $05
    ld [$0502], sp                                ; $64de: $08 $02 $05
    ld b, $0b                                     ; $64e1: $06 $0b
    ld [bc], a                                    ; $64e3: $02
    ld b, $08                                     ; $64e4: $06 $08
    inc c                                         ; $64e6: $0c
    ld [bc], a                                    ; $64e7: $02
    rlca                                          ; $64e8: $07
    add hl, bc                                    ; $64e9: $09
    dec c                                         ; $64ea: $0d
    ld [bc], a                                    ; $64eb: $02
    ld [$0d11], sp                                ; $64ec: $08 $11 $0d
    ld [bc], a                                    ; $64ef: $02
    add hl, bc                                    ; $64f0: $09
    ld [$020e], sp                                ; $64f1: $08 $0e $02
    ld a, [bc]                                    ; $64f4: $0a
    ld [de], a                                    ; $64f5: $12
    rrca                                          ; $64f6: $0f
    ld [bc], a                                    ; $64f7: $02
    dec bc                                        ; $64f8: $0b
    inc d                                         ; $64f9: $14
    db $10                                        ; $64fa: $10
    ld [bc], a                                    ; $64fb: $02
    inc c                                         ; $64fc: $0c
    add hl, bc                                    ; $64fd: $09
    ld de, $0d02                                  ; $64fe: $11 $02 $0d
    ld a, [bc]                                    ; $6501: $0a
    inc de                                        ; $6502: $13
    ld [bc], a                                    ; $6503: $02
    ld c, $18                                     ; $6504: $0e $18
    inc de                                        ; $6506: $13
    ld [bc], a                                    ; $6507: $02
    rrca                                          ; $6508: $0f
    dec bc                                        ; $6509: $0b
    inc d                                         ; $650a: $14
    ld [bc], a                                    ; $650b: $02
    db $10                                        ; $650c: $10
    ld e, $15                                     ; $650d: $1e $15
    ld [bc], a                                    ; $650f: $02
    ld de, $160d                                  ; $6510: $11 $0d $16
    ld [bc], a                                    ; $6513: $02
    ld [de], a                                    ; $6514: $12
    ld c, $16                                     ; $6515: $0e $16
    ld [bc], a                                    ; $6517: $02
    inc de                                        ; $6518: $13
    rrca                                          ; $6519: $0f
    rla                                           ; $651a: $17
    ld [bc], a                                    ; $651b: $02
    inc d                                         ; $651c: $14
    dec h                                         ; $651d: $25
    add hl, de                                    ; $651e: $19
    ld [bc], a                                    ; $651f: $02
    dec d                                         ; $6520: $15
    inc de                                        ; $6521: $13
    ld a, [de]                                    ; $6522: $1a
    ld [bc], a                                    ; $6523: $02
    ld d, $15                                     ; $6524: $16 $15
    ld a, [de]                                    ; $6526: $1a
    ld [bc], a                                    ; $6527: $02
    rla                                           ; $6528: $17
    ld h, $1a                                     ; $6529: $26 $1a
    ld [bc], a                                    ; $652b: $02
    jr jr_061_6542                                ; $652c: $18 $14

    dec de                                        ; $652e: $1b
    ld [bc], a                                    ; $652f: $02
    add hl, de                                    ; $6530: $19
    ld d, $1c                                     ; $6531: $16 $1c
    ld [bc], a                                    ; $6533: $02
    ld a, [de]                                    ; $6534: $1a
    add hl, hl                                    ; $6535: $29
    inc e                                         ; $6536: $1c
    ld [bc], a                                    ; $6537: $02
    dec de                                        ; $6538: $1b
    jr jr_061_6558                                ; $6539: $18 $1d

    ld [bc], a                                    ; $653b: $02
    inc e                                         ; $653c: $1c
    ld a, [de]                                    ; $653d: $1a
    dec e                                         ; $653e: $1d
    ld [bc], a                                    ; $653f: $02
    dec e                                         ; $6540: $1d
    dec de                                        ; $6541: $1b

jr_061_6542:
    jr nz, jr_061_6546                            ; $6542: $20 $02

    ld e, $2b                                     ; $6544: $1e $2b

jr_061_6546:
    ld [hl+], a                                   ; $6546: $22
    ld [bc], a                                    ; $6547: $02
    rra                                           ; $6548: $1f
    dec l                                         ; $6549: $2d
    daa                                           ; $654a: $27
    ld [bc], a                                    ; $654b: $02
    jr nz, jr_061_657c                            ; $654c: $20 $2e

    jr z, @+$04                                   ; $654e: $28 $02

    ld hl, $2b22                                  ; $6550: $21 $22 $2b
    ld [bc], a                                    ; $6553: $02
    ld [hl+], a                                   ; $6554: $22
    ld sp, $022d                                  ; $6555: $31 $2d $02

jr_061_6558:
    inc hl                                        ; $6558: $23
    inc [hl]                                      ; $6559: $34
    ld [hl-], a                                   ; $655a: $32
    ld [bc], a                                    ; $655b: $02
    inc h                                         ; $655c: $24
    dec [hl]                                      ; $655d: $35
    inc sp                                        ; $655e: $33
    ld [bc], a                                    ; $655f: $02
    dec h                                         ; $6560: $25
    inc l                                         ; $6561: $2c
    dec [hl]                                      ; $6562: $35
    ld [bc], a                                    ; $6563: $02
    ld h, $37                                     ; $6564: $26 $37
    add hl, sp                                    ; $6566: $39
    rst $38                                       ; $6567: $ff
    rst $38                                       ; $6568: $ff
    rst $38                                       ; $6569: $ff
    ld [hl], d                                    ; $656a: $72
    ld h, l                                       ; $656b: $65
    db $f4                                        ; $656c: $f4
    ld l, b                                       ; $656d: $68
    ld [hl], a                                    ; $656e: $77
    ld l, l                                       ; $656f: $6d
    sub d                                         ; $6570: $92
    ld l, l                                       ; $6571: $6d
    cp a                                          ; $6572: $bf
    ld c, $0e                                     ; $6573: $0e $0e
    dec c                                         ; $6575: $0d
    dec c                                         ; $6576: $0d
    dec c                                         ; $6577: $0d
    ld c, $fa                                     ; $6578: $0e $fa
    db $ed                                        ; $657a: $ed
    ld c, l                                       ; $657b: $4d

jr_061_657c:
    ld bc, $e84d                                  ; $657c: $01 $4d $e8
    pop hl                                        ; $657f: $e1
    db $fc                                        ; $6580: $fc
    rst $20                                       ; $6581: $e7
    ldh a, [$e1]                                  ; $6582: $f0 $e1
    db $ec                                        ; $6584: $ec
    ld [c], a                                     ; $6585: $e2
    sub $ee                                       ; $6586: $d6 $ee
    push bc                                       ; $6588: $c5
    ldh [$fd], a                                  ; $6589: $e0 $fd
    rst $28                                       ; $658b: $ef
    ld bc, $ea2d                                  ; $658c: $01 $2d $ea
    ld a, [c]                                     ; $658f: $f2
    rst $38                                       ; $6590: $ff
    rst $38                                       ; $6591: $ff
    or e                                          ; $6592: $b3
    push hl                                       ; $6593: $e5
    add d                                         ; $6594: $82
    db $ec                                        ; $6595: $ec
    ld a, d                                       ; $6596: $7a
    and $93                                       ; $6597: $e6 $93
    ldh a, [rSCX]                                 ; $6599: $f0 $43
    ldh a, [$82]                                  ; $659b: $f0 $82
    ld l, h                                       ; $659d: $6c
    ld [$742d], a                                 ; $659e: $ea $2d $74
    ld [$e014], a                                 ; $65a1: $ea $14 $e0
    sub $f6                                       ; $65a4: $d6 $f6
    add e                                         ; $65a6: $83
    and $04                                       ; $65a7: $e6 $04
    ld [$f12d], a                                 ; $65a9: $ea $2d $f1
    dec l                                         ; $65ac: $2d
    halt                                          ; $65ad: $76
    db $ed                                        ; $65ae: $ed
    rst $38                                       ; $65af: $ff
    rst $38                                       ; $65b0: $ff
    add [hl]                                      ; $65b1: $86
    rst $20                                       ; $65b2: $e7
    dec c                                         ; $65b3: $0d
    ld l, l                                       ; $65b4: $6d
    ld l, l                                       ; $65b5: $6d
    ld l, l                                       ; $65b6: $6d
    ld d, b                                       ; $65b7: $50
    ld a, [hl]                                    ; $65b8: $7e
    pop hl                                        ; $65b9: $e1
    ld a, d                                       ; $65ba: $7a
    db $eb                                        ; $65bb: $eb

Jump_061_65bc:
    ld a, $ed                                     ; $65bc: $3e $ed
    add [hl]                                      ; $65be: $86
    db $d3                                        ; $65bf: $d3
    dec l                                         ; $65c0: $2d
    jp Jump_000_0be1                              ; $65c1: $c3 $e1 $0b


    rst $38                                       ; $65c4: $ff
    ldh [rSB], a                                  ; $65c5: $e0 $01
    ld c, l                                       ; $65c7: $4d
    cp h                                          ; $65c8: $bc
    pop hl                                        ; $65c9: $e1
    ld a, d                                       ; $65ca: $7a
    push bc                                       ; $65cb: $c5
    ld a, $e1                                     ; $65cc: $3e $e1
    add b                                         ; $65ce: $80
    ret c                                         ; $65cf: $d8

    ld [hl], b                                    ; $65d0: $70
    add $48                                       ; $65d1: $c6 $48
    ldh [$c3], a                                  ; $65d3: $e0 $c3
    ld [c], a                                     ; $65d5: $e2
    add [hl]                                      ; $65d6: $86
    db $fc                                        ; $65d7: $fc
    db $e3                                        ; $65d8: $e3
    ld c, l                                       ; $65d9: $4d
    dec l                                         ; $65da: $2d
    ld hl, sp-$39                                 ; $65db: $f8 $c7
    dec a                                         ; $65dd: $3d
    ld a, [$c608]                                 ; $65de: $fa $08 $c6
    ld b, [hl]                                    ; $65e1: $46
    ldh [$0b], a                                  ; $65e2: $e0 $0b
    inc bc                                        ; $65e4: $03
    dec bc                                        ; $65e5: $0b
    dec c                                         ; $65e6: $0d
    add c                                         ; $65e7: $81
    ldh [$fc], a                                  ; $65e8: $e0 $fc
    db $e3                                        ; $65ea: $e3
    ret nz                                        ; $65eb: $c0

    ldh [$f0], a                                  ; $65ec: $e0 $f0
    and [hl]                                      ; $65ee: $a6
    add b                                         ; $65ef: $80
    db $db                                        ; $65f0: $db
    ld l, d                                       ; $65f1: $6a
    jp $8480                                      ; $65f2: $c3 $80 $84


    db $e3                                        ; $65f5: $e3
    ret nz                                        ; $65f6: $c0

    rst $20                                       ; $65f7: $e7
    ld a, a                                       ; $65f8: $7f
    ldh [$0d], a                                  ; $65f9: $e0 $0d
    db $f4                                        ; $65fb: $f4
    add [hl]                                      ; $65fc: $86
    jp nc, $e484                                  ; $65fd: $d2 $84 $e4

    db $fd                                        ; $6600: $fd
    add sp, $4d                                   ; $6601: $e8 $4d
    nop                                           ; $6603: $00
    xor h                                         ; $6604: $ac
    and b                                         ; $6605: $a0
    ld l, d                                       ; $6606: $6a
    and c                                         ; $6607: $a1
    rst $38                                       ; $6608: $ff
    rst $38                                       ; $6609: $ff
    add c                                         ; $660a: $81
    and b                                         ; $660b: $a0
    ld c, b                                       ; $660c: $48
    db $e4                                        ; $660d: $e4
    ld b, l                                       ; $660e: $45
    ret nz                                        ; $660f: $c0

    inc hl                                        ; $6610: $23
    and b                                         ; $6611: $a0
    ld a, $c0                                     ; $6612: $3e $c0
    ldh [$ba], a                                  ; $6614: $e0 $ba
    pop bc                                        ; $6616: $c1
    ld l, h                                       ; $6617: $6c
    or [hl]                                       ; $6618: $b6
    nop                                           ; $6619: $00
    and [hl]                                      ; $661a: $a6
    sbc [hl]                                      ; $661b: $9e
    add $cf                                       ; $661c: $c6 $cf
    db $e4                                        ; $661e: $e4
    dec c                                         ; $661f: $0d
    dec l                                         ; $6620: $2d
    inc c                                         ; $6621: $0c
    ld b, $ff                                     ; $6622: $06 $ff
    ld [c], a                                     ; $6624: $e2
    inc l                                         ; $6625: $2c
    dec c                                         ; $6626: $0d
    or e                                          ; $6627: $b3
    db $e4                                        ; $6628: $e4
    add d                                         ; $6629: $82
    call nz, $b300                                ; $662a: $c4 $00 $b3
    adc b                                         ; $662d: $88
    and [hl]                                      ; $662e: $a6
    add [hl]                                      ; $662f: $86
    jp nz, $ce34                                  ; $6630: $c2 $34 $ce

    pop bc                                        ; $6633: $c1
    jp nz, Jump_000_2ce4                          ; $6634: $c2 $e4 $2c

    ret nz                                        ; $6637: $c0

    ld [c], a                                     ; $6638: $e2
    dec c                                         ; $6639: $0d
    ld l, l                                       ; $663a: $6d
    reti                                          ; $663b: $d9


    db $ec                                        ; $663c: $ec
    ld sp, hl                                     ; $663d: $f9
    or b                                          ; $663e: $b0
    or h                                          ; $663f: $b4
    adc [hl]                                      ; $6640: $8e
    and [hl]                                      ; $6641: $a6
    add [hl]                                      ; $6642: $86
    pop bc                                        ; $6643: $c1
    dec c                                         ; $6644: $0d
    add e                                         ; $6645: $83
    ldh [$6c], a                                  ; $6646: $e0 $6c
    ld c, h                                       ; $6648: $4c
    rst $38                                       ; $6649: $ff
    pop hl                                        ; $664a: $e1
    ld l, h                                       ; $664b: $6c
    add d                                         ; $664c: $82
    ld a, c                                       ; $664d: $79
    pop bc                                        ; $664e: $c1
    dec l                                         ; $664f: $2d
    nop                                           ; $6650: $00
    rst $00                                       ; $6651: $c7
    nop                                           ; $6652: $00
    or [hl]                                       ; $6653: $b6
    ld b, $c6                                     ; $6654: $06 $c6
    ld de, $43e1                                  ; $6656: $11 $e1 $43
    ldh [$6c], a                                  ; $6659: $e0 $6c
    add hl, bc                                    ; $665b: $09
    ld l, h                                       ; $665c: $6c
    ld d, b                                       ; $665d: $50
    db $e3                                        ; $665e: $e3
    ld a, [hl-]                                   ; $665f: $3a
    pop bc                                        ; $6660: $c1
    ld l, l                                       ; $6661: $6d
    ld l, h                                       ; $6662: $6c
    add h                                         ; $6663: $84
    nop                                           ; $6664: $00
    cp e                                          ; $6665: $bb
    ld [$8a83], sp                                ; $6666: $08 $83 $8a
    and c                                         ; $6669: $a1
    ld [$e081], sp                                ; $666a: $08 $81 $e0
    pop bc                                        ; $666d: $c1
    ldh [$81], a                                  ; $666e: $e0 $81
    and b                                         ; $6670: $a0
    dec hl                                        ; $6671: $2b
    nop                                           ; $6672: $00
    call $df82                                    ; $6673: $cd $82 $df
    ld b, c                                       ; $6676: $41
    db $e3                                        ; $6677: $e3
    ld [$c0e0], sp                                ; $6678: $08 $e0 $c0
    call nz, $bfe1                                ; $667b: $c4 $e1 $bf
    pop hl                                        ; $667e: $e1
    ret nz                                        ; $667f: $c0

    and d                                         ; $6680: $a2
    add b                                         ; $6681: $80
    rst $18                                       ; $6682: $df
    ld [$01a5], sp                                ; $6683: $08 $a5 $01
    db $e4                                        ; $6686: $e4
    inc l                                         ; $6687: $2c
    dec c                                         ; $6688: $0d
    rlca                                          ; $6689: $07
    dec c                                         ; $668a: $0d
    ld c, e                                       ; $668b: $4b
    ld c, e                                       ; $668c: $4b
    ld a, a                                       ; $668d: $7f
    db $e3                                        ; $668e: $e3
    add d                                         ; $668f: $82
    jp $ba00                                      ; $6690: $c3 $00 $ba


    add b                                         ; $6693: $80
    rst $00                                       ; $6694: $c7
    add $a2                                       ; $6695: $c6 $a2
    cp $c0                                        ; $6697: $fe $c0
    pop hl                                        ; $6699: $e1
    inc l                                         ; $669a: $2c
    dec c                                         ; $669b: $0d
    ld l, e                                       ; $669c: $6b
    ld c, e                                       ; $669d: $4b
    ld c, e                                       ; $669e: $4b
    ld c, e                                       ; $669f: $4b
    ld l, e                                       ; $66a0: $6b
    ld h, c                                       ; $66a1: $61
    ld c, e                                       ; $66a2: $4b
    push af                                       ; $66a3: $f5
    and c                                         ; $66a4: $a1
    db $dd                                        ; $66a5: $dd
    sub b                                         ; $66a6: $90
    ld a, c                                       ; $66a7: $79
    sub b                                         ; $66a8: $90
    ld [$4d62], sp                                ; $66a9: $08 $62 $4d
    dec l                                         ; $66ac: $2d
    nop                                           ; $66ad: $00
    db $e3                                        ; $66ae: $e3
    ld a, [bc]                                    ; $66af: $0a
    rlca                                          ; $66b0: $07
    ret nz                                        ; $66b1: $c0

    dec hl                                        ; $66b2: $2b
    jp nz, $4be0                                  ; $66b3: $c2 $e0 $4b

Jump_061_66b6:
    ld b, d                                       ; $66b6: $42
    call nz, Call_061_46ec                        ; $66b7: $c4 $ec $46
    add b                                         ; $66ba: $80
    call c, $40ae                                 ; $66bb: $dc $ae $40
    inc c                                         ; $66be: $0c
    db $10                                        ; $66bf: $10

Jump_061_66c0:
    pop bc                                        ; $66c0: $c1
    ld b, a                                       ; $66c1: $47
    jp $0b6b                                      ; $66c2: $c3 $6b $0b


    add c                                         ; $66c5: $81

jr_061_66c6:
    jp nz, $8c00                                  ; $66c6: $c2 $00 $8c

    nop                                           ; $66c9: $00
    cp l                                          ; $66ca: $bd
    add a                                         ; $66cb: $87
    add c                                         ; $66cc: $81
    ld b, $47                                     ; $66cd: $06 $47
    jp $4b4b                                      ; $66cf: $c3 $4b $4b


    ld b, b                                       ; $66d2: $40
    jp nz, Jump_061_637a                          ; $66d3: $c2 $7a $63

    cp d                                          ; $66d6: $ba
    ld a, c                                       ; $66d7: $79
    db $ec                                        ; $66d8: $ec
    ld c, d                                       ; $66d9: $4a
    adc c                                         ; $66da: $89
    jp nz, $4b01                                  ; $66db: $c2 $01 $4b

    ld b, [hl]                                    ; $66de: $46
    pop bc                                        ; $66df: $c1
    ld b, e                                       ; $66e0: $43
    ld [c], a                                     ; $66e1: $e2
    ld [bc], a                                    ; $66e2: $02
    rst $00                                       ; $66e3: $c7
    add b                                         ; $66e4: $80
    ld a, d                                       ; $66e5: $7a

Jump_061_66e6:
    inc e                                         ; $66e6: $1c
    ld b, l                                       ; $66e7: $45
    rst $08                                       ; $66e8: $cf
    and d                                         ; $66e9: $a2
    adc c                                         ; $66ea: $89
    jp $c44c                                      ; $66eb: $c3 $4c $c4


    ret nz                                        ; $66ee: $c0

    pop bc                                        ; $66ef: $c1
    and b                                         ; $66f0: $a0
    dec c                                         ; $66f1: $0d
    ld l, l                                       ; $66f2: $6d
    add d                                         ; $66f3: $82
    ld h, [hl]                                    ; $66f4: $66
    nop                                           ; $66f5: $00
    ld d, a                                       ; $66f6: $57
    ld c, l                                       ; $66f7: $4d
    ld h, d                                       ; $66f8: $62
    add l                                         ; $66f9: $85
    ld [bc], a                                    ; $66fa: $02
    ld bc, $2ba3                                  ; $66fb: $01 $a3 $2b
    add d                                         ; $66fe: $82
    ld [c], a                                     ; $66ff: $e2
    ld b, d                                       ; $6700: $42
    ldh [$c3], a                                  ; $6701: $e0 $c3
    ld h, d                                       ; $6703: $62
    ld c, h                                       ; $6704: $4c
    rst $38                                       ; $6705: $ff
    ret nz                                        ; $6706: $c0

    pop hl                                        ; $6707: $e1
    add d                                         ; $6708: $82
    add a                                         ; $6709: $87
    inc b                                         ; $670a: $04
    ret nz                                        ; $670b: $c0

    ldh [$82], a                                  ; $670c: $e0 $82
    ld h, c                                       ; $670e: $61
    ld l, e                                       ; $670f: $6b
    pop bc                                        ; $6710: $c1
    ld [c], a                                     ; $6711: $e2
    add c                                         ; $6712: $81
    ldh [$72], a                                  ; $6713: $e0 $72
    inc hl                                        ; $6715: $23
    cp c                                          ; $6716: $b9
    pop af                                        ; $6717: $f1
    nop                                           ; $6718: $00
    or b                                          ; $6719: $b0
    nop                                           ; $671a: $00
    ld b, c                                       ; $671b: $41
    push hl                                       ; $671c: $e5
    ret nz                                        ; $671d: $c0

    push hl                                       ; $671e: $e5
    inc b                                         ; $671f: $04
    ld l, c                                       ; $6720: $69
    nop                                           ; $6721: $00
    ld e, h                                       ; $6722: $5c
    ld [$8b22], sp                                ; $6723: $08 $22 $8b
    ld b, d                                       ; $6726: $42
    add a                                         ; $6727: $87
    and b                                         ; $6728: $a0
    ld a, $62                                     ; $6729: $3e $62
    ld h, b                                       ; $672b: $60
    db $fd                                        ; $672c: $fd
    ld b, b                                       ; $672d: $40
    jp $8240                                      ; $672e: $c3 $40 $82


    ld b, a                                       ; $6731: $47
    scf                                           ; $6732: $37
    rst $38                                       ; $6733: $ff
    ld b, d                                       ; $6734: $42
    add c                                         ; $6735: $81
    dec l                                         ; $6736: $2d
    dec c                                         ; $6737: $0d
    nop                                           ; $6738: $00
    ld [c], a                                     ; $6739: $e2
    nop                                           ; $673a: $00
    pop bc                                        ; $673b: $c1
    ld b, h                                       ; $673c: $44
    add d                                         ; $673d: $82
    ld c, c                                       ; $673e: $49
    add b                                         ; $673f: $80
    reti                                          ; $6740: $d9


    add d                                         ; $6741: $82
    add $89                                       ; $6742: $c6 $89
    jr nz, jr_061_66c6                            ; $6744: $20 $80

    db $e3                                        ; $6746: $e3
    pop bc                                        ; $6747: $c1
    and b                                         ; $6748: $a0
    ld b, h                                       ; $6749: $44
    ld h, d                                       ; $674a: $62
    ld [$5f00], sp                                ; $674b: $08 $00 $5f
    add b                                         ; $674e: $80
    rst $00                                       ; $674f: $c7
    ld c, e                                       ; $6750: $4b
    ld b, d                                       ; $6751: $42
    dec c                                         ; $6752: $0d
    ld b, b                                       ; $6753: $40
    db $e4                                        ; $6754: $e4
    cp c                                          ; $6755: $b9
    ld b, e                                       ; $6756: $43
    add d                                         ; $6757: $82
    ld c, d                                       ; $6758: $4a
    dec a                                         ; $6759: $3d
    db $f4                                        ; $675a: $f4
    ld [$c240], sp                                ; $675b: $08 $40 $c2
    ld a, [hl]                                    ; $675e: $7e
    and d                                         ; $675f: $a2
    add hl, bc                                    ; $6760: $09
    ld [c], a                                     ; $6761: $e2
    ld l, e                                       ; $6762: $6b
    add b                                         ; $6763: $80
    db $e4                                        ; $6764: $e4
    ld a, $e5                                     ; $6765: $3e $e5
    halt                                          ; $6767: $76
    ld [$7c80], sp                                ; $6768: $08 $80 $7c
    ld b, b                                       ; $676b: $40
    pop bc                                        ; $676c: $c1
    add c                                         ; $676d: $81
    ret nz                                        ; $676e: $c0

    ldh [$bf], a                                  ; $676f: $e0 $bf
    jp $8203                                      ; $6771: $c3 $03 $82


    add d                                         ; $6774: $82
    ld c, [hl]                                    ; $6775: $4e
    nop                                           ; $6776: $00
    ld e, d                                       ; $6777: $5a
    dec l                                         ; $6778: $2d
    cp a                                          ; $6779: $bf
    ld [c], a                                     ; $677a: $e2
    ld bc, $7f6b                                  ; $677b: $01 $6b $7f
    db $e3                                        ; $677e: $e3
    cp b                                          ; $677f: $b8
    and d                                         ; $6780: $a2
    add d                                         ; $6781: $82
    ld b, l                                       ; $6782: $45
    nop                                           ; $6783: $00
    ld e, a                                       ; $6784: $5f
    nop                                           ; $6785: $00
    ld h, [hl]                                    ; $6786: $66
    ccf                                           ; $6787: $3f
    push hl                                       ; $6788: $e5
    ccf                                           ; $6789: $3f
    ld h, d                                       ; $678a: $62
    nop                                           ; $678b: $00
    cp a                                          ; $678c: $bf
    add d                                         ; $678d: $82
    add b                                         ; $678e: $80
    ld a, a                                       ; $678f: $7f
    nop                                           ; $6790: $00
    xor c                                         ; $6791: $a9
    ccf                                           ; $6792: $3f
    ld [c], a                                     ; $6793: $e2
    cp h                                          ; $6794: $bc
    push bc                                       ; $6795: $c5
    ld a, [hl]                                    ; $6796: $7e
    rst $00                                       ; $6797: $c7
    nop                                           ; $6798: $00
    ld e, b                                       ; $6799: $58
    nop                                           ; $679a: $00
    and [hl]                                      ; $679b: $a6
    add b                                         ; $679c: $80
    cp $a3                                        ; $679d: $fe $a3
    dec c                                         ; $679f: $0d
    ld b, c                                       ; $67a0: $41
    db $fc                                        ; $67a1: $fc
    call nz, $ca7e                                ; $67a2: $c4 $7e $ca
    nop                                           ; $67a5: $00
    ld d, [hl]                                    ; $67a6: $56
    nop                                           ; $67a7: $00
    and h                                         ; $67a8: $a4
    ld a, d                                       ; $67a9: $7a
    jp nz, Jump_000_002d                          ; $67aa: $c2 $2d $00

    ld [bc], a                                    ; $67ad: $02
    add d                                         ; $67ae: $82
    ld a, e                                       ; $67af: $7b
    ret nz                                        ; $67b0: $c0

    ld a, d                                       ; $67b1: $7a
    jp nz, $c0b5                                  ; $67b2: $c2 $b5 $c0

    cp a                                          ; $67b5: $bf
    ld bc, $5f00                                  ; $67b6: $01 $00 $5f
    ld a, [hl]                                    ; $67b9: $7e
    ld b, [hl]                                    ; $67ba: $46
    cp a                                          ; $67bb: $bf
    rst $20                                       ; $67bc: $e7
    nop                                           ; $67bd: $00
    dec sp                                        ; $67be: $3b
    call nz, Call_061_47fe                        ; $67bf: $c4 $fe $47
    nop                                           ; $67c2: $00
    cp e                                          ; $67c3: $bb
    ld a, [hl]                                    ; $67c4: $7e
    jr z, jr_061_6845                             ; $67c5: $28 $7e

    ld h, d                                       ; $67c7: $62
    ld a, [hl-]                                   ; $67c8: $3a
    jp nz, $c335                                  ; $67c9: $c2 $35 $c3

    ld a, [hl]                                    ; $67cc: $7e
    rst $18                                       ; $67cd: $df
    nop                                           ; $67ce: $00
    ld a, [hl]                                    ; $67cf: $7e
    res 0, h                                      ; $67d0: $cb $84
    and d                                         ; $67d2: $a2
    rst $38                                       ; $67d3: $ff
    ld [hl+], a                                   ; $67d4: $22
    dec sp                                        ; $67d5: $3b
    ld b, c                                       ; $67d6: $41
    add b                                         ; $67d7: $80
    rra                                           ; $67d8: $1f
    daa                                           ; $67d9: $27
    ld b, h                                       ; $67da: $44
    ld a, [hl]                                    ; $67db: $7e
    ld h, a                                       ; $67dc: $67
    ld a, [$0001]                                 ; $67dd: $fa $01 $00
    ld a, [$75a2]                                 ; $67e0: $fa $a2 $75
    add e                                         ; $67e3: $83
    ld a, [hl]                                    ; $67e4: $7e
    and [hl]                                      ; $67e5: $a6
    add b                                         ; $67e6: $80
    dec e                                         ; $67e7: $1d
    ld a, h                                       ; $67e8: $7c
    and [hl]                                      ; $67e9: $a6
    inc bc                                        ; $67ea: $03
    and c                                         ; $67eb: $a1
    ret nz                                        ; $67ec: $c0

    dec h                                         ; $67ed: $25
    ld a, e                                       ; $67ee: $7b
    ld h, b                                       ; $67ef: $60
    nop                                           ; $67f0: $00
    nop                                           ; $67f1: $00
    ld e, a                                       ; $67f2: $5f
    add d                                         ; $67f3: $82
    ld b, e                                       ; $67f4: $43
    ld a, d                                       ; $67f5: $7a
    ld b, e                                       ; $67f6: $43
    add d                                         ; $67f7: $82
    and a                                         ; $67f8: $a7
    ld [hl], $a2                                  ; $67f9: $36 $a2
    ld a, a                                       ; $67fb: $7f
    pop bc                                        ; $67fc: $c1
    db $fc                                        ; $67fd: $fc
    ld c, b                                       ; $67fe: $48
    nop                                           ; $67ff: $00
    ld e, e                                       ; $6800: $5b
    nop                                           ; $6801: $00
    ld a, h                                       ; $6802: $7c
    ld h, $c3                                     ; $6803: $26 $c3
    ld [bc], a                                    ; $6805: $02
    rst $30                                       ; $6806: $f7
    ld h, h                                       ; $6807: $64
    db $fc                                        ; $6808: $fc
    add hl, hl                                    ; $6809: $29
    nop                                           ; $680a: $00
    cp b                                          ; $680b: $b8
    inc e                                         ; $680c: $1c
    inc h                                         ; $680d: $24
    ld a, h                                       ; $680e: $7c
    ld h, d                                       ; $680f: $62
    ret nz                                        ; $6810: $c0

    jp $c100                                      ; $6811: $c3 $00 $c1


    jp $25fc                                      ; $6814: $c3 $fc $25


    cp l                                          ; $6817: $bd
    ld e, e                                       ; $6818: $5b
    or [hl]                                       ; $6819: $b6
    ld h, $04                                     ; $681a: $26 $04
    and [hl]                                      ; $681c: $a6
    ld [hl], $62                                  ; $681d: $36 $62
    cp e                                          ; $681f: $bb
    ld h, h                                       ; $6820: $64
    add b                                         ; $6821: $80
    call c, $3000                                 ; $6822: $dc $00 $30
    ld b, h                                       ; $6825: $44
    db $fc                                        ; $6826: $fc
    ld h, h                                       ; $6827: $64
    rst $00                                       ; $6828: $c7
    ld h, d                                       ; $6829: $62
    ld a, [hl-]                                   ; $682a: $3a
    add b                                         ; $682b: $80
    scf                                           ; $682c: $37
    add c                                         ; $682d: $81
    cpl                                           ; $682e: $2f
    and d                                         ; $682f: $a2
    nop                                           ; $6830: $00
    db $e3                                        ; $6831: $e3
    db $f4                                        ; $6832: $f4
    ld b, c                                       ; $6833: $41
    nop                                           ; $6834: $00
    nop                                           ; $6835: $00
    ld d, d                                       ; $6836: $52
    ld a, [hl+]                                   ; $6837: $2a
    and e                                         ; $6838: $a3
    ret c                                         ; $6839: $d8

    nop                                           ; $683a: $00
    cp $86                                        ; $683b: $fe $86
    cp a                                          ; $683d: $bf
    ld [hl+], a                                   ; $683e: $22
    db $fc                                        ; $683f: $fc
    add l                                         ; $6840: $85
    ld a, [$f525]                                 ; $6841: $fa $25 $f5
    ld e, d                                       ; $6844: $5a

jr_061_6845:
    ld [bc], a                                    ; $6845: $02
    ret nz                                        ; $6846: $c0

    ldh [$6d], a                                  ; $6847: $e0 $6d
    sub [hl]                                      ; $6849: $96
    nop                                           ; $684a: $00
    ld a, [hl]                                    ; $684b: $7e
    inc h                                         ; $684c: $24
    cp h                                          ; $684d: $bc
    push hl                                       ; $684e: $e5
    or l                                          ; $684f: $b5
    db $e4                                        ; $6850: $e4
    db $fc                                        ; $6851: $fc
    dec b                                         ; $6852: $05
    or l                                          ; $6853: $b5
    ld l, l                                       ; $6854: $6d
    add b                                         ; $6855: $80
    ld l, l                                       ; $6856: $6d
    dec l                                         ; $6857: $2d
    ld a, h                                       ; $6858: $7c
    ld h, l                                       ; $6859: $65
    ret nz                                        ; $685a: $c0

    db $ec                                        ; $685b: $ec
    db $fc                                        ; $685c: $fc
    inc b                                         ; $685d: $04
    nop                                           ; $685e: $00
    ld e, e                                       ; $685f: $5b
    ld a, d                                       ; $6860: $7a
    rlca                                          ; $6861: $07
    add l                                         ; $6862: $85
    ld h, d                                       ; $6863: $62
    dec hl                                        ; $6864: $2b
    nop                                           ; $6865: $00
    add hl, sp                                    ; $6866: $39
    ld hl, $e1fe                                  ; $6867: $21 $fe $e1
    nop                                           ; $686a: $00
    cp a                                          ; $686b: $bf
    ld a, h                                       ; $686c: $7c
    ld l, h                                       ; $686d: $6c
    dec a                                         ; $686e: $3d
    ld bc, $c507                                  ; $686f: $01 $07 $c5
    or [hl]                                       ; $6872: $b6
    ld bc, $a880                                  ; $6873: $01 $80 $a8
    nop                                           ; $6876: $00
    add b                                         ; $6877: $80
    db $db                                        ; $6878: $db
    ld a, [hl]                                    ; $6879: $7e
    add h                                         ; $687a: $84
    ret nz                                        ; $687b: $c0

    ld a, [c]                                     ; $687c: $f2
    nop                                           ; $687d: $00
    ld e, d                                       ; $687e: $5a
    ld a, [$bc8a]                                 ; $687f: $fa $8a $bc
    ld b, d                                       ; $6882: $42
    add $44                                       ; $6883: $c6 $44
    scf                                           ; $6885: $37
    inc h                                         ; $6886: $24
    nop                                           ; $6887: $00
    ld h, [hl]                                    ; $6888: $66
    call nz, Call_061_5600                        ; $6889: $c4 $00 $56
    cp d                                          ; $688c: $ba
    add [hl]                                      ; $688d: $86
    ld a, [hl]                                    ; $688e: $7e
    and e                                         ; $688f: $a3
    cp [hl]                                       ; $6890: $be
    ret nz                                        ; $6891: $c0

    ld b, a                                       ; $6892: $47
    and l                                         ; $6893: $a5
    jp nz, Jump_000_00c4                          ; $6894: $c2 $c4 $00

    and c                                         ; $6897: $a1
    ld l, h                                       ; $6898: $6c
    nop                                           ; $6899: $00
    ld e, e                                       ; $689a: $5b
    ld a, d                                       ; $689b: $7a
    ld a, [bc]                                    ; $689c: $0a
    ld c, l                                       ; $689d: $4d
    dec l                                         ; $689e: $2d
    nop                                           ; $689f: $00
    rst $20                                       ; $68a0: $e7
    dec c                                         ; $68a1: $0d
    dec l                                         ; $68a2: $2d
    pop bc                                        ; $68a3: $c1
    ldh [$08], a                                  ; $68a4: $e0 $08
    nop                                           ; $68a6: $00
    ld e, a                                       ; $68a7: $5f
    ld a, [hl]                                    ; $68a8: $7e
    bit 7, [hl]                                   ; $68a9: $cb $7e
    ld b, b                                       ; $68ab: $40
    ld l, e                                       ; $68ac: $6b
    ret nz                                        ; $68ad: $c0

    and b                                         ; $68ae: $a0
    cp l                                          ; $68af: $bd
    and c                                         ; $68b0: $a1
    nop                                           ; $68b1: $00
    jr z, @+$01                                   ; $68b2: $28 $ff

    rst $38                                       ; $68b4: $ff
    ld [hl], $ef                                  ; $68b5: $36 $ef
    ld h, [hl]                                    ; $68b7: $66
    dec hl                                        ; $68b8: $2b
    ld l, e                                       ; $68b9: $6b
    rst $38                                       ; $68ba: $ff
    db $e3                                        ; $68bb: $e3
    ld c, e                                       ; $68bc: $4b
    dec hl                                        ; $68bd: $2b
    add b                                         ; $68be: $80
    rra                                           ; $68bf: $1f
    ld a, d                                       ; $68c0: $7a
    ld h, a                                       ; $68c1: $67
    nop                                           ; $68c2: $00
    sub $22                                       ; $68c3: $d6 $22
    ld a, d                                       ; $68c5: $7a
    ld b, h                                       ; $68c6: $44
    inc bc                                        ; $68c7: $03
    and $82                                       ; $68c8: $e6 $82
    ld b, $d0                                     ; $68ca: $06 $d0
    sub b                                         ; $68cc: $90
    add e                                         ; $68cd: $83
    inc l                                         ; $68ce: $2c
    sub [hl]                                      ; $68cf: $96
    and $38                                       ; $68d0: $e6 $38
    jr nz, jr_061_68d4                            ; $68d2: $20 $00

jr_061_68d4:
    rst $38                                       ; $68d4: $ff
    db $e4                                        ; $68d5: $e4
    add l                                         ; $68d6: $85
    add $ff                                       ; $68d7: $c6 $ff
    rst $38                                       ; $68d9: $ff
    ld e, b                                       ; $68da: $58
    ld [hl+], a                                   ; $68db: $22
    ld d, d                                       ; $68dc: $52
    ld bc, $427a                                  ; $68dd: $01 $7a $42
    db $fc                                        ; $68e0: $fc
    and $04                                       ; $68e1: $e6 $04
    db $e3                                        ; $68e3: $e3
    ld h, b                                       ; $68e4: $60
    dec sp                                        ; $68e5: $3b
    pop af                                        ; $68e6: $f1
    add b                                         ; $68e7: $80
    push de                                       ; $68e8: $d5
    cp d                                          ; $68e9: $ba
    db $e3                                        ; $68ea: $e3
    or d                                          ; $68eb: $b2
    push hl                                       ; $68ec: $e5
    sub e                                         ; $68ed: $93
    or l                                          ; $68ee: $b5
    ld c, $0e                                     ; $68ef: $0e $0e
    nop                                           ; $68f1: $00
    nop                                           ; $68f2: $00
    nop                                           ; $68f3: $00
    cp a                                          ; $68f4: $bf
    db $dd                                        ; $68f5: $dd
    sbc $a0                                       ; $68f6: $de $a0
    and b                                         ; $68f8: $a0
    and b                                         ; $68f9: $a0
    call c, $eefa                                 ; $68fa: $dc $fa $ee
    and b                                         ; $68fd: $a0
    di                                            ; $68fe: $f3
    ret c                                         ; $68ff: $d8

    reti                                          ; $6900: $d9


    db $fc                                        ; $6901: $fc
    ld a, [c]                                     ; $6902: $f2
    sub $ee                                       ; $6903: $d6 $ee
    ld [c], a                                     ; $6905: $e2
    db $e3                                        ; $6906: $e3
    db $e4                                        ; $6907: $e4
    rst $18                                       ; $6908: $df
    ei                                            ; $6909: $fb
    ldh [$e1], a                                  ; $690a: $e0 $e1
    ld a, [$a0ec]                                 ; $690c: $fa $ec $a0
    sub $d7                                       ; $690f: $d6 $d7
    jp c, $c3db                                   ; $6911: $da $db $c3

    ret nc                                        ; $6914: $d0

    pop de                                        ; $6915: $d1
    db $fc                                        ; $6916: $fc
    rst $20                                       ; $6917: $e7
    ldh a, [$e1]                                  ; $6918: $f0 $e1
    db $ec                                        ; $691a: $ec
    pop hl                                        ; $691b: $e1
    sub $ee                                       ; $691c: $d6 $ee
    rst $18                                       ; $691e: $df
    add sp, -$61                                  ; $691f: $e8 $9f
    jp hl                                         ; $6921: $e9


    ld [$e6e5], a                                 ; $6922: $ea $e5 $e6
    rst $20                                       ; $6925: $e7
    ld a, [$82ec]                                 ; $6926: $fa $ec $82
    ld [c], a                                     ; $6929: $e2
    jp nc, $d391                                  ; $692a: $d2 $91 $d3

    db $fc                                        ; $692d: $fc
    rst $20                                       ; $692e: $e7
    ld [hl], d                                    ; $692f: $72
    db $e4                                        ; $6930: $e4
    sub $ef                                       ; $6931: $d6 $ef
    push hl                                       ; $6933: $e5
    ld b, e                                       ; $6934: $43
    pop af                                        ; $6935: $f1
    add d                                         ; $6936: $82
    db $e3                                        ; $6937: $e3
    call nc, $d50d                                ; $6938: $d4 $0d $d5
    db $fc                                        ; $693b: $fc
    pop hl                                        ; $693c: $e1
    and b                                         ; $693d: $a0
    and b                                         ; $693e: $a0
    ld hl, sp-$1f                                 ; $693f: $f8 $e1
    ld a, d                                       ; $6941: $7a
    push hl                                       ; $6942: $e5
    ld h, $e1                                     ; $6943: $26 $e1
    inc de                                        ; $6945: $13
    db $eb                                        ; $6946: $eb
    nop                                           ; $6947: $00
    ld b, e                                       ; $6948: $43
    ldh a, [$82]                                  ; $6949: $f0 $82
    ld [$c1f4], a                                 ; $694b: $ea $f4 $c1
    ld a, d                                       ; $694e: $7a
    jp hl                                         ; $694f: $e9


    inc de                                        ; $6950: $13
    db $ed                                        ; $6951: $ed
    ld b, e                                       ; $6952: $43
    rst $28                                       ; $6953: $ef
    add d                                         ; $6954: $82
    push hl                                       ; $6955: $e5
    add [hl]                                      ; $6956: $86
    pop hl                                        ; $6957: $e1
    cp a                                          ; $6958: $bf
    sbc a                                         ; $6959: $9f
    sbc l                                         ; $695a: $9d
    sbc l                                         ; $695b: $9d
    sbc l                                         ; $695c: $9d
    and d                                         ; $695d: $a2
    sbc a                                         ; $695e: $9f
    ld a, d                                       ; $695f: $7a
    rst $20                                       ; $6960: $e7
    sub $61                                       ; $6961: $d6 $61
    rst $10                                       ; $6963: $d7
    inc de                                        ; $6964: $13
    db $ed                                        ; $6965: $ed
    add [hl]                                      ; $6966: $86
    db $d3                                        ; $6967: $d3
    add [hl]                                      ; $6968: $86
    ld [c], a                                     ; $6969: $e2
    jp $9ce0                                      ; $696a: $c3 $e0 $9c


    ld b, [hl]                                    ; $696d: $46
    rst $38                                       ; $696e: $ff
    ldh [rIF], a                                  ; $696f: $e0 $0f
    sbc h                                         ; $6971: $9c
    sbc l                                         ; $6972: $9d
    sbc l                                         ; $6973: $9d
    sbc a                                         ; $6974: $9f
    ld a, d                                       ; $6975: $7a
    db $e4                                        ; $6976: $e4
    ld l, d                                       ; $6977: $6a
    pop bc                                        ; $6978: $c1
    add b                                         ; $6979: $80
    jp c, $e604                                   ; $697a: $da $04 $e6

    ld l, b                                       ; $697d: $68
    pop bc                                        ; $697e: $c1
    ldh [$c3], a                                  ; $697f: $e0 $c3
    ld [c], a                                     ; $6981: $e2
    db $fc                                        ; $6982: $fc
    db $e3                                        ; $6983: $e3
    sbc h                                         ; $6984: $9c
    cp a                                          ; $6985: $bf
    ldh [$d4], a                                  ; $6986: $e0 $d4
    push de                                       ; $6988: $d5
    ld a, d                                       ; $6989: $7a
    jp Jump_000_3d2c                              ; $698a: $c3 $2c $3d


    db $eb                                        ; $698d: $eb
    add [hl]                                      ; $698e: $86

jr_061_698f:
    call nc, $a29f                                ; $698f: $d4 $9f $a2
    add h                                         ; $6992: $84
    pop hl                                        ; $6993: $e1
    xor [hl]                                      ; $6994: $ae
    add c                                         ; $6995: $81
    ldh [$fc], a                                  ; $6996: $e0 $fc
    db $e3                                        ; $6998: $e3
    ld hl, $ec9e                                  ; $6999: $21 $9e $ec
    xor b                                         ; $699c: $a8
    add b                                         ; $699d: $80
    ret c                                         ; $699e: $d8

    add [hl]                                      ; $699f: $86
    push bc                                       ; $69a0: $c5
    add h                                         ; $69a1: $84
    db $e4                                        ; $69a2: $e4
    xor a                                         ; $69a3: $af
    db $fc                                        ; $69a4: $fc
    and $7f                                       ; $69a5: $e6 $7f
    ldh [$c0], a                                  ; $69a7: $e0 $c0
    ld hl, sp-$5b                                 ; $69a9: $f8 $a5
    add b                                         ; $69ab: $80
    rst $10                                       ; $69ac: $d7
    add [hl]                                      ; $69ad: $86
    add $45                                       ; $69ae: $c6 $45
    pop hl                                        ; $69b0: $e1
    add h                                         ; $69b1: $84
    pop hl                                        ; $69b2: $e1
    db $fd                                        ; $69b3: $fd
    add sp, -$64                                  ; $69b4: $e8 $9c
    sbc a                                         ; $69b6: $9f
    add sp, -$08                                  ; $69b7: $e8 $f8
    and e                                         ; $69b9: $a3
    add b                                         ; $69ba: $80
    reti                                          ; $69bb: $d9


    add [hl]                                      ; $69bc: $86
    add $9e                                       ; $69bd: $c6 $9e
    add h                                         ; $69bf: $84
    db $e3                                        ; $69c0: $e3
    add e                                         ; $69c1: $83
    adc c                                         ; $69c2: $89
    adc b                                         ; $69c3: $88
    ld l, $ff                                     ; $69c4: $2e $ff
    ldh [$89], a                                  ; $69c6: $e0 $89
    adc c                                         ; $69c8: $89
    add e                                         ; $69c9: $83
    cp d                                          ; $69ca: $ba
    pop bc                                        ; $69cb: $c1
    sbc [hl]                                      ; $69cc: $9e

jr_061_69cd:
    nop                                           ; $69cd: $00
    db $e3                                        ; $69ce: $e3
    add b                                         ; $69cf: $80
    ret c                                         ; $69d0: $d8

    db $fc                                        ; $69d1: $fc
    add [hl]                                      ; $69d2: $86
    rst $00                                       ; $69d3: $c7
    ret nz                                        ; $69d4: $c0

    pop hl                                        ; $69d5: $e1
    ld b, [hl]                                    ; $69d6: $46
    add e                                         ; $69d7: $83
    adc b                                         ; $69d8: $88
    add a                                         ; $69d9: $87
    ld [bc], a                                    ; $69da: $02
    rlca                                          ; $69db: $07
    ld b, $ff                                     ; $69dc: $06 $ff
    pop hl                                        ; $69de: $e1
    ld [bc], a                                    ; $69df: $02
    adc e                                         ; $69e0: $8b
    rst $30                                       ; $69e1: $f7
    pop bc                                        ; $69e2: $c1
    cp $c0                                        ; $69e3: $fe $c0
    add d                                         ; $69e5: $82
    call nz, $b300                                ; $69e6: $c4 $00 $b3
    cp c                                          ; $69e9: $b9
    add b                                         ; $69ea: $80
    db $fc                                        ; $69eb: $fc
    jr jr_061_698f                                ; $69ec: $18 $a1

    add [hl]                                      ; $69ee: $86
    call nz, Call_061_46ae                        ; $69ef: $c4 $ae $46
    add e                                         ; $69f2: $83
    add [hl]                                      ; $69f3: $86
    ld [bc], a                                    ; $69f4: $02
    rlca                                          ; $69f5: $07
    rst $38                                       ; $69f6: $ff
    rrca                                          ; $69f7: $0f
    nop                                           ; $69f8: $00
    ld bc, $9a98                                  ; $69f9: $01 $98 $9a
    sbc e                                         ; $69fc: $9b
    ld [$c080], sp                                ; $69fd: $08 $80 $c0
    rst $38                                       ; $6a00: $ff
    jp nz, $a67e                                  ; $6a01: $c2 $7e $a6

    nop                                           ; $6a04: $00
    or e                                          ; $6a05: $b3
    sub l                                         ; $6a06: $95
    and d                                         ; $6a07: $a2
    jr nz, jr_061_69cd                            ; $6a08: $20 $c3

    ld b, c                                       ; $6a0a: $41
    ldh [$af], a                                  ; $6a0b: $e0 $af
    ld b, [hl]                                    ; $6a0d: $46
    ld e, a                                       ; $6a0e: $5f
    adc d                                         ; $6a0f: $8a
    ld [bc], a                                    ; $6a10: $02
    rrca                                          ; $6a11: $0f
    sbc c                                         ; $6a12: $99
    rrca                                          ; $6a13: $0f
    add b                                         ; $6a14: $80
    db $e3                                        ; $6a15: $e3
    adc l                                         ; $6a16: $8d
    ld b, c                                       ; $6a17: $41
    pop hl                                        ; $6a18: $e1
    ldh a, [rP1]                                  ; $6a19: $f0 $00
    rst $00                                       ; $6a1b: $c7
    nop                                           ; $6a1c: $00
    or [hl]                                       ; $6a1d: $b6
    adc d                                         ; $6a1e: $8a
    add e                                         ; $6a1f: $83
    ld b, c                                       ; $6a20: $41
    db $e3                                        ; $6a21: $e3
    add e                                         ; $6a22: $83
    add a                                         ; $6a23: $87
    ld [$2f98], sp                                ; $6a24: $08 $98 $2f
    rrca                                          ; $6a27: $0f
    ld [bc], a                                    ; $6a28: $02
    ld a, d                                       ; $6a29: $7a
    ld a, e                                       ; $6a2a: $7b
    rst $38                                       ; $6a2b: $ff
    ldh [$8f], a                                  ; $6a2c: $e0 $8f
    rst $38                                       ; $6a2e: $ff
    and e                                         ; $6a2f: $a3
    nop                                           ; $6a30: $00
    jp Jump_000_00f8                              ; $6a31: $c3 $f8 $00


    cp c                                          ; $6a34: $b9
    add d                                         ; $6a35: $82
    ret z                                         ; $6a36: $c8

    add c                                         ; $6a37: $81
    pop hl                                        ; $6a38: $e1
    rrca                                          ; $6a39: $0f
    ld [bc], a                                    ; $6a3a: $02
    ld a, [hl]                                    ; $6a3b: $7e
    dec hl                                        ; $6a3c: $2b
    ld sp, $3117                                  ; $6a3d: $31 $17 $31
    dec hl                                        ; $6a40: $2b
    ld b, l                                       ; $6a41: $45
    ld hl, sp-$5f                                 ; $6a42: $f8 $a1
    and c                                         ; $6a44: $a1
    db $ec                                        ; $6a45: $ec
    ld h, l                                       ; $6a46: $65
    nop                                           ; $6a47: $00
    cp c                                          ; $6a48: $b9
    nop                                           ; $6a49: $00
    db $e4                                        ; $6a4a: $e4
    db $fd                                        ; $6a4b: $fd
    and c                                         ; $6a4c: $a1
    rst $00                                       ; $6a4d: $c7
    and c                                         ; $6a4e: $a1
    adc d                                         ; $6a4f: $8a
    ld [$0898], sp                                ; $6a50: $08 $98 $08
    add b                                         ; $6a53: $80
    ld b, h                                       ; $6a54: $44
    ccf                                           ; $6a55: $3f
    jr nc, @+$22                                  ; $6a56: $30 $20

    jr nz, jr_061_6a7a                            ; $6a58: $20 $20

    ld a, [hl+]                                   ; $6a5a: $2a
    ld b, l                                       ; $6a5b: $45
    ld hl, sp-$60                                 ; $6a5c: $f8 $a0
    ret nz                                        ; $6a5e: $c0

    and b                                         ; $6a5f: $a0
    ld hl, sp+$00                                 ; $6a60: $f8 $00
    cp [hl]                                       ; $6a62: $be
    nop                                           ; $6a63: $00
    push hl                                       ; $6a64: $e5
    ld bc, $08e3                                  ; $6a65: $01 $e3 $08
    sub a                                         ; $6a68: $97
    ld [$8382], sp                                ; $6a69: $08 $82 $83
    ccf                                           ; $6a6c: $3f
    ld a, [hl+]                                   ; $6a6d: $2a
    cpl                                           ; $6a6e: $2f
    jr nz, @+$22                                  ; $6a6f: $20 $20

    jr nc, jr_061_6ab7                            ; $6a71: $30 $44

    ld bc, $00e2                                  ; $6a73: $01 $e2 $00
    cp l                                          ; $6a76: $bd
    ld hl, sp+$08                                 ; $6a77: $f8 $08
    add [hl]                                      ; $6a79: $86

jr_061_6a7a:
    ld b, d                                       ; $6a7a: $42
    jp $e080                                      ; $6a7b: $c3 $80 $e0


    rrca                                          ; $6a7e: $0f
    ld [bc], a                                    ; $6a7f: $02
    adc e                                         ; $6a80: $8b
    ld b, l                                       ; $6a81: $45
    ld b, c                                       ; $6a82: $41
    rrca                                          ; $6a83: $0f
    ld a, [hl+]                                   ; $6a84: $2a
    cpl                                           ; $6a85: $2f
    ld a, [hl+]                                   ; $6a86: $2a
    ld b, l                                       ; $6a87: $45
    ld b, d                                       ; $6a88: $42
    pop bc                                        ; $6a89: $c1
    ldh a, [$61]                                  ; $6a8a: $f0 $61
    nop                                           ; $6a8c: $00
    cp d                                          ; $6a8d: $ba
    add [hl]                                      ; $6a8e: $86
    add a                                         ; $6a8f: $87
    xor $c7                                       ; $6a90: $ee $c7
    add d                                         ; $6a92: $82
    add c                                         ; $6a93: $81
    ld [$3f9b], sp                                ; $6a94: $08 $9b $3f
    ldh [rLYC], a                                 ; $6a97: $e0 $45
    ccf                                           ; $6a99: $3f
    ld b, l                                       ; $6a9a: $45
    pop hl                                        ; $6a9b: $e1
    ld b, c                                       ; $6a9c: $41
    ld b, c                                       ; $6a9d: $41
    pop hl                                        ; $6a9e: $e1
    add d                                         ; $6a9f: $82
    and l                                         ; $6aa0: $a5
    nop                                           ; $6aa1: $00
    cp e                                          ; $6aa2: $bb
    nop                                           ; $6aa3: $00
    jp $d1d0                                      ; $6aa4: $c3 $d0 $d1


    sbc [hl]                                      ; $6aa7: $9e
    ld a, [$80c7]                                 ; $6aa8: $fa $c7 $80
    adc h                                         ; $6aab: $8c
    call nz, Call_000_02a0                        ; $6aac: $c4 $a0 $02
    adc l                                         ; $6aaf: $8d
    ld [hl], $3c                                  ; $6ab0: $36 $3c
    ld b, h                                       ; $6ab2: $44
    push hl                                       ; $6ab3: $e5
    xor [hl]                                      ; $6ab4: $ae
    cp e                                          ; $6ab5: $bb
    add c                                         ; $6ab6: $81

jr_061_6ab7:
    sbc [hl]                                      ; $6ab7: $9e
    add d                                         ; $6ab8: $82
    add [hl]                                      ; $6ab9: $86
    nop                                           ; $6aba: $00
    cp a                                          ; $6abb: $bf
    jp nc, $9ed3                                  ; $6abc: $d2 $d3 $9e

    ld a, [$81c7]                                 ; $6abf: $fa $c7 $81
    adc [hl]                                      ; $6ac2: $8e
    ld b, a                                       ; $6ac3: $47
    ret nz                                        ; $6ac4: $c0

    ld [hl], $35                                  ; $6ac5: $36 $35
    ld a, [hl-]                                   ; $6ac7: $3a
    ld b, l                                       ; $6ac8: $45
    xor a                                         ; $6ac9: $af
    or c                                          ; $6aca: $b1
    xor a                                         ; $6acb: $af
    add e                                         ; $6acc: $83
    and e                                         ; $6acd: $a3
    ld l, [hl]                                    ; $6ace: $6e
    ld b, h                                       ; $6acf: $44
    nop                                           ; $6ad0: $00
    cp a                                          ; $6ad1: $bf
    call nc, $41d5                                ; $6ad2: $d4 $d5 $41
    and d                                         ; $6ad5: $a2
    ld b, l                                       ; $6ad6: $45
    ccf                                           ; $6ad7: $3f
    ccf                                           ; $6ad8: $3f
    ld b, e                                       ; $6ad9: $43
    ld [hl], $35                                  ; $6ada: $36 $35
    dec [hl]                                      ; $6adc: $35
    add hl, sp                                    ; $6add: $39
    inc a                                         ; $6ade: $3c
    add b                                         ; $6adf: $80
    add d                                         ; $6ae0: $82
    adc d                                         ; $6ae1: $8a
    db $fc                                        ; $6ae2: $fc
    nop                                           ; $6ae3: $00
    cp a                                          ; $6ae4: $bf
    ld bc, $39a4                                  ; $6ae5: $01 $a4 $39
    dec [hl]                                      ; $6ae8: $35
    dec sp                                        ; $6ae9: $3b
    dec [hl]                                      ; $6aea: $35
    dec [hl]                                      ; $6aeb: $35
    ld [hl], $03                                  ; $6aec: $36 $03
    ld b, l                                       ; $6aee: $45
    xor [hl]                                      ; $6aef: $ae
    add c                                         ; $6af0: $81
    ldh [$c2], a                                  ; $6af1: $e0 $c2
    ld h, c                                       ; $6af3: $61
    ld a, d                                       ; $6af4: $7a
    ld b, h                                       ; $6af5: $44
    nop                                           ; $6af6: $00
    ld d, a                                       ; $6af7: $57
    nop                                           ; $6af8: $00
    and a                                         ; $6af9: $a7
    ld bc, $6fa2                                  ; $6afa: $01 $a2 $6f
    ld b, l                                       ; $6afd: $45
    ld a, [hl-]                                   ; $6afe: $3a
    dec [hl]                                      ; $6aff: $35
    dec [hl]                                      ; $6b00: $35
    ld b, d                                       ; $6b01: $42
    ldh [$ae], a                                  ; $6b02: $e0 $ae
    xor a                                         ; $6b04: $af
    inc bc                                        ; $6b05: $03
    jp nz, $82f8                                  ; $6b06: $c2 $f8 $82

    push bc                                       ; $6b09: $c5
    nop                                           ; $6b0a: $00
    ld e, b                                       ; $6b0b: $58
    nop                                           ; $6b0c: $00
    call z, Call_000_3c44                         ; $6b0d: $cc $44 $3c
    dec [hl]                                      ; $6b10: $35
    xor h                                         ; $6b11: $ac
    dec [hl]                                      ; $6b12: $35
    pop bc                                        ; $6b13: $c1
    ld a, $c1                                     ; $6b14: $3e $c1
    ldh [$81], a                                  ; $6b16: $e0 $81
    ld [c], a                                     ; $6b18: $e2
    db $fc                                        ; $6b19: $fc
    inc h                                         ; $6b1a: $24
    nop                                           ; $6b1b: $00
    ld e, h                                       ; $6b1c: $5c
    nop                                           ; $6b1d: $00
    ret                                           ; $6b1e: $c9


    add hl, sp                                    ; $6b1f: $39
    dec [hl]                                      ; $6b20: $35
    cpl                                           ; $6b21: $2f
    dec [hl]                                      ; $6b22: $35
    xor l                                         ; $6b23: $ad
    dec [hl]                                      ; $6b24: $35
    ld a, $c4                                     ; $6b25: $3e $c4
    ret nz                                        ; $6b27: $c0

    xor a                                         ; $6b28: $af

jr_061_6b29:
    ld b, h                                       ; $6b29: $44
    and c                                         ; $6b2a: $a1
    add d                                         ; $6b2b: $82
    ld b, l                                       ; $6b2c: $45
    ld [$5b00], sp                                ; $6b2d: $08 $00 $5b
    adc d                                         ; $6b30: $8a
    inc hl                                        ; $6b31: $23
    ret z                                         ; $6b32: $c8

    ld b, e                                       ; $6b33: $43
    ld a, $41                                     ; $6b34: $3e $41
    ldh [$82], a                                  ; $6b36: $e0 $82
    pop bc                                        ; $6b38: $c1
    db $fd                                        ; $6b39: $fd
    ld b, b                                       ; $6b3a: $40
    jp $f841                                      ; $6b3b: $c3 $41 $f8


    nop                                           ; $6b3e: $00
    ld e, a                                       ; $6b3f: $5f
    nop                                           ; $6b40: $00
    and [hl]                                      ; $6b41: $a6
    ld bc, $83a1                                  ; $6b42: $01 $a1 $83
    adc c                                         ; $6b45: $89
    ld [hl], c                                    ; $6b46: $71
    ld [hl], d                                    ; $6b47: $72
    ld l, h                                       ; $6b48: $6c
    jp nz, $c0ff                                  ; $6b49: $c2 $ff $c0

    add hl, sp                                    ; $6b4c: $39
    db $fd                                        ; $6b4d: $fd
    ld b, d                                       ; $6b4e: $42
    add d                                         ; $6b4f: $82
    ld c, c                                       ; $6b50: $49
    nop                                           ; $6b51: $00
    cp a                                          ; $6b52: $bf
    ld [bc], a                                    ; $6b53: $02
    add c                                         ; $6b54: $81
    adc d                                         ; $6b55: $8a
    add l                                         ; $6b56: $85
    rla                                           ; $6b57: $17
    ld a, $6e                                     ; $6b58: $3e $6e
    ld [hl], h                                    ; $6b5a: $74
    cp a                                          ; $6b5b: $bf
    ret nz                                        ; $6b5c: $c0

    ld a, $f9                                     ; $6b5d: $3e $f9
    ld b, e                                       ; $6b5f: $43
    add d                                         ; $6b60: $82
    ld c, c                                       ; $6b61: $49
    nop                                           ; $6b62: $00

Jump_061_6b63:
    cp [hl]                                       ; $6b63: $be
    ld a, $03                                     ; $6b64: $3e $03
    ld h, c                                       ; $6b66: $61
    adc d                                         ; $6b67: $8a
    xor [hl]                                      ; $6b68: $ae
    ld a, $35                                     ; $6b69: $3e $35

Jump_061_6b6b:
    ld l, c                                       ; $6b6b: $69
    ccf                                           ; $6b6c: $3f
    db $e3                                        ; $6b6d: $e3
    ld bc, $7844                                  ; $6b6e: $01 $44 $78
    ld a, d                                       ; $6b71: $7a
    rlca                                          ; $6b72: $07
    nop                                           ; $6b73: $00
    cp l                                          ; $6b74: $bd
    ret nz                                        ; $6b75: $c0

    ld [c], a                                     ; $6b76: $e2
    xor a                                         ; $6b77: $af
    add hl, sp                                    ; $6b78: $39
    dec [hl]                                      ; $6b79: $35
    ld l, e                                       ; $6b7a: $6b
    ccf                                           ; $6b7b: $3f
    ldh [$c1], a                                  ; $6b7c: $e0 $c1
    inc a                                         ; $6b7e: $3c
    add h                                         ; $6b7f: $84
    add b                                         ; $6b80: $80
    ei                                            ; $6b81: $fb
    ld hl, $bf00                                  ; $6b82: $21 $00 $bf
    nop                                           ; $6b85: $00
    and a                                         ; $6b86: $a7
    adc b                                         ; $6b87: $88
    ld hl, $7d8c                                  ; $6b88: $21 $8c $7d
    dec bc                                        ; $6b8b: $0b
    ld b, d                                       ; $6b8c: $42
    dec [hl]                                      ; $6b8d: $35
    ccf                                           ; $6b8e: $3f
    ld [c], a                                     ; $6b8f: $e2
    ld [hl], $03                                  ; $6b90: $36 $03
    add c                                         ; $6b92: $81
    add d                                         ; $6b93: $82
    ld b, e                                       ; $6b94: $43
    nop                                           ; $6b95: $00
    ld e, a                                       ; $6b96: $5f
    jr nz, jr_061_6bbd                            ; $6b97: $20 $24

    ld a, [c]                                     ; $6b99: $f2
    ld b, a                                       ; $6b9a: $47
    ld hl, $c08a                                  ; $6b9b: $21 $8a $c0
    and b                                         ; $6b9e: $a0
    ccf                                           ; $6b9f: $3f
    pop hl                                        ; $6ba0: $e1
    dec [hl]                                      ; $6ba1: $35
    jr c, jr_061_6bdb                             ; $6ba2: $38 $37

    ld b, l                                       ; $6ba4: $45
    jr c, jr_061_6b29                             ; $6ba5: $38 $82

    ld b, h                                       ; $6ba7: $44
    nop                                           ; $6ba8: $00
    ld e, a                                       ; $6ba9: $5f
    nop                                           ; $6baa: $00
    ld l, b                                       ; $6bab: $68
    adc d                                         ; $6bac: $8a
    xor [hl]                                      ; $6bad: $ae
    add hl, sp                                    ; $6bae: $39
    ret nz                                        ; $6baf: $c0

    db $e3                                        ; $6bb0: $e3
    inc a                                         ; $6bb1: $3c
    and c                                         ; $6bb2: $a1
    ldh a, [$79]                                  ; $6bb3: $f0 $79
    jr nz, jr_061_6bf7                            ; $6bb5: $20 $40

    jr nz, jr_061_6bb9                            ; $6bb7: $20 $00

jr_061_6bb9:
    ld e, a                                       ; $6bb9: $5f
    nop                                           ; $6bba: $00
    xor b                                         ; $6bbb: $a8
    adc d                                         ; $6bbc: $8a

jr_061_6bbd:
    xor a                                         ; $6bbd: $af
    ld b, l                                       ; $6bbe: $45
    scf                                           ; $6bbf: $37
    dec bc                                        ; $6bc0: $0b
    ld l, c                                       ; $6bc1: $69
    jr c, @-$3f                                   ; $6bc2: $38 $bf

    db $e3                                        ; $6bc4: $e3
    add hl, sp                                    ; $6bc5: $39
    ld a, e                                       ; $6bc6: $7b
    nop                                           ; $6bc7: $00
    nop                                           ; $6bc8: $00
    ld h, [hl]                                    ; $6bc9: $66
    nop                                           ; $6bca: $00
    ld e, a                                       ; $6bcb: $5f
    ld a, [hl]                                    ; $6bcc: $7e
    jp nz, $810d                                  ; $6bcd: $c2 $0d $81

    call nz, $8000                                ; $6bd0: $c4 $00 $80
    ld b, l                                       ; $6bd3: $45
    ld a, a                                       ; $6bd4: $7f
    add b                                         ; $6bd5: $80
    ld a, [$7e82]                                 ; $6bd6: $fa $82 $7e
    ret z                                         ; $6bd9: $c8

    nop                                           ; $6bda: $00

jr_061_6bdb:
    ld e, a                                       ; $6bdb: $5f
    ld a, [hl]                                    ; $6bdc: $7e
    ld a, [hl]                                    ; $6bdd: $7e
    and d                                         ; $6bde: $a2

jr_061_6bdf:
    adc h                                         ; $6bdf: $8c
    ld a, l                                       ; $6be0: $7d
    xor a                                         ; $6be1: $af
    ld a, c                                       ; $6be2: $79
    adc l                                         ; $6be3: $8d
    xor [hl]                                      ; $6be4: $ae
    cp e                                          ; $6be5: $bb
    add d                                         ; $6be6: $82
    add a                                         ; $6be7: $87
    dec [hl]                                      ; $6be8: $35
    dec [hl]                                      ; $6be9: $35
    ld b, d                                       ; $6bea: $42
    ei                                            ; $6beb: $fb
    add d                                         ; $6bec: $82
    nop                                           ; $6bed: $00
    ld e, a                                       ; $6bee: $5f
    sbc [hl]                                      ; $6bef: $9e
    ld h, e                                       ; $6bf0: $63
    ld a, [hl]                                    ; $6bf1: $7e
    add e                                         ; $6bf2: $83
    adc [hl]                                      ; $6bf3: $8e
    inc bc                                        ; $6bf4: $03
    ld a, e                                       ; $6bf5: $7b
    adc a                                         ; $6bf6: $8f

jr_061_6bf7:
    ld b, l                                       ; $6bf7: $45
    add b                                         ; $6bf8: $80
    ld a, [$3b80]                                 ; $6bf9: $fa $80 $3b
    jp nz, $c1fe                                  ; $6bfc: $c2 $fe $c1

    nop                                           ; $6bff: $00
    ld e, a                                       ; $6c00: $5f
    sbc [hl]                                      ; $6c01: $9e
    and a                                         ; $6c02: $a7
    inc c                                         ; $6c03: $0c
    dec a                                         ; $6c04: $3d
    ld b, b                                       ; $6c05: $40
    ld b, d                                       ; $6c06: $42
    nop                                           ; $6c07: $00
    xor [hl]                                      ; $6c08: $ae
    xor a                                         ; $6c09: $af
    ld a, d                                       ; $6c0a: $7a
    add b                                         ; $6c0b: $80
    add b                                         ; $6c0c: $80
    ld [c], a                                     ; $6c0d: $e2
    ld a, [hl]                                    ; $6c0e: $7e
    ld b, e                                       ; $6c0f: $43
    nop                                           ; $6c10: $00
    cp a                                          ; $6c11: $bf
    inc b                                         ; $6c12: $04
    ld a, [hl]                                    ; $6c13: $7e
    add hl, hl                                    ; $6c14: $29
    ld a, [hl-]                                   ; $6c15: $3a
    add c                                         ; $6c16: $81
    ld b, d                                       ; $6c17: $42
    nop                                           ; $6c18: $00
    push hl                                       ; $6c19: $e5
    ld a, [hl]                                    ; $6c1a: $7e
    ld b, d                                       ; $6c1b: $42
    nop                                           ; $6c1c: $00
    cp a                                          ; $6c1d: $bf
    ld a, [hl]                                    ; $6c1e: $7e
    ld l, c                                       ; $6c1f: $69
    ret z                                         ; $6c20: $c8

    ld b, b                                       ; $6c21: $40
    ld h, b                                       ; $6c22: $60
    rst $38                                       ; $6c23: $ff
    jp $c180                                      ; $6c24: $c3 $80 $c1


    ld b, b                                       ; $6c27: $40
    nop                                           ; $6c28: $00
    nop                                           ; $6c29: $00
    ld e, a                                       ; $6c2a: $5f
    nop                                           ; $6c2b: $00
    push hl                                       ; $6c2c: $e5
    ret nc                                        ; $6c2d: $d0

    pop de                                        ; $6c2e: $d1
    inc a                                         ; $6c2f: $3c
    add c                                         ; $6c30: $81
    ld [bc], a                                    ; $6c31: $02
    add [hl]                                      ; $6c32: $86
    add b                                         ; $6c33: $80
    xor a                                         ; $6c34: $af
    add hl, sp                                    ; $6c35: $39
    add c                                         ; $6c36: $81
    inc a                                         ; $6c37: $3c
    and c                                         ; $6c38: $a1
    dec sp                                        ; $6c39: $3b
    and b                                         ; $6c3a: $a0
    ld a, [hl]                                    ; $6c3b: $7e
    and [hl]                                      ; $6c3c: $a6
    nop                                           ; $6c3d: $00
    ld e, e                                       ; $6c3e: $5b
    db $fc                                        ; $6c3f: $fc
    inc b                                         ; $6c40: $04

Call_061_6c41:
    nop                                           ; $6c41: $00
    ccf                                           ; $6c42: $3f
    db $e3                                        ; $6c43: $e3
    ld a, [hl-]                                   ; $6c44: $3a
    ld h, e                                       ; $6c45: $63
    ld bc, $bce1                                  ; $6c46: $01 $e1 $bc
    ld b, d                                       ; $6c49: $42
    ld a, d                                       ; $6c4a: $7a
    ld [hl], c                                    ; $6c4b: $71
    nop                                           ; $6c4c: $00
    ld c, l                                       ; $6c4d: $4d
    db $fc                                        ; $6c4e: $fc
    ld b, h                                       ; $6c4f: $44
    rst $38                                       ; $6c50: $ff
    jp nz, $ae01                                  ; $6c51: $c2 $01 $ae

    nop                                           ; $6c54: $00
    ld [c], a                                     ; $6c55: $e2
    add b                                         ; $6c56: $80
    ld [c], a                                     ; $6c57: $e2
    db $fc                                        ; $6c58: $fc
    jr z, jr_061_6c5b                             ; $6c59: $28 $00

jr_061_6c5b:
    ld e, l                                       ; $6c5b: $5d
    jr jr_061_6bdf                                ; $6c5c: $18 $81

    ld a, h                                       ; $6c5e: $7c
    ld h, e                                       ; $6c5f: $63
    ld a, [$0042]                                 ; $6c60: $fa $42 $00
    pop bc                                        ; $6c63: $c1
    call nz, $25fc                                ; $6c64: $c4 $fc $25
    add b                                         ; $6c67: $80
    ld a, c                                       ; $6c68: $79
    ld a, [hl]                                    ; $6c69: $7e
    ld b, e                                       ; $6c6a: $43
    db $fc                                        ; $6c6b: $fc
    ld h, l                                       ; $6c6c: $65
    ld a, [$8001]                                 ; $6c6d: $fa $01 $80
    pop bc                                        ; $6c70: $c1
    ld b, c                                       ; $6c71: $41
    and b                                         ; $6c72: $a0
    nop                                           ; $6c73: $00
    cp e                                          ; $6c74: $bb
    ld h, h                                       ; $6c75: $64
    db $fc                                        ; $6c76: $fc
    ld h, c                                       ; $6c77: $61
    nop                                           ; $6c78: $00
    cp b                                          ; $6c79: $b8

Call_061_6c7a:
    ld a, [$fc82]                                 ; $6c7a: $fa $82 $fc
    ld h, [hl]                                    ; $6c7d: $66
    add a                                         ; $6c7e: $87
    ld h, d                                       ; $6c7f: $62
    ld a, $a0                                     ; $6c80: $3e $a0
    ld a, $80                                     ; $6c82: $3e $80
    nop                                           ; $6c84: $00
    dec sp                                        ; $6c85: $3b
    ld h, c                                       ; $6c86: $61
    cp a                                          ; $6c87: $bf
    ret nz                                        ; $6c88: $c0

    db $e4                                        ; $6c89: $e4
    add d                                         ; $6c8a: $82
    nop                                           ; $6c8b: $00
    or [hl]                                       ; $6c8c: $b6
    dec a                                         ; $6c8d: $3d
    inc h                                         ; $6c8e: $24
    db $fc                                        ; $6c8f: $fc
    inc hl                                        ; $6c90: $23
    dec a                                         ; $6c91: $3d
    ld b, d                                       ; $6c92: $42
    ld a, d                                       ; $6c93: $7a
    ld [hl+], a                                   ; $6c94: $22
    nop                                           ; $6c95: $00
    pop bc                                        ; $6c96: $c1
    nop                                           ; $6c97: $00
    db $f4                                        ; $6c98: $f4
    and h                                         ; $6c99: $a4
    db $fc                                        ; $6c9a: $fc
    inc bc                                        ; $6c9b: $03
    nop                                           ; $6c9c: $00
    or [hl]                                       ; $6c9d: $b6
    ld a, d                                       ; $6c9e: $7a
    ld a, [bc]                                    ; $6c9f: $0a
    add b                                         ; $6ca0: $80
    and d                                         ; $6ca1: $a2
    ld c, b                                       ; $6ca2: $48
    db $e4                                        ; $6ca3: $e4
    ld sp, hl                                     ; $6ca4: $f9
    push hl                                       ; $6ca5: $e5
    nop                                           ; $6ca6: $00
    ld a, l                                       ; $6ca7: $7d
    add c                                         ; $6ca8: $81
    nop                                           ; $6ca9: $00
    cp e                                          ; $6caa: $bb
    ld a, d                                       ; $6cab: $7a
    dec b                                         ; $6cac: $05
    nop                                           ; $6cad: $00
    jp $a27f                                      ; $6cae: $c3 $7f $a2


    ld sp, hl                                     ; $6cb1: $f9
    rst $20                                       ; $6cb2: $e7
    db $fc                                        ; $6cb3: $fc
    ld b, h                                       ; $6cb4: $44
    nop                                           ; $6cb5: $00
    ld e, c                                       ; $6cb6: $59
    inc a                                         ; $6cb7: $3c
    ld a, d                                       ; $6cb8: $7a
    dec b                                         ; $6cb9: $05
    nop                                           ; $6cba: $00
    push bc                                       ; $6cbb: $c5
    ld b, l                                       ; $6cbc: $45
    ld b, e                                       ; $6cbd: $43
    ld b, c                                       ; $6cbe: $41
    ld b, e                                       ; $6cbf: $43
    db $fd                                        ; $6cc0: $fd
    ldh [$80], a                                  ; $6cc1: $e0 $80
    jp Jump_061_7ee0                              ; $6cc3: $c3 $e0 $7e


    ld h, h                                       ; $6cc6: $64
    nop                                           ; $6cc7: $00
    ld e, c                                       ; $6cc8: $59
    ld a, d                                       ; $6cc9: $7a
    dec b                                         ; $6cca: $05
    nop                                           ; $6ccb: $00
    jp nz, Jump_000_00fd                          ; $6ccc: $c2 $fd $00

    ld [hl], $3b                                  ; $6ccf: $36 $3b
    dec [hl]                                      ; $6cd1: $35
    ld bc, $fd3b                                  ; $6cd2: $01 $3b $fd
    ldh [$be], a                                  ; $6cd5: $e0 $be
    pop bc                                        ; $6cd7: $c1
    add b                                         ; $6cd8: $80
    and b                                         ; $6cd9: $a0
    db $fc                                        ; $6cda: $fc
    inc bc                                        ; $6cdb: $03
    add b                                         ; $6cdc: $80

jr_061_6cdd:
    db $dd                                        ; $6cdd: $dd
    db $fc                                        ; $6cde: $fc
    ld b, $fd                                     ; $6cdf: $06 $fd
    ld bc, $a40b                                  ; $6ce1: $01 $0b $a4
    ld h, h                                       ; $6ce4: $64
    rst $38                                       ; $6ce5: $ff
    ldh [$a5], a                                  ; $6ce6: $e0 $a5
    ld a, e                                       ; $6ce8: $7b
    ld b, c                                       ; $6ce9: $41
    cp e                                          ; $6cea: $bb
    nop                                           ; $6ceb: $00
    nop                                           ; $6cec: $00
    cp h                                          ; $6ced: $bc
    ld a, d                                       ; $6cee: $7a
    ld [$7efc], sp                                ; $6cef: $08 $fc $7e
    add b                                         ; $6cf2: $80
    dec sp                                        ; $6cf3: $3b
    ld hl, $3542                                  ; $6cf4: $21 $42 $35
    ld l, c                                       ; $6cf7: $69
    and e                                         ; $6cf8: $a3
    dec [hl]                                      ; $6cf9: $35
    dec [hl]                                      ; $6cfa: $35
    dec de                                        ; $6cfb: $1b
    and e                                         ; $6cfc: $a3
    ld l, d                                       ; $6cfd: $6a
    ld b, b                                       ; $6cfe: $40
    add d                                         ; $6cff: $82
    sbc h                                         ; $6d00: $9c
    sbc a                                         ; $6d01: $9f
    ld a, [hl]                                    ; $6d02: $7e
    dec h                                         ; $6d03: $25
    add b                                         ; $6d04: $80
    db $dd                                        ; $6d05: $dd
    db $fc                                        ; $6d06: $fc

Call_061_6d07:
    ld b, e                                       ; $6d07: $43

Jump_061_6d08:
    nop                                           ; $6d08: $00
    dec sp                                        ; $6d09: $3b
    nop                                           ; $6d0a: $00
    ret nz                                        ; $6d0b: $c0

    ldh [$fb], a                                  ; $6d0c: $e0 $fb
    ld bc, $e2c0                                  ; $6d0e: $01 $c0 $e2
    db $fc                                        ; $6d11: $fc
    ld [bc], a                                    ; $6d12: $02
    nop                                           ; $6d13: $00
    ld e, l                                       ; $6d14: $5d
    ld a, d                                       ; $6d15: $7a
    dec b                                         ; $6d16: $05
    db $fc                                        ; $6d17: $fc
    ld b, c                                       ; $6d18: $41
    sbc $7c                                       ; $6d19: $de $7c
    ld h, b                                       ; $6d1b: $60
    ld b, h                                       ; $6d1c: $44
    inc a                                         ; $6d1d: $3c
    ld l, e                                       ; $6d1e: $6b
    ld [hl], c                                    ; $6d1f: $71
    rst $38                                       ; $6d20: $ff
    ldh [$6d], a                                  ; $6d21: $e0 $6d
    inc a                                         ; $6d23: $3c
    rlca                                          ; $6d24: $07
    ld b, h                                       ; $6d25: $44
    sbc h                                         ; $6d26: $9c
    sbc l                                         ; $6d27: $9d
    cp l                                          ; $6d28: $bd
    nop                                           ; $6d29: $00
    nop                                           ; $6d2a: $00
    ld e, a                                       ; $6d2b: $5f
    ld a, d                                       ; $6d2c: $7a
    add hl, bc                                    ; $6d2d: $09
    ld hl, sp+$00                                 ; $6d2e: $f8 $00
    ret nz                                        ; $6d30: $c0

    rst $00                                       ; $6d31: $c7
    jr c, jr_061_6d34                             ; $6d32: $38 $00

jr_061_6d34:
    ld [hl+], a                                   ; $6d34: $22
    nop                                           ; $6d35: $00
    ld e, a                                       ; $6d36: $5f
    ld a, d                                       ; $6d37: $7a
    add hl, bc                                    ; $6d38: $09
    ret nc                                        ; $6d39: $d0

    pop de                                        ; $6d3a: $d1
    and c                                         ; $6d3b: $a1
    ld b, b                                       ; $6d3c: $40
    rst $00                                       ; $6d3d: $c7
    ld b, d                                       ; $6d3e: $42
    ld b, b                                       ; $6d3f: $40
    nop                                           ; $6d40: $00
    add d                                         ; $6d41: $82
    jp $bf00                                      ; $6d42: $c3 $00 $bf


    ld a, d                                       ; $6d45: $7a
    ld c, d                                       ; $6d46: $4a
    cp d                                          ; $6d47: $ba
    add h                                         ; $6d48: $84
    ld b, b                                       ; $6d49: $40
    ld bc, $2400                                  ; $6d4a: $01 $00 $24
    sub e                                         ; $6d4d: $93
    xor l                                         ; $6d4e: $ad
    add b                                         ; $6d4f: $80
    ret nc                                        ; $6d50: $d0

    ld a, [bc]                                    ; $6d51: $0a
    ld a, d                                       ; $6d52: $7a
    ld b, a                                       ; $6d53: $47
    sbc l                                         ; $6d54: $9d
    rst $38                                       ; $6d55: $ff
    db $e4                                        ; $6d56: $e4
    sbc a                                         ; $6d57: $9f
    db $ec                                        ; $6d58: $ec
    jr nz, jr_061_6cdd                            ; $6d59: $20 $82

    ld b, e                                       ; $6d5b: $43
    sub e                                         ; $6d5c: $93
    xor [hl]                                      ; $6d5d: $ae
    nop                                           ; $6d5e: $00
    or h                                          ; $6d5f: $b4
    nop                                           ; $6d60: $00
    sub [hl]                                      ; $6d61: $96
    ld h, $8f                                     ; $6d62: $26 $8f
    inc h                                         ; $6d64: $24
    add [hl]                                      ; $6d65: $86
    ld [hl], c                                    ; $6d66: $71
    nop                                           ; $6d67: $00
    or a                                          ; $6d68: $b7
    jr @-$3a                                      ; $6d69: $18 $c4

    adc [hl]                                      ; $6d6b: $8e
    jr nz, @-$02                                  ; $6d6c: $20 $fc

    push hl                                       ; $6d6e: $e5
    add [hl]                                      ; $6d6f: $86
    ld [hl], c                                    ; $6d70: $71
    nop                                           ; $6d71: $00
    rlca                                          ; $6d72: $07
    inc hl                                        ; $6d73: $23
    nop                                           ; $6d74: $00
    nop                                           ; $6d75: $00
    nop                                           ; $6d76: $00
    pop bc                                        ; $6d77: $c1
    nop                                           ; $6d78: $00
    rst $38                                       ; $6d79: $ff
    rst $38                                       ; $6d7a: $ff
    rst $38                                       ; $6d7b: $ff
    rst $38                                       ; $6d7c: $ff
    rst $38                                       ; $6d7d: $ff
    rst $38                                       ; $6d7e: $ff
    rst $38                                       ; $6d7f: $ff
    rst $38                                       ; $6d80: $ff
    rst $38                                       ; $6d81: $ff
    rst $38                                       ; $6d82: $ff
    nop                                           ; $6d83: $00
    nop                                           ; $6d84: $00
    ld bc, $fe80                                  ; $6d85: $01 $80 $fe
    ldh [rIE], a                                  ; $6d88: $e0 $ff
    rst $38                                       ; $6d8a: $ff
    rst $38                                       ; $6d8b: $ff
    rst $38                                       ; $6d8c: $ff
    rst $38                                       ; $6d8d: $ff
    add sp, $00                                   ; $6d8e: $e8 $00
    nop                                           ; $6d90: $00
    nop                                           ; $6d91: $00
    ld [bc], a                                    ; $6d92: $02
    nop                                           ; $6d93: $00
    dec e                                         ; $6d94: $1d
    add hl, bc                                    ; $6d95: $09
    ld [bc], a                                    ; $6d96: $02
    ld bc, $0921                                  ; $6d97: $01 $21 $09
    ld [bc], a                                    ; $6d9a: $02
    ld [bc], a                                    ; $6d9b: $02
    dec h                                         ; $6d9c: $25
    add hl, bc                                    ; $6d9d: $09
    ld [bc], a                                    ; $6d9e: $02
    inc bc                                        ; $6d9f: $03
    add hl, de                                    ; $6da0: $19
    dec bc                                        ; $6da1: $0b
    ld [bc], a                                    ; $6da2: $02
    inc b                                         ; $6da3: $04
    ld h, $0d                                     ; $6da4: $26 $0d
    ld [bc], a                                    ; $6da6: $02
    dec b                                         ; $6da7: $05
    rla                                           ; $6da8: $17
    ld c, $02                                     ; $6da9: $0e $02
    ld b, $25                                     ; $6dab: $06 $25
    ld de, $0702                                  ; $6dad: $11 $02 $07
    ld d, $12                                     ; $6db0: $16 $12
    ld [bc], a                                    ; $6db2: $02
    ld [$1424], sp                                ; $6db3: $08 $24 $14
    ld [bc], a                                    ; $6db6: $02
    add hl, bc                                    ; $6db7: $09
    ld d, $16                                     ; $6db8: $16 $16
    ld [bc], a                                    ; $6dba: $02
    ld a, [bc]                                    ; $6dbb: $0a
    ld hl, $0216                                  ; $6dbc: $21 $16 $02
    dec bc                                        ; $6dbf: $0b
    ld [hl+], a                                   ; $6dc0: $22
    ld d, $02                                     ; $6dc1: $16 $02
    inc c                                         ; $6dc3: $0c
    inc hl                                        ; $6dc4: $23
    rla                                           ; $6dc5: $17
    ld [bc], a                                    ; $6dc6: $02
    dec c                                         ; $6dc7: $0d
    ld hl, $0218                                  ; $6dc8: $21 $18 $02
    ld c, $20                                     ; $6dcb: $0e $20
    add hl, de                                    ; $6dcd: $19
    ld [bc], a                                    ; $6dce: $02
    rrca                                          ; $6dcf: $0f
    ld [hl+], a                                   ; $6dd0: $22
    add hl, de                                    ; $6dd1: $19
    ld [bc], a                                    ; $6dd2: $02
    db $10                                        ; $6dd3: $10
    ld d, $1a                                     ; $6dd4: $16 $1a
    ld [bc], a                                    ; $6dd6: $02
    ld de, $1a1f                                  ; $6dd7: $11 $1f $1a
    ld [bc], a                                    ; $6dda: $02
    ld [de], a                                    ; $6ddb: $12
    dec de                                        ; $6ddc: $1b
    dec de                                        ; $6ddd: $1b
    ld [bc], a                                    ; $6dde: $02
    inc de                                        ; $6ddf: $13
    ld e, $1b                                     ; $6de0: $1e $1b
    ld [bc], a                                    ; $6de2: $02
    inc d                                         ; $6de3: $14
    ld hl, $021b                                  ; $6de4: $21 $1b $02
    dec d                                         ; $6de7: $15
    rra                                           ; $6de8: $1f
    inc e                                         ; $6de9: $1c
    ld [bc], a                                    ; $6dea: $02
    ld d, $20                                     ; $6deb: $16 $20
    dec e                                         ; $6ded: $1d
    ld [bc], a                                    ; $6dee: $02
    rla                                           ; $6def: $17
    dec d                                         ; $6df0: $15
    ld e, $02                                     ; $6df1: $1e $02
    jr jr_061_6e15                                ; $6df3: $18 $20

    rra                                           ; $6df5: $1f
    ld [bc], a                                    ; $6df6: $02
    add hl, de                                    ; $6df7: $19
    rla                                           ; $6df8: $17
    jr nz, jr_061_6dfd                            ; $6df9: $20 $02

    ld a, [de]                                    ; $6dfb: $1a
    ld [hl+], a                                   ; $6dfc: $22

jr_061_6dfd:
    ld hl, $1b02                                  ; $6dfd: $21 $02 $1b
    inc h                                         ; $6e00: $24
    inc hl                                        ; $6e01: $23
    ld [bc], a                                    ; $6e02: $02
    inc e                                         ; $6e03: $1c
    jr jr_061_6e2a                                ; $6e04: $18 $24

    ld [bc], a                                    ; $6e06: $02
    dec e                                         ; $6e07: $1d
    add hl, de                                    ; $6e08: $19
    ld h, $02                                     ; $6e09: $26 $02
    ld e, $1c                                     ; $6e0b: $1e $1c
    daa                                           ; $6e0d: $27
    ld [bc], a                                    ; $6e0e: $02
    rra                                           ; $6e0f: $1f
    ld h, $27                                     ; $6e10: $26 $27
    ld [bc], a                                    ; $6e12: $02
    jr nz, jr_061_6e30                            ; $6e13: $20 $1b

jr_061_6e15:
    jr z, @+$04                                   ; $6e15: $28 $02

    ld hl, $281d                                  ; $6e17: $21 $1d $28
    ld [bc], a                                    ; $6e1a: $02
    ld [hl+], a                                   ; $6e1b: $22
    inc e                                         ; $6e1c: $1c
    add hl, hl                                    ; $6e1d: $29
    ld [bc], a                                    ; $6e1e: $02
    inc hl                                        ; $6e1f: $23
    ld a, [de]                                    ; $6e20: $1a
    dec hl                                        ; $6e21: $2b
    ld [bc], a                                    ; $6e22: $02
    inc h                                         ; $6e23: $24
    dec e                                         ; $6e24: $1d
    dec hl                                        ; $6e25: $2b
    ld [bc], a                                    ; $6e26: $02
    dec h                                         ; $6e27: $25
    daa                                           ; $6e28: $27
    inc l                                         ; $6e29: $2c

jr_061_6e2a:
    ld [bc], a                                    ; $6e2a: $02
    ld h, $1c                                     ; $6e2b: $26 $1c
    ld l, $02                                     ; $6e2d: $2e $02
    daa                                           ; $6e2f: $27

jr_061_6e30:
    dec h                                         ; $6e30: $25
    jr nc, jr_061_6e35                            ; $6e31: $30 $02

    jr z, jr_061_6e4e                             ; $6e33: $28 $19

jr_061_6e35:
    ld sp, $2902                                  ; $6e35: $31 $02 $29
    jr z, jr_061_6e6b                             ; $6e38: $28 $31

    ld [bc], a                                    ; $6e3a: $02
    ld a, [hl+]                                   ; $6e3b: $2a
    dec e                                         ; $6e3c: $1d
    inc sp                                        ; $6e3d: $33
    ld [bc], a                                    ; $6e3e: $02
    dec hl                                        ; $6e3f: $2b
    inc h                                         ; $6e40: $24
    inc sp                                        ; $6e41: $33
    ld [bc], a                                    ; $6e42: $02
    inc l                                         ; $6e43: $2c
    add hl, de                                    ; $6e44: $19
    ld [hl], $02                                  ; $6e45: $36 $02
    dec l                                         ; $6e47: $2d
    daa                                           ; $6e48: $27
    ld [hl], $ff                                  ; $6e49: $36 $ff
    rst $38                                       ; $6e4b: $ff
    rst $38                                       ; $6e4c: $ff
    ld d, l                                       ; $6e4d: $55

jr_061_6e4e:
    ld l, [hl]                                    ; $6e4e: $6e
    rst $18                                       ; $6e4f: $df
    ld [hl], c                                    ; $6e50: $71
    sbc b                                         ; $6e51: $98
    halt                                          ; $6e52: $76
    or e                                          ; $6e53: $b3
    halt                                          ; $6e54: $76
    ccf                                           ; $6e55: $3f
    ld c, $0e                                     ; $6e56: $0e $0e
    dec c                                         ; $6e58: $0d

jr_061_6e59:
    dec c                                         ; $6e59: $0d
    dec c                                         ; $6e5a: $0d
    ld c, $fa                                     ; $6e5b: $0e $fa
    rst $38                                       ; $6e5d: $ff
    db $f4                                        ; $6e5e: $f4
    push af                                       ; $6e5f: $f5
    nop                                           ; $6e60: $00
    db $dd                                        ; $6e61: $dd
    ldh [rIE], a                                  ; $6e62: $e0 $ff
    rst $38                                       ; $6e64: $ff
    rst $38                                       ; $6e65: $ff
    rst $38                                       ; $6e66: $ff
    rst $38                                       ; $6e67: $ff
    rst $38                                       ; $6e68: $ff
    push af                                       ; $6e69: $f5
    db $f4                                        ; $6e6a: $f4

jr_061_6e6b:
    ld e, e                                       ; $6e6b: $5b
    jp hl                                         ; $6e6c: $e9


    ld [hl], b                                    ; $6e6d: $70
    db $e3                                        ; $6e6e: $e3
    db $fc                                        ; $6e6f: $fc
    pop af                                        ; $6e70: $f1

Call_061_6e71:
    inc bc                                        ; $6e71: $03
    ld c, l                                       ; $6e72: $4d
    ld c, l                                       ; $6e73: $4d
    sub $eb                                       ; $6e74: $d6 $eb
    dec h                                         ; $6e76: $25
    add sp, -$63                                  ; $6e77: $e8 $9d
    ld [$e5d8], a                                 ; $6e79: $ea $d8 $e5
    ret nz                                        ; $6e7c: $c0

    pop af                                        ; $6e7d: $f1
    rst $38                                       ; $6e7e: $ff
    rst $38                                       ; $6e7f: $ff
    ret z                                         ; $6e80: $c8

    rst $38                                       ; $6e81: $ff
    rst $38                                       ; $6e82: $ff
    ld a, $f3                                     ; $6e83: $3e $f3
    sbc b                                         ; $6e85: $98
    call nz, $824d                                ; $6e86: $c4 $4d $82
    push af                                       ; $6e89: $f5
    ld a, $e3                                     ; $6e8a: $3e $e3
    ld c, l                                       ; $6e8c: $4d
    ld c, l                                       ; $6e8d: $4d
    nop                                           ; $6e8e: $00
    add b                                         ; $6e8f: $80
    jp c, $e2c2                                   ; $6e90: $da $c2 $e2

    db $ec                                        ; $6e93: $ec
    rst $00                                       ; $6e94: $c7
    or $c5                                        ; $6e95: $f6 $c5
    inc h                                         ; $6e97: $24
    jp hl                                         ; $6e98: $e9


    dec sp                                        ; $6e99: $3b
    ld a, [$e282]                                 ; $6e9a: $fa $82 $e2
    ret c                                         ; $6e9d: $d8

    jp Jump_061_74c2                              ; $6e9e: $c3 $c2 $74


    ld [c], a                                     ; $6ea1: $e2
    dec l                                         ; $6ea2: $2d
    ld hl, sp-$1e                                 ; $6ea3: $f8 $e2
    ld a, [hl]                                    ; $6ea5: $7e
    db $eb                                        ; $6ea6: $eb
    add b                                         ; $6ea7: $80
    sbc $30                                       ; $6ea8: $de $30
    db $e4                                        ; $6eaa: $e4
    ld l, l                                       ; $6eab: $6d
    ld l, e                                       ; $6eac: $6b

Jump_061_6ead:
    inc bc                                        ; $6ead: $03
    ld l, e                                       ; $6eae: $6b

Jump_061_6eaf:
    ld l, e                                       ; $6eaf: $6b
    ld [hl-], a                                   ; $6eb0: $32
    ldh [$bd], a                                  ; $6eb1: $e0 $bd
    pop hl                                        ; $6eb3: $e1
    call c, Call_061_7aa9                         ; $6eb4: $dc $a9 $7a
    jp nc, $ce82                                  ; $6eb7: $d2 $82 $ce

    pop bc                                        ; $6eba: $c1
    ld [c], a                                     ; $6ebb: $e2
    add hl, bc                                    ; $6ebc: $09
    dec c                                         ; $6ebd: $0d
    cp [hl]                                       ; $6ebe: $be
    ldh [$bd], a                                  ; $6ebf: $e0 $bd
    ldh [$2d], a                                  ; $6ec1: $e0 $2d
    cp d                                          ; $6ec3: $ba
    ld [$df7a], a                                 ; $6ec4: $ea $7a $df
    xor $a2                                       ; $6ec7: $ee $a2
    add d                                         ; $6ec9: $82
    pop hl                                        ; $6eca: $e1
    rra                                           ; $6ecb: $1f
    dec c                                         ; $6ecc: $0d
    dec hl                                        ; $6ecd: $2b
    ld a, [bc]                                    ; $6ece: $0a
    ld a, [hl+]                                   ; $6ecf: $2a
    dec bc                                        ; $6ed0: $0b
    cp h                                          ; $6ed1: $bc
    pop hl                                        ; $6ed2: $e1
    cp d                                          ; $6ed3: $ba
    ld [c], a                                     ; $6ed4: $e2
    ld e, d                                       ; $6ed5: $5a
    cp d                                          ; $6ed6: $ba
    jr jr_061_6e59                                ; $6ed7: $18 $80

    rst $00                                       ; $6ed9: $c7
    ret c                                         ; $6eda: $d8

    and h                                         ; $6edb: $a4
    push bc                                       ; $6edc: $c5
    ldh [$2b], a                                  ; $6edd: $e0 $2b
    dec hl                                        ; $6edf: $2b
    ret nz                                        ; $6ee0: $c0

    ldh [$bf], a                                  ; $6ee1: $e0 $bf
    ld [c], a                                     ; $6ee3: $e2
    ld [hl], a                                    ; $6ee4: $77
    pop hl                                        ; $6ee5: $e1
    or b                                          ; $6ee6: $b0
    db $f4                                        ; $6ee7: $f4
    pop bc                                        ; $6ee8: $c1
    cp b                                          ; $6ee9: $b8
    and l                                         ; $6eea: $a5
    db $eb                                        ; $6eeb: $eb
    call nz, $d880                                ; $6eec: $c4 $80 $d8
    dec c                                         ; $6eef: $0d
    ld a, [bc]                                    ; $6ef0: $0a
    add l                                         ; $6ef1: $85
    ldh [$0b], a                                  ; $6ef2: $e0 $0b
    sbc a                                         ; $6ef4: $9f
    dec bc                                        ; $6ef5: $0b
    dec hl                                        ; $6ef6: $2b
    ld a, [bc]                                    ; $6ef7: $0a
    ld a, [bc]                                    ; $6ef8: $0a
    ld c, d                                       ; $6ef9: $4a
    ld a, [hl-]                                   ; $6efa: $3a
    ldh [$37], a                                  ; $6efb: $e0 $37
    db $e3                                        ; $6efd: $e3
    dec l                                         ; $6efe: $2d
    ld [hl], c                                    ; $6eff: $71
    dec l                                         ; $6f00: $2d
    ld [de], a                                    ; $6f01: $12
    res 0, b                                      ; $6f02: $cb $80
    db $d3                                        ; $6f04: $d3
    add d                                         ; $6f05: $82
    call nz, $0a0a                                ; $6f06: $c4 $0a $0a
    dec hl                                        ; $6f09: $2b
    ret nz                                        ; $6f0a: $c0

    pop hl                                        ; $6f0b: $e1
    rlca                                          ; $6f0c: $07
    dec bc                                        ; $6f0d: $0b
    ld a, [hl+]                                   ; $6f0e: $2a
    ld a, [bc]                                    ; $6f0f: $0a
    ld a, [$7dc2]                                 ; $6f10: $fa $c2 $7d
    push hl                                       ; $6f13: $e5
    ld [hl+], a                                   ; $6f14: $22
    and l                                         ; $6f15: $a5
    adc l                                         ; $6f16: $8d
    adc e                                         ; $6f17: $8b
    add b                                         ; $6f18: $80
    ret nc                                        ; $6f19: $d0

    rst $38                                       ; $6f1a: $ff
    ld a, [hl+]                                   ; $6f1b: $2a
    ld a, [bc]                                    ; $6f1c: $0a
    ld l, e                                       ; $6f1d: $6b
    dec bc                                        ; $6f1e: $0b
    dec bc                                        ; $6f1f: $0b
    ld c, e                                       ; $6f20: $4b
    ld l, e                                       ; $6f21: $6b
    dec hl                                        ; $6f22: $2b
    add c                                         ; $6f23: $81
    ld c, e                                       ; $6f24: $4b
    db $fc                                        ; $6f25: $fc
    ldh [rPCM34], a                               ; $6f26: $e0 $77
    ldh [$b4], a                                  ; $6f28: $e0 $b4
    jp $c5fc                                      ; $6f2a: $c3 $fc $c5


    nop                                           ; $6f2d: $00
    cp a                                          ; $6f2e: $bf
    push bc                                       ; $6f2f: $c5
    ret nz                                        ; $6f30: $c0

    ld c, d                                       ; $6f31: $4a
    rst $08                                       ; $6f32: $cf
    ld c, e                                       ; $6f33: $4b
    ld l, e                                       ; $6f34: $6b
    ld c, e                                       ; $6f35: $4b
    ld c, e                                       ; $6f36: $4b
    ld a, [hl]                                    ; $6f37: $7e
    ldh [rIE], a                                  ; $6f38: $e0 $ff
    pop hl                                        ; $6f3a: $e1
    dec hl                                        ; $6f3b: $2b
    dec hl                                        ; $6f3c: $2b
    ret nc                                        ; $6f3d: $d0

    cp [hl]                                       ; $6f3e: $be
    ld [c], a                                     ; $6f3f: $e2
    inc [hl]                                      ; $6f40: $34
    jp $df7e                                      ; $6f41: $c3 $7e $df


    adc $60                                       ; $6f44: $ce $60
    ld l, e                                       ; $6f46: $6b
    ld a, a                                       ; $6f47: $7f
    ldh [$0d], a                                  ; $6f48: $e0 $0d
    dec c                                         ; $6f4a: $0d
    dec bc                                        ; $6f4b: $0b
    ld l, e                                       ; $6f4c: $6b
    ld c, e                                       ; $6f4d: $4b
    pop bc                                        ; $6f4e: $c1
    ld [c], a                                     ; $6f4f: $e2
    dec c                                         ; $6f50: $0d
    ld [hl], $e1                                  ; $6f51: $36 $e1
    ret nz                                        ; $6f53: $c0

    ld [c], a                                     ; $6f54: $e2
    add b                                         ; $6f55: $80
    rst $18                                       ; $6f56: $df
    ld e, d                                       ; $6f57: $5a
    add e                                         ; $6f58: $83
    inc bc                                        ; $6f59: $03
    ld c, l                                       ; $6f5a: $4d
    dec l                                         ; $6f5b: $2d
    ld [bc], a                                    ; $6f5c: $02
    ret nz                                        ; $6f5d: $c0

    add e                                         ; $6f5e: $83
    ld h, b                                       ; $6f5f: $60
    cp a                                          ; $6f60: $bf
    db $e3                                        ; $6f61: $e3
    ret nz                                        ; $6f62: $c0

    ldh [$3d], a                                  ; $6f63: $e0 $3d
    ldh [$7c], a                                  ; $6f65: $e0 $7c
    pop bc                                        ; $6f67: $c1
    stop                                          ; $6f68: $10 $00
    and $80                                       ; $6f6a: $e6 $80
    db $dd                                        ; $6f6c: $dd
    jp nz, Jump_061_47e0                          ; $6f6d: $c2 $e0 $47

    jp $ff4b                                      ; $6f70: $c3 $4b $ff


    ldh [$3c], a                                  ; $6f73: $e0 $3c
    ld [c], a                                     ; $6f75: $e2
    or $a1                                        ; $6f76: $f6 $a1
    jr nz, @+$80                                  ; $6f78: $20 $7e

    rst $00                                       ; $6f7a: $c7
    nop                                           ; $6f7b: $00
    cp [hl]                                       ; $6f7c: $be
    add hl, bc                                    ; $6f7d: $09
    call nz, $a17d                                ; $6f7e: $c4 $7d $a1
    ld sp, hl                                     ; $6f81: $f9
    ret nz                                        ; $6f82: $c0

    dec c                                         ; $6f83: $0d
    ccf                                           ; $6f84: $3f
    db $e3                                        ; $6f85: $e3
    cp d                                          ; $6f86: $ba
    and d                                         ; $6f87: $a2

jr_061_6f88:
    ld [hl], b                                    ; $6f88: $70
    cp b                                          ; $6f89: $b8
    ld h, d                                       ; $6f8a: $62
    nop                                           ; $6f8b: $00
    cp l                                          ; $6f8c: $bd
    add b                                         ; $6f8d: $80
    and d                                         ; $6f8e: $a2
    rst $08                                       ; $6f8f: $cf
    jp nz, $2d0d                                  ; $6f90: $c2 $0d $2d

    dec c                                         ; $6f93: $0d
    inc bc                                        ; $6f94: $03
    ldh [$8c], a                                  ; $6f95: $e0 $8c
    ld a, [$7ec1]                                 ; $6f97: $fa $c1 $7e
    ret z                                         ; $6f9a: $c8

    ld c, $0e                                     ; $6f9b: $0e $0e
    add sp, -$7d                                  ; $6f9d: $e8 $83
    add b                                         ; $6f9f: $80
    ld l, a                                       ; $6fa0: $6f
    jr nz, jr_061_6f88                            ; $6fa1: $20 $e5

    dec l                                         ; $6fa3: $2d
    sub [hl]                                      ; $6fa4: $96
    sub b                                         ; $6fa5: $90
    pop bc                                        ; $6fa6: $c1
    dec l                                         ; $6fa7: $2d

jr_061_6fa8:
    inc c                                         ; $6fa8: $0c
    rst $38                                       ; $6fa9: $ff
    ldh [$2c], a                                  ; $6faa: $e0 $2c
    ret nz                                        ; $6fac: $c0

    ldh [rIE], a                                  ; $6fad: $e0 $ff
    jp Jump_000_000d                              ; $6faf: $c3 $0d $00


    ld a, d                                       ; $6fb2: $7a
    and h                                         ; $6fb3: $a4
    ld [hl], $61                                  ; $6fb4: $36 $61
    or d                                          ; $6fb6: $b2
    and a                                         ; $6fb7: $a7
    xor $52                                       ; $6fb8: $ee $52
    jp z, $86e0                                   ; $6fba: $ca $e0 $86

    ldh [$c1], a                                  ; $6fbd: $e0 $c1
    pop hl                                        ; $6fbf: $e1
    ret nz                                        ; $6fc0: $c0

    pop hl                                        ; $6fc1: $e1
    ret nz                                        ; $6fc2: $c0

    or h                                          ; $6fc3: $b4
    and d                                         ; $6fc4: $a2
    xor a                                         ; $6fc5: $af
    add d                                         ; $6fc6: $82
    ld a, h                                       ; $6fc7: $7c
    and [hl]                                      ; $6fc8: $a6
    ret nz                                        ; $6fc9: $c0

    db $eb                                        ; $6fca: $eb
    jr jr_061_7013                                ; $6fcb: $18 $46

    ret c                                         ; $6fcd: $d8

    ld b, l                                       ; $6fce: $45
    ld c, h                                       ; $6fcf: $4c
    ld c, h                                       ; $6fd0: $4c
    inc c                                         ; $6fd1: $0c
    call nz, $80e2                                ; $6fd2: $c4 $e2 $80
    ldh [$6c], a                                  ; $6fd5: $e0 $6c
    ld l, h                                       ; $6fd7: $6c
    add b                                         ; $6fd8: $80
    pop hl                                        ; $6fd9: $e1
    ld [hl], d                                    ; $6fda: $72
    and b                                         ; $6fdb: $a0
    ld l, [hl]                                    ; $6fdc: $6e
    pop hl                                        ; $6fdd: $e1
    cp [hl]                                       ; $6fde: $be
    pop bc                                        ; $6fdf: $c1
    ld b, b                                       ; $6fe0: $40
    ld a, [hl]                                    ; $6fe1: $7e
    and a                                         ; $6fe2: $a7
    nop                                           ; $6fe3: $00
    ld c, [hl]                                    ; $6fe4: $4e
    or d                                          ; $6fe5: $b2
    ld b, [hl]                                    ; $6fe6: $46
    ret z                                         ; $6fe7: $c8

    jr nz, jr_061_6fa8                            ; $6fe8: $20 $be

    push hl                                       ; $6fea: $e5
    add c                                         ; $6feb: $81
    push hl                                       ; $6fec: $e5
    ld c, e                                       ; $6fed: $4b
    ld l, h                                       ; $6fee: $6c
    jp nz, $fc00                                  ; $6fef: $c2 $00 $fc

    add h                                         ; $6ff2: $84
    call $9234                                    ; $6ff3: $cd $34 $92
    ld h, [hl]                                    ; $6ff6: $66
    res 0, c                                      ; $6ff7: $cb $81
    ld a, l                                       ; $6ff9: $7d
    db $e3                                        ; $6ffa: $e3
    add c                                         ; $6ffb: $81
    db $e3                                        ; $6ffc: $e3
    rst $38                                       ; $6ffd: $ff
    and d                                         ; $6ffe: $a2
    inc l                                         ; $6fff: $2c
    pop bc                                        ; $7000: $c1
    nop                                           ; $7001: $00
    ld a, [hl]                                    ; $7002: $7e
    call nz, $be00                                ; $7003: $c4 $00 $be
    ld bc, $0281                                  ; $7006: $01 $81 $02
    db $e4                                        ; $7009: $e4
    rst $30                                       ; $700a: $f7
    add b                                         ; $700b: $80
    or l                                          ; $700c: $b5
    add d                                         ; $700d: $82
    db $fc                                        ; $700e: $fc
    adc c                                         ; $700f: $89
    and $46                                       ; $7010: $e6 $46
    nop                                           ; $7012: $00

jr_061_7013:
    nop                                           ; $7013: $00
    ld d, h                                       ; $7014: $54
    add b                                         ; $7015: $80
    and b                                         ; $7016: $a0
    ret nz                                        ; $7017: $c0

    and $c2                                       ; $7018: $e6 $c2
    jp nz, $82bc                                  ; $701a: $c2 $bc $82

    ld hl, sp+$6b                                 ; $701d: $f8 $6b
    ld l, [hl]                                    ; $701f: $6e
    dec sp                                        ; $7020: $3b
    sub e                                         ; $7021: $93
    add b                                         ; $7022: $80
    ld [bc], a                                    ; $7023: $02
    ld b, c                                       ; $7024: $41
    db $eb                                        ; $7025: $eb
    dec hl                                        ; $7026: $2b
    ldh a, [$81]                                  ; $7027: $f0 $81
    ld a, [hl]                                    ; $7029: $7e
    ret                                           ; $702a: $c9


    nop                                           ; $702b: $00
    ld e, c                                       ; $702c: $59
    ld b, b                                       ; $702d: $40
    and c                                         ; $702e: $a1
    ld b, c                                       ; $702f: $41
    ld [$c6ff], a                                 ; $7030: $ea $ff $c6
    nop                                           ; $7033: $00
    inc a                                         ; $7034: $3c
    and c                                         ; $7035: $a1
    ld a, [hl]                                    ; $7036: $7e
    and l                                         ; $7037: $a5
    nop                                           ; $7038: $00
    cp e                                          ; $7039: $bb
    ld b, c                                       ; $703a: $41
    db $ec                                        ; $703b: $ec
    rst $38                                       ; $703c: $ff
    add $00                                       ; $703d: $c6 $00
    ld e, a                                       ; $703f: $5f
    ret nz                                        ; $7040: $c0

    ld b, d                                       ; $7041: $42
    ld b, c                                       ; $7042: $41
    ld [$f920], a                                 ; $7043: $ea $20 $f9
    ld h, d                                       ; $7046: $62
    cp e                                          ; $7047: $bb
    ld h, l                                       ; $7048: $65
    or h                                          ; $7049: $b4
    ld bc, $df80                                  ; $704a: $01 $80 $df
    add c                                         ; $704d: $81
    ret nz                                        ; $704e: $c0

    inc l                                         ; $704f: $2c
    add d                                         ; $7050: $82
    push bc                                       ; $7051: $c5
    or l                                          ; $7052: $b5
    ld b, b                                       ; $7053: $40
    inc b                                         ; $7054: $04
    ld a, a                                       ; $7055: $7f
    jp $802b                                      ; $7056: $c3 $2b $80


    ld l, l                                       ; $7059: $6d
    sbc d                                         ; $705a: $9a
    inc b                                         ; $705b: $04
    nop                                           ; $705c: $00
    ld e, e                                       ; $705d: $5b
    ld b, c                                       ; $705e: $41
    call nz, $c742                                ; $705f: $c4 $42 $c7
    rst $38                                       ; $7062: $ff
    and l                                         ; $7063: $a5
    nop                                           ; $7064: $00
    ld a, [hl]                                    ; $7065: $7e
    add l                                         ; $7066: $85
    scf                                           ; $7067: $37
    inc a                                         ; $7068: $3c
    ret nz                                        ; $7069: $c0

    ld h, b                                       ; $706a: $60
    dec a                                         ; $706b: $3d
    and c                                         ; $706c: $a1
    ld [bc], a                                    ; $706d: $02
    jp $a4bf                                      ; $706e: $c3 $bf $a4


    dec hl                                        ; $7071: $2b
    add d                                         ; $7072: $82
    ld hl, sp+$25                                 ; $7073: $f8 $25
    nop                                           ; $7075: $00
    ld a, [hl-]                                   ; $7076: $3a
    ld l, e                                       ; $7077: $6b
    nop                                           ; $7078: $00
    ld c, [hl]                                    ; $7079: $4e
    ld a, a                                       ; $707a: $7f
    db $e4                                        ; $707b: $e4
    call nz, Call_061_4581                        ; $707c: $c4 $81 $45
    ldh [$fa], a                                  ; $707f: $e0 $fa
    ld b, e                                       ; $7081: $43
    ld bc, $00e5                                  ; $7082: $01 $e5 $00
    or a                                          ; $7085: $b7
    inc h                                         ; $7086: $24
    nop                                           ; $7087: $00
    ld b, a                                       ; $7088: $47
    ld a, a                                       ; $7089: $7f
    db $e3                                        ; $708a: $e3
    ld c, h                                       ; $708b: $4c
    call nz, Call_000_3f85                        ; $708c: $c4 $85 $3f
    ld h, d                                       ; $708f: $62
    ld c, e                                       ; $7090: $4b
    add b                                         ; $7091: $80
    xor b                                         ; $7092: $a8
    nop                                           ; $7093: $00
    ld e, l                                       ; $7094: $5d
    nop                                           ; $7095: $00
    cp $42                                        ; $7096: $fe $42
    rst $38                                       ; $7098: $ff
    ld b, c                                       ; $7099: $41
    inc bc                                        ; $709a: $03
    and h                                         ; $709b: $a4
    ccf                                           ; $709c: $3f
    and d                                         ; $709d: $a2
    ld a, h                                       ; $709e: $7c
    ld b, e                                       ; $709f: $43
    nop                                           ; $70a0: $00
    cp a                                          ; $70a1: $bf
    cp h                                          ; $70a2: $bc
    add e                                         ; $70a3: $83
    ld b, d                                       ; $70a4: $42
    ld h, h                                       ; $70a5: $64
    nop                                           ; $70a6: $00
    ret nz                                        ; $70a7: $c0

    and l                                         ; $70a8: $a5
    or $20                                        ; $70a9: $f6 $20
    ret nz                                        ; $70ab: $c0

    push hl                                       ; $70ac: $e5
    nop                                           ; $70ad: $00
    cp l                                          ; $70ae: $bd
    ld a, h                                       ; $70af: $7c
    add d                                         ; $70b0: $82
    db $fd                                        ; $70b1: $fd
    add c                                         ; $70b2: $81
    ld a, l                                       ; $70b3: $7d
    ld bc, $e680                                  ; $70b4: $01 $80 $e6
    ld [bc], a                                    ; $70b7: $02
    ld a, b                                       ; $70b8: $78
    inc hl                                        ; $70b9: $23
    ld l, l                                       ; $70ba: $6d
    jr nc, jr_061_70c9                            ; $70bb: $30 $0c

    inc [hl]                                      ; $70bd: $34
    or c                                          ; $70be: $b1
    ld l, $a4                                     ; $70bf: $2e $a4
    ret nz                                        ; $70c1: $c0

    db $eb                                        ; $70c2: $eb
    ld [bc], a                                    ; $70c3: $02
    ld [c], a                                     ; $70c4: $e2
    jp nz, Jump_000_00a3                          ; $70c5: $c2 $a3 $00

    nop                                           ; $70c8: $00

jr_061_70c9:
    cp b                                          ; $70c9: $b8
    ld bc, $1e82                                  ; $70ca: $01 $82 $1e
    ld b, h                                       ; $70cd: $44
    ld b, b                                       ; $70ce: $40
    ld [$c1c2], a                                 ; $70cf: $ea $c2 $c1
    jp nz, $5ea1                                  ; $70d2: $c2 $a1 $5e

    ld h, [hl]                                    ; $70d5: $66
    add b                                         ; $70d6: $80
    ld [hl], h                                    ; $70d7: $74
    nop                                           ; $70d8: $00
    ret nz                                        ; $70d9: $c0

    push hl                                       ; $70da: $e5
    inc a                                         ; $70db: $3c
    add e                                         ; $70dc: $83
    ld b, c                                       ; $70dd: $41
    ld b, d                                       ; $70de: $42
    add e                                         ; $70df: $83
    add $c2                                       ; $70e0: $c6 $c2
    and e                                         ; $70e2: $a3
    ld c, c                                       ; $70e3: $49
    sbc d                                         ; $70e4: $9a
    ld b, e                                       ; $70e5: $43
    and $fc                                       ; $70e6: $e6 $fc
    and h                                         ; $70e8: $a4
    nop                                           ; $70e9: $00
    nop                                           ; $70ea: $00
    ld b, e                                       ; $70eb: $43
    push af                                       ; $70ec: $f5
    nop                                           ; $70ed: $00
    push af                                       ; $70ee: $f5
    inc hl                                        ; $70ef: $23
    nop                                           ; $70f0: $00
    ld b, l                                       ; $70f1: $45
    add e                                         ; $70f2: $83
    ld c, e                                       ; $70f3: $4b
    or b                                          ; $70f4: $b0
    dec bc                                        ; $70f5: $0b
    ld a, $e3                                     ; $70f6: $3e $e3
    ret nz                                        ; $70f8: $c0

    add sp, $00                                   ; $70f9: $e8 $00
    cp d                                          ; $70fb: $ba
    inc hl                                        ; $70fc: $23
    ld a, [hl]                                    ; $70fd: $7e
    ld a, [bc]                                    ; $70fe: $0a
    add b                                         ; $70ff: $80
    rla                                           ; $7100: $17
    sbc l                                         ; $7101: $9d
    inc bc                                        ; $7102: $03
    ld l, [hl]                                    ; $7103: $6e
    ld b, d                                       ; $7104: $42
    cp h                                          ; $7105: $bc
    ld hl, $ecc0                                  ; $7106: $21 $c0 $ec
    nop                                           ; $7109: $00
    ld b, e                                       ; $710a: $43
    inc b                                         ; $710b: $04
    dec a                                         ; $710c: $3d
    rst $38                                       ; $710d: $ff
    cp h                                          ; $710e: $bc
    ld b, l                                       ; $710f: $45
    ld l, e                                       ; $7110: $6b
    ret nz                                        ; $7111: $c0

    and a                                         ; $7112: $a7
    pop af                                        ; $7113: $f1
    inc bc                                        ; $7114: $03
    jp z, Jump_000_3034                           ; $7115: $ca $34 $30

    ld c, l                                       ; $7118: $4d
    add b                                         ; $7119: $80
    call nz, $8108                                ; $711a: $c4 $08 $81
    and a                                         ; $711d: $a7
    add d                                         ; $711e: $82
    and c                                         ; $711f: $a1
    add d                                         ; $7120: $82
    ld h, [hl]                                    ; $7121: $66
    dec l                                         ; $7122: $2d
    ld b, e                                       ; $7123: $43
    ld a, [hl+]                                   ; $7124: $2a
    ld l, [hl]                                    ; $7125: $6e
    xor $1c                                       ; $7126: $ee $1c
    ld b, d                                       ; $7128: $42
    ld b, c                                       ; $7129: $41
    db $e4                                        ; $712a: $e4
    inc d                                         ; $712b: $14
    ret nz                                        ; $712c: $c0

    ld [$057e], a                                 ; $712d: $ea $7e $05
    dec l                                         ; $7130: $2d
    ld b, e                                       ; $7131: $43
    dec sp                                        ; $7132: $3b
    dec l                                         ; $7133: $2d
    ld a, [hl]                                    ; $7134: $7e
    ld b, $41                                     ; $7135: $06 $41
    ld [c], a                                     ; $7137: $e2
    call nz, Boot                                 ; $7138: $c4 $00 $01
    dec l                                         ; $713b: $2d
    add d                                         ; $713c: $82
    ld h, l                                       ; $713d: $65
    nop                                           ; $713e: $00
    jp $edc0                                      ; $713f: $c3 $c0 $ed


    add b                                         ; $7142: $80
    set 4, [hl]                                   ; $7143: $cb $e6
    inc bc                                        ; $7145: $03
    ld bc, $01ed                                  ; $7146: $01 $ed $01
    ld b, e                                       ; $7149: $43
    nop                                           ; $714a: $00
    ld [bc], a                                    ; $714b: $02
    and a                                         ; $714c: $a7
    add b                                         ; $714d: $80
    push de                                       ; $714e: $d5
    ld h, h                                       ; $714f: $64
    ldh [rNR32], a                                ; $7150: $e0 $1c
    ld [hl+], a                                   ; $7152: $22
    pop bc                                        ; $7153: $c1
    call z, $e440                                 ; $7154: $cc $40 $e4
    add d                                         ; $7157: $82
    ld h, l                                       ; $7158: $65
    ld b, e                                       ; $7159: $43
    ld hl, sp+$4c                                 ; $715a: $f8 $4c
    inc hl                                        ; $715c: $23
    db $e4                                        ; $715d: $e4
    ret nz                                        ; $715e: $c0

    add l                                         ; $715f: $85
    ld c, e                                       ; $7160: $4b
    ld l, e                                       ; $7161: $6b
    ld c, b                                       ; $7162: $48
    add b                                         ; $7163: $80
    ld b, l                                       ; $7164: $45
    add b                                         ; $7165: $80
    ld c, e                                       ; $7166: $4b
    ld b, c                                       ; $7167: $41
    db $e4                                        ; $7168: $e4
    ld c, b                                       ; $7169: $48
    add b                                         ; $716a: $80
    rst $18                                       ; $716b: $df
    ei                                            ; $716c: $fb
    ld hl, $e2fa                                  ; $716d: $21 $fa $e2
    dec c                                         ; $7170: $0d
    cp h                                          ; $7171: $bc
    ld h, b                                       ; $7172: $60
    dec sp                                        ; $7173: $3b

Call_061_7174:
    add l                                         ; $7174: $85
    ld c, e                                       ; $7175: $4b
    ld [hl], l                                    ; $7176: $75
    and c                                         ; $7177: $a1
    nop                                           ; $7178: $00
    add e                                         ; $7179: $83
    add d                                         ; $717a: $82
    nop                                           ; $717b: $00
    ld [c], a                                     ; $717c: $e2
    add b                                         ; $717d: $80
    rst $18                                       ; $717e: $df
    cp b                                          ; $717f: $b8
    ld [c], a                                     ; $7180: $e2
    cp $84                                        ; $7181: $fe $84
    ld a, a                                       ; $7183: $7f
    and h                                         ; $7184: $a4
    add d                                         ; $7185: $82
    ld [c], a                                     ; $7186: $e2
    push bc                                       ; $7187: $c5
    jp $8000                                      ; $7188: $c3 $00 $80


    db $db                                        ; $718b: $db
    ld a, d                                       ; $718c: $7a
    ld b, [hl]                                    ; $718d: $46
    ld e, e                                       ; $718e: $5b
    ld b, c                                       ; $718f: $41
    db $fd                                        ; $7190: $fd
    and $06                                       ; $7191: $e6 $06
    add e                                         ; $7193: $83
    rst $38                                       ; $7194: $ff
    and c                                         ; $7195: $a1
    nop                                           ; $7196: $00
    cp e                                          ; $7197: $bb
    ld l, b                                       ; $7198: $68
    ld l, e                                       ; $7199: $6b
    nop                                           ; $719a: $00
    db $fc                                        ; $719b: $fc
    db $ed                                        ; $719c: $ed
    cp a                                          ; $719d: $bf
    and b                                         ; $719e: $a0
    ld h, b                                       ; $719f: $60
    db $e3                                        ; $71a0: $e3
    nop                                           ; $71a1: $00
    or [hl]                                       ; $71a2: $b6
    ld b, d                                       ; $71a3: $42
    add h                                         ; $71a4: $84
    inc e                                         ; $71a5: $1c
    ld b, h                                       ; $71a6: $44
    ld hl, sp-$15                                 ; $71a7: $f8 $eb
    ld b, e                                       ; $71a9: $43
    rst $38                                       ; $71aa: $ff
    nop                                           ; $71ab: $00
    ldh [$9b], a                                  ; $71ac: $e0 $9b
    add d                                         ; $71ae: $82
    pop hl                                        ; $71af: $e1
    add e                                         ; $71b0: $83
    or c                                          ; $71b1: $b1
    nop                                           ; $71b2: $00
    xor a                                         ; $71b3: $af
    ld hl, sp-$0c                                 ; $71b4: $f8 $f4
    add e                                         ; $71b6: $83
    ret nz                                        ; $71b7: $c0

    jp Jump_061_6ead                              ; $71b8: $c3 $ad $6e


    adc [hl]                                      ; $71bb: $8e
    nop                                           ; $71bc: $00
    db $fc                                        ; $71bd: $fc
    dec b                                         ; $71be: $05
    ret c                                         ; $71bf: $d8

    ld c, b                                       ; $71c0: $48
    ld [bc], a                                    ; $71c1: $02
    and $05                                       ; $71c2: $e6 $05
    cp h                                          ; $71c4: $bc
    ld [hl], e                                    ; $71c5: $73
    daa                                           ; $71c6: $27
    add [hl]                                      ; $71c7: $86
    rst $00                                       ; $71c8: $c7
    db $f4                                        ; $71c9: $f4
    jp hl                                         ; $71ca: $e9


    ld b, $c0                                     ; $71cb: $06 $c0
    nop                                           ; $71cd: $00
    inc c                                         ; $71ce: $0c
    push af                                       ; $71cf: $f5
    dec a                                         ; $71d0: $3d
    adc d                                         ; $71d1: $8a
    dec hl                                        ; $71d2: $2b
    add hl, hl                                    ; $71d3: $29
    rra                                           ; $71d4: $1f
    add hl, hl                                    ; $71d5: $29
    rst $00                                       ; $71d6: $c7
    add d                                         ; $71d7: $82
    inc de                                        ; $71d8: $13
    adc e                                         ; $71d9: $8b
    or b                                          ; $71da: $b0
    ld h, b                                       ; $71db: $60
    nop                                           ; $71dc: $00
    nop                                           ; $71dd: $00
    nop                                           ; $71de: $00
    ccf                                           ; $71df: $3f
    db $dd                                        ; $71e0: $dd
    sbc $a0                                       ; $71e1: $de $a0
    and b                                         ; $71e3: $a0
    and b                                         ; $71e4: $a0
    call c, $fffa                                 ; $71e5: $dc $fa $ff
    db $f4                                        ; $71e8: $f4
    push af                                       ; $71e9: $f5
    ccf                                           ; $71ea: $3f
    ld [c], a                                     ; $71eb: $e2
    db $e3                                        ; $71ec: $e3
    db $e4                                        ; $71ed: $e4
    rst $18                                       ; $71ee: $df
    ldh [$e1], a                                  ; $71ef: $e0 $e1
    ld a, [$f4ff]                                 ; $71f1: $fa $ff $f4
    push af                                       ; $71f4: $f5
    ccf                                           ; $71f5: $3f
    add sp, -$17                                  ; $71f6: $e8 $e9
    ld [$e6e5], a                                 ; $71f8: $ea $e5 $e6
    rst $20                                       ; $71fb: $e7
    ld a, [$f4ff]                                 ; $71fc: $fa $ff $f4
    push af                                       ; $71ff: $f5
    adc [hl]                                      ; $7200: $8e
    ld e, e                                       ; $7201: $5b
    jp hl                                         ; $7202: $e9


    sub $d7                                       ; $7203: $d6 $d7
    and b                                         ; $7205: $a0
    db $fc                                        ; $7206: $fc
    ld a, [$f131]                                 ; $7207: $fa $31 $f1
    ld e, e                                       ; $720a: $5b
    jp hl                                         ; $720b: $e9


    ret c                                         ; $720c: $d8

    rst $00                                       ; $720d: $c7
    reti                                          ; $720e: $d9


    and b                                         ; $720f: $a0
    and b                                         ; $7210: $a0
    db $fc                                        ; $7211: $fc
    rst $30                                       ; $7212: $f7
    ld sp, $5bf3                                  ; $7213: $31 $f3 $5b
    jp hl                                         ; $7216: $e9


    jp c, Jump_000_3fdb                           ; $7217: $da $db $3f

    sub $d7                                       ; $721a: $d6 $d7
    jp c, $d0db                                   ; $721c: $da $db $d0

    pop de                                        ; $721f: $d1
    db $fc                                        ; $7220: $fc
    rst $28                                       ; $7221: $ef
    add sp, -$1f                                  ; $7222: $e8 $e1
    jr nc, jr_061_7257                            ; $7224: $30 $31

    di                                            ; $7226: $f3
    sbc [hl]                                      ; $7227: $9e
    ret z                                         ; $7228: $c8

    adc a                                         ; $7229: $8f
    ret nz                                        ; $722a: $c0

    ld a, [hl]                                    ; $722b: $7e
    pop hl                                        ; $722c: $e1
    jp nc, $fcd3                                  ; $722d: $d2 $d3 $fc

    rst $28                                       ; $7230: $ef
    ld h, [hl]                                    ; $7231: $66
    pop hl                                        ; $7232: $e1
    ldh a, [$de]                                  ; $7233: $f0 $de
    ld [c], a                                     ; $7235: $e2
    add b                                         ; $7236: $80
    rst $10                                       ; $7237: $d7
    ld d, c                                       ; $7238: $51
    ret nz                                        ; $7239: $c0

    add d                                         ; $723a: $82
    db $e3                                        ; $723b: $e3
    call nc, $a0d5                                ; $723c: $d4 $d5 $a0
    and b                                         ; $723f: $a0
    ret nz                                        ; $7240: $c0

    db $fc                                        ; $7241: $fc
    rst $20                                       ; $7242: $e7
    ldh a, [$e1]                                  ; $7243: $f0 $e1
    ld a, [hl]                                    ; $7245: $7e
    db $e3                                        ; $7246: $e3
    jr nc, @-$3e                                  ; $7247: $30 $c0

    add b                                         ; $7249: $80
    reti                                          ; $724a: $d9


    add d                                         ; $724b: $82
    add sp, -$60                                  ; $724c: $e8 $a0
    sbc a                                         ; $724e: $9f
    rrca                                          ; $724f: $0f
    and d                                         ; $7250: $a2
    sbc l                                         ; $7251: $9d
    sbc l                                         ; $7252: $9d
    sbc a                                         ; $7253: $9f
    ld l, [hl]                                    ; $7254: $6e
    db $e3                                        ; $7255: $e3

jr_061_7256:
    ld a, [hl]                                    ; $7256: $7e

jr_061_7257:
    ld [$dc80], a                                 ; $7257: $ea $80 $dc
    nop                                           ; $725a: $00
    pop hl                                        ; $725b: $e1
    ld a, [hl]                                    ; $725c: $7e
    add d                                         ; $725d: $82
    pop hl                                        ; $725e: $e1
    sbc a                                         ; $725f: $9f
    sbc h                                         ; $7260: $9c
    ld b, [hl]                                    ; $7261: $46
    ld b, [hl]                                    ; $7262: $46
    ld b, [hl]                                    ; $7263: $46
    sbc h                                         ; $7264: $9c
    cp l                                          ; $7265: $bd
    db $e3                                        ; $7266: $e3
    ld b, b                                       ; $7267: $40
    ld a, d                                       ; $7268: $7a
    push hl                                       ; $7269: $e5
    ld a, [hl]                                    ; $726a: $7e
    db $e3                                        ; $726b: $e3
    ld a, d                                       ; $726c: $7a
    rst $08                                       ; $726d: $cf
    db $db                                        ; $726e: $db
    xor c                                         ; $726f: $a9
    jr jr_061_7256                                ; $7270: $18 $e4

    pop bc                                        ; $7272: $c1
    pop hl                                        ; $7273: $e1
    xor [hl]                                      ; $7274: $ae
    cp [hl]                                       ; $7275: $be
    ldh [rP1], a                                  ; $7276: $e0 $00
    cp l                                          ; $7278: $bd
    ldh [$78], a                                  ; $7279: $e0 $78
    ldh [rPCM34], a                               ; $727b: $e0 $77
    ld [c], a                                     ; $727d: $e2
    db $fc                                        ; $727e: $fc
    push bc                                       ; $727f: $c5
    ld a, d                                       ; $7280: $7a
    rst $08                                       ; $7281: $cf
    db $db                                        ; $7282: $db
    xor c                                         ; $7283: $a9
    add d                                         ; $7284: $82
    jp $e282                                      ; $7285: $c3 $82 $e2


    sbc a                                         ; $7288: $9f
    xor a                                         ; $7289: $af
    ld b, l                                       ; $728a: $45
    ld c, b                                       ; $728b: $48
    ld c, b                                       ; $728c: $48
    ld b, l                                       ; $728d: $45
    cp h                                          ; $728e: $bc
    pop hl                                        ; $728f: $e1
    ld [hl], a                                    ; $7290: $77
    pop hl                                        ; $7291: $e1
    sbc a                                         ; $7292: $9f
    ret nc                                        ; $7293: $d0

    ld a, [hl]                                    ; $7294: $7e
    and $7a                                       ; $7295: $e6 $7a
    rst $08                                       ; $7297: $cf
    add b                                         ; $7298: $80
    ret                                           ; $7299: $c9


    add d                                         ; $729a: $82
    jp $c59e                                      ; $729b: $c3 $9e $c5


    ldh [rSCX], a                                 ; $729e: $e0 $43
    ld b, e                                       ; $72a0: $43
    ld c, a                                       ; $72a1: $4f
    ld b, e                                       ; $72a2: $43
    ld d, h                                       ; $72a3: $54
    ld h, b                                       ; $72a4: $60
    ld b, a                                       ; $72a5: $47
    cp a                                          ; $72a6: $bf
    pop hl                                        ; $72a7: $e1
    ld [hl], a                                    ; $72a8: $77
    pop hl                                        ; $72a9: $e1
    sbc h                                         ; $72aa: $9c
    db $f4                                        ; $72ab: $f4
    ret nz                                        ; $72ac: $c0

    ld hl, sp+$7a                                 ; $72ad: $f8 $7a
    push de                                       ; $72af: $d5
    add b                                         ; $72b0: $80
    ret                                           ; $72b1: $c9


    nop                                           ; $72b2: $00
    db $e3                                        ; $72b3: $e3
    sbc [hl]                                      ; $72b4: $9e
    ld c, d                                       ; $72b5: $4a
    ld h, b                                       ; $72b6: $60
    ld d, d                                       ; $72b7: $52
    ld a, [hl+]                                   ; $72b8: $2a
    cp a                                          ; $72b9: $bf
    cpl                                           ; $72ba: $2f
    cpl                                           ; $72bb: $2f
    ld a, [hl+]                                   ; $72bc: $2a
    ld d, d                                       ; $72bd: $52
    ld h, c                                       ; $72be: $61
    ld d, l                                       ; $72bf: $55
    ld a, [hl-]                                   ; $72c0: $3a
    ldh [$af], a                                  ; $72c1: $e0 $af
    add $37                                       ; $72c3: $c6 $37
    ld [c], a                                     ; $72c5: $e2
    and d                                         ; $72c6: $a2
    sbc a                                         ; $72c7: $9f
    ld a, d                                       ; $72c8: $7a
    push de                                       ; $72c9: $d5
    add b                                         ; $72ca: $80
    ret                                           ; $72cb: $c9


    add d                                         ; $72cc: $82
    and e                                         ; $72cd: $a3
    sbc [hl]                                      ; $72ce: $9e
    ld c, a                                       ; $72cf: $4f
    rst $38                                       ; $72d0: $ff
    ld h, c                                       ; $72d1: $61
    dec l                                         ; $72d2: $2d
    jr nz, jr_061_72f5                            ; $72d3: $20 $20

    jr nz, jr_061_7307                            ; $72d5: $20 $30

    ld b, h                                       ; $72d7: $44
    ld d, [hl]                                    ; $72d8: $56
    pop bc                                        ; $72d9: $c1
    ld d, l                                       ; $72da: $55
    jp $7de2                                      ; $72db: $c3 $e2 $7d


    push hl                                       ; $72de: $e5
    ld a, d                                       ; $72df: $7a
    db $d3                                        ; $72e0: $d3
    nop                                           ; $72e1: $00
    xor e                                         ; $72e2: $ab
    add d                                         ; $72e3: $82
    and c                                         ; $72e4: $a1
    sbc [hl]                                      ; $72e5: $9e
    ld d, l                                       ; $72e6: $55
    cp $c0                                        ; $72e7: $fe $c0
    pop hl                                        ; $72e9: $e1
    ld h, $21                                     ; $72ea: $26 $21
    ld [hl], $43                                  ; $72ec: $36 $43
    ld b, l                                       ; $72ee: $45
    ld b, [hl]                                    ; $72ef: $46
    ld b, l                                       ; $72f0: $45
    sub a                                         ; $72f1: $97
    ld b, e                                       ; $72f2: $43
    ld b, c                                       ; $72f3: $41
    ld b, l                                       ; $72f4: $45

jr_061_72f5:
    ld a, l                                       ; $72f5: $7d
    db $e3                                        ; $72f6: $e3
    sbc [hl]                                      ; $72f7: $9e
    ld a, d                                       ; $72f8: $7a
    call nz, $bd00                                ; $72f9: $c4 $00 $bd
    jp nc, $d3ff                                  ; $72fc: $d2 $ff $d3

    and c                                         ; $72ff: $a1
    ld b, h                                       ; $7300: $44
    ld e, [hl]                                    ; $7301: $5e
    ld d, l                                       ; $7302: $55
    dec hl                                        ; $7303: $2b
    dec hl                                        ; $7304: $2b
    scf                                           ; $7305: $37
    rst $38                                       ; $7306: $ff

jr_061_7307:
    jr c, jr_061_733e                             ; $7307: $38 $35

    jr c, jr_061_7348                             ; $7309: $38 $3d

    dec a                                         ; $730b: $3d
    jr c, jr_061_7349                             ; $730c: $38 $3b

    dec [hl]                                      ; $730e: $35
    rla                                           ; $730f: $17
    jr c, jr_061_7349                             ; $7310: $38 $37

    ld b, l                                       ; $7312: $45
    ld [hl], d                                    ; $7313: $72
    pop bc                                        ; $7314: $c1
    sbc [hl]                                      ; $7315: $9e
    db $f4                                        ; $7316: $f4
    and h                                         ; $7317: $a4
    nop                                           ; $7318: $00
    cp l                                          ; $7319: $bd
    nop                                           ; $731a: $00
    ldh [rIE], a                                  ; $731b: $e0 $ff
    ld b, l                                       ; $731d: $45
    ld d, [hl]                                    ; $731e: $56
    ld d, l                                       ; $731f: $55
    ld b, [hl]                                    ; $7320: $46
    xor [hl]                                      ; $7321: $ae
    xor [hl]                                      ; $7322: $ae
    ld b, l                                       ; $7323: $45
    ld [hl], $7d                                  ; $7324: $36 $7d
    dec [hl]                                      ; $7326: $35
    rst $38                                       ; $7327: $ff
    pop hl                                        ; $7328: $e1
    xor h                                         ; $7329: $ac
    dec [hl]                                      ; $732a: $35
    dec [hl]                                      ; $732b: $35
    ld [hl], $45                                  ; $732c: $36 $45
    ei                                            ; $732e: $fb
    ret nz                                        ; $732f: $c0

    db $db                                        ; $7330: $db
    sbc [hl]                                      ; $7331: $9e
    and b                                         ; $7332: $a0
    ld h, [hl]                                    ; $7333: $66
    and c                                         ; $7334: $a1
    sub $d7                                       ; $7335: $d6 $d7
    nop                                           ; $7337: $00
    cp a                                          ; $7338: $bf
    sbc a                                         ; $7339: $9f
    sbc h                                         ; $733a: $9c
    ld e, a                                       ; $733b: $5f
    ld b, l                                       ; $733c: $45
    xor [hl]                                      ; $733d: $ae

jr_061_733e:
    ld b, [hl]                                    ; $733e: $46
    xor a                                         ; $733f: $af
    xor a                                         ; $7340: $af
    cp a                                          ; $7341: $bf
    db $e4                                        ; $7342: $e4
    xor l                                         ; $7343: $ad
    cp d                                          ; $7344: $ba
    ldh [$b1], a                                  ; $7345: $e0 $b1
    add hl, sp                                    ; $7347: $39

jr_061_7348:
    ld a, h                                       ; $7348: $7c

jr_061_7349:
    jp nz, $88f8                                  ; $7349: $c2 $f8 $88

    nop                                           ; $734c: $00
    cp d                                          ; $734d: $ba
    and b                                         ; $734e: $a0
    sbc [hl]                                      ; $734f: $9e
    adc e                                         ; $7350: $8b
    jp nz, $a7af                                  ; $7351: $c2 $af $a7

    ld b, [hl]                                    ; $7354: $46
    ld b, l                                       ; $7355: $45
    scf                                           ; $7356: $37
    ld b, b                                       ; $7357: $40
    pop hl                                        ; $7358: $e1
    ld a, d                                       ; $7359: $7a
    ldh [$3a], a                                  ; $735a: $e0 $3a
    or $a1                                        ; $735c: $f6 $a1
    sbc [hl]                                      ; $735e: $9e
    db $e4                                        ; $735f: $e4
    ld hl, sp-$7a                                 ; $7360: $f8 $86
    nop                                           ; $7362: $00
    cp l                                          ; $7363: $bd
    sbc [hl]                                      ; $7364: $9e
    add hl, bc                                    ; $7365: $09
    call nz, $a03b                                ; $7366: $c4 $3b $a0
    ld b, l                                       ; $7369: $45
    ld b, e                                       ; $736a: $43
    ld [hl], $86                                  ; $736b: $36 $86
    ld a, $e0                                     ; $736d: $3e $e0
    inc a                                         ; $736f: $3c
    ld b, h                                       ; $7370: $44
    ld [hl], c                                    ; $7371: $71
    and b                                         ; $7372: $a0
    ld a, [hl]                                    ; $7373: $7e
    rst $00                                       ; $7374: $c7
    nop                                           ; $7375: $00
    cp h                                          ; $7376: $bc
    add b                                         ; $7377: $80
    and e                                         ; $7378: $a3
    ld b, [hl]                                    ; $7379: $46
    rst $38                                       ; $737a: $ff
    add e                                         ; $737b: $83
    adc c                                         ; $737c: $89
    adc b                                         ; $737d: $88
    adc b                                         ; $737e: $88
    adc b                                         ; $737f: $88
    adc c                                         ; $7380: $89
    add e                                         ; $7381: $83
    ld b, h                                       ; $7382: $44
    dec d                                         ; $7383: $15
    inc a                                         ; $7384: $3c
    ld a, $e0                                     ; $7385: $3e $e0
    ld b, d                                       ; $7387: $42
    ld a, [$a1a1]                                 ; $7388: $fa $a1 $a1
    ld l, d                                       ; $738b: $6a
    add b                                         ; $738c: $80
    ldh [$61], a                                  ; $738d: $e0 $61
    halt                                          ; $738f: $76
    add d                                         ; $7390: $82
    ld a, [$b800]                                 ; $7391: $fa $00 $b8
    sbc [hl]                                      ; $7394: $9e
    jp z, Jump_061_46e0                           ; $7395: $ca $e0 $46

    ld b, [hl]                                    ; $7398: $46
    add e                                         ; $7399: $83
    add [hl]                                      ; $739a: $86
    ld [bc], a                                    ; $739b: $02
    ccf                                           ; $739c: $3f
    rlca                                          ; $739d: $07
    rlca                                          ; $739e: $07
    rlca                                          ; $739f: $07
    ld [bc], a                                    ; $73a0: $02
    adc e                                         ; $73a1: $8b
    ld b, d                                       ; $73a2: $42
    cp d                                          ; $73a3: $ba
    pop bc                                        ; $73a4: $c1
    rst $38                                       ; $73a5: $ff
    ret nz                                        ; $73a6: $c0

    pop af                                        ; $73a7: $f1
    xor [hl]                                      ; $73a8: $ae
    ld a, d                                       ; $73a9: $7a
    and d                                         ; $73aa: $a2
    ld e, [hl]                                    ; $73ab: $5e
    ld h, l                                       ; $73ac: $65
    nop                                           ; $73ad: $00
    cp c                                          ; $73ae: $b9
    sbc [hl]                                      ; $73af: $9e
    rlca                                          ; $73b0: $07
    ld [bc], a                                    ; $73b1: $02
    add a                                         ; $73b2: $87
    rst $38                                       ; $73b3: $ff
    adc b                                         ; $73b4: $88
    adc b                                         ; $73b5: $88
    add a                                         ; $73b6: $87
    ld [bc], a                                    ; $73b7: $02
    rrca                                          ; $73b8: $0f
    sbc b                                         ; $73b9: $98
    nop                                           ; $73ba: $00
    ld bc, $0857                                  ; $73bb: $01 $57 $08
    add b                                         ; $73be: $80
    ld b, b                                       ; $73bf: $40
    ld a, d                                       ; $73c0: $7a
    pop bc                                        ; $73c1: $c1
    ld a, $78                                     ; $73c2: $3e $78
    and d                                         ; $73c4: $a2
    sbc [hl]                                      ; $73c5: $9e
    halt                                          ; $73c6: $76
    ld h, l                                       ; $73c7: $65
    ldh a, [$37]                                  ; $73c8: $f0 $37
    adc c                                         ; $73ca: $89
    nop                                           ; $73cb: $00
    or b                                          ; $73cc: $b0
    adc b                                         ; $73cd: $88
    ldh [$85], a                                  ; $73ce: $e0 $85
    ldh [rIF], a                                  ; $73d0: $e0 $0f
    sbc b                                         ; $73d2: $98
    sub a                                         ; $73d3: $97
    sbc b                                         ; $73d4: $98
    rst $38                                       ; $73d5: $ff
    rrca                                          ; $73d6: $0f
    ld [bc], a                                    ; $73d7: $02
    adc l                                         ; $73d8: $8d
    add hl, sp                                    ; $73d9: $39
    dec [hl]                                      ; $73da: $35
    dec [hl]                                      ; $73db: $35
    ld l, h                                       ; $73dc: $6c
    ld [hl], d                                    ; $73dd: $72
    call Call_061_6e71                            ; $73de: $cd $71 $6e
    pop hl                                        ; $73e1: $e1
    ld b, [hl]                                    ; $73e2: $46
    sbc [hl]                                      ; $73e3: $9e
    halt                                          ; $73e4: $76
    ld h, [hl]                                    ; $73e5: $66
    nop                                           ; $73e6: $00
    cp d                                          ; $73e7: $ba
    and c                                         ; $73e8: $a1
    ld a, e                                       ; $73e9: $7b
    rst $38                                       ; $73ea: $ff
    ld a, h                                       ; $73eb: $7c
    ld [bc], a                                    ; $73ec: $02
    rrca                                          ; $73ed: $0f
    nop                                           ; $73ee: $00
    ld bc, $9a98                                  ; $73ef: $01 $98 $9a
    sub a                                         ; $73f2: $97
    rst $38                                       ; $73f3: $ff
    sbc b                                         ; $73f4: $98
    ld [$4580], sp                                ; $73f5: $08 $80 $45
    ld a, [hl-]                                   ; $73f8: $3a
    dec [hl]                                      ; $73f9: $35
    dec [hl]                                      ; $73fa: $35
    ld [hl], e                                    ; $73fb: $73
    adc a                                         ; $73fc: $8f
    ld l, [hl]                                    ; $73fd: $6e
    add hl, sp                                    ; $73fe: $39
    add l                                         ; $73ff: $85
    adc e                                         ; $7400: $8b
    ld l, $80                                     ; $7401: $2e $80
    ld a, [hl]                                    ; $7403: $7e
    call nz, $be00                                ; $7404: $c4 $00 $be
    ld b, [hl]                                    ; $7407: $46
    db $eb                                        ; $7408: $eb
    ld b, [hl]                                    ; $7409: $46
    ld a, a                                       ; $740a: $7f
    ld b, e                                       ; $740b: $43
    ldh [$97], a                                  ; $740c: $e0 $97
    add c                                         ; $740e: $81
    push hl                                       ; $740f: $e5
    dec [hl]                                      ; $7410: $35
    ld l, d                                       ; $7411: $6a
    dec [hl]                                      ; $7412: $35
    add a                                         ; $7413: $87
    ld b, d                                       ; $7414: $42
    ld b, [hl]                                    ; $7415: $46
    add b                                         ; $7416: $80
    or a                                          ; $7417: $b7
    add b                                         ; $7418: $80
    db $fc                                        ; $7419: $fc
    add h                                         ; $741a: $84
    nop                                           ; $741b: $00
    cp [hl]                                       ; $741c: $be
    add e                                         ; $741d: $83
    ld h, b                                       ; $741e: $60
    add c                                         ; $741f: $81
    ld l, a                                       ; $7420: $6f
    ld [$9b98], sp                                ; $7421: $08 $98 $9b
    sbc b                                         ; $7424: $98
    add c                                         ; $7425: $81
    ldh [rDMA], a                                 ; $7426: $e0 $46

Jump_061_7428:
    ld a, $c0                                     ; $7428: $3e $c0
    pop hl                                        ; $742a: $e1
    inc bc                                        ; $742b: $03
    inc a                                         ; $742c: $3c
    ld b, h                                       ; $742d: $44
    ret nz                                        ; $742e: $c0

    ldh [$fc], a                                  ; $742f: $e0 $fc
    add h                                         ; $7431: $84
    db $f4                                        ; $7432: $f4
    dec l                                         ; $7433: $2d
    nop                                           ; $7434: $00
    xor a                                         ; $7435: $af
    ld b, d                                       ; $7436: $42
    ld h, c                                       ; $7437: $61
    ret nz                                        ; $7438: $c0

    ldh [$38], a                                  ; $7439: $e0 $38
    jp nz, Jump_061_41c2                          ; $743b: $c2 $c2 $41

    pop hl                                        ; $743e: $e1
    add b                                         ; $743f: $80
    ldh [$39], a                                  ; $7440: $e0 $39
    ld b, [hl]                                    ; $7442: $46
    add d                                         ; $7443: $82
    rst $38                                       ; $7444: $ff
    pop bc                                        ; $7445: $c1
    ld a, [hl]                                    ; $7446: $7e
    rst $00                                       ; $7447: $c7
    sbc h                                         ; $7448: $9c
    nop                                           ; $7449: $00
    cp c                                          ; $744a: $b9
    add b                                         ; $744b: $80
    and b                                         ; $744c: $a0
    add e                                         ; $744d: $83
    add h                                         ; $744e: $84
    ld [$c6c2], sp                                ; $744f: $08 $c2 $c6
    ld b, b                                       ; $7452: $40

jr_061_7453:
    pop hl                                        ; $7453: $e1
    ld a, $8d                                     ; $7454: $3e $8d
    ld b, [hl]                                    ; $7456: $46
    rst $38                                       ; $7457: $ff
    jp nz, $a146                                  ; $7458: $c2 $46 $a1

    db $f4                                        ; $745b: $f4
    cpl                                           ; $745c: $2f
    nop                                           ; $745d: $00
    ld c, a                                       ; $745e: $4f
    ld b, b                                       ; $745f: $40
    and b                                         ; $7460: $a0
    adc d                                         ; $7461: $8a
    add b                                         ; $7462: $80
    nop                                           ; $7463: $00
    pop hl                                        ; $7464: $e1
    ld b, c                                       ; $7465: $41
    push hl                                       ; $7466: $e5
    nop                                           ; $7467: $00
    ldh [$3f], a                                  ; $7468: $e0 $3f
    and b                                         ; $746a: $a0
    rst $38                                       ; $746b: $ff
    pop bc                                        ; $746c: $c1
    ld a, [hl]                                    ; $746d: $7e
    add $00                                       ; $746e: $c6 $00
    cp l                                          ; $7470: $bd
    add c                                         ; $7471: $81
    ld bc, $8008                                  ; $7472: $01 $08 $80
    ret nz                                        ; $7475: $c0

    add d                                         ; $7476: $82
    call nz, $c1c0                                ; $7477: $c4 $c0 $c1
    rst $38                                       ; $747a: $ff
    add $7e                                       ; $747b: $c6 $7e
    and e                                         ; $747d: $a3
    nop                                           ; $747e: $00
    ld e, e                                       ; $747f: $5b
    ld b, d                                       ; $7480: $42
    ld b, b                                       ; $7481: $40
    adc h                                         ; $7482: $8c
    ld bc, $41e1                                  ; $7483: $01 $e1 $41
    and $6c                                       ; $7486: $e6 $6c
    ld l, l                                       ; $7488: $6d
    ccf                                           ; $7489: $3f
    and b                                         ; $748a: $a0
    cp a                                          ; $748b: $bf
    push bc                                       ; $748c: $c5
    nop                                           ; $748d: $00
    cp a                                          ; $748e: $bf
    push de                                       ; $748f: $d5
    jr c, jr_061_7453                             ; $7490: $38 $c1

    add b                                         ; $7492: $80
    add c                                         ; $7493: $81
    jp nz, $c482                                  ; $7494: $c2 $82 $c4

    ld l, h                                       ; $7497: $6c
    ld l, a                                       ; $7498: $6f
    ld l, [hl]                                    ; $7499: $6e
    add b                                         ; $749a: $80
    db $e3                                        ; $749b: $e3
    ld a, $a1                                     ; $749c: $3e $a1
    ld h, h                                       ; $749e: $64
    halt                                          ; $749f: $76
    ld h, $00                                     ; $74a0: $26 $00
    ld e, b                                       ; $74a2: $58
    and c                                         ; $74a3: $a1
    ld b, c                                       ; $74a4: $41
    jp nz, $e601                                  ; $74a5: $c2 $01 $e6

    ld [hl], e                                    ; $74a8: $73
    ld l, [hl]                                    ; $74a9: $6e
    cp b                                          ; $74aa: $b8
    ld h, b                                       ; $74ab: $60
    dec h                                         ; $74ac: $25
    ld b, b                                       ; $74ad: $40
    rst $38                                       ; $74ae: $ff
    and d                                         ; $74af: $a2
    sbc [hl]                                      ; $74b0: $9e
    db $f4                                        ; $74b1: $f4
    ld b, $00                                     ; $74b2: $06 $00
    ld e, h                                       ; $74b4: $5c
    adc h                                         ; $74b5: $8c
    inc bc                                        ; $74b6: $03
    and b                                         ; $74b7: $a0
    ld [bc], a                                    ; $74b8: $02
    call nz, Call_061_420c                        ; $74b9: $c4 $0c $42
    pop hl                                        ; $74bc: $e1
    cp [hl]                                       ; $74bd: $be
    ld h, b                                       ; $74be: $60
    ld a, c                                       ; $74bf: $79
    adc l                                         ; $74c0: $8d
    nop                                           ; $74c1: $00

Jump_061_74c2:
    add $00                                       ; $74c2: $c6 $00
    cp l                                          ; $74c4: $bd
    nop                                           ; $74c5: $00
    add c                                         ; $74c6: $81
    cp a                                          ; $74c7: $bf
    pop bc                                        ; $74c8: $c1
    xor $43                                       ; $74c9: $ee $43
    and c                                         ; $74cb: $a1
    ld l, h                                       ; $74cc: $6c
    ld [hl], d                                    ; $74cd: $72
    ld [hl], b                                    ; $74ce: $70
    add c                                         ; $74cf: $81
    pop hl                                        ; $74d0: $e1
    ld h, d                                       ; $74d1: $62
    ld h, e                                       ; $74d2: $63
    adc a                                         ; $74d3: $8f
    call nc, $e401                                ; $74d4: $d4 $01 $e4
    nop                                           ; $74d7: $00
    cp a                                          ; $74d8: $bf
    push de                                       ; $74d9: $d5
    ld bc, $8c21                                  ; $74da: $01 $21 $8c
    ld b, e                                       ; $74dd: $43
    add b                                         ; $74de: $80
    ld [bc], a                                    ; $74df: $02
    adc l                                         ; $74e0: $8d
    cp l                                          ; $74e1: $bd
    ld b, d                                       ; $74e2: $42
    ld b, e                                       ; $74e3: $43
    db $e3                                        ; $74e4: $e3
    dec [hl]                                      ; $74e5: $35
    ld h, d                                       ; $74e6: $62
    ld h, a                                       ; $74e7: $67
    ld [hl], $74                                  ; $74e8: $36 $74
    ld [hl+], a                                   ; $74ea: $22
    and c                                         ; $74eb: $a1
    ld hl, sp-$04                                 ; $74ec: $f8 $fc
    ld b, b                                       ; $74ee: $40
    nop                                           ; $74ef: $00
    cp a                                          ; $74f0: $bf
    ret nz                                        ; $74f1: $c0

    ld [bc], a                                    ; $74f2: $02
    adc [hl]                                      ; $74f3: $8e
    ld a, e                                       ; $74f4: $7b
    ld a, e                                       ; $74f5: $7b
    adc a                                         ; $74f6: $8f
    ld b, [hl]                                    ; $74f7: $46
    rla                                           ; $74f8: $17
    ld b, h                                       ; $74f9: $44
    inc a                                         ; $74fa: $3c
    ld l, d                                       ; $74fb: $6a
    cp h                                          ; $74fc: $bc
    ld b, d                                       ; $74fd: $42
    ld l, c                                       ; $74fe: $69
    ccf                                           ; $74ff: $3f
    and b                                         ; $7500: $a0
    ld a, h                                       ; $7501: $7c
    ld b, e                                       ; $7502: $43
    nop                                           ; $7503: $00
    cp a                                          ; $7504: $bf
    ld [hl], c                                    ; $7505: $71
    and b                                         ; $7506: $a0
    sbc b                                         ; $7507: $98
    ld b, b                                       ; $7508: $40
    ld a, $62                                     ; $7509: $3e $62
    ld b, d                                       ; $750b: $42
    ld h, c                                       ; $750c: $61
    ld a, [hl-]                                   ; $750d: $3a
    ld [hl], l                                    ; $750e: $75
    ld h, [hl]                                    ; $750f: $66
    ld b, d                                       ; $7510: $42
    pop hl                                        ; $7511: $e1
    add c                                         ; $7512: $81
    halt                                          ; $7513: $76
    rst $38                                       ; $7514: $ff
    ld b, c                                       ; $7515: $41
    ld a, h                                       ; $7516: $7c
    ld b, d                                       ; $7517: $42
    nop                                           ; $7518: $00
    cp a                                          ; $7519: $bf
    cp $c2                                        ; $751a: $fe $c2
    ccf                                           ; $751c: $3f
    ld [bc], a                                    ; $751d: $02
    ld a, l                                       ; $751e: $7d
    nop                                           ; $751f: $00
    ld a, $3f                                     ; $7520: $3e $3f
    dec [hl]                                      ; $7522: $35
    ld [hl], a                                    ; $7523: $77
    ld h, h                                       ; $7524: $64
    ld h, h                                       ; $7525: $64
    ld h, h                                       ; $7526: $64
    ld a, b                                       ; $7527: $78
    ret nz                                        ; $7528: $c0

    ld h, c                                       ; $7529: $61
    ld sp, hl                                     ; $752a: $f9
    inc b                                         ; $752b: $04
    nop                                           ; $752c: $00
    nop                                           ; $752d: $00
    cp h                                          ; $752e: $bc
    ld a, h                                       ; $752f: $7c
    ld b, c                                       ; $7530: $41
    cp $c0                                        ; $7531: $fe $c0
    cp l                                          ; $7533: $bd
    ld b, d                                       ; $7534: $42
    ld b, $20                                     ; $7535: $06 $20
    ld b, c                                       ; $7537: $41
    and d                                         ; $7538: $a2
    ccf                                           ; $7539: $3f
    ld b, h                                       ; $753a: $44
    cp l                                          ; $753b: $bd
    ld [hl+], a                                   ; $753c: $22
    nop                                           ; $753d: $00
    nop                                           ; $753e: $00
    cp h                                          ; $753f: $bc
    pop hl                                        ; $7540: $e1
    nop                                           ; $7541: $00
    sbc h                                         ; $7542: $9c
    inc bc                                        ; $7543: $03
    db $fc                                        ; $7544: $fc
    and b                                         ; $7545: $a0
    ld b, l                                       ; $7546: $45
    ld bc, $82c1                                  ; $7547: $01 $c1 $82
    cp a                                          ; $754a: $bf

Jump_061_754b:
    ld hl, $6500                                  ; $754b: $21 $00 $65
    nop                                           ; $754e: $00
    nop                                           ; $754f: $00
    cp e                                          ; $7550: $bb
    ccf                                           ; $7551: $3f
    pop bc                                        ; $7552: $c1

jr_061_7553:
    cp $c3                                        ; $7553: $fe $c3
    ccf                                           ; $7555: $3f
    ld [c], a                                     ; $7556: $e2
    ld b, c                                       ; $7557: $41
    ld b, b                                       ; $7558: $40
    ld a, h                                       ; $7559: $7c
    ld [hl+], a                                   ; $755a: $22
    add e                                         ; $755b: $83
    jp nz, $a1c2                                  ; $755c: $c2 $c2 $a1

    add b                                         ; $755f: $80
    ld a, [hl]                                    ; $7560: $7e
    inc hl                                        ; $7561: $23
    nop                                           ; $7562: $00
    or a                                          ; $7563: $b7
    ccf                                           ; $7564: $3f
    jp nz, $2318                                  ; $7565: $c2 $18 $23

jr_061_7568:
    db $fc                                        ; $7568: $fc
    jr nz, jr_061_7568                            ; $7569: $20 $fd

    ld hl, $20bd                                  ; $756b: $21 $bd $20
    dec a                                         ; $756e: $3d
    nop                                           ; $756f: $00
    nop                                           ; $7570: $00
    jr nz, jr_061_75b4                            ; $7571: $20 $41

    db $e4                                        ; $7573: $e4
    nop                                           ; $7574: $00
    ld e, l                                       ; $7575: $5d
    cp l                                          ; $7576: $bd
    and e                                         ; $7577: $a3
    jr jr_061_759b                                ; $7578: $18 $21

    cp h                                          ; $757a: $bc
    ld hl, $0343                                  ; $757b: $21 $43 $03
    ld a, $06                                     ; $757e: $3e $06
    nop                                           ; $7580: $00
    nop                                           ; $7581: $00
    ld b, [hl]                                    ; $7582: $46
    add b                                         ; $7583: $80
    rla                                           ; $7584: $17
    ld a, [hl]                                    ; $7585: $7e
    ld [c], a                                     ; $7586: $e2
    inc e                                         ; $7587: $1c
    jp nz, $e440                                  ; $7588: $c2 $40 $e4

    cp [hl]                                       ; $758b: $be
    push hl                                       ; $758c: $e5
    or l                                          ; $758d: $b5
    ld [c], a                                     ; $758e: $e2
    nop                                           ; $758f: $00
    ld b, e                                       ; $7590: $43
    ldh a, [$80]                                  ; $7591: $f0 $80
    add hl, de                                    ; $7593: $19
    cp l                                          ; $7594: $bd
    jp $c480                                      ; $7595: $c3 $80 $c4


    ld a, $20                                     ; $7598: $3e $20
    ld b, l                                       ; $759a: $45

jr_061_759b:
    ld b, e                                       ; $759b: $43
    ld b, c                                       ; $759c: $41
    ld b, e                                       ; $759d: $43
    nop                                           ; $759e: $00
    db $fd                                        ; $759f: $fd
    ldh [$84], a                                  ; $75a0: $e0 $84
    and d                                         ; $75a2: $a2
    dec a                                         ; $75a3: $3d

jr_061_75a4:
    ld bc, $a182                                  ; $75a4: $01 $82 $a1
    add b                                         ; $75a7: $80
    jr jr_061_75a4                                ; $75a8: $18 $fa

    ld [hl+], a                                   ; $75aa: $22
    ld a, [hl]                                    ; $75ab: $7e
    and e                                         ; $75ac: $a3
    ld b, c                                       ; $75ad: $41
    ld [c], a                                     ; $75ae: $e2
    rra                                           ; $75af: $1f
    ld b, l                                       ; $75b0: $45
    ld [hl], $3b                                  ; $75b1: $36 $3b
    dec [hl]                                      ; $75b3: $35

jr_061_75b4:
    dec sp                                        ; $75b4: $3b
    db $fd                                        ; $75b5: $fd
    ldh [$c0], a                                  ; $75b6: $e0 $c0
    call nz, $4300                                ; $75b8: $c4 $00 $43
    ld [hl], b                                    ; $75bb: $70
    add b                                         ; $75bc: $80
    ld d, $7a                                     ; $75bd: $16 $7a
    inc b                                         ; $75bf: $04
    ld a, [hl]                                    ; $75c0: $7e
    ld [bc], a                                    ; $75c1: $02
    add c                                         ; $75c2: $81
    jp Jump_000_3c44                              ; $75c3: $c3 $44 $3c


    and h                                         ; $75c6: $a4
    jp nz, Jump_000_03a0                          ; $75c7: $c2 $a0 $03

    ld h, h                                       ; $75ca: $64
    and l                                         ; $75cb: $a5
    ld b, d                                       ; $75cc: $42
    and c                                         ; $75cd: $a1
    add d                                         ; $75ce: $82
    ld h, [hl]                                    ; $75cf: $66
    sub d                                         ; $75d0: $92
    jr nz, jr_061_7553                            ; $75d1: $20 $80

    inc de                                        ; $75d3: $13
    ld a, d                                       ; $75d4: $7a
    ld b, $7e                                     ; $75d5: $06 $7e
    inc b                                         ; $75d7: $04
    rst $38                                       ; $75d8: $ff
    ld b, [hl]                                    ; $75d9: $46
    ld b, [hl]                                    ; $75da: $46
    ld b, d                                       ; $75db: $42
    dec [hl]                                      ; $75dc: $35
    ld l, c                                       ; $75dd: $69
    and e                                         ; $75de: $a3
    dec [hl]                                      ; $75df: $35
    dec [hl]                                      ; $75e0: $35
    ld bc, $01a3                                  ; $75e1: $01 $a3 $01
    ld b, c                                       ; $75e4: $41
    ld [hl], c                                    ; $75e5: $71
    ld bc, $2500                                  ; $75e6: $01 $00 $25
    add b                                         ; $75e9: $80
    jp c, $a380                                   ; $75ea: $da $80 $a3

    cp l                                          ; $75ed: $bd
    ld h, b                                       ; $75ee: $60
    ccf                                           ; $75ef: $3f
    nop                                           ; $75f0: $00
    inc b                                         ; $75f1: $04
    ret nz                                        ; $75f2: $c0

jr_061_75f3:
    ldh [$81], a                                  ; $75f3: $e0 $81
    ld b, e                                       ; $75f5: $43
    ld b, d                                       ; $75f6: $42
    cp a                                          ; $75f7: $bf
    jp nz, $c100                                  ; $75f8: $c2 $00 $c1

    ld e, [hl]                                    ; $75fb: $5e
    and c                                         ; $75fc: $a1
    add b                                         ; $75fd: $80
    jp c, Jump_061_457e                           ; $75fe: $da $7e $45

    ld e, [hl]                                    ; $7601: $5e
    ld b, d                                       ; $7602: $42
    and c                                         ; $7603: $a1
    ld b, h                                       ; $7604: $44
    inc a                                         ; $7605: $3c
    ld l, e                                       ; $7606: $6b
    ld [hl], c                                    ; $7607: $71
    rst $38                                       ; $7608: $ff
    ldh [$6d], a                                  ; $7609: $e0 $6d
    ld b, b                                       ; $760b: $40
    db $e4                                        ; $760c: $e4
    ld [$c300], sp                                ; $760d: $08 $00 $c3
    add b                                         ; $7610: $80
    db $dd                                        ; $7611: $dd
    nop                                           ; $7612: $00
    rst $20                                       ; $7613: $e7
    xor [hl]                                      ; $7614: $ae
    ret nz                                        ; $7615: $c0

    rst $00                                       ; $7616: $c7
    ld b, c                                       ; $7617: $41
    db $e4                                        ; $7618: $e4
    add d                                         ; $7619: $82
    ld h, c                                       ; $761a: $61
    add b                                         ; $761b: $80
    db $dd                                        ; $761c: $dd
    ld c, $1c                                     ; $761d: $0e $1c
    and e                                         ; $761f: $a3
    sbc a                                         ; $7620: $9f
    sbc l                                         ; $7621: $9d
    sbc h                                         ; $7622: $9c
    ld a, a                                       ; $7623: $7f
    pop bc                                        ; $7624: $c1
    ld b, b                                       ; $7625: $40
    push bc                                       ; $7626: $c5
    or l                                          ; $7627: $b5
    and b                                         ; $7628: $a0
    add e                                         ; $7629: $83
    add d                                         ; $762a: $82
    ldh [$e0], a                                  ; $762b: $e0 $e0
    ld h, h                                       ; $762d: $64
    add b                                         ; $762e: $80
    reti                                          ; $762f: $d9


    ld a, [hl]                                    ; $7630: $7e
    ld h, c                                       ; $7631: $61
    db $fc                                        ; $7632: $fc
    jr nz, jr_061_75f3                            ; $7633: $20 $be

    xor h                                         ; $7635: $ac
    sbc h                                         ; $7636: $9c
    sbc l                                         ; $7637: $9d
    sbc a                                         ; $7638: $9f
    nop                                           ; $7639: $00
    add sp, $61                                   ; $763a: $e8 $61
    rra                                           ; $763c: $1f
    and e                                         ; $763d: $a3
    add b                                         ; $763e: $80
    jp c, Jump_061_44fc                           ; $763f: $da $fc $44

    ld a, l                                       ; $7642: $7d
    pop hl                                        ; $7643: $e1
    rst $38                                       ; $7644: $ff
    add sp, $06                                   ; $7645: $e8 $06
    add c                                         ; $7647: $81
    add h                                         ; $7648: $84
    ld h, b                                       ; $7649: $60
    nop                                           ; $764a: $00
    ld h, b                                       ; $764b: $60
    add e                                         ; $764c: $83
    nop                                           ; $764d: $00
    cp b                                          ; $764e: $b8
    ld a, [hl]                                    ; $764f: $7e
    ld hl, $e57e                                  ; $7650: $21 $7e $e5
    db $fc                                        ; $7653: $fc
    db $ed                                        ; $7654: $ed
    and $40                                       ; $7655: $e6 $40
    ld h, b                                       ; $7657: $60
    add d                                         ; $7658: $82
    nop                                           ; $7659: $00
    cp c                                          ; $765a: $b9
    nop                                           ; $765b: $00
    and d                                         ; $765c: $a2
    inc bc                                        ; $765d: $03
    jr @-$7b                                      ; $765e: $18 $83

    db $fc                                        ; $7660: $fc
    db $ed                                        ; $7661: $ed
    ld hl, $0063                                  ; $7662: $21 $63 $00
    cp e                                          ; $7665: $bb
    and d                                         ; $7666: $a2
    ld h, e                                       ; $7667: $63
    ld a, d                                       ; $7668: $7a
    ld b, c                                       ; $7669: $41
    db $fc                                        ; $766a: $fc
    rst $28                                       ; $766b: $ef
    nop                                           ; $766c: $00
    jp Jump_000_00b0                              ; $766d: $c3 $b0 $00


    or h                                          ; $7670: $b4
    db $fc                                        ; $7671: $fc
    db $f4                                        ; $7672: $f4
    jp Jump_000_00af                              ; $7673: $c3 $af $00


    or d                                          ; $7676: $b2
    sbc [hl]                                      ; $7677: $9e
    inc hl                                        ; $7678: $23
    db $fc                                        ; $7679: $fc
    db $e3                                        ; $767a: $e3
    db $f4                                        ; $767b: $f4
    jp hl                                         ; $767c: $e9


    nop                                           ; $767d: $00
    call nz, Call_061_4381                        ; $767e: $c4 $81 $43
    adc h                                         ; $7681: $8c
    nop                                           ; $7682: $00
    or d                                          ; $7683: $b2
    inc e                                         ; $7684: $1c
    call nz, $28f0                                ; $7685: $c4 $f0 $28
    ldh a, [$e6]                                  ; $7688: $f0 $e6
    ld b, e                                       ; $768a: $43
    db $ed                                        ; $768b: $ed
    add b                                         ; $768c: $80
    ld l, [hl]                                    ; $768d: $6e
    nop                                           ; $768e: $00
    ld a, d                                       ; $768f: $7a
    inc bc                                        ; $7690: $03
    db $f4                                        ; $7691: $f4
    di                                            ; $7692: $f3
    ld a, [$00f3]                                 ; $7693: $fa $f3 $00
    nop                                           ; $7696: $00
    nop                                           ; $7697: $00
    pop bc                                        ; $7698: $c1
    nop                                           ; $7699: $00
    rst $38                                       ; $769a: $ff
    rst $38                                       ; $769b: $ff
    rst $38                                       ; $769c: $ff
    rst $38                                       ; $769d: $ff
    rst $38                                       ; $769e: $ff
    rst $38                                       ; $769f: $ff
    rst $38                                       ; $76a0: $ff
    rst $38                                       ; $76a1: $ff
    rst $38                                       ; $76a2: $ff
    rst $38                                       ; $76a3: $ff
    nop                                           ; $76a4: $00
    nop                                           ; $76a5: $00
    ld bc, $fe80                                  ; $76a6: $01 $80 $fe
    ldh [rIE], a                                  ; $76a9: $e0 $ff
    rst $38                                       ; $76ab: $ff
    rst $38                                       ; $76ac: $ff
    rst $38                                       ; $76ad: $ff
    rst $38                                       ; $76ae: $ff
    add sp, $00                                   ; $76af: $e8 $00
    nop                                           ; $76b1: $00
    nop                                           ; $76b2: $00
    ld [bc], a                                    ; $76b3: $02
    nop                                           ; $76b4: $00
    rla                                           ; $76b5: $17
    dec bc                                        ; $76b6: $0b
    ld [bc], a                                    ; $76b7: $02
    ld bc, $0d20                                  ; $76b8: $01 $20 $0d
    ld [bc], a                                    ; $76bb: $02
    ld [bc], a                                    ; $76bc: $02
    dec e                                         ; $76bd: $1d
    ld c, $02                                     ; $76be: $0e $02
    inc bc                                        ; $76c0: $03
    inc hl                                        ; $76c1: $23
    rrca                                          ; $76c2: $0f
    ld [bc], a                                    ; $76c3: $02
    inc b                                         ; $76c4: $04
    dec h                                         ; $76c5: $25
    ld de, $0502                                  ; $76c6: $11 $02 $05
    rla                                           ; $76c9: $17
    ld [de], a                                    ; $76ca: $12
    ld [bc], a                                    ; $76cb: $02
    ld b, $18                                     ; $76cc: $06 $18
    ld [de], a                                    ; $76ce: $12
    ld [bc], a                                    ; $76cf: $02
    rlca                                          ; $76d0: $07
    jr nz, jr_061_76e5                            ; $76d1: $20 $12

    ld [bc], a                                    ; $76d3: $02
    ld [$1315], sp                                ; $76d4: $08 $15 $13
    ld [bc], a                                    ; $76d7: $02
    add hl, bc                                    ; $76d8: $09
    add hl, de                                    ; $76d9: $19
    inc de                                        ; $76da: $13
    ld [bc], a                                    ; $76db: $02
    ld a, [bc]                                    ; $76dc: $0a
    rla                                           ; $76dd: $17
    dec d                                         ; $76de: $15
    ld [bc], a                                    ; $76df: $02
    dec bc                                        ; $76e0: $0b
    ld [hl+], a                                   ; $76e1: $22
    dec d                                         ; $76e2: $15
    ld [bc], a                                    ; $76e3: $02
    inc c                                         ; $76e4: $0c

jr_061_76e5:
    ld h, $15                                     ; $76e5: $26 $15
    ld [bc], a                                    ; $76e7: $02
    dec c                                         ; $76e8: $0d
    jr z, @+$19                                   ; $76e9: $28 $17

    ld [bc], a                                    ; $76eb: $02
    ld c, $29                                     ; $76ec: $0e $29
    ld a, [de]                                    ; $76ee: $1a
    ld [bc], a                                    ; $76ef: $02
    rrca                                          ; $76f0: $0f
    ld a, [hl+]                                   ; $76f1: $2a
    ld e, $02                                     ; $76f2: $1e $02
    db $10                                        ; $76f4: $10
    ld a, [hl+]                                   ; $76f5: $2a
    ld [hl+], a                                   ; $76f6: $22
    ld [bc], a                                    ; $76f7: $02
    ld de, $2729                                  ; $76f8: $11 $29 $27
    ld [bc], a                                    ; $76fb: $02
    ld [de], a                                    ; $76fc: $12
    ld a, [de]                                    ; $76fd: $1a
    add hl, hl                                    ; $76fe: $29
    ld [bc], a                                    ; $76ff: $02
    inc de                                        ; $7700: $13
    jr z, jr_061_772e                             ; $7701: $28 $2b

    ld [bc], a                                    ; $7703: $02
    inc d                                         ; $7704: $14
    ld a, [de]                                    ; $7705: $1a
    dec l                                         ; $7706: $2d
    ld [bc], a                                    ; $7707: $02
    dec d                                         ; $7708: $15
    dec h                                         ; $7709: $25
    ld l, $02                                     ; $770a: $2e $02
    ld d, $19                                     ; $770c: $16 $19
    jr nc, @+$04                                  ; $770e: $30 $02

    rla                                           ; $7710: $17
    jr z, jr_061_7743                             ; $7711: $28 $30

    ld [bc], a                                    ; $7713: $02
    jr jr_061_773c                                ; $7714: $18 $26

    inc sp                                        ; $7716: $33
    ld [bc], a                                    ; $7717: $02
    add hl, de                                    ; $7718: $19
    jr jr_061_774f                                ; $7719: $18 $34

    ld [bc], a                                    ; $771b: $02
    ld a, [de]                                    ; $771c: $1a
    ld a, [de]                                    ; $771d: $1a
    ld [hl], $02                                  ; $771e: $36 $02
    dec de                                        ; $7720: $1b
    dec h                                         ; $7721: $25
    ld [hl], $ff                                  ; $7722: $36 $ff
    rst $38                                       ; $7724: $ff
    rst $38                                       ; $7725: $ff
    ld l, $77                                     ; $7726: $2e $77
    ld l, d                                       ; $7728: $6a
    ld a, d                                       ; $7729: $7a
    ld c, h                                       ; $772a: $4c
    ld a, a                                       ; $772b: $7f
    ld h, a                                       ; $772c: $67
    ld a, a                                       ; $772d: $7f

jr_061_772e:
    ccf                                           ; $772e: $3f
    dec c                                         ; $772f: $0d
    dec c                                         ; $7730: $0d
    dec c                                         ; $7731: $0d
    ld c, $0e                                     ; $7732: $0e $0e
    ld c, $fa                                     ; $7734: $0e $fa
    rst $38                                       ; $7736: $ff
    db $f4                                        ; $7737: $f4
    rst $30                                       ; $7738: $f7
    nop                                           ; $7739: $00
    rst $38                                       ; $773a: $ff
    rst $38                                       ; $773b: $ff

jr_061_773c:
    rst $38                                       ; $773c: $ff
    rst $38                                       ; $773d: $ff
    rst $38                                       ; $773e: $ff
    rst $38                                       ; $773f: $ff
    ld sp, hl                                     ; $7740: $f9
    ld hl, sp+$5b                                 ; $7741: $f8 $5b

jr_061_7743:
    rst $38                                       ; $7743: $ff
    db $f4                                        ; $7744: $f4
    ld hl, sp-$5f                                 ; $7745: $f8 $a1
    rst $38                                       ; $7747: $ff
    rst $38                                       ; $7748: $ff
    rst $38                                       ; $7749: $ff
    nop                                           ; $774a: $00
    rst $38                                       ; $774b: $ff
    rst $38                                       ; $774c: $ff
    ld b, e                                       ; $774d: $43
    rst $38                                       ; $774e: $ff

jr_061_774f:
    ld a, [$80ff]                                 ; $774f: $fa $ff $80
    rst $18                                       ; $7752: $df
    rst $38                                       ; $7753: $ff
    rst $38                                       ; $7754: $ff
    rst $38                                       ; $7755: $ff
    rst $38                                       ; $7756: $ff
    rst $38                                       ; $7757: $ff
    rst $38                                       ; $7758: $ff
    dec a                                         ; $7759: $3d
    rst $38                                       ; $775a: $ff
    nop                                           ; $775b: $00
    ld a, [$80ff]                                 ; $775c: $fa $ff $80
    rst $18                                       ; $775f: $df
    rst $38                                       ; $7760: $ff
    rst $38                                       ; $7761: $ff
    rst $38                                       ; $7762: $ff
    rst $38                                       ; $7763: $ff
    rst $38                                       ; $7764: $ff
    rst $38                                       ; $7765: $ff
    ld l, l                                       ; $7766: $6d
    db $f4                                        ; $7767: $f4
    ld b, [hl]                                    ; $7768: $46
    ldh [rSCX], a                                 ; $7769: $e0 $43
    ld [c], a                                     ; $776b: $e2
    nop                                           ; $776c: $00
    ld a, [$80e3]                                 ; $776d: $fa $e3 $80
    rst $18                                       ; $7770: $df
    xor e                                         ; $7771: $ab
    xor $03                                       ; $7772: $ee $03
    db $e4                                        ; $7774: $e4
    ld h, b                                       ; $7775: $60
    rst $18                                       ; $7776: $df
    ret nz                                        ; $7777: $c0

    rst $30                                       ; $7778: $f7
    jp c, $80ff                                   ; $7779: $da $ff $80

    ret nc                                        ; $777c: $d0

    nop                                           ; $777d: $00
    ld c, c                                       ; $777e: $49
    push hl                                       ; $777f: $e5
    ld a, [hl-]                                   ; $7780: $3a
    db $e4                                        ; $7781: $e4
    ld sp, hl                                     ; $7782: $f9
    and $80                                       ; $7783: $e6 $80
    rst $18                                       ; $7785: $df
    jp z, Jump_000_09e4                           ; $7786: $ca $e4 $09

    and $80                                       ; $7789: $e6 $80
    db $e4                                        ; $778b: $e4
    ld a, c                                       ; $778c: $79
    rst $38                                       ; $778d: $ff
    inc c                                         ; $778e: $0c
    ret nz                                        ; $778f: $c0

    ld [$e6ba], a                                 ; $7790: $ea $ba $e6
    ld c, l                                       ; $7793: $4d
    dec l                                         ; $7794: $2d
    ld a, e                                       ; $7795: $7b
    db $e4                                        ; $7796: $e4
    jp z, $9eff                                   ; $7797: $ca $ff $9e

    ret                                           ; $779a: $c9


    add l                                         ; $779b: $85
    call nz, Call_061_6d07                        ; $779c: $c4 $07 $6d
    dec bc                                        ; $779f: $0b
    dec bc                                        ; $77a0: $0b
    cp a                                          ; $77a1: $bf
    ldh [$75], a                                  ; $77a2: $e0 $75
    rst $00                                       ; $77a4: $c7
    ld l, [hl]                                    ; $77a5: $6e
    rst $00                                       ; $77a6: $c7
    add b                                         ; $77a7: $80
    db $db                                        ; $77a8: $db
    ld b, l                                       ; $77a9: $45
    jp nz, $4d0b                                  ; $77aa: $c2 $0b $4d

    ld c, l                                       ; $77ad: $4d
    pop bc                                        ; $77ae: $c1
    ldh [$0b], a                                  ; $77af: $e0 $0b
    ld a, [hl]                                    ; $77b1: $7e
    ld [c], a                                     ; $77b2: $e2
    ld hl, sp-$35                                 ; $77b3: $f8 $cb
    ld [hl], e                                    ; $77b5: $73
    rst $38                                       ; $77b6: $ff
    add h                                         ; $77b7: $84
    ld [c], a                                     ; $77b8: $e2
    dec bc                                        ; $77b9: $0b
    dec c                                         ; $77ba: $0d
    dec c                                         ; $77bb: $0d
    pop bc                                        ; $77bc: $c1
    ldh [$0b], a                                  ; $77bd: $e0 $0b
    dec a                                         ; $77bf: $3d
    db $e3                                        ; $77c0: $e3
    ld hl, sp-$37                                 ; $77c1: $f8 $c9
    ret nz                                        ; $77c3: $c0

    or $c9                                        ; $77c4: $f6 $c9
    xor d                                         ; $77c6: $aa
    ld hl, sp-$3f                                 ; $77c7: $f8 $c1
    ldh [$c0], a                                  ; $77c9: $e0 $c0
    ldh [$bf], a                                  ; $77cb: $e0 $bf
    and c                                         ; $77cd: $a1
    dec bc                                        ; $77ce: $0b
    ld c, l                                       ; $77cf: $4d
    ld c, l                                       ; $77d0: $4d
    ld c, l                                       ; $77d1: $4d
    dec l                                         ; $77d2: $2d
    inc bc                                        ; $77d3: $03
    ld c, l                                       ; $77d4: $4d
    dec l                                         ; $77d5: $2d
    cp d                                          ; $77d6: $ba
    ret z                                         ; $77d7: $c8

    or c                                          ; $77d8: $b1
    or c                                          ; $77d9: $b1
    add c                                         ; $77da: $81
    db $ed                                        ; $77db: $ed
    add d                                         ; $77dc: $82
    ld [c], a                                     ; $77dd: $e2
    ld a, l                                       ; $77de: $7d
    ldh [$7a], a                                  ; $77df: $e0 $7a
    db $e3                                        ; $77e1: $e3
    nop                                           ; $77e2: $00
    ld hl, sp-$37                                 ; $77e3: $f8 $c9
    or c                                          ; $77e5: $b1
    cp a                                          ; $77e6: $bf
    ld b, a                                       ; $77e7: $47
    and e                                         ; $77e8: $a3
    pop bc                                        ; $77e9: $c1
    ld [c], a                                     ; $77ea: $e2
    ld a, l                                       ; $77eb: $7d
    db $e3                                        ; $77ec: $e3
    ld a, d                                       ; $77ed: $7a
    ld [c], a                                     ; $77ee: $e2
    ld hl, sp-$3d                                 ; $77ef: $f8 $c3
    ld e, [hl]                                    ; $77f1: $5e
    rst $00                                       ; $77f2: $c7
    inc b                                         ; $77f3: $04
    ld b, e                                       ; $77f4: $43
    sub e                                         ; $77f5: $93
    nop                                           ; $77f6: $00
    push bc                                       ; $77f7: $c5
    dec bc                                        ; $77f8: $0b
    ld b, d                                       ; $77f9: $42
    pop hl                                        ; $77fa: $e1
    add l                                         ; $77fb: $85
    db $e3                                        ; $77fc: $e3
    ld sp, hl                                     ; $77fd: $f9
    jp $e3bf                                      ; $77fe: $c3 $bf $e3


    or c                                          ; $7801: $b1
    cp b                                          ; $7802: $b8
    nop                                           ; $7803: $00
    ld c, $a7                                     ; $7804: $0e $a7
    ret nz                                        ; $7806: $c0

    db $e4                                        ; $7807: $e4

jr_061_7808:
    ld b, l                                       ; $7808: $45
    push hl                                       ; $7809: $e5
    cp a                                          ; $780a: $bf
    rst $20                                       ; $780b: $e7
    inc sp                                        ; $780c: $33
    jp $dabc                                      ; $780d: $c3 $bc $da


    adc e                                         ; $7810: $8b
    add h                                         ; $7811: $84
    ret z                                         ; $7812: $c8

    and b                                         ; $7813: $a0
    add b                                         ; $7814: $80
    add c                                         ; $7815: $81
    ld [c], a                                     ; $7816: $e2
    add h                                         ; $7817: $84
    jp $e0f3                                      ; $7818: $c3 $f3 $e0


    rst $30                                       ; $781b: $f7
    jp $a3b1                                      ; $781c: $c3 $b1 $a3


    inc a                                         ; $781f: $3c
    call nc, $a8c3                                ; $7820: $d4 $c3 $a8
    ld c, $f7                                     ; $7823: $0e $f7
    ld c, $4d                                     ; $7825: $0e $4d
    dec l                                         ; $7827: $2d
    ld b, c                                       ; $7828: $41
    ld [c], a                                     ; $7829: $e2
    dec c                                         ; $782a: $0d
    dec l                                         ; $782b: $2d
    dec hl                                        ; $782c: $2b
    ld a, [bc]                                    ; $782d: $0a
    ld hl, $796a                                  ; $782e: $21 $6a $79
    pop bc                                        ; $7831: $c1
    or [hl]                                       ; $7832: $b6
    ldh [$f2], a                                  ; $7833: $e0 $f2
    and h                                         ; $7835: $a4
    db $e4                                        ; $7836: $e4
    ldh [rKEY1], a                                ; $7837: $e0 $4d
    nop                                           ; $7839: $00
    cp d                                          ; $783a: $ba
    dec b                                         ; $783b: $05
    add h                                         ; $783c: $84
    sbc $c0                                       ; $783d: $de $c0
    db $e3                                        ; $783f: $e3
    dec hl                                        ; $7840: $2b
    ld a, [bc]                                    ; $7841: $0a
    ld a, [bc]                                    ; $7842: $0a
    ld a, [hl+]                                   ; $7843: $2a
    jr c, jr_061_7808                             ; $7844: $38 $c2

    dec l                                         ; $7846: $2d
    dec l                                         ; $7847: $2d
    ret nc                                        ; $7848: $d0

    ld a, [c]                                     ; $7849: $f2
    and d                                         ; $784a: $a2
    ld [hl], c                                    ; $784b: $71

jr_061_784c:
    and c                                         ; $784c: $a1
    ld c, e                                       ; $784d: $4b
    sbc a                                         ; $784e: $9f
    cp [hl]                                       ; $784f: $be
    push bc                                       ; $7850: $c5
    dec l                                         ; $7851: $2d
    ret nz                                        ; $7852: $c0

    ldh [$2a], a                                  ; $7853: $e0 $2a
    dec hl                                        ; $7855: $2b
    add e                                         ; $7856: $83
    dec hl                                        ; $7857: $2b
    dec hl                                        ; $7858: $2b
    cp b                                          ; $7859: $b8
    rst $00                                       ; $785a: $c7
    ld a, d                                       ; $785b: $7a
    rst $00                                       ; $785c: $c7
    add b                                         ; $785d: $80

jr_061_785e:
    db $db                                        ; $785e: $db
    inc b                                         ; $785f: $04
    and b                                         ; $7860: $a0
    adc h                                         ; $7861: $8c
    pop hl                                        ; $7862: $e1
    dec l                                         ; $7863: $2d
    inc bc                                        ; $7864: $03
    dec bc                                        ; $7865: $0b
    ld l, e                                       ; $7866: $6b
    cp $e0                                        ; $7867: $fe $e0
    ret nz                                        ; $7869: $c0

    ld [c], a                                     ; $786a: $e2
    cp e                                          ; $786b: $bb
    db $e3                                        ; $786c: $e3
    add b                                         ; $786d: $80
    db $e3                                        ; $786e: $e3
    add b                                         ; $786f: $80
    rst $18                                       ; $7870: $df
    push bc                                       ; $7871: $c5
    add b                                         ; $7872: $80
    inc b                                         ; $7873: $04
    ld c, h                                       ; $7874: $4c
    db $e4                                        ; $7875: $e4
    ei                                            ; $7876: $fb
    add b                                         ; $7877: $80
    ld c, e                                       ; $7878: $4b
    cp [hl]                                       ; $7879: $be
    pop hl                                        ; $787a: $e1
    jr c, jr_061_785e                             ; $787b: $38 $e1

    ret nz                                        ; $787d: $c0

    db $e3                                        ; $787e: $e3
    ret nc                                        ; $787f: $d0

    jr c, jr_061_784c                             ; $7880: $38 $ca

    ld h, l                                       ; $7882: $65
    cp h                                          ; $7883: $bc
    push bc                                       ; $7884: $c5
    add c                                         ; $7885: $81
    ld a, a                                       ; $7886: $7f
    and e                                         ; $7887: $a3
    dec bc                                        ; $7888: $0b
    ld c, e                                       ; $7889: $4b
    ld c, e                                       ; $788a: $4b
    ld l, e                                       ; $788b: $6b

jr_061_788c:
    add d                                         ; $788c: $82
    pop hl                                        ; $788d: $e1
    dec hl                                        ; $788e: $2b
    rst $00                                       ; $788f: $c7
    ld a, [hl+]                                   ; $7890: $2a
    ld a, [bc]                                    ; $7891: $0a
    ld a, [bc]                                    ; $7892: $0a
    add b                                         ; $7893: $80
    jp hl                                         ; $7894: $e9


    nop                                           ; $7895: $00
    cp h                                          ; $7896: $bc
    ret nz                                        ; $7897: $c0

    rst $20                                       ; $7898: $e7
    ld a, [bc]                                    ; $7899: $0a
    ld a, [bc]                                    ; $789a: $0a
    add hl, bc                                    ; $789b: $09
    ld l, d                                       ; $789c: $6a
    cp a                                          ; $789d: $bf
    pop hl                                        ; $789e: $e1
    ld hl, sp-$20                                 ; $789f: $f8 $e0
    ld c, e                                       ; $78a1: $4b
    cpl                                           ; $78a2: $2f
    call nz, Call_061_7174                        ; $78a3: $c4 $74 $71
    nop                                           ; $78a6: $00
    or d                                          ; $78a7: $b2
    ld b, c                                       ; $78a8: $41
    and e                                         ; $78a9: $a3
    dec de                                        ; $78aa: $1b
    ld c, e                                       ; $78ab: $4b
    ld a, [bc]                                    ; $78ac: $0a
    ld a, a                                       ; $78ad: $7f
    ld [c], a                                     ; $78ae: $e2
    ld a, [bc]                                    ; $78af: $0a
    ld c, d                                       ; $78b0: $4a
    ld hl, sp-$7c                                 ; $78b1: $f8 $84
    ccf                                           ; $78b3: $3f
    sbc a                                         ; $78b4: $9f
    ld [bc], a                                    ; $78b5: $02
    ret nz                                        ; $78b6: $c0

    inc l                                         ; $78b7: $2c
    ret z                                         ; $78b8: $c8

    add h                                         ; $78b9: $84
    cp [hl]                                       ; $78ba: $be
    add d                                         ; $78bb: $82
    dec c                                         ; $78bc: $0d
    ld l, e                                       ; $78bd: $6b
    add [hl]                                      ; $78be: $86
    pop hl                                        ; $78bf: $e1
    ld a, [hl+]                                   ; $78c0: $2a
    add b                                         ; $78c1: $80
    ld [c], a                                     ; $78c2: $e2
    xor a                                         ; $78c3: $af
    ld h, e                                       ; $78c4: $63
    ld b, b                                       ; $78c5: $40
    ld b, e                                       ; $78c6: $43
    sbc e                                         ; $78c7: $9b
    ld c, l                                       ; $78c8: $4d
    jr nz, jr_061_788c                            ; $78c9: $20 $c1

    and b                                         ; $78cb: $a0
    nop                                           ; $78cc: $00
    push hl                                       ; $78cd: $e5
    db $fc                                        ; $78ce: $fc
    ld h, c                                       ; $78cf: $61
    ccf                                           ; $78d0: $3f
    jp nz, Jump_061_754b                          ; $78d1: $c2 $4b $75

    add e                                         ; $78d4: $83
    ld b, b                                       ; $78d5: $40
    inc a                                         ; $78d6: $3c
    and [hl]                                      ; $78d7: $a6
    scf                                           ; $78d8: $37
    db $ec                                        ; $78d9: $ec
    inc c                                         ; $78da: $0c

jr_061_78db:
    ld b, a                                       ; $78db: $47
    ld a, [hl]                                    ; $78dc: $7e
    db $e3                                        ; $78dd: $e3
    jp nz, $c262                                  ; $78de: $c2 $62 $c2

    add h                                         ; $78e1: $84
    ld l, e                                       ; $78e2: $6b
    cp $c2                                        ; $78e3: $fe $c2
    nop                                           ; $78e5: $00
    xor [hl]                                      ; $78e6: $ae
    ld h, e                                       ; $78e7: $63
    cp [hl]                                       ; $78e8: $be
    and a                                         ; $78e9: $a7
    ld a, [hl-]                                   ; $78ea: $3a
    or e                                          ; $78eb: $b3
    ld c, b                                       ; $78ec: $48
    ld b, h                                       ; $78ed: $44
    ld a, [hl]                                    ; $78ee: $7e
    ld [c], a                                     ; $78ef: $e2
    adc $e5                                       ; $78f0: $ce $e5
    ld a, [$fba0]                                 ; $78f2: $fa $a0 $fb
    and b                                         ; $78f5: $a0
    add b                                         ; $78f6: $80
    ld l, [hl]                                    ; $78f7: $6e
    ld h, e                                       ; $78f8: $63
    cp $c7                                        ; $78f9: $fe $c7
    ld a, [bc]                                    ; $78fb: $0a
    ld l, l                                       ; $78fc: $6d
    or [hl]                                       ; $78fd: $b6
    dec bc                                        ; $78fe: $0b
    dec a                                         ; $78ff: $3d
    pop hl                                        ; $7900: $e1
    ld a, e                                       ; $7901: $7b
    ld h, d                                       ; $7902: $62
    cp d                                          ; $7903: $ba
    and d                                         ; $7904: $a2
    ld c, e                                       ; $7905: $4b
    nop                                           ; $7906: $00
    add e                                         ; $7907: $83
    ret nz                                        ; $7908: $c0

    or l                                          ; $7909: $b5
    ld l, d                                       ; $790a: $6a
    ld e, d                                       ; $790b: $5a
    ld c, b                                       ; $790c: $48
    nop                                           ; $790d: $00
    ld d, c                                       ; $790e: $51
    db $fc                                        ; $790f: $fc
    pop bc                                        ; $7910: $c1
    add a                                         ; $7911: $87
    add c                                         ; $7912: $81
    ld b, $a5                                     ; $7913: $06 $a5
    ld a, b                                       ; $7915: $78
    and b                                         ; $7916: $a0
    nop                                           ; $7917: $00
    pop bc                                        ; $7918: $c1
    jp nz, $c57c                                  ; $7919: $c2 $7c $c5

    sbc [hl]                                      ; $791c: $9e
    daa                                           ; $791d: $27
    nop                                           ; $791e: $00
    ld d, e                                       ; $791f: $53
    ld l, a                                       ; $7920: $6f
    inc hl                                        ; $7921: $23
    cp c                                          ; $7922: $b9
    call nz, $edfb                                ; $7923: $c4 $fb $ed
    rst $28                                       ; $7926: $ef
    ld b, c                                       ; $7927: $41
    nop                                           ; $7928: $00
    ld a, b                                       ; $7929: $78

jr_061_792a:
    call z, Call_061_4f00                         ; $792a: $cc $00 $4f
    dec l                                         ; $792d: $2d
    ld [hl+], a                                   ; $792e: $22
    ld hl, sp+$61                                 ; $792f: $f8 $61
    rst $30                                       ; $7931: $f7
    and [hl]                                      ; $7932: $a6
    rst $30                                       ; $7933: $f7
    ld h, b                                       ; $7934: $60
    cp e                                          ; $7935: $bb
    jp hl                                         ; $7936: $e9


    and l                                         ; $7937: $a5
    inc hl                                        ; $7938: $23
    jr jr_061_792a                                ; $7939: $18 $ef

    ld d, c                                       ; $793b: $51
    ld a, [hl]                                    ; $793c: $7e
    add sp, $76                                   ; $793d: $e8 $76
    and [hl]                                      ; $793f: $a6
    ld l, l                                       ; $7940: $6d
    dec c                                         ; $7941: $0d
    ld a, l                                       ; $7942: $7d
    ld b, b                                       ; $7943: $40
    ld [hl], b                                    ; $7944: $70
    jp hl                                         ; $7945: $e9


    db $f4                                        ; $7946: $f4
    ld h, e                                       ; $7947: $63
    jr nc, @-$0a                                  ; $7948: $30 $f4

    sub d                                         ; $794a: $92
    jp nz, $f707                                  ; $794b: $c2 $07 $f7

    and h                                         ; $794e: $a4
    ld [hl], l                                    ; $794f: $75
    jr nz, jr_061_7960                            ; $7950: $20 $0e

    ld c, $3d                                     ; $7952: $0e $3d
    ld b, b                                       ; $7954: $40
    db $ec                                        ; $7955: $ec
    ld [hl+], a                                   ; $7956: $22
    nop                                           ; $7957: $00
    jr nc, jr_061_78db                            ; $7958: $30 $81

    ld l, $80                                     ; $795a: $2e $80
    ld [c], a                                     ; $795c: $e2
    jp $eb93                                      ; $795d: $c3 $93 $eb


jr_061_7960:
    add b                                         ; $7960: $80
    ld h, a                                       ; $7961: $67
    or [hl]                                       ; $7962: $b6
    rlca                                          ; $7963: $07
    ld c, d                                       ; $7964: $4a
    add e                                         ; $7965: $83
    ld h, l                                       ; $7966: $65
    nop                                           ; $7967: $00
    nop                                           ; $7968: $00
    ret nz                                        ; $7969: $c0

    pop hl                                        ; $796a: $e1
    ld l, l                                       ; $796b: $6d
    ld hl, $60f2                                  ; $796c: $21 $f2 $60
    rst $28                                       ; $796f: $ef
    ld h, c                                       ; $7970: $61
    or h                                          ; $7971: $b4
    ld h, l                                       ; $7972: $65
    add b                                         ; $7973: $80
    ld [hl], l                                    ; $7974: $75
    ld a, [hl]                                    ; $7975: $7e
    and $c0                                       ; $7976: $e6 $c0
    and $c4                                       ; $7978: $e6 $c4
    ld [$f323], a                                 ; $797a: $ea $23 $f3
    ld h, h                                       ; $797d: $64
    dec hl                                        ; $797e: $2b
    ld e, l                                       ; $797f: $5d
    ld hl, $7980                                  ; $7980: $21 $80 $79
    ld [hl], $06                                  ; $7983: $36 $06
    dec bc                                        ; $7985: $0b
    dec bc                                        ; $7986: $0b
    dec b                                         ; $7987: $05
    ld l, l                                       ; $7988: $6d
    cp e                                          ; $7989: $bb
    ld bc, $402d                                  ; $798a: $01 $2d $40
    ld [c], a                                     ; $798d: $e2
    ld [hl], h                                    ; $798e: $74
    ld h, d                                       ; $798f: $62
    dec [hl]                                      ; $7990: $35
    ld h, b                                       ; $7991: $60
    or d                                          ; $7992: $b2
    and b                                         ; $7993: $a0
    dec l                                         ; $7994: $2d
    ldh [rNR41], a                                ; $7995: $e0 $20
    or h                                          ; $7997: $b4
    daa                                           ; $7998: $27
    xor d                                         ; $7999: $aa
    ld de, $6378                                  ; $799a: $11 $78 $63
    add hl, sp                                    ; $799d: $39
    ld hl, $650a                                  ; $799e: $21 $0a $65
    dec c                                         ; $79a1: $0d
    ld [hl], l                                    ; $79a2: $75
    ld h, d                                       ; $79a3: $62
    cpl                                           ; $79a4: $2f
    ld h, e                                       ; $79a5: $63
    add b                                         ; $79a6: $80
    or [hl]                                       ; $79a7: $b6
    ld h, a                                       ; $79a8: $67
    dec l                                         ; $79a9: $2d
    ld [hl], l                                    ; $79aa: $75
    ld a, b                                       ; $79ab: $78
    ld h, d                                       ; $79ac: $62
    ld a, d                                       ; $79ad: $7a
    ld b, e                                       ; $79ae: $43
    ld b, $26                                     ; $79af: $06 $26
    inc l                                         ; $79b1: $2c
    ld b, c                                       ; $79b2: $41
    rst $28                                       ; $79b3: $ef
    ld b, b                                       ; $79b4: $40
    dec hl                                        ; $79b5: $2b
    inc bc                                        ; $79b6: $03
    ld l, e                                       ; $79b7: $6b
    ld c, e                                       ; $79b8: $4b
    daa                                           ; $79b9: $27
    inc b                                         ; $79ba: $04
    or a                                          ; $79bb: $b7
    ld e, e                                       ; $79bc: $5b
    ld a, e                                       ; $79bd: $7b
    inc b                                         ; $79be: $04
    or d                                          ; $79bf: $b2
    ld bc, $03e8                                  ; $79c0: $01 $e8 $03
    cp h                                          ; $79c3: $bc
    ld h, c                                       ; $79c4: $61
    ld [bc], a                                    ; $79c5: $02
    pop bc                                        ; $79c6: $c1
    ld [c], a                                     ; $79c7: $e2
    dec hl                                        ; $79c8: $2b
    ld [hl], c                                    ; $79c9: $71
    inc h                                         ; $79ca: $24
    cp l                                          ; $79cb: $bd
    or h                                          ; $79cc: $b4
    cp d                                          ; $79cd: $ba
    dec b                                         ; $79ce: $05
    cp c                                          ; $79cf: $b9
    ld [bc], a                                    ; $79d0: $02
    rst $10                                       ; $79d1: $d7
    pop bc                                        ; $79d2: $c1
    ccf                                           ; $79d3: $3f
    ld b, b                                       ; $79d4: $40
    nop                                           ; $79d5: $00
    ld [$f521], a                                 ; $79d6: $ea $21 $f5
    ld h, c                                       ; $79d9: $61
    add d                                         ; $79da: $82

jr_061_79db:
    pop hl                                        ; $79db: $e1

jr_061_79dc:
    or $46                                        ; $79dc: $f6 $46
    add b                                         ; $79de: $80
    db $10                                        ; $79df: $10
    ld b, d                                       ; $79e0: $42
    ret                                           ; $79e1: $c9


    ld a, e                                       ; $79e2: $7b
    inc h                                         ; $79e3: $24
    ld h, h                                       ; $79e4: $64
    dec h                                         ; $79e5: $25
    nop                                           ; $79e6: $00
    cp a                                          ; $79e7: $bf
    ld [c], a                                     ; $79e8: $e2
    pop bc                                        ; $79e9: $c1
    ld [c], a                                     ; $79ea: $e2
    xor e                                         ; $79eb: $ab
    db $e3                                        ; $79ec: $e3
    dec a                                         ; $79ed: $3d
    db $fd                                        ; $79ee: $fd
    ret nz                                        ; $79ef: $c0

    ld h, c                                       ; $79f0: $61
    add d                                         ; $79f1: $82
    ret nz                                        ; $79f2: $c0

    ld c, e                                       ; $79f3: $4b
    daa                                           ; $79f4: $27
    ld a, [hl]                                    ; $79f5: $7e
    pop hl                                        ; $79f6: $e1
    nop                                           ; $79f7: $00
    pop bc                                        ; $79f8: $c1
    db $e3                                        ; $79f9: $e3
    inc d                                         ; $79fa: $14
    rst $00                                       ; $79fb: $c7
    ld b, e                                       ; $79fc: $43
    di                                            ; $79fd: $f3
    cp [hl]                                       ; $79fe: $be
    add h                                         ; $79ff: $84
    call z, $7e24                                 ; $7a00: $cc $24 $7e
    add sp, -$01                                  ; $7a03: $e8 $ff
    ld [c], a                                     ; $7a05: $e2
    dec l                                         ; $7a06: $2d
    ld [c], a                                     ; $7a07: $e2
    nop                                           ; $7a08: $00
    push af                                       ; $7a09: $f5
    ld b, h                                       ; $7a0a: $44
    jr nc, jr_061_7a5d                            ; $7a0b: $30 $50

jr_061_7a0d:
    ld [hl+], a                                   ; $7a0d: $22
    add h                                         ; $7a0e: $84
    ld b, b                                       ; $7a0f: $40
    ld [c], a                                     ; $7a10: $e2
    ld c, h                                       ; $7a11: $4c
    ld [hl+], a                                   ; $7a12: $22
    ld d, l                                       ; $7a13: $55
    and a                                         ; $7a14: $a7
    ld c, b                                       ; $7a15: $48
    adc c                                         ; $7a16: $89
    ld a, b                                       ; $7a17: $78
    ld e, $02                                     ; $7a18: $1e $02
    ld [bc], a                                    ; $7a1a: $02
    pop bc                                        ; $7a1b: $c1
    dec l                                         ; $7a1c: $2d
    adc h                                         ; $7a1d: $8c
    jr z, @+$68                                   ; $7a1e: $28 $66

    xor d                                         ; $7a20: $aa
    ld c, c                                       ; $7a21: $49
    ld c, a                                       ; $7a22: $4f
    jr nc, @+$4d                                  ; $7a23: $30 $4b

    jp $82a1                                      ; $7a25: $c3 $a1 $82


    and l                                         ; $7a28: $a5

jr_061_7a29:
    nop                                           ; $7a29: $00
    jr jr_061_79db                                ; $7a2a: $18 $af

    ld c, d                                       ; $7a2c: $4a
    ld [hl], e                                    ; $7a2d: $73
    add d                                         ; $7a2e: $82
    call z, $e240                                 ; $7a2f: $cc $40 $e2
    inc c                                         ; $7a32: $0c
    ld c, c                                       ; $7a33: $49
    ld a, [hl]                                    ; $7a34: $7e
    jp hl                                         ; $7a35: $e9


    halt                                          ; $7a36: $76
    ld e, $00                                     ; $7a37: $1e $00
    db $e4                                        ; $7a39: $e4
    nop                                           ; $7a3a: $00
    ld d, $83                                     ; $7a3b: $16 $83
    ret nz                                        ; $7a3d: $c0

    ei                                            ; $7a3e: $fb
    jp Jump_061_7aad                              ; $7a3f: $c3 $ad $7a


    jr z, jr_061_79dc                             ; $7a42: $28 $98

    ld h, b                                       ; $7a44: $60
    call nc, $d6a6                                ; $7a45: $d4 $a6 $d6
    sub h                                         ; $7a48: $94
    add b                                         ; $7a49: $80
    rst $10                                       ; $7a4a: $d7
    jr nz, jr_061_7a0d                            ; $7a4b: $20 $c0

    inc hl                                        ; $7a4d: $23
    ld d, $88                                     ; $7a4e: $16 $88
    rst $38                                       ; $7a50: $ff
    rst $38                                       ; $7a51: $ff
    ld a, [hl]                                    ; $7a52: $7e
    ld l, b                                       ; $7a53: $68
    ld b, h                                       ; $7a54: $44
    add c                                         ; $7a55: $81
    ld c, l                                       ; $7a56: $4d
    nop                                           ; $7a57: $00
    ld b, b                                       ; $7a58: $40
    sub [hl]                                      ; $7a59: $96
    ld l, h                                       ; $7a5a: $6c
    jr nz, jr_061_7a29                            ; $7a5b: $20 $cc

jr_061_7a5d:
    ld hl, sp-$80                                 ; $7a5d: $f8 $80
    rlc d                                         ; $7a5f: $cb $02
    ld [c], a                                     ; $7a61: $e2
    add b                                         ; $7a62: $80
    adc b                                         ; $7a63: $88
    ld b, e                                       ; $7a64: $43
    or $0d                                        ; $7a65: $f6 $0d
    nop                                           ; $7a67: $00
    nop                                           ; $7a68: $00
    nop                                           ; $7a69: $00
    ccf                                           ; $7a6a: $3f
    and b                                         ; $7a6b: $a0
    and b                                         ; $7a6c: $a0
    and b                                         ; $7a6d: $a0
    call c, $dedd                                 ; $7a6e: $dc $dd $de
    ld a, [$f4ff]                                 ; $7a71: $fa $ff $f4
    push af                                       ; $7a74: $f5
    ccf                                           ; $7a75: $3f
    db $e4                                        ; $7a76: $e4
    rst $18                                       ; $7a77: $df
    ldh [$e1], a                                  ; $7a78: $e0 $e1
    ld [c], a                                     ; $7a7a: $e2
    db $e3                                        ; $7a7b: $e3
    ld a, [$f4ff]                                 ; $7a7c: $fa $ff $f4
    push af                                       ; $7a7f: $f5
    ccf                                           ; $7a80: $3f
    ld [$e6e5], a                                 ; $7a81: $ea $e5 $e6
    rst $20                                       ; $7a84: $e7
    add sp, -$17                                  ; $7a85: $e8 $e9
    ld a, [$f4ff]                                 ; $7a87: $fa $ff $f4
    push af                                       ; $7a8a: $f5
    nop                                           ; $7a8b: $00
    ld e, e                                       ; $7a8c: $5b
    rst $38                                       ; $7a8d: $ff
    ld a, [$5bfb]                                 ; $7a8e: $fa $fb $5b
    rst $38                                       ; $7a91: $ff
    ld a, [$5bfb]                                 ; $7a92: $fa $fb $5b
    rst $38                                       ; $7a95: $ff
    ld a, [$5bfb]                                 ; $7a96: $fa $fb $5b
    rst $38                                       ; $7a99: $ff
    add b                                         ; $7a9a: $80
    rst $18                                       ; $7a9b: $df
    nop                                           ; $7a9c: $00
    ld d, l                                       ; $7a9d: $55
    rst $38                                       ; $7a9e: $ff
    add b                                         ; $7a9f: $80
    rst $18                                       ; $7aa0: $df
    ld a, [$80ff]                                 ; $7aa1: $fa $ff $80
    rst $18                                       ; $7aa4: $df
    ld a, [$80ff]                                 ; $7aa5: $fa $ff $80
    rst $18                                       ; $7aa8: $df

Call_061_7aa9:
    ld a, [$80ff]                                 ; $7aa9: $fa $ff $80
    rst $18                                       ; $7aac: $df

Jump_061_7aad:
    inc c                                         ; $7aad: $0c
    ld a, [$80ff]                                 ; $7aae: $fa $ff $80
    jp c, $d7d6                                   ; $7ab1: $da $d6 $d7

    ld b, [hl]                                    ; $7ab4: $46
    ldh [rSCX], a                                 ; $7ab5: $e0 $43
    ldh [$f8], a                                  ; $7ab7: $e0 $f8
    db $e3                                        ; $7ab9: $e3
    add b                                         ; $7aba: $80
    rst $18                                       ; $7abb: $df
    ld a, $5b                                     ; $7abc: $3e $5b
    db $ed                                        ; $7abe: $ed
    ret c                                         ; $7abf: $d8

    reti                                          ; $7ac0: $d9


    and b                                         ; $7ac1: $a0
    ret nc                                        ; $7ac2: $d0

    pop de                                        ; $7ac3: $d1
    add $e0                                       ; $7ac4: $c6 $e0
    ld hl, sp-$20                                 ; $7ac6: $f8 $e0
    ld sp, hl                                     ; $7ac8: $f9
    and b                                         ; $7ac9: $a0
    add b                                         ; $7aca: $80
    rst $18                                       ; $7acb: $df
    ld e, e                                       ; $7acc: $5b
    rst $28                                       ; $7acd: $ef
    jp c, $a0db                                   ; $7ace: $da $db $a0

    jp nc, Jump_000_1ed3                          ; $7ad1: $d2 $d3 $1e

    cp l                                          ; $7ad4: $bd
    ldh [$da], a                                  ; $7ad5: $e0 $da
    db $db                                        ; $7ad7: $db
    sub $d7                                       ; $7ad8: $d6 $d7
    add b                                         ; $7ada: $80
    rst $18                                       ; $7adb: $df
    sbc b                                         ; $7adc: $98
    ret z                                         ; $7add: $c8

    ld b, a                                       ; $7ade: $47
    db $e3                                        ; $7adf: $e3
    ld b, $84                                     ; $7ae0: $06 $84
    pop hl                                        ; $7ae2: $e1
    call nc, $bdd5                                ; $7ae3: $d4 $d5 $bd
    pop hl                                        ; $7ae6: $e1
    ld a, [hl]                                    ; $7ae7: $7e
    pop hl                                        ; $7ae8: $e1
    inc sp                                        ; $7ae9: $33
    pop hl                                        ; $7aea: $e1
    add b                                         ; $7aeb: $80
    rst $18                                       ; $7aec: $df
    sbc b                                         ; $7aed: $98
    pop bc                                        ; $7aee: $c1
    ld [hl-], a                                   ; $7aef: $32
    ld c, a                                       ; $7af0: $4f
    db $e3                                        ; $7af1: $e3
    and b                                         ; $7af2: $a0
    rst $00                                       ; $7af3: $c7
    ld [c], a                                     ; $7af4: $e2
    ld [$d4e0], sp                                ; $7af5: $08 $e0 $d4
    push de                                       ; $7af8: $d5
    ld a, [hl]                                    ; $7af9: $7e
    pop hl                                        ; $7afa: $e1
    dec sp                                        ; $7afb: $3b
    ldh [$ec], a                                  ; $7afc: $e0 $ec
    add b                                         ; $7afe: $80
    rst $18                                       ; $7aff: $df
    ld [hl], $a5                                  ; $7b00: $36 $a5
    jp c, $84db                                   ; $7b02: $da $db $84

    db $e4                                        ; $7b05: $e4
    sbc a                                         ; $7b06: $9f
    and d                                         ; $7b07: $a2
    sbc l                                         ; $7b08: $9d
    pop bc                                        ; $7b09: $c1
    sbc a                                         ; $7b0a: $9f
    or a                                          ; $7b0b: $b7
    ld [c], a                                     ; $7b0c: $e2
    dec sp                                        ; $7b0d: $3b
    pop hl                                        ; $7b0e: $e1
    add b                                         ; $7b0f: $80
    rst $18                                       ; $7b10: $df
    push de                                       ; $7b11: $d5
    and a                                         ; $7b12: $a7
    add h                                         ; $7b13: $84
    db $e3                                        ; $7b14: $e3
    sbc a                                         ; $7b15: $9f
    sbc h                                         ; $7b16: $9c
    rrca                                          ; $7b17: $0f
    ld b, [hl]                                    ; $7b18: $46
    ld b, [hl]                                    ; $7b19: $46
    sbc h                                         ; $7b1a: $9c
    sbc a                                         ; $7b1b: $9f
    dec sp                                        ; $7b1c: $3b
    push hl                                       ; $7b1d: $e5
    halt                                          ; $7b1e: $76
    add $80                                       ; $7b1f: $c6 $80
    rst $18                                       ; $7b21: $df
    add h                                         ; $7b22: $84
    ld [c], a                                     ; $7b23: $e2
    dec de                                        ; $7b24: $1b
    sbc l                                         ; $7b25: $9d
    sbc l                                         ; $7b26: $9d
    pop bc                                        ; $7b27: $c1
    ldh [rDMA], a                                 ; $7b28: $e0 $46
    xor [hl]                                      ; $7b2a: $ae
    cp a                                          ; $7b2b: $bf
    ldh [$f8], a                                  ; $7b2c: $e0 $f8
    jp nz, $c175                                  ; $7b2e: $c2 $75 $c1

    ret c                                         ; $7b31: $d8

    ld hl, sp-$3d                                 ; $7b32: $f8 $c3
    add b                                         ; $7b34: $80
    rst $18                                       ; $7b35: $df
    add h                                         ; $7b36: $84
    ld [c], a                                     ; $7b37: $e2
    xor [hl]                                      ; $7b38: $ae
    xor [hl]                                      ; $7b39: $ae
    pop bc                                        ; $7b3a: $c1
    ldh [rDMA], a                                 ; $7b3b: $e0 $46
    xor a                                         ; $7b3d: $af
    adc b                                         ; $7b3e: $88
    cp a                                          ; $7b3f: $bf
    db $e3                                        ; $7b40: $e3
    pop af                                        ; $7b41: $f1
    pop bc                                        ; $7b42: $c1
    ld hl, sp-$3c                                 ; $7b43: $f8 $c4
    and b                                         ; $7b45: $a0
    nop                                           ; $7b46: $00
    cp h                                          ; $7b47: $bc
    ret                                           ; $7b48: $c9


    and d                                         ; $7b49: $a2
    pop bc                                        ; $7b4a: $c1
    ldh [$af], a                                  ; $7b4b: $e0 $af
    rst $38                                       ; $7b4d: $ff
    xor a                                         ; $7b4e: $af
    ld b, [hl]                                    ; $7b4f: $46
    ld b, [hl]                                    ; $7b50: $46
    ld a, c                                       ; $7b51: $79
    ld a, d                                       ; $7b52: $7a
    ld a, l                                       ; $7b53: $7d
    xor a                                         ; $7b54: $af
    ld b, [hl]                                    ; $7b55: $46
    scf                                           ; $7b56: $37
    sbc h                                         ; $7b57: $9c
    sbc l                                         ; $7b58: $9d
    sbc l                                         ; $7b59: $9d
    ld hl, sp-$40                                 ; $7b5a: $f8 $c0
    call nc, Call_000_33d5                        ; $7b5c: $d4 $d5 $33
    add $b1                                       ; $7b5f: $c6 $b1
    or c                                          ; $7b61: $b1
    sbc $c9                                       ; $7b62: $de $c9
    xor d                                         ; $7b64: $aa
    and b                                         ; $7b65: $a0
    and b                                         ; $7b66: $a0
    sbc [hl]                                      ; $7b67: $9e
    xor [hl]                                      ; $7b68: $ae
    jp nz, Jump_061_46e0                          ; $7b69: $c2 $e0 $46

    ld a, c                                       ; $7b6c: $79
    rrca                                          ; $7b6d: $0f
    ld a, [hl]                                    ; $7b6e: $7e
    ld b, [hl]                                    ; $7b6f: $46
    ld a, a                                       ; $7b70: $7f
    ld a, l                                       ; $7b71: $7d
    ld a, d                                       ; $7b72: $7a
    pop hl                                        ; $7b73: $e1
    ld hl, sp-$37                                 ; $7b74: $f8 $c9
    or c                                          ; $7b76: $b1
    or e                                          ; $7b77: $b3
    ret                                           ; $7b78: $c9


    xor c                                         ; $7b79: $a9
    and $8a                                       ; $7b7a: $e6 $8a
    and b                                         ; $7b7c: $a0
    and c                                         ; $7b7d: $a1
    xor a                                         ; $7b7e: $af
    ld b, d                                       ; $7b7f: $42
    ldh [$c1], a                                  ; $7b80: $e0 $c1
    ldh [rDMA], a                                 ; $7b82: $e0 $46
    ld b, [hl]                                    ; $7b84: $46
    adc [hl]                                      ; $7b85: $8e
    dec c                                         ; $7b86: $0d
    ld a, e                                       ; $7b87: $7b
    rst $38                                       ; $7b88: $ff
    ldh [$7c], a                                  ; $7b89: $e0 $7c
    ld a, l                                       ; $7b8b: $7d
    or a                                          ; $7b8c: $b7
    pop bc                                        ; $7b8d: $c1
    inc sp                                        ; $7b8e: $33
    add $3d                                       ; $7b8f: $c6 $3d
    ldh a, [rNR34]                                ; $7b91: $f0 $1e
    and l                                         ; $7b93: $a5
    inc l                                         ; $7b94: $2c
    dec bc                                        ; $7b95: $0b
    and c                                         ; $7b96: $a1
    adc d                                         ; $7b97: $8a
    and b                                         ; $7b98: $a0
    sbc [hl]                                      ; $7b99: $9e
    ld b, [hl]                                    ; $7b9a: $46
    ld b, d                                       ; $7b9b: $42
    ldh [$80], a                                  ; $7b9c: $e0 $80
    add l                                         ; $7b9e: $85
    db $e3                                        ; $7b9f: $e3

jr_061_7ba0:
    ld sp, hl                                     ; $7ba0: $f9
    pop bc                                        ; $7ba1: $c1
    nop                                           ; $7ba2: $00
    ld a, c                                       ; $7ba3: $79
    ldh [$f8], a                                  ; $7ba4: $e0 $f8
    jp $a1b1                                      ; $7ba6: $c3 $b1 $a1


    rst $20                                       ; $7ba9: $e7
    add b                                         ; $7baa: $80
    or c                                          ; $7bab: $b1
    xor [hl]                                      ; $7bac: $ae
    jp $13a5                                      ; $7bad: $c3 $a5 $13


    and c                                         ; $7bb0: $a1
    adc d                                         ; $7bb1: $8a
    and b                                         ; $7bb2: $a0
    ccf                                           ; $7bb3: $3f
    sbc [hl]                                      ; $7bb4: $9e
    ld b, [hl]                                    ; $7bb5: $46
    xor [hl]                                      ; $7bb6: $ae
    ld b, [hl]                                    ; $7bb7: $46
    ld a, c                                       ; $7bb8: $79
    adc l                                         ; $7bb9: $8d
    ret nz                                        ; $7bba: $c0

    rst $20                                       ; $7bbb: $e7
    cp a                                          ; $7bbc: $bf
    ld [c], a                                     ; $7bbd: $e2
    add b                                         ; $7bbe: $80
    ld a, [c]                                     ; $7bbf: $f2
    and c                                         ; $7bc0: $a1
    ld l, [hl]                                    ; $7bc1: $6e
    and b                                         ; $7bc2: $a0
    rst $28                                       ; $7bc3: $ef
    add c                                         ; $7bc4: $81
    or c                                          ; $7bc5: $b1
    xor [hl]                                      ; $7bc6: $ae
    ld sp, hl                                     ; $7bc7: $f9
    ld b, l                                       ; $7bc8: $45
    ld h, d                                       ; $7bc9: $62
    pop hl                                        ; $7bca: $e1
    dec b                                         ; $7bcb: $05
    jp nz, Jump_061_6eaf                          ; $7bcc: $c2 $af $6e

    add c                                         ; $7bcf: $81
    ld [c], a                                     ; $7bd0: $e2
    add e                                         ; $7bd1: $83
    adc c                                         ; $7bd2: $89
    adc b                                         ; $7bd3: $88
    rst $38                                       ; $7bd4: $ff
    ldh [$89], a                                  ; $7bd5: $e0 $89
    add e                                         ; $7bd7: $83
    ld a, [hl]                                    ; $7bd8: $7e
    ld [c], a                                     ; $7bd9: $e2
    ld h, b                                       ; $7bda: $60
    ld a, [c]                                     ; $7bdb: $f2
    and d                                         ; $7bdc: $a2
    rst $28                                       ; $7bdd: $ef
    add d                                         ; $7bde: $82
    sbc l                                         ; $7bdf: $9d
    and b                                         ; $7be0: $a0
    add b                                         ; $7be1: $80
    ld [hl], a                                    ; $7be2: $77
    ld c, b                                       ; $7be3: $48
    add b                                         ; $7be4: $80
    ret nc                                        ; $7be5: $d0

    pop de                                        ; $7be6: $d1
    call nz, $fea0                                ; $7be7: $c4 $a0 $fe
    ld b, c                                       ; $7bea: $41
    pop hl                                        ; $7beb: $e1
    adc d                                         ; $7bec: $8a
    add l                                         ; $7bed: $85
    ld b, l                                       ; $7bee: $45
    ld c, b                                       ; $7bef: $48
    ld d, e                                       ; $7bf0: $53
    ld b, l                                       ; $7bf1: $45

jr_061_7bf2:
    add l                                         ; $7bf2: $85
    rra                                           ; $7bf3: $1f
    add [hl]                                      ; $7bf4: $86
    add e                                         ; $7bf5: $83
    ld b, [hl]                                    ; $7bf6: $46
    add e                                         ; $7bf7: $83
    add h                                         ; $7bf8: $84
    ld a, [c]                                     ; $7bf9: $f2
    and h                                         ; $7bfa: $a4
    jr z, jr_061_7ba0                             ; $7bfb: $28 $a3

    nop                                           ; $7bfd: $00
    cp b                                          ; $7bfe: $b8
    ld hl, sp+$48                                 ; $7bff: $f8 $48
    add b                                         ; $7c01: $80
    cp $c2                                        ; $7c02: $fe $c2
    ld bc, $81e1                                  ; $7c04: $01 $e1 $81
    ld b, l                                       ; $7c07: $45
    ld c, b                                       ; $7c08: $48
    ld h, b                                       ; $7c09: $60
    ld d, h                                       ; $7c0a: $54
    ld a, a                                       ; $7c0b: $7f
    ld b, h                                       ; $7c0c: $44
    ld b, [hl]                                    ; $7c0d: $46
    add l                                         ; $7c0e: $85
    add a                                         ; $7c0f: $87
    adc b                                         ; $7c10: $88
    add a                                         ; $7c11: $87
    add l                                         ; $7c12: $85
    ld a, [c]                                     ; $7c13: $f2
    and d                                         ; $7c14: $a2
    adc l                                         ; $7c15: $8d
    sbc [hl]                                      ; $7c16: $9e
    xor h                                         ; $7c17: $ac
    add b                                         ; $7c18: $80
    sub $d7                                       ; $7c19: $d6 $d7
    nop                                           ; $7c1b: $00
    cp d                                          ; $7c1c: $ba
    ld c, b                                       ; $7c1d: $48
    add b                                         ; $7c1e: $80
    adc b                                         ; $7c1f: $88
    add b                                         ; $7c20: $80
    and c                                         ; $7c21: $a1
    cp $c1                                        ; $7c22: $fe $c1
    pop bc                                        ; $7c24: $c1
    add e                                         ; $7c25: $83
    add h                                         ; $7c26: $84
    ld b, h                                       ; $7c27: $44
    ld d, h                                       ; $7c28: $54
    ld d, h                                       ; $7c29: $54
    dec l                                         ; $7c2a: $2d
    inc l                                         ; $7c2b: $2c
    dec c                                         ; $7c2c: $0d
    cp l                                          ; $7c2d: $bd
    or a                                          ; $7c2e: $b7
    add $af                                       ; $7c2f: $c6 $af
    sbc [hl]                                      ; $7c31: $9e
    rst $28                                       ; $7c32: $ef
    ld h, d                                       ; $7c33: $62
    add b                                         ; $7c34: $80
    db $db                                        ; $7c35: $db
    jp z, Jump_000_0461                           ; $7c36: $ca $61 $04

    and b                                         ; $7c39: $a0
    rst $38                                       ; $7c3a: $ff
    add d                                         ; $7c3b: $82
    add e                                         ; $7c3c: $83
    add e                                         ; $7c3d: $83
    add [hl]                                      ; $7c3e: $86
    add l                                         ; $7c3f: $85
    ld b, [hl]                                    ; $7c40: $46
    ld b, l                                       ; $7c41: $45
    cp l                                          ; $7c42: $bd
    rst $38                                       ; $7c43: $ff
    cp [hl]                                       ; $7c44: $be
    jr nz, jr_061_7c79                            ; $7c45: $20 $32

    ld b, e                                       ; $7c47: $43
    ld b, l                                       ; $7c48: $45
    ld b, [hl]                                    ; $7c49: $46
    ld b, [hl]                                    ; $7c4a: $46
    ld b, l                                       ; $7c4b: $45
    ld c, $fc                                     ; $7c4c: $0e $fc
    ldh [rDMA], a                                 ; $7c4e: $e0 $46
    ld b, [hl]                                    ; $7c50: $46
    sbc [hl]                                      ; $7c51: $9e
    nop                                           ; $7c52: $00
    db $e3                                        ; $7c53: $e3
    add b                                         ; $7c54: $80
    jp c, Jump_061_60ca                           ; $7c55: $da $ca $60

    push bc                                       ; $7c58: $c5
    add c                                         ; $7c59: $81
    ei                                            ; $7c5a: $fb
    add l                                         ; $7c5b: $85
    add a                                         ; $7c5c: $87
    ld c, h                                       ; $7c5d: $4c
    ld [c], a                                     ; $7c5e: $e2
    ld [hl-], a                                   ; $7c5f: $32
    jr nz, @+$22                                  ; $7c60: $20 $20

    inc h                                         ; $7c62: $24
    dec sp                                        ; $7c63: $3b
    ld e, a                                       ; $7c64: $5f
    ld [hl], $45                                  ; $7c65: $36 $45
    ld b, [hl]                                    ; $7c67: $46
    ld c, d                                       ; $7c68: $4a
    ld b, a                                       ; $7c69: $47
    cp a                                          ; $7c6a: $bf
    pop hl                                        ; $7c6b: $e1
    and c                                         ; $7c6c: $a1
    jr z, jr_061_7bf2                             ; $7c6d: $28 $83

    add $80                                       ; $7c6f: $c6 $80
    jp c, $d5d4                                   ; $7c71: $da $d4 $d5

    add [hl]                                      ; $7c74: $86
    add c                                         ; $7c75: $81
    ld [bc], a                                    ; $7c76: $02
    and c                                         ; $7c77: $a1
    db $fc                                        ; $7c78: $fc

jr_061_7c79:
    add c                                         ; $7c79: $81
    cp l                                          ; $7c7a: $bd
    ld sp, $2bff                                  ; $7c7b: $31 $ff $2b
    inc a                                         ; $7c7e: $3c
    dec [hl]                                      ; $7c7f: $35
    dec [hl]                                      ; $7c80: $35
    jr c, jr_061_7cba                             ; $7c81: $38 $37

    ld d, l                                       ; $7c83: $55
    ld h, c                                       ; $7c84: $61
    ld hl, $805c                                  ; $7c85: $21 $5c $80
    ld [c], a                                     ; $7c88: $e2
    nop                                           ; $7c89: $00
    pop hl                                        ; $7c8a: $e1
    add b                                         ; $7c8b: $80
    reti                                          ; $7c8c: $d9


    ret                                           ; $7c8d: $c9


    ld b, c                                       ; $7c8e: $41
    sbc [hl]                                      ; $7c8f: $9e
    call nz, $c282                                ; $7c90: $c4 $82 $c2
    add b                                         ; $7c93: $80
    cp [hl]                                       ; $7c94: $be
    db $fc                                        ; $7c95: $fc
    add b                                         ; $7c96: $80
    ld d, c                                       ; $7c97: $51
    ld e, a                                       ; $7c98: $5f
    ld d, h                                       ; $7c99: $54
    ld a, [hl-]                                   ; $7c9a: $3a
    dec [hl]                                      ; $7c9b: $35
    rst $38                                       ; $7c9c: $ff
    ldh [rWY], a                                  ; $7c9d: $e0 $4a
    add c                                         ; $7c9f: $81
    ld d, [hl]                                    ; $7ca0: $56
    ccf                                           ; $7ca1: $3f
    pop hl                                        ; $7ca2: $e1
    nop                                           ; $7ca3: $00
    db $e3                                        ; $7ca4: $e3
    nop                                           ; $7ca5: $00
    cp l                                          ; $7ca6: $bd
    ld b, c                                       ; $7ca7: $41
    and b                                         ; $7ca8: $a0
    cp [hl]                                       ; $7ca9: $be
    db $e4                                        ; $7caa: $e4
    cp [hl]                                       ; $7cab: $be
    add b                                         ; $7cac: $80
    ld b, e                                       ; $7cad: $43
    sbc e                                         ; $7cae: $9b
    ld e, e                                       ; $7caf: $5b
    add hl, sp                                    ; $7cb0: $39
    ret nz                                        ; $7cb1: $c0

    ldh [$3c], a                                  ; $7cb2: $e0 $3c
    ld c, a                                       ; $7cb4: $4f
    ret nz                                        ; $7cb5: $c0

    ld [c], a                                     ; $7cb6: $e2
    ld sp, $da81                                  ; $7cb7: $31 $81 $da

jr_061_7cba:
    pop hl                                        ; $7cba: $e1
    db $db                                        ; $7cbb: $db
    nop                                           ; $7cbc: $00
    cp l                                          ; $7cbd: $bd
    pop bc                                        ; $7cbe: $c1
    and b                                         ; $7cbf: $a0
    ret nz                                        ; $7cc0: $c0

    add c                                         ; $7cc1: $81
    cp [hl]                                       ; $7cc2: $be
    add d                                         ; $7cc3: $82

Jump_061_7cc4:
    adc [hl]                                      ; $7cc4: $8e
    ld a, h                                       ; $7cc5: $7c
    ld a, l                                       ; $7cc6: $7d
    bit 0, l                                      ; $7cc7: $cb $45
    ld [hl], $7f                                  ; $7cc9: $36 $7f
    ldh [rHDMA5], a                               ; $7ccb: $e0 $55
    add b                                         ; $7ccd: $80
    ld [c], a                                     ; $7cce: $e2

jr_061_7ccf:
    xor a                                         ; $7ccf: $af
    ld h, c                                       ; $7cd0: $61
    ret nc                                        ; $7cd1: $d0

    pop de                                        ; $7cd2: $d1
    and b                                         ; $7cd3: $a0
    nop                                           ; $7cd4: $00
    ld d, [hl]                                    ; $7cd5: $56
    inc c                                         ; $7cd6: $0c
    ld b, d                                       ; $7cd7: $42
    ret nz                                        ; $7cd8: $c0

    call nz, $837f                                ; $7cd9: $c4 $7f $83
    inc bc                                        ; $7cdc: $03
    and d                                         ; $7cdd: $a2
    ld b, h                                       ; $7cde: $44
    cp $c0                                        ; $7cdf: $fe $c0
    add hl, sp                                    ; $7ce1: $39
    dec b                                         ; $7ce2: $05
    ld b, e                                       ; $7ce3: $43
    dec hl                                        ; $7ce4: $2b
    db $e3                                        ; $7ce5: $e3
    sbc [hl]                                      ; $7ce6: $9e
    db $fc                                        ; $7ce7: $fc
    add l                                         ; $7ce8: $85
    and $23                                       ; $7ce9: $e6 $23
    add b                                         ; $7ceb: $80
    dec bc                                        ; $7cec: $0b
    sub [hl]                                      ; $7ced: $96
    ld b, d                                       ; $7cee: $42
    call Call_061_6c41                            ; $7cef: $cd $41 $6c
    cp [hl]                                       ; $7cf2: $be
    jp $84be                                      ; $7cf3: $c3 $be $84


    add c                                         ; $7cf6: $81
    ld b, l                                       ; $7cf7: $45
    cp $c0                                        ; $7cf8: $fe $c0
    ld a, [hl-]                                   ; $7cfa: $3a
    ld b, l                                       ; $7cfb: $45
    ld l, h                                       ; $7cfc: $6c
    add c                                         ; $7cfd: $81
    inc c                                         ; $7cfe: $0c
    ld a, [hl]                                    ; $7cff: $7e
    pop bc                                        ; $7d00: $c1
    xor l                                         ; $7d01: $ad
    ld b, c                                       ; $7d02: $41
    ret c                                         ; $7d03: $d8

    reti                                          ; $7d04: $d9


    db $e4                                        ; $7d05: $e4
    jr nz, @-$53                                  ; $7d06: $20 $ab

    ld c, b                                       ; $7d08: $48
    inc c                                         ; $7d09: $0c
    ld b, a                                       ; $7d0a: $47
    ld a, $c8                                     ; $7d0b: $3e $c8
    jr nc, @-$01                                  ; $7d0d: $30 $fd

    and b                                         ; $7d0f: $a0
    ld a, h                                       ; $7d10: $7c
    ld h, c                                       ; $7d11: $61
    ld b, l                                       ; $7d12: $45
    and b                                         ; $7d13: $a0
    cp $c0                                        ; $7d14: $fe $c0
    inc a                                         ; $7d16: $3c
    ld b, h                                       ; $7d17: $44
    db $ec                                        ; $7d18: $ec
    ld h, d                                       ; $7d19: $62
    scf                                           ; $7d1a: $37
    add d                                         ; $7d1b: $82
    rrca                                          ; $7d1c: $0f
    jp nc, $dad3                                  ; $7d1d: $d2 $d3 $da

    db $db                                        ; $7d20: $db
    db $e4                                        ; $7d21: $e4
    jr nz, jr_061_7ccf                            ; $7d22: $20 $ab

    ld c, b                                       ; $7d24: $48
    sbc [hl]                                      ; $7d25: $9e
    rlca                                          ; $7d26: $07
    pop de                                        ; $7d27: $d1
    ld hl, $7ef4                                  ; $7d28: $21 $f4 $7e
    push hl                                       ; $7d2b: $e5
    rlca                                          ; $7d2c: $07
    and c                                         ; $7d2d: $a1
    ld b, [hl]                                    ; $7d2e: $46
    cp d                                          ; $7d2f: $ba
    and d                                         ; $7d30: $a2
    scf                                           ; $7d31: $37
    jr c, jr_061_7d69                             ; $7d32: $38 $35

    ld b, d                                       ; $7d34: $42
    nop                                           ; $7d35: $00
    db $ed                                        ; $7d36: $ed
    jp Jump_061_44ad                              ; $7d37: $c3 $ad $44


    daa                                           ; $7d3a: $27
    ld b, d                                       ; $7d3b: $42
    dec a                                         ; $7d3c: $3d
    rst $20                                       ; $7d3d: $e7
    nop                                           ; $7d3e: $00
    ld c, l                                       ; $7d3f: $4d
    cp h                                          ; $7d40: $bc
    and c                                         ; $7d41: $a1
    cp [hl]                                       ; $7d42: $be
    ld b, b                                       ; $7d43: $40
    rlca                                          ; $7d44: $07
    and b                                         ; $7d45: $a0
    ld c, $06                                     ; $7d46: $0e $06
    and e                                         ; $7d48: $a3
    ld b, [hl]                                    ; $7d49: $46
    ld b, l                                       ; $7d4a: $45
    ccf                                           ; $7d4b: $3f
    add b                                         ; $7d4c: $80
    and d                                         ; $7d4d: $a2
    ld a, [hl]                                    ; $7d4e: $7e
    push hl                                       ; $7d4f: $e5
    sbc $25                                       ; $7d50: $de $25
    add sp, $25                                   ; $7d52: $e8 $25
    jr nz, jr_061_7d56                            ; $7d54: $20 $00

jr_061_7d56:
    ld c, e                                       ; $7d56: $4b

jr_061_7d57:
    db $fc                                        ; $7d57: $fc
    pop bc                                        ; $7d58: $c1
    pop bc                                        ; $7d59: $c1
    ld bc, $a5b8                                  ; $7d5a: $01 $b8 $a5
    ld a, [$9cec]                                 ; $7d5d: $fa $ec $9c
    rst $28                                       ; $7d60: $ef
    ld b, b                                       ; $7d61: $40
    db $f4                                        ; $7d62: $f4
    ld h, d                                       ; $7d63: $62
    nop                                           ; $7d64: $00
    add sp, $27                                   ; $7d65: $e8 $27
    sbc [hl]                                      ; $7d67: $9e
    dec bc                                        ; $7d68: $0b

jr_061_7d69:
    call $de01                                    ; $7d69: $cd $01 $de
    jp nz, Jump_061_4079                          ; $7d6c: $c2 $79 $40

    call z, $ffe6                                 ; $7d6f: $cc $e6 $ff
    ldh [$b1], a                                  ; $7d72: $e0 $b1
    jp hl                                         ; $7d74: $e9


    nop                                           ; $7d75: $00
    ld hl, sp-$3d                                 ; $7d76: $f8 $c3
    ld a, d                                       ; $7d78: $7a
    push bc                                       ; $7d79: $c5
    nop                                           ; $7d7a: $00
    ld c, e                                       ; $7d7b: $4b
    call $de01                                    ; $7d7c: $cd $01 $de
    jp nz, $40f7                                  ; $7d7f: $c2 $f7 $40

    ld c, h                                       ; $7d82: $4c
    rst $20                                       ; $7d83: $e7
    ld l, d                                       ; $7d84: $6a
    push bc                                       ; $7d85: $c5
    ret nz                                        ; $7d86: $c0

    inc h                                         ; $7d87: $24
    and h                                         ; $7d88: $a4
    ld hl, sp-$3c                                 ; $7d89: $f8 $c4
    dec h                                         ; $7d8b: $25
    inc hl                                        ; $7d8c: $23
    nop                                           ; $7d8d: $00
    ld c, l                                       ; $7d8e: $4d
    jr c, jr_061_7df5                             ; $7d8f: $38 $64

    rst $30                                       ; $7d91: $f7
    and h                                         ; $7d92: $a4
    sbc h                                         ; $7d93: $9c
    sbc l                                         ; $7d94: $9d
    ld de, $359f                                  ; $7d95: $11 $9f $35
    nop                                           ; $7d98: $00
    add sp, $42                                   ; $7d99: $e8 $42
    push af                                       ; $7d9b: $f5
    pop bc                                        ; $7d9c: $c1
    ld b, c                                       ; $7d9d: $41
    ld [hl], l                                    ; $7d9e: $75
    add c                                         ; $7d9f: $81
    db $f4                                        ; $7da0: $f4
    ld h, c                                       ; $7da1: $61
    sub h                                         ; $7da2: $94
    ld [bc], a                                    ; $7da3: $02
    nop                                           ; $7da4: $00
    dec h                                         ; $7da5: $25
    ld [hl+], a                                   ; $7da6: $22
    add b                                         ; $7da7: $80
    ld l, e                                       ; $7da8: $6b
    add d                                         ; $7da9: $82
    pop hl                                        ; $7daa: $e1
    ld [hl], $84                                  ; $7dab: $36 $84
    adc $e2                                       ; $7dad: $ce $e2
    ld a, [bc]                                    ; $7daf: $0a
    add b                                         ; $7db0: $80
    dec [hl]                                      ; $7db1: $35
    nop                                           ; $7db2: $00
    xor b                                         ; $7db3: $a8
    add h                                         ; $7db4: $84
    scf                                           ; $7db5: $37
    ld b, l                                       ; $7db6: $45
    ld [hl], $a6                                  ; $7db7: $36 $a6
    ld [hl], c                                    ; $7db9: $71
    add b                                         ; $7dba: $80
    ld b, [hl]                                    ; $7dbb: $46
    xor [hl]                                      ; $7dbc: $ae
    db $f4                                        ; $7dbd: $f4
    ld h, b                                       ; $7dbe: $60
    ld hl, sp-$5f                                 ; $7dbf: $f8 $a1
    adc b                                         ; $7dc1: $88
    add b                                         ; $7dc2: $80
    ld [hl], c                                    ; $7dc3: $71
    nop                                           ; $7dc4: $00
    db $e3                                        ; $7dc5: $e3
    halt                                          ; $7dc6: $76
    ld b, e                                       ; $7dc7: $43
    sub c                                         ; $7dc8: $91
    ld c, d                                       ; $7dc9: $4a
    add d                                         ; $7dca: $82
    ld d, l                                       ; $7dcb: $55
    db $e3                                        ; $7dcc: $e3
    xor b                                         ; $7dcd: $a8
    add c                                         ; $7dce: $81
    ld b, l                                       ; $7dcf: $45
    cpl                                           ; $7dd0: $2f
    ld [hl], $62                                  ; $7dd1: $36 $62
    and a                                         ; $7dd3: $a7
    ld h, [hl]                                    ; $7dd4: $66
    jr nc, jr_061_7d57                            ; $7dd5: $30 $80

    xor a                                         ; $7dd7: $af
    inc [hl]                                      ; $7dd8: $34
    ld h, d                                       ; $7dd9: $62
    db $f4                                        ; $7dda: $f4
    add l                                         ; $7ddb: $85
    ld hl, sp-$80                                 ; $7ddc: $f8 $80
    ld l, e                                       ; $7dde: $6b
    inc e                                         ; $7ddf: $1c
    ld b, c                                       ; $7de0: $41
    ld [hl], $83                                  ; $7de1: $36 $83
    and b                                         ; $7de3: $a0
    sbc [hl]                                      ; $7de4: $9e
    sub b                                         ; $7de5: $90
    ld b, [hl]                                    ; $7de6: $46
    ld b, [hl]                                    ; $7de7: $46
    pop hl                                        ; $7de8: $e1
    sub c                                         ; $7de9: $91
    jp z, $a861                                   ; $7dea: $ca $61 $a8

    ld h, c                                       ; $7ded: $61
    ld a, [c]                                     ; $7dee: $f2
    ret nz                                        ; $7def: $c0

    pop bc                                        ; $7df0: $c1
    ldh [$67], a                                  ; $7df1: $e0 $67
    and e                                         ; $7df3: $a3
    ld l, b                                       ; $7df4: $68

jr_061_7df5:
    ld [bc], a                                    ; $7df5: $02
    cp a                                          ; $7df6: $bf
    ldh [$9c], a                                  ; $7df7: $e0 $9c
    dec l                                         ; $7df9: $2d
    ldh [$72], a                                  ; $7dfa: $e0 $72
    ld b, c                                       ; $7dfc: $41
    add b                                         ; $7dfd: $80
    ld de, $039e                                  ; $7dfe: $11 $9e $03
    ld a, b                                       ; $7e01: $78
    ld h, e                                       ; $7e02: $63
    add b                                         ; $7e03: $80
    ldh [$7d], a                                  ; $7e04: $e0 $7d
    sub b                                         ; $7e06: $90
    inc c                                         ; $7e07: $0c
    and c                                         ; $7e08: $a1
    sub $d7                                       ; $7e09: $d6 $d7
    jp nc, $9ed3                                  ; $7e0b: $d2 $d3 $9e

jr_061_7e0e:
    pop bc                                        ; $7e0e: $c1
    ld [c], a                                     ; $7e0f: $e2
    ccf                                           ; $7e10: $3f
    dec [hl]                                      ; $7e11: $35
    dec [hl]                                      ; $7e12: $35
    ld l, h                                       ; $7e13: $6c
    or a                                          ; $7e14: $b7
    cp b                                          ; $7e15: $b8
    ld b, d                                       ; $7e16: $42
    ld hl, sp-$7d                                 ; $7e17: $f8 $83
    add b                                         ; $7e19: $80
    ld [de], a                                    ; $7e1a: $12
    ldh a, [$7a]                                  ; $7e1b: $f0 $7a
    inc b                                         ; $7e1d: $04
    ld a, b                                       ; $7e1e: $78
    ld h, d                                       ; $7e1f: $62
    ld b, c                                       ; $7e20: $41
    pop hl                                        ; $7e21: $e1
    ret nz                                        ; $7e22: $c0

    ldh [$d4], a                                  ; $7e23: $e0 $d4
    push de                                       ; $7e25: $d5
    ret c                                         ; $7e26: $d8

    reti                                          ; $7e27: $d9


    rst $38                                       ; $7e28: $ff
    call nc, $9ed5                                ; $7e29: $d4 $d5 $9e
    xor [hl]                                      ; $7e2c: $ae
    ld [hl], $b9                                  ; $7e2d: $36 $b9
    cp d                                          ; $7e2f: $ba
    and e                                         ; $7e30: $a3
    ccf                                           ; $7e31: $3f
    dec [hl]                                      ; $7e32: $35
    ld l, h                                       ; $7e33: $6c
    ld l, a                                       ; $7e34: $6f
    ld l, [hl]                                    ; $7e35: $6e
    ld [hl], $45                                  ; $7e36: $36 $45
    or [hl]                                       ; $7e38: $b6
    ld b, c                                       ; $7e39: $41
    scf                                           ; $7e3a: $37
    daa                                           ; $7e3b: $27
    ldh [$b0], a                                  ; $7e3c: $e0 $b0
    dec c                                         ; $7e3e: $0d
    ld a, d                                       ; $7e3f: $7a
    ld bc, $e442                                  ; $7e40: $01 $42 $e4
    adc a                                         ; $7e43: $8f
    and h                                         ; $7e44: $a4
    ld c, b                                       ; $7e45: $48
    ld hl, $af9e                                  ; $7e46: $21 $9e $af
    ld [hl], $07                                  ; $7e49: $36 $07
    ld l, [hl]                                    ; $7e4b: $6e
    ld l, a                                       ; $7e4c: $6f
    ld l, h                                       ; $7e4d: $6c
    pop bc                                        ; $7e4e: $c1
    ld [c], a                                     ; $7e4f: $e2
    db $ec                                        ; $7e50: $ec
    pop bc                                        ; $7e51: $c1
    scf                                           ; $7e52: $37
    jr z, @-$4e                                   ; $7e53: $28 $b0

    ld l, l                                       ; $7e55: $6d
    sbc d                                         ; $7e56: $9a
    inc bc                                        ; $7e57: $03
    db $10                                        ; $7e58: $10
    ret nz                                        ; $7e59: $c0

    db $e3                                        ; $7e5a: $e3
    dec c                                         ; $7e5b: $0d
    add d                                         ; $7e5c: $82
    adc b                                         ; $7e5d: $88
    ld b, b                                       ; $7e5e: $40
    ld [$4521], a                                 ; $7e5f: $ea $21 $45
    cp a                                          ; $7e62: $bf
    ldh [$c1], a                                  ; $7e63: $e0 $c1
    ld [c], a                                     ; $7e65: $e2
    or [hl]                                       ; $7e66: $b6
    ld b, d                                       ; $7e67: $42
    nop                                           ; $7e68: $00
    jr c, jr_061_7e0e                             ; $7e69: $38 $a3

    add b                                         ; $7e6b: $80
    ld l, e                                       ; $7e6c: $6b
    ld a, d                                       ; $7e6d: $7a
    ld h, a                                       ; $7e6e: $67
    cp b                                          ; $7e6f: $b8
    ld bc, $c182                                  ; $7e70: $01 $82 $c1
    ld b, d                                       ; $7e73: $42
    jp nz, $0029                                  ; $7e74: $c2 $29 $00

    xor b                                         ; $7e77: $a8
    ld b, d                                       ; $7e78: $42
    nop                                           ; $7e79: $00
    cp a                                          ; $7e7a: $bf
    ldh [$c1], a                                  ; $7e7b: $e0 $c1
    ld [c], a                                     ; $7e7d: $e2
    or [hl]                                       ; $7e7e: $b6
    inc hl                                        ; $7e7f: $23
    dec de                                        ; $7e80: $1b
    and b                                         ; $7e81: $a0
    add b                                         ; $7e82: $80
    dec c                                         ; $7e83: $0d
    ld a, d                                       ; $7e84: $7a
    dec b                                         ; $7e85: $05
    ret nc                                        ; $7e86: $d0

    pop bc                                        ; $7e87: $c1
    ret nc                                        ; $7e88: $d0

    and d                                         ; $7e89: $a2
    nop                                           ; $7e8a: $00
    add d                                         ; $7e8b: $82
    ret nz                                        ; $7e8c: $c0

    ld bc, $82e2                                  ; $7e8d: $01 $e2 $82
    ld [bc], a                                    ; $7e90: $02
    ld a, [hl]                                    ; $7e91: $7e
    pop hl                                        ; $7e92: $e1
    pop bc                                        ; $7e93: $c1
    db $e3                                        ; $7e94: $e3
    add d                                         ; $7e95: $82
    jp nz, Jump_000_0033                          ; $7e96: $c2 $33 $00

    add b                                         ; $7e99: $80
    ret nc                                        ; $7e9a: $d0

    ld [$e243], sp                                ; $7e9b: $08 $43 $e2
    ret nc                                        ; $7e9e: $d0

    pop bc                                        ; $7e9f: $c1
    ld [bc], a                                    ; $7ea0: $02
    jp nz, Jump_000_1690                          ; $7ea1: $c2 $90 $16

    ld [c], a                                     ; $7ea4: $e2
    xor a                                         ; $7ea5: $af
    and d                                         ; $7ea6: $a2
    ld l, d                                       ; $7ea7: $6a
    add e                                         ; $7ea8: $83
    or $81                                        ; $7ea9: $f6 $81
    ld b, $38                                     ; $7eab: $06 $38
    inc h                                         ; $7ead: $24
    jp c, $80db                                   ; $7eae: $da $db $80

    pop de                                        ; $7eb1: $d1
    ld a, d                                       ; $7eb2: $7a
    ld h, d                                       ; $7eb3: $62
    or [hl]                                       ; $7eb4: $b6
    ld [bc], a                                    ; $7eb5: $02
    ld [bc], a                                    ; $7eb6: $02
    pop bc                                        ; $7eb7: $c1
    ld b, d                                       ; $7eb8: $42
    ret nz                                        ; $7eb9: $c0

    nop                                           ; $7eba: $00
    ld bc, $7ee2                                  ; $7ebb: $01 $e2 $7e
    db $e4                                        ; $7ebe: $e4
    and b                                         ; $7ebf: $a0
    inc hl                                        ; $7ec0: $23
    inc b                                         ; $7ec1: $04
    pop bc                                        ; $7ec2: $c1
    ld b, e                                       ; $7ec3: $43
    and $00                                       ; $7ec4: $e6 $00
    xor l                                         ; $7ec6: $ad
    ld a, d                                       ; $7ec7: $7a
    ld h, h                                       ; $7ec8: $64
    ld [bc], a                                    ; $7ec9: $02
    and c                                         ; $7eca: $a1
    nop                                           ; $7ecb: $00
    jp nz, Jump_000_01a3                          ; $7ecc: $c2 $a3 $01

    ld [c], a                                     ; $7ecf: $e2
    ld h, l                                       ; $7ed0: $65
    ld [bc], a                                    ; $7ed1: $02
    inc c                                         ; $7ed2: $0c
    add c                                         ; $7ed3: $81
    db $fc                                        ; $7ed4: $fc

Call_061_7ed5:
    push hl                                       ; $7ed5: $e5
    ld b, e                                       ; $7ed6: $43
    and $80                                       ; $7ed7: $e6 $80
    ret nc                                        ; $7ed9: $d0

    ld a, d                                       ; $7eda: $7a
    ld b, c                                       ; $7edb: $41
    nop                                           ; $7edc: $00
    ld b, d                                       ; $7edd: $42
    add c                                         ; $7ede: $81
    add d                                         ; $7edf: $82

Jump_061_7ee0:
    and e                                         ; $7ee0: $a3
    ld bc, $4fe2                                  ; $7ee1: $01 $e2 $4f
    ld [hl+], a                                   ; $7ee4: $22
    jp nz, $fc01                                  ; $7ee5: $c2 $01 $fc

    push hl                                       ; $7ee8: $e5
    ld b, e                                       ; $7ee9: $43
    and $80                                       ; $7eea: $e6 $80
    ret nc                                        ; $7eec: $d0

    ld b, $04                                     ; $7eed: $06 $04
    and e                                         ; $7eef: $a3

Jump_061_7ef0:
    xor [hl]                                      ; $7ef0: $ae
    xor a                                         ; $7ef1: $af
    ld b, b                                       ; $7ef2: $40
    pop hl                                        ; $7ef3: $e1
    inc c                                         ; $7ef4: $0c
    ld c, c                                       ; $7ef5: $49
    db $e4                                        ; $7ef6: $e4
    ld h, l                                       ; $7ef7: $65
    dec a                                         ; $7ef8: $3d
    dec l                                         ; $7ef9: $2d
    jr nc, jr_061_7f49                            ; $7efa: $30 $4d

    inc b                                         ; $7efc: $04
    ld a, d                                       ; $7efd: $7a
    ld b, c                                       ; $7efe: $41
    pop de                                        ; $7eff: $d1
    and b                                         ; $7f00: $a0
    sub b                                         ; $7f01: $90
    ld b, d                                       ; $7f02: $42
    and c                                         ; $7f03: $a1
    cp a                                          ; $7f04: $bf
    pop hl                                        ; $7f05: $e1
    inc c                                         ; $7f06: $0c
    ld b, l                                       ; $7f07: $45
    add sp, -$7d                                  ; $7f08: $e8 $83
    ldh [$83], a                                  ; $7f0a: $e0 $83
    ret c                                         ; $7f0c: $d8

    add b                                         ; $7f0d: $80
    ld de, $253d                                  ; $7f0e: $11 $3d $25
    nop                                           ; $7f11: $00
    ld [c], a                                     ; $7f12: $e2
    sbc [hl]                                      ; $7f13: $9e
    sub b                                         ; $7f14: $90
    add c                                         ; $7f15: $81
    and c                                         ; $7f16: $a1
    sub c                                         ; $7f17: $91
    sub b                                         ; $7f18: $90
    jr nz, jr_061_7f1b                            ; $7f19: $20 $00

jr_061_7f1b:
    and d                                         ; $7f1b: $a2
    push de                                       ; $7f1c: $d5
    and [hl]                                      ; $7f1d: $a6
    ld a, [$c3f2]                                 ; $7f1e: $fa $f2 $c3
    xor l                                         ; $7f21: $ad
    nop                                           ; $7f22: $00
    ld [c], a                                     ; $7f23: $e2
    and c                                         ; $7f24: $a1
    add c                                         ; $7f25: $81
    pop hl                                        ; $7f26: $e1
    ld a, a                                       ; $7f27: $7f
    pop hl                                        ; $7f28: $e1
    ld b, d                                       ; $7f29: $42
    jp z, $a004                                   ; $7f2a: $ca $04 $a0

    call c, $808e                                 ; $7f2d: $dc $8e $80
    sub $04                                       ; $7f30: $d6 $04
    add e                                         ; $7f32: $83
    ld b, h                                       ; $7f33: $44
    add c                                         ; $7f34: $81
    sub c                                         ; $7f35: $91
    ld a, a                                       ; $7f36: $7f
    ldh [rP1], a                                  ; $7f37: $e0 $00
    jp z, Jump_061_4904                           ; $7f39: $ca $04 $49

    cpl                                           ; $7f3c: $2f
    nop                                           ; $7f3d: $00
    cp b                                          ; $7f3e: $b8
    inc b                                         ; $7f3f: $04
    add h                                         ; $7f40: $84
    dec a                                         ; $7f41: $3d
    pop hl                                        ; $7f42: $e1
    cp [hl]                                       ; $7f43: $be
    and b                                         ; $7f44: $a0
    sub d                                         ; $7f45: $92
    res 0, b                                      ; $7f46: $cb $80
    rrca                                          ; $7f48: $0f

jr_061_7f49:
    nop                                           ; $7f49: $00
    nop                                           ; $7f4a: $00
    nop                                           ; $7f4b: $00
    pop bc                                        ; $7f4c: $c1
    nop                                           ; $7f4d: $00
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
    nop                                           ; $7f58: $00
    nop                                           ; $7f59: $00
    ld bc, $fe80                                  ; $7f5a: $01 $80 $fe
    ldh [rIE], a                                  ; $7f5d: $e0 $ff
    rst $38                                       ; $7f5f: $ff
    rst $38                                       ; $7f60: $ff
    rst $38                                       ; $7f61: $ff
    rst $38                                       ; $7f62: $ff
    add sp, $00                                   ; $7f63: $e8 $00
    nop                                           ; $7f65: $00
    nop                                           ; $7f66: $00
    ld [bc], a                                    ; $7f67: $02
    nop                                           ; $7f68: $00
    jr jr_061_7f7f                                ; $7f69: $18 $14

    ld [bc], a                                    ; $7f6b: $02
    ld bc, $1512                                  ; $7f6c: $01 $12 $15
    ld [bc], a                                    ; $7f6f: $02
    ld [bc], a                                    ; $7f70: $02
    inc de                                        ; $7f71: $13
    dec d                                         ; $7f72: $15
    ld [bc], a                                    ; $7f73: $02
    inc bc                                        ; $7f74: $03
    add hl, de                                    ; $7f75: $19
    dec d                                         ; $7f76: $15
    ld [bc], a                                    ; $7f77: $02
    inc b                                         ; $7f78: $04
    ld de, $0216                                  ; $7f79: $11 $16 $02
    dec b                                         ; $7f7c: $05
    db $10                                        ; $7f7d: $10
    rla                                           ; $7f7e: $17

jr_061_7f7f:
    ld [bc], a                                    ; $7f7f: $02
    ld b, $11                                     ; $7f80: $06 $11
    jr @+$04                                      ; $7f82: $18 $02

    rlca                                          ; $7f84: $07
    ld de, $021a                                  ; $7f85: $11 $1a $02
    ld [$1c26], sp                                ; $7f88: $08 $26 $1c
    ld [bc], a                                    ; $7f8b: $02
    add hl, bc                                    ; $7f8c: $09
    daa                                           ; $7f8d: $27
    dec e                                         ; $7f8e: $1d
    ld [bc], a                                    ; $7f8f: $02
    ld a, [bc]                                    ; $7f90: $0a
    ld d, $21                                     ; $7f91: $16 $21
    ld [bc], a                                    ; $7f93: $02
    dec bc                                        ; $7f94: $0b
    rla                                           ; $7f95: $17
    ld hl, $0c02                                  ; $7f96: $21 $02 $0c
    rrca                                          ; $7f99: $0f
    ld [hl+], a                                   ; $7f9a: $22
    ld [bc], a                                    ; $7f9b: $02
    dec c                                         ; $7f9c: $0d
    db $10                                        ; $7f9d: $10
    inc hl                                        ; $7f9e: $23
    ld [bc], a                                    ; $7f9f: $02
    ld c, $11                                     ; $7fa0: $0e $11
    inc hl                                        ; $7fa2: $23
    ld [bc], a                                    ; $7fa3: $02
    rrca                                          ; $7fa4: $0f
    inc h                                         ; $7fa5: $24
    dec h                                         ; $7fa6: $25
    ld [bc], a                                    ; $7fa7: $02
    db $10                                        ; $7fa8: $10
    dec h                                         ; $7fa9: $25
    ld h, $02                                     ; $7faa: $26 $02
    ld de, $2724                                  ; $7fac: $11 $24 $27
    ld [bc], a                                    ; $7faf: $02
    ld [de], a                                    ; $7fb0: $12
    add hl, de                                    ; $7fb1: $19
    dec hl                                        ; $7fb2: $2b
    ld [bc], a                                    ; $7fb3: $02
    inc de                                        ; $7fb4: $13
    ld [hl-], a                                   ; $7fb5: $32
    inc l                                         ; $7fb6: $2c
    ld [bc], a                                    ; $7fb7: $02
    inc d                                         ; $7fb8: $14
    inc sp                                        ; $7fb9: $33
    dec l                                         ; $7fba: $2d
    ld [bc], a                                    ; $7fbb: $02
    dec d                                         ; $7fbc: $15
    ld [hl-], a                                   ; $7fbd: $32
    ld l, $02                                     ; $7fbe: $2e $02
    ld d, $27                                     ; $7fc0: $16 $27
    cpl                                           ; $7fc2: $2f
    ld [bc], a                                    ; $7fc3: $02
    rla                                           ; $7fc4: $17
    daa                                           ; $7fc5: $27

Jump_061_7fc6:
    ld [hl-], a                                   ; $7fc6: $32
    ld [bc], a                                    ; $7fc7: $02
    jr jr_061_7fe1                                ; $7fc8: $18 $17

    ld a, [hl-]                                   ; $7fca: $3a
    ld [bc], a                                    ; $7fcb: $02
    add hl, de                                    ; $7fcc: $19
    ld d, $3b                                     ; $7fcd: $16 $3b
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

jr_061_7fe1:
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
