; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $066", ROMX[$4000], BANK[$66]

Call_066_4000:
    inc c                                         ; $4000: $0c
    ld b, b                                       ; $4001: $40
    ld hl, $3d48                                  ; $4002: $21 $48 $3d
    ld d, c                                       ; $4005: $51
    ld l, b                                       ; $4006: $68
    ld e, h                                       ; $4007: $5c
    and $65                                       ; $4008: $e6 $65
    cp c                                          ; $400a: $b9
    ld l, a                                       ; $400b: $6f
    inc d                                         ; $400c: $14
    ld b, b                                       ; $400d: $40
    ld c, e                                       ; $400e: $4b
    ld b, e                                       ; $400f: $43
    ld b, a                                       ; $4010: $47
    ld b, a                                       ; $4011: $47
    ld h, d                                       ; $4012: $62
    ld b, a                                       ; $4013: $47
    rrca                                          ; $4014: $0f
    dec c                                         ; $4015: $0d
    ld c, $0e                                     ; $4016: $0e $0e
    ld c, $fc                                     ; $4018: $0e $fc
    rst $38                                       ; $401a: $ff
    ld hl, sp-$09                                 ; $401b: $f8 $f7
    rst $38                                       ; $401d: $ff

Jump_066_401e:
    rst $38                                       ; $401e: $ff
    rst $38                                       ; $401f: $ff
    rst $38                                       ; $4020: $ff
    nop                                           ; $4021: $00
    rst $38                                       ; $4022: $ff
    rst $38                                       ; $4023: $ff
    rst $38                                       ; $4024: $ff
    rst $38                                       ; $4025: $ff
    rst $38                                       ; $4026: $ff
    rst $38                                       ; $4027: $ff
    or $f5                                        ; $4028: $f6 $f5
    ld a, [de]                                    ; $402a: $1a
    rst $38                                       ; $402b: $ff
    cp $df                                        ; $402c: $fe $df
    rst $38                                       ; $402e: $ff
    rst $38                                       ; $402f: $ff
    rst $38                                       ; $4030: $ff
    rst $38                                       ; $4031: $ff
    nop                                           ; $4032: $00
    rst $38                                       ; $4033: $ff
    rst $38                                       ; $4034: $ff
    rst $38                                       ; $4035: $ff
    rst $38                                       ; $4036: $ff
    rst $38                                       ; $4037: $ff
    rst $38                                       ; $4038: $ff
    ld [bc], a                                    ; $4039: $02
    rst $38                                       ; $403a: $ff
    db $ec                                        ; $403b: $ec
    db $ec                                        ; $403c: $ec
    rst $38                                       ; $403d: $ff
    pop hl                                        ; $403e: $e1
    ld [bc], a                                    ; $403f: $02
    rst $38                                       ; $4040: $ff
    and b                                         ; $4041: $a0
    rst $30                                       ; $4042: $f7
    ld b, b                                       ; $4043: $40
    db $db                                        ; $4044: $db
    rst $38                                       ; $4045: $ff
    rst $38                                       ; $4046: $ff
    rst $38                                       ; $4047: $ff
    rst $38                                       ; $4048: $ff
    rst $38                                       ; $4049: $ff
    rst $38                                       ; $404a: $ff
    rst $38                                       ; $404b: $ff
    cp $df                                        ; $404c: $fe $df
    ld a, [c]                                     ; $404e: $f2
    call Call_000_022d                            ; $404f: $cd $2d $02
    ret nz                                        ; $4052: $c0

    ld c, $ff                                     ; $4053: $0e $ff
    and b                                         ; $4055: $a0
    ld l, l                                       ; $4056: $6d
    ld l, l                                       ; $4057: $6d
    ld l, l                                       ; $4058: $6d
    ld a, [$fae1]                                 ; $4059: $fa $e1 $fa
    sub $a6                                       ; $405c: $d6 $a6
    ld a, [$c2c1]                                 ; $405e: $fa $c1 $c2
    add sp, -$41                                  ; $4061: $e8 $bf
    pop bc                                        ; $4063: $c1
    ld hl, sp-$21                                 ; $4064: $f8 $df
    ldh a, [$ef]                                  ; $4066: $f0 $ef
    ld l, l                                       ; $4068: $6d
    add c                                         ; $4069: $81
    pop bc                                        ; $406a: $c1
    ld c, l                                       ; $406b: $4d
    ld c, l                                       ; $406c: $4d
    dec c                                         ; $406d: $0d
    db $e3                                        ; $406e: $e3
    ld c, l                                       ; $406f: $4d
    dec l                                         ; $4070: $2d
    add b                                         ; $4071: $80
    pop hl                                        ; $4072: $e1
    ret nc                                        ; $4073: $d0

    rst $38                                       ; $4074: $ff
    add h                                         ; $4075: $84
    rst $08                                       ; $4076: $cf
    dec c                                         ; $4077: $0d
    dec c                                         ; $4078: $0d
    ld l, l                                       ; $4079: $6d
    dec c                                         ; $407a: $0d
    ld l, e                                       ; $407b: $6b
    rst $38                                       ; $407c: $ff
    ldh [rKEY1], a                                ; $407d: $e0 $4d
    dec l                                         ; $407f: $2d
    dec sp                                        ; $4080: $3b
    jp $ff02                                      ; $4081: $c3 $02 $ff


    inc c                                         ; $4084: $0c
    add $06                                       ; $4085: $c6 $06
    jp Jump_066_4d01                              ; $4087: $c3 $01 $4d


    add hl, bc                                    ; $408a: $09
    ldh [$f8], a                                  ; $408b: $e0 $f8
    ld [c], a                                     ; $408d: $e2
    db $f4                                        ; $408e: $f4
    jp nz, $e238                                  ; $408f: $c2 $38 $e2

    ld [bc], a                                    ; $4092: $02
    rst $38                                       ; $4093: $ff
    ld [$c6e2], sp                                ; $4094: $08 $e2 $c6
    and c                                         ; $4097: $a1
    ld a, $84                                     ; $4098: $3e $84
    ldh [$0d], a                                  ; $409a: $e0 $0d
    dec c                                         ; $409c: $0d
    ld l, e                                       ; $409d: $6b
    dec c                                         ; $409e: $0d
    ld c, e                                       ; $409f: $4b
    cp a                                          ; $40a0: $bf
    ld [c], a                                     ; $40a1: $e2
    pop de                                        ; $40a2: $d1
    cp a                                          ; $40a3: $bf
    db $10                                        ; $40a4: $10
    ret nz                                        ; $40a5: $c0

    db $ed                                        ; $40a6: $ed
    add h                                         ; $40a7: $84
    db $e3                                        ; $40a8: $e3
    cp l                                          ; $40a9: $bd
    ldh [rPCM12], a                               ; $40aa: $e0 $76
    ret nz                                        ; $40ac: $c0

    ld c, e                                       ; $40ad: $4b
    ret nz                                        ; $40ae: $c0

    rst $38                                       ; $40af: $ff
    adc b                                         ; $40b0: $88
    call $e145                                    ; $40b1: $cd $45 $e1
    rst $38                                       ; $40b4: $ff
    ld c, e                                       ; $40b5: $4b
    dec bc                                        ; $40b6: $0b
    dec c                                         ; $40b7: $0d
    dec bc                                        ; $40b8: $0b
    ld c, e                                       ; $40b9: $4b
    dec c                                         ; $40ba: $0d
    dec l                                         ; $40bb: $2d
    dec l                                         ; $40bc: $2d
    rrca                                          ; $40bd: $0f
    dec l                                         ; $40be: $2d
    ld c, e                                       ; $40bf: $4b
    ld l, l                                       ; $40c0: $6d
    dec l                                         ; $40c1: $2d
    dec a                                         ; $40c2: $3d
    db $e3                                        ; $40c3: $e3
    cp $df                                        ; $40c4: $fe $df
    sub e                                         ; $40c6: $93
    ret nz                                        ; $40c7: $c0

    ld a, [bc]                                    ; $40c8: $0a
    and d                                         ; $40c9: $a2
    db $ed                                        ; $40ca: $ed
    ld c, e                                       ; $40cb: $4b
    ld b, a                                       ; $40cc: $47
    pop hl                                        ; $40cd: $e1
    ld l, e                                       ; $40ce: $6b
    ld c, e                                       ; $40cf: $4b
    push bc                                       ; $40d0: $c5
    ret nz                                        ; $40d1: $c0

    dec l                                         ; $40d2: $2d
    dec l                                         ; $40d3: $2d
    dec bc                                        ; $40d4: $0b
    db $10                                        ; $40d5: $10

Jump_066_40d6:
    cp l                                          ; $40d6: $bd
    jp $c5e9                                      ; $40d7: $c3 $e9 $c5


    xor $8a                                       ; $40da: $ee $8a
    xor d                                         ; $40dc: $aa
    call nc, Call_000_094d                        ; $40dd: $d4 $4d $09
    ldh [rTMA], a                                 ; $40e0: $e0 $06
    ldh [$84], a                                  ; $40e2: $e0 $84
    pop hl                                        ; $40e4: $e1
    inc c                                         ; $40e5: $0c
    cp $c0                                        ; $40e6: $fe $c0
    ld a, h                                       ; $40e8: $7c
    ret nz                                        ; $40e9: $c0

    ld c, l                                       ; $40ea: $4d
    ld c, l                                       ; $40eb: $4d
    ld a, l                                       ; $40ec: $7d
    db $e3                                        ; $40ed: $e3
    db $f4                                        ; $40ee: $f4
    cp a                                          ; $40ef: $bf
    ld a, h                                       ; $40f0: $7c
    ld [c], a                                     ; $40f1: $e2
    adc a                                         ; $40f2: $8f
    db $e4                                        ; $40f3: $e4
    add d                                         ; $40f4: $82
    ld a, d                                       ; $40f5: $7a
    and b                                         ; $40f6: $a0
    dec bc                                        ; $40f7: $0b
    cp h                                          ; $40f8: $bc
    ret nz                                        ; $40f9: $c0

    db $fc                                        ; $40fa: $fc
    ldh [$38], a                                  ; $40fb: $e0 $38
    jp nz, $ffc0                                  ; $40fd: $c2 $c0 $ff

    pop hl                                        ; $4100: $e1
    jp nz, $f44d                                  ; $4101: $c2 $4d $f4

    daa                                           ; $4104: $27
    add b                                         ; $4105: $80
    dec bc                                        ; $4106: $0b
    jp nz, Jump_000_390b                          ; $4107: $c2 $0b $39

    pop hl                                        ; $410a: $e1
    dec hl                                        ; $410b: $2b
    ld a, [bc]                                    ; $410c: $0a
    ld l, d                                       ; $410d: $6a
    ld a, [bc]                                    ; $410e: $0a
    rlca                                          ; $410f: $07
    dec c                                         ; $4110: $0d
    dec bc                                        ; $4111: $0b
    dec bc                                        ; $4112: $0b
    jr c, @-$3b                                   ; $4113: $38 $c3

    ret nz                                        ; $4115: $c0

    db $ec                                        ; $4116: $ec
    ld [bc], a                                    ; $4117: $02
    pop af                                        ; $4118: $f1
    cp $c4                                        ; $4119: $fe $c4
    ld a, $e0                                     ; $411b: $3e $e0
    db $fd                                        ; $411d: $fd
    ld c, e                                       ; $411e: $4b
    ld b, [hl]                                    ; $411f: $46
    ldh [rWX], a                                  ; $4120: $e0 $4b
    dec hl                                        ; $4122: $2b
    dec bc                                        ; $4123: $0b
    ld a, [bc]                                    ; $4124: $0a
    ld a, [bc]                                    ; $4125: $0a
    ld a, [bc]                                    ; $4126: $0a
    add c                                         ; $4127: $81
    ld c, d                                       ; $4128: $4a
    ld a, b                                       ; $4129: $78
    pop bc                                        ; $412a: $c1
    cp a                                          ; $412b: $bf
    db $e3                                        ; $412c: $e3
    ld sp, $02a6                                  ; $412d: $31 $a6 $02
    cp h                                          ; $4130: $bc
    cp $c0                                        ; $4131: $fe $c0
    add e                                         ; $4133: $83
    ret nz                                        ; $4134: $c0

    dec c                                         ; $4135: $0d
    dec de                                        ; $4136: $1b
    dec hl                                        ; $4137: $2b
    dec bc                                        ; $4138: $0b
    cp $e0                                        ; $4139: $fe $e0
    ld c, d                                       ; $413b: $4a
    ld a, [bc]                                    ; $413c: $0a
    ld [hl], $c3                                  ; $413d: $36 $c3
    or [hl]                                       ; $413f: $b6

Call_066_4140:
Jump_066_4140:
    and e                                         ; $4140: $a3
    inc [hl]                                      ; $4141: $34
    rst $18                                       ; $4142: $df
    add b                                         ; $4143: $80
    inc a                                         ; $4144: $3c
    pop hl                                        ; $4145: $e1
    pop bc                                        ; $4146: $c1
    jp nz, $e1c0                                  ; $4147: $c2 $c0 $e1

    rst $38                                       ; $414a: $ff
    ldh [rPCM34], a                               ; $414b: $e0 $77
    ldh [$b8], a                                  ; $414d: $e0 $b8
    and c                                         ; $414f: $a1
    ld sp, $2de0                                  ; $4150: $31 $e0 $2d
    ld hl, sp+$60                                 ; $4153: $f8 $60
    pop bc                                        ; $4155: $c1
    ret nz                                        ; $4156: $c0

    rst $38                                       ; $4157: $ff
    rst $38                                       ; $4158: $ff
    call nz, Call_000_2d2d                        ; $4159: $c4 $2d $2d
    ld a, [bc]                                    ; $415c: $0a
    ld c, d                                       ; $415d: $4a
    ld c, e                                       ; $415e: $4b
    ld hl, $fe6b                                  ; $415f: $21 $6b $fe
    ldh [rSB], a                                  ; $4162: $e0 $01
    ldh [$f4], a                                  ; $4164: $e0 $f4
    and b                                         ; $4166: $a0
    or a                                          ; $4167: $b7
    and b                                         ; $4168: $a0
    ld l, l                                       ; $4169: $6d
    or [hl]                                       ; $416a: $b6
    and c                                         ; $416b: $a1
    cp $d5                                        ; $416c: $fe $d5
    db $fc                                        ; $416e: $fc
    inc b                                         ; $416f: $04
    push bc                                       ; $4170: $c5
    ld [$2d62], sp                                ; $4171: $08 $62 $2d
    ld c, l                                       ; $4174: $4d
    dec l                                         ; $4175: $2d
    ld c, e                                       ; $4176: $4b
    ld c, e                                       ; $4177: $4b
    dec bc                                        ; $4178: $0b
    cp a                                          ; $4179: $bf
    ld a, [hl+]                                   ; $417a: $2a
    ld a, [bc]                                    ; $417b: $0a
    ld l, d                                       ; $417c: $6a
    ld a, [hl+]                                   ; $417d: $2a
    ld a, [bc]                                    ; $417e: $0a
    ld a, [bc]                                    ; $417f: $0a
    dec sp                                        ; $4180: $3b
    and d                                         ; $4181: $a2
    ld l, e                                       ; $4182: $6b
    jp nz, $a0b7                                  ; $4183: $c2 $b7 $a0

    dec bc                                        ; $4186: $0b
    xor $83                                       ; $4187: $ee $83
    nop                                           ; $4189: $00
    sbc b                                         ; $418a: $98
    inc e                                         ; $418b: $1c
    rst $00                                       ; $418c: $c7
    ld b, a                                       ; $418d: $47
    add b                                         ; $418e: $80
    ld c, e                                       ; $418f: $4b
    ld c, e                                       ; $4190: $4b
    cp a                                          ; $4191: $bf
    ld l, e                                       ; $4192: $6b
    ld a, [bc]                                    ; $4193: $0a
    ld a, [bc]                                    ; $4194: $0a
    ld a, [hl+]                                   ; $4195: $2a
    ld a, [hl+]                                   ; $4196: $2a
    ld a, [hl+]                                   ; $4197: $2a
    or b                                          ; $4198: $b0
    and h                                         ; $4199: $a4
    dec l                                         ; $419a: $2d
    ld h, c                                       ; $419b: $61
    dec bc                                        ; $419c: $0b
    ld a, [hl+]                                   ; $419d: $2a
    and b                                         ; $419e: $a0
    ld b, d                                       ; $419f: $42
    db $fc                                        ; $41a0: $fc
    ret nz                                        ; $41a1: $c0

    jp hl                                         ; $41a2: $e9


    ccf                                           ; $41a3: $3f
    and b                                         ; $41a4: $a0
    ld c, e                                       ; $41a5: $4b
    dec bc                                        ; $41a6: $0b
    ld b, c                                       ; $41a7: $41
    pop hl                                        ; $41a8: $e1
    add d                                         ; $41a9: $82
    dec [hl]                                      ; $41aa: $35
    pop bc                                        ; $41ab: $c1
    ld c, e                                       ; $41ac: $4b
    ld sp, hl                                     ; $41ad: $f9
    and b                                         ; $41ae: $a0
    jr c, @-$5e                                   ; $41af: $38 $a0

    ret nz                                        ; $41b1: $c0

    rst $38                                       ; $41b2: $ff
    push bc                                       ; $41b3: $c5
    add e                                         ; $41b4: $83
    jp Jump_000_2d62                              ; $41b5: $c3 $62 $2d


    add b                                         ; $41b8: $80
    rlca                                          ; $41b9: $07
    ldh [$bc], a                                  ; $41ba: $e0 $bc
    pop hl                                        ; $41bc: $e1
    cp l                                          ; $41bd: $bd
    and d                                         ; $41be: $a2
    di                                            ; $41bf: $f3
    and b                                         ; $41c0: $a0

Call_066_41c1:
jr_066_41c1:
    ld hl, sp-$7f                                 ; $41c1: $f8 $81
    jp nz, Jump_000_1eca                          ; $41c3: $c2 $ca $1e

    add hl, hl                                    ; $41c6: $29
    ld c, l                                       ; $41c7: $4d
    ld h, c                                       ; $41c8: $61
    dec c                                         ; $41c9: $0d
    inc d                                         ; $41ca: $14
    ld h, b                                       ; $41cb: $60
    rlca                                          ; $41cc: $07
    add h                                         ; $41cd: $84
    ld d, d                                       ; $41ce: $52
    and b                                         ; $41cf: $a0
    add e                                         ; $41d0: $83
    pop bc                                        ; $41d1: $c1
    ld c, l                                       ; $41d2: $4d
    dec l                                         ; $41d3: $2d
    adc c                                         ; $41d4: $89
    ldh [rNR41], a                                ; $41d5: $e0 $20
    ld a, e                                       ; $41d7: $7b
    ldh [$b6], a                                  ; $41d8: $e0 $b6
    and c                                         ; $41da: $a1
    scf                                           ; $41db: $37
    add b                                         ; $41dc: $80
    add b                                         ; $41dd: $80
    pop hl                                        ; $41de: $e1
    nop                                           ; $41df: $00
    sub a                                         ; $41e0: $97

Call_066_41e1:
Jump_066_41e1:
    dec c                                         ; $41e1: $0d
    ld c, a                                       ; $41e2: $4f
    ld h, b                                       ; $41e3: $60
    ld c, h                                       ; $41e4: $4c
    ld h, d                                       ; $41e5: $62
    add c                                         ; $41e6: $81
    ld l, l                                       ; $41e7: $6d
    rst $00                                       ; $41e8: $c7
    and c                                         ; $41e9: $a1
    ld de, $41a1                                  ; $41ea: $11 $a1 $41
    ld h, b                                       ; $41ed: $60
    ld b, c                                       ; $41ee: $41
    add c                                         ; $41ef: $81
    ld b, d                                       ; $41f0: $42
    pop bc                                        ; $41f1: $c1
    ld [hl], e                                    ; $41f2: $73
    add d                                         ; $41f3: $82
    ld c, e                                       ; $41f4: $4b
    ld l, b                                       ; $41f5: $68
    ld b, c                                       ; $41f6: $41
    call nz, Call_066_7474                        ; $41f7: $c4 $74 $74
    ret nz                                        ; $41fa: $c0

    db $e4                                        ; $41fb: $e4
    ld l, l                                       ; $41fc: $6d
    add a                                         ; $41fd: $87
    and d                                         ; $41fe: $a2
    ld c, e                                       ; $41ff: $4b
    ld c, e                                       ; $4200: $4b
    db $fd                                        ; $4201: $fd
    add l                                         ; $4202: $85
    jr nz, jr_066_41c1                            ; $4203: $20 $bc

    ldh [$34], a                                  ; $4205: $e0 $34
    and d                                         ; $4207: $a2
    push af                                       ; $4208: $f5
    add c                                         ; $4209: $81
    ld b, c                                       ; $420a: $41
    pop bc                                        ; $420b: $c1
    ret nz                                        ; $420c: $c0

    ld a, [$c16d]                                 ; $420d: $fa $6d $c1
    ldh [$8e], a                                  ; $4210: $e0 $8e
    and b                                         ; $4212: $a0
    nop                                           ; $4213: $00
    call $bfa1                                    ; $4214: $cd $a1 $bf
    ldh [$bb], a                                  ; $4217: $e0 $bb
    add h                                         ; $4219: $84
    di                                            ; $421a: $f3
    add e                                         ; $421b: $83
    db $fd                                        ; $421c: $fd
    ld h, b                                       ; $421d: $60
    ld sp, hl                                     ; $421e: $f9
    ld h, b                                       ; $421f: $60
    ld a, a                                       ; $4220: $7f
    and e                                         ; $4221: $a3
    nop                                           ; $4222: $00
    ld d, h                                       ; $4223: $54
    ld [$400b], sp                                ; $4224: $08 $0b $40
    ld b, e                                       ; $4227: $43
    ldh [$8d], a                                  ; $4228: $e0 $8d
    and b                                         ; $422a: $a0
    dec hl                                        ; $422b: $2b
    ret nz                                        ; $422c: $c0

    pop hl                                        ; $422d: $e1
    ld a, [hl]                                    ; $422e: $7e
    ld [c], a                                     ; $422f: $e2
    xor $60                                       ; $4230: $ee $60
    ld sp, $0081                                  ; $4232: $31 $81 $00
    dec sp                                        ; $4235: $3b
    ld [c], a                                     ; $4236: $e2
    ld b, e                                       ; $4237: $43
    push bc                                       ; $4238: $c5
    nop                                           ; $4239: $00
    ld d, a                                       ; $423a: $57
    ret nc                                        ; $423b: $d0

    ld bc, $a24e                                  ; $423c: $01 $4e $a2
    cp a                                          ; $423f: $bf
    db $e3                                        ; $4240: $e3
    sub b                                         ; $4241: $90

Jump_066_4242:
    add [hl]                                      ; $4242: $86
    rst $30                                       ; $4243: $f7
    pop bc                                        ; $4244: $c1
    ld b, b                                       ; $4245: $40
    jr nc, jr_066_4288                            ; $4246: $30 $40

    ld [bc], a                                    ; $4248: $02
    ld hl, sp-$36                                 ; $4249: $f8 $ca
    add l                                         ; $424b: $85
    rrca                                          ; $424c: $0f
    and d                                         ; $424d: $a2
    ld d, c                                       ; $424e: $51
    add b                                         ; $424f: $80
    ld [$0da0], sp                                ; $4250: $08 $a0 $0d
    db $fd                                        ; $4253: $fd
    pop bc                                        ; $4254: $c1
    ld c, b                                       ; $4255: $48
    halt                                          ; $4256: $76
    ld hl, $0678                                  ; $4257: $21 $78 $06
    ret nz                                        ; $425a: $c0

    rst $38                                       ; $425b: $ff
    ld l, l                                       ; $425c: $6d
    ld b, d                                       ; $425d: $42
    pop hl                                        ; $425e: $e1
    cp $e2                                        ; $425f: $fe $e2
    dec hl                                        ; $4261: $2b
    inc bc                                        ; $4262: $03
    add c                                         ; $4263: $81
    nop                                           ; $4264: $00
    cp c                                          ; $4265: $b9
    ld h, l                                       ; $4266: $65
    halt                                          ; $4267: $76
    ld h, d                                       ; $4268: $62
    inc hl                                        ; $4269: $23
    ld h, b                                       ; $426a: $60
    ld [bc], a                                    ; $426b: $02
    cp $0e                                        ; $426c: $fe $0e
    add c                                         ; $426e: $81
    adc [hl]                                      ; $426f: $8e
    add c                                         ; $4270: $81
    ld a, [hl]                                    ; $4271: $7e
    ld [c], a                                     ; $4272: $e2
    db $fc                                        ; $4273: $fc
    ld b, b                                       ; $4274: $40
    ret nz                                        ; $4275: $c0

    rlca                                          ; $4276: $07
    ld [hl+], a                                   ; $4277: $22
    ld c, $6b                                     ; $4278: $0e $6b
    nop                                           ; $427a: $00
    sub $cc                                       ; $427b: $d6 $cc
    ld h, c                                       ; $427d: $61
    ret                                           ; $427e: $c9


    ld b, b                                       ; $427f: $40
    cp a                                          ; $4280: $bf

Call_066_4281:
    ld [c], a                                     ; $4281: $e2
    dec hl                                        ; $4282: $2b
    dec hl                                        ; $4283: $2b
    inc bc                                        ; $4284: $03
    dec hl                                        ; $4285: $2b
    ld l, e                                       ; $4286: $6b
    cp l                                          ; $4287: $bd

jr_066_4288:
    call nz, Call_066_7f4e                        ; $4288: $c4 $4e $7f
    ld c, [hl]                                    ; $428b: $4e
    daa                                           ; $428c: $27
    adc d                                         ; $428d: $8a
    ld b, c                                       ; $428e: $41
    ld d, c                                       ; $428f: $51
    add d                                         ; $4290: $82
    pop bc                                        ; $4291: $c1
    ld [c], a                                     ; $4292: $e2
    ld b, b                                       ; $4293: $40
    ld a, a                                       ; $4294: $7f
    ld h, b                                       ; $4295: $60
    ld a, [$fea0]                                 ; $4296: $fa $a0 $fe
    jp $ffff                                      ; $4299: $c3 $ff $ff


    dec bc                                        ; $429c: $0b
    ld h, l                                       ; $429d: $65
    jp $0ba1                                      ; $429e: $c3 $a1 $0b


    add d                                         ; $42a1: $82
    ldh [rP1], a                                  ; $42a2: $e0 $00
    ld c, $61                                     ; $42a4: $0e $61
    ld a, $60                                     ; $42a6: $3e $60
    ld c, l                                       ; $42a8: $4d
    ld h, h                                       ; $42a9: $64
    ret nc                                        ; $42aa: $d0

    sbc b                                         ; $42ab: $98
    inc b                                         ; $42ac: $04
    call nz, $83ce                                ; $42ad: $c4 $ce $83
    dec bc                                        ; $42b0: $0b
    ld h, c                                       ; $42b1: $61
    ld [$0040], sp                                ; $42b2: $08 $40 $00
    adc h                                         ; $42b5: $8c
    add b                                         ; $42b6: $80
    ld b, a                                       ; $42b7: $47
    ld hl, $c50b                                  ; $42b8: $21 $0b $c5
    di                                            ; $42bb: $f3
    add b                                         ; $42bc: $80
    cp $dc                                        ; $42bd: $fe $dc
    rst $20                                       ; $42bf: $e7
    ld b, h                                       ; $42c0: $44
    rst $10                                       ; $42c1: $d7

Jump_066_42c2:
    and e                                         ; $42c2: $a3
    ld a, $a4                                     ; $42c3: $3e $a4
    nop                                           ; $42c5: $00
    ret nz                                        ; $42c6: $c0

    db $e3                                        ; $42c7: $e3
    ld b, h                                       ; $42c8: $44
    ccf                                           ; $42c9: $3f
    ret nz                                        ; $42ca: $c0

    add sp, -$73                                  ; $42cb: $e8 $8d
    add d                                         ; $42cd: $82
    ld c, b                                       ; $42ce: $48
    ld b, e                                       ; $42cf: $43
    add c                                         ; $42d0: $81
    ld b, c                                       ; $42d1: $41
    rst $08                                       ; $42d2: $cf
    ld h, c                                       ; $42d3: $61
    ld c, $9d                                     ; $42d4: $0e $9d
    nop                                           ; $42d6: $00
    ret nz                                        ; $42d7: $c0

    db $eb                                        ; $42d8: $eb
    adc l                                         ; $42d9: $8d
    add d                                         ; $42da: $82
    call z, Call_000_0002                         ; $42db: $cc $02 $00
    ld [hl+], a                                   ; $42de: $22
    cpl                                           ; $42df: $2f
    add d                                         ; $42e0: $82
    ret nz                                        ; $42e1: $c0

    rst $30                                       ; $42e2: $f7
    inc b                                         ; $42e3: $04
    ld d, b                                       ; $42e4: $50
    ld b, a                                       ; $42e5: $47
    nop                                           ; $42e6: $00
    inc b                                         ; $42e7: $04
    dec bc                                        ; $42e8: $0b
    ret nz                                        ; $42e9: $c0

    adc e                                         ; $42ea: $8b
    add d                                         ; $42eb: $82
    ld c, e                                       ; $42ec: $4b
    ld b, e                                       ; $42ed: $43
    and $00                                       ; $42ee: $e6 $00
    rst $18                                       ; $42f0: $df
    ld [bc], a                                    ; $42f1: $02
    ld l, c                                       ; $42f2: $69
    cp c                                          ; $42f3: $b9
    ld h, e                                       ; $42f4: $63
    dec c                                         ; $42f5: $0d
    and e                                         ; $42f6: $a3
    nop                                           ; $42f7: $00
    rst $38                                       ; $42f8: $ff
    rst $38                                       ; $42f9: $ff
    ld b, $2c                                     ; $42fa: $06 $2c

Jump_066_42fc:
    ret nz                                        ; $42fc: $c0

    push hl                                       ; $42fd: $e5
    or [hl]                                       ; $42fe: $b6
    ld h, d                                       ; $42ff: $62
    inc b                                         ; $4300: $04
    rst $18                                       ; $4301: $df
    db $ec                                        ; $4302: $ec
    db $eb                                        ; $4303: $eb
    ld b, $63                                     ; $4304: $06 $63
    ret nz                                        ; $4306: $c0

    ld [$c400], a                                 ; $4307: $ea $00 $c4
    call c, Call_000_3102                         ; $430a: $dc $02 $31
    ld hl, sp+$22                                 ; $430d: $f8 $22
    push bc                                       ; $430f: $c5
    db $e4                                        ; $4310: $e4
    ldh a, [$e8]                                  ; $4311: $f0 $e8
    cp $df                                        ; $4313: $fe $df
    and [hl]                                      ; $4315: $a6
    adc c                                         ; $4316: $89
    ld c, b                                       ; $4317: $48
    rst $38                                       ; $4318: $ff
    nop                                           ; $4319: $00
    or $db                                        ; $431a: $f6 $db
    inc c                                         ; $431c: $0c
    rst $18                                       ; $431d: $df
    or h                                          ; $431e: $b4
    sbc e                                         ; $431f: $9b
    add b                                         ; $4320: $80
    rst $38                                       ; $4321: $ff
    ld l, $f0                                     ; $4322: $2e $f0
    cp $c9                                        ; $4324: $fe $c9
    ld b, $fd                                     ; $4326: $06 $fd
    ld e, a                                       ; $4328: $5f
    rst $38                                       ; $4329: $ff
    nop                                           ; $432a: $00
    rst $38                                       ; $432b: $ff
    rst $38                                       ; $432c: $ff
    rst $38                                       ; $432d: $ff
    rst $38                                       ; $432e: $ff
    rst $38                                       ; $432f: $ff

Jump_066_4330:
    rst $38                                       ; $4330: $ff
    rst $38                                       ; $4331: $ff
    rst $38                                       ; $4332: $ff
    cp $df                                        ; $4333: $fe $df
    ld hl, sp-$49                                 ; $4335: $f8 $b7
    dec a                                         ; $4337: $3d
    and c                                         ; $4338: $a1
    cp $df                                        ; $4339: $fe $df
    nop                                           ; $433b: $00
    rst $38                                       ; $433c: $ff
    rst $38                                       ; $433d: $ff
    rst $38                                       ; $433e: $ff
    rst $38                                       ; $433f: $ff
    rst $38                                       ; $4340: $ff
    rst $38                                       ; $4341: $ff
    rst $38                                       ; $4342: $ff
    rst $38                                       ; $4343: $ff
    rst $38                                       ; $4344: $ff
    rst $38                                       ; $4345: $ff
    nop                                           ; $4346: $00
    ld c, e                                       ; $4347: $4b
    nop                                           ; $4348: $00
    nop                                           ; $4349: $00
    nop                                           ; $434a: $00
    rst $08                                       ; $434b: $cf
    and b                                         ; $434c: $a0
    call c, $dedd                                 ; $434d: $dc $dd $de
    db $fc                                        ; $4350: $fc
    rst $38                                       ; $4351: $ff
    ld hl, sp-$09                                 ; $4352: $f8 $f7
    rst $18                                       ; $4354: $df
    ldh [$f3], a                                  ; $4355: $e0 $f3
    pop hl                                        ; $4357: $e1
    ld [c], a                                     ; $4358: $e2
    db $fc                                        ; $4359: $fc
    rst $38                                       ; $435a: $ff
    ld hl, sp-$09                                 ; $435b: $f8 $f7
    db $e3                                        ; $435d: $e3
    db $e4                                        ; $435e: $e4
    push hl                                       ; $435f: $e5
    and $3c                                       ; $4360: $e6 $3c
    db $fc                                        ; $4362: $fc
    rst $38                                       ; $4363: $ff
    ld hl, sp-$09                                 ; $4364: $f8 $f7
    rst $20                                       ; $4366: $e7
    add sp, -$17                                  ; $4367: $e8 $e9
    ld [$fffc], a                                 ; $4369: $ea $fc $ff
    ld hl, sp-$09                                 ; $436c: $f8 $f7
    nop                                           ; $436e: $00
    ld e, $ff                                     ; $436f: $1e $ff
    db $fc                                        ; $4371: $fc
    ei                                            ; $4372: $fb
    ld e, $ff                                     ; $4373: $1e $ff
    db $fc                                        ; $4375: $fc
    ei                                            ; $4376: $fb
    ld e, $ff                                     ; $4377: $1e $ff
    db $fc                                        ; $4379: $fc
    ei                                            ; $437a: $fb
    ld e, $ff                                     ; $437b: $1e $ff
    db $fc                                        ; $437d: $fc
    ei                                            ; $437e: $fb
    ldh a, [rNR34]                                ; $437f: $f0 $1e
    cp $ff                                        ; $4381: $fe $ff
    pop hl                                        ; $4383: $e1
    nop                                           ; $4384: $00
    rst $18                                       ; $4385: $df
    ld d, $f6                                     ; $4386: $16 $f6
    and b                                         ; $4388: $a0
    and b                                         ; $4389: $a0
    sub $d7                                       ; $438a: $d6 $d7
    inc a                                         ; $438c: $3c
    nop                                           ; $438d: $00
    rst $18                                       ; $438e: $df
    ld d, $f7                                     ; $438f: $16 $f7
    ret nc                                        ; $4391: $d0

    pop de                                        ; $4392: $d1
    ret c                                         ; $4393: $d8

    reti                                          ; $4394: $d9


    nop                                           ; $4395: $00
    rst $18                                       ; $4396: $df
    ld d, $f7                                     ; $4397: $16 $f7
    rst $08                                       ; $4399: $cf
    jp nc, $dad3                                  ; $439a: $d2 $d3 $da

    db $db                                        ; $439d: $db
    nop                                           ; $439e: $00
    rst $18                                       ; $439f: $df
    ld b, $f4                                     ; $43a0: $06 $f4
    ret nc                                        ; $43a2: $d0

    pop de                                        ; $43a3: $d1
    add a                                         ; $43a4: $87
    and b                                         ; $43a5: $a0
    call nc, $fed5                                ; $43a6: $d4 $d5 $fe
    pop bc                                        ; $43a9: $c1
    rst $30                                       ; $43aa: $f7
    ldh [$fa], a                                  ; $43ab: $e0 $fa
    call nc, $d71c                                ; $43ad: $d4 $1c $d7
    sub $2f                                       ; $43b0: $d6 $2f
    rst $10                                       ; $43b2: $d7
    and b                                         ; $43b3: $a0
    jp nc, $c1d3                                  ; $43b4: $d2 $d3 $c1

    jp nz, $f7a0                                  ; $43b7: $c2 $a0 $f7

    ld [c], a                                     ; $43ba: $e2
    nop                                           ; $43bb: $00
    rst $18                                       ; $43bc: $df
    or $10                                        ; $43bd: $f6 $10
    set 3, b                                      ; $43bf: $cb $d8
    reti                                          ; $43c1: $d9


    add e                                         ; $43c2: $83
    pop hl                                        ; $43c3: $e1
    sbc a                                         ; $43c4: $9f
    sbc l                                         ; $43c5: $9d
    sbc l                                         ; $43c6: $9d
    and d                                         ; $43c7: $a2
    ld h, e                                       ; $43c8: $63
    sbc l                                         ; $43c9: $9d
    sbc a                                         ; $43ca: $9f
    ld a, d                                       ; $43cb: $7a
    pop hl                                        ; $43cc: $e1
    nop                                           ; $43cd: $00
    rst $18                                       ; $43ce: $df
    db $10                                        ; $43cf: $10
    set 3, d                                      ; $43d0: $cb $da
    db $db                                        ; $43d2: $db
    ld b, h                                       ; $43d3: $44
    ret nz                                        ; $43d4: $c0

    scf                                           ; $43d5: $37
    sbc a                                         ; $43d6: $9f
    sbc h                                         ; $43d7: $9c
    ld b, [hl]                                    ; $43d8: $46
    rst $38                                       ; $43d9: $ff
    ldh [$9c], a                                  ; $43da: $e0 $9c
    sbc a                                         ; $43dc: $9f
    add hl, sp                                    ; $43dd: $39
    ret nz                                        ; $43de: $c0

    nop                                           ; $43df: $00
    rst $18                                       ; $43e0: $df

Jump_066_43e1:
    db $fc                                        ; $43e1: $fc
    inc c                                         ; $43e2: $0c
    ret                                           ; $43e3: $c9


Jump_066_43e4:
    ld c, $e1                                     ; $43e4: $0e $e1
    sbc a                                         ; $43e6: $9f
    and d                                         ; $43e7: $a2
    sbc l                                         ; $43e8: $9d
    sbc h                                         ; $43e9: $9c
    ld a, c                                       ; $43ea: $79
    ld a, d                                       ; $43eb: $7a
    rrca                                          ; $43ec: $0f
    ld a, e                                       ; $43ed: $7b
    ld a, e                                       ; $43ee: $7b
    ld a, h                                       ; $43ef: $7c
    ld a, l                                       ; $43f0: $7d
    cp a                                          ; $43f1: $bf
    ldh [$fd], a                                  ; $43f2: $e0 $fd
    jp nz, $e02c                                  ; $43f4: $c2 $2c $e0

    nop                                           ; $43f7: $00
    rst $18                                       ; $43f8: $df
    pop af                                        ; $43f9: $f1
    ld [c], a                                     ; $43fa: $e2
    reti                                          ; $43fb: $d9


    pop hl                                        ; $43fc: $e1
    dec b                                         ; $43fd: $05
    ldh [$84], a                                  ; $43fe: $e0 $84

Jump_066_4400:
    pop hl                                        ; $4400: $e1
    ld a, c                                       ; $4401: $79
    ld a, [hl]                                    ; $4402: $7e
    ld b, [hl]                                    ; $4403: $46
    xor [hl]                                      ; $4404: $ae
    add a                                         ; $4405: $87
    ld b, [hl]                                    ; $4406: $46
    xor [hl]                                      ; $4407: $ae
    ld a, a                                       ; $4408: $7f
    cp a                                          ; $4409: $bf
    ldh [$f4], a                                  ; $440a: $e0 $f4
    ret nz                                        ; $440c: $c0

    inc [hl]                                      ; $440d: $34
    pop bc                                        ; $440e: $c1
    nop                                           ; $440f: $00
    rst $18                                       ; $4410: $df
    push hl                                       ; $4411: $e5
    db $eb                                        ; $4412: $eb
    and $a0                                       ; $4413: $e6 $a0
    dec b                                         ; $4415: $05
    ld [c], a                                     ; $4416: $e2
    sbc a                                         ; $4417: $9f
    add h                                         ; $4418: $84
    pop hl                                        ; $4419: $e1
    adc a                                         ; $441a: $8f
    xor [hl]                                      ; $441b: $ae
    ld b, [hl]                                    ; $441c: $46
    ld a, a                                       ; $441d: $7f
    xor a                                         ; $441e: $af
    xor [hl]                                      ; $441f: $ae
    xor a                                         ; $4420: $af
    add e                                         ; $4421: $83
    add h                                         ; $4422: $84
    ld b, [hl]                                    ; $4423: $46
    and c                                         ; $4424: $a1
    ld [hl], a                                    ; $4425: $77
    ret nz                                        ; $4426: $c0

    sbc h                                         ; $4427: $9c
    inc [hl]                                      ; $4428: $34
    pop bc                                        ; $4429: $c1
    nop                                           ; $442a: $00
    rst $18                                       ; $442b: $df
    jp hl                                         ; $442c: $e9


    ld [$05a0], a                                 ; $442d: $ea $a0 $05
    pop hl                                        ; $4430: $e1
    pop bc                                        ; $4431: $c1
    ldh [$7e], a                                  ; $4432: $e0 $7e
    rst $28                                       ; $4434: $ef
    xor [hl]                                      ; $4435: $ae
    ld b, [hl]                                    ; $4436: $46
    ld b, [hl]                                    ; $4437: $46
    xor a                                         ; $4438: $af
    db $fd                                        ; $4439: $fd
    ldh [$83], a                                  ; $443a: $e0 $83

Jump_066_443c:
    add [hl]                                      ; $443c: $86
    add l                                         ; $443d: $85
    jp $9e46                                      ; $443e: $c3 $46 $9e


    scf                                           ; $4441: $37
    and b                                         ; $4442: $a0
    inc [hl]                                      ; $4443: $34
    pop bc                                        ; $4444: $c1
    nop                                           ; $4445: $00
    rst $18                                       ; $4446: $df
    ld a, [bc]                                    ; $4447: $0a
    and h                                         ; $4448: $a4
    and c                                         ; $4449: $a1
    ld b, [hl]                                    ; $444a: $46
    db $fd                                        ; $444b: $fd
    add b                                         ; $444c: $80
    add l                                         ; $444d: $85
    ldh [rDMA], a                                 ; $444e: $e0 $46
    ld b, [hl]                                    ; $4450: $46
    add e                                         ; $4451: $83
    adc c                                         ; $4452: $89
    adc b                                         ; $4453: $88
    add a                                         ; $4454: $87
    pop hl                                        ; $4455: $e1
    add l                                         ; $4456: $85
    cp l                                          ; $4457: $bd
    call nz, $a4f7                                ; $4458: $c4 $f7 $a4
    xor $89                                       ; $445b: $ee $89
    ld a, [bc]                                    ; $445d: $0a
    or h                                          ; $445e: $b4
    ret nc                                        ; $445f: $d0

    pop de                                        ; $4460: $d1
    sbc [hl]                                      ; $4461: $9e
    rlca                                          ; $4462: $07
    ld b, [hl]                                    ; $4463: $46
    add d                                         ; $4464: $82
    add e                                         ; $4465: $83
    ld b, h                                       ; $4466: $44
    ldh [$84], a                                  ; $4467: $e0 $84
    pop hl                                        ; $4469: $e1
    cp $c0                                        ; $446a: $fe $c0
    ld a, h                                       ; $446c: $7c
    ret nz                                        ; $446d: $c0

jr_066_446e:
    scf                                           ; $446e: $37
    ret nz                                        ; $446f: $c0

    pop bc                                        ; $4470: $c1
    sbc a                                         ; $4471: $9f
    xor $a1                                       ; $4472: $ee $a1
    add sp, -$60                                  ; $4474: $e8 $a0
    db $f4                                        ; $4476: $f4
    xor b                                         ; $4477: $a8
    inc e                                         ; $4478: $1c
    sub e                                         ; $4479: $93
    add $a0                                       ; $447a: $c6 $a0
    sbc a                                         ; $447c: $9f
    sbc h                                         ; $447d: $9c
    ld a, a                                       ; $447e: $7f
    add l                                         ; $447f: $85
    add [hl]                                      ; $4480: $86
    add e                                         ; $4481: $83
    xor [hl]                                      ; $4482: $ae
    xor a                                         ; $4483: $af
    adc d                                         ; $4484: $8a
    add l                                         ; $4485: $85
    cp $c0                                        ; $4486: $fe $c0
    nop                                           ; $4488: $00
    ld a, [hl-]                                   ; $4489: $3a
    ldh [$35], a                                  ; $448a: $e0 $35
    ldh [$38], a                                  ; $448c: $e0 $38
    pop bc                                        ; $448e: $c1
    ld [hl], c                                    ; $448f: $71
    and b                                         ; $4490: $a0
    add sp, -$60                                  ; $4491: $e8 $a0
    db $f4                                        ; $4493: $f4
    xor b                                         ; $4494: $a8
    inc e                                         ; $4495: $1c
    sub e                                         ; $4496: $93
    add $a2                                       ; $4497: $c6 $a2
    cp a                                          ; $4499: $bf
    sbc h                                         ; $449a: $9c
    add l                                         ; $449b: $85
    adc e                                         ; $449c: $8b
    xor a                                         ; $449d: $af
    ld b, [hl]                                    ; $449e: $46
    add c                                         ; $449f: $81
    cp $c0                                        ; $44a0: $fe $c0
    ld b, l                                       ; $44a2: $45
    scf                                           ; $44a3: $37
    ld c, b                                       ; $44a4: $48
    ld d, e                                       ; $44a5: $53
    ld d, b                                       ; $44a6: $50
    ld hl, sp-$40                                 ; $44a7: $f8 $c0
    ld a, c                                       ; $44a9: $79
    ld a, d                                       ; $44aa: $7a
    jr c, jr_066_446e                             ; $44ab: $38 $c1

    db $e3                                        ; $44ad: $e3
    jp nz, Jump_000_00e4                          ; $44ae: $c2 $e4 $00

    sbc a                                         ; $44b1: $9f
    ld [$9e80], sp                                ; $44b2: $08 $80 $9e
    cp $c0                                        ; $44b5: $fe $c0
    ret nz                                        ; $44b7: $c0

    ldh [rDMA], a                                 ; $44b8: $e0 $46
    ld b, l                                       ; $44ba: $45
    ld b, e                                       ; $44bb: $43
    rrca                                          ; $44bc: $0f
    ld d, d                                       ; $44bd: $52
    ld h, c                                       ; $44be: $61
    ld e, l                                       ; $44bf: $5d

Jump_066_44c0:
    ld d, l                                       ; $44c0: $55
    dec [hl]                                      ; $44c1: $35
    ret nz                                        ; $44c2: $c0

    jr c, @-$3c                                   ; $44c3: $38 $c2

    rst $28                                       ; $44c5: $ef
    ld h, c                                       ; $44c6: $61
    dec a                                         ; $44c7: $3d
    pop hl                                        ; $44c8: $e1
    ld hl, sp+$00                                 ; $44c9: $f8 $00
    sbc h                                         ; $44cb: $9c
    ld [bc], a                                    ; $44cc: $02
    and b                                         ; $44cd: $a0
    ret nz                                        ; $44ce: $c0

    db $e3                                        ; $44cf: $e3
    xor [hl]                                      ; $44d0: $ae
    ld b, l                                       ; $44d1: $45
    ld a, [hl+]                                   ; $44d2: $2a
    inc l                                         ; $44d3: $2c
    ld sp, $bd0f                                  ; $44d4: $31 $0f $bd
    ld c, e                                       ; $44d7: $4b
    ld d, l                                       ; $44d8: $55
    xor [hl]                                      ; $44d9: $ae
    or c                                          ; $44da: $b1
    pop bc                                        ; $44db: $c1
    cp a                                          ; $44dc: $bf
    ld [c], a                                     ; $44dd: $e2
    dec l                                         ; $44de: $2d
    add c                                         ; $44df: $81
    ld a, [c]                                     ; $44e0: $f2
    add [hl]                                      ; $44e1: $86
    ld a, [$b802]                                 ; $44e2: $fa $02 $b8
    and c                                         ; $44e5: $a1
    cp [hl]                                       ; $44e6: $be
    ret nz                                        ; $44e7: $c0

    add e                                         ; $44e8: $83
    add h                                         ; $44e9: $84
    xor a                                         ; $44ea: $af
    ld b, d                                       ; $44eb: $42
    daa                                           ; $44ec: $27
    rst $38                                       ; $44ed: $ff
    jr nz, @+$22                                  ; $44ee: $20 $20

    ld l, $44                                     ; $44f0: $2e $44
    ld b, l                                       ; $44f2: $45
    xor a                                         ; $44f3: $af
    add b                                         ; $44f4: $80
    ld b, [hl]                                    ; $44f5: $46
    add l                                         ; $44f6: $85
    xor [hl]                                      ; $44f7: $ae
    ld sp, $a1e1                                  ; $44f8: $31 $e1 $a1
    ld sp, hl                                     ; $44fb: $f9
    and d                                         ; $44fc: $a2

jr_066_44fd:
    ld a, [c]                                     ; $44fd: $f2
    add [hl]                                      ; $44fe: $86
    ld [bc], a                                    ; $44ff: $02
    cp b                                          ; $4500: $b8
    cp [hl]                                       ; $4501: $be
    ret nz                                        ; $4502: $c0

    add a                                         ; $4503: $87
    rst $28                                       ; $4504: $ef
    add a                                         ; $4505: $87
    add l                                         ; $4506: $85
    ld c, d                                       ; $4507: $4a
    ld d, [hl]                                    ; $4508: $56
    add b                                         ; $4509: $80
    ldh [$2b], a                                  ; $450a: $e0 $2b
    ld b, l                                       ; $450c: $45
    ld b, [hl]                                    ; $450d: $46
    ld a, [bc]                                    ; $450e: $0a
    ld sp, $46c1                                  ; $450f: $31 $c1 $46

jr_066_4512:
    or a                                          ; $4512: $b7
    and b                                         ; $4513: $a0
    sbc [hl]                                      ; $4514: $9e
    dec l                                         ; $4515: $2d
    add e                                         ; $4516: $83
    nop                                           ; $4517: $00
    sbc b                                         ; $4518: $98
    add hl, de                                    ; $4519: $19
    add $c3                                       ; $451a: $c6 $c3
    add d                                         ; $451c: $82
    rst $38                                       ; $451d: $ff
    ld d, l                                       ; $451e: $55
    ld h, c                                       ; $451f: $61
    ld d, h                                       ; $4520: $54
    ld c, b                                       ; $4521: $48
    ld c, d                                       ; $4522: $4a
    ld e, l                                       ; $4523: $5d
    xor [hl]                                      ; $4524: $ae
    ld b, [hl]                                    ; $4525: $46
    rrca                                          ; $4526: $0f
    ld a, c                                       ; $4527: $79
    adc l                                         ; $4528: $8d
    xor [hl]                                      ; $4529: $ae
    ld b, [hl]                                    ; $452a: $46
    or a                                          ; $452b: $b7
    and l                                         ; $452c: $a5
    nop                                           ; $452d: $00
    jp c, $a402                                   ; $452e: $da $02 $a4

    call nc, $fe81                                ; $4531: $d4 $81 $fe
    add d                                         ; $4534: $82
    add c                                         ; $4535: $81
    ld b, l                                       ; $4536: $45
    ld e, e                                       ; $4537: $5b
    ld d, d                                       ; $4538: $52
    ld d, d                                       ; $4539: $52
    ld d, l                                       ; $453a: $55
    ld d, d                                       ; $453b: $52
    xor a                                         ; $453c: $af
    ld e, $f7                                     ; $453d: $1e $f7
    add b                                         ; $453f: $80
    xor a                                         ; $4540: $af
    ld b, [hl]                                    ; $4541: $46
    adc d                                         ; $4542: $8a
    add l                                         ; $4543: $85
    ld [hl], l                                    ; $4544: $75
    add c                                         ; $4545: $81
    rst $20                                       ; $4546: $e7
    ld h, b                                       ; $4547: $60
    nop                                           ; $4548: $00

jr_066_4549:
    sbc c                                         ; $4549: $99
    ld a, [hl+]                                   ; $454a: $2a
    ld [bc], a                                    ; $454b: $02
    and e                                         ; $454c: $a3
    and b                                         ; $454d: $a0
    jr jr_066_4512                                ; $454e: $18 $c2

    and c                                         ; $4550: $a1
    ld b, d                                       ; $4551: $42
    add c                                         ; $4552: $81
    ld b, l                                       ; $4553: $45
    rst $38                                       ; $4554: $ff
    ldh [$34], a                                  ; $4555: $e0 $34
    and d                                         ; $4557: $a2
    nop                                           ; $4558: $00
    ld [hl], e                                    ; $4559: $73
    pop bc                                        ; $455a: $c1
    jr c, jr_066_44fd                             ; $455b: $38 $a0

    rst $20                                       ; $455d: $e7
    ld h, b                                       ; $455e: $60
    nop                                           ; $455f: $00
    sbc c                                         ; $4560: $99
    ld [bc], a                                    ; $4561: $02
    and d                                         ; $4562: $a2
    ld c, c                                       ; $4563: $49
    ld b, b                                       ; $4564: $40
    ei                                            ; $4565: $fb
    add e                                         ; $4566: $83
    ld bc, $8481                                  ; $4567: $01 $81 $84

jr_066_456a:
    db $fd                                        ; $456a: $fd
    ld h, b                                       ; $456b: $60
    inc bc                                        ; $456c: $03
    pop hl                                        ; $456d: $e1
    xor [hl]                                      ; $456e: $ae
    ret nz                                        ; $456f: $c0

    db $e4                                        ; $4570: $e4
    rst $20                                       ; $4571: $e7
    ld h, b                                       ; $4572: $60
    nop                                           ; $4573: $00
    call nc, $8807                                ; $4574: $d4 $07 $88
    sbc l                                         ; $4577: $9d
    ld bc, $0f9d                                  ; $4578: $01 $9d $0f
    and d                                         ; $457b: $a2
    cp a                                          ; $457c: $bf
    push hl                                       ; $457d: $e5
    inc [hl]                                      ; $457e: $34
    and b                                         ; $457f: $a0
    add d                                         ; $4580: $82
    jp nz, $80b8                                  ; $4581: $c2 $b8 $80

    db $eb                                        ; $4584: $eb
    ld b, b                                       ; $4585: $40
    nop                                           ; $4586: $00
    ld d, h                                       ; $4587: $54
    jr jr_066_456a                                ; $4588: $18 $e0

jr_066_458a:
    ld h, d                                       ; $458a: $62
    rlca                                          ; $458b: $07
    add d                                         ; $458c: $82
    add a                                         ; $458d: $87
    add b                                         ; $458e: $80
    xor [hl]                                      ; $458f: $ae
    sbc h                                         ; $4590: $9c
    ld de, $7fa0                                  ; $4591: $11 $a0 $7f
    ld h, b                                       ; $4594: $60
    or [hl]                                       ; $4595: $b6
    ldh [rP1], a                                  ; $4596: $e0 $00
    ld a, h                                       ; $4598: $7c
    ld h, b                                       ; $4599: $60
    inc [hl]                                      ; $459a: $34
    and b                                         ; $459b: $a0
    halt                                          ; $459c: $76
    add b                                         ; $459d: $80
    or e                                          ; $459e: $b3
    and b                                         ; $459f: $a0
    ld b, c                                       ; $45a0: $41

Jump_066_45a1:
    pop bc                                        ; $45a1: $c1

jr_066_45a2:
    nop                                           ; $45a2: $00
    ld d, l                                       ; $45a3: $55
    inc c                                         ; $45a4: $0c
    ld [c], a                                     ; $45a5: $e2
    rlca                                          ; $45a6: $07
    add c                                         ; $45a7: $81
    ret nz                                        ; $45a8: $c0

    ld c, d                                       ; $45a9: $4a
    add d                                         ; $45aa: $82
    adc h                                         ; $45ab: $8c
    add [hl]                                      ; $45ac: $86
    db $fc                                        ; $45ad: $fc
    ld b, c                                       ; $45ae: $41
    di                                            ; $45af: $f3
    add c                                         ; $45b0: $81
    ld b, d                                       ; $45b1: $42
    pop bc                                        ; $45b2: $c1
    ld [hl], $60                                  ; $45b3: $36 $60
    call nc, $8cd5                                ; $45b5: $d4 $d5 $8c
    nop                                           ; $45b8: $00

jr_066_45b9:
    ld d, l                                       ; $45b9: $55
    inc c                                         ; $45ba: $0c
    rst $20                                       ; $45bb: $e7
    ld b, l                                       ; $45bc: $45
    ld b, c                                       ; $45bd: $41
    rrca                                          ; $45be: $0f
    ret nz                                        ; $45bf: $c0

    cp a                                          ; $45c0: $bf
    rst $20                                       ; $45c1: $e7
    ld hl, sp+$41                                 ; $45c2: $f8 $41
    add l                                         ; $45c4: $85
    pop hl                                        ; $45c5: $e1
    add a                                         ; $45c6: $87
    jr c, jr_066_4549                             ; $45c7: $38 $80

    ld a, [hl-]                                   ; $45c9: $3a
    add e                                         ; $45ca: $83
    nop                                           ; $45cb: $00
    sbc b                                         ; $45cc: $98
    adc $41                                       ; $45cd: $ce $41
    xor [hl]                                      ; $45cf: $ae
    ld b, [hl]                                    ; $45d0: $46
    ld b, l                                       ; $45d1: $45
    ld h, a                                       ; $45d2: $67
    ld [hl], $a6                                  ; $45d3: $36 $a6
    ld [hl], $bf                                  ; $45d5: $36 $bf
    and $50                                       ; $45d7: $e6 $50
    add c                                         ; $45d9: $81
    ret nc                                        ; $45da: $d0

    pop de                                        ; $45db: $d1
    or a                                          ; $45dc: $b7
    ld b, c                                       ; $45dd: $41
    pop hl                                        ; $45de: $e1
    sbc h                                         ; $45df: $9c
    db $ec                                        ; $45e0: $ec
    ret nz                                        ; $45e1: $c0

    cp $4d                                        ; $45e2: $fe $4d
    ld [bc], a                                    ; $45e4: $02
    dec hl                                        ; $45e5: $2b
    rst $08                                       ; $45e6: $cf
    jr nz, jr_066_458a                            ; $45e7: $20 $a1

    xor [hl]                                      ; $45e9: $ae
    xor a                                         ; $45ea: $af
    ld e, a                                       ; $45eb: $5f
    ld b, l                                       ; $45ec: $45
    ld [hl], $62                                  ; $45ed: $36 $62
    and a                                         ; $45ef: $a7
    ld h, [hl]                                    ; $45f0: $66
    cp a                                          ; $45f1: $bf
    db $e3                                        ; $45f2: $e3
    and c                                         ; $45f3: $a1

jr_066_45f4:
    jr c, jr_066_45b9                             ; $45f4: $38 $c3

    ld b, b                                       ; $45f6: $40
    ld a, [c]                                     ; $45f7: $f2
    ld b, c                                       ; $45f8: $41
    xor [hl]                                      ; $45f9: $ae
    ret nz                                        ; $45fa: $c0

    or b                                          ; $45fb: $b0

jr_066_45fc:
    jr nz, jr_066_45fc                            ; $45fc: $20 $fe

    ld c, l                                       ; $45fe: $4d
    ld [bc], a                                    ; $45ff: $02
    dec hl                                        ; $4600: $2b
    rst $08                                       ; $4601: $cf

Jump_066_4602:
    jr nz, jr_066_45a2                            ; $4602: $20 $9e

    pop bc                                        ; $4604: $c1
    pop hl                                        ; $4605: $e1
    rla                                           ; $4606: $17
    ld h, a                                       ; $4607: $67
    and e                                         ; $4608: $a3
    ld l, b                                       ; $4609: $68
    cp a                                          ; $460a: $bf
    pop hl                                        ; $460b: $e1
    xor [hl]                                      ; $460c: $ae
    ld b, [hl]                                    ; $460d: $46
    ld b, c                                       ; $460e: $41
    jr c, @+$43                                   ; $460f: $38 $41

    ld a, d                                       ; $4611: $7a
    inc hl                                        ; $4612: $23
    ldh a, [$b0]                                  ; $4613: $f0 $b0
    ld hl, $4dfe                                  ; $4615: $21 $fe $4d
    ld [bc], a                                    ; $4618: $02
    dec hl                                        ; $4619: $2b
    jp Jump_066_42c2                              ; $461a: $c3 $c2 $42


    xor b                                         ; $461d: $a8
    xor c                                         ; $461e: $a9
    ld l, h                                       ; $461f: $6c
    inc bc                                        ; $4620: $03
    dec [hl]                                      ; $4621: $35
    dec [hl]                                      ; $4622: $35
    cp a                                          ; $4623: $bf
    pop hl                                        ; $4624: $e1
    ret                                           ; $4625: $c9


    ld h, b                                       ; $4626: $60
    db $fd                                        ; $4627: $fd
    rst $00                                       ; $4628: $c7
    rst $38                                       ; $4629: $ff
    ld b, h                                       ; $462a: $44
    ld hl, sp+$2c                                 ; $462b: $f8 $2c
    ld [bc], a                                    ; $462d: $02
    xor $ff                                       ; $462e: $ee $ff
    ld b, [hl]                                    ; $4630: $46
    xor [hl]                                      ; $4631: $ae
    ld b, l                                       ; $4632: $45
    ld [hl], $6e                                  ; $4633: $36 $6e
    ld l, a                                       ; $4635: $6f
    ld l, h                                       ; $4636: $6c
    dec [hl]                                      ; $4637: $35
    rla                                           ; $4638: $17
    and e                                         ; $4639: $a3
    xor d                                         ; $463a: $aa
    xor e                                         ; $463b: $ab
    db $fc                                        ; $463c: $fc
    ret nz                                        ; $463d: $c0

    xor a                                         ; $463e: $af
    rst $00                                       ; $463f: $c7
    ld b, c                                       ; $4640: $41
    ld [bc], a                                    ; $4641: $02
    scf                                           ; $4642: $37
    nop                                           ; $4643: $00
    call $cc38                                    ; $4644: $cd $38 $cc
    ld h, b                                       ; $4647: $60
    sub b                                         ; $4648: $90
    ld h, c                                       ; $4649: $61
    cp a                                          ; $464a: $bf
    pop hl                                        ; $464b: $e1
    ld l, h                                       ; $464c: $6c
    ld l, a                                       ; $464d: $6f
    ld l, [hl]                                    ; $464e: $6e
    cp h                                          ; $464f: $bc
    jp nz, $2084                                  ; $4650: $c2 $84 $20

    ld [$3702], sp                                ; $4653: $08 $02 $37
    nop                                           ; $4656: $00
    ld c, e                                       ; $4657: $4b
    adc $00                                       ; $4658: $ce $00
    and c                                         ; $465a: $a1
    db $d3                                        ; $465b: $d3
    ld b, d                                       ; $465c: $42
    ld a, [hl]                                    ; $465d: $7e
    pop hl                                        ; $465e: $e1
    pop bc                                        ; $465f: $c1
    ld [c], a                                     ; $4660: $e2
    ld a, [bc]                                    ; $4661: $0a
    ld h, c                                       ; $4662: $61
    jr nc, @+$0d                                  ; $4663: $30 $0b

    ld h, d                                       ; $4665: $62
    ld [bc], a                                    ; $4666: $02
    inc [hl]                                      ; $4667: $34
    nop                                           ; $4668: $00
    ld c, e                                       ; $4669: $4b
    adc $00                                       ; $466a: $ce $00
    sbc a                                         ; $466c: $9f
    sbc h                                         ; $466d: $9c
    pop de                                        ; $466e: $d1
    jr nz, jr_066_45f4                            ; $466f: $20 $83

    and b                                         ; $4671: $a0
    inc de                                        ; $4672: $13
    ld [hl], $6e                                  ; $4673: $36 $6e
    pop bc                                        ; $4675: $c1
    ld [c], a                                     ; $4676: $e2
    ccf                                           ; $4677: $3f
    ld b, c                                       ; $4678: $41
    xor [hl]                                      ; $4679: $ae
    ld a, h                                       ; $467a: $7c
    ret nz                                        ; $467b: $c0

    ld [bc], a                                    ; $467c: $02
    dec [hl]                                      ; $467d: $35
    nop                                           ; $467e: $00
    ld c, d                                       ; $467f: $4a
    sbc b                                         ; $4680: $98
    ret                                           ; $4681: $c9


    inc h                                         ; $4682: $24
    pop bc                                        ; $4683: $c1
    pop hl                                        ; $4684: $e1
    dec a                                         ; $4685: $3d
    ret nz                                        ; $4686: $c0

    ld [hl], $45                                  ; $4687: $36 $45
    add l                                         ; $4689: $85
    ld [hl+], a                                   ; $468a: $22
    adc e                                         ; $468b: $8b
    ld h, b                                       ; $468c: $60
    sbc [hl]                                      ; $468d: $9e
    ld b, b                                       ; $468e: $40
    ld c, l                                       ; $468f: $4d
    ld b, d                                       ; $4690: $42
    cp $d4                                        ; $4691: $fe $d4
    ld [bc], a                                    ; $4693: $02
    ld [$c1d6], a                                 ; $4694: $ea $d6 $c1
    adc [hl]                                      ; $4697: $8e
    ld bc, $20c8                                  ; $4698: $01 $c8 $20
    xor [hl]                                      ; $469b: $ae
    call nz, Call_000_32c1                        ; $469c: $c4 $c1 $32
    cp a                                          ; $469f: $bf
    ld hl, $83af                                  ; $46a0: $21 $af $83
    nop                                           ; $46a3: $00
    dec [hl]                                      ; $46a4: $35
    nop                                           ; $46a5: $00
    sub $d7                                       ; $46a6: $d6 $d7
    sub $53                                       ; $46a8: $d6 $53
    ld [bc], a                                    ; $46aa: $02
    xor c                                         ; $46ab: $a9
    ld h, b                                       ; $46ac: $60
    ret c                                         ; $46ad: $d8

    and d                                         ; $46ae: $a2
    cp a                                          ; $46af: $bf
    db $e3                                        ; $46b0: $e3
    ld c, $42                                     ; $46b1: $0e $42
    ld b, c                                       ; $46b3: $41
    ld [hl+], a                                   ; $46b4: $22
    ld c, l                                       ; $46b5: $4d
    ld b, h                                       ; $46b6: $44
    ret c                                         ; $46b7: $d8

    reti                                          ; $46b8: $d9


    sub $53                                       ; $46b9: $d6 $53
    add b                                         ; $46bb: $80
    ld [bc], a                                    ; $46bc: $02
    xor c                                         ; $46bd: $a9
    ret c                                         ; $46be: $d8

    and h                                         ; $46bf: $a4
    adc l                                         ; $46c0: $8d

Jump_066_46c1:
    add c                                         ; $46c1: $81
    adc e                                         ; $46c2: $8b
    add b                                         ; $46c3: $80
    jp z, $8920                                   ; $46c4: $ca $20 $89

    ld hl, $a18b                                  ; $46c7: $21 $8b $a1
    and b                                         ; $46ca: $a0
    ld bc, $eddb                                  ; $46cb: $01 $db $ed
    nop                                           ; $46ce: $00
    sub $53                                       ; $46cf: $d6 $53
    nop                                           ; $46d1: $00
    ld c, [hl]                                    ; $46d2: $4e
    inc d                                         ; $46d3: $14
    db $e3                                        ; $46d4: $e3
    adc e                                         ; $46d5: $8b
    add e                                         ; $46d6: $83
    add d                                         ; $46d7: $82
    ld [c], a                                     ; $46d8: $e2
    ld b, h                                       ; $46d9: $44
    and b                                         ; $46da: $a0
    ret nz                                        ; $46db: $c0

    call c, Call_000_0035                         ; $46dc: $dc $35 $00
    ld d, b                                       ; $46df: $50
    ld b, h                                       ; $46e0: $44
    ld bc, $01db                                  ; $46e1: $01 $db $01
    ld a, [de]                                    ; $46e4: $1a
    ld hl, $a30d                                  ; $46e5: $21 $0d $a3
    call nc, Call_000_00d5                        ; $46e8: $d4 $d5 $00
    call c, Call_000_0035                         ; $46eb: $dc $35 $00
    ld d, c                                       ; $46ee: $51
    ld b, h                                       ; $46ef: $44
    ld bc, $a1d0                                  ; $46f0: $01 $d0 $a1
    cp c                                          ; $46f3: $b9
    db $e4                                        ; $46f4: $e4
    call nz, $dca2                                ; $46f5: $c4 $a2 $dc
    dec [hl]                                      ; $46f8: $35
    nop                                           ; $46f9: $00
    ld d, c                                       ; $46fa: $51
    nop                                           ; $46fb: $00
    add hl, de                                    ; $46fc: $19
    and l                                         ; $46fd: $a5
    cp c                                          ; $46fe: $b9
    db $e4                                        ; $46ff: $e4
    add $82                                       ; $4700: $c6 $82
    call c, Call_000_0035                         ; $4702: $dc $35 $00
    ld d, h                                       ; $4705: $54
    xor $05                                       ; $4706: $ee $05
    adc e                                         ; $4708: $8b
    add c                                         ; $4709: $81
    ld b, $f8                                     ; $470a: $06 $f8
    nop                                           ; $470c: $00
    nop                                           ; $470d: $00
    ld d, l                                       ; $470e: $55
    ld a, [c]                                     ; $470f: $f2
    ld c, c                                       ; $4710: $49
    ld b, $f9                                     ; $4711: $06 $f9
    nop                                           ; $4713: $00
    ld d, l                                       ; $4714: $55
    ld a, [c]                                     ; $4715: $f2
    ld c, c                                       ; $4716: $49
    ld b, $f9                                     ; $4717: $06 $f9
    nop                                           ; $4719: $00
    ld d, l                                       ; $471a: $55
    ld a, [c]                                     ; $471b: $f2
    ld c, c                                       ; $471c: $49
    nop                                           ; $471d: $00
    ld b, $f9                                     ; $471e: $06 $f9
    nop                                           ; $4720: $00

Call_066_4721:
    call nc, $fffc                                ; $4721: $d4 $fc $ff
    nop                                           ; $4724: $00
    jp c, $fffc                                   ; $4725: $da $fc $ff

    nop                                           ; $4728: $00
    db $db                                        ; $4729: $db
    db $fc                                        ; $472a: $fc
    rst $38                                       ; $472b: $ff
    nop                                           ; $472c: $00
    db $db                                        ; $472d: $db
    nop                                           ; $472e: $00
    db $fc                                        ; $472f: $fc
    rst $38                                       ; $4730: $ff
    nop                                           ; $4731: $00
    rst $18                                       ; $4732: $df
    db $fc                                        ; $4733: $fc
    rst $38                                       ; $4734: $ff
    nop                                           ; $4735: $00
    rst $18                                       ; $4736: $df
    db $fc                                        ; $4737: $fc
    rst $38                                       ; $4738: $ff
    nop                                           ; $4739: $00
    db $dd                                        ; $473a: $dd
    db $fc                                        ; $473b: $fc
    rst $38                                       ; $473c: $ff
    nop                                           ; $473d: $00
    db $db                                        ; $473e: $db
    nop                                           ; $473f: $00
    db $fc                                        ; $4740: $fc
    rst $38                                       ; $4741: $ff
    nop                                           ; $4742: $00
    ld b, c                                       ; $4743: $41
    nop                                           ; $4744: $00
    nop                                           ; $4745: $00
    nop                                           ; $4746: $00
    pop bc                                        ; $4747: $c1
    nop                                           ; $4748: $00
    rst $38                                       ; $4749: $ff
    rst $38                                       ; $474a: $ff
    rst $38                                       ; $474b: $ff
    rst $38                                       ; $474c: $ff
    rst $38                                       ; $474d: $ff
    rst $38                                       ; $474e: $ff
    rst $38                                       ; $474f: $ff
    rst $38                                       ; $4750: $ff
    rst $38                                       ; $4751: $ff
    rst $38                                       ; $4752: $ff
    nop                                           ; $4753: $00
    nop                                           ; $4754: $00
    ld bc, $fe80                                  ; $4755: $01 $80 $fe
    ldh [rIE], a                                  ; $4758: $e0 $ff
    rst $38                                       ; $475a: $ff
    rst $38                                       ; $475b: $ff
    rst $38                                       ; $475c: $ff
    rst $38                                       ; $475d: $ff
    add sp, $00                                   ; $475e: $e8 $00
    nop                                           ; $4760: $00
    nop                                           ; $4761: $00
    ld [bc], a                                    ; $4762: $02
    nop                                           ; $4763: $00
    ld [hl+], a                                   ; $4764: $22
    ld [de], a                                    ; $4765: $12
    ld [bc], a                                    ; $4766: $02
    ld bc, $1224                                  ; $4767: $01 $24 $12
    ld [bc], a                                    ; $476a: $02
    ld [bc], a                                    ; $476b: $02
    jr nz, jr_066_4781                            ; $476c: $20 $13

    ld [bc], a                                    ; $476e: $02
    inc bc                                        ; $476f: $03
    inc hl                                        ; $4770: $23
    inc de                                        ; $4771: $13
    ld [bc], a                                    ; $4772: $02
    inc b                                         ; $4773: $04
    dec e                                         ; $4774: $1d
    inc d                                         ; $4775: $14
    ld [bc], a                                    ; $4776: $02
    dec b                                         ; $4777: $05
    ld e, $15                                     ; $4778: $1e $15
    ld [bc], a                                    ; $477a: $02
    ld b, $1f                                     ; $477b: $06 $1f
    ld d, $02                                     ; $477d: $16 $02
    rlca                                          ; $477f: $07
    inc h                                         ; $4780: $24

jr_066_4781:
    ld d, $02                                     ; $4781: $16 $02
    ld [$1626], sp                                ; $4783: $08 $26 $16
    ld [bc], a                                    ; $4786: $02
    add hl, bc                                    ; $4787: $09
    ld e, $17                                     ; $4788: $1e $17
    ld [bc], a                                    ; $478a: $02
    ld a, [bc]                                    ; $478b: $0a
    ld [hl+], a                                   ; $478c: $22
    rla                                           ; $478d: $17
    ld [bc], a                                    ; $478e: $02
    dec bc                                        ; $478f: $0b
    jr z, @+$19                                   ; $4790: $28 $17

    ld [bc], a                                    ; $4792: $02
    inc c                                         ; $4793: $0c
    inc l                                         ; $4794: $2c
    add hl, de                                    ; $4795: $19
    ld [bc], a                                    ; $4796: $02
    dec c                                         ; $4797: $0d
    ld hl, $021a                                  ; $4798: $21 $1a $02
    ld c, $29                                     ; $479b: $0e $29
    ld a, [de]                                    ; $479d: $1a
    ld [bc], a                                    ; $479e: $02
    rrca                                          ; $479f: $0f
    dec l                                         ; $47a0: $2d
    ld a, [de]                                    ; $47a1: $1a
    ld [bc], a                                    ; $47a2: $02
    db $10                                        ; $47a3: $10
    inc l                                         ; $47a4: $2c
    dec de                                        ; $47a5: $1b
    ld [bc], a                                    ; $47a6: $02
    ld de, $1d27                                  ; $47a7: $11 $27 $1d
    ld [bc], a                                    ; $47aa: $02
    ld [de], a                                    ; $47ab: $12
    dec hl                                        ; $47ac: $2b
    dec e                                         ; $47ad: $1d
    ld [bc], a                                    ; $47ae: $02
    inc de                                        ; $47af: $13
    add hl, hl                                    ; $47b0: $29
    rra                                           ; $47b1: $1f
    ld [bc], a                                    ; $47b2: $02
    inc d                                         ; $47b3: $14
    dec hl                                        ; $47b4: $2b
    jr nz, jr_066_47b9                            ; $47b5: $20 $02

    dec d                                         ; $47b7: $15
    ld a, [hl+]                                   ; $47b8: $2a

jr_066_47b9:
    ld hl, $1602                                  ; $47b9: $21 $02 $16
    ld d, $22                                     ; $47bc: $16 $22
    ld [bc], a                                    ; $47be: $02
    rla                                           ; $47bf: $17
    add hl, de                                    ; $47c0: $19
    ld [hl+], a                                   ; $47c1: $22
    ld [bc], a                                    ; $47c2: $02
    jr jr_066_47d8                                ; $47c3: $18 $13

    dec h                                         ; $47c5: $25
    ld [bc], a                                    ; $47c6: $02
    add hl, de                                    ; $47c7: $19
    ld [de], a                                    ; $47c8: $12
    ld h, $02                                     ; $47c9: $26 $02
    ld a, [de]                                    ; $47cb: $1a
    dec e                                         ; $47cc: $1d
    daa                                           ; $47cd: $27
    ld [bc], a                                    ; $47ce: $02
    dec de                                        ; $47cf: $1b
    rra                                           ; $47d0: $1f
    jr z, jr_066_47d5                             ; $47d1: $28 $02

    inc e                                         ; $47d3: $1c
    ld [de], a                                    ; $47d4: $12

jr_066_47d5:
    add hl, hl                                    ; $47d5: $29
    ld [bc], a                                    ; $47d6: $02
    dec e                                         ; $47d7: $1d

jr_066_47d8:
    ld de, $022b                                  ; $47d8: $11 $2b $02
    ld e, $13                                     ; $47db: $1e $13
    dec hl                                        ; $47dd: $2b
    ld [bc], a                                    ; $47de: $02
    rra                                           ; $47df: $1f
    ld e, $2b                                     ; $47e0: $1e $2b
    ld [bc], a                                    ; $47e2: $02
    jr nz, jr_066_47f7                            ; $47e3: $20 $12

    inc l                                         ; $47e5: $2c
    ld [bc], a                                    ; $47e6: $02
    ld hl, $2c16                                  ; $47e7: $21 $16 $2c
    ld [bc], a                                    ; $47ea: $02
    ld [hl+], a                                   ; $47eb: $22
    dec e                                         ; $47ec: $1d
    inc l                                         ; $47ed: $2c
    ld [bc], a                                    ; $47ee: $02
    inc hl                                        ; $47ef: $23
    rra                                           ; $47f0: $1f
    inc l                                         ; $47f1: $2c
    ld [bc], a                                    ; $47f2: $02
    inc h                                         ; $47f3: $24
    ld [hl+], a                                   ; $47f4: $22
    inc l                                         ; $47f5: $2c
    ld [bc], a                                    ; $47f6: $02

jr_066_47f7:
    dec h                                         ; $47f7: $25
    dec d                                         ; $47f8: $15
    dec l                                         ; $47f9: $2d
    ld [bc], a                                    ; $47fa: $02
    ld h, $1b                                     ; $47fb: $26 $1b
    dec l                                         ; $47fd: $2d
    ld [bc], a                                    ; $47fe: $02
    daa                                           ; $47ff: $27
    ld e, $2d                                     ; $4800: $1e $2d
    ld [bc], a                                    ; $4802: $02
    jr z, jr_066_4826                             ; $4803: $28 $21

    dec l                                         ; $4805: $2d
    ld [bc], a                                    ; $4806: $02
    add hl, hl                                    ; $4807: $29
    ld d, $2e                                     ; $4808: $16 $2e
    ld [bc], a                                    ; $480a: $02
    ld a, [hl+]                                   ; $480b: $2a
    jr jr_066_483c                                ; $480c: $18 $2e

    ld [bc], a                                    ; $480e: $02
    dec hl                                        ; $480f: $2b
    rra                                           ; $4810: $1f
    ld l, $02                                     ; $4811: $2e $02
    inc l                                         ; $4813: $2c
    ld a, [de]                                    ; $4814: $1a
    cpl                                           ; $4815: $2f
    ld [bc], a                                    ; $4816: $02
    dec l                                         ; $4817: $2d
    inc e                                         ; $4818: $1c
    cpl                                           ; $4819: $2f
    ld [bc], a                                    ; $481a: $02
    ld l, $1d                                     ; $481b: $2e $1d
    jr nc, @+$01                                  ; $481d: $30 $ff

    rst $38                                       ; $481f: $ff
    rst $38                                       ; $4820: $ff
    add hl, hl                                    ; $4821: $29
    ld c, b                                       ; $4822: $48
    or c                                          ; $4823: $b1
    ld c, e                                       ; $4824: $4b
    add a                                         ; $4825: $87

jr_066_4826:
    ld d, b                                       ; $4826: $50
    and d                                         ; $4827: $a2
    ld d, b                                       ; $4828: $50
    cpl                                           ; $4829: $2f
    dec c                                         ; $482a: $0d
    ld c, $0e                                     ; $482b: $0e $0e
    ld c, $fc                                     ; $482d: $0e $fc
    jp hl                                         ; $482f: $e9


    ld c, l                                       ; $4830: $4d
    rst $28                                       ; $4831: $ef
    ldh [$fc], a                                  ; $4832: $e0 $fc
    rst $28                                       ; $4834: $ef
    nop                                           ; $4835: $00
    rst $38                                       ; $4836: $ff
    ldh [$d8], a                                  ; $4837: $e0 $d8
    db $ec                                        ; $4839: $ec
    ret z                                         ; $483a: $c8

    push hl                                       ; $483b: $e5

jr_066_483c:
    rst $38                                       ; $483c: $ff
    rst $38                                       ; $483d: $ff
    ld [c], a                                     ; $483e: $e2
    pop hl                                        ; $483f: $e1
    pop bc                                        ; $4840: $c1
    ld [c], a                                     ; $4841: $e2
    rst $38                                       ; $4842: $ff
    rst $38                                       ; $4843: $ff

jr_066_4844:
    db $e3                                        ; $4844: $e3
    ld [c], a                                     ; $4845: $e2
    adc b                                         ; $4846: $88
    ld a, [hl]                                    ; $4847: $7e
    di                                            ; $4848: $f3
    ret z                                         ; $4849: $c8

    rst $38                                       ; $484a: $ff
    cp b                                          ; $484b: $b8
    xor $4d                                       ; $484c: $ee $4d
    call c, Call_066_64ff                         ; $484e: $dc $ff $64
    ld [c], a                                     ; $4851: $e2
    cp $c9                                        ; $4852: $fe $c9
    dec c                                         ; $4854: $0d
    ld b, $00                                     ; $4855: $06 $00
    rst $20                                       ; $4857: $e7
    ld c, l                                       ; $4858: $4d
    ld c, l                                       ; $4859: $4d
    db $fc                                        ; $485a: $fc
    call z, $dffe                                 ; $485b: $cc $fe $df
    jr jr_066_4844                                ; $485e: $18 $e4

    add [hl]                                      ; $4860: $86
    pop hl                                        ; $4861: $e1
    ret nz                                        ; $4862: $c0

    ld [c], a                                     ; $4863: $e2
    pop af                                        ; $4864: $f1
    dec l                                         ; $4865: $2d
    ld a, d                                       ; $4866: $7a
    rst $38                                       ; $4867: $ff
    inc b                                         ; $4868: $04
    pop af                                        ; $4869: $f1
    add a                                         ; $486a: $87
    ldh [rKEY1], a                                ; $486b: $e0 $4d
    dec c                                         ; $486d: $0d
    ld l, l                                       ; $486e: $6d
    ld l, e                                       ; $486f: $6b
    rrca                                          ; $4870: $0f
    ld l, e                                       ; $4871: $6b
    ld l, e                                       ; $4872: $6b
    ld c, l                                       ; $4873: $4d
    dec l                                         ; $4874: $2d
    cp $e0                                        ; $4875: $fe $e0
    nop                                           ; $4877: $00
    rst $38                                       ; $4878: $ff
    cp [hl]                                       ; $4879: $be
    rst $08                                       ; $487a: $cf
    jp Jump_066_41e1                              ; $487b: $c3 $e1 $41


    dec c                                         ; $487e: $0d
    cp $e0                                        ; $487f: $fe $e0
    cp l                                          ; $4881: $bd
    ld [c], a                                     ; $4882: $e2
    ld a, [hl]                                    ; $4883: $7e
    ld a, [$eb02]                                 ; $4884: $fa $02 $eb
    nop                                           ; $4887: $00
    call nz, $c24d                                ; $4888: $c4 $4d $c2
    db $e3                                        ; $488b: $e3
    add b                                         ; $488c: $80
    cp [hl]                                       ; $488d: $be
    ld [c], a                                     ; $488e: $e2
    ld a, [hl]                                    ; $488f: $7e
    and $fc                                       ; $4890: $e6 $fc
    or e                                          ; $4892: $b3
    ld [de], a                                    ; $4893: $12
    jp nc, $e044                                  ; $4894: $d2 $44 $e0

    add h                                         ; $4897: $84
    pop hl                                        ; $4898: $e1
    ld a, [$6de3]                                 ; $4899: $fa $e3 $6d
    nop                                           ; $489c: $00
    or a                                          ; $489d: $b7
    ret nz                                        ; $489e: $c0

    db $fc                                        ; $489f: $fc
    cp a                                          ; $48a0: $bf
    nop                                           ; $48a1: $00
    ld [$e146], a                                 ; $48a2: $ea $46 $e1
    adc h                                         ; $48a5: $8c
    and c                                         ; $48a6: $a1
    ld sp, hl                                     ; $48a7: $f9
    pop hl                                        ; $48a8: $e1
    ld a, $e2                                     ; $48a9: $3e $e2
    ld l, d                                       ; $48ab: $6a
    and c                                         ; $48ac: $a1
    ld a, b                                       ; $48ad: $78
    ret nz                                        ; $48ae: $c0

    rst $38                                       ; $48af: $ff
    ld [$44c5], sp                                ; $48b0: $08 $c5 $44
    ld [c], a                                     ; $48b3: $e2
    dec c                                         ; $48b4: $0d
    dec hl                                        ; $48b5: $2b
    dec bc                                        ; $48b6: $0b
    dec hl                                        ; $48b7: $2b
    cp a                                          ; $48b8: $bf
    ldh [$f0], a                                  ; $48b9: $e0 $f0
    ld a, $e3                                     ; $48bb: $3e $e3
    cp $df                                        ; $48bd: $fe $df
    ld [hl-], a                                   ; $48bf: $32
    and l                                         ; $48c0: $a5
    add l                                         ; $48c1: $85
    call nz, Call_000_0d0d                        ; $48c2: $c4 $0d $0d
    ld a, [bc]                                    ; $48c5: $0a
    dec hl                                        ; $48c6: $2b
    add hl, bc                                    ; $48c7: $09
    dec bc                                        ; $48c8: $0b
    cp a                                          ; $48c9: $bf
    ld [c], a                                     ; $48ca: $e2
    cp b                                          ; $48cb: $b8
    ret nz                                        ; $48cc: $c0

    dec l                                         ; $48cd: $2d
    db $ec                                        ; $48ce: $ec
    add h                                         ; $48cf: $84
    cp $df                                        ; $48d0: $fe $df
    adc b                                         ; $48d2: $88
    and e                                         ; $48d3: $a3
    add l                                         ; $48d4: $85
    pop bc                                        ; $48d5: $c1
    ld c, a                                       ; $48d6: $4f
    ld a, [bc]                                    ; $48d7: $0a
    ld c, d                                       ; $48d8: $4a
    ld l, e                                       ; $48d9: $6b
    dec bc                                        ; $48da: $0b
    rst $38                                       ; $48db: $ff
    ldh [$3e], a                                  ; $48dc: $e0 $3e
    ld [c], a                                     ; $48de: $e2
    ld l, l                                       ; $48df: $6d
    db $fc                                        ; $48e0: $fc
    cp a                                          ; $48e1: $bf
    ld a, h                                       ; $48e2: $7c
    inc b                                         ; $48e3: $04
    xor c                                         ; $48e4: $a9
    ret nz                                        ; $48e5: $c0

    ld [c], a                                     ; $48e6: $e2
    dec c                                         ; $48e7: $0d
    ld a, [bc]                                    ; $48e8: $0a
    ld l, d                                       ; $48e9: $6a
    ld c, e                                       ; $48ea: $4b
    ld c, e                                       ; $48eb: $4b
    add [hl]                                      ; $48ec: $86
    ldh [$e0], a                                  ; $48ed: $e0 $e0
    cp c                                          ; $48ef: $b9
    pop bc                                        ; $48f0: $c1
    cp [hl]                                       ; $48f1: $be
    ret nz                                        ; $48f2: $c0

    db $fc                                        ; $48f3: $fc
    cp a                                          ; $48f4: $bf
    add b                                         ; $48f5: $80
    jp hl                                         ; $48f6: $e9


    jp nz, Jump_000_0ac2                          ; $48f7: $c2 $c2 $0a

    dec l                                         ; $48fa: $2d
    dec c                                         ; $48fb: $0d
    rlca                                          ; $48fc: $07
    dec c                                         ; $48fd: $0d
    dec l                                         ; $48fe: $2d
    dec l                                         ; $48ff: $2d
    ei                                            ; $4900: $fb
    and c                                         ; $4901: $a1
    add b                                         ; $4902: $80
    ld sp, hl                                     ; $4903: $f9
    nop                                           ; $4904: $00
    rst $08                                       ; $4905: $cf
    ld c, c                                       ; $4906: $49
    and b                                         ; $4907: $a0
    ret nz                                        ; $4908: $c0

    jp nz, $c306                                  ; $4909: $c2 $06 $c3

    ldh [$0c], a                                  ; $490c: $e0 $0c
    inc c                                         ; $490e: $0c
    scf                                           ; $490f: $37
    jp nz, $a238                                  ; $4910: $c2 $38 $a2

    ld hl, sp+$74                                 ; $4913: $f8 $74
    adc b                                         ; $4915: $88
    sub c                                         ; $4916: $91
    ld b, b                                       ; $4917: $40
    jp nz, $c43e                                  ; $4918: $c2 $3e $c4

    ldh [$0c], a                                  ; $491b: $e0 $0c
    inc c                                         ; $491d: $0c
    inc l                                         ; $491e: $2c
    inc c                                         ; $491f: $0c
    inc l                                         ; $4920: $2c
    rst $38                                       ; $4921: $ff
    jp nz, Jump_066_7ff8                          ; $4922: $c2 $f8 $7f

    jr nc, jr_066_492b                            ; $4925: $30 $04

    adc c                                         ; $4927: $89
    jp nz, $c4e2                                  ; $4928: $c2 $e2 $c4

jr_066_492b:
    ldh [rIE], a                                  ; $492b: $e0 $ff
    pop hl                                        ; $492d: $e1
    inc l                                         ; $492e: $2c
    inc l                                         ; $492f: $2c
    db $fd                                        ; $4930: $fd
    and d                                         ; $4931: $a2
    ld hl, sp+$7f                                 ; $4932: $f8 $7f
    inc c                                         ; $4934: $0c
    ld [bc], a                                    ; $4935: $02
    xor d                                         ; $4936: $aa
    push bc                                       ; $4937: $c5
    pop hl                                        ; $4938: $e1
    ld l, h                                       ; $4939: $6c
    ld c, h                                       ; $493a: $4c
    rst $38                                       ; $493b: $ff
    ldh [$7d], a                                  ; $493c: $e0 $7d
    db $e4                                        ; $493e: $e4
    halt                                          ; $493f: $76
    add c                                         ; $4940: $81
    cp $df                                        ; $4941: $fe $df
    ld [$c400], sp                                ; $4943: $08 $00 $c4
    ld [bc], a                                    ; $4946: $02
    and b                                         ; $4947: $a0
    pop bc                                        ; $4948: $c1
    pop hl                                        ; $4949: $e1
    ld l, h                                       ; $494a: $6c
    ld b, b                                       ; $494b: $40
    ret nz                                        ; $494c: $c0

    cp [hl]                                       ; $494d: $be
    db $e3                                        ; $494e: $e3
    cp a                                          ; $494f: $bf
    ld [c], a                                     ; $4950: $e2
    ld hl, sp+$76                                 ; $4951: $f8 $76
    ld [$d000], sp                                ; $4953: $08 $00 $d0
    pop bc                                        ; $4956: $c1
    ld [c], a                                     ; $4957: $e2
    ret nz                                        ; $4958: $c0

    and c                                         ; $4959: $a1
    dec hl                                        ; $495a: $2b
    cp [hl]                                       ; $495b: $be
    ld [c], a                                     ; $495c: $e2
    cp a                                          ; $495d: $bf
    db $e3                                        ; $495e: $e3
    ld b, [hl]                                    ; $495f: $46
    rst $38                                       ; $4960: $ff
    add d                                         ; $4961: $82
    add l                                         ; $4962: $85
    ld b, e                                       ; $4963: $43
    dec l                                         ; $4964: $2d
    inc c                                         ; $4965: $0c
    call z, $c0e2                                 ; $4966: $cc $e2 $c0
    and c                                         ; $4969: $a1
    cp [hl]                                       ; $496a: $be
    ld [c], a                                     ; $496b: $e2
    ld a, [hl]                                    ; $496c: $7e
    ld [c], a                                     ; $496d: $e2
    dec l                                         ; $496e: $2d
    nop                                           ; $496f: $00
    rst $38                                       ; $4970: $ff
    inc c                                         ; $4971: $0c
    cp [hl]                                       ; $4972: $be
    ld b, [hl]                                    ; $4973: $46
    pop bc                                        ; $4974: $c1
    jp nz, Jump_066_4b6b                          ; $4975: $c2 $6b $4b

    ld a, a                                       ; $4978: $7f
    and c                                         ; $4979: $a1
    ld a, h                                       ; $497a: $7c
    ldh [$7e], a                                  ; $497b: $e0 $7e
    db $e3                                        ; $497d: $e3
    ld a, c                                       ; $497e: $79
    add b                                         ; $497f: $80
    inc h                                         ; $4980: $24
    nop                                           ; $4981: $00
    rst $18                                       ; $4982: $df
    nop                                           ; $4983: $00
    ld b, h                                       ; $4984: $44
    ld l, e                                       ; $4985: $6b
    adc c                                         ; $4986: $89
    ret nz                                        ; $4987: $c0

    add a                                         ; $4988: $87
    ret nz                                        ; $4989: $c0

    ld c, e                                       ; $498a: $4b
    cp [hl]                                       ; $498b: $be
    db $e3                                        ; $498c: $e3
    ld a, [hl]                                    ; $498d: $7e
    db $e3                                        ; $498e: $e3
    ld [$6032], sp                                ; $498f: $08 $32 $60
    db $f4                                        ; $4992: $f4
    ld sp, $5212                                  ; $4993: $31 $12 $52
    ld l, e                                       ; $4996: $6b
    ld a, [bc]                                    ; $4997: $0a
    ld [c], a                                     ; $4998: $e2
    ld a, l                                       ; $4999: $7d
    pop hl                                        ; $499a: $e1
    ld a, h                                       ; $499b: $7c
    db $e3                                        ; $499c: $e3
    db $fc                                        ; $499d: $fc
    pop bc                                        ; $499e: $c1
    jr jr_066_4a19                                ; $499f: $18 $78

    add [hl]                                      ; $49a1: $86
    jr c, @-$65                                   ; $49a2: $38 $99

    ld a, [hl]                                    ; $49a4: $7e
    and h                                         ; $49a5: $a4
    dec l                                         ; $49a6: $2d
    ld l, e                                       ; $49a7: $6b
    cp [hl]                                       ; $49a8: $be
    rst $20                                       ; $49a9: $e7
    cp d                                          ; $49aa: $ba
    add c                                         ; $49ab: $81
    or [hl]                                       ; $49ac: $b6
    and c                                         ; $49ad: $a1
    ld b, b                                       ; $49ae: $40
    cp a                                          ; $49af: $bf
    db $e3                                        ; $49b0: $e3
    db $fc                                        ; $49b1: $fc
    rst $18                                       ; $49b2: $df
    ld b, $42                                     ; $49b3: $06 $42
    cp a                                          ; $49b5: $bf
    ldh [$7c], a                                  ; $49b6: $e0 $7c
    ldh [$c2], a                                  ; $49b8: $e0 $c2
    and c                                         ; $49ba: $a1
    dec hl                                        ; $49bb: $2b
    ld a, [$c0c2]                                 ; $49bc: $fa $c2 $c0
    ld a, e                                       ; $49bf: $7b
    call nz, $a678                                ; $49c0: $c4 $78 $a6
    nop                                           ; $49c3: $00
    sbc c                                         ; $49c4: $99
    db $fc                                        ; $49c5: $fc
    ld h, e                                       ; $49c6: $63
    ld a, l                                       ; $49c7: $7d
    ld [c], a                                     ; $49c8: $e2
    ccf                                           ; $49c9: $3f
    and b                                         ; $49ca: $a0
    ld a, [bc]                                    ; $49cb: $0a
    ld a, [hl+]                                   ; $49cc: $2a
    ret nz                                        ; $49cd: $c0

    cp c                                          ; $49ce: $b9
    ret nz                                        ; $49cf: $c0

    ld a, e                                       ; $49d0: $7b
    push bc                                       ; $49d1: $c5
    ld hl, sp-$7c                                 ; $49d2: $f8 $84
    cp $df                                        ; $49d4: $fe $df
    db $fc                                        ; $49d6: $fc
    add c                                         ; $49d7: $81
    dec sp                                        ; $49d8: $3b
    and e                                         ; $49d9: $a3
    ld c, d                                       ; $49da: $4a
    ld a, [bc]                                    ; $49db: $0a
    ld b, c                                       ; $49dc: $41
    ld a, [bc]                                    ; $49dd: $0a
    add hl, sp                                    ; $49de: $39
    pop bc                                        ; $49df: $c1
    db $fd                                        ; $49e0: $fd
    jp $f280                                      ; $49e1: $c3 $80 $f2


    nop                                           ; $49e4: $00
    rst $28                                       ; $49e5: $ef
    db $fc                                        ; $49e6: $fc
    add e                                         ; $49e7: $83
    dec c                                         ; $49e8: $0d
    ei                                            ; $49e9: $fb
    add d                                         ; $49ea: $82
    add c                                         ; $49eb: $81
    ld a, [bc]                                    ; $49ec: $0a
    ld a, b                                       ; $49ed: $78
    ld h, c                                       ; $49ee: $61
    ld a, a                                       ; $49ef: $7f
    ldh [$b3], a                                  ; $49f0: $e0 $b3
    add c                                         ; $49f2: $81
    ld hl, sp-$79                                 ; $49f3: $f8 $87
    sbc b                                         ; $49f5: $98
    dec e                                         ; $49f6: $1d
    ld a, h                                       ; $49f7: $7c
    add e                                         ; $49f8: $83
    ld c, h                                       ; $49f9: $4c
    rlca                                          ; $49fa: $07
    ld c, h                                       ; $49fb: $4c
    ld l, h                                       ; $49fc: $6c
    ld l, h                                       ; $49fd: $6c
    add c                                         ; $49fe: $81
    ld [c], a                                     ; $49ff: $e2
    ccf                                           ; $4a00: $3f
    ldh [$ee], a                                  ; $4a01: $e0 $ee
    and d                                         ; $4a03: $a2
    halt                                          ; $4a04: $76
    ld [hl], b                                    ; $4a05: $70
    ld a, [hl+]                                   ; $4a06: $2a
    ld l, $ec                                     ; $4a07: $2e $ec
    nop                                           ; $4a09: $00
    db $e4                                        ; $4a0a: $e4
    dec a                                         ; $4a0b: $3d
    ld b, d                                       ; $4a0c: $42
    ld c, h                                       ; $4a0d: $4c
    ld c, h                                       ; $4a0e: $4c
    pop bc                                        ; $4a0f: $c1
    jp Jump_066_6b4b                              ; $4a10: $c3 $4b $6b


    ld c, e                                       ; $4a13: $4b
    ret nc                                        ; $4a14: $d0

    ld l, l                                       ; $4a15: $6d
    and e                                         ; $4a16: $a3
    halt                                          ; $4a17: $76
    ld h, e                                       ; $4a18: $63

jr_066_4a19:
    nop                                           ; $4a19: $00
    ld e, l                                       ; $4a1a: $5d
    db $fc                                        ; $4a1b: $fc
    ld b, l                                       ; $4a1c: $45
    ld l, e                                       ; $4a1d: $6b
    ld b, l                                       ; $4a1e: $45
    pop hl                                        ; $4a1f: $e1
    dec bc                                        ; $4a20: $0b
    ld l, e                                       ; $4a21: $6b
    cpl                                           ; $4a22: $2f
    dec bc                                        ; $4a23: $0b
    ld c, e                                       ; $4a24: $4b
    ld c, e                                       ; $4a25: $4b
    ld c, e                                       ; $4a26: $4b
    inc sp                                        ; $4a27: $33
    pop hl                                        ; $4a28: $e1
    ld l, h                                       ; $4a29: $6c
    ld a, e                                       ; $4a2a: $7b
    and c                                         ; $4a2b: $a1
    ld b, d                                       ; $4a2c: $42

jr_066_4a2d:
    cp a                                          ; $4a2d: $bf
    inc e                                         ; $4a2e: $1c
    db $fc                                        ; $4a2f: $fc
    ld b, [hl]                                    ; $4a30: $46
    jp nz, Jump_000_0be2                          ; $4a31: $c2 $e2 $0b

    ld l, e                                       ; $4a34: $6b
    ld c, e                                       ; $4a35: $4b
    ld a, [hl-]                                   ; $4a36: $3a
    ld b, c                                       ; $4a37: $41
    di                                            ; $4a38: $f3
    pop bc                                        ; $4a39: $c1
    or $60                                        ; $4a3a: $f6 $60
    ld bc, $006d                                  ; $4a3c: $01 $6d $00
    rst $18                                       ; $4a3f: $df
    db $fc                                        ; $4a40: $fc
    ld b, a                                       ; $4a41: $47
    add d                                         ; $4a42: $82
    db $e3                                        ; $4a43: $e3
    pop bc                                        ; $4a44: $c1
    ldh [$b4], a                                  ; $4a45: $e0 $b4
    push bc                                       ; $4a47: $c5
    nop                                           ; $4a48: $00
    rst $18                                       ; $4a49: $df
    db $fc                                        ; $4a4a: $fc
    ld l, b                                       ; $4a4b: $68
    ld bc, $430d                                  ; $4a4c: $01 $0d $43
    add b                                         ; $4a4f: $80
    ld b, $e0                                     ; $4a50: $06 $e0
    add d                                         ; $4a52: $82
    pop hl                                        ; $4a53: $e1
    dec [hl]                                      ; $4a54: $35
    jp Jump_066_6035                              ; $4a55: $c3 $35 $60


    nop                                           ; $4a58: $00
    rst $18                                       ; $4a59: $df
    jr c, jr_066_4ac2                             ; $4a5a: $38 $66

    add b                                         ; $4a5c: $80
    ret nz                                        ; $4a5d: $c0

    ldh [$c6], a                                  ; $4a5e: $e0 $c6
    jp Jump_066_6333                              ; $4a60: $c3 $33 $63


    dec [hl]                                      ; $4a63: $35
    ld h, e                                       ; $4a64: $63
    nop                                           ; $4a65: $00
    sbc $fc                                       ; $4a66: $de $fc
    jr z, jr_066_4a2d                             ; $4a68: $28 $c3

    jp nz, Jump_000_082b                          ; $4a6a: $c2 $2b $08

    cp a                                          ; $4a6d: $bf
    ld hl, $8172                                  ; $4a6e: $21 $72 $81
    db $f4                                        ; $4a71: $f4
    ld b, e                                       ; $4a72: $43
    ld l, l                                       ; $4a73: $6d
    ld hl, sp+$1f                                 ; $4a74: $f8 $1f
    ld a, h                                       ; $4a76: $7c
    daa                                           ; $4a77: $27
    pop bc                                        ; $4a78: $c1
    jp $013c                                      ; $4a79: $c3 $3c $01


    nop                                           ; $4a7c: $00
    rst $30                                       ; $4a7d: $f7
    ld b, b                                       ; $4a7e: $40
    di                                            ; $4a7f: $f3
    ld b, c                                       ; $4a80: $41
    ret nz                                        ; $4a81: $c0

    ldh [rSC], a                                  ; $4a82: $e0 $02
    rst $38                                       ; $4a84: $ff
    db $fc                                        ; $4a85: $fc
    dec h                                         ; $4a86: $25
    rst $00                                       ; $4a87: $c7
    ld bc, $c380                                  ; $4a88: $01 $80 $c3
    ld a, [hl]                                    ; $4a8b: $7e
    pop hl                                        ; $4a8c: $e1
    inc bc                                        ; $4a8d: $03
    ld c, h                                       ; $4a8e: $4c
    ld c, h                                       ; $4a8f: $4c
    ld l, [hl]                                    ; $4a90: $6e
    add c                                         ; $4a91: $81
    ld b, b                                       ; $4a92: $40
    pop hl                                        ; $4a93: $e1
    nop                                           ; $4a94: $00
    rst $18                                       ; $4a95: $df
    ld a, h                                       ; $4a96: $7c
    ld h, $c0                                     ; $4a97: $26 $c0
    db $e4                                        ; $4a99: $e4
    rst $38                                       ; $4a9a: $ff
    ld [c], a                                     ; $4a9b: $e2
    add [hl]                                      ; $4a9c: $86
    or c                                          ; $4a9d: $b1
    ld hl, $6c4c                                  ; $4a9e: $21 $4c $6c
    nop                                           ; $4aa1: $00
    rst $38                                       ; $4aa2: $ff
    db $fc                                        ; $4aa3: $fc
    ld b, a                                       ; $4aa4: $47
    cp a                                          ; $4aa5: $bf
    add sp, -$04                                  ; $4aa6: $e8 $fc
    ret nz                                        ; $4aa8: $c0

    dec l                                         ; $4aa9: $2d
    ld [hl+], a                                   ; $4aaa: $22
    xor d                                         ; $4aab: $aa
    jr nz, jr_066_4adb                            ; $4aac: $20 $2d

    pop bc                                        ; $4aae: $c1
    and b                                         ; $4aaf: $a0
    nop                                           ; $4ab0: $00
    rst $38                                       ; $4ab1: $ff
    db $fc                                        ; $4ab2: $fc
    ld b, [hl]                                    ; $4ab3: $46
    dec c                                         ; $4ab4: $0d
    ld b, b                                       ; $4ab5: $40
    db $e3                                        ; $4ab6: $e3
    ret nz                                        ; $4ab7: $c0

    db $e3                                        ; $4ab8: $e3
    nop                                           ; $4ab9: $00
    ld [bc], a                                    ; $4aba: $02
    ld h, b                                       ; $4abb: $60
    cp e                                          ; $4abc: $bb
    nop                                           ; $4abd: $00
    ld a, b                                       ; $4abe: $78
    ld [hl+], a                                   ; $4abf: $22
    ret nz                                        ; $4ac0: $c0

    db $ed                                        ; $4ac1: $ed

jr_066_4ac2:
    nop                                           ; $4ac2: $00
    pop de                                        ; $4ac3: $d1
    inc a                                         ; $4ac4: $3c
    ld h, c                                       ; $4ac5: $61
    rst $38                                       ; $4ac6: $ff
    push bc                                       ; $4ac7: $c5
    ld a, $e1                                     ; $4ac8: $3e $e1
    ld bc, $860d                                  ; $4aca: $01 $0d $86
    ldh [$bf], a                                  ; $4acd: $e0 $bf
    pop hl                                        ; $4acf: $e1
    nop                                           ; $4ad0: $00
    ld e, a                                       ; $4ad1: $5f
    ld a, h                                       ; $4ad2: $7c
    ld b, a                                       ; $4ad3: $47
    ld a, a                                       ; $4ad4: $7f
    and b                                         ; $4ad5: $a0
    dec b                                         ; $4ad6: $05
    and c                                         ; $4ad7: $a1
    ld b, l                                       ; $4ad8: $45
    add b                                         ; $4ad9: $80
    nop                                           ; $4ada: $00

jr_066_4adb:
    rst $38                                       ; $4adb: $ff
    nop                                           ; $4adc: $00
    ld [$80a0], sp                                ; $4add: $08 $a0 $80
    ld d, e                                       ; $4ae0: $53
    db $fc                                        ; $4ae1: $fc
    dec d                                         ; $4ae2: $15
    dec a                                         ; $4ae3: $3d
    ld h, c                                       ; $4ae4: $61
    ld a, a                                       ; $4ae5: $7f
    and b                                         ; $4ae6: $a0
    push bc                                       ; $4ae7: $c5
    add b                                         ; $4ae8: $80
    ret nz                                        ; $4ae9: $c0

    ld [c], a                                     ; $4aea: $e2
    jr jr_066_4aed                                ; $4aeb: $18 $00

jr_066_4aed:
    ccf                                           ; $4aed: $3f
    ld a, h                                       ; $4aee: $7c
    dec c                                         ; $4aef: $0d
    ld a, $c5                                     ; $4af0: $3e $c5
    ld c, e                                       ; $4af2: $4b
    ld c, e                                       ; $4af3: $4b
    db $f4                                        ; $4af4: $f4
    ld b, b                                       ; $4af5: $40
    nop                                           ; $4af6: $00
    scf                                           ; $4af7: $37
    nop                                           ; $4af8: $00
    push de                                       ; $4af9: $d5
    nop                                           ; $4afa: $00
    cp e                                          ; $4afb: $bb
    nop                                           ; $4afc: $00
    ret nz                                        ; $4afd: $c0

    db $e4                                        ; $4afe: $e4
    add b                                         ; $4aff: $80
    jp nz, $067e                                  ; $4b00: $c2 $7e $06

    ld [bc], a                                    ; $4b03: $02
    rst $38                                       ; $4b04: $ff
    ld a, h                                       ; $4b05: $7c
    dec b                                         ; $4b06: $05
    ret                                           ; $4b07: $c9


    add c                                         ; $4b08: $81
    ld b, e                                       ; $4b09: $43
    ldh [rP1], a                                  ; $4b0a: $e0 $00
    ret nz                                        ; $4b0c: $c0

    db $e3                                        ; $4b0d: $e3
    nop                                           ; $4b0e: $00
    ccf                                           ; $4b0f: $3f
    nop                                           ; $4b10: $00
    xor [hl]                                      ; $4b11: $ae
    rst $00                                       ; $4b12: $c7
    and d                                         ; $4b13: $a2
    add c                                         ; $4b14: $81
    pop hl                                        ; $4b15: $e1
    cp [hl]                                       ; $4b16: $be
    and e                                         ; $4b17: $a3
    inc b                                         ; $4b18: $04
    ld b, d                                       ; $4b19: $42
    inc b                                         ; $4b1a: $04
    rst $18                                       ; $4b1b: $df
    ld b, b                                       ; $4b1c: $40
    add b                                         ; $4b1d: $80
    add [hl]                                      ; $4b1e: $86
    ccf                                           ; $4b1f: $3f
    add h                                         ; $4b20: $84
    cp e                                          ; $4b21: $bb
    ld [bc], a                                    ; $4b22: $02
    cp e                                          ; $4b23: $bb
    add c                                         ; $4b24: $81
    inc b                                         ; $4b25: $04
    jp nc, $9700                                  ; $4b26: $d2 $00 $97

    dec l                                         ; $4b29: $2d
    cp a                                          ; $4b2a: $bf
    add l                                         ; $4b2b: $85
    nop                                           ; $4b2c: $00
    ld a, e                                       ; $4b2d: $7b
    add h                                         ; $4b2e: $84
    call nz, Call_000_04a1                        ; $4b2f: $c4 $a1 $04
    rst $08                                       ; $4b32: $cf
    nop                                           ; $4b33: $00
    ld e, d                                       ; $4b34: $5a
    ret nz                                        ; $4b35: $c0

    rst $20                                       ; $4b36: $e7
    cp a                                          ; $4b37: $bf
    and d                                         ; $4b38: $a2
    ld c, d                                       ; $4b39: $4a
    rst $38                                       ; $4b3a: $ff
    nop                                           ; $4b3b: $00
    jp z, Jump_066_401e                           ; $4b3c: $ca $1e $40

    ld h, d                                       ; $4b3f: $62
    dec c                                         ; $4b40: $0d
    dec bc                                        ; $4b41: $0b
    dec bc                                        ; $4b42: $0b
    dec l                                         ; $4b43: $2d
    cp h                                          ; $4b44: $bc
    add d                                         ; $4b45: $82
    ld b, b                                       ; $4b46: $40
    and c                                         ; $4b47: $a1
    inc b                                         ; $4b48: $04
    rst $38                                       ; $4b49: $ff
    nop                                           ; $4b4a: $00
    nop                                           ; $4b4b: $00
    xor e                                         ; $4b4c: $ab
    ld bc, $fbe5                                  ; $4b4d: $01 $e5 $fb
    ld h, c                                       ; $4b50: $61
    ld b, a                                       ; $4b51: $47
    ld b, b                                       ; $4b52: $40
    nop                                           ; $4b53: $00
    rst $18                                       ; $4b54: $df
    nop                                           ; $4b55: $00
    ld b, a                                       ; $4b56: $47
    ret nz                                        ; $4b57: $c0

    ld [$617b], a                                 ; $4b58: $ea $7b $61
    ld h, b                                       ; $4b5b: $60
    add [hl]                                      ; $4b5c: $86
    add d                                         ; $4b5d: $82
    ld l, d                                       ; $4b5e: $6a
    jr nz, jr_066_4b63                            ; $4b5f: $20 $02

    cp a                                          ; $4b61: $bf
    nop                                           ; $4b62: $00

jr_066_4b63:
    and l                                         ; $4b63: $a5
    cp a                                          ; $4b64: $bf
    ret nz                                        ; $4b65: $c0

    ld c, e                                       ; $4b66: $4b
    ld l, e                                       ; $4b67: $6b
    ld [bc], a                                    ; $4b68: $02
    add b                                         ; $4b69: $80
    nop                                           ; $4b6a: $00

Jump_066_4b6b:
    ld b, b                                       ; $4b6b: $40
    add d                                         ; $4b6c: $82
    add [hl]                                      ; $4b6d: $86
    add e                                         ; $4b6e: $83
    ld b, b                                       ; $4b6f: $40
    rst $18                                       ; $4b70: $df
    db $fc                                        ; $4b71: $fc
    rlca                                          ; $4b72: $07
    cp [hl]                                       ; $4b73: $be
    ld b, c                                       ; $4b74: $41
    rlca                                          ; $4b75: $07
    add c                                         ; $4b76: $81
    ld b, b                                       ; $4b77: $40
    ld h, b                                       ; $4b78: $60
    jp RST_20                                     ; $4b79: $c3 $20 $00


    add d                                         ; $4b7c: $82
    and [hl]                                      ; $4b7d: $a6
    ret nz                                        ; $4b7e: $c0

    rst $38                                       ; $4b7f: $ff
    cp $46                                        ; $4b80: $fe $46
    ld a, $00                                     ; $4b82: $3e $00
    ret nz                                        ; $4b84: $c0

    db $e3                                        ; $4b85: $e3
    add d                                         ; $4b86: $82
    ret z                                         ; $4b87: $c8

    nop                                           ; $4b88: $00
    rst $18                                       ; $4b89: $df
    ld a, [hl]                                    ; $4b8a: $7e
    adc e                                         ; $4b8b: $8b
    nop                                           ; $4b8c: $00
    ld b, e                                       ; $4b8d: $43
    ld h, h                                       ; $4b8e: $64
    add d                                         ; $4b8f: $82
    call nz, $ef02                                ; $4b90: $c4 $02 $ef
    cp $da                                        ; $4b93: $fe $da
    pop de                                        ; $4b95: $d1
    jp nz, $c1cd                                  ; $4b96: $c2 $cd $c1

    add e                                         ; $4b99: $83
    ld h, c                                       ; $4b9a: $61
    ld c, [hl]                                    ; $4b9b: $4e
    rst $38                                       ; $4b9c: $ff
    nop                                           ; $4b9d: $00
    nop                                           ; $4b9e: $00
    db $eb                                        ; $4b9f: $eb
    ld a, d                                       ; $4ba0: $7a
    inc hl                                        ; $4ba1: $23
    db $fc                                        ; $4ba2: $fc
    rst $20                                       ; $4ba3: $e7
    inc b                                         ; $4ba4: $04
    sbc a                                         ; $4ba5: $9f
    ret nz                                        ; $4ba6: $c0

    ret                                           ; $4ba7: $c9


    ld a, [$fc25]                                 ; $4ba8: $fa $25 $fc
    rst $20                                       ; $4bab: $e7
    nop                                           ; $4bac: $00
    sub l                                         ; $4bad: $95
    nop                                           ; $4bae: $00
    nop                                           ; $4baf: $00
    nop                                           ; $4bb0: $00
    rst $28                                       ; $4bb1: $ef
    and b                                         ; $4bb2: $a0
    call c, $dedd                                 ; $4bb3: $dc $dd $de
    db $fc                                        ; $4bb6: $fc
    ld [$d8a0], a                                 ; $4bb7: $ea $a0 $d8
    reti                                          ; $4bba: $d9


    ldh a, [$fc]                                  ; $4bbb: $f0 $fc
    rst $28                                       ; $4bbd: $ef
    cp $e0                                        ; $4bbe: $fe $e0
    ret c                                         ; $4bc0: $d8

    db $ed                                        ; $4bc1: $ed
    ret z                                         ; $4bc2: $c8

    db $e4                                        ; $4bc3: $e4
    rst $18                                       ; $4bc4: $df
    ldh [$e1], a                                  ; $4bc5: $e0 $e1
    ld [c], a                                     ; $4bc7: $e2
    sbc $fc                                       ; $4bc8: $de $fc
    jp hl                                         ; $4bca: $e9


    sub $d7                                       ; $4bcb: $d6 $d7
    jp c, $fcdb                                   ; $4bcd: $da $db $fc

    pop hl                                        ; $4bd0: $e1
    ret nc                                        ; $4bd1: $d0

    pop de                                        ; $4bd2: $d1
    call z, $e3fc                                 ; $4bd3: $cc $fc $e3
    ldh a, [$e3]                                  ; $4bd6: $f0 $e3
    and b                                         ; $4bd8: $a0
    and b                                         ; $4bd9: $a0
    ret c                                         ; $4bda: $d8

    db $ed                                        ; $4bdb: $ed
    ret z                                         ; $4bdc: $c8

    push hl                                       ; $4bdd: $e5
    db $e3                                        ; $4bde: $e3
    db $e4                                        ; $4bdf: $e4
    inc sp                                        ; $4be0: $33
    push hl                                       ; $4be1: $e5
    and $fc                                       ; $4be2: $e6 $fc
    jp hl                                         ; $4be4: $e9


    add d                                         ; $4be5: $82
    push hl                                       ; $4be6: $e5
    jp nc, $fcd3                                  ; $4be7: $d2 $d3 $fc

    db $e3                                        ; $4bea: $e3
    ld [hl], d                                    ; $4beb: $72
    push hl                                       ; $4bec: $e5
    inc a                                         ; $4bed: $3c
    ret c                                         ; $4bee: $d8

    db $ed                                        ; $4bef: $ed
    ret z                                         ; $4bf0: $c8

    push hl                                       ; $4bf1: $e5
    rst $20                                       ; $4bf2: $e7
    add sp, -$17                                  ; $4bf3: $e8 $e9
    ld [$e9fc], a                                 ; $4bf5: $ea $fc $e9
    add [hl]                                      ; $4bf8: $86
    push hl                                       ; $4bf9: $e5
    ccf                                           ; $4bfa: $3f
    call nc, $a0d5                                ; $4bfb: $d4 $d5 $a0
    and b                                         ; $4bfe: $a0
    call nc, Call_066_7ad5                        ; $4bff: $d4 $d5 $7a
    rst $20                                       ; $4c02: $e7
    ret c                                         ; $4c03: $d8

    db $ed                                        ; $4c04: $ed
    add b                                         ; $4c05: $80
    ret z                                         ; $4c06: $c8

    push hl                                       ; $4c07: $e5
    ld [bc], a                                    ; $4c08: $02
    db $ed                                        ; $4c09: $ed
    add [hl]                                      ; $4c0a: $86
    rst $20                                       ; $4c0b: $e7
    db $f4                                        ; $4c0c: $f4
    jp hl                                         ; $4c0d: $e9


    db $fc                                        ; $4c0e: $fc
    jp nz, $d2fe                                  ; $4c0f: $c2 $fe $d2

    ld [bc], a                                    ; $4c12: $02
    db $eb                                        ; $4c13: $eb
    and b                                         ; $4c14: $a0
    rst $30                                       ; $4c15: $f7
    and b                                         ; $4c16: $a0
    sub $d7                                       ; $4c17: $d6 $d7
    add [hl]                                      ; $4c19: $86
    db $e3                                        ; $4c1a: $e3
    and b                                         ; $4c1b: $a0
    sbc a                                         ; $4c1c: $9f
    sbc l                                         ; $4c1d: $9d
    sbc l                                         ; $4c1e: $9d
    dec de                                        ; $4c1f: $1b
    sbc l                                         ; $4c20: $9d
    sbc a                                         ; $4c21: $9f
    ld a, d                                       ; $4c22: $7a
    rst $20                                       ; $4c23: $e7
    sub $d7                                       ; $4c24: $d6 $d7
    cp $d3                                        ; $4c26: $fe $d3
    ld [bc], a                                    ; $4c28: $02
    db $eb                                        ; $4c29: $eb
    sub d                                         ; $4c2a: $92
    push bc                                       ; $4c2b: $c5
    rst $38                                       ; $4c2c: $ff
    sbc a                                         ; $4c2d: $9f
    sbc l                                         ; $4c2e: $9d
    and d                                         ; $4c2f: $a2
    sbc h                                         ; $4c30: $9c
    ld b, [hl]                                    ; $4c31: $46
    ld b, [hl]                                    ; $4c32: $46
    ld b, [hl]                                    ; $4c33: $46
    sbc h                                         ; $4c34: $9c
    scf                                           ; $4c35: $37
    and d                                         ; $4c36: $a2
    sbc l                                         ; $4c37: $9d
    sbc a                                         ; $4c38: $9f
    ld l, [hl]                                    ; $4c39: $6e
    db $e4                                        ; $4c3a: $e4
    ret c                                         ; $4c3b: $d8

    reti                                          ; $4c3c: $d9


    cp $d3                                        ; $4c3d: $fe $d3
    ld [bc], a                                    ; $4c3f: $02
    db $eb                                        ; $4c40: $eb
    ld d, $86                                     ; $4c41: $16 $86
    jp $9fa0                                      ; $4c43: $c3 $a0 $9f


    jp $aee1                                      ; $4c46: $c3 $e1 $ae


    cp $e0                                        ; $4c49: $fe $e0
    cp l                                          ; $4c4b: $bd
    ldh [$bf], a                                  ; $4c4c: $e0 $bf
    ldh [$50], a                                  ; $4c4e: $e0 $50
    ld hl, sp-$3d                                 ; $4c50: $f8 $c3
    cp $d3                                        ; $4c52: $fe $d3
    inc b                                         ; $4c54: $04
    rst $08                                       ; $4c55: $cf
    add [hl]                                      ; $4c56: $86
    ret nz                                        ; $4c57: $c0

    sbc [hl]                                      ; $4c58: $9e
    jp nz, $afe1                                  ; $4c59: $c2 $e1 $af

    cp $e0                                        ; $4c5c: $fe $e0
    ld h, b                                       ; $4c5e: $60
    cp [hl]                                       ; $4c5f: $be
    ldh [$bf], a                                  ; $4c60: $e0 $bf
    pop hl                                        ; $4c62: $e1
    ldh a, [$c5]                                  ; $4c63: $f0 $c5
    nop                                           ; $4c65: $00
    call c, $c308                                 ; $4c66: $dc $08 $c3
    call nc, $81d5                                ; $4c69: $d4 $d5 $81
    pop hl                                        ; $4c6c: $e1
    ld l, c                                       ; $4c6d: $69
    xor a                                         ; $4c6e: $af
    ld b, c                                       ; $4c6f: $41
    ldh [$fa], a                                  ; $4c70: $e0 $fa
    db $e3                                        ; $4c72: $e3
    sbc [hl]                                      ; $4c73: $9e
    pop bc                                        ; $4c74: $c1
    and b                                         ; $4c75: $a0
    call nc, $fcd5                                ; $4c76: $d4 $d5 $fc
    or l                                          ; $4c79: $b5
    db $f4                                        ; $4c7a: $f4
    inc b                                         ; $4c7b: $04
    call $c108                                    ; $4c7c: $cd $08 $c1
    sbc [hl]                                      ; $4c7f: $9e
    ld b, [hl]                                    ; $4c80: $46
    pop hl                                        ; $4c81: $e1
    ld a, c                                       ; $4c82: $79
    ld a, d                                       ; $4c83: $7a
    ld a, e                                       ; $4c84: $7b
    ld a, h                                       ; $4c85: $7c
    ld b, c                                       ; $4c86: $41
    ld a, l                                       ; $4c87: $7d
    ld a, [hl-]                                   ; $4c88: $3a
    pop hl                                        ; $4c89: $e1
    ld a, a                                       ; $4c8a: $7f
    ld [c], a                                     ; $4c8b: $e2
    db $fc                                        ; $4c8c: $fc
    or [hl]                                       ; $4c8d: $b6
    inc b                                         ; $4c8e: $04
    res 0, d                                      ; $4c8f: $cb $82
    jp $44a1                                      ; $4c91: $c3 $a1 $44


    ldh [$7f], a                                  ; $4c94: $e0 $7f
    ld a, c                                       ; $4c96: $79
    ld a, [hl]                                    ; $4c97: $7e
    ld b, l                                       ; $4c98: $45
    dec hl                                        ; $4c99: $2b
    dec hl                                        ; $4c9a: $2b
    ld a, a                                       ; $4c9b: $7f
    ld a, l                                       ; $4c9c: $7d
    ld a, b                                       ; $4c9d: $78
    pop hl                                        ; $4c9e: $e1
    ldh [$fd], a                                  ; $4c9f: $e0 $fd
    ret nz                                        ; $4ca1: $c0

    db $fc                                        ; $4ca2: $fc
    or a                                          ; $4ca3: $b7
    ld [bc], a                                    ; $4ca4: $02
    xor e                                         ; $4ca5: $ab
    inc d                                         ; $4ca6: $14
    and d                                         ; $4ca7: $a2
    jp nz, Jump_066_79c1                          ; $4ca8: $c2 $c1 $79

    ld a, [hl]                                    ; $4cab: $7e
    ld c, e                                       ; $4cac: $4b
    ld c, a                                       ; $4cad: $4f
    dec l                                         ; $4cae: $2d
    jr nz, jr_066_4cd1                            ; $4caf: $20 $20

    ld a, [hl+]                                   ; $4cb1: $2a
    cp a                                          ; $4cb2: $bf
    ldh [$b8], a                                  ; $4cb3: $e0 $b8
    ret nz                                        ; $4cb5: $c0

    and c                                         ; $4cb6: $a1
    db $fc                                        ; $4cb7: $fc
    cp b                                          ; $4cb8: $b8
    cp b                                          ; $4cb9: $b8
    ld [bc], a                                    ; $4cba: $02
    xor e                                         ; $4cbb: $ab
    add d                                         ; $4cbc: $82
    jp nz, $e141                                  ; $4cbd: $c2 $41 $e1

    add b                                         ; $4cc0: $80
    ld d, c                                       ; $4cc1: $51
    ld e, [hl]                                    ; $4cc2: $5e
    ret nz                                        ; $4cc3: $c0

    ldh [rNR41], a                                ; $4cc4: $e0 $20
    dec bc                                        ; $4cc6: $0b
    ld b, d                                       ; $4cc7: $42
    add c                                         ; $4cc8: $81
    or $c1                                        ; $4cc9: $f6 $c1
    sbc [hl]                                      ; $4ccb: $9e
    nop                                           ; $4ccc: $00
    ld [c], a                                     ; $4ccd: $e2
    db $fc                                        ; $4cce: $fc
    or e                                          ; $4ccf: $b3
    nop                                           ; $4cd0: $00

jr_066_4cd1:
    call $c282                                    ; $4cd1: $cd $82 $c2
    rst $38                                       ; $4cd4: $ff
    xor a                                         ; $4cd5: $af
    ld b, [hl]                                    ; $4cd6: $46
    add d                                         ; $4cd7: $82
    add e                                         ; $4cd8: $83
    ld d, d                                       ; $4cd9: $52
    ld d, h                                       ; $4cda: $54
    dec hl                                        ; $4cdb: $2b
    ld sp, $2b07                                  ; $4cdc: $31 $07 $2b
    add e                                         ; $4cdf: $83
    add h                                         ; $4ce0: $84
    cp c                                          ; $4ce1: $b9
    pop bc                                        ; $4ce2: $c1
    cp [hl]                                       ; $4ce3: $be
    pop bc                                        ; $4ce4: $c1
    ld l, d                                       ; $4ce5: $6a
    add e                                         ; $4ce6: $83
    nop                                           ; $4ce7: $00
    rst $18                                       ; $4ce8: $df
    ld [$fea0], sp                                ; $4ce9: $08 $a0 $fe
    ld b, d                                       ; $4cec: $42
    ret nz                                        ; $4ced: $c0

    ld b, [hl]                                    ; $4cee: $46
    add l                                         ; $4cef: $85
    add [hl]                                      ; $4cf0: $86
    add e                                         ; $4cf1: $83
    ld e, e                                       ; $4cf2: $5b
    add e                                         ; $4cf3: $83
    adc c                                         ; $4cf4: $89
    rla                                           ; $4cf5: $17
    adc b                                         ; $4cf6: $88
    add a                                         ; $4cf7: $87
    add l                                         ; $4cf8: $85
    ei                                            ; $4cf9: $fb
    and c                                         ; $4cfa: $a1
    sbc [hl]                                      ; $4cfb: $9e
    nop                                           ; $4cfc: $00
    db $e4                                        ; $4cfd: $e4
    db $fc                                        ; $4cfe: $fc
    or c                                          ; $4cff: $b1
    inc b                                         ; $4d00: $04

Jump_066_4d01:
    adc a                                         ; $4d01: $8f

Jump_066_4d02:
    sbc $c2                                       ; $4d02: $de $c2
    and c                                         ; $4d04: $a1
    xor [hl]                                      ; $4d05: $ae
    ld b, [hl]                                    ; $4d06: $46
    add l                                         ; $4d07: $85
    add a                                         ; $4d08: $87
    jp Jump_000_0be0                              ; $4d09: $c3 $e0 $0b


    dec bc                                        ; $4d0c: $0b
    ld b, $37                                     ; $4d0d: $06 $37
    jp nz, $9f9c                                  ; $4d0f: $c2 $9c $9f

    db $fc                                        ; $4d12: $fc
    add [hl]                                      ; $4d13: $86
    ld hl, sp+$6e                                 ; $4d14: $f8 $6e
    nop                                           ; $4d16: $00
    rst $08                                       ; $4d17: $cf
    ld b, b                                       ; $4d18: $40
    pop bc                                        ; $4d19: $c1
    ld [bc], a                                    ; $4d1a: $02
    ret nz                                        ; $4d1b: $c0

    cp [hl]                                       ; $4d1c: $be
    call nz, Call_000_02e0                        ; $4d1d: $c4 $e0 $02
    dec c                                         ; $4d20: $0d
    dec c                                         ; $4d21: $0d
    rlca                                          ; $4d22: $07
    ld [bc], a                                    ; $4d23: $02
    ld [hl], a                                    ; $4d24: $77
    and c                                         ; $4d25: $a1
    sbc [hl]                                      ; $4d26: $9e
    ld hl, sp-$04                                 ; $4d27: $f8 $fc
    add l                                         ; $4d29: $85
    ld hl, sp+$6f                                 ; $4d2a: $f8 $6f
    nop                                           ; $4d2c: $00
    pop de                                        ; $4d2d: $d1
    and c                                         ; $4d2e: $a1
    ld b, [hl]                                    ; $4d2f: $46
    ld b, [hl]                                    ; $4d30: $46
    ld [bc], a                                    ; $4d31: $02
    rlca                                          ; $4d32: $07
    ld a, [hl]                                    ; $4d33: $7e
    call nz, $0fe0                                ; $4d34: $c4 $e0 $0f
    sbc b                                         ; $4d37: $98
    nop                                           ; $4d38: $00
    ld bc, $020f                                  ; $4d39: $01 $0f $02
    ld [hl], a                                    ; $4d3c: $77
    and b                                         ; $4d3d: $a0
    ldh a, [$3b]                                  ; $4d3e: $f0 $3b
    and b                                         ; $4d40: $a0
    db $f4                                        ; $4d41: $f4
    ld h, l                                       ; $4d42: $65
    nop                                           ; $4d43: $00
    rst $18                                       ; $4d44: $df
    ld [bc], a                                    ; $4d45: $02
    and c                                         ; $4d46: $a1
    ld [bc], a                                    ; $4d47: $02
    rrca                                          ; $4d48: $0f
    sbc b                                         ; $4d49: $98
    sbc b                                         ; $4d4a: $98
    ld b, a                                       ; $4d4b: $47
    rrca                                          ; $4d4c: $0f
    rlca                                          ; $4d4d: $07
    rlca                                          ; $4d4e: $07
    cp [hl]                                       ; $4d4f: $be
    ldh [$f9], a                                  ; $4d50: $e0 $f9
    ldh [$7d], a                                  ; $4d52: $e0 $7d
    ldh [$9c], a                                  ; $4d54: $e0 $9c
    halt                                          ; $4d56: $76
    add b                                         ; $4d57: $80
    add sp, -$08                                  ; $4d58: $e8 $f8
    ld [hl], e                                    ; $4d5a: $73
    nop                                           ; $4d5b: $00
    ret nc                                        ; $4d5c: $d0

    ld [bc], a                                    ; $4d5d: $02
    and b                                         ; $4d5e: $a0
    ld [$e0c1], sp                                ; $4d5f: $08 $c1 $e0
    ld [bc], a                                    ; $4d62: $02
    ld b, e                                       ; $4d63: $43
    ld b, c                                       ; $4d64: $41
    jp $0245                                      ; $4d65: $c3 $45 $02


    cp [hl]                                       ; $4d68: $be
    ld [c], a                                     ; $4d69: $e2
    cp a                                          ; $4d6a: $bf
    ld [c], a                                     ; $4d6b: $e2
    ld hl, sp+$74                                 ; $4d6c: $f8 $74
    nop                                           ; $4d6e: $00
    jp nc, Jump_000_0e0c                          ; $4d6f: $d2 $0c $0e

    ld a, $c1                                     ; $4d72: $3e $c1
    ldh [$39], a                                  ; $4d74: $e0 $39

jr_066_4d76:
    dec sp                                        ; $4d76: $3b
    dec [hl]                                      ; $4d77: $35
    jr c, jr_066_4db1                             ; $4d78: $38 $37

    cp [hl]                                       ; $4d7a: $be
    ld [c], a                                     ; $4d7b: $e2
    cp a                                          ; $4d7c: $bf
    db $e3                                        ; $4d7d: $e3
    inc l                                         ; $4d7e: $2c
    ld hl, sp+$73                                 ; $4d7f: $f8 $73
    nop                                           ; $4d81: $00
    ret nc                                        ; $4d82: $d0

    sbc a                                         ; $4d83: $9f
    sbc h                                         ; $4d84: $9c
    ret nz                                        ; $4d85: $c0

    db $e3                                        ; $4d86: $e3
    dec [hl]                                      ; $4d87: $35
    rst $38                                       ; $4d88: $ff
    ldh [$be], a                                  ; $4d89: $e0 $be
    pop hl                                        ; $4d8b: $e1
    ld [hl], d                                    ; $4d8c: $72
    cp a                                          ; $4d8d: $bf
    db $e3                                        ; $4d8e: $e3
    and c                                         ; $4d8f: $a1
    ld hl, sp+$73                                 ; $4d90: $f8 $73
    nop                                           ; $4d92: $00
    rst $08                                       ; $4d93: $cf
    ret nc                                        ; $4d94: $d0

    pop de                                        ; $4d95: $d1
    sbc [hl]                                      ; $4d96: $9e
    ld b, b                                       ; $4d97: $40
    pop hl                                        ; $4d98: $e1
    rst $20                                       ; $4d99: $e7
    ld [$3645], sp                                ; $4d9a: $08 $45 $36
    cp a                                          ; $4d9d: $bf
    pop hl                                        ; $4d9e: $e1
    ld a, h                                       ; $4d9f: $7c
    ldh [rSC], a                                  ; $4da0: $e0 $02
    rrca                                          ; $4da2: $0f
    sbc c                                         ; $4da3: $99
    ldh [$ba], a                                  ; $4da4: $e0 $ba
    ret nz                                        ; $4da6: $c0

    ld a, c                                       ; $4da7: $79
    add b                                         ; $4da8: $80
    ld hl, sp+$71                                 ; $4da9: $f8 $71
    nop                                           ; $4dab: $00
    sub c                                         ; $4dac: $91
    ret nz                                        ; $4dad: $c0

    ldh [rSB], a                                  ; $4dae: $e0 $01
    nop                                           ; $4db0: $00

jr_066_4db1:
    rrca                                          ; $4db1: $0f
    xor a                                         ; $4db2: $af
    ld [bc], a                                    ; $4db3: $02
    ld b, l                                       ; $4db4: $45
    scf                                           ; $4db5: $37
    jr c, jr_066_4d76                             ; $4db6: $38 $be

    ld [c], a                                     ; $4db8: $e2
    add hl, sp                                    ; $4db9: $39
    ld a, [hl]                                    ; $4dba: $7e
    ld [c], a                                     ; $4dbb: $e2
    sbc h                                         ; $4dbc: $9c
    jr c, jr_066_4e34                             ; $4dbd: $38 $75

    ld h, c                                       ; $4dbf: $61
    ld hl, sp+$6f                                 ; $4dc0: $f8 $6f
    inc b                                         ; $4dc2: $04
    ld c, a                                       ; $4dc3: $4f
    call nc, $a1d5                                ; $4dc4: $d4 $d5 $a1
    ld b, c                                       ; $4dc7: $41
    ret nz                                        ; $4dc8: $c0

    ld a, [bc]                                    ; $4dc9: $0a
    ldh [$15], a                                  ; $4dca: $e0 $15
    rlca                                          ; $4dcc: $07
    cp [hl]                                       ; $4dcd: $be
    db $e4                                        ; $4dce: $e4
    ld a, [hl-]                                   ; $4dcf: $3a
    dec a                                         ; $4dd0: $3d
    pop hl                                        ; $4dd1: $e1
    ld [$6275], sp                                ; $4dd2: $08 $75 $62
    ld hl, sp+$6f                                 ; $4dd5: $f8 $6f
    inc b                                         ; $4dd7: $04
    ld d, c                                       ; $4dd8: $51
    ld [$6141], sp                                ; $4dd9: $08 $41 $61
    cp [hl]                                       ; $4ddc: $be
    push hl                                       ; $4ddd: $e5
    dec sp                                        ; $4dde: $3b
    pop hl                                        ; $4ddf: $e1
    add hl, sp                                    ; $4de0: $39
    ld [hl], b                                    ; $4de1: $70
    ret nz                                        ; $4de2: $c0

    ld a, e                                       ; $4de3: $7b
    call nz, Call_000_2ef4                        ; $4de4: $c4 $f4 $2e
    nop                                           ; $4de7: $00
    adc l                                         ; $4de8: $8d
    ld d, $00                                     ; $4de9: $16 $00
    ld h, a                                       ; $4deb: $67
    ld [bc], a                                    ; $4dec: $02
    rrca                                          ; $4ded: $0f
    jp nz, $44a1                                  ; $4dee: $c2 $a1 $44

    ld a, [$7fc0]                                 ; $4df1: $fa $c0 $7f
    ld [c], a                                     ; $4df4: $e2
    ld a, [hl-]                                   ; $4df5: $3a
    pop bc                                        ; $4df6: $c1
    or c                                          ; $4df7: $b1
    sbc [hl]                                      ; $4df8: $9e
    db $f4                                        ; $4df9: $f4
    cpl                                           ; $4dfa: $2f
    nop                                           ; $4dfb: $00
    adc a                                         ; $4dfc: $8f
    add [hl]                                      ; $4dfd: $86
    ld hl, $9d9f                                  ; $4dfe: $21 $9f $9d
    ld a, l                                       ; $4e01: $7d
    pop hl                                        ; $4e02: $e1
    rrca                                          ; $4e03: $0f
    ld e, a                                       ; $4e04: $5f
    sbc c                                         ; $4e05: $99
    sbc b                                         ; $4e06: $98
    ld [$474a], sp                                ; $4e07: $08 $4a $47
    cp c                                          ; $4e0a: $b9
    ret nz                                        ; $4e0b: $c0

    ld [hl], $7b                                  ; $4e0c: $36 $7b
    call nz, $a1c1                                ; $4e0e: $c4 $c1 $a1
    db $f4                                        ; $4e11: $f4
    cpl                                           ; $4e12: $2f
    nop                                           ; $4e13: $00
    adc l                                         ; $4e14: $8d
    ld a, [hl]                                    ; $4e15: $7e
    jp $a2bb                                      ; $4e16: $c3 $bb $a2


    ld a, d                                       ; $4e19: $7a
    jp nz, Jump_066_614a                          ; $4e1a: $c2 $4a $61

    adc e                                         ; $4e1d: $8b
    ld e, h                                       ; $4e1e: $5c
    inc a                                         ; $4e1f: $3c
    cp a                                          ; $4e20: $bf
    db $e4                                        ; $4e21: $e4
    ld [$87f8], sp                                ; $4e22: $08 $f8 $87
    nop                                           ; $4e25: $00
    ld e, e                                       ; $4e26: $5b
    db $fc                                        ; $4e27: $fc
    add e                                         ; $4e28: $83
    xor [hl]                                      ; $4e29: $ae
    ld d, [hl]                                    ; $4e2a: $56
    ret nz                                        ; $4e2b: $c0

    db $e3                                        ; $4e2c: $e3
    ld d, [hl]                                    ; $4e2d: $56
    ld b, b                                       ; $4e2e: $40
    ld hl, sp-$5f                                 ; $4e2f: $f8 $a1
    ld b, b                                       ; $4e31: $40
    ld l, l                                       ; $4e32: $6d
    and b                                         ; $4e33: $a0

jr_066_4e34:
    ld [$87f8], sp                                ; $4e34: $08 $f8 $87
    add $00                                       ; $4e37: $c6 $00
    ld d, l                                       ; $4e39: $55
    and b                                         ; $4e3a: $a0
    and b                                         ; $4e3b: $a0
    db $fc                                        ; $4e3c: $fc
    ld b, l                                       ; $4e3d: $45
    cp e                                          ; $4e3e: $bb
    ld h, c                                       ; $4e3f: $61
    add b                                         ; $4e40: $80
    add b                                         ; $4e41: $80
    ld [bc], a                                    ; $4e42: $02
    ld c, a                                       ; $4e43: $4f
    ld a, l                                       ; $4e44: $7d
    ld d, l                                       ; $4e45: $55
    ld sp, hl                                     ; $4e46: $f9
    and c                                         ; $4e47: $a1
    inc a                                         ; $4e48: $3c
    ld b, h                                       ; $4e49: $44
    inc c                                         ; $4e4a: $0c
    ld c, $99                                     ; $4e4b: $0e $99
    ld a, l                                       ; $4e4d: $7d
    ret nz                                        ; $4e4e: $c0

    ldh a, [rPCM12]                               ; $4e4f: $f0 $76
    ld h, l                                       ; $4e51: $65
    nop                                           ; $4e52: $00
    ld d, h                                       ; $4e53: $54
    db $fc                                        ; $4e54: $fc
    ld l, d                                       ; $4e55: $6a
    cp a                                          ; $4e56: $bf
    jr nz, jr_066_4e64                            ; $4e57: $20 $0b

    dec bc                                        ; $4e59: $0b
    ld b, l                                       ; $4e5a: $45
    ccf                                           ; $4e5b: $3f
    ld l, [hl]                                    ; $4e5c: $6e
    cp d                                          ; $4e5d: $ba
    and c                                         ; $4e5e: $a1
    dec sp                                        ; $4e5f: $3b
    ld [hl], $45                                  ; $4e60: $36 $45
    dec l                                         ; $4e62: $2d
    and b                                         ; $4e63: $a0

jr_066_4e64:
    ld c, $0c                                     ; $4e64: $0e $0c
    halt                                          ; $4e66: $76
    ld h, l                                       ; $4e67: $65
    ld a, b                                       ; $4e68: $78
    nop                                           ; $4e69: $00
    call nc, Call_066_68fc                        ; $4e6a: $d4 $fc $68
    dec a                                         ; $4e6d: $3d
    ld b, c                                       ; $4e6e: $41
    xor a                                         ; $4e6f: $af
    ld b, [hl]                                    ; $4e70: $46
    ld b, l                                       ; $4e71: $45
    ld b, e                                       ; $4e72: $43
    jp Jump_000_2fc1                              ; $4e73: $c3 $c1 $2f


    ccf                                           ; $4e76: $3f
    ld b, c                                       ; $4e77: $41
    ld b, e                                       ; $4e78: $43
    ld b, l                                       ; $4e79: $45
    inc sp                                        ; $4e7a: $33
    ldh [$99], a                                  ; $4e7b: $e0 $99
    ret nz                                        ; $4e7d: $c0

    ld [c], a                                     ; $4e7e: $e2
    ld h, d                                       ; $4e7f: $62
    ld bc, $0050                                  ; $4e80: $01 $50 $00

jr_066_4e83:
    push de                                       ; $4e83: $d5
    db $fc                                        ; $4e84: $fc
    jr z, jr_066_4e83                             ; $4e85: $28 $fc

    ld b, c                                       ; $4e87: $41
    add b                                         ; $4e88: $80
    and b                                         ; $4e89: $a0
    dec sp                                        ; $4e8a: $3b
    add h                                         ; $4e8b: $84
    pop bc                                        ; $4e8c: $c1
    xor [hl]                                      ; $4e8d: $ae
    ld [hl], $20                                  ; $4e8e: $36 $20
    add c                                         ; $4e90: $81
    xor a                                         ; $4e91: $af
    nop                                           ; $4e92: $00
    jp hl                                         ; $4e93: $e9


    nop                                           ; $4e94: $00

jr_066_4e95:
    push de                                       ; $4e95: $d5
    db $fc                                        ; $4e96: $fc
    jr z, jr_066_4e95                             ; $4e97: $28 $fc

    ld b, c                                       ; $4e99: $41
    cp a                                          ; $4e9a: $bf
    add d                                         ; $4e9b: $82
    pop bc                                        ; $4e9c: $c1
    ldh [$af], a                                  ; $4e9d: $e0 $af
    ldh [$36], a                                  ; $4e9f: $e0 $36
    ld hl, $c380                                  ; $4ea1: $21 $80 $c3
    ld h, d                                       ; $4ea4: $62
    ld hl, $d900                                  ; $4ea5: $21 $00 $d9
    db $fc                                        ; $4ea8: $fc
    ld l, b                                       ; $4ea9: $68
    xor [hl]                                      ; $4eaa: $ae
    ld b, l                                       ; $4eab: $45
    ld a, [hl-]                                   ; $4eac: $3a
    adc b                                         ; $4ead: $88
    ld b, h                                       ; $4eae: $44
    and d                                         ; $4eaf: $a2
    add l                                         ; $4eb0: $85
    ldh [$b3], a                                  ; $4eb1: $e0 $b3
    and h                                         ; $4eb3: $a4
    ld [$df00], sp                                ; $4eb4: $08 $00 $df
    db $fc                                        ; $4eb7: $fc
    ld h, $7d                                     ; $4eb8: $26 $7d
    jr nz, @+$46                                  ; $4eba: $20 $44

    ld [$c008], sp                                ; $4ebc: $08 $08 $c0
    ld b, l                                       ; $4ebf: $45
    and b                                         ; $4ec0: $a0
    rst $30                                       ; $4ec1: $f7
    nop                                           ; $4ec2: $00
    ld [bc], a                                    ; $4ec3: $02
    ld [hl], a                                    ; $4ec4: $77
    ld h, d                                       ; $4ec5: $62
    xor [hl]                                      ; $4ec6: $ae
    ld h, b                                       ; $4ec7: $60
    ld hl, sp+$40                                 ; $4ec8: $f8 $40
    ld hl, sp+$2d                                 ; $4eca: $f8 $2d
    nop                                           ; $4ecc: $00
    ld l, $2f                                     ; $4ecd: $2e $2f
    ld a, [hl]                                    ; $4ecf: $7e
    dec b                                         ; $4ed0: $05
    ld [$3cc3], sp                                ; $4ed1: $08 $c3 $3c
    ld bc, $8072                                  ; $4ed4: $01 $72 $80
    pop bc                                        ; $4ed7: $c1
    ldh [$2d], a                                  ; $4ed8: $e0 $2d
    add b                                         ; $4eda: $80
    or l                                          ; $4edb: $b5
    nop                                           ; $4edc: $00
    ld [$2df8], sp                                ; $4edd: $08 $f8 $2d
    inc l                                         ; $4ee0: $2c
    rrca                                          ; $4ee1: $0f
    db $fc                                        ; $4ee2: $fc
    inc h                                         ; $4ee3: $24
    xor [hl]                                      ; $4ee4: $ae
    add b                                         ; $4ee5: $80
    db $e3                                        ; $4ee6: $e3
    inc a                                         ; $4ee7: $3c
    ld bc, $42b3                                  ; $4ee8: $01 $b3 $42
    or d                                          ; $4eeb: $b2
    ld b, b                                       ; $4eec: $40
    add c                                         ; $4eed: $81
    ld [$a400], sp                                ; $4eee: $08 $00 $a4
    nop                                           ; $4ef1: $00
    rst $18                                       ; $4ef2: $df
    ld a, h                                       ; $4ef3: $7c
    ld hl, $e400                                  ; $4ef4: $21 $00 $e4
    ld [hl], $02                                  ; $4ef7: $36 $02
    rst $30                                       ; $4ef9: $f7
    ld hl, $4702                                  ; $4efa: $21 $02 $47
    rrca                                          ; $4efd: $0f
    ld [$009e], sp                                ; $4efe: $08 $9e $00
    and h                                         ; $4f01: $a4
    nop                                           ; $4f02: $00
    rst $18                                       ; $4f03: $df
    add b                                         ; $4f04: $80
    add $39                                       ; $4f05: $c6 $39
    jp nz, Jump_000_1ec1                          ; $4f07: $c2 $c1 $1e

    ld a, a                                       ; $4f0a: $7f
    ld b, b                                       ; $4f0b: $40
    sbc l                                         ; $4f0c: $9d
    sbc l                                         ; $4f0d: $9d
    sbc h                                         ; $4f0e: $9c
    ld [bc], a                                    ; $4f0f: $02
    nop                                           ; $4f10: $00
    push hl                                       ; $4f11: $e5
    nop                                           ; $4f12: $00
    rst $18                                       ; $4f13: $df
    ld a, $82                                     ; $4f14: $3e $82
    add b                                         ; $4f16: $80
    ld a, a                                       ; $4f17: $7f
    push hl                                       ; $4f18: $e5
    dec a                                         ; $4f19: $3d
    ld hl, $6002                                  ; $4f1a: $21 $02 $60
    dec hl                                        ; $4f1d: $2b
    add b                                         ; $4f1e: $80
    nop                                           ; $4f1f: $00
    db $e4                                        ; $4f20: $e4
    nop                                           ; $4f21: $00
    rst $18                                       ; $4f22: $df
    db $fc                                        ; $4f23: $fc
    ld b, c                                       ; $4f24: $41
    xor [hl]                                      ; $4f25: $ae
    db $e3                                        ; $4f26: $e3
    ld b, [hl]                                    ; $4f27: $46
    ld a, $7f                                     ; $4f28: $3e $7f
    db $e4                                        ; $4f2a: $e4
    ld a, $c0                                     ; $4f2b: $3e $c0
    cp l                                          ; $4f2d: $bd
    ld bc, $9d9f                                  ; $4f2e: $01 $9f $9d
    sbc a                                         ; $4f31: $9f
    ld [hl], $7a                                  ; $4f32: $36 $7a
    ld hl, $a0a0                                  ; $4f34: $21 $a0 $a0
    nop                                           ; $4f37: $00
    rst $18                                       ; $4f38: $df
    jp nc, Jump_000_3fd3                          ; $4f39: $d2 $d3 $3f

    ret nz                                        ; $4f3c: $c0

    cp a                                          ; $4f3d: $bf
    and e                                         ; $4f3e: $a3
    ret nz                                        ; $4f3f: $c0

    ld a, a                                       ; $4f40: $7f
    pop hl                                        ; $4f41: $e1
    add [hl]                                      ; $4f42: $86
    ld h, d                                       ; $4f43: $62
    ld b, $61                                     ; $4f44: $06 $61
    nop                                           ; $4f46: $00
    ld h, d                                       ; $4f47: $62
    nop                                           ; $4f48: $00
    ld e, b                                       ; $4f49: $58
    db $fc                                        ; $4f4a: $fc
    dec h                                         ; $4f4b: $25
    call nc, $9ad5                                ; $4f4c: $d4 $d5 $9a
    ld a, e                                       ; $4f4f: $7b
    ld bc, $3e42                                  ; $4f50: $01 $42 $3e
    ld b, c                                       ; $4f53: $41
    inc a                                         ; $4f54: $3c
    ld b, h                                       ; $4f55: $44
    rst $38                                       ; $4f56: $ff
    ld bc, $007e                                  ; $4f57: $01 $7e $00
    and b                                         ; $4f5a: $a0
    ret nz                                        ; $4f5b: $c0

    ld a, d                                       ; $4f5c: $7a
    nop                                           ; $4f5d: $00
    nop                                           ; $4f5e: $00
    ld h, c                                       ; $4f5f: $61
    nop                                           ; $4f60: $00
    ld e, c                                       ; $4f61: $59
    db $fc                                        ; $4f62: $fc
    ld h, $3d                                     ; $4f63: $26 $3d
    ld h, d                                       ; $4f65: $62
    cp [hl]                                       ; $4f66: $be
    and d                                         ; $4f67: $a2
    dec [hl]                                      ; $4f68: $35
    ld b, d                                       ; $4f69: $42
    ld [bc], a                                    ; $4f6a: $02
    ld a, [hl]                                    ; $4f6b: $7e
    ret nz                                        ; $4f6c: $c0

    sbc [hl]                                      ; $4f6d: $9e
    db $ec                                        ; $4f6e: $ec
    ld h, d                                       ; $4f6f: $62
    nop                                           ; $4f70: $00
    ld e, a                                       ; $4f71: $5f
    nop                                           ; $4f72: $00
    add $3e                                       ; $4f73: $c6 $3e
    xor c                                         ; $4f75: $a9
    ld b, b                                       ; $4f76: $40
    ld [c], a                                     ; $4f77: $e2
    ld l, d                                       ; $4f78: $6a
    ld h, c                                       ; $4f79: $61
    nop                                           ; $4f7a: $00
    inc b                                         ; $4f7b: $04
    adc l                                         ; $4f7c: $8d
    nop                                           ; $4f7d: $00
    sbc b                                         ; $4f7e: $98
    cp l                                          ; $4f7f: $bd
    ld b, c                                       ; $4f80: $41
    rst $38                                       ; $4f81: $ff
    jp $c03f                                      ; $4f82: $c3 $3f $c0


    ld a, h                                       ; $4f85: $7c
    and b                                         ; $4f86: $a0
    ld a, [hl]                                    ; $4f87: $7e
    rlca                                          ; $4f88: $07
    ret nc                                        ; $4f89: $d0

    ld l, h                                       ; $4f8a: $6c
    inc d                                         ; $4f8b: $14
    nop                                           ; $4f8c: $00
    sub h                                         ; $4f8d: $94
    ld a, [hl]                                    ; $4f8e: $7e
    ld b, d                                       ; $4f8f: $42
    ld b, [hl]                                    ; $4f90: $46
    ld a, l                                       ; $4f91: $7d
    jr nz, jr_066_4fca                            ; $4f92: $20 $36

    ld b, b                                       ; $4f94: $40
    ret nz                                        ; $4f95: $c0

    cp [hl]                                       ; $4f96: $be
    add c                                         ; $4f97: $81
    ld a, [hl]                                    ; $4f98: $7e
    ld bc, $0418                                  ; $4f99: $01 $18 $04
    call $9a00                                    ; $4f9c: $cd $00 $9a
    ret z                                         ; $4f9f: $c8

    and d                                         ; $4fa0: $a2
    ld b, l                                       ; $4fa1: $45
    ccf                                           ; $4fa2: $3f
    add d                                         ; $4fa3: $82
    pop bc                                        ; $4fa4: $c1
    cp l                                          ; $4fa5: $bd
    and d                                         ; $4fa6: $a2
    nop                                           ; $4fa7: $00
    jr nz, @-$0a                                  ; $4fa8: $20 $f4

    inc b                                         ; $4faa: $04
    ld c, l                                       ; $4fab: $4d
    nop                                           ; $4fac: $00
    sbc b                                         ; $4fad: $98
    and c                                         ; $4fae: $a1
    jp z, Jump_066_45a1                           ; $4faf: $ca $a1 $45

    ld b, e                                       ; $4fb2: $43
    ld b, c                                       ; $4fb3: $41
    ld b, e                                       ; $4fb4: $43
    add d                                         ; $4fb5: $82
    db $fd                                        ; $4fb6: $fd
    ldh [rLYC], a                                 ; $4fb7: $e0 $45
    cp a                                          ; $4fb9: $bf
    and c                                         ; $4fba: $a1
    inc b                                         ; $4fbb: $04
    ld b, e                                       ; $4fbc: $43
    inc b                                         ; $4fbd: $04
    rlc b                                         ; $4fbe: $cb $00
    sbc b                                         ; $4fc0: $98
    ld bc, $45e1                                  ; $4fc1: $01 $e1 $45
    ld l, a                                       ; $4fc4: $6f
    ld [hl], $3b                                  ; $4fc5: $36 $3b
    dec [hl]                                      ; $4fc7: $35
    dec sp                                        ; $4fc8: $3b
    db $fd                                        ; $4fc9: $fd

jr_066_4fca:
    ldh [$36], a                                  ; $4fca: $e0 $36
    ld b, l                                       ; $4fcc: $45
    db $fd                                        ; $4fcd: $fd
    ld h, b                                       ; $4fce: $60
    db $e3                                        ; $4fcf: $e3
    sbc h                                         ; $4fd0: $9c
    sbc a                                         ; $4fd1: $9f
    inc b                                         ; $4fd2: $04
    rst $08                                       ; $4fd3: $cf
    nop                                           ; $4fd4: $00
    sbc b                                         ; $4fd5: $98
    rst $38                                       ; $4fd6: $ff
    add c                                         ; $4fd7: $81
    ld b, h                                       ; $4fd8: $44
    inc a                                         ; $4fd9: $3c
    and h                                         ; $4fda: $a4
    dec b                                         ; $4fdb: $05
    ld h, h                                       ; $4fdc: $64
    rst $38                                       ; $4fdd: $ff
    ldh [$a5], a                                  ; $4fde: $e0 $a5
    cp $a0                                        ; $4fe0: $fe $a0
    inc b                                         ; $4fe2: $04
    dec h                                         ; $4fe3: $25
    jp nc, Jump_000_004d                          ; $4fe4: $d2 $4d $00

    rst $10                                       ; $4fe7: $d7
    ret nz                                        ; $4fe8: $c0

    and b                                         ; $4fe9: $a0
    rst $38                                       ; $4fea: $ff
    ld b, d                                       ; $4feb: $42
    dec [hl]                                      ; $4fec: $35
    ld l, c                                       ; $4fed: $69
    and e                                         ; $4fee: $a3
    dec [hl]                                      ; $4fef: $35
    dec [hl]                                      ; $4ff0: $35
    and e                                         ; $4ff1: $a3
    ld l, d                                       ; $4ff2: $6a
    nop                                           ; $4ff3: $00
    cp $a0                                        ; $4ff4: $fe $a0
    ld b, b                                       ; $4ff6: $40
    and d                                         ; $4ff7: $a2
    inc b                                         ; $4ff8: $04
    adc $00                                       ; $4ff9: $ce $00
    rst $10                                       ; $4ffb: $d7
    nop                                           ; $4ffc: $00
    and d                                         ; $4ffd: $a2
    ret nz                                        ; $4ffe: $c0

    ldh [$fe], a                                  ; $4fff: $e0 $fe
    ld b, c                                       ; $5001: $41
    ret nz                                        ; $5002: $c0

    ldh [$b0], a                                  ; $5003: $e0 $b0
    ld a, a                                       ; $5005: $7f
    and c                                         ; $5006: $a1
    add [hl]                                      ; $5007: $86
    ld b, d                                       ; $5008: $42
    jp nc, Jump_000_004d                          ; $5009: $d2 $4d $00

    ld d, l                                       ; $500c: $55
    jp nc, Jump_066_7fd3                          ; $500d: $d2 $d3 $7f

    ld b, b                                       ; $5010: $40
    ld b, h                                       ; $5011: $44
    ld [hl], a                                    ; $5012: $77
    inc a                                         ; $5013: $3c
    ld l, e                                       ; $5014: $6b
    ld [hl], c                                    ; $5015: $71
    rst $38                                       ; $5016: $ff
    ldh [$6d], a                                  ; $5017: $e0 $6d
    inc a                                         ; $5019: $3c
    ld b, h                                       ; $501a: $44
    ld a, a                                       ; $501b: $7f
    and c                                         ; $501c: $a1
    and b                                         ; $501d: $a0
    inc b                                         ; $501e: $04
    and e                                         ; $501f: $a3
    cp $ce                                        ; $5020: $fe $ce
    nop                                           ; $5022: $00
    ld d, c                                       ; $5023: $51
    ld a, [hl]                                    ; $5024: $7e
    ld hl, $007d                                  ; $5025: $21 $7d $00
    xor [hl]                                      ; $5028: $ae
    ret nz                                        ; $5029: $c0

    push bc                                       ; $502a: $c5
    xor [hl]                                      ; $502b: $ae
    adc h                                         ; $502c: $8c
    add b                                         ; $502d: $80
    and b                                         ; $502e: $a0
    add [hl]                                      ; $502f: $86
    ld b, e                                       ; $5030: $43
    and b                                         ; $5031: $a0
    and b                                         ; $5032: $a0
    nop                                           ; $5033: $00
    rst $18                                       ; $5034: $df
    ld a, [hl]                                    ; $5035: $7e
    inc h                                         ; $5036: $24
    cp [hl]                                       ; $5037: $be
    ld b, b                                       ; $5038: $40
    ld b, l                                       ; $5039: $45
    cp a                                          ; $503a: $bf
    xor [hl]                                      ; $503b: $ae
    ld b, c                                       ; $503c: $41
    ld b, e                                       ; $503d: $43
    xor [hl]                                      ; $503e: $ae
    ld b, c                                       ; $503f: $41
    xor [hl]                                      ; $5040: $ae
    add c                                         ; $5041: $81
    ret nz                                        ; $5042: $c0

    and c                                         ; $5043: $a1
    nop                                           ; $5044: $00
    add d                                         ; $5045: $82
    and l                                         ; $5046: $a5
    nop                                           ; $5047: $00
    rst $18                                       ; $5048: $df
    jr nz, @+$64                                  ; $5049: $20 $62

    ld a, [hl]                                    ; $504b: $7e
    and h                                         ; $504c: $a4
    ld b, l                                       ; $504d: $45
    ld b, b                                       ; $504e: $40

Jump_066_504f:
    inc b                                         ; $504f: $04
    ld b, c                                       ; $5050: $41
    add d                                         ; $5051: $82
    push bc                                       ; $5052: $c5
    nop                                           ; $5053: $00
    rst $18                                       ; $5054: $df
    nop                                           ; $5055: $00
    nop                                           ; $5056: $00
    add a                                         ; $5057: $87
    db $fd                                        ; $5058: $fd
    inc bc                                        ; $5059: $03
    ld b, e                                       ; $505a: $43
    ld h, h                                       ; $505b: $64
    ld [bc], a                                    ; $505c: $02
    add d                                         ; $505d: $82
    ld [$004b], sp                                ; $505e: $08 $4b $00
    ld e, c                                       ; $5061: $59
    ld a, [hl]                                    ; $5062: $7e
    ld h, e                                       ; $5063: $63
    sub b                                         ; $5064: $90
    ld h, b                                       ; $5065: $60
    nop                                           ; $5066: $00
    rst $38                                       ; $5067: $ff
    db $e4                                        ; $5068: $e4
    jp $8661                                      ; $5069: $c3 $61 $86


    ld b, e                                       ; $506c: $43
    nop                                           ; $506d: $00
    rst $18                                       ; $506e: $df
    nop                                           ; $506f: $00
    ld b, c                                       ; $5070: $41
    ld a, [hl]                                    ; $5071: $7e
    push hl                                       ; $5072: $e5
    cp $e9                                        ; $5073: $fe $e9
    inc b                                         ; $5075: $04
    sub c                                         ; $5076: $91
    ld b, $00                                     ; $5077: $06 $00
    sub e                                         ; $5079: $93
    and b                                         ; $507a: $a0
    and b                                         ; $507b: $a0
    ld a, [hl]                                    ; $507c: $7e
    and $8a                                       ; $507d: $e6 $8a
    ld h, h                                       ; $507f: $64
    add [hl]                                      ; $5080: $86
    ld h, l                                       ; $5081: $65
    nop                                           ; $5082: $00
    pop de                                        ; $5083: $d1
    nop                                           ; $5084: $00
    nop                                           ; $5085: $00
    nop                                           ; $5086: $00
    pop bc                                        ; $5087: $c1
    nop                                           ; $5088: $00
    rst $38                                       ; $5089: $ff
    rst $38                                       ; $508a: $ff
    rst $38                                       ; $508b: $ff
    rst $38                                       ; $508c: $ff
    rst $38                                       ; $508d: $ff
    rst $38                                       ; $508e: $ff
    rst $38                                       ; $508f: $ff
    rst $38                                       ; $5090: $ff
    rst $38                                       ; $5091: $ff
    rst $38                                       ; $5092: $ff
    nop                                           ; $5093: $00
    nop                                           ; $5094: $00
    ld bc, $fe80                                  ; $5095: $01 $80 $fe
    ldh [rIE], a                                  ; $5098: $e0 $ff
    rst $38                                       ; $509a: $ff
    rst $38                                       ; $509b: $ff
    rst $38                                       ; $509c: $ff
    rst $38                                       ; $509d: $ff
    add sp, $00                                   ; $509e: $e8 $00
    nop                                           ; $50a0: $00
    nop                                           ; $50a1: $00
    ld [bc], a                                    ; $50a2: $02
    nop                                           ; $50a3: $00
    ld a, [de]                                    ; $50a4: $1a
    ld [$0102], sp                                ; $50a5: $08 $02 $01
    inc e                                         ; $50a8: $1c
    ld [$0202], sp                                ; $50a9: $08 $02 $02
    jr jr_066_50b7                                ; $50ac: $18 $09

    ld [bc], a                                    ; $50ae: $02
    inc bc                                        ; $50af: $03
    ld e, $09                                     ; $50b0: $1e $09
    ld [bc], a                                    ; $50b2: $02
    inc b                                         ; $50b3: $04
    ld d, $0b                                     ; $50b4: $16 $0b
    ld [bc], a                                    ; $50b6: $02

jr_066_50b7:
    dec b                                         ; $50b7: $05
    jr nz, @+$0d                                  ; $50b8: $20 $0b

    ld [bc], a                                    ; $50ba: $02
    ld b, $22                                     ; $50bb: $06 $22
    dec c                                         ; $50bd: $0d
    ld [bc], a                                    ; $50be: $02
    rlca                                          ; $50bf: $07
    dec d                                         ; $50c0: $15
    ld c, $02                                     ; $50c1: $0e $02
    ld [$1021], sp                                ; $50c3: $08 $21 $10
    ld [bc], a                                    ; $50c6: $02
    add hl, bc                                    ; $50c7: $09
    ld d, $11                                     ; $50c8: $16 $11
    ld [bc], a                                    ; $50ca: $02
    ld a, [bc]                                    ; $50cb: $0a
    inc hl                                        ; $50cc: $23
    ld [de], a                                    ; $50cd: $12
    ld [bc], a                                    ; $50ce: $02
    dec bc                                        ; $50cf: $0b
    ld a, [de]                                    ; $50d0: $1a
    rra                                           ; $50d1: $1f
    ld [bc], a                                    ; $50d2: $02
    inc c                                         ; $50d3: $0c
    dec de                                        ; $50d4: $1b
    ld hl, $0d02                                  ; $50d5: $21 $02 $0d
    add hl, de                                    ; $50d8: $19
    ld [hl+], a                                   ; $50d9: $22
    ld [bc], a                                    ; $50da: $02
    ld c, $27                                     ; $50db: $0e $27
    ld [hl+], a                                   ; $50dd: $22
    ld [bc], a                                    ; $50de: $02
    rrca                                          ; $50df: $0f
    inc hl                                        ; $50e0: $23
    inc hl                                        ; $50e1: $23
    ld [bc], a                                    ; $50e2: $02
    db $10                                        ; $50e3: $10
    inc h                                         ; $50e4: $24
    inc hl                                        ; $50e5: $23
    ld [bc], a                                    ; $50e6: $02
    ld de, $2326                                  ; $50e7: $11 $26 $23
    ld [bc], a                                    ; $50ea: $02
    ld [de], a                                    ; $50eb: $12
    ld [hl+], a                                   ; $50ec: $22
    inc h                                         ; $50ed: $24
    ld [bc], a                                    ; $50ee: $02
    inc de                                        ; $50ef: $13
    add hl, de                                    ; $50f0: $19
    dec h                                         ; $50f1: $25
    ld [bc], a                                    ; $50f2: $02
    inc d                                         ; $50f3: $14
    ld hl, $0225                                  ; $50f4: $21 $25 $02
    dec d                                         ; $50f7: $15
    jr nz, jr_066_5121                            ; $50f8: $20 $27

    ld [bc], a                                    ; $50fa: $02
    ld d, $19                                     ; $50fb: $16 $19
    jr z, jr_066_5101                             ; $50fd: $28 $02

    rla                                           ; $50ff: $17
    ld [hl+], a                                   ; $5100: $22

jr_066_5101:
    jr z, jr_066_5105                             ; $5101: $28 $02

    jr @+$26                                      ; $5103: $18 $24

jr_066_5105:
    dec hl                                        ; $5105: $2b
    ld [bc], a                                    ; $5106: $02
    add hl, de                                    ; $5107: $19
    ld a, [de]                                    ; $5108: $1a
    inc l                                         ; $5109: $2c
    ld [bc], a                                    ; $510a: $02
    ld a, [de]                                    ; $510b: $1a
    inc h                                         ; $510c: $24
    ld l, $02                                     ; $510d: $2e $02
    dec de                                        ; $510f: $1b
    dec de                                        ; $5110: $1b
    jr nc, jr_066_5115                            ; $5111: $30 $02

    inc e                                         ; $5113: $1c
    inc h                                         ; $5114: $24

jr_066_5115:
    ld sp, $1d02                                  ; $5115: $31 $02 $1d
    ld a, [de]                                    ; $5118: $1a
    inc [hl]                                      ; $5119: $34
    ld [bc], a                                    ; $511a: $02
    ld e, $25                                     ; $511b: $1e $25
    inc [hl]                                      ; $511d: $34
    ld [bc], a                                    ; $511e: $02
    rra                                           ; $511f: $1f
    ld a, [de]                                    ; $5120: $1a

jr_066_5121:
    jr c, jr_066_5125                             ; $5121: $38 $02

    jr nz, @+$27                                  ; $5123: $20 $25

jr_066_5125:
    jr c, @+$04                                   ; $5125: $38 $02

    ld hl, $3a1b                                  ; $5127: $21 $1b $3a
    ld [bc], a                                    ; $512a: $02
    ld [hl+], a                                   ; $512b: $22
    inc h                                         ; $512c: $24
    ld a, [hl-]                                   ; $512d: $3a
    ld [bc], a                                    ; $512e: $02
    inc hl                                        ; $512f: $23
    dec e                                         ; $5130: $1d
    dec sp                                        ; $5131: $3b
    ld [bc], a                                    ; $5132: $02
    inc h                                         ; $5133: $24
    jr nz, jr_066_5171                            ; $5134: $20 $3b

    ld [bc], a                                    ; $5136: $02
    dec h                                         ; $5137: $25
    ld [hl+], a                                   ; $5138: $22
    dec sp                                        ; $5139: $3b
    rst $38                                       ; $513a: $ff
    rst $38                                       ; $513b: $ff
    rst $38                                       ; $513c: $ff
    ld b, l                                       ; $513d: $45
    ld d, c                                       ; $513e: $51
    dec l                                         ; $513f: $2d
    ld d, l                                       ; $5140: $55
    sub $5a                                       ; $5141: $d6 $5a
    pop af                                        ; $5143: $f1
    ld e, d                                       ; $5144: $5a
    ccf                                           ; $5145: $3f
    dec c                                         ; $5146: $0d
    ld c, $0e                                     ; $5147: $0e $0e
    ld c, $4d                                     ; $5149: $0e $4d
    ld c, l                                       ; $514b: $4d
    db $fc                                        ; $514c: $fc
    ldh [$f7], a                                  ; $514d: $e0 $f7
    ldh [rNR10], a                                ; $514f: $e0 $10
    db $fc                                        ; $5151: $fc
    db $fd                                        ; $5152: $fd
    call nc, $fce1                                ; $5153: $d4 $e1 $fc
    db $ed                                        ; $5156: $ed
    db $fd                                        ; $5157: $fd
    db $ed                                        ; $5158: $ed
    dec c                                         ; $5159: $0d
    ret c                                         ; $515a: $d8

    pop hl                                        ; $515b: $e1
    rst $20                                       ; $515c: $e7
    pop af                                        ; $515d: $f1
    ei                                            ; $515e: $fb
    ld a, [$827e]                                 ; $515f: $fa $7e $82
    rst $20                                       ; $5162: $e7
    dec c                                         ; $5163: $0d
    ld c, l                                       ; $5164: $4d
    ld c, l                                       ; $5165: $4d
    ld c, l                                       ; $5166: $4d
    dec c                                         ; $5167: $0d
    dec l                                         ; $5168: $2d
    ld [hl], d                                    ; $5169: $72
    push af                                       ; $516a: $f5
    cp $fe                                        ; $516b: $fe $fe
    db $fd                                        ; $516d: $fd
    dec c                                         ; $516e: $0d
    ld l, l                                       ; $516f: $6d
    dec c                                         ; $5170: $0d

jr_066_5171:
    dec bc                                        ; $5171: $0b
    dec c                                         ; $5172: $0d
    dec bc                                        ; $5173: $0b
    dec bc                                        ; $5174: $0b
    db $e3                                        ; $5175: $e3
    ld c, l                                       ; $5176: $4d
    dec l                                         ; $5177: $2d
    ld a, d                                       ; $5178: $7a
    rst $38                                       ; $5179: $ff
    ld c, [hl]                                    ; $517a: $4e
    rst $20                                       ; $517b: $e7
    ld a, [hl]                                    ; $517c: $7e
    add sp, $6d                                   ; $517d: $e8 $6d
    dec bc                                        ; $517f: $0b
    dec c                                         ; $5180: $0d
    ld c, $ff                                     ; $5181: $0e $ff
    ldh [$0b], a                                  ; $5183: $e0 $0b
    dec c                                         ; $5185: $0d
    ld c, l                                       ; $5186: $4d
    ld a, [hl]                                    ; $5187: $7e
    ldh [$75], a                                  ; $5188: $e0 $75
    ldh [$ec], a                                  ; $518a: $e0 $ec
    adc $62                                       ; $518c: $ce $62
    ld [c], a                                     ; $518e: $e2
    ld b, h                                       ; $518f: $44
    cp $d6                                        ; $5190: $fe $d6
    pop bc                                        ; $5192: $c1
    ldh [$0b], a                                  ; $5193: $e0 $0b
    add c                                         ; $5195: $81
    ldh [$7d], a                                  ; $5196: $e0 $7d
    pop hl                                        ; $5198: $e1
    ld a, [hl-]                                   ; $5199: $3a
    ldh [$2d], a                                  ; $519a: $e0 $2d
    or l                                          ; $519c: $b5
    ldh [$80], a                                  ; $519d: $e0 $80
    ldh a, [$cd]                                  ; $519f: $f0 $cd
    sub [hl]                                      ; $51a1: $96
    pop bc                                        ; $51a2: $c1
    nop                                           ; $51a3: $00
    rst $30                                       ; $51a4: $f7
    ld b, e                                       ; $51a5: $43
    ldh [rIE], a                                  ; $51a6: $e0 $ff
    db $e4                                        ; $51a8: $e4
    cp l                                          ; $51a9: $bd
    ld [c], a                                     ; $51aa: $e2
    cp a                                          ; $51ab: $bf
    ldh [rKEY1], a                                ; $51ac: $e0 $4d
    ldh [$f1], a                                  ; $51ae: $e0 $f1
    pop bc                                        ; $51b0: $c1
    ld hl, sp-$1e                                 ; $51b1: $f8 $e2
    db $fc                                        ; $51b3: $fc
    rst $18                                       ; $51b4: $df
    ld d, c                                       ; $51b5: $51
    ldh [rLYC], a                                 ; $51b6: $e0 $45
    pop hl                                        ; $51b8: $e1
    dec hl                                        ; $51b9: $2b
    ld a, [bc]                                    ; $51ba: $0a
    ld a, [hl+]                                   ; $51bb: $2a
    ld [bc], a                                    ; $51bc: $02
    ld a, e                                       ; $51bd: $7b
    db $e3                                        ; $51be: $e3
    dec bc                                        ; $51bf: $0b
    jp Jump_066_6ee1                              ; $51c0: $c3 $e1 $6e


    ldh [$33], a                                  ; $51c3: $e0 $33
    ldh [$ab], a                                  ; $51c5: $e0 $ab
    ret nz                                        ; $51c7: $c0

    ld [bc], a                                    ; $51c8: $02
    ld sp, hl                                     ; $51c9: $f9
    nop                                           ; $51ca: $00
    jp $c01e                                      ; $51cb: $c3 $1e $c0


    db $e4                                        ; $51ce: $e4
    ld a, [bc]                                    ; $51cf: $0a
    ld a, [bc]                                    ; $51d0: $0a
    ld a, [hl+]                                   ; $51d1: $2a
    dec hl                                        ; $51d2: $2b
    ld a, l                                       ; $51d3: $7d
    push hl                                       ; $51d4: $e5
    or l                                          ; $51d5: $b5
    ret nz                                        ; $51d6: $c0

    or b                                          ; $51d7: $b0
    ret nz                                        ; $51d8: $c0

    ret nz                                        ; $51d9: $c0

    ld a, [c]                                     ; $51da: $f2
    pop bc                                        ; $51db: $c1
    add hl, bc                                    ; $51dc: $09
    ld [c], a                                     ; $51dd: $e2
    call c, $fea3                                 ; $51de: $dc $a3 $fe
    res 0, b                                      ; $51e1: $cb $80
    jp hl                                         ; $51e3: $e9


    ld c, $e0                                     ; $51e4: $0e $e0
    dec bc                                        ; $51e6: $0b
    dec bc                                        ; $51e7: $0b
    ld bc, $fc6b                                  ; $51e8: $01 $6b $fc
    ret nz                                        ; $51eb: $c0

    cp a                                          ; $51ec: $bf
    pop hl                                        ; $51ed: $e1
    rst $00                                       ; $51ee: $c7
    pop hl                                        ; $51ef: $e1
    or l                                          ; $51f0: $b5
    pop bc                                        ; $51f1: $c1
    xor $c1                                       ; $51f2: $ee $c1
    or c                                          ; $51f4: $b1
    jp nz, $d9fc                                  ; $51f5: $c2 $fc $d9

    ld a, [hl+]                                   ; $51f8: $2a
    and [hl]                                      ; $51f9: $a6
    db $e4                                        ; $51fa: $e4
    dec l                                         ; $51fb: $2d
    ret nz                                        ; $51fc: $c0

    pop hl                                        ; $51fd: $e1
    ld c, e                                       ; $51fe: $4b
    ret nz                                        ; $51ff: $c0

    pop hl                                        ; $5200: $e1
    dec hl                                        ; $5201: $2b
    cp l                                          ; $5202: $bd
    ld [c], a                                     ; $5203: $e2
    ld [hl], l                                    ; $5204: $75
    pop bc                                        ; $5205: $c1
    add [hl]                                      ; $5206: $86
    cp h                                          ; $5207: $bc
    ld [c], a                                     ; $5208: $e2
    ld c, l                                       ; $5209: $4d
    dec l                                         ; $520a: $2d
    inc a                                         ; $520b: $3c
    ldh [$5e], a                                  ; $520c: $e0 $5e
    and l                                         ; $520e: $a5
    inc [hl]                                      ; $520f: $34
    rst $30                                       ; $5210: $f7
    ret nz                                        ; $5211: $c0

    jp nz, Jump_000_036b                          ; $5212: $c2 $6b $03

    ld c, e                                       ; $5215: $4b
    ld c, e                                       ; $5216: $4b
    ld a, h                                       ; $5217: $7c
    pop hl                                        ; $5218: $e1
    cp l                                          ; $5219: $bd
    pop hl                                        ; $521a: $e1
    ld b, e                                       ; $521b: $43
    pop hl                                        ; $521c: $e1
    cp [hl]                                       ; $521d: $be
    and $f0                                       ; $521e: $e6 $f0
    and l                                         ; $5220: $a5
    ld a, h                                       ; $5221: $7c
    call $0042                                    ; $5222: $cd $42 $00
    ret z                                         ; $5225: $c8

    ld c, l                                       ; $5226: $4d
    add h                                         ; $5227: $84
    jp $e0be                                      ; $5228: $c3 $be $e0


    ld [hl], a                                    ; $522b: $77
    jp nz, $e079                                  ; $522c: $c2 $79 $e0

    dec c                                         ; $522f: $0d
    inc [hl]                                      ; $5230: $34
    ldh [$30], a                                  ; $5231: $e0 $30
    ld a, [hl-]                                   ; $5233: $3a
    db $e3                                        ; $5234: $e3
    cp d                                          ; $5235: $ba
    pop bc                                        ; $5236: $c1
    ld e, [hl]                                    ; $5237: $5e
    and e                                         ; $5238: $a3
    nop                                           ; $5239: $00
    rst $10                                       ; $523a: $d7
    ld c, l                                       ; $523b: $4d
    dec l                                         ; $523c: $2d
    add [hl]                                      ; $523d: $86
    jp $e5be                                      ; $523e: $c3 $be $e5


    ld b, $b7                                     ; $5241: $06 $b7
    jp nz, Jump_000_2b2b                          ; $5243: $c2 $2b $2b

    ld a, [hl]                                    ; $5246: $7e
    db $ed                                        ; $5247: $ed
    nop                                           ; $5248: $00
    or b                                          ; $5249: $b0
    ld a, [hl]                                    ; $524a: $7e
    jp $c4bd                                      ; $524b: $c3 $bd $c4


    cp h                                          ; $524e: $bc
    and c                                         ; $524f: $a1
    ld bc, $3c6b                                  ; $5250: $01 $6b $3c
    ld [c], a                                     ; $5253: $e2
    ldh a, [$a3]                                  ; $5254: $f0 $a3
    ld a, l                                       ; $5256: $7d
    pop hl                                        ; $5257: $e1
    ld l, e                                       ; $5258: $6b
    and d                                         ; $5259: $a2
    ld l, [hl]                                    ; $525a: $6e
    and d                                         ; $525b: $a2
    ret nz                                        ; $525c: $c0

    push af                                       ; $525d: $f5
    add h                                         ; $525e: $84
    add c                                         ; $525f: $81
    db $10                                        ; $5260: $10
    cp l                                          ; $5261: $bd
    jp $c24b                                      ; $5262: $c3 $4b $c2


    ld a, b                                       ; $5265: $78
    ret nz                                        ; $5266: $c0

    cp l                                          ; $5267: $bd
    rst $20                                       ; $5268: $e7
    ld c, e                                       ; $5269: $4b
    ld [hl], d                                    ; $526a: $72
    jp nz, $81ea                                  ; $526b: $c2 $ea $81

    ld [bc], a                                    ; $526e: $02
    or c                                          ; $526f: $b1
    ldh a, [$fc]                                  ; $5270: $f0 $fc
    ld h, d                                       ; $5272: $62
    add d                                         ; $5273: $82
    add e                                         ; $5274: $83
    cp e                                          ; $5275: $bb
    and d                                         ; $5276: $a2
    ld a, [hl-]                                   ; $5277: $3a
    ld [c], a                                     ; $5278: $e2
    ld l, e                                       ; $5279: $6b
    ld c, e                                       ; $527a: $4b
    ld l, e                                       ; $527b: $6b
    ld a, [bc]                                    ; $527c: $0a
    add hl, bc                                    ; $527d: $09
    ld a, [hl+]                                   ; $527e: $2a
    rst $30                                       ; $527f: $f7
    call nz, $c432                                ; $5280: $c4 $32 $c4
    ld l, l                                       ; $5283: $6d
    nop                                           ; $5284: $00
    jp c, $8702                                   ; $5285: $da $02 $87

    jr c, @-$3c                                   ; $5288: $38 $c2

    ld a, [hl]                                    ; $528a: $7e
    ldh [$ef], a                                  ; $528b: $e0 $ef
    ld c, d                                       ; $528d: $4a
    ld a, [hl+]                                   ; $528e: $2a
    ld a, [hl+]                                   ; $528f: $2a
    ld l, d                                       ; $5290: $6a
    add c                                         ; $5291: $81
    db $e3                                        ; $5292: $e3
    ld c, e                                       ; $5293: $4b
    dec c                                         ; $5294: $0d
    dec c                                         ; $5295: $0d
    ret nc                                        ; $5296: $d0

    ld a, [$c0c0]                                 ; $5297: $fa $c0 $c0
    pop hl                                        ; $529a: $e1
    db $fc                                        ; $529b: $fc
    sbc l                                         ; $529c: $9d
    db $fc                                        ; $529d: $fc
    ld h, e                                       ; $529e: $63
    dec l                                         ; $529f: $2d
    inc bc                                        ; $52a0: $03
    jp nz, Jump_000_0a0d                          ; $52a1: $c2 $0d $0a

    add hl, bc                                    ; $52a4: $09
    ld c, d                                       ; $52a5: $4a
    inc [hl]                                      ; $52a6: $34
    and b                                         ; $52a7: $a0
    ld b, c                                       ; $52a8: $41
    db $e4                                        ; $52a9: $e4
    dec bc                                        ; $52aa: $0b
    inc h                                         ; $52ab: $24
    add b                                         ; $52ac: $80
    ld l, [hl]                                    ; $52ad: $6e
    add e                                         ; $52ae: $83
    inc [hl]                                      ; $52af: $34
    or [hl]                                       ; $52b0: $b6
    ld a, h                                       ; $52b1: $7c
    ld h, a                                       ; $52b2: $67
    ld d, b                                       ; $52b3: $50
    ret nc                                        ; $52b4: $d0

    and b                                         ; $52b5: $a0
    ld [hl], l                                    ; $52b6: $75
    ret nz                                        ; $52b7: $c0

    cp a                                          ; $52b8: $bf
    ldh [$c0], a                                  ; $52b9: $e0 $c0
    ld [c], a                                     ; $52bb: $e2
    ld l, e                                       ; $52bc: $6b
    dec b                                         ; $52bd: $05
    pop hl                                        ; $52be: $e1
    dec bc                                        ; $52bf: $0b
    pop bc                                        ; $52c0: $c1
    ldh [rP1], a                                  ; $52c1: $e0 $00
    add b                                         ; $52c3: $80
    ld a, [c]                                     ; $52c4: $f2
    ld [hl], $67                                  ; $52c5: $36 $67
    ld hl, sp+$42                                 ; $52c7: $f8 $42
    halt                                          ; $52c9: $76
    push bc                                       ; $52ca: $c5
    ld a, h                                       ; $52cb: $7c
    ld [c], a                                     ; $52cc: $e2
    add b                                         ; $52cd: $80
    ld [c], a                                     ; $52ce: $e2
    ld b, e                                       ; $52cf: $43
    ldh [$b1], a                                  ; $52d0: $e0 $b1
    pop hl                                        ; $52d2: $e1
    ld hl, $006d                                  ; $52d3: $21 $6d $00
    sbc $fa                                       ; $52d6: $de $fa
    ld c, h                                       ; $52d8: $4c
    or h                                          ; $52d9: $b4
    add c                                         ; $52da: $81
    or l                                          ; $52db: $b5
    add c                                         ; $52dc: $81
    ld c, e                                       ; $52dd: $4b
    pop bc                                        ; $52de: $c1
    ld [c], a                                     ; $52df: $e2
    ld [bc], a                                    ; $52e0: $02
    db $e4                                        ; $52e1: $e4
    nop                                           ; $52e2: $00
    db $fc                                        ; $52e3: $fc
    ld e, b                                       ; $52e4: $58
    add d                                         ; $52e5: $82
    and $76                                       ; $52e6: $e6 $76
    ld b, h                                       ; $52e8: $44
    add c                                         ; $52e9: $81
    ldh [$c0], a                                  ; $52ea: $e0 $c0
    ld [c], a                                     ; $52ec: $e2
    ld l, a                                       ; $52ed: $6f
    pop bc                                        ; $52ee: $c1
    ld [bc], a                                    ; $52ef: $02
    ldh [$fc], a                                  ; $52f0: $e0 $fc
    ld e, l                                       ; $52f2: $5d
    ld [$e542], sp                                ; $52f3: $08 $42 $e5
    xor h                                         ; $52f6: $ac
    ld b, a                                       ; $52f7: $47
    cp d                                          ; $52f8: $ba
    add e                                         ; $52f9: $83
    ld l, e                                       ; $52fa: $6b
    xor [hl]                                      ; $52fb: $ae
    and d                                         ; $52fc: $a2
    add d                                         ; $52fd: $82
    push af                                       ; $52fe: $f5
    inc l                                         ; $52ff: $2c
    ld c, [hl]                                    ; $5300: $4e
    db $f4                                        ; $5301: $f4
    ld h, $05                                     ; $5302: $26 $05
    ld c, l                                       ; $5304: $4d
    or l                                          ; $5305: $b5
    ld h, b                                       ; $5306: $60
    ld a, [bc]                                    ; $5307: $0a
    ld [bc], a                                    ; $5308: $02
    ld [c], a                                     ; $5309: $e2
    add d                                         ; $530a: $82
    jp hl                                         ; $530b: $e9


    ld [bc], a                                    ; $530c: $02
    rst $38                                       ; $530d: $ff
    ld a, h                                       ; $530e: $7c
    add $40                                       ; $530f: $c6 $40
    pop hl                                        ; $5311: $e1
    nop                                           ; $5312: $00
    ld b, h                                       ; $5313: $44
    call nz, $b186                                ; $5314: $c4 $86 $b1
    db $f4                                        ; $5317: $f4
    dec sp                                        ; $5318: $3b
    ret nz                                        ; $5319: $c0

    ld [c], a                                     ; $531a: $e2
    pop bc                                        ; $531b: $c1
    pop bc                                        ; $531c: $c1
    cp h                                          ; $531d: $bc
    ld h, d                                       ; $531e: $62
    add [hl]                                      ; $531f: $86
    and e                                         ; $5320: $a3
    inc b                                         ; $5321: $04
    rst $18                                       ; $5322: $df
    nop                                           ; $5323: $00
    ld a, d                                       ; $5324: $7a
    daa                                           ; $5325: $27
    ld d, d                                       ; $5326: $52
    and c                                         ; $5327: $a1
    add c                                         ; $5328: $81
    jp Jump_066_616b                              ; $5329: $c3 $6b $61


    add h                                         ; $532c: $84
    push bc                                       ; $532d: $c5
    add b                                         ; $532e: $80
    ld d, c                                       ; $532f: $51
    ld a, [hl+]                                   ; $5330: $2a
    add hl, hl                                    ; $5331: $29
    jr @+$67                                      ; $5332: $18 $65

    nop                                           ; $5334: $00
    inc de                                        ; $5335: $13
    and d                                         ; $5336: $a2
    ld [bc], a                                    ; $5337: $02
    jp $412e                                      ; $5338: $c3 $2e $41


    ccf                                           ; $533b: $3f
    ld h, d                                       ; $533c: $62
    ret c                                         ; $533d: $d8

    ld bc, $1dfe                                  ; $533e: $01 $fe $1d
    jr nz, jr_066_5388                            ; $5341: $20 $45

    pop bc                                        ; $5343: $c1
    ld [c], a                                     ; $5344: $e2
    nop                                           ; $5345: $00
    inc bc                                        ; $5346: $03
    jp nz, $a183                                  ; $5347: $c2 $83 $a1

    ccf                                           ; $534a: $3f
    pop hl                                        ; $534b: $e1
    ld c, h                                       ; $534c: $4c
    rst $38                                       ; $534d: $ff
    ld hl, sp+$67                                 ; $534e: $f8 $67
    or [hl]                                       ; $5350: $b6
    ld [hl+], a                                   ; $5351: $22
    ld b, h                                       ; $5352: $44
    and b                                         ; $5353: $a0
    ld b, d                                       ; $5354: $42
    jp nz, $8000                                  ; $5355: $c2 $00 $80

    pop bc                                        ; $5358: $c1
    add l                                         ; $5359: $85
    add b                                         ; $535a: $80
    nop                                           ; $535b: $00
    ccf                                           ; $535c: $3f
    ld a, d                                       ; $535d: $7a
    ld a, [bc]                                    ; $535e: $0a
    ld b, l                                       ; $535f: $45
    and b                                         ; $5360: $a0
    jp $84a4                                      ; $5361: $c3 $a4 $84


    ret nz                                        ; $5364: $c0

    ret nz                                        ; $5365: $c0

    db $e3                                        ; $5366: $e3
    nop                                           ; $5367: $00
    nop                                           ; $5368: $00
    rst $18                                       ; $5369: $df
    inc b                                         ; $536a: $04
    ret z                                         ; $536b: $c8

    ld hl, sp+$00                                 ; $536c: $f8 $00
    inc bc                                        ; $536e: $03
    pop bc                                        ; $536f: $c1
    rst $38                                       ; $5370: $ff
    ld b, b                                       ; $5371: $40
    or [hl]                                       ; $5372: $b6
    add e                                         ; $5373: $83
    add d                                         ; $5374: $82
    and d                                         ; $5375: $a2
    ld [bc], a                                    ; $5376: $02
    db $fd                                        ; $5377: $fd
    ld [$a702], sp                                ; $5378: $08 $02 $a7
    ld a, c                                       ; $537b: $79
    ld bc, $22ba                                  ; $537c: $01 $ba $22
    dec bc                                        ; $537f: $0b
    push bc                                       ; $5380: $c5
    add b                                         ; $5381: $80
    add d                                         ; $5382: $82
    cp b                                          ; $5383: $b8
    inc b                                         ; $5384: $04
    call nc, Call_000_0179                        ; $5385: $d4 $79 $01

jr_066_5388:
    nop                                           ; $5388: $00
    pop bc                                        ; $5389: $c1
    db $e3                                        ; $538a: $e3
    add $60                                       ; $538b: $c6 $60
    inc b                                         ; $538d: $04
    cp a                                          ; $538e: $bf
    or [hl]                                       ; $538f: $b6
    ld l, a                                       ; $5390: $6f
    ld a, c                                       ; $5391: $79
    nop                                           ; $5392: $00
    ret nz                                        ; $5393: $c0

    db $e4                                        ; $5394: $e4
    ccf                                           ; $5395: $3f
    ld [hl+], a                                   ; $5396: $22
    add d                                         ; $5397: $82
    jp c, Jump_000_0404                           ; $5398: $da $04 $04

    call $82c6                                    ; $539b: $cd $c6 $82
    dec c                                         ; $539e: $0d
    ld a, a                                       ; $539f: $7f
    ld [hl+], a                                   ; $53a0: $22
    inc bc                                        ; $53a1: $03
    jp $c682                                      ; $53a2: $c3 $82 $c6


    ld h, [hl]                                    ; $53a5: $66
    ld h, c                                       ; $53a6: $61
    rst $30                                       ; $53a7: $f7
    nop                                           ; $53a8: $00
    ld b, b                                       ; $53a9: $40
    di                                            ; $53aa: $f3
    inc bc                                        ; $53ab: $03
    cp $4e                                        ; $53ac: $fe $4e
    inc h                                         ; $53ae: $24
    rlca                                          ; $53af: $07
    cp c                                          ; $53b0: $b9
    jr nz, jr_066_53b5                            ; $53b1: $20 $02

    db $e4                                        ; $53b3: $e4
    cp c                                          ; $53b4: $b9

jr_066_53b5:
    inc b                                         ; $53b5: $04
    dec l                                         ; $53b6: $2d
    ld e, h                                       ; $53b7: $5c
    sub l                                         ; $53b8: $95
    ld [bc], a                                    ; $53b9: $02
    inc b                                         ; $53ba: $04
    pop de                                        ; $53bb: $d1
    ld c, l                                       ; $53bc: $4d
    jp nz, $b9c1                                  ; $53bd: $c2 $c1 $b9

    ld bc, $23c2                                  ; $53c0: $01 $c2 $23
    add h                                         ; $53c3: $84
    inc h                                         ; $53c4: $24
    ldh [rOBP1], a                                ; $53c5: $e0 $49
    db $fc                                        ; $53c7: $fc
    add hl, sp                                    ; $53c8: $39
    db $10                                        ; $53c9: $10
    call nz, $0ba3                                ; $53ca: $c4 $a3 $0b
    and d                                         ; $53cd: $a2
    jp $f924                                      ; $53ce: $c3 $24 $f9


    ld bc, $7e4d                                  ; $53d1: $01 $4d $7e
    and $02                                       ; $53d4: $e6 $02
    cp d                                          ; $53d6: $ba
    add d                                         ; $53d7: $82
    db $e3                                        ; $53d8: $e3
    nop                                           ; $53d9: $00
    inc de                                        ; $53da: $13
    ld b, d                                       ; $53db: $42
    ld b, b                                       ; $53dc: $40
    push hl                                       ; $53dd: $e5
    rst $38                                       ; $53de: $ff
    add [hl]                                      ; $53df: $86
    ld a, [hl]                                    ; $53e0: $7e
    ld [$87f6], a                                 ; $53e1: $ea $f6 $87
    ld a, h                                       ; $53e4: $7c
    db $10                                        ; $53e5: $10
    ld c, [hl]                                    ; $53e6: $4e
    ld [bc], a                                    ; $53e7: $02
    ret nz                                        ; $53e8: $c0

    jp hl                                         ; $53e9: $e9


    nop                                           ; $53ea: $00
    cp e                                          ; $53eb: $bb
    pop bc                                        ; $53ec: $c1
    ld [bc], a                                    ; $53ed: $02
    ld l, e                                       ; $53ee: $6b
    db $fc                                        ; $53ef: $fc
    scf                                           ; $53f0: $37
    ld a, a                                       ; $53f1: $7f
    ld [hl+], a                                   ; $53f2: $22
    ld b, c                                       ; $53f3: $41
    ld hl, $2800                                  ; $53f4: $21 $00 $28
    ret nz                                        ; $53f7: $c0

    db $e3                                        ; $53f8: $e3
    nop                                           ; $53f9: $00
    jp hl                                         ; $53fa: $e9


jr_066_53fb:
    nop                                           ; $53fb: $00
    db $f4                                        ; $53fc: $f4
    or a                                          ; $53fd: $b7
    ret nz                                        ; $53fe: $c0

    push hl                                       ; $53ff: $e5
    nop                                           ; $5400: $00
    ld hl, $057e                                  ; $5401: $21 $7e $05
    ld sp, hl                                     ; $5404: $f9
    ld bc, $1782                                  ; $5405: $01 $82 $17
    inc b                                         ; $5408: $04
    adc h                                         ; $5409: $8c
    ld b, e                                       ; $540a: $43
    inc h                                         ; $540b: $24
    nop                                           ; $540c: $00
    nop                                           ; $540d: $00
    jr nz, jr_066_5454                            ; $540e: $20 $44

    ld [bc], a                                    ; $5410: $02
    ld a, e                                       ; $5411: $7b
    add $82                                       ; $5412: $c6 $82
    inc b                                         ; $5414: $04
    ld e, d                                       ; $5415: $5a
    jr z, jr_066_5418                             ; $5416: $28 $00

jr_066_5418:
    call nc, Call_000_22c7                        ; $5418: $d4 $c7 $22
    ld a, a                                       ; $541b: $7f
    ld bc, $4b09                                  ; $541c: $01 $09 $4b
    cp l                                          ; $541f: $bd
    ldh [$ba], a                                  ; $5420: $e0 $ba
    and h                                         ; $5422: $a4
    dec hl                                        ; $5423: $2b
    dec sp                                        ; $5424: $3b
    jp Jump_000_02e2                              ; $5425: $c3 $e2 $02


    inc b                                         ; $5428: $04
    sbc l                                         ; $5429: $9d
    add [hl]                                      ; $542a: $86
    ld [hl+], a                                   ; $542b: $22
    nop                                           ; $542c: $00
    ld a, $e2                                     ; $542d: $3e $e2
    cp $e0                                        ; $542f: $fe $e0
    ld a, a                                       ; $5431: $7f
    ld b, $3d                                     ; $5432: $06 $3d
    ld [c], a                                     ; $5434: $e2
    ld e, l                                       ; $5435: $5d
    and b                                         ; $5436: $a0
    ld a, d                                       ; $5437: $7a
    rst $20                                       ; $5438: $e7
    nop                                           ; $5439: $00
    push de                                       ; $543a: $d5
    ld a, [hl]                                    ; $543b: $7e
    db $e3                                        ; $543c: $e3
    nop                                           ; $543d: $00
    ret nz                                        ; $543e: $c0

    ld [bc], a                                    ; $543f: $02
    ld c, d                                       ; $5440: $4a
    jr nz, jr_066_53fb                            ; $5441: $20 $b8

    call $cdf8                                    ; $5443: $cd $f8 $cd
    inc b                                         ; $5446: $04
    ld d, d                                       ; $5447: $52
    inc b                                         ; $5448: $04
    jr nz, @-$42                                  ; $5449: $20 $bc

    jp nz, $8144                                  ; $544b: $c2 $44 $81

    nop                                           ; $544e: $00
    ld a, b                                       ; $544f: $78
    jp $c2f2                                      ; $5450: $c3 $f2 $c2


    xor e                                         ; $5453: $ab

jr_066_5454:
    and d                                         ; $5454: $a2
    ld hl, sp-$3a                                 ; $5455: $f8 $c6
    ld a, [c]                                     ; $5457: $f2
    ld b, e                                       ; $5458: $43
    inc [hl]                                      ; $5459: $34
    inc d                                         ; $545a: $14
    adc e                                         ; $545b: $8b
    ld h, c                                       ; $545c: $61
    ld b, c                                       ; $545d: $41
    jp Jump_066_6b01                              ; $545e: $c3 $01 $6b


    dec a                                         ; $5461: $3d
    ldh [$34], a                                  ; $5462: $e0 $34
    call nz, $e2ec                                ; $5464: $c4 $ec $e2
    ld h, h                                       ; $5467: $64
    nop                                           ; $5468: $00
    ld a, b                                       ; $5469: $78

jr_066_546a:
    inc de                                        ; $546a: $13
    db $fc                                        ; $546b: $fc
    call $a33e                                    ; $546c: $cd $3e $a3
    nop                                           ; $546f: $00
    push af                                       ; $5470: $f5
    add c                                         ; $5471: $81
    rst $38                                       ; $5472: $ff
    ldh [$37], a                                  ; $5473: $e0 $37
    add b                                         ; $5475: $80
    ld [hl], d                                    ; $5476: $72
    add l                                         ; $5477: $85
    halt                                          ; $5478: $76
    add $c0                                       ; $5479: $c6 $c0
    db $f4                                        ; $547b: $f4
    or [hl]                                       ; $547c: $b6
    and [hl]                                      ; $547d: $a6
    cp $c2                                        ; $547e: $fe $c2
    nop                                           ; $5480: $00
    ld b, d                                       ; $5481: $42
    ld [hl+], a                                   ; $5482: $22
    push af                                       ; $5483: $f5
    add [hl]                                      ; $5484: $86
    ld a, [hl+]                                   ; $5485: $2a
    add b                                         ; $5486: $80
    daa                                           ; $5487: $27
    add b                                         ; $5488: $80
    ld [hl], d                                    ; $5489: $72
    inc hl                                        ; $548a: $23
    ld d, h                                       ; $548b: $54
    ld b, [hl]                                    ; $548c: $46
    ld l, $6e                                     ; $548d: $2e $6e
    ld a, [hl]                                    ; $548f: $7e
    ld h, $00                                     ; $5490: $26 $00
    ld [hl], d                                    ; $5492: $72
    and b                                         ; $5493: $a0
    ld a, [c]                                     ; $5494: $f2
    and d                                         ; $5495: $a2
    db $fc                                        ; $5496: $fc
    ld hl, $e1c3                                  ; $5497: $21 $c3 $e1
    ld l, h                                       ; $549a: $6c
    ld h, b                                       ; $549b: $60
    cp a                                          ; $549c: $bf
    ldh [$72], a                                  ; $549d: $e0 $72
    inc h                                         ; $549f: $24
    cp $1f                                        ; $54a0: $fe $1f
    nop                                           ; $54a2: $00
    ld a, [$7902]                                 ; $54a3: $fa $02 $79
    pop bc                                        ; $54a6: $c1
    ret nz                                        ; $54a7: $c0

    push hl                                       ; $54a8: $e5
    ld l, [hl]                                    ; $54a9: $6e
    and h                                         ; $54aa: $a4
    ld a, [c]                                     ; $54ab: $f2
    ld e, e                                       ; $54ac: $5b
    ld hl, sp+$67                                 ; $54ad: $f8 $67
    ld a, d                                       ; $54af: $7a
    push hl                                       ; $54b0: $e5
    xor [hl]                                      ; $54b1: $ae
    and d                                         ; $54b2: $a2
    nop                                           ; $54b3: $00
    ld [hl], l                                    ; $54b4: $75
    and e                                         ; $54b5: $a3
    or e                                          ; $54b6: $b3
    ld b, b                                       ; $54b7: $40
    add b                                         ; $54b8: $80
    pop hl                                        ; $54b9: $e1
    db $f4                                        ; $54ba: $f4
    ld e, c                                       ; $54bb: $59
    and h                                         ; $54bc: $a4
    adc e                                         ; $54bd: $8b
    adc h                                         ; $54be: $8c
    and d                                         ; $54bf: $a2
    inc bc                                        ; $54c0: $03
    and c                                         ; $54c1: $a1
    cpl                                           ; $54c2: $2f
    ld h, d                                       ; $54c3: $62
    ld b, b                                       ; $54c4: $40
    jr nc, jr_066_546a                            ; $54c5: $30 $a3

    ld [hl], d                                    ; $54c7: $72
    ld c, c                                       ; $54c8: $49
    ld l, $31                                     ; $54c9: $2e $31
    ld hl, sp+$27                                 ; $54cb: $f8 $27
    ld [hl], d                                    ; $54cd: $72
    rlca                                          ; $54ce: $07
    ld [hl], d                                    ; $54cf: $72
    ld h, d                                       ; $54d0: $62
    dec l                                         ; $54d1: $2d
    cp [hl]                                       ; $54d2: $be
    pop bc                                        ; $54d3: $c1
    inc hl                                        ; $54d4: $23
    ld l, e                                       ; $54d5: $6b
    ld c, e                                       ; $54d6: $4b
    ld [hl], d                                    ; $54d7: $72
    inc bc                                        ; $54d8: $03
    nop                                           ; $54d9: $00
    reti                                          ; $54da: $d9


    jr z, jr_066_552b                             ; $54db: $28 $4e

    dec hl                                        ; $54dd: $2b
    cp [hl]                                       ; $54de: $be
    and e                                         ; $54df: $a3
    pop bc                                        ; $54e0: $c1
    ld [c], a                                     ; $54e1: $e2
    ld bc, $f22b                                  ; $54e2: $01 $2b $f2
    inc hl                                        ; $54e5: $23
    inc [hl]                                      ; $54e6: $34
    add hl, de                                    ; $54e7: $19
    ret c                                         ; $54e8: $d8

    ld b, l                                       ; $54e9: $45
    sub d                                         ; $54ea: $92
    add [hl]                                      ; $54eb: $86
    ld [hl], a                                    ; $54ec: $77
    and c                                         ; $54ed: $a1
    push af                                       ; $54ee: $f5
    add b                                         ; $54ef: $80
    add d                                         ; $54f0: $82
    pop hl                                        ; $54f1: $e1
    nop                                           ; $54f2: $00
    or d                                          ; $54f3: $b2
    ld hl, $d500                                  ; $54f4: $21 $00 $d5
    sbc b                                         ; $54f7: $98
    ld d, l                                       ; $54f8: $55
    cp l                                          ; $54f9: $bd
    jp nz, $8171                                  ; $54fa: $c2 $71 $81

    pop bc                                        ; $54fd: $c1
    db $e3                                        ; $54fe: $e3
    nop                                           ; $54ff: $00
    jp c, $acf4                                   ; $5500: $da $f4 $ac

    nop                                           ; $5503: $00
    ld l, [hl]                                    ; $5504: $6e
    ld [bc], a                                    ; $5505: $02
    rst $30                                       ; $5506: $f7
    and c                                         ; $5507: $a1
    jp Jump_066_43e1                              ; $5508: $c3 $e1 $43


    ldh [$82], a                                  ; $550b: $e0 $82
    push hl                                       ; $550d: $e5
    nop                                           ; $550e: $00
    sbc $ea                                       ; $550f: $de $ea
    ld c, e                                       ; $5511: $4b
    jr z, jr_066_5576                             ; $5512: $28 $62

    nop                                           ; $5514: $00
    ld l, h                                       ; $5515: $6c
    add c                                         ; $5516: $81
    add d                                         ; $5517: $82
    db $e4                                        ; $5518: $e4
    rst $38                                       ; $5519: $ff
    rst $38                                       ; $551a: $ff
    ld hl, sp-$35                                 ; $551b: $f8 $cb
    rst $20                                       ; $551d: $e7
    ld b, e                                       ; $551e: $43
    ld l, d                                       ; $551f: $6a
    and e                                         ; $5520: $a3
    db $f4                                        ; $5521: $f4
    rra                                           ; $5522: $1f
    ld l, h                                       ; $5523: $6c
    cpl                                           ; $5524: $2f
    nop                                           ; $5525: $00
    add h                                         ; $5526: $84
    ld h, l                                       ; $5527: $65
    ld a, [$004d]                                 ; $5528: $fa $4d $00

jr_066_552b:
    nop                                           ; $552b: $00
    nop                                           ; $552c: $00
    rst $38                                       ; $552d: $ff
    and b                                         ; $552e: $a0
    call c, $dedd                                 ; $552f: $dc $dd $de
    and b                                         ; $5532: $a0
    and b                                         ; $5533: $a0
    ret c                                         ; $5534: $d8

    reti                                          ; $5535: $d9


    ld b, $fc                                     ; $5536: $06 $fc
    db $e3                                        ; $5538: $e3
    jp nc, $fcd3                                  ; $5539: $d2 $d3 $fc

    rst $20                                       ; $553c: $e7
    db $ec                                        ; $553d: $ec
    push hl                                       ; $553e: $e5
    ld hl, sp-$18                                 ; $553f: $f8 $e8
    call nc, $fce1                                ; $5541: $d4 $e1 $fc
    db $ec                                        ; $5544: $ec
    rst $38                                       ; $5545: $ff
    rst $18                                       ; $5546: $df
    ldh [$e1], a                                  ; $5547: $e0 $e1
    ld [c], a                                     ; $5549: $e2
    sub $d7                                       ; $554a: $d6 $d7
    jp c, Jump_066_7edb                           ; $554c: $da $db $7e

    db $fc                                        ; $554f: $fc
    pop hl                                        ; $5550: $e1
    ret nc                                        ; $5551: $d0

    pop de                                        ; $5552: $d1
    call nc, $a0d5                                ; $5553: $d4 $d5 $a0
    and b                                         ; $5556: $a0
    db $fc                                        ; $5557: $fc
    db $e3                                        ; $5558: $e3
    add e                                         ; $5559: $83
    ret nc                                        ; $555a: $d0

    pop de                                        ; $555b: $d1
    ldh a, [$e1]                                  ; $555c: $f0 $e1
    add sp, -$1d                                  ; $555e: $e8 $e3
    ldh [$e5], a                                  ; $5560: $e0 $e5
    call nc, $fce1                                ; $5562: $d4 $e1 $fc
    db $ed                                        ; $5565: $ed
    db $e3                                        ; $5566: $e3
    rst $30                                       ; $5567: $f7
    db $e4                                        ; $5568: $e4
    push hl                                       ; $5569: $e5
    and $82                                       ; $556a: $e6 $82
    add sp, -$61                                  ; $556c: $e8 $9f
    and d                                         ; $556e: $a2
    sbc l                                         ; $556f: $9d
    sbc l                                         ; $5570: $9d
    rst $00                                       ; $5571: $c7
    sbc l                                         ; $5572: $9d
    and d                                         ; $5573: $a2
    sbc a                                         ; $5574: $9f
    ld a, d                                       ; $5575: $7a

jr_066_5576:
    di                                            ; $5576: $f3
    call nc, $fce1                                ; $5577: $d4 $e1 $fc
    db $ed                                        ; $557a: $ed
    rst $20                                       ; $557b: $e7
    add sp, -$05                                  ; $557c: $e8 $fb
    jp hl                                         ; $557e: $e9


    ld [$e782], a                                 ; $557f: $ea $82 $e7
    sbc a                                         ; $5582: $9f
    sbc h                                         ; $5583: $9c
    xor [hl]                                      ; $5584: $ae
    ld b, [hl]                                    ; $5585: $46
    xor [hl]                                      ; $5586: $ae
    rrca                                          ; $5587: $0f
    ld b, [hl]                                    ; $5588: $46
    ld b, [hl]                                    ; $5589: $46
    sbc h                                         ; $558a: $9c
    sbc a                                         ; $558b: $9f
    ld a, d                                       ; $558c: $7a
    db $ec                                        ; $558d: $ec
    halt                                          ; $558e: $76
    db $e3                                        ; $558f: $e3
    call nc, $fce1                                ; $5590: $d4 $e1 $fc
    db $ed                                        ; $5593: $ed
    ld a, h                                       ; $5594: $7c
    ld l, $e3                                     ; $5595: $2e $e3
    add d                                         ; $5597: $82
    push hl                                       ; $5598: $e5
    sbc h                                         ; $5599: $9c
    ld b, [hl]                                    ; $559a: $46
    xor a                                         ; $559b: $af
    xor [hl]                                      ; $559c: $ae
    xor a                                         ; $559d: $af
    cp l                                          ; $559e: $bd
    ldh [$80], a                                  ; $559f: $e0 $80
    cp a                                          ; $55a1: $bf
    ldh [rIE], a                                  ; $55a2: $e0 $ff
    ld [c], a                                     ; $55a4: $e2

jr_066_55a5:
    ldh a, [$cd]                                  ; $55a5: $f0 $cd
    ld [$fae2], a                                 ; $55a7: $ea $e2 $fa
    jp z, $e32e                                   ; $55aa: $ca $2e $e3

    add d                                         ; $55ad: $82
    push hl                                       ; $55ae: $e5
    ld b, [hl]                                    ; $55af: $46
    ld [hl], a                                    ; $55b0: $77
    ld b, [hl]                                    ; $55b1: $46
    ld b, [hl]                                    ; $55b2: $46
    xor a                                         ; $55b3: $af
    cp $e2                                        ; $55b4: $fe $e2
    sbc h                                         ; $55b6: $9c
    sbc l                                         ; $55b7: $9d
    sbc l                                         ; $55b8: $9d
    cp l                                          ; $55b9: $bd
    pop hl                                        ; $55ba: $e1
    ld a, [hl]                                    ; $55bb: $7e
    ldh a, [$cb]                                  ; $55bc: $f0 $cb
    sub $d7                                       ; $55be: $d6 $d7
    and b                                         ; $55c0: $a0
    and b                                         ; $55c1: $a0
    sub $d7                                       ; $55c2: $d6 $d7
    ld a, [$40cb]                                 ; $55c4: $fa $cb $40
    ld l, $e3                                     ; $55c7: $2e $e3
    add d                                         ; $55c9: $82
    db $e4                                        ; $55ca: $e4
    ld b, l                                       ; $55cb: $45
    ldh [$fe], a                                  ; $55cc: $e0 $fe
    db $e3                                        ; $55ce: $e3
    ld a, [hl-]                                   ; $55cf: $3a
    pop hl                                        ; $55d0: $e1
    ld a, h                                       ; $55d1: $7c
    ld [c], a                                     ; $55d2: $e2
    sbc a                                         ; $55d3: $9f
    pop af                                        ; $55d4: $f1
    ret nz                                        ; $55d5: $c0

    or b                                          ; $55d6: $b0
    ld [hl], h                                    ; $55d7: $74
    ld [c], a                                     ; $55d8: $e2
    ld l, [hl]                                    ; $55d9: $6e
    rst $00                                       ; $55da: $c7
    ld a, [$2ecb]                                 ; $55db: $fa $cb $2e
    db $e3                                        ; $55de: $e3
    sub $d7                                       ; $55df: $d6 $d7
    add [hl]                                      ; $55e1: $86
    ret nz                                        ; $55e2: $c0

    sbc [hl]                                      ; $55e3: $9e
    sbc $45                                       ; $55e4: $de $45
    ld [c], a                                     ; $55e6: $e2
    ld b, l                                       ; $55e7: $45
    ld c, b                                       ; $55e8: $48
    ld c, b                                       ; $55e9: $48
    ld b, l                                       ; $55ea: $45
    ld a, e                                       ; $55eb: $7b
    ld [c], a                                     ; $55ec: $e2
    ld b, [hl]                                    ; $55ed: $46
    sbc h                                         ; $55ee: $9c
    jr nc, jr_066_55a5                            ; $55ef: $30 $b4

    ret nz                                        ; $55f1: $c0

    ld l, [hl]                                    ; $55f2: $6e
    ldh [$33], a                                  ; $55f3: $e0 $33
    db $e3                                        ; $55f5: $e3
    ld a, [hl]                                    ; $55f6: $7e
    push hl                                       ; $55f7: $e5
    jp c, $fadb                                   ; $55f8: $da $db $fa

    rlc b                                         ; $55fb: $cb $00
    rst $00                                       ; $55fd: $c7
    ei                                            ; $55fe: $fb
    and b                                         ; $55ff: $a0
    sbc [hl]                                      ; $5600: $9e
    inc b                                         ; $5601: $04
    ldh [rDMA], a                                 ; $5602: $e0 $46
    xor a                                         ; $5604: $af
    ld c, d                                       ; $5605: $4a
    ld h, b                                       ; $5606: $60
    ld d, h                                       ; $5607: $54
    inc de                                        ; $5608: $13
    ld b, c                                       ; $5609: $41
    ld b, l                                       ; $560a: $45
    ld a, l                                       ; $560b: $7d
    db $e4                                        ; $560c: $e4
    or l                                          ; $560d: $b5
    ret nz                                        ; $560e: $c0

    xor [hl]                                      ; $560f: $ae
    xor $c0                                       ; $5610: $ee $c0
    ld a, [c]                                     ; $5612: $f2
    jp $c8fc                                      ; $5613: $c3 $fc $c8


    and $00                                       ; $5616: $e6 $00
    ret nc                                        ; $5618: $d0

    ret nc                                        ; $5619: $d0

    pop de                                        ; $561a: $d1
    jp nz, $c5c0                                  ; $561b: $c2 $c0 $c5

    ret nz                                        ; $561e: $c0

    ld b, [hl]                                    ; $561f: $46
    ld b, e                                       ; $5620: $43
    ld a, [hl+]                                   ; $5621: $2a
    rlca                                          ; $5622: $07
    cpl                                           ; $5623: $2f
    jr nz, jr_066_5650                            ; $5624: $20 $2a

    cp [hl]                                       ; $5626: $be
    ldh [$f8], a                                  ; $5627: $e0 $f8
    ret nz                                        ; $5629: $c0

    or l                                          ; $562a: $b5
    pop bc                                        ; $562b: $c1
    ld a, b                                       ; $562c: $78
    ldh [$f2], a                                  ; $562d: $e0 $f2
    ret nz                                        ; $562f: $c0

    add $7e                                       ; $5630: $c6 $7e
    jp hl                                         ; $5632: $e9


    and b                                         ; $5633: $a0
    and b                                         ; $5634: $a0
    nop                                           ; $5635: $00
    pop de                                        ; $5636: $d1
    add [hl]                                      ; $5637: $86
    and c                                         ; $5638: $a1
    cp a                                          ; $5639: $bf
    ldh [rDMA], a                                 ; $563a: $e0 $46
    ld b, [hl]                                    ; $563c: $46
    rst $38                                       ; $563d: $ff
    ld b, l                                       ; $563e: $45

jr_066_563f:
    ld a, [hl+]                                   ; $563f: $2a
    jr nz, @+$22                                  ; $5640: $20 $20

    daa                                           ; $5642: $27
    dec [hl]                                      ; $5643: $35
    jr c, @+$39                                   ; $5644: $38 $37

    inc e                                         ; $5646: $1c
    cp l                                          ; $5647: $bd
    pop hl                                        ; $5648: $e1
    ld [hl], b                                    ; $5649: $70
    ldh [$79], a                                  ; $564a: $e0 $79
    ld a, d                                       ; $564c: $7a
    ld a, l                                       ; $564d: $7d
    db $f4                                        ; $564e: $f4
    pop bc                                        ; $564f: $c1

jr_066_5650:
    db $ed                                        ; $5650: $ed
    and c                                         ; $5651: $a1
    ld l, d                                       ; $5652: $6a
    and [hl]                                      ; $5653: $a6
    db $ec                                        ; $5654: $ec
    nop                                           ; $5655: $00
    pop de                                        ; $5656: $d1
    adc [hl]                                      ; $5657: $8e
    and c                                         ; $5658: $a1
    and b                                         ; $5659: $a0
    and c                                         ; $565a: $a1
    ret nz                                        ; $565b: $c0

    pop bc                                        ; $565c: $c1
    ld b, l                                       ; $565d: $45
    cp l                                          ; $565e: $bd
    inc l                                         ; $565f: $2c
    cp e                                          ; $5660: $bb
    ld hl, $ff35                                  ; $5661: $21 $35 $ff
    ldh [$38], a                                  ; $5664: $e0 $38
    scf                                           ; $5666: $37
    ld b, l                                       ; $5667: $45
    pop bc                                        ; $5668: $c1
    ldh [$7e], a                                  ; $5669: $e0 $7e
    rst $08                                       ; $566b: $cf
    ld b, [hl]                                    ; $566c: $46
    ld a, a                                       ; $566d: $7f
    ld a, l                                       ; $566e: $7d
    xor a                                         ; $566f: $af
    or d                                          ; $5670: $b2
    call nz, $a36a                                ; $5671: $c4 $6a $a3
    and b                                         ; $5674: $a0
    and b                                         ; $5675: $a0
    cp d                                          ; $5676: $ba
    nop                                           ; $5677: $00
    sub $9e                                       ; $5678: $d6 $9e
    add h                                         ; $567a: $84
    jp Jump_000_3745                              ; $567b: $c3 $45 $37


    jr c, jr_066_563f                             ; $567e: $38 $bf

    pop hl                                        ; $5680: $e1
    dec [hl]                                      ; $5681: $35
    rst $38                                       ; $5682: $ff
    ld [hl], $45                                  ; $5683: $36 $45
    ld b, l                                       ; $5685: $45
    add b                                         ; $5686: $80
    scf                                           ; $5687: $37
    scf                                           ; $5688: $37
    ld b, l                                       ; $5689: $45
    ld a, a                                       ; $568a: $7f
    ld bc, $b27d                                  ; $568b: $01 $7d $b2
    jp nz, $e57e                                  ; $568e: $c2 $7e $e5

    nop                                           ; $5691: $00
    db $d3                                        ; $5692: $d3
    ld a, [hl]                                    ; $5693: $7e
    jp nz, $a0c0                                  ; $5694: $c2 $c0 $a0

    ld c, $e2                                     ; $5697: $0e $e2
    cp [hl]                                       ; $5699: $be
    push hl                                       ; $569a: $e5
    scf                                           ; $569b: $37
    jr c, jr_066_56d6                             ; $569c: $38 $38

    ld l, c                                       ; $569e: $69
    ld a, b                                       ; $569f: $78
    pop hl                                        ; $56a0: $e1
    adc [hl]                                      ; $56a1: $8e
    ld a, h                                       ; $56a2: $7c
    inc a                                         ; $56a3: $3c
    ld [c], a                                     ; $56a4: $e2
    ld a, [hl]                                    ; $56a5: $7e
    ld [c], a                                     ; $56a6: $e2
    or b                                          ; $56a7: $b0
    nop                                           ; $56a8: $00
    push de                                       ; $56a9: $d5
    and d                                         ; $56aa: $a2
    and e                                         ; $56ab: $a3
    cp l                                          ; $56ac: $bd
    jp $c101                                      ; $56ad: $c3 $01 $c1


    ld b, l                                       ; $56b0: $45
    ld a, [hl-]                                   ; $56b1: $3a
    ld a, l                                       ; $56b2: $7d
    ld [c], a                                     ; $56b3: $e2
    ld l, e                                       ; $56b4: $6b
    ld h, c                                       ; $56b5: $61
    ld l, h                                       ; $56b6: $6c
    ld a, b                                       ; $56b7: $78
    ld [c], a                                     ; $56b8: $e2
    inc a                                         ; $56b9: $3c
    ld [c], a                                     ; $56ba: $e2
    ld l, e                                       ; $56bb: $6b
    and d                                         ; $56bc: $a2
    nop                                           ; $56bd: $00
    db $d3                                        ; $56be: $d3
    and b                                         ; $56bf: $a0
    and b                                         ; $56c0: $a0
    ld a, [hl]                                    ; $56c1: $7e
    jp nz, $bdfc                                  ; $56c2: $c2 $fc $bd

    call nz, $c284                                ; $56c5: $c4 $84 $c2
    add hl, sp                                    ; $56c8: $39
    dec [hl]                                      ; $56c9: $35
    dec [hl]                                      ; $56ca: $35

jr_066_56cb:
    dec sp                                        ; $56cb: $3b
    dec [hl]                                      ; $56cc: $35
    dec [hl]                                      ; $56cd: $35
    ld a, e                                       ; $56ce: $7b
    ld l, [hl]                                    ; $56cf: $6e
    ld [hl], h                                    ; $56d0: $74
    push af                                       ; $56d1: $f5
    pop bc                                        ; $56d2: $c1
    add hl, sp                                    ; $56d3: $39
    ld b, [hl]                                    ; $56d4: $46
    add c                                         ; $56d5: $81

jr_066_56d6:
    ld b, [hl]                                    ; $56d6: $46
    jr z, @-$5e                                   ; $56d7: $28 $a0

    inc bc                                        ; $56d9: $03
    and c                                         ; $56da: $a1
    and b                                         ; $56db: $a0
    ld l, d                                       ; $56dc: $6a
    add c                                         ; $56dd: $81
    nop                                           ; $56de: $00
    ret nc                                        ; $56df: $d0

    db $fc                                        ; $56e0: $fc
    ld h, d                                       ; $56e1: $62
    inc h                                         ; $56e2: $24
    ld [c], a                                     ; $56e3: $e2
    adc a                                         ; $56e4: $8f
    and d                                         ; $56e5: $a2
    ld a, [hl-]                                   ; $56e6: $3a
    ld [c], a                                     ; $56e7: $e2
    cp a                                          ; $56e8: $bf
    ld b, l                                       ; $56e9: $45
    scf                                           ; $56ea: $37
    scf                                           ; $56eb: $37
    ld c, b                                       ; $56ec: $48
    ld c, b                                       ; $56ed: $48
    scf                                           ; $56ee: $37
    ccf                                           ; $56ef: $3f
    pop hl                                        ; $56f0: $e1
    dec [hl]                                      ; $56f1: $35
    cpl                                           ; $56f2: $2f
    dec [hl]                                      ; $56f3: $35
    ld a, [hl-]                                   ; $56f4: $3a
    ld b, l                                       ; $56f5: $45
    add c                                         ; $56f6: $81
    rst $20                                       ; $56f7: $e7
    add c                                         ; $56f8: $81
    sbc [hl]                                      ; $56f9: $9e
    call c, Call_000_00e4                         ; $56fa: $dc $e4 $00
    adc l                                         ; $56fd: $8d
    ldh a, [$fc]                                  ; $56fe: $f0 $fc
    ld h, e                                       ; $5700: $63
    ld a, [hl]                                    ; $5701: $7e
    jp nz, $e09e                                  ; $5702: $c2 $9e $e0

    jr c, jr_066_56cb                             ; $5705: $38 $c4

    xor [hl]                                      ; $5707: $ae
    xor [hl]                                      ; $5708: $ae
    ld b, l                                       ; $5709: $45
    ld c, e                                       ; $570a: $4b
    rla                                           ; $570b: $17
    ld h, b                                       ; $570c: $60
    ld e, l                                       ; $570d: $5d
    ld d, d                                       ; $570e: $52
    ret nz                                        ; $570f: $c0

    db $e4                                        ; $5710: $e4
    adc h                                         ; $5711: $8c
    cp h                                          ; $5712: $bc
    ret nz                                        ; $5713: $c0

    ld l, d                                       ; $5714: $6a
    add d                                         ; $5715: $82
    nop                                           ; $5716: $00
    pop de                                        ; $5717: $d1
    ld hl, sp-$04                                 ; $5718: $f8 $fc
    xor c                                         ; $571a: $a9
    sbc [hl]                                      ; $571b: $9e
    jp nz, $81b7                                  ; $571c: $c2 $b7 $81

    xor a                                         ; $571f: $af
    xor a                                         ; $5720: $af
    xor [hl]                                      ; $5721: $ae
    xor [hl]                                      ; $5722: $ae
    ld e, e                                       ; $5723: $5b
    dec c                                         ; $5724: $0d
    ld c, d                                       ; $5725: $4a
    ret nz                                        ; $5726: $c0

    db $e3                                        ; $5727: $e3
    add hl, sp                                    ; $5728: $39
    xor [hl]                                      ; $5729: $ae
    ccf                                           ; $572a: $3f
    ldh [$6c], a                                  ; $572b: $e0 $6c
    add e                                         ; $572d: $83
    nop                                           ; $572e: $00
    pop de                                        ; $572f: $d1
    db $fc                                        ; $5730: $fc
    and a                                         ; $5731: $a7
    ld a, b                                       ; $5732: $78
    ld a, d                                       ; $5733: $7a
    push hl                                       ; $5734: $e5
    ret                                           ; $5735: $c9


    add b                                         ; $5736: $80
    dec [hl]                                      ; $5737: $35
    add b                                         ; $5738: $80
    xor a                                         ; $5739: $af
    xor [hl]                                      ; $573a: $ae
    ld c, b                                       ; $573b: $48
    ld c, b                                       ; $573c: $48
    ld b, b                                       ; $573d: $40
    pop hl                                        ; $573e: $e1
    ld a, a                                       ; $573f: $7f
    ld [hl], $ae                                  ; $5740: $36 $ae
    xor a                                         ; $5742: $af
    add e                                         ; $5743: $83
    add h                                         ; $5744: $84
    ld b, [hl]                                    ; $5745: $46
    sbc [hl]                                      ; $5746: $9e
    dec l                                         ; $5747: $2d
    add b                                         ; $5748: $80
    or b                                          ; $5749: $b0
    nop                                           ; $574a: $00
    push de                                       ; $574b: $d5
    db $fc                                        ; $574c: $fc
    ld h, l                                       ; $574d: $65
    db $fc                                        ; $574e: $fc
    ld b, l                                       ; $574f: $45
    ld a, h                                       ; $5750: $7c
    push hl                                       ; $5751: $e5
    ld e, [hl]                                    ; $5752: $5e
    ld d, d                                       ; $5753: $52
    ld a, a                                       ; $5754: $7f
    ret nz                                        ; $5755: $c0

    ld a, [hl-]                                   ; $5756: $3a
    ld b, $c1                                     ; $5757: $06 $c1
    ldh [$86], a                                  ; $5759: $e0 $86
    add l                                         ; $575b: $85
    ret nz                                        ; $575c: $c0

    ld [c], a                                     ; $575d: $e2
    nop                                           ; $575e: $00
    push de                                       ; $575f: $d5
    db $fc                                        ; $5760: $fc
    and l                                         ; $5761: $a5
    halt                                          ; $5762: $76
    and [hl]                                      ; $5763: $a6
    sub [hl]                                      ; $5764: $96
    ret nz                                        ; $5765: $c0

    rst $38                                       ; $5766: $ff
    and c                                         ; $5767: $a1
    ld b, [hl]                                    ; $5768: $46
    xor [hl]                                      ; $5769: $ae
    ld c, d                                       ; $576a: $4a
    ld h, c                                       ; $576b: $61
    add hl, sp                                    ; $576c: $39
    ld l, [hl]                                    ; $576d: $6e
    ld l, a                                       ; $576e: $6f
    inc bc                                        ; $576f: $03
    ld l, h                                       ; $5770: $6c
    add hl, sp                                    ; $5771: $39
    pop bc                                        ; $5772: $c1
    ld [c], a                                     ; $5773: $e2
    ld l, h                                       ; $5774: $6c
    ld h, b                                       ; $5775: $60
    ldh [rSTAT], a                                ; $5776: $e0 $41
    nop                                           ; $5778: $00
    sub e                                         ; $5779: $93
    db $fc                                        ; $577a: $fc
    and a                                         ; $577b: $a7
    ld a, d                                       ; $577c: $7a
    ld b, a                                       ; $577d: $47
    db $fd                                        ; $577e: $fd
    sbc [hl]                                      ; $577f: $9e
    ld [hl], h                                    ; $5780: $74
    add b                                         ; $5781: $80
    ld d, [hl]                                    ; $5782: $56
    ld a, [hl-]                                   ; $5783: $3a
    dec [hl]                                      ; $5784: $35
    ld l, [hl]                                    ; $5785: $6e
    ld [hl], b                                    ; $5786: $70
    adc b                                         ; $5787: $88
    inc bc                                        ; $5788: $03
    adc b                                         ; $5789: $88
    add a                                         ; $578a: $87
    add c                                         ; $578b: $81
    and e                                         ; $578c: $a3
    ld l, d                                       ; $578d: $6a
    ld b, e                                       ; $578e: $43
    nop                                           ; $578f: $00
    sub c                                         ; $5790: $91
    db $fc                                        ; $5791: $fc
    and l                                         ; $5792: $a5
    ld hl, sp-$5f                                 ; $5793: $f8 $a1
    db $f4                                        ; $5795: $f4
    add e                                         ; $5796: $83
    rst $38                                       ; $5797: $ff
    call nc, $9ed5                                ; $5798: $d4 $d5 $9e
    xor [hl]                                      ; $579b: $ae
    ld b, [hl]                                    ; $579c: $46
    ld b, h                                       ; $579d: $44
    ld b, h                                       ; $579e: $44
    inc a                                         ; $579f: $3c
    ret nz                                        ; $57a0: $c0

    ld [bc], a                                    ; $57a1: $02
    pop hl                                        ; $57a2: $e1
    ld l, d                                       ; $57a3: $6a
    ld h, b                                       ; $57a4: $60
    add d                                         ; $57a5: $82
    and $00                                       ; $57a6: $e6 $00
    sub $f8                                       ; $57a8: $d6 $f8
    and [hl]                                      ; $57aa: $a6
    ld hl, sp+$25                                 ; $57ab: $f8 $25
    sbc [hl]                                      ; $57ad: $9e
    xor a                                         ; $57ae: $af
    rlca                                          ; $57af: $07
    ld b, l                                       ; $57b0: $45
    ld b, a                                       ; $57b1: $47
    ld e, d                                       ; $57b2: $5a
    inc b                                         ; $57b3: $04
    ret nz                                        ; $57b4: $c0

    db $eb                                        ; $57b5: $eb
    ld h, b                                       ; $57b6: $60
    add d                                         ; $57b7: $82
    add sp, $00                                   ; $57b8: $e8 $00
    ld d, c                                       ; $57ba: $51
    jr z, jr_066_5806                             ; $57bb: $28 $49

    cp $f8                                        ; $57bd: $fe $f8
    daa                                           ; $57bf: $27
    sbc [hl]                                      ; $57c0: $9e
    ld b, [hl]                                    ; $57c1: $46
    xor [hl]                                      ; $57c2: $ae
    ld c, e                                       ; $57c3: $4b
    ld d, l                                       ; $57c4: $55
    inc a                                         ; $57c5: $3c
    dec [hl]                                      ; $57c6: $35
    ld bc, $8239                                  ; $57c7: $01 $39 $82
    add c                                         ; $57ca: $81
    add [hl]                                      ; $57cb: $86
    and c                                         ; $57cc: $a1
    add d                                         ; $57cd: $82
    db $e3                                        ; $57ce: $e3
    nop                                           ; $57cf: $00
    ld d, c                                       ; $57d0: $51
    jr z, @+$4b                                   ; $57d1: $28 $49

    ld a, [hl]                                    ; $57d3: $7e
    rst $00                                       ; $57d4: $c7
    nop                                           ; $57d5: $00
    ldh [$2f], a                                  ; $57d6: $e0 $2f
    ld c, b                                       ; $57d8: $48
    add hl, sp                                    ; $57d9: $39
    dec [hl]                                      ; $57da: $35
    ld h, d                                       ; $57db: $62
    nop                                           ; $57dc: $00
    add b                                         ; $57dd: $80
    xor a                                         ; $57de: $af
    ld b, h                                       ; $57df: $44
    ret nz                                        ; $57e0: $c0

    inc b                                         ; $57e1: $04
    sub c                                         ; $57e2: $91
    ld hl, sp+$00                                 ; $57e3: $f8 $00
    ret                                           ; $57e5: $c9


    ld hl, sp-$55                                 ; $57e6: $f8 $ab
    or l                                          ; $57e8: $b5
    add d                                         ; $57e9: $82
    xor [hl]                                      ; $57ea: $ae
    ld c, d                                       ; $57eb: $4a
    ld h, b                                       ; $57ec: $60
    ld a, [hl-]                                   ; $57ed: $3a
    ld h, d                                       ; $57ee: $62
    inc bc                                        ; $57ef: $03
    ld h, a                                       ; $57f0: $67
    add hl, sp                                    ; $57f1: $39
    ld b, c                                       ; $57f2: $41
    add b                                         ; $57f3: $80
    inc b                                         ; $57f4: $04
    ret nz                                        ; $57f5: $c0

    inc b                                         ; $57f6: $04
    db $e3                                        ; $57f7: $e3
    inc b                                         ; $57f8: $04
    adc e                                         ; $57f9: $8b
    nop                                           ; $57fa: $00
    set 6, [hl]                                   ; $57fb: $cb $f6
    inc bc                                        ; $57fd: $03
    ld a, [hl]                                    ; $57fe: $7e
    halt                                          ; $57ff: $76
    add a                                         ; $5800: $87
    xor [hl]                                      ; $5801: $ae
    xor a                                         ; $5802: $af
    ld c, d                                       ; $5803: $4a
    ld d, d                                       ; $5804: $52
    ld h, d                                       ; $5805: $62

jr_066_5806:
    ld h, a                                       ; $5806: $67
    inc b                                         ; $5807: $04
    and d                                         ; $5808: $a2
    ret nz                                        ; $5809: $c0

    ld [hl], h                                    ; $580a: $74
    ld b, d                                       ; $580b: $42
    nop                                           ; $580c: $00
    ld b, d                                       ; $580d: $42
    cp $0e                                        ; $580e: $fe $0e
    ld l, $2b                                     ; $5810: $2e $2b
    jr nz, jr_066_5855                            ; $5812: $20 $41

    db $f4                                        ; $5814: $f4
    ld b, h                                       ; $5815: $44
    xor [hl]                                      ; $5816: $ae
    xor a                                         ; $5817: $af
    or a                                          ; $5818: $b7
    ld d, b                                       ; $5819: $50
    ld b, l                                       ; $581a: $45
    ld [hl], $01                                  ; $581b: $36 $01
    add b                                         ; $581d: $80
    ld [hl], $ae                                  ; $581e: $36 $ae
    add h                                         ; $5820: $84
    add b                                         ; $5821: $80
    ld b, [hl]                                    ; $5822: $46
    pop bc                                        ; $5823: $c1
    sbc [hl]                                      ; $5824: $9e
    db $f4                                        ; $5825: $f4
    inc bc                                        ; $5826: $03
    cp $0f                                        ; $5827: $fe $0f
    ld l, $2b                                     ; $5829: $2e $2b
    ld a, d                                       ; $582b: $7a
    dec b                                         ; $582c: $05
    ld [hl], a                                    ; $582d: $77
    ld hl, $5d47                                  ; $582e: $21 $47 $5d
    ld e, l                                       ; $5831: $5d
    add hl, sp                                    ; $5832: $39

jr_066_5833:
    add c                                         ; $5833: $81
    ldh [$36], a                                  ; $5834: $e0 $36
    ld b, l                                       ; $5836: $45
    xor a                                         ; $5837: $af
    add h                                         ; $5838: $84
    add c                                         ; $5839: $81
    sbc [hl]                                      ; $583a: $9e
    inc b                                         ; $583b: $04
    pop de                                        ; $583c: $d1
    ldh a, [rP1]                                  ; $583d: $f0 $00
    set 7, b                                      ; $583f: $cb $f8
    inc hl                                        ; $5841: $23
    ld a, d                                       ; $5842: $7a
    inc bc                                        ; $5843: $03
    add h                                         ; $5844: $84
    and b                                         ; $5845: $a0
    ld d, c                                       ; $5846: $51
    ld e, [hl]                                    ; $5847: $5e
    ld d, [hl]                                    ; $5848: $56
    ld a, [hl-]                                   ; $5849: $3a
    ld b, $82                                     ; $584a: $06 $82
    ld h, b                                       ; $584c: $60
    xor [hl]                                      ; $584d: $ae
    ld b, [hl]                                    ; $584e: $46
    dec b                                         ; $584f: $05
    and b                                         ; $5850: $a0
    ld b, l                                       ; $5851: $45
    add b                                         ; $5852: $80
    inc b                                         ; $5853: $04
    pop de                                        ; $5854: $d1

jr_066_5855:
    nop                                           ; $5855: $00
    adc $04                                       ; $5856: $ce $04
    rst $00                                       ; $5858: $c7
    ld a, [hl]                                    ; $5859: $7e
    ld hl, sp+$00                                 ; $585a: $f8 $00
    ld d, d                                       ; $585c: $52
    ld d, l                                       ; $585d: $55
    inc a                                         ; $585e: $3c
    ld l, e                                       ; $585f: $6b
    ld l, h                                       ; $5860: $6c
    inc a                                         ; $5861: $3c
    dec b                                         ; $5862: $05
    and d                                         ; $5863: $a2
    ldh [rLYC], a                                 ; $5864: $e0 $45
    add c                                         ; $5866: $81
    inc b                                         ; $5867: $04
    ret nc                                        ; $5868: $d0

    nop                                           ; $5869: $00
    call $a500                                    ; $586a: $cd $00 $a5
    ld [hl], $22                                  ; $586d: $36 $22
    xor a                                         ; $586f: $af
    ld b, h                                       ; $5870: $44
    ld [hl], $1e                                  ; $5871: $36 $1e
    ld b, h                                       ; $5873: $44
    and b                                         ; $5874: $a0
    ld [hl], c                                    ; $5875: $71
    adc b                                         ; $5876: $88
    add a                                         ; $5877: $87
    add l                                         ; $5878: $85
    add d                                         ; $5879: $82
    and h                                         ; $587a: $a4
    inc b                                         ; $587b: $04
    rst $08                                       ; $587c: $cf
    nop                                           ; $587d: $00
    call Call_000_000c                            ; $587e: $cd $0c $00
    and l                                         ; $5881: $a5
    ld a, c                                       ; $5882: $79
    ld [bc], a                                    ; $5883: $02
    ld b, l                                       ; $5884: $45
    ld [hl], $86                                  ; $5885: $36 $86
    ld h, e                                       ; $5887: $63
    ld a, h                                       ; $5888: $7c
    ld hl, $8045                                  ; $5889: $21 $45 $80
    halt                                          ; $588c: $76
    ld bc, $02d8                                  ; $588d: $01 $d8 $02
    rst $28                                       ; $5890: $ef
    nop                                           ; $5891: $00
    bit 7, [hl]                                   ; $5892: $cb $7e
    add e                                         ; $5894: $83
    ret nc                                        ; $5895: $d0

    pop de                                        ; $5896: $d1
    ld b, $a0                                     ; $5897: $06 $a0
    ld b, [hl]                                    ; $5899: $46
    xor a                                         ; $589a: $af
    ld [$6000], sp                                ; $589b: $08 $00 $60
    ld b, $62                                     ; $589e: $06 $62
    inc bc                                        ; $58a0: $03
    ld b, b                                       ; $58a1: $40
    xor a                                         ; $58a2: $af
    add d                                         ; $58a3: $82
    ret nz                                        ; $58a4: $c0

    add [hl]                                      ; $58a5: $86
    ld b, c                                       ; $58a6: $41
    ld [bc], a                                    ; $58a7: $02
    rst $28                                       ; $58a8: $ef
    nop                                           ; $58a9: $00
    jp z, $a270                                   ; $58aa: $ca $70 $a2

    ld h, h                                       ; $58ad: $64
    add [hl]                                      ; $58ae: $86
    add b                                         ; $58af: $80
    rst $08                                       ; $58b0: $cf
    jr nz, jr_066_5833                            ; $58b1: $20 $80

    ld b, b                                       ; $58b3: $40
    ld h, d                                       ; $58b4: $62
    ld h, e                                       ; $58b5: $63
    ld h, [hl]                                    ; $58b6: $66
    add [hl]                                      ; $58b7: $86
    ld h, c                                       ; $58b8: $61
    nop                                           ; $58b9: $00
    add d                                         ; $58ba: $82
    rst $00                                       ; $58bb: $c7
    add sp, $62                                   ; $58bc: $e8 $62
    ei                                            ; $58be: $fb
    db $e3                                        ; $58bf: $e3
    nop                                           ; $58c0: $00
    sub b                                         ; $58c1: $90
    inc b                                         ; $58c2: $04
    push bc                                       ; $58c3: $c5
    add [hl]                                      ; $58c4: $86
    add b                                         ; $58c5: $80
    add c                                         ; $58c6: $81
    ld [c], a                                     ; $58c7: $e2
    call nz, Call_000_37a0                        ; $58c8: $c4 $a0 $37
    ld l, b                                       ; $58cb: $68
    ld h, [hl]                                    ; $58cc: $66
    ld a, [hl-]                                   ; $58cd: $3a
    add h                                         ; $58ce: $84
    ld hl, $a1af                                  ; $58cf: $21 $af $a1
    inc b                                         ; $58d2: $04
    daa                                           ; $58d3: $27
    db $fc                                        ; $58d4: $fc
    db $e3                                        ; $58d5: $e3
    jr z, jr_066_58d8                             ; $58d6: $28 $00

jr_066_58d8:
    sub a                                         ; $58d8: $97
    db $fc                                        ; $58d9: $fc
    ld b, b                                       ; $58da: $40
    jp nz, Jump_066_46c1                          ; $58db: $c2 $c1 $46

    inc b                                         ; $58de: $04
    pop bc                                        ; $58df: $c1
    dec [hl]                                      ; $58e0: $35
    cp a                                          ; $58e1: $bf
    ldh [rP1], a                                  ; $58e2: $e0 $00
    ret nz                                        ; $58e4: $c0

    add b                                         ; $58e5: $80
    ret nz                                        ; $58e6: $c0

    jp nz, Jump_000_0582                          ; $58e7: $c2 $82 $05

    call c, Call_000_0063                         ; $58ea: $dc $63 $00
    sub l                                         ; $58ed: $95
    add [hl]                                      ; $58ee: $86
    add c                                         ; $58ef: $81
    jp nz, $c9c1                                  ; $58f0: $c2 $c1 $c9

jr_066_58f3:
    nop                                           ; $58f3: $00
    ld a, b                                       ; $58f4: $78
    ld b, $3d                                     ; $58f5: $06 $3d
    ld [hl+], a                                   ; $58f7: $22
    ld l, b                                       ; $58f8: $68
    ld h, [hl]                                    ; $58f9: $66
    ld sp, hl                                     ; $58fa: $f9
    nop                                           ; $58fb: $00
    ld [bc], a                                    ; $58fc: $02
    ld hl, $0582                                  ; $58fd: $21 $82 $05
    ld e, d                                       ; $5900: $5a
    ld h, e                                       ; $5901: $63
    nop                                           ; $5902: $00
    push de                                       ; $5903: $d5
    ld c, h                                       ; $5904: $4c
    add d                                         ; $5905: $82
    ld [c], a                                     ; $5906: $e2
    cp $00                                        ; $5907: $fe $00
    ld a, c                                       ; $5909: $79
    ld a, [hl]                                    ; $590a: $7e
    add $61                                       ; $590b: $c6 $61
    cp d                                          ; $590d: $ba
    ld bc, $c26a                                  ; $590e: $01 $6a $c2
    jr nz, jr_066_58f3                            ; $5911: $20 $e0

    ld a, [hl]                                    ; $5913: $7e
    rst $28                                       ; $5914: $ef
    or $87                                        ; $5915: $f6 $87
    inc b                                         ; $5917: $04
    adc e                                         ; $5918: $8b
    add [hl]                                      ; $5919: $86
    add b                                         ; $591a: $80
    add hl, bc                                    ; $591b: $09
    ld h, b                                       ; $591c: $60
    xor a                                         ; $591d: $af
    ld b, [hl]                                    ; $591e: $46
    add b                                         ; $591f: $80
    inc bc                                        ; $5920: $03
    ld b, [hl]                                    ; $5921: $46
    ld b, d                                       ; $5922: $42
    pop bc                                        ; $5923: $c1
    db $e3                                        ; $5924: $e3
    ret nz                                        ; $5925: $c0

    pop hl                                        ; $5926: $e1
    inc a                                         ; $5927: $3c
    jp nz, $817e                                  ; $5928: $c2 $7e $81

    ld a, [hl]                                    ; $592b: $7e
    rst $20                                       ; $592c: $e7
    db $fc                                        ; $592d: $fc
    daa                                           ; $592e: $27
    halt                                          ; $592f: $76
    inc b                                         ; $5930: $04
    adc l                                         ; $5931: $8d
    and b                                         ; $5932: $a0
    sbc [hl]                                      ; $5933: $9e
    ld d, a                                       ; $5934: $57
    jr nz, jr_066_597d                            ; $5935: $20 $46

    add d                                         ; $5937: $82
    add e                                         ; $5938: $83
    nop                                           ; $5939: $00
    inc h                                         ; $593a: $24
    ld b, b                                       ; $593b: $40
    add b                                         ; $593c: $80
    pop hl                                        ; $593d: $e1
    ld a, a                                       ; $593e: $7f
    ld [c], a                                     ; $593f: $e2
    add d                                         ; $5940: $82
    ld b, l                                       ; $5941: $45
    call c, Call_000_0045                         ; $5942: $dc $45 $00
    db $d3                                        ; $5945: $d3
    add [hl]                                      ; $5946: $86
    add b                                         ; $5947: $80
    sbc [hl]                                      ; $5948: $9e
    ld d, a                                       ; $5949: $57
    jr nz, jr_066_59bb                            ; $594a: $20 $6f

    ld b, [hl]                                    ; $594c: $46
    add l                                         ; $594d: $85
    add [hl]                                      ; $594e: $86
    add e                                         ; $594f: $83
    nop                                           ; $5950: $00
    jp Jump_066_6d6c                              ; $5951: $c3 $6c $6d


    ld b, c                                       ; $5954: $41
    ld [hl+], a                                   ; $5955: $22
    ret nz                                        ; $5956: $c0

    ld b, c                                       ; $5957: $41
    inc bc                                        ; $5958: $03
    ld a, d                                       ; $5959: $7a
    jp $c376                                      ; $595a: $c3 $76 $c3


    nop                                           ; $595d: $00
    db $d3                                        ; $595e: $d3
    add d                                         ; $595f: $82
    jp nz, $2143                                  ; $5960: $c2 $43 $21

    add l                                         ; $5963: $85
    adc e                                         ; $5964: $8b
    ld l, $80                                     ; $5965: $2e $80
    and d                                         ; $5967: $a2
    ld l, h                                       ; $5968: $6c
    ld l, a                                       ; $5969: $6f
    ld l, [hl]                                    ; $596a: $6e
    cp c                                          ; $596b: $b9
    pop hl                                        ; $596c: $e1
    ld [hl], $bd                                  ; $596d: $36 $bd
    jp nz, Jump_066_4400                          ; $596f: $c2 $00 $44

    ldh [$f4], a                                  ; $5972: $e0 $f4
    and [hl]                                      ; $5974: $a6
    nop                                           ; $5975: $00
    ret nc                                        ; $5976: $d0

    add [hl]                                      ; $5977: $86
    ld b, c                                       ; $5978: $41
    ld b, e                                       ; $5979: $43
    ld [hl+], a                                   ; $597a: $22
    ld a, $e1                                     ; $597b: $3e $e1

jr_066_597d:
    ld [hl], $38                                  ; $597d: $36 $38
    jr c, jr_066_5982                             ; $597f: $38 $01

    ld [hl], e                                    ; $5981: $73

jr_066_5982:
    pop bc                                        ; $5982: $c1
    ld [c], a                                     ; $5983: $e2
    ld a, [hl]                                    ; $5984: $7e
    jr nz, @-$42                                  ; $5985: $20 $bc

    ld b, h                                       ; $5987: $44
    ld h, [hl]                                    ; $5988: $66
    ld h, c                                       ; $5989: $61
    db $f4                                        ; $598a: $f4
    and l                                         ; $598b: $a5
    nop                                           ; $598c: $00
    ret c                                         ; $598d: $d8

    ld c, a                                       ; $598e: $4f
    ld b, b                                       ; $598f: $40
    ld a, [hl]                                    ; $5990: $7e
    ld a, $e0                                     ; $5991: $3e $e0
    ld b, l                                       ; $5993: $45
    xor [hl]                                      ; $5994: $ae
    ld b, l                                       ; $5995: $45
    add c                                         ; $5996: $81
    scf                                           ; $5997: $37
    jr c, @-$45                                   ; $5998: $38 $b9

    jp Jump_000_3905                              ; $599a: $c3 $05 $39


    inc a                                         ; $599d: $3c
    ld b, c                                       ; $599e: $41
    and d                                         ; $599f: $a2
    ld h, h                                       ; $59a0: $64
    nop                                           ; $59a1: $00
    ld a, d                                       ; $59a2: $7a
    push hl                                       ; $59a3: $e5
    db $f4                                        ; $59a4: $f4
    ld h, l                                       ; $59a5: $65
    nop                                           ; $59a6: $00
    ld c, e                                       ; $59a7: $4b
    ld a, [hl]                                    ; $59a8: $7e
    rst $20                                       ; $59a9: $e7
    inc b                                         ; $59aa: $04
    db $fd                                        ; $59ab: $fd
    pop bc                                        ; $59ac: $c1
    ld c, c                                       ; $59ad: $49
    jr nz, jr_066_59f6                            ; $59ae: $20 $46

    cp b                                          ; $59b0: $b8
    call nz, $c1fd                                ; $59b1: $c4 $fd $c1
    ld l, h                                       ; $59b4: $6c
    nop                                           ; $59b5: $00
    ld hl, sp-$37                                 ; $59b6: $f8 $c9
    nop                                           ; $59b8: $00
    sbc b                                         ; $59b9: $98
    ld h, [hl]                                    ; $59ba: $66

jr_066_59bb:
    db $fc                                        ; $59bb: $fc
    and d                                         ; $59bc: $a2
    add l                                         ; $59bd: $85
    add a                                         ; $59be: $87
    ld b, h                                       ; $59bf: $44
    add d                                         ; $59c0: $82
    cp b                                          ; $59c1: $b8
    jp Jump_066_443c                              ; $59c2: $c3 $3c $44


    pop bc                                        ; $59c5: $c1
    pop hl                                        ; $59c6: $e1
    add b                                         ; $59c7: $80
    ld [hl], l                                    ; $59c8: $75
    and b                                         ; $59c9: $a0
    ld hl, sp-$39                                 ; $59ca: $f8 $c7
    ld a, [c]                                     ; $59cc: $f2

jr_066_59cd:
    ld b, e                                       ; $59cd: $43
    nop                                           ; $59ce: $00
    sub c                                         ; $59cf: $91
    db $fc                                        ; $59d0: $fc
    pop bc                                        ; $59d1: $c1
    ld a, [bc]                                    ; $59d2: $0a
    ld b, c                                       ; $59d3: $41
    rst $38                                       ; $59d4: $ff
    ld [c], a                                     ; $59d5: $e2
    ld b, l                                       ; $59d6: $45
    sbc [hl]                                      ; $59d7: $9e
    dec a                                         ; $59d8: $3d
    ldh [$3b], a                                  ; $59d9: $e0 $3b
    dec [hl]                                      ; $59db: $35
    dec [hl]                                      ; $59dc: $35
    ld b, d                                       ; $59dd: $42
    ld a, e                                       ; $59de: $7b
    jr nz, jr_066_59cd                            ; $59df: $20 $ec

    ld [c], a                                     ; $59e1: $e2
    xor [hl]                                      ; $59e2: $ae
    ret nz                                        ; $59e3: $c0

    halt                                          ; $59e4: $76
    jp $a5fc                                      ; $59e5: $c3 $fc $a5


    nop                                           ; $59e8: $00
    sub c                                         ; $59e9: $91
    ld a, d                                       ; $59ea: $7a
    and e                                         ; $59eb: $a3
    sub e                                         ; $59ec: $93
    pop hl                                        ; $59ed: $e1
    ld c, l                                       ; $59ee: $4d
    ld [c], a                                     ; $59ef: $e2
    ld b, l                                       ; $59f0: $45
    ld b, c                                       ; $59f1: $41
    daa                                           ; $59f2: $27
    ld b, e                                       ; $59f3: $43
    ld b, c                                       ; $59f4: $41
    ccf                                           ; $59f5: $3f

jr_066_59f6:
    ld b, b                                       ; $59f6: $40
    ld [c], a                                     ; $59f7: $e2
    db $ec                                        ; $59f8: $ec
    pop hl                                        ; $59f9: $e1
    xor a                                         ; $59fa: $af
    halt                                          ; $59fb: $76
    jp Jump_000_25f4                              ; $59fc: $c3 $f4 $25


    db $10                                        ; $59ff: $10
    inc b                                         ; $5a00: $04
    ld c, e                                       ; $5a01: $4b
    db $fc                                        ; $5a02: $fc
    ret z                                         ; $5a03: $c8

    call nc, $d1c0                                ; $5a04: $d4 $c0 $d1
    ret nz                                        ; $5a07: $c0

    sbc h                                         ; $5a08: $9c
    or e                                          ; $5a09: $b3
    and b                                         ; $5a0a: $a0
    halt                                          ; $5a0b: $76
    push hl                                       ; $5a0c: $e5
    ld [hl], e                                    ; $5a0d: $73
    pop hl                                        ; $5a0e: $e1
    ld bc, $f841                                  ; $5a0f: $01 $41 $f8
    pop bc                                        ; $5a12: $c1
    ld [hl], d                                    ; $5a13: $72
    ld hl, $25f4                                  ; $5a14: $21 $f4 $25
    ld l, $6f                                     ; $5a17: $2e $6f
    ld a, [hl]                                    ; $5a19: $7e
    daa                                           ; $5a1a: $27
    ld sp, hl                                     ; $5a1b: $f9
    ld [hl+], a                                   ; $5a1c: $22
    adc l                                         ; $5a1d: $8d
    ld [c], a                                     ; $5a1e: $e2
    ld e, $33                                     ; $5a1f: $1e $33
    db $e4                                        ; $5a21: $e4
    ld b, l                                       ; $5a22: $45
    ld [hl], $a6                                  ; $5a23: $36 $a6
    ld [hl], $b4                                  ; $5a25: $36 $b4
    and b                                         ; $5a27: $a0
    ld [hl], d                                    ; $5a28: $72
    inc hl                                        ; $5a29: $23
    nop                                           ; $5a2a: $00
    ld d, c                                       ; $5a2b: $51
    inc b                                         ; $5a2c: $04
    cp $01                                        ; $5a2d: $fe $01
    ld a, [hl]                                    ; $5a2f: $7e
    dec b                                         ; $5a30: $05
    and b                                         ; $5a31: $a0
    inc c                                         ; $5a32: $0c
    ld h, b                                       ; $5a33: $60
    cp b                                          ; $5a34: $b8
    jr nz, jr_066_5ab2                            ; $5a35: $20 $7b

    pop hl                                        ; $5a37: $e1
    ld b, a                                       ; $5a38: $47
    ld [c], a                                     ; $5a39: $e2
    pop bc                                        ; $5a3a: $c1
    pop hl                                        ; $5a3b: $e1
    inc bc                                        ; $5a3c: $03
    ld h, d                                       ; $5a3d: $62
    and a                                         ; $5a3e: $a7
    cpl                                           ; $5a3f: $2f
    add b                                         ; $5a40: $80
    ld [hl], d                                    ; $5a41: $72
    inc h                                         ; $5a42: $24
    nop                                           ; $5a43: $00
    ld d, c                                       ; $5a44: $51
    ld hl, sp+$6a                                 ; $5a45: $f8 $6a
    ld a, d                                       ; $5a47: $7a
    and $ae                                       ; $5a48: $e6 $ae
    and c                                         ; $5a4a: $a1
    ld e, $f8                                     ; $5a4b: $1e $f8
    pop bc                                        ; $5a4d: $c1
    ld [hl], $62                                  ; $5a4e: $36 $62
    ld h, a                                       ; $5a50: $67
    and e                                         ; $5a51: $a3
    xor $61                                       ; $5a52: $ee $61
    db $f4                                        ; $5a54: $f4
    add c                                         ; $5a55: $81
    nop                                           ; $5a56: $00
    rst $08                                       ; $5a57: $cf
    ldh [$f8], a                                  ; $5a58: $e0 $f8
    xor l                                         ; $5a5a: $ad
    ld a, d                                       ; $5a5b: $7a
    add sp, $72                                   ; $5a5c: $e8 $72
    ld hl, $e2c1                                  ; $5a5e: $21 $c1 $e2
    rst $28                                       ; $5a61: $ef
    add b                                         ; $5a62: $80
    or a                                          ; $5a63: $b7
    cp b                                          ; $5a64: $b8
    ld b, d                                       ; $5a65: $42
    and c                                         ; $5a66: $a1
    sbc [hl]                                      ; $5a67: $9e
    ld [hl], d                                    ; $5a68: $72
    ld b, d                                       ; $5a69: $42
    nop                                           ; $5a6a: $00
    ld d, b                                       ; $5a6b: $50
    ld hl, sp+$2a                                 ; $5a6c: $f8 $2a
    ld a, d                                       ; $5a6e: $7a
    jp hl                                         ; $5a6f: $e9


    and c                                         ; $5a70: $a1
    pop bc                                        ; $5a71: $c1
    pop hl                                        ; $5a72: $e1
    cp c                                          ; $5a73: $b9
    inc bc                                        ; $5a74: $03
    cp d                                          ; $5a75: $ba
    and e                                         ; $5a76: $a3
    rst $28                                       ; $5a77: $ef
    add c                                         ; $5a78: $81
    add b                                         ; $5a79: $80
    pop hl                                        ; $5a7a: $e1
    nop                                           ; $5a7b: $00
    db $d3                                        ; $5a7c: $d3
    ld hl, sp-$55                                 ; $5a7d: $f8 $ab
    ld a, d                                       ; $5a7f: $7a
    jp hl                                         ; $5a80: $e9


    xor $40                                       ; $5a81: $ee $40
    rra                                           ; $5a83: $1f
    ld b, l                                       ; $5a84: $45
    ld [hl], $6e                                  ; $5a85: $36 $6e
    ld l, a                                       ; $5a87: $6f
    ld l, h                                       ; $5a88: $6c
    pop bc                                        ; $5a89: $c1
    ld [c], a                                     ; $5a8a: $e2
    ld [hl], d                                    ; $5a8b: $72
    inc b                                         ; $5a8c: $04
    nop                                           ; $5a8d: $00
    rst $08                                       ; $5a8e: $cf
    nop                                           ; $5a8f: $00
    ld hl, sp+$2d                                 ; $5a90: $f8 $2d
    ldh a, [$a7]                                  ; $5a92: $f0 $a7
    xor h                                         ; $5a94: $ac
    add c                                         ; $5a95: $81
    cp a                                          ; $5a96: $bf
    pop hl                                        ; $5a97: $e1
    pop bc                                        ; $5a98: $c1
    ld [c], a                                     ; $5a99: $e2
    nop                                           ; $5a9a: $00
    sub $f8                                       ; $5a9b: $d6 $f8
    xor e                                         ; $5a9d: $ab
    ldh a, [$83]                                  ; $5a9e: $f0 $83
    nop                                           ; $5aa0: $00
    ld l, [hl]                                    ; $5aa1: $6e
    ld h, $7e                                     ; $5aa2: $26 $7e
    ld [c], a                                     ; $5aa4: $e2
    pop bc                                        ; $5aa5: $c1
    push hl                                       ; $5aa6: $e5
    nop                                           ; $5aa7: $00
    reti                                          ; $5aa8: $d9


    db $f4                                        ; $5aa9: $f4
    xor l                                         ; $5aaa: $ad
    ld [$7e43], sp                                ; $5aab: $08 $43 $7e
    db $e3                                        ; $5aae: $e3
    add d                                         ; $5aaf: $82
    push hl                                       ; $5ab0: $e5
    nop                                           ; $5ab1: $00

jr_066_5ab2:
    nop                                           ; $5ab2: $00
    reti                                          ; $5ab3: $d9


    db $f4                                        ; $5ab4: $f4
    xor l                                         ; $5ab5: $ad
    ld l, d                                       ; $5ab6: $6a
    ld h, d                                       ; $5ab7: $62
    rst $30                                       ; $5ab8: $f7
    and e                                         ; $5ab9: $a3
    ld l, h                                       ; $5aba: $6c
    and c                                         ; $5abb: $a1
    add d                                         ; $5abc: $82
    ld [c], a                                     ; $5abd: $e2
    nop                                           ; $5abe: $00
    reti                                          ; $5abf: $d9


    db $f4                                        ; $5ac0: $f4
    or e                                          ; $5ac1: $b3
    nop                                           ; $5ac2: $00
    cp $e9                                        ; $5ac3: $fe $e9
    nop                                           ; $5ac5: $00
    sub e                                         ; $5ac6: $93
    ld [hl+], a                                   ; $5ac7: $22
    ld sp, $67ec                                  ; $5ac8: $31 $ec $67
    ld [hl], d                                    ; $5acb: $72
    and e                                         ; $5acc: $a3
    ld l, d                                       ; $5acd: $6a
    and e                                         ; $5ace: $a3
    db $e4                                        ; $5acf: $e4
    and c                                         ; $5ad0: $a1
    nop                                           ; $5ad1: $00
    add l                                         ; $5ad2: $85
    nop                                           ; $5ad3: $00
    nop                                           ; $5ad4: $00
    nop                                           ; $5ad5: $00
    pop bc                                        ; $5ad6: $c1
    nop                                           ; $5ad7: $00
    rst $38                                       ; $5ad8: $ff
    rst $38                                       ; $5ad9: $ff
    rst $38                                       ; $5ada: $ff
    rst $38                                       ; $5adb: $ff
    rst $38                                       ; $5adc: $ff
    rst $38                                       ; $5add: $ff
    rst $38                                       ; $5ade: $ff
    rst $38                                       ; $5adf: $ff
    rst $38                                       ; $5ae0: $ff
    rst $38                                       ; $5ae1: $ff
    nop                                           ; $5ae2: $00
    nop                                           ; $5ae3: $00
    ld bc, $fe80                                  ; $5ae4: $01 $80 $fe
    ldh [rIE], a                                  ; $5ae7: $e0 $ff
    rst $38                                       ; $5ae9: $ff
    rst $38                                       ; $5aea: $ff
    rst $38                                       ; $5aeb: $ff
    rst $38                                       ; $5aec: $ff
    add sp, $00                                   ; $5aed: $e8 $00
    nop                                           ; $5aef: $00
    nop                                           ; $5af0: $00
    ld [bc], a                                    ; $5af1: $02
    nop                                           ; $5af2: $00
    db $10                                        ; $5af3: $10
    inc b                                         ; $5af4: $04
    ld [bc], a                                    ; $5af5: $02
    ld bc, $0412                                  ; $5af6: $01 $12 $04
    ld [bc], a                                    ; $5af9: $02
    ld [bc], a                                    ; $5afa: $02
    ld de, $0205                                  ; $5afb: $11 $05 $02
    inc bc                                        ; $5afe: $03
    inc de                                        ; $5aff: $13
    dec b                                         ; $5b00: $05
    ld [bc], a                                    ; $5b01: $02
    inc b                                         ; $5b02: $04
    dec d                                         ; $5b03: $15
    dec b                                         ; $5b04: $05
    ld [bc], a                                    ; $5b05: $02
    dec b                                         ; $5b06: $05
    dec c                                         ; $5b07: $0d
    rlca                                          ; $5b08: $07
    ld [bc], a                                    ; $5b09: $02
    ld b, $16                                     ; $5b0a: $06 $16
    rlca                                          ; $5b0c: $07
    ld [bc], a                                    ; $5b0d: $02
    rlca                                          ; $5b0e: $07
    jr @+$09                                      ; $5b0f: $18 $07

    ld [bc], a                                    ; $5b11: $02
    ld [$080c], sp                                ; $5b12: $08 $0c $08
    ld [bc], a                                    ; $5b15: $02
    add hl, bc                                    ; $5b16: $09
    ld c, $08                                     ; $5b17: $0e $08
    ld [bc], a                                    ; $5b19: $02
    ld a, [bc]                                    ; $5b1a: $0a
    db $10                                        ; $5b1b: $10
    ld [$0b02], sp                                ; $5b1c: $08 $02 $0b
    ld [hl+], a                                   ; $5b1f: $22
    ld [$0c02], sp                                ; $5b20: $08 $02 $0c
    dec c                                         ; $5b23: $0d
    add hl, bc                                    ; $5b24: $09
    ld [bc], a                                    ; $5b25: $02
    dec c                                         ; $5b26: $0d
    add hl, de                                    ; $5b27: $19
    add hl, bc                                    ; $5b28: $09
    ld [bc], a                                    ; $5b29: $02
    ld c, $1b                                     ; $5b2a: $0e $1b
    add hl, bc                                    ; $5b2c: $09
    ld [bc], a                                    ; $5b2d: $02
    rrca                                          ; $5b2e: $0f
    dec e                                         ; $5b2f: $1d
    add hl, bc                                    ; $5b30: $09
    ld [bc], a                                    ; $5b31: $02
    db $10                                        ; $5b32: $10
    jr nz, jr_066_5b3e                            ; $5b33: $20 $09

    ld [bc], a                                    ; $5b35: $02
    ld de, $0923                                  ; $5b36: $11 $23 $09
    ld [bc], a                                    ; $5b39: $02
    ld [de], a                                    ; $5b3a: $12
    ld c, $0a                                     ; $5b3b: $0e $0a
    ld [bc], a                                    ; $5b3d: $02

jr_066_5b3e:
    inc de                                        ; $5b3e: $13
    inc e                                         ; $5b3f: $1c
    ld a, [bc]                                    ; $5b40: $0a
    ld [bc], a                                    ; $5b41: $02
    inc d                                         ; $5b42: $14
    ld e, $0a                                     ; $5b43: $1e $0a
    ld [bc], a                                    ; $5b45: $02
    dec d                                         ; $5b46: $15
    dec e                                         ; $5b47: $1d
    dec bc                                        ; $5b48: $0b
    ld [bc], a                                    ; $5b49: $02
    ld d, $24                                     ; $5b4a: $16 $24
    dec bc                                        ; $5b4c: $0b
    ld [bc], a                                    ; $5b4d: $02
    rla                                           ; $5b4e: $17
    ld h, $0c                                     ; $5b4f: $26 $0c
    ld [bc], a                                    ; $5b51: $02
    jr jr_066_5b66                                ; $5b52: $18 $12

    dec c                                         ; $5b54: $0d
    ld [bc], a                                    ; $5b55: $02
    add hl, de                                    ; $5b56: $19
    db $10                                        ; $5b57: $10
    ld c, $02                                     ; $5b58: $0e $02
    ld a, [de]                                    ; $5b5a: $1a
    jr z, @+$10                                   ; $5b5b: $28 $0e

    ld [bc], a                                    ; $5b5d: $02
    dec de                                        ; $5b5e: $1b
    ld de, $020f                                  ; $5b5f: $11 $0f $02
    inc e                                         ; $5b62: $1c
    dec d                                         ; $5b63: $15
    rrca                                          ; $5b64: $0f
    ld [bc], a                                    ; $5b65: $02

jr_066_5b66:
    dec e                                         ; $5b66: $1d
    rla                                           ; $5b67: $17
    rrca                                          ; $5b68: $0f
    ld [bc], a                                    ; $5b69: $02
    ld e, $2a                                     ; $5b6a: $1e $2a
    rrca                                          ; $5b6c: $0f
    ld [bc], a                                    ; $5b6d: $02
    rra                                           ; $5b6e: $1f
    jr @+$12                                      ; $5b6f: $18 $10

    ld [bc], a                                    ; $5b71: $02
    jr nz, jr_066_5b9d                            ; $5b72: $20 $29

    db $10                                        ; $5b74: $10
    ld [bc], a                                    ; $5b75: $02
    ld hl, $102b                                  ; $5b76: $21 $2b $10
    ld [bc], a                                    ; $5b79: $02
    ld [hl+], a                                   ; $5b7a: $22
    ld d, $11                                     ; $5b7b: $16 $11
    ld [bc], a                                    ; $5b7d: $02
    inc hl                                        ; $5b7e: $23
    ld a, [hl+]                                   ; $5b7f: $2a
    ld de, $2402                                  ; $5b80: $11 $02 $24
    add hl, de                                    ; $5b83: $19
    ld [de], a                                    ; $5b84: $12
    ld [bc], a                                    ; $5b85: $02
    dec h                                         ; $5b86: $25
    ld a, [de]                                    ; $5b87: $1a
    ld [de], a                                    ; $5b88: $12
    ld [bc], a                                    ; $5b89: $02
    ld h, $1b                                     ; $5b8a: $26 $1b
    inc de                                        ; $5b8c: $13
    ld [bc], a                                    ; $5b8d: $02
    daa                                           ; $5b8e: $27
    inc e                                         ; $5b8f: $1c
    inc de                                        ; $5b90: $13
    ld [bc], a                                    ; $5b91: $02
    jr z, jr_066_5bba                             ; $5b92: $28 $26

    inc de                                        ; $5b94: $13
    ld [bc], a                                    ; $5b95: $02
    add hl, hl                                    ; $5b96: $29
    dec e                                         ; $5b97: $1d
    inc d                                         ; $5b98: $14
    ld [bc], a                                    ; $5b99: $02
    ld a, [hl+]                                   ; $5b9a: $2a
    dec h                                         ; $5b9b: $25
    inc d                                         ; $5b9c: $14

jr_066_5b9d:
    ld [bc], a                                    ; $5b9d: $02
    dec hl                                        ; $5b9e: $2b
    inc h                                         ; $5b9f: $24
    dec d                                         ; $5ba0: $15
    ld [bc], a                                    ; $5ba1: $02
    inc l                                         ; $5ba2: $2c
    inc e                                         ; $5ba3: $1c
    ld d, $02                                     ; $5ba4: $16 $02
    dec l                                         ; $5ba6: $2d
    dec de                                        ; $5ba7: $1b
    jr jr_066_5bac                                ; $5ba8: $18 $02

    ld l, $23                                     ; $5baa: $2e $23

jr_066_5bac:
    jr jr_066_5bb0                                ; $5bac: $18 $02

    cpl                                           ; $5bae: $2f
    ld [hl+], a                                   ; $5baf: $22

jr_066_5bb0:
    add hl, de                                    ; $5bb0: $19
    ld [bc], a                                    ; $5bb1: $02
    jr nc, @+$1e                                  ; $5bb2: $30 $1c

    ld a, [de]                                    ; $5bb4: $1a
    ld [bc], a                                    ; $5bb5: $02
    ld sp, $1a24                                  ; $5bb6: $31 $24 $1a
    ld [bc], a                                    ; $5bb9: $02

jr_066_5bba:
    ld [hl-], a                                   ; $5bba: $32
    dec de                                        ; $5bbb: $1b
    inc e                                         ; $5bbc: $1c
    ld [bc], a                                    ; $5bbd: $02
    inc sp                                        ; $5bbe: $33
    ld a, [de]                                    ; $5bbf: $1a
    dec e                                         ; $5bc0: $1d
    ld [bc], a                                    ; $5bc1: $02
    inc [hl]                                      ; $5bc2: $34
    add hl, de                                    ; $5bc3: $19
    ld e, $02                                     ; $5bc4: $1e $02
    dec [hl]                                      ; $5bc6: $35
    ld [hl+], a                                   ; $5bc7: $22
    ld e, $02                                     ; $5bc8: $1e $02
    ld [hl], $25                                  ; $5bca: $36 $25
    ld e, $02                                     ; $5bcc: $1e $02
    scf                                           ; $5bce: $37
    ld h, $1f                                     ; $5bcf: $26 $1f
    ld [bc], a                                    ; $5bd1: $02
    jr c, jr_066_5bec                             ; $5bd2: $38 $18

    jr nz, @+$04                                  ; $5bd4: $20 $02

    add hl, sp                                    ; $5bd6: $39
    jr nz, jr_066_5bf9                            ; $5bd7: $20 $20

    ld [bc], a                                    ; $5bd9: $02
    ld a, [hl-]                                   ; $5bda: $3a
    dec h                                         ; $5bdb: $25
    jr nz, jr_066_5be0                            ; $5bdc: $20 $02

    dec sp                                        ; $5bde: $3b
    add hl, de                                    ; $5bdf: $19

jr_066_5be0:
    ld hl, $3c02                                  ; $5be0: $21 $02 $3c
    rla                                           ; $5be3: $17
    ld [hl+], a                                   ; $5be4: $22
    ld [bc], a                                    ; $5be5: $02
    dec a                                         ; $5be6: $3d
    jr jr_066_5c0c                                ; $5be7: $18 $23

    ld [bc], a                                    ; $5be9: $02
    ld a, $21                                     ; $5bea: $3e $21

jr_066_5bec:
    inc hl                                        ; $5bec: $23
    ld [bc], a                                    ; $5bed: $02
    ccf                                           ; $5bee: $3f
    inc h                                         ; $5bef: $24
    inc hl                                        ; $5bf0: $23
    ld [bc], a                                    ; $5bf1: $02
    ld b, b                                       ; $5bf2: $40
    dec d                                         ; $5bf3: $15
    inc h                                         ; $5bf4: $24
    ld [bc], a                                    ; $5bf5: $02
    ld b, c                                       ; $5bf6: $41
    inc hl                                        ; $5bf7: $23
    inc h                                         ; $5bf8: $24

jr_066_5bf9:
    ld [bc], a                                    ; $5bf9: $02
    ld b, d                                       ; $5bfa: $42
    rla                                           ; $5bfb: $17
    dec h                                         ; $5bfc: $25
    ld [bc], a                                    ; $5bfd: $02
    ld b, e                                       ; $5bfe: $43
    jr nz, jr_066_5c26                            ; $5bff: $20 $25

    ld [bc], a                                    ; $5c01: $02
    ld b, h                                       ; $5c02: $44
    inc h                                         ; $5c03: $24
    dec h                                         ; $5c04: $25
    ld [bc], a                                    ; $5c05: $02
    ld b, l                                       ; $5c06: $45
    ld [hl+], a                                   ; $5c07: $22
    ld h, $02                                     ; $5c08: $26 $02
    ld b, [hl]                                    ; $5c0a: $46
    dec d                                         ; $5c0b: $15

jr_066_5c0c:
    daa                                           ; $5c0c: $27
    ld [bc], a                                    ; $5c0d: $02
    ld b, a                                       ; $5c0e: $47
    inc h                                         ; $5c0f: $24
    jr z, jr_066_5c14                             ; $5c10: $28 $02

    ld c, b                                       ; $5c12: $48
    inc d                                         ; $5c13: $14

jr_066_5c14:
    add hl, hl                                    ; $5c14: $29
    ld [bc], a                                    ; $5c15: $02
    ld c, c                                       ; $5c16: $49
    inc de                                        ; $5c17: $13
    ld a, [hl+]                                   ; $5c18: $2a
    ld [bc], a                                    ; $5c19: $02
    ld c, d                                       ; $5c1a: $4a
    dec h                                         ; $5c1b: $25
    ld a, [hl+]                                   ; $5c1c: $2a
    ld [bc], a                                    ; $5c1d: $02
    ld c, e                                       ; $5c1e: $4b
    ld [de], a                                    ; $5c1f: $12
    dec hl                                        ; $5c20: $2b
    ld [bc], a                                    ; $5c21: $02
    ld c, h                                       ; $5c22: $4c
    inc d                                         ; $5c23: $14
    dec hl                                        ; $5c24: $2b
    ld [bc], a                                    ; $5c25: $02

jr_066_5c26:
    ld c, l                                       ; $5c26: $4d
    inc de                                        ; $5c27: $13
    inc l                                         ; $5c28: $2c
    ld [bc], a                                    ; $5c29: $02
    ld c, [hl]                                    ; $5c2a: $4e
    ld d, $2d                                     ; $5c2b: $16 $2d
    ld [bc], a                                    ; $5c2d: $02
    ld c, a                                       ; $5c2e: $4f
    daa                                           ; $5c2f: $27
    dec l                                         ; $5c30: $2d
    ld [bc], a                                    ; $5c31: $02
    ld d, b                                       ; $5c32: $50
    inc e                                         ; $5c33: $1c
    cpl                                           ; $5c34: $2f
    ld [bc], a                                    ; $5c35: $02
    ld d, c                                       ; $5c36: $51
    dec l                                         ; $5c37: $2d
    jr nc, @+$04                                  ; $5c38: $30 $02

    ld d, d                                       ; $5c3a: $52
    jr jr_066_5c6e                                ; $5c3b: $18 $31

    ld [bc], a                                    ; $5c3d: $02
    ld d, e                                       ; $5c3e: $53
    inc l                                         ; $5c3f: $2c
    ld sp, $5402                                  ; $5c40: $31 $02 $54
    ld a, [de]                                    ; $5c43: $1a
    ld [hl-], a                                   ; $5c44: $32
    ld [bc], a                                    ; $5c45: $02
    ld d, l                                       ; $5c46: $55
    ld l, $32                                     ; $5c47: $2e $32
    ld [bc], a                                    ; $5c49: $02
    ld d, [hl]                                    ; $5c4a: $56
    ld sp, $0232                                  ; $5c4b: $31 $32 $02
    ld d, a                                       ; $5c4e: $57
    jr nz, @+$35                                  ; $5c4f: $20 $33

    ld [bc], a                                    ; $5c51: $02
    ld e, b                                       ; $5c52: $58
    ld hl, $0234                                  ; $5c53: $21 $34 $02
    ld e, c                                       ; $5c56: $59
    inc h                                         ; $5c57: $24
    inc [hl]                                      ; $5c58: $34
    ld [bc], a                                    ; $5c59: $02
    ld e, d                                       ; $5c5a: $5a
    daa                                           ; $5c5b: $27
    dec [hl]                                      ; $5c5c: $35
    ld [bc], a                                    ; $5c5d: $02
    ld e, e                                       ; $5c5e: $5b
    jr z, jr_066_5c98                             ; $5c5f: $28 $37

    ld [bc], a                                    ; $5c61: $02
    ld e, h                                       ; $5c62: $5c
    daa                                           ; $5c63: $27
    jr c, @+$01                                   ; $5c64: $38 $ff

    rst $38                                       ; $5c66: $ff
    rst $38                                       ; $5c67: $ff
    ld [hl], b                                    ; $5c68: $70
    ld e, h                                       ; $5c69: $5c
    dec bc                                        ; $5c6a: $0b
    ld h, b                                       ; $5c6b: $60
    ldh [$64], a                                  ; $5c6c: $e0 $64

jr_066_5c6e:
    ei                                            ; $5c6e: $fb
    ld h, h                                       ; $5c6f: $64
    rst $28                                       ; $5c70: $ef
    dec c                                         ; $5c71: $0d
    ld c, $0e                                     ; $5c72: $0e $0e
    ld c, $fc                                     ; $5c74: $0e $fc
    ld [$0e4d], a                                 ; $5c76: $ea $4d $0e
    ld c, $41                                     ; $5c79: $0e $41
    ld c, l                                       ; $5c7b: $4d
    db $eb                                        ; $5c7c: $eb
    ldh [$fc], a                                  ; $5c7d: $e0 $fc
    pop af                                        ; $5c7f: $f1
    call nc, $c4ee                                ; $5c80: $d4 $ee $c4
    ldh [$fd], a                                  ; $5c83: $e0 $fd
    ld sp, hl                                     ; $5c85: $f9
    dec c                                         ; $5c86: $0d
    call z, $f0e1                                 ; $5c87: $cc $e1 $f0
    db $db                                        ; $5c8a: $db
    db $fd                                        ; $5c8b: $fd
    cp h                                          ; $5c8c: $bc
    xor $82                                       ; $5c8d: $ee $82
    rst $20                                       ; $5c8f: $e7
    rst $38                                       ; $5c90: $ff
    ldh [rKEY1], a                                ; $5c91: $e0 $4d
    ld c, l                                       ; $5c93: $4d
    ld c, l                                       ; $5c94: $4d
    dec l                                         ; $5c95: $2d
    ld hl, sp+$72                                 ; $5c96: $f8 $72

jr_066_5c98:
    add sp, -$01                                  ; $5c98: $e8 $ff
    rst $38                                       ; $5c9a: $ff
    add d                                         ; $5c9b: $82
    jp hl                                         ; $5c9c: $e9


    dec c                                         ; $5c9d: $0d
    dec c                                         ; $5c9e: $0d
    ld l, l                                       ; $5c9f: $6d
    dec c                                         ; $5ca0: $0d
    dec bc                                        ; $5ca1: $0b
    rst $00                                       ; $5ca2: $c7
    dec bc                                        ; $5ca3: $0b
    ld c, l                                       ; $5ca4: $4d
    dec l                                         ; $5ca5: $2d
    ld e, d                                       ; $5ca6: $5a
    db $fc                                        ; $5ca7: $fc
    ld l, $ee                                     ; $5ca8: $2e $ee
    add d                                         ; $5caa: $82
    db $e4                                        ; $5cab: $e4
    ld c, l                                       ; $5cac: $4d
    ld c, l                                       ; $5cad: $4d
    inc hl                                        ; $5cae: $23
    ld l, l                                       ; $5caf: $6d
    dec bc                                        ; $5cb0: $0b
    ret nz                                        ; $5cb1: $c0

    ldh [$bf], a                                  ; $5cb2: $e0 $bf
    ldh [$6e], a                                  ; $5cb4: $e0 $6e
    rst $20                                       ; $5cb6: $e7
    ld c, l                                       ; $5cb7: $4d
    cp $e0                                        ; $5cb8: $fe $e0
    cp $df                                        ; $5cba: $fe $df
    nop                                           ; $5cbc: $00
    xor h                                         ; $5cbd: $ac
    pop bc                                        ; $5cbe: $c1
    add l                                         ; $5cbf: $85
    pop hl                                        ; $5cc0: $e1
    pop bc                                        ; $5cc1: $c1
    pop hl                                        ; $5cc2: $e1
    ld a, [hl]                                    ; $5cc3: $7e
    ldh [$3e], a                                  ; $5cc4: $e0 $3e
    pop hl                                        ; $5cc6: $e1
    xor $c4                                       ; $5cc7: $ee $c4
    and d                                         ; $5cc9: $a2
    ret nz                                        ; $5cca: $c0

    nop                                           ; $5ccb: $00
    rst $38                                       ; $5ccc: $ff
    db $10                                        ; $5ccd: $10
    ld a, [hl]                                    ; $5cce: $7e
    pop bc                                        ; $5ccf: $c1
    add l                                         ; $5cd0: $85
    pop hl                                        ; $5cd1: $e1
    cp $e1                                        ; $5cd2: $fe $e1
    ld a, [hl]                                    ; $5cd4: $7e
    pop hl                                        ; $5cd5: $e1
    ld l, l                                       ; $5cd6: $6d
    adc e                                         ; $5cd7: $8b
    ld [c], a                                     ; $5cd8: $e2
    db $fc                                        ; $5cd9: $fc
    rst $18                                       ; $5cda: $df
    add d                                         ; $5cdb: $82
    xor $1b                                       ; $5cdc: $ee $1b
    dec hl                                        ; $5cde: $2b
    ld a, [bc]                                    ; $5cdf: $0a
    ld b, c                                       ; $5ce0: $41
    ldh [$0b], a                                  ; $5ce1: $e0 $0b
    dec c                                         ; $5ce3: $0d
    cp l                                          ; $5ce4: $bd
    ret nz                                        ; $5ce5: $c0

    ld d, l                                       ; $5ce6: $55
    sub $04                                       ; $5ce7: $d6 $04
    set 3, h                                      ; $5ce9: $cb $dc
    sub b                                         ; $5ceb: $90
    ret nz                                        ; $5cec: $c0

    inc b                                         ; $5ced: $04
    jp nz, $0b4d                                  ; $5cee: $c2 $4d $0b

    dec c                                         ; $5cf1: $0d
    add $c0                                       ; $5cf2: $c6 $c0
    dec hl                                        ; $5cf4: $2b
    ld a, [bc]                                    ; $5cf5: $0a
    dec c                                         ; $5cf6: $0d
    ld a, [bc]                                    ; $5cf7: $0a
    cp a                                          ; $5cf8: $bf
    pop hl                                        ; $5cf9: $e1
    dec c                                         ; $5cfa: $0d
    dec bc                                        ; $5cfb: $0b
    ld a, e                                       ; $5cfc: $7b
    ret nz                                        ; $5cfd: $c0

    db $fc                                        ; $5cfe: $fc
    or l                                          ; $5cff: $b5
    ld c, $cc                                     ; $5d00: $0e $cc
    jr nz, @-$1a                                  ; $5d02: $20 $e4

    dec de                                        ; $5d04: $1b
    ld c, l                                       ; $5d05: $4d
    dec l                                         ; $5d06: $2d
    add $c1                                       ; $5d07: $c6 $c1
    ld l, e                                       ; $5d09: $6b
    ld c, d                                       ; $5d0a: $4a
    add c                                         ; $5d0b: $81
    pop hl                                        ; $5d0c: $e1
    db $fc                                        ; $5d0d: $fc
    ld [c], a                                     ; $5d0e: $e2
    ld a, [hl-]                                   ; $5d0f: $3a
    jp nz, $ff10                                  ; $5d10: $c2 $10 $ff

    rst $38                                       ; $5d13: $ff
    add [hl]                                      ; $5d14: $86
    and [hl]                                      ; $5d15: $a6
    cp a                                          ; $5d16: $bf
    ldh [$84], a                                  ; $5d17: $e0 $84
    ret nz                                        ; $5d19: $c0

    dec hl                                        ; $5d1a: $2b
    ld b, c                                       ; $5d1b: $41
    ld [c], a                                     ; $5d1c: $e2
    ld [hl], l                                    ; $5d1d: $75
    pop hl                                        ; $5d1e: $e1
    ld a, [hl-]                                   ; $5d1f: $3a
    ret nz                                        ; $5d20: $c0

    inc d                                         ; $5d21: $14
    nop                                           ; $5d22: $00
    rst $38                                       ; $5d23: $ff
    add [hl]                                      ; $5d24: $86
    xor c                                         ; $5d25: $a9
    ld c, l                                       ; $5d26: $4d
    ret nz                                        ; $5d27: $c0

    ld [c], a                                     ; $5d28: $e2
    ld l, e                                       ; $5d29: $6b
    ret nz                                        ; $5d2a: $c0

    db $e3                                        ; $5d2b: $e3
    ld a, [hl-]                                   ; $5d2c: $3a
    add $00                                       ; $5d2d: $c6 $00
    db $dd                                        ; $5d2f: $dd
    ld a, b                                       ; $5d30: $78
    add [hl]                                      ; $5d31: $86
    and a                                         ; $5d32: $a7
    ret nz                                        ; $5d33: $c0

    ldh [rIE], a                                  ; $5d34: $e0 $ff
    ret nz                                        ; $5d36: $c0

    ld c, e                                       ; $5d37: $4b
    ld c, e                                       ; $5d38: $4b
    ld l, e                                       ; $5d39: $6b
    ld c, e                                       ; $5d3a: $4b
    or $c0                                        ; $5d3b: $f6 $c0
    or b                                          ; $5d3d: $b0
    ld [hl], a                                    ; $5d3e: $77
    jp nz, $c3fc                                  ; $5d3f: $c2 $fc $c3

    nop                                           ; $5d42: $00
    rst $18                                       ; $5d43: $df
    add [hl]                                      ; $5d44: $86
    and a                                         ; $5d45: $a7
    dec bc                                        ; $5d46: $0b
    dec hl                                        ; $5d47: $2b
    ccf                                           ; $5d48: $3f
    ldh [rOCPD], a                                ; $5d49: $e0 $6b
    add a                                         ; $5d4b: $87
    dec c                                         ; $5d4c: $0d
    dec c                                         ; $5d4d: $0d
    dec l                                         ; $5d4e: $2d
    dec [hl]                                      ; $5d4f: $35
    jp $bc78                                      ; $5d50: $c3 $78 $bc


    add d                                         ; $5d53: $82
    jp hl                                         ; $5d54: $e9


    ld bc, $4bc2                                  ; $5d55: $01 $c2 $4b
    jp hl                                         ; $5d58: $e9


    dec hl                                        ; $5d59: $2b
    ret nz                                        ; $5d5a: $c0

    pop hl                                        ; $5d5b: $e1
    halt                                          ; $5d5c: $76
    ret nz                                        ; $5d5d: $c0

    dec l                                         ; $5d5e: $2d
    di                                            ; $5d5f: $f3
    pop bc                                        ; $5d60: $c1
    dec c                                         ; $5d61: $0d
    dec bc                                        ; $5d62: $0b
    ld l, l                                       ; $5d63: $6d
    inc b                                         ; $5d64: $04
    nop                                           ; $5d65: $00
    rst $38                                       ; $5d66: $ff
    ld [$6da4], sp                                ; $5d67: $08 $a4 $6d
    adc b                                         ; $5d6a: $88
    jp nz, $c2c8                                  ; $5d6b: $c2 $c8 $c2

    cp $c2                                        ; $5d6e: $fe $c2
    or h                                          ; $5d70: $b4
    and e                                         ; $5d71: $a3
    ret nz                                        ; $5d72: $c0

    ldh [$30], a                                  ; $5d73: $e0 $30
    ld [bc], a                                    ; $5d75: $02
    cp e                                          ; $5d76: $bb
    adc d                                         ; $5d77: $8a
    add l                                         ; $5d78: $85
    add hl, bc                                    ; $5d79: $09
    and d                                         ; $5d7a: $a2
    ret                                           ; $5d7b: $c9


    jp Jump_000_0a4b                              ; $5d7c: $c3 $4b $0a


    inc a                                         ; $5d7f: $3c
    ret nz                                        ; $5d80: $c0

    halt                                          ; $5d81: $76
    and b                                         ; $5d82: $a0
    add b                                         ; $5d83: $80
    pop bc                                        ; $5d84: $c1
    pop hl                                        ; $5d85: $e1
    dec b                                         ; $5d86: $05
    ld [c], a                                     ; $5d87: $e2
    ld [bc], a                                    ; $5d88: $02
    rst $38                                       ; $5d89: $ff
    adc e                                         ; $5d8a: $8b
    add c                                         ; $5d8b: $81
    call z, Call_066_41c1                         ; $5d8c: $cc $c1 $41
    add b                                         ; $5d8f: $80
    ld b, b                                       ; $5d90: $40
    ret nz                                        ; $5d91: $c0

    ld a, [bc]                                    ; $5d92: $0a
    dec bc                                        ; $5d93: $0b
    ld c, d                                       ; $5d94: $4a
    ld a, [hl+]                                   ; $5d95: $2a
    cp a                                          ; $5d96: $bf
    db $e3                                        ; $5d97: $e3
    ld l, l                                       ; $5d98: $6d
    or $7f                                        ; $5d99: $f6 $7f
    add [hl]                                      ; $5d9b: $86
    ld h, h                                       ; $5d9c: $64
    jp z, $c084                                   ; $5d9d: $ca $84 $c0

    pop hl                                        ; $5da0: $e1
    ccf                                           ; $5da1: $3f
    dec hl                                        ; $5da2: $2b
    ld c, e                                       ; $5da3: $4b
    dec hl                                        ; $5da4: $2b
    ld c, d                                       ; $5da5: $4a
    ld a, [bc]                                    ; $5da6: $0a
    ld c, e                                       ; $5da7: $4b
    db $fd                                        ; $5da8: $fd
    and c                                         ; $5da9: $a1
    pop bc                                        ; $5daa: $c1
    ldh [$78], a                                  ; $5dab: $e0 $78
    nop                                           ; $5dad: $00
    rst $18                                       ; $5dae: $df
    ret nz                                        ; $5daf: $c0

    ld h, e                                       ; $5db0: $63
    adc c                                         ; $5db1: $89
    add h                                         ; $5db2: $84
    dec c                                         ; $5db3: $0d
    dec hl                                        ; $5db4: $2b
    ld a, [hl+]                                   ; $5db5: $2a
    ld c, e                                       ; $5db6: $4b
    ld a, l                                       ; $5db7: $7d
    add c                                         ; $5db8: $81
    ld b, c                                       ; $5db9: $41
    ld c, e                                       ; $5dba: $4b
    ld b, h                                       ; $5dbb: $44
    ld [c], a                                     ; $5dbc: $e2
    cp $9f                                        ; $5dbd: $fe $9f
    inc b                                         ; $5dbf: $04
    add l                                         ; $5dc0: $85
    inc b                                         ; $5dc1: $04
    and e                                         ; $5dc2: $a3
    add d                                         ; $5dc3: $82
    add b                                         ; $5dc4: $80
    ld c, d                                       ; $5dc5: $4a
    inc b                                         ; $5dc6: $04
    ld [c], a                                     ; $5dc7: $e2
    ret nz                                        ; $5dc8: $c0

    add c                                         ; $5dc9: $81
    and c                                         ; $5dca: $a1
    ld b, h                                       ; $5dcb: $44
    ldh [rOCPS], a                                ; $5dcc: $e0 $6a
    ld l, b                                       ; $5dce: $68
    nop                                           ; $5dcf: $00
    sbc h                                         ; $5dd0: $9c
    ld c, a                                       ; $5dd1: $4f
    ld h, b                                       ; $5dd2: $60
    ret                                           ; $5dd3: $c9


    ld h, d                                       ; $5dd4: $62
    dec hl                                        ; $5dd5: $2b
    ld a, [bc]                                    ; $5dd6: $0a
    add c                                         ; $5dd7: $81
    ld c, d                                       ; $5dd8: $4a
    add c                                         ; $5dd9: $81
    add b                                         ; $5dda: $80
    inc bc                                        ; $5ddb: $03
    pop bc                                        ; $5ddc: $c1
    ret nz                                        ; $5ddd: $c0

    pop hl                                        ; $5dde: $e1
    ld c, b                                       ; $5ddf: $48
    rst $38                                       ; $5de0: $ff
    inc b                                         ; $5de1: $04
    ld h, [hl]                                    ; $5de2: $66
    jp $0b83                                      ; $5de3: $c3 $83 $0b


    inc bc                                        ; $5de6: $03
    ld l, e                                       ; $5de7: $6b
    ld a, [hl+]                                   ; $5de8: $2a
    ld b, d                                       ; $5de9: $42
    add d                                         ; $5dea: $82
    inc bc                                        ; $5deb: $03
    pop bc                                        ; $5dec: $c1
    db $fc                                        ; $5ded: $fc
    ld e, a                                       ; $5dee: $5f
    ld a, [hl]                                    ; $5def: $7e
    db $ec                                        ; $5df0: $ec
    add [hl]                                      ; $5df1: $86
    ld h, d                                       ; $5df2: $62
    jp nz, Jump_000_0381                          ; $5df3: $c2 $81 $03

    ld c, e                                       ; $5df6: $4b
    ld c, e                                       ; $5df7: $4b
    cp $a0                                        ; $5df8: $fe $a0
    ccf                                           ; $5dfa: $3f
    add b                                         ; $5dfb: $80
    db $fc                                        ; $5dfc: $fc
    ld b, b                                       ; $5dfd: $40
    ld a, h                                       ; $5dfe: $7c
    di                                            ; $5dff: $f3
    inc b                                         ; $5e00: $04
    ld d, d                                       ; $5e01: $52
    ld b, c                                       ; $5e02: $41
    add d                                         ; $5e03: $82
    add d                                         ; $5e04: $82
    add e                                         ; $5e05: $83
    add d                                         ; $5e06: $82
    dec bc                                        ; $5e07: $0b
    cp l                                          ; $5e08: $bd
    jp nz, Jump_066_42fc                          ; $5e09: $c2 $fc $42

    db $fc                                        ; $5e0c: $fc
    push bc                                       ; $5e0d: $c5
    cp $8b                                        ; $5e0e: $fe $8b
    inc a                                         ; $5e10: $3c
    ld d, l                                       ; $5e11: $55
    dec l                                         ; $5e12: $2d
    ld b, $43                                     ; $5e13: $06 $43
    add c                                         ; $5e15: $81
    dec c                                         ; $5e16: $0d
    ld c, e                                       ; $5e17: $4b
    ld a, a                                       ; $5e18: $7f
    db $e3                                        ; $5e19: $e3
    ld a, h                                       ; $5e1a: $7c
    ld h, d                                       ; $5e1b: $62
    cp [hl]                                       ; $5e1c: $be
    pop hl                                        ; $5e1d: $e1
    db $fc                                        ; $5e1e: $fc
    ld e, l                                       ; $5e1f: $5d
    add d                                         ; $5e20: $82
    daa                                           ; $5e21: $27
    dec b                                         ; $5e22: $05
    ld c, l                                       ; $5e23: $4d
    ret nz                                        ; $5e24: $c0

    ld [c], a                                     ; $5e25: $e2
    dec hl                                        ; $5e26: $2b
    ccf                                           ; $5e27: $3f
    pop hl                                        ; $5e28: $e1
    inc a                                         ; $5e29: $3c
    ld h, d                                       ; $5e2a: $62
    ld a, l                                       ; $5e2b: $7d
    db $e3                                        ; $5e2c: $e3
    ld a, [hl]                                    ; $5e2d: $7e
    add e                                         ; $5e2e: $83
    cp $df                                        ; $5e2f: $fe $df
    nop                                           ; $5e31: $00
    nop                                           ; $5e32: $00
    add c                                         ; $5e33: $81
    jp $bf61                                      ; $5e34: $c3 $61 $bf


    and b                                         ; $5e37: $a0
    ld a, d                                       ; $5e38: $7a
    ld [c], a                                     ; $5e39: $e2
    add hl, sp                                    ; $5e3a: $39
    ld b, c                                       ; $5e3b: $41
    ld a, h                                       ; $5e3c: $7c
    ld h, l                                       ; $5e3d: $65
    ret nz                                        ; $5e3e: $c0

    db $ed                                        ; $5e3f: $ed
    nop                                           ; $5e40: $00
    sub l                                         ; $5e41: $95
    rlca                                          ; $5e42: $07
    ld l, e                                       ; $5e43: $6b
    ld l, e                                       ; $5e44: $6b
    ld c, e                                       ; $5e45: $4b
    rst $38                                       ; $5e46: $ff
    ldh [$80], a                                  ; $5e47: $e0 $80
    ld h, e                                       ; $5e49: $63
    ld a, b                                       ; $5e4a: $78
    ld b, l                                       ; $5e4b: $45
    nop                                           ; $5e4c: $00
    rst $18                                       ; $5e4d: $df
    add [hl]                                      ; $5e4e: $86
    ld h, $00                                     ; $5e4f: $26 $00
    ld bc, $c060                                  ; $5e51: $01 $60 $c0
    db $e4                                        ; $5e54: $e4
    add d                                         ; $5e55: $82
    db $e3                                        ; $5e56: $e3
    cp c                                          ; $5e57: $b9
    and d                                         ; $5e58: $a2
    ld c, b                                       ; $5e59: $48
    cp $82                                        ; $5e5a: $fe $82
    ld [bc], a                                    ; $5e5c: $02
    nop                                           ; $5e5d: $00
    add h                                         ; $5e5e: $84
    add b                                         ; $5e5f: $80
    db $e4                                        ; $5e60: $e4
    ld bc, $be2b                                  ; $5e61: $01 $2b $be
    and c                                         ; $5e64: $a1
    or h                                          ; $5e65: $b4
    ld [hl+], a                                   ; $5e66: $22
    ld hl, sp+$23                                 ; $5e67: $f8 $23
    ret nz                                        ; $5e69: $c0

    db $fd                                        ; $5e6a: $fd
    adc b                                         ; $5e6b: $88
    ld bc, $60ff                                  ; $5e6c: $01 $ff $60
    ret nz                                        ; $5e6f: $c0

    ldh [rP1], a                                  ; $5e70: $e0 $00
    ccf                                           ; $5e72: $3f
    pop hl                                        ; $5e73: $e1
    cp [hl]                                       ; $5e74: $be
    and h                                         ; $5e75: $a4
    ld [hl], e                                    ; $5e76: $73
    ld [hl+], a                                   ; $5e77: $22
    add b                                         ; $5e78: $80
    pop af                                        ; $5e79: $f1
    inc l                                         ; $5e7a: $2c
    dec c                                         ; $5e7b: $0d
    inc e                                         ; $5e7c: $1c
    add d                                         ; $5e7d: $82
    ld [$c223], sp                                ; $5e7e: $08 $23 $c2
    and c                                         ; $5e81: $a1
    nop                                           ; $5e82: $00
    cp [hl]                                       ; $5e83: $be
    add b                                         ; $5e84: $80
    db $fc                                        ; $5e85: $fc
    jp $e1c1                                      ; $5e86: $c3 $c1 $e1


    nop                                           ; $5e89: $00
    rst $18                                       ; $5e8a: $df
    ld a, [hl]                                    ; $5e8b: $7e
    ld h, h                                       ; $5e8c: $64
    sub b                                         ; $5e8d: $90
    db $e3                                        ; $5e8e: $e3
    ld b, d                                       ; $5e8f: $42
    ld h, d                                       ; $5e90: $62
    cp l                                          ; $5e91: $bd
    ld h, b                                       ; $5e92: $60
    nop                                           ; $5e93: $00
    rst $30                                       ; $5e94: $f7
    and c                                         ; $5e95: $a1
    add d                                         ; $5e96: $82
    add sp, $40                                   ; $5e97: $e8 $40
    db $dd                                        ; $5e99: $dd
    sbc l                                         ; $5e9a: $9d
    nop                                           ; $5e9b: $00
    inc bc                                        ; $5e9c: $03
    ld b, b                                       ; $5e9d: $40
    ld b, c                                       ; $5e9e: $41
    ld h, h                                       ; $5e9f: $64
    ret nz                                        ; $5ea0: $c0

    ld b, c                                       ; $5ea1: $41
    inc a                                         ; $5ea2: $3c
    ld [hl+], a                                   ; $5ea3: $22
    and c                                         ; $5ea4: $a1
    dec l                                         ; $5ea5: $2d
    add d                                         ; $5ea6: $82
    db $e4                                        ; $5ea7: $e4
    ret nz                                        ; $5ea8: $c0

    rst $38                                       ; $5ea9: $ff
    cp d                                          ; $5eaa: $ba
    pop bc                                        ; $5eab: $c1
    rst $08                                       ; $5eac: $cf
    ld b, d                                       ; $5ead: $42
    dec hl                                        ; $5eae: $2b
    ld b, e                                       ; $5eaf: $43
    ld bc, $004b                                  ; $5eb0: $01 $4b $00
    ld bc, $0580                                  ; $5eb3: $01 $80 $05
    ld [c], a                                     ; $5eb6: $e2
    ld a, h                                       ; $5eb7: $7c
    ld d, $fe                                     ; $5eb8: $16 $fe
    dec bc                                        ; $5eba: $0b
    nop                                           ; $5ebb: $00
    inc h                                         ; $5ebc: $24
    ld b, b                                       ; $5ebd: $40
    jr nz, @-$3e                                  ; $5ebe: $20 $c0

    ldh [$80], a                                  ; $5ec0: $e0 $80
    jr nz, @+$04                                  ; $5ec2: $20 $02

    ld a, [$2d83]                                 ; $5ec4: $fa $83 $2d
    ld a, [hl]                                    ; $5ec7: $7e
    ld b, $00                                     ; $5ec8: $06 $00
    ld e, e                                       ; $5eca: $5b
    ld h, h                                       ; $5ecb: $64
    push hl                                       ; $5ecc: $e5
    cp a                                          ; $5ecd: $bf
    ld [bc], a                                    ; $5ece: $02
    ld b, b                                       ; $5ecf: $40
    jr nz, @+$41                                  ; $5ed0: $20 $3f

    inc hl                                        ; $5ed2: $23
    nop                                           ; $5ed3: $00
    add $a3                                       ; $5ed4: $c6 $a3
    rst $38                                       ; $5ed6: $ff
    rst $38                                       ; $5ed7: $ff
    ld a, [hl]                                    ; $5ed8: $7e
    adc c                                         ; $5ed9: $89
    ld b, b                                       ; $5eda: $40
    jp nz, Jump_066_4140                          ; $5edb: $c2 $40 $41

    ld b, e                                       ; $5ede: $43
    and d                                         ; $5edf: $a2
    add [hl]                                      ; $5ee0: $86
    and e                                         ; $5ee1: $a3
    inc b                                         ; $5ee2: $04
    rst $38                                       ; $5ee3: $ff
    nop                                           ; $5ee4: $00
    ld a, h                                       ; $5ee5: $7c
    ld b, a                                       ; $5ee6: $47
    add b                                         ; $5ee7: $80
    ld [bc], a                                    ; $5ee8: $02
    pop bc                                        ; $5ee9: $c1
    inc bc                                        ; $5eea: $03
    ld a, [$0040]                                 ; $5eeb: $fa $40 $00
    add c                                         ; $5eee: $81
    ld [bc], a                                    ; $5eef: $02
    ld a, a                                       ; $5ef0: $7f
    nop                                           ; $5ef1: $00
    add l                                         ; $5ef2: $85
    cp a                                          ; $5ef3: $bf
    dec h                                         ; $5ef4: $25
    nop                                           ; $5ef5: $00
    cp [hl]                                       ; $5ef6: $be
    add d                                         ; $5ef7: $82
    ld bc, $7ea3                                  ; $5ef8: $01 $a3 $7e
    ld h, [hl]                                    ; $5efb: $66
    ld [bc], a                                    ; $5efc: $02
    cp a                                          ; $5efd: $bf
    ld [bc], a                                    ; $5efe: $02
    ld [c], a                                     ; $5eff: $e2
    ld c, h                                       ; $5f00: $4c
    jp nz, Jump_000_0341                          ; $5f01: $c2 $41 $03

    pop af                                        ; $5f04: $f1
    ld b, e                                       ; $5f05: $43
    ld bc, $466d                                  ; $5f06: $01 $6d $46
    rst $38                                       ; $5f09: $ff
    ld a, [hl]                                    ; $5f0a: $7e
    daa                                           ; $5f0b: $27
    ret nz                                        ; $5f0c: $c0

    db $e4                                        ; $5f0d: $e4
    rst $38                                       ; $5f0e: $ff
    jp nz, Jump_000_2002                          ; $5f0f: $c2 $02 $20

    add e                                         ; $5f12: $83
    and e                                         ; $5f13: $a3
    nop                                           ; $5f14: $00
    rst $38                                       ; $5f15: $ff
    nop                                           ; $5f16: $00
    add b                                         ; $5f17: $80
    add sp, -$3c                                  ; $5f18: $e8 $c4
    and h                                         ; $5f1a: $a4
    ld b, d                                       ; $5f1b: $42
    and h                                         ; $5f1c: $a4
    pop bc                                        ; $5f1d: $c1
    ld [c], a                                     ; $5f1e: $e2
    add h                                         ; $5f1f: $84
    or l                                          ; $5f20: $b5
    nop                                           ; $5f21: $00
    adc a                                         ; $5f22: $8f
    nop                                           ; $5f23: $00
    and [hl]                                      ; $5f24: $a6
    ld b, c                                       ; $5f25: $41
    ret nz                                        ; $5f26: $c0

    nop                                           ; $5f27: $00
    ld b, d                                       ; $5f28: $42
    and c                                         ; $5f29: $a1
    inc b                                         ; $5f2a: $04
    dec h                                         ; $5f2b: $25
    inc b                                         ; $5f2c: $04
    adc a                                         ; $5f2d: $8f
    xor l                                         ; $5f2e: $ad
    ld d, e                                       ; $5f2f: $53
    add c                                         ; $5f30: $81
    dec b                                         ; $5f31: $05
    ld b, $a0                                     ; $5f32: $06 $a0
    rst $38                                       ; $5f34: $ff
    and e                                         ; $5f35: $a3
    nop                                           ; $5f36: $00
    ld e, a                                       ; $5f37: $5f
    nop                                           ; $5f38: $00
    nop                                           ; $5f39: $00
    ld [$8352], a                                 ; $5f3a: $ea $52 $83
    ret nz                                        ; $5f3d: $c0

    ld [bc], a                                    ; $5f3e: $02
    cp a                                          ; $5f3f: $bf
    and d                                         ; $5f40: $a2
    add d                                         ; $5f41: $82
    push hl                                       ; $5f42: $e5
    ret nz                                        ; $5f43: $c0

    rst $38                                       ; $5f44: $ff
    ld [bc], a                                    ; $5f45: $02
    rst $20                                       ; $5f46: $e7
    ld a, [hl]                                    ; $5f47: $7e
    ld [bc], a                                    ; $5f48: $02
    nop                                           ; $5f49: $00
    pop bc                                        ; $5f4a: $c1
    ld b, h                                       ; $5f4b: $44
    add [hl]                                      ; $5f4c: $86
    ld b, l                                       ; $5f4d: $45
    nop                                           ; $5f4e: $00
    rst $18                                       ; $5f4f: $df
    add d                                         ; $5f50: $82
    rst $00                                       ; $5f51: $c7
    ret nz                                        ; $5f52: $c0

    ld [c], a                                     ; $5f53: $e2
    cp $40                                        ; $5f54: $fe $40
    ld a, $a1                                     ; $5f56: $3e $a1
    add [hl]                                      ; $5f58: $86
    ld b, l                                       ; $5f59: $45
    nop                                           ; $5f5a: $00
    inc b                                         ; $5f5b: $04
    adc l                                         ; $5f5c: $8d
    ld [bc], a                                    ; $5f5d: $02
    ld [hl], h                                    ; $5f5e: $74
    ld b, c                                       ; $5f5f: $41
    add d                                         ; $5f60: $82
    ld c, l                                       ; $5f61: $4d
    nop                                           ; $5f62: $00
    rlca                                          ; $5f63: $07
    ret nz                                        ; $5f64: $c0

    ld b, d                                       ; $5f65: $42
    and b                                         ; $5f66: $a0
    db $f4                                        ; $5f67: $f4
    ld h, c                                       ; $5f68: $61
    add [hl]                                      ; $5f69: $86
    ld b, h                                       ; $5f6a: $44
    nop                                           ; $5f6b: $00
    ld b, b                                       ; $5f6c: $40
    rst $18                                       ; $5f6d: $df
    add d                                         ; $5f6e: $82
    add [hl]                                      ; $5f6f: $86
    ld b, b                                       ; $5f70: $40
    add c                                         ; $5f71: $81
    ld c, b                                       ; $5f72: $48
    ld h, c                                       ; $5f73: $61
    ret nz                                        ; $5f74: $c0

    adc b                                         ; $5f75: $88
    nop                                           ; $5f76: $00
    rst $18                                       ; $5f77: $df
    ld a, [hl]                                    ; $5f78: $7e
    db $eb                                        ; $5f79: $eb
    add c                                         ; $5f7a: $81
    ld h, h                                       ; $5f7b: $64
    nop                                           ; $5f7c: $00
    ld hl, sp+$02                                 ; $5f7d: $f8 $02
    nop                                           ; $5f7f: $00
    and l                                         ; $5f80: $a5
    nop                                           ; $5f81: $00
    rst $18                                       ; $5f82: $df
    add d                                         ; $5f83: $82
    dec h                                         ; $5f84: $25
    nop                                           ; $5f85: $00
    dec h                                         ; $5f86: $25
    cp c                                          ; $5f87: $b9
    ld [bc], a                                    ; $5f88: $02
    nop                                           ; $5f89: $00
    and [hl]                                      ; $5f8a: $a6
    nop                                           ; $5f8b: $00
    rst $18                                       ; $5f8c: $df
    nop                                           ; $5f8d: $00
    ld a, [hl]                                    ; $5f8e: $7e
    inc b                                         ; $5f8f: $04
    ret nz                                        ; $5f90: $c0

    db $ec                                        ; $5f91: $ec
    ld a, [hl]                                    ; $5f92: $7e
    inc bc                                        ; $5f93: $03
    rst $38                                       ; $5f94: $ff
    rst $38                                       ; $5f95: $ff
    ld a, [hl]                                    ; $5f96: $7e
    ld b, $3f                                     ; $5f97: $06 $3f
    ld h, b                                       ; $5f99: $60
    ret                                           ; $5f9a: $c9


    ld b, e                                       ; $5f9b: $43
    db $fc                                        ; $5f9c: $fc
    jp $bf00                                      ; $5f9d: $c3 $00 $bf


    add d                                         ; $5fa0: $82
    nop                                           ; $5fa1: $00
    rst $18                                       ; $5fa2: $df
    add b                                         ; $5fa3: $80
    ld h, a                                       ; $5fa4: $67
    ret nc                                        ; $5fa5: $d0

    nop                                           ; $5fa6: $00
    ld bc, $fae5                                  ; $5fa7: $01 $e5 $fa
    call nz, Call_066_74fe                        ; $5faa: $c4 $fe $74
    ld l, $ee                                     ; $5fad: $2e $ee
    ldh [$fc], a                                  ; $5faf: $e0 $fc
    and [hl]                                      ; $5fb1: $a6
    pop bc                                        ; $5fb2: $c1
    rst $00                                       ; $5fb3: $c7
    jp Jump_000_0023                              ; $5fb4: $c3 $23 $00


    rst $18                                       ; $5fb7: $df
    ld a, [hl]                                    ; $5fb8: $7e
    ld c, e                                       ; $5fb9: $4b
    ld l, e                                       ; $5fba: $6b
    ld c, e                                       ; $5fbb: $4b
    ld l, e                                       ; $5fbc: $6b
    adc b                                         ; $5fbd: $88
    dec a                                         ; $5fbe: $3d
    ld h, c                                       ; $5fbf: $61
    cp c                                          ; $5fc0: $b9
    nop                                           ; $5fc1: $00
    ret nz                                        ; $5fc2: $c0

    nop                                           ; $5fc3: $00
    dec l                                         ; $5fc4: $2d
    cp $43                                        ; $5fc5: $fe $43
    ld b, b                                       ; $5fc7: $40
    rst $18                                       ; $5fc8: $df
    ld a, [hl]                                    ; $5fc9: $7e
    ld h, l                                       ; $5fca: $65
    ld c, l                                       ; $5fcb: $4d
    rlca                                          ; $5fcc: $07
    dec l                                         ; $5fcd: $2d
    dec hl                                        ; $5fce: $2b
    ld l, e                                       ; $5fcf: $6b
    rst $38                                       ; $5fd0: $ff
    db $e3                                        ; $5fd1: $e3
    cp d                                          ; $5fd2: $ba
    add b                                         ; $5fd3: $80
    cp a                                          ; $5fd4: $bf
    add c                                         ; $5fd5: $81
    db $fc                                        ; $5fd6: $fc
    add d                                         ; $5fd7: $82
    ret nz                                        ; $5fd8: $c0

    rst $38                                       ; $5fd9: $ff
    ld [hl-], a                                   ; $5fda: $32
    db $fc                                        ; $5fdb: $fc
    jr z, jr_066_6009                             ; $5fdc: $28 $2b

    rst $38                                       ; $5fde: $ff
    pop hl                                        ; $5fdf: $e1
    pop bc                                        ; $5fe0: $c1
    ld h, b                                       ; $5fe1: $60
    dec l                                         ; $5fe2: $2d
    dec l                                         ; $5fe3: $2d
    ld b, h                                       ; $5fe4: $44
    ldh [$7e], a                                  ; $5fe5: $e0 $7e
    add e                                         ; $5fe7: $83
    nop                                           ; $5fe8: $00
    nop                                           ; $5fe9: $00
    db $dd                                        ; $5fea: $dd
    db $fc                                        ; $5feb: $fc
    ld l, b                                       ; $5fec: $68
    add hl, sp                                    ; $5fed: $39
    and h                                         ; $5fee: $a4
    add [hl]                                      ; $5fef: $86
    push hl                                       ; $5ff0: $e5
    inc b                                         ; $5ff1: $04
    ld d, e                                       ; $5ff2: $53
    ld [hl], c                                    ; $5ff3: $71
    add hl, de                                    ; $5ff4: $19
    cp e                                          ; $5ff5: $bb
    jr nz, @-$78                                  ; $5ff6: $20 $86

    add sp, $00                                   ; $5ff8: $e8 $00
    rst $38                                       ; $5ffa: $ff
    rst $38                                       ; $5ffb: $ff
    db $fc                                        ; $5ffc: $fc
    ld l, $86                                     ; $5ffd: $2e $86
    add sp, $04                                   ; $5fff: $e8 $04
    rst $38                                       ; $6001: $ff
    ld a, h                                       ; $6002: $7c
    cpl                                           ; $6003: $2f
    add [hl]                                      ; $6004: $86
    rst $38                                       ; $6005: $ff
    ld [bc], a                                    ; $6006: $02
    pop hl                                        ; $6007: $e1
    nop                                           ; $6008: $00

jr_066_6009:
    nop                                           ; $6009: $00
    nop                                           ; $600a: $00
    rst $28                                       ; $600b: $ef
    and b                                         ; $600c: $a0
    call c, $dedd                                 ; $600d: $dc $dd $de
    db $fc                                        ; $6010: $fc
    ld [$d8a0], a                                 ; $6011: $ea $a0 $d8
    reti                                          ; $6014: $d9


    add [hl]                                      ; $6015: $86
    db $fc                                        ; $6016: $fc
    db $e3                                        ; $6017: $e3
    jp nc, $fcd3                                  ; $6018: $d2 $d3 $fc

    rst $20                                       ; $601b: $e7
    db $ec                                        ; $601c: $ec
    db $e4                                        ; $601d: $e4
    call nc, $c4ed                                ; $601e: $d4 $ed $c4
    ldh [$df], a                                  ; $6021: $e0 $df
    rst $30                                       ; $6023: $f7
    ldh [$e1], a                                  ; $6024: $e0 $e1
    ld [c], a                                     ; $6026: $e2
    db $fc                                        ; $6027: $fc
    jp hl                                         ; $6028: $e9


    sub $d7                                       ; $6029: $d6 $d7
    jp c, Jump_066_7edb                           ; $602b: $da $db $7e

    db $fc                                        ; $602e: $fc
    pop hl                                        ; $602f: $e1
    ret nc                                        ; $6030: $d0

    pop de                                        ; $6031: $d1
    call nc, $a0d5                                ; $6032: $d4 $d5 $a0

Jump_066_6035:
    and b                                         ; $6035: $a0
    db $fc                                        ; $6036: $fc
    db $e3                                        ; $6037: $e3
    db $e3                                        ; $6038: $e3
    ret nc                                        ; $6039: $d0

    pop de                                        ; $603a: $d1
    db $ec                                        ; $603b: $ec
    db $e3                                        ; $603c: $e3
    call nc, $c4ed                                ; $603d: $d4 $ed $c4
    pop hl                                        ; $6040: $e1
    db $e3                                        ; $6041: $e3
    db $e4                                        ; $6042: $e4
    push hl                                       ; $6043: $e5
    ld sp, hl                                     ; $6044: $f9
    and $fc                                       ; $6045: $e6 $fc
    jp hl                                         ; $6047: $e9


    add d                                         ; $6048: $82
    jp hl                                         ; $6049: $e9


    and b                                         ; $604a: $a0
    and b                                         ; $604b: $a0
    sbc a                                         ; $604c: $9f
    sbc l                                         ; $604d: $9d
    sbc l                                         ; $604e: $9d
    db $e3                                        ; $604f: $e3
    sbc l                                         ; $6050: $9d
    sbc a                                         ; $6051: $9f
    ld a, [hl]                                    ; $6052: $7e
    and $d4                                       ; $6053: $e6 $d4
    db $ed                                        ; $6055: $ed
    call nz, $e7e1                                ; $6056: $c4 $e1 $e7
    add sp, -$17                                  ; $6059: $e8 $e9
    ld sp, hl                                     ; $605b: $f9
    ld [$e9fc], a                                 ; $605c: $ea $fc $e9
    add d                                         ; $605f: $82
    jp hl                                         ; $6060: $e9


    and b                                         ; $6061: $a0
    sbc a                                         ; $6062: $9f
    sbc h                                         ; $6063: $9c
    xor [hl]                                      ; $6064: $ae
    ld b, [hl]                                    ; $6065: $46
    rlca                                          ; $6066: $07
    ld b, [hl]                                    ; $6067: $46
    sbc h                                         ; $6068: $9c
    sbc a                                         ; $6069: $9f
    ld a, [hl]                                    ; $606a: $7e
    push hl                                       ; $606b: $e5
    call nc, $c4ed                                ; $606c: $d4 $ed $c4
    pop hl                                        ; $606f: $e1
    ld l, $ef                                     ; $6070: $2e $ef
    inc b                                         ; $6072: $04
    db $e4                                        ; $6073: $e4
    rst $38                                       ; $6074: $ff
    sbc a                                         ; $6075: $9f
    and d                                         ; $6076: $a2
    sbc l                                         ; $6077: $9d
    sbc l                                         ; $6078: $9d
    sbc h                                         ; $6079: $9c
    ld b, [hl]                                    ; $607a: $46
    xor a                                         ; $607b: $af
    ld b, [hl]                                    ; $607c: $46
    add b                                         ; $607d: $80
    cp a                                          ; $607e: $bf
    pop hl                                        ; $607f: $e1
    db $fc                                        ; $6080: $fc
    add $fe                                       ; $6081: $c6 $fe
    ld [c], a                                     ; $6083: $e2
    adc $ca                                       ; $6084: $ce $ca
    ld l, $ef                                     ; $6086: $2e $ef
    inc b                                         ; $6088: $04
    db $e3                                        ; $6089: $e3
    add l                                         ; $608a: $85
    ld [c], a                                     ; $608b: $e2
    ld b, [hl]                                    ; $608c: $46
    db $f4                                        ; $608d: $f4
    add c                                         ; $608e: $81
    ldh [$7e], a                                  ; $608f: $e0 $7e
    ldh [$a1], a                                  ; $6091: $e0 $a1
    db $fc                                        ; $6093: $fc
    add $a0                                       ; $6094: $c6 $a0
    and b                                         ; $6096: $a0
    sub $d7                                       ; $6097: $d6 $d7
    sub b                                         ; $6099: $90
    adc $cb                                       ; $609a: $ce $cb
    ld l, $ef                                     ; $609c: $2e $ef
    add d                                         ; $609e: $82
    db $e3                                        ; $609f: $e3
    add l                                         ; $60a0: $85
    pop hl                                        ; $60a1: $e1
    xor [hl]                                      ; $60a2: $ae
    add c                                         ; $60a3: $81
    pop hl                                        ; $60a4: $e1
    ld a, [hl]                                    ; $60a5: $7e
    ldh [$9e], a                                  ; $60a6: $e0 $9e
    or b                                          ; $60a8: $b0
    push af                                       ; $60a9: $f5
    ret nz                                        ; $60aa: $c0

    ld a, d                                       ; $60ab: $7a
    rst $00                                       ; $60ac: $c7
    adc $cb                                       ; $60ad: $ce $cb
    ld l, $ef                                     ; $60af: $2e $ef
    sub $d7                                       ; $60b1: $d6 $d7
    add d                                         ; $60b3: $82
    push hl                                       ; $60b4: $e5
    xor a                                         ; $60b5: $af
    rlca                                          ; $60b6: $07
    ld b, l                                       ; $60b7: $45
    ld d, b                                       ; $60b8: $50
    ld b, e                                       ; $60b9: $43
    ld a, e                                       ; $60ba: $7b
    pop hl                                        ; $60bb: $e1
    ccf                                           ; $60bc: $3f
    ldh [$7a], a                                  ; $60bd: $e0 $7a
    ret z                                         ; $60bf: $c8

    adc $cb                                       ; $60c0: $ce $cb
    inc b                                         ; $60c2: $04
    set 3, h                                      ; $60c3: $cb $dc
    adc h                                         ; $60c5: $8c
    pop bc                                        ; $60c6: $c1

Call_066_60c7:
    nop                                           ; $60c7: $00
    pop bc                                        ; $60c8: $c1
    sbc [hl]                                      ; $60c9: $9e
    ld b, [hl]                                    ; $60ca: $46
    xor a                                         ; $60cb: $af
    add $c0                                       ; $60cc: $c6 $c0
    ld b, l                                       ; $60ce: $45
    ld b, a                                       ; $60cf: $47
    dec de                                        ; $60d0: $1b
    ld h, b                                       ; $60d1: $60
    ld d, l                                       ; $60d2: $55
    cp c                                          ; $60d3: $b9
    pop hl                                        ; $60d4: $e1
    ld b, [hl]                                    ; $60d5: $46
    sbc h                                         ; $60d6: $9c
    ld a, e                                       ; $60d7: $7b
    ret nz                                        ; $60d8: $c0

    ld hl, sp-$5b                                 ; $60d9: $f8 $a5
    nop                                           ; $60db: $00
    ret c                                         ; $60dc: $d8

    ld hl, sp+$20                                 ; $60dd: $f8 $20
    db $e3                                        ; $60df: $e3
    inc b                                         ; $60e0: $04
    pop bc                                        ; $60e1: $c1
    ld b, c                                       ; $60e2: $41
    ld [c], a                                     ; $60e3: $e2
    ld b, [hl]                                    ; $60e4: $46
    ld b, l                                       ; $60e5: $45
    ld c, e                                       ; $60e6: $4b
    ld a, [hl+]                                   ; $60e7: $2a
    ld l, $01                                     ; $60e8: $2e $01
    ld b, l                                       ; $60ea: $45
    cp a                                          ; $60eb: $bf
    ret nz                                        ; $60ec: $c0

    cp h                                          ; $60ed: $bc
    jp $a3f8                                      ; $60ee: $c3 $f8 $a3


    nop                                           ; $60f1: $00
    reti                                          ; $60f2: $d9


    add [hl]                                      ; $60f3: $86
    xor b                                         ; $60f4: $a8
    nop                                           ; $60f5: $00
    ldh [$c3], a                                  ; $60f6: $e0 $c3
    ret nz                                        ; $60f8: $c0

    rst $38                                       ; $60f9: $ff
    ld b, d                                       ; $60fa: $42
    jr nz, jr_066_611d                            ; $60fb: $20 $20

    dec l                                         ; $60fd: $2d
    ld b, [hl]                                    ; $60fe: $46
    ld a, c                                       ; $60ff: $79
    ld a, d                                       ; $6100: $7a
    ld a, l                                       ; $6101: $7d
    ret nc                                        ; $6102: $d0

    ld a, e                                       ; $6103: $7b
    jp $a26e                                      ; $6104: $c3 $6e $a2


    nop                                           ; $6107: $00
    reti                                          ; $6108: $d9


    add [hl]                                      ; $6109: $86
    xor c                                         ; $610a: $a9

Call_066_610b:
    sbc [hl]                                      ; $610b: $9e
    add $c1                                       ; $610c: $c6 $c1
    ld b, l                                       ; $610e: $45
    ld l, $bf                                     ; $610f: $2e $bf
    jr nz, jr_066_6141                            ; $6111: $20 $2e

    ld b, l                                       ; $6113: $45
    add b                                         ; $6114: $80
    xor [hl]                                      ; $6115: $ae
    ld a, a                                       ; $6116: $7f
    cp a                                          ; $6117: $bf
    db $e4                                        ; $6118: $e4
    call nc, $d5e1                                ; $6119: $d4 $e1 $d5
    db $fc                                        ; $611c: $fc

jr_066_611d:
    xor a                                         ; $611d: $af
    inc b                                         ; $611e: $04
    jp nc, $a085                                  ; $611f: $d2 $85 $a0

    ret nz                                        ; $6122: $c0

    ldh [rDMA], a                                 ; $6123: $e0 $46
    ld b, [hl]                                    ; $6125: $46
    ld b, h                                       ; $6126: $44
    rst $38                                       ; $6127: $ff
    cp h                                          ; $6128: $bc
    inc hl                                        ; $6129: $23
    ld a, [hl+]                                   ; $612a: $2a
    ld b, l                                       ; $612b: $45
    add b                                         ; $612c: $80
    xor a                                         ; $612d: $af
    ld b, [hl]                                    ; $612e: $46
    add c                                         ; $612f: $81
    ldh [$37], a                                  ; $6130: $e0 $37
    pop bc                                        ; $6132: $c1
    cp d                                          ; $6133: $ba
    pop bc                                        ; $6134: $c1
    db $fc                                        ; $6135: $fc
    and d                                         ; $6136: $a2
    nop                                           ; $6137: $00
    ret c                                         ; $6138: $d8

    add [hl]                                      ; $6139: $86
    xor e                                         ; $613a: $ab
    ld b, [hl]                                    ; $613b: $46
    add hl, sp                                    ; $613c: $39
    dec [hl]                                      ; $613d: $35
    ld a, a                                       ; $613e: $7f
    dec [hl]                                      ; $613f: $35
    add hl, sp                                    ; $6140: $39

jr_066_6141:
    ld b, [hl]                                    ; $6141: $46
    add d                                         ; $6142: $82
    add e                                         ; $6143: $83
    add e                                         ; $6144: $83
    add h                                         ; $6145: $84
    inc sp                                        ; $6146: $33
    jp nz, $a1b1                                  ; $6147: $c2 $b1 $a1

Jump_066_614a:
    ld hl, sp-$7d                                 ; $614a: $f8 $83
    nop                                           ; $614c: $00
    reti                                          ; $614d: $d9


    ld [$9fa4], sp                                ; $614e: $08 $a4 $9f
    and d                                         ; $6151: $a2
    ret nz                                        ; $6152: $c0

    jp $ff3a                                      ; $6153: $c3 $3a $ff


    dec [hl]                                      ; $6156: $35
    dec [hl]                                      ; $6157: $35
    ld a, [hl-]                                   ; $6158: $3a
    ld b, l                                       ; $6159: $45
    add l                                         ; $615a: $85
    add a                                         ; $615b: $87
    add a                                         ; $615c: $87
    add l                                         ; $615d: $85
    ld c, $b6                                     ; $615e: $0e $b6
    and b                                         ; $6160: $a0
    xor a                                         ; $6161: $af
    ld b, [hl]                                    ; $6162: $46
    sbc [hl]                                      ; $6163: $9e
    halt                                          ; $6164: $76
    add e                                         ; $6165: $83
    nop                                           ; $6166: $00
    reti                                          ; $6167: $d9


    inc b                                         ; $6168: $04
    pop bc                                        ; $6169: $c1
    add hl, bc                                    ; $616a: $09

Jump_066_616b:
    and c                                         ; $616b: $a1
    cp $8b                                        ; $616c: $fe $8b
    jp nz, Jump_066_7a79                          ; $616e: $c2 $79 $7a

    ld h, l                                       ; $6171: $65
    ld h, [hl]                                    ; $6172: $66
    dec [hl]                                      ; $6173: $35
    ld [hl], $44                                  ; $6174: $36 $44
    add b                                         ; $6176: $80
    ld a, d                                       ; $6177: $7a
    and c                                         ; $6178: $a1
    or [hl]                                       ; $6179: $b6
    and c                                         ; $617a: $a1
    ld hl, sp-$7f                                 ; $617b: $f8 $81
    nop                                           ; $617d: $00
    db $dd                                        ; $617e: $dd
    inc e                                         ; $617f: $1c
    and d                                         ; $6180: $a2
    add h                                         ; $6181: $84
    and b                                         ; $6182: $a0
    ld c, b                                       ; $6183: $48
    and c                                         ; $6184: $a1
    ld a, c                                       ; $6185: $79
    rst $38                                       ; $6186: $ff
    ld a, [hl]                                    ; $6187: $7e
    xor [hl]                                      ; $6188: $ae
    inc a                                         ; $6189: $3c
    ld l, d                                       ; $618a: $6a
    ld a, [hl-]                                   ; $618b: $3a
    ld c, e                                       ; $618c: $4b
    ld d, [hl]                                    ; $618d: $56
    ld b, l                                       ; $618e: $45
    add b                                         ; $618f: $80
    ei                                            ; $6190: $fb
    add b                                         ; $6191: $80
    ld a, [c]                                     ; $6192: $f2
    and b                                         ; $6193: $a0
    cp e                                          ; $6194: $bb
    and c                                         ; $6195: $a1
    nop                                           ; $6196: $00
    sbc $04                                       ; $6197: $de $04
    jp $a048                                      ; $6199: $c3 $48 $a0


    ld b, l                                       ; $619c: $45
    and b                                         ; $619d: $a0
    add d                                         ; $619e: $82
    rst $38                                       ; $619f: $ff
    add e                                         ; $61a0: $83
    xor a                                         ; $61a1: $af
    ld l, h                                       ; $61a2: $6c
    ld l, l                                       ; $61a3: $6d
    ld a, [hl-]                                   ; $61a4: $3a
    ld d, d                                       ; $61a5: $52
    ld h, c                                       ; $61a6: $61
    ld c, b                                       ; $61a7: $48
    add c                                         ; $61a8: $81
    ld b, l                                       ; $61a9: $45
    scf                                           ; $61aa: $37
    and c                                         ; $61ab: $a1
    ld a, h                                       ; $61ac: $7c
    and c                                         ; $61ad: $a1
    nop                                           ; $61ae: $00
    rst $18                                       ; $61af: $df
    adc d                                         ; $61b0: $8a
    ld h, c                                       ; $61b1: $61
    add h                                         ; $61b2: $84
    and b                                         ; $61b3: $a0
    ld a, [bc]                                    ; $61b4: $0a
    and d                                         ; $61b5: $a2
    add l                                         ; $61b6: $85
    ccf                                           ; $61b7: $3f
    add a                                         ; $61b8: $87
    adc b                                         ; $61b9: $88
    ld [hl], b                                    ; $61ba: $70
    ld l, [hl]                                    ; $61bb: $6e
    dec [hl]                                      ; $61bc: $35
    ld [hl], $7f                                  ; $61bd: $36 $7f
    ld [c], a                                     ; $61bf: $e2
    ld a, a                                       ; $61c0: $7f
    and d                                         ; $61c1: $a2
    call z, $df00                                 ; $61c2: $cc $00 $df

Jump_066_61c5:
    add [hl]                                      ; $61c5: $86
    ld h, b                                       ; $61c6: $60
    call nc, Call_000_06d5                        ; $61c7: $d4 $d5 $06
    ret nz                                        ; $61ca: $c0

    adc c                                         ; $61cb: $89
    add d                                         ; $61cc: $82
    xor [hl]                                      ; $61cd: $ae
    ld b, h                                       ; $61ce: $44
    ld a, a                                       ; $61cf: $7f
    ld c, b                                       ; $61d0: $48
    ld [hl], $62                                  ; $61d1: $36 $62
    ld h, e                                       ; $61d3: $63
    ld h, l                                       ; $61d4: $65
    ld a, l                                       ; $61d5: $7d
    ld b, e                                       ; $61d6: $43
    ld b, h                                       ; $61d7: $44
    db $e4                                        ; $61d8: $e4
    ldh [$6e], a                                  ; $61d9: $e0 $6e
    ld h, c                                       ; $61db: $61
    nop                                           ; $61dc: $00
    rst $18                                       ; $61dd: $df
    inc b                                         ; $61de: $04
    and c                                         ; $61df: $a1
    sub h                                         ; $61e0: $94
    ret nz                                        ; $61e1: $c0

    inc c                                         ; $61e2: $0c
    pop hl                                        ; $61e3: $e1
    ld d, c                                       ; $61e4: $51
    ld e, [hl]                                    ; $61e5: $5e
    ld d, l                                       ; $61e6: $55
    rra                                           ; $61e7: $1f
    ld l, c                                       ; $61e8: $69
    dec [hl]                                      ; $61e9: $35
    xor h                                         ; $61ea: $ac
    ld a, a                                       ; $61eb: $7f
    ld a, l                                       ; $61ec: $7d
    add [hl]                                      ; $61ed: $86
    ret nz                                        ; $61ee: $c0

    ld [hl], h                                    ; $61ef: $74
    ld h, c                                       ; $61f0: $61
    db $fc                                        ; $61f1: $fc
    ld h, [hl]                                    ; $61f2: $66
    and $00                                       ; $61f3: $e6 $00
    call c, $9c9f                                 ; $61f5: $dc $9f $9c
    ld b, [hl]                                    ; $61f8: $46
    add c                                         ; $61f9: $81
    jp nz, $4880                                  ; $61fa: $c2 $80 $48

    ld e, [hl]                                    ; $61fd: $5e
    ld d, l                                       ; $61fe: $55
    rlca                                          ; $61ff: $07
    ld l, e                                       ; $6200: $6b
    ld l, h                                       ; $6201: $6c
    xor l                                         ; $6202: $ad
    inc bc                                        ; $6203: $03
    ret nz                                        ; $6204: $c0

    ccf                                           ; $6205: $3f

Jump_066_6206:
    add c                                         ; $6206: $81
    ldh a, [rSTAT]                                ; $6207: $f0 $41
    nop                                           ; $6209: $00
    rst $18                                       ; $620a: $df
    inc b                                         ; $620b: $04
    add a                                         ; $620c: $87
    ld a, [hl]                                    ; $620d: $7e
    add d                                         ; $620e: $82
    add b                                         ; $620f: $80
    ld d, [hl]                                    ; $6210: $56
    ld d, [hl]                                    ; $6211: $56
    ld [hl], $6e                                  ; $6212: $36 $6e
    ld [hl], b                                    ; $6214: $70
    ld [hl], c                                    ; $6215: $71
    inc bc                                        ; $6216: $03
    pop bc                                        ; $6217: $c1
    ldh [$7e], a                                  ; $6218: $e0 $7e
    ld h, h                                       ; $621a: $64
    nop                                           ; $621b: $00
    rst $18                                       ; $621c: $df
    inc b                                         ; $621d: $04
    add c                                         ; $621e: $81
    add d                                         ; $621f: $82
    add d                                         ; $6220: $82
    add [hl]                                      ; $6221: $86
    ld h, c                                       ; $6222: $61
    ld b, h                                       ; $6223: $44
    ld [hl], $62                                  ; $6224: $36 $62
    add c                                         ; $6226: $81
    ld h, [hl]                                    ; $6227: $66
    ld a, a                                       ; $6228: $7f
    and c                                         ; $6229: $a1
    ld a, d                                       ; $622a: $7a
    ld h, b                                       ; $622b: $60
    db $fc                                        ; $622c: $fc
    ld b, c                                       ; $622d: $41
    halt                                          ; $622e: $76
    ld b, l                                       ; $622f: $45
    nop                                           ; $6230: $00
    db $dd                                        ; $6231: $dd
    add d                                         ; $6232: $82
    ld h, l                                       ; $6233: $65
    ld b, l                                       ; $6234: $45
    rra                                           ; $6235: $1f
    ld [hl], $62                                  ; $6236: $36 $62
    ld h, a                                       ; $6238: $67
    ld l, b                                       ; $6239: $68
    ld h, [hl]                                    ; $623a: $66
    ld a, a                                       ; $623b: $7f
    and b                                         ; $623c: $a0
    ei                                            ; $623d: $fb
    ld b, c                                       ; $623e: $41
    ld [bc], a                                    ; $623f: $02
    jp nz, Jump_066_6af0                          ; $6240: $c2 $f0 $6a

    ld b, l                                       ; $6243: $45
    nop                                           ; $6244: $00
    reti                                          ; $6245: $d9


    ld a, [hl]                                    ; $6246: $7e
    db $e4                                        ; $6247: $e4
    push bc                                       ; $6248: $c5

jr_066_6249:
    ld b, b                                       ; $6249: $40
    ld b, d                                       ; $624a: $42
    ld h, d                                       ; $624b: $62
    ld h, a                                       ; $624c: $67
    xor h                                         ; $624d: $ac
    sub e                                         ; $624e: $93
    dec [hl]                                      ; $624f: $35
    ld l, d                                       ; $6250: $6a
    ld a, a                                       ; $6251: $7f
    ld [c], a                                     ; $6252: $e2
    ld a, h                                       ; $6253: $7c
    ld h, c                                       ; $6254: $61
    and d                                         ; $6255: $a2

jr_066_6256:
    ret nz                                        ; $6256: $c0

    and c                                         ; $6257: $a1
    ld a, [hl]                                    ; $6258: $7e
    pop bc                                        ; $6259: $c1
    and b                                         ; $625a: $a0
    ld l, c                                       ; $625b: $69
    and b                                         ; $625c: $a0
    nop                                           ; $625d: $00
    sbc a                                         ; $625e: $9f
    ld a, [hl]                                    ; $625f: $7e
    ld h, c                                       ; $6260: $61
    ld b, b                                       ; $6261: $40
    jp $6cc0                                      ; $6262: $c3 $c0 $6c


    ld l, l                                       ; $6265: $6d
    cp $81                                        ; $6266: $fe $81
    sub b                                         ; $6268: $90
    ld a, h                                       ; $6269: $7c
    ld h, d                                       ; $626a: $62
    ld a, l                                       ; $626b: $7d
    db $e4                                        ; $626c: $e4
    ld hl, sp+$2d                                 ; $626d: $f8 $2d
    nop                                           ; $626f: $00
    sub a                                         ; $6270: $97
    ld b, d                                       ; $6271: $42
    jp $bfc0                                      ; $6272: $c3 $c0 $bf


    and b                                         ; $6275: $a0
    ld h, d                                       ; $6276: $62
    ld h, c                                       ; $6277: $61
    ld h, e                                       ; $6278: $63
    pop bc                                        ; $6279: $c1
    ld h, b                                       ; $627a: $60
    ld [hl], h                                    ; $627b: $74
    ld b, c                                       ; $627c: $41
    jr c, jr_066_62c0                             ; $627d: $38 $41

    halt                                          ; $627f: $76
    ld hl, $a0a0                                  ; $6280: $21 $a0 $a0
    nop                                           ; $6283: $00
    sbc a                                         ; $6284: $9f
    inc c                                         ; $6285: $0c
    cp $41                                        ; $6286: $fe $41
    add d                                         ; $6288: $82
    add c                                         ; $6289: $81
    dec [hl]                                      ; $628a: $35
    dec [hl]                                      ; $628b: $35
    dec sp                                        ; $628c: $3b
    ldh [$c1], a                                  ; $628d: $e0 $c1
    ld h, b                                       ; $628f: $60
    ld sp, hl                                     ; $6290: $f9
    jr nz, jr_066_6249                            ; $6291: $20 $b6

    jr nz, jr_066_6256                            ; $6293: $20 $c1

    sbc [hl]                                      ; $6295: $9e
    ld l, d                                       ; $6296: $6a
    inc hl                                        ; $6297: $23
    nop                                           ; $6298: $00
    sbc d                                         ; $6299: $9a
    ld a, [hl]                                    ; $629a: $7e
    add e                                         ; $629b: $83
    ld b, b                                       ; $629c: $40
    ld h, d                                       ; $629d: $62
    ld [bc], a                                    ; $629e: $02
    add b                                         ; $629f: $80
    dec [hl]                                      ; $62a0: $35
    dec [hl]                                      ; $62a1: $35
    sbc a                                         ; $62a2: $9f
    ld l, c                                       ; $62a3: $69
    dec [hl]                                      ; $62a4: $35
    xor l                                         ; $62a5: $ad
    ld b, b                                       ; $62a6: $40
    add c                                         ; $62a7: $81

jr_066_62a8:
    db $fc                                        ; $62a8: $fc
    ld b, c                                       ; $62a9: $41
    xor a                                         ; $62aa: $af
    ld b, b                                       ; $62ab: $40
    sbc [hl]                                      ; $62ac: $9e
    ret nc                                        ; $62ad: $d0

    ld a, [hl]                                    ; $62ae: $7e
    ld h, d                                       ; $62af: $62
    nop                                           ; $62b0: $00
    sbc e                                         ; $62b1: $9b
    sbc d                                         ; $62b2: $9a
    inc hl                                        ; $62b3: $23
    ld a, l                                       ; $62b4: $7d
    add d                                         ; $62b5: $82
    ld b, d                                       ; $62b6: $42
    add b                                         ; $62b7: $80
    pop hl                                        ; $62b8: $e1
    ld l, e                                       ; $62b9: $6b
    ld l, h                                       ; $62ba: $6c
    ld h, c                                       ; $62bb: $61
    inc a                                         ; $62bc: $3c
    cp [hl]                                       ; $62bd: $be
    and c                                         ; $62be: $a1
    ld a, c                                       ; $62bf: $79

jr_066_62c0:
    ld b, d                                       ; $62c0: $42
    ld hl, sp+$21                                 ; $62c1: $f8 $21
    nop                                           ; $62c3: $00
    ld e, e                                       ; $62c4: $5b
    and b                                         ; $62c5: $a0
    and b                                         ; $62c6: $a0
    add [hl]                                      ; $62c7: $86
    ld bc, $c200                                  ; $62c8: $01 $00 $c2
    ld b, d                                       ; $62cb: $42
    ld [bc], a                                    ; $62cc: $02
    ld h, b                                       ; $62cd: $60
    ccf                                           ; $62ce: $3f
    pop hl                                        ; $62cf: $e1
    cp [hl]                                       ; $62d0: $be
    and h                                         ; $62d1: $a4
    ld [hl], e                                    ; $62d2: $73
    ld hl, $e400                                  ; $62d3: $21 $00 $e4
    nop                                           ; $62d6: $00
    ld e, b                                       ; $62d7: $58
    db $fc                                        ; $62d8: $fc
    and d                                         ; $62d9: $a2
    dec sp                                        ; $62da: $3b
    jp nc, $ffd3                                  ; $62db: $d2 $d3 $ff

    ld h, e                                       ; $62de: $63
    ld b, [hl]                                    ; $62df: $46
    ld b, [hl]                                    ; $62e0: $46
    ld a, $ff                                     ; $62e1: $3e $ff
    pop bc                                        ; $62e3: $c1
    add b                                         ; $62e4: $80
    jp nz, $ee70                                  ; $62e5: $c2 $70 $ee

    add c                                         ; $62e8: $81
    ld a, [hl]                                    ; $62e9: $7e
    ld b, l                                       ; $62ea: $45
    nop                                           ; $62eb: $00
    rst $10                                       ; $62ec: $d7
    db $fc                                        ; $62ed: $fc
    and e                                         ; $62ee: $a3
    call nc, $a1d5                                ; $62ef: $d4 $d5 $a1
    ld c, d                                       ; $62f2: $4a
    ld [hl+], a                                   ; $62f3: $22
    nop                                           ; $62f4: $00
    cp a                                          ; $62f5: $bf
    call nz, $c200                                ; $62f6: $c4 $00 $c2
    cp [hl]                                       ; $62f9: $be
    and e                                         ; $62fa: $a3
    ld a, [hl]                                    ; $62fb: $7e
    add e                                         ; $62fc: $83
    nop                                           ; $62fd: $00
    rst $10                                       ; $62fe: $d7
    db $fc                                        ; $62ff: $fc
    and l                                         ; $6300: $a5
    ld b, b                                       ; $6301: $40
    ld h, e                                       ; $6302: $63
    ld b, c                                       ; $6303: $41
    ld h, d                                       ; $6304: $62
    rlca                                          ; $6305: $07
    dec [hl]                                      ; $6306: $35
    dec [hl]                                      ; $6307: $35
    ld [hl], $44                                  ; $6308: $36 $44
    jp $287e                                      ; $630a: $c3 $7e $28


    nop                                           ; $630d: $00
    sub $fc                                       ; $630e: $d6 $fc
    inc hl                                        ; $6310: $23
    nop                                           ; $6311: $00
    db $e4                                        ; $6312: $e4
    rrca                                          ; $6313: $0f
    ld a, c                                       ; $6314: $79
    ld a, [hl]                                    ; $6315: $7e
    ld b, b                                       ; $6316: $40
    xor h                                         ; $6317: $ac
    ld b, c                                       ; $6318: $41
    and d                                         ; $6319: $a2
    dec a                                         ; $631a: $3d
    inc b                                         ; $631b: $04
    nop                                           ; $631c: $00
    add h                                         ; $631d: $84
    nop                                           ; $631e: $00
    db $db                                        ; $631f: $db
    ld e, h                                       ; $6320: $5c
    jr jr_066_62a8                                ; $6321: $18 $85

    add c                                         ; $6323: $81
    nop                                           ; $6324: $00
    add d                                         ; $6325: $82
    add e                                         ; $6326: $83
    ld b, b                                       ; $6327: $40
    add c                                         ; $6328: $81
    and c                                         ; $6329: $a1
    ld a, $40                                     ; $632a: $3e $40
    ld [hl+], a                                   ; $632c: $22
    ld bc, $00a1                                  ; $632d: $01 $a1 $00
    sbc a                                         ; $6330: $9f
    db $fc                                        ; $6331: $fc
    and d                                         ; $6332: $a2

Jump_066_6333:
    nop                                           ; $6333: $00
    ld hl, $a100                                  ; $6334: $21 $00 $a1
    cp a                                          ; $6337: $bf
    nop                                           ; $6338: $00
    ld b, c                                       ; $6339: $41
    ld h, b                                       ; $633a: $60
    add c                                         ; $633b: $81
    and c                                         ; $633c: $a1
    add b                                         ; $633d: $80
    pop bc                                        ; $633e: $c1
    add b                                         ; $633f: $80
    add $a2                                       ; $6340: $c6 $a2
    add d                                         ; $6342: $82
    push hl                                       ; $6343: $e5
    nop                                           ; $6344: $00
    rst $18                                       ; $6345: $df
    sbc d                                         ; $6346: $9a
    add d                                         ; $6347: $82
    ld a, e                                       ; $6348: $7b
    ld h, b                                       ; $6349: $60
    ld a, a                                       ; $634a: $7f
    and e                                         ; $634b: $a3
    inc a                                         ; $634c: $3c
    ld bc, $f344                                  ; $634d: $01 $44 $f3
    ld h, c                                       ; $6350: $61
    add [hl]                                      ; $6351: $86
    and e                                         ; $6352: $a3
    ldh [$83], a                                  ; $6353: $e0 $83
    nop                                           ; $6355: $00
    sbc e                                         ; $6356: $9b
    ld a, [hl]                                    ; $6357: $7e
    inc hl                                        ; $6358: $23
    cp l                                          ; $6359: $bd
    ld h, e                                       ; $635a: $63
    add c                                         ; $635b: $81
    jr nz, jr_066_6365                            ; $635c: $20 $07

    ld h, d                                       ; $635e: $62
    ld h, e                                       ; $635f: $63
    ld a, h                                       ; $6360: $7c
    jp nz, $8203                                  ; $6361: $c2 $03 $82

    ld h, l                                       ; $6364: $65

jr_066_6365:
    nop                                           ; $6365: $00
    sbc a                                         ; $6366: $9f
    add d                                         ; $6367: $82
    inc b                                         ; $6368: $04
    ld bc, $0f21                                  ; $6369: $01 $21 $0f
    inc a                                         ; $636c: $3c
    dec [hl]                                      ; $636d: $35
    ld l, c                                       ; $636e: $69
    inc a                                         ; $636f: $3c
    jp nz, Jump_000_0201                          ; $6370: $c2 $01 $02

    ld b, d                                       ; $6373: $42
    nop                                           ; $6374: $00
    db $e4                                        ; $6375: $e4
    nop                                           ; $6376: $00
    ld e, h                                       ; $6377: $5c
    db $ec                                        ; $6378: $ec
    ld a, [hl]                                    ; $6379: $7e

Jump_066_637a:
    ld [hl+], a                                   ; $637a: $22
    jp Jump_066_4602                              ; $637b: $c3 $02 $46


    xor [hl]                                      ; $637e: $ae
    ccf                                           ; $637f: $3f
    and b                                         ; $6380: $a0
    ld l, e                                       ; $6381: $6b
    ld l, h                                       ; $6382: $6c
    xor a                                         ; $6383: $af
    and b                                         ; $6384: $a0
    ld [bc], a                                    ; $6385: $02
    ld [hl+], a                                   ; $6386: $22
    inc b                                         ; $6387: $04
    and h                                         ; $6388: $a4
    nop                                           ; $6389: $00
    ld e, a                                       ; $638a: $5f
    nop                                           ; $638b: $00
    and d                                         ; $638c: $a2
    ret nz                                        ; $638d: $c0

    db $e3                                        ; $638e: $e3
    xor a                                         ; $638f: $af
    nop                                           ; $6390: $00
    jr nz, jr_066_6401                            ; $6391: $20 $6e

    rrca                                          ; $6393: $0f
    ld [hl], b                                    ; $6394: $70
    adc b                                         ; $6395: $88
    add a                                         ; $6396: $87
    add l                                         ; $6397: $85
    add e                                         ; $6398: $83
    inc b                                         ; $6399: $04
    inc b                                         ; $639a: $04
    adc [hl]                                      ; $639b: $8e
    nop                                           ; $639c: $00
    sub l                                         ; $639d: $95
    jp nz, Jump_000_00c2                          ; $639e: $c2 $c2 $00

    ld a, $e1                                     ; $63a1: $3e $e1
    add b                                         ; $63a3: $80
    nop                                           ; $63a4: $00
    jp nz, Jump_000_0461                          ; $63a5: $c2 $61 $04

    ld hl, $2382                                  ; $63a8: $21 $82 $23
    inc b                                         ; $63ab: $04
    adc e                                         ; $63ac: $8b
    nop                                           ; $63ad: $00
    sub l                                         ; $63ae: $95
    ld a, a                                       ; $63af: $7f
    ld b, h                                       ; $63b0: $44
    ld b, c                                       ; $63b1: $41
    ld b, [hl]                                    ; $63b2: $46
    ld a, [hl]                                    ; $63b3: $7e
    add c                                         ; $63b4: $81
    ld b, d                                       ; $63b5: $42
    ld h, d                                       ; $63b6: $62
    inc b                                         ; $63b7: $04
    ld [hl+], a                                   ; $63b8: $22
    inc b                                         ; $63b9: $04
    adc a                                         ; $63ba: $8f
    nop                                           ; $63bb: $00
    ld d, e                                       ; $63bc: $53
    call nc, $0581                                ; $63bd: $d4 $81 $05
    ld b, l                                       ; $63c0: $45
    ld a, l                                       ; $63c1: $7d
    cp a                                          ; $63c2: $bf
    pop bc                                        ; $63c3: $c1
    ld b, d                                       ; $63c4: $42
    add d                                         ; $63c5: $82
    xor d                                         ; $63c6: $aa
    jp nc, Jump_000_008d                          ; $63c7: $d2 $8d $00

    ld d, d                                       ; $63ca: $52
    and c                                         ; $63cb: $a1
    ld d, d                                       ; $63cc: $52
    add d                                         ; $63cd: $82
    rra                                           ; $63ce: $1f
    ld a, c                                       ; $63cf: $79
    ld a, [hl]                                    ; $63d0: $7e
    ld a, a                                       ; $63d1: $7f
    ld a, l                                       ; $63d2: $7d
    ld b, d                                       ; $63d3: $42
    ld bc, $c1c1                                  ; $63d4: $01 $c1 $c1
    ld [hl+], a                                   ; $63d7: $22
    inc b                                         ; $63d8: $04
    ld d, d                                       ; $63d9: $52
    ld hl, sp+$00                                 ; $63da: $f8 $00
    ld d, e                                       ; $63dc: $53
    ccf                                           ; $63dd: $3f
    jr nz, jr_066_63ed                            ; $63de: $20 $0d

    and b                                         ; $63e0: $a0
    ld a, c                                       ; $63e1: $79
    ld a, [hl]                                    ; $63e2: $7e
    ld b, [hl]                                    ; $63e3: $46
    xor [hl]                                      ; $63e4: $ae
    add c                                         ; $63e5: $81
    inc bc                                        ; $63e6: $03
    ld b, h                                       ; $63e7: $44
    inc a                                         ; $63e8: $3c
    jp Jump_066_4242                              ; $63e9: $c3 $42 $42


    and c                                         ; $63ec: $a1

jr_066_63ed:
    add d                                         ; $63ed: $82
    jp $8dd2                                      ; $63ee: $c3 $d2 $8d


    nop                                           ; $63f1: $00
    ld d, c                                       ; $63f2: $51
    add d                                         ; $63f3: $82
    jp $827f                                      ; $63f4: $c3 $7f $82


    add e                                         ; $63f7: $83
    ld b, [hl]                                    ; $63f8: $46
    xor a                                         ; $63f9: $af
    add c                                         ; $63fa: $81
    ld b, l                                       ; $63fb: $45
    ld [hl], $01                                  ; $63fc: $36 $01
    rst $20                                       ; $63fe: $e7
    ld a, b                                       ; $63ff: $78
    ld h, [hl]                                    ; $6400: $66

jr_066_6401:
    ld h, h                                       ; $6401: $64
    nop                                           ; $6402: $00
    db $dd                                        ; $6403: $dd
    add d                                         ; $6404: $82
    ld h, h                                       ; $6405: $64
    ld b, [hl]                                    ; $6406: $46
    add l                                         ; $6407: $85
    add [hl]                                      ; $6408: $86
    add e                                         ; $6409: $83
    rlca                                          ; $640a: $07
    ret nz                                        ; $640b: $c0

    ld bc, $4445                                  ; $640c: $01 $45 $44
    ld b, c                                       ; $640f: $41
    add b                                         ; $6410: $80
    ld [bc], a                                    ; $6411: $02
    inc b                                         ; $6412: $04
    inc hl                                        ; $6413: $23
    inc b                                         ; $6414: $04
    adc e                                         ; $6415: $8b
    nop                                           ; $6416: $00
    ld d, c                                       ; $6417: $51
    add d                                         ; $6418: $82
    add h                                         ; $6419: $84
    cp a                                          ; $641a: $bf
    ldh [$81], a                                  ; $641b: $e0 $81
    add a                                         ; $641d: $87
    ld b, $21                                     ; $641e: $06 $21
    rlca                                          ; $6420: $07
    ld h, e                                       ; $6421: $63
    nop                                           ; $6422: $00
    xor b                                         ; $6423: $a8
    nop                                           ; $6424: $00
    db $dd                                        ; $6425: $dd
    add d                                         ; $6426: $82
    add d                                         ; $6427: $82
    ld b, b                                       ; $6428: $40
    and e                                         ; $6429: $a3
    ld b, l                                       ; $642a: $45
    rlca                                          ; $642b: $07
    ld b, e                                       ; $642c: $43
    ld b, c                                       ; $642d: $41
    ld b, e                                       ; $642e: $43
    db $fd                                        ; $642f: $fd
    ldh [$c1], a                                  ; $6430: $e0 $c1
    ld hl, $a500                                  ; $6432: $21 $00 $a5
    nop                                           ; $6435: $00
    rst $18                                       ; $6436: $df
    add d                                         ; $6437: $82
    dec h                                         ; $6438: $25
    ld e, [hl]                                    ; $6439: $5e
    add c                                         ; $643a: $81
    add b                                         ; $643b: $80
    ld [hl], $3b                                  ; $643c: $36 $3b
    dec [hl]                                      ; $643e: $35
    dec sp                                        ; $643f: $3b
    db $fd                                        ; $6440: $fd
    ldh [$36], a                                  ; $6441: $e0 $36
    ld a, $81                                     ; $6443: $3e $81
    ldh a, [$7e]                                  ; $6445: $f0 $7e
    inc b                                         ; $6447: $04
    nop                                           ; $6448: $00
    rst $18                                       ; $6449: $df
    ld a, [hl]                                    ; $644a: $7e
    inc bc                                        ; $644b: $03
    ld a, l                                       ; $644c: $7d
    pop bc                                        ; $644d: $c1
    ld b, h                                       ; $644e: $44
    inc a                                         ; $644f: $3c
    and h                                         ; $6450: $a4
    ld h, h                                       ; $6451: $64
    add d                                         ; $6452: $82
    rst $38                                       ; $6453: $ff
    ldh [$a5], a                                  ; $6454: $e0 $a5
    ld a, $81                                     ; $6456: $3e $81
    ld a, [hl]                                    ; $6458: $7e
    inc bc                                        ; $6459: $03
    nop                                           ; $645a: $00
    rst $18                                       ; $645b: $df
    nop                                           ; $645c: $00
    dec h                                         ; $645d: $25
    ccf                                           ; $645e: $3f
    ld h, c                                       ; $645f: $61
    ld b, d                                       ; $6460: $42
    ld a, a                                       ; $6461: $7f
    dec [hl]                                      ; $6462: $35
    ld l, c                                       ; $6463: $69
    and e                                         ; $6464: $a3
    dec [hl]                                      ; $6465: $35
    dec [hl]                                      ; $6466: $35
    and e                                         ; $6467: $a3
    ld l, d                                       ; $6468: $6a
    cp l                                          ; $6469: $bd
    and c                                         ; $646a: $a1
    nop                                           ; $646b: $00
    db $fd                                        ; $646c: $fd
    ld h, d                                       ; $646d: $62
    nop                                           ; $646e: $00
    rst $18                                       ; $646f: $df
    nop                                           ; $6470: $00
    ld b, d                                       ; $6471: $42
    ld a, [hl]                                    ; $6472: $7e
    add d                                         ; $6473: $82
    ld a, l                                       ; $6474: $7d
    ld b, b                                       ; $6475: $40
    ret nz                                        ; $6476: $c0

    ldh [$3f], a                                  ; $6477: $e0 $3f
    ld hl, $e2c0                                  ; $6479: $21 $c0 $e2
    ldh a, [$3d]                                  ; $647c: $f0 $3d
    ld h, c                                       ; $647e: $61
    inc b                                         ; $647f: $04
    ld c, a                                       ; $6480: $4f
    nop                                           ; $6481: $00
    ld d, e                                       ; $6482: $53
    ld a, [hl]                                    ; $6483: $7e
    add l                                         ; $6484: $85
    ld b, h                                       ; $6485: $44
    inc a                                         ; $6486: $3c
    ld l, e                                       ; $6487: $6b
    ld [hl], c                                    ; $6488: $71
    ld c, $ff                                     ; $6489: $0e $ff
    ldh [$6d], a                                  ; $648b: $e0 $6d
    inc a                                         ; $648d: $3c
    ld b, h                                       ; $648e: $44
    jp Jump_000_0423                              ; $648f: $c3 $23 $04


    ld c, a                                       ; $6492: $4f
    nop                                           ; $6493: $00
    ld d, e                                       ; $6494: $53
    ld a, [hl]                                    ; $6495: $7e
    dec h                                         ; $6496: $25
    nop                                           ; $6497: $00
    ret nz                                        ; $6498: $c0

    rst $00                                       ; $6499: $c7
    add b                                         ; $649a: $80
    add b                                         ; $649b: $80
    ld b, c                                       ; $649c: $41
    ld b, b                                       ; $649d: $40
    inc b                                         ; $649e: $04
    ld c, a                                       ; $649f: $4f
    nop                                           ; $64a0: $00
    ld d, l                                       ; $64a1: $55
    ld a, [hl]                                    ; $64a2: $7e
    ld b, h                                       ; $64a3: $44
    ld b, b                                       ; $64a4: $40
    rst $00                                       ; $64a5: $c7
    ld a, a                                       ; $64a6: $7f
    and e                                         ; $64a7: $a3
    stop                                          ; $64a8: $10 $00
    sbc $fc                                       ; $64aa: $de $fc
    or b                                          ; $64ac: $b0
    rst $00                                       ; $64ad: $c7
    jr nz, @+$01                                  ; $64ae: $20 $ff

    ldh [$9f], a                                  ; $64b0: $e0 $9f
    db $ec                                        ; $64b2: $ec
    nop                                           ; $64b3: $00
    nop                                           ; $64b4: $00
    sbc a                                         ; $64b5: $9f
    db $fc                                        ; $64b6: $fc
    xor h                                         ; $64b7: $ac
    ld h, b                                       ; $64b8: $60
    ei                                            ; $64b9: $fb
    ld b, d                                       ; $64ba: $42
    add [hl]                                      ; $64bb: $86
    db $e4                                        ; $64bc: $e4
    inc b                                         ; $64bd: $04
    pop bc                                        ; $64be: $c1
    nop                                           ; $64bf: $00
    rst $18                                       ; $64c0: $df
    db $fc                                        ; $64c1: $fc
    xor e                                         ; $64c2: $ab
    and b                                         ; $64c3: $a0
    sbc a                                         ; $64c4: $9f
    add [hl]                                      ; $64c5: $86
    rst $20                                       ; $64c6: $e7
    nop                                           ; $64c7: $00
    inc b                                         ; $64c8: $04
    ld h, c                                       ; $64c9: $61
    nop                                           ; $64ca: $00
    rst $18                                       ; $64cb: $df
    db $fc                                        ; $64cc: $fc
    inc l                                         ; $64cd: $2c
    add [hl]                                      ; $64ce: $86
    ld [$5104], a                                 ; $64cf: $ea $04 $51
    nop                                           ; $64d2: $00
    adc a                                         ; $64d3: $8f
    db $fc                                        ; $64d4: $fc
    xor c                                         ; $64d5: $a9
    add [hl]                                      ; $64d6: $86
    push hl                                       ; $64d7: $e5
    nop                                           ; $64d8: $00
    add [hl]                                      ; $64d9: $86
    daa                                           ; $64da: $27
    nop                                           ; $64db: $00
    pop de                                        ; $64dc: $d1
    nop                                           ; $64dd: $00
    nop                                           ; $64de: $00
    nop                                           ; $64df: $00
    pop bc                                        ; $64e0: $c1
    nop                                           ; $64e1: $00
    rst $38                                       ; $64e2: $ff
    rst $38                                       ; $64e3: $ff
    rst $38                                       ; $64e4: $ff
    rst $38                                       ; $64e5: $ff
    rst $38                                       ; $64e6: $ff
    rst $38                                       ; $64e7: $ff
    rst $38                                       ; $64e8: $ff
    rst $38                                       ; $64e9: $ff
    rst $38                                       ; $64ea: $ff
    rst $38                                       ; $64eb: $ff
    nop                                           ; $64ec: $00
    nop                                           ; $64ed: $00
    ld bc, $fe80                                  ; $64ee: $01 $80 $fe
    ldh [rIE], a                                  ; $64f1: $e0 $ff
    rst $38                                       ; $64f3: $ff
    rst $38                                       ; $64f4: $ff
    rst $38                                       ; $64f5: $ff
    rst $38                                       ; $64f6: $ff
    add sp, $00                                   ; $64f7: $e8 $00
    nop                                           ; $64f9: $00
    nop                                           ; $64fa: $00
    ld [bc], a                                    ; $64fb: $02
    nop                                           ; $64fc: $00
    rra                                           ; $64fd: $1f
    inc b                                         ; $64fe: $04

Call_066_64ff:
    ld [bc], a                                    ; $64ff: $02
    ld bc, $061a                                  ; $6500: $01 $1a $06
    ld [bc], a                                    ; $6503: $02
    ld [bc], a                                    ; $6504: $02
    ld e, $06                                     ; $6505: $1e $06
    ld [bc], a                                    ; $6507: $02
    inc bc                                        ; $6508: $03
    ld hl, $0206                                  ; $6509: $21 $06 $02
    inc b                                         ; $650c: $04
    inc e                                         ; $650d: $1c
    rlca                                          ; $650e: $07
    ld [bc], a                                    ; $650f: $02
    dec b                                         ; $6510: $05
    jr jr_066_651b                                ; $6511: $18 $08

    ld [bc], a                                    ; $6513: $02
    ld b, $23                                     ; $6514: $06 $23
    ld [$0702], sp                                ; $6516: $08 $02 $07
    add hl, de                                    ; $6519: $19
    add hl, bc                                    ; $651a: $09

jr_066_651b:
    ld [bc], a                                    ; $651b: $02
    ld [$0b1b], sp                                ; $651c: $08 $1b $0b
    ld [bc], a                                    ; $651f: $02
    add hl, bc                                    ; $6520: $09
    inc hl                                        ; $6521: $23
    inc c                                         ; $6522: $0c
    ld [bc], a                                    ; $6523: $02
    ld a, [bc]                                    ; $6524: $0a
    daa                                           ; $6525: $27
    dec c                                         ; $6526: $0d
    ld [bc], a                                    ; $6527: $02
    dec bc                                        ; $6528: $0b
    add hl, de                                    ; $6529: $19
    ld c, $02                                     ; $652a: $0e $02
    inc c                                         ; $652c: $0c
    add hl, hl                                    ; $652d: $29
    ld c, $02                                     ; $652e: $0e $02
    dec c                                         ; $6530: $0d
    jr z, @+$11                                   ; $6531: $28 $0f

    ld [bc], a                                    ; $6533: $02
    ld c, $24                                     ; $6534: $0e $24
    db $10                                        ; $6536: $10
    ld [bc], a                                    ; $6537: $02
    rrca                                          ; $6538: $0f
    ld h, $10                                     ; $6539: $26 $10
    ld [bc], a                                    ; $653b: $02
    db $10                                        ; $653c: $10
    ld d, $11                                     ; $653d: $16 $11
    ld [bc], a                                    ; $653f: $02
    ld de, $1119                                  ; $6540: $11 $19 $11
    ld [bc], a                                    ; $6543: $02
    ld [de], a                                    ; $6544: $12
    inc e                                         ; $6545: $1c
    ld de, $1302                                  ; $6546: $11 $02 $13
    daa                                           ; $6549: $27
    ld de, $1402                                  ; $654a: $11 $02 $14
    inc d                                         ; $654d: $14
    ld [de], a                                    ; $654e: $12
    ld [bc], a                                    ; $654f: $02
    dec d                                         ; $6550: $15
    rla                                           ; $6551: $17
    ld [de], a                                    ; $6552: $12
    ld [bc], a                                    ; $6553: $02
    ld d, $25                                     ; $6554: $16 $25
    ld [de], a                                    ; $6556: $12
    ld [bc], a                                    ; $6557: $02
    rla                                           ; $6558: $17
    dec d                                         ; $6559: $15
    inc d                                         ; $655a: $14
    ld [bc], a                                    ; $655b: $02
    jr jr_066_6576                                ; $655c: $18 $18

    inc d                                         ; $655e: $14
    ld [bc], a                                    ; $655f: $02
    add hl, de                                    ; $6560: $19
    ld a, [de]                                    ; $6561: $1a
    inc d                                         ; $6562: $14
    ld [bc], a                                    ; $6563: $02
    ld a, [de]                                    ; $6564: $1a
    inc hl                                        ; $6565: $23
    inc d                                         ; $6566: $14
    ld [bc], a                                    ; $6567: $02
    dec de                                        ; $6568: $1b
    inc d                                         ; $6569: $14
    dec d                                         ; $656a: $15
    ld [bc], a                                    ; $656b: $02
    inc e                                         ; $656c: $1c
    jr nz, jr_066_6584                            ; $656d: $20 $15

    ld [bc], a                                    ; $656f: $02
    dec e                                         ; $6570: $1d
    ld d, $16                                     ; $6571: $16 $16
    ld [bc], a                                    ; $6573: $02
    ld e, $18                                     ; $6574: $1e $18

jr_066_6576:
    jr jr_066_657a                                ; $6576: $18 $02

    rra                                           ; $6578: $1f
    inc h                                         ; $6579: $24

jr_066_657a:
    jr jr_066_657e                                ; $657a: $18 $02

    jr nz, @+$1f                                  ; $657c: $20 $1d

jr_066_657e:
    ld a, [de]                                    ; $657e: $1a
    ld [bc], a                                    ; $657f: $02
    ld hl, $1a27                                  ; $6580: $21 $27 $1a
    ld [bc], a                                    ; $6583: $02

jr_066_6584:
    ld [hl+], a                                   ; $6584: $22
    ld h, $1c                                     ; $6585: $26 $1c
    ld [bc], a                                    ; $6587: $02
    inc hl                                        ; $6588: $23
    ld [hl+], a                                   ; $6589: $22
    dec e                                         ; $658a: $1d
    ld [bc], a                                    ; $658b: $02
    inc h                                         ; $658c: $24
    add hl, hl                                    ; $658d: $29
    dec e                                         ; $658e: $1d
    ld [bc], a                                    ; $658f: $02
    dec h                                         ; $6590: $25
    ld a, [hl+]                                   ; $6591: $2a
    ld e, $02                                     ; $6592: $1e $02
    ld h, $19                                     ; $6594: $26 $19
    rra                                           ; $6596: $1f
    ld [bc], a                                    ; $6597: $02
    daa                                           ; $6598: $27
    daa                                           ; $6599: $27
    jr nz, jr_066_659e                            ; $659a: $20 $02

    jr z, @+$19                                   ; $659c: $28 $17

jr_066_659e:
    ld hl, $2902                                  ; $659e: $21 $02 $29
    ld h, $21                                     ; $65a1: $26 $21
    ld [bc], a                                    ; $65a3: $02
    ld a, [hl+]                                   ; $65a4: $2a
    ld [hl+], a                                   ; $65a5: $22
    inc hl                                        ; $65a6: $23
    ld [bc], a                                    ; $65a7: $02
    dec hl                                        ; $65a8: $2b
    inc e                                         ; $65a9: $1c
    inc h                                         ; $65aa: $24
    ld [bc], a                                    ; $65ab: $02
    inc l                                         ; $65ac: $2c
    inc hl                                        ; $65ad: $23
    ld h, $02                                     ; $65ae: $26 $02
    dec l                                         ; $65b0: $2d
    add hl, de                                    ; $65b1: $19
    daa                                           ; $65b2: $27
    ld [bc], a                                    ; $65b3: $02
    ld l, $21                                     ; $65b4: $2e $21
    add hl, hl                                    ; $65b6: $29
    ld [bc], a                                    ; $65b7: $02
    cpl                                           ; $65b8: $2f
    dec h                                         ; $65b9: $25
    add hl, hl                                    ; $65ba: $29
    ld [bc], a                                    ; $65bb: $02
    jr nc, jr_066_65d9                            ; $65bc: $30 $1b

    ld a, [hl+]                                   ; $65be: $2a
    ld [bc], a                                    ; $65bf: $02
    ld sp, $2b24                                  ; $65c0: $31 $24 $2b
    ld [bc], a                                    ; $65c3: $02
    ld [hl-], a                                   ; $65c4: $32
    rla                                           ; $65c5: $17
    inc l                                         ; $65c6: $2c
    ld [bc], a                                    ; $65c7: $02
    inc sp                                        ; $65c8: $33
    dec d                                         ; $65c9: $15
    cpl                                           ; $65ca: $2f
    ld [bc], a                                    ; $65cb: $02
    inc [hl]                                      ; $65cc: $34
    dec de                                        ; $65cd: $1b
    jr nc, jr_066_65d2                            ; $65ce: $30 $02

    dec [hl]                                      ; $65d0: $35
    inc hl                                        ; $65d1: $23

jr_066_65d2:
    ld [hl-], a                                   ; $65d2: $32
    ld [bc], a                                    ; $65d3: $02
    ld [hl], $18                                  ; $65d4: $36 $18
    dec [hl]                                      ; $65d6: $35
    ld [bc], a                                    ; $65d7: $02
    scf                                           ; $65d8: $37

jr_066_65d9:
    dec h                                         ; $65d9: $25
    dec [hl]                                      ; $65da: $35
    ld [bc], a                                    ; $65db: $02
    jr c, jr_066_6604                             ; $65dc: $38 $26

    ld [hl], $02                                  ; $65de: $36 $02
    add hl, sp                                    ; $65e0: $39
    inc h                                         ; $65e1: $24
    add hl, sp                                    ; $65e2: $39
    rst $38                                       ; $65e3: $ff
    rst $38                                       ; $65e4: $ff
    rst $38                                       ; $65e5: $ff
    xor $65                                       ; $65e6: $ee $65
    daa                                           ; $65e8: $27
    ld l, d                                       ; $65e9: $6a
    rst $10                                       ; $65ea: $d7
    ld l, [hl]                                    ; $65eb: $6e
    ld a, [c]                                     ; $65ec: $f2
    ld l, [hl]                                    ; $65ed: $6e
    cp a                                          ; $65ee: $bf
    dec c                                         ; $65ef: $0d
    dec c                                         ; $65f0: $0d
    dec c                                         ; $65f1: $0d
    ld c, $0e                                     ; $65f2: $0e $0e
    ld c, $fa                                     ; $65f4: $0e $fa
    ld [$2e4d], a                                 ; $65f6: $ea $4d $2e
    ldh a, [$e1]                                  ; $65f9: $f0 $e1
    ld c, $0e                                     ; $65fb: $0e $0e
    ld c, l                                       ; $65fd: $4d
    ld hl, sp-$20                                 ; $65fe: $f8 $e0
    ld c, l                                       ; $6600: $4d
    db $e3                                        ; $6601: $e3
    ldh [$f4], a                                  ; $6602: $e0 $f4

jr_066_6604:
    db $eb                                        ; $6604: $eb
    nop                                           ; $6605: $00
    ret nc                                        ; $6606: $d0

    rst $28                                       ; $6607: $ef
    db $fd                                        ; $6608: $fd
    xor $eb                                       ; $6609: $ee $eb
    db $e4                                        ; $660b: $e4
    ret nz                                        ; $660c: $c0

    ld [c], a                                     ; $660d: $e2
    or h                                          ; $660e: $b4
    pop hl                                        ; $660f: $e1
    db $fc                                        ; $6610: $fc
    db $e4                                        ; $6611: $e4
    db $e3                                        ; $6612: $e3
    ld [$f9fa], a                                 ; $6613: $ea $fa $f9
    ld a, $6d                                     ; $6616: $3e $6d
    ld [c], a                                     ; $6618: $e2
    dec c                                         ; $6619: $0d
    dec c                                         ; $661a: $0d
    ld c, l                                       ; $661b: $4d
    ld c, l                                       ; $661c: $4d
    ld c, l                                       ; $661d: $4d
    db $fc                                        ; $661e: $fc
    pop hl                                        ; $661f: $e1
    db $fd                                        ; $6620: $fd
    db $e3                                        ; $6621: $e3
    pop bc                                        ; $6622: $c1
    dec l                                         ; $6623: $2d
    halt                                          ; $6624: $76
    and $d0                                       ; $6625: $e6 $d0
    db $f4                                        ; $6627: $f4
    dec a                                         ; $6628: $3d
    rst $20                                       ; $6629: $e7
    ld l, e                                       ; $662a: $6b
    db $e3                                        ; $662b: $e3
    call nz, Call_000_0de1                        ; $662c: $c4 $e1 $0d
    ld l, l                                       ; $662f: $6d
    rst $38                                       ; $6630: $ff
    ld l, e                                       ; $6631: $6b
    inc l                                         ; $6632: $2c
    inc c                                         ; $6633: $0c
    inc c                                         ; $6634: $0c
    inc l                                         ; $6635: $2c
    inc l                                         ; $6636: $2c
    ld l, e                                       ; $6637: $6b
    ld l, e                                       ; $6638: $6b
    ld [c], a                                     ; $6639: $e2
    or e                                          ; $663a: $b3
    ldh [$2d], a                                  ; $663b: $e0 $2d
    ret nc                                        ; $663d: $d0

    di                                            ; $663e: $f3
    add e                                         ; $663f: $83
    rst $28                                       ; $6640: $ef
    ld b, h                                       ; $6641: $44
    db $e3                                        ; $6642: $e3
    dec c                                         ; $6643: $0d
    ld l, l                                       ; $6644: $6d
    dec bc                                        ; $6645: $0b
    rst $20                                       ; $6646: $e7
    ld l, e                                       ; $6647: $6b
    ld l, e                                       ; $6648: $6b
    ld l, e                                       ; $6649: $6b
    jp nz, $bfe1                                  ; $664a: $c2 $e1 $bf

    pop hl                                        ; $664d: $e1
    dec c                                         ; $664e: $0d
    ld l, e                                       ; $664f: $6b
    ld l, e                                       ; $6650: $6b
    add hl, sp                                    ; $6651: $39
    dec l                                         ; $6652: $2d
    inc de                                        ; $6653: $13
    di                                            ; $6654: $f3
    ret nz                                        ; $6655: $c0

    push af                                       ; $6656: $f5
    ld c, l                                       ; $6657: $4d
    dec bc                                        ; $6658: $0b
    dec c                                         ; $6659: $0d
    jp nz, $fee0                                  ; $665a: $c2 $e0 $fe

    db $e3                                        ; $665d: $e3
    ld c, $7e                                     ; $665e: $0e $7e
    pop hl                                        ; $6660: $e1
    ld l, e                                       ; $6661: $6b
    ld c, l                                       ; $6662: $4d
    dec l                                         ; $6663: $2d
    db $d3                                        ; $6664: $d3
    db $d3                                        ; $6665: $d3
    or b                                          ; $6666: $b0
    ret nc                                        ; $6667: $d0

    inc b                                         ; $6668: $04
    ldh [$81], a                                  ; $6669: $e0 $81
    ldh [$8d], a                                  ; $666b: $e0 $8d
    dec c                                         ; $666d: $0d
    pop bc                                        ; $666e: $c1
    ldh [$6c], a                                  ; $666f: $e0 $6c
    ld c, h                                       ; $6671: $4c
    rst $38                                       ; $6672: $ff
    ldh [$3d], a                                  ; $6673: $e0 $3d
    ldh [$7f], a                                  ; $6675: $e0 $7f
    ld [c], a                                     ; $6677: $e2
    ld c, l                                       ; $6678: $4d
    ldh a, [$e7]                                  ; $6679: $f0 $e7
    call nz, $df80                                ; $667b: $c4 $80 $df
    ld c, b                                       ; $667e: $48
    ret nz                                        ; $667f: $c0

    ld b, e                                       ; $6680: $43
    ldh [rOCPD], a                                ; $6681: $e0 $6b
    ld c, h                                       ; $6683: $4c
    ld c, h                                       ; $6684: $4c
    ld l, h                                       ; $6685: $6c
    rlca                                          ; $6686: $07
    dec bc                                        ; $6687: $0b
    dec bc                                        ; $6688: $0b
    dec hl                                        ; $6689: $2b
    cp a                                          ; $668a: $bf
    ldh [$c0], a                                  ; $668b: $e0 $c0
    db $e4                                        ; $668d: $e4
    add d                                         ; $668e: $82
    rst $18                                       ; $668f: $df
    ld b, a                                       ; $6690: $47
    jp $c104                                      ; $6691: $c3 $04 $c1


    sbc l                                         ; $6694: $9d
    dec l                                         ; $6695: $2d
    set 0, b                                      ; $6696: $cb $c0
    ld l, e                                       ; $6698: $6b
    dec hl                                        ; $6699: $2b
    dec bc                                        ; $669a: $0b
    rst $38                                       ; $669b: $ff
    pop hl                                        ; $669c: $e1
    ld a, c                                       ; $669d: $79
    ldh [$6c], a                                  ; $669e: $e0 $6c
    ldh [$f4], a                                  ; $66a0: $e0 $f4
    ret nz                                        ; $66a2: $c0

    ret nz                                        ; $66a3: $c0

    or $ed                                        ; $66a4: $f6 $ed
    or d                                          ; $66a6: $b2
    adc $c0                                       ; $66a7: $ce $c0
    set 0, b                                      ; $66a9: $cb $c0
    ld c, e                                       ; $66ab: $4b
    ld c, e                                       ; $66ac: $4b
    dec bc                                        ; $66ad: $0b
    dec de                                        ; $66ae: $1b
    dec bc                                        ; $66af: $0b
    ld c, e                                       ; $66b0: $4b
    pop bc                                        ; $66b1: $c1
    db $e3                                        ; $66b2: $e3
    dec c                                         ; $66b3: $0d
    ld l, l                                       ; $66b4: $6d
    xor b                                         ; $66b5: $a8
    and h                                         ; $66b6: $a4
    add b                                         ; $66b7: $80
    db $db                                        ; $66b8: $db
    adc $a2                                       ; $66b9: $ce $a2
    nop                                           ; $66bb: $00
    adc d                                         ; $66bc: $8a
    and c                                         ; $66bd: $a1
    ccf                                           ; $66be: $3f
    pop hl                                        ; $66bf: $e1
    cp a                                          ; $66c0: $bf
    pop hl                                        ; $66c1: $e1
    ld a, h                                       ; $66c2: $7c
    pop bc                                        ; $66c3: $c1
    ld bc, $00e3                                  ; $66c4: $01 $e3 $00
    ldh [rSCX], a                                 ; $66c7: $e0 $43
    rst $38                                       ; $66c9: $ff
    ld a, e                                       ; $66ca: $7b
    and [hl]                                      ; $66cb: $a6
    ld b, $c0                                     ; $66cc: $06 $c0
    db $e3                                        ; $66ce: $e3
    dec bc                                        ; $66cf: $0b
    dec hl                                        ; $66d0: $2b
    ld b, c                                       ; $66d1: $41
    pop hl                                        ; $66d2: $e1
    ld b, b                                       ; $66d3: $40
    jp $b0c5                                      ; $66d4: $c3 $c5 $b0


    di                                            ; $66d7: $f3
    xor [hl]                                      ; $66d8: $ae
    add d                                         ; $66d9: $82
    push hl                                       ; $66da: $e5
    inc l                                         ; $66db: $2c
    push bc                                       ; $66dc: $c5
    and b                                         ; $66dd: $a0
    dec bc                                        ; $66de: $0b
    pop bc                                        ; $66df: $c1
    dec hl                                        ; $66e0: $2b
    dec hl                                        ; $66e1: $2b
    ret nz                                        ; $66e2: $c0

    ldh [$6c], a                                  ; $66e3: $e0 $6c
    ld b, c                                       ; $66e5: $41
    pop bc                                        ; $66e6: $c1
    ret nz                                        ; $66e7: $c0

    db $e3                                        ; $66e8: $e3
    ld l, b                                       ; $66e9: $68
    ld h, [hl]                                    ; $66ea: $66
    pop bc                                        ; $66eb: $c1
    add b                                         ; $66ec: $80
    jp c, $e502                                   ; $66ed: $da $02 $e5

    ld c, l                                       ; $66f0: $4d
    ld c, $e1                                     ; $66f1: $0e $e1
    ld l, e                                       ; $66f3: $6b
    ld c, e                                       ; $66f4: $4b
    ret nz                                        ; $66f5: $c0

    pop hl                                        ; $66f6: $e1
    ld b, c                                       ; $66f7: $41
    ld c, h                                       ; $66f8: $4c
    jp $c0c1                                      ; $66f9: $c3 $c1 $c0


    and b                                         ; $66fc: $a0
    and e                                         ; $66fd: $a3
    add $04                                       ; $66fe: $c6 $04
    cp a                                          ; $6700: $bf
    ld b, [hl]                                    ; $6701: $46
    and c                                         ; $6702: $a1
    ld c, e                                       ; $6703: $4b
    dec b                                         ; $6704: $05
    ldh [rP1], a                                  ; $6705: $e0 $00
    ret nz                                        ; $6707: $c0

    ld [c], a                                     ; $6708: $e2
    rst $30                                       ; $6709: $f7
    ldh [$32], a                                  ; $670a: $e0 $32
    pop bc                                        ; $670c: $c1
    ld b, b                                       ; $670d: $40
    and b                                         ; $670e: $a0
    nop                                           ; $670f: $00
    cp a                                          ; $6710: $bf
    add h                                         ; $6711: $84
    add e                                         ; $6712: $83
    ld d, l                                       ; $6713: $55
    and b                                         ; $6714: $a0
    add l                                         ; $6715: $85
    pop bc                                        ; $6716: $c1
    add d                                         ; $6717: $82
    ret nz                                        ; $6718: $c0

    ldh [$0b], a                                  ; $6719: $e0 $0b
    ccf                                           ; $671b: $3f
    ldh [rPCM12], a                               ; $671c: $e0 $76
    ld [c], a                                     ; $671e: $e2
    add c                                         ; $671f: $81
    ret nz                                        ; $6720: $c0

    nop                                           ; $6721: $00
    cp a                                          ; $6722: $bf
    add c                                         ; $6723: $81
    add l                                         ; $6724: $85
    dec l                                         ; $6725: $2d
    add b                                         ; $6726: $80
    ld [bc], a                                    ; $6727: $02
    pop hl                                        ; $6728: $e1
    add [hl]                                      ; $6729: $86
    ret nz                                        ; $672a: $c0

    ld bc, $c0e1                                  ; $672b: $01 $e1 $c0
    ld [c], a                                     ; $672e: $e2
    ld [bc], a                                    ; $672f: $02
    jp nz, $d3c0                                  ; $6730: $c2 $c0 $d3

    rst $38                                       ; $6733: $ff
    ld [hl], c                                    ; $6734: $71
    dec l                                         ; $6735: $2d
    cp $06                                        ; $6736: $fe $06
    ldh [$0d], a                                  ; $6738: $e0 $0d
    ld l, e                                       ; $673a: $6b
    dec c                                         ; $673b: $0d
    ld c, e                                       ; $673c: $4b
    dec c                                         ; $673d: $0d
    dec hl                                        ; $673e: $2b
    dec bc                                        ; $673f: $0b
    rrca                                          ; $6740: $0f
    dec hl                                        ; $6741: $2b
    ld l, e                                       ; $6742: $6b
    dec bc                                        ; $6743: $0b
    dec bc                                        ; $6744: $0b
    jp nz, $8281                                  ; $6745: $c2 $81 $82

    and d                                         ; $6748: $a2
    add b                                         ; $6749: $80
    rst $18                                       ; $674a: $df
    ld [hl], a                                    ; $674b: $77
    ld h, e                                       ; $674c: $63
    db $e4                                        ; $674d: $e4
    ld b, d                                       ; $674e: $42
    and b                                         ; $674f: $a0
    sub a                                         ; $6750: $97
    ld h, d                                       ; $6751: $62
    dec c                                         ; $6752: $0d
    ld b, d                                       ; $6753: $42
    ld [c], a                                     ; $6754: $e2
    ret nz                                        ; $6755: $c0

    pop hl                                        ; $6756: $e1
    dec bc                                        ; $6757: $0b
    dec c                                         ; $6758: $0d
    ld l, l                                       ; $6759: $6d
    and h                                         ; $675a: $a4
    db $e3                                        ; $675b: $e3
    push hl                                       ; $675c: $e5
    add b                                         ; $675d: $80
    rst $18                                       ; $675e: $df
    ld c, $c3                                     ; $675f: $0e $c3
    add c                                         ; $6761: $81
    ld d, [hl]                                    ; $6762: $56
    ld h, c                                       ; $6763: $61
    ld c, e                                       ; $6764: $4b
    add b                                         ; $6765: $80
    pop hl                                        ; $6766: $e1
    ld l, e                                       ; $6767: $6b
    rra                                           ; $6768: $1f
    ld c, e                                       ; $6769: $4b
    ld l, e                                       ; $676a: $6b
    ld a, [bc]                                    ; $676b: $0a
    ld a, [bc]                                    ; $676c: $0a
    dec bc                                        ; $676d: $0b
    ld [bc], a                                    ; $676e: $02
    add h                                         ; $676f: $84
    cp a                                          ; $6770: $bf
    cp [hl]                                       ; $6771: $be
    inc c                                         ; $6772: $0c
    ld h, d                                       ; $6773: $62
    adc e                                         ; $6774: $8b
    dec c                                         ; $6775: $0d
    dec bc                                        ; $6776: $0b
    ret nz                                        ; $6777: $c0

    ldh [$2b], a                                  ; $6778: $e0 $2b
    add c                                         ; $677a: $81
    ldh [$c1], a                                  ; $677b: $e0 $c1
    ret nz                                        ; $677d: $c0

    cp h                                          ; $677e: $bc
    ret nz                                        ; $677f: $c0

    dec bc                                        ; $6780: $0b
    add e                                         ; $6781: $83
    ld a, [bc]                                    ; $6782: $0a
    ld a, [bc]                                    ; $6783: $0a
    jp nz, Jump_066_6ac1                          ; $6784: $c2 $c1 $6a

    ld h, d                                       ; $6787: $62
    nop                                           ; $6788: $00
    cp b                                          ; $6789: $b8
    and c                                         ; $678a: $a1
    add l                                         ; $678b: $85
    push bc                                       ; $678c: $c5
    ld h, c                                       ; $678d: $61
    dec bc                                        ; $678e: $0b
    rrca                                          ; $678f: $0f
    dec c                                         ; $6790: $0d
    dec hl                                        ; $6791: $2b
    ld a, [bc]                                    ; $6792: $0a
    ld l, d                                       ; $6793: $6a
    ret nz                                        ; $6794: $c0

    ld [c], a                                     ; $6795: $e2
    cp [hl]                                       ; $6796: $be
    add b                                         ; $6797: $80
    or c                                          ; $6798: $b1
    ldh [rSCY], a                                 ; $6799: $e0 $42
    pop hl                                        ; $679b: $e1
    and b                                         ; $679c: $a0
    and d                                         ; $679d: $a2
    ld h, [hl]                                    ; $679e: $66
    add b                                         ; $679f: $80
    ld [hl], h                                    ; $67a0: $74
    ld h, c                                       ; $67a1: $61
    add e                                         ; $67a2: $83
    inc c                                         ; $67a3: $0c
    ld h, b                                       ; $67a4: $60
    inc d                                         ; $67a5: $14
    ldh [rKEY1], a                                ; $67a6: $e0 $4d
    adc h                                         ; $67a8: $8c
    ldh [$0a], a                                  ; $67a9: $e0 $0a
    ld [bc], a                                    ; $67ab: $02
    ld b, h                                       ; $67ac: $44
    add b                                         ; $67ad: $80
    dec hl                                        ; $67ae: $2b
    ld a, l                                       ; $67af: $7d
    add c                                         ; $67b0: $81
    ret nz                                        ; $67b1: $c0

    ld [c], a                                     ; $67b2: $e2
    dec b                                         ; $67b3: $05
    and $49                                       ; $67b4: $e6 $49
    sbc c                                         ; $67b6: $99
    ld b, $64                                     ; $67b7: $06 $64
    inc l                                         ; $67b9: $2c
    ld b, b                                       ; $67ba: $40
    rst $18                                       ; $67bb: $df
    dec bc                                        ; $67bc: $0b
    dec hl                                        ; $67bd: $2b
    ld a, [bc]                                    ; $67be: $0a
    ld a, [bc]                                    ; $67bf: $0a
    dec hl                                        ; $67c0: $2b
    add c                                         ; $67c1: $81
    and b                                         ; $67c2: $a0
    dec bc                                        ; $67c3: $0b
    ld a, [bc]                                    ; $67c4: $0a
    add c                                         ; $67c5: $81
    ld c, d                                       ; $67c6: $4a
    inc a                                         ; $67c7: $3c
    add c                                         ; $67c8: $81
    add h                                         ; $67c9: $84
    ld [hl], e                                    ; $67ca: $73
    jp Jump_066_504f                              ; $67cb: $c3 $4f $50


    ld b, d                                       ; $67ce: $42
    sub e                                         ; $67cf: $93
    pop hl                                        ; $67d0: $e1
    pop bc                                        ; $67d1: $c1
    ldh [$2a], a                                  ; $67d2: $e0 $2a
    ld [bc], a                                    ; $67d4: $02
    ld b, d                                       ; $67d5: $42
    jp nz, $c04a                                  ; $67d6: $c2 $4a $c0

    ld [c], a                                     ; $67d9: $e2
    add d                                         ; $67da: $82
    jp nz, $22e8                                  ; $67db: $c2 $e8 $22

    nop                                           ; $67de: $00
    ld e, d                                       ; $67df: $5a
    add d                                         ; $67e0: $82
    call nz, Call_000_20ac                        ; $67e1: $c4 $ac $20
    scf                                           ; $67e4: $37
    ld l, e                                       ; $67e5: $6b
    ld a, [bc]                                    ; $67e6: $0a
    ld a, [hl+]                                   ; $67e7: $2a
    dec b                                         ; $67e8: $05
    add b                                         ; $67e9: $80
    dec bc                                        ; $67ea: $0b
    ld l, e                                       ; $67eb: $6b
    ld a, c                                       ; $67ec: $79
    ldh [rIE], a                                  ; $67ed: $e0 $ff
    pop bc                                        ; $67ef: $c1
    ret nz                                        ; $67f0: $c0

    add d                                         ; $67f1: $82
    ld b, a                                       ; $67f2: $47
    dec a                                         ; $67f3: $3d
    db $fd                                        ; $67f4: $fd
    dec bc                                        ; $67f5: $0b
    ld b, b                                       ; $67f6: $40
    sub [hl]                                      ; $67f7: $96
    ld b, b                                       ; $67f8: $40
    add $a0                                       ; $67f9: $c6 $a0
    add l                                         ; $67fb: $85
    ld h, d                                       ; $67fc: $62
    ld l, e                                       ; $67fd: $6b
    ld l, e                                       ; $67fe: $6b
    ld bc, $3f4a                                  ; $67ff: $01 $4a $3f
    ldh [$bf], a                                  ; $6802: $e0 $bf
    pop bc                                        ; $6804: $c1
    halt                                          ; $6805: $76
    dec h                                         ; $6806: $25
    ld c, a                                       ; $6807: $4f
    or d                                          ; $6808: $b2
    dec a                                         ; $6809: $3d
    inc hl                                        ; $680a: $23
    db $e3                                        ; $680b: $e3
    add h                                         ; $680c: $84
    ld b, d                                       ; $680d: $42
    ret nz                                        ; $680e: $c0

    ld b, [hl]                                    ; $680f: $46
    ld a, [bc]                                    ; $6810: $0a
    ld h, b                                       ; $6811: $60
    ld c, e                                       ; $6812: $4b
    dec c                                         ; $6813: $0d
    ret z                                         ; $6814: $c8

    add c                                         ; $6815: $81
    cp c                                          ; $6816: $b9
    pop bc                                        ; $6817: $c1
    cp b                                          ; $6818: $b8
    ret nz                                        ; $6819: $c0

    dec bc                                        ; $681a: $0b
    ld a, a                                       ; $681b: $7f
    ldh [$80], a                                  ; $681c: $e0 $80
    rst $00                                       ; $681e: $c7
    daa                                           ; $681f: $27
    nop                                           ; $6820: $00
    ld d, h                                       ; $6821: $54
    dec c                                         ; $6822: $0d
    ld [hl+], a                                   ; $6823: $22
    inc b                                         ; $6824: $04
    ld hl, $620b                                  ; $6825: $21 $0b $62
    ret nz                                        ; $6828: $c0

    db $e3                                        ; $6829: $e3
    cp d                                          ; $682a: $ba
    ret nz                                        ; $682b: $c0

    ld a, [bc]                                    ; $682c: $0a
    jr nz, jr_066_6867                            ; $682d: $20 $38

    pop hl                                        ; $682f: $e1
    ld a, $c1                                     ; $6830: $3e $c1
    ldh a, [rSB]                                  ; $6832: $f0 $01
    ret                                           ; $6834: $c9


    ld e, l                                       ; $6835: $5d
    ld [$2d22], sp                                ; $6836: $08 $22 $2d
    ret nz                                        ; $6839: $c0

    ld [c], a                                     ; $683a: $e2
    dec b                                         ; $683b: $05
    ld h, b                                       ; $683c: $60
    ld b, h                                       ; $683d: $44
    add b                                         ; $683e: $80
    and b                                         ; $683f: $a0
    add hl, sp                                    ; $6840: $39
    pop bc                                        ; $6841: $c1
    dec c                                         ; $6842: $0d
    cp $a9                                        ; $6843: $fe $a9
    ld b, e                                       ; $6845: $43
    ld a, [hl-]                                   ; $6846: $3a
    jp nc, Jump_066_4d02                          ; $6847: $d2 $02 $4d

    ccf                                           ; $684a: $3f
    ld [c], a                                     ; $684b: $e2
    ld [bc], a                                    ; $684c: $02
    ld bc, $4b80                                  ; $684d: $01 $80 $4b
    ret nz                                        ; $6850: $c0

    db $e3                                        ; $6851: $e3
    ld sp, $00c2                                  ; $6852: $31 $c2 $00
    cp a                                          ; $6855: $bf
    ld [bc], a                                    ; $6856: $02
    xor c                                         ; $6857: $a9
    adc h                                         ; $6858: $8c
    add b                                         ; $6859: $80
    ret nz                                        ; $685a: $c0

    db $e4                                        ; $685b: $e4
    dec c                                         ; $685c: $0d
    ld l, e                                       ; $685d: $6b
    pop bc                                        ; $685e: $c1
    ld [c], a                                     ; $685f: $e2
    dec c                                         ; $6860: $0d
    ld c, e                                       ; $6861: $4b
    cp a                                          ; $6862: $bf
    and b                                         ; $6863: $a0
    nop                                           ; $6864: $00
    cp a                                          ; $6865: $bf
    add e                                         ; $6866: $83

jr_066_6867:
    pop hl                                        ; $6867: $e1
    xor $40                                       ; $6868: $ee $40
    nop                                           ; $686a: $00
    sub b                                         ; $686b: $90
    ld h, b                                       ; $686c: $60
    add l                                         ; $686d: $85
    ld h, b                                       ; $686e: $60
    ld a, a                                       ; $686f: $7f
    ld [c], a                                     ; $6870: $e2
    rst $30                                       ; $6871: $f7
    add c                                         ; $6872: $81
    or [hl]                                       ; $6873: $b6
    add d                                         ; $6874: $82
    jp nz, Jump_000_3440                          ; $6875: $c2 $40 $34

    ld [bc], a                                    ; $6878: $02
    nop                                           ; $6879: $00
    cp a                                          ; $687a: $bf
    nop                                           ; $687b: $00
    ret nz                                        ; $687c: $c0

    db $e3                                        ; $687d: $e3
    cp a                                          ; $687e: $bf
    db $e4                                        ; $687f: $e4
    inc bc                                        ; $6880: $03
    and c                                         ; $6881: $a1
    halt                                          ; $6882: $76
    add d                                         ; $6883: $82
    add b                                         ; $6884: $80
    call nz, $bf00                                ; $6885: $c4 $00 $bf
    ld d, [hl]                                    ; $6888: $56
    ld bc, $c405                                  ; $6889: $01 $05 $c4
    ld a, [bc]                                    ; $688c: $0a
    cp $c3                                        ; $688d: $fe $c3
    dec hl                                        ; $688f: $2b
    ret nz                                        ; $6890: $c0

    pop bc                                        ; $6891: $c1
    ld c, e                                       ; $6892: $4b
    cp a                                          ; $6893: $bf
    ldh [rP1], a                                  ; $6894: $e0 $00
    cp a                                          ; $6896: $bf
    add b                                         ; $6897: $80
    add l                                         ; $6898: $85
    adc c                                         ; $6899: $89
    db $e3                                        ; $689a: $e3
    nop                                           ; $689b: $00
    cp [hl]                                       ; $689c: $be
    db $e4                                        ; $689d: $e4
    ld a, c                                       ; $689e: $79
    and c                                         ; $689f: $a1
    or e                                          ; $68a0: $b3
    pop bc                                        ; $68a1: $c1
    nop                                           ; $68a2: $00
    ld h, a                                       ; $68a3: $67
    nop                                           ; $68a4: $00
    cp h                                          ; $68a5: $bc
    ld a, a                                       ; $68a6: $7f
    pop hl                                        ; $68a7: $e1
    add $a0                                       ; $68a8: $c6 $a0
    cp e                                          ; $68aa: $bb
    ret z                                         ; $68ab: $c8

    ld [bc], a                                    ; $68ac: $02
    ld a, $80                                     ; $68ad: $3e $80
    ld c, e                                       ; $68af: $4b
    ld l, e                                       ; $68b0: $6b
    add c                                         ; $68b1: $81
    nop                                           ; $68b2: $00
    ld e, [hl]                                    ; $68b3: $5e
    inc b                                         ; $68b4: $04
    dec h                                         ; $68b5: $25
    push bc                                       ; $68b6: $c5
    jp nz, $807c                                  ; $68b7: $c2 $7c $80

    ld a, [hl-]                                   ; $68ba: $3a
    jp nz, $fe00                                  ; $68bb: $c2 $00 $fe

    ld h, c                                       ; $68be: $61
    add c                                         ; $68bf: $81
    ldh [$80], a                                  ; $68c0: $e0 $80
    and h                                         ; $68c2: $a4
    nop                                           ; $68c3: $00
    ld e, d                                       ; $68c4: $5a
    nop                                           ; $68c5: $00
    and d                                         ; $68c6: $a2
    cp [hl]                                       ; $68c7: $be
    and c                                         ; $68c8: $a1
    add $c3                                       ; $68c9: $c6 $c3
    db $fd                                        ; $68cb: $fd
    jp $be00                                      ; $68cc: $c3 $00 $be


    ld b, b                                       ; $68cf: $40
    db $fc                                        ; $68d0: $fc
    jr nz, @-$3c                                  ; $68d1: $20 $c2

    dec b                                         ; $68d3: $05
    nop                                           ; $68d4: $00
    ld e, a                                       ; $68d5: $5f
    ld d, [hl]                                    ; $68d6: $56
    add c                                         ; $68d7: $81
    cp a                                          ; $68d8: $bf
    ld [c], a                                     ; $68d9: $e2
    cp e                                          ; $68da: $bb
    and [hl]                                      ; $68db: $a6
    ld sp, $00a1                                  ; $68dc: $31 $a1 $00
    ld a, [hl]                                    ; $68df: $7e
    add a                                         ; $68e0: $87
    nop                                           ; $68e1: $00
    ld e, a                                       ; $68e2: $5f
    cp $42                                        ; $68e3: $fe $42
    cp e                                          ; $68e5: $bb
    add c                                         ; $68e6: $81
    push bc                                       ; $68e7: $c5
    db $e3                                        ; $68e8: $e3
    dec [hl]                                      ; $68e9: $35
    ldh [$73], a                                  ; $68ea: $e0 $73
    jr nz, @-$3e                                  ; $68ec: $20 $c0

    inc d                                         ; $68ee: $14
    nop                                           ; $68ef: $00
    cp c                                          ; $68f0: $b9
    or h                                          ; $68f1: $b4
    db $fc                                        ; $68f2: $fc
    add b                                         ; $68f3: $80
    ld a, h                                       ; $68f4: $7c
    ld h, b                                       ; $68f5: $60
    ld a, e                                       ; $68f6: $7b
    db $e4                                        ; $68f7: $e4
    cp $41                                        ; $68f8: $fe $41
    ld a, [hl]                                    ; $68fa: $7e
    ld b, l                                       ; $68fb: $45

Call_066_68fc:
    nop                                           ; $68fc: $00
    ld e, a                                       ; $68fd: $5f
    db $fc                                        ; $68fe: $fc
    add l                                         ; $68ff: $85
    nop                                           ; $6900: $00
    ret nz                                        ; $6901: $c0

    pop bc                                        ; $6902: $c1
    rst $30                                       ; $6903: $f7
    add l                                         ; $6904: $85
    ei                                            ; $6905: $fb
    nop                                           ; $6906: $00
    ret nz                                        ; $6907: $c0

    nop                                           ; $6908: $00
    ld a, l                                       ; $6909: $7d
    and e                                         ; $690a: $a3
    nop                                           ; $690b: $00
    ld e, a                                       ; $690c: $5f
    ld a, [hl+]                                   ; $690d: $2a
    ld bc, $e606                                  ; $690e: $01 $06 $e6
    jr nz, @-$47                                  ; $6911: $20 $b7

    nop                                           ; $6913: $00
    push af                                       ; $6914: $f5
    ld h, d                                       ; $6915: $62
    nop                                           ; $6916: $00
    ld [hl+], a                                   ; $6917: $22
    nop                                           ; $6918: $00
    ld e, [hl]                                    ; $6919: $5e
    sbc d                                         ; $691a: $9a
    ld h, l                                       ; $691b: $65
    ld l, l                                       ; $691c: $6d
    add $c7                                       ; $691d: $c6 $c7
    push af                                       ; $691f: $f5
    ld h, c                                       ; $6920: $61
    ld hl, $400b                                  ; $6921: $21 $0b $40
    ret nz                                        ; $6924: $c0

    ld a, [hl]                                    ; $6925: $7e
    ld h, c                                       ; $6926: $61
    ld b, d                                       ; $6927: $42
    ld [de], a                                    ; $6928: $12
    or b                                          ; $6929: $b0
    ld [hl], b                                    ; $692a: $70
    ld c, l                                       ; $692b: $4d
    db $fc                                        ; $692c: $fc
    add d                                         ; $692d: $82
    jp nz, Jump_000_00c4                          ; $692e: $c2 $c4 $00

    ld b, b                                       ; $6931: $40
    jp Jump_066_43e4                              ; $6932: $c3 $e4 $43


    nop                                           ; $6935: $00
    ld e, b                                       ; $6936: $58
    sbc $27                                       ; $6937: $de $27
    db $fc                                        ; $6939: $fc
    add b                                         ; $693a: $80
    ld b, h                                       ; $693b: $44
    ld h, c                                       ; $693c: $61
    cp $43                                        ; $693d: $fe $43
    jp nz, Jump_000_20a2                          ; $693f: $c2 $a2 $20

    add c                                         ; $6942: $81
    and c                                         ; $6943: $a1
    ld h, $41                                     ; $6944: $26 $41
    add h                                         ; $6946: $84
    rst $18                                       ; $6947: $df
    or a                                          ; $6948: $b7
    and h                                         ; $6949: $a4
    cp [hl]                                       ; $694a: $be
    and b                                         ; $694b: $a0
    ld c, e                                       ; $694c: $4b
    call nz, Call_066_41e1                        ; $694d: $c4 $e1 $41
    ldh [rP1], a                                  ; $6950: $e0 $00
    ld b, d                                       ; $6952: $42
    call nz, Call_066_7f80                        ; $6953: $c4 $80 $7f
    and b                                         ; $6956: $a0
    add h                                         ; $6957: $84
    ld a, [hl]                                    ; $6958: $7e
    jp $a286                                      ; $6959: $c3 $86 $a2


    cp l                                          ; $695c: $bd
    ldh [$83], a                                  ; $695d: $e0 $83
    jp $8040                                      ; $695f: $c3 $40 $80


    nop                                           ; $6962: $00
    db $e3                                        ; $6963: $e3
    jr nz, jr_066_69c8                            ; $6964: $20 $62

    inc hl                                        ; $6966: $23
    nop                                           ; $6967: $00
    cp a                                          ; $6968: $bf
    ld a, [hl-]                                   ; $6969: $3a
    ld b, c                                       ; $696a: $41
    ei                                            ; $696b: $fb
    ld h, e                                       ; $696c: $63
    add hl, sp                                    ; $696d: $39
    ld h, e                                       ; $696e: $63
    ld [hl], l                                    ; $696f: $75
    ld b, c                                       ; $6970: $41
    cp $05                                        ; $6971: $fe $05
    nop                                           ; $6973: $00
    cp e                                          ; $6974: $bb
    cp d                                          ; $6975: $ba
    inc e                                         ; $6976: $1c
    ld b, l                                       ; $6977: $45
    db $fd                                        ; $6978: $fd
    nop                                           ; $6979: $00
    ld c, d                                       ; $697a: $4a
    jp Jump_066_637a                              ; $697b: $c3 $7a $63


    ret nz                                        ; $697e: $c0

    push hl                                       ; $697f: $e5
    ld a, [hl]                                    ; $6980: $7e
    ld [c], a                                     ; $6981: $e2
    add b                                         ; $6982: $80
    rst $18                                       ; $6983: $df
    nop                                           ; $6984: $00
    ret nz                                        ; $6985: $c0

    pop hl                                        ; $6986: $e1
    call nz, $bbe6                                ; $6987: $c4 $e6 $bb
    push hl                                       ; $698a: $e5
    nop                                           ; $698b: $00
    cp a                                          ; $698c: $bf
    nop                                           ; $698d: $00
    xor c                                         ; $698e: $a9
    ld bc, $79c2                                  ; $698f: $01 $c2 $79
    ld b, [hl]                                    ; $6992: $46
    ld [hl], h                                    ; $6993: $74
    ld b, d                                       ; $6994: $42
    nop                                           ; $6995: $00
    ld a, [hl]                                    ; $6996: $7e
    ld [hl+], a                                   ; $6997: $22
    rst $38                                       ; $6998: $ff
    rst $38                                       ; $6999: $ff
    ld [bc], a                                    ; $699a: $02
    push hl                                       ; $699b: $e5
    ld bc, $3b81                                  ; $699c: $01 $81 $3b
    inc h                                         ; $699f: $24
    ld a, $c3                                     ; $69a0: $3e $c3
    add b                                         ; $69a2: $80
    ld a, a                                       ; $69a3: $7f
    nop                                           ; $69a4: $00
    and [hl]                                      ; $69a5: $a6
    add b                                         ; $69a6: $80
    ld b, c                                       ; $69a7: $41
    pop hl                                        ; $69a8: $e1
    ld bc, $34a5                                  ; $69a9: $01 $a5 $34
    ld hl, $e5c0                                  ; $69ac: $21 $c0 $e5
    add d                                         ; $69af: $82
    ret nz                                        ; $69b0: $c0

    nop                                           ; $69b1: $00
    cp a                                          ; $69b2: $bf
    add d                                         ; $69b3: $82
    jp nz, $802d                                  ; $69b4: $c2 $2d $80

    add e                                         ; $69b7: $83
    ld bc, $e7c0                                  ; $69b8: $01 $c0 $e7
    ld [hl], d                                    ; $69bb: $72
    jr nz, jr_066_69be                            ; $69bc: $20 $00

jr_066_69be:
    cp a                                          ; $69be: $bf
    nop                                           ; $69bf: $00
    and a                                         ; $69c0: $a7
    nop                                           ; $69c1: $00
    add h                                         ; $69c2: $84
    rlca                                          ; $69c3: $07
    ld h, d                                       ; $69c4: $62
    dec bc                                        ; $69c5: $0b
    ld [bc], a                                    ; $69c6: $02
    ld [hl-], a                                   ; $69c7: $32

jr_066_69c8:
    inc h                                         ; $69c8: $24
    dec l                                         ; $69c9: $2d
    nop                                           ; $69ca: $00
    cp a                                          ; $69cb: $bf
    nop                                           ; $69cc: $00
    and [hl]                                      ; $69cd: $a6
    ld b, c                                       ; $69ce: $41
    adc c                                         ; $69cf: $89
    nop                                           ; $69d0: $00
    push hl                                       ; $69d1: $e5
    nop                                           ; $69d2: $00
    ld h, e                                       ; $69d3: $63
    nop                                           ; $69d4: $00
    cp a                                          ; $69d5: $bf
    add d                                         ; $69d6: $82
    nop                                           ; $69d7: $00
    add h                                         ; $69d8: $84
    dec l                                         ; $69d9: $2d
    nop                                           ; $69da: $00
    db $ed                                        ; $69db: $ed
    nop                                           ; $69dc: $00
    push bc                                       ; $69dd: $c5
    rst $38                                       ; $69de: $ff
    rst $38                                       ; $69df: $ff
    db $fc                                        ; $69e0: $fc
    inc hl                                        ; $69e1: $23

jr_066_69e2:
    db $fc                                        ; $69e2: $fc
    ld [bc], a                                    ; $69e3: $02
    ld l, e                                       ; $69e4: $6b
    ret nz                                        ; $69e5: $c0

    db $fc                                        ; $69e6: $fc
    jr nz, jr_066_69e2                            ; $69e7: $20 $f9

    ld hl, $4241                                  ; $69e9: $21 $41 $42
    add b                                         ; $69ec: $80
    rst $18                                       ; $69ed: $df
    nop                                           ; $69ee: $00
    and a                                         ; $69ef: $a7
    inc de                                        ; $69f0: $13
    ldh [$0d], a                                  ; $69f1: $e0 $0d
    dec l                                         ; $69f3: $2d
    inc de                                        ; $69f4: $13
    dec hl                                        ; $69f5: $2b
    ld l, e                                       ; $69f6: $6b
    rst $38                                       ; $69f7: $ff
    db $e3                                        ; $69f8: $e3
    nop                                           ; $69f9: $00
    ld h, b                                       ; $69fa: $60
    dec c                                         ; $69fb: $0d
    ld [bc], a                                    ; $69fc: $02
    ret nz                                        ; $69fd: $c0

    nop                                           ; $69fe: $00
    pop hl                                        ; $69ff: $e1
    ld h, d                                       ; $6a00: $62
    ld bc, $0000                                  ; $6a01: $01 $00 $00
    cp a                                          ; $6a04: $bf
    cp $83                                        ; $6a05: $fe $83
    sub $e0                                       ; $6a07: $d6 $e0
    cp $e5                                        ; $6a09: $fe $e5
    ld b, h                                       ; $6a0b: $44
    pop bc                                        ; $6a0c: $c1
    nop                                           ; $6a0d: $00
    ld e, a                                       ; $6a0e: $5f
    nop                                           ; $6a0f: $00
    xor b                                         ; $6a10: $a8
    ret nz                                        ; $6a11: $c0

    db $e3                                        ; $6a12: $e3
    nop                                           ; $6a13: $00
    sub d                                         ; $6a14: $92
    add b                                         ; $6a15: $80
    ld a, [$86e1]                                 ; $6a16: $fa $e1 $86
    inc bc                                        ; $6a19: $03
    db $fc                                        ; $6a1a: $fc
    db $e4                                        ; $6a1b: $e4
    nop                                           ; $6a1c: $00
    cp a                                          ; $6a1d: $bf
    or [hl]                                       ; $6a1e: $b6
    ld l, d                                       ; $6a1f: $6a
    jp z, Jump_000_3dd1                           ; $6a20: $ca $d1 $3d

    ld [$0000], a                                 ; $6a23: $ea $00 $00
    nop                                           ; $6a26: $00
    cp a                                          ; $6a27: $bf
    and b                                         ; $6a28: $a0
    and b                                         ; $6a29: $a0
    and b                                         ; $6a2a: $a0
    call c, $dedd                                 ; $6a2b: $dc $dd $de
    ld a, [$d8eb]                                 ; $6a2e: $fa $eb $d8
    rra                                           ; $6a31: $1f
    reti                                          ; $6a32: $d9


    and b                                         ; $6a33: $a0
    and b                                         ; $6a34: $a0
    jp nc, $fcd3                                  ; $6a35: $d2 $d3 $fc

    rst $28                                       ; $6a38: $ef
    add sp, -$1f                                  ; $6a39: $e8 $e1
    ret nc                                        ; $6a3b: $d0

    db $ed                                        ; $6a3c: $ed
    cp a                                          ; $6a3d: $bf
    db $e4                                        ; $6a3e: $e4
    rst $18                                       ; $6a3f: $df
    ldh [$e1], a                                  ; $6a40: $e0 $e1
    ld [c], a                                     ; $6a42: $e2
    db $e3                                        ; $6a43: $e3
    ld a, [$a0ea]                                 ; $6a44: $fa $ea $a0
    rst $38                                       ; $6a47: $ff
    jp c, $d0db                                   ; $6a48: $da $db $d0

    pop de                                        ; $6a4b: $d1
    call nc, $a0d5                                ; $6a4c: $d4 $d5 $a0
    and b                                         ; $6a4f: $a0
    cp $fc                                        ; $6a50: $fe $fc
    db $eb                                        ; $6a52: $eb
    ret nc                                        ; $6a53: $d0

    pop de                                        ; $6a54: $d1
    jp c, $d6db                                   ; $6a55: $da $db $d6

    rst $10                                       ; $6a58: $d7
    and b                                         ; $6a59: $a0
    ld a, [hl]                                    ; $6a5a: $7e
    ret nc                                        ; $6a5b: $d0

    db $ec                                        ; $6a5c: $ec
    ld [$e6e5], a                                 ; $6a5d: $ea $e5 $e6
    rst $20                                       ; $6a60: $e7
    add sp, -$17                                  ; $6a61: $e8 $e9
    ld a, [$58ea]                                 ; $6a63: $fa $ea $58
    ld l, l                                       ; $6a66: $6d
    ldh [$82], a                                  ; $6a67: $e0 $82
    pop hl                                        ; $6a69: $e1
    ld h, [hl]                                    ; $6a6a: $66
    ldh [$9f], a                                  ; $6a6b: $e0 $9f
    sbc l                                         ; $6a6d: $9d
    rst $38                                       ; $6a6e: $ff
    push hl                                       ; $6a6f: $e5
    sbc a                                         ; $6a70: $9f
    ld a, [hl]                                    ; $6a71: $7e
    and $e0                                       ; $6a72: $e6 $e0
    ret nc                                        ; $6a74: $d0

    db $ec                                        ; $6a75: $ec
    ld b, e                                       ; $6a76: $43
    xor $2f                                       ; $6a77: $ee $2f
    ldh [$82], a                                  ; $6a79: $e0 $82
    ld [c], a                                     ; $6a7b: $e2
    call nz, $a2e0                                ; $6a7c: $c4 $e0 $a2
    sbc h                                         ; $6a7f: $9c
    ld b, [hl]                                    ; $6a80: $46
    rst $38                                       ; $6a81: $ff
    dec bc                                        ; $6a82: $0b
    inc bc                                        ; $6a83: $03
    add hl, bc                                    ; $6a84: $09
    inc bc                                        ; $6a85: $03
    dec bc                                        ; $6a86: $0b
    ld b, [hl]                                    ; $6a87: $46
    ld b, [hl]                                    ; $6a88: $46
    xor [hl]                                      ; $6a89: $ae
    rst $00                                       ; $6a8a: $c7
    sbc h                                         ; $6a8b: $9c
    sbc l                                         ; $6a8c: $9d
    sbc a                                         ; $6a8d: $9f
    ld a, [hl]                                    ; $6a8e: $7e
    db $e3                                        ; $6a8f: $e3
    inc de                                        ; $6a90: $13
    db $ed                                        ; $6a91: $ed
    ld b, e                                       ; $6a92: $43
    xor $a0                                       ; $6a93: $ee $a0
    sub $dd                                       ; $6a95: $d6 $dd
    rst $10                                       ; $6a97: $d7
    inc b                                         ; $6a98: $04
    pop hl                                        ; $6a99: $e1
    sbc a                                         ; $6a9a: $9f
    sbc h                                         ; $6a9b: $9c
    ld b, [hl]                                    ; $6a9c: $46
    rst $38                                       ; $6a9d: $ff
    ldh [rSC], a                                  ; $6a9e: $e0 $02
    dec c                                         ; $6aa0: $0d
    rst $38                                       ; $6aa1: $ff
    ld bc, $9800                                  ; $6aa2: $01 $00 $98
    dec c                                         ; $6aa5: $0d
    ld [bc], a                                    ; $6aa6: $02
    ld b, [hl]                                    ; $6aa7: $46
    xor a                                         ; $6aa8: $af
    ld b, [hl]                                    ; $6aa9: $46
    ld h, e                                       ; $6aaa: $63
    ld b, [hl]                                    ; $6aab: $46
    sbc [hl]                                      ; $6aac: $9e
    db $ec                                        ; $6aad: $ec
    pop bc                                        ; $6aae: $c1
    inc de                                        ; $6aaf: $13
    rst $28                                       ; $6ab0: $ef
    ld b, e                                       ; $6ab1: $43
    rst $28                                       ; $6ab2: $ef
    ret c                                         ; $6ab3: $d8

    reti                                          ; $6ab4: $d9


    inc b                                         ; $6ab5: $04
    pop hl                                        ; $6ab6: $e1
    rst $38                                       ; $6ab7: $ff
    sbc [hl]                                      ; $6ab8: $9e
    ld b, [hl]                                    ; $6ab9: $46
    xor [hl]                                      ; $6aba: $ae
    ld b, [hl]                                    ; $6abb: $46
    ld [bc], a                                    ; $6abc: $02
    rlca                                          ; $6abd: $07
    rrca                                          ; $6abe: $0f
    sbc b                                         ; $6abf: $98
    cp a                                          ; $6ac0: $bf

Jump_066_6ac1:
    sbc c                                         ; $6ac1: $99
    sbc b                                         ; $6ac2: $98
    sbc b                                         ; $6ac3: $98
    sbc b                                         ; $6ac4: $98
    ld c, $0c                                     ; $6ac5: $0e $0c
    or h                                          ; $6ac7: $b4
    ldh [$9c], a                                  ; $6ac8: $e0 $9c
    or c                                          ; $6aca: $b1
    sbc a                                         ; $6acb: $9f
    ldh a, [$c0]                                  ; $6acc: $f0 $c0
    inc de                                        ; $6ace: $13
    ld a, [c]                                     ; $6acf: $f2
    add b                                         ; $6ad0: $80
    call z, $dbda                                 ; $6ad1: $cc $da $db
    ld b, $e1                                     ; $6ad4: $06 $e1
    sbc h                                         ; $6ad6: $9c
    rst $38                                       ; $6ad7: $ff
    ld b, [hl]                                    ; $6ad8: $46
    xor a                                         ; $6ad9: $af
    inc c                                         ; $6ada: $0c
    ld c, $9b                                     ; $6adb: $0e $9b
    rrca                                          ; $6add: $0f
    rlca                                          ; $6ade: $07
    rlca                                          ; $6adf: $07
    ld b, $bc                                     ; $6ae0: $06 $bc
    ldh [$98], a                                  ; $6ae2: $e0 $98
    ld [bc], a                                    ; $6ae4: $02
    or e                                          ; $6ae5: $b3
    ldh [$7f], a                                  ; $6ae6: $e0 $7f
    pop hl                                        ; $6ae8: $e1
    ld h, e                                       ; $6ae9: $63
    pop hl                                        ; $6aea: $e1
    add b                                         ; $6aeb: $80
    rst $18                                       ; $6aec: $df
    nop                                           ; $6aed: $00
    ldh [$fc], a                                  ; $6aee: $e0 $fc

Jump_066_6af0:
    add c                                         ; $6af0: $81
    ldh [rSCY], a                                 ; $6af1: $e0 $42
    pop hl                                        ; $6af3: $e1
    rlca                                          ; $6af4: $07
    ld [bc], a                                    ; $6af5: $02
    ld b, c                                       ; $6af6: $41
    dec hl                                        ; $6af7: $2b
    dec hl                                        ; $6af8: $2b
    ld [bc], a                                    ; $6af9: $02
    rst $10                                       ; $6afa: $d7
    rrca                                          ; $6afb: $0f
    sbc b                                         ; $6afc: $98
    ld [$e13f], sp                                ; $6afd: $08 $3f $e1
    and c                                         ; $6b00: $a1

Jump_066_6b01:
    add sp, -$1f                                  ; $6b01: $e8 $e1
    ret c                                         ; $6b03: $d8

    reti                                          ; $6b04: $d9


    ld hl, sp-$80                                 ; $6b05: $f8 $80
    rst $18                                       ; $6b07: $df
    inc b                                         ; $6b08: $04
    pop bc                                        ; $6b09: $c1
    ld bc, $aee1                                  ; $6b0a: $01 $e1 $ae
    ld b, [hl]                                    ; $6b0d: $46
    ld b, l                                       ; $6b0e: $45
    ld a, [hl+]                                   ; $6b0f: $2a
    ld h, $5f                                     ; $6b10: $26 $5f
    jr nz, jr_066_6b34                            ; $6b12: $20 $20

    dec l                                         ; $6b14: $2d
    ld [$3f9a], sp                                ; $6b15: $08 $9a $3f
    ld [c], a                                     ; $6b18: $e2
    sbc [hl]                                      ; $6b19: $9e
    db $ec                                        ; $6b1a: $ec
    and c                                         ; $6b1b: $a1
    db $db                                        ; $6b1c: $db
    jp c, $80db                                   ; $6b1d: $da $db $80

    sbc $d6                                       ; $6b20: $de $d6
    rst $10                                       ; $6b22: $d7
    inc d                                         ; $6b23: $14
    pop bc                                        ; $6b24: $c1
    and c                                         ; $6b25: $a1
    ld b, [hl]                                    ; $6b26: $46
    inc c                                         ; $6b27: $0c
    set 0, b                                      ; $6b28: $cb $c0
    ret nz                                        ; $6b2a: $c0

    db $e4                                        ; $6b2b: $e4
    rrca                                          ; $6b2c: $0f
    ld [bc], a                                    ; $6b2d: $02
    nop                                           ; $6b2e: $00
    push hl                                       ; $6b2f: $e5
    sub e                                         ; $6b30: $93
    xor a                                         ; $6b31: $af
    add b                                         ; $6b32: $80
    rst $08                                       ; $6b33: $cf

jr_066_6b34:
    add d                                         ; $6b34: $82
    and e                                         ; $6b35: $a3
    ld e, [hl]                                    ; $6b36: $5e
    ccf                                           ; $6b37: $3f
    ld [c], a                                     ; $6b38: $e2
    ld b, [hl]                                    ; $6b39: $46
    ld b, l                                       ; $6b3a: $45
    ld a, $22                                     ; $6b3b: $3e $22
    ld b, b                                       ; $6b3d: $40
    ldh [$08], a                                  ; $6b3e: $e0 $08
    ld bc, $e6e6                                  ; $6b40: $01 $e6 $e6
    add b                                         ; $6b43: $80
    rst $18                                       ; $6b44: $df
    sub $d7                                       ; $6b45: $d6 $d7
    add d                                         ; $6b47: $82
    and e                                         ; $6b48: $a3
    ret nz                                        ; $6b49: $c0

    db $e3                                        ; $6b4a: $e3

Jump_066_6b4b:
    ld b, [hl]                                    ; $6b4b: $46
    ld a, $35                                     ; $6b4c: $3e $35
    inc sp                                        ; $6b4e: $33
    ld b, d                                       ; $6b4f: $42
    ld [$c0c1], sp                                ; $6b50: $08 $c1 $c0
    ld b, b                                       ; $6b53: $40
    jp $d1d0                                      ; $6b54: $c3 $d0 $d1


    add b                                         ; $6b57: $80
    call c, $a061                                 ; $6b58: $dc $61 $a0
    db $fc                                        ; $6b5b: $fc
    inc b                                         ; $6b5c: $04
    and h                                         ; $6b5d: $a4
    nop                                           ; $6b5e: $00
    db $e3                                        ; $6b5f: $e3
    ld b, [hl]                                    ; $6b60: $46
    ld b, l                                       ; $6b61: $45
    ld a, [hl-]                                   ; $6b62: $3a
    dec [hl]                                      ; $6b63: $35
    ld b, b                                       ; $6b64: $40
    ld [$4180], sp                                ; $6b65: $08 $80 $41
    jp nz, $c300                                  ; $6b68: $c2 $00 $c3

    nop                                           ; $6b6b: $00
    cp h                                          ; $6b6c: $bc
    rst $00                                       ; $6b6d: $c7
    add b                                         ; $6b6e: $80
    inc b                                         ; $6b6f: $04
    and h                                         ; $6b70: $a4
    add b                                         ; $6b71: $80
    pop bc                                        ; $6b72: $c1
    res 4, b                                      ; $6b73: $cb $a0
    ld b, d                                       ; $6b75: $42
    rrca                                          ; $6b76: $0f
    dec [hl]                                      ; $6b77: $35
    dec [hl]                                      ; $6b78: $35
    ld b, d                                       ; $6b79: $42
    ld [bc], a                                    ; $6b7a: $02
    ld [bc], a                                    ; $6b7b: $02
    pop hl                                        ; $6b7c: $e1
    ret nz                                        ; $6b7d: $c0

    and b                                         ; $6b7e: $a0
    db $ec                                        ; $6b7f: $ec
    add c                                         ; $6b80: $81
    nop                                           ; $6b81: $00
    cp h                                          ; $6b82: $bc
    db $fc                                        ; $6b83: $fc
    dec b                                         ; $6b84: $05
    jp nz, $a782                                  ; $6b85: $c2 $82 $a7

    ld b, [hl]                                    ; $6b88: $46
    ld b, [hl]                                    ; $6b89: $46
    add hl, sp                                    ; $6b8a: $39
    dec [hl]                                      ; $6b8b: $35
    dec [hl]                                      ; $6b8c: $35
    add hl, sp                                    ; $6b8d: $39
    inc c                                         ; $6b8e: $0c
    ld a, b                                       ; $6b8f: $78
    and b                                         ; $6b90: $a0
    ld [bc], a                                    ; $6b91: $02
    ret nz                                        ; $6b92: $c0

    ld b, [hl]                                    ; $6b93: $46
    sbc [hl]                                      ; $6b94: $9e
    nop                                           ; $6b95: $00
    cp a                                          ; $6b96: $bf
    dec a                                         ; $6b97: $3d
    db $e3                                        ; $6b98: $e3
    add [hl]                                      ; $6b99: $86
    add c                                         ; $6b9a: $81
    add d                                         ; $6b9b: $82
    ret nz                                        ; $6b9c: $c0

    ld d, $01                                     ; $6b9d: $16 $01
    db $e4                                        ; $6b9f: $e4
    dec [hl]                                      ; $6ba0: $35
    ld a, $76                                     ; $6ba1: $3e $76
    db $e3                                        ; $6ba3: $e3
    sbc h                                         ; $6ba4: $9c
    nop                                           ; $6ba5: $00
    and b                                         ; $6ba6: $a0
    db $e4                                        ; $6ba7: $e4
    pop bc                                        ; $6ba8: $c1
    add b                                         ; $6ba9: $80
    db $dd                                        ; $6baa: $dd
    jr nz, jr_066_6bc9                            ; $6bab: $20 $1c

    add d                                         ; $6bad: $82
    add c                                         ; $6bae: $81
    push hl                                       ; $6baf: $e5
    ld bc, $c0e0                                  ; $6bb0: $01 $e0 $c0
    ld [c], a                                     ; $6bb3: $e2
    push af                                       ; $6bb4: $f5
    add b                                         ; $6bb5: $80
    and c                                         ; $6bb6: $a1
    rst $10                                       ; $6bb7: $d7
    ld h, b                                       ; $6bb8: $60
    jp $e8ae                                      ; $6bb9: $c3 $ae $e8


    nop                                           ; $6bbc: $00
    or b                                          ; $6bbd: $b0
    inc b                                         ; $6bbe: $04
    add c                                         ; $6bbf: $81
    add d                                         ; $6bc0: $82
    and c                                         ; $6bc1: $a1
    xor [hl]                                      ; $6bc2: $ae
    cp $e1                                        ; $6bc3: $fe $e1
    ld b, h                                       ; $6bc5: $44
    inc a                                         ; $6bc6: $3c
    dec [hl]                                      ; $6bc7: $35
    rlca                                          ; $6bc8: $07

jr_066_6bc9:
    dec [hl]                                      ; $6bc9: $35
    ld a, [hl-]                                   ; $6bca: $3a
    ld b, l                                       ; $6bcb: $45
    ld b, c                                       ; $6bcc: $41
    db $e3                                        ; $6bcd: $e3
    ld l, d                                       ; $6bce: $6a
    add b                                         ; $6bcf: $80
    jp $80ae                                      ; $6bd0: $c3 $ae $80


    ret nc                                        ; $6bd3: $d0

    add [hl]                                      ; $6bd4: $86
    ld h, d                                       ; $6bd5: $62
    ld e, d                                       ; $6bd6: $5a
    jp $af80                                      ; $6bd7: $c3 $80 $af


    cp $e1                                        ; $6bda: $fe $e1
    ld b, b                                       ; $6bdc: $40
    dec [hl]                                      ; $6bdd: $35
    rst $38                                       ; $6bde: $ff
    ldh [rLCDC], a                                ; $6bdf: $e0 $40
    ld b, c                                       ; $6be1: $41
    db $e3                                        ; $6be2: $e3
    ld b, b                                       ; $6be3: $40
    db $ec                                        ; $6be4: $ec
    ld h, e                                       ; $6be5: $63
    nop                                           ; $6be6: $00
    cp e                                          ; $6be7: $bb
    ld b, a                                       ; $6be8: $47
    ld h, b                                       ; $6be9: $60
    add [hl]                                      ; $6bea: $86
    ld h, c                                       ; $6beb: $61
    jp $bf81                                      ; $6bec: $c3 $81 $bf


    pop hl                                        ; $6bef: $e1
    ld b, [hl]                                    ; $6bf0: $46
    add b                                         ; $6bf1: $80
    pop hl                                        ; $6bf2: $e1
    rra                                           ; $6bf3: $1f
    ld [hl], $45                                  ; $6bf4: $36 $45
    ld b, [hl]                                    ; $6bf6: $46
    db $eb                                        ; $6bf7: $eb
    db $ec                                        ; $6bf8: $ec
    add d                                         ; $6bf9: $82
    add $00                                       ; $6bfa: $c6 $00
    cp e                                          ; $6bfc: $bb
    add l                                         ; $6bfd: $85
    add b                                         ; $6bfe: $80
    db $fc                                        ; $6bff: $fc
    ld [$4161], sp                                ; $6c00: $08 $61 $41
    pop hl                                        ; $6c03: $e1
    xor a                                         ; $6c04: $af
    ld b, l                                       ; $6c05: $45
    xor a                                         ; $6c06: $af
    xor [hl]                                      ; $6c07: $ae
    ld b, l                                       ; $6c08: $45
    ld [hl], $3e                                  ; $6c09: $36 $3e
    pop bc                                        ; $6c0b: $c1
    ld [c], a                                     ; $6c0c: $e2
    ld b, [hl]                                    ; $6c0d: $46
    db $ed                                        ; $6c0e: $ed
    xor $9c                                       ; $6c0f: $ee $9c
    sbc a                                         ; $6c11: $9f
    nop                                           ; $6c12: $00
    ld h, h                                       ; $6c13: $64
    nop                                           ; $6c14: $00
    cp c                                          ; $6c15: $b9
    ld hl, sp+$23                                 ; $6c16: $f8 $23
    ld h, b                                       ; $6c18: $60
    add d                                         ; $6c19: $82
    jp nz, Jump_066_61c5                          ; $6c1a: $c2 $c5 $61

    xor a                                         ; $6c1d: $af
    ld b, l                                       ; $6c1e: $45
    ld b, a                                       ; $6c1f: $47
    ld d, d                                       ; $6c20: $52
    xor a                                         ; $6c21: $af
    ld a, [bc]                                    ; $6c22: $0a
    ld bc, $40e1                                  ; $6c23: $01 $e1 $40
    cp b                                          ; $6c26: $b8
    and d                                         ; $6c27: $a2
    sbc [hl]                                      ; $6c28: $9e
    db $f4                                        ; $6c29: $f4
    ld b, b                                       ; $6c2a: $40
    ld h, [hl]                                    ; $6c2b: $66
    and c                                         ; $6c2c: $a1
    nop                                           ; $6c2d: $00
    cp c                                          ; $6c2e: $b9
    adc c                                         ; $6c2f: $89
    ld b, c                                       ; $6c30: $41
    cp $9e                                        ; $6c31: $fe $9e
    ld b, d                                       ; $6c33: $42
    and c                                         ; $6c34: $a1
    sub c                                         ; $6c35: $91
    sub b                                         ; $6c36: $90
    sub c                                         ; $6c37: $91
    ld b, [hl]                                    ; $6c38: $46
    ld d, c                                       ; $6c39: $51
    ld e, [hl]                                    ; $6c3a: $5e
    dec bc                                        ; $6c3b: $0b
    ld e, b                                       ; $6c3c: $58
    ld b, h                                       ; $6c3d: $44
    add c                                         ; $6c3e: $81
    ld [c], a                                     ; $6c3f: $e2
    ld b, l                                       ; $6c40: $45
    add e                                         ; $6c41: $83
    ld h, h                                       ; $6c42: $64
    ld l, d                                       ; $6c43: $6a
    ld b, d                                       ; $6c44: $42
    add b                                         ; $6c45: $80
    reti                                          ; $6c46: $d9


    adc c                                         ; $6c47: $89
    ld b, b                                       ; $6c48: $40
    cp $86                                        ; $6c49: $fe $86
    ld b, d                                       ; $6c4b: $42
    and b                                         ; $6c4c: $a0
    sbc [hl]                                      ; $6c4d: $9e
    sub b                                         ; $6c4e: $90
    sub b                                         ; $6c4f: $90
    sub b                                         ; $6c50: $90
    ld b, [hl]                                    ; $6c51: $46
    ld b, h                                       ; $6c52: $44
    ld a, e                                       ; $6c53: $7b
    ld c, l                                       ; $6c54: $4d
    ld h, c                                       ; $6c55: $61
    jp nz, Jump_000_3cc0                          ; $6c56: $c2 $c0 $3c

    ld b, h                                       ; $6c59: $44
    ld b, a                                       ; $6c5a: $47
    ld d, l                                       ; $6c5b: $55
    ld b, d                                       ; $6c5c: $42
    jp $82f8                                      ; $6c5d: $c3 $f8 $82


    ld b, e                                       ; $6c60: $43
    add b                                         ; $6c61: $80
    ld a, [hl]                                    ; $6c62: $7e
    ld [$9f40], sp                                ; $6c63: $08 $40 $9f
    sbc h                                         ; $6c66: $9c
    sub b                                         ; $6c67: $90
    or b                                          ; $6c68: $b0
    sub b                                         ; $6c69: $90
    ld l, a                                       ; $6c6a: $6f
    ld b, l                                       ; $6c6b: $45
    ld b, a                                       ; $6c6c: $47
    ld h, b                                       ; $6c6d: $60
    ld d, d                                       ; $6c6e: $52
    ld b, c                                       ; $6c6f: $41
    ld [c], a                                     ; $6c70: $e2
    ld e, [hl]                                    ; $6c71: $5e
    ld d, [hl]                                    ; $6c72: $56
    rst $38                                       ; $6c73: $ff
    ret nz                                        ; $6c74: $c0

    ret c                                         ; $6c75: $d8

    inc b                                         ; $6c76: $04
    add e                                         ; $6c77: $83
    nop                                           ; $6c78: $00
    ld e, a                                       ; $6c79: $5f
    inc b                                         ; $6c7a: $04
    add d                                         ; $6c7b: $82
    sbc [hl]                                      ; $6c7c: $9e
    sub c                                         ; $6c7d: $91
    add b                                         ; $6c7e: $80
    ldh [rLYC], a                                 ; $6c7f: $e0 $45
    ld d, e                                       ; $6c81: $53
    ld a, l                                       ; $6c82: $7d
    ld d, e                                       ; $6c83: $53
    jp nz, Jump_000_3cc1                          ; $6c84: $c2 $c1 $3c

    ld b, h                                       ; $6c87: $44
    ld c, l                                       ; $6c88: $4d
    ld e, b                                       ; $6c89: $58
    ld b, h                                       ; $6c8a: $44
    or $40                                        ; $6c8b: $f6 $40
    db $e4                                        ; $6c8d: $e4
    add d                                         ; $6c8e: $82
    and c                                         ; $6c8f: $a1
    nop                                           ; $6c90: $00
    ld e, a                                       ; $6c91: $5f
    ld [$2286], a                                 ; $6c92: $ea $86 $22
    ret nz                                        ; $6c95: $c0

    pop hl                                        ; $6c96: $e1
    sub c                                         ; $6c97: $91
    ld b, l                                       ; $6c98: $45
    scf                                           ; $6c99: $37
    ei                                            ; $6c9a: $fb
    dec a                                         ; $6c9b: $3d
    jr c, jr_066_6ca1                             ; $6c9c: $38 $03

    ret nz                                        ; $6c9e: $c0

    ld [hl], $42                                  ; $6c9f: $36 $42

jr_066_6ca1:
    ld e, [hl]                                    ; $6ca1: $5e
    ld h, c                                       ; $6ca2: $61
    ld d, l                                       ; $6ca3: $55
    ldh [$82], a                                  ; $6ca4: $e0 $82
    ld b, [hl]                                    ; $6ca6: $46
    nop                                           ; $6ca7: $00
    cp h                                          ; $6ca8: $bc
    and e                                         ; $6ca9: $a3
    jr nz, @-$78                                  ; $6caa: $20 $86

    ld hl, $6205                                  ; $6cac: $21 $05 $62
    add hl, sp                                    ; $6caf: $39
    dec [hl]                                      ; $6cb0: $35
    xor h                                         ; $6cb1: $ac
    ld e, $c4                                     ; $6cb2: $1e $c4
    and b                                         ; $6cb4: $a0
    xor h                                         ; $6cb5: $ac
    ld b, b                                       ; $6cb6: $40
    ld b, a                                       ; $6cb7: $47
    ld h, b                                       ; $6cb8: $60
    ret nz                                        ; $6cb9: $c0

    ldh [$82], a                                  ; $6cba: $e0 $82
    ld b, l                                       ; $6cbc: $45
    nop                                           ; $6cbd: $00
    cp e                                          ; $6cbe: $bb
    call c, $e321                                 ; $6cbf: $dc $21 $e3
    add [hl]                                      ; $6cc2: $86
    ld h, h                                       ; $6cc3: $64
    ld a, $35                                     ; $6cc4: $3e $35
    xor l                                         ; $6cc6: $ad
    add h                                         ; $6cc7: $84
    and b                                         ; $6cc8: $a0
    xor l                                         ; $6cc9: $ad
    ld b, h                                       ; $6cca: $44
    inc bc                                        ; $6ccb: $03
    ld c, l                                       ; $6ccc: $4d
    or h                                          ; $6ccd: $b4
    nop                                           ; $6cce: $00
    ld [c], a                                     ; $6ccf: $e2
    ld a, [hl]                                    ; $6cd0: $7e
    push bc                                       ; $6cd1: $c5
    add b                                         ; $6cd2: $80
    db $dd                                        ; $6cd3: $dd
    inc b                                         ; $6cd4: $04
    ld h, c                                       ; $6cd5: $61
    add $22                                       ; $6cd6: $c6 $22
    add a                                         ; $6cd8: $87
    add b                                         ; $6cd9: $80
    dec de                                        ; $6cda: $1b
    dec [hl]                                      ; $6cdb: $35
    or c                                          ; $6cdc: $b1
    pop bc                                        ; $6cdd: $c1
    pop bc                                        ; $6cde: $c1
    ld h, c                                       ; $6cdf: $61
    ld e, d                                       ; $6ce0: $5a
    push af                                       ; $6ce1: $f5
    add d                                         ; $6ce2: $82
    nop                                           ; $6ce3: $00
    cp a                                          ; $6ce4: $bf
    add [hl]                                      ; $6ce5: $86
    ld b, $38                                     ; $6ce6: $06 $38
    ld b, e                                       ; $6ce8: $43
    add d                                         ; $6ce9: $82
    ret nz                                        ; $6cea: $c0

    pop hl                                        ; $6ceb: $e1
    inc b                                         ; $6cec: $04
    and c                                         ; $6ced: $a1
    ld d, d                                       ; $6cee: $52
    ld h, c                                       ; $6cef: $61
    ld d, l                                       ; $6cf0: $55
    ld [hl], $a2                                  ; $6cf1: $36 $a2
    nop                                           ; $6cf3: $00
    cp a                                          ; $6cf4: $bf
    ld [hl], b                                    ; $6cf5: $70
    add [hl]                                      ; $6cf6: $86
    ld b, $46                                     ; $6cf7: $06 $46
    ld [hl+], a                                   ; $6cf9: $22
    rst $00                                       ; $6cfa: $c7
    ld h, b                                       ; $6cfb: $60
    call nz, Call_066_4281                        ; $6cfc: $c4 $81 $42
    ld b, l                                       ; $6cff: $45
    ld e, e                                       ; $6d00: $5b
    or [hl]                                       ; $6d01: $b6
    add d                                         ; $6d02: $82
    ld b, b                                       ; $6d03: $40
    ld b, d                                       ; $6d04: $42
    ld hl, $bf00                                  ; $6d05: $21 $00 $bf
    add [hl]                                      ; $6d08: $86
    inc bc                                        ; $6d09: $03
    ld b, e                                       ; $6d0a: $43
    add d                                         ; $6d0b: $82
    dec b                                         ; $6d0c: $05
    and c                                         ; $6d0d: $a1
    add e                                         ; $6d0e: $83
    add b                                         ; $6d0f: $80
    add hl, sp                                    ; $6d10: $39
    ld [hl], a                                    ; $6d11: $77
    add h                                         ; $6d12: $84
    ld [hl], b                                    ; $6d13: $70
    ld bc, $0082                                  ; $6d14: $01 $82 $00
    cp a                                          ; $6d17: $bf
    nop                                           ; $6d18: $00
    jp Jump_066_6206                              ; $6d19: $c3 $06 $62


    ld b, l                                       ; $6d1c: $45
    ld [hl], $3b                                  ; $6d1d: $36 $3b
    ld b, e                                       ; $6d1f: $43
    add b                                         ; $6d20: $80
    rlca                                          ; $6d21: $07
    ld a, [hl-]                                   ; $6d22: $3a
    ld b, l                                       ; $6d23: $45
    xor a                                         ; $6d24: $af
    ld [hl], l                                    ; $6d25: $75
    add d                                         ; $6d26: $82
    ld [bc], a                                    ; $6d27: $02
    ld hl, $c100                                  ; $6d28: $21 $00 $c1
    nop                                           ; $6d2b: $00
    cp a                                          ; $6d2c: $bf
    inc b                                         ; $6d2d: $04
    ld h, [hl]                                    ; $6d2e: $66
    dec sp                                        ; $6d2f: $3b
    ld b, l                                       ; $6d30: $45
    ld b, e                                       ; $6d31: $43
    ld a, l                                       ; $6d32: $7d
    pop hl                                        ; $6d33: $e1
    jr c, @+$3f                                   ; $6d34: $38 $3d

    scf                                           ; $6d36: $37
    cp l                                          ; $6d37: $bd
    pop hl                                        ; $6d38: $e1
    pop bc                                        ; $6d39: $c1
    ld bc, $0038                                  ; $6d3a: $01 $38 $00
    pop hl                                        ; $6d3d: $e1
    nop                                           ; $6d3e: $00
    cp a                                          ; $6d3f: $bf
    inc b                                         ; $6d40: $04
    inc h                                         ; $6d41: $24
    xor [hl]                                      ; $6d42: $ae
    ld b, [hl]                                    ; $6d43: $46
    or e                                          ; $6d44: $b3
    ld b, d                                       ; $6d45: $42
    ld h, d                                       ; $6d46: $62
    inc a                                         ; $6d47: $3c
    ld [c], a                                     ; $6d48: $e2
    nop                                           ; $6d49: $00
    add b                                         ; $6d4a: $80
    ld b, e                                       ; $6d4b: $43
    add d                                         ; $6d4c: $82
    ld b, c                                       ; $6d4d: $41
    nop                                           ; $6d4e: $00
    cp a                                          ; $6d4f: $bf
    inc b                                         ; $6d50: $04
    inc h                                         ; $6d51: $24
    adc l                                         ; $6d52: $8d
    and b                                         ; $6d53: $a0
    cp e                                          ; $6d54: $bb
    push bc                                       ; $6d55: $c5
    cp a                                          ; $6d56: $bf
    ld b, b                                       ; $6d57: $40
    add d                                         ; $6d58: $82
    nop                                           ; $6d59: $00
    nop                                           ; $6d5a: $00
    ld b, c                                       ; $6d5b: $41
    nop                                           ; $6d5c: $00
    nop                                           ; $6d5d: $00
    cp a                                          ; $6d5e: $bf
    inc b                                         ; $6d5f: $04
    daa                                           ; $6d60: $27
    ld c, e                                       ; $6d61: $4b
    ld b, d                                       ; $6d62: $42
    ld bc, $ff61                                  ; $6d63: $01 $61 $ff
    ld b, d                                       ; $6d66: $42
    ccf                                           ; $6d67: $3f
    and d                                         ; $6d68: $a2
    nop                                           ; $6d69: $00
    cp a                                          ; $6d6a: $bf
    nop                                           ; $6d6b: $00

Jump_066_6d6c:
    nop                                           ; $6d6c: $00
    and e                                         ; $6d6d: $a3
    ld a, [hl]                                    ; $6d6e: $7e
    add c                                         ; $6d6f: $81
    ld b, d                                       ; $6d70: $42
    ld bc, $00c1                                  ; $6d71: $01 $c1 $00
    ccf                                           ; $6d74: $3f
    db $e3                                        ; $6d75: $e3
    cp l                                          ; $6d76: $bd
    ld h, b                                       ; $6d77: $60
    ld a, [hl]                                    ; $6d78: $7e
    adc b                                         ; $6d79: $88
    nop                                           ; $6d7a: $00
    ld e, a                                       ; $6d7b: $5f
    nop                                           ; $6d7c: $00
    ld a, [hl]                                    ; $6d7d: $7e
    ld h, e                                       ; $6d7e: $63
    ld bc, $fc44                                  ; $6d7f: $01 $44 $fc
    ld h, c                                       ; $6d82: $61
    rst $38                                       ; $6d83: $ff
    add e                                         ; $6d84: $83
    nop                                           ; $6d85: $00
    ld e, a                                       ; $6d86: $5f
    nop                                           ; $6d87: $00
    ld b, [hl]                                    ; $6d88: $46
    ld b, c                                       ; $6d89: $41
    ld [hl+], a                                   ; $6d8a: $22
    ld bc, $0043                                  ; $6d8b: $01 $43 $00
    ccf                                           ; $6d8e: $3f
    ld b, [hl]                                    ; $6d8f: $46
    rst $38                                       ; $6d90: $ff
    jr nz, jr_066_6d93                            ; $6d91: $20 $00

jr_066_6d93:
    ld e, a                                       ; $6d93: $5f
    nop                                           ; $6d94: $00
    ld b, h                                       ; $6d95: $44
    pop bc                                        ; $6d96: $c1
    inc b                                         ; $6d97: $04
    ld b, c                                       ; $6d98: $41
    ld b, d                                       ; $6d99: $42
    ccf                                           ; $6d9a: $3f
    ld hl, $c1b2                                  ; $6d9b: $21 $b2 $c1
    nop                                           ; $6d9e: $00
    nop                                           ; $6d9f: $00
    jr nz, jr_066_6da2                            ; $6da0: $20 $00

jr_066_6da2:
    ld e, a                                       ; $6da2: $5f
    nop                                           ; $6da3: $00
    ld b, h                                       ; $6da4: $44
    ld a, l                                       ; $6da5: $7d
    ld b, d                                       ; $6da6: $42
    ld b, c                                       ; $6da7: $41
    ld b, e                                       ; $6da8: $43
    ret nz                                        ; $6da9: $c0

    ld hl, $03c0                                  ; $6daa: $21 $c0 $03
    nop                                           ; $6dad: $00
    cp a                                          ; $6dae: $bf
    nop                                           ; $6daf: $00
    add b                                         ; $6db0: $80
    ld bc, $c37e                                  ; $6db1: $01 $7e $c3
    rst $38                                       ; $6db4: $ff
    inc bc                                        ; $6db5: $03
    add d                                         ; $6db6: $82
    nop                                           ; $6db7: $00
    ld b, c                                       ; $6db8: $41
    push bc                                       ; $6db9: $c5
    nop                                           ; $6dba: $00
    db $e4                                        ; $6dbb: $e4
    nop                                           ; $6dbc: $00
    ld e, a                                       ; $6dbd: $5f
    ld a, [hl]                                    ; $6dbe: $7e
    ret                                           ; $6dbf: $c9


    nop                                           ; $6dc0: $00
    cp e                                          ; $6dc1: $bb
    add d                                         ; $6dc2: $82
    ld b, c                                       ; $6dc3: $41
    push hl                                       ; $6dc4: $e5
    nop                                           ; $6dc5: $00
    cp a                                          ; $6dc6: $bf
    or a                                          ; $6dc7: $b7
    and d                                         ; $6dc8: $a2
    inc e                                         ; $6dc9: $1c
    pop bc                                        ; $6dca: $c1
    db $fc                                        ; $6dcb: $fc
    add d                                         ; $6dcc: $82
    call z, $fba0                                 ; $6dcd: $cc $a0 $fb
    ld h, c                                       ; $6dd0: $61
    nop                                           ; $6dd1: $00
    ld b, c                                       ; $6dd2: $41
    and $00                                       ; $6dd3: $e6 $00
    cp [hl]                                       ; $6dd5: $be
    dec a                                         ; $6dd6: $3d
    add h                                         ; $6dd7: $84
    db $fc                                        ; $6dd8: $fc
    ld b, e                                       ; $6dd9: $43
    ld c, h                                       ; $6dda: $4c
    ld [bc], a                                    ; $6ddb: $02
    cp e                                          ; $6ddc: $bb
    ld h, c                                       ; $6ddd: $61
    ld b, c                                       ; $6dde: $41
    and $00                                       ; $6ddf: $e6 $00
    add d                                         ; $6de1: $82
    nop                                           ; $6de2: $00
    add b                                         ; $6de3: $80
    rst $18                                       ; $6de4: $df
    sbc d                                         ; $6de5: $9a
    ld hl, $64fc                                  ; $6de6: $21 $fc $64
    ld b, b                                       ; $6de9: $40
    ld [c], a                                     ; $6dea: $e2
    add d                                         ; $6deb: $82
    call nz, $0041                                ; $6dec: $c4 $41 $00
    nop                                           ; $6def: $00
    cp a                                          ; $6df0: $bf
    cp l                                          ; $6df1: $bd
    ld b, c                                       ; $6df2: $41
    nop                                           ; $6df3: $00
    ld a, [hl]                                    ; $6df4: $7e
    and e                                         ; $6df5: $a3
    rst $38                                       ; $6df6: $ff
    and e                                         ; $6df7: $a3
    nop                                           ; $6df8: $00
    jr nz, @+$03                                  ; $6df9: $20 $01

    ld hl, $44c0                                  ; $6dfb: $21 $c0 $44
    nop                                           ; $6dfe: $00
    cp a                                          ; $6dff: $bf
    dec a                                         ; $6e00: $3d
    ld hl, $c100                                  ; $6e01: $21 $00 $c1
    inc c                                         ; $6e04: $0c
    db $fc                                        ; $6e05: $fc
    nop                                           ; $6e06: $00
    rst $38                                       ; $6e07: $ff
    jp Jump_000_3f45                              ; $6e08: $c3 $45 $3f


    jp $8042                                      ; $6e0b: $c3 $42 $80


    pop bc                                        ; $6e0e: $c1
    nop                                           ; $6e0f: $00
    cp a                                          ; $6e10: $bf
    dec a                                         ; $6e11: $3d
    inc h                                         ; $6e12: $24
    nop                                           ; $6e13: $00
    jr jr_066_6e78                                ; $6e14: $18 $62

    ld a, l                                       ; $6e16: $7d
    add [hl]                                      ; $6e17: $86
    ld a, b                                       ; $6e18: $78
    and d                                         ; $6e19: $a2
    add b                                         ; $6e1a: $80
    jp $bf00                                      ; $6e1b: $c3 $00 $bf


    nop                                           ; $6e1e: $00
    and [hl]                                      ; $6e1f: $a6
    ld bc, $fcc3                                  ; $6e20: $01 $c3 $fc
    ld [$0000], a                                 ; $6e23: $ea $00 $00
    cp a                                          ; $6e26: $bf
    nop                                           ; $6e27: $00
    xor b                                         ; $6e28: $a8
    ret nz                                        ; $6e29: $c0

    add l                                         ; $6e2a: $85
    cp d                                          ; $6e2b: $ba
    jp hl                                         ; $6e2c: $e9


    ld a, [hl]                                    ; $6e2d: $7e
    jr nz, jr_066_6e30                            ; $6e2e: $20 $00

jr_066_6e30:
    cp a                                          ; $6e30: $bf
    nop                                           ; $6e31: $00
    and h                                         ; $6e32: $a4
    ld a, [hl]                                    ; $6e33: $7e
    ld h, e                                       ; $6e34: $63
    ld b, $3d                                     ; $6e35: $06 $3d
    ld h, b                                       ; $6e37: $60
    ld b, c                                       ; $6e38: $41
    ld b, e                                       ; $6e39: $43
    db $fd                                        ; $6e3a: $fd
    ldh [$c0], a                                  ; $6e3b: $e0 $c0
    add e                                         ; $6e3d: $83
    nop                                           ; $6e3e: $00
    cp a                                          ; $6e3f: $bf
    nop                                           ; $6e40: $00
    and a                                         ; $6e41: $a7
    add c                                         ; $6e42: $81
    add c                                         ; $6e43: $81
    inc d                                         ; $6e44: $14
    ld bc, $bd80                                  ; $6e45: $01 $80 $bd
    ld b, b                                       ; $6e48: $40
    dec sp                                        ; $6e49: $3b
    db $fd                                        ; $6e4a: $fd
    ldh [$36], a                                  ; $6e4b: $e0 $36
    cp e                                          ; $6e4d: $bb
    ld b, b                                       ; $6e4e: $40
    nop                                           ; $6e4f: $00
    cp a                                          ; $6e50: $bf
    nop                                           ; $6e51: $00
    xor b                                         ; $6e52: $a8
    ld e, [hl]                                    ; $6e53: $5e
    nop                                           ; $6e54: $00
    add h                                         ; $6e55: $84
    ld b, h                                       ; $6e56: $44
    inc a                                         ; $6e57: $3c
    and h                                         ; $6e58: $a4
    ld h, h                                       ; $6e59: $64
    rst $38                                       ; $6e5a: $ff
    ldh [$a5], a                                  ; $6e5b: $e0 $a5
    rst $38                                       ; $6e5d: $ff
    ld h, d                                       ; $6e5e: $62
    ld hl, sp+$00                                 ; $6e5f: $f8 $00
    cp a                                          ; $6e61: $bf
    nop                                           ; $6e62: $00
    and a                                         ; $6e63: $a7
    nop                                           ; $6e64: $00
    add h                                         ; $6e65: $84
    ld b, d                                       ; $6e66: $42
    dec [hl]                                      ; $6e67: $35
    ld l, c                                       ; $6e68: $69
    and e                                         ; $6e69: $a3
    dec [hl]                                      ; $6e6a: $35
    rra                                           ; $6e6b: $1f
    dec [hl]                                      ; $6e6c: $35
    and e                                         ; $6e6d: $a3
    ld l, d                                       ; $6e6e: $6a
    dec [hl]                                      ; $6e6f: $35
    ld b, d                                       ; $6e70: $42
    ld bc, $0083                                  ; $6e71: $01 $83 $00
    cp a                                          ; $6e74: $bf
    nop                                           ; $6e75: $00
    and d                                         ; $6e76: $a2
    nop                                           ; $6e77: $00

jr_066_6e78:
    nop                                           ; $6e78: $00
    add c                                         ; $6e79: $81
    nop                                           ; $6e7a: $00
    and d                                         ; $6e7b: $a2
    ret nz                                        ; $6e7c: $c0

    ldh [rSTAT], a                                ; $6e7d: $e0 $41
    ld h, c                                       ; $6e7f: $61
    ret nz                                        ; $6e80: $c0

    ldh [rP1], a                                  ; $6e81: $e0 $00
    ld h, $00                                     ; $6e83: $26 $00
    cp a                                          ; $6e85: $bf
    nop                                           ; $6e86: $00
    add $76                                       ; $6e87: $c6 $76
    ld bc, $6b81                                  ; $6e89: $01 $81 $6b
    ld [hl], c                                    ; $6e8c: $71
    rst $38                                       ; $6e8d: $ff
    ldh [$6d], a                                  ; $6e8e: $e0 $6d
    inc a                                         ; $6e90: $3c
    ld b, h                                       ; $6e91: $44
    ret nz                                        ; $6e92: $c0

    ld b, d                                       ; $6e93: $42
    add b                                         ; $6e94: $80
    nop                                           ; $6e95: $00
    cp a                                          ; $6e96: $bf
    nop                                           ; $6e97: $00
    and e                                         ; $6e98: $a3
    nop                                           ; $6e99: $00
    add [hl]                                      ; $6e9a: $86
    ret nz                                        ; $6e9b: $c0

    rst $00                                       ; $6e9c: $c7
    ret nz                                        ; $6e9d: $c0

    add d                                         ; $6e9e: $82
    nop                                           ; $6e9f: $00
    cp a                                          ; $6ea0: $bf
    nop                                           ; $6ea1: $00
    xor b                                         ; $6ea2: $a8
    sbc a                                         ; $6ea3: $9f
    scf                                           ; $6ea4: $37
    sbc l                                         ; $6ea5: $9d
    sbc l                                         ; $6ea6: $9d
    sbc h                                         ; $6ea7: $9c
    ld b, b                                       ; $6ea8: $40
    rst $00                                       ; $6ea9: $c7
    sbc h                                         ; $6eaa: $9c
    sbc l                                         ; $6eab: $9d
    ld bc, $00a1                                  ; $6eac: $01 $a1 $00
    cp a                                          ; $6eaf: $bf
    stop                                          ; $6eb0: $10 $00
    and d                                         ; $6eb2: $a2
    ld a, [hl]                                    ; $6eb3: $7e
    ld h, h                                       ; $6eb4: $64
    cp l                                          ; $6eb5: $bd
    pop hl                                        ; $6eb6: $e1
    cp $e5                                        ; $6eb7: $fe $e5
    sbc a                                         ; $6eb9: $9f
    db $ec                                        ; $6eba: $ec
    ld b, c                                       ; $6ebb: $41
    nop                                           ; $6ebc: $00
    cp a                                          ; $6ebd: $bf
    nop                                           ; $6ebe: $00
    and e                                         ; $6ebf: $a3
    nop                                           ; $6ec0: $00
    ld a, [hl]                                    ; $6ec1: $7e
    add h                                         ; $6ec2: $84
    rst $38                                       ; $6ec3: $ff
    ld [$c104], a                                 ; $6ec4: $ea $04 $c1
    nop                                           ; $6ec7: $00
    cp a                                          ; $6ec8: $bf
    cp l                                          ; $6ec9: $bd
    ld b, e                                       ; $6eca: $43
    ld a, [hl]                                    ; $6ecb: $7e
    rst $20                                       ; $6ecc: $e7
    db $fc                                        ; $6ecd: $fc
    rst $20                                       ; $6ece: $e7
    inc b                                         ; $6ecf: $04
    pop bc                                        ; $6ed0: $c1
    nop                                           ; $6ed1: $00
    nop                                           ; $6ed2: $00
    or e                                          ; $6ed3: $b3
    nop                                           ; $6ed4: $00
    nop                                           ; $6ed5: $00
    nop                                           ; $6ed6: $00
    pop bc                                        ; $6ed7: $c1
    nop                                           ; $6ed8: $00
    rst $38                                       ; $6ed9: $ff
    rst $38                                       ; $6eda: $ff
    rst $38                                       ; $6edb: $ff
    rst $38                                       ; $6edc: $ff
    rst $38                                       ; $6edd: $ff
    rst $38                                       ; $6ede: $ff
    rst $38                                       ; $6edf: $ff
    rst $38                                       ; $6ee0: $ff

Jump_066_6ee1:
    rst $38                                       ; $6ee1: $ff
    rst $38                                       ; $6ee2: $ff
    nop                                           ; $6ee3: $00
    nop                                           ; $6ee4: $00
    ld bc, $fe80                                  ; $6ee5: $01 $80 $fe
    ldh [rIE], a                                  ; $6ee8: $e0 $ff
    rst $38                                       ; $6eea: $ff
    rst $38                                       ; $6eeb: $ff
    rst $38                                       ; $6eec: $ff
    rst $38                                       ; $6eed: $ff
    add sp, $00                                   ; $6eee: $e8 $00
    nop                                           ; $6ef0: $00
    nop                                           ; $6ef1: $00
    ld [bc], a                                    ; $6ef2: $02
    nop                                           ; $6ef3: $00
    ld h, $04                                     ; $6ef4: $26 $04
    ld [bc], a                                    ; $6ef6: $02
    ld bc, $061a                                  ; $6ef7: $01 $1a $06
    ld [bc], a                                    ; $6efa: $02
    ld [bc], a                                    ; $6efb: $02
    daa                                           ; $6efc: $27
    rlca                                          ; $6efd: $07
    ld [bc], a                                    ; $6efe: $02
    inc bc                                        ; $6eff: $03
    dec de                                        ; $6f00: $1b
    add hl, bc                                    ; $6f01: $09
    ld [bc], a                                    ; $6f02: $02
    inc b                                         ; $6f03: $04
    ld h, $0b                                     ; $6f04: $26 $0b
    ld [bc], a                                    ; $6f06: $02
    dec b                                         ; $6f07: $05
    dec de                                        ; $6f08: $1b
    dec c                                         ; $6f09: $0d
    ld [bc], a                                    ; $6f0a: $02
    ld b, $25                                     ; $6f0b: $06 $25
    rrca                                          ; $6f0d: $0f
    ld [bc], a                                    ; $6f0e: $02
    rlca                                          ; $6f0f: $07
    jr jr_066_6f24                                ; $6f10: $18 $12

    ld [bc], a                                    ; $6f12: $02
    ld [$121a], sp                                ; $6f13: $08 $1a $12
    ld [bc], a                                    ; $6f16: $02
    add hl, bc                                    ; $6f17: $09
    inc e                                         ; $6f18: $1c
    ld [de], a                                    ; $6f19: $12
    ld [bc], a                                    ; $6f1a: $02
    ld a, [bc]                                    ; $6f1b: $0a
    inc h                                         ; $6f1c: $24
    ld [de], a                                    ; $6f1d: $12
    ld [bc], a                                    ; $6f1e: $02
    dec bc                                        ; $6f1f: $0b
    rla                                           ; $6f20: $17
    inc de                                        ; $6f21: $13
    ld [bc], a                                    ; $6f22: $02
    inc c                                         ; $6f23: $0c

jr_066_6f24:
    add hl, de                                    ; $6f24: $19
    inc de                                        ; $6f25: $13
    ld [bc], a                                    ; $6f26: $02
    dec c                                         ; $6f27: $0d
    dec de                                        ; $6f28: $1b
    inc de                                        ; $6f29: $13
    ld [bc], a                                    ; $6f2a: $02
    ld c, $18                                     ; $6f2b: $0e $18
    inc d                                         ; $6f2d: $14
    ld [bc], a                                    ; $6f2e: $02
    rrca                                          ; $6f2f: $0f
    ld a, [de]                                    ; $6f30: $1a
    inc d                                         ; $6f31: $14
    ld [bc], a                                    ; $6f32: $02
    db $10                                        ; $6f33: $10
    rla                                           ; $6f34: $17
    dec d                                         ; $6f35: $15
    ld [bc], a                                    ; $6f36: $02
    ld de, $151b                                  ; $6f37: $11 $1b $15
    ld [bc], a                                    ; $6f3a: $02
    ld [de], a                                    ; $6f3b: $12
    inc hl                                        ; $6f3c: $23
    ld d, $02                                     ; $6f3d: $16 $02
    inc de                                        ; $6f3f: $13
    inc h                                         ; $6f40: $24
    ld a, [de]                                    ; $6f41: $1a
    ld [bc], a                                    ; $6f42: $02
    inc d                                         ; $6f43: $14
    add hl, de                                    ; $6f44: $19
    inc e                                         ; $6f45: $1c
    ld [bc], a                                    ; $6f46: $02
    dec d                                         ; $6f47: $15
    dec e                                         ; $6f48: $1d
    inc e                                         ; $6f49: $1c
    ld [bc], a                                    ; $6f4a: $02
    ld d, $23                                     ; $6f4b: $16 $23
    ld e, $02                                     ; $6f4d: $1e $02
    rla                                           ; $6f4f: $17
    dec h                                         ; $6f50: $25
    ld e, $02                                     ; $6f51: $1e $02
    jr @+$24                                      ; $6f53: $18 $22

    rra                                           ; $6f55: $1f
    ld [bc], a                                    ; $6f56: $02
    add hl, de                                    ; $6f57: $19
    inc h                                         ; $6f58: $24
    rra                                           ; $6f59: $1f
    ld [bc], a                                    ; $6f5a: $02
    ld a, [de]                                    ; $6f5b: $1a
    ld hl, $0220                                  ; $6f5c: $21 $20 $02
    dec de                                        ; $6f5f: $1b
    inc hl                                        ; $6f60: $23
    jr nz, jr_066_6f65                            ; $6f61: $20 $02

    inc e                                         ; $6f63: $1c
    dec h                                         ; $6f64: $25

jr_066_6f65:
    jr nz, jr_066_6f69                            ; $6f65: $20 $02

    dec e                                         ; $6f67: $1d
    dec d                                         ; $6f68: $15

jr_066_6f69:
    ld hl, $1e02                                  ; $6f69: $21 $02 $1e
    jr nz, jr_066_6f8f                            ; $6f6c: $20 $21

    ld [bc], a                                    ; $6f6e: $02
    rra                                           ; $6f6f: $1f
    ld [hl+], a                                   ; $6f70: $22
    ld hl, $2002                                  ; $6f71: $21 $02 $20
    inc h                                         ; $6f74: $24
    ld hl, $2102                                  ; $6f75: $21 $02 $21
    inc hl                                        ; $6f78: $23
    ld [hl+], a                                   ; $6f79: $22
    ld [bc], a                                    ; $6f7a: $02
    ld [hl+], a                                   ; $6f7b: $22
    dec h                                         ; $6f7c: $25
    ld [hl+], a                                   ; $6f7d: $22
    ld [bc], a                                    ; $6f7e: $02
    inc hl                                        ; $6f7f: $23
    rla                                           ; $6f80: $17
    inc h                                         ; $6f81: $24
    ld [bc], a                                    ; $6f82: $02
    inc h                                         ; $6f83: $24
    dec h                                         ; $6f84: $25
    dec h                                         ; $6f85: $25
    ld [bc], a                                    ; $6f86: $02
    dec h                                         ; $6f87: $25
    ld a, [de]                                    ; $6f88: $1a
    ld h, $02                                     ; $6f89: $26 $02
    ld h, $25                                     ; $6f8b: $26 $25
    add hl, hl                                    ; $6f8d: $29
    ld [bc], a                                    ; $6f8e: $02

jr_066_6f8f:
    daa                                           ; $6f8f: $27
    ld a, [de]                                    ; $6f90: $1a
    ld a, [hl+]                                   ; $6f91: $2a
    ld [bc], a                                    ; $6f92: $02
    jr z, jr_066_6fb9                             ; $6f93: $28 $24

    inc l                                         ; $6f95: $2c
    ld [bc], a                                    ; $6f96: $02
    add hl, hl                                    ; $6f97: $29
    add hl, de                                    ; $6f98: $19
    ld l, $02                                     ; $6f99: $2e $02
    ld a, [hl+]                                   ; $6f9b: $2a
    inc hl                                        ; $6f9c: $23
    cpl                                           ; $6f9d: $2f
    ld [bc], a                                    ; $6f9e: $02
    dec hl                                        ; $6f9f: $2b
    ld a, [de]                                    ; $6fa0: $1a
    ld [hl-], a                                   ; $6fa1: $32
    ld [bc], a                                    ; $6fa2: $02
    inc l                                         ; $6fa3: $2c
    inc h                                         ; $6fa4: $24
    ld [hl-], a                                   ; $6fa5: $32
    ld [bc], a                                    ; $6fa6: $02
    dec l                                         ; $6fa7: $2d
    add hl, de                                    ; $6fa8: $19
    ld [hl], $02                                  ; $6fa9: $36 $02
    ld l, $25                                     ; $6fab: $2e $25
    ld [hl], $02                                  ; $6fad: $36 $02
    cpl                                           ; $6faf: $2f
    add hl, de                                    ; $6fb0: $19
    ld a, [hl-]                                   ; $6fb1: $3a
    ld [bc], a                                    ; $6fb2: $02
    jr nc, jr_066_6fda                            ; $6fb3: $30 $25

    ld a, [hl-]                                   ; $6fb5: $3a
    rst $38                                       ; $6fb6: $ff
    rst $38                                       ; $6fb7: $ff
    rst $38                                       ; $6fb8: $ff

jr_066_6fb9:
    pop bc                                        ; $6fb9: $c1
    ld l, a                                       ; $6fba: $6f
    ld a, d                                       ; $6fbb: $7a
    ld [hl], l                                    ; $6fbc: $75
    adc [hl]                                      ; $6fbd: $8e
    ld a, h                                       ; $6fbe: $7c
    or b                                          ; $6fbf: $b0
    ld a, h                                       ; $6fc0: $7c
    sbc a                                         ; $6fc1: $9f
    ld l, $0e                                     ; $6fc2: $2e $0e
    ld c, $0e                                     ; $6fc4: $0e $0e
    ld c, l                                       ; $6fc6: $4d
    rst $38                                       ; $6fc7: $ff
    add sp, -$10                                  ; $6fc8: $e8 $f0
    ld [$666e], a                                 ; $6fca: $ea $6e $66
    db $e4                                        ; $6fcd: $e4
    pop hl                                        ; $6fce: $e1
    dec c                                         ; $6fcf: $0d
    dec c                                         ; $6fd0: $0d
    ldh [$e9], a                                  ; $6fd1: $e0 $e9
    call c, Call_000_2ee2                         ; $6fd3: $dc $e2 $2e
    ld c, [hl]                                    ; $6fd6: $4e
    db $dd                                        ; $6fd7: $dd
    rst $20                                       ; $6fd8: $e7
    reti                                          ; $6fd9: $d9


jr_066_6fda:
    ld l, $db                                     ; $6fda: $2e $db
    ldh [$d9], a                                  ; $6fdc: $e0 $d9
    and $2e                                       ; $6fde: $e6 $2e
    ld c, $f0                                     ; $6fe0: $0e $f0
    ld [$2e2e], a                                 ; $6fe2: $ea $2e $2e
    ret nz                                        ; $6fe5: $c0

    and h                                         ; $6fe6: $a4
    db $e3                                        ; $6fe7: $e3
    cp l                                          ; $6fe8: $bd
    jp hl                                         ; $6fe9: $e9


    or c                                          ; $6fea: $b1
    ldh [$8c], a                                  ; $6feb: $e0 $8c
    ldh [$d0], a                                  ; $6fed: $e0 $d0
    and $c1                                       ; $6fef: $e6 $c1
    ldh [$4e], a                                  ; $6ff1: $e0 $4e
    ld c, [hl]                                    ; $6ff3: $4e
    jp nz, $e7c0                                  ; $6ff4: $c2 $c0 $e7

    ld l, $f0                                     ; $6ff7: $2e $f0
    ld [$e1d7], a                                 ; $6ff9: $ea $d7 $e1
    ld h, d                                       ; $6ffc: $62
    pop hl                                        ; $6ffd: $e1
    ld a, l                                       ; $6ffe: $7d
    pop hl                                        ; $6fff: $e1
    dec c                                         ; $7000: $0d
    dec l                                         ; $7001: $2d
    ret nz                                        ; $7002: $c0

    ld e, c                                       ; $7003: $59
    ldh [$fc], a                                  ; $7004: $e0 $fc
    ldh [$c0], a                                  ; $7006: $e0 $c0
    pop hl                                        ; $7008: $e1

jr_066_7009:
    xor c                                         ; $7009: $a9
    pop hl                                        ; $700a: $e1
    ret nc                                        ; $700b: $d0

    push hl                                       ; $700c: $e5
    sbc h                                         ; $700d: $9c
    ldh [$0e], a                                  ; $700e: $e0 $0e
    ld c, $e3                                     ; $7010: $0e $e3
    ld c, [hl]                                    ; $7012: $4e
    ld c, $f0                                     ; $7013: $0e $f0
    ld a, [c]                                     ; $7015: $f2
    sub a                                         ; $7016: $97
    ld [c], a                                     ; $7017: $e2
    add b                                         ; $7018: $80
    db $e3                                        ; $7019: $e3
    dec c                                         ; $701a: $0d
    ld l, l                                       ; $701b: $6d
    ld l, e                                       ; $701c: $6b
    rlca                                          ; $701d: $07
    dec hl                                        ; $701e: $2b
    ld a, [bc]                                    ; $701f: $0a
    ld a, [hl+]                                   ; $7020: $2a
    cp [hl]                                       ; $7021: $be
    ldh [$c0], a                                  ; $7022: $e0 $c0
    ld a, [c]                                     ; $7024: $f2
    jr jr_066_7009                                ; $7025: $18 $e2

    ld hl, sp-$40                                 ; $7027: $f8 $c0
    ldh a, [$ed]                                  ; $7029: $f0 $ed
    cp $4a                                        ; $702b: $fe $4a
    rst $20                                       ; $702d: $e7
    ld l, l                                       ; $702e: $6d
    ld l, e                                       ; $702f: $6b
    dec c                                         ; $7030: $0d
    ld l, e                                       ; $7031: $6b
    ld a, [bc]                                    ; $7032: $0a
    ld a, [hl+]                                   ; $7033: $2a
    dec bc                                        ; $7034: $0b
    ld bc, $7d0b                                  ; $7035: $01 $0b $7d
    pop hl                                        ; $7038: $e1
    scf                                           ; $7039: $37
    db $e4                                        ; $703a: $e4
    ret nc                                        ; $703b: $d0

    db $ec                                        ; $703c: $ec
    cp b                                          ; $703d: $b8
    pop bc                                        ; $703e: $c1
    ldh a, [$ed]                                  ; $703f: $f0 $ed
    inc bc                                        ; $7041: $03
    ld [c], a                                     ; $7042: $e2
    and c                                         ; $7043: $a1
    pop bc                                        ; $7044: $c1
    ld e, $c1                                     ; $7045: $1e $c1
    ldh [$0d], a                                  ; $7047: $e0 $0d
    dec bc                                        ; $7049: $0b
    dec hl                                        ; $704a: $2b
    dec bc                                        ; $704b: $0b
    db $fd                                        ; $704c: $fd
    ldh [$39], a                                  ; $704d: $e0 $39
    pop hl                                        ; $704f: $e1
    xor l                                         ; $7050: $ad
    jp nz, $d060                                  ; $7051: $c2 $60 $d0

    db $ed                                        ; $7054: $ed
    sub $e1                                       ; $7055: $d6 $e1
    ldh a, [$ea]                                  ; $7057: $f0 $ea
    add a                                         ; $7059: $87
    ret nz                                        ; $705a: $c0

    db $10                                        ; $705b: $10
    pop hl                                        ; $705c: $e1
    ld l, l                                       ; $705d: $6d
    dec c                                         ; $705e: $0d
    rst $38                                       ; $705f: $ff
    pop hl                                        ; $7060: $e1
    inc de                                        ; $7061: $13
    ld c, l                                       ; $7062: $4d
    dec c                                         ; $7063: $0d
    jp nz, $c0e0                                  ; $7064: $c2 $e0 $c0

    ldh [rWX], a                                  ; $7067: $e0 $4b
    ret nz                                        ; $7069: $c0

    and $d0                                       ; $706a: $e6 $d0
    xor $96                                       ; $706c: $ee $96
    pop hl                                        ; $706e: $e1
    ld hl, sp+$30                                 ; $706f: $f8 $30
    jp hl                                         ; $7071: $e9


    rst $00                                       ; $7072: $c7
    ldh [$86], a                                  ; $7073: $e0 $86
    pop hl                                        ; $7075: $e1
    dec c                                         ; $7076: $0d
    dec c                                         ; $7077: $0d
    ld l, e                                       ; $7078: $6b
    ld l, e                                       ; $7079: $6b
    ld l, e                                       ; $707a: $6b
    rst $38                                       ; $707b: $ff
    dec l                                         ; $707c: $2d
    dec c                                         ; $707d: $0d
    ld c, l                                       ; $707e: $4d
    ld l, e                                       ; $707f: $6b
    ld c, e                                       ; $7080: $4b
    ld l, e                                       ; $7081: $6b
    ld c, e                                       ; $7082: $4b
    ld c, e                                       ; $7083: $4b
    rlca                                          ; $7084: $07
    ld l, e                                       ; $7085: $6b
    dec c                                         ; $7086: $0d
    ld l, l                                       ; $7087: $6d
    dec l                                         ; $7088: $2d
    rst $00                                       ; $7089: $c7
    ret nc                                        ; $708a: $d0

    db $eb                                        ; $708b: $eb
    dec h                                         ; $708c: $25
    call nz, $c7f0                                ; $708d: $c4 $f0 $c7
    adc b                                         ; $7090: $88
    ldh [$c2], a                                  ; $7091: $e0 $c2
    add $e0                                       ; $7093: $c6 $e0
    ld l, e                                       ; $7095: $6b
    ld b, [hl]                                    ; $7096: $46
    ldh [$7e], a                                  ; $7097: $e0 $7e
    ldh [$c8], a                                  ; $7099: $e0 $c8
    ret nz                                        ; $709b: $c0

    cp $c0                                        ; $709c: $fe $c0
    dec c                                         ; $709e: $0d
    dec c                                         ; $709f: $0d
    ld b, c                                       ; $70a0: $41
    ld l, l                                       ; $70a1: $6d
    push af                                       ; $70a2: $f5
    xor h                                         ; $70a3: $ac
    adc $a3                                       ; $70a4: $ce $a3
    sub h                                         ; $70a6: $94
    ret z                                         ; $70a7: $c8

    ldh a, [$e5]                                  ; $70a8: $f0 $e5
    adc a                                         ; $70aa: $8f
    ret nz                                        ; $70ab: $c0

    dec bc                                        ; $70ac: $0b
    ld b, [hl]                                    ; $70ad: $46
    ld [c], a                                     ; $70ae: $e2
    nop                                           ; $70af: $00
    rlca                                          ; $70b0: $07
    ldh [$c5], a                                  ; $70b1: $e0 $c5
    db $e3                                        ; $70b3: $e3
    cp c                                          ; $70b4: $b9
    ld [c], a                                     ; $70b5: $e2
    sub a                                         ; $70b6: $97
    xor c                                         ; $70b7: $a9
    push hl                                       ; $70b8: $e5
    and e                                         ; $70b9: $a3
    ld h, h                                       ; $70ba: $64
    ret nz                                        ; $70bb: $c0

    sbc h                                         ; $70bc: $9c
    and b                                         ; $70bd: $a0
    ld hl, sp-$5f                                 ; $70be: $f8 $a1
    db $e4                                        ; $70c0: $e4
    adc d                                         ; $70c1: $8a
    db $e4                                        ; $70c2: $e4
    adc $c0                                       ; $70c3: $ce $c0
    ld l, l                                       ; $70c5: $6d
    db $fd                                        ; $70c6: $fd
    pop hl                                        ; $70c7: $e1
    add b                                         ; $70c8: $80
    pop hl                                        ; $70c9: $e1
    ld a, [bc]                                    ; $70ca: $0a
    ld a, [hl+]                                   ; $70cb: $2a
    dec hl                                        ; $70cc: $2b
    inc b                                         ; $70cd: $04
    ret                                           ; $70ce: $c9


    ret nz                                        ; $70cf: $c0

    add d                                         ; $70d0: $82
    ldh [rOCPD], a                                ; $70d1: $e0 $6b
    dec a                                         ; $70d3: $3d
    ret nz                                        ; $70d4: $c0

    ld b, e                                       ; $70d5: $43
    ldh [rSTAT], a                                ; $70d6: $e0 $41
    ret nz                                        ; $70d8: $c0

    ret nc                                        ; $70d9: $d0

    db $eb                                        ; $70da: $eb
    di                                            ; $70db: $f3
    and l                                         ; $70dc: $a5
    ret z                                         ; $70dd: $c8

    ld sp, hl                                     ; $70de: $f9
    and l                                         ; $70df: $a5
    db $e3                                        ; $70e0: $e3
    and h                                         ; $70e1: $a4
    set 0, c                                      ; $70e2: $cb $c1
    ld l, e                                       ; $70e4: $6b
    jp nz, $83e2                                  ; $70e5: $c2 $e2 $83

    ldh [rWX], a                                  ; $70e8: $e0 $4b
    dec l                                         ; $70ea: $2d
    inc bc                                        ; $70eb: $03
    dec l                                         ; $70ec: $2d
    dec l                                         ; $70ed: $2d
    cp d                                          ; $70ee: $ba
    jp $e041                                      ; $70ef: $c3 $41 $e0


    ret nc                                        ; $70f2: $d0

    db $ed                                        ; $70f3: $ed
    inc e                                         ; $70f4: $1c
    and c                                         ; $70f5: $a1
    sbc [hl]                                      ; $70f6: $9e
    ret nz                                        ; $70f7: $c0

    ld d, l                                       ; $70f8: $55
    and b                                         ; $70f9: $a0
    ld a, h                                       ; $70fa: $7c
    push af                                       ; $70fb: $f5
    add e                                         ; $70fc: $83
    ldh a, [$e4]                                  ; $70fd: $f0 $e4
    dec bc                                        ; $70ff: $0b
    dec c                                         ; $7100: $0d
    dec hl                                        ; $7101: $2b
    ld a, [bc]                                    ; $7102: $0a
    ld a, [bc]                                    ; $7103: $0a
    adc [hl]                                      ; $7104: $8e
    ret nz                                        ; $7105: $c0

    dec bc                                        ; $7106: $0b
    ld c, e                                       ; $7107: $4b
    ld c, e                                       ; $7108: $4b
    ret nz                                        ; $7109: $c0

    ldh [$0d], a                                  ; $710a: $e0 $0d
    pop bc                                        ; $710c: $c1
    db $e3                                        ; $710d: $e3
    cp d                                          ; $710e: $ba
    ldh [$d0], a                                  ; $710f: $e0 $d0
    xor $87                                       ; $7111: $ee $87
    pop hl                                        ; $7113: $e1
    ld c, b                                       ; $7114: $48
    ld h, c                                       ; $7115: $61
    pop bc                                        ; $7116: $c1
    ldh a, [$ec]                                  ; $7117: $f0 $ec
    ld c, h                                       ; $7119: $4c
    ret nz                                        ; $711a: $c0

    ld a, [bc]                                    ; $711b: $0a
    ld b, h                                       ; $711c: $44
    ldh [$c2], a                                  ; $711d: $e0 $c2
    ldh [$2b], a                                  ; $711f: $e0 $2b
    pop bc                                        ; $7121: $c1
    ldh [rP1], a                                  ; $7122: $e0 $00
    push bc                                       ; $7124: $c5
    ret nz                                        ; $7125: $c0

    ld a, l                                       ; $7126: $7d
    pop hl                                        ; $7127: $e1
    ld a, b                                       ; $7128: $78
    and d                                         ; $7129: $a2
    ret nc                                        ; $712a: $d0

    db $ec                                        ; $712b: $ec
    adc a                                         ; $712c: $8f
    add c                                         ; $712d: $81
    sub [hl]                                      ; $712e: $96
    and d                                         ; $712f: $a2
    add b                                         ; $7130: $80
    db $e3                                        ; $7131: $e3
    db $e3                                        ; $7132: $e3
    add d                                         ; $7133: $82
    ld a, [hl]                                    ; $7134: $7e
    sbc d                                         ; $7135: $9a
    ret nz                                        ; $7136: $c0

    ld l, e                                       ; $7137: $6b
    dec c                                         ; $7138: $0d
    dec hl                                        ; $7139: $2b
    ld c, d                                       ; $713a: $4a
    ld a, [bc]                                    ; $713b: $0a
    dec hl                                        ; $713c: $2b
    ret nz                                        ; $713d: $c0

    pop hl                                        ; $713e: $e1
    ld b, $c1                                     ; $713f: $06 $c1
    pop hl                                        ; $7141: $e1
    dec c                                         ; $7142: $0d
    ld l, e                                       ; $7143: $6b
    adc d                                         ; $7144: $8a
    and e                                         ; $7145: $a3
    sub a                                         ; $7146: $97
    ld [c], a                                     ; $7147: $e2
    ret nc                                        ; $7148: $d0

    pop af                                        ; $7149: $f1
    ld e, l                                       ; $714a: $5d
    add d                                         ; $714b: $82
    xor c                                         ; $714c: $a9
    add c                                         ; $714d: $81
    db $ec                                        ; $714e: $ec
    ret nz                                        ; $714f: $c0

    db $e4                                        ; $7150: $e4
    ld c, e                                       ; $7151: $4b
    ret nz                                        ; $7152: $c0

    ld a, [bc]                                    ; $7153: $0a
    ld c, d                                       ; $7154: $4a
    db $d3                                        ; $7155: $d3
    and b                                         ; $7156: $a0
    dec c                                         ; $7157: $0d
    ld c, e                                       ; $7158: $4b
    ld l, e                                       ; $7159: $6b
    jr nz, jr_066_719e                            ; $715a: $20 $42

    pop hl                                        ; $715c: $e1
    ret nz                                        ; $715d: $c0

    pop hl                                        ; $715e: $e1
    ld hl, $c0a1                                  ; $715f: $21 $a1 $c0
    push hl                                       ; $7162: $e5
    ret nc                                        ; $7163: $d0

    add sp, $6d                                   ; $7164: $e8 $6d
    rst $38                                       ; $7166: $ff
    add sp, -$4c                                  ; $7167: $e8 $b4
    add c                                         ; $7169: $81
    ld h, b                                       ; $716a: $60
    ldh a, [$e2]                                  ; $716b: $f0 $e2
    ret nz                                        ; $716d: $c0

    ld [c], a                                     ; $716e: $e2
    add c                                         ; $716f: $81
    pop hl                                        ; $7170: $e1

jr_066_7171:
    push bc                                       ; $7171: $c5
    and b                                         ; $7172: $a0
    inc bc                                        ; $7173: $03
    ldh [$2d], a                                  ; $7174: $e0 $2d
    dec l                                         ; $7176: $2d
    add hl, bc                                    ; $7177: $09
    ret nz                                        ; $7178: $c0

    add e                                         ; $7179: $83
    ld c, $0e                                     ; $717a: $0e $0e
    ldh [$e7], a                                  ; $717c: $e0 $e7
    ret nc                                        ; $717e: $d0

    add sp, -$32                                  ; $717f: $e8 $ce
    ld [c], a                                     ; $7181: $e2
    jp hl                                         ; $7182: $e9


    and b                                         ; $7183: $a0
    jp Jump_000_2ee1                              ; $7184: $c3 $e1 $2e


    rlca                                          ; $7187: $07
    ld c, [hl]                                    ; $7188: $4e
    ld c, $4e                                     ; $7189: $0e $4e

jr_066_718b:
    ldh a, [$e3]                                  ; $718b: $f0 $e3
    res 4, b                                      ; $718d: $cb $a0
    ld b, c                                       ; $718f: $41
    ldh [$c3], a                                  ; $7190: $e0 $c3
    ret nz                                        ; $7192: $c0

    dec b                                         ; $7193: $05
    pop bc                                        ; $7194: $c1
    rrca                                          ; $7195: $0f
    dec c                                         ; $7196: $0d
    dec l                                         ; $7197: $2d
    ld l, e                                       ; $7198: $6b
    dec l                                         ; $7199: $2d
    ldh [$ec], a                                  ; $719a: $e0 $ec
    ret nc                                        ; $719c: $d0

    rst $20                                       ; $719d: $e7

jr_066_719e:
    xor c                                         ; $719e: $a9
    ldh [$c0], a                                  ; $719f: $e0 $c0
    push hl                                       ; $71a1: $e5
    and e                                         ; $71a2: $a3
    ld l, [hl]                                    ; $71a3: $6e
    ld l, [hl]                                    ; $71a4: $6e
    cp a                                          ; $71a5: $bf
    ldh [$99], a                                  ; $71a6: $e0 $99
    ldh [rPCM34], a                               ; $71a8: $e0 $77
    add b                                         ; $71aa: $80
    dec l                                         ; $71ab: $2d
    pop de                                        ; $71ac: $d1
    add b                                         ; $71ad: $80
    ld c, e                                       ; $71ae: $4b
    jr jr_066_7171                                ; $71af: $18 $c0

    ldh [$85], a                                  ; $71b1: $e0 $85
    ret nz                                        ; $71b3: $c0

    ld b, l                                       ; $71b4: $45
    and b                                         ; $71b5: $a0
    ld l, e                                       ; $71b6: $6b
    ld l, l                                       ; $71b7: $6d
    ret nz                                        ; $71b8: $c0

    ld [c], a                                     ; $71b9: $e2
    ldh [$e5], a                                  ; $71ba: $e0 $e5
    ret nc                                        ; $71bc: $d0

    db $ed                                        ; $71bd: $ed
    sub [hl]                                      ; $71be: $96
    add b                                         ; $71bf: $80
    ld [c], a                                     ; $71c0: $e2
    ld l, $6e                                     ; $71c1: $2e $6e
    ld [hl], $85                                  ; $71c3: $36 $85
    ld l, l                                       ; $71c5: $6d
    cp l                                          ; $71c6: $bd
    pop hl                                        ; $71c7: $e1
    ld c, e                                       ; $71c8: $4b
    and c                                         ; $71c9: $a1
    ld l, e                                       ; $71ca: $6b
    jr nz, jr_066_718b                            ; $71cb: $20 $be

    ldh [rWY], a                                  ; $71cd: $e0 $4a
    jp $e161                                      ; $71cf: $c3 $61 $e1


    ldh [$e7], a                                  ; $71d2: $e0 $e7
    ret nc                                        ; $71d4: $d0

    db $ed                                        ; $71d5: $ed
    dec c                                         ; $71d6: $0d
    dec bc                                        ; $71d7: $0b
    pop hl                                        ; $71d8: $e1
    or $67                                        ; $71d9: $f6 $67
    ld [$e1d2], sp                                ; $71db: $08 $d2 $e1
    sub e                                         ; $71de: $93
    ld h, b                                       ; $71df: $60
    adc d                                         ; $71e0: $8a
    add c                                         ; $71e1: $81
    dec hl                                        ; $71e2: $2b
    add l                                         ; $71e3: $85
    and b                                         ; $71e4: $a0
    add c                                         ; $71e5: $81
    add c                                         ; $71e6: $81
    ld b, c                                       ; $71e7: $41
    db $e4                                        ; $71e8: $e4
    ret nc                                        ; $71e9: $d0

    db $f4                                        ; $71ea: $f4
    ld a, b                                       ; $71eb: $78
    dec a                                         ; $71ec: $3d
    ld [c], a                                     ; $71ed: $e2
    ret nz                                        ; $71ee: $c0

    add sp, -$53                                  ; $71ef: $e8 $ad
    ret nz                                        ; $71f1: $c0

    ld c, l                                       ; $71f2: $4d
    dec l                                         ; $71f3: $2d
    dec l                                         ; $71f4: $2d
    ld c, l                                       ; $71f5: $4d
    adc d                                         ; $71f6: $8a
    add b                                         ; $71f7: $80
    nop                                           ; $71f8: $00
    ld b, b                                       ; $71f9: $40
    pop hl                                        ; $71fa: $e1
    ld c, [hl]                                    ; $71fb: $4e
    and c                                         ; $71fc: $a1
    ret nc                                        ; $71fd: $d0

    ei                                            ; $71fe: $fb

jr_066_71ff:
    db $e3                                        ; $71ff: $e3
    ret nz                                        ; $7200: $c0

    ldh a, [$eb]                                  ; $7201: $f0 $eb
    sbc d                                         ; $7203: $9a
    add b                                         ; $7204: $80
    ret nc                                        ; $7205: $d0

    and c                                         ; $7206: $a1
    cp l                                          ; $7207: $bd
    pop hl                                        ; $7208: $e1
    ld [de], a                                    ; $7209: $12
    call Call_000_2d60                            ; $720a: $cd $60 $2d
    add c                                         ; $720d: $81
    pop hl                                        ; $720e: $e1
    ret nc                                        ; $720f: $d0

    rst $30                                       ; $7210: $f7
    ld l, l                                       ; $7211: $6d
    ldh a, [$ef]                                  ; $7212: $f0 $ef
    ld e, d                                       ; $7214: $5a
    add c                                         ; $7215: $81
    ret nz                                        ; $7216: $c0

    pop hl                                        ; $7217: $e1
    cpl                                           ; $7218: $2f
    dec l                                         ; $7219: $2d
    dec c                                         ; $721a: $0d
    ld c, e                                       ; $721b: $4b
    ld c, e                                       ; $721c: $4b
    dec a                                         ; $721d: $3d
    pop hl                                        ; $721e: $e1
    ld c, l                                       ; $721f: $4d
    ld b, b                                       ; $7220: $40
    jp hl                                         ; $7221: $e9


    ret nc                                        ; $7222: $d0

    rst $28                                       ; $7223: $ef
    nop                                           ; $7224: $00
    inc b                                         ; $7225: $04
    push bc                                       ; $7226: $c5
    ldh a, [$e6]                                  ; $7227: $f0 $e6
    ld sp, $7fc1                                  ; $7229: $31 $c1 $7f
    ld [c], a                                     ; $722c: $e2
    ret nz                                        ; $722d: $c0

    ldh [$c2], a                                  ; $722e: $e0 $c2
    add c                                         ; $7230: $81
    nop                                           ; $7231: $00
    ld [$ecd0], a                                 ; $7232: $ea $d0 $ec
    jr nz, jr_066_71ff                            ; $7235: $20 $c8

    and e                                         ; $7237: $a3
    ret                                           ; $7238: $c9


    and b                                         ; $7239: $a0
    ld a, [hl]                                    ; $723a: $7e
    add b                                         ; $723b: $80
    jp nz, $a0a1                                  ; $723c: $c2 $a1 $a0

    ld b, b                                       ; $723f: $40
    dec l                                         ; $7240: $2d
    ld d, c                                       ; $7241: $51
    ret nz                                        ; $7242: $c0

    ld d, [hl]                                    ; $7243: $56
    add b                                         ; $7244: $80
    db $10                                        ; $7245: $10

jr_066_7246:
    jp z, $8fa0                                   ; $7246: $ca $a0 $8f

    ld h, b                                       ; $7249: $60
    add hl, bc                                    ; $724a: $09
    ld h, b                                       ; $724b: $60
    inc bc                                        ; $724c: $03
    and b                                         ; $724d: $a0
    ld c, l                                       ; $724e: $4d
    ldh [$e6], a                                  ; $724f: $e0 $e6
    ret nc                                        ; $7251: $d0

    db $ed                                        ; $7252: $ed
    rlca                                          ; $7253: $07
    jp nz, $c730                                  ; $7254: $c2 $30 $c7

    and b                                         ; $7257: $a0
    and [hl]                                      ; $7258: $a6
    ld h, b                                       ; $7259: $60
    ret z                                         ; $725a: $c8

    ldh [$58], a                                  ; $725b: $e0 $58
    add d                                         ; $725d: $82
    ld l, l                                       ; $725e: $6d
    ld l, l                                       ; $725f: $6d
    db $fc                                        ; $7260: $fc
    and b                                         ; $7261: $a0
    adc e                                         ; $7262: $8b
    and c                                         ; $7263: $a1
    nop                                           ; $7264: $00
    call Call_066_4140                            ; $7265: $cd $40 $41
    add b                                         ; $7268: $80
    call Call_000_0940                            ; $7269: $cd $40 $09
    ld b, d                                       ; $726c: $42
    ldh [$e4], a                                  ; $726d: $e0 $e4
    ret nc                                        ; $726f: $d0

    db $ed                                        ; $7270: $ed
    rlca                                          ; $7271: $07
    call nz, $a27d                                ; $7272: $c4 $7d $a2
    db $10                                        ; $7275: $10
    or e                                          ; $7276: $b3
    and c                                         ; $7277: $a1
    ld d, d                                       ; $7278: $52
    jp nz, $c03f                                  ; $7279: $c2 $3f $c0

    adc d                                         ; $727c: $8a
    ld h, b                                       ; $727d: $60
    dec c                                         ; $727e: $0d
    add b                                         ; $727f: $80
    add b                                         ; $7280: $80
    cp a                                          ; $7281: $bf
    ld [c], a                                     ; $7282: $e2
    ret z                                         ; $7283: $c8

    jr nz, jr_066_72e6                            ; $7284: $20 $60

    ldh [$e6], a                                  ; $7286: $e0 $e6
    ret nc                                        ; $7288: $d0

    db $ed                                        ; $7289: $ed
    dec sp                                        ; $728a: $3b
    and e                                         ; $728b: $a3
    inc a                                         ; $728c: $3c
    add b                                         ; $728d: $80
    or l                                          ; $728e: $b5
    ldh [$2e], a                                  ; $728f: $e0 $2e
    ld c, [hl]                                    ; $7291: $4e
    or d                                          ; $7292: $b2
    ret nz                                        ; $7293: $c0

    jr jr_066_72d7                                ; $7294: $18 $41

    pop hl                                        ; $7296: $e1
    rst $38                                       ; $7297: $ff
    and b                                         ; $7298: $a0
    ld c, a                                       ; $7299: $4f
    ld b, b                                       ; $729a: $40
    ld a, [bc]                                    ; $729b: $0a
    ld a, [bc]                                    ; $729c: $0a
    ret nz                                        ; $729d: $c0

    ld [c], a                                     ; $729e: $e2
    rst $00                                       ; $729f: $c7
    ld b, b                                       ; $72a0: $40
    ret                                           ; $72a1: $c9


    ld hl, $e080                                  ; $72a2: $21 $80 $e0
    db $e4                                        ; $72a5: $e4
    ret nc                                        ; $72a6: $d0

    db $ed                                        ; $72a7: $ed
    ret nz                                        ; $72a8: $c0

    db $e4                                        ; $72a9: $e4
    db $10                                        ; $72aa: $10
    pop hl                                        ; $72ab: $e1
    or h                                          ; $72ac: $b4
    nop                                           ; $72ad: $00
    jp nz, $d2e2                                  ; $72ae: $c2 $e2 $d2

    ld b, c                                       ; $72b1: $41
    dec l                                         ; $72b2: $2d
    rst $18                                       ; $72b3: $df
    ld c, e                                       ; $72b4: $4b
    dec c                                         ; $72b5: $0d
    ld c, d                                       ; $72b6: $4a
    ld c, d                                       ; $72b7: $4a
    ld c, d                                       ; $72b8: $4a
    adc [hl]                                      ; $72b9: $8e
    ld b, b                                       ; $72ba: $40
    dec bc                                        ; $72bb: $0b
    dec bc                                        ; $72bc: $0b
    jr nz, jr_066_7246                            ; $72bd: $20 $87

    ld b, b                                       ; $72bf: $40
    rst $38                                       ; $72c0: $ff
    add b                                         ; $72c1: $80
    ldh [$e4], a                                  ; $72c2: $e0 $e4
    ret nc                                        ; $72c4: $d0

    xor $bb                                       ; $72c5: $ee $bb
    add [hl]                                      ; $72c7: $86
    ld c, $f5                                     ; $72c8: $0e $f5
    ldh [$32], a                                  ; $72ca: $e0 $32
    jp nz, $bd10                                  ; $72cc: $c2 $10 $bd

    pop bc                                        ; $72cf: $c1
    ret nz                                        ; $72d0: $c0

    pop hl                                        ; $72d1: $e1
    ld a, l                                       ; $72d2: $7d
    add c                                         ; $72d3: $81

jr_066_72d4:
    db $fd                                        ; $72d4: $fd
    add b                                         ; $72d5: $80
    dec c                                         ; $72d6: $0d

jr_066_72d7:
    ret nz                                        ; $72d7: $c0

    ld h, c                                       ; $72d8: $61
    dec a                                         ; $72d9: $3d
    ret nz                                        ; $72da: $c0

    ldh [$e3], a                                  ; $72db: $e0 $e3
    add b                                         ; $72dd: $80
    ret nc                                        ; $72de: $d0

    db $ed                                        ; $72df: $ed
    ld c, d                                       ; $72e0: $4a
    pop hl                                        ; $72e1: $e1
    ld c, e                                       ; $72e2: $4b
    add d                                         ; $72e3: $82
    add b                                         ; $72e4: $80
    pop hl                                        ; $72e5: $e1

jr_066_72e6:
    ldh a, [$e2]                                  ; $72e6: $f0 $e2
    db $fd                                        ; $72e8: $fd
    jp nz, $a23f                                  ; $72e9: $c2 $3f $a2

    ld l, e                                       ; $72ec: $6b
    ld bc, $0f4a                                  ; $72ed: $01 $4a $0f
    ld b, b                                       ; $72f0: $40
    pop bc                                        ; $72f1: $c1
    ld h, c                                       ; $72f2: $61
    cp $20                                        ; $72f3: $fe $20
    rst $28                                       ; $72f5: $ef
    and c                                         ; $72f6: $a1
    ret nc                                        ; $72f7: $d0

    pop af                                        ; $72f8: $f1
    ld a, e                                       ; $72f9: $7b
    ld h, e                                       ; $72fa: $63
    ld l, $47                                     ; $72fb: $2e $47
    ld h, b                                       ; $72fd: $60
    ld d, [hl]                                    ; $72fe: $56
    add b                                         ; $72ff: $80
    ld a, [de]                                    ; $7300: $1a
    ld h, c                                       ; $7301: $61
    ccf                                           ; $7302: $3f
    and b                                         ; $7303: $a0
    ld c, [hl]                                    ; $7304: $4e
    jr nz, jr_066_72d4                            ; $7305: $20 $cd

    ld hl, $2b0b                                  ; $7307: $21 $0b $2b
    ld hl, sp+$23                                 ; $730a: $f8 $23
    inc b                                         ; $730c: $04

jr_066_730d:
    ld [$d024], sp                                ; $730d: $08 $24 $d0
    db $ed                                        ; $7310: $ed
    ld l, [hl]                                    ; $7311: $6e
    ccf                                           ; $7312: $3f
    nop                                           ; $7313: $00
    pop de                                        ; $7314: $d1
    inc h                                         ; $7315: $24
    ld a, [de]                                    ; $7316: $1a
    jr nz, jr_066_730d                            ; $7317: $20 $f4

    and h                                         ; $7319: $a4
    ret c                                         ; $731a: $d8

    ld b, c                                       ; $731b: $41
    nop                                           ; $731c: $00
    cp [hl]                                       ; $731d: $be
    add e                                         ; $731e: $83
    ccf                                           ; $731f: $3f
    and c                                         ; $7320: $a1
    ld sp, hl                                     ; $7321: $f9
    ld hl, $e17f                                  ; $7322: $21 $7f $e1
    db $e4                                        ; $7325: $e4
    ld [hl+], a                                   ; $7326: $22
    ret nc                                        ; $7327: $d0

    ld [$610b], a                                 ; $7328: $ea $0b $61
    jr c, jr_066_736d                             ; $732b: $38 $40

    ldh [rTAC], a                                 ; $732d: $e0 $07
    ld b, h                                       ; $732f: $44
    jp c, $f400                                   ; $7330: $da $00 $f4

    and e                                         ; $7333: $a3
    cp [hl]                                       ; $7334: $be
    add d                                         ; $7335: $82
    ld a, l                                       ; $7336: $7d
    add e                                         ; $7337: $83
    dec hl                                        ; $7338: $2b
    ld l, e                                       ; $7339: $6b
    ld l, e                                       ; $733a: $6b
    nop                                           ; $733b: $00
    ld a, a                                       ; $733c: $7f
    ldh [$bf], a                                  ; $733d: $e0 $bf

jr_066_733f:
    jr nz, jr_066_733f                            ; $733f: $20 $fe

    ld b, b                                       ; $7341: $40
    ld b, $20                                     ; $7342: $06 $20
    sbc h                                         ; $7344: $9c
    ld h, b                                       ; $7345: $60
    ret nc                                        ; $7346: $d0

    jp hl                                         ; $7347: $e9


    nop                                           ; $7348: $00
    ld h, $07                                     ; $7349: $26 $07
    ld b, b                                       ; $734b: $40
    ld h, b                                       ; $734c: $60
    inc l                                         ; $734d: $2c
    ld hl, $64fb                                  ; $734e: $21 $fb $64
    ld a, [hl]                                    ; $7351: $7e
    add d                                         ; $7352: $82
    ld a, l                                       ; $7353: $7d
    add b                                         ; $7354: $80
    add e                                         ; $7355: $83
    ld b, b                                       ; $7356: $40
    ld a, [bc]                                    ; $7357: $0a
    ld c, d                                       ; $7358: $4a
    cp $a0                                        ; $7359: $fe $a0
    nop                                           ; $735b: $00
    ld a, [hl]                                    ; $735c: $7e
    and b                                         ; $735d: $a0
    ld b, d                                       ; $735e: $42
    nop                                           ; $735f: $00
    cp d                                          ; $7360: $ba
    and c                                         ; $7361: $a1
    ret nc                                        ; $7362: $d0

    db $ec                                        ; $7363: $ec
    ret nz                                        ; $7364: $c0

    ld a, [bc]                                    ; $7365: $0a
    rst $18                                       ; $7366: $df
    ld b, b                                       ; $7367: $40
    inc [hl]                                      ; $7368: $34
    push bc                                       ; $7369: $c5
    ld a, a                                       ; $736a: $7f
    db $e4                                        ; $736b: $e4
    nop                                           ; $736c: $00

jr_066_736d:
    ld a, e                                       ; $736d: $7b
    ld b, b                                       ; $736e: $40
    db $fd                                        ; $736f: $fd
    and b                                         ; $7370: $a0
    ld b, b                                       ; $7371: $40
    ret nz                                        ; $7372: $c0

    inc b                                         ; $7373: $04
    ld [hl+], a                                   ; $7374: $22
    ret nz                                        ; $7375: $c0

    jp hl                                         ; $7376: $e9


    ret nc                                        ; $7377: $d0

    db $e4                                        ; $7378: $e4
    add b                                         ; $7379: $80
    ld a, [bc]                                    ; $737a: $0a
    cp h                                          ; $737b: $bc
    nop                                           ; $737c: $00
    ld b, b                                       ; $737d: $40
    or h                                          ; $737e: $b4
    and h                                         ; $737f: $a4
    ccf                                           ; $7380: $3f
    add c                                         ; $7381: $81
    ret nz                                        ; $7382: $c0

    db $e3                                        ; $7383: $e3
    ld a, [$7a42]                                 ; $7384: $fa $42 $7a
    ld h, c                                       ; $7387: $61
    cp a                                          ; $7388: $bf
    jp nz, $d02d                                  ; $7389: $c2 $2d $d0

    db $ed                                        ; $738c: $ed
    ret nz                                        ; $738d: $c0

    ld b, b                                       ; $738e: $40
    dec c                                         ; $738f: $0d
    xor a                                         ; $7390: $af
    ld b, l                                       ; $7391: $45
    sbc c                                         ; $7392: $99
    ld bc, $2014                                  ; $7393: $01 $14 $20
    ld a, l                                       ; $7396: $7d
    and b                                         ; $7397: $a0
    rst $38                                       ; $7398: $ff
    add b                                         ; $7399: $80
    dec bc                                        ; $739a: $0b
    ld l, e                                       ; $739b: $6b
    nop                                           ; $739c: $00
    db $fd                                        ; $739d: $fd
    ld h, b                                       ; $739e: $60
    ld b, b                                       ; $739f: $40
    ld [c], a                                     ; $73a0: $e2
    ret nz                                        ; $73a1: $c0

    db $eb                                        ; $73a2: $eb
    ld b, b                                       ; $73a3: $40
    ld bc, $ecc0                                  ; $73a4: $01 $c0 $ec
    db $f4                                        ; $73a7: $f4
    and h                                         ; $73a8: $a4
    db $db                                        ; $73a9: $db
    ld [bc], a                                    ; $73aa: $02
    push de                                       ; $73ab: $d5
    nop                                           ; $73ac: $00
    nop                                           ; $73ad: $00
    add h                                         ; $73ae: $84
    pop bc                                        ; $73af: $c1
    jp nz, $c100                                  ; $73b0: $c2 $00 $c1

    nop                                           ; $73b3: $00
    or b                                          ; $73b4: $b0
    ld b, b                                       ; $73b5: $40
    ret nz                                        ; $73b6: $c0

    ld [c], a                                     ; $73b7: $e2
    adc a                                         ; $73b8: $8f
    ld [c], a                                     ; $73b9: $e2
    ret nz                                        ; $73ba: $c0

    add sp, -$10                                  ; $73bb: $e8 $f0
    db $eb                                        ; $73bd: $eb
    nop                                           ; $73be: $00
    ccf                                           ; $73bf: $3f
    jp nz, $23ff                                  ; $73c0: $c2 $ff $23

    ld b, c                                       ; $73c3: $41
    add b                                         ; $73c4: $80
    inc b                                         ; $73c5: $04
    ld b, c                                       ; $73c6: $41
    ret nz                                        ; $73c7: $c0

    pop hl                                        ; $73c8: $e1
    ccf                                           ; $73c9: $3f
    jr nz, jr_066_7401                            ; $73ca: $20 $35

    ld h, b                                       ; $73cc: $60
    ld a, h                                       ; $73cd: $7c
    ld b, b                                       ; $73ce: $40
    inc c                                         ; $73cf: $0c
    jp $d000                                      ; $73d0: $c3 $00 $d0


    db $ed                                        ; $73d3: $ed
    ld c, l                                       ; $73d4: $4d
    ld l, $ee                                     ; $73d5: $2e $ee
    and e                                         ; $73d7: $a3
    add h                                         ; $73d8: $84
    pop bc                                        ; $73d9: $c1
    cp b                                          ; $73da: $b8
    and h                                         ; $73db: $a4
    jp nz, Jump_000_0820                          ; $73dc: $c2 $20 $08

    scf                                           ; $73df: $37
    ret nz                                        ; $73e0: $c0

    ld b, [hl]                                    ; $73e1: $46
    ld h, c                                       ; $73e2: $61
    add c                                         ; $73e3: $81
    ld [c], a                                     ; $73e4: $e2
    dec bc                                        ; $73e5: $0b
    ld a, [$c141]                                 ; $73e6: $fa $41 $c1
    ld [c], a                                     ; $73e9: $e2
    db $ed                                        ; $73ea: $ed
    ld b, b                                       ; $73eb: $40
    inc c                                         ; $73ec: $0c
    call nz, $d000                                ; $73ed: $c4 $00 $d0
    jp hl                                         ; $73f0: $e9


    jr nc, jr_066_7400                            ; $73f1: $30 $0d

    ld e, h                                       ; $73f3: $5c
    ld bc, $a084                                  ; $73f4: $01 $84 $a0
    rlca                                          ; $73f7: $07
    ld h, b                                       ; $73f8: $60
    push bc                                       ; $73f9: $c5
    and d                                         ; $73fa: $a2
    jp $be80                                      ; $73fb: $c3 $80 $be


    ldh [rP1], a                                  ; $73fe: $e0 $00

jr_066_7400:
    add c                                         ; $7400: $81

jr_066_7401:
    and c                                         ; $7401: $a1
    ld a, h                                       ; $7402: $7c
    jr nz, @+$3e                                  ; $7403: $20 $3c

    nop                                           ; $7405: $00
    ret nc                                        ; $7406: $d0

    xor $30                                       ; $7407: $ee $30
    ld c, $86                                     ; $7409: $0e $86
    ld h, d                                       ; $740b: $62
    rst $00                                       ; $740c: $c7
    ld b, d                                       ; $740d: $42
    pop bc                                        ; $740e: $c1
    db $e3                                        ; $740f: $e3
    nop                                           ; $7410: $00
    ld [hl], a                                    ; $7411: $77
    ld h, b                                       ; $7412: $60
    ld [hl], l                                    ; $7413: $75
    ld b, b                                       ; $7414: $40
    ld b, d                                       ; $7415: $42
    pop hl                                        ; $7416: $e1
    xor b                                         ; $7417: $a8
    jp $edd0                                      ; $7418: $c3 $d0 $ed


    jr nc, jr_066_7429                            ; $741b: $30 $0c

    adc b                                         ; $741d: $88
    and b                                         ; $741e: $a0
    ld b, a                                       ; $741f: $47
    ld h, c                                       ; $7420: $61
    inc b                                         ; $7421: $04
    ld b, $40                                     ; $7422: $06 $40
    add l                                         ; $7424: $85
    pop bc                                        ; $7425: $c1
    ld c, e                                       ; $7426: $4b
    pop bc                                        ; $7427: $c1
    pop hl                                        ; $7428: $e1

jr_066_7429:
    or [hl]                                       ; $7429: $b6
    ld b, d                                       ; $742a: $42
    ld e, e                                       ; $742b: $5b
    ld b, d                                       ; $742c: $42
    ld h, $41                                     ; $742d: $26 $41
    ret nc                                        ; $742f: $d0

    db $ec                                        ; $7430: $ec
    nop                                           ; $7431: $00
    jr nc, @+$0f                                  ; $7432: $30 $0d

    sub b                                         ; $7434: $90
    ld hl, $c192                                  ; $7435: $21 $92 $c1
    adc c                                         ; $7438: $89
    and c                                         ; $7439: $a1
    ret nz                                        ; $743a: $c0

    ldh [rSCY], a                                 ; $743b: $e0 $42
    ld b, c                                       ; $743d: $41
    dec [hl]                                      ; $743e: $35
    ld b, c                                       ; $743f: $41
    call c, $0003                                 ; $7440: $dc $03 $00
    and l                                         ; $7443: $a5
    ld bc, $ecd0                                  ; $7444: $01 $d0 $ec
    jr nc, jr_066_7457                            ; $7447: $30 $0e

    ret nz                                        ; $7449: $c0

    db $e3                                        ; $744a: $e3
    add c                                         ; $744b: $81
    push hl                                       ; $744c: $e5
    ld c, d                                       ; $744d: $4a
    and b                                         ; $744e: $a0
    ld [hl], b                                    ; $744f: $70
    ld bc, $c066                                  ; $7450: $01 $66 $c0
    nop                                           ; $7453: $00
    add sp, $43                                   ; $7454: $e8 $43
    ld b, b                                       ; $7456: $40

jr_066_7457:
    ldh [$d0], a                                  ; $7457: $e0 $d0

jr_066_7459:
    db $ec                                        ; $7459: $ec
    jr nc, jr_066_7468                            ; $745a: $30 $0c

    ld b, [hl]                                    ; $745c: $46
    jp $e541                                      ; $745d: $c3 $41 $e5


    add h                                         ; $7460: $84
    ld b, b                                       ; $7461: $40
    ld [hl-], a                                   ; $7462: $32
    nop                                           ; $7463: $00
    nop                                           ; $7464: $00
    ld e, a                                       ; $7465: $5f
    ldh [$bf], a                                  ; $7466: $e0 $bf

jr_066_7468:
    ld b, d                                       ; $7468: $42
    xor d                                         ; $7469: $aa
    add c                                         ; $746a: $81
    ret nc                                        ; $746b: $d0

    db $ed                                        ; $746c: $ed
    jr nc, @+$0b                                  ; $746d: $30 $09

    dec c                                         ; $746f: $0d
    ld hl, $8214                                  ; $7470: $21 $14 $82
    add l                                         ; $7473: $85

Call_066_7474:
    call nz, Call_066_4000                        ; $7474: $c4 $00 $40
    jr nz, jr_066_7459                            ; $7477: $20 $e0

    ld [$473e], a                                 ; $7479: $ea $3e $47
    ldh a, [$e7]                                  ; $747c: $f0 $e7
    jr nc, jr_066_7486                            ; $747e: $30 $06

    ret nz                                        ; $7480: $c0

    db $e4                                        ; $7481: $e4
    ld b, $c0                                     ; $7482: $06 $c0
    inc de                                        ; $7484: $13
    add b                                         ; $7485: $80

jr_066_7486:
    ld h, b                                       ; $7486: $60
    ld a, [bc]                                    ; $7487: $0a
    add c                                         ; $7488: $81
    rlca                                          ; $7489: $07
    jp nz, Jump_066_4330                          ; $748a: $c2 $30 $43

    ld d, b                                       ; $748d: $50
    inc bc                                        ; $748e: $03
    pop de                                        ; $748f: $d1
    ld b, b                                       ; $7490: $40
    ld c, $4e                                     ; $7491: $0e $4e
    ret nc                                        ; $7493: $d0

    and $00                                       ; $7494: $e6 $00
    ldh a, [$e4]                                  ; $7496: $f0 $e4
    adc a                                         ; $7498: $8f
    ld h, $0b                                     ; $7499: $26 $0b
    ld b, c                                       ; $749b: $41
    sub [hl]                                      ; $749c: $96
    ld h, e                                       ; $749d: $63
    ld a, [hl]                                    ; $749e: $7e
    pop hl                                        ; $749f: $e1
    adc d                                         ; $74a0: $8a
    add d                                         ; $74a1: $82
    res 4, c                                      ; $74a2: $cb $a1
    ret nz                                        ; $74a4: $c0

    add sp, $01                                   ; $74a5: $e8 $01
    ld l, [hl]                                    ; $74a7: $6e
    ld [$5f41], sp                                ; $74a8: $08 $41 $5f
    ld h, $f0                                     ; $74ab: $26 $f0
    db $ed                                        ; $74ad: $ed
    ld b, b                                       ; $74ae: $40
    db $e4                                        ; $74af: $e4
    adc $01                                       ; $74b0: $ce $01

jr_066_74b2:
    rst $08                                       ; $74b2: $cf
    and d                                         ; $74b3: $a2
    ld b, h                                       ; $74b4: $44
    pop hl                                        ; $74b5: $e1
    nop                                           ; $74b6: $00
    or b                                          ; $74b7: $b0
    dec h                                         ; $74b8: $25
    rst $28                                       ; $74b9: $ef
    nop                                           ; $74ba: $00
    add hl, bc                                    ; $74bb: $09
    ld b, h                                       ; $74bc: $44
    rra                                           ; $74bd: $1f
    ld h, $f0                                     ; $74be: $26 $f0
    add sp, $30                                   ; $74c0: $e8 $30
    ld [bc], a                                    ; $74c2: $02
    ld [$d1a5], sp                                ; $74c3: $08 $a5 $d1
    add b                                         ; $74c6: $80
    nop                                           ; $74c7: $00
    add l                                         ; $74c8: $85
    and b                                         ; $74c9: $a0
    ld c, a                                       ; $74ca: $4f
    and h                                         ; $74cb: $a4
    sub b                                         ; $74cc: $90
    ld [hl+], a                                   ; $74cd: $22
    ldh [$e3], a                                  ; $74ce: $e0 $e3
    ld b, b                                       ; $74d0: $40
    ld [$edf0], sp                                ; $74d1: $08 $f0 $ed
    ei                                            ; $74d4: $fb
    inc bc                                        ; $74d5: $03
    inc a                                         ; $74d6: $3c
    ld [c], a                                     ; $74d7: $e2
    nop                                           ; $74d8: $00
    adc l                                         ; $74d9: $8d
    add l                                         ; $74da: $85
    ld d, c                                       ; $74db: $51
    add e                                         ; $74dc: $83
    ld c, h                                       ; $74dd: $4c
    and d                                         ; $74de: $a2
    ld [hl-], a                                   ; $74df: $32
    jr nz, jr_066_74b2                            ; $74e0: $20 $d0

    pop af                                        ; $74e2: $f1
    jr nc, jr_066_74f2                            ; $74e3: $30 $0d

    ret nz                                        ; $74e5: $c0

    db $e4                                        ; $74e6: $e4
    rrca                                          ; $74e7: $0f
    ld hl, $4c00                                  ; $74e8: $21 $00 $4c
    add c                                         ; $74eb: $81
    ld d, c                                       ; $74ec: $51
    ld h, c                                       ; $74ed: $61
    ld c, c                                       ; $74ee: $49
    add b                                         ; $74ef: $80
    ld [hl], h                                    ; $74f0: $74
    ld [bc], a                                    ; $74f1: $02

jr_066_74f2:
    ld d, b                                       ; $74f2: $50
    dec bc                                        ; $74f3: $0b
    ret nc                                        ; $74f4: $d0

    db $e4                                        ; $74f5: $e4
    jr nc, jr_066_7505                            ; $74f6: $30 $0d

    ret nz                                        ; $74f8: $c0

    rst $20                                       ; $74f9: $e7
    nop                                           ; $74fa: $00
    ld a, [hl]                                    ; $74fb: $7e
    db $e4                                        ; $74fc: $e4
    add h                                         ; $74fd: $84

Call_066_74fe:
    db $e3                                        ; $74fe: $e3
    ret nz                                        ; $74ff: $c0

    rst $28                                       ; $7500: $ef
    ret nc                                        ; $7501: $d0

    db $e4                                        ; $7502: $e4
    jr nc, @+$0f                                  ; $7503: $30 $0d

jr_066_7505:
    ld [$4984], sp                                ; $7505: $08 $84 $49
    and d                                         ; $7508: $a2
    ld a, [hl]                                    ; $7509: $7e
    ld [c], a                                     ; $750a: $e2
    nop                                           ; $750b: $00
    add a                                         ; $750c: $87
    and d                                         ; $750d: $a2
    ld c, c                                       ; $750e: $49
    and [hl]                                      ; $750f: $a6
    ret nc                                        ; $7510: $d0

    xor $b6                                       ; $7511: $ee $b6
    ld b, l                                       ; $7513: $45
    jr nc, jr_066_751c                            ; $7514: $30 $06

    ld [hl+], a                                   ; $7516: $22
    and e                                         ; $7517: $a3
    call $cc64                                    ; $7518: $cd $64 $cc
    ld h, b                                       ; $751b: $60

jr_066_751c:
    ret nz                                        ; $751c: $c0

    dec l                                         ; $751d: $2d
    jp $a4c8                                      ; $751e: $c3 $c8 $a4


    inc l                                         ; $7521: $2c
    ld h, c                                       ; $7522: $61
    jp nz, $f0a7                                  ; $7523: $c2 $a7 $f0

    db $eb                                        ; $7526: $eb
    jr nc, @+$0b                                  ; $7527: $30 $09

    ld c, l                                       ; $7529: $4d
    dec l                                         ; $752a: $2d
    nop                                           ; $752b: $00
    adc h                                         ; $752c: $8c
    ld h, c                                       ; $752d: $61
    pop bc                                        ; $752e: $c1
    db $e4                                        ; $752f: $e4
    ld [hl], l                                    ; $7530: $75
    ld hl, $2071                                  ; $7531: $21 $71 $20
    ldh [$e9], a                                  ; $7534: $e0 $e9
    ldh a, [$f0]                                  ; $7536: $f0 $f0
    jr nc, jr_066_7545                            ; $7538: $30 $0b

    cp a                                          ; $753a: $bf
    ld [c], a                                     ; $753b: $e2
    nop                                           ; $753c: $00
    add d                                         ; $753d: $82
    db $e4                                        ; $753e: $e4
    ldh a, [$e1]                                  ; $753f: $f0 $e1
    ld h, b                                       ; $7541: $60
    nop                                           ; $7542: $00
    ldh [$ea], a                                  ; $7543: $e0 $ea

jr_066_7545:
    ldh a, [$f0]                                  ; $7545: $f0 $f0
    jr nc, jr_066_7554                            ; $7547: $30 $0b

    ret c                                         ; $7549: $d8

    ld bc, $c309                                  ; $754a: $01 $09 $c3
    ld [bc], a                                    ; $754d: $02
    dec h                                         ; $754e: $25
    ld bc, $e04e                                  ; $754f: $01 $4e $e0
    xor $f0                                       ; $7552: $ee $f0

jr_066_7554:
    push af                                       ; $7554: $f5
    jr nc, @+$07                                  ; $7555: $30 $05

    ld d, b                                       ; $7557: $50
    and [hl]                                      ; $7558: $a6
    cp [hl]                                       ; $7559: $be
    ld b, b                                       ; $755a: $40
    ldh a, [$e2]                                  ; $755b: $f0 $e2
    nop                                           ; $755d: $00
    ldh [$ed], a                                  ; $755e: $e0 $ed
    ret nc                                        ; $7560: $d0

    db $ec                                        ; $7561: $ec
    jr nc, jr_066_7572                            ; $7562: $30 $0e

    ret nz                                        ; $7564: $c0

    and $f0                                       ; $7565: $e6 $f0
    db $e4                                        ; $7567: $e4
    ldh [$ed], a                                  ; $7568: $e0 $ed
    ret nc                                        ; $756a: $d0

    db $ed                                        ; $756b: $ed
    jr nc, jr_066_757a                            ; $756c: $30 $0c

    nop                                           ; $756e: $00
    ret nz                                        ; $756f: $c0

    and $f0                                       ; $7570: $e6 $f0

jr_066_7572:
    push hl                                       ; $7572: $e5
    ldh [$ed], a                                  ; $7573: $e0 $ed
    ret nc                                        ; $7575: $d0

    db $ec                                        ; $7576: $ec
    nop                                           ; $7577: $00
    nop                                           ; $7578: $00
    nop                                           ; $7579: $00

jr_066_757a:
    sbc a                                         ; $757a: $9f
    ret c                                         ; $757b: $d8

    push de                                       ; $757c: $d5
    push de                                       ; $757d: $d5
    ret c                                         ; $757e: $d8

    and b                                         ; $757f: $a0
    rst $38                                       ; $7580: $ff
    add sp, -$10                                  ; $7581: $e8 $f0
    ld [$3fd3], a                                 ; $7583: $ea $d3 $3f
    ret nc                                        ; $7586: $d0

    db $d3                                        ; $7587: $d3
    and b                                         ; $7588: $a0
    and b                                         ; $7589: $a0
    add sp, -$17                                  ; $758a: $e8 $e9
    ldh [$e7], a                                  ; $758c: $e0 $e7
    db $f4                                        ; $758e: $f4
    db $e3                                        ; $758f: $e3
    cp h                                          ; $7590: $bc
    jp hl                                         ; $7591: $e9


    ld [c], a                                     ; $7592: $e2
    set 4, h                                      ; $7593: $cb $e4
    jp nc, $d4d6                                  ; $7595: $d2 $d6 $d4

    sub $bd                                       ; $7598: $d6 $bd
    ld [c], a                                     ; $759a: $e2
    sbc $39                                       ; $759b: $de $39
    rst $18                                       ; $759d: $df
    jp nz, $f0e2                                  ; $759e: $c2 $e2 $f0

    ld [$d4d7], a                                 ; $75a1: $ea $d7 $d4
    rst $10                                       ; $75a4: $d7
    and h                                         ; $75a5: $a4
    ld [c], a                                     ; $75a6: $e2
    db $e4                                        ; $75a7: $e4
    ld [c], a                                     ; $75a8: $e2
    ldh a, [$9a]                                  ; $75a9: $f0 $9a
    db $e4                                        ; $75ab: $e4
    ret c                                         ; $75ac: $d8

    ldh [$e9], a                                  ; $75ad: $e0 $e9
    ld [c], a                                     ; $75af: $e2
    ret nc                                        ; $75b0: $d0

    db $e4                                        ; $75b1: $e4
    sub $d2                                       ; $75b2: $d6 $d2
    ret nc                                        ; $75b4: $d0

    jp nc, $d49b                                  ; $75b5: $d2 $9b $d4

    sub $99                                       ; $75b8: $d6 $99
    ldh [$e0], a                                  ; $75ba: $e0 $e0
    pop hl                                        ; $75bc: $e1
    adc a                                         ; $75bd: $8f
    ld [c], a                                     ; $75be: $e2
    ldh a, [$ea]                                  ; $75bf: $f0 $ea
    jp c, $d9cf                                   ; $75c1: $da $cf $d9

    jp c, $eaa0                                   ; $75c4: $da $a0 $ea

    ld h, d                                       ; $75c7: $62
    ldh [$e4], a                                  ; $75c8: $e0 $e4
    pop hl                                        ; $75ca: $e1
    sbc a                                         ; $75cb: $9f
    and d                                         ; $75cc: $a2
    adc a                                         ; $75cd: $8f
    sbc l                                         ; $75ce: $9d
    sbc l                                         ; $75cf: $9d
    sbc l                                         ; $75d0: $9d
    sbc a                                         ; $75d1: $9f
    ret c                                         ; $75d2: $d8

    ld [c], a                                     ; $75d3: $e2
    jp hl                                         ; $75d4: $e9


    pop hl                                        ; $75d5: $e1
    ret nc                                        ; $75d6: $d0

    push hl                                       ; $75d7: $e5
    rst $10                                       ; $75d8: $d7
    db $fd                                        ; $75d9: $fd
    call nc, $e0bf                                ; $75da: $d4 $bf $e0
    rst $10                                       ; $75dd: $d7
    jp nc, $a0d8                                  ; $75de: $d2 $d8 $a0

    ld [c], a                                     ; $75e1: $e2
    db $e3                                        ; $75e2: $e3
    adc $f0                                       ; $75e3: $ce $f0
    rst $28                                       ; $75e5: $ef
    call c, $dcdb                                 ; $75e6: $dc $db $dc
    inc h                                         ; $75e9: $24
    ld [c], a                                     ; $75ea: $e2
    db $e4                                        ; $75eb: $e4
    ldh [$9f], a                                  ; $75ec: $e0 $9f
    sbc h                                         ; $75ee: $9c
    ld a, a                                       ; $75ef: $7f
    ld b, [hl]                                    ; $75f0: $46
    ld b, l                                       ; $75f1: $45
    ld c, b                                       ; $75f2: $48
    ld c, b                                       ; $75f3: $48
    sbc h                                         ; $75f4: $9c
    sbc l                                         ; $75f5: $9d
    sbc a                                         ; $75f6: $9f
    ret c                                         ; $75f7: $d8

    ldh [$ac], a                                  ; $75f8: $e0 $ac
    jp hl                                         ; $75fa: $e9


    ld [c], a                                     ; $75fb: $e2
    ret nc                                        ; $75fc: $d0

    db $e4                                        ; $75fd: $e4
    db $dd                                        ; $75fe: $dd
    reti                                          ; $75ff: $d9


    ld e, e                                       ; $7600: $5b
    ldh [$dd], a                                  ; $7601: $e0 $dd
    cpl                                           ; $7603: $2f
    ld [c], a                                     ; $7604: $e2
    db $eb                                        ; $7605: $eb
    ld [c], a                                     ; $7606: $e2
    ld c, a                                       ; $7607: $4f
    ldh [$d2], a                                  ; $7608: $e0 $d2
    ldh a, [$eb]                                  ; $760a: $f0 $eb
    and $c6                                       ; $760c: $e6 $c6
    pop bc                                        ; $760e: $c1
    ldh [$ae], a                                  ; $760f: $e0 $ae
    ld b, h                                       ; $7611: $44
    ld d, h                                       ; $7612: $54
    adc a                                         ; $7613: $8f
    ld d, h                                       ; $7614: $54
    ld b, c                                       ; $7615: $41
    ld b, l                                       ; $7616: $45
    sbc h                                         ; $7617: $9c
    ld a, l                                       ; $7618: $7d
    ldh [$d0], a                                  ; $7619: $e0 $d0
    call nz, $e2d0                                ; $761b: $c4 $d0 $e2
    ret nc                                        ; $761e: $d0

    or [hl]                                       ; $761f: $b6
    cp [hl]                                       ; $7620: $be
    ldh [$dd], a                                  ; $7621: $e0 $dd
    pop de                                        ; $7623: $d1
    ret c                                         ; $7624: $d8

    pop bc                                        ; $7625: $c1
    db $ec                                        ; $7626: $ec
    db $ed                                        ; $7627: $ed
    ld c, a                                       ; $7628: $4f
    ldh [$d3], a                                  ; $7629: $e0 $d3
    ld hl, sp-$10                                 ; $762b: $f8 $f0
    db $eb                                        ; $762d: $eb
    push bc                                       ; $762e: $c5
    ld [c], a                                     ; $762f: $e2
    ld c, b                                       ; $7630: $48
    ldh [$9d], a                                  ; $7631: $e0 $9d
    or [hl]                                       ; $7633: $b6
    ld b, [hl]                                    ; $7634: $46
    xor [hl]                                      ; $7635: $ae
    xor a                                         ; $7636: $af
    ld a, a                                       ; $7637: $7f
    ld a, [hl+]                                   ; $7638: $2a
    inc l                                         ; $7639: $2c
    inc l                                         ; $763a: $2c
    jr nz, @+$2c                                  ; $763b: $20 $2a

    ld b, l                                       ; $763d: $45
    sbc [hl]                                      ; $763e: $9e
    ldh a, [$c5]                                  ; $763f: $f0 $c5
    ld [c], a                                     ; $7641: $e2
    ret nc                                        ; $7642: $d0

    db $e3                                        ; $7643: $e3
    call nc, $e040                                ; $7644: $d4 $40 $e0
    cp $c0                                        ; $7647: $fe $c0
    ret c                                         ; $7649: $d8

    jp $dca0                                      ; $764a: $c3 $a0 $dc


    rst $10                                       ; $764d: $d7
    cp b                                          ; $764e: $b8
    ldh a, [$e8]                                  ; $764f: $f0 $e8
    ld c, $e0                                     ; $7651: $0e $e0
    db $10                                        ; $7653: $10
    ldh [$9f], a                                  ; $7654: $e0 $9f
    or [hl]                                       ; $7656: $b6
    sub b                                         ; $7657: $90
    rst $38                                       ; $7658: $ff
    pop hl                                        ; $7659: $e1
    sub c                                         ; $765a: $91
    scf                                           ; $765b: $37
    xor a                                         ; $765c: $af
    ld b, d                                       ; $765d: $42
    jr nz, @+$01                                  ; $765e: $20 $ff

    ldh [$30], a                                  ; $7660: $e0 $30
    ld b, h                                       ; $7662: $44
    ret nz                                        ; $7663: $c0

    pop hl                                        ; $7664: $e1
    call nc, $9ac2                                ; $7665: $d4 $c2 $9a
    ret nc                                        ; $7668: $d0

    db $e3                                        ; $7669: $e3
    reti                                          ; $766a: $d9


    ld b, b                                       ; $766b: $40
    ldh [$d4], a                                  ; $766c: $e0 $d4
    rst $10                                       ; $766e: $d7
    rst $28                                       ; $766f: $ef
    pop bc                                        ; $7670: $c1
    ld a, [hl-]                                   ; $7671: $3a
    jp nz, $f4da                                  ; $7672: $c2 $da $f4

    ldh a, [$e7]                                  ; $7675: $f0 $e7
    rst $00                                       ; $7677: $c7
    pop hl                                        ; $7678: $e1
    or [hl]                                       ; $7679: $b6
    add [hl]                                      ; $767a: $86
    ldh [$90], a                                  ; $767b: $e0 $90
    sub c                                         ; $767d: $91
    ld b, [hl]                                    ; $767e: $46
    ld b, [hl]                                    ; $767f: $46
    rst $38                                       ; $7680: $ff
    ld b, [hl]                                    ; $7681: $46
    sub c                                         ; $7682: $91
    sub b                                         ; $7683: $90
    sub c                                         ; $7684: $91
    ld b, l                                       ; $7685: $45
    dec hl                                        ; $7686: $2b
    dec hl                                        ; $7687: $2b
    ld a, [hl+]                                   ; $7688: $2a
    adc a                                         ; $7689: $8f
    cpl                                           ; $768a: $2f
    ld a, [hl+]                                   ; $768b: $2a
    sbc h                                         ; $768c: $9c
    sbc a                                         ; $768d: $9f
    xor a                                         ; $768e: $af
    ret nz                                        ; $768f: $c0

    call nc, $d0c2                                ; $7690: $d4 $c2 $d0
    db $e3                                        ; $7693: $e3
    db $db                                        ; $7694: $db
    ld b, l                                       ; $7695: $45
    db $db                                        ; $7696: $db
    call $dae0                                    ; $7697: $cd $e0 $da
    ret c                                         ; $769a: $d8

    call nz, $c1ce                                ; $769b: $c4 $ce $c1
    ldh a, [$e6]                                  ; $769e: $f0 $e6
    sbc [hl]                                      ; $76a0: $9e
    adc e                                         ; $76a1: $8b
    ldh [$fe], a                                  ; $76a2: $e0 $fe
    add $e0                                       ; $76a4: $c6 $e0
    ld b, [hl]                                    ; $76a6: $46
    ld b, [hl]                                    ; $76a7: $46
    ld a, c                                       ; $76a8: $79
    ld a, d                                       ; $76a9: $7a
    ld a, e                                       ; $76aa: $7b
    ld a, h                                       ; $76ab: $7c
    ld a, l                                       ; $76ac: $7d
    ld a, a                                       ; $76ad: $7f
    sub c                                         ; $76ae: $91
    sub b                                         ; $76af: $90
    xor [hl]                                      ; $76b0: $ae
    ld b, [hl]                                    ; $76b1: $46
    xor [hl]                                      ; $76b2: $ae
    ld b, l                                       ; $76b3: $45
    xor [hl]                                      ; $76b4: $ae
    ld bc, $08e8                                  ; $76b5: $01 $e8 $08
    ld c, a                                       ; $76b8: $4f
    db $e3                                        ; $76b9: $e3
    call $9ae2                                    ; $76ba: $cd $e2 $9a
    pop bc                                        ; $76bd: $c1
    ret c                                         ; $76be: $d8

    cp b                                          ; $76bf: $b8
    and l                                         ; $76c0: $a5
    ldh a, [$e4]                                  ; $76c1: $f0 $e4
    adc a                                         ; $76c3: $8f

jr_066_76c4:
    ret nz                                        ; $76c4: $c0

    add $e1                                       ; $76c5: $c6 $e1
    cp $ff                                        ; $76c7: $fe $ff
    ldh [$8f], a                                  ; $76c9: $e0 $8f
    ld b, [hl]                                    ; $76cb: $46
    xor [hl]                                      ; $76cc: $ae
    ld b, [hl]                                    ; $76cd: $46
    add c                                         ; $76ce: $81
    ld b, [hl]                                    ; $76cf: $46
    sub b                                         ; $76d0: $90
    jp $aeaf                                      ; $76d1: $c3 $af $ae


    cp $e0                                        ; $76d4: $fe $e0
    ld [bc], a                                    ; $76d6: $02
    pop hl                                        ; $76d7: $e1
    sub a                                         ; $76d8: $97
    and l                                         ; $76d9: $a5
    adc b                                         ; $76da: $88
    xor b                                         ; $76db: $a8
    db $e4                                        ; $76dc: $e4
    push hl                                       ; $76dd: $e5
    cp c                                          ; $76de: $b9
    ret c                                         ; $76df: $d8

    ld hl, sp-$60                                 ; $76e0: $f8 $a0
    halt                                          ; $76e2: $76
    xor b                                         ; $76e3: $a8
    sbc a                                         ; $76e4: $9f
    sbc l                                         ; $76e5: $9d
    sbc h                                         ; $76e6: $9c
    adc c                                         ; $76e7: $89
    ldh [$8f], a                                  ; $76e8: $e0 $8f
    rst $38                                       ; $76ea: $ff
    ld b, h                                       ; $76eb: $44
    ld c, c                                       ; $76ec: $49
    ld d, h                                       ; $76ed: $54
    ld b, l                                       ; $76ee: $45
    scf                                           ; $76ef: $37
    scf                                           ; $76f0: $37
    ld b, l                                       ; $76f1: $45
    xor a                                         ; $76f2: $af
    rst $30                                       ; $76f3: $f7
    add e                                         ; $76f4: $83
    add h                                         ; $76f5: $84
    ld b, [hl]                                    ; $76f6: $46
    cp $c0                                        ; $76f7: $fe $c0
    ld b, [hl]                                    ; $76f9: $46
    xor a                                         ; $76fa: $af
    sub c                                         ; $76fb: $91
    and c                                         ; $76fc: $a1
    ld l, h                                       ; $76fd: $6c
    ret nc                                        ; $76fe: $d0

    xor $88                                       ; $76ff: $ee $88
    ld [c], a                                     ; $7701: $e2
    and $e7                                       ; $7702: $e6 $e7
    halt                                          ; $7704: $76
    ret nz                                        ; $7705: $c0

    pop de                                        ; $7706: $d1
    ret nc                                        ; $7707: $d0

    ld sp, hl                                     ; $7708: $f9
    and b                                         ; $7709: $a0
    ld a, [hl]                                    ; $770a: $7e
    ld a, b                                       ; $770b: $78
    db $e3                                        ; $770c: $e3
    sbc a                                         ; $770d: $9f
    or [hl]                                       ; $770e: $b6
    sub c                                         ; $770f: $91
    ld a, c                                       ; $7710: $79
    ld a, [hl]                                    ; $7711: $7e
    ld b, [hl]                                    ; $7712: $46
    jp nz, $ffe2                                  ; $7713: $c2 $e2 $ff

    jr c, jr_066_76c4                             ; $7716: $38 $ac

    inc a                                         ; $7718: $3c
    ld b, h                                       ; $7719: $44
    add e                                         ; $771a: $83
    add [hl]                                      ; $771b: $86
    add l                                         ; $771c: $85
    sub c                                         ; $771d: $91
    ld h, $ba                                     ; $771e: $26 $ba
    jp nz, $9fb6                                  ; $7720: $c2 $b6 $9f

    ret nc                                        ; $7723: $d0

    xor $1c                                       ; $7724: $ee $1c
    and h                                         ; $7726: $a4
    jp c, $a3b7                                   ; $7727: $da $b7 $a3

    inc c                                         ; $772a: $0c
    and h                                         ; $772b: $a4
    rst $38                                       ; $772c: $ff
    sbc [hl]                                      ; $772d: $9e
    sub b                                         ; $772e: $90
    ld b, [hl]                                    ; $772f: $46
    add b                                         ; $7730: $80
    ld b, l                                       ; $7731: $45
    ld c, b                                       ; $7732: $48
    ld c, [hl]                                    ; $7733: $4e
    ld b, e                                       ; $7734: $43
    rst $38                                       ; $7735: $ff
    scf                                           ; $7736: $37
    jr c, jr_066_776e                             ; $7737: $38 $35

    dec [hl]                                      ; $7739: $35
    xor l                                         ; $773a: $ad
    ld [hl], $45                                  ; $773b: $36 $45
    adc d                                         ; $773d: $8a
    ld h, b                                       ; $773e: $60
    pop bc                                        ; $773f: $c1
    ld [c], a                                     ; $7740: $e2
    or e                                          ; $7741: $b3
    ret nz                                        ; $7742: $c0

    add b                                         ; $7743: $80
    and b                                         ; $7744: $a0
    ret nc                                        ; $7745: $d0

    db $ed                                        ; $7746: $ed
    inc e                                         ; $7747: $1c
    and h                                         ; $7748: $a4
    call c, $b7da                                 ; $7749: $dc $da $b7
    and c                                         ; $774c: $a1
    db $fc                                        ; $774d: $fc
    ld l, b                                       ; $774e: $68
    and b                                         ; $774f: $a0
    inc c                                         ; $7750: $0c
    and d                                         ; $7751: $a2
    sbc [hl]                                      ; $7752: $9e
    sub c                                         ; $7753: $91
    ld a, c                                       ; $7754: $79
    adc l                                         ; $7755: $8d
    ld c, d                                       ; $7756: $4a
    ld h, b                                       ; $7757: $60
    rst $38                                       ; $7758: $ff
    ld d, d                                       ; $7759: $52
    add hl, sp                                    ; $775a: $39
    dec [hl]                                      ; $775b: $35
    dec [hl]                                      ; $775c: $35
    xor h                                         ; $775d: $ac
    dec [hl]                                      ; $775e: $35
    ld [hl], $45                                  ; $775f: $36 $45
    rlca                                          ; $7761: $07
    xor [hl]                                      ; $7762: $ae
    adc d                                         ; $7763: $8a
    ld b, [hl]                                    ; $7764: $46
    ld [hl], a                                    ; $7765: $77
    ret nz                                        ; $7766: $c0

    ld b, e                                       ; $7767: $43
    and b                                         ; $7768: $a0
    db $ec                                        ; $7769: $ec
    adc b                                         ; $776a: $88
    ret nc                                        ; $776b: $d0

    and $1c                                       ; $776c: $e6 $1c

jr_066_776e:
    and l                                         ; $776e: $a5
    push bc                                       ; $776f: $c5
    call c, $c077                                 ; $7770: $dc $77 $c0
    jp c, $a051                                   ; $7773: $da $51 $a0

    inc c                                         ; $7776: $0c
    and c                                         ; $7777: $a1
    ld d, e                                       ; $7778: $53
    and b                                         ; $7779: $a0
    add b                                         ; $777a: $80
    ld b, l                                       ; $777b: $45
    rst $28                                       ; $777c: $ef
    ld c, d                                       ; $777d: $4a
    ld d, [hl]                                    ; $777e: $56
    ld b, l                                       ; $777f: $45
    ld a, [hl-]                                   ; $7780: $3a
    add d                                         ; $7781: $82
    ldh [$3c], a                                  ; $7782: $e0 $3c
    ld b, h                                       ; $7784: $44
    xor [hl]                                      ; $7785: $ae
    rlca                                          ; $7786: $07
    xor a                                         ; $7787: $af
    adc d                                         ; $7788: $8a
    ld b, [hl]                                    ; $7789: $46
    ret z                                         ; $778a: $c8

    jp $89ec                                      ; $778b: $c3 $ec $89


    ret nc                                        ; $778e: $d0

    push hl                                       ; $778f: $e5
    inc e                                         ; $7790: $1c
    and l                                         ; $7791: $a5
    ld [de], a                                    ; $7792: $12
    and l                                         ; $7793: $a5
    cp $0c                                        ; $7794: $fe $0c
    and c                                         ; $7796: $a1
    and c                                         ; $7797: $a1
    ld b, [hl]                                    ; $7798: $46
    ld b, [hl]                                    ; $7799: $46
    add b                                         ; $779a: $80
    ld c, d                                       ; $779b: $4a
    ld d, [hl]                                    ; $779c: $56
    ld b, h                                       ; $779d: $44
    dec c                                         ; $779e: $0d
    add hl, sp                                    ; $779f: $39
    add d                                         ; $77a0: $82
    ldh [$3b], a                                  ; $77a1: $e0 $3b
    ld [hl], $c2                                  ; $77a3: $36 $c2
    jp nz, $a08a                                  ; $77a5: $c2 $8a $a0

    ld hl, $eca0                                  ; $77a8: $21 $a0 $ec
    adc c                                         ; $77ab: $89
    or h                                          ; $77ac: $b4
    add $e9                                       ; $77ad: $c6 $e9
    inc b                                         ; $77af: $04
    adc l                                         ; $77b0: $8d
    sbc [hl]                                      ; $77b1: $9e
    ret nz                                        ; $77b2: $c0

    ldh [rVBK], a                                 ; $77b3: $e0 $4f
    ld h, c                                       ; $77b5: $61
    add c                                         ; $77b6: $81
    ldh [$ad], a                                  ; $77b7: $e0 $ad
    rrca                                          ; $77b9: $0f
    ld [hl], $43                                  ; $77ba: $36 $43
    ld b, l                                       ; $77bc: $45
    xor [hl]                                      ; $77bd: $ae
    jp nz, Jump_000_0ac0                          ; $77be: $c2 $c0 $0a

    and b                                         ; $77c1: $a0
    ld hl, $d4a0                                  ; $77c2: $21 $a0 $d4
    ld [hl], c                                    ; $77c5: $71
    ret nz                                        ; $77c6: $c0

    jp nz, Jump_000_0462                          ; $77c7: $c2 $62 $04

    add c                                         ; $77ca: $81
    or a                                          ; $77cb: $b7
    ld h, b                                       ; $77cc: $60
    push af                                       ; $77cd: $f5
    ld h, b                                       ; $77ce: $60
    inc a                                         ; $77cf: $3c
    jp $e1c0                                      ; $77d0: $c3 $c0 $e1


    ld c, d                                       ; $77d3: $4a
    ld d, [hl]                                    ; $77d4: $56
    rst $38                                       ; $77d5: $ff
    ld b, d                                       ; $77d6: $42
    dec [hl]                                      ; $77d7: $35
    dec [hl]                                      ; $77d8: $35
    dec [hl]                                      ; $77d9: $35
    ld b, b                                       ; $77da: $40
    xor [hl]                                      ; $77db: $ae
    ld b, [hl]                                    ; $77dc: $46
    xor a                                         ; $77dd: $af
    add e                                         ; $77de: $83
    adc d                                         ; $77df: $8a
    add l                                         ; $77e0: $85
    ld b, c                                       ; $77e1: $41
    pop hl                                        ; $77e2: $e1
    ldh [$e9], a                                  ; $77e3: $e0 $e9
    ret nc                                        ; $77e5: $d0

    add sp, -$4b                                  ; $77e6: $e8 $b5
    ld h, d                                       ; $77e8: $62
    inc b                                         ; $77e9: $04
    add c                                         ; $77ea: $81
    db $d3                                        ; $77eb: $d3
    push de                                       ; $77ec: $d5
    sub $36                                       ; $77ed: $d6 $36
    add c                                         ; $77ef: $81
    sub $8e                                       ; $77f0: $d6 $8e
    ld h, c                                       ; $77f2: $61
    db $eb                                        ; $77f3: $eb
    ld d, e                                       ; $77f4: $53
    add b                                         ; $77f5: $80
    add d                                         ; $77f6: $82
    add e                                         ; $77f7: $83
    rst $38                                       ; $77f8: $ff
    ld b, e                                       ; $77f9: $43
    ld b, h                                       ; $77fa: $44
    inc a                                         ; $77fb: $3c
    dec [hl]                                      ; $77fc: $35
    inc a                                         ; $77fd: $3c
    ld b, h                                       ; $77fe: $44
    xor a                                         ; $77ff: $af
    ld b, [hl]                                    ; $7800: $46
    jr nz, @+$06                                  ; $7801: $20 $04

    ret nz                                        ; $7803: $c0

    add hl, bc                                    ; $7804: $09
    pop bc                                        ; $7805: $c1
    ldh [$e8], a                                  ; $7806: $e0 $e8
    ret nc                                        ; $7808: $d0

    db $ed                                        ; $7809: $ed
    inc b                                         ; $780a: $04
    add c                                         ; $780b: $81
    ret c                                         ; $780c: $d8

    ei                                            ; $780d: $fb
    ld h, b                                       ; $780e: $60
    cp b                                          ; $780f: $b8
    add c                                         ; $7810: $81
    db $fc                                        ; $7811: $fc
    ld c, [hl]                                    ; $7812: $4e
    ld h, b                                       ; $7813: $60
    ld [hl], a                                    ; $7814: $77
    add b                                         ; $7815: $80
    sbc [hl]                                      ; $7816: $9e
    ld b, [hl]                                    ; $7817: $46
    add l                                         ; $7818: $85
    add [hl]                                      ; $7819: $86
    add e                                         ; $781a: $83
    ld b, l                                       ; $781b: $45
    rst $38                                       ; $781c: $ff
    ld [hl], $6c                                  ; $781d: $36 $6c
    ld [hl], d                                    ; $781f: $72
    adc b                                         ; $7820: $88
    adc b                                         ; $7821: $88
    adc b                                         ; $7822: $88
    add a                                         ; $7823: $87
    add l                                         ; $7824: $85
    ld bc, $0991                                  ; $7825: $01 $91 $09
    pop bc                                        ; $7828: $c1
    ldh [$e7], a                                  ; $7829: $e0 $e7
    ret nc                                        ; $782b: $d0

    ld [$c10d], a                                 ; $782c: $ea $0d $c1
    rla                                           ; $782f: $17
    add c                                         ; $7830: $81
    or $60                                        ; $7831: $f6 $60
    ld d, d                                       ; $7833: $52
    ld h, b                                       ; $7834: $60
    di                                            ; $7835: $f3
    reti                                          ; $7836: $d9


    db $dd                                        ; $7837: $dd
    db $fd                                        ; $7838: $fd
    and c                                         ; $7839: $a1
    inc b                                         ; $783a: $04
    and c                                         ; $783b: $a1
    sub c                                         ; $783c: $91
    add l                                         ; $783d: $85
    add a                                         ; $783e: $87
    adc b                                         ; $783f: $88
    rra                                           ; $7840: $1f
    adc b                                         ; $7841: $88
    ld [hl], b                                    ; $7842: $70
    ld l, [hl]                                    ; $7843: $6e
    ld b, b                                       ; $7844: $40
    xor [hl]                                      ; $7845: $ae
    rst $00                                       ; $7846: $c7
    and c                                         ; $7847: $a1
    ld c, h                                       ; $7848: $4c
    add b                                         ; $7849: $80
    ldh [$e9], a                                  ; $784a: $e0 $e9
    halt                                          ; $784c: $76
    ret nc                                        ; $784d: $d0

    jp hl                                         ; $784e: $e9


    db $d3                                        ; $784f: $d3
    jp c, $8317                                   ; $7850: $da $17 $83

    db $d3                                        ; $7853: $d3
    ret nc                                        ; $7854: $d0

    pop de                                        ; $7855: $d1
    rst $30                                       ; $7856: $f7
    ld h, b                                       ; $7857: $60
    ld h, e                                       ; $7858: $63
    ret nc                                        ; $7859: $d0

    ret nc                                        ; $785a: $d0

    ldh a, [$e0]                                  ; $785b: $f0 $e0
    pop de                                        ; $785d: $d1
    ld h, c                                       ; $785e: $61
    adc d                                         ; $785f: $8a
    add d                                         ; $7860: $82
    ld b, l                                       ; $7861: $45
    ld [hl], $40                                  ; $7862: $36 $40
    ldh [rNR10], a                                ; $7864: $e0 $10
    add a                                         ; $7866: $87
    and b                                         ; $7867: $a0
    adc d                                         ; $7868: $8a
    and b                                         ; $7869: $a0
    ldh [$e9], a                                  ; $786a: $e0 $e9
    ret nc                                        ; $786c: $d0

    ld [$86d7], a                                 ; $786d: $ea $d7 $86
    add h                                         ; $7870: $84
    jr c, jr_066_78d4                             ; $7871: $38 $61

    or $40                                        ; $7873: $f6 $40
    call $f0d4                                    ; $7875: $cd $d4 $f0
    pop hl                                        ; $7878: $e1
    db $e4                                        ; $7879: $e4
    push hl                                       ; $787a: $e5
    add e                                         ; $787b: $83
    add c                                         ; $787c: $81
    inc c                                         ; $787d: $0c
    add b                                         ; $787e: $80
    ld b, l                                       ; $787f: $45
    ld a, [hl-]                                   ; $7880: $3a
    ld [bc], a                                    ; $7881: $02
    add b                                         ; $7882: $80
    ret nz                                        ; $7883: $c0

    sub c                                         ; $7884: $91
    add c                                         ; $7885: $81
    pop hl                                        ; $7886: $e1
    ldh [$ea], a                                  ; $7887: $e0 $ea
    ret nc                                        ; $7889: $d0

    jp hl                                         ; $788a: $e9


    rlca                                          ; $788b: $07
    add a                                         ; $788c: $87
    ld hl, sp+$62                                 ; $788d: $f8 $62
    rst $30                                       ; $788f: $f7
    ld h, d                                       ; $7890: $62
    dec de                                        ; $7891: $1b
    and $e7                                       ; $7892: $e6 $e7
    jp z, $ae64                                   ; $7894: $ca $64 $ae

    ld a, $00                                     ; $7897: $3e $00
    pop bc                                        ; $7899: $c1
    add b                                         ; $789a: $80
    ld [c], a                                     ; $789b: $e2
    ldh [$e9], a                                  ; $789c: $e0 $e9
    ret nz                                        ; $789e: $c0

    ret nc                                        ; $789f: $d0

    jp hl                                         ; $78a0: $e9


    rlca                                          ; $78a1: $07
    add a                                         ; $78a2: $87
    ld hl, sp+$62                                 ; $78a3: $f8 $62
    rst $08                                       ; $78a5: $cf
    ld b, d                                       ; $78a6: $42
    ld c, $41                                     ; $78a7: $0e $41
    ld a, a                                       ; $78a9: $7f
    ld [c], a                                     ; $78aa: $e2
    xor a                                         ; $78ab: $af
    ld a, $01                                     ; $78ac: $3e $01
    dec [hl]                                      ; $78ae: $35
    jp nz, Jump_066_7f80                          ; $78af: $c2 $80 $7f

    ld [c], a                                     ; $78b2: $e2
    ldh [$e9], a                                  ; $78b3: $e0 $e9
    ret nc                                        ; $78b5: $d0

    jp hl                                         ; $78b6: $e9


    dec [hl]                                      ; $78b7: $35
    add a                                         ; $78b8: $87
    ld hl, sp+$64                                 ; $78b9: $f8 $64
    inc d                                         ; $78bb: $14
    ld b, e                                       ; $78bc: $43
    cp $4a                                        ; $78bd: $fe $4a
    ld h, d                                       ; $78bf: $62
    sub c                                         ; $78c0: $91
    ld b, [hl]                                    ; $78c1: $46
    ld a, $35                                     ; $78c2: $3e $35
    xor l                                         ; $78c4: $ad
    xor h                                         ; $78c5: $ac
    ld b, b                                       ; $78c6: $40
    ld bc, $3f46                                  ; $78c7: $01 $46 $3f
    ld [c], a                                     ; $78ca: $e2
    ret c                                         ; $78cb: $d8

    ld h, l                                       ; $78cc: $65
    ret nc                                        ; $78cd: $d0

    db $ed                                        ; $78ce: $ed
    call z, Call_066_4721                         ; $78cf: $cc $21 $47
    add b                                         ; $78d2: $80
    inc c                                         ; $78d3: $0c

jr_066_78d4:
    ldh [$79], a                                  ; $78d4: $e0 $79
    inc hl                                        ; $78d6: $23
    xor $f8                                       ; $78d7: $ee $f8
    ld hl, $a0ea                                  ; $78d9: $21 $ea $a0
    and c                                         ; $78dc: $a1
    dec c                                         ; $78dd: $0d
    ld h, c                                       ; $78de: $61
    ld a, c                                       ; $78df: $79
    ld a, d                                       ; $78e0: $7a
    ld h, h                                       ; $78e1: $64
    dec bc                                        ; $78e2: $0b
    ld h, l                                       ; $78e3: $65
    ld h, [hl]                                    ; $78e4: $66
    add c                                         ; $78e5: $81
    add b                                         ; $78e6: $80
    sub c                                         ; $78e7: $91
    call z, $e040                                 ; $78e8: $cc $40 $e0
    and $d0                                       ; $78eb: $e6 $d0
    db $ed                                        ; $78ed: $ed
    rst $00                                       ; $78ee: $c7
    ld h, b                                       ; $78ef: $60
    jp nz, $8007                                  ; $78f0: $c2 $07 $80

    rst $10                                       ; $78f3: $d7
    inc c                                         ; $78f4: $0c
    ldh [$7d], a                                  ; $78f5: $e0 $7d
    ld h, e                                       ; $78f7: $63
    inc h                                         ; $78f8: $24
    ld h, e                                       ; $78f9: $63
    ccf                                           ; $78fa: $3f
    ret nz                                        ; $78fb: $c0

    ld b, [hl]                                    ; $78fc: $46
    ld a, c                                       ; $78fd: $79
    rst $38                                       ; $78fe: $ff
    ld a, [hl]                                    ; $78ff: $7e
    ld b, e                                       ; $7900: $43
    ld a, $35                                     ; $7901: $3e $35
    ld l, b                                       ; $7903: $68
    ld h, [hl]                                    ; $7904: $66
    xor h                                         ; $7905: $ac
    ld [hl], $10                                  ; $7906: $36 $10
    ld c, e                                       ; $7908: $4b
    ld b, c                                       ; $7909: $41
    ldh [$e6], a                                  ; $790a: $e0 $e6
    ret nc                                        ; $790c: $d0

    db $ed                                        ; $790d: $ed
    ret                                           ; $790e: $c9


    and e                                         ; $790f: $a3
    jp c, Jump_000_211a                           ; $7910: $da $1a $21

    jr z, jr_066_793d                             ; $7913: $28 $28

    rst $38                                       ; $7915: $ff
    ld h, b                                       ; $7916: $60
    rst $38                                       ; $7917: $ff
    ld a, c                                       ; $7918: $79
    ld a, [hl]                                    ; $7919: $7e
    ld b, a                                       ; $791a: $47
    ld e, d                                       ; $791b: $5a
    ld a, $35                                     ; $791c: $3e $35
    dec [hl]                                      ; $791e: $35
    ld l, d                                       ; $791f: $6a
    ld c, $7e                                     ; $7920: $0e $7e
    add b                                         ; $7922: $80
    ld b, [hl]                                    ; $7923: $46
    sbc h                                         ; $7924: $9c
    sbc a                                         ; $7925: $9f
    ldh [$e6], a                                  ; $7926: $e0 $e6
    ret nc                                        ; $7928: $d0

    db $ed                                        ; $7929: $ed
    rst $00                                       ; $792a: $c7
    ld h, b                                       ; $792b: $60
    add c                                         ; $792c: $81
    ld b, b                                       ; $792d: $40
    cp b                                          ; $792e: $b8
    sbc b                                         ; $792f: $98
    ld [hl+], a                                   ; $7930: $22
    ld de, $bf28                                  ; $7931: $11 $28 $bf
    ld h, c                                       ; $7934: $61
    ld d, c                                       ; $7935: $51
    ld e, [hl]                                    ; $7936: $5e
    ld d, [hl]                                    ; $7937: $56
    rst $38                                       ; $7938: $ff
    ld h, b                                       ; $7939: $60
    ld [hl], l                                    ; $793a: $75
    rra                                           ; $793b: $1f
    ld h, [hl]                                    ; $793c: $66

jr_066_793d:
    ld [hl], $45                                  ; $793d: $36 $45
    ld b, [hl]                                    ; $793f: $46
    ld b, [hl]                                    ; $7940: $46
    ld c, b                                       ; $7941: $48
    ld h, d                                       ; $7942: $62
    pop af                                        ; $7943: $f1
    ld [bc], a                                    ; $7944: $02
    ret nc                                        ; $7945: $d0

    db $ed                                        ; $7946: $ed
    call nz, Call_066_60c7                        ; $7947: $c4 $c7 $60
    add c                                         ; $794a: $81
    ld b, e                                       ; $794b: $43
    ld [$2328], a                                 ; $794c: $ea $28 $23
    ld de, $7f23                                  ; $794f: $11 $23 $7f
    ld h, b                                       ; $7952: $60
    add d                                         ; $7953: $82
    add e                                         ; $7954: $83
    rst $38                                       ; $7955: $ff
    ld d, d                                       ; $7956: $52
    ld e, b                                       ; $7957: $58
    ld b, b                                       ; $7958: $40
    dec [hl]                                      ; $7959: $35
    dec [hl]                                      ; $795a: $35
    ld [hl], $81                                  ; $795b: $36 $81
    ld b, l                                       ; $795d: $45
    inc bc                                        ; $795e: $03
    xor [hl]                                      ; $795f: $ae
    xor [hl]                                      ; $7960: $ae
    ld a, a                                       ; $7961: $7f
    ldh [$e0], a                                  ; $7962: $e0 $e0
    push hl                                       ; $7964: $e5
    ret nc                                        ; $7965: $d0

    xor $2f                                       ; $7966: $ee $2f
    adc a                                         ; $7968: $8f
    push af                                       ; $7969: $f5
    nop                                           ; $796a: $00
    ccf                                           ; $796b: $3f
    and c                                         ; $796c: $a1
    rst $38                                       ; $796d: $ff
    adc e                                         ; $796e: $8b
    ld b, l                                       ; $796f: $45
    ld c, e                                       ; $7970: $4b
    ld b, h                                       ; $7971: $44
    ld [hl], $36                                  ; $7972: $36 $36
    ld b, l                                       ; $7974: $45
    adc h                                         ; $7975: $8c
    rrca                                          ; $7976: $0f
    ld a, l                                       ; $7977: $7d
    xor a                                         ; $7978: $af
    xor a                                         ; $7979: $af
    ld b, [hl]                                    ; $797a: $46
    cp a                                          ; $797b: $bf
    pop hl                                        ; $797c: $e1
    rst $18                                       ; $797d: $df
    ld l, b                                       ; $797e: $68
    rst $08                                       ; $797f: $cf
    ld h, a                                       ; $7980: $67
    inc l                                         ; $7981: $2c
    adc l                                         ; $7982: $8d
    cp d                                          ; $7983: $ba
    db $10                                        ; $7984: $10
    dec h                                         ; $7985: $25
    or [hl]                                       ; $7986: $b6
    ld a, a                                       ; $7987: $7f
    pop hl                                        ; $7988: $e1
    ld b, e                                       ; $7989: $43
    ld b, l                                       ; $798a: $45
    ld b, l                                       ; $798b: $45
    add c                                         ; $798c: $81
    ld b, b                                       ; $798d: $40
    adc [hl]                                      ; $798e: $8e
    inc hl                                        ; $798f: $23
    ld a, h                                       ; $7990: $7c
    ld a, l                                       ; $7991: $7d
    cp [hl]                                       ; $7992: $be
    jr nz, jr_066_79db                            ; $7993: $20 $46

    ld b, h                                       ; $7995: $44
    db $fc                                        ; $7996: $fc
    ld l, l                                       ; $7997: $6d
    jp nc, $802b                                  ; $7998: $d2 $2b $80

    ret                                           ; $799b: $c9


    ld h, d                                       ; $799c: $62
    or b                                          ; $799d: $b0
    ld [$f9c3], sp                                ; $799e: $08 $c3 $f9
    ld h, $7e                                     ; $79a1: $26 $7e
    ld b, b                                       ; $79a3: $40
    ld a, l                                       ; $79a4: $7d
    add b                                         ; $79a5: $80
    xor [hl]                                      ; $79a6: $ae
    ld b, [hl]                                    ; $79a7: $46
    ei                                            ; $79a8: $fb
    ld h, b                                       ; $79a9: $60
    add hl, sp                                    ; $79aa: $39
    jp Jump_066_7fae                              ; $79ab: $c3 $ae $7f


    cp a                                          ; $79ae: $bf
    ldh [$fb], a                                  ; $79af: $e0 $fb
    add c                                         ; $79b1: $81
    inc d                                         ; $79b2: $14
    pop bc                                        ; $79b3: $c1
    ret nc                                        ; $79b4: $d0

    ld [$d5d8], a                                 ; $79b5: $ea $d8 $d5
    ld c, $fe                                     ; $79b8: $0e $fe
    ld h, b                                       ; $79ba: $60
    jp nc, $d6d4                                  ; $79bb: $d2 $d4 $d6

    cp b                                          ; $79be: $b8
    ret nz                                        ; $79bf: $c0

    inc l                                         ; $79c0: $2c

Jump_066_79c1:
    ld [hl+], a                                   ; $79c1: $22
    db $f4                                        ; $79c2: $f4
    and e                                         ; $79c3: $a3
    ld a, [hl]                                    ; $79c4: $7e
    call nz, Call_000_3eb6                        ; $79c5: $c4 $b6 $3e
    ldh [$af], a                                  ; $79c8: $e0 $af
    ld b, e                                       ; $79ca: $43
    db $fc                                        ; $79cb: $fc
    ld b, b                                       ; $79cc: $40
    ld a, $af                                     ; $79cd: $3e $af
    pop bc                                        ; $79cf: $c1
    jr nz, jr_066_7a18                            ; $79d0: $20 $46

    jr jr_066_7a0f                                ; $79d2: $18 $3b

    add c                                         ; $79d4: $81
    adc [hl]                                      ; $79d5: $8e
    ret nz                                        ; $79d6: $c0

    ret nc                                        ; $79d7: $d0

    db $eb                                        ; $79d8: $eb
    db $d3                                        ; $79d9: $d3
    ret nc                                        ; $79da: $d0

jr_066_79db:
    ld a, c                                       ; $79db: $79
    ld b, e                                       ; $79dc: $43
    rlca                                          ; $79dd: $07
    ld b, b                                       ; $79de: $40
    inc l                                         ; $79df: $2c

jr_066_79e0:
    ld hl, $f4fc                                  ; $79e0: $21 $fc $f4
    and h                                         ; $79e3: $a4
    ld a, $e6                                     ; $79e4: $3e $e6
    add b                                         ; $79e6: $80
    ld b, l                                       ; $79e7: $45
    ld c, e                                       ; $79e8: $4b
    ld d, l                                       ; $79e9: $55
    ld a, $35                                     ; $79ea: $3e $35
    dec bc                                        ; $79ec: $0b
    ld a, [hl-]                                   ; $79ed: $3a
    ld b, l                                       ; $79ee: $45
    add c                                         ; $79ef: $81
    jr nz, @-$50                                  ; $79f0: $20 $ae

    ld a, d                                       ; $79f2: $7a
    and d                                         ; $79f3: $a2
    ret nc                                        ; $79f4: $d0

    db $ec                                        ; $79f5: $ec
    ld a, [hl-]                                   ; $79f6: $3a
    add c                                         ; $79f7: $81
    ld a, c                                       ; $79f8: $79
    ld b, c                                       ; $79f9: $41
    push hl                                       ; $79fa: $e5
    db $dd                                        ; $79fb: $dd
    rlca                                          ; $79fc: $07
    jp nz, Jump_000_24eb                          ; $79fd: $c2 $eb $24

    push bc                                       ; $7a00: $c5
    db $fd                                        ; $7a01: $fd
    and [hl]                                      ; $7a02: $a6
    add b                                         ; $7a03: $80
    ld b, h                                       ; $7a04: $44
    ld c, l                                       ; $7a05: $4d
    call c, $a0fd                                 ; $7a06: $dc $fd $a0
    ld a, [hl]                                    ; $7a09: $7e
    ld b, b                                       ; $7a0a: $40
    add c                                         ; $7a0b: $81
    ld b, [hl]                                    ; $7a0c: $46
    xor a                                         ; $7a0d: $af
    ld a, [hl-]                                   ; $7a0e: $3a

jr_066_7a0f:
    and d                                         ; $7a0f: $a2
    rst $10                                       ; $7a10: $d7
    jp nc, $d018                                  ; $7a11: $d2 $18 $d0

    ld [$a1f3], a                                 ; $7a14: $ea $f3 $a1
    cp [hl]                                       ; $7a17: $be

jr_066_7a18:
    ldh [$dd], a                                  ; $7a18: $e0 $dd
    pop de                                        ; $7a1a: $d1
    rst $30                                       ; $7a1b: $f7
    and c                                         ; $7a1c: $a1
    add hl, hl                                    ; $7a1d: $29
    add b                                         ; $7a1e: $80
    db $f4                                        ; $7a1f: $f4
    and l                                         ; $7a20: $a5
    jp c, $82fc                                   ; $7a21: $da $fc $82

    and c                                         ; $7a24: $a1
    dec a                                         ; $7a25: $3d
    pop bc                                        ; $7a26: $c1
    ld c, e                                       ; $7a27: $4b
    ld d, l                                       ; $7a28: $55
    inc a                                         ; $7a29: $3c
    ld b, b                                       ; $7a2a: $40
    ld b, d                                       ; $7a2b: $42
    xor a                                         ; $7a2c: $af
    sbc d                                         ; $7a2d: $9a
    ld b, b                                       ; $7a2e: $40
    ldh [rDMA], a                                 ; $7a2f: $e0 $46
    add e                                         ; $7a31: $83
    ld hl, $d3da                                  ; $7a32: $21 $da $d3
    ret nc                                        ; $7a35: $d0

    ld [$e0f0], a                                 ; $7a36: $ea $f0 $e0
    call nc, Call_000_3860                        ; $7a39: $d4 $60 $38
    add e                                         ; $7a3c: $83
    rst $00                                       ; $7a3d: $c7
    and e                                         ; $7a3e: $a3
    db $f4                                        ; $7a3f: $f4
    and l                                         ; $7a40: $a5
    jr jr_066_7a84                                ; $7a41: $18 $41

    ld a, [hl]                                    ; $7a43: $7e
    pop bc                                        ; $7a44: $c1
    add l                                         ; $7a45: $85
    adc e                                         ; $7a46: $8b
    ld a, a                                       ; $7a47: $7f
    ld hl, $3523                                  ; $7a48: $21 $23 $35
    ld b, b                                       ; $7a4b: $40
    ld bc, $4020                                  ; $7a4c: $01 $20 $40
    ldh [$79], a                                  ; $7a4f: $e0 $79
    ld h, b                                       ; $7a51: $60
    call c, Call_000_0023                         ; $7a52: $dc $23 $00
    ret nc                                        ; $7a55: $d0

    add sp, -$1e                                  ; $7a56: $e8 $e2
    ldh a, [$e0]                                  ; $7a58: $f0 $e0
    reti                                          ; $7a5a: $d9


    jr c, jr_066_79e0                             ; $7a5b: $38 $83

    add hl, hl                                    ; $7a5d: $29
    add h                                         ; $7a5e: $84
    cp $a4                                        ; $7a5f: $fe $a4
    ld [c], a                                     ; $7a61: $e2
    db $e3                                        ; $7a62: $e3
    sbc a                                         ; $7a63: $9f
    db $fd                                        ; $7a64: $fd
    sbc l                                         ; $7a65: $9d
    ld a, [hl]                                    ; $7a66: $7e
    ld h, b                                       ; $7a67: $60
    ld b, l                                       ; $7a68: $45
    ld [hl], $6b                                  ; $7a69: $36 $6b
    ld l, h                                       ; $7a6b: $6c
    dec [hl]                                      ; $7a6c: $35
    ld l, h                                       ; $7a6d: $6c
    inc de                                        ; $7a6e: $13
    ld [hl], d                                    ; $7a6f: $72
    ld [hl], c                                    ; $7a70: $71
    db $fd                                        ; $7a71: $fd
    ld b, b                                       ; $7a72: $40
    ld b, b                                       ; $7a73: $40
    pop hl                                        ; $7a74: $e1
    sub b                                         ; $7a75: $90
    jp $2300                                      ; $7a76: $c3 $00 $23


Jump_066_7a79:
    nop                                           ; $7a79: $00
    ret nc                                        ; $7a7a: $d0

    jp hl                                         ; $7a7b: $e9


    pop hl                                        ; $7a7c: $e1
    and b                                         ; $7a7d: $a0
    ld a, $80                                     ; $7a7e: $3e $80
    ld [$f682], sp                                ; $7a80: $08 $82 $f6
    inc l                                         ; $7a83: $2c

jr_066_7a84:
    ld b, c                                       ; $7a84: $41
    add c                                         ; $7a85: $81
    sub c                                         ; $7a86: $91
    ld b, [hl]                                    ; $7a87: $46
    ld b, h                                       ; $7a88: $44
    ccf                                           ; $7a89: $3f
    inc a                                         ; $7a8a: $3c
    ld l, [hl]                                    ; $7a8b: $6e
    ld [hl], b                                    ; $7a8c: $70
    ld [hl], c                                    ; $7a8d: $71
    ld [hl], b                                    ; $7a8e: $70
    ld l, [hl]                                    ; $7a8f: $6e
    ld b, b                                       ; $7a90: $40
    and c                                         ; $7a91: $a1
    add b                                         ; $7a92: $80
    ret nz                                        ; $7a93: $c0

    ret nz                                        ; $7a94: $c0

    add hl, sp                                    ; $7a95: $39
    ld h, d                                       ; $7a96: $62
    ld c, e                                       ; $7a97: $4b
    add b                                         ; $7a98: $80
    ret nc                                        ; $7a99: $d0

    ld [$227f], a                                 ; $7a9a: $ea $7f $22
    adc c                                         ; $7a9d: $89

jr_066_7a9e:
    and d                                         ; $7a9e: $a2
    jr nc, jr_066_7aa8                            ; $7a9f: $30 $07

    sbc a                                         ; $7aa1: $9f
    sbc l                                         ; $7aa2: $9d
    cp e                                          ; $7aa3: $bb
    sbc l                                         ; $7aa4: $9d
    sbc h                                         ; $7aa5: $9c
    inc bc                                        ; $7aa6: $03
    ld h, b                                       ; $7aa7: $60

jr_066_7aa8:
    ld b, c                                       ; $7aa8: $41
    ld b, e                                       ; $7aa9: $43
    ld [hl], $ff                                  ; $7aaa: $36 $ff
    jr nz, jr_066_7ae3                            ; $7aac: $20 $35

    inc bc                                        ; $7aae: $03
    jr c, jr_066_7ae8                             ; $7aaf: $38 $37

    pop bc                                        ; $7ab1: $c1
    db $e4                                        ; $7ab2: $e4
    cp d                                          ; $7ab3: $ba
    ld b, b                                       ; $7ab4: $40
    db $e4                                        ; $7ab5: $e4
    ld h, d                                       ; $7ab6: $62
    ret nc                                        ; $7ab7: $d0

    xor $30                                       ; $7ab8: $ee $30
    dec bc                                        ; $7aba: $0b
    push bc                                       ; $7abb: $c5
    ld h, d                                       ; $7abc: $62
    ld b, $c4                                     ; $7abd: $06 $c4
    ld b, c                                       ; $7abf: $41
    dec [hl]                                      ; $7ac0: $35
    dec sp                                        ; $7ac1: $3b
    pop bc                                        ; $7ac2: $c1
    pop hl                                        ; $7ac3: $e1
    add e                                         ; $7ac4: $83
    db $e3                                        ; $7ac5: $e3
    jp nz, Jump_066_44c0                          ; $7ac6: $c2 $c0 $44

    ld bc, $a2dc                                  ; $7ac9: $01 $dc $a2
    jr jr_066_7a9e                                ; $7acc: $18 $d0

    db $ec                                        ; $7ace: $ec
    jr nc, jr_066_7ade                            ; $7acf: $30 $0d

    add [hl]                                      ; $7ad1: $86
    ld h, d                                       ; $7ad2: $62
    ld b, [hl]                                    ; $7ad3: $46
    ld b, [hl]                                    ; $7ad4: $46

Call_066_7ad5:
    add l                                         ; $7ad5: $85
    nop                                           ; $7ad6: $00
    pop bc                                        ; $7ad7: $c1
    db $e3                                        ; $7ad8: $e3
    add b                                         ; $7ad9: $80
    ld b, b                                       ; $7ada: $40
    ld b, b                                       ; $7adb: $40
    ld [hl], l                                    ; $7adc: $75
    ld b, b                                       ; $7add: $40

jr_066_7ade:
    ld b, d                                       ; $7ade: $42
    db $e3                                        ; $7adf: $e3
    call c, $d0a2                                 ; $7ae0: $dc $a2 $d0

jr_066_7ae3:
    db $ec                                        ; $7ae3: $ec
    jr nc, jr_066_7af3                            ; $7ae4: $30 $0d

    add [hl]                                      ; $7ae6: $86
    ld h, d                                       ; $7ae7: $62

jr_066_7ae8:
    ld b, [hl]                                    ; $7ae8: $46
    add l                                         ; $7ae9: $85
    ld bc, $4112                                  ; $7aea: $01 $12 $41
    jr nz, jr_066_7b29                            ; $7aed: $20 $3a

    pop bc                                        ; $7aef: $c1
    pop hl                                        ; $7af0: $e1
    ld [hl], l                                    ; $7af1: $75
    ld b, c                                       ; $7af2: $41

jr_066_7af3:
    or [hl]                                       ; $7af3: $b6
    ld b, d                                       ; $7af4: $42
    nop                                           ; $7af5: $00
    push de                                       ; $7af6: $d5
    inc bc                                        ; $7af7: $03
    ret nc                                        ; $7af8: $d0

    db $ed                                        ; $7af9: $ed
    ld c, h                                       ; $7afa: $4c
    jr nc, jr_066_7b0a                            ; $7afb: $30 $0d

    rst $00                                       ; $7afd: $c7
    ld b, c                                       ; $7afe: $41
    ld b, [hl]                                    ; $7aff: $46
    xor [hl]                                      ; $7b00: $ae
    ld b, h                                       ; $7b01: $44
    jr nz, jr_066_7b07                            ; $7b02: $20 $03

    pop hl                                        ; $7b04: $e1
    add hl, sp                                    ; $7b05: $39
    ld a, [bc]                                    ; $7b06: $0a

jr_066_7b07:
    ret nz                                        ; $7b07: $c0

    add l                                         ; $7b08: $85
    sbc l                                         ; $7b09: $9d

jr_066_7b0a:
    rst $38                                       ; $7b0a: $ff
    pop hl                                        ; $7b0b: $e1
    sbc a                                         ; $7b0c: $9f
    ldh [$85], a                                  ; $7b0d: $e0 $85
    ret nc                                        ; $7b0f: $d0

    xor $30                                       ; $7b10: $ee $30
    dec c                                         ; $7b12: $0d
    ret nz                                        ; $7b13: $c0

    ld [c], a                                     ; $7b14: $e2
    xor a                                         ; $7b15: $af
    nop                                           ; $7b16: $00
    ld b, c                                       ; $7b17: $41
    db $e3                                        ; $7b18: $e3
    ld b, [hl]                                    ; $7b19: $46
    and b                                         ; $7b1a: $a0
    ld c, e                                       ; $7b1b: $4b
    pop bc                                        ; $7b1c: $c1
    add sp, $48                                   ; $7b1d: $e8 $48
    ret nc                                        ; $7b1f: $d0

    rst $28                                       ; $7b20: $ef
    ld bc, $468c                                  ; $7b21: $01 $8c $46
    jp $e441                                      ; $7b24: $c3 $41 $e4


    ld b, c                                       ; $7b27: $41
    add hl, sp                                    ; $7b28: $39

jr_066_7b29:
    adc c                                         ; $7b29: $89
    add e                                         ; $7b2a: $83
    and c                                         ; $7b2b: $a1
    pop hl                                        ; $7b2c: $e1
    add sp, $44                                   ; $7b2d: $e8 $44
    pop de                                        ; $7b2f: $d1
    ld [hl], c                                    ; $7b30: $71
    ld bc, $9e8a                                  ; $7b31: $01 $8a $9e
    ld c, b                                       ; $7b34: $48
    jr nz, jr_066_7b3c                            ; $7b35: $20 $05

    ld b, [hl]                                    ; $7b37: $46
    ld c, d                                       ; $7b38: $4a
    add c                                         ; $7b39: $81
    dec [hl]                                      ; $7b3a: $35
    push bc                                       ; $7b3b: $c5

jr_066_7b3c:
    ld hl, $62c9                                  ; $7b3c: $21 $c9 $62
    ld de, $0486                                  ; $7b3f: $11 $86 $04
    adc l                                         ; $7b42: $8d
    db $f4                                        ; $7b43: $f4
    ld h, c                                       ; $7b44: $61
    ld b, b                                       ; $7b45: $40
    jr nc, jr_066_7b4e                            ; $7b46: $30 $06

    dec b                                         ; $7b48: $05
    ld b, e                                       ; $7b49: $43
    ld b, [hl]                                    ; $7b4a: $46
    nop                                           ; $7b4b: $00
    sub l                                         ; $7b4c: $95
    add b                                         ; $7b4d: $80

jr_066_7b4e:
    add $a0                                       ; $7b4e: $c6 $a0
    ld b, a                                       ; $7b50: $47
    ld h, b                                       ; $7b51: $60
    ld b, e                                       ; $7b52: $43
    ld [$0060], sp                                ; $7b53: $08 $60 $00
    inc c                                         ; $7b56: $0c
    jp Jump_000_21ec                              ; $7b57: $c3 $ec $21


    rst $00                                       ; $7b5a: $c7
    ld h, b                                       ; $7b5b: $60
    push de                                       ; $7b5c: $d5
    ld h, b                                       ; $7b5d: $60
    inc e                                         ; $7b5e: $1c
    jp $e8f0                                      ; $7b5f: $c3 $f0 $e8


    jr nc, jr_066_7b6a                            ; $7b62: $30 $06

    ei                                            ; $7b64: $fb
    ret nz                                        ; $7b65: $c0

    ld [hl], b                                    ; $7b66: $70
    ld [$d761], sp                                ; $7b67: $08 $61 $d7

jr_066_7b6a:
    add b                                         ; $7b6a: $80
    ld d, d                                       ; $7b6b: $52
    ld h, b                                       ; $7b6c: $60
    ld [bc], a                                    ; $7b6d: $02
    ret nz                                        ; $7b6e: $c0

jr_066_7b6f:
    ld [hl], $45                                  ; $7b6f: $36 $45
    xor [hl]                                      ; $7b71: $ae
    ld c, d                                       ; $7b72: $4a
    ret nz                                        ; $7b73: $c0

    ld e, c                                       ; $7b74: $59
    sbc [hl]                                      ; $7b75: $9e
    db $e4                                        ; $7b76: $e4
    ld [c], a                                     ; $7b77: $e2
    ldh [$e1], a                                  ; $7b78: $e0 $e1
    db $d3                                        ; $7b7a: $d3
    sub $5f                                       ; $7b7b: $d6 $5f
    pop bc                                        ; $7b7d: $c1
    sub $d0                                       ; $7b7e: $d6 $d0
    and $80                                       ; $7b80: $e6 $80
    ldh a, [$e9]                                  ; $7b82: $f0 $e9
    inc h                                         ; $7b84: $24
    db $e4                                        ; $7b85: $e4
    ld [$8861], sp                                ; $7b86: $08 $61 $88
    and b                                         ; $7b89: $a0
    ld d, c                                       ; $7b8a: $51
    and c                                         ; $7b8b: $a1

jr_066_7b8c:
    ld a, [$85e1]                                 ; $7b8c: $fa $e1 $85
    ld bc, $049e                                  ; $7b8f: $01 $9e $04
    ldh a, [rNR43]                                ; $7b92: $f0 $22
    db $ec                                        ; $7b94: $ec
    jr nz, jr_066_7b6f                            ; $7b95: $20 $d8

    db $db                                        ; $7b97: $db
    ld h, b                                       ; $7b98: $60
    ld b, a                                       ; $7b99: $47
    ld b, c                                       ; $7b9a: $41
    ret nc                                        ; $7b9b: $d0

    push hl                                       ; $7b9c: $e5
    ldh a, [$e5]                                  ; $7b9d: $f0 $e5
    jr nc, jr_066_7ba6                            ; $7b9f: $30 $05

    ld e, $09                                     ; $7ba1: $1e $09
    ld h, h                                       ; $7ba3: $64
    sbc h                                         ; $7ba4: $9c
    ld b, l                                       ; $7ba5: $45

jr_066_7ba6:
    ld [hl], $a6                                  ; $7ba6: $36 $a6
    db $10                                        ; $7ba8: $10
    and l                                         ; $7ba9: $a5
    ld a, l                                       ; $7baa: $7d
    ld bc, $620a                                  ; $7bab: $01 $0a $62
    ld [$e1e0], sp                                ; $7bae: $08 $e0 $e1
    sub $60                                       ; $7bb1: $d6 $60
    inc hl                                        ; $7bb3: $23
    add c                                         ; $7bb4: $81
    db $dd                                        ; $7bb5: $dd
    ret nc                                        ; $7bb6: $d0

    push hl                                       ; $7bb7: $e5
    ldh a, [$e5]                                  ; $7bb8: $f0 $e5
    jr nc, jr_066_7bc1                            ; $7bba: $30 $05

    ld [$1f23], sp                                ; $7bbc: $08 $23 $1f
    sbc [hl]                                      ; $7bbf: $9e
    ld b, l                                       ; $7bc0: $45

jr_066_7bc1:
    ld [hl], $62                                  ; $7bc1: $36 $62
    and a                                         ; $7bc3: $a7
    rrca                                          ; $7bc4: $0f
    ld b, c                                       ; $7bc5: $41
    ld d, c                                       ; $7bc6: $51
    add c                                         ; $7bc7: $81
    ret                                           ; $7bc8: $c9


    and c                                         ; $7bc9: $a1
    call c, Call_066_610b                         ; $7bca: $dc $0b $61
    ldh [$e2], a                                  ; $7bcd: $e0 $e2
    db $d3                                        ; $7bcf: $d3
    ret nc                                        ; $7bd0: $d0

    pop de                                        ; $7bd1: $d1
    rst $10                                       ; $7bd2: $d7
    ld h, b                                       ; $7bd3: $60
    ret nc                                        ; $7bd4: $d0

    ret nc                                        ; $7bd5: $d0

    ldh a, [$d0]                                  ; $7bd6: $f0 $d0
    push hl                                       ; $7bd8: $e5
    ldh a, [$e5]                                  ; $7bd9: $f0 $e5
    jr nc, jr_066_7be2                            ; $7bdb: $30 $05

    db $fc                                        ; $7bdd: $fc
    jp Jump_000_369e                              ; $7bde: $c3 $9e $36


    ld h, d                                       ; $7be1: $62

jr_066_7be2:
    ld h, a                                       ; $7be2: $67
    inc hl                                        ; $7be3: $23
    and e                                         ; $7be4: $a3
    ld l, b                                       ; $7be5: $68
    adc $20                                       ; $7be6: $ce $20
    ld d, c                                       ; $7be8: $51
    add c                                         ; $7be9: $81
    add $a0                                       ; $7bea: $c6 $a0
    sbc a                                         ; $7bec: $9f
    ld [$6126], sp                                ; $7bed: $08 $26 $61
    and c                                         ; $7bf0: $a1
    jp nz, Jump_066_40d6                          ; $7bf1: $c2 $d6 $40

    call nc, $e5d0                                ; $7bf4: $d4 $d0 $e5
    ldh a, [$e5]                                  ; $7bf7: $f0 $e5
    jr nc, jr_066_7c00                            ; $7bf9: $30 $05

    ld [$9e23], sp                                ; $7bfb: $08 $23 $9e
    xor b                                         ; $7bfe: $a8
    rlca                                          ; $7bff: $07

jr_066_7c00:
    xor c                                         ; $7c00: $a9
    ld l, h                                       ; $7c01: $6c
    dec [hl]                                      ; $7c02: $35
    inc c                                         ; $7c03: $0c
    jr nz, @-$71                                  ; $7c04: $20 $8d

    jr nz, jr_066_7b8c                            ; $7c06: $20 $84

    db $e3                                        ; $7c08: $e3
    ld [$1722], sp                                ; $7c09: $08 $22 $17
    add d                                         ; $7c0c: $82
    ldh a, [$d8]                                  ; $7c0d: $f0 $d8
    ld h, e                                       ; $7c0f: $63
    rlca                                          ; $7c10: $07
    add a                                         ; $7c11: $87
    ldh a, [$e4]                                  ; $7c12: $f0 $e4
    rlca                                          ; $7c14: $07
    adc e                                         ; $7c15: $8b
    and c                                         ; $7c16: $a1
    ld [hl], $6e                                  ; $7c17: $36 $6e
    ld l, a                                       ; $7c19: $6f
    ld a, a                                       ; $7c1a: $7f
    ld l, h                                       ; $7c1b: $6c
    dec [hl]                                      ; $7c1c: $35
    and e                                         ; $7c1d: $a3

jr_066_7c1e:
    xor d                                         ; $7c1e: $aa
    xor e                                         ; $7c1f: $ab
    ld [hl], $45                                  ; $7c20: $36 $45
    add a                                         ; $7c22: $87
    and h                                         ; $7c23: $a4
    nop                                           ; $7c24: $00
    jr jr_066_7c48                                ; $7c25: $18 $21

    and [hl]                                      ; $7c27: $a6
    ld h, e                                       ; $7c28: $63
    ld [$9482], sp                                ; $7c29: $08 $82 $94
    jr z, jr_066_7c1e                             ; $7c2c: $28 $f0

    db $e3                                        ; $7c2e: $e3
    inc c                                         ; $7c2f: $0c
    ld c, c                                       ; $7c30: $49
    nop                                           ; $7c31: $00
    ld [c], a                                     ; $7c32: $e2
    cp a                                          ; $7c33: $bf
    ldh [$03], a                                  ; $7c34: $e0 $03
    ld l, h                                       ; $7c36: $6c
    ld l, a                                       ; $7c37: $6f
    call z, $8760                                 ; $7c38: $cc $60 $87
    and [hl]                                      ; $7c3b: $a6
    push hl                                       ; $7c3c: $e5
    ld h, l                                       ; $7c3d: $65
    ret c                                         ; $7c3e: $d8

    ld h, h                                       ; $7c3f: $64
    ldh a, [$ee]                                  ; $7c40: $f0 $ee
    jr nc, jr_066_7c4d                            ; $7c42: $30 $09

    ld b, $80                                     ; $7c44: $06 $80
    pop bc                                        ; $7c46: $c1
    ld l, [hl]                                    ; $7c47: $6e

jr_066_7c48:
    ld l, a                                       ; $7c48: $6f
    pop bc                                        ; $7c49: $c1
    pop hl                                        ; $7c4a: $e1
    add a                                         ; $7c4b: $87
    and a                                         ; $7c4c: $a7

jr_066_7c4d:
    ldh [$e9], a                                  ; $7c4d: $e0 $e9
    ldh a, [$f0]                                  ; $7c4f: $f0 $f0
    jr nc, jr_066_7c5e                            ; $7c51: $30 $0b

    nop                                           ; $7c53: $00
    cp a                                          ; $7c54: $bf
    ld [c], a                                     ; $7c55: $e2
    pop bc                                        ; $7c56: $c1
    push hl                                       ; $7c57: $e5
    ld l, l                                       ; $7c58: $6d
    ld h, d                                       ; $7c59: $62
    ldh [$eb], a                                  ; $7c5a: $e0 $eb
    ldh a, [$ef]                                  ; $7c5c: $f0 $ef

jr_066_7c5e:
    jr nc, @+$0e                                  ; $7c5e: $30 $0c

    ld b, e                                       ; $7c60: $43
    ld h, b                                       ; $7c61: $60
    ld d, b                                       ; $7c62: $50
    add e                                         ; $7c63: $83
    nop                                           ; $7c64: $00
    dec d                                         ; $7c65: $15
    add l                                         ; $7c66: $85
    ldh [$ec], a                                  ; $7c67: $e0 $ec
    ldh a, [$ee]                                  ; $7c69: $f0 $ee
    jr nc, jr_066_7c7a                            ; $7c6b: $30 $0d

    db $10                                        ; $7c6d: $10
    and l                                         ; $7c6e: $a5
    dec d                                         ; $7c6f: $15
    add l                                         ; $7c70: $85
    ldh [$ed], a                                  ; $7c71: $e0 $ed
    ret nc                                        ; $7c73: $d0

    db $ed                                        ; $7c74: $ed
    nop                                           ; $7c75: $00
    jr nc, jr_066_7c85                            ; $7c76: $30 $0d

    db $10                                        ; $7c78: $10
    and l                                         ; $7c79: $a5

jr_066_7c7a:
    ldh a, [$e5]                                  ; $7c7a: $f0 $e5
    ldh [$ed], a                                  ; $7c7c: $e0 $ed
    ret nc                                        ; $7c7e: $d0

    db $ed                                        ; $7c7f: $ed
    cpl                                           ; $7c80: $2f
    adc l                                         ; $7c81: $8d
    db $10                                        ; $7c82: $10
    and h                                         ; $7c83: $a4
    ld a, [c]                                     ; $7c84: $f2

jr_066_7c85:
    daa                                           ; $7c85: $27
    nop                                           ; $7c86: $00
    rrca                                          ; $7c87: $0f
    adc l                                         ; $7c88: $8d
    ret nc                                        ; $7c89: $d0

    db $eb                                        ; $7c8a: $eb
    nop                                           ; $7c8b: $00
    nop                                           ; $7c8c: $00
    nop                                           ; $7c8d: $00
    pop bc                                        ; $7c8e: $c1
    nop                                           ; $7c8f: $00
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
    nop                                           ; $7c9a: $00
    nop                                           ; $7c9b: $00
    dec c                                         ; $7c9c: $0d
    add b                                         ; $7c9d: $80
    cp $e0                                        ; $7c9e: $fe $e0
    nop                                           ; $7ca0: $00
    ld b, b                                       ; $7ca1: $40
    ret c                                         ; $7ca2: $d8

    push hl                                       ; $7ca3: $e5
    rst $30                                       ; $7ca4: $f7
    and $eb                                       ; $7ca5: $e6 $eb
    ldh [rIE], a                                  ; $7ca7: $e0 $ff
    rst $38                                       ; $7ca9: $ff
    nop                                           ; $7caa: $00
    rst $38                                       ; $7cab: $ff
    db $f4                                        ; $7cac: $f4
    nop                                           ; $7cad: $00
    nop                                           ; $7cae: $00
    nop                                           ; $7caf: $00
    ld [bc], a                                    ; $7cb0: $02
    nop                                           ; $7cb1: $00
    ld a, [hl+]                                   ; $7cb2: $2a
    dec b                                         ; $7cb3: $05
    ld [bc], a                                    ; $7cb4: $02
    ld bc, $0629                                  ; $7cb5: $01 $29 $06
    ld [bc], a                                    ; $7cb8: $02
    ld [bc], a                                    ; $7cb9: $02
    ld a, [hl+]                                   ; $7cba: $2a
    add hl, bc                                    ; $7cbb: $09
    ld [bc], a                                    ; $7cbc: $02
    inc bc                                        ; $7cbd: $03
    inc l                                         ; $7cbe: $2c
    add hl, bc                                    ; $7cbf: $09
    ld [bc], a                                    ; $7cc0: $02
    inc b                                         ; $7cc1: $04
    ld l, $09                                     ; $7cc2: $2e $09
    ld [bc], a                                    ; $7cc4: $02
    dec b                                         ; $7cc5: $05
    dec h                                         ; $7cc6: $25
    ld a, [bc]                                    ; $7cc7: $0a
    ld [bc], a                                    ; $7cc8: $02
    ld b, $2b                                     ; $7cc9: $06 $2b
    ld a, [bc]                                    ; $7ccb: $0a
    ld [bc], a                                    ; $7ccc: $02
    rlca                                          ; $7ccd: $07
    dec l                                         ; $7cce: $2d
    ld a, [bc]                                    ; $7ccf: $0a
    ld [bc], a                                    ; $7cd0: $02
    ld [$0c22], sp                                ; $7cd1: $08 $22 $0c
    ld [bc], a                                    ; $7cd4: $02
    add hl, bc                                    ; $7cd5: $09
    jr nz, jr_066_7ce6                            ; $7cd6: $20 $0e

    ld [bc], a                                    ; $7cd8: $02
    ld a, [bc]                                    ; $7cd9: $0a
    inc h                                         ; $7cda: $24
    ld c, $02                                     ; $7cdb: $0e $02
    dec bc                                        ; $7cdd: $0b
    inc hl                                        ; $7cde: $23
    rrca                                          ; $7cdf: $0f
    ld [bc], a                                    ; $7ce0: $02
    inc c                                         ; $7ce1: $0c
    ld e, $10                                     ; $7ce2: $1e $10
    ld [bc], a                                    ; $7ce4: $02
    dec c                                         ; $7ce5: $0d

jr_066_7ce6:
    ld [hl+], a                                   ; $7ce6: $22
    ld de, $0e02                                  ; $7ce7: $11 $02 $0e
    jr nz, jr_066_7cfe                            ; $7cea: $20 $12

    ld [bc], a                                    ; $7cec: $02
    rrca                                          ; $7ced: $0f
    jr nz, jr_066_7d05                            ; $7cee: $20 $15

    ld [bc], a                                    ; $7cf0: $02
    db $10                                        ; $7cf1: $10
    dec e                                         ; $7cf2: $1d
    jr @+$04                                      ; $7cf3: $18 $02

    ld de, $1920                                  ; $7cf5: $11 $20 $19
    ld [bc], a                                    ; $7cf8: $02
    ld [de], a                                    ; $7cf9: $12
    ld hl, $021a                                  ; $7cfa: $21 $1a $02
    inc de                                        ; $7cfd: $13

jr_066_7cfe:
    ld [hl+], a                                   ; $7cfe: $22
    inc e                                         ; $7cff: $1c
    ld [bc], a                                    ; $7d00: $02
    inc d                                         ; $7d01: $14
    inc h                                         ; $7d02: $24
    rra                                           ; $7d03: $1f
    ld [bc], a                                    ; $7d04: $02

jr_066_7d05:
    dec d                                         ; $7d05: $15
    dec h                                         ; $7d06: $25
    rra                                           ; $7d07: $1f
    ld [bc], a                                    ; $7d08: $02
    ld d, $1e                                     ; $7d09: $16 $1e
    ld [hl+], a                                   ; $7d0b: $22
    ld [bc], a                                    ; $7d0c: $02
    rla                                           ; $7d0d: $17
    inc h                                         ; $7d0e: $24
    ld [hl+], a                                   ; $7d0f: $22
    ld [bc], a                                    ; $7d10: $02
    jr jr_066_7d3b                                ; $7d11: $18 $28

    inc h                                         ; $7d13: $24
    ld [bc], a                                    ; $7d14: $02
    add hl, de                                    ; $7d15: $19
    dec h                                         ; $7d16: $25
    dec h                                         ; $7d17: $25
    ld [bc], a                                    ; $7d18: $02
    ld a, [de]                                    ; $7d19: $1a
    jr z, jr_066_7d43                             ; $7d1a: $28 $27

    ld [bc], a                                    ; $7d1c: $02
    dec de                                        ; $7d1d: $1b
    ld d, $2e                                     ; $7d1e: $16 $2e
    ld [bc], a                                    ; $7d20: $02
    inc e                                         ; $7d21: $1c
    inc de                                        ; $7d22: $13
    ld [hl-], a                                   ; $7d23: $32
    ld [bc], a                                    ; $7d24: $02
    dec e                                         ; $7d25: $1d
    dec de                                        ; $7d26: $1b
    inc sp                                        ; $7d27: $33
    ld [bc], a                                    ; $7d28: $02
    ld e, $17                                     ; $7d29: $1e $17
    ld [hl], $ff                                  ; $7d2b: $36 $ff
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

jr_066_7d3b:
    rst $38                                       ; $7d3b: $ff
    rst $38                                       ; $7d3c: $ff
    rst $38                                       ; $7d3d: $ff
    rst $38                                       ; $7d3e: $ff
    rst $38                                       ; $7d3f: $ff
    rst $38                                       ; $7d40: $ff
    rst $38                                       ; $7d41: $ff
    rst $38                                       ; $7d42: $ff

jr_066_7d43:
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

Jump_066_7edb:
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

Call_066_7f4e:
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

Call_066_7f80:
Jump_066_7f80:
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

Jump_066_7fae:
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

Jump_066_7fd3:
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

Jump_066_7ff8:
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
