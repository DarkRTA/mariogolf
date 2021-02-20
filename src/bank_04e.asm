; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04e", ROMX[$4000], BANK[$4e]

    ld b, d                                       ; $4000: $42

Jump_04e_4001:
    ld d, [hl]                                    ; $4001: $56
    add c                                         ; $4002: $81
    ld h, c                                       ; $4003: $61

    db $6d, $6a

    rla                                           ; $4006: $17
    ld l, [hl]                                    ; $4007: $6e
    ld [c], a                                     ; $4008: $e2
    ld l, [hl]                                    ; $4009: $6e
    adc $6f                                       ; $400a: $ce $6f
    rst $08                                       ; $400c: $cf
    ld [hl], b                                    ; $400d: $70
    rst $38                                       ; $400e: $ff
    nop                                           ; $400f: $00
    rst $38                                       ; $4010: $ff
    nop                                           ; $4011: $00
    rst $38                                       ; $4012: $ff
    nop                                           ; $4013: $00
    rst $38                                       ; $4014: $ff
    nop                                           ; $4015: $00
    rst $38                                       ; $4016: $ff
    nop                                           ; $4017: $00
    rst $38                                       ; $4018: $ff
    nop                                           ; $4019: $00
    rst $38                                       ; $401a: $ff
    nop                                           ; $401b: $00
    rst $38                                       ; $401c: $ff
    nop                                           ; $401d: $00
    ld a, [c]                                     ; $401e: $f2
    ld [hl-], a                                   ; $401f: $32
    ld sp, hl                                     ; $4020: $f9
    add hl, sp                                    ; $4021: $39
    ei                                            ; $4022: $fb
    dec sp                                        ; $4023: $3b
    di                                            ; $4024: $f3
    inc sp                                        ; $4025: $33
    pop af                                        ; $4026: $f1
    ld sp, $3afa                                  ; $4027: $31 $fa $3a
    di                                            ; $402a: $f3
    inc sp                                        ; $402b: $33
    ld hl, sp+$38                                 ; $402c: $f8 $38
    inc b                                         ; $402e: $04
    inc b                                         ; $402f: $04
    inc b                                         ; $4030: $04
    inc b                                         ; $4031: $04
    and h                                         ; $4032: $a4
    and h                                         ; $4033: $a4
    and h                                         ; $4034: $a4
    and h                                         ; $4035: $a4
    ld b, b                                       ; $4036: $40
    ld b, b                                       ; $4037: $40
    call nz, Call_04e_44c4                        ; $4038: $c4 $c4 $44
    ld b, h                                       ; $403b: $44
    nop                                           ; $403c: $00
    nop                                           ; $403d: $00
    cp a                                          ; $403e: $bf
    cp b                                          ; $403f: $b8
    cp a                                          ; $4040: $bf
    cp b                                          ; $4041: $b8
    sbc a                                         ; $4042: $9f
    sbc b                                         ; $4043: $98
    sbc a                                         ; $4044: $9f
    sbc b                                         ; $4045: $98
    ccf                                           ; $4046: $3f
    db $38, $9f                                   ; $4047: $38 $9f
    sbc b                                         ; $4049: $98
    cp a                                          ; $404a: $bf

jr_04e_404b:
    cp b                                          ; $404b: $b8
    ccf                                           ; $404c: $3f
    jr c, jr_04e_404b                             ; $404d: $38 $fc

    inc c                                         ; $404f: $0c
    cp $0e                                        ; $4050: $fe $0e
    db $fc                                        ; $4052: $fc
    inc c                                         ; $4053: $0c
    cp $0e                                        ; $4054: $fe $0e
    cp $0e                                        ; $4056: $fe $0e
    db $fc                                        ; $4058: $fc
    inc c                                         ; $4059: $0c
    cp $0e                                        ; $405a: $fe $0e
    cp $0e                                        ; $405c: $fe $0e
    dec h                                         ; $405e: $25
    dec h                                         ; $405f: $25
    ld b, l                                       ; $4060: $45
    ld b, l                                       ; $4061: $45
    db $ec                                        ; $4062: $ec
    db $ec                                        ; $4063: $ec
    db $ed                                        ; $4064: $ed
    db $ed                                        ; $4065: $ed
    ld d, c                                       ; $4066: $51
    ld d, c                                       ; $4067: $51
    or l                                          ; $4068: $b5
    or l                                          ; $4069: $b5
    ld h, b                                       ; $406a: $60
    ld h, b                                       ; $406b: $60
    add l                                         ; $406c: $85
    add l                                         ; $406d: $85
    ld a, a                                       ; $406e: $7f
    ld [hl], b                                    ; $406f: $70
    ld a, a                                       ; $4070: $7f
    ld [hl], b                                    ; $4071: $70
    ccf                                           ; $4072: $3f
    jr nc, jr_04e_40f4                            ; $4073: $30 $7f

    ld [hl], b                                    ; $4075: $70
    ld a, a                                       ; $4076: $7f
    ld [hl], b                                    ; $4077: $70
    ccf                                           ; $4078: $3f
    jr nc, jr_04e_40fa                            ; $4079: $30 $7f

    ld [hl], b                                    ; $407b: $70
    ccf                                           ; $407c: $3f

jr_04e_407d:
    jr c, jr_04e_407d                             ; $407d: $38 $fe

    ld b, $ff                                     ; $407f: $06 $ff
    rlca                                          ; $4081: $07
    cp $06                                        ; $4082: $fe $06
    rst $38                                       ; $4084: $ff
    rlca                                          ; $4085: $07
    rst $38                                       ; $4086: $ff
    rlca                                          ; $4087: $07
    rst $38                                       ; $4088: $ff
    rlca                                          ; $4089: $07
    cp $06                                        ; $408a: $fe $06
    rst $38                                       ; $408c: $ff
    rlca                                          ; $408d: $07
    ld h, h                                       ; $408e: $64
    ld h, h                                       ; $408f: $64
    ld h, l                                       ; $4090: $65
    ld h, l                                       ; $4091: $65
    ld b, l                                       ; $4092: $45
    ld b, l                                       ; $4093: $45
    inc b                                         ; $4094: $04
    inc b                                         ; $4095: $04
    ld h, b                                       ; $4096: $60
    ld h, b                                       ; $4097: $60
    ld b, l                                       ; $4098: $45
    ld b, l                                       ; $4099: $45
    inc b                                         ; $409a: $04
    inc b                                         ; $409b: $04
    ld b, e                                       ; $409c: $43
    ld b, e                                       ; $409d: $43
    rst $38                                       ; $409e: $ff
    ret nz                                        ; $409f: $c0

    rst $38                                       ; $40a0: $ff
    ret nz                                        ; $40a1: $c0

    rst $38                                       ; $40a2: $ff
    ret nz                                        ; $40a3: $c0

    rst $38                                       ; $40a4: $ff
    ret nz                                        ; $40a5: $c0

    rst $38                                       ; $40a6: $ff
    ret nz                                        ; $40a7: $c0

    rst $38                                       ; $40a8: $ff
    ret nz                                        ; $40a9: $c0

    rst $38                                       ; $40aa: $ff
    ldh [rIE], a                                  ; $40ab: $e0 $ff
    ldh [rIE], a                                  ; $40ad: $e0 $ff
    ld bc, $01ff                                  ; $40af: $01 $ff $01
    rst $38                                       ; $40b2: $ff
    ld bc, $01ff                                  ; $40b3: $01 $ff $01
    rst $38                                       ; $40b6: $ff
    ld bc, $01ff                                  ; $40b7: $01 $ff $01
    rst $38                                       ; $40ba: $ff
    ld bc, $01ff                                  ; $40bb: $01 $ff $01
    ret                                           ; $40be: $c9


    ret                                           ; $40bf: $c9


    or e                                          ; $40c0: $b3
    or e                                          ; $40c1: $b3
    or e                                          ; $40c2: $b3
    or e                                          ; $40c3: $b3
    push bc                                       ; $40c4: $c5
    push bc                                       ; $40c5: $c5
    and e                                         ; $40c6: $a3
    and e                                         ; $40c7: $a3

jr_04e_40c8:
    push bc                                       ; $40c8: $c5
    push bc                                       ; $40c9: $c5
    push de                                       ; $40ca: $d5
    push de                                       ; $40cb: $d5
    sub e                                         ; $40cc: $93
    sub e                                         ; $40cd: $93
    rst $38                                       ; $40ce: $ff
    add b                                         ; $40cf: $80
    rst $38                                       ; $40d0: $ff
    add b                                         ; $40d1: $80
    rst $38                                       ; $40d2: $ff
    add b                                         ; $40d3: $80
    rst $38                                       ; $40d4: $ff
    add b                                         ; $40d5: $80
    rst $38                                       ; $40d6: $ff
    ret nz                                        ; $40d7: $c0

    rst $38                                       ; $40d8: $ff
    ret nz                                        ; $40d9: $c0

    rst $38                                       ; $40da: $ff
    add b                                         ; $40db: $80
    rst $38                                       ; $40dc: $ff
    add b                                         ; $40dd: $80
    ld sp, hl                                     ; $40de: $f9

jr_04e_40df:
    add hl, sp                                    ; $40df: $39
    ld a, [$f23a]                                 ; $40e0: $fa $3a $f2
    ld [hl-], a                                   ; $40e3: $32
    ld a, [$fa3a]                                 ; $40e4: $fa $3a $fa
    ld a, [hl-]                                   ; $40e7: $3a
    ld a, [$f83a]                                 ; $40e8: $fa $3a $f8
    jr c, jr_04e_40df                             ; $40eb: $38 $f2

    ld [hl-], a                                   ; $40ed: $32
    nop                                           ; $40ee: $00
    nop                                           ; $40ef: $00
    ld b, h                                       ; $40f0: $44
    ld b, h                                       ; $40f1: $44
    inc b                                         ; $40f2: $04
    inc b                                         ; $40f3: $04

jr_04e_40f4:
    ld b, h                                       ; $40f4: $44
    ld b, h                                       ; $40f5: $44
    ld b, h                                       ; $40f6: $44
    ld b, h                                       ; $40f7: $44
    ld b, b                                       ; $40f8: $40
    ld b, b                                       ; $40f9: $40

jr_04e_40fa:
    ld b, h                                       ; $40fa: $44
    ld b, h                                       ; $40fb: $44
    inc b                                         ; $40fc: $04
    inc b                                         ; $40fd: $04
    ccf                                           ; $40fe: $3f
    inc a                                         ; $40ff: $3c
    rra                                           ; $4100: $1f
    inc e                                         ; $4101: $1c
    ccf                                           ; $4102: $3f
    inc a                                         ; $4103: $3c
    sbc a                                         ; $4104: $9f
    sbc h                                         ; $4105: $9c
    rra                                           ; $4106: $1f
    jr jr_04e_40c8                                ; $4107: $18 $bf

    cp b                                          ; $4109: $b8
    cp a                                          ; $410a: $bf
    cp b                                          ; $410b: $b8
    sbc a                                         ; $410c: $9f
    sbc b                                         ; $410d: $98
    db $fc                                        ; $410e: $fc
    inc c                                         ; $410f: $0c
    cp $0e                                        ; $4110: $fe $0e
    db $fc                                        ; $4112: $fc
    inc c                                         ; $4113: $0c
    db $fc                                        ; $4114: $fc
    inc c                                         ; $4115: $0c
    cp $0e                                        ; $4116: $fe $0e
    cp $0e                                        ; $4118: $fe $0e
    db $fc                                        ; $411a: $fc
    inc c                                         ; $411b: $0c
    cp $0e                                        ; $411c: $fe $0e
    and h                                         ; $411e: $a4
    and h                                         ; $411f: $a4
    and h                                         ; $4120: $a4
    and h                                         ; $4121: $a4
    inc b                                         ; $4122: $04
    inc b                                         ; $4123: $04
    add l                                         ; $4124: $85
    add l                                         ; $4125: $85
    and b                                         ; $4126: $a0
    and b                                         ; $4127: $a0
    and l                                         ; $4128: $a5
    and l                                         ; $4129: $a5
    ld hl, $a121                                  ; $412a: $21 $21 $a1
    and c                                         ; $412d: $a1
    ld a, a                                       ; $412e: $7f
    ld a, b                                       ; $412f: $78
    ld a, a                                       ; $4130: $7f
    ld a, b                                       ; $4131: $78
    ld a, a                                       ; $4132: $7f
    ld [hl], b                                    ; $4133: $70
    ld a, a                                       ; $4134: $7f
    ld [hl], b                                    ; $4135: $70
    ccf                                           ; $4136: $3f
    jr nc, jr_04e_41b8                            ; $4137: $30 $7f

    ld [hl], b                                    ; $4139: $70
    ld a, a                                       ; $413a: $7f
    ld [hl], b                                    ; $413b: $70
    ccf                                           ; $413c: $3f

jr_04e_413d:
    jr nc, jr_04e_413d                            ; $413d: $30 $fe

    ld b, $fe                                     ; $413f: $06 $fe
    ld b, $ff                                     ; $4141: $06 $ff
    rlca                                          ; $4143: $07
    rst $38                                       ; $4144: $ff
    rlca                                          ; $4145: $07
    rst $38                                       ; $4146: $ff
    rlca                                          ; $4147: $07
    cp $06                                        ; $4148: $fe $06
    rst $38                                       ; $414a: $ff
    rlca                                          ; $414b: $07
    cp $06                                        ; $414c: $fe $06
    ld bc, $0501                                  ; $414e: $01 $01 $05
    dec b                                         ; $4151: $05
    ld b, l                                       ; $4152: $45
    ld b, l                                       ; $4153: $45
    ld b, h                                       ; $4154: $44
    ld b, h                                       ; $4155: $44
    ld b, c                                       ; $4156: $41
    ld b, c                                       ; $4157: $41
    ld b, b                                       ; $4158: $40
    ld b, b                                       ; $4159: $40
    ld c, h                                       ; $415a: $4c
    ld c, h                                       ; $415b: $4c
    ld c, l                                       ; $415c: $4d
    ld c, l                                       ; $415d: $4d
    rst $38                                       ; $415e: $ff
    ret nz                                        ; $415f: $c0

    rst $38                                       ; $4160: $ff
    ret nz                                        ; $4161: $c0

    rst $38                                       ; $4162: $ff
    ret nz                                        ; $4163: $c0

    rst $38                                       ; $4164: $ff
    ret nz                                        ; $4165: $c0

    rst $38                                       ; $4166: $ff
    ret nz                                        ; $4167: $c0

    rst $38                                       ; $4168: $ff
    ret nz                                        ; $4169: $c0

    rst $38                                       ; $416a: $ff
    ret nz                                        ; $416b: $c0

    rst $38                                       ; $416c: $ff
    ret nz                                        ; $416d: $c0

    rst $38                                       ; $416e: $ff
    ld bc, $01ff                                  ; $416f: $01 $ff $01
    rst $38                                       ; $4172: $ff
    ld bc, $01ff                                  ; $4173: $01 $ff $01
    rst $38                                       ; $4176: $ff
    ld bc, $03ff                                  ; $4177: $01 $ff $03
    rst $38                                       ; $417a: $ff
    inc bc                                        ; $417b: $03
    rst $38                                       ; $417c: $ff
    ld bc, $d3d3                                  ; $417d: $01 $d3 $d3
    add l                                         ; $4180: $85
    add l                                         ; $4181: $85
    db $d3                                        ; $4182: $d3
    db $d3                                        ; $4183: $d3
    pop de                                        ; $4184: $d1
    pop de                                        ; $4185: $d1

jr_04e_4186:
    jp $8fc3                                      ; $4186: $c3 $c3 $8f


    adc a                                         ; $4189: $8f
    call $93cd                                    ; $418a: $cd $cd $93
    sub e                                         ; $418d: $93
    rst $38                                       ; $418e: $ff
    add b                                         ; $418f: $80
    rst $38                                       ; $4190: $ff
    add b                                         ; $4191: $80
    rst $38                                       ; $4192: $ff
    add b                                         ; $4193: $80
    rst $38                                       ; $4194: $ff
    add b                                         ; $4195: $80
    rst $38                                       ; $4196: $ff
    add b                                         ; $4197: $80
    rst $38                                       ; $4198: $ff
    add b                                         ; $4199: $80
    rst $38                                       ; $419a: $ff
    add b                                         ; $419b: $80
    rst $38                                       ; $419c: $ff
    add b                                         ; $419d: $80
    ld a, [$f23a]                                 ; $419e: $fa $3a $f2

jr_04e_41a1:
    ld [hl-], a                                   ; $41a1: $32
    ldh a, [$30]                                  ; $41a2: $f0 $30
    ld a, [$f03a]                                 ; $41a4: $fa $3a $f0
    jr nc, jr_04e_41a1                            ; $41a7: $30 $f8

    jr c, @-$06                                   ; $41a9: $38 $f8

    jr c, @-$06                                   ; $41ab: $38 $f8

    jr c, jr_04e_41f3                             ; $41ad: $38 $44

    ld b, h                                       ; $41af: $44
    ld b, b                                       ; $41b0: $40
    ld b, b                                       ; $41b1: $40
    ld b, h                                       ; $41b2: $44
    ld b, h                                       ; $41b3: $44
    ld c, $0e                                     ; $41b4: $0e $0e
    ld c, $0e                                     ; $41b6: $0e $0e

jr_04e_41b8:
    ld c, [hl]                                    ; $41b8: $4e
    ld c, [hl]                                    ; $41b9: $4e
    ld d, l                                       ; $41ba: $55
    ld d, l                                       ; $41bb: $55
    dec bc                                        ; $41bc: $0b
    dec bc                                        ; $41bd: $0b
    cp a                                          ; $41be: $bf
    cp b                                          ; $41bf: $b8
    cp a                                          ; $41c0: $bf
    cp b                                          ; $41c1: $b8
    cp a                                          ; $41c2: $bf
    cp b                                          ; $41c3: $b8
    ccf                                           ; $41c4: $3f
    jr c, jr_04e_4186                             ; $41c5: $38 $bf

    cp b                                          ; $41c7: $b8
    sbc a                                         ; $41c8: $9f
    sbc b                                         ; $41c9: $98
    ccf                                           ; $41ca: $3f
    jr c, jr_04e_41ec                             ; $41cb: $38 $1f

jr_04e_41cd:
    jr jr_04e_41cd                                ; $41cd: $18 $fe

    ld c, $fe                                     ; $41cf: $0e $fe
    ld c, $fe                                     ; $41d1: $0e $fe
    ld c, $fc                                     ; $41d3: $0e $fc
    inc c                                         ; $41d5: $0c
    cp $1e                                        ; $41d6: $fe $1e
    db $fc                                        ; $41d8: $fc
    inc e                                         ; $41d9: $1c
    db $fc                                        ; $41da: $fc
    inc e                                         ; $41db: $1c
    db $fc                                        ; $41dc: $fc
    inc c                                         ; $41dd: $0c
    inc h                                         ; $41de: $24
    inc h                                         ; $41df: $24
    ld [bc], a                                    ; $41e0: $02
    ld [bc], a                                    ; $41e1: $02
    and a                                         ; $41e2: $a7
    and a                                         ; $41e3: $a7
    add a                                         ; $41e4: $87
    add a                                         ; $41e5: $87
    adc d                                         ; $41e6: $8a
    adc d                                         ; $41e7: $8a
    dec b                                         ; $41e8: $05
    dec b                                         ; $41e9: $05
    add a                                         ; $41ea: $87
    add a                                         ; $41eb: $87

jr_04e_41ec:
    and d                                         ; $41ec: $a2
    and d                                         ; $41ed: $a2
    ld a, a                                       ; $41ee: $7f
    ld [hl], b                                    ; $41ef: $70
    ld a, a                                       ; $41f0: $7f
    ld [hl], b                                    ; $41f1: $70
    ccf                                           ; $41f2: $3f

jr_04e_41f3:
    jr nc, jr_04e_4274                            ; $41f3: $30 $7f

    ld [hl], b                                    ; $41f5: $70
    cp a                                          ; $41f6: $bf
    or b                                          ; $41f7: $b0
    ld a, a                                       ; $41f8: $7f
    ld [hl], b                                    ; $41f9: $70
    ld a, a                                       ; $41fa: $7f
    ld [hl], b                                    ; $41fb: $70
    ccf                                           ; $41fc: $3f
    jr nc, @+$01                                  ; $41fd: $30 $ff

    rlca                                          ; $41ff: $07
    rst $38                                       ; $4200: $ff
    rrca                                          ; $4201: $0f
    rst $38                                       ; $4202: $ff
    rrca                                          ; $4203: $0f
    rst $38                                       ; $4204: $ff
    rlca                                          ; $4205: $07
    cp $06                                        ; $4206: $fe $06
    rst $38                                       ; $4208: $ff
    rlca                                          ; $4209: $07
    cp $06                                        ; $420a: $fe $06
    rst $38                                       ; $420c: $ff
    rlca                                          ; $420d: $07
    inc c                                         ; $420e: $0c
    inc c                                         ; $420f: $0c
    ld d, c                                       ; $4210: $51
    ld d, c                                       ; $4211: $51
    dec c                                         ; $4212: $0d
    dec c                                         ; $4213: $0d
    add hl, bc                                    ; $4214: $09
    add hl, bc                                    ; $4215: $09
    nop                                           ; $4216: $00
    nop                                           ; $4217: $00
    ld b, c                                       ; $4218: $41
    ld b, c                                       ; $4219: $41
    ld b, h                                       ; $421a: $44
    ld b, h                                       ; $421b: $44

jr_04e_421c:
    ld b, h                                       ; $421c: $44
    ld b, h                                       ; $421d: $44
    add l                                         ; $421e: $85
    add l                                         ; $421f: $85
    db $d3                                        ; $4220: $d3
    db $d3                                        ; $4221: $d3
    db $d3                                        ; $4222: $d3
    db $d3                                        ; $4223: $d3
    sub e                                         ; $4224: $93
    sub e                                         ; $4225: $93
    pop de                                        ; $4226: $d1
    pop de                                        ; $4227: $d1
    add e                                         ; $4228: $83
    add e                                         ; $4229: $83
    db $d3                                        ; $422a: $d3
    db $d3                                        ; $422b: $d3
    pop bc                                        ; $422c: $c1
    pop bc                                        ; $422d: $c1
    ld hl, sp+$78                                 ; $422e: $f8 $78
    ld a, [$f07a]                                 ; $4230: $fa $7a $f0
    ld [hl], b                                    ; $4233: $70
    ld a, [$f27a]                                 ; $4234: $fa $7a $f2
    ld [hl-], a                                   ; $4237: $32
    ld a, [c]                                     ; $4238: $f2
    ld [hl-], a                                   ; $4239: $32
    ld a, [$f23a]                                 ; $423a: $fa $3a $f2
    ld [hl-], a                                   ; $423d: $32
    ld c, [hl]                                    ; $423e: $4e
    ld c, [hl]                                    ; $423f: $4e
    ld b, h                                       ; $4240: $44
    ld b, h                                       ; $4241: $44
    ld b, b                                       ; $4242: $40
    ld b, b                                       ; $4243: $40
    ld b, h                                       ; $4244: $44
    ld b, h                                       ; $4245: $44
    ld b, h                                       ; $4246: $44
    ld b, h                                       ; $4247: $44
    nop                                           ; $4248: $00
    nop                                           ; $4249: $00
    ld b, h                                       ; $424a: $44
    ld b, h                                       ; $424b: $44
    ld b, b                                       ; $424c: $40
    ld b, b                                       ; $424d: $40
    sbc a                                         ; $424e: $9f
    sbc b                                         ; $424f: $98
    sbc a                                         ; $4250: $9f
    sbc b                                         ; $4251: $98
    cp a                                          ; $4252: $bf
    cp b                                          ; $4253: $b8
    sbc a                                         ; $4254: $9f
    sbc b                                         ; $4255: $98
    cp a                                          ; $4256: $bf
    cp b                                          ; $4257: $b8
    cp a                                          ; $4258: $bf
    cp b                                          ; $4259: $b8
    rra                                           ; $425a: $1f
    jr jr_04e_421c                                ; $425b: $18 $bf

    cp b                                          ; $425d: $b8
    cp $0e                                        ; $425e: $fe $0e
    db $fc                                        ; $4260: $fc
    inc c                                         ; $4261: $0c
    cp $0e                                        ; $4262: $fe $0e
    cp $0e                                        ; $4264: $fe $0e
    cp $0e                                        ; $4266: $fe $0e
    cp $0e                                        ; $4268: $fe $0e
    db $fc                                        ; $426a: $fc
    inc c                                         ; $426b: $0c
    cp $0e                                        ; $426c: $fe $0e
    and h                                         ; $426e: $a4
    and h                                         ; $426f: $a4
    ld bc, $a101                                  ; $4270: $01 $01 $a1
    and c                                         ; $4273: $a1

jr_04e_4274:
    inc h                                         ; $4274: $24
    inc h                                         ; $4275: $24
    and l                                         ; $4276: $a5
    and l                                         ; $4277: $a5
    add l                                         ; $4278: $85
    add l                                         ; $4279: $85
    ld hl, $8121                                  ; $427a: $21 $21 $81
    add c                                         ; $427d: $81
    ld a, a                                       ; $427e: $7f
    ld [hl], b                                    ; $427f: $70
    ld a, a                                       ; $4280: $7f
    ld [hl], b                                    ; $4281: $70
    ccf                                           ; $4282: $3f
    jr nc, jr_04e_4304                            ; $4283: $30 $7f

    ld [hl], b                                    ; $4285: $70
    ccf                                           ; $4286: $3f
    jr nc, jr_04e_4308                            ; $4287: $30 $7f

    ld [hl], b                                    ; $4289: $70
    ld a, a                                       ; $428a: $7f
    ld [hl], b                                    ; $428b: $70
    ld a, a                                       ; $428c: $7f
    ld [hl], b                                    ; $428d: $70
    rst $38                                       ; $428e: $ff
    rlca                                          ; $428f: $07
    cp $06                                        ; $4290: $fe $06
    cp $06                                        ; $4292: $fe $06
    rst $38                                       ; $4294: $ff
    rlca                                          ; $4295: $07
    rst $38                                       ; $4296: $ff
    rlca                                          ; $4297: $07
    rst $38                                       ; $4298: $ff
    rlca                                          ; $4299: $07
    rst $38                                       ; $429a: $ff
    rlca                                          ; $429b: $07
    cp $06                                        ; $429c: $fe $06
    ld bc, $4401                                  ; $429e: $01 $01 $44
    ld b, h                                       ; $42a1: $44
    dec b                                         ; $42a2: $05
    dec b                                         ; $42a3: $05
    ld b, c                                       ; $42a4: $41
    ld b, c                                       ; $42a5: $41
    ld b, l                                       ; $42a6: $45
    ld b, l                                       ; $42a7: $45
    ld b, l                                       ; $42a8: $45
    ld b, l                                       ; $42a9: $45
    ld b, h                                       ; $42aa: $44
    ld b, h                                       ; $42ab: $44

jr_04e_42ac:
    dec b                                         ; $42ac: $05
    dec b                                         ; $42ad: $05
    rst $38                                       ; $42ae: $ff
    ld bc, $01ff                                  ; $42af: $01 $ff $01
    rst $38                                       ; $42b2: $ff
    ld bc, $03ff                                  ; $42b3: $01 $ff $03
    rst $38                                       ; $42b6: $ff
    inc bc                                        ; $42b7: $03
    rst $38                                       ; $42b8: $ff
    inc bc                                        ; $42b9: $03
    rst $38                                       ; $42ba: $ff
    ld bc, $00ff                                  ; $42bb: $01 $ff $00
    ret                                           ; $42be: $c9


    ret                                           ; $42bf: $c9


    adc e                                         ; $42c0: $8b
    adc e                                         ; $42c1: $8b

jr_04e_42c2:
    pop bc                                        ; $42c2: $c1
    pop bc                                        ; $42c3: $c1
    inc b                                         ; $42c4: $04
    inc b                                         ; $42c5: $04
    ld d, h                                       ; $42c6: $54
    ld d, h                                       ; $42c7: $54
    db $e3                                        ; $42c8: $e3
    db $e3                                        ; $42c9: $e3
    rst $38                                       ; $42ca: $ff
    rst $38                                       ; $42cb: $ff
    rst $38                                       ; $42cc: $ff
    ld a, [hl]                                    ; $42cd: $7e
    rst $38                                       ; $42ce: $ff
    add b                                         ; $42cf: $80
    rst $38                                       ; $42d0: $ff
    add b                                         ; $42d1: $80
    rst $38                                       ; $42d2: $ff
    add b                                         ; $42d3: $80
    rst $38                                       ; $42d4: $ff
    ret nz                                        ; $42d5: $c0

    rst $38                                       ; $42d6: $ff
    ret nz                                        ; $42d7: $c0

    rst $38                                       ; $42d8: $ff
    ret nz                                        ; $42d9: $c0

    rst $38                                       ; $42da: $ff
    add b                                         ; $42db: $80
    rst $38                                       ; $42dc: $ff
    nop                                           ; $42dd: $00
    ld a, [$fa3a]                                 ; $42de: $fa $3a $fa
    ld a, [hl-]                                   ; $42e1: $3a
    ld a, [$fa3a]                                 ; $42e2: $fa $3a $fa
    ld a, [hl-]                                   ; $42e5: $3a
    ld hl, sp+$38                                 ; $42e6: $f8 $38
    ld a, [$f03a]                                 ; $42e8: $fa $3a $f0
    jr nc, @-$04                                  ; $42eb: $30 $fa

    ld a, [hl-]                                   ; $42ed: $3a
    ld b, h                                       ; $42ee: $44
    ld b, h                                       ; $42ef: $44
    ld b, h                                       ; $42f0: $44
    ld b, h                                       ; $42f1: $44
    nop                                           ; $42f2: $00
    nop                                           ; $42f3: $00
    ld b, h                                       ; $42f4: $44
    ld b, h                                       ; $42f5: $44
    ld b, h                                       ; $42f6: $44
    ld b, h                                       ; $42f7: $44
    ld b, h                                       ; $42f8: $44
    ld b, h                                       ; $42f9: $44
    ld b, h                                       ; $42fa: $44
    ld b, h                                       ; $42fb: $44
    ld b, h                                       ; $42fc: $44
    ld b, h                                       ; $42fd: $44
    ccf                                           ; $42fe: $3f
    jr c, jr_04e_4340                             ; $42ff: $38 $3f

    jr c, jr_04e_42c2                             ; $4301: $38 $bf

    cp b                                          ; $4303: $b8

jr_04e_4304:
    cp a                                          ; $4304: $bf
    cp b                                          ; $4305: $b8
    cp a                                          ; $4306: $bf
    cp b                                          ; $4307: $b8

jr_04e_4308:
    sbc a                                         ; $4308: $9f
    sbc b                                         ; $4309: $98
    ccf                                           ; $430a: $3f
    jr c, jr_04e_42ac                             ; $430b: $38 $9f

    sbc b                                         ; $430d: $98
    cp $0e                                        ; $430e: $fe $0e
    db $fc                                        ; $4310: $fc
    inc c                                         ; $4311: $0c
    cp $0e                                        ; $4312: $fe $0e
    db $fc                                        ; $4314: $fc
    inc c                                         ; $4315: $0c
    cp $0e                                        ; $4316: $fe $0e
    cp $0e                                        ; $4318: $fe $0e
    cp $0e                                        ; $431a: $fe $0e
    db $fc                                        ; $431c: $fc
    inc c                                         ; $431d: $0c
    add h                                         ; $431e: $84
    add h                                         ; $431f: $84
    and l                                         ; $4320: $a5
    and l                                         ; $4321: $a5
    and l                                         ; $4322: $a5
    and l                                         ; $4323: $a5
    add h                                         ; $4324: $84
    add h                                         ; $4325: $84
    dec h                                         ; $4326: $25
    dec h                                         ; $4327: $25
    and l                                         ; $4328: $a5
    and l                                         ; $4329: $a5
    ld hl, $8421                                  ; $432a: $21 $21 $84
    add h                                         ; $432d: $84
    ccf                                           ; $432e: $3f
    jr nc, jr_04e_43b0                            ; $432f: $30 $7f

    ld [hl], b                                    ; $4331: $70
    ccf                                           ; $4332: $3f
    jr nc, jr_04e_4374                            ; $4333: $30 $3f

    jr nc, jr_04e_43b6                            ; $4335: $30 $7f

    ld [hl], b                                    ; $4337: $70
    ccf                                           ; $4338: $3f
    jr nc, @+$81                                  ; $4339: $30 $7f

    ld [hl], b                                    ; $433b: $70
    ld a, a                                       ; $433c: $7f
    ld [hl], b                                    ; $433d: $70
    rst $38                                       ; $433e: $ff
    rlca                                          ; $433f: $07

jr_04e_4340:
    cp $06                                        ; $4340: $fe $06
    cp $0e                                        ; $4342: $fe $0e
    db $fc                                        ; $4344: $fc
    inc c                                         ; $4345: $0c
    db $fd                                        ; $4346: $fd
    dec c                                         ; $4347: $0d
    rst $38                                       ; $4348: $ff
    rrca                                          ; $4349: $0f
    rst $38                                       ; $434a: $ff
    rlca                                          ; $434b: $07
    rst $38                                       ; $434c: $ff
    nop                                           ; $434d: $00
    ld b, l                                       ; $434e: $45
    ld b, l                                       ; $434f: $45
    ld b, h                                       ; $4350: $44
    ld b, h                                       ; $4351: $44
    ld b, b                                       ; $4352: $40
    ld b, b                                       ; $4353: $40

jr_04e_4354:
    inc c                                         ; $4354: $0c
    inc c                                         ; $4355: $0c
    and d                                         ; $4356: $a2
    and d                                         ; $4357: $a2
    rst $00                                       ; $4358: $c7
    rst $00                                       ; $4359: $c7
    rst $38                                       ; $435a: $ff
    rst $38                                       ; $435b: $ff
    rst $38                                       ; $435c: $ff
    cp $ff                                        ; $435d: $fe $ff
    ret nz                                        ; $435f: $c0

    rst $38                                       ; $4360: $ff
    ret nz                                        ; $4361: $c0

jr_04e_4362:
    rst $38                                       ; $4362: $ff
    ldh [$7f], a                                  ; $4363: $e0 $7f
    ld h, b                                       ; $4365: $60
    ld a, a                                       ; $4366: $7f
    ld h, b                                       ; $4367: $60
    rst $38                                       ; $4368: $ff
    ldh [rIE], a                                  ; $4369: $e0 $ff
    ret nz                                        ; $436b: $c0

    rst $38                                       ; $436c: $ff
    nop                                           ; $436d: $00
    ld a, [c]                                     ; $436e: $f2
    ld [hl-], a                                   ; $436f: $32
    ld a, [$fa3a]                                 ; $4370: $fa $3a $fa
    ld a, [hl-]                                   ; $4373: $3a

jr_04e_4374:
    ld a, [$f23a]                                 ; $4374: $fa $3a $f2
    ld [hl-], a                                   ; $4377: $32
    ld hl, sp+$38                                 ; $4378: $f8 $38
    ld a, [$fa3a]                                 ; $437a: $fa $3a $fa
    ld a, [hl-]                                   ; $437d: $3a
    ld b, h                                       ; $437e: $44
    ld b, h                                       ; $437f: $44
    ld b, h                                       ; $4380: $44
    ld b, h                                       ; $4381: $44
    ld b, b                                       ; $4382: $40
    ld b, b                                       ; $4383: $40
    ld b, h                                       ; $4384: $44
    ld b, h                                       ; $4385: $44

jr_04e_4386:
    ld b, h                                       ; $4386: $44
    ld b, h                                       ; $4387: $44
    ld b, h                                       ; $4388: $44
    ld b, h                                       ; $4389: $44
    ld b, b                                       ; $438a: $40
    ld b, b                                       ; $438b: $40
    inc b                                         ; $438c: $04
    inc b                                         ; $438d: $04
    sbc a                                         ; $438e: $9f
    sbc b                                         ; $438f: $98
    cp a                                          ; $4390: $bf
    cp b                                          ; $4391: $b8
    ccf                                           ; $4392: $3f
    jr c, jr_04e_4354                             ; $4393: $38 $bf

    cp b                                          ; $4395: $b8
    sbc a                                         ; $4396: $9f
    sbc b                                         ; $4397: $98
    cp a                                          ; $4398: $bf
    cp b                                          ; $4399: $b8
    cp a                                          ; $439a: $bf
    cp b                                          ; $439b: $b8
    ccf                                           ; $439c: $3f

jr_04e_439d:
    jr c, jr_04e_439d                             ; $439d: $38 $fe

    ld c, $fc                                     ; $439f: $0e $fc
    inc e                                         ; $43a1: $1c
    ld a, [$f81a]                                 ; $43a2: $fa $1a $f8
    jr @-$01                                      ; $43a5: $18 $fd

    dec e                                         ; $43a7: $1d
    rst $38                                       ; $43a8: $ff
    rrca                                          ; $43a9: $0f
    rst $38                                       ; $43aa: $ff
    rlca                                          ; $43ab: $07
    rst $38                                       ; $43ac: $ff
    nop                                           ; $43ad: $00
    add h                                         ; $43ae: $84
    add h                                         ; $43af: $84

jr_04e_43b0:
    and c                                         ; $43b0: $a1
    and c                                         ; $43b1: $a1
    and h                                         ; $43b2: $a4
    and h                                         ; $43b3: $a4
    ld l, [hl]                                    ; $43b4: $6e
    ld l, [hl]                                    ; $43b5: $6e

jr_04e_43b6:
    add c                                         ; $43b6: $81
    add c                                         ; $43b7: $81

jr_04e_43b8:
    jp $ffc3                                      ; $43b8: $c3 $c3 $ff


    rst $38                                       ; $43bb: $ff
    rst $38                                       ; $43bc: $ff
    rst $38                                       ; $43bd: $ff
    ld a, a                                       ; $43be: $7f
    ld [hl], b                                    ; $43bf: $70
    ccf                                           ; $43c0: $3f
    jr c, jr_04e_4362                             ; $43c1: $38 $9f

    sbc b                                         ; $43c3: $98
    rra                                           ; $43c4: $1f
    jr jr_04e_4386                                ; $43c5: $18 $bf

    cp b                                          ; $43c7: $b8
    rst $38                                       ; $43c8: $ff
    ldh a, [rIE]                                  ; $43c9: $f0 $ff
    ldh [rIE], a                                  ; $43cb: $e0 $ff
    nop                                           ; $43cd: $00
    rst $10                                       ; $43ce: $d7
    sub $f3                                       ; $43cf: $d6 $f3
    di                                            ; $43d1: $f3
    and a                                         ; $43d2: $a7
    and [hl]                                      ; $43d3: $a6
    rst $10                                       ; $43d4: $d7
    sub $83                                       ; $43d5: $d6 $83
    add d                                         ; $43d7: $82
    sub e                                         ; $43d8: $93
    sub d                                         ; $43d9: $92
    rst $10                                       ; $43da: $d7
    sub $d3                                       ; $43db: $d6 $d3
    jp nc, $0000                                  ; $43dd: $d2 $00 $00

    ld b, h                                       ; $43e0: $44
    ld b, h                                       ; $43e1: $44
    inc b                                         ; $43e2: $04
    inc b                                         ; $43e3: $04
    ld b, h                                       ; $43e4: $44
    ld b, h                                       ; $43e5: $44
    ld b, b                                       ; $43e6: $40
    ld b, b                                       ; $43e7: $40
    ld b, b                                       ; $43e8: $40
    ld b, b                                       ; $43e9: $40
    nop                                           ; $43ea: $00
    nop                                           ; $43eb: $00
    inc b                                         ; $43ec: $04
    inc b                                         ; $43ed: $04
    ccf                                           ; $43ee: $3f
    jr c, jr_04e_4410                             ; $43ef: $38 $1f

    jr jr_04e_4432                                ; $43f1: $18 $3f

    jr c, @-$5f                                   ; $43f3: $38 $9f

    sbc b                                         ; $43f5: $98
    rra                                           ; $43f6: $1f
    jr jr_04e_43b8                                ; $43f7: $18 $bf

    cp b                                          ; $43f9: $b8
    cp a                                          ; $43fa: $bf
    cp b                                          ; $43fb: $b8
    sbc a                                         ; $43fc: $9f
    sbc b                                         ; $43fd: $98
    ldh a, [rSVBK]                                ; $43fe: $f0 $70
    ld a, [$f07a]                                 ; $4400: $fa $7a $f0
    ld [hl], b                                    ; $4403: $70
    ldh a, [rSVBK]                                ; $4404: $f0 $70
    ei                                            ; $4406: $fb
    ld a, e                                       ; $4407: $7b
    rst $38                                       ; $4408: $ff
    ccf                                           ; $4409: $3f
    rst $38                                       ; $440a: $ff
    rra                                           ; $440b: $1f
    rst $38                                       ; $440c: $ff
    ld bc, $4444                                  ; $440d: $01 $44 $44

jr_04e_4410:
    ret nz                                        ; $4410: $c0

    ret nz                                        ; $4411: $c0

    add h                                         ; $4412: $84
    add h                                         ; $4413: $84
    nop                                           ; $4414: $00
    nop                                           ; $4415: $00
    inc bc                                        ; $4416: $03
    inc bc                                        ; $4417: $03
    add a                                         ; $4418: $87
    add a                                         ; $4419: $87
    rst $38                                       ; $441a: $ff
    rst $38                                       ; $441b: $ff
    rst $38                                       ; $441c: $ff
    rst $38                                       ; $441d: $ff
    sbc a                                         ; $441e: $9f
    sbc h                                         ; $441f: $9c
    ld a, a                                       ; $4420: $7f
    ld a, h                                       ; $4421: $7c
    rra                                           ; $4422: $1f
    inc e                                         ; $4423: $1c
    rra                                           ; $4424: $1f
    inc e                                         ; $4425: $1c
    ccf                                           ; $4426: $3f
    inc a                                         ; $4427: $3c
    rst $38                                       ; $4428: $ff
    ld hl, sp-$01                                 ; $4429: $f8 $ff
    ldh a, [rIE]                                  ; $442b: $f0 $ff
    nop                                           ; $442d: $00
    db $eb                                        ; $442e: $eb
    ld l, d                                       ; $442f: $6a
    db $eb                                        ; $4430: $eb
    ld l, e                                       ; $4431: $6b

jr_04e_4432:
    rst $00                                       ; $4432: $c7
    ld b, [hl]                                    ; $4433: $46
    rst $20                                       ; $4434: $e7
    ld h, [hl]                                    ; $4435: $66
    db $eb                                        ; $4436: $eb
    ld l, d                                       ; $4437: $6a
    db $eb                                        ; $4438: $eb
    ld l, d                                       ; $4439: $6a
    rst $00                                       ; $443a: $c7
    add $c7                                       ; $443b: $c6 $c7
    ld b, [hl]                                    ; $443d: $46
    rst $38                                       ; $443e: $ff
    nop                                           ; $443f: $00
    rst $38                                       ; $4440: $ff
    ld bc, $00ff                                  ; $4441: $01 $ff $00
    rst $38                                       ; $4444: $ff
    nop                                           ; $4445: $00
    rst $38                                       ; $4446: $ff
    nop                                           ; $4447: $00
    rst $38                                       ; $4448: $ff
    nop                                           ; $4449: $00
    rst $38                                       ; $444a: $ff
    nop                                           ; $444b: $00
    rst $38                                       ; $444c: $ff
    nop                                           ; $444d: $00
    sub a                                         ; $444e: $97
    sub [hl]                                      ; $444f: $96
    set 1, d                                      ; $4450: $cb $ca

jr_04e_4452:
    sbc a                                         ; $4452: $9f
    sbc [hl]                                      ; $4453: $9e

jr_04e_4454:
    set 1, d                                      ; $4454: $cb $ca
    rst $00                                       ; $4456: $c7
    add $93                                       ; $4457: $c6 $93
    sub d                                         ; $4459: $92

jr_04e_445a:
    db $d3                                        ; $445a: $d3
    jp nc, $9697                                  ; $445b: $d2 $97 $96

    rst $38                                       ; $445e: $ff
    jr c, @+$01                                   ; $445f: $38 $ff

    jr c, jr_04e_4452                             ; $4461: $38 $ef

    jr z, jr_04e_4454                             ; $4463: $28 $ef

    jr z, @+$01                                   ; $4465: $28 $ff

    jr c, @-$0f                                   ; $4467: $38 $ef

    jr z, @+$01                                   ; $4469: $28 $ff

    ld a, h                                       ; $446b: $7c
    rst $38                                       ; $446c: $ff
    jr c, jr_04e_445a                             ; $446d: $38 $eb

    ld l, d                                       ; $446f: $6a
    db $eb                                        ; $4470: $eb
    ld l, d                                       ; $4471: $6a
    rst $08                                       ; $4472: $cf
    ld c, [hl]                                    ; $4473: $4e
    rst $20                                       ; $4474: $e7
    ld h, [hl]                                    ; $4475: $66
    db $eb                                        ; $4476: $eb
    ld l, d                                       ; $4477: $6a
    set 1, e                                      ; $4478: $cb $cb
    rst $20                                       ; $447a: $e7
    rst $20                                       ; $447b: $e7
    rst $38                                       ; $447c: $ff
    ld a, [hl]                                    ; $447d: $7e
    rst $38                                       ; $447e: $ff
    nop                                           ; $447f: $00
    rst $38                                       ; $4480: $ff
    nop                                           ; $4481: $00
    rst $38                                       ; $4482: $ff
    nop                                           ; $4483: $00
    rst $38                                       ; $4484: $ff
    nop                                           ; $4485: $00
    rst $38                                       ; $4486: $ff
    nop                                           ; $4487: $00
    rst $38                                       ; $4488: $ff
    ld bc, $01ff                                  ; $4489: $01 $ff $01
    rst $38                                       ; $448c: $ff
    nop                                           ; $448d: $00
    rst $00                                       ; $448e: $c7
    add $d7                                       ; $448f: $c6 $d7
    sub $93                                       ; $4491: $d6 $93
    sub d                                         ; $4493: $92
    rst $00                                       ; $4494: $c7
    add $93                                       ; $4495: $c6 $93
    sub d                                         ; $4497: $92
    add hl, hl                                    ; $4498: $29
    add hl, hl                                    ; $4499: $29
    rst $20                                       ; $449a: $e7
    rst $20                                       ; $449b: $e7
    rst $38                                       ; $449c: $ff
    cp $45                                        ; $449d: $fe $45
    ld b, d                                       ; $449f: $42
    ld b, [hl]                                    ; $44a0: $46
    nop                                           ; $44a1: $00
    inc a                                         ; $44a2: $3c
    nop                                           ; $44a3: $00
    ld b, e                                       ; $44a4: $43
    ld b, h                                       ; $44a5: $44
    nop                                           ; $44a6: $00
    ld b, a                                       ; $44a7: $47
    ld c, b                                       ; $44a8: $48
    nop                                           ; $44a9: $00
    ld a, [bc]                                    ; $44aa: $0a
    dec bc                                        ; $44ab: $0b
    inc c                                         ; $44ac: $0c
    ld d, $17                                     ; $44ad: $16 $17
    jr jr_04e_44bb                                ; $44af: $18 $0a

    ld hl, $2a18                                  ; $44b1: $21 $18 $2a
    dec hl                                        ; $44b4: $2b
    inc l                                         ; $44b5: $2c
    rlca                                          ; $44b6: $07
    ld [$1309], sp                                ; $44b7: $08 $09 $13
    inc d                                         ; $44ba: $14

jr_04e_44bb:
    dec d                                         ; $44bb: $15
    rra                                           ; $44bc: $1f
    jr nz, jr_04e_44d4                            ; $44bd: $20 $15

    jr z, jr_04e_44ea                             ; $44bf: $28 $29

    dec d                                         ; $44c1: $15
    inc sp                                        ; $44c2: $33
    inc [hl]                                      ; $44c3: $34

Call_04e_44c4:
    dec [hl]                                      ; $44c4: $35
    inc b                                         ; $44c5: $04
    dec b                                         ; $44c6: $05
    ld b, $10                                     ; $44c7: $06 $10
    ld de, $1c12                                  ; $44c9: $11 $12 $1c
    dec e                                         ; $44cc: $1d
    ld e, $25                                     ; $44cd: $1e $25
    ld h, $27                                     ; $44cf: $26 $27
    jr nc, jr_04e_4504                            ; $44d1: $30 $31

    ld [hl-], a                                   ; $44d3: $32

jr_04e_44d4:
    add hl, sp                                    ; $44d4: $39
    ld a, [hl-]                                   ; $44d5: $3a
    dec sp                                        ; $44d6: $3b
    ld bc, $0302                                  ; $44d7: $01 $02 $03
    dec c                                         ; $44da: $0d
    ld c, $0f                                     ; $44db: $0e $0f
    add hl, de                                    ; $44dd: $19
    ld a, [de]                                    ; $44de: $1a
    dec de                                        ; $44df: $1b
    ld [hl+], a                                   ; $44e0: $22
    inc hl                                        ; $44e1: $23
    inc h                                         ; $44e2: $24
    dec l                                         ; $44e3: $2d
    ld l, $2f                                     ; $44e4: $2e $2f
    ld [hl], $37                                  ; $44e6: $36 $37
    jr c, @+$41                                   ; $44e8: $38 $3f

jr_04e_44ea:
    ld b, b                                       ; $44ea: $40
    ld b, c                                       ; $44eb: $41
    ld bc, $0302                                  ; $44ec: $01 $02 $03
    dec c                                         ; $44ef: $0d
    ld c, $0f                                     ; $44f0: $0e $0f
    add hl, de                                    ; $44f2: $19
    ld a, [de]                                    ; $44f3: $1a
    dec de                                        ; $44f4: $1b
    ld [hl+], a                                   ; $44f5: $22
    inc hl                                        ; $44f6: $23
    inc h                                         ; $44f7: $24
    dec l                                         ; $44f8: $2d
    ld l, $2f                                     ; $44f9: $2e $2f
    ld [hl], $37                                  ; $44fb: $36 $37
    jr c, jr_04e_450c                             ; $44fd: $38 $0d

    dec a                                         ; $44ff: $3d
    ld a, $3f                                     ; $4500: $3e $3f
    ld b, b                                       ; $4502: $40
    ld b, c                                       ; $4503: $41

jr_04e_4504:
    nop                                           ; $4504: $00
    nop                                           ; $4505: $00
    nop                                           ; $4506: $00
    nop                                           ; $4507: $00
    nop                                           ; $4508: $00
    nop                                           ; $4509: $00
    nop                                           ; $450a: $00
    nop                                           ; $450b: $00

jr_04e_450c:
    nop                                           ; $450c: $00
    nop                                           ; $450d: $00
    nop                                           ; $450e: $00
    nop                                           ; $450f: $00
    nop                                           ; $4510: $00
    nop                                           ; $4511: $00
    nop                                           ; $4512: $00
    nop                                           ; $4513: $00
    nop                                           ; $4514: $00
    nop                                           ; $4515: $00
    nop                                           ; $4516: $00
    nop                                           ; $4517: $00
    ld bc, $0201                                  ; $4518: $01 $01 $02
    inc bc                                        ; $451b: $03
    ld [bc], a                                    ; $451c: $02
    inc bc                                        ; $451d: $03
    inc bc                                        ; $451e: $03
    inc bc                                        ; $451f: $03
    ld bc, $0201                                  ; $4520: $01 $01 $02
    inc bc                                        ; $4523: $03
    call z, $b3f3                                 ; $4524: $cc $f3 $b3
    call z, $ff00                                 ; $4527: $cc $00 $ff
    nop                                           ; $452a: $00
    rst $38                                       ; $452b: $ff
    inc b                                         ; $452c: $04
    rst $38                                       ; $452d: $ff
    or [hl]                                       ; $452e: $b6
    rst $38                                       ; $452f: $ff
    ld l, l                                       ; $4530: $6d
    rst $38                                       ; $4531: $ff
    nop                                           ; $4532: $00
    rst $38                                       ; $4533: $ff

jr_04e_4534:
    add b                                         ; $4534: $80
    add b                                         ; $4535: $80
    ld b, b                                       ; $4536: $40
    ret nz                                        ; $4537: $c0

    ld h, b                                       ; $4538: $60
    ldh [rNR10], a                                ; $4539: $e0 $10
    ldh a, [rNR10]                                ; $453b: $f0 $10
    ldh a, [$f0]                                  ; $453d: $f0 $f0
    ldh a, [$a0]                                  ; $453f: $f0 $a0
    ldh [rNR10], a                                ; $4541: $e0 $10
    ldh a, [$1f]                                  ; $4543: $f0 $1f
    rra                                           ; $4545: $1f
    ld a, $3f                                     ; $4546: $3e $3f
    ld a, b                                       ; $4548: $78
    ld a, a                                       ; $4549: $7f
    ld [hl], c                                    ; $454a: $71
    ld a, [hl]                                    ; $454b: $7e
    ld h, b                                       ; $454c: $60
    ld a, a                                       ; $454d: $7f
    ld [hl], b                                    ; $454e: $70
    ld a, a                                       ; $454f: $7f
    ld a, b                                       ; $4550: $78
    ld a, a                                       ; $4551: $7f
    ld a, $3f                                     ; $4552: $3e $3f
    ret nz                                        ; $4554: $c0

    rst $38                                       ; $4555: $ff
    ld e, $e1                                     ; $4556: $1e $e1
    rst $38                                       ; $4558: $ff
    nop                                           ; $4559: $00
    rst $38                                       ; $455a: $ff
    nop                                           ; $455b: $00
    ld a, a                                       ; $455c: $7f
    add b                                         ; $455d: $80
    rra                                           ; $455e: $1f
    ldh [rTAC], a                                 ; $455f: $e0 $07
    ld hl, sp+$01                                 ; $4561: $f8 $01
    cp $3c                                        ; $4563: $fe $3c
    jp $817e                                      ; $4565: $c3 $7e $81


    rst $38                                       ; $4568: $ff
    nop                                           ; $4569: $00
    rst $38                                       ; $456a: $ff
    nop                                           ; $456b: $00
    rst $38                                       ; $456c: $ff
    nop                                           ; $456d: $00
    rst $20                                       ; $456e: $e7
    jr jr_04e_4534                                ; $456f: $18 $c3

    inc a                                         ; $4571: $3c
    add c                                         ; $4572: $81
    ld a, [hl]                                    ; $4573: $7e
    ld bc, $78ff                                  ; $4574: $01 $ff $78
    add a                                         ; $4577: $87
    cp $01                                        ; $4578: $fe $01
    rst $38                                       ; $457a: $ff
    nop                                           ; $457b: $00
    rst $38                                       ; $457c: $ff
    nop                                           ; $457d: $00
    db $fc                                        ; $457e: $fc
    inc bc                                        ; $457f: $03
    ldh [$1f], a                                  ; $4580: $e0 $1f
    add b                                         ; $4582: $80
    ld a, a                                       ; $4583: $7f
    ld hl, sp-$08                                 ; $4584: $f8 $f8
    ld a, h                                       ; $4586: $7c
    db $fc                                        ; $4587: $fc
    ld e, $fe                                     ; $4588: $1e $fe
    adc a                                         ; $458a: $8f
    ld a, a                                       ; $458b: $7f
    rst $00                                       ; $458c: $c7
    ccf                                           ; $458d: $3f
    rrca                                          ; $458e: $0f
    rst $38                                       ; $458f: $ff
    ld e, $fe                                     ; $4590: $1e $fe
    ld a, h                                       ; $4592: $7c
    db $fc                                        ; $4593: $fc
    ld b, $07                                     ; $4594: $06 $07
    inc b                                         ; $4596: $04
    rlca                                          ; $4597: $07
    dec c                                         ; $4598: $0d
    ld c, $0b                                     ; $4599: $0e $0b
    inc c                                         ; $459b: $0c
    ld d, $19                                     ; $459c: $16 $19
    jr jr_04e_45bf                                ; $459e: $18 $1f

    add hl, bc                                    ; $45a0: $09
    rrca                                          ; $45a1: $0f
    ld b, $07                                     ; $45a2: $06 $07
    nop                                           ; $45a4: $00
    rst $38                                       ; $45a5: $ff
    ld [$1cf7], sp                                ; $45a6: $08 $f7 $1c
    db $e3                                        ; $45a9: $e3
    or [hl]                                       ; $45aa: $b6
    ld c, c                                       ; $45ab: $49
    db $e3                                        ; $45ac: $e3
    inc e                                         ; $45ad: $1c

jr_04e_45ae:
    nop                                           ; $45ae: $00
    rst $38                                       ; $45af: $ff
    ld hl, $dbff                                  ; $45b0: $21 $ff $db
    rst $38                                       ; $45b3: $ff
    jr jr_04e_45ae                                ; $45b4: $18 $f8

    ld [$48f8], sp                                ; $45b6: $08 $f8 $48
    cp b                                          ; $45b9: $b8

jr_04e_45ba:
    db $e4                                        ; $45ba: $e4
    inc e                                         ; $45bb: $1c
    or h                                          ; $45bc: $b4
    ld c, h                                       ; $45bd: $4c
    inc c                                         ; $45be: $0c

jr_04e_45bf:
    db $fc                                        ; $45bf: $fc
    jr jr_04e_45ba                                ; $45c0: $18 $f8

    ret c                                         ; $45c2: $d8

    ld hl, sp+$1e                                 ; $45c3: $f8 $1e
    rra                                           ; $45c5: $1f
    inc c                                         ; $45c6: $0c
    rrca                                          ; $45c7: $0f
    inc e                                         ; $45c8: $1c
    rra                                           ; $45c9: $1f
    jr jr_04e_45eb                                ; $45ca: $18 $1f

    jr c, @+$41                                   ; $45cc: $38 $3f

    jr nc, @+$41                                  ; $45ce: $30 $3f

    ld sp, $3f3f                                  ; $45d0: $31 $3f $3f
    ccf                                           ; $45d3: $3f
    nop                                           ; $45d4: $00
    rst $38                                       ; $45d5: $ff
    nop                                           ; $45d6: $00
    rst $38                                       ; $45d7: $ff
    nop                                           ; $45d8: $00
    rst $38                                       ; $45d9: $ff
    nop                                           ; $45da: $00
    rst $38                                       ; $45db: $ff
    nop                                           ; $45dc: $00
    rst $38                                       ; $45dd: $ff
    ld h, b                                       ; $45de: $60
    rst $38                                       ; $45df: $ff
    ldh [rIE], a                                  ; $45e0: $e0 $ff
    ret nz                                        ; $45e2: $c0

    rst $38                                       ; $45e3: $ff
    nop                                           ; $45e4: $00
    rst $38                                       ; $45e5: $ff
    nop                                           ; $45e6: $00
    rst $38                                       ; $45e7: $ff
    nop                                           ; $45e8: $00
    rst $38                                       ; $45e9: $ff
    nop                                           ; $45ea: $00

jr_04e_45eb:
    rst $38                                       ; $45eb: $ff
    nop                                           ; $45ec: $00
    rst $38                                       ; $45ed: $ff
    nop                                           ; $45ee: $00
    rst $38                                       ; $45ef: $ff
    nop                                           ; $45f0: $00
    rst $38                                       ; $45f1: $ff
    nop                                           ; $45f2: $00
    rst $38                                       ; $45f3: $ff
    ld hl, sp-$08                                 ; $45f4: $f8 $f8
    ld [hl], b                                    ; $45f6: $70
    ldh a, [$38]                                  ; $45f7: $f0 $38
    ld hl, sp+$1c                                 ; $45f9: $f8 $1c
    db $fc                                        ; $45fb: $fc
    ld c, $fe                                     ; $45fc: $0e $fe
    rlca                                          ; $45fe: $07
    rst $38                                       ; $45ff: $ff
    inc bc                                        ; $4600: $03
    rst $38                                       ; $4601: $ff
    rst $00                                       ; $4602: $c7
    rst $38                                       ; $4603: $ff
    dec c                                         ; $4604: $0d
    rrca                                          ; $4605: $0f
    jr jr_04e_4627                                ; $4606: $18 $1f

    db $10                                        ; $4608: $10
    rra                                           ; $4609: $1f
    jr nz, jr_04e_464b                            ; $460a: $20 $3f

    jr c, jr_04e_464d                             ; $460c: $38 $3f

    ld de, $231e                                  ; $460e: $11 $1e $23
    inc a                                         ; $4611: $3c
    halt                                          ; $4612: $76
    ld l, c                                       ; $4613: $69
    xor [hl]                                      ; $4614: $ae
    rst $38                                       ; $4615: $ff
    inc b                                         ; $4616: $04
    rst $38                                       ; $4617: $ff
    nop                                           ; $4618: $00
    rst $38                                       ; $4619: $ff
    nop                                           ; $461a: $00
    rst $38                                       ; $461b: $ff
    nop                                           ; $461c: $00
    rst $38                                       ; $461d: $ff
    ld [$9cf7], sp                                ; $461e: $08 $f7 $9c
    ld h, e                                       ; $4621: $63
    rst $30                                       ; $4622: $f7
    ld [$f868], sp                                ; $4623: $08 $68 $f8
    inc b                                         ; $4626: $04

jr_04e_4627:
    db $fc                                        ; $4627: $fc
    ld b, $fe                                     ; $4628: $06 $fe
    ld [bc], a                                    ; $462a: $02
    cp $06                                        ; $462b: $fe $06
    cp $42                                        ; $462d: $fe $42
    cp [hl]                                       ; $462f: $be
    pop hl                                        ; $4630: $e1
    rra                                           ; $4631: $1f
    or a                                          ; $4632: $b7
    ld c, c                                       ; $4633: $49
    rra                                           ; $4634: $1f
    rra                                           ; $4635: $1f
    rrca                                          ; $4636: $0f
    rrca                                          ; $4637: $0f
    inc bc                                        ; $4638: $03
    inc bc                                        ; $4639: $03
    inc bc                                        ; $463a: $03
    inc bc                                        ; $463b: $03
    inc bc                                        ; $463c: $03
    inc bc                                        ; $463d: $03
    ld bc, $0001                                  ; $463e: $01 $01 $00
    nop                                           ; $4641: $00
    ld bc, $c301                                  ; $4642: $01 $01 $c3
    rst $38                                       ; $4645: $ff
    add a                                         ; $4646: $87
    rst $38                                       ; $4647: $ff
    rrca                                          ; $4648: $0f
    rst $38                                       ; $4649: $ff
    sbc a                                         ; $464a: $9f

jr_04e_464b:
    rst $38                                       ; $464b: $ff
    rst $38                                       ; $464c: $ff

jr_04e_464d:
    rst $38                                       ; $464d: $ff
    rst $38                                       ; $464e: $ff
    rst $38                                       ; $464f: $ff
    di                                            ; $4650: $f3
    rst $38                                       ; $4651: $ff
    pop hl                                        ; $4652: $e1
    rst $38                                       ; $4653: $ff
    nop                                           ; $4654: $00
    rst $38                                       ; $4655: $ff
    add e                                         ; $4656: $83
    rst $38                                       ; $4657: $ff
    add a                                         ; $4658: $87
    rst $38                                       ; $4659: $ff
    ld c, $ff                                     ; $465a: $0e $ff
    ld e, $ff                                     ; $465c: $1e $ff
    ccf                                           ; $465e: $3f
    rst $38                                       ; $465f: $ff
    ei                                            ; $4660: $fb
    rst $38                                       ; $4661: $ff
    pop hl                                        ; $4662: $e1
    rst $38                                       ; $4663: $ff
    nop                                           ; $4664: $00
    rst $38                                       ; $4665: $ff
    ld [$18ff], sp                                ; $4666: $08 $ff $18
    rst $38                                       ; $4669: $ff
    jr c, @+$01                                   ; $466a: $38 $ff

    ld a, h                                       ; $466c: $7c
    rst $38                                       ; $466d: $ff
    cp $ff                                        ; $466e: $fe $ff
    rst $28                                       ; $4670: $ef
    rst $38                                       ; $4671: $ff
    rst $00                                       ; $4672: $c7
    rst $38                                       ; $4673: $ff
    jr @+$01                                      ; $4674: $18 $ff

    jr @+$01                                      ; $4676: $18 $ff

    inc a                                         ; $4678: $3c
    rst $38                                       ; $4679: $ff
    inc a                                         ; $467a: $3c
    rst $38                                       ; $467b: $ff
    ld a, [hl]                                    ; $467c: $7e
    rst $38                                       ; $467d: $ff
    cp $ff                                        ; $467e: $fe $ff
    rst $20                                       ; $4680: $e7
    rst $38                                       ; $4681: $ff
    jp Jump_000_00ff                              ; $4682: $c3 $ff $00


    rst $38                                       ; $4685: $ff
    db $10                                        ; $4686: $10
    rst $38                                       ; $4687: $ff
    jr @+$01                                      ; $4688: $18 $ff

    jr c, @+$01                                   ; $468a: $38 $ff

    inc a                                         ; $468c: $3c
    rst $38                                       ; $468d: $ff
    ld a, a                                       ; $468e: $7f
    rst $38                                       ; $468f: $ff
    rst $38                                       ; $4690: $ff
    rst $38                                       ; $4691: $ff
    rst $20                                       ; $4692: $e7
    rst $38                                       ; $4693: $ff
    ld bc, $c1ff                                  ; $4694: $01 $ff $c1
    rst $38                                       ; $4697: $ff
    pop hl                                        ; $4698: $e1
    rst $38                                       ; $4699: $ff
    ldh a, [rIE]                                  ; $469a: $f0 $ff
    ld hl, sp-$01                                 ; $469c: $f8 $ff
    db $fc                                        ; $469e: $fc
    rst $38                                       ; $469f: $ff
    rst $18                                       ; $46a0: $df
    rst $38                                       ; $46a1: $ff
    adc a                                         ; $46a2: $8f
    rst $38                                       ; $46a3: $ff
    add c                                         ; $46a4: $81
    rst $38                                       ; $46a5: $ff
    pop bc                                        ; $46a6: $c1
    rst $38                                       ; $46a7: $ff
    ldh [rIE], a                                  ; $46a8: $e0 $ff
    ldh a, [rIE]                                  ; $46aa: $f0 $ff
    ld sp, hl                                     ; $46ac: $f9
    rst $38                                       ; $46ad: $ff
    rst $38                                       ; $46ae: $ff
    rst $38                                       ; $46af: $ff
    rst $28                                       ; $46b0: $ef
    rst $38                                       ; $46b1: $ff
    rst $00                                       ; $46b2: $c7
    rst $38                                       ; $46b3: $ff
    cp $fe                                        ; $46b4: $fe $fe
    ld hl, sp-$08                                 ; $46b6: $f8 $f8
    ret nz                                        ; $46b8: $c0

    ret nz                                        ; $46b9: $c0

    ret nz                                        ; $46ba: $c0

    ret nz                                        ; $46bb: $c0

    ret nz                                        ; $46bc: $c0

    ret nz                                        ; $46bd: $c0

    add b                                         ; $46be: $80
    add b                                         ; $46bf: $80
    nop                                           ; $46c0: $00
    nop                                           ; $46c1: $00
    nop                                           ; $46c2: $00
    nop                                           ; $46c3: $00
    cp h                                          ; $46c4: $bc
    jp $ffc0                                      ; $46c5: $c3 $c0 $ff


    inc h                                         ; $46c8: $24
    ccf                                           ; $46c9: $3f
    ld a, [hl]                                    ; $46ca: $7e
    ld a, a                                       ; $46cb: $7f
    ld [hl], l                                    ; $46cc: $75
    ld a, a                                       ; $46cd: $7f
    ld a, [hl+]                                   ; $46ce: $2a
    ccf                                           ; $46cf: $3f
    ld h, b                                       ; $46d0: $60
    ld a, a                                       ; $46d1: $7f
    ld b, b                                       ; $46d2: $40
    ld a, a                                       ; $46d3: $7f
    ld h, e                                       ; $46d4: $63
    sbc h                                         ; $46d5: $9c
    nop                                           ; $46d6: $00
    rst $38                                       ; $46d7: $ff
    nop                                           ; $46d8: $00
    rst $38                                       ; $46d9: $ff
    sbc d                                         ; $46da: $9a
    rst $38                                       ; $46db: $ff
    rst $38                                       ; $46dc: $ff
    rst $38                                       ; $46dd: $ff
    ld h, [hl]                                    ; $46de: $66
    rst $38                                       ; $46df: $ff
    nop                                           ; $46e0: $00
    rst $38                                       ; $46e1: $ff
    nop                                           ; $46e2: $00
    rst $38                                       ; $46e3: $ff
    rra                                           ; $46e4: $1f
    db $e3                                        ; $46e5: $e3
    ld [bc], a                                    ; $46e6: $02
    cp $09                                        ; $46e7: $fe $09
    rst $38                                       ; $46e9: $ff
    ld c, c                                       ; $46ea: $49
    rst $38                                       ; $46eb: $ff
    xor [hl]                                      ; $46ec: $ae
    cp $db                                        ; $46ed: $fe $db
    rst $38                                       ; $46ef: $ff
    ld bc, $01ff                                  ; $46f0: $01 $ff $01
    rst $38                                       ; $46f3: $ff
    nop                                           ; $46f4: $00
    nop                                           ; $46f5: $00
    nop                                           ; $46f6: $00
    nop                                           ; $46f7: $00
    nop                                           ; $46f8: $00
    nop                                           ; $46f9: $00
    nop                                           ; $46fa: $00
    nop                                           ; $46fb: $00
    nop                                           ; $46fc: $00
    nop                                           ; $46fd: $00
    nop                                           ; $46fe: $00
    nop                                           ; $46ff: $00
    nop                                           ; $4700: $00
    nop                                           ; $4701: $00
    ld bc, $0701                                  ; $4702: $01 $01 $07
    rlca                                          ; $4705: $07
    rra                                           ; $4706: $1f
    rra                                           ; $4707: $1f
    ld a, $3f                                     ; $4708: $3e $3f
    ld a, b                                       ; $470a: $78
    ld a, a                                       ; $470b: $7f
    ld [hl], b                                    ; $470c: $70
    ld a, a                                       ; $470d: $7f
    ldh [rIE], a                                  ; $470e: $e0 $ff
    ldh [rIE], a                                  ; $4710: $e0 $ff
    ret nz                                        ; $4712: $c0

    rst $38                                       ; $4713: $ff
    ret nz                                        ; $4714: $c0

    rst $38                                       ; $4715: $ff
    add b                                         ; $4716: $80
    rst $38                                       ; $4717: $ff
    nop                                           ; $4718: $00
    rst $38                                       ; $4719: $ff
    nop                                           ; $471a: $00
    rst $38                                       ; $471b: $ff
    nop                                           ; $471c: $00
    rst $38                                       ; $471d: $ff
    nop                                           ; $471e: $00
    rst $38                                       ; $471f: $ff
    nop                                           ; $4720: $00
    rst $38                                       ; $4721: $ff
    nop                                           ; $4722: $00
    rst $38                                       ; $4723: $ff
    inc bc                                        ; $4724: $03
    rst $38                                       ; $4725: $ff
    nop                                           ; $4726: $00
    rst $38                                       ; $4727: $ff
    nop                                           ; $4728: $00
    rst $38                                       ; $4729: $ff
    nop                                           ; $472a: $00
    rst $38                                       ; $472b: $ff
    nop                                           ; $472c: $00
    rst $38                                       ; $472d: $ff
    nop                                           ; $472e: $00
    rst $38                                       ; $472f: $ff
    nop                                           ; $4730: $00
    rst $38                                       ; $4731: $ff
    nop                                           ; $4732: $00
    rst $38                                       ; $4733: $ff
    add c                                         ; $4734: $81
    rst $38                                       ; $4735: $ff
    nop                                           ; $4736: $00
    rst $38                                       ; $4737: $ff
    nop                                           ; $4738: $00
    rst $38                                       ; $4739: $ff
    nop                                           ; $473a: $00
    rst $38                                       ; $473b: $ff
    nop                                           ; $473c: $00
    rst $38                                       ; $473d: $ff
    nop                                           ; $473e: $00
    rst $38                                       ; $473f: $ff
    nop                                           ; $4740: $00
    rst $38                                       ; $4741: $ff
    nop                                           ; $4742: $00
    rst $38                                       ; $4743: $ff
    ret nz                                        ; $4744: $c0

    rst $38                                       ; $4745: $ff
    nop                                           ; $4746: $00
    rst $38                                       ; $4747: $ff
    nop                                           ; $4748: $00
    rst $38                                       ; $4749: $ff
    nop                                           ; $474a: $00
    rst $38                                       ; $474b: $ff
    nop                                           ; $474c: $00
    rst $38                                       ; $474d: $ff
    nop                                           ; $474e: $00
    rst $38                                       ; $474f: $ff
    nop                                           ; $4750: $00
    rst $38                                       ; $4751: $ff
    nop                                           ; $4752: $00
    rst $38                                       ; $4753: $ff
    inc bc                                        ; $4754: $03
    rst $38                                       ; $4755: $ff
    inc bc                                        ; $4756: $03
    rst $38                                       ; $4757: $ff
    ld bc, $00ff                                  ; $4758: $01 $ff $00
    rst $38                                       ; $475b: $ff
    nop                                           ; $475c: $00
    rst $38                                       ; $475d: $ff
    nop                                           ; $475e: $00
    rst $38                                       ; $475f: $ff
    nop                                           ; $4760: $00
    rst $38                                       ; $4761: $ff
    nop                                           ; $4762: $00
    rst $38                                       ; $4763: $ff
    add b                                         ; $4764: $80
    add b                                         ; $4765: $80
    ldh [$e0], a                                  ; $4766: $e0 $e0
    ld hl, sp-$08                                 ; $4768: $f8 $f8
    ld a, h                                       ; $476a: $7c
    db $fc                                        ; $476b: $fc
    ld e, $fe                                     ; $476c: $1e $fe
    ld c, $fe                                     ; $476e: $0e $fe
    rlca                                          ; $4770: $07
    rst $38                                       ; $4771: $ff
    inc bc                                        ; $4772: $03
    rst $38                                       ; $4773: $ff
    nop                                           ; $4774: $00
    nop                                           ; $4775: $00
    nop                                           ; $4776: $00
    nop                                           ; $4777: $00
    nop                                           ; $4778: $00
    nop                                           ; $4779: $00
    nop                                           ; $477a: $00
    nop                                           ; $477b: $00
    nop                                           ; $477c: $00
    nop                                           ; $477d: $00
    nop                                           ; $477e: $00
    nop                                           ; $477f: $00
    nop                                           ; $4780: $00
    nop                                           ; $4781: $00
    add b                                         ; $4782: $80
    add b                                         ; $4783: $80
    nop                                           ; $4784: $00
    nop                                           ; $4785: $00
    ld bc, $0101                                  ; $4786: $01 $01 $01
    ld bc, $0101                                  ; $4789: $01 $01 $01
    nop                                           ; $478c: $00
    nop                                           ; $478d: $00
    inc bc                                        ; $478e: $03
    inc bc                                        ; $478f: $03
    ld [bc], a                                    ; $4790: $02
    inc bc                                        ; $4791: $03
    inc bc                                        ; $4792: $03
    inc bc                                        ; $4793: $03
    ret nz                                        ; $4794: $c0

    rst $38                                       ; $4795: $ff
    add b                                         ; $4796: $80
    rst $38                                       ; $4797: $ff
    nop                                           ; $4798: $00
    rst $38                                       ; $4799: $ff
    add b                                         ; $479a: $80
    rst $38                                       ; $479b: $ff
    pop hl                                        ; $479c: $e1
    cp $a3                                        ; $479d: $fe $a3
    call c, $8976                                 ; $479f: $dc $76 $89
    inc e                                         ; $47a2: $1c
    db $e3                                        ; $47a3: $e3
    nop                                           ; $47a4: $00
    rst $38                                       ; $47a5: $ff
    nop                                           ; $47a6: $00
    rst $38                                       ; $47a7: $ff
    nop                                           ; $47a8: $00
    rst $38                                       ; $47a9: $ff
    nop                                           ; $47aa: $00
    rst $38                                       ; $47ab: $ff
    ld [$9cf7], sp                                ; $47ac: $08 $f7 $9c
    ld h, e                                       ; $47af: $63
    rst $30                                       ; $47b0: $f7
    ld [$9c63], sp                                ; $47b1: $08 $63 $9c
    inc bc                                        ; $47b4: $03
    rst $38                                       ; $47b5: $ff
    ld bc, $00ff                                  ; $47b6: $01 $ff $00
    rst $38                                       ; $47b9: $ff
    nop                                           ; $47ba: $00
    rst $38                                       ; $47bb: $ff
    ld b, c                                       ; $47bc: $41
    cp a                                          ; $47bd: $bf
    ld [c], a                                     ; $47be: $e2
    dec e                                         ; $47bf: $1d
    or a                                          ; $47c0: $b7
    ld c, b                                       ; $47c1: $48
    inc e                                         ; $47c2: $1c
    db $e3                                        ; $47c3: $e3

jr_04e_47c4:
    add b                                         ; $47c4: $80
    add b                                         ; $47c5: $80
    add b                                         ; $47c6: $80
    add b                                         ; $47c7: $80
    ld b, b                                       ; $47c8: $40
    ret nz                                        ; $47c9: $c0

    ld b, b                                       ; $47ca: $40
    ret nz                                        ; $47cb: $c0

    ret nz                                        ; $47cc: $c0

    ret nz                                        ; $47cd: $c0

    ld [hl], b                                    ; $47ce: $70
    ldh a, [$90]                                  ; $47cf: $f0 $90
    ld [hl], b                                    ; $47d1: $70
    jr nc, jr_04e_47c4                            ; $47d2: $30 $f0

    inc bc                                        ; $47d4: $03
    inc bc                                        ; $47d5: $03
    inc bc                                        ; $47d6: $03
    inc bc                                        ; $47d7: $03
    rlca                                          ; $47d8: $07
    rlca                                          ; $47d9: $07
    ld c, $0f                                     ; $47da: $0e $0f
    ld c, $0f                                     ; $47dc: $0e $0f
    rrca                                          ; $47de: $0f
    rrca                                          ; $47df: $0f
    rlca                                          ; $47e0: $07
    rlca                                          ; $47e1: $07
    inc bc                                        ; $47e2: $03
    inc bc                                        ; $47e3: $03
    add b                                         ; $47e4: $80
    rst $38                                       ; $47e5: $ff
    add b                                         ; $47e6: $80
    rst $38                                       ; $47e7: $ff
    nop                                           ; $47e8: $00
    rst $38                                       ; $47e9: $ff
    nop                                           ; $47ea: $00
    rst $38                                       ; $47eb: $ff
    nop                                           ; $47ec: $00
    rst $38                                       ; $47ed: $ff
    nop                                           ; $47ee: $00
    rst $38                                       ; $47ef: $ff
    add b                                         ; $47f0: $80
    rst $38                                       ; $47f1: $ff
    ret nz                                        ; $47f2: $c0

    rst $38                                       ; $47f3: $ff
    inc bc                                        ; $47f4: $03
    rst $38                                       ; $47f5: $ff
    ld bc, $00ff                                  ; $47f6: $01 $ff $00
    rst $38                                       ; $47f9: $ff
    nop                                           ; $47fa: $00
    rst $38                                       ; $47fb: $ff
    nop                                           ; $47fc: $00
    rst $38                                       ; $47fd: $ff
    nop                                           ; $47fe: $00
    rst $38                                       ; $47ff: $ff
    ld bc, $03ff                                  ; $4800: $01 $ff $03
    rst $38                                       ; $4803: $ff
    ret nz                                        ; $4804: $c0

    ret nz                                        ; $4805: $c0

    ldh [$e0], a                                  ; $4806: $e0 $e0
    ldh [$e0], a                                  ; $4808: $e0 $e0
    ld h, b                                       ; $480a: $60
    ldh [$60], a                                  ; $480b: $e0 $60
    ldh [$e0], a                                  ; $480d: $e0 $e0
    ldh [$c0], a                                  ; $480f: $e0 $c0
    ret nz                                        ; $4811: $c0

    add b                                         ; $4812: $80
    add b                                         ; $4813: $80
    ld bc, $0301                                  ; $4814: $01 $01 $03
    inc bc                                        ; $4817: $03
    ld [bc], a                                    ; $4818: $02
    inc bc                                        ; $4819: $03
    inc bc                                        ; $481a: $03
    inc bc                                        ; $481b: $03
    ld bc, $0001                                  ; $481c: $01 $01 $00
    nop                                           ; $481f: $00
    ld bc, $0101                                  ; $4820: $01 $01 $01
    ld bc, $ff80                                  ; $4823: $01 $80 $ff
    nop                                           ; $4826: $00
    rst $38                                       ; $4827: $ff
    ld h, b                                       ; $4828: $60
    rst $38                                       ; $4829: $ff
    reti                                          ; $482a: $d9


    rst $38                                       ; $482b: $ff
    sbc c                                         ; $482c: $99
    rst $38                                       ; $482d: $ff
    rst $30                                       ; $482e: $f7
    rst $38                                       ; $482f: $ff
    xor h                                         ; $4830: $ac
    rst $38                                       ; $4831: $ff
    nop                                           ; $4832: $00
    rst $38                                       ; $4833: $ff
    nop                                           ; $4834: $00
    rst $38                                       ; $4835: $ff
    nop                                           ; $4836: $00
    rst $38                                       ; $4837: $ff
    nop                                           ; $4838: $00
    rst $38                                       ; $4839: $ff
    ld [$4cff], sp                                ; $483a: $08 $ff $4c
    rst $38                                       ; $483d: $ff
    sbc $ff                                       ; $483e: $de $ff
    inc sp                                        ; $4840: $33
    rst $38                                       ; $4841: $ff
    nop                                           ; $4842: $00
    rst $38                                       ; $4843: $ff
    nop                                           ; $4844: $00
    rst $38                                       ; $4845: $ff
    nop                                           ; $4846: $00
    rst $38                                       ; $4847: $ff
    ld bc, $20ff                                  ; $4848: $01 $ff $20
    rst $38                                       ; $484b: $ff
    and [hl]                                      ; $484c: $a6
    rst $38                                       ; $484d: $ff
    ei                                            ; $484e: $fb
    rst $38                                       ; $484f: $ff
    ld l, l                                       ; $4850: $6d
    rst $38                                       ; $4851: $ff
    nop                                           ; $4852: $00
    rst $38                                       ; $4853: $ff
    ld h, b                                       ; $4854: $60
    ldh [$30], a                                  ; $4855: $e0 $30
    ldh a, [$90]                                  ; $4857: $f0 $90
    ldh a, [$f0]                                  ; $4859: $f0 $f0
    ldh a, [$60]                                  ; $485b: $f0 $60
    ldh [$80], a                                  ; $485d: $e0 $80
    add b                                         ; $485f: $80
    add b                                         ; $4860: $80
    add b                                         ; $4861: $80
    ret nz                                        ; $4862: $c0

    ret nz                                        ; $4863: $c0

    ld bc, $0101                                  ; $4864: $01 $01 $01
    ld bc, $0303                                  ; $4867: $01 $03 $03
    rrca                                          ; $486a: $0f
    rrca                                          ; $486b: $0f
    ld e, $1f                                     ; $486c: $1e $1f
    inc a                                         ; $486e: $3c
    ccf                                           ; $486f: $3f
    jr c, jr_04e_48b1                             ; $4870: $38 $3f

    jr nc, jr_04e_48b3                            ; $4872: $30 $3f

    ldh [rIE], a                                  ; $4874: $e0 $ff
    ld [c], a                                     ; $4876: $e2
    db $fd                                        ; $4877: $fd
    rst $00                                       ; $4878: $c7
    ld hl, sp-$71                                 ; $4879: $f8 $8f
    ldh a, [$1f]                                  ; $487b: $f0 $1f
    ldh [$3f], a                                  ; $487d: $e0 $3f
    ret nz                                        ; $487f: $c0

    ld a, a                                       ; $4880: $7f
    add b                                         ; $4881: $80
    db $e3                                        ; $4882: $e3
    inc e                                         ; $4883: $1c
    jr @-$17                                      ; $4884: $18 $e7

    inc a                                         ; $4886: $3c
    jp $817e                                      ; $4887: $c3 $7e $81


    rst $38                                       ; $488a: $ff
    nop                                           ; $488b: $00
    rst $38                                       ; $488c: $ff
    nop                                           ; $488d: $00
    rst $38                                       ; $488e: $ff
    nop                                           ; $488f: $00
    rst $38                                       ; $4890: $ff
    nop                                           ; $4891: $00
    rst $20                                       ; $4892: $e7
    jr jr_04e_4898                                ; $4893: $18 $03

    rst $38                                       ; $4895: $ff
    ld b, e                                       ; $4896: $43
    cp a                                          ; $4897: $bf

jr_04e_4898:
    pop hl                                        ; $4898: $e1
    rra                                           ; $4899: $1f
    ldh a, [rIF]                                  ; $489a: $f0 $0f
    ld hl, sp+$07                                 ; $489c: $f8 $07
    db $fc                                        ; $489e: $fc
    inc bc                                        ; $489f: $03
    cp $01                                        ; $48a0: $fe $01
    rst $00                                       ; $48a2: $c7
    jr c, jr_04e_48a5                             ; $48a3: $38 $00

jr_04e_48a5:
    nop                                           ; $48a5: $00
    add b                                         ; $48a6: $80
    add b                                         ; $48a7: $80
    ret nz                                        ; $48a8: $c0

    ret nz                                        ; $48a9: $c0

    ldh [$e0], a                                  ; $48aa: $e0 $e0
    ld [hl], b                                    ; $48ac: $70
    ldh a, [$38]                                  ; $48ad: $f0 $38
    ld hl, sp+$38                                 ; $48af: $f8 $38

jr_04e_48b1:
    ld hl, sp+$1c                                 ; $48b1: $f8 $1c

jr_04e_48b3:
    db $fc                                        ; $48b3: $fc
    inc bc                                        ; $48b4: $03
    inc bc                                        ; $48b5: $03
    ld [bc], a                                    ; $48b6: $02
    inc bc                                        ; $48b7: $03
    ld b, $07                                     ; $48b8: $06 $07
    inc c                                         ; $48ba: $0c
    rrca                                          ; $48bb: $0f
    inc c                                         ; $48bc: $0c
    rrca                                          ; $48bd: $0f
    ld b, $07                                     ; $48be: $06 $07

Call_04e_48c0:
    ld b, $07                                     ; $48c0: $06 $07
    ld c, $0d                                     ; $48c2: $0e $0d
    add b                                         ; $48c4: $80
    rst $38                                       ; $48c5: $ff
    nop                                           ; $48c6: $00
    rst $38                                       ; $48c7: $ff
    nop                                           ; $48c8: $00
    rst $38                                       ; $48c9: $ff
    nop                                           ; $48ca: $00
    rst $38                                       ; $48cb: $ff
    nop                                           ; $48cc: $00
    rst $38                                       ; $48cd: $ff
    nop                                           ; $48ce: $00
    rst $38                                       ; $48cf: $ff
    ld hl, $73de                                  ; $48d0: $21 $de $73
    adc h                                         ; $48d3: $8c
    nop                                           ; $48d4: $00
    rst $38                                       ; $48d5: $ff
    nop                                           ; $48d6: $00
    rst $38                                       ; $48d7: $ff
    nop                                           ; $48d8: $00
    rst $38                                       ; $48d9: $ff
    nop                                           ; $48da: $00
    rst $38                                       ; $48db: $ff
    nop                                           ; $48dc: $00
    rst $38                                       ; $48dd: $ff
    nop                                           ; $48de: $00
    rst $38                                       ; $48df: $ff
    ld [$9cf7], sp                                ; $48e0: $08 $f7 $9c
    ld h, e                                       ; $48e3: $63
    nop                                           ; $48e4: $00
    rst $38                                       ; $48e5: $ff
    nop                                           ; $48e6: $00
    rst $38                                       ; $48e7: $ff
    nop                                           ; $48e8: $00
    rst $38                                       ; $48e9: $ff
    nop                                           ; $48ea: $00
    rst $38                                       ; $48eb: $ff
    nop                                           ; $48ec: $00
    rst $38                                       ; $48ed: $ff
    nop                                           ; $48ee: $00
    rst $38                                       ; $48ef: $ff
    ld b, d                                       ; $48f0: $42
    cp l                                          ; $48f1: $bd
    rst $20                                       ; $48f2: $e7
    jr jr_04e_4955                                ; $48f3: $18 $60

    ldh [$30], a                                  ; $48f5: $e0 $30
    ldh a, [rNR10]                                ; $48f7: $f0 $10
    ldh a, [rNR23]                                ; $48f9: $f0 $18
    ld hl, sp+$08                                 ; $48fb: $f8 $08
    ld hl, sp+$38                                 ; $48fd: $f8 $38
    ld hl, sp+$10                                 ; $48ff: $f8 $10
    ldh a, [$38]                                  ; $4901: $f0 $38
    ret c                                         ; $4903: $d8

    jr nc, jr_04e_4945                            ; $4904: $30 $3f

    jr c, jr_04e_4947                             ; $4906: $38 $3f

    inc e                                         ; $4908: $1c
    rra                                           ; $4909: $1f
    ld c, $0f                                     ; $490a: $0e $0f
    ld e, $1f                                     ; $490c: $1e $1f
    inc e                                         ; $490e: $1c
    rra                                           ; $490f: $1f
    jr c, @+$41                                   ; $4910: $38 $3f

    jr c, jr_04e_4953                             ; $4912: $38 $3f

    ld bc, $00fe                                  ; $4914: $01 $fe $00
    rst $38                                       ; $4917: $ff
    nop                                           ; $4918: $00
    rst $38                                       ; $4919: $ff
    nop                                           ; $491a: $00
    rst $38                                       ; $491b: $ff
    nop                                           ; $491c: $00
    rst $38                                       ; $491d: $ff
    nop                                           ; $491e: $00
    rst $38                                       ; $491f: $ff
    nop                                           ; $4920: $00
    rst $38                                       ; $4921: $ff
    nop                                           ; $4922: $00
    rst $38                                       ; $4923: $ff
    jp $813c                                      ; $4924: $c3 $3c $81


    ld a, [hl]                                    ; $4927: $7e
    nop                                           ; $4928: $00
    rst $38                                       ; $4929: $ff
    nop                                           ; $492a: $00
    rst $38                                       ; $492b: $ff
    nop                                           ; $492c: $00
    rst $38                                       ; $492d: $ff
    nop                                           ; $492e: $00
    rst $38                                       ; $492f: $ff
    nop                                           ; $4930: $00
    rst $38                                       ; $4931: $ff
    nop                                           ; $4932: $00
    rst $38                                       ; $4933: $ff
    add b                                         ; $4934: $80
    ld a, a                                       ; $4935: $7f
    nop                                           ; $4936: $00
    rst $38                                       ; $4937: $ff
    nop                                           ; $4938: $00
    rst $38                                       ; $4939: $ff
    nop                                           ; $493a: $00
    rst $38                                       ; $493b: $ff
    nop                                           ; $493c: $00
    rst $38                                       ; $493d: $ff
    nop                                           ; $493e: $00
    rst $38                                       ; $493f: $ff
    nop                                           ; $4940: $00
    rst $38                                       ; $4941: $ff
    nop                                           ; $4942: $00
    rst $38                                       ; $4943: $ff

jr_04e_4944:
    inc e                                         ; $4944: $1c

jr_04e_4945:
    db $fc                                        ; $4945: $fc

jr_04e_4946:
    inc e                                         ; $4946: $1c

jr_04e_4947:
    db $fc                                        ; $4947: $fc

jr_04e_4948:
    inc e                                         ; $4948: $1c
    db $fc                                        ; $4949: $fc

jr_04e_494a:
    jr c, jr_04e_4944                             ; $494a: $38 $f8

    jr c, jr_04e_4946                             ; $494c: $38 $f8

    jr c, jr_04e_4948                             ; $494e: $38 $f8

    jr jr_04e_494a                                ; $4950: $18 $f8

    inc e                                         ; $4952: $1c

jr_04e_4953:
    db $fc                                        ; $4953: $fc
    rra                                           ; $4954: $1f

jr_04e_4955:
    jr jr_04e_4968                                ; $4955: $18 $11

    ld e, $30                                     ; $4957: $1e $30
    ccf                                           ; $4959: $3f
    jr nz, jr_04e_499b                            ; $495a: $20 $3f

    inc sp                                        ; $495c: $33
    ccf                                           ; $495d: $3f
    rra                                           ; $495e: $1f
    rra                                           ; $495f: $1f
    dec c                                         ; $4960: $0d
    dec c                                         ; $4961: $0d
    nop                                           ; $4962: $00
    nop                                           ; $4963: $00
    sbc $21                                       ; $4964: $de $21
    adc h                                         ; $4966: $8c
    ld [hl], e                                    ; $4967: $73

jr_04e_4968:
    nop                                           ; $4968: $00
    rst $38                                       ; $4969: $ff
    nop                                           ; $496a: $00
    rst $38                                       ; $496b: $ff
    nop                                           ; $496c: $00
    rst $38                                       ; $496d: $ff
    ld [de], a                                    ; $496e: $12

jr_04e_496f:
    rst $38                                       ; $496f: $ff
    xor [hl]                                      ; $4970: $ae
    rst $38                                       ; $4971: $ff
    ei                                            ; $4972: $fb
    ei                                            ; $4973: $fb
    rst $30                                       ; $4974: $f7
    ld [$9c63], sp                                ; $4975: $08 $63 $9c
    nop                                           ; $4978: $00
    rst $38                                       ; $4979: $ff
    nop                                           ; $497a: $00
    rst $38                                       ; $497b: $ff
    nop                                           ; $497c: $00
    rst $38                                       ; $497d: $ff
    ld hl, $73ff                                  ; $497e: $21 $ff $73
    rst $38                                       ; $4981: $ff
    rst $38                                       ; $4982: $ff
    rst $38                                       ; $4983: $ff
    cp l                                          ; $4984: $bd
    ld b, d                                       ; $4985: $42
    jr jr_04e_496f                                ; $4986: $18 $e7

    nop                                           ; $4988: $00
    rst $38                                       ; $4989: $ff
    nop                                           ; $498a: $00
    rst $38                                       ; $498b: $ff
    nop                                           ; $498c: $00
    rst $38                                       ; $498d: $ff
    ld [de], a                                    ; $498e: $12
    rst $38                                       ; $498f: $ff
    sbc d                                         ; $4990: $9a
    rst $38                                       ; $4991: $ff
    rst $30                                       ; $4992: $f7
    rst $30                                       ; $4993: $f7
    db $fc                                        ; $4994: $fc
    inc c                                         ; $4995: $0c
    call nz, Call_000_043c                        ; $4996: $c4 $3c $04
    db $fc                                        ; $4999: $fc
    inc b                                         ; $499a: $04

jr_04e_499b:
    db $fc                                        ; $499b: $fc
    ld l, h                                       ; $499c: $6c
    db $fc                                        ; $499d: $fc
    ld e, b                                       ; $499e: $58
    ret c                                         ; $499f: $d8

    ret nz                                        ; $49a0: $c0

    ret nz                                        ; $49a1: $c0

    add b                                         ; $49a2: $80
    add b                                         ; $49a3: $80
    jr nc, jr_04e_49e5                            ; $49a4: $30 $3f

    jr nc, @+$41                                  ; $49a6: $30 $3f

    ld sp, $3f3f                                  ; $49a8: $31 $3f $3f
    ccf                                           ; $49ab: $3f
    rra                                           ; $49ac: $1f
    rra                                           ; $49ad: $1f
    rrca                                          ; $49ae: $0f
    rrca                                          ; $49af: $0f
    nop                                           ; $49b0: $00
    nop                                           ; $49b1: $00
    nop                                           ; $49b2: $00
    nop                                           ; $49b3: $00
    jr nc, @+$01                                  ; $49b4: $30 $ff

    ld a, b                                       ; $49b6: $78
    rst $38                                       ; $49b7: $ff
    db $fc                                        ; $49b8: $fc
    rst $38                                       ; $49b9: $ff
    cp $ff                                        ; $49ba: $fe $ff
    rst $28                                       ; $49bc: $ef
    rst $28                                       ; $49bd: $ef
    add a                                         ; $49be: $87
    add a                                         ; $49bf: $87
    inc bc                                        ; $49c0: $03
    inc bc                                        ; $49c1: $03
    ld bc, $0001                                  ; $49c2: $01 $01 $00
    rst $38                                       ; $49c5: $ff
    nop                                           ; $49c6: $00
    rst $38                                       ; $49c7: $ff
    ld [$18ff], sp                                ; $49c8: $08 $ff $18
    rst $38                                       ; $49cb: $ff
    inc a                                         ; $49cc: $3c
    rst $38                                       ; $49cd: $ff
    db $fc                                        ; $49ce: $fc
    rst $38                                       ; $49cf: $ff
    rst $38                                       ; $49d0: $ff
    rst $38                                       ; $49d1: $ff
    rst $20                                       ; $49d2: $e7
    rst $20                                       ; $49d3: $e7
    nop                                           ; $49d4: $00
    rst $38                                       ; $49d5: $ff
    nop                                           ; $49d6: $00
    rst $38                                       ; $49d7: $ff
    inc c                                         ; $49d8: $0c
    rst $38                                       ; $49d9: $ff
    inc e                                         ; $49da: $1c
    rst $38                                       ; $49db: $ff
    ld a, $ff                                     ; $49dc: $3e $ff
    cp $ff                                        ; $49de: $fe $ff
    rst $30                                       ; $49e0: $f7
    rst $30                                       ; $49e1: $f7
    jp Jump_000_00c3                              ; $49e2: $c3 $c3 $00


jr_04e_49e5:
    rst $38                                       ; $49e5: $ff
    ld b, $ff                                     ; $49e6: $06 $ff
    rrca                                          ; $49e8: $0f
    rst $38                                       ; $49e9: $ff
    rra                                           ; $49ea: $1f
    rst $38                                       ; $49eb: $ff
    ccf                                           ; $49ec: $3f
    rst $38                                       ; $49ed: $ff
    ld a, a                                       ; $49ee: $7f
    rst $38                                       ; $49ef: $ff
    rst $38                                       ; $49f0: $ff
    rst $38                                       ; $49f1: $ff
    rst $38                                       ; $49f2: $ff
    rst $38                                       ; $49f3: $ff
    nop                                           ; $49f4: $00
    rst $38                                       ; $49f5: $ff
    nop                                           ; $49f6: $00
    rst $38                                       ; $49f7: $ff
    nop                                           ; $49f8: $00
    rst $38                                       ; $49f9: $ff
    add c                                         ; $49fa: $81
    rst $38                                       ; $49fb: $ff
    jp $e7ff                                      ; $49fc: $c3 $ff $e7


    rst $38                                       ; $49ff: $ff
    rst $38                                       ; $4a00: $ff
    rst $38                                       ; $4a01: $ff
    rst $38                                       ; $4a02: $ff
    rst $38                                       ; $4a03: $ff
    nop                                           ; $4a04: $00
    rst $38                                       ; $4a05: $ff
    ld h, b                                       ; $4a06: $60
    rst $38                                       ; $4a07: $ff
    ldh a, [rIE]                                  ; $4a08: $f0 $ff
    ld hl, sp-$01                                 ; $4a0a: $f8 $ff
    db $fc                                        ; $4a0c: $fc
    rst $38                                       ; $4a0d: $ff
    cp $ff                                        ; $4a0e: $fe $ff
    rst $38                                       ; $4a10: $ff
    rst $38                                       ; $4a11: $ff
    rst $38                                       ; $4a12: $ff
    rst $38                                       ; $4a13: $ff
    nop                                           ; $4a14: $00
    rst $38                                       ; $4a15: $ff
    nop                                           ; $4a16: $00
    rst $38                                       ; $4a17: $ff
    jr nc, @+$01                                  ; $4a18: $30 $ff

    inc a                                         ; $4a1a: $3c
    rst $38                                       ; $4a1b: $ff
    ld a, [hl]                                    ; $4a1c: $7e
    rst $38                                       ; $4a1d: $ff
    ld a, a                                       ; $4a1e: $7f
    rst $38                                       ; $4a1f: $ff
    rst $30                                       ; $4a20: $f7
    rst $30                                       ; $4a21: $f7
    db $e3                                        ; $4a22: $e3
    db $e3                                        ; $4a23: $e3
    nop                                           ; $4a24: $00
    rst $38                                       ; $4a25: $ff
    nop                                           ; $4a26: $00
    rst $38                                       ; $4a27: $ff
    ld h, b                                       ; $4a28: $60
    rst $38                                       ; $4a29: $ff
    ld [hl], b                                    ; $4a2a: $70
    rst $38                                       ; $4a2b: $ff
    ld a, b                                       ; $4a2c: $78
    rst $38                                       ; $4a2d: $ff
    db $fc                                        ; $4a2e: $fc
    rst $38                                       ; $4a2f: $ff
    rst $18                                       ; $4a30: $df
    rst $18                                       ; $4a31: $df
    adc a                                         ; $4a32: $8f
    adc a                                         ; $4a33: $8f
    jr c, @+$01                                   ; $4a34: $38 $ff

    ld a, $ff                                     ; $4a36: $3e $ff
    ld a, a                                       ; $4a38: $7f
    rst $38                                       ; $4a39: $ff
    ld [hl], a                                    ; $4a3a: $77
    rst $30                                       ; $4a3b: $f7
    ld h, c                                       ; $4a3c: $61
    pop hl                                        ; $4a3d: $e1
    ldh [$e0], a                                  ; $4a3e: $e0 $e0
    ldh [$e0], a                                  ; $4a40: $e0 $e0
    ret nz                                        ; $4a42: $c0

    ret nz                                        ; $4a43: $c0

    inc c                                         ; $4a44: $0c
    db $fc                                        ; $4a45: $fc
    inc c                                         ; $4a46: $0c
    db $fc                                        ; $4a47: $fc
    call z, $fcfc                                 ; $4a48: $cc $fc $fc
    db $fc                                        ; $4a4b: $fc
    db $fc                                        ; $4a4c: $fc
    db $fc                                        ; $4a4d: $fc
    jr c, jr_04e_4a88                             ; $4a4e: $38 $38

    nop                                           ; $4a50: $00
    nop                                           ; $4a51: $00
    nop                                           ; $4a52: $00
    nop                                           ; $4a53: $00
    jr jr_04e_4a75                                ; $4a54: $18 $1f

    jr nc, jr_04e_4a97                            ; $4a56: $30 $3f

    jr nz, @+$41                                  ; $4a58: $20 $3f

    ld h, b                                       ; $4a5a: $60
    ld a, a                                       ; $4a5b: $7f
    ld b, b                                       ; $4a5c: $40
    ld a, a                                       ; $4a5d: $7f
    ret nz                                        ; $4a5e: $c0

    rst $38                                       ; $4a5f: $ff
    add b                                         ; $4a60: $80
    rst $38                                       ; $4a61: $ff
    and b                                         ; $4a62: $a0
    rst $18                                       ; $4a63: $df
    ld a, a                                       ; $4a64: $7f
    rst $38                                       ; $4a65: $ff
    inc sp                                        ; $4a66: $33
    rst $38                                       ; $4a67: $ff
    nop                                           ; $4a68: $00

jr_04e_4a69:
    rst $38                                       ; $4a69: $ff
    nop                                           ; $4a6a: $00
    rst $38                                       ; $4a6b: $ff
    nop                                           ; $4a6c: $00
    rst $38                                       ; $4a6d: $ff
    nop                                           ; $4a6e: $00
    rst $38                                       ; $4a6f: $ff
    nop                                           ; $4a70: $00
    rst $38                                       ; $4a71: $ff
    add d                                         ; $4a72: $82
    ld a, l                                       ; $4a73: $7d
    sbc d                                         ; $4a74: $9a

jr_04e_4a75:
    cp $03                                        ; $4a75: $fe $03
    rst $38                                       ; $4a77: $ff
    ld bc, $01ff                                  ; $4a78: $01 $ff $01
    rst $38                                       ; $4a7b: $ff
    nop                                           ; $4a7c: $00
    rst $38                                       ; $4a7d: $ff
    nop                                           ; $4a7e: $00
    rst $38                                       ; $4a7f: $ff
    nop                                           ; $4a80: $00
    rst $38                                       ; $4a81: $ff
    ld [$00f7], sp                                ; $4a82: $08 $f7 $00
    nop                                           ; $4a85: $00
    nop                                           ; $4a86: $00
    nop                                           ; $4a87: $00

jr_04e_4a88:
    nop                                           ; $4a88: $00
    nop                                           ; $4a89: $00
    add b                                         ; $4a8a: $80
    add b                                         ; $4a8b: $80
    add b                                         ; $4a8c: $80
    add b                                         ; $4a8d: $80
    ret nz                                        ; $4a8e: $c0

    ret nz                                        ; $4a8f: $c0

    ld b, b                                       ; $4a90: $40
    ret nz                                        ; $4a91: $c0

    ld h, b                                       ; $4a92: $60
    ldh [rTAC], a                                 ; $4a93: $e0 $07
    rlca                                          ; $4a95: $07
    rrca                                          ; $4a96: $0f

jr_04e_4a97:
    rrca                                          ; $4a97: $0f
    ld e, $1f                                     ; $4a98: $1e $1f
    inc a                                         ; $4a9a: $3c
    ccf                                           ; $4a9b: $3f
    ld a, b                                       ; $4a9c: $78
    ld a, a                                       ; $4a9d: $7f
    ld [hl], b                                    ; $4a9e: $70
    ld a, a                                       ; $4a9f: $7f
    jr c, jr_04e_4ae1                             ; $4aa0: $38 $3f

    inc e                                         ; $4aa2: $1c
    rra                                           ; $4aa3: $1f
    add b                                         ; $4aa4: $80
    rst $38                                       ; $4aa5: $ff
    nop                                           ; $4aa6: $00
    rst $38                                       ; $4aa7: $ff
    nop                                           ; $4aa8: $00
    rst $38                                       ; $4aa9: $ff
    nop                                           ; $4aaa: $00
    rst $38                                       ; $4aab: $ff
    nop                                           ; $4aac: $00
    rst $38                                       ; $4aad: $ff
    nop                                           ; $4aae: $00
    rst $38                                       ; $4aaf: $ff
    nop                                           ; $4ab0: $00
    rst $38                                       ; $4ab1: $ff
    nop                                           ; $4ab2: $00

jr_04e_4ab3:
    rst $38                                       ; $4ab3: $ff
    ldh a, [$f0]                                  ; $4ab4: $f0 $f0
    ld a, b                                       ; $4ab6: $78
    ld hl, sp+$3c                                 ; $4ab7: $f8 $3c
    db $fc                                        ; $4ab9: $fc
    ld e, $fe                                     ; $4aba: $1e $fe
    ld c, $fe                                     ; $4abc: $0e $fe
    ld c, $fe                                     ; $4abe: $0e $fe
    ld c, $fe                                     ; $4ac0: $0e $fe
    inc e                                         ; $4ac2: $1c
    db $fc                                        ; $4ac3: $fc
    ld bc, $0301                                  ; $4ac4: $01 $01 $03
    inc bc                                        ; $4ac7: $03
    ld b, $07                                     ; $4ac8: $06 $07
    dec b                                         ; $4aca: $05
    ld b, $0c                                     ; $4acb: $06 $0c
    rrca                                          ; $4acd: $0f
    add hl, bc                                    ; $4ace: $09
    rrca                                          ; $4acf: $0f
    rrca                                          ; $4ad0: $0f
    rrca                                          ; $4ad1: $0f
    ld b, $07                                     ; $4ad2: $06 $07
    pop af                                        ; $4ad4: $f1
    adc [hl]                                      ; $4ad5: $8e

jr_04e_4ad6:
    ld a, e                                       ; $4ad6: $7b
    add h                                         ; $4ad7: $84
    rst $18                                       ; $4ad8: $df
    jr nz, jr_04e_4a69                            ; $4ad9: $20 $8e

    ld [hl], c                                    ; $4adb: $71
    inc b                                         ; $4adc: $04
    ei                                            ; $4add: $fb
    nop                                           ; $4ade: $00
    rst $38                                       ; $4adf: $ff
    nop                                           ; $4ae0: $00

jr_04e_4ae1:
    rst $38                                       ; $4ae1: $ff
    ld b, d                                       ; $4ae2: $42
    rst $38                                       ; $4ae3: $ff
    rst $00                                       ; $4ae4: $c7
    jr c, jr_04e_4ad6                             ; $4ae5: $38 $ef

    db $10                                        ; $4ae7: $10
    ld a, l                                       ; $4ae8: $7d
    add d                                         ; $4ae9: $82
    jr c, jr_04e_4ab3                             ; $4aea: $38 $c7

    db $10                                        ; $4aec: $10
    rst $28                                       ; $4aed: $ef
    nop                                           ; $4aee: $00
    rst $38                                       ; $4aef: $ff
    nop                                           ; $4af0: $00
    rst $38                                       ; $4af1: $ff
    ld c, c                                       ; $4af2: $49
    rst $38                                       ; $4af3: $ff
    inc e                                         ; $4af4: $1c
    db $e3                                        ; $4af5: $e3

jr_04e_4af6:
    cp [hl]                                       ; $4af6: $be
    ld b, c                                       ; $4af7: $41
    rst $30                                       ; $4af8: $f7
    ld [$1ce3], sp                                ; $4af9: $08 $e3 $1c
    ld b, b                                       ; $4afc: $40
    cp a                                          ; $4afd: $bf
    ld [bc], a                                    ; $4afe: $02
    rst $38                                       ; $4aff: $ff

jr_04e_4b00:
    inc bc                                        ; $4b00: $03
    rst $38                                       ; $4b01: $ff
    inc de                                        ; $4b02: $13
    rst $38                                       ; $4b03: $ff

jr_04e_4b04:
    jr nc, jr_04e_4af6                            ; $4b04: $30 $f0

jr_04e_4b06:
    sub b                                         ; $4b06: $90
    ld [hl], b                                    ; $4b07: $70
    ret c                                         ; $4b08: $d8

    jr c, jr_04e_4b73                             ; $4b09: $38 $68

    sbc b                                         ; $4b0b: $98
    jr jr_04e_4b06                                ; $4b0c: $18 $f8

    jr nc, jr_04e_4b00                            ; $4b0e: $30 $f0

    db $10                                        ; $4b10: $10
    ldh a, [$98]                                  ; $4b11: $f0 $98
    ld hl, sp+$00                                 ; $4b13: $f8 $00
    nop                                           ; $4b15: $00
    nop                                           ; $4b16: $00
    nop                                           ; $4b17: $00
    ld bc, $0301                                  ; $4b18: $01 $01 $03
    inc bc                                        ; $4b1b: $03
    inc bc                                        ; $4b1c: $03
    inc bc                                        ; $4b1d: $03
    inc bc                                        ; $4b1e: $03
    inc bc                                        ; $4b1f: $03
    ld bc, $0001                                  ; $4b20: $01 $01 $00
    nop                                           ; $4b23: $00
    ld a, b                                       ; $4b24: $78
    ld a, a                                       ; $4b25: $7f
    ldh a, [rIE]                                  ; $4b26: $f0 $ff
    ldh [rIE], a                                  ; $4b28: $e0 $ff
    add e                                         ; $4b2a: $83
    db $fc                                        ; $4b2b: $fc
    rrca                                          ; $4b2c: $0f
    ldh a, [$87]                                  ; $4b2d: $f0 $87
    ld hl, sp-$3f                                 ; $4b2f: $f8 $c1
    cp $f0                                        ; $4b31: $fe $f0
    rst $38                                       ; $4b33: $ff
    ld [$1cf7], sp                                ; $4b34: $08 $f7 $1c
    db $e3                                        ; $4b37: $e3
    ld a, $c1                                     ; $4b38: $3e $c1
    ld a, a                                       ; $4b3a: $7f
    add b                                         ; $4b3b: $80
    rst $38                                       ; $4b3c: $ff
    nop                                           ; $4b3d: $00
    rst $20                                       ; $4b3e: $e7
    jr jr_04e_4b04                                ; $4b3f: $18 $c3

    inc a                                         ; $4b41: $3c
    add c                                         ; $4b42: $81
    ld a, [hl]                                    ; $4b43: $7e
    ld e, $fe                                     ; $4b44: $1e $fe
    rrca                                          ; $4b46: $0f
    rst $38                                       ; $4b47: $ff
    inc bc                                        ; $4b48: $03
    rst $38                                       ; $4b49: $ff
    pop bc                                        ; $4b4a: $c1
    ccf                                           ; $4b4b: $3f
    ldh a, [rIF]                                  ; $4b4c: $f0 $0f
    ldh [$1f], a                                  ; $4b4e: $e0 $1f
    add c                                         ; $4b50: $81
    ld a, a                                       ; $4b51: $7f
    inc bc                                        ; $4b52: $03
    rst $38                                       ; $4b53: $ff
    nop                                           ; $4b54: $00
    nop                                           ; $4b55: $00
    nop                                           ; $4b56: $00
    nop                                           ; $4b57: $00
    add b                                         ; $4b58: $80
    add b                                         ; $4b59: $80
    ret nz                                        ; $4b5a: $c0

    ret nz                                        ; $4b5b: $c0

    ret nz                                        ; $4b5c: $c0

    ret nz                                        ; $4b5d: $c0

    ret nz                                        ; $4b5e: $c0

    ret nz                                        ; $4b5f: $c0

    ret nz                                        ; $4b60: $c0

    ret nz                                        ; $4b61: $c0

    add b                                         ; $4b62: $80
    add b                                         ; $4b63: $80
    inc bc                                        ; $4b64: $03
    inc bc                                        ; $4b65: $03
    inc bc                                        ; $4b66: $03
    inc bc                                        ; $4b67: $03
    ld b, $07                                     ; $4b68: $06 $07
    inc b                                         ; $4b6a: $04
    rlca                                          ; $4b6b: $07
    inc b                                         ; $4b6c: $04
    rlca                                          ; $4b6d: $07
    ld [$080f], sp                                ; $4b6e: $08 $0f $08
    rrca                                          ; $4b71: $0f
    db $10                                        ; $4b72: $10

jr_04e_4b73:
    rra                                           ; $4b73: $1f
    rst $20                                       ; $4b74: $e7
    rst $38                                       ; $4b75: $ff
    dec a                                         ; $4b76: $3d
    rst $38                                       ; $4b77: $ff
    jr @+$01                                      ; $4b78: $18 $ff

    nop                                           ; $4b7a: $00
    rst $38                                       ; $4b7b: $ff
    nop                                           ; $4b7c: $00
    rst $38                                       ; $4b7d: $ff
    nop                                           ; $4b7e: $00
    rst $38                                       ; $4b7f: $ff
    nop                                           ; $4b80: $00
    rst $38                                       ; $4b81: $ff
    nop                                           ; $4b82: $00
    rst $38                                       ; $4b83: $ff
    ld l, l                                       ; $4b84: $6d
    rst $38                                       ; $4b85: $ff
    rst $38                                       ; $4b86: $ff
    rst $38                                       ; $4b87: $ff
    inc sp                                        ; $4b88: $33
    rst $38                                       ; $4b89: $ff
    nop                                           ; $4b8a: $00
    rst $38                                       ; $4b8b: $ff
    nop                                           ; $4b8c: $00
    rst $38                                       ; $4b8d: $ff
    nop                                           ; $4b8e: $00
    rst $38                                       ; $4b8f: $ff
    nop                                           ; $4b90: $00
    rst $38                                       ; $4b91: $ff
    nop                                           ; $4b92: $00
    rst $38                                       ; $4b93: $ff
    cp d                                          ; $4b94: $ba
    rst $38                                       ; $4b95: $ff
    xor $ff                                       ; $4b96: $ee $ff

jr_04e_4b98:
    ld h, h                                       ; $4b98: $64
    rst $38                                       ; $4b99: $ff
    nop                                           ; $4b9a: $00
    rst $38                                       ; $4b9b: $ff
    nop                                           ; $4b9c: $00
    rst $38                                       ; $4b9d: $ff
    nop                                           ; $4b9e: $00
    rst $38                                       ; $4b9f: $ff
    nop                                           ; $4ba0: $00
    rst $38                                       ; $4ba1: $ff
    nop                                           ; $4ba2: $00
    rst $38                                       ; $4ba3: $ff
    ld hl, sp-$08                                 ; $4ba4: $f8 $f8
    jr nc, jr_04e_4b98                            ; $4ba6: $30 $f0

    db $10                                        ; $4ba8: $10
    ldh a, [rNR23]                                ; $4ba9: $f0 $18
    ld hl, sp+$08                                 ; $4bab: $f8 $08
    ld hl, sp+$08                                 ; $4bad: $f8 $08
    ld hl, sp+$0c                                 ; $4baf: $f8 $0c
    db $fc                                        ; $4bb1: $fc
    inc b                                         ; $4bb2: $04
    db $fc                                        ; $4bb3: $fc
    nop                                           ; $4bb4: $00
    nop                                           ; $4bb5: $00
    nop                                           ; $4bb6: $00
    nop                                           ; $4bb7: $00
    ld bc, $0301                                  ; $4bb8: $01 $01 $03
    inc bc                                        ; $4bbb: $03
    rlca                                          ; $4bbc: $07
    rlca                                          ; $4bbd: $07
    ld b, $07                                     ; $4bbe: $06 $07
    rlca                                          ; $4bc0: $07
    rlca                                          ; $4bc1: $07
    inc bc                                        ; $4bc2: $03
    inc bc                                        ; $4bc3: $03
    ld [hl], b                                    ; $4bc4: $70
    ld a, a                                       ; $4bc5: $7f
    ldh [rIE], a                                  ; $4bc6: $e0 $ff
    ret nz                                        ; $4bc8: $c0

    rst $38                                       ; $4bc9: $ff
    add b                                         ; $4bca: $80
    rst $38                                       ; $4bcb: $ff
    ld b, $ff                                     ; $4bcc: $06 $ff
    ld e, $ff                                     ; $4bce: $1e $ff
    db $fc                                        ; $4bd0: $fc
    rst $38                                       ; $4bd1: $ff
    ld hl, sp-$01                                 ; $4bd2: $f8 $ff
    nop                                           ; $4bd4: $00
    rst $38                                       ; $4bd5: $ff
    nop                                           ; $4bd6: $00
    rst $38                                       ; $4bd7: $ff
    nop                                           ; $4bd8: $00
    rst $38                                       ; $4bd9: $ff
    nop                                           ; $4bda: $00
    rst $38                                       ; $4bdb: $ff
    nop                                           ; $4bdc: $00
    rst $38                                       ; $4bdd: $ff
    nop                                           ; $4bde: $00
    rst $38                                       ; $4bdf: $ff
    jr c, @+$01                                   ; $4be0: $38 $ff

    ld a, b                                       ; $4be2: $78
    rst $38                                       ; $4be3: $ff
    nop                                           ; $4be4: $00
    rst $38                                       ; $4be5: $ff
    nop                                           ; $4be6: $00
    rst $38                                       ; $4be7: $ff
    nop                                           ; $4be8: $00
    rst $38                                       ; $4be9: $ff
    nop                                           ; $4bea: $00
    rst $38                                       ; $4beb: $ff
    nop                                           ; $4bec: $00
    rst $38                                       ; $4bed: $ff
    nop                                           ; $4bee: $00
    rst $38                                       ; $4bef: $ff
    inc c                                         ; $4bf0: $0c
    rst $38                                       ; $4bf1: $ff
    rrca                                          ; $4bf2: $0f
    rst $38                                       ; $4bf3: $ff
    inc bc                                        ; $4bf4: $03
    rst $38                                       ; $4bf5: $ff
    inc bc                                        ; $4bf6: $03
    rst $38                                       ; $4bf7: $ff
    ld bc, $00ff                                  ; $4bf8: $01 $ff $00
    rst $38                                       ; $4bfb: $ff
    jr nc, @+$01                                  ; $4bfc: $30 $ff

    inc a                                         ; $4bfe: $3c
    rst $38                                       ; $4bff: $ff
    rra                                           ; $4c00: $1f
    rst $38                                       ; $4c01: $ff
    rrca                                          ; $4c02: $0f
    rst $38                                       ; $4c03: $ff
    nop                                           ; $4c04: $00
    nop                                           ; $4c05: $00
    add b                                         ; $4c06: $80
    add b                                         ; $4c07: $80
    ret nz                                        ; $4c08: $c0

    ret nz                                        ; $4c09: $c0

    ldh [$e0], a                                  ; $4c0a: $e0 $e0
    ld [hl], b                                    ; $4c0c: $70
    ldh a, [rSVBK]                                ; $4c0d: $f0 $70
    ldh a, [$e0]                                  ; $4c0f: $f0 $e0
    ldh [$c0], a                                  ; $4c11: $e0 $c0
    ret nz                                        ; $4c13: $c0

    db $10                                        ; $4c14: $10
    rra                                           ; $4c15: $1f
    jr nc, jr_04e_4c57                            ; $4c16: $30 $3f

    ld hl, $633e                                  ; $4c18: $21 $3e $63
    ld a, h                                       ; $4c1b: $7c
    rst $00                                       ; $4c1c: $c7
    ld hl, sp-$02                                 ; $4c1d: $f8 $fe
    pop bc                                        ; $4c1f: $c1
    call c, Call_04e_68e3                         ; $4c20: $dc $e3 $68
    ld [hl], a                                    ; $4c23: $77
    nop                                           ; $4c24: $00
    rst $38                                       ; $4c25: $ff
    nop                                           ; $4c26: $00
    rst $38                                       ; $4c27: $ff
    add c                                         ; $4c28: $81
    ld a, [hl]                                    ; $4c29: $7e
    jp $e73c                                      ; $4c2a: $c3 $3c $e7


    jr jr_04e_4cad                                ; $4c2d: $18 $7e

    add c                                         ; $4c2f: $81
    inc a                                         ; $4c30: $3c
    jp $e718                                      ; $4c31: $c3 $18 $e7


    inc b                                         ; $4c34: $04
    db $fc                                        ; $4c35: $fc
    ld b, $fe                                     ; $4c36: $06 $fe
    add d                                         ; $4c38: $82
    ld a, [hl]                                    ; $4c39: $7e
    jp nz, $e33e                                  ; $4c3a: $c2 $3e $e3

    rra                                           ; $4c3d: $1f
    ld a, l                                       ; $4c3e: $7d
    add e                                         ; $4c3f: $83
    add hl, sp                                    ; $4c40: $39
    rst $00                                       ; $4c41: $c7
    inc de                                        ; $4c42: $13
    rst $28                                       ; $4c43: $ef
    add hl, sp                                    ; $4c44: $39
    ccf                                           ; $4c45: $3f
    rra                                           ; $4c46: $1f
    rra                                           ; $4c47: $1f
    rrca                                          ; $4c48: $0f
    rrca                                          ; $4c49: $0f
    inc bc                                        ; $4c4a: $03
    inc bc                                        ; $4c4b: $03
    rlca                                          ; $4c4c: $07
    rlca                                          ; $4c4d: $07
    ld e, $1f                                     ; $4c4e: $1e $1f
    ld a, h                                       ; $4c50: $7c
    ld a, a                                       ; $4c51: $7f
    ldh a, [rIE]                                  ; $4c52: $f0 $ff
    ldh a, [rIE]                                  ; $4c54: $f0 $ff
    pop af                                        ; $4c56: $f1

jr_04e_4c57:
    rst $38                                       ; $4c57: $ff
    or e                                          ; $4c58: $b3
    rst $38                                       ; $4c59: $ff
    scf                                           ; $4c5a: $37
    rst $38                                       ; $4c5b: $ff
    ld a, $ff                                     ; $4c5c: $3e $ff
    inc e                                         ; $4c5e: $1c
    rst $38                                       ; $4c5f: $ff
    nop                                           ; $4c60: $00
    rst $38                                       ; $4c61: $ff
    nop                                           ; $4c62: $00
    rst $38                                       ; $4c63: $ff
    call nz, $ccff                                ; $4c64: $c4 $ff $cc
    rst $38                                       ; $4c67: $ff
    cp $ff                                        ; $4c68: $fe $ff
    ld a, [hl]                                    ; $4c6a: $7e
    rst $38                                       ; $4c6b: $ff
    rlca                                          ; $4c6c: $07
    rst $38                                       ; $4c6d: $ff
    inc bc                                        ; $4c6e: $03
    rst $38                                       ; $4c6f: $ff
    nop                                           ; $4c70: $00
    rst $38                                       ; $4c71: $ff
    nop                                           ; $4c72: $00
    rst $38                                       ; $4c73: $ff
    ld [$1cff], sp                                ; $4c74: $08 $ff $1c
    rst $38                                       ; $4c77: $ff
    ld a, $ff                                     ; $4c78: $3e $ff
    ld [hl], a                                    ; $4c7a: $77
    rst $38                                       ; $4c7b: $ff
    db $e3                                        ; $4c7c: $e3
    rst $38                                       ; $4c7d: $ff
    pop bc                                        ; $4c7e: $c1
    rst $38                                       ; $4c7f: $ff
    nop                                           ; $4c80: $00
    rst $38                                       ; $4c81: $ff
    nop                                           ; $4c82: $00
    rst $38                                       ; $4c83: $ff
    ld [$0dff], sp                                ; $4c84: $08 $ff $0d
    rst $38                                       ; $4c87: $ff
    rra                                           ; $4c88: $1f
    rst $38                                       ; $4c89: $ff
    ccf                                           ; $4c8a: $3f
    rst $38                                       ; $4c8b: $ff
    di                                            ; $4c8c: $f3
    rst $38                                       ; $4c8d: $ff
    ldh [rIE], a                                  ; $4c8e: $e0 $ff
    nop                                           ; $4c90: $00
    rst $38                                       ; $4c91: $ff
    nop                                           ; $4c92: $00
    rst $38                                       ; $4c93: $ff
    add a                                         ; $4c94: $87
    rst $38                                       ; $4c95: $ff
    rst $00                                       ; $4c96: $c7
    rst $38                                       ; $4c97: $ff
    and $ff                                       ; $4c98: $e6 $ff
    or $ff                                        ; $4c9a: $f6 $ff
    ld a, $ff                                     ; $4c9c: $3e $ff
    inc e                                         ; $4c9e: $1c
    rst $38                                       ; $4c9f: $ff
    nop                                           ; $4ca0: $00
    rst $38                                       ; $4ca1: $ff
    nop                                           ; $4ca2: $00
    rst $38                                       ; $4ca3: $ff
    call z, $fcfc                                 ; $4ca4: $cc $fc $fc
    db $fc                                        ; $4ca7: $fc
    ld hl, sp-$08                                 ; $4ca8: $f8 $f8
    ld h, b                                       ; $4caa: $60
    ldh [rSVBK], a                                ; $4cab: $e0 $70

jr_04e_4cad:
    ldh a, [$3c]                                  ; $4cad: $f0 $3c
    db $fc                                        ; $4caf: $fc
    rra                                           ; $4cb0: $1f
    rst $38                                       ; $4cb1: $ff
    rlca                                          ; $4cb2: $07
    rst $38                                       ; $4cb3: $ff
    nop                                           ; $4cb4: $00
    nop                                           ; $4cb5: $00
    nop                                           ; $4cb6: $00
    nop                                           ; $4cb7: $00
    nop                                           ; $4cb8: $00
    nop                                           ; $4cb9: $00
    nop                                           ; $4cba: $00
    nop                                           ; $4cbb: $00
    nop                                           ; $4cbc: $00
    nop                                           ; $4cbd: $00
    nop                                           ; $4cbe: $00
    nop                                           ; $4cbf: $00
    nop                                           ; $4cc0: $00
    nop                                           ; $4cc1: $00
    ret nz                                        ; $4cc2: $c0

    ret nz                                        ; $4cc3: $c0

    jr c, @+$41                                   ; $4cc4: $38 $3f

    jr nc, jr_04e_4d07                            ; $4cc6: $30 $3f

    ld h, d                                       ; $4cc8: $62
    ld a, a                                       ; $4cc9: $7f
    ld c, [hl]                                    ; $4cca: $4e
    ld a, a                                       ; $4ccb: $7f
    ld a, h                                       ; $4ccc: $7c
    ld a, a                                       ; $4ccd: $7f
    jr c, @+$41                                   ; $4cce: $38 $3f

    dec c                                         ; $4cd0: $0d
    rrca                                          ; $4cd1: $0f
    rlca                                          ; $4cd2: $07
    rlca                                          ; $4cd3: $07
    nop                                           ; $4cd4: $00
    rst $38                                       ; $4cd5: $ff
    nop                                           ; $4cd6: $00
    rst $38                                       ; $4cd7: $ff
    nop                                           ; $4cd8: $00
    rst $38                                       ; $4cd9: $ff
    nop                                           ; $4cda: $00
    rst $38                                       ; $4cdb: $ff
    ld b, h                                       ; $4cdc: $44
    rst $38                                       ; $4cdd: $ff
    call z, $deff                                 ; $4cde: $cc $ff $de
    rst $38                                       ; $4ce1: $ff
    ld [hl], e                                    ; $4ce2: $73
    rst $38                                       ; $4ce3: $ff
    nop                                           ; $4ce4: $00
    rst $38                                       ; $4ce5: $ff
    nop                                           ; $4ce6: $00
    rst $38                                       ; $4ce7: $ff
    nop                                           ; $4ce8: $00
    rst $38                                       ; $4ce9: $ff
    nop                                           ; $4cea: $00
    rst $38                                       ; $4ceb: $ff
    ld [$9cff], sp                                ; $4cec: $08 $ff $9c
    rst $38                                       ; $4cef: $ff
    or [hl]                                       ; $4cf0: $b6
    rst $38                                       ; $4cf1: $ff
    ld h, e                                       ; $4cf2: $63
    rst $38                                       ; $4cf3: $ff
    nop                                           ; $4cf4: $00
    rst $38                                       ; $4cf5: $ff
    nop                                           ; $4cf6: $00
    rst $38                                       ; $4cf7: $ff
    nop                                           ; $4cf8: $00
    rst $38                                       ; $4cf9: $ff
    nop                                           ; $4cfa: $00
    rst $38                                       ; $4cfb: $ff
    ld [$88ff], sp                                ; $4cfc: $08 $ff $88
    rst $38                                       ; $4cff: $ff
    call c, $b7ff                                 ; $4d00: $dc $ff $b7
    rst $38                                       ; $4d03: $ff
    ld b, $fe                                     ; $4d04: $06 $fe
    inc bc                                        ; $4d06: $03

jr_04e_4d07:
    rst $38                                       ; $4d07: $ff
    ld de, $19ff                                  ; $4d08: $11 $ff $19
    rst $38                                       ; $4d0b: $ff
    rrca                                          ; $4d0c: $0f
    rst $38                                       ; $4d0d: $ff
    add $fe                                       ; $4d0e: $c6 $fe
    db $e4                                        ; $4d10: $e4
    db $fc                                        ; $4d11: $fc
    cp h                                          ; $4d12: $bc
    db $fc                                        ; $4d13: $fc
    ld bc, $0301                                  ; $4d14: $01 $01 $03
    inc bc                                        ; $4d17: $03
    inc bc                                        ; $4d18: $03
    inc bc                                        ; $4d19: $03
    rlca                                          ; $4d1a: $07
    rlca                                          ; $4d1b: $07
    ld b, $07                                     ; $4d1c: $06 $07
    ld c, $0f                                     ; $4d1e: $0e $0f
    inc e                                         ; $4d20: $1c
    rra                                           ; $4d21: $1f
    jr jr_04e_4d43                                ; $4d22: $18 $1f

    ld bc, $00ff                                  ; $4d24: $01 $ff $00
    rst $38                                       ; $4d27: $ff
    nop                                           ; $4d28: $00
    rst $38                                       ; $4d29: $ff
    nop                                           ; $4d2a: $00
    rst $38                                       ; $4d2b: $ff
    nop                                           ; $4d2c: $00
    rst $38                                       ; $4d2d: $ff
    nop                                           ; $4d2e: $00
    rst $38                                       ; $4d2f: $ff
    nop                                           ; $4d30: $00
    rst $38                                       ; $4d31: $ff
    nop                                           ; $4d32: $00
    rst $38                                       ; $4d33: $ff
    ret nz                                        ; $4d34: $c0

    ret nz                                        ; $4d35: $c0

    ldh [$e0], a                                  ; $4d36: $e0 $e0
    ld h, b                                       ; $4d38: $60
    ldh [rSVBK], a                                ; $4d39: $e0 $70
    ldh a, [$30]                                  ; $4d3b: $f0 $30
    ldh a, [$38]                                  ; $4d3d: $f0 $38
    ld hl, sp+$1c                                 ; $4d3f: $f8 $1c
    db $fc                                        ; $4d41: $fc
    inc c                                         ; $4d42: $0c

jr_04e_4d43:
    db $fc                                        ; $4d43: $fc
    inc c                                         ; $4d44: $0c
    rrca                                          ; $4d45: $0f
    ld [$180f], sp                                ; $4d46: $08 $0f $18
    rra                                           ; $4d49: $1f
    jr nc, jr_04e_4d8b                            ; $4d4a: $30 $3f

    ld h, b                                       ; $4d4c: $60
    ld a, a                                       ; $4d4d: $7f

jr_04e_4d4e:
    ld b, b                                       ; $4d4e: $40
    ld a, a                                       ; $4d4f: $7f
    ret nz                                        ; $4d50: $c0

    rst $38                                       ; $4d51: $ff
    add b                                         ; $4d52: $80
    rst $38                                       ; $4d53: $ff
    jr jr_04e_4d4e                                ; $4d54: $18 $f8

    inc c                                         ; $4d56: $0c
    db $fc                                        ; $4d57: $fc
    ld b, $fe                                     ; $4d58: $06 $fe
    ld [bc], a                                    ; $4d5a: $02
    cp $03                                        ; $4d5b: $fe $03
    rst $38                                       ; $4d5d: $ff
    ld bc, $00ff                                  ; $4d5e: $01 $ff $00
    rst $38                                       ; $4d61: $ff
    nop                                           ; $4d62: $00
    rst $38                                       ; $4d63: $ff
    nop                                           ; $4d64: $00
    nop                                           ; $4d65: $00
    nop                                           ; $4d66: $00
    nop                                           ; $4d67: $00
    nop                                           ; $4d68: $00
    nop                                           ; $4d69: $00
    nop                                           ; $4d6a: $00
    nop                                           ; $4d6b: $00
    nop                                           ; $4d6c: $00
    nop                                           ; $4d6d: $00
    ret nz                                        ; $4d6e: $c0

    ret nz                                        ; $4d6f: $c0

    ld h, b                                       ; $4d70: $60
    ldh [rNR41], a                                ; $4d71: $e0 $20
    ldh [rNR32], a                                ; $4d73: $e0 $1c
    rra                                           ; $4d75: $1f
    ld c, $0f                                     ; $4d76: $0e $0f
    rlca                                          ; $4d78: $07
    rlca                                          ; $4d79: $07
    inc bc                                        ; $4d7a: $03
    inc bc                                        ; $4d7b: $03
    rlca                                          ; $4d7c: $07
    rlca                                          ; $4d7d: $07
    ld c, $0f                                     ; $4d7e: $0e $0f
    inc e                                         ; $4d80: $1c
    rra                                           ; $4d81: $1f
    add hl, sp                                    ; $4d82: $39
    ld a, $00                                     ; $4d83: $3e $00
    rst $38                                       ; $4d85: $ff
    nop                                           ; $4d86: $00
    rst $38                                       ; $4d87: $ff
    nop                                           ; $4d88: $00
    rst $38                                       ; $4d89: $ff
    sub b                                         ; $4d8a: $90

jr_04e_4d8b:
    rst $28                                       ; $4d8b: $ef
    jr c, @-$37                                   ; $4d8c: $38 $c7

    ld a, h                                       ; $4d8e: $7c
    add e                                         ; $4d8f: $83
    cp $01                                        ; $4d90: $fe $01
    rst $38                                       ; $4d92: $ff
    nop                                           ; $4d93: $00
    nop                                           ; $4d94: $00
    rst $38                                       ; $4d95: $ff
    nop                                           ; $4d96: $00
    rst $38                                       ; $4d97: $ff
    nop                                           ; $4d98: $00
    rst $38                                       ; $4d99: $ff
    ld [$1cf7], sp                                ; $4d9a: $08 $f7 $1c
    db $e3                                        ; $4d9d: $e3
    ld a, $c1                                     ; $4d9e: $3e $c1

jr_04e_4da0:
    ld a, a                                       ; $4da0: $7f
    add b                                         ; $4da1: $80
    rst $38                                       ; $4da2: $ff
    nop                                           ; $4da3: $00
    inc e                                         ; $4da4: $1c
    db $fc                                        ; $4da5: $fc
    jr c, jr_04e_4da0                             ; $4da6: $38 $f8

    ldh a, [$f0]                                  ; $4da8: $f0 $f0
    ldh [$e0], a                                  ; $4daa: $e0 $e0
    ld [hl], b                                    ; $4dac: $70
    ldh a, [$38]                                  ; $4dad: $f0 $38
    ld hl, sp+$1c                                 ; $4daf: $f8 $1c
    db $fc                                        ; $4db1: $fc
    adc h                                         ; $4db2: $8c
    ld a, h                                       ; $4db3: $7c
    ld bc, $0101                                  ; $4db4: $01 $01 $01
    ld bc, $0303                                  ; $4db7: $01 $03 $03
    ld b, $07                                     ; $4dba: $06 $07
    inc b                                         ; $4dbc: $04
    rlca                                          ; $4dbd: $07
    inc c                                         ; $4dbe: $0c
    rrca                                          ; $4dbf: $0f
    ld [$0c0f], sp                                ; $4dc0: $08 $0f $0c
    rrca                                          ; $4dc3: $0f
    adc b                                         ; $4dc4: $88
    rst $30                                       ; $4dc5: $f7
    inc e                                         ; $4dc6: $1c
    db $e3                                        ; $4dc7: $e3
    ld a, $c1                                     ; $4dc8: $3e $c1
    ld l, a                                       ; $4dca: $6f
    sub b                                         ; $4dcb: $90
    rst $00                                       ; $4dcc: $c7
    jr c, @+$05                                   ; $4dcd: $38 $03

    db $fc                                        ; $4dcf: $fc
    ld bc, $00fe                                  ; $4dd0: $01 $fe $00
    rst $38                                       ; $4dd3: $ff
    ld [$1cf7], sp                                ; $4dd4: $08 $f7 $1c
    db $e3                                        ; $4dd7: $e3
    ld a, $c1                                     ; $4dd8: $3e $c1
    ld a, a                                       ; $4dda: $7f
    add b                                         ; $4ddb: $80
    rst $30                                       ; $4ddc: $f7
    ld [$1ce3], sp                                ; $4ddd: $08 $e3 $1c
    pop bc                                        ; $4de0: $c1
    ld a, $80                                     ; $4de1: $3e $80
    ld a, a                                       ; $4de3: $7f
    ld [$1df7], sp                                ; $4de4: $08 $f7 $1d
    db $e3                                        ; $4de7: $e3
    ld a, $c1                                     ; $4de8: $3e $c1

jr_04e_4dea:
    ld a, a                                       ; $4dea: $7f
    add b                                         ; $4deb: $80
    rst $30                                       ; $4dec: $f7
    ld [$1ee1], sp                                ; $4ded: $08 $e1 $1e
    ret nz                                        ; $4df0: $c0

    ccf                                           ; $4df1: $3f
    add b                                         ; $4df2: $80
    ld a, a                                       ; $4df3: $7f
    ld h, b                                       ; $4df4: $60
    ldh [$c0], a                                  ; $4df5: $e0 $c0
    ret nz                                        ; $4df7: $c0

    ret nz                                        ; $4df8: $c0

    ret nz                                        ; $4df9: $c0

jr_04e_4dfa:
    ld h, b                                       ; $4dfa: $60
    ldh [$a0], a                                  ; $4dfb: $e0 $a0
    ld h, b                                       ; $4dfd: $60
    ldh a, [$30]                                  ; $4dfe: $f0 $30
    db $10                                        ; $4e00: $10
    ldh a, [rNR10]                                ; $4e01: $f0 $10
    ldh a, [$73]                                  ; $4e03: $f0 $73
    ld a, h                                       ; $4e05: $7c
    rst $20                                       ; $4e06: $e7
    ld hl, sp-$20                                 ; $4e07: $f8 $e0
    rst $38                                       ; $4e09: $ff
    ldh a, [rIE]                                  ; $4e0a: $f0 $ff
    ld a, b                                       ; $4e0c: $78
    ld a, a                                       ; $4e0d: $7f
    jr c, jr_04e_4e4f                             ; $4e0e: $38 $3f

    jr c, jr_04e_4e51                             ; $4e10: $38 $3f

    ld [hl], b                                    ; $4e12: $70
    ld a, a                                       ; $4e13: $7f
    rst $28                                       ; $4e14: $ef
    db $10                                        ; $4e15: $10
    add a                                         ; $4e16: $87
    ld a, b                                       ; $4e17: $78
    inc bc                                        ; $4e18: $03
    db $fc                                        ; $4e19: $fc
    ld bc, $00fe                                  ; $4e1a: $01 $fe $00
    rst $38                                       ; $4e1d: $ff
    nop                                           ; $4e1e: $00
    rst $38                                       ; $4e1f: $ff
    nop                                           ; $4e20: $00
    rst $38                                       ; $4e21: $ff
    ld h, b                                       ; $4e22: $60
    rst $38                                       ; $4e23: $ff
    rst $20                                       ; $4e24: $e7
    jr jr_04e_4dea                                ; $4e25: $18 $c3

    inc a                                         ; $4e27: $3c
    add c                                         ; $4e28: $81
    ld a, [hl]                                    ; $4e29: $7e
    nop                                           ; $4e2a: $00
    rst $38                                       ; $4e2b: $ff
    nop                                           ; $4e2c: $00
    rst $38                                       ; $4e2d: $ff
    nop                                           ; $4e2e: $00
    rst $38                                       ; $4e2f: $ff
    nop                                           ; $4e30: $00
    rst $38                                       ; $4e31: $ff
    nop                                           ; $4e32: $00
    rst $38                                       ; $4e33: $ff
    rst $20                                       ; $4e34: $e7
    jr jr_04e_4dfa                                ; $4e35: $18 $c3

    inc a                                         ; $4e37: $3c
    add c                                         ; $4e38: $81
    ld a, [hl]                                    ; $4e39: $7e
    nop                                           ; $4e3a: $00
    rst $38                                       ; $4e3b: $ff
    nop                                           ; $4e3c: $00
    rst $38                                       ; $4e3d: $ff
    nop                                           ; $4e3e: $00
    rst $38                                       ; $4e3f: $ff
    nop                                           ; $4e40: $00
    rst $38                                       ; $4e41: $ff
    inc bc                                        ; $4e42: $03
    rst $38                                       ; $4e43: $ff
    adc $3e                                       ; $4e44: $ce $3e
    and $1e                                       ; $4e46: $e6 $1e
    add [hl]                                      ; $4e48: $86
    ld a, [hl]                                    ; $4e49: $7e
    ld b, $fe                                     ; $4e4a: $06 $fe
    ld b, $fe                                     ; $4e4c: $06 $fe
    rlca                                          ; $4e4e: $07

jr_04e_4e4f:
    rst $38                                       ; $4e4f: $ff
    inc bc                                        ; $4e50: $03

jr_04e_4e51:
    rst $38                                       ; $4e51: $ff
    inc bc                                        ; $4e52: $03
    rst $38                                       ; $4e53: $ff
    rlca                                          ; $4e54: $07
    rlca                                          ; $4e55: $07
    ld b, $07                                     ; $4e56: $06 $07
    inc c                                         ; $4e58: $0c
    rrca                                          ; $4e59: $0f
    ld [$0c0f], sp                                ; $4e5a: $08 $0f $0c
    rrca                                          ; $4e5d: $0f
    rlca                                          ; $4e5e: $07
    rlca                                          ; $4e5f: $07
    inc bc                                        ; $4e60: $03
    inc bc                                        ; $4e61: $03
    nop                                           ; $4e62: $00
    nop                                           ; $4e63: $00
    nop                                           ; $4e64: $00
    rst $38                                       ; $4e65: $ff
    nop                                           ; $4e66: $00
    rst $38                                       ; $4e67: $ff
    nop                                           ; $4e68: $00
    rst $38                                       ; $4e69: $ff
    nop                                           ; $4e6a: $00
    rst $38                                       ; $4e6b: $ff
    ret nz                                        ; $4e6c: $c0

    rst $38                                       ; $4e6d: $ff
    pop hl                                        ; $4e6e: $e1
    rst $38                                       ; $4e6f: $ff
    or e                                          ; $4e70: $b3
    cp a                                          ; $4e71: $bf
    ld e, $1e                                     ; $4e72: $1e $1e
    nop                                           ; $4e74: $00
    rst $38                                       ; $4e75: $ff
    nop                                           ; $4e76: $00
    rst $38                                       ; $4e77: $ff
    nop                                           ; $4e78: $00
    rst $38                                       ; $4e79: $ff
    nop                                           ; $4e7a: $00
    rst $38                                       ; $4e7b: $ff
    ld [$98ff], sp                                ; $4e7c: $08 $ff $98
    rst $38                                       ; $4e7f: $ff
    db $fd                                        ; $4e80: $fd
    rst $38                                       ; $4e81: $ff
    rst $20                                       ; $4e82: $e7
    rst $20                                       ; $4e83: $e7
    nop                                           ; $4e84: $00
    rst $38                                       ; $4e85: $ff
    nop                                           ; $4e86: $00
    rst $38                                       ; $4e87: $ff
    nop                                           ; $4e88: $00
    rst $38                                       ; $4e89: $ff
    nop                                           ; $4e8a: $00
    rst $38                                       ; $4e8b: $ff
    ldh [rIE], a                                  ; $4e8c: $e0 $ff
    pop af                                        ; $4e8e: $f1
    rst $38                                       ; $4e8f: $ff
    rst $38                                       ; $4e90: $ff
    rst $38                                       ; $4e91: $ff
    rst $38                                       ; $4e92: $ff
    rst $38                                       ; $4e93: $ff
    nop                                           ; $4e94: $00
    rst $38                                       ; $4e95: $ff
    nop                                           ; $4e96: $00
    rst $38                                       ; $4e97: $ff
    nop                                           ; $4e98: $00
    rst $38                                       ; $4e99: $ff
    nop                                           ; $4e9a: $00
    rst $38                                       ; $4e9b: $ff
    add h                                         ; $4e9c: $84
    rst $38                                       ; $4e9d: $ff
    add $ff                                       ; $4e9e: $c6 $ff
    rst $28                                       ; $4ea0: $ef
    rst $38                                       ; $4ea1: $ff
    ld sp, hl                                     ; $4ea2: $f9
    ld sp, hl                                     ; $4ea3: $f9
    nop                                           ; $4ea4: $00
    rst $38                                       ; $4ea5: $ff

jr_04e_4ea6:
    nop                                           ; $4ea6: $00
    rst $38                                       ; $4ea7: $ff
    ld bc, $01ff                                  ; $4ea8: $01 $ff $01
    rst $38                                       ; $4eab: $ff
    ld b, c                                       ; $4eac: $41
    rst $38                                       ; $4ead: $ff
    ld h, e                                       ; $4eae: $63
    rst $38                                       ; $4eaf: $ff
    ld [hl], e                                    ; $4eb0: $73
    rst $38                                       ; $4eb1: $ff
    sbc $de                                       ; $4eb2: $de $de
    jr nc, jr_04e_4ea6                            ; $4eb4: $30 $f0

    db $10                                        ; $4eb6: $10
    ldh a, [rNR10]                                ; $4eb7: $f0 $10
    ldh a, [$90]                                  ; $4eb9: $f0 $90
    ldh a, [$f0]                                  ; $4ebb: $f0 $f0
    ldh a, [rP1]                                  ; $4ebd: $f0 $00
    nop                                           ; $4ebf: $00
    nop                                           ; $4ec0: $00
    nop                                           ; $4ec1: $00
    nop                                           ; $4ec2: $00
    nop                                           ; $4ec3: $00
    ld h, b                                       ; $4ec4: $60
    ld a, a                                       ; $4ec5: $7f
    pop hl                                        ; $4ec6: $e1
    rst $38                                       ; $4ec7: $ff
    rst $00                                       ; $4ec8: $c7
    rst $38                                       ; $4ec9: $ff
    rst $08                                       ; $4eca: $cf
    rst $38                                       ; $4ecb: $ff
    cp $fe                                        ; $4ecc: $fe $fe
    ld a, h                                       ; $4ece: $7c
    ld a, h                                       ; $4ecf: $7c
    jr c, jr_04e_4f0a                             ; $4ed0: $38 $38

    nop                                           ; $4ed2: $00
    nop                                           ; $4ed3: $00
    ldh [rIE], a                                  ; $4ed4: $e0 $ff
    ldh a, [rIE]                                  ; $4ed6: $f0 $ff
    ldh a, [rIE]                                  ; $4ed8: $f0 $ff
    or b                                          ; $4eda: $b0
    cp a                                          ; $4edb: $bf
    ld sp, $333f                                  ; $4edc: $31 $3f $33
    ccf                                           ; $4edf: $3f
    ccf                                           ; $4ee0: $3f
    ccf                                           ; $4ee1: $3f
    ld e, $1e                                     ; $4ee2: $1e $1e
    nop                                           ; $4ee4: $00
    rst $38                                       ; $4ee5: $ff
    nop                                           ; $4ee6: $00
    rst $38                                       ; $4ee7: $ff
    pop bc                                        ; $4ee8: $c1
    rst $38                                       ; $4ee9: $ff
    jp $e7ff                                      ; $4eea: $c3 $ff $e7


    rst $38                                       ; $4eed: $ff
    rst $38                                       ; $4eee: $ff
    rst $38                                       ; $4eef: $ff
    ld a, l                                       ; $4ef0: $7d
    ld a, l                                       ; $4ef1: $7d
    jr c, jr_04e_4f2c                             ; $4ef2: $38 $38

    nop                                           ; $4ef4: $00
    rst $38                                       ; $4ef5: $ff
    nop                                           ; $4ef6: $00
    rst $38                                       ; $4ef7: $ff
    add e                                         ; $4ef8: $83
    rst $38                                       ; $4ef9: $ff
    add a                                         ; $4efa: $87
    rst $38                                       ; $4efb: $ff
    adc a                                         ; $4efc: $8f
    rst $38                                       ; $4efd: $ff
    rst $18                                       ; $4efe: $df
    rst $38                                       ; $4eff: $ff
    rst $38                                       ; $4f00: $ff
    rst $38                                       ; $4f01: $ff
    rst $38                                       ; $4f02: $ff
    rst $38                                       ; $4f03: $ff
    nop                                           ; $4f04: $00
    rst $38                                       ; $4f05: $ff
    nop                                           ; $4f06: $00
    rst $38                                       ; $4f07: $ff
    nop                                           ; $4f08: $00
    rst $38                                       ; $4f09: $ff

jr_04e_4f0a:
    add b                                         ; $4f0a: $80
    rst $38                                       ; $4f0b: $ff
    pop bc                                        ; $4f0c: $c1
    rst $38                                       ; $4f0d: $ff
    db $e3                                        ; $4f0e: $e3
    rst $38                                       ; $4f0f: $ff
    rst $38                                       ; $4f10: $ff
    rst $38                                       ; $4f11: $ff
    rst $38                                       ; $4f12: $ff
    rst $38                                       ; $4f13: $ff
    nop                                           ; $4f14: $00
    rst $38                                       ; $4f15: $ff
    nop                                           ; $4f16: $00
    rst $38                                       ; $4f17: $ff
    ld h, b                                       ; $4f18: $60
    rst $38                                       ; $4f19: $ff
    ldh a, [rIE]                                  ; $4f1a: $f0 $ff
    ldh a, [rIE]                                  ; $4f1c: $f0 $ff
    ld sp, hl                                     ; $4f1e: $f9
    rst $38                                       ; $4f1f: $ff
    rst $38                                       ; $4f20: $ff
    rst $38                                       ; $4f21: $ff
    rst $38                                       ; $4f22: $ff
    rst $38                                       ; $4f23: $ff
    nop                                           ; $4f24: $00
    rst $38                                       ; $4f25: $ff
    ld b, b                                       ; $4f26: $40
    rst $38                                       ; $4f27: $ff
    pop hl                                        ; $4f28: $e1
    rst $38                                       ; $4f29: $ff
    pop af                                        ; $4f2a: $f1
    rst $38                                       ; $4f2b: $ff

jr_04e_4f2c:
    ld sp, hl                                     ; $4f2c: $f9
    rst $38                                       ; $4f2d: $ff
    rst $38                                       ; $4f2e: $ff
    rst $38                                       ; $4f2f: $ff
    rst $18                                       ; $4f30: $df
    rst $18                                       ; $4f31: $df
    adc [hl]                                      ; $4f32: $8e
    adc [hl]                                      ; $4f33: $8e
    inc bc                                        ; $4f34: $03
    rst $38                                       ; $4f35: $ff
    inc bc                                        ; $4f36: $03
    rst $38                                       ; $4f37: $ff
    rlca                                          ; $4f38: $07
    rst $38                                       ; $4f39: $ff
    add [hl]                                      ; $4f3a: $86
    cp $c6                                        ; $4f3b: $fe $c6
    cp $ee                                        ; $4f3d: $fe $ee
    cp $7c                                        ; $4f3f: $fe $7c
    ld a, h                                       ; $4f41: $7c
    jr c, jr_04e_4f7c                             ; $4f42: $38 $38

    add e                                         ; $4f44: $83
    rst $38                                       ; $4f45: $ff
    jp $f3ff                                      ; $4f46: $c3 $ff $f3


    rst $38                                       ; $4f49: $ff
    ld a, a                                       ; $4f4a: $7f
    ld a, a                                       ; $4f4b: $7f
    ld e, $1e                                     ; $4f4c: $1e $1e
    nop                                           ; $4f4e: $00
    nop                                           ; $4f4f: $00
    nop                                           ; $4f50: $00
    nop                                           ; $4f51: $00
    nop                                           ; $4f52: $00
    nop                                           ; $4f53: $00
    db $10                                        ; $4f54: $10
    db $10                                        ; $4f55: $10
    jr z, jr_04e_4f90                             ; $4f56: $28 $38

    inc a                                         ; $4f58: $3c
    inc h                                         ; $4f59: $24
    inc l                                         ; $4f5a: $2c
    inc a                                         ; $4f5b: $3c
    ld d, h                                       ; $4f5c: $54
    ld a, h                                       ; $4f5d: $7c
    ld l, d                                       ; $4f5e: $6a
    ld d, [hl]                                    ; $4f5f: $56
    push de                                       ; $4f60: $d5
    db $eb                                        ; $4f61: $eb
    xor e                                         ; $4f62: $ab
    rst $38                                       ; $4f63: $ff
    ld [$1408], sp                                ; $4f64: $08 $08 $14
    inc e                                         ; $4f67: $1c
    inc d                                         ; $4f68: $14
    inc e                                         ; $4f69: $1c
    inc e                                         ; $4f6a: $1c
    inc d                                         ; $4f6b: $14
    ld a, [hl+]                                   ; $4f6c: $2a
    ld [hl], $77                                  ; $4f6d: $36 $77
    ld l, e                                       ; $4f6f: $6b
    ld b, c                                       ; $4f70: $41
    ld a, a                                       ; $4f71: $7f
    pop bc                                        ; $4f72: $c1
    rst $38                                       ; $4f73: $ff
    ld [hl], b                                    ; $4f74: $70
    ld a, a                                       ; $4f75: $7f
    ldh [rIE], a                                  ; $4f76: $e0 $ff
    jp $cfff                                      ; $4f78: $c3 $ff $cf


    rst $38                                       ; $4f7b: $ff

jr_04e_4f7c:
    db $fd                                        ; $4f7c: $fd
    rst $38                                       ; $4f7d: $ff
    ld a, b                                       ; $4f7e: $78
    ld a, a                                       ; $4f7f: $7f
    ld [hl], b                                    ; $4f80: $70
    ld a, a                                       ; $4f81: $7f
    ldh [rIE], a                                  ; $4f82: $e0 $ff
    nop                                           ; $4f84: $00
    rst $38                                       ; $4f85: $ff
    add b                                         ; $4f86: $80
    rst $38                                       ; $4f87: $ff
    sbc b                                         ; $4f88: $98
    rst $38                                       ; $4f89: $ff
    cp h                                          ; $4f8a: $bc
    rst $38                                       ; $4f8b: $ff
    cp $ff                                        ; $4f8c: $fe $ff
    rst $20                                       ; $4f8e: $e7
    rst $38                                       ; $4f8f: $ff

jr_04e_4f90:
    inc bc                                        ; $4f90: $03
    rst $38                                       ; $4f91: $ff
    nop                                           ; $4f92: $00
    rst $38                                       ; $4f93: $ff
    nop                                           ; $4f94: $00
    rst $38                                       ; $4f95: $ff
    nop                                           ; $4f96: $00
    rst $38                                       ; $4f97: $ff
    nop                                           ; $4f98: $00
    rst $38                                       ; $4f99: $ff
    jr c, @+$01                                   ; $4f9a: $38 $ff

    ld a, h                                       ; $4f9c: $7c
    rst $38                                       ; $4f9d: $ff
    rst $20                                       ; $4f9e: $e7
    rst $38                                       ; $4f9f: $ff
    jp Jump_000_00ff                              ; $4fa0: $c3 $ff $00


    rst $38                                       ; $4fa3: $ff
    nop                                           ; $4fa4: $00
    rst $38                                       ; $4fa5: $ff
    ld bc, $31ff                                  ; $4fa6: $01 $ff $31
    rst $38                                       ; $4fa9: $ff
    ld a, c                                       ; $4faa: $79
    rst $38                                       ; $4fab: $ff
    db $fd                                        ; $4fac: $fd
    rst $38                                       ; $4fad: $ff
    rst $08                                       ; $4fae: $cf
    rst $38                                       ; $4faf: $ff
    add a                                         ; $4fb0: $87
    rst $38                                       ; $4fb1: $ff
    nop                                           ; $4fb2: $00
    rst $38                                       ; $4fb3: $ff
    ld c, $fe                                     ; $4fb4: $0e $fe
    add [hl]                                      ; $4fb6: $86
    cp $c3                                        ; $4fb7: $fe $c3
    rst $38                                       ; $4fb9: $ff
    di                                            ; $4fba: $f3
    rst $38                                       ; $4fbb: $ff
    cp a                                          ; $4fbc: $bf
    rst $38                                       ; $4fbd: $ff
    sbc [hl]                                      ; $4fbe: $9e
    cp $1c                                        ; $4fbf: $fe $1c
    db $fc                                        ; $4fc1: $fc
    ld c, $fe                                     ; $4fc2: $0e $fe
    nop                                           ; $4fc4: $00
    nop                                           ; $4fc5: $00
    nop                                           ; $4fc6: $00
    nop                                           ; $4fc7: $00
    ld bc, $0101                                  ; $4fc8: $01 $01 $01
    ld bc, $0000                                  ; $4fcb: $01 $00 $00
    ld bc, $0101                                  ; $4fce: $01 $01 $01
    ld bc, $0101                                  ; $4fd1: $01 $01 $01
    ld d, [hl]                                    ; $4fd4: $56
    ld a, [hl]                                    ; $4fd5: $7e
    xor e                                         ; $4fd6: $ab
    rst $10                                       ; $4fd7: $d7
    push de                                       ; $4fd8: $d5
    xor e                                         ; $4fd9: $ab
    ld bc, $aaff                                  ; $4fda: $01 $ff $aa
    cp $55                                        ; $4fdd: $fe $55
    rst $38                                       ; $4fdf: $ff
    xor e                                         ; $4fe0: $ab
    ld d, l                                       ; $4fe1: $55
    ld d, l                                       ; $4fe2: $55
    xor e                                         ; $4fe3: $ab
    nop                                           ; $4fe4: $00
    nop                                           ; $4fe5: $00
    nop                                           ; $4fe6: $00
    nop                                           ; $4fe7: $00
    ld bc, $0101                                  ; $4fe8: $01 $01 $01
    ld bc, $0302                                  ; $4feb: $01 $02 $03
    inc bc                                        ; $4fee: $03
    ld [bc], a                                    ; $4fef: $02
    ld bc, $0201                                  ; $4ff0: $01 $01 $02
    inc bc                                        ; $4ff3: $03
    xor d                                         ; $4ff4: $aa
    rst $38                                       ; $4ff5: $ff
    ld d, l                                       ; $4ff6: $55
    ld a, a                                       ; $4ff7: $7f
    add b                                         ; $4ff8: $80
    rst $38                                       ; $4ff9: $ff
    ld b, b                                       ; $4ffa: $40
    rst $38                                       ; $4ffb: $ff
    ld h, [hl]                                    ; $4ffc: $66
    sbc c                                         ; $4ffd: $99
    sbc c                                         ; $4ffe: $99
    ld h, [hl]                                    ; $4fff: $66
    nop                                           ; $5000: $00
    rst $38                                       ; $5001: $ff
    ld l, d                                       ; $5002: $6a
    rst $38                                       ; $5003: $ff
    add b                                         ; $5004: $80
    add b                                         ; $5005: $80
    add b                                         ; $5006: $80
    add b                                         ; $5007: $80
    add b                                         ; $5008: $80
    add b                                         ; $5009: $80
    ld b, b                                       ; $500a: $40
    ret nz                                        ; $500b: $c0

    ld h, b                                       ; $500c: $60
    ldh [$a0], a                                  ; $500d: $e0 $a0
    ld h, b                                       ; $500f: $60
    ldh [$e0], a                                  ; $5010: $e0 $e0
    add b                                         ; $5012: $80
    add b                                         ; $5013: $80
    nop                                           ; $5014: $00
    nop                                           ; $5015: $00
    nop                                           ; $5016: $00
    nop                                           ; $5017: $00
    nop                                           ; $5018: $00
    nop                                           ; $5019: $00
    nop                                           ; $501a: $00
    nop                                           ; $501b: $00
    ld bc, $0301                                  ; $501c: $01 $01 $03
    inc bc                                        ; $501f: $03
    rlca                                          ; $5020: $07
    rlca                                          ; $5021: $07
    ld b, $07                                     ; $5022: $06 $07
    ret nz                                        ; $5024: $c0

    rst $38                                       ; $5025: $ff
    ret nz                                        ; $5026: $c0

    rst $38                                       ; $5027: $ff
    ldh [rIE], a                                  ; $5028: $e0 $ff
    ldh [rIE], a                                  ; $502a: $e0 $ff
    ret nz                                        ; $502c: $c0

    rst $38                                       ; $502d: $ff
    add b                                         ; $502e: $80
    rst $38                                       ; $502f: $ff
    nop                                           ; $5030: $00
    rst $38                                       ; $5031: $ff
    nop                                           ; $5032: $00
    rst $38                                       ; $5033: $ff
    rlca                                          ; $5034: $07
    rst $38                                       ; $5035: $ff
    rrca                                          ; $5036: $0f
    rst $38                                       ; $5037: $ff
    ld e, $fe                                     ; $5038: $1e $fe
    inc e                                         ; $503a: $1c
    db $fc                                        ; $503b: $fc
    ld c, $fe                                     ; $503c: $0e $fe
    rlca                                          ; $503e: $07
    rst $38                                       ; $503f: $ff
    inc bc                                        ; $5040: $03
    rst $38                                       ; $5041: $ff
    inc bc                                        ; $5042: $03
    rst $38                                       ; $5043: $ff
    ld [bc], a                                    ; $5044: $02
    inc bc                                        ; $5045: $03
    ld [bc], a                                    ; $5046: $02
    inc bc                                        ; $5047: $03
    ld bc, $0201                                  ; $5048: $01 $01 $02
    inc bc                                        ; $504b: $03
    ld [bc], a                                    ; $504c: $02
    inc bc                                        ; $504d: $03
    rlca                                          ; $504e: $07
    ld b, $04                                     ; $504f: $06 $04
    rlca                                          ; $5051: $07
    inc bc                                        ; $5052: $03
    inc bc                                        ; $5053: $03
    nop                                           ; $5054: $00
    rst $38                                       ; $5055: $ff
    xor d                                         ; $5056: $aa
    rst $38                                       ; $5057: $ff
    ld d, l                                       ; $5058: $55
    rst $38                                       ; $5059: $ff
    nop                                           ; $505a: $00
    rst $38                                       ; $505b: $ff
    xor d                                         ; $505c: $aa
    ld d, l                                       ; $505d: $55
    ld d, l                                       ; $505e: $55
    xor d                                         ; $505f: $aa
    xor d                                         ; $5060: $aa
    rst $38                                       ; $5061: $ff
    ld d, l                                       ; $5062: $55
    rst $38                                       ; $5063: $ff
    add b                                         ; $5064: $80
    add b                                         ; $5065: $80
    add b                                         ; $5066: $80
    add b                                         ; $5067: $80
    nop                                           ; $5068: $00
    nop                                           ; $5069: $00
    add b                                         ; $506a: $80
    add b                                         ; $506b: $80
    ld b, b                                       ; $506c: $40
    ret nz                                        ; $506d: $c0

    ld b, b                                       ; $506e: $40
    ret nz                                        ; $506f: $c0

    ret nz                                        ; $5070: $c0

    ret nz                                        ; $5071: $c0

    add b                                         ; $5072: $80
    add b                                         ; $5073: $80
    inc bc                                        ; $5074: $03
    inc bc                                        ; $5075: $03
    ld b, $07                                     ; $5076: $06 $07
    inc b                                         ; $5078: $04
    rlca                                          ; $5079: $07
    ld [bc], a                                    ; $507a: $02
    inc bc                                        ; $507b: $03
    dec b                                         ; $507c: $05
    ld b, $06                                     ; $507d: $06 $06
    dec b                                         ; $507f: $05
    ld a, [bc]                                    ; $5080: $0a
    rrca                                          ; $5081: $0f
    inc c                                         ; $5082: $0c
    rrca                                          ; $5083: $0f
    sbc l                                         ; $5084: $9d
    rst $38                                       ; $5085: $ff
    nop                                           ; $5086: $00
    rst $38                                       ; $5087: $ff

jr_04e_5088:
    nop                                           ; $5088: $00

jr_04e_5089:
    rst $38                                       ; $5089: $ff
    nop                                           ; $508a: $00
    rst $38                                       ; $508b: $ff
    sbc c                                         ; $508c: $99
    ld h, [hl]                                    ; $508d: $66
    ld h, [hl]                                    ; $508e: $66
    sbc c                                         ; $508f: $99
    nop                                           ; $5090: $00
    rst $38                                       ; $5091: $ff
    nop                                           ; $5092: $00
    rst $38                                       ; $5093: $ff
    ret nz                                        ; $5094: $c0

    ret nz                                        ; $5095: $c0

    jr nc, jr_04e_5088                            ; $5096: $30 $f0

    db $10                                        ; $5098: $10
    ldh a, [rNR41]                                ; $5099: $f0 $20
    ldh [$90], a                                  ; $509b: $e0 $90
    ld [hl], b                                    ; $509d: $70
    ld [hl], b                                    ; $509e: $70
    sub b                                         ; $509f: $90
    ld [$18f8], sp                                ; $50a0: $08 $f8 $18
    ld hl, sp+$07                                 ; $50a3: $f8 $07
    rlca                                          ; $50a5: $07
    inc bc                                        ; $50a6: $03
    inc bc                                        ; $50a7: $03
    rrca                                          ; $50a8: $0f
    rrca                                          ; $50a9: $0f
    ld e, $1f                                     ; $50aa: $1e $1f
    jr c, jr_04e_50ed                             ; $50ac: $38 $3f

    jr nc, jr_04e_50ef                            ; $50ae: $30 $3f

    jr c, jr_04e_50f1                             ; $50b0: $38 $3f

    ld e, $1f                                     ; $50b2: $1e $1f
    inc bc                                        ; $50b4: $03
    db $fc                                        ; $50b5: $fc
    rst $00                                       ; $50b6: $c7
    ld hl, sp-$71                                 ; $50b7: $f8 $8f
    ldh a, [$1f]                                  ; $50b9: $f0 $1f
    ldh [$3e], a                                  ; $50bb: $e0 $3e
    pop bc                                        ; $50bd: $c1
    ld a, h                                       ; $50be: $7c
    add e                                         ; $50bf: $83
    jr c, jr_04e_5089                             ; $50c0: $38 $c7

    nop                                           ; $50c2: $00
    rst $38                                       ; $50c3: $ff
    add c                                         ; $50c4: $81
    ld a, [hl]                                    ; $50c5: $7e
    jp $e73c                                      ; $50c6: $c3 $3c $e7


    jr @+$01                                      ; $50c9: $18 $ff

    nop                                           ; $50cb: $00
    ld a, [hl]                                    ; $50cc: $7e
    add c                                         ; $50cd: $81
    inc a                                         ; $50ce: $3c
    jp $e718                                      ; $50cf: $c3 $18 $e7


    nop                                           ; $50d2: $00
    rst $38                                       ; $50d3: $ff
    rst $00                                       ; $50d4: $c7
    ccf                                           ; $50d5: $3f
    db $e3                                        ; $50d6: $e3
    rra                                           ; $50d7: $1f
    ldh a, [rIF]                                  ; $50d8: $f0 $0f
    ld hl, sp+$07                                 ; $50da: $f8 $07
    ld a, h                                       ; $50dc: $7c
    add e                                         ; $50dd: $83
    ld a, $c1                                     ; $50de: $3e $c1
    inc e                                         ; $50e0: $1c
    db $e3                                        ; $50e1: $e3
    nop                                           ; $50e2: $00
    rst $38                                       ; $50e3: $ff

jr_04e_50e4:
    add b                                         ; $50e4: $80
    add b                                         ; $50e5: $80
    ret nz                                        ; $50e6: $c0

    ret nz                                        ; $50e7: $c0

    ldh a, [$f0]                                  ; $50e8: $f0 $f0
    jr c, jr_04e_50e4                             ; $50ea: $38 $f8

    inc e                                         ; $50ec: $1c

jr_04e_50ed:
    db $fc                                        ; $50ed: $fc
    inc c                                         ; $50ee: $0c

jr_04e_50ef:
    db $fc                                        ; $50ef: $fc
    inc a                                         ; $50f0: $3c

jr_04e_50f1:
    db $fc                                        ; $50f1: $fc
    ld hl, sp-$08                                 ; $50f2: $f8 $f8
    dec b                                         ; $50f4: $05
    rlca                                          ; $50f5: $07
    ld a, [bc]                                    ; $50f6: $0a
    rrca                                          ; $50f7: $0f
    inc e                                         ; $50f8: $1c
    rra                                           ; $50f9: $1f
    inc d                                         ; $50fa: $14
    rra                                           ; $50fb: $1f
    ld [$190f], sp                                ; $50fc: $08 $0f $19
    ld e, $36                                     ; $50ff: $1e $36
    add hl, sp                                    ; $5101: $39
    jr nz, jr_04e_5143                            ; $5102: $20 $3f

    ld c, h                                       ; $5104: $4c
    rst $38                                       ; $5105: $ff
    or e                                          ; $5106: $b3
    rst $38                                       ; $5107: $ff
    nop                                           ; $5108: $00
    rst $38                                       ; $5109: $ff
    nop                                           ; $510a: $00
    rst $38                                       ; $510b: $ff
    nop                                           ; $510c: $00
    rst $38                                       ; $510d: $ff
    sbc c                                         ; $510e: $99
    ld h, [hl]                                    ; $510f: $66
    ld h, [hl]                                    ; $5110: $66
    sbc c                                         ; $5111: $99
    nop                                           ; $5112: $00
    rst $38                                       ; $5113: $ff
    ret nc                                        ; $5114: $d0

    ldh a, [$b0]                                  ; $5115: $f0 $b0
    ldh a, [rNR23]                                ; $5117: $f0 $18
    ld hl, sp+$08                                 ; $5119: $f8 $08
    ld hl, sp+$08                                 ; $511b: $f8 $08
    ld hl, sp-$6c                                 ; $511d: $f8 $94
    ld l, h                                       ; $511f: $6c
    ld h, [hl]                                    ; $5120: $66
    sbc [hl]                                      ; $5121: $9e
    ld [bc], a                                    ; $5122: $02
    cp $0e                                        ; $5123: $fe $0e
    rrca                                          ; $5125: $0f
    inc e                                         ; $5126: $1c
    rra                                           ; $5127: $1f
    jr c, jr_04e_5169                             ; $5128: $38 $3f

    ld [hl], b                                    ; $512a: $70
    ld a, a                                       ; $512b: $7f
    ld h, c                                       ; $512c: $61
    ld a, a                                       ; $512d: $7f
    ld a, a                                       ; $512e: $7f
    ld a, a                                       ; $512f: $7f
    ccf                                           ; $5130: $3f
    ccf                                           ; $5131: $3f
    inc bc                                        ; $5132: $03
    inc bc                                        ; $5133: $03
    nop                                           ; $5134: $00
    rst $38                                       ; $5135: $ff
    nop                                           ; $5136: $00
    rst $38                                       ; $5137: $ff
    nop                                           ; $5138: $00
    rst $38                                       ; $5139: $ff
    ld b, b                                       ; $513a: $40
    rst $38                                       ; $513b: $ff
    ret nz                                        ; $513c: $c0

    rst $38                                       ; $513d: $ff
    add h                                         ; $513e: $84
    rst $38                                       ; $513f: $ff
    inc c                                         ; $5140: $0c
    rst $38                                       ; $5141: $ff
    inc a                                         ; $5142: $3c

jr_04e_5143:
    rst $38                                       ; $5143: $ff
    nop                                           ; $5144: $00
    rst $38                                       ; $5145: $ff
    nop                                           ; $5146: $00
    rst $38                                       ; $5147: $ff
    nop                                           ; $5148: $00
    rst $38                                       ; $5149: $ff
    nop                                           ; $514a: $00
    rst $38                                       ; $514b: $ff
    nop                                           ; $514c: $00
    rst $38                                       ; $514d: $ff
    nop                                           ; $514e: $00
    rst $38                                       ; $514f: $ff
    nop                                           ; $5150: $00
    rst $38                                       ; $5151: $ff
    ld h, h                                       ; $5152: $64
    rst $38                                       ; $5153: $ff
    nop                                           ; $5154: $00
    rst $38                                       ; $5155: $ff
    nop                                           ; $5156: $00
    rst $38                                       ; $5157: $ff
    nop                                           ; $5158: $00
    rst $38                                       ; $5159: $ff
    nop                                           ; $515a: $00
    rst $38                                       ; $515b: $ff
    nop                                           ; $515c: $00
    rst $38                                       ; $515d: $ff
    nop                                           ; $515e: $00
    rst $38                                       ; $515f: $ff
    db $10                                        ; $5160: $10
    rst $38                                       ; $5161: $ff
    jr c, @+$01                                   ; $5162: $38 $ff

    nop                                           ; $5164: $00
    rst $38                                       ; $5165: $ff
    nop                                           ; $5166: $00
    rst $38                                       ; $5167: $ff
    nop                                           ; $5168: $00

jr_04e_5169:
    rst $38                                       ; $5169: $ff
    nop                                           ; $516a: $00
    rst $38                                       ; $516b: $ff
    nop                                           ; $516c: $00
    rst $38                                       ; $516d: $ff
    nop                                           ; $516e: $00
    rst $38                                       ; $516f: $ff
    nop                                           ; $5170: $00
    rst $38                                       ; $5171: $ff
    ld b, h                                       ; $5172: $44
    rst $38                                       ; $5173: $ff
    nop                                           ; $5174: $00
    rst $38                                       ; $5175: $ff
    nop                                           ; $5176: $00
    rst $38                                       ; $5177: $ff
    nop                                           ; $5178: $00
    rst $38                                       ; $5179: $ff
    ld [bc], a                                    ; $517a: $02
    rst $38                                       ; $517b: $ff
    inc bc                                        ; $517c: $03
    rst $38                                       ; $517d: $ff
    ld b, c                                       ; $517e: $41
    rst $38                                       ; $517f: $ff
    ld [hl], c                                    ; $5180: $71
    rst $38                                       ; $5181: $ff
    ccf                                           ; $5182: $3f
    rst $38                                       ; $5183: $ff
    ldh [$e0], a                                  ; $5184: $e0 $e0
    ld [hl], b                                    ; $5186: $70
    ldh a, [$30]                                  ; $5187: $f0 $30
    ldh a, [rNR23]                                ; $5189: $f0 $18
    ld hl, sp+$08                                 ; $518b: $f8 $08
    ld hl, sp-$08                                 ; $518d: $f8 $f8
    ld hl, sp-$10                                 ; $518f: $f8 $f0
    ldh a, [$c0]                                  ; $5191: $f0 $c0
    ret nz                                        ; $5193: $c0

    db $10                                        ; $5194: $10
    rra                                           ; $5195: $1f
    jr nz, jr_04e_51d7                            ; $5196: $20 $3f

    jr nc, jr_04e_51d9                            ; $5198: $30 $3f

    inc c                                         ; $519a: $0c
    rrca                                          ; $519b: $0f
    inc sp                                        ; $519c: $33
    ccf                                           ; $519d: $3f
    jr nz, jr_04e_51df                            ; $519e: $20 $3f

    db $10                                        ; $51a0: $10
    rra                                           ; $51a1: $1f
    ld h, b                                       ; $51a2: $60
    ld a, a                                       ; $51a3: $7f
    nop                                           ; $51a4: $00
    rst $38                                       ; $51a5: $ff
    nop                                           ; $51a6: $00
    rst $38                                       ; $51a7: $ff
    nop                                           ; $51a8: $00
    rst $38                                       ; $51a9: $ff
    call z, Call_000_33ff                         ; $51aa: $cc $ff $33
    rst $38                                       ; $51ad: $ff
    nop                                           ; $51ae: $00
    rst $38                                       ; $51af: $ff
    nop                                           ; $51b0: $00
    rst $38                                       ; $51b1: $ff
    nop                                           ; $51b2: $00
    rst $38                                       ; $51b3: $ff
    inc b                                         ; $51b4: $04
    db $fc                                        ; $51b5: $fc

jr_04e_51b6:
    ld b, $fe                                     ; $51b6: $06 $fe
    ld [bc], a                                    ; $51b8: $02
    cp $cc                                        ; $51b9: $fe $cc
    db $fc                                        ; $51bb: $fc
    jr c, jr_04e_51b6                             ; $51bc: $38 $f8

    ld [$06f8], sp                                ; $51be: $08 $f8 $06
    cp $02                                        ; $51c1: $fe $02
    cp $03                                        ; $51c3: $fe $03
    inc bc                                        ; $51c5: $03
    ld bc, $0001                                  ; $51c6: $01 $01 $00
    nop                                           ; $51c9: $00
    ld bc, $0301                                  ; $51ca: $01 $01 $03
    inc bc                                        ; $51cd: $03
    rlca                                          ; $51ce: $07
    rlca                                          ; $51cf: $07
    ld c, $0f                                     ; $51d0: $0e $0f
    inc a                                         ; $51d2: $3c
    ccf                                           ; $51d3: $3f
    db $fc                                        ; $51d4: $fc
    rst $38                                       ; $51d5: $ff
    db $ed                                        ; $51d6: $ed

jr_04e_51d7:
    rst $38                                       ; $51d7: $ff
    rst $28                                       ; $51d8: $ef

jr_04e_51d9:
    rst $38                                       ; $51d9: $ff
    rst $00                                       ; $51da: $c7
    rst $38                                       ; $51db: $ff
    add b                                         ; $51dc: $80
    rst $38                                       ; $51dd: $ff
    nop                                           ; $51de: $00

jr_04e_51df:
    rst $38                                       ; $51df: $ff
    nop                                           ; $51e0: $00
    rst $38                                       ; $51e1: $ff
    nop                                           ; $51e2: $00
    rst $38                                       ; $51e3: $ff
    xor $ff                                       ; $51e4: $ee $ff
    cp $ff                                        ; $51e6: $fe $ff
    cp a                                          ; $51e8: $bf
    rst $38                                       ; $51e9: $ff
    dec sp                                        ; $51ea: $3b
    rst $38                                       ; $51eb: $ff
    ld bc, $00ff                                  ; $51ec: $01 $ff $00
    rst $38                                       ; $51ef: $ff
    nop                                           ; $51f0: $00
    rst $38                                       ; $51f1: $ff
    nop                                           ; $51f2: $00
    rst $38                                       ; $51f3: $ff
    inc a                                         ; $51f4: $3c
    rst $38                                       ; $51f5: $ff
    ld a, [hl]                                    ; $51f6: $7e
    rst $38                                       ; $51f7: $ff
    rst $28                                       ; $51f8: $ef
    rst $38                                       ; $51f9: $ff
    rst $00                                       ; $51fa: $c7
    rst $38                                       ; $51fb: $ff
    add e                                         ; $51fc: $83
    rst $38                                       ; $51fd: $ff
    nop                                           ; $51fe: $00
    rst $38                                       ; $51ff: $ff
    nop                                           ; $5200: $00
    rst $38                                       ; $5201: $ff
    nop                                           ; $5202: $00
    rst $38                                       ; $5203: $ff
    ld h, [hl]                                    ; $5204: $66
    rst $38                                       ; $5205: $ff
    rst $38                                       ; $5206: $ff
    rst $38                                       ; $5207: $ff
    rst $38                                       ; $5208: $ff
    rst $38                                       ; $5209: $ff
    db $e3                                        ; $520a: $e3
    rst $38                                       ; $520b: $ff
    add b                                         ; $520c: $80
    rst $38                                       ; $520d: $ff
    nop                                           ; $520e: $00
    rst $38                                       ; $520f: $ff
    nop                                           ; $5210: $00
    rst $38                                       ; $5211: $ff
    nop                                           ; $5212: $00
    rst $38                                       ; $5213: $ff
    ccf                                           ; $5214: $3f
    rst $38                                       ; $5215: $ff
    ccf                                           ; $5216: $3f
    rst $38                                       ; $5217: $ff
    rst $38                                       ; $5218: $ff
    rst $38                                       ; $5219: $ff
    ei                                            ; $521a: $fb
    rst $38                                       ; $521b: $ff
    pop af                                        ; $521c: $f1
    rst $38                                       ; $521d: $ff
    nop                                           ; $521e: $00
    rst $38                                       ; $521f: $ff
    nop                                           ; $5220: $00
    rst $38                                       ; $5221: $ff
    nop                                           ; $5222: $00
    rst $38                                       ; $5223: $ff
    nop                                           ; $5224: $00
    nop                                           ; $5225: $00
    nop                                           ; $5226: $00
    nop                                           ; $5227: $00
    add b                                         ; $5228: $80
    add b                                         ; $5229: $80
    add b                                         ; $522a: $80
    add b                                         ; $522b: $80
    ret nz                                        ; $522c: $c0

    ret nz                                        ; $522d: $c0

    ldh [$e0], a                                  ; $522e: $e0 $e0
    ld [hl], b                                    ; $5230: $70
    ldh a, [$38]                                  ; $5231: $f0 $38
    ld hl, sp+$40                                 ; $5233: $f8 $40
    ld a, a                                       ; $5235: $7f
    jr nz, @+$41                                  ; $5236: $20 $3f

    ld e, c                                       ; $5238: $59
    ld h, [hl]                                    ; $5239: $66
    and [hl]                                      ; $523a: $a6
    reti                                          ; $523b: $d9


    ret nc                                        ; $523c: $d0

    rst $38                                       ; $523d: $ff
    xor b                                         ; $523e: $a8
    rst $38                                       ; $523f: $ff
    di                                            ; $5240: $f3
    rst $38                                       ; $5241: $ff
    rra                                           ; $5242: $1f
    rra                                           ; $5243: $1f
    nop                                           ; $5244: $00
    rst $38                                       ; $5245: $ff
    nop                                           ; $5246: $00
    rst $38                                       ; $5247: $ff
    sbc c                                         ; $5248: $99
    ld h, [hl]                                    ; $5249: $66
    ld h, [hl]                                    ; $524a: $66
    sbc c                                         ; $524b: $99
    nop                                           ; $524c: $00
    rst $38                                       ; $524d: $ff
    nop                                           ; $524e: $00
    rst $38                                       ; $524f: $ff
    ld sp, $ffff                                  ; $5250: $31 $ff $ff
    rst $38                                       ; $5253: $ff
    inc b                                         ; $5254: $04
    db $fc                                        ; $5255: $fc
    ld [bc], a                                    ; $5256: $02
    cp $9a                                        ; $5257: $fe $9a
    ld h, [hl]                                    ; $5259: $66
    ld h, a                                       ; $525a: $67
    sbc c                                         ; $525b: $99
    ld bc, $03ff                                  ; $525c: $01 $ff $03
    rst $38                                       ; $525f: $ff
    adc [hl]                                      ; $5260: $8e
    cp $f8                                        ; $5261: $fe $f8
    ld hl, sp+$78                                 ; $5263: $f8 $78
    ld a, a                                       ; $5265: $7f
    ld h, b                                       ; $5266: $60
    ld a, a                                       ; $5267: $7f
    ret nz                                        ; $5268: $c0

    rst $38                                       ; $5269: $ff
    ret nz                                        ; $526a: $c0

    rst $38                                       ; $526b: $ff
    ldh [rIE], a                                  ; $526c: $e0 $ff
    ld [hl], b                                    ; $526e: $70
    ld a, a                                       ; $526f: $7f
    jr c, @+$41                                   ; $5270: $38 $3f

    jr c, jr_04e_52b3                             ; $5272: $38 $3f

    inc e                                         ; $5274: $1c
    db $fc                                        ; $5275: $fc
    ld c, $fe                                     ; $5276: $0e $fe
    rlca                                          ; $5278: $07
    rst $38                                       ; $5279: $ff
    rlca                                          ; $527a: $07
    rst $38                                       ; $527b: $ff
    rrca                                          ; $527c: $0f
    rst $38                                       ; $527d: $ff
    ld e, $fe                                     ; $527e: $1e $fe
    inc a                                         ; $5280: $3c
    db $fc                                        ; $5281: $fc
    inc e                                         ; $5282: $1c
    db $fc                                        ; $5283: $fc
    nop                                           ; $5284: $00
    nop                                           ; $5285: $00
    nop                                           ; $5286: $00
    nop                                           ; $5287: $00
    ld bc, $0301                                  ; $5288: $01 $01 $03
    inc bc                                        ; $528b: $03
    inc bc                                        ; $528c: $03
    inc bc                                        ; $528d: $03
    inc bc                                        ; $528e: $03
    inc bc                                        ; $528f: $03
    inc bc                                        ; $5290: $03
    inc bc                                        ; $5291: $03
    ld bc, $7701                                  ; $5292: $01 $01 $77
    ld a, b                                       ; $5295: $78
    rst $28                                       ; $5296: $ef
    ldh a, [$df]                                  ; $5297: $f0 $df
    ldh [$b9], a                                  ; $5299: $e0 $b9
    add $20                                       ; $529b: $c6 $20
    rst $18                                       ; $529d: $df
    nop                                           ; $529e: $00
    rst $38                                       ; $529f: $ff
    ret nz                                        ; $52a0: $c0

    rst $38                                       ; $52a1: $ff
    ret nz                                        ; $52a2: $c0

    rst $38                                       ; $52a3: $ff
    adc $3e                                       ; $52a4: $ce $3e
    rst $20                                       ; $52a6: $e7
    rra                                           ; $52a7: $1f
    di                                            ; $52a8: $f3
    rrca                                          ; $52a9: $0f
    add hl, sp                                    ; $52aa: $39
    rst $00                                       ; $52ab: $c7
    inc c                                         ; $52ac: $0c
    di                                            ; $52ad: $f3
    nop                                           ; $52ae: $00
    rst $38                                       ; $52af: $ff
    ld bc, $03ff                                  ; $52b0: $01 $ff $03

jr_04e_52b3:
    rst $38                                       ; $52b3: $ff
    ld bc, $0101                                  ; $52b4: $01 $01 $01
    ld bc, $0101                                  ; $52b7: $01 $01 $01
    ld bc, $0001                                  ; $52ba: $01 $01 $00
    nop                                           ; $52bd: $00
    nop                                           ; $52be: $00
    nop                                           ; $52bf: $00
    nop                                           ; $52c0: $00
    nop                                           ; $52c1: $00
    nop                                           ; $52c2: $00
    nop                                           ; $52c3: $00
    add b                                         ; $52c4: $80
    rst $38                                       ; $52c5: $ff
    add [hl]                                      ; $52c6: $86
    rst $38                                       ; $52c7: $ff
    sbc [hl]                                      ; $52c8: $9e
    rst $38                                       ; $52c9: $ff

Jump_04e_52ca:
    cp $ff                                        ; $52ca: $fe $ff
    or $f7                                        ; $52cc: $f6 $f7
    ld b, $07                                     ; $52ce: $06 $07
    rlca                                          ; $52d0: $07
    rlca                                          ; $52d1: $07
    inc bc                                        ; $52d2: $03
    inc bc                                        ; $52d3: $03
    nop                                           ; $52d4: $00
    rst $38                                       ; $52d5: $ff
    nop                                           ; $52d6: $00
    rst $38                                       ; $52d7: $ff
    nop                                           ; $52d8: $00
    rst $38                                       ; $52d9: $ff
    db $10                                        ; $52da: $10
    rst $38                                       ; $52db: $ff
    jr c, @+$01                                   ; $52dc: $38 $ff

    ld a, l                                       ; $52de: $7d
    rst $38                                       ; $52df: $ff
    rst $28                                       ; $52e0: $ef
    rst $28                                       ; $52e1: $ef
    rst $00                                       ; $52e2: $c7
    rst $00                                       ; $52e3: $c7
    nop                                           ; $52e4: $00
    rst $38                                       ; $52e5: $ff
    nop                                           ; $52e6: $00
    rst $38                                       ; $52e7: $ff
    nop                                           ; $52e8: $00
    rst $38                                       ; $52e9: $ff
    ld b, c                                       ; $52ea: $41
    rst $38                                       ; $52eb: $ff
    jp $c7ff                                      ; $52ec: $c3 $ff $c7


    rst $38                                       ; $52ef: $ff
    rst $28                                       ; $52f0: $ef
    rst $38                                       ; $52f1: $ff
    ld a, a                                       ; $52f2: $7f
    ld a, a                                       ; $52f3: $7f
    nop                                           ; $52f4: $00
    rst $38                                       ; $52f5: $ff
    nop                                           ; $52f6: $00
    rst $38                                       ; $52f7: $ff
    nop                                           ; $52f8: $00
    rst $38                                       ; $52f9: $ff
    nop                                           ; $52fa: $00
    rst $38                                       ; $52fb: $ff
    add c                                         ; $52fc: $81
    rst $38                                       ; $52fd: $ff
    rst $20                                       ; $52fe: $e7
    rst $38                                       ; $52ff: $ff
    rst $38                                       ; $5300: $ff
    rst $38                                       ; $5301: $ff
    rst $38                                       ; $5302: $ff
    rst $38                                       ; $5303: $ff
    nop                                           ; $5304: $00
    rst $38                                       ; $5305: $ff
    nop                                           ; $5306: $00
    rst $38                                       ; $5307: $ff
    nop                                           ; $5308: $00
    rst $38                                       ; $5309: $ff
    add d                                         ; $530a: $82
    rst $38                                       ; $530b: $ff
    rst $00                                       ; $530c: $c7
    rst $38                                       ; $530d: $ff
    rst $20                                       ; $530e: $e7
    rst $38                                       ; $530f: $ff
    rst $28                                       ; $5310: $ef
    rst $38                                       ; $5311: $ff
    db $fc                                        ; $5312: $fc
    db $fc                                        ; $5313: $fc
    nop                                           ; $5314: $00
    rst $38                                       ; $5315: $ff
    nop                                           ; $5316: $00
    rst $38                                       ; $5317: $ff
    nop                                           ; $5318: $00
    rst $38                                       ; $5319: $ff
    ld [$1cff], sp                                ; $531a: $08 $ff $1c
    rst $38                                       ; $531d: $ff
    cp [hl]                                       ; $531e: $be
    rst $38                                       ; $531f: $ff
    rst $30                                       ; $5320: $f7
    rst $30                                       ; $5321: $f7
    db $e3                                        ; $5322: $e3
    db $e3                                        ; $5323: $e3
    rlca                                          ; $5324: $07
    rst $38                                       ; $5325: $ff
    inc bc                                        ; $5326: $03
    rst $38                                       ; $5327: $ff
    ld h, c                                       ; $5328: $61
    rst $38                                       ; $5329: $ff
    ld sp, hl                                     ; $532a: $f9
    rst $38                                       ; $532b: $ff
    rst $38                                       ; $532c: $ff
    rst $38                                       ; $532d: $ff
    add $c6                                       ; $532e: $c6 $c6
    ret nz                                        ; $5330: $c0

    ret nz                                        ; $5331: $c0

    add b                                         ; $5332: $80
    add b                                         ; $5333: $80
    nop                                           ; $5334: $00
    and l                                         ; $5335: $a5
    nop                                           ; $5336: $00
    xor h                                         ; $5337: $ac
    xor l                                         ; $5338: $ad
    nop                                           ; $5339: $00
    or h                                          ; $533a: $b4
    or l                                          ; $533b: $b5
    or [hl]                                       ; $533c: $b6
    nop                                           ; $533d: $00
    and [hl]                                      ; $533e: $a6
    nop                                           ; $533f: $00
    xor [hl]                                      ; $5340: $ae
    xor a                                         ; $5341: $af
    or b                                          ; $5342: $b0
    or a                                          ; $5343: $b7
    cp b                                          ; $5344: $b8
    cp c                                          ; $5345: $b9
    cp a                                          ; $5346: $bf
    ret nz                                        ; $5347: $c0

    pop bc                                        ; $5348: $c1
    ret                                           ; $5349: $c9


    jp z, $d3cb                                   ; $534a: $ca $cb $d3

    call nc, Call_000_00d5                        ; $534d: $d4 $d5 $00
    ld bc, $0302                                  ; $5350: $01 $02 $03
    nop                                           ; $5353: $00
    nop                                           ; $5354: $00
    add hl, bc                                    ; $5355: $09
    ld a, [bc]                                    ; $5356: $0a
    dec bc                                        ; $5357: $0b
    nop                                           ; $5358: $00
    nop                                           ; $5359: $00
    db $10                                        ; $535a: $10
    ld de, $0012                                  ; $535b: $11 $12 $00
    nop                                           ; $535e: $00
    inc e                                         ; $535f: $1c
    dec e                                         ; $5360: $1d
    ld e, $00                                     ; $5361: $1e $00
    jr z, jr_04e_538e                             ; $5363: $28 $29

    ld a, [hl+]                                   ; $5365: $2a
    dec hl                                        ; $5366: $2b
    inc l                                         ; $5367: $2c
    ld sp, $3332                                  ; $5368: $31 $32 $33
    inc [hl]                                      ; $536b: $34
    dec [hl]                                      ; $536c: $35
    dec sp                                        ; $536d: $3b
    inc a                                         ; $536e: $3c
    dec a                                         ; $536f: $3d
    ld a, $3f                                     ; $5370: $3e $3f
    ld b, l                                       ; $5372: $45
    ld b, [hl]                                    ; $5373: $46
    ld b, a                                       ; $5374: $47
    ld c, b                                       ; $5375: $48
    ld c, c                                       ; $5376: $49
    nop                                           ; $5377: $00
    nop                                           ; $5378: $00
    ld d, l                                       ; $5379: $55
    ld d, [hl]                                    ; $537a: $56
    ld d, a                                       ; $537b: $57
    ld e, b                                       ; $537c: $58
    nop                                           ; $537d: $00
    nop                                           ; $537e: $00
    ld e, h                                       ; $537f: $5c
    ld e, l                                       ; $5380: $5d
    ld e, [hl]                                    ; $5381: $5e
    ld e, a                                       ; $5382: $5f
    ld h, b                                       ; $5383: $60
    nop                                           ; $5384: $00
    nop                                           ; $5385: $00
    ld h, [hl]                                    ; $5386: $66
    ld h, a                                       ; $5387: $67
    ld l, b                                       ; $5388: $68
    ld l, c                                       ; $5389: $69
    ld l, d                                       ; $538a: $6a
    nop                                           ; $538b: $00
    nop                                           ; $538c: $00
    ld [hl], c                                    ; $538d: $71

jr_04e_538e:
    ld [hl], d                                    ; $538e: $72
    ld [hl], d                                    ; $538f: $72
    ld [hl], d                                    ; $5390: $72
    ld [hl], e                                    ; $5391: $73
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    ld a, h                                       ; $5394: $7c
    ld a, l                                       ; $5395: $7d
    ld a, [hl]                                    ; $5396: $7e
    ld a, a                                       ; $5397: $7f
    add b                                         ; $5398: $80
    nop                                           ; $5399: $00
    nop                                           ; $539a: $00
    add h                                         ; $539b: $84
    ld c, $0e                                     ; $539c: $0e $0e
    ld c, $85                                     ; $539e: $0e $85
    add [hl]                                      ; $53a0: $86
    adc e                                         ; $53a1: $8b
    adc h                                         ; $53a2: $8c
    adc l                                         ; $53a3: $8d
    adc l                                         ; $53a4: $8d
    adc l                                         ; $53a5: $8d
    adc [hl]                                      ; $53a6: $8e
    adc a                                         ; $53a7: $8f
    sub l                                         ; $53a8: $95
    sub [hl]                                      ; $53a9: $96
    sub a                                         ; $53aa: $97
    sbc b                                         ; $53ab: $98
    sbc c                                         ; $53ac: $99
    sbc d                                         ; $53ad: $9a
    sbc e                                         ; $53ae: $9b
    nop                                           ; $53af: $00
    nop                                           ; $53b0: $00
    and a                                         ; $53b1: $a7
    xor b                                         ; $53b2: $a8
    xor c                                         ; $53b3: $a9
    xor d                                         ; $53b4: $aa
    xor e                                         ; $53b5: $ab
    nop                                           ; $53b6: $00
    nop                                           ; $53b7: $00
    nop                                           ; $53b8: $00
    or c                                          ; $53b9: $b1
    or d                                          ; $53ba: $b2
    ld c, $0e                                     ; $53bb: $0e $0e
    ld c, $b3                                     ; $53bd: $0e $b3
    nop                                           ; $53bf: $00
    nop                                           ; $53c0: $00
    nop                                           ; $53c1: $00
    cp d                                          ; $53c2: $ba
    cp e                                          ; $53c3: $bb
    cp h                                          ; $53c4: $bc
    cp h                                          ; $53c5: $bc
    cp h                                          ; $53c6: $bc
    cp l                                          ; $53c7: $bd
    cp [hl]                                       ; $53c8: $be
    nop                                           ; $53c9: $00
    nop                                           ; $53ca: $00
    jp nz, $c4c3                                  ; $53cb: $c2 $c3 $c4

    push bc                                       ; $53ce: $c5
    add $c7                                       ; $53cf: $c6 $c7
    ret z                                         ; $53d1: $c8

    nop                                           ; $53d2: $00
    nop                                           ; $53d3: $00
    call z, $cecd                                 ; $53d4: $cc $cd $ce
    rst $08                                       ; $53d7: $cf
    ret nc                                        ; $53d8: $d0

    pop de                                        ; $53d9: $d1
    jp nc, $0000                                  ; $53da: $d2 $00 $00

    sub $0e                                       ; $53dd: $d6 $0e
    ld c, $0e                                     ; $53df: $0e $0e
    ld c, $0e                                     ; $53e1: $0e $0e
    rst $10                                       ; $53e3: $d7
    nop                                           ; $53e4: $00
    ret c                                         ; $53e5: $d8

    reti                                          ; $53e6: $d9


    cp h                                          ; $53e7: $bc
    cp h                                          ; $53e8: $bc
    cp h                                          ; $53e9: $bc
    cp h                                          ; $53ea: $bc
    cp h                                          ; $53eb: $bc
    jp c, $db65                                   ; $53ec: $da $65 $db

    call c, $dedd                                 ; $53ef: $dc $dd $de
    rst $18                                       ; $53f2: $df
    ldh [$e1], a                                  ; $53f3: $e0 $e1
    ld [c], a                                     ; $53f5: $e2
    nop                                           ; $53f6: $00
    nop                                           ; $53f7: $00
    ld e, c                                       ; $53f8: $59
    ld e, d                                       ; $53f9: $5a
    ld c, $0e                                     ; $53fa: $0e $0e
    ld c, $0e                                     ; $53fc: $0e $0e
    ld e, e                                       ; $53fe: $5b
    nop                                           ; $53ff: $00
    ld h, c                                       ; $5400: $61
    ld h, d                                       ; $5401: $62
    ld h, e                                       ; $5402: $63
    ld h, e                                       ; $5403: $63
    ld h, e                                       ; $5404: $63
    ld h, e                                       ; $5405: $63
    ld h, e                                       ; $5406: $63
    ld h, h                                       ; $5407: $64
    ld h, l                                       ; $5408: $65
    ld l, e                                       ; $5409: $6b
    ld l, h                                       ; $540a: $6c
    ld l, l                                       ; $540b: $6d
    ld c, $0e                                     ; $540c: $0e $0e
    ld c, $6e                                     ; $540e: $0e $6e
    ld l, a                                       ; $5410: $6f
    ld [hl], b                                    ; $5411: $70
    nop                                           ; $5412: $00
    ld [hl], h                                    ; $5413: $74
    ld [hl], l                                    ; $5414: $75
    halt                                          ; $5415: $76
    ld [hl], a                                    ; $5416: $77
    ld a, b                                       ; $5417: $78
    ld a, c                                       ; $5418: $79
    ld a, d                                       ; $5419: $7a
    ld a, e                                       ; $541a: $7b
    add c                                         ; $541b: $81
    ld hl, $0e0e                                  ; $541c: $21 $0e $0e
    ld c, $0e                                     ; $541f: $0e $0e
    ld c, $82                                     ; $5421: $0e $82
    add e                                         ; $5423: $83
    add a                                         ; $5424: $87
    adc b                                         ; $5425: $88
    adc c                                         ; $5426: $89
    adc c                                         ; $5427: $89
    adc c                                         ; $5428: $89
    adc c                                         ; $5429: $89
    adc c                                         ; $542a: $89
    adc c                                         ; $542b: $89
    adc d                                         ; $542c: $8a
    sub b                                         ; $542d: $90
    sub c                                         ; $542e: $91
    sub d                                         ; $542f: $92
    sub d                                         ; $5430: $92
    sub d                                         ; $5431: $92
    sub d                                         ; $5432: $92
    sub d                                         ; $5433: $92
    sub e                                         ; $5434: $93
    sub h                                         ; $5435: $94
    sbc h                                         ; $5436: $9c
    sbc l                                         ; $5437: $9d
    sbc [hl]                                      ; $5438: $9e
    sbc a                                         ; $5439: $9f
    and b                                         ; $543a: $a0
    and c                                         ; $543b: $a1
    and d                                         ; $543c: $a2
    and e                                         ; $543d: $a3
    and h                                         ; $543e: $a4
    nop                                           ; $543f: $00
    inc b                                         ; $5440: $04
    dec b                                         ; $5441: $05
    ld b, $06                                     ; $5442: $06 $06
    ld b, $06                                     ; $5444: $06 $06
    ld b, $07                                     ; $5446: $06 $07
    ld [$0000], sp                                ; $5448: $08 $00 $00
    inc c                                         ; $544b: $0c
    dec c                                         ; $544c: $0d
    ld c, $0e                                     ; $544d: $0e $0e
    ld c, $0e                                     ; $544f: $0e $0e
    ld c, $0e                                     ; $5451: $0e $0e
    rrca                                          ; $5453: $0f
    nop                                           ; $5454: $00
    nop                                           ; $5455: $00
    inc de                                        ; $5456: $13

Jump_04e_5457:
    inc d                                         ; $5457: $14
    dec d                                         ; $5458: $15
    ld d, $17                                     ; $5459: $16 $17
    jr @+$1b                                      ; $545b: $18 $19

    ld a, [de]                                    ; $545d: $1a
    dec de                                        ; $545e: $1b
    nop                                           ; $545f: $00
    rra                                           ; $5460: $1f
    jr nz, jr_04e_5484                            ; $5461: $20 $21

    ld c, $22                                     ; $5463: $0e $22
    inc hl                                        ; $5465: $23
    inc h                                         ; $5466: $24
    ld c, $25                                     ; $5467: $0e $25
    ld h, $27                                     ; $5469: $26 $27
    dec l                                         ; $546b: $2d
    ld l, $0e                                     ; $546c: $2e $0e
    ld c, $0e                                     ; $546e: $0e $0e
    ld c, $0e                                     ; $5470: $0e $0e
    ld c, $0e                                     ; $5472: $0e $0e
    cpl                                           ; $5474: $2f
    jr nc, jr_04e_54ad                            ; $5475: $30 $36

    scf                                           ; $5477: $37
    jr c, @+$3a                                   ; $5478: $38 $38

    jr c, @+$3a                                   ; $547a: $38 $38

    jr c, jr_04e_54b6                             ; $547c: $38 $38

    jr c, jr_04e_54b9                             ; $547e: $38 $39

    ld a, [hl-]                                   ; $5480: $3a
    ld b, b                                       ; $5481: $40
    ld b, c                                       ; $5482: $41
    ld b, d                                       ; $5483: $42

jr_04e_5484:
    ld b, d                                       ; $5484: $42
    ld b, d                                       ; $5485: $42
    ld b, d                                       ; $5486: $42
    ld b, d                                       ; $5487: $42
    ld b, d                                       ; $5488: $42
    ld b, d                                       ; $5489: $42
    ld b, e                                       ; $548a: $43
    ld b, h                                       ; $548b: $44
    ld c, d                                       ; $548c: $4a
    ld c, e                                       ; $548d: $4b
    ld c, h                                       ; $548e: $4c
    ld c, l                                       ; $548f: $4d
    ld c, [hl]                                    ; $5490: $4e
    ld c, a                                       ; $5491: $4f
    ld d, b                                       ; $5492: $50
    ld d, c                                       ; $5493: $51
    ld d, d                                       ; $5494: $52
    ld d, e                                       ; $5495: $53
    ld d, h                                       ; $5496: $54
    nop                                           ; $5497: $00
    inc b                                         ; $5498: $04
    dec b                                         ; $5499: $05
    ld b, $06                                     ; $549a: $06 $06
    ld b, $06                                     ; $549c: $06 $06
    ld b, $07                                     ; $549e: $06 $07
    ld [$0000], sp                                ; $54a0: $08 $00 $00
    inc c                                         ; $54a3: $0c
    dec c                                         ; $54a4: $0d
    ld c, $0e                                     ; $54a5: $0e $0e
    ld c, $0e                                     ; $54a7: $0e $0e
    ld c, $0e                                     ; $54a9: $0e $0e
    rrca                                          ; $54ab: $0f
    nop                                           ; $54ac: $00

jr_04e_54ad:
    nop                                           ; $54ad: $00
    inc de                                        ; $54ae: $13
    inc d                                         ; $54af: $14
    dec d                                         ; $54b0: $15
    ld d, $17                                     ; $54b1: $16 $17
    jr @+$1b                                      ; $54b3: $18 $19

    ld a, [de]                                    ; $54b5: $1a

jr_04e_54b6:
    dec de                                        ; $54b6: $1b
    nop                                           ; $54b7: $00
    rra                                           ; $54b8: $1f

jr_04e_54b9:
    jr nz, jr_04e_54dc                            ; $54b9: $20 $21

    ld c, $22                                     ; $54bb: $0e $22
    inc hl                                        ; $54bd: $23
    inc h                                         ; $54be: $24
    ld c, $25                                     ; $54bf: $0e $25
    ld h, $27                                     ; $54c1: $26 $27
    dec l                                         ; $54c3: $2d
    ld l, $0e                                     ; $54c4: $2e $0e
    ld c, $0e                                     ; $54c6: $0e $0e
    ld c, $0e                                     ; $54c8: $0e $0e
    ld c, $0e                                     ; $54ca: $0e $0e
    cpl                                           ; $54cc: $2f
    jr nc, jr_04e_5505                            ; $54cd: $30 $36

    scf                                           ; $54cf: $37
    jr c, jr_04e_550a                             ; $54d0: $38 $38

    jr c, jr_04e_550c                             ; $54d2: $38 $38

    jr c, @+$3a                                   ; $54d4: $38 $38

    jr c, jr_04e_5511                             ; $54d6: $38 $39

    ld a, [hl-]                                   ; $54d8: $3a
    ld b, b                                       ; $54d9: $40
    ld b, c                                       ; $54da: $41
    ld b, d                                       ; $54db: $42

jr_04e_54dc:
    ld b, d                                       ; $54dc: $42
    ld b, d                                       ; $54dd: $42
    ld b, d                                       ; $54de: $42
    ld b, d                                       ; $54df: $42
    ld b, d                                       ; $54e0: $42
    ld b, d                                       ; $54e1: $42
    ld b, e                                       ; $54e2: $43
    ld b, h                                       ; $54e3: $44
    ld c, d                                       ; $54e4: $4a
    ld c, e                                       ; $54e5: $4b
    ld c, h                                       ; $54e6: $4c
    ld c, l                                       ; $54e7: $4d
    ld c, [hl]                                    ; $54e8: $4e
    ld c, a                                       ; $54e9: $4f
    ld d, b                                       ; $54ea: $50
    ld d, c                                       ; $54eb: $51
    ld d, d                                       ; $54ec: $52
    ld d, e                                       ; $54ed: $53
    ld d, h                                       ; $54ee: $54
    nop                                           ; $54ef: $00
    ld d, e                                       ; $54f0: $53
    nop                                           ; $54f1: $00
    rst $38                                       ; $54f2: $ff
    cp $ff                                        ; $54f3: $fe $ff
    ld a, [$77fa]                                 ; $54f5: $fa $fa $77
    call c, $dde0                                 ; $54f8: $dc $e0 $dd
    ld hl, sp-$18                                 ; $54fb: $f8 $e8
    ld d, l                                       ; $54fd: $55
    xor d                                         ; $54fe: $aa
    db $fc                                        ; $54ff: $fc
    db $e4                                        ; $5500: $e4
    nop                                           ; $5501: $00
    db $f4                                        ; $5502: $f4
    and $00                                       ; $5503: $e6 $00

jr_04e_5505:
    db $ec                                        ; $5505: $ec
    ldh [$dd], a                                  ; $5506: $e0 $dd
    ldh a, [$e0]                                  ; $5508: $f0 $e0

jr_04e_550a:
    add hl, sp                                    ; $550a: $39
    ld [hl], a                                    ; $550b: $77

jr_04e_550c:
    db $ec                                        ; $550c: $ec
    ldh [$fd], a                                  ; $550d: $e0 $fd
    push hl                                       ; $550f: $e5
    ld h, a                                       ; $5510: $67

jr_04e_5511:
    ld h, [hl]                                    ; $5511: $66
    rst $38                                       ; $5512: $ff
    rst $38                                       ; $5513: $ff
    pop hl                                        ; $5514: $e1
    jp c, Jump_000_10e2                           ; $5515: $da $e2 $10

    cp $ff                                        ; $5518: $fe $ff
    add b                                         ; $551a: $80
    rst $38                                       ; $551b: $ff
    add b                                         ; $551c: $80
    rst $38                                       ; $551d: $ff
    add b                                         ; $551e: $80
    rst $20                                       ; $551f: $e7
    ld h, [hl]                                    ; $5520: $66
    add h                                         ; $5521: $84
    db $e3                                        ; $5522: $e3
    add b                                         ; $5523: $80
    rst $38                                       ; $5524: $ff
    cp $ff                                        ; $5525: $fe $ff
    db $fc                                        ; $5527: $fc
    add b                                         ; $5528: $80
    rst $38                                       ; $5529: $ff
    nop                                           ; $552a: $00
    ldh a, [$60]                                  ; $552b: $f0 $60
    ld h, b                                       ; $552d: $60
    ldh a, [$f0]                                  ; $552e: $f0 $f0
    ld hl, sp-$10                                 ; $5530: $f8 $f0
    inc bc                                        ; $5532: $03
    ld sp, hl                                     ; $5533: $f9
    ldh a, [$80]                                  ; $5534: $f0 $80
    rst $38                                       ; $5536: $ff
    cp $ff                                        ; $5537: $fe $ff
    add b                                         ; $5539: $80
    rst $38                                       ; $553a: $ff
    add b                                         ; $553b: $80
    pop de                                        ; $553c: $d1
    ld a, [hl]                                    ; $553d: $7e
    db $e3                                        ; $553e: $e3
    add b                                         ; $553f: $80
    rst $38                                       ; $5540: $ff
    nop                                           ; $5541: $00
    cp $ff                                        ; $5542: $fe $ff
    add b                                         ; $5544: $80
    rst $38                                       ; $5545: $ff
    nop                                           ; $5546: $00
    db $d3                                        ; $5547: $d3
    push af                                       ; $5548: $f5
    and c                                         ; $5549: $a1
    add b                                         ; $554a: $80
    rst $38                                       ; $554b: $ff
    cp $ff                                        ; $554c: $fe $ff
    add b                                         ; $554e: $80
    rst $38                                       ; $554f: $ff
    add b                                         ; $5550: $80
    or e                                          ; $5551: $b3
    ld bc, $fe01                                  ; $5552: $01 $01 $fe
    ldh [$80], a                                  ; $5555: $e0 $80
    rst $38                                       ; $5557: $ff
    cp $ff                                        ; $5558: $fe $ff
    add b                                         ; $555a: $80
    rst $38                                       ; $555b: $ff
    nop                                           ; $555c: $00
    push de                                       ; $555d: $d5
    add b                                         ; $555e: $80
    rst $18                                       ; $555f: $df
    cp $ff                                        ; $5560: $fe $ff
    nop                                           ; $5562: $00
    add b                                         ; $5563: $80
    rst $38                                       ; $5564: $ff
    add b                                         ; $5565: $80
    sub l                                         ; $5566: $95
    db $fc                                        ; $5567: $fc
    add h                                         ; $5568: $84
    add b                                         ; $5569: $80
    rst $38                                       ; $556a: $ff
    add b                                         ; $556b: $80
    rst $38                                       ; $556c: $ff
    add b                                         ; $556d: $80
    rst $38                                       ; $556e: $ff
    nop                                           ; $556f: $00
    rst $18                                       ; $5570: $df
    cp $ff                                        ; $5571: $fe $ff
    add b                                         ; $5573: $80
    add b                                         ; $5574: $80
    rst $38                                       ; $5575: $ff
    add b                                         ; $5576: $80
    rst $38                                       ; $5577: $ff
    add b                                         ; $5578: $80
    rst $38                                       ; $5579: $ff
    cp $ff                                        ; $557a: $fe $ff
    add b                                         ; $557c: $80
    rst $38                                       ; $557d: $ff
    add b                                         ; $557e: $80
    rst $38                                       ; $557f: $ff
    ld hl, sp+$42                                 ; $5580: $f8 $42
    rrca                                          ; $5582: $0f
    pop hl                                        ; $5583: $e1
    rrca                                          ; $5584: $0f
    add b                                         ; $5585: $80
    rst $38                                       ; $5586: $ff
    cp $ff                                        ; $5587: $fe $ff
    add b                                         ; $5589: $80
    rst $38                                       ; $558a: $ff
    add b                                         ; $558b: $80
    ld d, c                                       ; $558c: $51
    inc de                                        ; $558d: $13
    inc de                                        ; $558e: $13
    ld a, a                                       ; $558f: $7f
    pop hl                                        ; $5590: $e1
    ld a, e                                       ; $5591: $7b
    nop                                           ; $5592: $00
    rst $18                                       ; $5593: $df
    cp $ff                                        ; $5594: $fe $ff
    add b                                         ; $5596: $80
    rst $38                                       ; $5597: $ff
    nop                                           ; $5598: $00
    ld d, c                                       ; $5599: $51
    rlca                                          ; $559a: $07
    rlca                                          ; $559b: $07
    ld l, a                                       ; $559c: $6f
    add a                                         ; $559d: $87
    ld h, a                                       ; $559e: $67
    rst $38                                       ; $559f: $ff
    rst $30                                       ; $55a0: $f7
    add b                                         ; $55a1: $80
    rst $38                                       ; $55a2: $ff
    cp $ff                                        ; $55a3: $fe $ff
    add b                                         ; $55a5: $80

Call_04e_55a6:
    rst $38                                       ; $55a6: $ff
    add b                                         ; $55a7: $80
    ld a, [hl+]                                   ; $55a8: $2a
    ld [bc], a                                    ; $55a9: $02
    rst $38                                       ; $55aa: $ff
    rlca                                          ; $55ab: $07
    ld [bc], a                                    ; $55ac: $02
    rlca                                          ; $55ad: $07
    rlca                                          ; $55ae: $07
    rrca                                          ; $55af: $0f
    rlca                                          ; $55b0: $07
    rst $28                                       ; $55b1: $ef
    rst $20                                       ; $55b2: $e7
    jp $e7ff                                      ; $55b3: $c3 $ff $e7


    nop                                           ; $55b6: $00
    ld e, a                                       ; $55b7: $5f
    cp $ff                                        ; $55b8: $fe $ff
    add b                                         ; $55ba: $80
    rst $38                                       ; $55bb: $ff
    nop                                           ; $55bc: $00
    add hl, hl                                    ; $55bd: $29
    inc b                                         ; $55be: $04
    inc b                                         ; $55bf: $04
    rst $38                                       ; $55c0: $ff
    ld a, a                                       ; $55c1: $7f
    inc b                                         ; $55c2: $04
    ld l, $2e                                     ; $55c3: $2e $2e
    ld a, a                                       ; $55c5: $7f
    ld a, $ff                                     ; $55c6: $3e $ff
    ccf                                           ; $55c8: $3f
    ldh [$82], a                                  ; $55c9: $e0 $82
    ld h, $80                                     ; $55cb: $26 $80
    rst $38                                       ; $55cd: $ff
    cp $ff                                        ; $55ce: $fe $ff
    add b                                         ; $55d0: $80
    rst $38                                       ; $55d1: $ff
    add b                                         ; $55d2: $80
    ld [$3838], sp                                ; $55d3: $08 $38 $38
    ld a, l                                       ; $55d6: $7d
    pop bc                                        ; $55d7: $c1
    ld a, l                                       ; $55d8: $7d
    add d                                         ; $55d9: $82
    add sp, -$80                                  ; $55da: $e8 $80
    rst $38                                       ; $55dc: $ff
    cp $ff                                        ; $55dd: $fe $ff
    add b                                         ; $55df: $80
    rst $38                                       ; $55e0: $ff
    add b                                         ; $55e1: $80
    ld l, h                                       ; $55e2: $6c
    or [hl]                                       ; $55e3: $b6
    or [hl]                                       ; $55e4: $b6
    ldh a, [$80]                                  ; $55e5: $f0 $80
    rst $38                                       ; $55e7: $ff
    cp $ff                                        ; $55e8: $fe $ff
    add b                                         ; $55ea: $80
    rst $38                                       ; $55eb: $ff
    nop                                           ; $55ec: $00
    ld [hl], e                                    ; $55ed: $73
    ld a, b                                       ; $55ee: $78
    ld a, b                                       ; $55ef: $78
    db $fd                                        ; $55f0: $fd
    db $fd                                        ; $55f1: $fd
    ldh a, [$80]                                  ; $55f2: $f0 $80
    rst $38                                       ; $55f4: $ff
    cp $ff                                        ; $55f5: $fe $ff
    add b                                         ; $55f7: $80
    rst $38                                       ; $55f8: $ff
    add b                                         ; $55f9: $80
    ld d, c                                       ; $55fa: $51
    ld b, $06                                     ; $55fb: $06 $06
    rst $28                                       ; $55fd: $ef
    rst $28                                       ; $55fe: $ef
    ldh a, [$80]                                  ; $55ff: $f0 $80
    rst $18                                       ; $5601: $df
    cp $ff                                        ; $5602: $fe $ff
    add b                                         ; $5604: $80
    rst $38                                       ; $5605: $ff
    nop                                           ; $5606: $00
    ld d, e                                       ; $5607: $53
    inc bc                                        ; $5608: $03
    inc bc                                        ; $5609: $03
    ld [hl], a                                    ; $560a: $77
    ld [hl], a                                    ; $560b: $77
    nop                                           ; $560c: $00
    add b                                         ; $560d: $80
    db $ec                                        ; $560e: $ec
    nop                                           ; $560f: $00
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    rra                                           ; $5612: $1f
    ld sp, $7d78                                  ; $5613: $31 $78 $7d
    sbc b                                         ; $5616: $98
    ld d, h                                       ; $5617: $54
    ld b, b                                       ; $5618: $40
    db $10                                        ; $5619: $10
    ld b, b                                       ; $561a: $40
    ld a, [hl-]                                   ; $561b: $3a
    ld c, h                                       ; $561c: $4c
    ld a, h                                       ; $561d: $7c
    ld [c], a                                     ; $561e: $e2
    inc hl                                        ; $561f: $23
    ld b, b                                       ; $5620: $40
    db $10                                        ; $5621: $10
    ld b, b                                       ; $5622: $40
    ld a, [hl-]                                   ; $5623: $3a
    nop                                           ; $5624: $00
    dec hl                                        ; $5625: $2b
    ld e, b                                       ; $5626: $58
    ld c, e                                       ; $5627: $4b
    ld b, b                                       ; $5628: $40
    db $10                                        ; $5629: $10
    ld b, b                                       ; $562a: $40
    ld a, [hl-]                                   ; $562b: $3a
    ld e, b                                       ; $562c: $58
    ld c, e                                       ; $562d: $4b
    ld [c], a                                     ; $562e: $e2
    inc hl                                        ; $562f: $23
    ld b, b                                       ; $5630: $40
    db $10                                        ; $5631: $10
    ld b, b                                       ; $5632: $40
    ld a, [hl-]                                   ; $5633: $3a
    ld [c], a                                     ; $5634: $e2
    inc hl                                        ; $5635: $23
    nop                                           ; $5636: $00
    dec hl                                        ; $5637: $2b
    ld b, b                                       ; $5638: $40
    db $10                                        ; $5639: $10
    rra                                           ; $563a: $1f
    dec h                                         ; $563b: $25
    ld [$0825], sp                                ; $563c: $08 $25 $08
    dec h                                         ; $563f: $25
    ld [$1825], sp                                ; $5640: $08 $25 $18
    nop                                           ; $5643: $00
    call Call_04e_574f                            ; $5644: $cd $4f $57
    call Call_04e_567a                            ; $5647: $cd $7a $56
    ld a, $01                                     ; $564a: $3e $01
    ldh [rVBK], a                                 ; $564c: $e0 $4f
    ld hl, $d000                                  ; $564e: $21 $00 $d0
    ld de, $9000                                  ; $5651: $11 $00 $90
    ld c, $80                                     ; $5654: $0e $80
    call Call_000_2096                            ; $5656: $cd $96 $20
    ld hl, $d800                                  ; $5659: $21 $00 $d8
    ld de, $8800                                  ; $565c: $11 $00 $88
    ld c, $20                                     ; $565f: $0e $20
    call Call_000_2096                            ; $5661: $cd $96 $20
    ld hl, $54f0                                  ; $5664: $21 $f0 $54
    ld de, $d000                                  ; $5667: $11 $00 $d0
    call Call_000_1f2f                            ; $566a: $cd $2f $1f
    call Call_04e_6086                            ; $566d: $cd $86 $60
    ld hl, $5612                                  ; $5670: $21 $12 $56
    ld de, $0205                                  ; $5673: $11 $05 $02
    call Call_000_0595                            ; $5676: $cd $95 $05
    ret                                           ; $5679: $c9


Call_04e_567a:
    ld hl, $da00                                  ; $567a: $21 $00 $da

jr_04e_567d:
    ld a, [hl+]                                   ; $567d: $2a
    cp $ff                                        ; $567e: $fe $ff
    jr z, jr_04e_56a3                             ; $5680: $28 $21

    ld e, a                                       ; $5682: $5f
    ld a, [hl+]                                   ; $5683: $2a
    ld d, a                                       ; $5684: $57
    ld a, [hl+]                                   ; $5685: $2a
    ld c, a                                       ; $5686: $4f
    ld a, e                                       ; $5687: $7b
    cp $03                                        ; $5688: $fe $03
    jr z, jr_04e_5690                             ; $568a: $28 $04

    cp $02                                        ; $568c: $fe $02
    jr nz, jr_04e_56a1                            ; $568e: $20 $11

jr_04e_5690:
    ld a, c                                       ; $5690: $79
    and a                                         ; $5691: $a7
    jr z, jr_04e_56a1                             ; $5692: $28 $0d

    ld a, c                                       ; $5694: $79
    rrca                                          ; $5695: $0f
    rrca                                          ; $5696: $0f
    rrca                                          ; $5697: $0f
    and $07                                       ; $5698: $e6 $07
    ld e, $00                                     ; $569a: $1e $00
    push hl                                       ; $569c: $e5
    call Call_04e_56a4                            ; $569d: $cd $a4 $56
    pop hl                                        ; $56a0: $e1

jr_04e_56a1:
    jr jr_04e_567d                                ; $56a1: $18 $da

jr_04e_56a3:
    ret                                           ; $56a3: $c9


Call_04e_56a4:
    add a                                         ; $56a4: $87
    add a                                         ; $56a5: $87
    add a                                         ; $56a6: $87
    ld hl, $570f                                  ; $56a7: $21 $0f $57
    add l                                         ; $56aa: $85
    ld l, a                                       ; $56ab: $6f
    jr nc, jr_04e_56af                            ; $56ac: $30 $01

    inc h                                         ; $56ae: $24

jr_04e_56af:
    ld a, [hl+]                                   ; $56af: $2a
    add d                                         ; $56b0: $82
    ld d, a                                       ; $56b1: $57
    ld a, [hl+]                                   ; $56b2: $2a
    add e                                         ; $56b3: $83
    ld b, a                                       ; $56b4: $47
    ld a, [hl+]                                   ; $56b5: $2a
    ld e, a                                       ; $56b6: $5f
    ld a, [hl+]                                   ; $56b7: $2a
    ld a, [hl+]                                   ; $56b8: $2a
    ld h, [hl]                                    ; $56b9: $66
    ld l, a                                       ; $56ba: $6f

jr_04e_56bb:
    push de                                       ; $56bb: $d5

jr_04e_56bc:
    ld a, [hl]                                    ; $56bc: $7e
    and a                                         ; $56bd: $a7
    jr z, jr_04e_56ff                             ; $56be: $28 $3f

    bit 7, d                                      ; $56c0: $cb $7a
    jr nz, jr_04e_56ff                            ; $56c2: $20 $3b

    ld a, d                                       ; $56c4: $7a
    cp $14                                        ; $56c5: $fe $14
    jr nc, jr_04e_56ff                            ; $56c7: $30 $36

    push bc                                       ; $56c9: $c5
    push de                                       ; $56ca: $d5
    push hl                                       ; $56cb: $e5
    ld a, d                                       ; $56cc: $7a
    ld l, [hl]                                    ; $56cd: $6e
    ld h, $00                                     ; $56ce: $26 $00
    add hl, hl                                    ; $56d0: $29
    add hl, hl                                    ; $56d1: $29
    add hl, hl                                    ; $56d2: $29
    add hl, hl                                    ; $56d3: $29
    ld de, $400e                                  ; $56d4: $11 $0e $40
    add hl, de                                    ; $56d7: $19
    ld e, l                                       ; $56d8: $5d
    ld d, h                                       ; $56d9: $54
    add a                                         ; $56da: $87
    add a                                         ; $56db: $87
    add a                                         ; $56dc: $87
    add b                                         ; $56dd: $80
    ld l, a                                       ; $56de: $6f
    ld h, $00                                     ; $56df: $26 $00
    add hl, hl                                    ; $56e1: $29
    add hl, hl                                    ; $56e2: $29
    add hl, hl                                    ; $56e3: $29
    add hl, hl                                    ; $56e4: $29
    ld a, $00                                     ; $56e5: $3e $00
    add l                                         ; $56e7: $85
    ld l, a                                       ; $56e8: $6f
    ld a, h                                       ; $56e9: $7c
    adc $d0                                       ; $56ea: $ce $d0
    ld h, a                                       ; $56ec: $67
    ld a, c                                       ; $56ed: $79
    cp $08                                        ; $56ee: $fe $08
    jr c, jr_04e_56f4                             ; $56f0: $38 $02

    ld c, $08                                     ; $56f2: $0e $08

jr_04e_56f4:
    push bc                                       ; $56f4: $c5
    call Call_04e_6159                            ; $56f5: $cd $59 $61
    pop bc                                        ; $56f8: $c1
    dec c                                         ; $56f9: $0d
    jr nz, jr_04e_56f4                            ; $56fa: $20 $f8

    pop hl                                        ; $56fc: $e1
    pop de                                        ; $56fd: $d1
    pop bc                                        ; $56fe: $c1

jr_04e_56ff:
    inc hl                                        ; $56ff: $23
    inc d                                         ; $5700: $14
    dec e                                         ; $5701: $1d
    jr nz, jr_04e_56bc                            ; $5702: $20 $b8

    pop de                                        ; $5704: $d1
    inc b                                         ; $5705: $04
    ld a, c                                       ; $5706: $79
    sub $08                                       ; $5707: $d6 $08
    ld c, a                                       ; $5709: $4f
    jr z, jr_04e_570e                             ; $570a: $28 $02

    jr nc, jr_04e_56bb                            ; $570c: $30 $ad

jr_04e_570e:
    ret                                           ; $570e: $c9


    nop                                           ; $570f: $00
    nop                                           ; $5710: $00
    ld bc, $9e01                                  ; $5711: $01 $01 $9e
    ld b, h                                       ; $5714: $44
    nop                                           ; $5715: $00
    nop                                           ; $5716: $00
    nop                                           ; $5717: $00
    nop                                           ; $5718: $00
    ld bc, $9f02                                  ; $5719: $01 $02 $9f
    ld b, h                                       ; $571c: $44
    nop                                           ; $571d: $00
    nop                                           ; $571e: $00
    rst $38                                       ; $571f: $ff
    nop                                           ; $5720: $00
    inc bc                                        ; $5721: $03
    inc bc                                        ; $5722: $03
    and c                                         ; $5723: $a1
    ld b, h                                       ; $5724: $44
    nop                                           ; $5725: $00
    nop                                           ; $5726: $00
    rst $38                                       ; $5727: $ff
    nop                                           ; $5728: $00
    inc bc                                        ; $5729: $03
    inc b                                         ; $572a: $04
    xor d                                         ; $572b: $aa
    ld b, h                                       ; $572c: $44
    nop                                           ; $572d: $00
    nop                                           ; $572e: $00
    rst $38                                       ; $572f: $ff
    nop                                           ; $5730: $00
    inc bc                                        ; $5731: $03
    dec b                                         ; $5732: $05
    or [hl]                                       ; $5733: $b6
    ld b, h                                       ; $5734: $44
    nop                                           ; $5735: $00
    nop                                           ; $5736: $00
    rst $38                                       ; $5737: $ff
    nop                                           ; $5738: $00
    inc bc                                        ; $5739: $03
    ld b, $c5                                     ; $573a: $06 $c5
    ld b, h                                       ; $573c: $44
    nop                                           ; $573d: $00
    nop                                           ; $573e: $00
    rst $38                                       ; $573f: $ff
    nop                                           ; $5740: $00
    inc bc                                        ; $5741: $03
    rlca                                          ; $5742: $07
    rst $10                                       ; $5743: $d7
    ld b, h                                       ; $5744: $44
    nop                                           ; $5745: $00
    nop                                           ; $5746: $00
    rst $38                                       ; $5747: $ff
    nop                                           ; $5748: $00
    inc bc                                        ; $5749: $03
    ld [$44ec], sp                                ; $574a: $08 $ec $44
    nop                                           ; $574d: $00
    nop                                           ; $574e: $00

Call_04e_574f:
    ld hl, $da00                                  ; $574f: $21 $00 $da

jr_04e_5752:
    ld a, [hl+]                                   ; $5752: $2a
    cp $ff                                        ; $5753: $fe $ff
    jr z, jr_04e_5775                             ; $5755: $28 $1e

    ld e, a                                       ; $5757: $5f
    ld a, [hl+]                                   ; $5758: $2a
    ld d, a                                       ; $5759: $57
    ld a, [hl+]                                   ; $575a: $2a
    ld b, a                                       ; $575b: $47
    ld a, e                                       ; $575c: $7b
    cp $01                                        ; $575d: $fe $01
    jr nz, jr_04e_5773                            ; $575f: $20 $12

    ld a, b                                       ; $5761: $78
    rrca                                          ; $5762: $0f
    rrca                                          ; $5763: $0f
    rrca                                          ; $5764: $0f
    and $07                                       ; $5765: $e6 $07
    jr z, jr_04e_5773                             ; $5767: $28 $0a

    cp $07                                        ; $5769: $fe $07
    jr z, jr_04e_5773                             ; $576b: $28 $06

    ld e, b                                       ; $576d: $58
    push hl                                       ; $576e: $e5
    call Call_04e_5786                            ; $576f: $cd $86 $57
    pop hl                                        ; $5772: $e1

jr_04e_5773:
    jr jr_04e_5752                                ; $5773: $18 $dd

jr_04e_5775:
    ld a, [$c3b7]                                 ; $5775: $fa $b7 $c3
    cp $0c                                        ; $5778: $fe $0c
    jr nz, jr_04e_5785                            ; $577a: $20 $09

    ld a, $07                                     ; $577c: $3e $07
    ld d, $0a                                     ; $577e: $16 $0a
    ld e, $3f                                     ; $5780: $1e $3f
    call Call_04e_5786                            ; $5782: $cd $86 $57

jr_04e_5785:
    ret                                           ; $5785: $c9


Call_04e_5786:
    add a                                         ; $5786: $87
    add a                                         ; $5787: $87
    add a                                         ; $5788: $87
    ld hl, $6046                                  ; $5789: $21 $46 $60
    add l                                         ; $578c: $85
    ld l, a                                       ; $578d: $6f
    jr nc, jr_04e_5791                            ; $578e: $30 $01

    inc h                                         ; $5790: $24

jr_04e_5791:
    ld a, [hl+]                                   ; $5791: $2a
    add d                                         ; $5792: $82
    ld d, a                                       ; $5793: $57
    ld a, [hl+]                                   ; $5794: $2a
    add e                                         ; $5795: $83
    ld b, a                                       ; $5796: $47
    ld a, [hl+]                                   ; $5797: $2a
    ld e, a                                       ; $5798: $5f
    ld a, [hl+]                                   ; $5799: $2a
    ld c, a                                       ; $579a: $4f
    ld a, [hl+]                                   ; $579b: $2a
    ld h, [hl]                                    ; $579c: $66
    ld l, a                                       ; $579d: $6f

jr_04e_579e:
    push de                                       ; $579e: $d5

jr_04e_579f:
    ld a, [hl]                                    ; $579f: $7e
    and a                                         ; $57a0: $a7
    jr z, jr_04e_57ea                             ; $57a1: $28 $47

    bit 7, d                                      ; $57a3: $cb $7a
    jr nz, jr_04e_57ea                            ; $57a5: $20 $43

    ld a, d                                       ; $57a7: $7a
    cp $14                                        ; $57a8: $fe $14
    jr nc, jr_04e_57ea                            ; $57aa: $30 $3e

    push bc                                       ; $57ac: $c5
    push de                                       ; $57ad: $d5
    push hl                                       ; $57ae: $e5
    ld c, d                                       ; $57af: $4a
    ld l, [hl]                                    ; $57b0: $6e
    ld h, $00                                     ; $57b1: $26 $00
    add hl, hl                                    ; $57b3: $29
    add hl, hl                                    ; $57b4: $29
    add hl, hl                                    ; $57b5: $29
    add hl, hl                                    ; $57b6: $29
    ld de, $57f8                                  ; $57b7: $11 $f8 $57
    add hl, de                                    ; $57ba: $19
    ld e, l                                       ; $57bb: $5d
    ld d, h                                       ; $57bc: $54
    ld h, c                                       ; $57bd: $61
    ld l, $00                                     ; $57be: $2e $00
    srl h                                         ; $57c0: $cb $3c
    rr l                                          ; $57c2: $cb $1d
    ld a, b                                       ; $57c4: $78
    add a                                         ; $57c5: $87
    add l                                         ; $57c6: $85
    ld l, a                                       ; $57c7: $6f
    jr nc, jr_04e_57cb                            ; $57c8: $30 $01

    inc h                                         ; $57ca: $24

jr_04e_57cb:
    ld bc, $d000                                  ; $57cb: $01 $00 $d0
    add hl, bc                                    ; $57ce: $09
    call Call_04e_6159                            ; $57cf: $cd $59 $61
    call Call_04e_6159                            ; $57d2: $cd $59 $61
    call Call_04e_6159                            ; $57d5: $cd $59 $61
    call Call_04e_6159                            ; $57d8: $cd $59 $61
    call Call_04e_6159                            ; $57db: $cd $59 $61
    call Call_04e_6159                            ; $57de: $cd $59 $61
    call Call_04e_6159                            ; $57e1: $cd $59 $61
    call Call_04e_6159                            ; $57e4: $cd $59 $61
    pop hl                                        ; $57e7: $e1
    pop de                                        ; $57e8: $d1
    pop bc                                        ; $57e9: $c1

jr_04e_57ea:
    inc hl                                        ; $57ea: $23
    inc d                                         ; $57eb: $14
    dec e                                         ; $57ec: $1d
    jr nz, jr_04e_579f                            ; $57ed: $20 $b0

    pop de                                        ; $57ef: $d1
    ld a, b                                       ; $57f0: $78
    add $08                                       ; $57f1: $c6 $08
    ld b, a                                       ; $57f3: $47
    dec c                                         ; $57f4: $0d
    jr nz, jr_04e_579e                            ; $57f5: $20 $a7

    ret                                           ; $57f7: $c9


    rst $38                                       ; $57f8: $ff
    nop                                           ; $57f9: $00
    rst $38                                       ; $57fa: $ff
    ld bc, $73ff                                  ; $57fb: $01 $ff $73
    rst $38                                       ; $57fe: $ff
    ei                                            ; $57ff: $fb
    rst $08                                       ; $5800: $cf
    rst $08                                       ; $5801: $cf
    rst $00                                       ; $5802: $c7
    rst $00                                       ; $5803: $c7
    rst $20                                       ; $5804: $e7
    ld h, a                                       ; $5805: $67
    di                                            ; $5806: $f3
    inc sp                                        ; $5807: $33
    rst $38                                       ; $5808: $ff
    nop                                           ; $5809: $00
    rst $38                                       ; $580a: $ff
    pop hl                                        ; $580b: $e1
    rst $38                                       ; $580c: $ff
    pop af                                        ; $580d: $f1
    ccf                                           ; $580e: $3f
    inc sp                                        ; $580f: $33
    ccf                                           ; $5810: $3f
    dec sp                                        ; $5811: $3b
    rra                                           ; $5812: $1f
    dec de                                        ; $5813: $1b
    sbc [hl]                                      ; $5814: $9e
    sbc [hl]                                      ; $5815: $9e
    sbc [hl]                                      ; $5816: $9e
    sbc [hl]                                      ; $5817: $9e
    rst $38                                       ; $5818: $ff
    ldh a, [rIE]                                  ; $5819: $f0 $ff
    ld hl, sp-$61                                 ; $581b: $f8 $9f
    sbc c                                         ; $581d: $99
    rra                                           ; $581e: $1f
    dec de                                        ; $581f: $1b
    ccf                                           ; $5820: $3f
    dec sp                                        ; $5821: $3b
    ccf                                           ; $5822: $3f
    scf                                           ; $5823: $37
    ld a, $36                                     ; $5824: $3e $36
    ld a, [hl]                                    ; $5826: $7e
    ld a, [hl]                                    ; $5827: $7e
    rst $38                                       ; $5828: $ff
    nop                                           ; $5829: $00
    rst $38                                       ; $582a: $ff
    ldh a, [rIE]                                  ; $582b: $f0 $ff
    ld hl, sp-$61                                 ; $582d: $f8 $9f
    sbc e                                         ; $582f: $9b
    rra                                           ; $5830: $1f
    rra                                           ; $5831: $1f
    ld a, $36                                     ; $5832: $3e $36
    ld a, $36                                     ; $5834: $3e $36
    ld a, [hl]                                    ; $5836: $7e
    ld a, [hl]                                    ; $5837: $7e
    rst $38                                       ; $5838: $ff
    nop                                           ; $5839: $00
    rst $38                                       ; $583a: $ff
    nop                                           ; $583b: $00
    rst $38                                       ; $583c: $ff
    ld bc, $81ff                                  ; $583d: $01 $ff $81
    rst $38                                       ; $5840: $ff
    jp $efff                                      ; $5841: $c3 $ff $ef


    ld a, a                                       ; $5844: $7f
    ld a, a                                       ; $5845: $7f
    dec sp                                        ; $5846: $3b
    dec sp                                        ; $5847: $3b
    rst $38                                       ; $5848: $ff
    nop                                           ; $5849: $00
    rst $38                                       ; $584a: $ff
    ldh [rIE], a                                  ; $584b: $e0 $ff
    pop af                                        ; $584d: $f1
    cp a                                          ; $584e: $bf
    or e                                          ; $584f: $b3
    rra                                           ; $5850: $1f
    dec de                                        ; $5851: $1b
    ld e, $1e                                     ; $5852: $1e $1e
    sbc [hl]                                      ; $5854: $9e
    sbc [hl]                                      ; $5855: $9e
    adc [hl]                                      ; $5856: $8e
    adc [hl]                                      ; $5857: $8e
    rst $38                                       ; $5858: $ff
    ld [hl], b                                    ; $5859: $70
    rst $38                                       ; $585a: $ff
    ld hl, sp-$61                                 ; $585b: $f8 $9f
    sbc b                                         ; $585d: $98
    rra                                           ; $585e: $1f
    jr jr_04e_58a0                                ; $585f: $18 $3f

    jr nc, @+$41                                  ; $5861: $30 $3f

    jr nc, jr_04e_58e4                            ; $5863: $30 $7f

    ld h, b                                       ; $5865: $60
    ld a, a                                       ; $5866: $7f
    ld h, b                                       ; $5867: $60
    rst $38                                       ; $5868: $ff
    nop                                           ; $5869: $00
    rst $38                                       ; $586a: $ff
    nop                                           ; $586b: $00
    rst $38                                       ; $586c: $ff
    nop                                           ; $586d: $00
    rst $38                                       ; $586e: $ff
    nop                                           ; $586f: $00
    rst $38                                       ; $5870: $ff
    nop                                           ; $5871: $00
    rst $38                                       ; $5872: $ff
    inc bc                                        ; $5873: $03
    rst $38                                       ; $5874: $ff
    rlca                                          ; $5875: $07
    db $fc                                        ; $5876: $fc
    inc b                                         ; $5877: $04
    rst $38                                       ; $5878: $ff
    nop                                           ; $5879: $00
    rst $38                                       ; $587a: $ff
    nop                                           ; $587b: $00
    rst $38                                       ; $587c: $ff
    nop                                           ; $587d: $00
    rst $38                                       ; $587e: $ff
    nop                                           ; $587f: $00
    rst $38                                       ; $5880: $ff
    jr @+$01                                      ; $5881: $18 $ff

    inc a                                         ; $5883: $3c
    rst $20                                       ; $5884: $e7
    and h                                         ; $5885: $a4
    rst $20                                       ; $5886: $e7
    and $ff                                       ; $5887: $e6 $ff
    nop                                           ; $5889: $00
    rst $38                                       ; $588a: $ff
    nop                                           ; $588b: $00
    rst $38                                       ; $588c: $ff
    nop                                           ; $588d: $00
    rst $38                                       ; $588e: $ff
    jr @+$01                                      ; $588f: $18 $ff

    inc a                                         ; $5891: $3c
    rst $20                                       ; $5892: $e7
    inc h                                         ; $5893: $24
    rst $20                                       ; $5894: $e7
    ld h, h                                       ; $5895: $64
    rst $08                                       ; $5896: $cf
    ld c, h                                       ; $5897: $4c
    rst $38                                       ; $5898: $ff
    nop                                           ; $5899: $00
    rst $38                                       ; $589a: $ff
    nop                                           ; $589b: $00
    rst $38                                       ; $589c: $ff
    nop                                           ; $589d: $00
    rst $38                                       ; $589e: $ff
    nop                                           ; $589f: $00

jr_04e_58a0:
    rst $38                                       ; $58a0: $ff
    jr nc, @+$01                                  ; $58a1: $30 $ff

    ld a, b                                       ; $58a3: $78
    rst $08                                       ; $58a4: $cf
    ret z                                         ; $58a5: $c8

    adc a                                         ; $58a6: $8f
    adc b                                         ; $58a7: $88
    rst $38                                       ; $58a8: $ff
    nop                                           ; $58a9: $00
    rst $38                                       ; $58aa: $ff
    nop                                           ; $58ab: $00
    rst $38                                       ; $58ac: $ff
    nop                                           ; $58ad: $00
    rst $38                                       ; $58ae: $ff
    nop                                           ; $58af: $00
    rst $38                                       ; $58b0: $ff
    nop                                           ; $58b1: $00
    rst $38                                       ; $58b2: $ff
    ld bc, $03ff                                  ; $58b3: $01 $ff $03
    cp $c2                                        ; $58b6: $fe $c2
    rst $38                                       ; $58b8: $ff
    nop                                           ; $58b9: $00
    rst $38                                       ; $58ba: $ff
    nop                                           ; $58bb: $00
    rst $38                                       ; $58bc: $ff
    nop                                           ; $58bd: $00
    rst $38                                       ; $58be: $ff
    ld bc, $03ff                                  ; $58bf: $01 $ff $03
    cp $86                                        ; $58c2: $fe $86
    db $fc                                        ; $58c4: $fc
    call nz, $6c7c                                ; $58c5: $c4 $7c $6c
    rst $38                                       ; $58c8: $ff
    nop                                           ; $58c9: $00
    rst $38                                       ; $58ca: $ff
    nop                                           ; $58cb: $00
    rst $38                                       ; $58cc: $ff
    nop                                           ; $58cd: $00
    rst $38                                       ; $58ce: $ff
    add b                                         ; $58cf: $80
    rst $38                                       ; $58d0: $ff
    ret nz                                        ; $58d1: $c0

    ld a, a                                       ; $58d2: $7f
    ld b, b                                       ; $58d3: $40
    ld a, a                                       ; $58d4: $7f
    ld b, b                                       ; $58d5: $40
    rst $38                                       ; $58d6: $ff
    ret nz                                        ; $58d7: $c0

    nop                                           ; $58d8: $00
    nop                                           ; $58d9: $00
    nop                                           ; $58da: $00
    nop                                           ; $58db: $00
    nop                                           ; $58dc: $00
    nop                                           ; $58dd: $00
    nop                                           ; $58de: $00
    nop                                           ; $58df: $00
    nop                                           ; $58e0: $00
    nop                                           ; $58e1: $00
    nop                                           ; $58e2: $00
    nop                                           ; $58e3: $00

jr_04e_58e4:
    nop                                           ; $58e4: $00
    nop                                           ; $58e5: $00
    nop                                           ; $58e6: $00
    nop                                           ; $58e7: $00
    nop                                           ; $58e8: $00
    nop                                           ; $58e9: $00
    nop                                           ; $58ea: $00
    nop                                           ; $58eb: $00
    nop                                           ; $58ec: $00
    nop                                           ; $58ed: $00
    nop                                           ; $58ee: $00
    nop                                           ; $58ef: $00
    nop                                           ; $58f0: $00
    nop                                           ; $58f1: $00
    nop                                           ; $58f2: $00
    nop                                           ; $58f3: $00
    nop                                           ; $58f4: $00
    nop                                           ; $58f5: $00
    nop                                           ; $58f6: $00
    nop                                           ; $58f7: $00
    di                                            ; $58f8: $f3
    inc sp                                        ; $58f9: $33
    ld sp, hl                                     ; $58fa: $f9
    add hl, de                                    ; $58fb: $19
    ld sp, hl                                     ; $58fc: $f9
    ld a, c                                       ; $58fd: $79
    db $fc                                        ; $58fe: $fc
    db $fc                                        ; $58ff: $fc
    call z, $c4cc                                 ; $5900: $cc $cc $c4
    call nz, $e6e6                                ; $5903: $c4 $e6 $e6
    ld [c], a                                     ; $5906: $e2
    ld h, d                                       ; $5907: $62
    adc [hl]                                      ; $5908: $8e
    adc [hl]                                      ; $5909: $8e
    call z, $cccc                                 ; $590a: $cc $cc $cc
    call z, $cccc                                 ; $590d: $cc $cc $cc
    ret z                                         ; $5910: $c8

    ret z                                         ; $5911: $c8

    ld c, b                                       ; $5912: $48
    ld c, b                                       ; $5913: $48
    ld b, b                                       ; $5914: $40
    ld b, b                                       ; $5915: $40
    nop                                           ; $5916: $00
    nop                                           ; $5917: $00
    ld a, [hl]                                    ; $5918: $7e
    ld a, [hl]                                    ; $5919: $7e
    ld [hl], e                                    ; $591a: $73
    ld [hl], e                                    ; $591b: $73
    ld h, e                                       ; $591c: $63
    ld h, e                                       ; $591d: $63
    db $e3                                        ; $591e: $e3
    db $e3                                        ; $591f: $e3
    rst $00                                       ; $5920: $c7
    rst $00                                       ; $5921: $c7
    rst $00                                       ; $5922: $c7
    rst $00                                       ; $5923: $c7
    adc h                                         ; $5924: $8c
    adc h                                         ; $5925: $8c
    adc b                                         ; $5926: $88
    adc b                                         ; $5927: $88
    ld a, a                                       ; $5928: $7f
    ld a, a                                       ; $5929: $7f
    ld [hl], e                                    ; $592a: $73
    ld [hl], e                                    ; $592b: $73
    ld h, e                                       ; $592c: $63
    ld h, e                                       ; $592d: $63
    db $e3                                        ; $592e: $e3
    db $e3                                        ; $592f: $e3
    rst $00                                       ; $5930: $c7
    rst $00                                       ; $5931: $c7
    rst $00                                       ; $5932: $c7
    rst $00                                       ; $5933: $c7
    adc h                                         ; $5934: $8c
    adc h                                         ; $5935: $8c
    adc b                                         ; $5936: $88
    adc b                                         ; $5937: $88
    ld sp, $3131                                  ; $5938: $31 $31 $31
    ld sp, $1919                                  ; $593b: $31 $19 $19
    sbc b                                         ; $593e: $98
    sbc b                                         ; $593f: $98
    sbc b                                         ; $5940: $98
    sbc b                                         ; $5941: $98
    adc b                                         ; $5942: $88
    adc b                                         ; $5943: $88
    adc h                                         ; $5944: $8c
    adc h                                         ; $5945: $8c
    adc h                                         ; $5946: $8c
    adc h                                         ; $5947: $8c
    adc h                                         ; $5948: $8c
    adc h                                         ; $5949: $8c
    adc h                                         ; $594a: $8c
    adc h                                         ; $594b: $8c
    adc h                                         ; $594c: $8c
    adc h                                         ; $594d: $8c
    call z, $cccc                                 ; $594e: $cc $cc $cc
    call z, $c8c8                                 ; $5951: $cc $c8 $c8
    ld c, b                                       ; $5954: $48
    ld c, b                                       ; $5955: $48
    ld [$7f08], sp                                ; $5956: $08 $08 $7f
    ld l, [hl]                                    ; $5959: $6e
    ld a, a                                       ; $595a: $7f
    ld e, a                                       ; $595b: $5f
    di                                            ; $595c: $f3
    di                                            ; $595d: $f3
    db $e3                                        ; $595e: $e3
    db $e3                                        ; $595f: $e3
    rst $20                                       ; $5960: $e7
    rst $20                                       ; $5961: $e7
    rst $00                                       ; $5962: $c7
    add $cf                                       ; $5963: $c6 $cf
    call z, $8c8f                                 ; $5965: $cc $8f $8c
    db $fc                                        ; $5968: $fc
    inc b                                         ; $5969: $04
    cp $06                                        ; $596a: $fe $06
    rst $38                                       ; $596c: $ff
    inc bc                                        ; $596d: $03
    rst $38                                       ; $596e: $ff
    ld bc, $03ff                                  ; $596f: $01 $ff $03
    rst $38                                       ; $5972: $ff
    rlca                                          ; $5973: $07
    db $fc                                        ; $5974: $fc
    inc b                                         ; $5975: $04
    db $fc                                        ; $5976: $fc
    inc b                                         ; $5977: $04
    ld h, e                                       ; $5978: $63
    ld h, d                                       ; $5979: $62
    inc sp                                        ; $597a: $33
    inc sp                                        ; $597b: $33
    ld sp, $1931                                  ; $597c: $31 $31 $19
    add hl, de                                    ; $597f: $19
    sbc c                                         ; $5980: $99
    sbc c                                         ; $5981: $99
    sbc c                                         ; $5982: $99
    sbc c                                         ; $5983: $99
    ret                                           ; $5984: $c9


    ret                                           ; $5985: $c9


    ld c, c                                       ; $5986: $49
    ld c, c                                       ; $5987: $49
    rst $08                                       ; $5988: $cf
    ld c, c                                       ; $5989: $49
    rst $08                                       ; $598a: $cf
    ret                                           ; $598b: $c9


    sbc a                                         ; $598c: $9f
    sbc a                                         ; $598d: $9f
    sbc l                                         ; $598e: $9d
    sbc l                                         ; $598f: $9d
    sbc b                                         ; $5990: $98
    sbc b                                         ; $5991: $98
    cp c                                          ; $5992: $b9
    cp c                                          ; $5993: $b9
    ld sp, $3331                                  ; $5994: $31 $31 $33
    inc sp                                        ; $5997: $33
    sbc a                                         ; $5998: $9f
    sbc c                                         ; $5999: $99
    rra                                           ; $599a: $1f
    ld de, $bfbf                                  ; $599b: $11 $bf $bf
    cp e                                          ; $599e: $bb
    cp e                                          ; $599f: $bb
    pop af                                        ; $59a0: $f1
    pop af                                        ; $59a1: $f1
    di                                            ; $59a2: $f3
    di                                            ; $59a3: $f3
    db $e3                                        ; $59a4: $e3
    db $e3                                        ; $59a5: $e3
    ld h, [hl]                                    ; $59a6: $66
    ld h, [hl]                                    ; $59a7: $66
    cp $ee                                        ; $59a8: $fe $ee
    ld a, $3e                                     ; $59aa: $3e $3e
    inc sp                                        ; $59ac: $33
    inc sp                                        ; $59ad: $33
    ld sp, $1931                                  ; $59ae: $31 $31 $19
    add hl, de                                    ; $59b1: $19
    sbc c                                         ; $59b2: $99
    sbc c                                         ; $59b3: $99
    sbc c                                         ; $59b4: $99
    sbc c                                         ; $59b5: $99
    adc b                                         ; $59b6: $88
    adc b                                         ; $59b7: $88
    inc a                                         ; $59b8: $3c
    inc l                                         ; $59b9: $2c
    add hl, sp                                    ; $59ba: $39
    add hl, sp                                    ; $59bb: $39
    add hl, sp                                    ; $59bc: $39
    add hl, sp                                    ; $59bd: $39
    add hl, de                                    ; $59be: $19
    add hl, de                                    ; $59bf: $19
    add hl, de                                    ; $59c0: $19
    add hl, de                                    ; $59c1: $19
    sbc e                                         ; $59c2: $9b
    sbc e                                         ; $59c3: $9b
    sbc e                                         ; $59c4: $9b
    sbc e                                         ; $59c5: $9b
    sub e                                         ; $59c6: $93
    sub e                                         ; $59c7: $93
    rst $38                                       ; $59c8: $ff
    add b                                         ; $59c9: $80
    rst $38                                       ; $59ca: $ff
    add b                                         ; $59cb: $80
    rst $38                                       ; $59cc: $ff
    jr nc, @+$01                                  ; $59cd: $30 $ff

    ld a, b                                       ; $59cf: $78
    rst $08                                       ; $59d0: $cf
    ret z                                         ; $59d1: $c8

    adc a                                         ; $59d2: $8f
    adc b                                         ; $59d3: $88
    sbc a                                         ; $59d4: $9f
    sbc b                                         ; $59d5: $98
    rra                                           ; $59d6: $1f
    stop                                          ; $59d7: $10 $00
    nop                                           ; $59d9: $00
    nop                                           ; $59da: $00
    nop                                           ; $59db: $00
    nop                                           ; $59dc: $00
    nop                                           ; $59dd: $00
    nop                                           ; $59de: $00
    nop                                           ; $59df: $00
    nop                                           ; $59e0: $00
    nop                                           ; $59e1: $00
    nop                                           ; $59e2: $00
    nop                                           ; $59e3: $00
    nop                                           ; $59e4: $00
    nop                                           ; $59e5: $00
    nop                                           ; $59e6: $00
    nop                                           ; $59e7: $00
    nop                                           ; $59e8: $00
    nop                                           ; $59e9: $00
    nop                                           ; $59ea: $00
    nop                                           ; $59eb: $00
    nop                                           ; $59ec: $00
    nop                                           ; $59ed: $00
    nop                                           ; $59ee: $00
    nop                                           ; $59ef: $00
    nop                                           ; $59f0: $00
    nop                                           ; $59f1: $00
    nop                                           ; $59f2: $00
    nop                                           ; $59f3: $00
    nop                                           ; $59f4: $00
    nop                                           ; $59f5: $00
    nop                                           ; $59f6: $00
    nop                                           ; $59f7: $00
    ldh a, [$30]                                  ; $59f8: $f0 $30
    ld hl, sp+$38                                 ; $59fa: $f8 $38
    ld hl, sp+$18                                 ; $59fc: $f8 $18
    ld hl, sp+$18                                 ; $59fe: $f8 $18
    db $fc                                        ; $5a00: $fc
    inc c                                         ; $5a01: $0c
    db $fc                                        ; $5a02: $fc
    inc c                                         ; $5a03: $0c
    rst $38                                       ; $5a04: $ff
    rrca                                          ; $5a05: $0f
    rst $38                                       ; $5a06: $ff
    rlca                                          ; $5a07: $07
    nop                                           ; $5a08: $00
    nop                                           ; $5a09: $00
    nop                                           ; $5a0a: $00
    nop                                           ; $5a0b: $00
    nop                                           ; $5a0c: $00
    nop                                           ; $5a0d: $00
    nop                                           ; $5a0e: $00
    nop                                           ; $5a0f: $00
    nop                                           ; $5a10: $00
    nop                                           ; $5a11: $00
    ld h, e                                       ; $5a12: $63
    ld h, e                                       ; $5a13: $63
    rst $38                                       ; $5a14: $ff
    rst $38                                       ; $5a15: $ff
    rst $38                                       ; $5a16: $ff
    cp h                                          ; $5a17: $bc
    ld [$0008], sp                                ; $5a18: $08 $08 $00
    nop                                           ; $5a1b: $00
    nop                                           ; $5a1c: $00
    nop                                           ; $5a1d: $00
    nop                                           ; $5a1e: $00
    nop                                           ; $5a1f: $00
    nop                                           ; $5a20: $00
    nop                                           ; $5a21: $00
    sbc a                                         ; $5a22: $9f
    sbc a                                         ; $5a23: $9f
    rst $38                                       ; $5a24: $ff
    rst $38                                       ; $5a25: $ff
    rst $38                                       ; $5a26: $ff
    ld [hl], b                                    ; $5a27: $70
    ld [$0008], sp                                ; $5a28: $08 $08 $00
    nop                                           ; $5a2b: $00
    nop                                           ; $5a2c: $00
    nop                                           ; $5a2d: $00
    nop                                           ; $5a2e: $00
    nop                                           ; $5a2f: $00
    nop                                           ; $5a30: $00

jr_04e_5a31:
    nop                                           ; $5a31: $00
    sbc a                                         ; $5a32: $9f
    sbc a                                         ; $5a33: $9f
    rst $38                                       ; $5a34: $ff
    rst $38                                       ; $5a35: $ff
    rst $38                                       ; $5a36: $ff
    pop af                                        ; $5a37: $f1
    inc b                                         ; $5a38: $04
    inc b                                         ; $5a39: $04
    nop                                           ; $5a3a: $00
    nop                                           ; $5a3b: $00
    nop                                           ; $5a3c: $00
    nop                                           ; $5a3d: $00
    nop                                           ; $5a3e: $00
    nop                                           ; $5a3f: $00
    nop                                           ; $5a40: $00
    nop                                           ; $5a41: $00
    inc a                                         ; $5a42: $3c
    inc a                                         ; $5a43: $3c
    rst $38                                       ; $5a44: $ff
    rst $38                                       ; $5a45: $ff
    rst $38                                       ; $5a46: $ff
    rst $20                                       ; $5a47: $e7
    nop                                           ; $5a48: $00
    nop                                           ; $5a49: $00
    nop                                           ; $5a4a: $00
    nop                                           ; $5a4b: $00
    nop                                           ; $5a4c: $00
    nop                                           ; $5a4d: $00
    nop                                           ; $5a4e: $00
    nop                                           ; $5a4f: $00
    nop                                           ; $5a50: $00
    nop                                           ; $5a51: $00
    and $e6                                       ; $5a52: $e6 $e6
    rst $38                                       ; $5a54: $ff
    rst $38                                       ; $5a55: $ff
    rst $38                                       ; $5a56: $ff
    cp l                                          ; $5a57: $bd
    rrca                                          ; $5a58: $0f
    inc c                                         ; $5a59: $0c
    rra                                           ; $5a5a: $1f
    jr jr_04e_5a7c                                ; $5a5b: $18 $1f

    jr jr_04e_5a7e                                ; $5a5d: $18 $1f

    jr jr_04e_5aa0                                ; $5a5f: $18 $3f

    jr nc, jr_04e_5aa2                            ; $5a61: $30 $3f

    jr nc, @+$01                                  ; $5a63: $30 $ff

    ldh a, [rIE]                                  ; $5a65: $f0 $ff
    ldh [$fe], a                                  ; $5a67: $e0 $fe
    ld b, $ff                                     ; $5a69: $06 $ff
    inc bc                                        ; $5a6b: $03
    rst $38                                       ; $5a6c: $ff
    ld bc, $01ff                                  ; $5a6d: $01 $ff $01
    rst $38                                       ; $5a70: $ff
    nop                                           ; $5a71: $00
    rst $38                                       ; $5a72: $ff
    nop                                           ; $5a73: $00
    rst $38                                       ; $5a74: $ff
    nop                                           ; $5a75: $00
    rst $38                                       ; $5a76: $ff
    nop                                           ; $5a77: $00
    ld c, b                                       ; $5a78: $48
    ld c, b                                       ; $5a79: $48
    nop                                           ; $5a7a: $00
    nop                                           ; $5a7b: $00

jr_04e_5a7c:
    nop                                           ; $5a7c: $00
    nop                                           ; $5a7d: $00

jr_04e_5a7e:
    add b                                         ; $5a7e: $80
    add b                                         ; $5a7f: $80
    add b                                         ; $5a80: $80
    add b                                         ; $5a81: $80
    call z, $ffcc                                 ; $5a82: $cc $cc $ff
    ld a, a                                       ; $5a85: $7f
    rst $38                                       ; $5a86: $ff
    inc sp                                        ; $5a87: $33
    ld [hl+], a                                   ; $5a88: $22
    ld [hl+], a                                   ; $5a89: $22
    ld [bc], a                                    ; $5a8a: $02
    ld [bc], a                                    ; $5a8b: $02
    nop                                           ; $5a8c: $00
    nop                                           ; $5a8d: $00
    nop                                           ; $5a8e: $00
    nop                                           ; $5a8f: $00
    nop                                           ; $5a90: $00
    nop                                           ; $5a91: $00
    ld h, a                                       ; $5a92: $67
    ld h, a                                       ; $5a93: $67
    rst $38                                       ; $5a94: $ff
    rst $38                                       ; $5a95: $ff
    rst $38                                       ; $5a96: $ff
    sbc b                                         ; $5a97: $98
    ld b, h                                       ; $5a98: $44
    ld b, h                                       ; $5a99: $44
    inc b                                         ; $5a9a: $04
    inc b                                         ; $5a9b: $04
    nop                                           ; $5a9c: $00
    nop                                           ; $5a9d: $00
    nop                                           ; $5a9e: $00
    nop                                           ; $5a9f: $00

jr_04e_5aa0:
    nop                                           ; $5aa0: $00
    nop                                           ; $5aa1: $00

jr_04e_5aa2:
    rst $08                                       ; $5aa2: $cf
    rst $08                                       ; $5aa3: $cf
    rst $38                                       ; $5aa4: $ff
    rst $38                                       ; $5aa5: $ff
    rst $38                                       ; $5aa6: $ff
    jr nc, jr_04e_5a31                            ; $5aa7: $30 $88

    adc b                                         ; $5aa9: $88
    ld [$0008], sp                                ; $5aaa: $08 $08 $00
    nop                                           ; $5aad: $00
    nop                                           ; $5aae: $00
    nop                                           ; $5aaf: $00
    nop                                           ; $5ab0: $00
    nop                                           ; $5ab1: $00
    add hl, sp                                    ; $5ab2: $39
    add hl, sp                                    ; $5ab3: $39
    rst $38                                       ; $5ab4: $ff
    rst $38                                       ; $5ab5: $ff
    rst $38                                       ; $5ab6: $ff
    add $93                                       ; $5ab7: $c6 $93
    sub e                                         ; $5ab9: $93
    nop                                           ; $5aba: $00
    nop                                           ; $5abb: $00
    nop                                           ; $5abc: $00
    nop                                           ; $5abd: $00
    nop                                           ; $5abe: $00
    nop                                           ; $5abf: $00
    nop                                           ; $5ac0: $00
    nop                                           ; $5ac1: $00
    call z, $ffcc                                 ; $5ac2: $cc $cc $ff
    rst $38                                       ; $5ac5: $ff
    rst $38                                       ; $5ac6: $ff
    inc sp                                        ; $5ac7: $33
    ccf                                           ; $5ac8: $3f
    jr nc, @+$41                                  ; $5ac9: $30 $3f

    jr nz, jr_04e_5b4c                            ; $5acb: $20 $7f

    ld h, b                                       ; $5acd: $60
    ld a, a                                       ; $5ace: $7f
    ld h, b                                       ; $5acf: $60
    ld a, a                                       ; $5ad0: $7f
    ld b, b                                       ; $5ad1: $40
    rst $38                                       ; $5ad2: $ff
    ret nz                                        ; $5ad3: $c0

    rst $38                                       ; $5ad4: $ff
    ret nz                                        ; $5ad5: $c0

    rst $38                                       ; $5ad6: $ff
    add b                                         ; $5ad7: $80
    nop                                           ; $5ad8: $00
    nop                                           ; $5ad9: $00
    nop                                           ; $5ada: $00
    nop                                           ; $5adb: $00
    nop                                           ; $5adc: $00
    nop                                           ; $5add: $00
    nop                                           ; $5ade: $00
    nop                                           ; $5adf: $00
    nop                                           ; $5ae0: $00
    nop                                           ; $5ae1: $00
    nop                                           ; $5ae2: $00
    nop                                           ; $5ae3: $00
    nop                                           ; $5ae4: $00
    nop                                           ; $5ae5: $00
    nop                                           ; $5ae6: $00
    nop                                           ; $5ae7: $00
    nop                                           ; $5ae8: $00
    nop                                           ; $5ae9: $00
    nop                                           ; $5aea: $00
    nop                                           ; $5aeb: $00
    nop                                           ; $5aec: $00
    nop                                           ; $5aed: $00
    nop                                           ; $5aee: $00
    nop                                           ; $5aef: $00
    nop                                           ; $5af0: $00
    nop                                           ; $5af1: $00
    nop                                           ; $5af2: $00
    nop                                           ; $5af3: $00
    nop                                           ; $5af4: $00
    nop                                           ; $5af5: $00
    nop                                           ; $5af6: $00
    nop                                           ; $5af7: $00
    rst $38                                       ; $5af8: $ff
    inc bc                                        ; $5af9: $03
    db $fc                                        ; $5afa: $fc
    inc b                                         ; $5afb: $04
    db $fc                                        ; $5afc: $fc
    ld [hl], h                                    ; $5afd: $74
    sbc h                                         ; $5afe: $9c
    sbc h                                         ; $5aff: $9c
    adc h                                         ; $5b00: $8c
    adc h                                         ; $5b01: $8c
    add $c6                                       ; $5b02: $c6 $c6

jr_04e_5b04:
    and $66                                       ; $5b04: $e6 $66
    ld a, [c]                                     ; $5b06: $f2
    ld [hl-], a                                   ; $5b07: $32
    rst $38                                       ; $5b08: $ff
    ld b, $f9                                     ; $5b09: $06 $f9
    adc c                                         ; $5b0b: $89
    ld sp, hl                                     ; $5b0c: $f9
    adc c                                         ; $5b0d: $89
    ld sp, hl                                     ; $5b0e: $f9
    reti                                          ; $5b0f: $d9


    ld [hl], e                                    ; $5b10: $73
    ld d, e                                       ; $5b11: $53
    ld [hl], e                                    ; $5b12: $73
    ld d, d                                       ; $5b13: $52
    ld h, a                                       ; $5b14: $67
    ld h, a                                       ; $5b15: $67
    ld h, [hl]                                    ; $5b16: $66
    ld h, [hl]                                    ; $5b17: $66
    rst $38                                       ; $5b18: $ff
    nop                                           ; $5b19: $00
    rst $38                                       ; $5b1a: $ff
    jr jr_04e_5b04                                ; $5b1b: $18 $e7

    inc h                                         ; $5b1d: $24
    rst $20                                       ; $5b1e: $e7
    ld h, h                                       ; $5b1f: $64
    rst $08                                       ; $5b20: $cf
    ld c, h                                       ; $5b21: $4c
    rst $08                                       ; $5b22: $cf
    ret                                           ; $5b23: $c9


    rst $18                                       ; $5b24: $df
    rst $18                                       ; $5b25: $df
    ld e, c                                       ; $5b26: $59
    ld e, c                                       ; $5b27: $59
    rst $38                                       ; $5b28: $ff
    nop                                           ; $5b29: $00
    rst $38                                       ; $5b2a: $ff
    inc bc                                        ; $5b2b: $03
    db $fc                                        ; $5b2c: $fc
    inc b                                         ; $5b2d: $04
    db $fc                                        ; $5b2e: $fc
    inc b                                         ; $5b2f: $04
    db $fc                                        ; $5b30: $fc
    inc b                                         ; $5b31: $04
    db $fc                                        ; $5b32: $fc
    call nz, Call_000_3e3e                        ; $5b33: $c4 $3e $3e
    ld h, $26                                     ; $5b36: $26 $26
    rst $38                                       ; $5b38: $ff
    ld b, $f9                                     ; $5b39: $06 $f9
    add hl, bc                                    ; $5b3b: $09
    ld sp, hl                                     ; $5b3c: $f9
    adc c                                         ; $5b3d: $89
    di                                            ; $5b3e: $f3
    sub e                                         ; $5b3f: $93
    di                                            ; $5b40: $f3
    sub d                                         ; $5b41: $92
    rst $20                                       ; $5b42: $e7
    and $67                                       ; $5b43: $e6 $67
    ld h, h                                       ; $5b45: $64
    ld h, a                                       ; $5b46: $67
    ld h, h                                       ; $5b47: $64
    rst $38                                       ; $5b48: $ff
    nop                                           ; $5b49: $00
    rst $38                                       ; $5b4a: $ff
    nop                                           ; $5b4b: $00

jr_04e_5b4c:
    rst $38                                       ; $5b4c: $ff
    ld bc, $19ff                                  ; $5b4d: $01 $ff $19
    rst $30                                       ; $5b50: $f7
    dec d                                         ; $5b51: $15
    di                                            ; $5b52: $f3
    inc de                                        ; $5b53: $13
    ld sp, hl                                     ; $5b54: $f9
    add hl, bc                                    ; $5b55: $09
    ld sp, hl                                     ; $5b56: $f9
    add hl, bc                                    ; $5b57: $09
    rst $38                                       ; $5b58: $ff
    nop                                           ; $5b59: $00
    rst $38                                       ; $5b5a: $ff
    ld b, $fb                                     ; $5b5b: $06 $fb
    adc d                                         ; $5b5d: $8a
    ld [hl], e                                    ; $5b5e: $73
    ld d, d                                       ; $5b5f: $52
    ld [hl], a                                    ; $5b60: $77
    ld d, h                                       ; $5b61: $54
    ld [hl], a                                    ; $5b62: $77
    ld d, h                                       ; $5b63: $54
    daa                                           ; $5b64: $27
    daa                                           ; $5b65: $27

jr_04e_5b66:
    dec h                                         ; $5b66: $25
    dec h                                         ; $5b67: $25
    rst $38                                       ; $5b68: $ff
    nop                                           ; $5b69: $00
    rst $38                                       ; $5b6a: $ff
    nop                                           ; $5b6b: $00
    rst $38                                       ; $5b6c: $ff
    jr nc, @-$1f                                  ; $5b6d: $30 $df

    ld d, b                                       ; $5b6f: $50
    rst $18                                       ; $5b70: $df
    ld d, d                                       ; $5b71: $52
    sbc l                                         ; $5b72: $9d
    sub l                                         ; $5b73: $95
    cp h                                          ; $5b74: $bc
    cp h                                          ; $5b75: $bc
    inc h                                         ; $5b76: $24
    inc h                                         ; $5b77: $24
    rst $38                                       ; $5b78: $ff
    nop                                           ; $5b79: $00
    rst $38                                       ; $5b7a: $ff
    nop                                           ; $5b7b: $00
    rst $38                                       ; $5b7c: $ff
    jr jr_04e_5b66                                ; $5b7d: $18 $e7

    dec h                                         ; $5b7f: $25
    rst $20                                       ; $5b80: $e7
    dec h                                         ; $5b81: $25
    or $76                                        ; $5b82: $f6 $76
    sub d                                         ; $5b84: $92
    sub d                                         ; $5b85: $92
    sub d                                         ; $5b86: $92
    sub d                                         ; $5b87: $92
    rst $38                                       ; $5b88: $ff
    nop                                           ; $5b89: $00
    rst $38                                       ; $5b8a: $ff
    ld b, b                                       ; $5b8b: $40
    cp a                                          ; $5b8c: $bf
    and b                                         ; $5b8d: $a0
    ccf                                           ; $5b8e: $3f
    jr nz, jr_04e_5c10                            ; $5b8f: $20 $7f

    ld b, b                                       ; $5b91: $40
    ld a, a                                       ; $5b92: $7f
    ld b, b                                       ; $5b93: $40
    ld a, a                                       ; $5b94: $7f
    ld e, b                                       ; $5b95: $58
    rst $28                                       ; $5b96: $ef
    xor b                                         ; $5b97: $a8
    rst $38                                       ; $5b98: $ff
    nop                                           ; $5b99: $00
    rst $38                                       ; $5b9a: $ff
    nop                                           ; $5b9b: $00
    rst $38                                       ; $5b9c: $ff
    nop                                           ; $5b9d: $00
    rst $38                                       ; $5b9e: $ff
    nop                                           ; $5b9f: $00
    rst $38                                       ; $5ba0: $ff
    nop                                           ; $5ba1: $00
    rst $38                                       ; $5ba2: $ff
    inc bc                                        ; $5ba3: $03
    cp $02                                        ; $5ba4: $fe $02
    rst $38                                       ; $5ba6: $ff
    ld bc, $00ff                                  ; $5ba7: $01 $ff $00
    rst $38                                       ; $5baa: $ff
    nop                                           ; $5bab: $00
    rst $38                                       ; $5bac: $ff
    nop                                           ; $5bad: $00
    rst $38                                       ; $5bae: $ff
    nop                                           ; $5baf: $00
    rst $38                                       ; $5bb0: $ff
    ld bc, $62fe                                  ; $5bb1: $01 $fe $62
    db $dd                                        ; $5bb4: $dd
    push de                                       ; $5bb5: $d5
    ld c, l                                       ; $5bb6: $4d
    ld c, l                                       ; $5bb7: $4d
    rst $38                                       ; $5bb8: $ff
    nop                                           ; $5bb9: $00
    rst $38                                       ; $5bba: $ff
    nop                                           ; $5bbb: $00
    rst $38                                       ; $5bbc: $ff
    nop                                           ; $5bbd: $00
    rst $38                                       ; $5bbe: $ff
    nop                                           ; $5bbf: $00
    rst $38                                       ; $5bc0: $ff
    add b                                         ; $5bc1: $80
    rst $38                                       ; $5bc2: $ff
    or b                                          ; $5bc3: $b0
    rst $28                                       ; $5bc4: $ef
    xor $dd                                       ; $5bc5: $ee $dd
    ld d, l                                       ; $5bc7: $55
    rst $38                                       ; $5bc8: $ff
    nop                                           ; $5bc9: $00
    rst $38                                       ; $5bca: $ff
    nop                                           ; $5bcb: $00
    rst $38                                       ; $5bcc: $ff
    nop                                           ; $5bcd: $00
    rst $38                                       ; $5bce: $ff
    nop                                           ; $5bcf: $00
    rst $38                                       ; $5bd0: $ff
    ld bc, $62fe                                  ; $5bd1: $01 $fe $62
    db $dd                                        ; $5bd4: $dd
    ld d, l                                       ; $5bd5: $55
    db $ed                                        ; $5bd6: $ed
    ld l, l                                       ; $5bd7: $6d
    rst $38                                       ; $5bd8: $ff
    nop                                           ; $5bd9: $00
    rst $38                                       ; $5bda: $ff
    nop                                           ; $5bdb: $00
    rst $38                                       ; $5bdc: $ff
    nop                                           ; $5bdd: $00
    rst $38                                       ; $5bde: $ff
    nop                                           ; $5bdf: $00
    rst $38                                       ; $5be0: $ff
    add b                                         ; $5be1: $80
    rst $38                                       ; $5be2: $ff
    add b                                         ; $5be3: $80
    rst $38                                       ; $5be4: $ff
    nop                                           ; $5be5: $00
    rst $38                                       ; $5be6: $ff
    nop                                           ; $5be7: $00
    nop                                           ; $5be8: $00
    nop                                           ; $5be9: $00
    nop                                           ; $5bea: $00
    nop                                           ; $5beb: $00
    nop                                           ; $5bec: $00
    nop                                           ; $5bed: $00
    nop                                           ; $5bee: $00
    nop                                           ; $5bef: $00
    nop                                           ; $5bf0: $00
    nop                                           ; $5bf1: $00
    nop                                           ; $5bf2: $00
    nop                                           ; $5bf3: $00
    nop                                           ; $5bf4: $00
    nop                                           ; $5bf5: $00
    nop                                           ; $5bf6: $00
    nop                                           ; $5bf7: $00
    di                                            ; $5bf8: $f3
    ld [hl], e                                    ; $5bf9: $73
    sbc e                                         ; $5bfa: $9b
    sbc e                                         ; $5bfb: $9b
    adc c                                         ; $5bfc: $89
    adc c                                         ; $5bfd: $89
    ret nz                                        ; $5bfe: $c0

    ret nz                                        ; $5bff: $c0

    ldh [$60], a                                  ; $5c00: $e0 $60
    ldh [rNR41], a                                ; $5c02: $e0 $20
    pop af                                        ; $5c04: $f1
    ld sp, $1fff                                  ; $5c05: $31 $ff $1f
    ld b, h                                       ; $5c08: $44
    ld b, h                                       ; $5c09: $44
    ld c, h                                       ; $5c0a: $4c
    ld c, h                                       ; $5c0b: $4c
    ld c, c                                       ; $5c0c: $49
    ld c, c                                       ; $5c0d: $49
    nop                                           ; $5c0e: $00
    nop                                           ; $5c0f: $00

jr_04e_5c10:
    nop                                           ; $5c10: $00
    nop                                           ; $5c11: $00
    nop                                           ; $5c12: $00
    nop                                           ; $5c13: $00
    sbc c                                         ; $5c14: $99
    sbc c                                         ; $5c15: $99
    rst $38                                       ; $5c16: $ff
    rst $38                                       ; $5c17: $ff
    or e                                          ; $5c18: $b3
    or e                                          ; $5c19: $b3
    db $e3                                        ; $5c1a: $e3
    db $e3                                        ; $5c1b: $e3
    inc h                                         ; $5c1c: $24
    inc h                                         ; $5c1d: $24
    nop                                           ; $5c1e: $00
    nop                                           ; $5c1f: $00
    nop                                           ; $5c20: $00
    nop                                           ; $5c21: $00
    nop                                           ; $5c22: $00
    nop                                           ; $5c23: $00
    rst $20                                       ; $5c24: $e7
    rst $20                                       ; $5c25: $e7
    rst $38                                       ; $5c26: $ff
    rst $38                                       ; $5c27: $ff
    ld [hl+], a                                   ; $5c28: $22
    ld [hl+], a                                   ; $5c29: $22
    ld [de], a                                    ; $5c2a: $12
    ld [de], a                                    ; $5c2b: $12
    sub d                                         ; $5c2c: $92
    sub d                                         ; $5c2d: $92
    nop                                           ; $5c2e: $00
    nop                                           ; $5c2f: $00
    nop                                           ; $5c30: $00
    nop                                           ; $5c31: $00
    nop                                           ; $5c32: $00
    nop                                           ; $5c33: $00
    dec sp                                        ; $5c34: $3b
    dec sp                                        ; $5c35: $3b
    rst $38                                       ; $5c36: $ff
    rst $38                                       ; $5c37: $ff
    ld c, a                                       ; $5c38: $4f
    ld c, h                                       ; $5c39: $4c
    ld c, a                                       ; $5c3a: $4f
    ld c, [hl]                                    ; $5c3b: $4e
    ld c, c                                       ; $5c3c: $49
    ld c, c                                       ; $5c3d: $49
    ld bc, $0301                                  ; $5c3e: $01 $01 $03
    inc bc                                        ; $5c41: $03
    inc bc                                        ; $5c42: $03
    ld [bc], a                                    ; $5c43: $02
    or a                                          ; $5c44: $b7
    or [hl]                                       ; $5c45: $b6
    rst $38                                       ; $5c46: $ff
    db $fc                                        ; $5c47: $fc
    db $fc                                        ; $5c48: $fc
    inc a                                         ; $5c49: $3c
    db $e4                                        ; $5c4a: $e4
    inc h                                         ; $5c4b: $24
    ld a, [c]                                     ; $5c4c: $f2
    ld [de], a                                    ; $5c4d: $12
    ld hl, sp+$08                                 ; $5c4e: $f8 $08
    ld hl, sp+$08                                 ; $5c50: $f8 $08
    db $fc                                        ; $5c52: $fc
    inc b                                         ; $5c53: $04
    db $fd                                        ; $5c54: $fd
    dec b                                         ; $5c55: $05
    rst $38                                       ; $5c56: $ff
    inc bc                                        ; $5c57: $03
    xor c                                         ; $5c58: $a9
    xor c                                         ; $5c59: $a9
    xor c                                         ; $5c5a: $a9
    xor c                                         ; $5c5b: $a9
    adc c                                         ; $5c5c: $89
    adc c                                         ; $5c5d: $89
    nop                                           ; $5c5e: $00
    nop                                           ; $5c5f: $00
    nop                                           ; $5c60: $00
    nop                                           ; $5c61: $00
    nop                                           ; $5c62: $00
    nop                                           ; $5c63: $00
    sub e                                         ; $5c64: $93
    sub e                                         ; $5c65: $93
    rst $38                                       ; $5c66: $ff
    rst $38                                       ; $5c67: $ff
    ld c, [hl]                                    ; $5c68: $4e
    ld c, [hl]                                    ; $5c69: $4e
    jp z, Jump_04e_52ca                           ; $5c6a: $ca $ca $52

    ld d, d                                       ; $5c6d: $52
    nop                                           ; $5c6e: $00
    nop                                           ; $5c6f: $00
    nop                                           ; $5c70: $00
    nop                                           ; $5c71: $00
    nop                                           ; $5c72: $00
    nop                                           ; $5c73: $00
    ld [hl-], a                                   ; $5c74: $32
    ld [hl-], a                                   ; $5c75: $32
    rst $38                                       ; $5c76: $ff
    rst $38                                       ; $5c77: $ff
    ld c, d                                       ; $5c78: $4a
    ld c, d                                       ; $5c79: $4a
    ld c, d                                       ; $5c7a: $4a
    ld c, d                                       ; $5c7b: $4a
    ld c, d                                       ; $5c7c: $4a
    ld c, d                                       ; $5c7d: $4a
    nop                                           ; $5c7e: $00
    nop                                           ; $5c7f: $00
    nop                                           ; $5c80: $00
    nop                                           ; $5c81: $00
    nop                                           ; $5c82: $00
    nop                                           ; $5c83: $00
    ld h, [hl]                                    ; $5c84: $66
    ld h, [hl]                                    ; $5c85: $66
    rst $38                                       ; $5c86: $ff
    rst $38                                       ; $5c87: $ff
    rst $08                                       ; $5c88: $cf
    ret z                                         ; $5c89: $c8

    sbc a                                         ; $5c8a: $9f
    sub b                                         ; $5c8b: $90
    sbc a                                         ; $5c8c: $9f
    sub b                                         ; $5c8d: $90
    cp a                                          ; $5c8e: $bf
    and b                                         ; $5c8f: $a0
    ccf                                           ; $5c90: $3f
    jr nz, @+$41                                  ; $5c91: $20 $3f

    jr nz, @+$41                                  ; $5c93: $20 $3f

    jr nz, @+$01                                  ; $5c95: $20 $ff

    ret nz                                        ; $5c97: $c0

    rst $38                                       ; $5c98: $ff
    ld bc, $03ff                                  ; $5c99: $01 $ff $03
    cp $02                                        ; $5c9c: $fe $02
    rst $38                                       ; $5c9e: $ff
    inc bc                                        ; $5c9f: $03
    rst $38                                       ; $5ca0: $ff
    ld bc, $00ff                                  ; $5ca1: $01 $ff $00
    rst $38                                       ; $5ca4: $ff
    nop                                           ; $5ca5: $00
    rst $38                                       ; $5ca6: $ff
    nop                                           ; $5ca7: $00
    ld l, c                                       ; $5ca8: $69
    ld l, c                                       ; $5ca9: $69
    xor e                                         ; $5caa: $ab
    xor e                                         ; $5cab: $ab
    xor d                                         ; $5cac: $aa
    xor d                                         ; $5cad: $aa
    ld b, d                                       ; $5cae: $42
    ld b, d                                       ; $5caf: $42
    nop                                           ; $5cb0: $00
    nop                                           ; $5cb1: $00
    add b                                         ; $5cb2: $80
    add b                                         ; $5cb3: $80
    sub c                                         ; $5cb4: $91
    sub c                                         ; $5cb5: $91
    rst $38                                       ; $5cb6: $ff
    ld a, a                                       ; $5cb7: $7f
    db $dd                                        ; $5cb8: $dd
    db $dd                                        ; $5cb9: $dd
    ld d, h                                       ; $5cba: $54
    ld d, h                                       ; $5cbb: $54
    xor $ee                                       ; $5cbc: $ee $ee
    xor d                                         ; $5cbe: $aa
    xor d                                         ; $5cbf: $aa
    nop                                           ; $5cc0: $00
    nop                                           ; $5cc1: $00
    nop                                           ; $5cc2: $00
    nop                                           ; $5cc3: $00
    adc e                                         ; $5cc4: $8b
    adc e                                         ; $5cc5: $8b
    rst $38                                       ; $5cc6: $ff
    rst $38                                       ; $5cc7: $ff
    xor c                                         ; $5cc8: $a9
    xor c                                         ; $5cc9: $a9
    xor e                                         ; $5cca: $ab
    xor e                                         ; $5ccb: $ab
    xor d                                         ; $5ccc: $aa
    xor d                                         ; $5ccd: $aa
    adc d                                         ; $5cce: $8a
    adc d                                         ; $5ccf: $8a
    ld bc, $0101                                  ; $5cd0: $01 $01 $01
    ld bc, $1919                                  ; $5cd3: $01 $19 $19
    rst $38                                       ; $5cd6: $ff
    cp $ff                                        ; $5cd7: $fe $ff
    ret nz                                        ; $5cd9: $c0

    ld a, a                                       ; $5cda: $7f
    ld b, b                                       ; $5cdb: $40
    rst $38                                       ; $5cdc: $ff
    add b                                         ; $5cdd: $80
    rst $38                                       ; $5cde: $ff
    add b                                         ; $5cdf: $80
    rst $38                                       ; $5ce0: $ff
    nop                                           ; $5ce1: $00
    rst $38                                       ; $5ce2: $ff
    nop                                           ; $5ce3: $00
    rst $38                                       ; $5ce4: $ff
    nop                                           ; $5ce5: $00
    rst $38                                       ; $5ce6: $ff
    nop                                           ; $5ce7: $00
    nop                                           ; $5ce8: $00
    nop                                           ; $5ce9: $00

jr_04e_5cea:
    nop                                           ; $5cea: $00
    nop                                           ; $5ceb: $00
    nop                                           ; $5cec: $00
    nop                                           ; $5ced: $00
    nop                                           ; $5cee: $00
    nop                                           ; $5cef: $00
    nop                                           ; $5cf0: $00
    nop                                           ; $5cf1: $00
    nop                                           ; $5cf2: $00
    nop                                           ; $5cf3: $00
    nop                                           ; $5cf4: $00
    nop                                           ; $5cf5: $00
    nop                                           ; $5cf6: $00
    nop                                           ; $5cf7: $00
    rst $38                                       ; $5cf8: $ff
    dec h                                         ; $5cf9: $25
    jp c, $eb5a                                   ; $5cfa: $da $5a $eb

    dec hl                                        ; $5cfd: $2b
    db $ed                                        ; $5cfe: $ed
    dec l                                         ; $5cff: $2d
    push de                                       ; $5d00: $d5
    ld d, l                                       ; $5d01: $55
    ldh [rNR41], a                                ; $5d02: $e0 $20
    ldh a, [rNR10]                                ; $5d04: $f0 $10
    rst $38                                       ; $5d06: $ff
    rrca                                          ; $5d07: $0f
    rst $38                                       ; $5d08: $ff
    jr nz, jr_04e_5cea                            ; $5d09: $20 $df

    push de                                       ; $5d0b: $d5
    ld e, d                                       ; $5d0c: $5a
    ld e, d                                       ; $5d0d: $5a
    ld d, l                                       ; $5d0e: $55
    ld d, l                                       ; $5d0f: $55
    dec b                                         ; $5d10: $05
    dec b                                         ; $5d11: $05
    nop                                           ; $5d12: $00
    nop                                           ; $5d13: $00
    nop                                           ; $5d14: $00
    nop                                           ; $5d15: $00
    rst $38                                       ; $5d16: $ff
    rst $38                                       ; $5d17: $ff
    rst $38                                       ; $5d18: $ff
    sub b                                         ; $5d19: $90
    ld l, a                                       ; $5d1a: $6f
    ld l, b                                       ; $5d1b: $68
    xor a                                         ; $5d1c: $af
    xor h                                         ; $5d1d: $ac
    db $db                                        ; $5d1e: $db
    jp c, Jump_04e_5457                           ; $5d1f: $da $57 $54

    rlca                                          ; $5d22: $07
    inc b                                         ; $5d23: $04
    rrca                                          ; $5d24: $0f
    ld [$f0ff], sp                                ; $5d25: $08 $ff $f0
    rst $38                                       ; $5d28: $ff
    nop                                           ; $5d29: $00
    rst $38                                       ; $5d2a: $ff
    nop                                           ; $5d2b: $00
    rst $38                                       ; $5d2c: $ff
    nop                                           ; $5d2d: $00
    rst $38                                       ; $5d2e: $ff
    ld [bc], a                                    ; $5d2f: $02
    db $fd                                        ; $5d30: $fd
    dec b                                         ; $5d31: $05
    db $fd                                        ; $5d32: $fd
    dec b                                         ; $5d33: $05
    cp $02                                        ; $5d34: $fe $02
    rst $38                                       ; $5d36: $ff
    ld bc, $00ff                                  ; $5d37: $01 $ff $00
    rst $38                                       ; $5d3a: $ff
    nop                                           ; $5d3b: $00
    rst $38                                       ; $5d3c: $ff
    ld b, b                                       ; $5d3d: $40
    cp a                                          ; $5d3e: $bf
    xor l                                         ; $5d3f: $ad
    ld a, d                                       ; $5d40: $7a
    ld a, d                                       ; $5d41: $7a
    ld d, [hl]                                    ; $5d42: $56
    ld d, [hl]                                    ; $5d43: $56
    nop                                           ; $5d44: $00
    nop                                           ; $5d45: $00
    rst $38                                       ; $5d46: $ff
    rst $38                                       ; $5d47: $ff
    rst $38                                       ; $5d48: $ff
    nop                                           ; $5d49: $00
    rst $38                                       ; $5d4a: $ff
    nop                                           ; $5d4b: $00
    rst $38                                       ; $5d4c: $ff
    nop                                           ; $5d4d: $00
    rst $38                                       ; $5d4e: $ff
    ld b, b                                       ; $5d4f: $40
    cp a                                          ; $5d50: $bf
    and b                                         ; $5d51: $a0
    cp a                                          ; $5d52: $bf
    and b                                         ; $5d53: $a0
    ld a, a                                       ; $5d54: $7f
    ld b, b                                       ; $5d55: $40
    rst $38                                       ; $5d56: $ff
    add b                                         ; $5d57: $80
    nop                                           ; $5d58: $00
    nop                                           ; $5d59: $00
    nop                                           ; $5d5a: $00
    nop                                           ; $5d5b: $00
    nop                                           ; $5d5c: $00
    nop                                           ; $5d5d: $00
    nop                                           ; $5d5e: $00
    nop                                           ; $5d5f: $00
    nop                                           ; $5d60: $00
    nop                                           ; $5d61: $00
    nop                                           ; $5d62: $00
    nop                                           ; $5d63: $00
    nop                                           ; $5d64: $00
    nop                                           ; $5d65: $00
    nop                                           ; $5d66: $00
    nop                                           ; $5d67: $00
    nop                                           ; $5d68: $00
    nop                                           ; $5d69: $00
    nop                                           ; $5d6a: $00
    nop                                           ; $5d6b: $00
    nop                                           ; $5d6c: $00
    nop                                           ; $5d6d: $00
    nop                                           ; $5d6e: $00
    nop                                           ; $5d6f: $00
    nop                                           ; $5d70: $00
    nop                                           ; $5d71: $00
    nop                                           ; $5d72: $00
    nop                                           ; $5d73: $00
    nop                                           ; $5d74: $00
    nop                                           ; $5d75: $00
    nop                                           ; $5d76: $00
    nop                                           ; $5d77: $00
    nop                                           ; $5d78: $00
    nop                                           ; $5d79: $00
    nop                                           ; $5d7a: $00
    nop                                           ; $5d7b: $00
    nop                                           ; $5d7c: $00
    nop                                           ; $5d7d: $00
    nop                                           ; $5d7e: $00
    nop                                           ; $5d7f: $00
    nop                                           ; $5d80: $00
    nop                                           ; $5d81: $00
    nop                                           ; $5d82: $00
    nop                                           ; $5d83: $00
    nop                                           ; $5d84: $00
    nop                                           ; $5d85: $00
    nop                                           ; $5d86: $00
    nop                                           ; $5d87: $00
    nop                                           ; $5d88: $00
    nop                                           ; $5d89: $00
    nop                                           ; $5d8a: $00
    nop                                           ; $5d8b: $00
    nop                                           ; $5d8c: $00
    nop                                           ; $5d8d: $00
    nop                                           ; $5d8e: $00
    nop                                           ; $5d8f: $00
    nop                                           ; $5d90: $00
    nop                                           ; $5d91: $00
    nop                                           ; $5d92: $00
    nop                                           ; $5d93: $00
    nop                                           ; $5d94: $00
    nop                                           ; $5d95: $00
    nop                                           ; $5d96: $00
    nop                                           ; $5d97: $00
    nop                                           ; $5d98: $00
    nop                                           ; $5d99: $00
    nop                                           ; $5d9a: $00
    nop                                           ; $5d9b: $00
    nop                                           ; $5d9c: $00
    nop                                           ; $5d9d: $00
    nop                                           ; $5d9e: $00
    nop                                           ; $5d9f: $00
    nop                                           ; $5da0: $00
    nop                                           ; $5da1: $00
    nop                                           ; $5da2: $00
    nop                                           ; $5da3: $00
    nop                                           ; $5da4: $00
    nop                                           ; $5da5: $00
    nop                                           ; $5da6: $00
    nop                                           ; $5da7: $00
    nop                                           ; $5da8: $00
    nop                                           ; $5da9: $00
    nop                                           ; $5daa: $00
    nop                                           ; $5dab: $00
    nop                                           ; $5dac: $00
    nop                                           ; $5dad: $00
    nop                                           ; $5dae: $00
    nop                                           ; $5daf: $00
    nop                                           ; $5db0: $00
    nop                                           ; $5db1: $00
    nop                                           ; $5db2: $00
    nop                                           ; $5db3: $00
    nop                                           ; $5db4: $00
    nop                                           ; $5db5: $00
    nop                                           ; $5db6: $00
    nop                                           ; $5db7: $00
    nop                                           ; $5db8: $00
    nop                                           ; $5db9: $00
    nop                                           ; $5dba: $00
    nop                                           ; $5dbb: $00
    nop                                           ; $5dbc: $00
    nop                                           ; $5dbd: $00
    nop                                           ; $5dbe: $00
    nop                                           ; $5dbf: $00
    nop                                           ; $5dc0: $00
    nop                                           ; $5dc1: $00
    nop                                           ; $5dc2: $00
    nop                                           ; $5dc3: $00
    nop                                           ; $5dc4: $00
    nop                                           ; $5dc5: $00
    nop                                           ; $5dc6: $00
    nop                                           ; $5dc7: $00
    nop                                           ; $5dc8: $00
    nop                                           ; $5dc9: $00
    nop                                           ; $5dca: $00
    nop                                           ; $5dcb: $00
    nop                                           ; $5dcc: $00
    nop                                           ; $5dcd: $00
    nop                                           ; $5dce: $00
    nop                                           ; $5dcf: $00
    nop                                           ; $5dd0: $00
    nop                                           ; $5dd1: $00
    nop                                           ; $5dd2: $00
    nop                                           ; $5dd3: $00
    nop                                           ; $5dd4: $00
    nop                                           ; $5dd5: $00
    nop                                           ; $5dd6: $00
    nop                                           ; $5dd7: $00
    nop                                           ; $5dd8: $00
    nop                                           ; $5dd9: $00
    nop                                           ; $5dda: $00
    nop                                           ; $5ddb: $00
    nop                                           ; $5ddc: $00
    nop                                           ; $5ddd: $00
    nop                                           ; $5dde: $00
    nop                                           ; $5ddf: $00
    nop                                           ; $5de0: $00
    nop                                           ; $5de1: $00
    nop                                           ; $5de2: $00
    nop                                           ; $5de3: $00
    nop                                           ; $5de4: $00
    nop                                           ; $5de5: $00
    nop                                           ; $5de6: $00
    nop                                           ; $5de7: $00
    nop                                           ; $5de8: $00
    nop                                           ; $5de9: $00
    nop                                           ; $5dea: $00
    nop                                           ; $5deb: $00
    nop                                           ; $5dec: $00
    nop                                           ; $5ded: $00
    nop                                           ; $5dee: $00
    nop                                           ; $5def: $00
    nop                                           ; $5df0: $00
    nop                                           ; $5df1: $00
    nop                                           ; $5df2: $00
    nop                                           ; $5df3: $00
    nop                                           ; $5df4: $00
    nop                                           ; $5df5: $00
    nop                                           ; $5df6: $00
    nop                                           ; $5df7: $00
    nop                                           ; $5df8: $00
    nop                                           ; $5df9: $00
    nop                                           ; $5dfa: $00
    nop                                           ; $5dfb: $00
    nop                                           ; $5dfc: $00
    nop                                           ; $5dfd: $00
    nop                                           ; $5dfe: $00
    nop                                           ; $5dff: $00
    nop                                           ; $5e00: $00
    nop                                           ; $5e01: $00
    nop                                           ; $5e02: $00
    nop                                           ; $5e03: $00
    nop                                           ; $5e04: $00
    nop                                           ; $5e05: $00
    nop                                           ; $5e06: $00
    nop                                           ; $5e07: $00
    nop                                           ; $5e08: $00
    nop                                           ; $5e09: $00
    nop                                           ; $5e0a: $00
    nop                                           ; $5e0b: $00
    nop                                           ; $5e0c: $00
    nop                                           ; $5e0d: $00
    nop                                           ; $5e0e: $00
    nop                                           ; $5e0f: $00
    nop                                           ; $5e10: $00
    nop                                           ; $5e11: $00
    nop                                           ; $5e12: $00
    nop                                           ; $5e13: $00
    nop                                           ; $5e14: $00
    nop                                           ; $5e15: $00
    nop                                           ; $5e16: $00
    nop                                           ; $5e17: $00
    nop                                           ; $5e18: $00
    nop                                           ; $5e19: $00
    nop                                           ; $5e1a: $00
    nop                                           ; $5e1b: $00
    nop                                           ; $5e1c: $00
    nop                                           ; $5e1d: $00
    nop                                           ; $5e1e: $00
    nop                                           ; $5e1f: $00
    nop                                           ; $5e20: $00
    nop                                           ; $5e21: $00
    nop                                           ; $5e22: $00
    nop                                           ; $5e23: $00
    nop                                           ; $5e24: $00
    nop                                           ; $5e25: $00
    nop                                           ; $5e26: $00
    nop                                           ; $5e27: $00
    nop                                           ; $5e28: $00
    nop                                           ; $5e29: $00
    nop                                           ; $5e2a: $00
    nop                                           ; $5e2b: $00
    nop                                           ; $5e2c: $00
    nop                                           ; $5e2d: $00
    nop                                           ; $5e2e: $00
    nop                                           ; $5e2f: $00
    nop                                           ; $5e30: $00
    nop                                           ; $5e31: $00
    nop                                           ; $5e32: $00
    nop                                           ; $5e33: $00
    nop                                           ; $5e34: $00
    nop                                           ; $5e35: $00
    nop                                           ; $5e36: $00
    nop                                           ; $5e37: $00
    nop                                           ; $5e38: $00
    nop                                           ; $5e39: $00
    nop                                           ; $5e3a: $00
    nop                                           ; $5e3b: $00
    nop                                           ; $5e3c: $00
    nop                                           ; $5e3d: $00
    nop                                           ; $5e3e: $00
    nop                                           ; $5e3f: $00
    nop                                           ; $5e40: $00
    nop                                           ; $5e41: $00
    nop                                           ; $5e42: $00
    nop                                           ; $5e43: $00
    nop                                           ; $5e44: $00
    nop                                           ; $5e45: $00
    nop                                           ; $5e46: $00
    nop                                           ; $5e47: $00
    nop                                           ; $5e48: $00
    nop                                           ; $5e49: $00
    nop                                           ; $5e4a: $00
    nop                                           ; $5e4b: $00
    nop                                           ; $5e4c: $00
    nop                                           ; $5e4d: $00
    nop                                           ; $5e4e: $00
    nop                                           ; $5e4f: $00
    nop                                           ; $5e50: $00
    nop                                           ; $5e51: $00
    nop                                           ; $5e52: $00
    nop                                           ; $5e53: $00
    nop                                           ; $5e54: $00
    nop                                           ; $5e55: $00
    nop                                           ; $5e56: $00
    nop                                           ; $5e57: $00
    nop                                           ; $5e58: $00
    nop                                           ; $5e59: $00
    nop                                           ; $5e5a: $00
    nop                                           ; $5e5b: $00
    nop                                           ; $5e5c: $00
    nop                                           ; $5e5d: $00
    nop                                           ; $5e5e: $00
    nop                                           ; $5e5f: $00
    nop                                           ; $5e60: $00
    nop                                           ; $5e61: $00
    nop                                           ; $5e62: $00
    nop                                           ; $5e63: $00
    nop                                           ; $5e64: $00
    nop                                           ; $5e65: $00
    nop                                           ; $5e66: $00
    nop                                           ; $5e67: $00
    nop                                           ; $5e68: $00
    nop                                           ; $5e69: $00
    nop                                           ; $5e6a: $00
    nop                                           ; $5e6b: $00
    nop                                           ; $5e6c: $00
    nop                                           ; $5e6d: $00
    nop                                           ; $5e6e: $00
    nop                                           ; $5e6f: $00
    nop                                           ; $5e70: $00
    nop                                           ; $5e71: $00
    nop                                           ; $5e72: $00
    nop                                           ; $5e73: $00
    nop                                           ; $5e74: $00
    nop                                           ; $5e75: $00
    nop                                           ; $5e76: $00
    nop                                           ; $5e77: $00
    nop                                           ; $5e78: $00
    nop                                           ; $5e79: $00
    nop                                           ; $5e7a: $00
    nop                                           ; $5e7b: $00
    nop                                           ; $5e7c: $00
    nop                                           ; $5e7d: $00
    nop                                           ; $5e7e: $00
    nop                                           ; $5e7f: $00
    nop                                           ; $5e80: $00
    nop                                           ; $5e81: $00
    nop                                           ; $5e82: $00
    nop                                           ; $5e83: $00
    nop                                           ; $5e84: $00
    nop                                           ; $5e85: $00
    nop                                           ; $5e86: $00
    nop                                           ; $5e87: $00
    nop                                           ; $5e88: $00
    nop                                           ; $5e89: $00
    nop                                           ; $5e8a: $00
    nop                                           ; $5e8b: $00
    nop                                           ; $5e8c: $00
    nop                                           ; $5e8d: $00
    nop                                           ; $5e8e: $00
    nop                                           ; $5e8f: $00
    nop                                           ; $5e90: $00
    nop                                           ; $5e91: $00
    nop                                           ; $5e92: $00
    nop                                           ; $5e93: $00
    nop                                           ; $5e94: $00
    nop                                           ; $5e95: $00
    nop                                           ; $5e96: $00
    nop                                           ; $5e97: $00
    nop                                           ; $5e98: $00
    nop                                           ; $5e99: $00
    nop                                           ; $5e9a: $00
    nop                                           ; $5e9b: $00
    nop                                           ; $5e9c: $00
    nop                                           ; $5e9d: $00
    nop                                           ; $5e9e: $00
    nop                                           ; $5e9f: $00
    nop                                           ; $5ea0: $00
    nop                                           ; $5ea1: $00
    nop                                           ; $5ea2: $00
    nop                                           ; $5ea3: $00
    nop                                           ; $5ea4: $00
    nop                                           ; $5ea5: $00
    nop                                           ; $5ea6: $00
    nop                                           ; $5ea7: $00
    nop                                           ; $5ea8: $00
    nop                                           ; $5ea9: $00
    nop                                           ; $5eaa: $00
    nop                                           ; $5eab: $00
    nop                                           ; $5eac: $00
    nop                                           ; $5ead: $00
    nop                                           ; $5eae: $00
    nop                                           ; $5eaf: $00
    nop                                           ; $5eb0: $00
    nop                                           ; $5eb1: $00
    nop                                           ; $5eb2: $00
    nop                                           ; $5eb3: $00
    nop                                           ; $5eb4: $00
    nop                                           ; $5eb5: $00
    nop                                           ; $5eb6: $00
    nop                                           ; $5eb7: $00
    nop                                           ; $5eb8: $00
    nop                                           ; $5eb9: $00
    nop                                           ; $5eba: $00
    nop                                           ; $5ebb: $00
    nop                                           ; $5ebc: $00
    nop                                           ; $5ebd: $00
    nop                                           ; $5ebe: $00
    nop                                           ; $5ebf: $00
    nop                                           ; $5ec0: $00
    nop                                           ; $5ec1: $00
    nop                                           ; $5ec2: $00
    nop                                           ; $5ec3: $00
    nop                                           ; $5ec4: $00
    nop                                           ; $5ec5: $00
    nop                                           ; $5ec6: $00
    nop                                           ; $5ec7: $00
    nop                                           ; $5ec8: $00
    nop                                           ; $5ec9: $00
    nop                                           ; $5eca: $00
    nop                                           ; $5ecb: $00
    nop                                           ; $5ecc: $00
    nop                                           ; $5ecd: $00
    nop                                           ; $5ece: $00
    nop                                           ; $5ecf: $00
    nop                                           ; $5ed0: $00
    nop                                           ; $5ed1: $00
    nop                                           ; $5ed2: $00
    nop                                           ; $5ed3: $00
    nop                                           ; $5ed4: $00
    nop                                           ; $5ed5: $00
    nop                                           ; $5ed6: $00
    nop                                           ; $5ed7: $00
    nop                                           ; $5ed8: $00
    nop                                           ; $5ed9: $00
    nop                                           ; $5eda: $00
    nop                                           ; $5edb: $00
    nop                                           ; $5edc: $00
    nop                                           ; $5edd: $00
    nop                                           ; $5ede: $00
    nop                                           ; $5edf: $00
    nop                                           ; $5ee0: $00
    nop                                           ; $5ee1: $00
    nop                                           ; $5ee2: $00
    nop                                           ; $5ee3: $00
    nop                                           ; $5ee4: $00
    nop                                           ; $5ee5: $00
    nop                                           ; $5ee6: $00
    nop                                           ; $5ee7: $00
    nop                                           ; $5ee8: $00
    nop                                           ; $5ee9: $00
    nop                                           ; $5eea: $00
    nop                                           ; $5eeb: $00
    nop                                           ; $5eec: $00
    nop                                           ; $5eed: $00
    nop                                           ; $5eee: $00
    nop                                           ; $5eef: $00
    nop                                           ; $5ef0: $00
    nop                                           ; $5ef1: $00
    nop                                           ; $5ef2: $00
    nop                                           ; $5ef3: $00
    nop                                           ; $5ef4: $00
    nop                                           ; $5ef5: $00
    nop                                           ; $5ef6: $00
    nop                                           ; $5ef7: $00
    nop                                           ; $5ef8: $00
    nop                                           ; $5ef9: $00
    nop                                           ; $5efa: $00
    nop                                           ; $5efb: $00
    nop                                           ; $5efc: $00
    nop                                           ; $5efd: $00
    nop                                           ; $5efe: $00
    nop                                           ; $5eff: $00
    nop                                           ; $5f00: $00
    nop                                           ; $5f01: $00
    nop                                           ; $5f02: $00
    nop                                           ; $5f03: $00
    nop                                           ; $5f04: $00
    nop                                           ; $5f05: $00
    nop                                           ; $5f06: $00
    nop                                           ; $5f07: $00
    nop                                           ; $5f08: $00
    nop                                           ; $5f09: $00
    nop                                           ; $5f0a: $00
    nop                                           ; $5f0b: $00
    nop                                           ; $5f0c: $00
    nop                                           ; $5f0d: $00
    nop                                           ; $5f0e: $00
    nop                                           ; $5f0f: $00
    nop                                           ; $5f10: $00
    nop                                           ; $5f11: $00
    nop                                           ; $5f12: $00
    nop                                           ; $5f13: $00
    nop                                           ; $5f14: $00
    nop                                           ; $5f15: $00
    nop                                           ; $5f16: $00
    nop                                           ; $5f17: $00
    nop                                           ; $5f18: $00
    nop                                           ; $5f19: $00
    nop                                           ; $5f1a: $00
    nop                                           ; $5f1b: $00
    nop                                           ; $5f1c: $00
    nop                                           ; $5f1d: $00
    nop                                           ; $5f1e: $00
    nop                                           ; $5f1f: $00
    nop                                           ; $5f20: $00
    nop                                           ; $5f21: $00
    nop                                           ; $5f22: $00
    nop                                           ; $5f23: $00
    nop                                           ; $5f24: $00
    nop                                           ; $5f25: $00
    nop                                           ; $5f26: $00
    nop                                           ; $5f27: $00
    nop                                           ; $5f28: $00
    nop                                           ; $5f29: $00
    nop                                           ; $5f2a: $00
    nop                                           ; $5f2b: $00
    nop                                           ; $5f2c: $00
    nop                                           ; $5f2d: $00
    nop                                           ; $5f2e: $00
    nop                                           ; $5f2f: $00
    nop                                           ; $5f30: $00
    nop                                           ; $5f31: $00
    nop                                           ; $5f32: $00
    nop                                           ; $5f33: $00
    nop                                           ; $5f34: $00
    nop                                           ; $5f35: $00
    nop                                           ; $5f36: $00
    nop                                           ; $5f37: $00
    nop                                           ; $5f38: $00
    nop                                           ; $5f39: $00
    nop                                           ; $5f3a: $00
    nop                                           ; $5f3b: $00
    nop                                           ; $5f3c: $00
    nop                                           ; $5f3d: $00
    nop                                           ; $5f3e: $00
    nop                                           ; $5f3f: $00
    nop                                           ; $5f40: $00
    nop                                           ; $5f41: $00
    nop                                           ; $5f42: $00
    nop                                           ; $5f43: $00
    nop                                           ; $5f44: $00
    nop                                           ; $5f45: $00
    nop                                           ; $5f46: $00
    nop                                           ; $5f47: $00
    nop                                           ; $5f48: $00
    nop                                           ; $5f49: $00
    nop                                           ; $5f4a: $00
    nop                                           ; $5f4b: $00
    nop                                           ; $5f4c: $00
    nop                                           ; $5f4d: $00
    nop                                           ; $5f4e: $00
    nop                                           ; $5f4f: $00
    nop                                           ; $5f50: $00
    nop                                           ; $5f51: $00
    nop                                           ; $5f52: $00
    nop                                           ; $5f53: $00
    nop                                           ; $5f54: $00
    nop                                           ; $5f55: $00
    nop                                           ; $5f56: $00
    nop                                           ; $5f57: $00
    nop                                           ; $5f58: $00
    nop                                           ; $5f59: $00
    nop                                           ; $5f5a: $00
    nop                                           ; $5f5b: $00
    nop                                           ; $5f5c: $00
    nop                                           ; $5f5d: $00
    nop                                           ; $5f5e: $00
    nop                                           ; $5f5f: $00
    nop                                           ; $5f60: $00
    nop                                           ; $5f61: $00
    nop                                           ; $5f62: $00
    nop                                           ; $5f63: $00
    nop                                           ; $5f64: $00
    nop                                           ; $5f65: $00
    nop                                           ; $5f66: $00
    nop                                           ; $5f67: $00
    nop                                           ; $5f68: $00
    nop                                           ; $5f69: $00
    nop                                           ; $5f6a: $00
    nop                                           ; $5f6b: $00
    nop                                           ; $5f6c: $00
    nop                                           ; $5f6d: $00
    nop                                           ; $5f6e: $00
    nop                                           ; $5f6f: $00
    nop                                           ; $5f70: $00
    nop                                           ; $5f71: $00
    nop                                           ; $5f72: $00
    nop                                           ; $5f73: $00
    nop                                           ; $5f74: $00
    nop                                           ; $5f75: $00
    nop                                           ; $5f76: $00
    nop                                           ; $5f77: $00
    nop                                           ; $5f78: $00
    nop                                           ; $5f79: $00
    nop                                           ; $5f7a: $00
    nop                                           ; $5f7b: $00
    nop                                           ; $5f7c: $00
    nop                                           ; $5f7d: $00
    nop                                           ; $5f7e: $00
    nop                                           ; $5f7f: $00
    nop                                           ; $5f80: $00
    nop                                           ; $5f81: $00
    nop                                           ; $5f82: $00
    nop                                           ; $5f83: $00
    nop                                           ; $5f84: $00
    nop                                           ; $5f85: $00
    nop                                           ; $5f86: $00
    nop                                           ; $5f87: $00
    nop                                           ; $5f88: $00
    nop                                           ; $5f89: $00
    nop                                           ; $5f8a: $00
    nop                                           ; $5f8b: $00
    nop                                           ; $5f8c: $00
    nop                                           ; $5f8d: $00
    nop                                           ; $5f8e: $00
    nop                                           ; $5f8f: $00
    nop                                           ; $5f90: $00
    nop                                           ; $5f91: $00
    nop                                           ; $5f92: $00
    nop                                           ; $5f93: $00
    nop                                           ; $5f94: $00
    nop                                           ; $5f95: $00
    nop                                           ; $5f96: $00
    nop                                           ; $5f97: $00
    nop                                           ; $5f98: $00
    nop                                           ; $5f99: $00
    nop                                           ; $5f9a: $00
    nop                                           ; $5f9b: $00
    nop                                           ; $5f9c: $00
    nop                                           ; $5f9d: $00
    nop                                           ; $5f9e: $00
    nop                                           ; $5f9f: $00
    nop                                           ; $5fa0: $00
    nop                                           ; $5fa1: $00
    nop                                           ; $5fa2: $00
    nop                                           ; $5fa3: $00
    nop                                           ; $5fa4: $00
    nop                                           ; $5fa5: $00
    nop                                           ; $5fa6: $00
    nop                                           ; $5fa7: $00
    nop                                           ; $5fa8: $00
    nop                                           ; $5fa9: $00
    nop                                           ; $5faa: $00
    nop                                           ; $5fab: $00
    nop                                           ; $5fac: $00
    nop                                           ; $5fad: $00
    nop                                           ; $5fae: $00
    nop                                           ; $5faf: $00
    nop                                           ; $5fb0: $00
    nop                                           ; $5fb1: $00
    nop                                           ; $5fb2: $00
    nop                                           ; $5fb3: $00
    nop                                           ; $5fb4: $00
    nop                                           ; $5fb5: $00
    nop                                           ; $5fb6: $00
    nop                                           ; $5fb7: $00
    nop                                           ; $5fb8: $00
    nop                                           ; $5fb9: $00
    nop                                           ; $5fba: $00
    nop                                           ; $5fbb: $00
    nop                                           ; $5fbc: $00
    nop                                           ; $5fbd: $00
    nop                                           ; $5fbe: $00
    nop                                           ; $5fbf: $00
    nop                                           ; $5fc0: $00
    nop                                           ; $5fc1: $00
    nop                                           ; $5fc2: $00
    nop                                           ; $5fc3: $00
    nop                                           ; $5fc4: $00
    nop                                           ; $5fc5: $00
    nop                                           ; $5fc6: $00
    nop                                           ; $5fc7: $00
    nop                                           ; $5fc8: $00
    nop                                           ; $5fc9: $00
    nop                                           ; $5fca: $00
    nop                                           ; $5fcb: $00
    nop                                           ; $5fcc: $00
    nop                                           ; $5fcd: $00
    nop                                           ; $5fce: $00
    nop                                           ; $5fcf: $00
    nop                                           ; $5fd0: $00
    nop                                           ; $5fd1: $00
    nop                                           ; $5fd2: $00
    nop                                           ; $5fd3: $00
    nop                                           ; $5fd4: $00
    nop                                           ; $5fd5: $00
    nop                                           ; $5fd6: $00
    nop                                           ; $5fd7: $00
    nop                                           ; $5fd8: $00
    nop                                           ; $5fd9: $00
    nop                                           ; $5fda: $00
    nop                                           ; $5fdb: $00
    nop                                           ; $5fdc: $00
    nop                                           ; $5fdd: $00
    nop                                           ; $5fde: $00
    nop                                           ; $5fdf: $00
    nop                                           ; $5fe0: $00
    nop                                           ; $5fe1: $00
    nop                                           ; $5fe2: $00
    nop                                           ; $5fe3: $00
    nop                                           ; $5fe4: $00
    nop                                           ; $5fe5: $00
    nop                                           ; $5fe6: $00
    nop                                           ; $5fe7: $00
    nop                                           ; $5fe8: $00
    nop                                           ; $5fe9: $00
    nop                                           ; $5fea: $00
    nop                                           ; $5feb: $00
    nop                                           ; $5fec: $00
    nop                                           ; $5fed: $00
    nop                                           ; $5fee: $00
    nop                                           ; $5fef: $00
    nop                                           ; $5ff0: $00
    nop                                           ; $5ff1: $00
    nop                                           ; $5ff2: $00
    nop                                           ; $5ff3: $00
    nop                                           ; $5ff4: $00
    nop                                           ; $5ff5: $00
    nop                                           ; $5ff6: $00
    nop                                           ; $5ff7: $00
    ld d, e                                       ; $5ff8: $53
    ld d, h                                       ; $5ff9: $54
    ld d, l                                       ; $5ffa: $55
    ld d, b                                       ; $5ffb: $50
    ld d, c                                       ; $5ffc: $51
    ld d, d                                       ; $5ffd: $52
    ld a, [hl-]                                   ; $5ffe: $3a
    dec sp                                        ; $5fff: $3b
    inc a                                         ; $6000: $3c
    dec a                                         ; $6001: $3d
    ld a, $4a                                     ; $6002: $3e $4a
    ld c, e                                       ; $6004: $4b
    ld c, h                                       ; $6005: $4c
    ld c, l                                       ; $6006: $4d
    ld c, [hl]                                    ; $6007: $4e
    dec [hl]                                      ; $6008: $35
    ld [hl], $37                                  ; $6009: $36 $37
    jr c, @+$3b                                   ; $600b: $38 $39

    ld b, l                                       ; $600d: $45
    ld b, [hl]                                    ; $600e: $46
    ld b, a                                       ; $600f: $47
    ld c, b                                       ; $6010: $48
    ld c, c                                       ; $6011: $49
    jr nc, jr_04e_6045                            ; $6012: $30 $31

    ld [hl-], a                                   ; $6014: $32
    inc sp                                        ; $6015: $33
    inc [hl]                                      ; $6016: $34
    ld b, b                                       ; $6017: $40
    ld b, c                                       ; $6018: $41
    ld b, d                                       ; $6019: $42
    ld b, e                                       ; $601a: $43
    ld b, h                                       ; $601b: $44
    rlca                                          ; $601c: $07
    ld [$0a09], sp                                ; $601d: $08 $09 $0a
    dec bc                                        ; $6020: $0b
    inc c                                         ; $6021: $0c
    dec c                                         ; $6022: $0d
    rla                                           ; $6023: $17
    jr @+$1b                                      ; $6024: $18 $19

    ld a, [de]                                    ; $6026: $1a
    dec de                                        ; $6027: $1b
    inc e                                         ; $6028: $1c
    dec e                                         ; $6029: $1d
    daa                                           ; $602a: $27
    jr z, jr_04e_6056                             ; $602b: $28 $29

    ld a, [hl+]                                   ; $602d: $2a
    dec hl                                        ; $602e: $2b
    inc l                                         ; $602f: $2c
    dec l                                         ; $6030: $2d
    nop                                           ; $6031: $00
    ld bc, $0302                                  ; $6032: $01 $02 $03
    inc b                                         ; $6035: $04
    dec b                                         ; $6036: $05
    ld b, $10                                     ; $6037: $06 $10
    ld de, $1312                                  ; $6039: $11 $12 $13
    inc d                                         ; $603c: $14
    dec d                                         ; $603d: $15
    ld d, $20                                     ; $603e: $16 $20
    ld hl, $2322                                  ; $6040: $21 $22 $23
    inc h                                         ; $6043: $24
    dec h                                         ; $6044: $25

jr_04e_6045:
    ld h, $ff                                     ; $6045: $26 $ff
    ld sp, hl                                     ; $6047: $f9
    inc bc                                        ; $6048: $03
    ld bc, $5ff8                                  ; $6049: $01 $f8 $5f
    nop                                           ; $604c: $00
    nop                                           ; $604d: $00
    rst $38                                       ; $604e: $ff
    ld sp, hl                                     ; $604f: $f9
    inc bc                                        ; $6050: $03
    ld bc, $5ff8                                  ; $6051: $01 $f8 $5f
    nop                                           ; $6054: $00
    nop                                           ; $6055: $00

jr_04e_6056:
    rst $38                                       ; $6056: $ff
    ld sp, hl                                     ; $6057: $f9
    inc bc                                        ; $6058: $03
    ld bc, $5ffb                                  ; $6059: $01 $fb $5f
    nop                                           ; $605c: $00
    nop                                           ; $605d: $00
    cp $f1                                        ; $605e: $fe $f1
    dec b                                         ; $6060: $05
    ld [bc], a                                    ; $6061: $02
    cp $5f                                        ; $6062: $fe $5f
    nop                                           ; $6064: $00
    nop                                           ; $6065: $00
    cp $f1                                        ; $6066: $fe $f1
    dec b                                         ; $6068: $05
    ld [bc], a                                    ; $6069: $02
    ld [$0060], sp                                ; $606a: $08 $60 $00
    nop                                           ; $606d: $00
    cp $f1                                        ; $606e: $fe $f1
    dec b                                         ; $6070: $05
    ld [bc], a                                    ; $6071: $02
    ld [de], a                                    ; $6072: $12
    ld h, b                                       ; $6073: $60
    nop                                           ; $6074: $00
    nop                                           ; $6075: $00
    db $fd                                        ; $6076: $fd
    jp hl                                         ; $6077: $e9


    rlca                                          ; $6078: $07
    inc bc                                        ; $6079: $03
    inc e                                         ; $607a: $1c
    ld h, b                                       ; $607b: $60
    nop                                           ; $607c: $00
    nop                                           ; $607d: $00
    db $fd                                        ; $607e: $fd
    jp hl                                         ; $607f: $e9


    rlca                                          ; $6080: $07
    inc bc                                        ; $6081: $03
    ld sp, $0060                                  ; $6082: $31 $60 $00
    nop                                           ; $6085: $00

Call_04e_6086:
    ld hl, $da00                                  ; $6086: $21 $00 $da

jr_04e_6089:
    ld a, [hl+]                                   ; $6089: $2a
    cp $ff                                        ; $608a: $fe $ff
    jr z, jr_04e_60ab                             ; $608c: $28 $1d

    ld e, a                                       ; $608e: $5f
    ld a, [hl+]                                   ; $608f: $2a
    ld d, a                                       ; $6090: $57
    ld a, [hl+]                                   ; $6091: $2a
    ld b, a                                       ; $6092: $47
    ld a, e                                       ; $6093: $7b
    cp $03                                        ; $6094: $fe $03
    jr z, jr_04e_609c                             ; $6096: $28 $04

    cp $02                                        ; $6098: $fe $02
    jr nz, jr_04e_60a9                            ; $609a: $20 $0d

jr_04e_609c:
    ld a, b                                       ; $609c: $78
    rrca                                          ; $609d: $0f
    rrca                                          ; $609e: $0f
    rrca                                          ; $609f: $0f
    and $07                                       ; $60a0: $e6 $07
    ld e, $07                                     ; $60a2: $1e $07
    push hl                                       ; $60a4: $e5
    call Call_04e_60ac                            ; $60a5: $cd $ac $60
    pop hl                                        ; $60a8: $e1

jr_04e_60a9:
    jr jr_04e_6089                                ; $60a9: $18 $de

jr_04e_60ab:
    ret                                           ; $60ab: $c9


Call_04e_60ac:
    add a                                         ; $60ac: $87
    add a                                         ; $60ad: $87
    add a                                         ; $60ae: $87
    ld hl, $6119                                  ; $60af: $21 $19 $61
    add l                                         ; $60b2: $85
    ld l, a                                       ; $60b3: $6f
    jr nc, jr_04e_60b7                            ; $60b4: $30 $01

    inc h                                         ; $60b6: $24

jr_04e_60b7:
    ld a, [hl+]                                   ; $60b7: $2a
    add d                                         ; $60b8: $82
    ld d, a                                       ; $60b9: $57
    ld a, [hl+]                                   ; $60ba: $2a
    add e                                         ; $60bb: $83
    ld b, a                                       ; $60bc: $47
    ld a, [hl+]                                   ; $60bd: $2a
    ld e, a                                       ; $60be: $5f
    ld a, [hl+]                                   ; $60bf: $2a
    ld c, a                                       ; $60c0: $4f
    ld a, [hl+]                                   ; $60c1: $2a
    ld h, [hl]                                    ; $60c2: $66
    ld l, a                                       ; $60c3: $6f

jr_04e_60c4:
    push de                                       ; $60c4: $d5

jr_04e_60c5:
    ld a, [hl]                                    ; $60c5: $7e
    and a                                         ; $60c6: $a7
    jr z, jr_04e_610e                             ; $60c7: $28 $45

    bit 7, d                                      ; $60c9: $cb $7a
    jr nz, jr_04e_610e                            ; $60cb: $20 $41

    ld a, d                                       ; $60cd: $7a
    cp $14                                        ; $60ce: $fe $14
    jr nc, jr_04e_610e                            ; $60d0: $30 $3c

    push bc                                       ; $60d2: $c5
    push de                                       ; $60d3: $d5
    push hl                                       ; $60d4: $e5
    ld c, d                                       ; $60d5: $4a
    ld l, [hl]                                    ; $60d6: $6e
    ld h, $00                                     ; $60d7: $26 $00
    add hl, hl                                    ; $60d9: $29
    add hl, hl                                    ; $60da: $29
    add hl, hl                                    ; $60db: $29
    add hl, hl                                    ; $60dc: $29
    ld de, $4504                                  ; $60dd: $11 $04 $45
    add hl, de                                    ; $60e0: $19
    ld e, l                                       ; $60e1: $5d
    ld d, h                                       ; $60e2: $54
    ld a, c                                       ; $60e3: $79
    add a                                         ; $60e4: $87
    add a                                         ; $60e5: $87
    add a                                         ; $60e6: $87
    add b                                         ; $60e7: $80
    ld l, a                                       ; $60e8: $6f
    ld h, $00                                     ; $60e9: $26 $00
    add hl, hl                                    ; $60eb: $29
    add hl, hl                                    ; $60ec: $29
    add hl, hl                                    ; $60ed: $29
    add hl, hl                                    ; $60ee: $29
    ld bc, $d000                                  ; $60ef: $01 $00 $d0
    add hl, bc                                    ; $60f2: $09
    call Call_04e_6166                            ; $60f3: $cd $66 $61
    call Call_04e_6166                            ; $60f6: $cd $66 $61
    call Call_04e_6166                            ; $60f9: $cd $66 $61
    call Call_04e_6166                            ; $60fc: $cd $66 $61
    call Call_04e_6166                            ; $60ff: $cd $66 $61
    call Call_04e_6166                            ; $6102: $cd $66 $61
    call Call_04e_6166                            ; $6105: $cd $66 $61
    call Call_04e_6166                            ; $6108: $cd $66 $61
    pop hl                                        ; $610b: $e1
    pop de                                        ; $610c: $d1
    pop bc                                        ; $610d: $c1

jr_04e_610e:
    inc hl                                        ; $610e: $23
    inc d                                         ; $610f: $14
    dec e                                         ; $6110: $1d
    jr nz, jr_04e_60c5                            ; $6111: $20 $b2

    pop de                                        ; $6113: $d1
    inc b                                         ; $6114: $04
    dec c                                         ; $6115: $0d
    jr nz, jr_04e_60c4                            ; $6116: $20 $ac

    ret                                           ; $6118: $c9


    rst $38                                       ; $6119: $ff
    cp $03                                        ; $611a: $fe $03
    inc bc                                        ; $611c: $03
    inc [hl]                                      ; $611d: $34
    ld d, e                                       ; $611e: $53
    nop                                           ; $611f: $00
    nop                                           ; $6120: $00
    rst $38                                       ; $6121: $ff
    ei                                            ; $6122: $fb
    inc bc                                        ; $6123: $03
    ld b, $3d                                     ; $6124: $06 $3d
    ld d, e                                       ; $6126: $53
    nop                                           ; $6127: $00
    nop                                           ; $6128: $00
    cp $f9                                        ; $6129: $fe $f9
    dec b                                         ; $612b: $05
    ld [$534f], sp                                ; $612c: $08 $4f $53
    nop                                           ; $612f: $00
    nop                                           ; $6130: $00
    db $fd                                        ; $6131: $fd
    ld sp, hl                                     ; $6132: $f9
    rlca                                          ; $6133: $07
    ld [$5377], sp                                ; $6134: $08 $77 $53
    nop                                           ; $6137: $00
    nop                                           ; $6138: $00
    db $fc                                        ; $6139: $fc
    ld sp, hl                                     ; $613a: $f9
    add hl, bc                                    ; $613b: $09
    ld [$53af], sp                                ; $613c: $08 $af $53
    nop                                           ; $613f: $00
    nop                                           ; $6140: $00
    db $fc                                        ; $6141: $fc
    ld sp, hl                                     ; $6142: $f9
    add hl, bc                                    ; $6143: $09
    ld [$53f7], sp                                ; $6144: $08 $f7 $53
    nop                                           ; $6147: $00
    nop                                           ; $6148: $00
    ei                                            ; $6149: $fb
    ld sp, hl                                     ; $614a: $f9
    dec bc                                        ; $614b: $0b
    ld [$543f], sp                                ; $614c: $08 $3f $54
    nop                                           ; $614f: $00
    nop                                           ; $6150: $00
    ei                                            ; $6151: $fb
    ld sp, hl                                     ; $6152: $f9
    dec bc                                        ; $6153: $0b
    ld [$543f], sp                                ; $6154: $08 $3f $54
    nop                                           ; $6157: $00
    nop                                           ; $6158: $00

Call_04e_6159:
    ld a, [de]                                    ; $6159: $1a
    ld c, a                                       ; $615a: $4f
    inc de                                        ; $615b: $13
    ld a, [de]                                    ; $615c: $1a
    ld b, a                                       ; $615d: $47
    inc de                                        ; $615e: $13
    push de                                       ; $615f: $d5
    xor c                                         ; $6160: $a9
    ld e, a                                       ; $6161: $5f
    cpl                                           ; $6162: $2f
    ld d, a                                       ; $6163: $57
    jr jr_04e_6171                                ; $6164: $18 $0b

Call_04e_6166:
    ld a, [de]                                    ; $6166: $1a
    ld c, a                                       ; $6167: $4f
    inc de                                        ; $6168: $13
    ld a, [de]                                    ; $6169: $1a
    ld b, a                                       ; $616a: $47
    inc de                                        ; $616b: $13
    push de                                       ; $616c: $d5
    or c                                          ; $616d: $b1
    ld d, a                                       ; $616e: $57
    cpl                                           ; $616f: $2f
    ld e, a                                       ; $6170: $5f

jr_04e_6171:
    ld a, d                                       ; $6171: $7a
    and b                                         ; $6172: $a0
    ld b, a                                       ; $6173: $47
    ld a, d                                       ; $6174: $7a
    and c                                         ; $6175: $a1
    ld c, a                                       ; $6176: $4f
    ld a, [hl]                                    ; $6177: $7e
    and e                                         ; $6178: $a3
    or c                                          ; $6179: $b1
    ld [hl+], a                                   ; $617a: $22
    ld a, [hl]                                    ; $617b: $7e
    and e                                         ; $617c: $a3
    or b                                          ; $617d: $b0
    ld [hl+], a                                   ; $617e: $22
    pop de                                        ; $617f: $d1
    ret                                           ; $6180: $c9


    push af                                       ; $6181: $f5
    nop                                           ; $6182: $00
    rst $38                                       ; $6183: $ff
    db $ec                                        ; $6184: $ec
    rst $38                                       ; $6185: $ff
    cp $e0                                        ; $6186: $fe $e0
    ld a, l                                       ; $6188: $7d
    cp $ba                                        ; $6189: $fe $ba
    rst $00                                       ; $618b: $c7
    cp a                                          ; $618c: $bf
    add e                                         ; $618d: $83

jr_04e_618e:
    rst $38                                       ; $618e: $ff
    rst $00                                       ; $618f: $c7
    rst $38                                       ; $6190: $ff
    rst $28                                       ; $6191: $ef
    rst $38                                       ; $6192: $ff
    rst $38                                       ; $6193: $ff
    pop hl                                        ; $6194: $e1
    ret nc                                        ; $6195: $d0

    ld a, a                                       ; $6196: $7f
    rst $28                                       ; $6197: $ef
    sbc a                                         ; $6198: $9f
    rst $38                                       ; $6199: $ff
    and b                                         ; $619a: $a0
    rst $38                                       ; $619b: $ff
    xor a                                         ; $619c: $af
    ldh a, [$fe]                                  ; $619d: $f0 $fe
    db $e3                                        ; $619f: $e3
    pop hl                                        ; $61a0: $e1
    rst $38                                       ; $61a1: $ff
    rst $18                                       ; $61a2: $df
    ldh [$fc], a                                  ; $61a3: $e0 $fc
    ld [c], a                                     ; $61a5: $e2
    sub $e2                                       ; $61a6: $d6 $e2
    di                                            ; $61a8: $f3
    pop hl                                        ; $61a9: $e1
    rlca                                          ; $61aa: $07
    rst $38                                       ; $61ab: $ff
    di                                            ; $61ac: $f3
    rra                                           ; $61ad: $1f
    rst $38                                       ; $61ae: $ff
    dec bc                                        ; $61af: $0b
    rst $38                                       ; $61b0: $ff
    ei                                            ; $61b1: $fb
    rrca                                          ; $61b2: $0f
    cp $e3                                        ; $61b3: $fe $e3
    ret c                                         ; $61b5: $d8

    push hl                                       ; $61b6: $e5
    ret nc                                        ; $61b7: $d0

    push hl                                       ; $61b8: $e5
    inc e                                         ; $61b9: $1c
    add sp, -$1b                                  ; $61ba: $e8 $e5
    ldh [$ed], a                                  ; $61bc: $e0 $ed
    sbc a                                         ; $61be: $9f
    rst $38                                       ; $61bf: $ff
    ret nz                                        ; $61c0: $c0

    and d                                         ; $61c1: $a2
    ld [c], a                                     ; $61c2: $e2
    cp b                                          ; $61c3: $b8
    rst $20                                       ; $61c4: $e7
    xor b                                         ; $61c5: $a8
    pop hl                                        ; $61c6: $e1
    push hl                                       ; $61c7: $e5
    rst $38                                       ; $61c8: $ff
    cp b                                          ; $61c9: $b8
    and $f3                                       ; $61ca: $e6 $f3
    xor b                                         ; $61cc: $a8
    ldh [$e0], a                                  ; $61cd: $e0 $e0
    db $e3                                        ; $61cf: $e3
    rst $10                                       ; $61d0: $d7
    jr c, jr_04e_618e                             ; $61d1: $38 $bb

    rst $38                                       ; $61d3: $ff
    ld a, h                                       ; $61d4: $7c
    ld l, l                                       ; $61d5: $6d
    cp $c6                                        ; $61d6: $fe $c6
    rst $38                                       ; $61d8: $ff
    add d                                         ; $61d9: $82
    rst $38                                       ; $61da: $ff
    cp $f7                                        ; $61db: $fe $f7
    rst $38                                       ; $61dd: $ff
    add b                                         ; $61de: $80
    ld a, a                                       ; $61df: $7f
    ld h, b                                       ; $61e0: $60

jr_04e_61e1:
    ldh [$fe], a                                  ; $61e1: $e0 $fe
    add d                                         ; $61e3: $82
    rst $38                                       ; $61e4: $ff
    add $ff                                       ; $61e5: $c6 $ff
    rst $38                                       ; $61e7: $ff
    ld l, h                                       ; $61e8: $6c
    rst $38                                       ; $61e9: $ff
    cp c                                          ; $61ea: $b9
    ld a, [hl]                                    ; $61eb: $7e
    db $d3                                        ; $61ec: $d3
    inc a                                         ; $61ed: $3c
    rst $20                                       ; $61ee: $e7
    rst $38                                       ; $61ef: $ff
    jr jr_04e_61e1                                ; $61f0: $18 $ef

    ld e, $da                                     ; $61f2: $1e $da
    ccf                                           ; $61f4: $3f
    or d                                          ; $61f5: $b2
    ld a, a                                       ; $61f6: $7f
    ld [c], a                                     ; $61f7: $e2
    rst $38                                       ; $61f8: $ff
    ld a, a                                       ; $61f9: $7f
    or d                                          ; $61fa: $b2
    ld a, a                                       ; $61fb: $7f
    jp c, $ee3f                                   ; $61fc: $da $3f $ee

    rra                                           ; $61ff: $1f
    ldh a, [rIE]                                  ; $6200: $f0 $ff
    rrca                                          ; $6202: $0f
    rst $30                                       ; $6203: $f7
    ld a, b                                       ; $6204: $78
    db $db                                        ; $6205: $db
    ld a, h                                       ; $6206: $7c
    call $c67e                                    ; $6207: $cd $7e $c6
    rst $38                                       ; $620a: $ff
    ld a, a                                       ; $620b: $7f
    call z, $d97f                                 ; $620c: $cc $7f $d9
    ld a, [hl]                                    ; $620f: $7e
    di                                            ; $6210: $f3
    ld a, h                                       ; $6211: $7c
    rst $00                                       ; $6212: $c7
    ld a, l                                       ; $6213: $7d
    jr c, @+$52                                   ; $6214: $38 $50

    add sp, $0a                                   ; $6216: $e8 $0a
    ld a, [$fa0f]                                 ; $6218: $fa $0f $fa
    dec b                                         ; $621b: $05
    ld b, b                                       ; $621c: $40
    and $7f                                       ; $621d: $e6 $7f
    ld c, $fa                                     ; $621f: $0e $fa
    rrca                                          ; $6221: $0f
    cp $0f                                        ; $6222: $fe $0f
    ld hl, sp+$07                                 ; $6224: $f8 $07
    add hl, sp                                    ; $6226: $39
    push hl                                       ; $6227: $e5
    rst $38                                       ; $6228: $ff
    nop                                           ; $6229: $00
    cp $00                                        ; $622a: $fe $00
    cp $02                                        ; $622c: $fe $02
    cp $01                                        ; $622e: $fe $01
    db $fd                                        ; $6230: $fd
    cp $f0                                        ; $6231: $fe $f0
    and $00                                       ; $6233: $e6 $00
    ld [bc], a                                    ; $6235: $02
    ei                                            ; $6236: $fb
    nop                                           ; $6237: $00
    rst $38                                       ; $6238: $ff
    ld b, d                                       ; $6239: $42
    jp nz, $e0fe                                  ; $623a: $c2 $fe $e0

jr_04e_623d:
    and $0c                                       ; $623d: $e6 $0c
    ld [de], a                                    ; $623f: $12
    di                                            ; $6240: $f3
    ld [$21fb], sp                                ; $6241: $08 $fb $21
    ccf                                           ; $6244: $3f
    cp $d2                                        ; $6245: $fe $d2
    and $1e                                       ; $6247: $e6 $1e
    inc h                                         ; $6249: $24
    and $09                                       ; $624a: $e6 $09
    ld sp, hl                                     ; $624c: $f9
    inc d                                         ; $624d: $14
    dec e                                         ; $624e: $1d
    cp $cf                                        ; $624f: $fe $cf
    pop bc                                        ; $6251: $c1
    jr nz, jr_04e_6293                            ; $6252: $20 $3f

    ret z                                         ; $6254: $c8

    rst $08                                       ; $6255: $cf
    ld a, [c]                                     ; $6256: $f2
    di                                            ; $6257: $f3
    inc a                                         ; $6258: $3c
    rst $18                                       ; $6259: $df
    inc a                                         ; $625a: $3c
    rrca                                          ; $625b: $0f
    rst $08                                       ; $625c: $cf
    add c                                         ; $625d: $81
    add c                                         ; $625e: $81
    or b                                          ; $625f: $b0
    and $e0                                       ; $6260: $e6 $e0
    add b                                         ; $6262: $80
    rst $18                                       ; $6263: $df
    rst $28                                       ; $6264: $ef
    jr nz, @+$31                                  ; $6265: $20 $2f

    call nz, $a0cc                                ; $6267: $c4 $cc $a0
    and $07                                       ; $626a: $e6 $07
    nop                                           ; $626c: $00
    rra                                           ; $626d: $1f
    rst $30                                       ; $626e: $f7
    nop                                           ; $626f: $00
    rst $30                                       ; $6270: $f7
    ld b, h                                       ; $6271: $44
    ld [hl], h                                    ; $6272: $74
    sub b                                         ; $6273: $90
    and $ea                                       ; $6274: $e6 $ea
    push hl                                       ; $6276: $e5
    ret nc                                        ; $6277: $d0

    and $bf                                       ; $6278: $e6 $bf
    db $10                                        ; $627a: $10
    rst $18                                       ; $627b: $df
    jr nz, jr_04e_623d                            ; $627c: $20 $bf

    ld c, b                                       ; $627e: $48
    ld a, b                                       ; $627f: $78
    ld [hl], b                                    ; $6280: $70
    and $03                                       ; $6281: $e6 $03
    cp a                                          ; $6283: $bf
    inc b                                         ; $6284: $04
    db $fd                                        ; $6285: $fd
    ld [bc], a                                    ; $6286: $02
    cp $09                                        ; $6287: $fe $09
    rrca                                          ; $6289: $0f
    ld h, b                                       ; $628a: $60
    and $f0                                       ; $628b: $e6 $f0
    and [hl]                                      ; $628d: $a6
    ret nz                                        ; $628e: $c0

    pop hl                                        ; $628f: $e1
    nop                                           ; $6290: $00
    halt                                          ; $6291: $76
    ld h, b                                       ; $6292: $60

jr_04e_6293:
    rst $20                                       ; $6293: $e7
    ld d, l                                       ; $6294: $55
    jp nz, Jump_04e_4001                          ; $6295: $c2 $01 $40

    and $3f                                       ; $6298: $e6 $3f
    rst $28                                       ; $629a: $ef
    db $10                                        ; $629b: $10
    or b                                          ; $629c: $b0
    ld [$a28f], sp                                ; $629d: $08 $8f $a2
    rst $20                                       ; $62a0: $e7
    ld b, b                                       ; $62a1: $40
    ret nz                                        ; $62a2: $c0

    jr nz, @-$05                                  ; $62a3: $20 $f9

    ld a, $2e                                     ; $62a5: $3e $2e
    pop hl                                        ; $62a7: $e1
    ld e, c                                       ; $62a8: $59
    jp $cf48                                      ; $62a9: $c3 $48 $cf


    inc b                                         ; $62ac: $04
    add a                                         ; $62ad: $87
    nop                                           ; $62ae: $00
    rst $38                                       ; $62af: $ff
    add e                                         ; $62b0: $83
    ld b, d                                       ; $62b1: $42
    jp $e020                                      ; $62b2: $c3 $20 $e0


    nop                                           ; $62b5: $00
    inc bc                                        ; $62b6: $03
    nop                                           ; $62b7: $00
    rst $18                                       ; $62b8: $df
    add e                                         ; $62b9: $83
    jr z, @+$2d                                   ; $62ba: $28 $2b

    ld b, b                                       ; $62bc: $40
    ld b, e                                       ; $62bd: $43
    and b                                         ; $62be: $a0
    ldh [rTAC], a                                 ; $62bf: $e0 $07
    db $10                                        ; $62c1: $10
    ld a, a                                       ; $62c2: $7f
    inc de                                        ; $62c3: $13
    jr nz, jr_04e_62e9                            ; $62c4: $20 $23

    nop                                           ; $62c6: $00
    db $fd                                        ; $62c7: $fd
    nop                                           ; $62c8: $00
    db $fd                                        ; $62c9: $fd
    sub [hl]                                      ; $62ca: $96
    ldh [$fb], a                                  ; $62cb: $e0 $fb
    ei                                            ; $62cd: $fb
    nop                                           ; $62ce: $00
    cp $e0                                        ; $62cf: $fe $e0
    ld [$05fb], sp                                ; $62d1: $08 $fb $05
    rst $30                                       ; $62d4: $f7
    dec a                                         ; $62d5: $3d
    rst $38                                       ; $62d6: $ff
    add l                                         ; $62d7: $85
    ccf                                           ; $62d8: $3f
    add b                                         ; $62d9: $80
    ccf                                           ; $62da: $3f
    add b                                         ; $62db: $80
    cp a                                          ; $62dc: $bf
    add b                                         ; $62dd: $80
    ld a, a                                       ; $62de: $7f
    rst $30                                       ; $62df: $f7
    ld b, b                                       ; $62e0: $40
    ld a, a                                       ; $62e1: $7f
    nop                                           ; $62e2: $00
    cp $e1                                        ; $62e3: $fe $e1
    jp nc, $e15e                                  ; $62e5: $d2 $5e $e1

    dec l                                         ; $62e8: $2d

jr_04e_62e9:
    rst $38                                       ; $62e9: $ff
    db $ed                                        ; $62ea: $ed
    dec c                                         ; $62eb: $0d
    di                                            ; $62ec: $f3
    inc de                                        ; $62ed: $13
    di                                            ; $62ee: $f3
    inc bc                                        ; $62ef: $03
    ei                                            ; $62f0: $fb
    dec bc                                        ; $62f1: $0b
    rst $38                                       ; $62f2: $ff
    ei                                            ; $62f3: $fb
    inc bc                                        ; $62f4: $03
    db $fd                                        ; $62f5: $fd
    dec b                                         ; $62f6: $05
    ldh [$ef], a                                  ; $62f7: $e0 $ef
    add sp, -$11                                  ; $62f9: $e8 $ef
    rst $38                                       ; $62fb: $ff
    ldh a, [$f7]                                  ; $62fc: $f0 $f7
    db $f4                                        ; $62fe: $f4
    rst $30                                       ; $62ff: $f7
    ld hl, sp-$05                                 ; $6300: $f8 $fb
    cp d                                          ; $6302: $ba
    cp e                                          ; $6303: $bb
    ld a, a                                       ; $6304: $7f
    cp h                                          ; $6305: $bc
    cp l                                          ; $6306: $bd
    dec e                                         ; $6307: $1d
    ld e, l                                       ; $6308: $5d
    ld a, [hl]                                    ; $6309: $7e
    ld a, [hl]                                    ; $630a: $7e
    ld a, a                                       ; $630b: $7f
    rst $38                                       ; $630c: $ff
    ldh [$bf], a                                  ; $630d: $e0 $bf
    ld a, e                                       ; $630f: $7b
    ld a, e                                       ; $6310: $7b
    ld a, c                                       ; $6311: $79
    ld a, c                                       ; $6312: $79
    ld a, e                                       ; $6313: $7b
    ld a, e                                       ; $6314: $7b
    or $e1                                        ; $6315: $f6 $e1
    ld [hl], e                                    ; $6317: $73
    ld a, a                                       ; $6318: $7f
    ld [hl], b                                    ; $6319: $70
    sbc e                                         ; $631a: $9b
    sbc b                                         ; $631b: $98
    db $e3                                        ; $631c: $e3
    ldh [$f3], a                                  ; $631d: $e0 $f3
    ldh a, [$fe]                                  ; $631f: $f0 $fe
    db $e3                                        ; $6321: $e3
    rst $38                                       ; $6322: $ff
    set 1, b                                      ; $6323: $cb $c8
    add d                                         ; $6325: $82
    inc sp                                        ; $6326: $33
    and b                                         ; $6327: $a0
    ccf                                           ; $6328: $3f
    sbc b                                         ; $6329: $98
    jr @+$01                                      ; $632a: $18 $ff

    and a                                         ; $632c: $a7
    daa                                           ; $632d: $27
    xor a                                         ; $632e: $af
    cpl                                           ; $632f: $2f
    sbc a                                         ; $6330: $9f
    rra                                           ; $6331: $1f
    cp a                                          ; $6332: $bf
    ccf                                           ; $6333: $3f
    rst $38                                       ; $6334: $ff
    cp [hl]                                       ; $6335: $be
    ld a, $08                                     ; $6336: $3e $08
    ld a, [$fc04]                                 ; $6338: $fa $04 $fc
    ld [de], a                                    ; $633b: $12
    rra                                           ; $633c: $1f
    ei                                            ; $633d: $fb
    add sp, -$11                                  ; $633e: $e8 $ef
    cp [hl]                                       ; $6340: $be
    pop hl                                        ; $6341: $e1
    ld sp, hl                                     ; $6342: $f9
    ei                                            ; $6343: $fb
    ld hl, sp-$06                                 ; $6344: $f8 $fa
    sub a                                         ; $6346: $97
    rst $38                                       ; $6347: $ff
    db $f4                                        ; $6348: $f4
    cpl                                           ; $6349: $2f
    add sp, $5f                                   ; $634a: $e8 $5f
    ret nc                                        ; $634c: $d0

    ld a, $a2                                     ; $634d: $3e $a2
    cp h                                          ; $634f: $bc
    rst $38                                       ; $6350: $ff
    add l                                         ; $6351: $85
    ld a, d                                       ; $6352: $7a
    ld b, e                                       ; $6353: $43
    ld a, b                                       ; $6354: $78
    dec bc                                        ; $6355: $0b
    db $f4                                        ; $6356: $f4
    add [hl]                                      ; $6357: $86
    db $f4                                        ; $6358: $f4
    rst $38                                       ; $6359: $ff
    rla                                           ; $635a: $17
    ld a, [$fd0b]                                 ; $635b: $fa $0b $fd
    dec b                                         ; $635e: $05
    ld a, $22                                     ; $635f: $3e $22
    ld e, l                                       ; $6361: $5d
    rst $38                                       ; $6362: $ff
    pop de                                        ; $6363: $d1
    inc hl                                        ; $6364: $23
    ld [c], a                                     ; $6365: $e2
    rlca                                          ; $6366: $07
    inc b                                         ; $6367: $04
    di                                            ; $6368: $f3
    sub b                                         ; $6369: $90
    add b                                         ; $636a: $80
    push de                                       ; $636b: $d5
    add [hl]                                      ; $636c: $86
    ld h, [hl]                                    ; $636d: $66
    ret nz                                        ; $636e: $c0

    nop                                           ; $636f: $00
    dec c                                         ; $6370: $0d
    ret nz                                        ; $6371: $c0

    ld bc, $a166                                  ; $6372: $01 $66 $a1
    rst $28                                       ; $6375: $ef
    jr z, @-$03                                   ; $6376: $28 $fb

    db $fc                                        ; $6378: $fc
    ld bc, $e0fe                                  ; $6379: $01 $fe $e0
    dec b                                         ; $637c: $05
    ld a, [$7883]                                 ; $637d: $fa $83 $78
    ld b, e                                       ; $6380: $43
    rst $38                                       ; $6381: $ff
    cp b                                          ; $6382: $b8
    add e                                         ; $6383: $83
    cp c                                          ; $6384: $b9
    dec bc                                        ; $6385: $0b
    or h                                          ; $6386: $b4
    ld b, $10                                     ; $6387: $06 $10
    ldh a, [$fb]                                  ; $6389: $f0 $fb
    rrca                                          ; $638b: $0f
    ld [$e154], sp                                ; $638c: $08 $54 $e1
    ld [hl], e                                    ; $638f: $73
    ld [bc], a                                    ; $6390: $02
    ld [hl], b                                    ; $6391: $70
    inc b                                         ; $6392: $04
    ld [hl], b                                    ; $6393: $70
    rst $38                                       ; $6394: $ff
    nop                                           ; $6395: $00
    rst $38                                       ; $6396: $ff
    add b                                         ; $6397: $80
    nop                                           ; $6398: $00
    inc c                                         ; $6399: $0c
    ldh [$0c], a                                  ; $639a: $e0 $0c
    pop hl                                        ; $639c: $e1
    rst $38                                       ; $639d: $ff
    dec l                                         ; $639e: $2d
    call nc, $c01d                                ; $639f: $d4 $1d $c0
    add hl, de                                    ; $63a2: $19
    jr nz, jr_04e_63de                            ; $63a3: $20 $39

    ld [bc], a                                    ; $63a5: $02
    rst $18                                       ; $63a6: $df
    ld a, e                                       ; $63a7: $7b
    nop                                           ; $63a8: $00
    ld h, e                                       ; $63a9: $63
    add hl, bc                                    ; $63aa: $09
    ld sp, hl                                     ; $63ab: $f9
    db $fc                                        ; $63ac: $fc
    pop bc                                        ; $63ad: $c1
    ld b, b                                       ; $63ae: $40
    pop bc                                        ; $63af: $c1
    rst $38                                       ; $63b0: $ff
    add h                                         ; $63b1: $84
    add a                                         ; $63b2: $87
    ld [$800f], sp                                ; $63b3: $08 $0f $80
    adc a                                         ; $63b6: $8f
    db $10                                        ; $63b7: $10
    sbc a                                         ; $63b8: $9f
    cp [hl]                                       ; $63b9: $be
    nop                                           ; $63ba: $00
    ldh [rSB], a                                  ; $63bb: $e0 $01
    ld c, b                                       ; $63bd: $48
    ret                                           ; $63be: $c9


    add h                                         ; $63bf: $84
    add l                                         ; $63c0: $85
    add $c0                                       ; $63c1: $c6 $c0
    ld bc, $84ff                                  ; $63c3: $01 $ff $84
    add l                                         ; $63c6: $85
    ld c, b                                       ; $63c7: $48
    ret                                           ; $63c8: $c9


    nop                                           ; $63c9: $00
    or $00                                        ; $63ca: $f6 $00
    or $ff                                        ; $63cc: $f6 $ff
    db $10                                        ; $63ce: $10
    or $0a                                        ; $63cf: $f6 $0a
    xor $01                                       ; $63d1: $ee $01
    db $ed                                        ; $63d3: $ed
    ld bc, $ffec                                  ; $63d4: $01 $ec $ff
    ld hl, $11ec                                  ; $63d7: $21 $ec $11
    call c, $80ff                                 ; $63da: $dc $ff $80
    rst $30                                       ; $63dd: $f7

jr_04e_63de:
    dec b                                         ; $63de: $05
    cp a                                          ; $63df: $bf
    ld a, [c]                                     ; $63e0: $f2
    ld [bc], a                                    ; $63e1: $02
    ldh a, [rP1]                                  ; $63e2: $f0 $00
    ldh a, [rTAC]                                 ; $63e4: $f0 $07
    cp $e3                                        ; $63e6: $fe $e3
    db $fd                                        ; $63e8: $fd
    rst $38                                       ; $63e9: $ff
    ld bc, $427e                                  ; $63ea: $01 $7e $42
    ld a, $20                                     ; $63ed: $3e $20
    sbc a                                         ; $63ef: $9f
    add c                                         ; $63f0: $81
    ld e, a                                       ; $63f1: $5f
    rst $38                                       ; $63f2: $ff
    ld b, b                                       ; $63f3: $40
    ld e, a                                       ; $63f4: $5f
    ld b, c                                       ; $63f5: $41
    sbc h                                         ; $63f6: $9c
    add h                                         ; $63f7: $84
    ld d, d                                       ; $63f8: $52
    db $d3                                        ; $63f9: $d3
    ld e, $eb                                     ; $63fa: $1e $eb
    ld e, $fe                                     ; $63fc: $1e $fe
    rst $38                                       ; $63fe: $ff
    ldh [$7e], a                                  ; $63ff: $e0 $7e
    rst $38                                       ; $6401: $ff
    ldh [rNR34], a                                ; $6402: $e0 $1e
    ld e, $ae                                     ; $6404: $1e $ae
    db $eb                                        ; $6406: $eb
    xor $0f                                       ; $6407: $ee $0f
    db $dd                                        ; $6409: $dd
    add d                                         ; $640a: $82
    ei                                            ; $640b: $fb
    rst $38                                       ; $640c: $ff
    ldh [$f9], a                                  ; $640d: $e0 $f9
    ld sp, hl                                     ; $640f: $f9
    ld a, [$faff]                                 ; $6410: $fa $ff $fa
    dec b                                         ; $6413: $05
    rlca                                          ; $6414: $07
    nop                                           ; $6415: $00
    ld a, a                                       ; $6416: $7f
    and a                                         ; $6417: $a7
    or h                                          ; $6418: $b4
    rst $10                                       ; $6419: $d7
    rst $18                                       ; $641a: $df
    ret nc                                        ; $641b: $d0

    rst $20                                       ; $641c: $e7
    ldh [$f7], a                                  ; $641d: $e0 $f7
    ldh a, [$fe]                                  ; $641f: $f0 $fe
    pop hl                                        ; $6421: $e1
    ld [hl], a                                    ; $6422: $77
    ld [hl], b                                    ; $6423: $70
    rst $38                                       ; $6424: $ff
    and a                                         ; $6425: $a7
    and b                                         ; $6426: $a0
    cp h                                          ; $6427: $bc
    inc a                                         ; $6428: $3c
    cp h                                          ; $6429: $bc
    dec a                                         ; $642a: $3d
    cp h                                          ; $642b: $bc
    inc a                                         ; $642c: $3c
    rst $38                                       ; $642d: $ff
    cp a                                          ; $642e: $bf
    ccf                                           ; $642f: $3f
    cp a                                          ; $6430: $bf
    ccf                                           ; $6431: $3f
    sbc a                                         ; $6432: $9f
    rra                                           ; $6433: $1f
    xor a                                         ; $6434: $af
    cpl                                           ; $6435: $2f
    ld a, a                                       ; $6436: $7f
    sub a                                         ; $6437: $97
    scf                                           ; $6438: $37
    ld a, d                                       ; $6439: $7a
    ld a, d                                       ; $643a: $7a
    ld a, b                                       ; $643b: $78
    ld a, b                                       ; $643c: $78
    ld a, [$e0ff]                                 ; $643d: $fa $ff $e0
    rst $38                                       ; $6440: $ff
    ld sp, hl                                     ; $6441: $f9
    ld sp, hl                                     ; $6442: $f9
    ldh a, [$f2]                                  ; $6443: $f0 $f2
    ret z                                         ; $6445: $c8

    rst $08                                       ; $6446: $cf
    jr nz, jr_04e_6488                            ; $6447: $20 $3f

    rst $38                                       ; $6449: $ff
    ld a, [c]                                     ; $644a: $f2
    ld b, $f1                                     ; $644b: $06 $f1
    dec b                                         ; $644d: $05
    pop af                                        ; $644e: $f1
    inc b                                         ; $644f: $04
    ld hl, sp-$76                                 ; $6450: $f8 $8a
    rst $38                                       ; $6452: $ff
    ld a, h                                       ; $6453: $7c
    ld b, h                                       ; $6454: $44
    ccf                                           ; $6455: $3f
    jr nz, @+$61                                  ; $6456: $20 $5f

    ret nc                                        ; $6458: $d0

    cpl                                           ; $6459: $2f
    add sp, -$02                                  ; $645a: $e8 $fe
    ld [hl], e                                    ; $645c: $73
    ret nz                                        ; $645d: $c0

    nop                                           ; $645e: $00
    db $dd                                        ; $645f: $dd
    ld b, b                                       ; $6460: $40

jr_04e_6461:
    dec a                                         ; $6461: $3d
    jr nz, jr_04e_6461                            ; $6462: $20 $fd

    add b                                         ; $6464: $80
    rst $38                                       ; $6465: $ff

jr_04e_6466:
    db $fd                                        ; $6466: $fd
    dec b                                         ; $6467: $05
    ld a, [c]                                     ; $6468: $f2
    ld [de], a                                    ; $6469: $12
    adc b                                         ; $646a: $88
    adc a                                         ; $646b: $8f
    rst $00                                       ; $646c: $c7
    nop                                           ; $646d: $00
    rst $30                                       ; $646e: $f7
    rst $00                                       ; $646f: $c7
    db $10                                        ; $6470: $10
    rst $28                                       ; $6471: $ef
    ld h, l                                       ; $6472: $65
    and b                                         ; $6473: $a0
    db $fd                                        ; $6474: $fd
    dec b                                         ; $6475: $05
    ei                                            ; $6476: $fb
    inc bc                                        ; $6477: $03
    rst $38                                       ; $6478: $ff
    ei                                            ; $6479: $fb
    adc e                                         ; $647a: $8b
    halt                                          ; $647b: $76
    ld d, [hl]                                    ; $647c: $56
    or b                                          ; $647d: $b0
    ld b, $b0                                     ; $647e: $06 $b0
    ld d, $ff                                     ; $6480: $16 $ff
    and b                                         ; $6482: $a0
    nop                                           ; $6483: $00
    ccf                                           ; $6484: $3f
    jr nz, jr_04e_6466                            ; $6485: $20 $df

    ret nc                                        ; $6487: $d0

jr_04e_6488:
    rst $28                                       ; $6488: $ef
    add sp, -$11                                  ; $6489: $e8 $ef
    rst $30                                       ; $648b: $f7
    db $f4                                        ; $648c: $f4
    ld [hl], b                                    ; $648d: $70
    ld [hl], b                                    ; $648e: $70
    ld d, b                                       ; $648f: $50
    add c                                         ; $6490: $81
    inc de                                        ; $6491: $13
    ld [bc], a                                    ; $6492: $02
    call nc, Call_000_04ff                        ; $6493: $d4 $ff $04
    ret nc                                        ; $6496: $d0

    ld b, a                                       ; $6497: $47

jr_04e_6498:
    or b                                          ; $6498: $b0
    daa                                           ; $6499: $27
    or b                                          ; $649a: $b0
    add [hl]                                      ; $649b: $86
    ld [hl], b                                    ; $649c: $70
    ld e, a                                       ; $649d: $5f
    ld b, [hl]                                    ; $649e: $46
    nop                                           ; $649f: $00
    ld h, e                                       ; $64a0: $63
    nop                                           ; $64a1: $00
    ld l, a                                       ; $64a2: $6f
    cp $e2                                        ; $64a3: $fe $e2
    rst $28                                       ; $64a5: $ef
    cp $e0                                        ; $64a6: $fe $e0
    db $fd                                        ; $64a8: $fd
    rrca                                          ; $64a9: $0f
    cp $e0                                        ; $64aa: $fe $e0
    ret nz                                        ; $64ac: $c0

    nop                                           ; $64ad: $00
    pop bc                                        ; $64ae: $c1
    inc d                                         ; $64af: $14
    call nc, $ff02                                ; $64b0: $d4 $02 $ff

jr_04e_64b3:
    jp nz, $c000                                  ; $64b3: $c2 $00 $c0

    jr nz, jr_04e_6498                            ; $64b6: $20 $e0

    ld [$04c8], sp                                ; $64b8: $08 $c8 $04
    db $fd                                        ; $64bb: $fd
    call nz, $8349                                ; $64bc: $c4 $49 $83
    ld [de], a                                    ; $64bf: $12
    di                                            ; $64c0: $f3
    jr nz, @-$1d                                  ; $64c1: $20 $e1

    nop                                           ; $64c3: $00
    pop bc                                        ; $64c4: $c1
    rst $38                                       ; $64c5: $ff
    ld b, d                                       ; $64c6: $42
    jp Jump_000_0704                              ; $64c7: $c3 $04 $07


    nop                                           ; $64ca: $00
    call c, $df00                                 ; $64cb: $dc $00 $df
    cp a                                          ; $64ce: $bf
    nop                                           ; $64cf: $00
    rst $18                                       ; $64d0: $df
    jr nz, jr_04e_64b3                            ; $64d1: $20 $e0

    db $10                                        ; $64d3: $10
    ldh a, [$58]                                  ; $64d4: $f0 $58
    and l                                         ; $64d6: $a5
    ld [bc], a                                    ; $64d7: $02
    rst $10                                       ; $64d8: $d7
    cp $04                                        ; $64d9: $fe $04
    db $fc                                        ; $64db: $fc
    ld [bc], a                                    ; $64dc: $02
    and b                                         ; $64dd: $a0
    inc bc                                        ; $64de: $03
    rra                                           ; $64df: $1f
    add e                                         ; $64e0: $83
    ld [$bbcf], sp                                ; $64e1: $08 $cf $bb
    add d                                         ; $64e4: $82
    cp $6a                                        ; $64e5: $fe $6a
    and b                                         ; $64e7: $a0
    nop                                           ; $64e8: $00
    add d                                         ; $64e9: $82
    add e                                         ; $64ea: $83
    rrca                                          ; $64eb: $0f
    add e                                         ; $64ec: $83
    db $10                                        ; $64ed: $10
    ld a, l                                       ; $64ee: $7d
    or b                                          ; $64ef: $b0
    add e                                         ; $64f0: $83
    ldh [$3f], a                                  ; $64f1: $e0 $3f
    add b                                         ; $64f3: $80
    add b                                         ; $64f4: $80
    ld b, b                                       ; $64f5: $40
    ret nz                                        ; $64f6: $c0

    rst $38                                       ; $64f7: $ff
    ld h, e                                       ; $64f8: $63
    rst $38                                       ; $64f9: $ff
    dec b                                         ; $64fa: $05
    ld a, l                                       ; $64fb: $7d
    nop                                           ; $64fc: $00
    ldh [rP1], a                                  ; $64fd: $e0 $00
    ldh [rSB], a                                  ; $64ff: $e0 $01
    rlca                                          ; $6501: $07
    sbc $36                                       ; $6502: $de $36

jr_04e_6504:
    and l                                         ; $6504: $a5
    ld c, b                                       ; $6505: $48
    ret z                                         ; $6506: $c8

    add b                                         ; $6507: $80
    rst $38                                       ; $6508: $ff
    push bc                                       ; $6509: $c5
    and b                                         ; $650a: $a0
    nop                                           ; $650b: $00
    add b                                         ; $650c: $80
    ld sp, hl                                     ; $650d: $f9
    add b                                         ; $650e: $80
    add [hl]                                      ; $650f: $86
    and h                                         ; $6510: $a4
    ld l, $a0                                     ; $6511: $2e $a0
    jr z, jr_04e_6504                             ; $6513: $28 $ef

    nop                                           ; $6515: $00
    nop                                           ; $6516: $00
    ld [$08fd], sp                                ; $6517: $08 $fd $08
    rst $08                                       ; $651a: $cf
    ld h, e                                       ; $651b: $63
    add b                                         ; $651c: $80
    ld hl, sp+$00                                 ; $651d: $f8 $00
    ret nz                                        ; $651f: $c0

    ld bc, $9303                                  ; $6520: $01 $03 $93
    db $10                                        ; $6523: $10
    rra                                           ; $6524: $1f
    and c                                         ; $6525: $a1
    and b                                         ; $6526: $a0
    or b                                          ; $6527: $b0
    db $e3                                        ; $6528: $e3
    ldh a, [$99]                                  ; $6529: $f0 $99
    and b                                         ; $652b: $a0
    or b                                          ; $652c: $b0
    add sp, $31                                   ; $652d: $e8 $31
    rst $38                                       ; $652f: $ff
    ld sp, $de1e                                  ; $6530: $31 $1e $de
    add a                                         ; $6533: $87
    add a                                         ; $6534: $87
    ld bc, $2201                                  ; $6535: $01 $01 $22
    db $fd                                        ; $6538: $fd
    ld a, $9f                                     ; $6539: $3e $9f
    ld h, e                                       ; $653b: $63
    dec c                                         ; $653c: $0d
    adc l                                         ; $653d: $8d
    ld a, [bc]                                    ; $653e: $0a
    ld a, [hl+]                                   ; $653f: $2a
    push de                                       ; $6540: $d5
    push de                                       ; $6541: $d5
    cp a                                          ; $6542: $bf
    cp $fe                                        ; $6543: $fe $fe
    ld a, a                                       ; $6545: $7f
    ld a, a                                       ; $6546: $7f
    sbc [hl]                                      ; $6547: $9e
    sbc [hl]                                      ; $6548: $9e
    ld b, d                                       ; $6549: $42
    and b                                         ; $654a: $a0
    ld hl, sp-$01                                 ; $654b: $f8 $ff
    jr nc, @+$39                                  ; $654d: $30 $37

    or b                                          ; $654f: $b0
    or a                                          ; $6550: $b7
    ld h, b                                       ; $6551: $60
    ld h, e                                       ; $6552: $63
    ret nz                                        ; $6553: $c0

    ret nz                                        ; $6554: $c0

    rst $28                                       ; $6555: $ef
    adc d                                         ; $6556: $8a
    adc [hl]                                      ; $6557: $8e
    db $10                                        ; $6558: $10
    rra                                           ; $6559: $1f
    ld a, b                                       ; $655a: $78
    ldh [rIE], a                                  ; $655b: $e0 $ff
    nop                                           ; $655d: $00
    ld b, $f8                                     ; $655e: $06 $f8
    ld b, [hl]                                    ; $6560: $46
    add c                                         ; $6561: $81
    ld b, l                                       ; $6562: $45
    ld h, [hl]                                    ; $6563: $66
    db $fc                                        ; $6564: $fc
    rst $28                                       ; $6565: $ef
    ret nz                                        ; $6566: $c0

    nop                                           ; $6567: $00
    add b                                         ; $6568: $80
    ld [de], a                                    ; $6569: $12
    sub e                                         ; $656a: $93
    rst $38                                       ; $656b: $ff
    ld hl, $00a1                                  ; $656c: $21 $a1 $00
    add b                                         ; $656f: $80
    nop                                           ; $6570: $00
    add b                                         ; $6571: $80
    ld hl, $efa1                                  ; $6572: $21 $a1 $ef
    ld [de], a                                    ; $6575: $12
    sub e                                         ; $6576: $93
    sub b                                         ; $6577: $90
    sbc a                                         ; $6578: $9f
    add [hl]                                      ; $6579: $86
    pop hl                                        ; $657a: $e1
    ld [bc], a                                    ; $657b: $02
    add e                                         ; $657c: $83
    ld hl, $e1ff                                  ; $657d: $21 $ff $e1
    db $10                                        ; $6580: $10
    ldh a, [rSB]                                  ; $6581: $f0 $01
    pop af                                        ; $6583: $f1
    ld [$10f9], sp                                ; $6584: $08 $f9 $10
    rst $38                                       ; $6587: $ff
    sbc a                                         ; $6588: $9f
    add b                                         ; $6589: $80
    adc a                                         ; $658a: $8f
    ld [$840f], sp                                ; $658b: $08 $0f $84
    add a                                         ; $658e: $87
    ld b, b                                       ; $658f: $40
    db $dd                                        ; $6590: $dd
    pop bc                                        ; $6591: $c1
    ld [$fee0], a                                 ; $6592: $ea $e0 $fe
    add hl, bc                                    ; $6595: $09
    ld sp, hl                                     ; $6596: $f9
    db $e4                                        ; $6597: $e4
    xor d                                         ; $6598: $aa
    ld bc, $ff00                                  ; $6599: $01 $00 $ff
    inc bc                                        ; $659c: $03
    jr nz, @-$1e                                  ; $659d: $20 $e0

    ld b, d                                       ; $659f: $42
    jp $8300                                      ; $65a0: $c3 $00 $83


    inc b                                         ; $65a3: $04
    rst $30                                       ; $65a4: $f7
    add a                                         ; $65a5: $87
    ld c, b                                       ; $65a6: $48
    rst $08                                       ; $65a7: $cf
    rrca                                          ; $65a8: $0f
    ld h, e                                       ; $65a9: $63
    jr nz, jr_04e_65cf                            ; $65aa: $20 $23

    db $10                                        ; $65ac: $10
    inc de                                        ; $65ad: $13
    cp $ca                                        ; $65ae: $fe $ca
    ret nz                                        ; $65b0: $c0

    inc bc                                        ; $65b1: $03
    ld b, b                                       ; $65b2: $40
    ld b, e                                       ; $65b3: $43
    jr z, jr_04e_65e1                             ; $65b4: $28 $2b

    nop                                           ; $65b6: $00
    add e                                         ; $65b7: $83
    di                                            ; $65b8: $f3
    nop                                           ; $65b9: $00
    inc bc                                        ; $65ba: $03
    and h                                         ; $65bb: $a4
    jp hl                                         ; $65bc: $e9


    sbc h                                         ; $65bd: $9c
    ldh [$c0], a                                  ; $65be: $e0 $c0
    ld [$01f9], sp                                ; $65c0: $08 $f9 $01
    cp a                                          ; $65c3: $bf
    pop af                                        ; $65c4: $f1
    db $10                                        ; $65c5: $10
    ldh a, [rNR42]                                ; $65c6: $f0 $21
    pop hl                                        ; $65c8: $e1
    ld [bc], a                                    ; $65c9: $02

jr_04e_65ca:
    ret nc                                        ; $65ca: $d0

    ret nz                                        ; $65cb: $c0

    ld b, b                                       ; $65cc: $40

jr_04e_65cd:
    ld a, a                                       ; $65cd: $7f
    ld a, a                                       ; $65ce: $7f

jr_04e_65cf:
    sub b                                         ; $65cf: $90
    sbc a                                         ; $65d0: $9f
    inc b                                         ; $65d1: $04
    call nz, $c808                                ; $65d2: $c4 $08 $c8
    adc d                                         ; $65d5: $8a
    add b                                         ; $65d6: $80
    rst $38                                       ; $65d7: $ff
    ret nz                                        ; $65d8: $c0

    ld [bc], a                                    ; $65d9: $02
    jp nz, $d414                                  ; $65da: $c2 $14 $d4

    nop                                           ; $65dd: $00
    pop bc                                        ; $65de: $c1
    nop                                           ; $65df: $00
    rst $30                                       ; $65e0: $f7

jr_04e_65e1:
    ret nz                                        ; $65e1: $c0

    inc b                                         ; $65e2: $04
    rlca                                          ; $65e3: $07
    or b                                          ; $65e4: $b0
    ldh [$c1], a                                  ; $65e5: $e0 $c1
    jr nz, jr_04e_65ca                            ; $65e7: $20 $e1

    ld [de], a                                    ; $65e9: $12
    ld [hl], c                                    ; $65ea: $71
    di                                            ; $65eb: $f3
    ld d, b                                       ; $65ec: $50
    db $f4                                        ; $65ed: $f4
    cp $ff                                        ; $65ee: $fe $ff
    ld e, $ef                                     ; $65f0: $1e $ef
    ret nz                                        ; $65f2: $c0

    nop                                           ; $65f3: $00
    di                                            ; $65f4: $f3
    cp $e4                                        ; $65f5: $fe $e4
    xor [hl]                                      ; $65f7: $ae
    ld b, c                                       ; $65f8: $41
    ld b, c                                       ; $65f9: $41
    sbc h                                         ; $65fa: $9c
    nop                                           ; $65fb: $00
    adc b                                         ; $65fc: $88
    ld [de], a                                    ; $65fd: $12
    ldh [$94], a                                  ; $65fe: $e0 $94
    ld hl, sp-$20                                 ; $6600: $f8 $e0
    sbc h                                         ; $6602: $9c
    ldh a, [$c2]                                  ; $6603: $f0 $c2
    rst $38                                       ; $6605: $ff
    cp $ff                                        ; $6606: $fe $ff
    ld c, [hl]                                    ; $6608: $4e
    ld l, h                                       ; $6609: $6c
    ret z                                         ; $660a: $c8

    add b                                         ; $660b: $80
    nop                                           ; $660c: $00
    inc bc                                        ; $660d: $03
    ld bc, $9f0e                                  ; $660e: $01 $0e $9f
    rlca                                          ; $6611: $07
    ld [$0804], sp                                ; $6612: $08 $04 $08
    dec b                                         ; $6615: $05
    db $fc                                        ; $6616: $fc
    ldh [$f6], a                                  ; $6617: $e0 $f6
    ld hl, $bb80                                  ; $6619: $21 $80 $bb
    nop                                           ; $661c: $00
    and b                                         ; $661d: $a0

jr_04e_661e:
    ld h, c                                       ; $661e: $61
    ld h, b                                       ; $661f: $60
    ret nz                                        ; $6620: $c0

    nop                                           ; $6621: $00
    or b                                          ; $6622: $b0
    cp $e0                                        ; $6623: $fe $e0
    inc b                                         ; $6625: $04
    ldh a, [$e8]                                  ; $6626: $f0 $e8
    ldh [$fc], a                                  ; $6628: $e0 $fc
    jp hl                                         ; $662a: $e9


    and b                                         ; $662b: $a0
    dec l                                         ; $662c: $2d
    jp z, Jump_000_07e3                           ; $662d: $ca $e3 $07

    ld [$0e01], sp                                ; $6630: $08 $01 $0e
    ld d, [hl]                                    ; $6633: $56
    halt                                          ; $6634: $76
    add c                                         ; $6635: $81
    nop                                           ; $6636: $00
    ld bc, $e1cc                                  ; $6637: $01 $cc $e1
    ret nz                                        ; $663a: $c0

    inc hl                                        ; $663b: $23
    ld h, b                                       ; $663c: $60
    and b                                         ; $663d: $a0
    ld e, a                                       ; $663e: $5f
    ret nz                                        ; $663f: $c0

    jr nc, jr_04e_65cd                            ; $6640: $30 $8b

    ld b, b                                       ; $6642: $40
    jr z, jr_04e_66a6                             ; $6643: $28 $61

    ld l, a                                       ; $6645: $6f
    cpl                                           ; $6646: $2f
    call z, Call_000_2048                         ; $6647: $cc $48 $20
    db $10                                        ; $664a: $10
    cp $eb                                        ; $664b: $fe $eb
    halt                                          ; $664d: $76
    ld hl, $0177                                  ; $664e: $21 $77 $01
    nop                                           ; $6651: $00
    dec b                                         ; $6652: $05
    dec d                                         ; $6653: $15
    and b                                         ; $6654: $a0
    inc bc                                        ; $6655: $03
    nop                                           ; $6656: $00
    dec c                                         ; $6657: $0d
    cp $e0                                        ; $6658: $fe $e0
    cp [hl]                                       ; $665a: $be
    jr jr_04e_661e                                ; $665b: $18 $c1

    nop                                           ; $665d: $00
    ret nz                                        ; $665e: $c0

    add b                                         ; $665f: $80
    ld [hl], b                                    ; $6660: $70
    ldh [$d8], a                                  ; $6661: $e0 $d8
    ldh [$a0], a                                  ; $6663: $e0 $a0
    inc d                                         ; $6665: $14
    call nc, $ece0                                ; $6666: $d4 $e0 $ec
    pop hl                                        ; $6669: $e1
    inc bc                                        ; $666a: $03
    rst $30                                       ; $666b: $f7
    add b                                         ; $666c: $80
    dec b                                         ; $666d: $05
    push de                                       ; $666e: $d5
    ld b, d                                       ; $666f: $42
    ret nz                                        ; $6670: $c0

    pop hl                                        ; $6671: $e1
    ld [$efe1], a                                 ; $6672: $ea $e1 $ef
    ldh [rNR10], a                                ; $6675: $e0 $10
    add b                                         ; $6677: $80
    ld [hl], b                                    ; $6678: $70
    and $a1                                       ; $6679: $e6 $a1
    nop                                           ; $667b: $00
    add b                                         ; $667c: $80

jr_04e_667d:
    rst $38                                       ; $667d: $ff
    ld a, a                                       ; $667e: $7f
    rst $38                                       ; $667f: $ff
    rst $10                                       ; $6680: $d7
    rst $20                                       ; $6681: $e7
    and l                                         ; $6682: $a5
    add $a5                                       ; $6683: $c6 $a5
    add [hl]                                      ; $6685: $86
    cp $e5                                        ; $6686: $fe $e5
    cp h                                          ; $6688: $bc
    inc hl                                        ; $6689: $23
    ld hl, $0af0                                  ; $668a: $21 $f0 $0a
    rst $38                                       ; $668d: $ff
    rst $38                                       ; $668e: $ff
    inc bc                                        ; $668f: $03
    ld bc, $e8fe                                  ; $6690: $01 $fe $e8
    nop                                           ; $6693: $00
    rst $38                                       ; $6694: $ff
    rra                                           ; $6695: $1f

jr_04e_6696:
    rrca                                          ; $6696: $0f
    db $10                                        ; $6697: $10
    ld [$1a30], sp                                ; $6698: $08 $30 $1a
    ldh [$7f], a                                  ; $669b: $e0 $7f
    ccf                                           ; $669d: $3f
    add b                                         ; $669e: $80
    ld c, h                                       ; $669f: $4c
    add b                                         ; $66a0: $80
    ld e, e                                       ; $66a1: $5b
    add b                                         ; $66a2: $80
    ld c, e                                       ; $66a3: $4b
    ld a, [de]                                    ; $66a4: $1a
    and b                                         ; $66a5: $a0

jr_04e_66a6:
    ld c, l                                       ; $66a6: $4d
    db $ec                                        ; $66a7: $ec
    rst $38                                       ; $66a8: $ff
    ld hl, sp-$10                                 ; $66a9: $f8 $f0
    ld [$0c10], sp                                ; $66ab: $08 $10 $0c
    ld e, b                                       ; $66ae: $58
    rlca                                          ; $66af: $07
    cp $7f                                        ; $66b0: $fe $7f
    ld bc, $0132                                  ; $66b2: $01 $32 $01
    jp c, $d201                                   ; $66b5: $da $01 $d2

    ld bc, $01bd                                  ; $66b8: $01 $bd $01
    rst $38                                       ; $66bb: $ff
    ld a, a                                       ; $66bc: $7f
    add c                                         ; $66bd: $81
    ld a, a                                       ; $66be: $7f
    add b                                         ; $66bf: $80
    ld a, a                                       ; $66c0: $7f
    adc b                                         ; $66c1: $88
    ld a, a                                       ; $66c2: $7f
    sub h                                         ; $66c3: $94
    ld a, [$205b]                                 ; $66c4: $fa $5b $20
    cp [hl]                                       ; $66c7: $be
    ld d, a                                       ; $66c8: $57
    jr nz, jr_04e_667d                            ; $66c9: $20 $b2

    ld a, a                                       ; $66cb: $7f
    add c                                         ; $66cc: $81
    rst $38                                       ; $66cd: $ff
    rst $38                                       ; $66ce: $ff
    ld c, a                                       ; $66cf: $4f
    ld bc, $55fe                                  ; $66d0: $01 $fe $55
    xor d                                         ; $66d3: $aa
    cp $e3                                        ; $66d4: $fe $e3
    ldh [$e4], a                                  ; $66d6: $e0 $e4
    cp h                                          ; $66d8: $bc
    dec a                                         ; $66d9: $3d
    jr nz, @-$56                                  ; $66da: $20 $a8

    db $fc                                        ; $66dc: $fc
    pop hl                                        ; $66dd: $e1
    ld a, [$e0e1]                                 ; $66de: $fa $e1 $e0
    pop af                                        ; $66e1: $f1
    sbc h                                         ; $66e2: $9c
    dec e                                         ; $66e3: $1d
    jr nz, jr_04e_6696                            ; $66e4: $20 $b0

    cp $e0                                        ; $66e6: $fe $e0
    or d                                          ; $66e8: $b2
    db $10                                        ; $66e9: $10
    or $e0                                        ; $66ea: $f6 $e0
    ret nz                                        ; $66ec: $c0

    push af                                       ; $66ed: $f5
    cp $e3                                        ; $66ee: $fe $e3
    ret nz                                        ; $66f0: $c0

    di                                            ; $66f1: $f3
    cp h                                          ; $66f2: $bc
    jp nz, $fce0                                  ; $66f3: $c2 $e0 $fc

    pop hl                                        ; $66f6: $e1
    ld a, [$f8e1]                                 ; $66f7: $fa $e1 $f8
    add b                                         ; $66fa: $80
    add sp, $06                                   ; $66fb: $e8 $06
    rst $20                                       ; $66fd: $e7
    db $fc                                        ; $66fe: $fc
    jp $bf1e                                      ; $66ff: $c3 $1e $bf


    cp a                                          ; $6702: $bf
    and c                                         ; $6703: $a1
    cp l                                          ; $6704: $bd
    rst $38                                       ; $6705: $ff
    and c                                         ; $6706: $a1
    cp [hl]                                       ; $6707: $be
    rst $20                                       ; $6708: $e7
    db $fd                                        ; $6709: $fd
    pop hl                                        ; $670a: $e1
    cp $27                                        ; $670b: $fe $27
    or h                                          ; $670d: $b4
    ld h, a                                       ; $670e: $67
    ld h, $d8                                     ; $670f: $26 $d8
    db $fc                                        ; $6711: $fc
    inc b                                         ; $6712: $04
    jp hl                                         ; $6713: $e9


    ld hl, sp-$3f                                 ; $6714: $f8 $c1
    ld b, b                                       ; $6716: $40
    add b                                         ; $6717: $80
    cp $eb                                        ; $6718: $fe $eb
    ld c, h                                       ; $671a: $4c
    dec sp                                        ; $671b: $3b
    inc bc                                        ; $671c: $03
    ld a, [$02e7]                                 ; $671d: $fa $e7 $02

jr_04e_6720:
    ld bc, $ebfe                                  ; $6720: $01 $fe $eb
    add b                                         ; $6723: $80
    ldh a, [$b0]                                  ; $6724: $f0 $b0
    jr nz, jr_04e_6720                            ; $6726: $20 $f8

    ld hl, $20b6                                  ; $6728: $21 $b6 $20
    or $c8                                        ; $672b: $f6 $c8
    pop bc                                        ; $672d: $c1
    jp nz, $c0c3                                  ; $672e: $c2 $c3 $c0

    push de                                       ; $6731: $d5
    sbc b                                         ; $6732: $98
    cp $e4                                        ; $6733: $fe $e4
    ret nz                                        ; $6735: $c0

    call nz, $b270                                ; $6736: $c4 $70 $b2
    and c                                         ; $6739: $a1
    rst $20                                       ; $673a: $e7
    nop                                           ; $673b: $00
    ld e, a                                       ; $673c: $5f
    db $e4                                        ; $673d: $e4
    ld a, h                                       ; $673e: $7c
    jp nz, Jump_04e_7f8e                          ; $673f: $c2 $8e $7f

    add h                                         ; $6742: $84
    cp $e0                                        ; $6743: $fe $e0
    push hl                                       ; $6745: $e5
    or h                                          ; $6746: $b4
    cp $e0                                        ; $6747: $fe $e0
    sbc b                                         ; $6749: $98
    ld a, h                                       ; $674a: $7c
    push bc                                       ; $674b: $c5
    ld b, $c1                                     ; $674c: $06 $c1
    add h                                         ; $674e: $84
    sbc [hl]                                      ; $674f: $9e
    sbc c                                         ; $6750: $99
    rst $38                                       ; $6751: $ff
    cp a                                          ; $6752: $bf
    sbc a                                         ; $6753: $9f
    cp a                                          ; $6754: $bf
    adc h                                         ; $6755: $8c
    rst $18                                       ; $6756: $df
    add $ef                                       ; $6757: $c6 $ef
    db $e3                                        ; $6759: $e3
    and c                                         ; $675a: $a1
    rst $30                                       ; $675b: $f7
    dec bc                                        ; $675c: $0b
    push bc                                       ; $675d: $c5
    jr z, @-$3c                                   ; $675e: $28 $c2

    and h                                         ; $6760: $a4
    and c                                         ; $6761: $a1
    ld [bc], a                                    ; $6762: $02
    ret nz                                        ; $6763: $c0

    inc bc                                        ; $6764: $03
    ldh a, [$e8]                                  ; $6765: $f0 $e8
    ld c, e                                       ; $6767: $4b

jr_04e_6768:
    cp $0a                                        ; $6768: $fe $0a
    ret nz                                        ; $676a: $c0

    ld c, h                                       ; $676b: $4c
    add b                                         ; $676c: $80
    ld a, a                                       ; $676d: $7f
    add b                                         ; $676e: $80
    ld a, [de]                                    ; $676f: $1a
    ldh [$08], a                                  ; $6770: $e0 $08
    rst $18                                       ; $6772: $df
    jr nc, jr_04e_6784                            ; $6773: $30 $0f

    stop                                          ; $6775: $10 $00
    rra                                           ; $6777: $1f
    ld d, l                                       ; $6778: $55
    xor e                                         ; $6779: $ab
    nop                                           ; $677a: $00
    rst $38                                       ; $677b: $ff
    db $fd                                        ; $677c: $fd
    jp nc, $c00a                                  ; $677d: $d2 $0a $c0

    ld [hl-], a                                   ; $6780: $32
    ld bc, $01fe                                  ; $6781: $01 $fe $01

jr_04e_6784:
    ld e, b                                       ; $6784: $58
    rlca                                          ; $6785: $07
    cp a                                          ; $6786: $bf
    db $10                                        ; $6787: $10
    inc c                                         ; $6788: $0c
    ldh a, [$08]                                  ; $6789: $f0 $08
    nop                                           ; $678b: $00
    ld hl, sp+$1c                                 ; $678c: $f8 $1c
    jp z, Jump_000_02b0                           ; $678e: $ca $b0 $02

    add h                                         ; $6791: $84
    ldh [$b8], a                                  ; $6792: $e0 $b8
    cp $e0                                        ; $6794: $fe $e0
    ld a, [hl]                                    ; $6796: $7e
    pop hl                                        ; $6797: $e1
    db $fc                                        ; $6798: $fc
    or c                                          ; $6799: $b1
    ld [c], a                                     ; $679a: $e2
    jp $ce5c                                      ; $679b: $c3 $5c $ce


    call c, Call_04e_55a6                         ; $679e: $dc $a6 $55
    and d                                         ; $67a1: $a2
    ldh [$c0], a                                  ; $67a2: $e0 $c0
    cp d                                          ; $67a4: $ba
    db $fc                                        ; $67a5: $fc
    ret c                                         ; $67a6: $d8

    and d                                         ; $67a7: $a2
    sbc [hl]                                      ; $67a8: $9e
    and b                                         ; $67a9: $a0
    cp d                                          ; $67aa: $ba
    cp h                                          ; $67ab: $bc
    ret nz                                        ; $67ac: $c0

    ldh [$ba], a                                  ; $67ad: $e0 $ba
    pop bc                                        ; $67af: $c1
    cp h                                          ; $67b0: $bc
    or l                                          ; $67b1: $b5
    jp c, $bca3                                   ; $67b2: $da $a3 $bc

    and [hl]                                      ; $67b5: $a6
    ld b, b                                       ; $67b6: $40
    and e                                         ; $67b7: $a3
    rrca                                          ; $67b8: $0f
    rra                                           ; $67b9: $1f
    rla                                           ; $67ba: $17
    ld a, a                                       ; $67bb: $7f
    db $10                                        ; $67bc: $10
    rra                                           ; $67bd: $1f
    db $10                                        ; $67be: $10
    rra                                           ; $67bf: $1f
    inc de                                        ; $67c0: $13
    ld e, $13                                     ; $67c1: $1e $13
    jr nc, jr_04e_6768                            ; $67c3: $30 $a3

    rst $38                                       ; $67c5: $ff
    add b                                         ; $67c6: $80
    ret nz                                        ; $67c7: $c0

    ld b, b                                       ; $67c8: $40
    ld h, b                                       ; $67c9: $60
    and b                                         ; $67ca: $a0
    jr nc, jr_04e_6829                            ; $67cb: $30 $5c

    rra                                           ; $67cd: $1f
    ei                                            ; $67ce: $fb
    ei                                            ; $67cf: $fb
    sub e                                         ; $67d0: $93
    jr nz, @-$5b                                  ; $67d1: $20 $a3

    ld b, $0f                                     ; $67d3: $06 $0f
    dec bc                                        ; $67d5: $0b
    add hl, bc                                    ; $67d6: $09
    rrca                                          ; $67d7: $0f
    rst $08                                       ; $67d8: $cf
    add hl, de                                    ; $67d9: $19
    rst $30                                       ; $67da: $f7
    ldh a, [$5f]                                  ; $67db: $f0 $5f
    sub b                                         ; $67dd: $90
    add d                                         ; $67de: $82
    inc l                                         ; $67df: $2c
    add h                                         ; $67e0: $84
    add b                                         ; $67e1: $80
    rst $20                                       ; $67e2: $e7
    rst $30                                       ; $67e3: $f7
    rst $38                                       ; $67e4: $ff
    db $db                                        ; $67e5: $db
    sbc b                                         ; $67e6: $98
    nop                                           ; $67e7: $00
    xor c                                         ; $67e8: $a9
    cp h                                          ; $67e9: $bc
    cp $7a                                        ; $67ea: $fe $7a
    ld b, e                                       ; $67ec: $43
    sbc $f0                                       ; $67ed: $de $f0
    adc c                                         ; $67ef: $89
    inc a                                         ; $67f0: $3c
    ld a, a                                       ; $67f1: $7f
    ld e, e                                       ; $67f2: $5b
    jp $85e0                                      ; $67f3: $c3 $e0 $85


    inc bc                                        ; $67f6: $03
    rlca                                          ; $67f7: $07
    cp a                                          ; $67f8: $bf
    ld b, $04                                     ; $67f9: $06 $04
    rst $38                                       ; $67fb: $ff
    db $fc                                        ; $67fc: $fc
    cp a                                          ; $67fd: $bf
    inc h                                         ; $67fe: $24
    ret nc                                        ; $67ff: $d0

    add l                                         ; $6800: $85
    jr nc, jr_04e_6812                            ; $6801: $30 $0f

    ld hl, sp-$18                                 ; $6803: $f8 $e8
    ret z                                         ; $6805: $c8

    ld hl, sp-$02                                 ; $6806: $f8 $fe
    ldh [$3c], a                                  ; $6808: $e0 $3c
    or b                                          ; $680a: $b0
    ld e, d                                       ; $680b: $5a
    and e                                         ; $680c: $a3
    ld b, b                                       ; $680d: $40
    ld sp, hl                                     ; $680e: $f9
    rlca                                          ; $680f: $07
    or h                                          ; $6810: $b4
    ld a, a                                       ; $6811: $7f

jr_04e_6812:
    sbc [hl]                                      ; $6812: $9e
    db $fc                                        ; $6813: $fc
    sbc b                                         ; $6814: $98
    cp d                                          ; $6815: $ba
    add e                                         ; $6816: $83
    db $fc                                        ; $6817: $fc
    and h                                         ; $6818: $a4
    ld h, b                                       ; $6819: $60
    xor c                                         ; $681a: $a9
    cp b                                          ; $681b: $b8
    add h                                         ; $681c: $84
    xor $f8                                       ; $681d: $ee $f8
    add c                                         ; $681f: $81
    sbc [hl]                                      ; $6820: $9e
    ld a, a                                       ; $6821: $7f
    add [hl]                                      ; $6822: $86
    sbc b                                         ; $6823: $98
    add e                                         ; $6824: $83
    ld e, $12                                     ; $6825: $1e $12
    ld e, $ff                                     ; $6827: $1e $ff

jr_04e_6829:
    inc de                                        ; $6829: $13
    rra                                           ; $682a: $1f
    inc de                                        ; $682b: $13
    rra                                           ; $682c: $1f
    db $10                                        ; $682d: $10
    rla                                           ; $682e: $17
    db $10                                        ; $682f: $10
    rrca                                          ; $6830: $0f
    db $fd                                        ; $6831: $fd
    rra                                           ; $6832: $1f
    add b                                         ; $6833: $80
    ld h, c                                       ; $6834: $61
    cp $9e                                        ; $6835: $fe $9e
    ei                                            ; $6837: $fb
    sub d                                         ; $6838: $92
    ld a, a                                       ; $6839: $7f
    ld [de], a                                    ; $683a: $12
    rst $18                                       ; $683b: $df
    sbc $12                                       ; $683c: $de $12
    cp a                                          ; $683e: $bf
    inc sp                                        ; $683f: $33
    call z, $a3fe                                 ; $6840: $cc $fe $a3
    add hl, de                                    ; $6843: $19
    rst $28                                       ; $6844: $ef
    rst $38                                       ; $6845: $ff
    ld a, c                                       ; $6846: $79
    rst $28                                       ; $6847: $ef
    ld a, c                                       ; $6848: $79

jr_04e_6849:
    rst $38                                       ; $6849: $ff
    add hl, de                                    ; $684a: $19
    ld e, l                                       ; $684b: $5d
    add hl, de                                    ; $684c: $19
    and $fe                                       ; $684d: $e6 $fe
    xor $a2                                       ; $684f: $ee $a2
    rst $30                                       ; $6851: $f7
    ldh a, [$df]                                  ; $6852: $f0 $df
    sub e                                         ; $6854: $93
    rst $18                                       ; $6855: $df
    sub e                                         ; $6856: $93
    rst $30                                       ; $6857: $f7
    rst $28                                       ; $6858: $ef
    sub b                                         ; $6859: $90
    ld a, [$6798]                                 ; $685a: $fa $98 $67
    sbc $a3                                       ; $685d: $de $a3
    ld b, c                                       ; $685f: $41
    cp $4c                                        ; $6860: $fe $4c
    ld a, a                                       ; $6862: $7f
    rst $38                                       ; $6863: $ff
    ld c, h                                       ; $6864: $4c
    ld a, a                                       ; $6865: $7f
    ld c, h                                       ; $6866: $4c
    xor $cc                                       ; $6867: $ee $cc
    inc sp                                        ; $6869: $33
    adc $a2                                       ; $686a: $ce $a2
    rst $38                                       ; $686c: $ff
    cp a                                          ; $686d: $bf
    add e                                         ; $686e: $83
    rst $38                                       ; $686f: $ff
    or e                                          ; $6870: $b3
    rst $28                                       ; $6871: $ef
    and e                                         ; $6872: $a3

jr_04e_6873:
    rst $30                                       ; $6873: $f7
    add c                                         ; $6874: $81
    rst $30                                       ; $6875: $f7
    xor a                                         ; $6876: $af
    adc c                                         ; $6877: $89
    halt                                          ; $6878: $76
    ret nc                                        ; $6879: $d0

    db $e3                                        ; $687a: $e3
    ld b, $f9                                     ; $687b: $06 $f9
    ccf                                           ; $687d: $3f
    db $e3                                        ; $687e: $e3
    ld a, a                                       ; $687f: $7f
    scf                                           ; $6880: $37
    push hl                                       ; $6881: $e5
    inc h                                         ; $6882: $24
    rst $20                                       ; $6883: $e7
    inc h                                         ; $6884: $24
    jp $20e7                                      ; $6885: $c3 $e7 $20


    ld h, c                                       ; $6888: $61
    ei                                            ; $6889: $fb
    ld hl, sp+$08                                 ; $688a: $f8 $08
    ld a, [bc]                                    ; $688c: $0a
    pop hl                                        ; $688d: $e1
    add sp, $08                                   ; $688e: $e8 $08
    ret nc                                        ; $6890: $d0

    jr jr_04e_6873                                ; $6891: $18 $e0

    dec a                                         ; $6893: $3d
    ldh a, [rNR10]                                ; $6894: $f0 $10
    ld h, c                                       ; $6896: $61
    daa                                           ; $6897: $27
    rst $30                                       ; $6898: $f7
    ld h, a                                       ; $6899: $67
    or a                                          ; $689a: $b7
    cp $e3                                        ; $689b: $fe $e3
    ld hl, sp+$64                                 ; $689d: $f8 $64
    add c                                         ; $689f: $81
    cp [hl]                                       ; $68a0: $be
    jr c, jr_04e_6849                             ; $68a1: $38 $a6

    ld e, h                                       ; $68a3: $5c
    and d                                         ; $68a4: $a2
    ldh [$ee], a                                  ; $68a5: $e0 $ee
    ld a, [de]                                    ; $68a7: $1a
    add l                                         ; $68a8: $85
    ld hl, sp+$64                                 ; $68a9: $f8 $64
    ldh [$f2], a                                  ; $68ab: $e0 $f2

jr_04e_68ad:
    cp d                                          ; $68ad: $ba
    and d                                         ; $68ae: $a2
    jp nc, $9c60                                  ; $68af: $d2 $60 $9c

    adc [hl]                                      ; $68b2: $8e
    ld h, b                                       ; $68b3: $60
    ret nz                                        ; $68b4: $c0

    rst $30                                       ; $68b5: $f7
    jp c, $a2a1                                   ; $68b6: $da $a1 $a2

    ld a, b                                       ; $68b9: $78
    ld h, c                                       ; $68ba: $61
    jr @-$1f                                      ; $68bb: $18 $df

    ccf                                           ; $68bd: $3f
    dec [hl]                                      ; $68be: $35
    daa                                           ; $68bf: $27
    ld a, [hl-]                                   ; $68c0: $3a
    ld [hl+], a                                   ; $68c1: $22
    dec l                                         ; $68c2: $2d
    nop                                           ; $68c3: $00
    dec h                                         ; $68c4: $25
    ccf                                           ; $68c5: $3f
    rst $38                                       ; $68c6: $ff
    daa                                           ; $68c7: $27
    dec a                                         ; $68c8: $3d
    daa                                           ; $68c9: $27
    jr jr_04e_6909                                ; $68ca: $18 $3d

    rst $08                                       ; $68cc: $cf
    rst $38                                       ; $68cd: $ff
    ld h, [hl]                                    ; $68ce: $66
    rst $20                                       ; $68cf: $e7
    jr nz, @+$01                                  ; $68d0: $20 $ff

    ld h, $fe                                     ; $68d2: $26 $fe
    ldh [$fa], a                                  ; $68d4: $e0 $fa
    ld [c], a                                     ; $68d6: $e2
    reti                                          ; $68d7: $d9


    rst $38                                       ; $68d8: $ff
    inc a                                         ; $68d9: $3c
    rst $38                                       ; $68da: $ff
    rst $38                                       ; $68db: $ff
    rst $38                                       ; $68dc: $ff
    jp $4d7f                                      ; $68dd: $c3 $7f $4d


    rst $38                                       ; $68e0: $ff
    ld c, l                                       ; $68e1: $4d
    rst $38                                       ; $68e2: $ff

Call_04e_68e3:
    rst $38                                       ; $68e3: $ff
    ld b, e                                       ; $68e4: $43
    rst $38                                       ; $68e5: $ff
    ld c, c                                       ; $68e6: $49
    ei                                            ; $68e7: $fb
    ld c, c                                       ; $68e8: $49
    or [hl]                                       ; $68e9: $b6
    rst $38                                       ; $68ea: $ff
    adc $ef                                       ; $68eb: $ce $ef
    rst $38                                       ; $68ed: $ff
    rst $30                                       ; $68ee: $f7
    ld sp, $deef                                  ; $68ef: $31 $ef $de
    ld [c], a                                     ; $68f2: $e2
    rst $28                                       ; $68f3: $ef
    jr nz, jr_04e_68ad                            ; $68f4: $20 $b7

    rst $38                                       ; $68f6: $ff
    ld sp, $ffce                                  ; $68f7: $31 $ce $ff
    rlca                                          ; $68fa: $07
    rrca                                          ; $68fb: $0f
    rrca                                          ; $68fc: $0f
    sbc b                                         ; $68fd: $98
    sbc a                                         ; $68fe: $9f
    db $fd                                        ; $68ff: $fd
    sub e                                         ; $6900: $93
    cp $e0                                        ; $6901: $fe $e0
    sub d                                         ; $6903: $92
    sub a                                         ; $6904: $97
    sub e                                         ; $6905: $93
    dec bc                                        ; $6906: $0b
    sbc b                                         ; $6907: $98
    rlca                                          ; $6908: $07

jr_04e_6909:
    ld e, a                                       ; $6909: $5f
    rrca                                          ; $690a: $0f
    adc [hl]                                      ; $690b: $8e
    rst $38                                       ; $690c: $ff
    rst $30                                       ; $690d: $f7
    ld [hl], c                                    ; $690e: $71
    ldh [$e0], a                                  ; $690f: $e0 $e0
    and $e0                                       ; $6911: $e6 $e0
    pop hl                                        ; $6913: $e1
    cp l                                          ; $6914: $bd
    rst $30                                       ; $6915: $f7
    ldh [$e0], a                                  ; $6916: $e0 $e0
    ld h, c                                       ; $6918: $61
    di                                            ; $6919: $f3
    di                                            ; $691a: $f3
    sub d                                         ; $691b: $92
    cp $e0                                        ; $691c: $fe $e0
    sub [hl]                                      ; $691e: $96
    rst $38                                       ; $691f: $ff
    rst $38                                       ; $6920: $ff
    sbc [hl]                                      ; $6921: $9e
    rst $38                                       ; $6922: $ff
    add d                                         ; $6923: $82
    cp e                                          ; $6924: $bb
    add d                                         ; $6925: $82
    ld a, l                                       ; $6926: $7d
    rst $38                                       ; $6927: $ff
    rst $38                                       ; $6928: $ff
    ldh a, [$f8]                                  ; $6929: $f0 $f8
    ld hl, sp+$08                                 ; $692b: $f8 $08
    add sp, $08                                   ; $692d: $e8 $08
    ldh a, [$78]                                  ; $692f: $f0 $78
    ld e, $fc                                     ; $6931: $1e $fc
    pop hl                                        ; $6933: $e1
    ld b, b                                       ; $6934: $40
    ld h, b                                       ; $6935: $60
    add b                                         ; $6936: $80
    ret nz                                        ; $6937: $c0

    jr nz, @-$0e                                  ; $6938: $20 $f0

    ld b, [hl]                                    ; $693a: $46
    pop hl                                        ; $693b: $e1
    ld d, [hl]                                    ; $693c: $56
    and e                                         ; $693d: $a3
    ld a, [c]                                     ; $693e: $f2
    nop                                           ; $693f: $00
    pop af                                        ; $6940: $f1
    ld [c], a                                     ; $6941: $e2
    ld b, d                                       ; $6942: $42
    add d                                         ; $6943: $82
    ldh [$d7], a                                  ; $6944: $e0 $d7
    cp [hl]                                       ; $6946: $be
    ld a, a                                       ; $6947: $7f
    and [hl]                                      ; $6948: $a6
    ld a, a                                       ; $6949: $7f
    dec b                                         ; $694a: $05
    adc h                                         ; $694b: $8c
    db $f4                                        ; $694c: $f4
    ld h, b                                       ; $694d: $60
    or b                                          ; $694e: $b0
    jp nc, $c060                                  ; $694f: $d2 $60 $c0

    jp z, $f3f8                                   ; $6952: $ca $f8 $f3

    ld b, $43                                     ; $6955: $06 $43
    cp $61                                        ; $6957: $fe $61
    ccf                                           ; $6959: $3f
    cp a                                          ; $695a: $bf
    cp a                                          ; $695b: $bf
    or b                                          ; $695c: $b0
    cp a                                          ; $695d: $bf
    and b                                         ; $695e: $a0
    cp a                                          ; $695f: $bf
    add hl, bc                                    ; $6960: $09
    ld b, a                                       ; $6961: $47
    cp $63                                        ; $6962: $fe $63
    ld a, [c]                                     ; $6964: $f2
    db $10                                        ; $6965: $10
    ld [hl+], a                                   ; $6966: $22
    ld bc, $67fe                                  ; $6967: $01 $fe $67
    sub $e7                                       ; $696a: $d6 $e7
    and c                                         ; $696c: $a1
    cp h                                          ; $696d: $bc
    and b                                         ; $696e: $a0
    rst $38                                       ; $696f: $ff
    inc bc                                        ; $6970: $03
    and c                                         ; $6971: $a1
    ld hl, sp-$2c                                 ; $6972: $f8 $d4
    ld l, c                                       ; $6974: $69
    db $f4                                        ; $6975: $f4
    ld bc, $69d4                                  ; $6976: $01 $d4 $69
    db $e4                                        ; $6979: $e4
    ld l, $ff                                     ; $697a: $2e $ff
    rst $38                                       ; $697c: $ff
    rst $38                                       ; $697d: $ff
    rst $38                                       ; $697e: $ff
    ld hl, sp-$01                                 ; $697f: $f8 $ff
    rst $38                                       ; $6981: $ff
    rst $38                                       ; $6982: $ff
    rst $38                                       ; $6983: $ff
    ld l, e                                       ; $6984: $6b
    ld [$fefe], sp                                ; $6985: $08 $fe $fe
    ld b, $7f                                     ; $6988: $06 $7f
    inc c                                         ; $698a: $0c
    rst $38                                       ; $698b: $ff
    rrca                                          ; $698c: $0f
    jr c, jr_04e_69cd                             ; $698d: $38 $3e

    ld h, b                                       ; $698f: $60
    ld a, h                                       ; $6990: $7c
    ret nz                                        ; $6991: $c0

    ldh a, [$fe]                                  ; $6992: $f0 $fe
    rst $38                                       ; $6994: $ff
    cp $00                                        ; $6995: $fe $00
    ld a, a                                       ; $6997: $7f
    ld a, h                                       ; $6998: $7c
    ld a, h                                       ; $6999: $7c
    add $fe                                       ; $699a: $c6 $fe
    add $ff                                       ; $699c: $c6 $ff
    rst $20                                       ; $699e: $e7
    add $e7                                       ; $699f: $c6 $e7
    cp $ff                                        ; $69a1: $fe $ff
    add $ff                                       ; $69a3: $c6 $ff
    add $df                                       ; $69a5: $c6 $df
    rst $20                                       ; $69a7: $e7
    nop                                           ; $69a8: $00
    ld h, e                                       ; $69a9: $63
    db $fc                                        ; $69aa: $fc
    db $fc                                        ; $69ab: $fc
    ldh a, [$e1]                                  ; $69ac: $f0 $e1
    db $fc                                        ; $69ae: $fc
    rst $38                                       ; $69af: $ff
    or $fa                                        ; $69b0: $f6 $fa
    db $e3                                        ; $69b2: $e3
    nop                                           ; $69b3: $00
    ld a, [hl]                                    ; $69b4: $7e
    ldh [$e1], a                                  ; $69b5: $e0 $e1
    ret nz                                        ; $69b7: $c0

    db $e3                                        ; $69b8: $e3
    ret nz                                        ; $69b9: $c0

    ldh [rIE], a                                  ; $69ba: $e0 $ff
    ret nz                                        ; $69bc: $c0

    ldh [$c6], a                                  ; $69bd: $e0 $c6
    and $7c                                       ; $69bf: $e6 $7c
    ld a, a                                       ; $69c1: $7f
    nop                                           ; $69c2: $00
    ld a, $bf                                     ; $69c3: $3e $bf
    ld hl, sp-$08                                 ; $69c5: $f8 $f8
    call z, $c6fc                                 ; $69c7: $cc $fc $c6
    and $ce                                       ; $69ca: $e6 $ce
    pop hl                                        ; $69cc: $e1

jr_04e_69cd:
    call z, $efff                                 ; $69cd: $cc $ff $ef
    ld hl, sp-$02                                 ; $69d0: $f8 $fe
    nop                                           ; $69d2: $00
    ld a, h                                       ; $69d3: $7c
    cp $fe                                        ; $69d4: $fe $fe
    ret nz                                        ; $69d6: $c0

    rst $38                                       ; $69d7: $ff
    rst $38                                       ; $69d8: $ff
    ret nz                                        ; $69d9: $c0

    ldh [$fc], a                                  ; $69da: $e0 $fc
    db $fc                                        ; $69dc: $fc
    ret nz                                        ; $69dd: $c0

    cp $c0                                        ; $69de: $fe $c0
    ld sp, hl                                     ; $69e0: $f9
    ldh [$b0], a                                  ; $69e1: $e0 $b0
    pop hl                                        ; $69e3: $e1
    ldh a, [$e9]                                  ; $69e4: $f0 $e9
    ret nz                                        ; $69e6: $c0

    ldh [rP1], a                                  ; $69e7: $e0 $00
    ld h, b                                       ; $69e9: $60
    ld a, [hl]                                    ; $69ea: $7e
    db $fd                                        ; $69eb: $fd
    ld a, [hl]                                    ; $69ec: $7e
    ldh [$e1], a                                  ; $69ed: $e0 $e1
    adc $ee                                       ; $69ef: $ce $ee
    add $ef                                       ; $69f1: $c6 $ef
    add $e7                                       ; $69f3: $c6 $e7
    and $c0                                       ; $69f5: $e6 $c0
    pop hl                                        ; $69f7: $e1
    add $c6                                       ; $69f8: $c6 $c6
    sub d                                         ; $69fa: $92
    rst $20                                       ; $69fb: $e7
    sub b                                         ; $69fc: $90
    pop hl                                        ; $69fd: $e1
    ld a, b                                       ; $69fe: $78
    ld a, b                                       ; $69ff: $78
    jr nc, @-$07                                  ; $6a00: $30 $f7

    inc a                                         ; $6a02: $3c
    jr nc, jr_04e_6a3d                            ; $6a03: $30 $38

    cp $e3                                        ; $6a05: $fe $e3
    ld a, b                                       ; $6a07: $78
    ld a, b                                       ; $6a08: $78
    nop                                           ; $6a09: $00
    inc a                                         ; $6a0a: $3c
    cp a                                          ; $6a0b: $bf
    ld a, [hl]                                    ; $6a0c: $7e
    ld a, [hl]                                    ; $6a0d: $7e
    inc c                                         ; $6a0e: $0c
    ccf                                           ; $6a0f: $3f
    inc c                                         ; $6a10: $0c
    ld c, $fe                                     ; $6a11: $0e $fe
    pop hl                                        ; $6a13: $e1
    ld c, h                                       ; $6a14: $4c
    rst $38                                       ; $6a15: $ff
    ld c, [hl]                                    ; $6a16: $4e
    jr c, jr_04e_6a57                             ; $6a17: $38 $3e

    nop                                           ; $6a19: $00
    inc e                                         ; $6a1a: $1c
    add $c6                                       ; $6a1b: $c6 $c6
    call c, $ffff                                 ; $6a1d: $dc $ff $ff
    ldh a, [$fe]                                  ; $6a20: $f0 $fe
    ldh [$f8], a                                  ; $6a22: $e0 $f8
    ldh a, [$f0]                                  ; $6a24: $f0 $f0
    call c, $fc7f                                 ; $6a26: $dc $7f $fc
    add $ee                                       ; $6a29: $c6 $ee
    nop                                           ; $6a2b: $00
    ld h, e                                       ; $6a2c: $63
    ret nz                                        ; $6a2d: $c0

    ret nz                                        ; $6a2e: $c0

    ld [hl], h                                    ; $6a2f: $74
    pop hl                                        ; $6a30: $e1
    db $fc                                        ; $6a31: $fc
    db $fc                                        ; $6a32: $fc
    db $e3                                        ; $6a33: $e3
    ld b, b                                       ; $6a34: $40
    pop hl                                        ; $6a35: $e1
    add $c6                                       ; $6a36: $c6 $c6
    xor $ef                                       ; $6a38: $ee $ef

jr_04e_6a3a:
    xor $ff                                       ; $6a3a: $ee $ff
    ld sp, hl                                     ; $6a3c: $f9

jr_04e_6a3d:
    sub $fe                                       ; $6a3d: $d6 $fe
    ldh [$9e], a                                  ; $6a3f: $e0 $9e
    pop hl                                        ; $6a41: $e1
    nop                                           ; $6a42: $00
    ld h, e                                       ; $6a43: $63
    add $c6                                       ; $6a44: $c6 $c6
    and $3f                                       ; $6a46: $e6 $3f
    rst $20                                       ; $6a48: $e7
    or $f7                                        ; $6a49: $f6 $f7
    sbc $ff                                       ; $6a4b: $de $ff
    adc $90                                       ; $6a4d: $ce $90
    ldh [$30], a                                  ; $6a4f: $e0 $30
    pop hl                                        ; $6a51: $e1
    nop                                           ; $6a52: $00
    jr nz, jr_04e_6a3a                            ; $6a53: $20 $e5

    inc e                                         ; $6a55: $1c
    pop hl                                        ; $6a56: $e1

jr_04e_6a57:
    ld b, b                                       ; $6a57: $40
    pop hl                                        ; $6a58: $e1
    sbc $df                                       ; $6a59: $de $df
    rst $38                                       ; $6a5b: $ff
    rst $38                                       ; $6a5c: $ff
    rst $38                                       ; $6a5d: $ff
    rst $38                                       ; $6a5e: $ff
    rst $38                                       ; $6a5f: $ff
    rst $38                                       ; $6a60: $ff
    rst $38                                       ; $6a61: $ff
    rst $38                                       ; $6a62: $ff
    nop                                           ; $6a63: $00
    rst $38                                       ; $6a64: $ff
    rst $38                                       ; $6a65: $ff
    rst $38                                       ; $6a66: $ff
    rst $38                                       ; $6a67: $ff
    ldh a, [$ef]                                  ; $6a68: $f0 $ef
    nop                                           ; $6a6a: $00
    nop                                           ; $6a6b: $00
    nop                                           ; $6a6c: $00

    db $f5, $00, $ff, $ec, $ff, $fe, $e0, $7d, $fe, $ba, $c7, $bf, $83, $ff, $c7, $ff
    db $ef, $ff, $ff, $e1, $d0, $7f, $ef, $9f, $ff, $a0, $ff, $af, $f0, $fe, $e3, $e1
    db $ff, $df, $e0, $fc, $e2, $d6, $e2, $f3, $e1, $07, $ff, $f3, $1f, $ff, $0b, $ff
    db $fb, $0f, $fe, $e3, $d8, $e5, $d0, $e5, $1c, $e8, $e5, $e0, $ed, $9f, $ff, $c0
    db $a2, $e2, $b8, $e7, $a8, $e1, $e5, $ff, $b8, $e6, $f3, $a8, $e0, $e0, $e3, $d7
    db $38, $bb, $ff, $7c, $6d, $fe, $c6, $ff, $82, $ff, $fe, $f7, $ff, $80, $7f, $60
    db $e0, $fe, $82, $ff, $c6, $ff, $ff, $6c, $ff, $b9, $7e, $d3, $3c, $e7, $ff, $18
    db $ef, $1e, $da, $3f, $b2, $7f, $e2, $ff, $7f, $b2, $7f, $da, $3f, $ee, $1f, $f0
    db $ff, $0f, $f7, $78, $db, $7c, $cd, $7e, $c6, $ff, $7f, $cc, $7f, $d9, $7e, $f3
    db $7c, $c7, $7d, $38, $50, $e8, $0a, $fa, $0f, $fa, $05, $40, $e6, $7f, $0e, $fa
    db $0f, $fe, $0f, $f8, $07, $00, $ed, $f8, $ff, $ff, $fc, $fb, $e3, $c1, $f0, $00
    db $ef, $0f, $e8, $f3, $08, $ef, $fe, $e2, $d3, $c1, $07, $00, $f8, $f8, $e7, $07
    db $07, $f8, $d0, $c4, $c6, $c3, $3f, $00, $df, $df, $c0, $2f, $20, $d7, $10, $fe
    db $c5, $fc, $00, $df, $fb, $03, $f4, $04, $eb, $d0, $e2, $e0, $00, $df, $1f, $1f
    db $e0, $e0, $1f, $d0, $e6, $0f, $00, $df, $f7, $f0, $17, $10, $f7, $fe, $e2, $ff
    db $ff, $ff, $9f, $3f, $f7, $0f, $ab, $07, $f3, $03, $f7, $a9, $03, $f1, $fc, $e0
    db $ff, $ff, $f9, $fc, $ff, $ef, $f0, $d5, $e0, $cf, $c0, $95, $c0, $cf, $8f, $80
    db $95, $80, $ae, $c8, $60, $c4, $7f, $7f, $ff, $9f, $7f, $a7, $5f, $af, $57, $a9
    db $57, $0f, $aa, $55, $aa, $55, $10, $d1, $ce, $e9, $ff, $ff, $fc, $fb, $fc, $0a
    db $e3, $fa, $e7, $ff, $44, $dd, $66, $ff, $fe, $ff, $c4, $7f, $dd, $66, $dd, $26
    db $f9, $3e, $ff, $e3, $1c, $eb, $08, $eb, $08, $f5, $04, $fc, $fe, $e3, $f4, $e1
    db $d7, $10, $d7, $10, $af, $20, $f8, $fe, $e3, $f4, $e1, $22, $c0, $7f, $fe, $13
    db $fe, $1d, $7f, $f1, $1e, $f7, $18, $e7, $38, $ef, $0a, $e4, $78, $fa, $e7, $0c
    db $e1, $fc, $e9, $0f, $80, $15, $80, $fc, $e9, $80, $30, $ed, $0c, $e1, $fc, $e9
    db $3e, $ff, $ff, $ff, $00, $ff, $02, $c0, $0f, $8d, $f0, $78, $c6, $f8, $00, $02
    db $c0, $95, $a0, $a4, $81, $d7, $bf, $10, $2f, $20, $df, $c0, $3f, $5c, $c6, $eb
    db $bf, $08, $f4, $04, $fb, $03, $fc, $4c, $ca, $1f, $8d, $00, $02, $c0, $1f, $e0
    db $74, $82, $0a, $c3, $02, $c0, $f0, $f9, $0f, $64, $82, $00, $e3, $29, $c3, $c1
    db $33, $31, $df, $cb, $c1, $37, $21, $cb, $00, $e3, $10, $87, $ff, $07, $98, $08
    db $a7, $07, $d8, $08, $a7, $f0, $3a, $c4, $59, $80, $fc, $e3, $0c, $c1, $2a, $55
    db $2a, $d5, $ff, $ea, $15, $0a, $f5, $fa, $05, $02, $fd, $fe, $10, $8d, $6f, $60
    db $9f, $d0, $9f, $f0, $9e, $ff, $f0, $9f, $f1, $9e, $f0, $97, $f1, $8f, $fd, $ef
    db $00, $81, $fe, $0e, $d1, $d5, $20, $af, $ff, $e3, $ef, $31, $b5, $38, $fe, $b7
    db $30, $ff, $cf, $58, $4b, $78, $86, $bc, $85, $fd, $ff, $4a, $7a, $4e, $7b, $ce
    db $fb, $fd, $01, $ff, $fa, $02, $fc, $05, $e4, $e7, $18, $5b, $f7, $08, $ef, $6c
    db $7a, $80, $b7, $87, $68, $cb, $ff, $50, $d7, $a3, $ab, $65, $fc, $66, $fc, $ef
    db $a5, $bd, $e3, $bb, $24, $e0, $a0, $3f, $e0, $ff, $ce, $ce, $d1, $15, $e0, $ee
    db $26, $ff, $ff, $26, $ff, $6b, $63, $94, $b5, $98, $fb, $7f, $99, $ff, $90, $f7
    db $90, $ff, $99, $fe, $e0, $ff, $7e, $7e, $81, $bd, $81, $ff, $66, $7e, $ff, $a5
    db $bd, $e6, $be, $66, $3f, $e6, $3f, $fe, $b8, $63, $e6, $e6, $19, $5d, $68, $ef
    db $09, $fb, $ef, $79, $a8, $64, $de, $de, $21, $fd, $20, $ef, $be, $e0, $f5, $6a
    db $e0, $e2, $dd, $1c, $a2, $ff, $2a, $41, $5f, $c6, $de, $62, $6a, $71, $f8, $40
    db $ee, $ff, $ff, $fc, $fb, $81, $bf, $41, $5d, $be, $fd, $3e, $cc, $87, $20, $ee
    db $21, $fd, $de, $de, $7e, $bc, $87, $ce, $fa, $4d, $69, $b6, $30, $ac, $87, $bf
    db $0c, $ef, $14, $56, $eb, $e3, $9c, $87, $e0, $df, $af, $d0, $97, $6f, $0f, $c0
    db $e9, $31, $b5, $73, $ce, $ce, $7c, $87, $0c, $e0, $dd, $66, $66, $6c, $87, $bf
    db $e6, $3e, $e5, $35, $da, $18, $5c, $87, $09, $df, $ef, $19, $5f, $e6, $e6, $4c
    db $87, $ea, $3f, $ef, $ea, $3b, $d5, $15, $3c, $87, $41, $dd, $42, $07, $7a, $bd
    db $bc, $60, $9f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $ff, $fd, $00, $00

    nop                                           ; $6e16: $00
    rst $28                                       ; $6e17: $ef
    rst $38                                       ; $6e18: $ff
    rst $38                                       ; $6e19: $ff
    ld a, a                                       ; $6e1a: $7f
    add b                                         ; $6e1b: $80
    cp $e0                                        ; $6e1c: $fe $e0
    add e                                         ; $6e1e: $83
    ld a, a                                       ; $6e1f: $7f
    add a                                         ; $6e20: $87
    rst $38                                       ; $6e21: $ff
    ld a, [hl]                                    ; $6e22: $7e
    adc a                                         ; $6e23: $8f
    ld a, h                                       ; $6e24: $7c
    adc a                                         ; $6e25: $8f
    ld a, l                                       ; $6e26: $7d
    adc [hl]                                      ; $6e27: $8e
    ld a, a                                       ; $6e28: $7f
    adc a                                         ; $6e29: $8f
    db $fd                                        ; $6e2a: $fd
    ld a, a                                       ; $6e2b: $7f
    ld hl, sp-$1e                                 ; $6e2c: $f8 $e2
    ld a, l                                       ; $6e2e: $7d
    adc [hl]                                      ; $6e2f: $8e
    ld a, c                                       ; $6e30: $79
    add [hl]                                      ; $6e31: $86
    ld a, a                                       ; $6e32: $7f
    add b                                         ; $6e33: $80
    db $fd                                        ; $6e34: $fd
    rst $38                                       ; $6e35: $ff
    rst $38                                       ; $6e36: $ff
    pop hl                                        ; $6e37: $e1
    inc bc                                        ; $6e38: $03
    rst $38                                       ; $6e39: $ff
    ld bc, $c1ff                                  ; $6e3a: $01 $ff $c1
    rst $38                                       ; $6e3d: $ff
    rst $38                                       ; $6e3e: $ff
    pop hl                                        ; $6e3f: $e1
    ld a, a                                       ; $6e40: $7f
    pop af                                        ; $6e41: $f1
    or a                                          ; $6e42: $b7
    ld a, c                                       ; $6e43: $79
    rst $30                                       ; $6e44: $f7
    add hl, sp                                    ; $6e45: $39
    rst $30                                       ; $6e46: $f7
    rst $18                                       ; $6e47: $df
    ld sp, hl                                     ; $6e48: $f9
    rst $30                                       ; $6e49: $f7
    ld sp, hl                                     ; $6e4a: $f9
    scf                                           ; $6e4b: $37
    ld sp, hl                                     ; $6e4c: $f9
    ld hl, sp-$20                                 ; $6e4d: $f8 $e0
    add hl, sp                                    ; $6e4f: $39
    rst $20                                       ; $6e50: $e7
    pop bc                                        ; $6e51: $c1
    add hl, de                                    ; $6e52: $19
    and $e0                                       ; $6e53: $e6 $e0
    rst $18                                       ; $6e55: $df
    ldh [$c0], a                                  ; $6e56: $e0 $c0
    ld [c], a                                     ; $6e58: $e2
    jp z, $f8e4                                   ; $6e59: $ca $e4 $f8

    jp hl                                         ; $6e5c: $e9


    ld a, b                                       ; $6e5d: $78
    add a                                         ; $6e5e: $87
    xor $c0                                       ; $6e5f: $ee $c0
    add sp, -$1f                                  ; $6e61: $e8 $e1
    rst $38                                       ; $6e63: $ff
    pop af                                        ; $6e64: $f1
    jp z, $e7e1                                   ; $6e65: $ca $e1 $e7

    ld sp, hl                                     ; $6e68: $f9
    rst $28                                       ; $6e69: $ef
    rst $30                                       ; $6e6a: $f7
    pop af                                        ; $6e6b: $f1
    ccf                                           ; $6e6c: $3f
    pop af                                        ; $6e6d: $f1
    cp d                                          ; $6e6e: $ba
    pop hl                                        ; $6e6f: $e1
    rst $20                                       ; $6e70: $e7
    ld sp, hl                                     ; $6e71: $f9
    rrca                                          ; $6e72: $0f
    pop af                                        ; $6e73: $f1
    ld a, [$e8c0]                                 ; $6e74: $fa $c0 $e8
    add a                                         ; $6e77: $87
    adc d                                         ; $6e78: $8a
    ldh [$9f], a                                  ; $6e79: $e0 $9f
    ld a, c                                       ; $6e7b: $79
    sbc [hl]                                      ; $6e7c: $9e
    ld a, e                                       ; $6e7d: $7b
    sbc h                                         ; $6e7e: $9c
    halt                                          ; $6e7f: $76
    cp $e1                                        ; $6e80: $fe $e1
    ld a, a                                       ; $6e82: $7f
    sbc h                                         ; $6e83: $9c
    ld a, d                                       ; $6e84: $7a
    ldh [$87], a                                  ; $6e85: $e0 $87
    ld a, h                                       ; $6e87: $7c
    add e                                         ; $6e88: $83
    add b                                         ; $6e89: $80
    rst $28                                       ; $6e8a: $ef
    ei                                            ; $6e8b: $fb
    rst $00                                       ; $6e8c: $c7
    add hl, sp                                    ; $6e8d: $39
    ld [hl], h                                    ; $6e8e: $74
    ldh [$31], a                                  ; $6e8f: $e0 $31
    rst $30                                       ; $6e91: $f7
    ld a, c                                       ; $6e92: $79
    rst $20                                       ; $6e93: $e7
    ld sp, hl                                     ; $6e94: $f9
    rrca                                          ; $6e95: $0f
    rst $08                                       ; $6e96: $cf
    pop af                                        ; $6e97: $f1
    rra                                           ; $6e98: $1f
    pop hl                                        ; $6e99: $e1
    add b                                         ; $6e9a: $80
    rst $28                                       ; $6e9b: $ef
    cp $e5                                        ; $6e9c: $fe $e5
    add b                                         ; $6e9e: $80
    xor $40                                       ; $6e9f: $ee $40
    rst $20                                       ; $6ea1: $e7
    ld hl, sp-$02                                 ; $6ea2: $f8 $fe
    pop hl                                        ; $6ea4: $e1
    ret nz                                        ; $6ea5: $c0

    or $40                                        ; $6ea6: $f6 $40
    or $f1                                        ; $6ea8: $f6 $f1
    rst $30                                       ; $6eaa: $f7
    ld sp, hl                                     ; $6eab: $f9
    rlca                                          ; $6eac: $07
    ld sp, hl                                     ; $6ead: $f9
    ld b, $38                                     ; $6eae: $06 $38
    pop hl                                        ; $6eb0: $e1
    rst $28                                       ; $6eb1: $ef
    pop af                                        ; $6eb2: $f1
    ld c, b                                       ; $6eb3: $48
    ldh [$f0], a                                  ; $6eb4: $e0 $f0
    push hl                                       ; $6eb6: $e5
    ret nz                                        ; $6eb7: $c0

    or $c0                                        ; $6eb8: $f6 $c0
    adc $c0                                       ; $6eba: $ce $c0
    db $ed                                        ; $6ebc: $ed
    ldh [$fe], a                                  ; $6ebd: $e0 $fe
    db $e3                                        ; $6ebf: $e3
    nop                                           ; $6ec0: $00
    rst $38                                       ; $6ec1: $ff
    nop                                           ; $6ec2: $00
    rst $28                                       ; $6ec3: $ef
    halt                                          ; $6ec4: $76
    ldh [$78], a                                  ; $6ec5: $e0 $78
    ret nz                                        ; $6ec7: $c0

    ld sp, hl                                     ; $6ec8: $f9
    or a                                          ; $6ec9: $b7
    ld sp, hl                                     ; $6eca: $f9
    adc e                                         ; $6ecb: $8b
    daa                                           ; $6ecc: $27
    reti                                          ; $6ecd: $d9


    ld b, b                                       ; $6ece: $40
    add sp, -$74                                  ; $6ecf: $e8 $8c
    ld a, [bc]                                    ; $6ed1: $0a
    push hl                                       ; $6ed2: $e5
    ld a, [$40c7]                                 ; $6ed3: $fa $c7 $40
    jp z, $0031                                   ; $6ed6: $ca $31 $00

    ld b, $e2                                     ; $6ed9: $06 $e2
    ld b, h                                       ; $6edb: $44
    add $40                                       ; $6edc: $c6 $40
    rst $00                                       ; $6ede: $c7
    nop                                           ; $6edf: $00
    nop                                           ; $6ee0: $00
    nop                                           ; $6ee1: $00
    rst $28                                       ; $6ee2: $ef
    rst $38                                       ; $6ee3: $ff
    rst $38                                       ; $6ee4: $ff
    ld a, a                                       ; $6ee5: $7f
    add b                                         ; $6ee6: $80
    cp $e0                                        ; $6ee7: $fe $e0
    add a                                         ; $6ee9: $87
    ld a, a                                       ; $6eea: $7f
    add a                                         ; $6eeb: $87
    rst $08                                       ; $6eec: $cf
    ld a, l                                       ; $6eed: $7d
    add e                                         ; $6eee: $83
    ld a, a                                       ; $6eef: $7f
    add c                                         ; $6ef0: $81
    cp $e6                                        ; $6ef1: $fe $e6
    ldh a, [$e0]                                  ; $6ef3: $f0 $e0
    ld a, h                                       ; $6ef5: $7c
    add e                                         ; $6ef6: $83
    rst $30                                       ; $6ef7: $f7
    ld a, a                                       ; $6ef8: $7f
    add b                                         ; $6ef9: $80
    rst $38                                       ; $6efa: $ff
    rst $38                                       ; $6efb: $ff
    pop hl                                        ; $6efc: $e1
    inc bc                                        ; $6efd: $03
    rst $38                                       ; $6efe: $ff
    ld bc, $7fff                                  ; $6eff: $01 $ff $7f
    pop hl                                        ; $6f02: $e1
    rst $28                                       ; $6f03: $ef
    pop af                                        ; $6f04: $f1
    adc a                                         ; $6f05: $8f
    pop af                                        ; $6f06: $f1
    cp a                                          ; $6f07: $bf
    pop bc                                        ; $6f08: $c1
    cp $e5                                        ; $6f09: $fe $e5
    add [hl]                                      ; $6f0b: $86
    ldh a, [$e1]                                  ; $6f0c: $f0 $e1
    rrca                                          ; $6f0e: $0f
    pop af                                        ; $6f0f: $f1
    and $e0                                       ; $6f10: $e6 $e0
    rst $18                                       ; $6f12: $df
    ldh [$c0], a                                  ; $6f13: $e0 $c0
    ld [c], a                                     ; $6f15: $e2
    db $fc                                        ; $6f16: $fc
    jp hl                                         ; $6f17: $e9


    sbc b                                         ; $6f18: $98
    rst $28                                       ; $6f19: $ef
    ld a, a                                       ; $6f1a: $7f
    sbc h                                         ; $6f1b: $9c
    ld a, a                                       ; $6f1c: $7f
    adc a                                         ; $6f1d: $8f
    ret nz                                        ; $6f1e: $c0

    db $ec                                        ; $6f1f: $ec
    ld h, c                                       ; $6f20: $61
    rst $28                                       ; $6f21: $ef
    ld [hl], c                                    ; $6f22: $71
    cp $fe                                        ; $6f23: $fe $fe
    add sp, -$0f                                  ; $6f25: $e8 $f1
    rst $08                                       ; $6f27: $cf
    pop af                                        ; $6f28: $f1
    sbc a                                         ; $6f29: $9f
    pop hl                                        ; $6f2a: $e1
    ccf                                           ; $6f2b: $3f
    pop bc                                        ; $6f2c: $c1
    ld a, $c0                                     ; $6f2d: $3e $c0
    add sp, -$74                                  ; $6f2f: $e8 $8c
    ld a, l                                       ; $6f31: $7d
    adc [hl]                                      ; $6f32: $8e
    ld a, l                                       ; $6f33: $7d
    adc a                                         ; $6f34: $8f
    jp z, $fce0                                   ; $6f35: $ca $e0 $fc

    ldh [$b3], a                                  ; $6f38: $e0 $b3
    ld a, l                                       ; $6f3a: $7d
    adc a                                         ; $6f3b: $8f
    db $f4                                        ; $6f3c: $f4
    ldh [$fe], a                                  ; $6f3d: $e0 $fe
    ldh [$79], a                                  ; $6f3f: $e0 $79
    add [hl]                                      ; $6f41: $86
    add b                                         ; $6f42: $80
    add sp, $71                                   ; $6f43: $e8 $71
    rrca                                          ; $6f45: $0f
    rst $30                                       ; $6f46: $f7
    ld sp, hl                                     ; $6f47: $f9
    rst $20                                       ; $6f48: $e7
    ld sp, hl                                     ; $6f49: $f9
    jp z, $84e1                                   ; $6f4a: $ca $e1 $84

    ldh [$82], a                                  ; $6f4d: $e0 $82
    ldh [$f0], a                                  ; $6f4f: $e0 $f0
    ldh [$c7], a                                  ; $6f51: $e0 $c7
    add hl, sp                                    ; $6f53: $39
    rst $20                                       ; $6f54: $e7
    add hl, de                                    ; $6f55: $19
    ret nz                                        ; $6f56: $c0

    db $ec                                        ; $6f57: $ec
    cp $e8                                        ; $6f58: $fe $e8
    or [hl]                                       ; $6f5a: $b6
    pop hl                                        ; $6f5b: $e1
    ld a, b                                       ; $6f5c: $78
    add a                                         ; $6f5d: $87
    ld d, b                                       ; $6f5e: $50
    ld b, b                                       ; $6f5f: $40
    add sp, -$02                                  ; $6f60: $e8 $fe
    db $ed                                        ; $6f62: $ed
    ld b, b                                       ; $6f63: $40
    db $ed                                        ; $6f64: $ed
    add b                                         ; $6f65: $80
    ldh [$7e], a                                  ; $6f66: $e0 $7e
    add d                                         ; $6f68: $82
    db $e4                                        ; $6f69: $e4
    ld a, h                                       ; $6f6a: $7c
    add b                                         ; $6f6b: $80
    pop af                                        ; $6f6c: $f1
    rst $38                                       ; $6f6d: $ff
    ld sp, $39f7                                  ; $6f6e: $31 $f7 $39
    rst $30                                       ; $6f71: $f7
    ld a, c                                       ; $6f72: $79
    rst $30                                       ; $6f73: $f7
    ld sp, hl                                     ; $6f74: $f9
    rst $30                                       ; $6f75: $f7
    rra                                           ; $6f76: $1f
    ld sp, hl                                     ; $6f77: $f9
    or a                                          ; $6f78: $b7
    ld sp, hl                                     ; $6f79: $f9
    scf                                           ; $6f7a: $37
    ld sp, hl                                     ; $6f7b: $f9
    db $f4                                        ; $6f7c: $f4
    ldh [$fe], a                                  ; $6f7d: $e0 $fe
    ldh [$80], a                                  ; $6f7f: $e0 $80
    db $eb                                        ; $6f81: $eb
    cp c                                          ; $6f82: $b9
    ld a, a                                       ; $6f83: $7f
    adc h                                         ; $6f84: $8c
    ld [c], a                                     ; $6f85: $e2
    ret nz                                        ; $6f86: $c0

    ld a, [$f739]                                 ; $6f87: $fa $39 $f7
    cp c                                          ; $6f8a: $b9
    cp [hl]                                       ; $6f8b: $be
    pop hl                                        ; $6f8c: $e1
    rst $30                                       ; $6f8d: $f7
    rst $18                                       ; $6f8e: $df
    ld sp, hl                                     ; $6f8f: $f9
    ld [hl], a                                    ; $6f90: $77
    ld sp, hl                                     ; $6f91: $f9
    or a                                          ; $6f92: $b7
    ld a, c                                       ; $6f93: $79
    ld b, b                                       ; $6f94: $40
    db $ec                                        ; $6f95: $ec
    add a                                         ; $6f96: $87
    ld a, a                                       ; $6f97: $7f
    ld a, a                                       ; $6f98: $7f
    adc a                                         ; $6f99: $8f
    ld a, h                                       ; $6f9a: $7c
    sbc a                                         ; $6f9b: $9f
    ld a, c                                       ; $6f9c: $79
    sbc [hl]                                      ; $6f9d: $9e
    ld a, e                                       ; $6f9e: $7b
    sbc h                                         ; $6f9f: $9c
    cp $e1                                        ; $6fa0: $fe $e1
    ld c, h                                       ; $6fa2: $4c
    ret nz                                        ; $6fa3: $c0

    ret nc                                        ; $6fa4: $d0

    adc [hl]                                      ; $6fa5: $8e
    ret nz                                        ; $6fa6: $c0

    ld a, a                                       ; $6fa7: $7f
    pop af                                        ; $6fa8: $f1
    jp z, $84e1                                   ; $6fa9: $ca $e1 $84

    ld [c], a                                     ; $6fac: $e2
    ld a, c                                       ; $6fad: $79
    db $f4                                        ; $6fae: $f4
    pop bc                                        ; $6faf: $c1
    add e                                         ; $6fb0: $83
    rra                                           ; $6fb1: $1f
    pop hl                                        ; $6fb2: $e1
    add b                                         ; $6fb3: $80
    ret z                                         ; $6fb4: $c8

    call nz, Call_04e_48c0                        ; $6fb5: $c4 $c0 $48
    pop hl                                        ; $6fb8: $e1
    ld hl, sp-$1b                                 ; $6fb9: $f8 $e5
    ret nz                                        ; $6fbb: $c0

    adc $e1                                       ; $6fbc: $ce $e1
    inc bc                                        ; $6fbe: $03
    rst $38                                       ; $6fbf: $ff
    pop af                                        ; $6fc0: $f1
    ld c, b                                       ; $6fc1: $48
    ld [c], a                                     ; $6fc2: $e2
    cp d                                          ; $6fc3: $ba
    ret nz                                        ; $6fc4: $c0

    ld c, b                                       ; $6fc5: $48
    ret nz                                        ; $6fc6: $c0

    ldh a, [$c5]                                  ; $6fc7: $f0 $c5
    ld b, b                                       ; $6fc9: $40
    ret nz                                        ; $6fca: $c0

    nop                                           ; $6fcb: $00
    nop                                           ; $6fcc: $00
    nop                                           ; $6fcd: $00
    rst $28                                       ; $6fce: $ef
    rst $38                                       ; $6fcf: $ff
    rst $38                                       ; $6fd0: $ff
    ld a, a                                       ; $6fd1: $7f
    add b                                         ; $6fd2: $80
    cp $e0                                        ; $6fd3: $fe $e0
    add a                                         ; $6fd5: $87
    ld a, a                                       ; $6fd6: $7f
    adc a                                         ; $6fd7: $8f
    rst $38                                       ; $6fd8: $ff
    ld a, h                                       ; $6fd9: $7c
    sbc a                                         ; $6fda: $9f
    ld a, c                                       ; $6fdb: $79
    sbc [hl]                                      ; $6fdc: $9e
    ld a, e                                       ; $6fdd: $7b
    sbc h                                         ; $6fde: $9c
    ld a, e                                       ; $6fdf: $7b
    sbc l                                         ; $6fe0: $9d
    rst $38                                       ; $6fe1: $ff
    ld a, e                                       ; $6fe2: $7b
    sbc l                                         ; $6fe3: $9d
    ld a, a                                       ; $6fe4: $7f
    sbc h                                         ; $6fe5: $9c
    ld a, a                                       ; $6fe6: $7f
    adc a                                         ; $6fe7: $8f
    ld a, a                                       ; $6fe8: $7f
    add a                                         ; $6fe9: $87
    rst $18                                       ; $6fea: $df
    ld a, h                                       ; $6feb: $7c
    add e                                         ; $6fec: $83
    ld a, a                                       ; $6fed: $7f
    add b                                         ; $6fee: $80
    rst $38                                       ; $6fef: $ff
    rst $38                                       ; $6ff0: $ff
    pop hl                                        ; $6ff1: $e1
    inc bc                                        ; $6ff2: $03
    rst $38                                       ; $6ff3: $ff
    rst $38                                       ; $6ff4: $ff
    ld bc, $c1ff                                  ; $6ff5: $01 $ff $c1
    rst $38                                       ; $6ff8: $ff
    pop hl                                        ; $6ff9: $e1
    ld a, a                                       ; $6ffa: $7f
    pop af                                        ; $6ffb: $f1
    or a                                          ; $6ffc: $b7
    rst $38                                       ; $6ffd: $ff
    ld a, c                                       ; $6ffe: $79
    rst $30                                       ; $6fff: $f7
    add hl, sp                                    ; $7000: $39
    rst $30                                       ; $7001: $f7
    cp c                                          ; $7002: $b9
    rst $30                                       ; $7003: $f7
    ld sp, hl                                     ; $7004: $f9
    rst $30                                       ; $7005: $f7
    ld a, a                                       ; $7006: $7f
    ld sp, hl                                     ; $7007: $f9
    ei                                            ; $7008: $fb
    db $fd                                        ; $7009: $fd
    cp e                                          ; $700a: $bb
    db $fd                                        ; $700b: $fd
    inc hl                                        ; $700c: $23
    db $dd                                        ; $700d: $dd
    and $e0                                       ; $700e: $e6 $e0
    ld [hl], h                                    ; $7010: $74
    rst $18                                       ; $7011: $df
    ldh [$c0], a                                  ; $7012: $e0 $c0
    ld [c], a                                     ; $7014: $e2
    adc a                                         ; $7015: $8f
    ret nz                                        ; $7016: $c0

    ldh [$8f], a                                  ; $7017: $e0 $8f
    ld a, l                                       ; $7019: $7d
    adc [hl]                                      ; $701a: $8e
    ld hl, sp-$1f                                 ; $701b: $f8 $e1
    reti                                          ; $701d: $d9


    ld a, l                                       ; $701e: $7d
    ld hl, sp-$20                                 ; $701f: $f8 $e0
    cp $e1                                        ; $7021: $fe $e1
    ld a, c                                       ; $7023: $79
    add [hl]                                      ; $7024: $86
    ret nz                                        ; $7025: $c0

    add sp, -$1f                                  ; $7026: $e8 $e1
    rst $38                                       ; $7028: $ff
    rst $30                                       ; $7029: $f7
    pop af                                        ; $702a: $f1
    scf                                           ; $702b: $37
    ld sp, hl                                     ; $702c: $f9
    jp nz, $f9e0                                  ; $702d: $c2 $e0 $f9

    rst $20                                       ; $7030: $e7
    ld sp, hl                                     ; $7031: $f9
    rst $08                                       ; $7032: $cf
    ld a, l                                       ; $7033: $7d
    pop af                                        ; $7034: $f1
    ld a, [c]                                     ; $7035: $f2
    ldh [$71], a                                  ; $7036: $e0 $71
    rst $30                                       ; $7038: $f7
    add hl, sp                                    ; $7039: $39
    rst $20                                       ; $703a: $e7
    add hl, de                                    ; $703b: $19
    ret nz                                        ; $703c: $c0

    add sp, $76                                   ; $703d: $e8 $76
    add b                                         ; $703f: $80
    ld [c], a                                     ; $7040: $e2
    ld a, l                                       ; $7041: $7d
    sbc [hl]                                      ; $7042: $9e
    adc b                                         ; $7043: $88
    db $e4                                        ; $7044: $e4
    sbc h                                         ; $7045: $9c
    ld a, a                                       ; $7046: $7f
    sbc a                                         ; $7047: $9f
    ld [hl], b                                    ; $7048: $70
    ldh [$bc], a                                  ; $7049: $e0 $bc
    add b                                         ; $704b: $80
    jp hl                                         ; $704c: $e9


    ret nz                                        ; $704d: $c0

    ldh [rPCM34], a                               ; $704e: $e0 $77
    ld sp, hl                                     ; $7050: $f9
    add a                                         ; $7051: $87
    ld a, c                                       ; $7052: $79
    ld a, b                                       ; $7053: $78
    db $e3                                        ; $7054: $e3
    rst $30                                       ; $7055: $f7
    db $ed                                        ; $7056: $ed
    ld a, c                                       ; $7057: $79
    cp d                                          ; $7058: $ba
    pop hl                                        ; $7059: $e1
    rra                                           ; $705a: $1f
    pop hl                                        ; $705b: $e1
    add b                                         ; $705c: $80
    add sp, -$61                                  ; $705d: $e8 $9f
    ld a, a                                       ; $705f: $7f
    sbc a                                         ; $7060: $9f
    ld l, a                                       ; $7061: $6f
    ld [hl], c                                    ; $7062: $71
    adc a                                         ; $7063: $8f
    ld a, a                                       ; $7064: $7f
    add c                                         ; $7065: $81
    cp $e9                                        ; $7066: $fe $e9
    ld a, [hl]                                    ; $7068: $7e
    add c                                         ; $7069: $81
    ld b, b                                       ; $706a: $40
    add sp, -$22                                  ; $706b: $e8 $de
    ld c, [hl]                                    ; $706d: $4e
    ldh [$83], a                                  ; $706e: $e0 $83
    db $fd                                        ; $7070: $fd
    cp a                                          ; $7071: $bf
    pop bc                                        ; $7072: $c1
    cp $e9                                        ; $7073: $fe $e9
    ccf                                           ; $7075: $3f
    pop bc                                        ; $7076: $c1
    adc [hl]                                      ; $7077: $8e
    ld b, b                                       ; $7078: $40
    add sp, -$80                                  ; $7079: $e8 $80
    ld a, a                                       ; $707b: $7f
    sbc b                                         ; $707c: $98
    inc b                                         ; $707d: $04
    ldh [$fe], a                                  ; $707e: $e0 $fe
    db $e4                                        ; $7080: $e4
    nop                                           ; $7081: $00
    ldh a, [rSB]                                  ; $7082: $f0 $01
    jp Jump_000_31ff                              ; $7084: $c3 $ff $31


    inc b                                         ; $7087: $04
    ldh [$fe], a                                  ; $7088: $e0 $fe
    push hl                                       ; $708a: $e5
    add b                                         ; $708b: $80
    rst $28                                       ; $708c: $ef
    ret nz                                        ; $708d: $c0

    add sp, $7d                                   ; $708e: $e8 $7d
    sbc [hl]                                      ; $7090: $9e
    adc l                                         ; $7091: $8d
    ld a, [hl]                                    ; $7092: $7e
    jp nz, Jump_04e_7fc0                          ; $7093: $c2 $c0 $7f

    add e                                         ; $7096: $83
    add b                                         ; $7097: $80
    ld [$e9c0], a                                 ; $7098: $ea $c0 $e9
    ld b, d                                       ; $709b: $42
    ld [c], a                                     ; $709c: $e2
    sbc a                                         ; $709d: $9f
    push de                                       ; $709e: $d5
    pop hl                                        ; $709f: $e1
    add b                                         ; $70a0: $80
    ld [$cc8c], a                                 ; $70a1: $ea $8c $cc
    jp $b87d                                      ; $70a4: $c3 $7d $b8


    ret nz                                        ; $70a7: $c0

    ld a, a                                       ; $70a8: $7f
    adc a                                         ; $70a9: $8f
    ld hl, $be7e                                  ; $70aa: $21 $7e $be
    jp nz, $cac0                                  ; $70ad: $c2 $c0 $ca

    add d                                         ; $70b0: $82
    push hl                                       ; $70b1: $e5
    add d                                         ; $70b2: $82
    jp nz, Jump_04e_78f7                          ; $70b3: $c2 $f7 $78

    pop bc                                        ; $70b6: $c1
    ret nz                                        ; $70b7: $c0

    rr h                                          ; $70b8: $cb $1c
    ret nz                                        ; $70ba: $c0

    ldh [$8a], a                                  ; $70bb: $e0 $8a
    db $e3                                        ; $70bd: $e3
    ld a, a                                       ; $70be: $7f
    add a                                         ; $70bf: $87
    ld a, [hl]                                    ; $70c0: $7e
    halt                                          ; $70c1: $76
    jp nz, $f0c0                                  ; $70c2: $c2 $c0 $f0

    jp z, Jump_000_00c2                           ; $70c5: $ca $c2 $00

    add h                                         ; $70c8: $84
    jp $e7c0                                      ; $70c9: $c3 $c0 $e7


    nop                                           ; $70cc: $00
    nop                                           ; $70cd: $00
    nop                                           ; $70ce: $00
    rst $28                                       ; $70cf: $ef
    rst $38                                       ; $70d0: $ff
    rst $38                                       ; $70d1: $ff
    ld a, a                                       ; $70d2: $7f
    add b                                         ; $70d3: $80
    cp $e0                                        ; $70d4: $fe $e0
    adc h                                         ; $70d6: $8c
    ld a, l                                       ; $70d7: $7d
    adc [hl]                                      ; $70d8: $8e
    rst $38                                       ; $70d9: $ff
    ld a, [hl]                                    ; $70da: $7e
    adc a                                         ; $70db: $8f
    ld a, a                                       ; $70dc: $7f
    add a                                         ; $70dd: $87
    ld a, a                                       ; $70de: $7f
    add e                                         ; $70df: $83
    ld a, a                                       ; $70e0: $7f
    add c                                         ; $70e1: $81
    db $f4                                        ; $70e2: $f4
    cp $e6                                        ; $70e3: $fe $e6
    add sp, -$20                                  ; $70e5: $e8 $e0
    rst $38                                       ; $70e7: $ff
    rst $38                                       ; $70e8: $ff
    pop hl                                        ; $70e9: $e1
    inc bc                                        ; $70ea: $03
    rst $38                                       ; $70eb: $ff
    ld bc, $ffff                                  ; $70ec: $01 $ff $ff
    ld sp, $39f7                                  ; $70ef: $31 $f7 $39
    rst $30                                       ; $70f2: $f7
    ld a, c                                       ; $70f3: $79
    rst $20                                       ; $70f4: $e7
    ld sp, hl                                     ; $70f5: $f9
    rst $08                                       ; $70f6: $cf
    rst $18                                       ; $70f7: $df
    pop af                                        ; $70f8: $f1
    sbc a                                         ; $70f9: $9f
    pop hl                                        ; $70fa: $e1
    cp a                                          ; $70fb: $bf
    pop bc                                        ; $70fc: $c1
    cp $e3                                        ; $70fd: $fe $e3
    ccf                                           ; $70ff: $3f
    pop bc                                        ; $7100: $c1
    ld hl, sp-$1a                                 ; $7101: $f8 $e6
    ldh [$df], a                                  ; $7103: $e0 $df
    ldh [$c0], a                                  ; $7105: $e0 $c0
    ld [c], a                                     ; $7107: $e2
    adc a                                         ; $7108: $8f
    ld a, a                                       ; $7109: $7f
    adc a                                         ; $710a: $8f
    ld a, b                                       ; $710b: $78
    add a                                         ; $710c: $87
    adc d                                         ; $710d: $8a
    or [hl]                                       ; $710e: $b6
    ldh [$81], a                                  ; $710f: $e0 $81
    cp [hl]                                       ; $7111: $be
    ldh [$87], a                                  ; $7112: $e0 $87
    or [hl]                                       ; $7114: $b6
    ldh [$f0], a                                  ; $7115: $e0 $f0
    db $e4                                        ; $7117: $e4
    ret nz                                        ; $7118: $c0

    and $f1                                       ; $7119: $e6 $f1
    rst $28                                       ; $711b: $ef
    rst $30                                       ; $711c: $f7
    ld sp, hl                                     ; $711d: $f9
    ld [hl], a                                    ; $711e: $77
    ld sp, hl                                     ; $711f: $f9
    ret nz                                        ; $7120: $c0

    db $e3                                        ; $7121: $e3
    ccf                                           ; $7122: $3f
    pop bc                                        ; $7123: $c1
    ld a, a                                       ; $7124: $7f
    dec l                                         ; $7125: $2d
    add c                                         ; $7126: $81
    ldh a, [$e1]                                  ; $7127: $f0 $e1
    rlca                                          ; $7129: $07
    ld sp, hl                                     ; $712a: $f9
    ret nz                                        ; $712b: $c0

    pop hl                                        ; $712c: $e1
    nop                                           ; $712d: $00
    rst $38                                       ; $712e: $ff
    rst $38                                       ; $712f: $ff
    rst $38                                       ; $7130: $ff
    rst $38                                       ; $7131: $ff
    nop                                           ; $7132: $00
    rst $38                                       ; $7133: $ff
    rst $38                                       ; $7134: $ff
    rst $38                                       ; $7135: $ff
    rst $38                                       ; $7136: $ff
    rst $38                                       ; $7137: $ff
    rst $38                                       ; $7138: $ff
    rst $38                                       ; $7139: $ff
    rst $38                                       ; $713a: $ff
    rst $38                                       ; $713b: $ff
    rst $38                                       ; $713c: $ff
    rst $38                                       ; $713d: $ff
    rst $38                                       ; $713e: $ff
    rst $38                                       ; $713f: $ff
    rst $38                                       ; $7140: $ff
    rst $38                                       ; $7141: $ff
    rst $38                                       ; $7142: $ff
    nop                                           ; $7143: $00
    rst $38                                       ; $7144: $ff
    rst $38                                       ; $7145: $ff
    rst $38                                       ; $7146: $ff
    and $00                                       ; $7147: $e6 $00
    nop                                           ; $7149: $00
    nop                                           ; $714a: $00
    rst $38                                       ; $714b: $ff
    rst $38                                       ; $714c: $ff
    rst $38                                       ; $714d: $ff
    rst $38                                       ; $714e: $ff
    rst $38                                       ; $714f: $ff
    rst $38                                       ; $7150: $ff
    rst $38                                       ; $7151: $ff
    rst $38                                       ; $7152: $ff
    rst $38                                       ; $7153: $ff
    rst $38                                       ; $7154: $ff
    rst $38                                       ; $7155: $ff
    rst $38                                       ; $7156: $ff
    rst $38                                       ; $7157: $ff
    rst $38                                       ; $7158: $ff
    rst $38                                       ; $7159: $ff
    rst $38                                       ; $715a: $ff
    rst $38                                       ; $715b: $ff
    rst $38                                       ; $715c: $ff
    rst $38                                       ; $715d: $ff
    rst $38                                       ; $715e: $ff
    rst $38                                       ; $715f: $ff
    rst $38                                       ; $7160: $ff
    rst $38                                       ; $7161: $ff
    rst $38                                       ; $7162: $ff
    rst $38                                       ; $7163: $ff
    rst $38                                       ; $7164: $ff
    rst $38                                       ; $7165: $ff
    rst $38                                       ; $7166: $ff
    rst $38                                       ; $7167: $ff
    rst $38                                       ; $7168: $ff
    rst $38                                       ; $7169: $ff
    rst $38                                       ; $716a: $ff
    rst $38                                       ; $716b: $ff
    rst $38                                       ; $716c: $ff
    rst $38                                       ; $716d: $ff
    rst $38                                       ; $716e: $ff
    rst $38                                       ; $716f: $ff
    rst $38                                       ; $7170: $ff
    rst $38                                       ; $7171: $ff
    rst $38                                       ; $7172: $ff
    rst $38                                       ; $7173: $ff
    rst $38                                       ; $7174: $ff
    rst $38                                       ; $7175: $ff
    rst $38                                       ; $7176: $ff
    rst $38                                       ; $7177: $ff
    rst $38                                       ; $7178: $ff
    rst $38                                       ; $7179: $ff
    rst $38                                       ; $717a: $ff
    rst $38                                       ; $717b: $ff
    rst $38                                       ; $717c: $ff
    rst $38                                       ; $717d: $ff
    rst $38                                       ; $717e: $ff
    rst $38                                       ; $717f: $ff
    rst $38                                       ; $7180: $ff
    rst $38                                       ; $7181: $ff
    rst $38                                       ; $7182: $ff
    rst $38                                       ; $7183: $ff
    rst $38                                       ; $7184: $ff
    rst $38                                       ; $7185: $ff
    rst $38                                       ; $7186: $ff
    rst $38                                       ; $7187: $ff
    rst $38                                       ; $7188: $ff
    rst $38                                       ; $7189: $ff
    rst $38                                       ; $718a: $ff
    rst $38                                       ; $718b: $ff
    rst $38                                       ; $718c: $ff
    rst $38                                       ; $718d: $ff
    rst $38                                       ; $718e: $ff
    rst $38                                       ; $718f: $ff
    rst $38                                       ; $7190: $ff
    rst $38                                       ; $7191: $ff
    rst $38                                       ; $7192: $ff
    rst $38                                       ; $7193: $ff
    rst $38                                       ; $7194: $ff
    rst $38                                       ; $7195: $ff
    rst $38                                       ; $7196: $ff
    rst $38                                       ; $7197: $ff
    rst $38                                       ; $7198: $ff
    rst $38                                       ; $7199: $ff
    rst $38                                       ; $719a: $ff
    rst $38                                       ; $719b: $ff
    rst $38                                       ; $719c: $ff
    rst $38                                       ; $719d: $ff
    rst $38                                       ; $719e: $ff
    rst $38                                       ; $719f: $ff
    rst $38                                       ; $71a0: $ff
    rst $38                                       ; $71a1: $ff
    rst $38                                       ; $71a2: $ff
    rst $38                                       ; $71a3: $ff
    rst $38                                       ; $71a4: $ff
    rst $38                                       ; $71a5: $ff
    rst $38                                       ; $71a6: $ff
    rst $38                                       ; $71a7: $ff
    rst $38                                       ; $71a8: $ff
    rst $38                                       ; $71a9: $ff
    rst $38                                       ; $71aa: $ff
    rst $38                                       ; $71ab: $ff
    rst $38                                       ; $71ac: $ff
    rst $38                                       ; $71ad: $ff
    rst $38                                       ; $71ae: $ff
    rst $38                                       ; $71af: $ff
    rst $38                                       ; $71b0: $ff
    rst $38                                       ; $71b1: $ff
    rst $38                                       ; $71b2: $ff
    rst $38                                       ; $71b3: $ff
    rst $38                                       ; $71b4: $ff
    rst $38                                       ; $71b5: $ff
    rst $38                                       ; $71b6: $ff
    rst $38                                       ; $71b7: $ff
    rst $38                                       ; $71b8: $ff
    rst $38                                       ; $71b9: $ff
    rst $38                                       ; $71ba: $ff
    rst $38                                       ; $71bb: $ff
    rst $38                                       ; $71bc: $ff
    rst $38                                       ; $71bd: $ff
    rst $38                                       ; $71be: $ff
    rst $38                                       ; $71bf: $ff
    rst $38                                       ; $71c0: $ff
    rst $38                                       ; $71c1: $ff
    rst $38                                       ; $71c2: $ff
    rst $38                                       ; $71c3: $ff
    rst $38                                       ; $71c4: $ff
    rst $38                                       ; $71c5: $ff
    rst $38                                       ; $71c6: $ff
    rst $38                                       ; $71c7: $ff
    rst $38                                       ; $71c8: $ff
    rst $38                                       ; $71c9: $ff
    rst $38                                       ; $71ca: $ff
    rst $38                                       ; $71cb: $ff
    rst $38                                       ; $71cc: $ff
    rst $38                                       ; $71cd: $ff
    rst $38                                       ; $71ce: $ff
    rst $38                                       ; $71cf: $ff
    rst $38                                       ; $71d0: $ff
    rst $38                                       ; $71d1: $ff
    rst $38                                       ; $71d2: $ff
    rst $38                                       ; $71d3: $ff
    rst $38                                       ; $71d4: $ff
    rst $38                                       ; $71d5: $ff
    rst $38                                       ; $71d6: $ff
    rst $38                                       ; $71d7: $ff
    rst $38                                       ; $71d8: $ff
    rst $38                                       ; $71d9: $ff
    rst $38                                       ; $71da: $ff
    rst $38                                       ; $71db: $ff
    rst $38                                       ; $71dc: $ff
    rst $38                                       ; $71dd: $ff
    rst $38                                       ; $71de: $ff
    rst $38                                       ; $71df: $ff
    rst $38                                       ; $71e0: $ff
    rst $38                                       ; $71e1: $ff
    rst $38                                       ; $71e2: $ff
    rst $38                                       ; $71e3: $ff
    rst $38                                       ; $71e4: $ff
    rst $38                                       ; $71e5: $ff
    rst $38                                       ; $71e6: $ff
    rst $38                                       ; $71e7: $ff
    rst $38                                       ; $71e8: $ff
    rst $38                                       ; $71e9: $ff
    rst $38                                       ; $71ea: $ff
    rst $38                                       ; $71eb: $ff
    rst $38                                       ; $71ec: $ff
    rst $38                                       ; $71ed: $ff
    rst $38                                       ; $71ee: $ff
    rst $38                                       ; $71ef: $ff
    rst $38                                       ; $71f0: $ff
    rst $38                                       ; $71f1: $ff
    rst $38                                       ; $71f2: $ff
    rst $38                                       ; $71f3: $ff
    rst $38                                       ; $71f4: $ff
    rst $38                                       ; $71f5: $ff
    rst $38                                       ; $71f6: $ff
    rst $38                                       ; $71f7: $ff
    rst $38                                       ; $71f8: $ff
    rst $38                                       ; $71f9: $ff
    rst $38                                       ; $71fa: $ff
    rst $38                                       ; $71fb: $ff
    rst $38                                       ; $71fc: $ff
    rst $38                                       ; $71fd: $ff
    rst $38                                       ; $71fe: $ff
    rst $38                                       ; $71ff: $ff
    rst $38                                       ; $7200: $ff
    rst $38                                       ; $7201: $ff
    rst $38                                       ; $7202: $ff
    rst $38                                       ; $7203: $ff
    rst $38                                       ; $7204: $ff
    rst $38                                       ; $7205: $ff
    rst $38                                       ; $7206: $ff
    rst $38                                       ; $7207: $ff
    rst $38                                       ; $7208: $ff
    rst $38                                       ; $7209: $ff
    rst $38                                       ; $720a: $ff
    rst $38                                       ; $720b: $ff
    rst $38                                       ; $720c: $ff
    rst $38                                       ; $720d: $ff
    rst $38                                       ; $720e: $ff
    rst $38                                       ; $720f: $ff
    rst $38                                       ; $7210: $ff
    rst $38                                       ; $7211: $ff
    rst $38                                       ; $7212: $ff
    rst $38                                       ; $7213: $ff
    rst $38                                       ; $7214: $ff
    rst $38                                       ; $7215: $ff
    rst $38                                       ; $7216: $ff
    rst $38                                       ; $7217: $ff
    rst $38                                       ; $7218: $ff
    rst $38                                       ; $7219: $ff
    rst $38                                       ; $721a: $ff
    rst $38                                       ; $721b: $ff
    rst $38                                       ; $721c: $ff
    rst $38                                       ; $721d: $ff
    rst $38                                       ; $721e: $ff
    rst $38                                       ; $721f: $ff
    rst $38                                       ; $7220: $ff
    rst $38                                       ; $7221: $ff
    rst $38                                       ; $7222: $ff
    rst $38                                       ; $7223: $ff
    rst $38                                       ; $7224: $ff
    rst $38                                       ; $7225: $ff
    rst $38                                       ; $7226: $ff
    rst $38                                       ; $7227: $ff
    rst $38                                       ; $7228: $ff
    rst $38                                       ; $7229: $ff
    rst $38                                       ; $722a: $ff
    rst $38                                       ; $722b: $ff
    rst $38                                       ; $722c: $ff
    rst $38                                       ; $722d: $ff
    rst $38                                       ; $722e: $ff
    rst $38                                       ; $722f: $ff
    rst $38                                       ; $7230: $ff
    rst $38                                       ; $7231: $ff
    rst $38                                       ; $7232: $ff
    rst $38                                       ; $7233: $ff
    rst $38                                       ; $7234: $ff
    rst $38                                       ; $7235: $ff
    rst $38                                       ; $7236: $ff
    rst $38                                       ; $7237: $ff
    rst $38                                       ; $7238: $ff
    rst $38                                       ; $7239: $ff
    rst $38                                       ; $723a: $ff
    rst $38                                       ; $723b: $ff
    rst $38                                       ; $723c: $ff
    rst $38                                       ; $723d: $ff
    rst $38                                       ; $723e: $ff
    rst $38                                       ; $723f: $ff
    rst $38                                       ; $7240: $ff
    rst $38                                       ; $7241: $ff
    rst $38                                       ; $7242: $ff
    rst $38                                       ; $7243: $ff
    rst $38                                       ; $7244: $ff
    rst $38                                       ; $7245: $ff
    rst $38                                       ; $7246: $ff
    rst $38                                       ; $7247: $ff
    rst $38                                       ; $7248: $ff
    rst $38                                       ; $7249: $ff
    rst $38                                       ; $724a: $ff
    rst $38                                       ; $724b: $ff
    rst $38                                       ; $724c: $ff
    rst $38                                       ; $724d: $ff
    rst $38                                       ; $724e: $ff
    rst $38                                       ; $724f: $ff
    rst $38                                       ; $7250: $ff
    rst $38                                       ; $7251: $ff
    rst $38                                       ; $7252: $ff
    rst $38                                       ; $7253: $ff
    rst $38                                       ; $7254: $ff
    rst $38                                       ; $7255: $ff
    rst $38                                       ; $7256: $ff
    rst $38                                       ; $7257: $ff
    rst $38                                       ; $7258: $ff
    rst $38                                       ; $7259: $ff
    rst $38                                       ; $725a: $ff
    rst $38                                       ; $725b: $ff
    rst $38                                       ; $725c: $ff
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
    rst $38                                       ; $726d: $ff
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
    rst $38                                       ; $727c: $ff
    rst $38                                       ; $727d: $ff
    rst $38                                       ; $727e: $ff
    rst $38                                       ; $727f: $ff
    rst $38                                       ; $7280: $ff
    rst $38                                       ; $7281: $ff
    rst $38                                       ; $7282: $ff
    rst $38                                       ; $7283: $ff
    rst $38                                       ; $7284: $ff
    rst $38                                       ; $7285: $ff
    rst $38                                       ; $7286: $ff
    rst $38                                       ; $7287: $ff
    rst $38                                       ; $7288: $ff
    rst $38                                       ; $7289: $ff
    rst $38                                       ; $728a: $ff
    rst $38                                       ; $728b: $ff
    rst $38                                       ; $728c: $ff
    rst $38                                       ; $728d: $ff
    rst $38                                       ; $728e: $ff
    rst $38                                       ; $728f: $ff
    rst $38                                       ; $7290: $ff
    rst $38                                       ; $7291: $ff
    rst $38                                       ; $7292: $ff
    rst $38                                       ; $7293: $ff
    rst $38                                       ; $7294: $ff
    rst $38                                       ; $7295: $ff
    rst $38                                       ; $7296: $ff
    rst $38                                       ; $7297: $ff
    rst $38                                       ; $7298: $ff
    rst $38                                       ; $7299: $ff
    rst $38                                       ; $729a: $ff
    rst $38                                       ; $729b: $ff
    rst $38                                       ; $729c: $ff
    rst $38                                       ; $729d: $ff
    rst $38                                       ; $729e: $ff
    rst $38                                       ; $729f: $ff
    rst $38                                       ; $72a0: $ff
    rst $38                                       ; $72a1: $ff
    rst $38                                       ; $72a2: $ff
    rst $38                                       ; $72a3: $ff
    rst $38                                       ; $72a4: $ff
    rst $38                                       ; $72a5: $ff
    rst $38                                       ; $72a6: $ff
    rst $38                                       ; $72a7: $ff
    rst $38                                       ; $72a8: $ff
    rst $38                                       ; $72a9: $ff
    rst $38                                       ; $72aa: $ff
    rst $38                                       ; $72ab: $ff
    rst $38                                       ; $72ac: $ff
    rst $38                                       ; $72ad: $ff
    rst $38                                       ; $72ae: $ff
    rst $38                                       ; $72af: $ff
    rst $38                                       ; $72b0: $ff
    rst $38                                       ; $72b1: $ff
    rst $38                                       ; $72b2: $ff
    rst $38                                       ; $72b3: $ff
    rst $38                                       ; $72b4: $ff
    rst $38                                       ; $72b5: $ff
    rst $38                                       ; $72b6: $ff
    rst $38                                       ; $72b7: $ff
    rst $38                                       ; $72b8: $ff
    rst $38                                       ; $72b9: $ff
    rst $38                                       ; $72ba: $ff
    rst $38                                       ; $72bb: $ff
    rst $38                                       ; $72bc: $ff
    rst $38                                       ; $72bd: $ff
    rst $38                                       ; $72be: $ff
    rst $38                                       ; $72bf: $ff
    rst $38                                       ; $72c0: $ff
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
    rst $38                                       ; $72cb: $ff
    rst $38                                       ; $72cc: $ff
    rst $38                                       ; $72cd: $ff
    rst $38                                       ; $72ce: $ff
    rst $38                                       ; $72cf: $ff
    rst $38                                       ; $72d0: $ff
    rst $38                                       ; $72d1: $ff
    rst $38                                       ; $72d2: $ff
    rst $38                                       ; $72d3: $ff
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
    rst $38                                       ; $72de: $ff
    rst $38                                       ; $72df: $ff
    rst $38                                       ; $72e0: $ff
    rst $38                                       ; $72e1: $ff
    rst $38                                       ; $72e2: $ff
    rst $38                                       ; $72e3: $ff
    rst $38                                       ; $72e4: $ff
    rst $38                                       ; $72e5: $ff
    rst $38                                       ; $72e6: $ff
    rst $38                                       ; $72e7: $ff
    rst $38                                       ; $72e8: $ff
    rst $38                                       ; $72e9: $ff
    rst $38                                       ; $72ea: $ff
    rst $38                                       ; $72eb: $ff
    rst $38                                       ; $72ec: $ff
    rst $38                                       ; $72ed: $ff
    rst $38                                       ; $72ee: $ff
    rst $38                                       ; $72ef: $ff
    rst $38                                       ; $72f0: $ff
    rst $38                                       ; $72f1: $ff
    rst $38                                       ; $72f2: $ff
    rst $38                                       ; $72f3: $ff
    rst $38                                       ; $72f4: $ff
    rst $38                                       ; $72f5: $ff
    rst $38                                       ; $72f6: $ff
    rst $38                                       ; $72f7: $ff
    rst $38                                       ; $72f8: $ff
    rst $38                                       ; $72f9: $ff
    rst $38                                       ; $72fa: $ff
    rst $38                                       ; $72fb: $ff
    rst $38                                       ; $72fc: $ff
    rst $38                                       ; $72fd: $ff
    rst $38                                       ; $72fe: $ff
    rst $38                                       ; $72ff: $ff
    rst $38                                       ; $7300: $ff
    rst $38                                       ; $7301: $ff
    rst $38                                       ; $7302: $ff
    rst $38                                       ; $7303: $ff
    rst $38                                       ; $7304: $ff
    rst $38                                       ; $7305: $ff
    rst $38                                       ; $7306: $ff
    rst $38                                       ; $7307: $ff
    rst $38                                       ; $7308: $ff
    rst $38                                       ; $7309: $ff
    rst $38                                       ; $730a: $ff
    rst $38                                       ; $730b: $ff
    rst $38                                       ; $730c: $ff
    rst $38                                       ; $730d: $ff
    rst $38                                       ; $730e: $ff
    rst $38                                       ; $730f: $ff
    rst $38                                       ; $7310: $ff
    rst $38                                       ; $7311: $ff
    rst $38                                       ; $7312: $ff
    rst $38                                       ; $7313: $ff
    rst $38                                       ; $7314: $ff
    rst $38                                       ; $7315: $ff
    rst $38                                       ; $7316: $ff
    rst $38                                       ; $7317: $ff
    rst $38                                       ; $7318: $ff
    rst $38                                       ; $7319: $ff
    rst $38                                       ; $731a: $ff
    rst $38                                       ; $731b: $ff
    rst $38                                       ; $731c: $ff
    rst $38                                       ; $731d: $ff
    rst $38                                       ; $731e: $ff
    rst $38                                       ; $731f: $ff
    rst $38                                       ; $7320: $ff
    rst $38                                       ; $7321: $ff
    rst $38                                       ; $7322: $ff
    rst $38                                       ; $7323: $ff
    rst $38                                       ; $7324: $ff
    rst $38                                       ; $7325: $ff
    rst $38                                       ; $7326: $ff
    rst $38                                       ; $7327: $ff
    rst $38                                       ; $7328: $ff
    rst $38                                       ; $7329: $ff
    rst $38                                       ; $732a: $ff
    rst $38                                       ; $732b: $ff
    rst $38                                       ; $732c: $ff
    rst $38                                       ; $732d: $ff
    rst $38                                       ; $732e: $ff
    rst $38                                       ; $732f: $ff
    rst $38                                       ; $7330: $ff
    rst $38                                       ; $7331: $ff
    rst $38                                       ; $7332: $ff
    rst $38                                       ; $7333: $ff
    rst $38                                       ; $7334: $ff
    rst $38                                       ; $7335: $ff
    rst $38                                       ; $7336: $ff
    rst $38                                       ; $7337: $ff
    rst $38                                       ; $7338: $ff
    rst $38                                       ; $7339: $ff
    rst $38                                       ; $733a: $ff
    rst $38                                       ; $733b: $ff
    rst $38                                       ; $733c: $ff
    rst $38                                       ; $733d: $ff
    rst $38                                       ; $733e: $ff
    rst $38                                       ; $733f: $ff
    rst $38                                       ; $7340: $ff
    rst $38                                       ; $7341: $ff
    rst $38                                       ; $7342: $ff
    rst $38                                       ; $7343: $ff
    rst $38                                       ; $7344: $ff
    rst $38                                       ; $7345: $ff
    rst $38                                       ; $7346: $ff
    rst $38                                       ; $7347: $ff
    rst $38                                       ; $7348: $ff
    rst $38                                       ; $7349: $ff
    rst $38                                       ; $734a: $ff
    rst $38                                       ; $734b: $ff
    rst $38                                       ; $734c: $ff
    rst $38                                       ; $734d: $ff
    rst $38                                       ; $734e: $ff
    rst $38                                       ; $734f: $ff
    rst $38                                       ; $7350: $ff
    rst $38                                       ; $7351: $ff
    rst $38                                       ; $7352: $ff
    rst $38                                       ; $7353: $ff
    rst $38                                       ; $7354: $ff
    rst $38                                       ; $7355: $ff
    rst $38                                       ; $7356: $ff
    rst $38                                       ; $7357: $ff
    rst $38                                       ; $7358: $ff
    rst $38                                       ; $7359: $ff
    rst $38                                       ; $735a: $ff
    rst $38                                       ; $735b: $ff
    rst $38                                       ; $735c: $ff
    rst $38                                       ; $735d: $ff
    rst $38                                       ; $735e: $ff
    rst $38                                       ; $735f: $ff
    rst $38                                       ; $7360: $ff
    rst $38                                       ; $7361: $ff
    rst $38                                       ; $7362: $ff
    rst $38                                       ; $7363: $ff
    rst $38                                       ; $7364: $ff
    rst $38                                       ; $7365: $ff
    rst $38                                       ; $7366: $ff
    rst $38                                       ; $7367: $ff
    rst $38                                       ; $7368: $ff
    rst $38                                       ; $7369: $ff
    rst $38                                       ; $736a: $ff
    rst $38                                       ; $736b: $ff
    rst $38                                       ; $736c: $ff
    rst $38                                       ; $736d: $ff
    rst $38                                       ; $736e: $ff
    rst $38                                       ; $736f: $ff
    rst $38                                       ; $7370: $ff
    rst $38                                       ; $7371: $ff
    rst $38                                       ; $7372: $ff
    rst $38                                       ; $7373: $ff
    rst $38                                       ; $7374: $ff
    rst $38                                       ; $7375: $ff
    rst $38                                       ; $7376: $ff
    rst $38                                       ; $7377: $ff
    rst $38                                       ; $7378: $ff
    rst $38                                       ; $7379: $ff
    rst $38                                       ; $737a: $ff
    rst $38                                       ; $737b: $ff
    rst $38                                       ; $737c: $ff
    rst $38                                       ; $737d: $ff
    rst $38                                       ; $737e: $ff
    rst $38                                       ; $737f: $ff
    rst $38                                       ; $7380: $ff
    rst $38                                       ; $7381: $ff
    rst $38                                       ; $7382: $ff
    rst $38                                       ; $7383: $ff
    rst $38                                       ; $7384: $ff
    rst $38                                       ; $7385: $ff
    rst $38                                       ; $7386: $ff
    rst $38                                       ; $7387: $ff
    rst $38                                       ; $7388: $ff
    rst $38                                       ; $7389: $ff
    rst $38                                       ; $738a: $ff
    rst $38                                       ; $738b: $ff
    rst $38                                       ; $738c: $ff
    rst $38                                       ; $738d: $ff
    rst $38                                       ; $738e: $ff
    rst $38                                       ; $738f: $ff
    rst $38                                       ; $7390: $ff
    rst $38                                       ; $7391: $ff
    rst $38                                       ; $7392: $ff
    rst $38                                       ; $7393: $ff
    rst $38                                       ; $7394: $ff
    rst $38                                       ; $7395: $ff
    rst $38                                       ; $7396: $ff
    rst $38                                       ; $7397: $ff
    rst $38                                       ; $7398: $ff
    rst $38                                       ; $7399: $ff
    rst $38                                       ; $739a: $ff
    rst $38                                       ; $739b: $ff
    rst $38                                       ; $739c: $ff
    rst $38                                       ; $739d: $ff
    rst $38                                       ; $739e: $ff
    rst $38                                       ; $739f: $ff
    rst $38                                       ; $73a0: $ff
    rst $38                                       ; $73a1: $ff
    rst $38                                       ; $73a2: $ff
    rst $38                                       ; $73a3: $ff
    rst $38                                       ; $73a4: $ff
    rst $38                                       ; $73a5: $ff
    rst $38                                       ; $73a6: $ff
    rst $38                                       ; $73a7: $ff
    rst $38                                       ; $73a8: $ff
    rst $38                                       ; $73a9: $ff
    rst $38                                       ; $73aa: $ff
    rst $38                                       ; $73ab: $ff
    rst $38                                       ; $73ac: $ff
    rst $38                                       ; $73ad: $ff
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
    rst $38                                       ; $73be: $ff
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
    rst $38                                       ; $73cf: $ff
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
    rst $38                                       ; $73e0: $ff
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
    rst $38                                       ; $73f1: $ff
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
    rst $38                                       ; $7402: $ff
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
    rst $38                                       ; $7413: $ff
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
    rst $38                                       ; $7424: $ff
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
    rst $38                                       ; $7435: $ff
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
    rst $38                                       ; $7446: $ff
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
    rst $38                                       ; $7457: $ff
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
    rst $38                                       ; $7467: $ff
    rst $38                                       ; $7468: $ff
    rst $38                                       ; $7469: $ff
    rst $38                                       ; $746a: $ff
    rst $38                                       ; $746b: $ff
    rst $38                                       ; $746c: $ff
    rst $38                                       ; $746d: $ff
    rst $38                                       ; $746e: $ff
    rst $38                                       ; $746f: $ff
    rst $38                                       ; $7470: $ff
    rst $38                                       ; $7471: $ff
    rst $38                                       ; $7472: $ff
    rst $38                                       ; $7473: $ff
    rst $38                                       ; $7474: $ff
    rst $38                                       ; $7475: $ff
    rst $38                                       ; $7476: $ff
    rst $38                                       ; $7477: $ff
    rst $38                                       ; $7478: $ff
    rst $38                                       ; $7479: $ff
    rst $38                                       ; $747a: $ff
    rst $38                                       ; $747b: $ff
    rst $38                                       ; $747c: $ff
    rst $38                                       ; $747d: $ff
    rst $38                                       ; $747e: $ff
    rst $38                                       ; $747f: $ff
    rst $38                                       ; $7480: $ff
    rst $38                                       ; $7481: $ff
    rst $38                                       ; $7482: $ff
    rst $38                                       ; $7483: $ff
    rst $38                                       ; $7484: $ff
    rst $38                                       ; $7485: $ff
    rst $38                                       ; $7486: $ff
    rst $38                                       ; $7487: $ff
    rst $38                                       ; $7488: $ff
    rst $38                                       ; $7489: $ff
    rst $38                                       ; $748a: $ff
    rst $38                                       ; $748b: $ff
    rst $38                                       ; $748c: $ff
    rst $38                                       ; $748d: $ff
    rst $38                                       ; $748e: $ff
    rst $38                                       ; $748f: $ff
    rst $38                                       ; $7490: $ff
    rst $38                                       ; $7491: $ff
    rst $38                                       ; $7492: $ff
    rst $38                                       ; $7493: $ff
    rst $38                                       ; $7494: $ff
    rst $38                                       ; $7495: $ff
    rst $38                                       ; $7496: $ff
    rst $38                                       ; $7497: $ff
    rst $38                                       ; $7498: $ff
    rst $38                                       ; $7499: $ff
    rst $38                                       ; $749a: $ff
    rst $38                                       ; $749b: $ff
    rst $38                                       ; $749c: $ff
    rst $38                                       ; $749d: $ff
    rst $38                                       ; $749e: $ff
    rst $38                                       ; $749f: $ff
    rst $38                                       ; $74a0: $ff
    rst $38                                       ; $74a1: $ff
    rst $38                                       ; $74a2: $ff
    rst $38                                       ; $74a3: $ff
    rst $38                                       ; $74a4: $ff
    rst $38                                       ; $74a5: $ff
    rst $38                                       ; $74a6: $ff
    rst $38                                       ; $74a7: $ff
    rst $38                                       ; $74a8: $ff
    rst $38                                       ; $74a9: $ff
    rst $38                                       ; $74aa: $ff
    rst $38                                       ; $74ab: $ff
    rst $38                                       ; $74ac: $ff
    rst $38                                       ; $74ad: $ff
    rst $38                                       ; $74ae: $ff
    rst $38                                       ; $74af: $ff
    rst $38                                       ; $74b0: $ff
    rst $38                                       ; $74b1: $ff
    rst $38                                       ; $74b2: $ff
    rst $38                                       ; $74b3: $ff
    rst $38                                       ; $74b4: $ff
    rst $38                                       ; $74b5: $ff
    rst $38                                       ; $74b6: $ff
    rst $38                                       ; $74b7: $ff
    rst $38                                       ; $74b8: $ff
    rst $38                                       ; $74b9: $ff
    rst $38                                       ; $74ba: $ff
    rst $38                                       ; $74bb: $ff
    rst $38                                       ; $74bc: $ff
    rst $38                                       ; $74bd: $ff
    rst $38                                       ; $74be: $ff
    rst $38                                       ; $74bf: $ff
    rst $38                                       ; $74c0: $ff
    rst $38                                       ; $74c1: $ff
    rst $38                                       ; $74c2: $ff
    rst $38                                       ; $74c3: $ff
    rst $38                                       ; $74c4: $ff
    rst $38                                       ; $74c5: $ff
    rst $38                                       ; $74c6: $ff
    rst $38                                       ; $74c7: $ff
    rst $38                                       ; $74c8: $ff
    rst $38                                       ; $74c9: $ff
    rst $38                                       ; $74ca: $ff
    rst $38                                       ; $74cb: $ff
    rst $38                                       ; $74cc: $ff
    rst $38                                       ; $74cd: $ff
    rst $38                                       ; $74ce: $ff
    rst $38                                       ; $74cf: $ff
    rst $38                                       ; $74d0: $ff
    rst $38                                       ; $74d1: $ff
    rst $38                                       ; $74d2: $ff
    rst $38                                       ; $74d3: $ff
    rst $38                                       ; $74d4: $ff
    rst $38                                       ; $74d5: $ff
    rst $38                                       ; $74d6: $ff
    rst $38                                       ; $74d7: $ff
    rst $38                                       ; $74d8: $ff
    rst $38                                       ; $74d9: $ff
    rst $38                                       ; $74da: $ff
    rst $38                                       ; $74db: $ff
    rst $38                                       ; $74dc: $ff
    rst $38                                       ; $74dd: $ff
    rst $38                                       ; $74de: $ff
    rst $38                                       ; $74df: $ff
    rst $38                                       ; $74e0: $ff
    rst $38                                       ; $74e1: $ff
    rst $38                                       ; $74e2: $ff
    rst $38                                       ; $74e3: $ff
    rst $38                                       ; $74e4: $ff
    rst $38                                       ; $74e5: $ff
    rst $38                                       ; $74e6: $ff
    rst $38                                       ; $74e7: $ff
    rst $38                                       ; $74e8: $ff
    rst $38                                       ; $74e9: $ff
    rst $38                                       ; $74ea: $ff
    rst $38                                       ; $74eb: $ff
    rst $38                                       ; $74ec: $ff
    rst $38                                       ; $74ed: $ff
    rst $38                                       ; $74ee: $ff
    rst $38                                       ; $74ef: $ff
    rst $38                                       ; $74f0: $ff
    rst $38                                       ; $74f1: $ff
    rst $38                                       ; $74f2: $ff
    rst $38                                       ; $74f3: $ff
    rst $38                                       ; $74f4: $ff
    rst $38                                       ; $74f5: $ff
    rst $38                                       ; $74f6: $ff
    rst $38                                       ; $74f7: $ff
    rst $38                                       ; $74f8: $ff
    rst $38                                       ; $74f9: $ff
    rst $38                                       ; $74fa: $ff
    rst $38                                       ; $74fb: $ff
    rst $38                                       ; $74fc: $ff
    rst $38                                       ; $74fd: $ff
    rst $38                                       ; $74fe: $ff
    rst $38                                       ; $74ff: $ff
    rst $38                                       ; $7500: $ff
    rst $38                                       ; $7501: $ff
    rst $38                                       ; $7502: $ff
    rst $38                                       ; $7503: $ff
    rst $38                                       ; $7504: $ff
    rst $38                                       ; $7505: $ff
    rst $38                                       ; $7506: $ff
    rst $38                                       ; $7507: $ff
    rst $38                                       ; $7508: $ff
    rst $38                                       ; $7509: $ff
    rst $38                                       ; $750a: $ff
    rst $38                                       ; $750b: $ff
    rst $38                                       ; $750c: $ff
    rst $38                                       ; $750d: $ff
    rst $38                                       ; $750e: $ff
    rst $38                                       ; $750f: $ff
    rst $38                                       ; $7510: $ff
    rst $38                                       ; $7511: $ff
    rst $38                                       ; $7512: $ff
    rst $38                                       ; $7513: $ff
    rst $38                                       ; $7514: $ff
    rst $38                                       ; $7515: $ff
    rst $38                                       ; $7516: $ff
    rst $38                                       ; $7517: $ff
    rst $38                                       ; $7518: $ff
    rst $38                                       ; $7519: $ff
    rst $38                                       ; $751a: $ff
    rst $38                                       ; $751b: $ff
    rst $38                                       ; $751c: $ff
    rst $38                                       ; $751d: $ff
    rst $38                                       ; $751e: $ff
    rst $38                                       ; $751f: $ff
    rst $38                                       ; $7520: $ff
    rst $38                                       ; $7521: $ff
    rst $38                                       ; $7522: $ff
    rst $38                                       ; $7523: $ff
    rst $38                                       ; $7524: $ff
    rst $38                                       ; $7525: $ff
    rst $38                                       ; $7526: $ff
    rst $38                                       ; $7527: $ff
    rst $38                                       ; $7528: $ff
    rst $38                                       ; $7529: $ff
    rst $38                                       ; $752a: $ff
    rst $38                                       ; $752b: $ff
    rst $38                                       ; $752c: $ff
    rst $38                                       ; $752d: $ff
    rst $38                                       ; $752e: $ff
    rst $38                                       ; $752f: $ff
    rst $38                                       ; $7530: $ff
    rst $38                                       ; $7531: $ff
    rst $38                                       ; $7532: $ff
    rst $38                                       ; $7533: $ff
    rst $38                                       ; $7534: $ff
    rst $38                                       ; $7535: $ff
    rst $38                                       ; $7536: $ff
    rst $38                                       ; $7537: $ff
    rst $38                                       ; $7538: $ff
    rst $38                                       ; $7539: $ff
    rst $38                                       ; $753a: $ff
    rst $38                                       ; $753b: $ff
    rst $38                                       ; $753c: $ff
    rst $38                                       ; $753d: $ff
    rst $38                                       ; $753e: $ff
    rst $38                                       ; $753f: $ff
    rst $38                                       ; $7540: $ff
    rst $38                                       ; $7541: $ff
    rst $38                                       ; $7542: $ff
    rst $38                                       ; $7543: $ff
    rst $38                                       ; $7544: $ff
    rst $38                                       ; $7545: $ff
    rst $38                                       ; $7546: $ff
    rst $38                                       ; $7547: $ff
    rst $38                                       ; $7548: $ff
    rst $38                                       ; $7549: $ff
    rst $38                                       ; $754a: $ff
    rst $38                                       ; $754b: $ff
    rst $38                                       ; $754c: $ff
    rst $38                                       ; $754d: $ff
    rst $38                                       ; $754e: $ff
    rst $38                                       ; $754f: $ff
    rst $38                                       ; $7550: $ff
    rst $38                                       ; $7551: $ff
    rst $38                                       ; $7552: $ff
    rst $38                                       ; $7553: $ff
    rst $38                                       ; $7554: $ff
    rst $38                                       ; $7555: $ff
    rst $38                                       ; $7556: $ff
    rst $38                                       ; $7557: $ff
    rst $38                                       ; $7558: $ff
    rst $38                                       ; $7559: $ff
    rst $38                                       ; $755a: $ff
    rst $38                                       ; $755b: $ff
    rst $38                                       ; $755c: $ff
    rst $38                                       ; $755d: $ff
    rst $38                                       ; $755e: $ff
    rst $38                                       ; $755f: $ff
    rst $38                                       ; $7560: $ff
    rst $38                                       ; $7561: $ff
    rst $38                                       ; $7562: $ff
    rst $38                                       ; $7563: $ff
    rst $38                                       ; $7564: $ff
    rst $38                                       ; $7565: $ff
    rst $38                                       ; $7566: $ff
    rst $38                                       ; $7567: $ff
    rst $38                                       ; $7568: $ff
    rst $38                                       ; $7569: $ff
    rst $38                                       ; $756a: $ff
    rst $38                                       ; $756b: $ff
    rst $38                                       ; $756c: $ff
    rst $38                                       ; $756d: $ff
    rst $38                                       ; $756e: $ff
    rst $38                                       ; $756f: $ff
    rst $38                                       ; $7570: $ff
    rst $38                                       ; $7571: $ff
    rst $38                                       ; $7572: $ff
    rst $38                                       ; $7573: $ff
    rst $38                                       ; $7574: $ff
    rst $38                                       ; $7575: $ff
    rst $38                                       ; $7576: $ff
    rst $38                                       ; $7577: $ff
    rst $38                                       ; $7578: $ff
    rst $38                                       ; $7579: $ff
    rst $38                                       ; $757a: $ff
    rst $38                                       ; $757b: $ff
    rst $38                                       ; $757c: $ff
    rst $38                                       ; $757d: $ff
    rst $38                                       ; $757e: $ff
    rst $38                                       ; $757f: $ff
    rst $38                                       ; $7580: $ff
    rst $38                                       ; $7581: $ff
    rst $38                                       ; $7582: $ff
    rst $38                                       ; $7583: $ff
    rst $38                                       ; $7584: $ff
    rst $38                                       ; $7585: $ff
    rst $38                                       ; $7586: $ff
    rst $38                                       ; $7587: $ff
    rst $38                                       ; $7588: $ff
    rst $38                                       ; $7589: $ff
    rst $38                                       ; $758a: $ff
    rst $38                                       ; $758b: $ff
    rst $38                                       ; $758c: $ff
    rst $38                                       ; $758d: $ff
    rst $38                                       ; $758e: $ff
    rst $38                                       ; $758f: $ff
    rst $38                                       ; $7590: $ff
    rst $38                                       ; $7591: $ff
    rst $38                                       ; $7592: $ff
    rst $38                                       ; $7593: $ff
    rst $38                                       ; $7594: $ff
    rst $38                                       ; $7595: $ff
    rst $38                                       ; $7596: $ff
    rst $38                                       ; $7597: $ff
    rst $38                                       ; $7598: $ff
    rst $38                                       ; $7599: $ff
    rst $38                                       ; $759a: $ff
    rst $38                                       ; $759b: $ff
    rst $38                                       ; $759c: $ff
    rst $38                                       ; $759d: $ff
    rst $38                                       ; $759e: $ff
    rst $38                                       ; $759f: $ff
    rst $38                                       ; $75a0: $ff
    rst $38                                       ; $75a1: $ff
    rst $38                                       ; $75a2: $ff
    rst $38                                       ; $75a3: $ff
    rst $38                                       ; $75a4: $ff
    rst $38                                       ; $75a5: $ff
    rst $38                                       ; $75a6: $ff
    rst $38                                       ; $75a7: $ff
    rst $38                                       ; $75a8: $ff
    rst $38                                       ; $75a9: $ff
    rst $38                                       ; $75aa: $ff
    rst $38                                       ; $75ab: $ff
    rst $38                                       ; $75ac: $ff
    rst $38                                       ; $75ad: $ff
    rst $38                                       ; $75ae: $ff
    rst $38                                       ; $75af: $ff
    rst $38                                       ; $75b0: $ff
    rst $38                                       ; $75b1: $ff
    rst $38                                       ; $75b2: $ff
    rst $38                                       ; $75b3: $ff
    rst $38                                       ; $75b4: $ff
    rst $38                                       ; $75b5: $ff
    rst $38                                       ; $75b6: $ff
    rst $38                                       ; $75b7: $ff
    rst $38                                       ; $75b8: $ff
    rst $38                                       ; $75b9: $ff
    rst $38                                       ; $75ba: $ff
    rst $38                                       ; $75bb: $ff
    rst $38                                       ; $75bc: $ff
    rst $38                                       ; $75bd: $ff
    rst $38                                       ; $75be: $ff
    rst $38                                       ; $75bf: $ff
    rst $38                                       ; $75c0: $ff
    rst $38                                       ; $75c1: $ff
    rst $38                                       ; $75c2: $ff
    rst $38                                       ; $75c3: $ff
    rst $38                                       ; $75c4: $ff
    rst $38                                       ; $75c5: $ff
    rst $38                                       ; $75c6: $ff
    rst $38                                       ; $75c7: $ff
    rst $38                                       ; $75c8: $ff
    rst $38                                       ; $75c9: $ff
    rst $38                                       ; $75ca: $ff
    rst $38                                       ; $75cb: $ff
    rst $38                                       ; $75cc: $ff
    rst $38                                       ; $75cd: $ff
    rst $38                                       ; $75ce: $ff
    rst $38                                       ; $75cf: $ff
    rst $38                                       ; $75d0: $ff
    rst $38                                       ; $75d1: $ff
    rst $38                                       ; $75d2: $ff
    rst $38                                       ; $75d3: $ff
    rst $38                                       ; $75d4: $ff
    rst $38                                       ; $75d5: $ff
    rst $38                                       ; $75d6: $ff
    rst $38                                       ; $75d7: $ff
    rst $38                                       ; $75d8: $ff
    rst $38                                       ; $75d9: $ff
    rst $38                                       ; $75da: $ff
    rst $38                                       ; $75db: $ff
    rst $38                                       ; $75dc: $ff
    rst $38                                       ; $75dd: $ff
    rst $38                                       ; $75de: $ff
    rst $38                                       ; $75df: $ff
    rst $38                                       ; $75e0: $ff
    rst $38                                       ; $75e1: $ff
    rst $38                                       ; $75e2: $ff
    rst $38                                       ; $75e3: $ff
    rst $38                                       ; $75e4: $ff
    rst $38                                       ; $75e5: $ff
    rst $38                                       ; $75e6: $ff
    rst $38                                       ; $75e7: $ff
    rst $38                                       ; $75e8: $ff
    rst $38                                       ; $75e9: $ff
    rst $38                                       ; $75ea: $ff
    rst $38                                       ; $75eb: $ff
    rst $38                                       ; $75ec: $ff
    rst $38                                       ; $75ed: $ff
    rst $38                                       ; $75ee: $ff
    rst $38                                       ; $75ef: $ff
    rst $38                                       ; $75f0: $ff
    rst $38                                       ; $75f1: $ff
    rst $38                                       ; $75f2: $ff
    rst $38                                       ; $75f3: $ff
    rst $38                                       ; $75f4: $ff
    rst $38                                       ; $75f5: $ff
    rst $38                                       ; $75f6: $ff
    rst $38                                       ; $75f7: $ff
    rst $38                                       ; $75f8: $ff
    rst $38                                       ; $75f9: $ff
    rst $38                                       ; $75fa: $ff
    rst $38                                       ; $75fb: $ff
    rst $38                                       ; $75fc: $ff
    rst $38                                       ; $75fd: $ff
    rst $38                                       ; $75fe: $ff
    rst $38                                       ; $75ff: $ff
    rst $38                                       ; $7600: $ff
    rst $38                                       ; $7601: $ff
    rst $38                                       ; $7602: $ff
    rst $38                                       ; $7603: $ff
    rst $38                                       ; $7604: $ff
    rst $38                                       ; $7605: $ff
    rst $38                                       ; $7606: $ff
    rst $38                                       ; $7607: $ff
    rst $38                                       ; $7608: $ff
    rst $38                                       ; $7609: $ff
    rst $38                                       ; $760a: $ff
    rst $38                                       ; $760b: $ff
    rst $38                                       ; $760c: $ff
    rst $38                                       ; $760d: $ff
    rst $38                                       ; $760e: $ff
    rst $38                                       ; $760f: $ff
    rst $38                                       ; $7610: $ff
    rst $38                                       ; $7611: $ff
    rst $38                                       ; $7612: $ff
    rst $38                                       ; $7613: $ff
    rst $38                                       ; $7614: $ff
    rst $38                                       ; $7615: $ff
    rst $38                                       ; $7616: $ff
    rst $38                                       ; $7617: $ff
    rst $38                                       ; $7618: $ff
    rst $38                                       ; $7619: $ff
    rst $38                                       ; $761a: $ff
    rst $38                                       ; $761b: $ff
    rst $38                                       ; $761c: $ff
    rst $38                                       ; $761d: $ff
    rst $38                                       ; $761e: $ff
    rst $38                                       ; $761f: $ff
    rst $38                                       ; $7620: $ff
    rst $38                                       ; $7621: $ff
    rst $38                                       ; $7622: $ff
    rst $38                                       ; $7623: $ff
    rst $38                                       ; $7624: $ff
    rst $38                                       ; $7625: $ff
    rst $38                                       ; $7626: $ff
    rst $38                                       ; $7627: $ff
    rst $38                                       ; $7628: $ff
    rst $38                                       ; $7629: $ff
    rst $38                                       ; $762a: $ff
    rst $38                                       ; $762b: $ff
    rst $38                                       ; $762c: $ff
    rst $38                                       ; $762d: $ff
    rst $38                                       ; $762e: $ff
    rst $38                                       ; $762f: $ff
    rst $38                                       ; $7630: $ff
    rst $38                                       ; $7631: $ff
    rst $38                                       ; $7632: $ff
    rst $38                                       ; $7633: $ff
    rst $38                                       ; $7634: $ff
    rst $38                                       ; $7635: $ff
    rst $38                                       ; $7636: $ff
    rst $38                                       ; $7637: $ff
    rst $38                                       ; $7638: $ff
    rst $38                                       ; $7639: $ff
    rst $38                                       ; $763a: $ff
    rst $38                                       ; $763b: $ff
    rst $38                                       ; $763c: $ff
    rst $38                                       ; $763d: $ff
    rst $38                                       ; $763e: $ff
    rst $38                                       ; $763f: $ff
    rst $38                                       ; $7640: $ff
    rst $38                                       ; $7641: $ff
    rst $38                                       ; $7642: $ff
    rst $38                                       ; $7643: $ff
    rst $38                                       ; $7644: $ff
    rst $38                                       ; $7645: $ff
    rst $38                                       ; $7646: $ff
    rst $38                                       ; $7647: $ff
    rst $38                                       ; $7648: $ff
    rst $38                                       ; $7649: $ff
    rst $38                                       ; $764a: $ff
    rst $38                                       ; $764b: $ff
    rst $38                                       ; $764c: $ff
    rst $38                                       ; $764d: $ff
    rst $38                                       ; $764e: $ff
    rst $38                                       ; $764f: $ff
    rst $38                                       ; $7650: $ff
    rst $38                                       ; $7651: $ff
    rst $38                                       ; $7652: $ff
    rst $38                                       ; $7653: $ff
    rst $38                                       ; $7654: $ff
    rst $38                                       ; $7655: $ff
    rst $38                                       ; $7656: $ff
    rst $38                                       ; $7657: $ff
    rst $38                                       ; $7658: $ff
    rst $38                                       ; $7659: $ff
    rst $38                                       ; $765a: $ff
    rst $38                                       ; $765b: $ff
    rst $38                                       ; $765c: $ff
    rst $38                                       ; $765d: $ff
    rst $38                                       ; $765e: $ff
    rst $38                                       ; $765f: $ff
    rst $38                                       ; $7660: $ff
    rst $38                                       ; $7661: $ff
    rst $38                                       ; $7662: $ff
    rst $38                                       ; $7663: $ff
    rst $38                                       ; $7664: $ff
    rst $38                                       ; $7665: $ff
    rst $38                                       ; $7666: $ff
    rst $38                                       ; $7667: $ff
    rst $38                                       ; $7668: $ff
    rst $38                                       ; $7669: $ff
    rst $38                                       ; $766a: $ff
    rst $38                                       ; $766b: $ff
    rst $38                                       ; $766c: $ff
    rst $38                                       ; $766d: $ff
    rst $38                                       ; $766e: $ff
    rst $38                                       ; $766f: $ff
    rst $38                                       ; $7670: $ff
    rst $38                                       ; $7671: $ff
    rst $38                                       ; $7672: $ff
    rst $38                                       ; $7673: $ff
    rst $38                                       ; $7674: $ff
    rst $38                                       ; $7675: $ff
    rst $38                                       ; $7676: $ff
    rst $38                                       ; $7677: $ff
    rst $38                                       ; $7678: $ff
    rst $38                                       ; $7679: $ff
    rst $38                                       ; $767a: $ff
    rst $38                                       ; $767b: $ff
    rst $38                                       ; $767c: $ff
    rst $38                                       ; $767d: $ff
    rst $38                                       ; $767e: $ff
    rst $38                                       ; $767f: $ff
    rst $38                                       ; $7680: $ff
    rst $38                                       ; $7681: $ff
    rst $38                                       ; $7682: $ff
    rst $38                                       ; $7683: $ff
    rst $38                                       ; $7684: $ff
    rst $38                                       ; $7685: $ff
    rst $38                                       ; $7686: $ff
    rst $38                                       ; $7687: $ff
    rst $38                                       ; $7688: $ff
    rst $38                                       ; $7689: $ff
    rst $38                                       ; $768a: $ff
    rst $38                                       ; $768b: $ff
    rst $38                                       ; $768c: $ff
    rst $38                                       ; $768d: $ff
    rst $38                                       ; $768e: $ff
    rst $38                                       ; $768f: $ff
    rst $38                                       ; $7690: $ff
    rst $38                                       ; $7691: $ff
    rst $38                                       ; $7692: $ff
    rst $38                                       ; $7693: $ff
    rst $38                                       ; $7694: $ff
    rst $38                                       ; $7695: $ff
    rst $38                                       ; $7696: $ff
    rst $38                                       ; $7697: $ff
    rst $38                                       ; $7698: $ff
    rst $38                                       ; $7699: $ff
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
    rst $38                                       ; $76a4: $ff
    rst $38                                       ; $76a5: $ff
    rst $38                                       ; $76a6: $ff
    rst $38                                       ; $76a7: $ff
    rst $38                                       ; $76a8: $ff
    rst $38                                       ; $76a9: $ff
    rst $38                                       ; $76aa: $ff
    rst $38                                       ; $76ab: $ff
    rst $38                                       ; $76ac: $ff
    rst $38                                       ; $76ad: $ff
    rst $38                                       ; $76ae: $ff
    rst $38                                       ; $76af: $ff
    rst $38                                       ; $76b0: $ff
    rst $38                                       ; $76b1: $ff
    rst $38                                       ; $76b2: $ff
    rst $38                                       ; $76b3: $ff
    rst $38                                       ; $76b4: $ff
    rst $38                                       ; $76b5: $ff
    rst $38                                       ; $76b6: $ff
    rst $38                                       ; $76b7: $ff
    rst $38                                       ; $76b8: $ff
    rst $38                                       ; $76b9: $ff
    rst $38                                       ; $76ba: $ff
    rst $38                                       ; $76bb: $ff
    rst $38                                       ; $76bc: $ff
    rst $38                                       ; $76bd: $ff
    rst $38                                       ; $76be: $ff
    rst $38                                       ; $76bf: $ff
    rst $38                                       ; $76c0: $ff
    rst $38                                       ; $76c1: $ff
    rst $38                                       ; $76c2: $ff
    rst $38                                       ; $76c3: $ff
    rst $38                                       ; $76c4: $ff
    rst $38                                       ; $76c5: $ff
    rst $38                                       ; $76c6: $ff
    rst $38                                       ; $76c7: $ff
    rst $38                                       ; $76c8: $ff
    rst $38                                       ; $76c9: $ff
    rst $38                                       ; $76ca: $ff
    rst $38                                       ; $76cb: $ff
    rst $38                                       ; $76cc: $ff
    rst $38                                       ; $76cd: $ff
    rst $38                                       ; $76ce: $ff
    rst $38                                       ; $76cf: $ff
    rst $38                                       ; $76d0: $ff
    rst $38                                       ; $76d1: $ff
    rst $38                                       ; $76d2: $ff
    rst $38                                       ; $76d3: $ff
    rst $38                                       ; $76d4: $ff
    rst $38                                       ; $76d5: $ff
    rst $38                                       ; $76d6: $ff
    rst $38                                       ; $76d7: $ff
    rst $38                                       ; $76d8: $ff
    rst $38                                       ; $76d9: $ff
    rst $38                                       ; $76da: $ff
    rst $38                                       ; $76db: $ff
    rst $38                                       ; $76dc: $ff
    rst $38                                       ; $76dd: $ff
    rst $38                                       ; $76de: $ff
    rst $38                                       ; $76df: $ff
    rst $38                                       ; $76e0: $ff
    rst $38                                       ; $76e1: $ff
    rst $38                                       ; $76e2: $ff
    rst $38                                       ; $76e3: $ff
    rst $38                                       ; $76e4: $ff
    rst $38                                       ; $76e5: $ff
    rst $38                                       ; $76e6: $ff
    rst $38                                       ; $76e7: $ff
    rst $38                                       ; $76e8: $ff
    rst $38                                       ; $76e9: $ff
    rst $38                                       ; $76ea: $ff
    rst $38                                       ; $76eb: $ff
    rst $38                                       ; $76ec: $ff
    rst $38                                       ; $76ed: $ff
    rst $38                                       ; $76ee: $ff
    rst $38                                       ; $76ef: $ff
    rst $38                                       ; $76f0: $ff
    rst $38                                       ; $76f1: $ff
    rst $38                                       ; $76f2: $ff
    rst $38                                       ; $76f3: $ff
    rst $38                                       ; $76f4: $ff
    rst $38                                       ; $76f5: $ff
    rst $38                                       ; $76f6: $ff
    rst $38                                       ; $76f7: $ff
    rst $38                                       ; $76f8: $ff
    rst $38                                       ; $76f9: $ff
    rst $38                                       ; $76fa: $ff
    rst $38                                       ; $76fb: $ff
    rst $38                                       ; $76fc: $ff
    rst $38                                       ; $76fd: $ff
    rst $38                                       ; $76fe: $ff
    rst $38                                       ; $76ff: $ff
    rst $38                                       ; $7700: $ff
    rst $38                                       ; $7701: $ff
    rst $38                                       ; $7702: $ff
    rst $38                                       ; $7703: $ff
    rst $38                                       ; $7704: $ff
    rst $38                                       ; $7705: $ff
    rst $38                                       ; $7706: $ff
    rst $38                                       ; $7707: $ff
    rst $38                                       ; $7708: $ff
    rst $38                                       ; $7709: $ff
    rst $38                                       ; $770a: $ff
    rst $38                                       ; $770b: $ff
    rst $38                                       ; $770c: $ff
    rst $38                                       ; $770d: $ff
    rst $38                                       ; $770e: $ff
    rst $38                                       ; $770f: $ff
    rst $38                                       ; $7710: $ff
    rst $38                                       ; $7711: $ff
    rst $38                                       ; $7712: $ff
    rst $38                                       ; $7713: $ff
    rst $38                                       ; $7714: $ff
    rst $38                                       ; $7715: $ff
    rst $38                                       ; $7716: $ff
    rst $38                                       ; $7717: $ff
    rst $38                                       ; $7718: $ff
    rst $38                                       ; $7719: $ff
    rst $38                                       ; $771a: $ff
    rst $38                                       ; $771b: $ff
    rst $38                                       ; $771c: $ff
    rst $38                                       ; $771d: $ff
    rst $38                                       ; $771e: $ff
    rst $38                                       ; $771f: $ff
    rst $38                                       ; $7720: $ff
    rst $38                                       ; $7721: $ff
    rst $38                                       ; $7722: $ff
    rst $38                                       ; $7723: $ff
    rst $38                                       ; $7724: $ff
    rst $38                                       ; $7725: $ff
    rst $38                                       ; $7726: $ff
    rst $38                                       ; $7727: $ff
    rst $38                                       ; $7728: $ff
    rst $38                                       ; $7729: $ff
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
    rst $38                                       ; $7735: $ff
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
    rst $38                                       ; $7746: $ff
    rst $38                                       ; $7747: $ff
    rst $38                                       ; $7748: $ff
    rst $38                                       ; $7749: $ff
    rst $38                                       ; $774a: $ff
    rst $38                                       ; $774b: $ff
    rst $38                                       ; $774c: $ff
    rst $38                                       ; $774d: $ff
    rst $38                                       ; $774e: $ff
    rst $38                                       ; $774f: $ff
    rst $38                                       ; $7750: $ff
    rst $38                                       ; $7751: $ff
    rst $38                                       ; $7752: $ff
    rst $38                                       ; $7753: $ff
    rst $38                                       ; $7754: $ff
    rst $38                                       ; $7755: $ff
    rst $38                                       ; $7756: $ff
    rst $38                                       ; $7757: $ff
    rst $38                                       ; $7758: $ff
    rst $38                                       ; $7759: $ff
    rst $38                                       ; $775a: $ff
    rst $38                                       ; $775b: $ff
    rst $38                                       ; $775c: $ff
    rst $38                                       ; $775d: $ff
    rst $38                                       ; $775e: $ff
    rst $38                                       ; $775f: $ff
    rst $38                                       ; $7760: $ff
    rst $38                                       ; $7761: $ff
    rst $38                                       ; $7762: $ff
    rst $38                                       ; $7763: $ff
    rst $38                                       ; $7764: $ff
    rst $38                                       ; $7765: $ff
    rst $38                                       ; $7766: $ff
    rst $38                                       ; $7767: $ff
    rst $38                                       ; $7768: $ff
    rst $38                                       ; $7769: $ff
    rst $38                                       ; $776a: $ff
    rst $38                                       ; $776b: $ff
    rst $38                                       ; $776c: $ff
    rst $38                                       ; $776d: $ff
    rst $38                                       ; $776e: $ff
    rst $38                                       ; $776f: $ff
    rst $38                                       ; $7770: $ff
    rst $38                                       ; $7771: $ff
    rst $38                                       ; $7772: $ff
    rst $38                                       ; $7773: $ff
    rst $38                                       ; $7774: $ff
    rst $38                                       ; $7775: $ff
    rst $38                                       ; $7776: $ff
    rst $38                                       ; $7777: $ff
    rst $38                                       ; $7778: $ff
    rst $38                                       ; $7779: $ff
    rst $38                                       ; $777a: $ff
    rst $38                                       ; $777b: $ff
    rst $38                                       ; $777c: $ff
    rst $38                                       ; $777d: $ff
    rst $38                                       ; $777e: $ff
    rst $38                                       ; $777f: $ff
    rst $38                                       ; $7780: $ff
    rst $38                                       ; $7781: $ff
    rst $38                                       ; $7782: $ff
    rst $38                                       ; $7783: $ff
    rst $38                                       ; $7784: $ff
    rst $38                                       ; $7785: $ff
    rst $38                                       ; $7786: $ff
    rst $38                                       ; $7787: $ff
    rst $38                                       ; $7788: $ff
    rst $38                                       ; $7789: $ff
    rst $38                                       ; $778a: $ff
    rst $38                                       ; $778b: $ff
    rst $38                                       ; $778c: $ff
    rst $38                                       ; $778d: $ff
    rst $38                                       ; $778e: $ff
    rst $38                                       ; $778f: $ff
    rst $38                                       ; $7790: $ff
    rst $38                                       ; $7791: $ff
    rst $38                                       ; $7792: $ff
    rst $38                                       ; $7793: $ff
    rst $38                                       ; $7794: $ff
    rst $38                                       ; $7795: $ff
    rst $38                                       ; $7796: $ff
    rst $38                                       ; $7797: $ff
    rst $38                                       ; $7798: $ff
    rst $38                                       ; $7799: $ff
    rst $38                                       ; $779a: $ff
    rst $38                                       ; $779b: $ff
    rst $38                                       ; $779c: $ff
    rst $38                                       ; $779d: $ff
    rst $38                                       ; $779e: $ff
    rst $38                                       ; $779f: $ff
    rst $38                                       ; $77a0: $ff
    rst $38                                       ; $77a1: $ff
    rst $38                                       ; $77a2: $ff
    rst $38                                       ; $77a3: $ff
    rst $38                                       ; $77a4: $ff
    rst $38                                       ; $77a5: $ff
    rst $38                                       ; $77a6: $ff
    rst $38                                       ; $77a7: $ff
    rst $38                                       ; $77a8: $ff
    rst $38                                       ; $77a9: $ff
    rst $38                                       ; $77aa: $ff
    rst $38                                       ; $77ab: $ff
    rst $38                                       ; $77ac: $ff
    rst $38                                       ; $77ad: $ff
    rst $38                                       ; $77ae: $ff
    rst $38                                       ; $77af: $ff
    rst $38                                       ; $77b0: $ff
    rst $38                                       ; $77b1: $ff
    rst $38                                       ; $77b2: $ff
    rst $38                                       ; $77b3: $ff
    rst $38                                       ; $77b4: $ff
    rst $38                                       ; $77b5: $ff
    rst $38                                       ; $77b6: $ff
    rst $38                                       ; $77b7: $ff
    rst $38                                       ; $77b8: $ff
    rst $38                                       ; $77b9: $ff
    rst $38                                       ; $77ba: $ff
    rst $38                                       ; $77bb: $ff
    rst $38                                       ; $77bc: $ff
    rst $38                                       ; $77bd: $ff
    rst $38                                       ; $77be: $ff
    rst $38                                       ; $77bf: $ff
    rst $38                                       ; $77c0: $ff
    rst $38                                       ; $77c1: $ff
    rst $38                                       ; $77c2: $ff
    rst $38                                       ; $77c3: $ff
    rst $38                                       ; $77c4: $ff
    rst $38                                       ; $77c5: $ff
    rst $38                                       ; $77c6: $ff
    rst $38                                       ; $77c7: $ff
    rst $38                                       ; $77c8: $ff
    rst $38                                       ; $77c9: $ff
    rst $38                                       ; $77ca: $ff
    rst $38                                       ; $77cb: $ff
    rst $38                                       ; $77cc: $ff
    rst $38                                       ; $77cd: $ff
    rst $38                                       ; $77ce: $ff
    rst $38                                       ; $77cf: $ff
    rst $38                                       ; $77d0: $ff
    rst $38                                       ; $77d1: $ff
    rst $38                                       ; $77d2: $ff
    rst $38                                       ; $77d3: $ff
    rst $38                                       ; $77d4: $ff
    rst $38                                       ; $77d5: $ff
    rst $38                                       ; $77d6: $ff
    rst $38                                       ; $77d7: $ff
    rst $38                                       ; $77d8: $ff
    rst $38                                       ; $77d9: $ff
    rst $38                                       ; $77da: $ff
    rst $38                                       ; $77db: $ff
    rst $38                                       ; $77dc: $ff
    rst $38                                       ; $77dd: $ff
    rst $38                                       ; $77de: $ff
    rst $38                                       ; $77df: $ff
    rst $38                                       ; $77e0: $ff
    rst $38                                       ; $77e1: $ff
    rst $38                                       ; $77e2: $ff
    rst $38                                       ; $77e3: $ff
    rst $38                                       ; $77e4: $ff
    rst $38                                       ; $77e5: $ff
    rst $38                                       ; $77e6: $ff
    rst $38                                       ; $77e7: $ff
    rst $38                                       ; $77e8: $ff
    rst $38                                       ; $77e9: $ff
    rst $38                                       ; $77ea: $ff
    rst $38                                       ; $77eb: $ff
    rst $38                                       ; $77ec: $ff
    rst $38                                       ; $77ed: $ff
    rst $38                                       ; $77ee: $ff
    rst $38                                       ; $77ef: $ff
    rst $38                                       ; $77f0: $ff
    rst $38                                       ; $77f1: $ff
    rst $38                                       ; $77f2: $ff
    rst $38                                       ; $77f3: $ff
    rst $38                                       ; $77f4: $ff
    rst $38                                       ; $77f5: $ff
    rst $38                                       ; $77f6: $ff
    rst $38                                       ; $77f7: $ff
    rst $38                                       ; $77f8: $ff
    rst $38                                       ; $77f9: $ff
    rst $38                                       ; $77fa: $ff
    rst $38                                       ; $77fb: $ff
    rst $38                                       ; $77fc: $ff
    rst $38                                       ; $77fd: $ff
    rst $38                                       ; $77fe: $ff
    rst $38                                       ; $77ff: $ff
    rst $38                                       ; $7800: $ff
    rst $38                                       ; $7801: $ff
    rst $38                                       ; $7802: $ff
    rst $38                                       ; $7803: $ff
    rst $38                                       ; $7804: $ff
    rst $38                                       ; $7805: $ff
    rst $38                                       ; $7806: $ff
    rst $38                                       ; $7807: $ff
    rst $38                                       ; $7808: $ff
    rst $38                                       ; $7809: $ff
    rst $38                                       ; $780a: $ff
    rst $38                                       ; $780b: $ff
    rst $38                                       ; $780c: $ff
    rst $38                                       ; $780d: $ff
    rst $38                                       ; $780e: $ff
    rst $38                                       ; $780f: $ff
    rst $38                                       ; $7810: $ff
    rst $38                                       ; $7811: $ff
    rst $38                                       ; $7812: $ff
    rst $38                                       ; $7813: $ff
    rst $38                                       ; $7814: $ff
    rst $38                                       ; $7815: $ff
    rst $38                                       ; $7816: $ff
    rst $38                                       ; $7817: $ff
    rst $38                                       ; $7818: $ff
    rst $38                                       ; $7819: $ff
    rst $38                                       ; $781a: $ff
    rst $38                                       ; $781b: $ff
    rst $38                                       ; $781c: $ff
    rst $38                                       ; $781d: $ff
    rst $38                                       ; $781e: $ff
    rst $38                                       ; $781f: $ff
    rst $38                                       ; $7820: $ff
    rst $38                                       ; $7821: $ff
    rst $38                                       ; $7822: $ff
    rst $38                                       ; $7823: $ff
    rst $38                                       ; $7824: $ff
    rst $38                                       ; $7825: $ff
    rst $38                                       ; $7826: $ff
    rst $38                                       ; $7827: $ff
    rst $38                                       ; $7828: $ff
    rst $38                                       ; $7829: $ff
    rst $38                                       ; $782a: $ff
    rst $38                                       ; $782b: $ff
    rst $38                                       ; $782c: $ff
    rst $38                                       ; $782d: $ff
    rst $38                                       ; $782e: $ff
    rst $38                                       ; $782f: $ff
    rst $38                                       ; $7830: $ff
    rst $38                                       ; $7831: $ff
    rst $38                                       ; $7832: $ff
    rst $38                                       ; $7833: $ff
    rst $38                                       ; $7834: $ff
    rst $38                                       ; $7835: $ff
    rst $38                                       ; $7836: $ff
    rst $38                                       ; $7837: $ff
    rst $38                                       ; $7838: $ff
    rst $38                                       ; $7839: $ff
    rst $38                                       ; $783a: $ff
    rst $38                                       ; $783b: $ff
    rst $38                                       ; $783c: $ff
    rst $38                                       ; $783d: $ff
    rst $38                                       ; $783e: $ff
    rst $38                                       ; $783f: $ff
    rst $38                                       ; $7840: $ff
    rst $38                                       ; $7841: $ff
    rst $38                                       ; $7842: $ff
    rst $38                                       ; $7843: $ff
    rst $38                                       ; $7844: $ff
    rst $38                                       ; $7845: $ff
    rst $38                                       ; $7846: $ff
    rst $38                                       ; $7847: $ff
    rst $38                                       ; $7848: $ff
    rst $38                                       ; $7849: $ff
    rst $38                                       ; $784a: $ff
    rst $38                                       ; $784b: $ff
    rst $38                                       ; $784c: $ff
    rst $38                                       ; $784d: $ff
    rst $38                                       ; $784e: $ff
    rst $38                                       ; $784f: $ff
    rst $38                                       ; $7850: $ff
    rst $38                                       ; $7851: $ff
    rst $38                                       ; $7852: $ff
    rst $38                                       ; $7853: $ff
    rst $38                                       ; $7854: $ff
    rst $38                                       ; $7855: $ff
    rst $38                                       ; $7856: $ff
    rst $38                                       ; $7857: $ff
    rst $38                                       ; $7858: $ff
    rst $38                                       ; $7859: $ff
    rst $38                                       ; $785a: $ff
    rst $38                                       ; $785b: $ff
    rst $38                                       ; $785c: $ff
    rst $38                                       ; $785d: $ff
    rst $38                                       ; $785e: $ff
    rst $38                                       ; $785f: $ff
    rst $38                                       ; $7860: $ff
    rst $38                                       ; $7861: $ff
    rst $38                                       ; $7862: $ff
    rst $38                                       ; $7863: $ff
    rst $38                                       ; $7864: $ff
    rst $38                                       ; $7865: $ff
    rst $38                                       ; $7866: $ff
    rst $38                                       ; $7867: $ff
    rst $38                                       ; $7868: $ff
    rst $38                                       ; $7869: $ff
    rst $38                                       ; $786a: $ff
    rst $38                                       ; $786b: $ff
    rst $38                                       ; $786c: $ff
    rst $38                                       ; $786d: $ff
    rst $38                                       ; $786e: $ff
    rst $38                                       ; $786f: $ff
    rst $38                                       ; $7870: $ff
    rst $38                                       ; $7871: $ff
    rst $38                                       ; $7872: $ff
    rst $38                                       ; $7873: $ff
    rst $38                                       ; $7874: $ff
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
    rst $38                                       ; $7885: $ff
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
    rst $38                                       ; $7896: $ff
    rst $38                                       ; $7897: $ff
    rst $38                                       ; $7898: $ff
    rst $38                                       ; $7899: $ff
    rst $38                                       ; $789a: $ff
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
    rst $38                                       ; $78a7: $ff
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
    rst $38                                       ; $78b8: $ff
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
    rst $38                                       ; $78c9: $ff
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
    rst $38                                       ; $78da: $ff
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
    rst $38                                       ; $78eb: $ff
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

Jump_04e_78f7:
    rst $38                                       ; $78f7: $ff
    rst $38                                       ; $78f8: $ff
    rst $38                                       ; $78f9: $ff
    rst $38                                       ; $78fa: $ff
    rst $38                                       ; $78fb: $ff
    rst $38                                       ; $78fc: $ff
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
    rst $38                                       ; $790d: $ff
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
    rst $38                                       ; $791e: $ff
    rst $38                                       ; $791f: $ff
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
    rst $38                                       ; $792c: $ff
    rst $38                                       ; $792d: $ff
    rst $38                                       ; $792e: $ff
    rst $38                                       ; $792f: $ff
    rst $38                                       ; $7930: $ff
    rst $38                                       ; $7931: $ff
    rst $38                                       ; $7932: $ff
    rst $38                                       ; $7933: $ff
    rst $38                                       ; $7934: $ff
    rst $38                                       ; $7935: $ff
    rst $38                                       ; $7936: $ff
    rst $38                                       ; $7937: $ff
    rst $38                                       ; $7938: $ff
    rst $38                                       ; $7939: $ff
    rst $38                                       ; $793a: $ff
    rst $38                                       ; $793b: $ff
    rst $38                                       ; $793c: $ff
    rst $38                                       ; $793d: $ff
    rst $38                                       ; $793e: $ff
    rst $38                                       ; $793f: $ff
    rst $38                                       ; $7940: $ff
    rst $38                                       ; $7941: $ff
    rst $38                                       ; $7942: $ff
    rst $38                                       ; $7943: $ff
    rst $38                                       ; $7944: $ff
    rst $38                                       ; $7945: $ff
    rst $38                                       ; $7946: $ff
    rst $38                                       ; $7947: $ff
    rst $38                                       ; $7948: $ff
    rst $38                                       ; $7949: $ff
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
    rst $38                                       ; $7955: $ff
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
    rst $38                                       ; $7964: $ff
    rst $38                                       ; $7965: $ff
    rst $38                                       ; $7966: $ff
    rst $38                                       ; $7967: $ff
    rst $38                                       ; $7968: $ff
    rst $38                                       ; $7969: $ff
    rst $38                                       ; $796a: $ff
    rst $38                                       ; $796b: $ff
    rst $38                                       ; $796c: $ff
    rst $38                                       ; $796d: $ff
    rst $38                                       ; $796e: $ff
    rst $38                                       ; $796f: $ff
    rst $38                                       ; $7970: $ff
    rst $38                                       ; $7971: $ff
    rst $38                                       ; $7972: $ff
    rst $38                                       ; $7973: $ff
    rst $38                                       ; $7974: $ff
    rst $38                                       ; $7975: $ff
    rst $38                                       ; $7976: $ff
    rst $38                                       ; $7977: $ff
    rst $38                                       ; $7978: $ff
    rst $38                                       ; $7979: $ff
    rst $38                                       ; $797a: $ff
    rst $38                                       ; $797b: $ff
    rst $38                                       ; $797c: $ff
    rst $38                                       ; $797d: $ff
    rst $38                                       ; $797e: $ff
    rst $38                                       ; $797f: $ff
    rst $38                                       ; $7980: $ff
    rst $38                                       ; $7981: $ff
    rst $38                                       ; $7982: $ff
    rst $38                                       ; $7983: $ff
    rst $38                                       ; $7984: $ff
    rst $38                                       ; $7985: $ff
    rst $38                                       ; $7986: $ff
    rst $38                                       ; $7987: $ff
    rst $38                                       ; $7988: $ff
    rst $38                                       ; $7989: $ff
    rst $38                                       ; $798a: $ff
    rst $38                                       ; $798b: $ff
    rst $38                                       ; $798c: $ff
    rst $38                                       ; $798d: $ff
    rst $38                                       ; $798e: $ff
    rst $38                                       ; $798f: $ff
    rst $38                                       ; $7990: $ff
    rst $38                                       ; $7991: $ff
    rst $38                                       ; $7992: $ff
    rst $38                                       ; $7993: $ff
    rst $38                                       ; $7994: $ff
    rst $38                                       ; $7995: $ff
    rst $38                                       ; $7996: $ff
    rst $38                                       ; $7997: $ff
    rst $38                                       ; $7998: $ff
    rst $38                                       ; $7999: $ff
    rst $38                                       ; $799a: $ff
    rst $38                                       ; $799b: $ff
    rst $38                                       ; $799c: $ff
    rst $38                                       ; $799d: $ff
    rst $38                                       ; $799e: $ff
    rst $38                                       ; $799f: $ff
    rst $38                                       ; $79a0: $ff
    rst $38                                       ; $79a1: $ff
    rst $38                                       ; $79a2: $ff
    rst $38                                       ; $79a3: $ff
    rst $38                                       ; $79a4: $ff
    rst $38                                       ; $79a5: $ff
    rst $38                                       ; $79a6: $ff
    rst $38                                       ; $79a7: $ff
    rst $38                                       ; $79a8: $ff
    rst $38                                       ; $79a9: $ff
    rst $38                                       ; $79aa: $ff
    rst $38                                       ; $79ab: $ff
    rst $38                                       ; $79ac: $ff
    rst $38                                       ; $79ad: $ff
    rst $38                                       ; $79ae: $ff
    rst $38                                       ; $79af: $ff
    rst $38                                       ; $79b0: $ff
    rst $38                                       ; $79b1: $ff
    rst $38                                       ; $79b2: $ff
    rst $38                                       ; $79b3: $ff
    rst $38                                       ; $79b4: $ff
    rst $38                                       ; $79b5: $ff
    rst $38                                       ; $79b6: $ff
    rst $38                                       ; $79b7: $ff
    rst $38                                       ; $79b8: $ff
    rst $38                                       ; $79b9: $ff
    rst $38                                       ; $79ba: $ff
    rst $38                                       ; $79bb: $ff
    rst $38                                       ; $79bc: $ff
    rst $38                                       ; $79bd: $ff
    rst $38                                       ; $79be: $ff
    rst $38                                       ; $79bf: $ff
    rst $38                                       ; $79c0: $ff
    rst $38                                       ; $79c1: $ff
    rst $38                                       ; $79c2: $ff
    rst $38                                       ; $79c3: $ff
    rst $38                                       ; $79c4: $ff
    rst $38                                       ; $79c5: $ff
    rst $38                                       ; $79c6: $ff
    rst $38                                       ; $79c7: $ff
    rst $38                                       ; $79c8: $ff
    rst $38                                       ; $79c9: $ff
    rst $38                                       ; $79ca: $ff
    rst $38                                       ; $79cb: $ff
    rst $38                                       ; $79cc: $ff
    rst $38                                       ; $79cd: $ff
    rst $38                                       ; $79ce: $ff
    rst $38                                       ; $79cf: $ff
    rst $38                                       ; $79d0: $ff
    rst $38                                       ; $79d1: $ff
    rst $38                                       ; $79d2: $ff
    rst $38                                       ; $79d3: $ff
    rst $38                                       ; $79d4: $ff
    rst $38                                       ; $79d5: $ff
    rst $38                                       ; $79d6: $ff
    rst $38                                       ; $79d7: $ff
    rst $38                                       ; $79d8: $ff
    rst $38                                       ; $79d9: $ff
    rst $38                                       ; $79da: $ff
    rst $38                                       ; $79db: $ff
    rst $38                                       ; $79dc: $ff
    rst $38                                       ; $79dd: $ff
    rst $38                                       ; $79de: $ff
    rst $38                                       ; $79df: $ff
    rst $38                                       ; $79e0: $ff
    rst $38                                       ; $79e1: $ff
    rst $38                                       ; $79e2: $ff
    rst $38                                       ; $79e3: $ff
    rst $38                                       ; $79e4: $ff
    rst $38                                       ; $79e5: $ff
    rst $38                                       ; $79e6: $ff
    rst $38                                       ; $79e7: $ff
    rst $38                                       ; $79e8: $ff
    rst $38                                       ; $79e9: $ff
    rst $38                                       ; $79ea: $ff
    rst $38                                       ; $79eb: $ff
    rst $38                                       ; $79ec: $ff
    rst $38                                       ; $79ed: $ff
    rst $38                                       ; $79ee: $ff
    rst $38                                       ; $79ef: $ff
    rst $38                                       ; $79f0: $ff
    rst $38                                       ; $79f1: $ff
    rst $38                                       ; $79f2: $ff
    rst $38                                       ; $79f3: $ff
    rst $38                                       ; $79f4: $ff
    rst $38                                       ; $79f5: $ff
    rst $38                                       ; $79f6: $ff
    rst $38                                       ; $79f7: $ff
    rst $38                                       ; $79f8: $ff
    rst $38                                       ; $79f9: $ff
    rst $38                                       ; $79fa: $ff
    rst $38                                       ; $79fb: $ff
    rst $38                                       ; $79fc: $ff
    rst $38                                       ; $79fd: $ff
    rst $38                                       ; $79fe: $ff
    rst $38                                       ; $79ff: $ff
    rst $38                                       ; $7a00: $ff
    rst $38                                       ; $7a01: $ff
    rst $38                                       ; $7a02: $ff
    rst $38                                       ; $7a03: $ff
    rst $38                                       ; $7a04: $ff
    rst $38                                       ; $7a05: $ff
    rst $38                                       ; $7a06: $ff
    rst $38                                       ; $7a07: $ff
    rst $38                                       ; $7a08: $ff
    rst $38                                       ; $7a09: $ff
    rst $38                                       ; $7a0a: $ff
    rst $38                                       ; $7a0b: $ff
    rst $38                                       ; $7a0c: $ff
    rst $38                                       ; $7a0d: $ff
    rst $38                                       ; $7a0e: $ff
    rst $38                                       ; $7a0f: $ff
    rst $38                                       ; $7a10: $ff
    rst $38                                       ; $7a11: $ff
    rst $38                                       ; $7a12: $ff
    rst $38                                       ; $7a13: $ff
    rst $38                                       ; $7a14: $ff
    rst $38                                       ; $7a15: $ff
    rst $38                                       ; $7a16: $ff
    rst $38                                       ; $7a17: $ff
    rst $38                                       ; $7a18: $ff
    rst $38                                       ; $7a19: $ff
    rst $38                                       ; $7a1a: $ff
    rst $38                                       ; $7a1b: $ff
    rst $38                                       ; $7a1c: $ff
    rst $38                                       ; $7a1d: $ff
    rst $38                                       ; $7a1e: $ff
    rst $38                                       ; $7a1f: $ff
    rst $38                                       ; $7a20: $ff
    rst $38                                       ; $7a21: $ff
    rst $38                                       ; $7a22: $ff
    rst $38                                       ; $7a23: $ff
    rst $38                                       ; $7a24: $ff
    rst $38                                       ; $7a25: $ff
    rst $38                                       ; $7a26: $ff
    rst $38                                       ; $7a27: $ff
    rst $38                                       ; $7a28: $ff
    rst $38                                       ; $7a29: $ff
    rst $38                                       ; $7a2a: $ff
    rst $38                                       ; $7a2b: $ff
    rst $38                                       ; $7a2c: $ff
    rst $38                                       ; $7a2d: $ff
    rst $38                                       ; $7a2e: $ff
    rst $38                                       ; $7a2f: $ff
    rst $38                                       ; $7a30: $ff
    rst $38                                       ; $7a31: $ff
    rst $38                                       ; $7a32: $ff
    rst $38                                       ; $7a33: $ff
    rst $38                                       ; $7a34: $ff
    rst $38                                       ; $7a35: $ff
    rst $38                                       ; $7a36: $ff
    rst $38                                       ; $7a37: $ff
    rst $38                                       ; $7a38: $ff
    rst $38                                       ; $7a39: $ff
    rst $38                                       ; $7a3a: $ff
    rst $38                                       ; $7a3b: $ff
    rst $38                                       ; $7a3c: $ff
    rst $38                                       ; $7a3d: $ff
    rst $38                                       ; $7a3e: $ff
    rst $38                                       ; $7a3f: $ff
    rst $38                                       ; $7a40: $ff
    rst $38                                       ; $7a41: $ff
    rst $38                                       ; $7a42: $ff
    rst $38                                       ; $7a43: $ff
    rst $38                                       ; $7a44: $ff
    rst $38                                       ; $7a45: $ff
    rst $38                                       ; $7a46: $ff
    rst $38                                       ; $7a47: $ff
    rst $38                                       ; $7a48: $ff
    rst $38                                       ; $7a49: $ff
    rst $38                                       ; $7a4a: $ff
    rst $38                                       ; $7a4b: $ff
    rst $38                                       ; $7a4c: $ff
    rst $38                                       ; $7a4d: $ff
    rst $38                                       ; $7a4e: $ff
    rst $38                                       ; $7a4f: $ff
    rst $38                                       ; $7a50: $ff
    rst $38                                       ; $7a51: $ff
    rst $38                                       ; $7a52: $ff
    rst $38                                       ; $7a53: $ff
    rst $38                                       ; $7a54: $ff
    rst $38                                       ; $7a55: $ff
    rst $38                                       ; $7a56: $ff
    rst $38                                       ; $7a57: $ff
    rst $38                                       ; $7a58: $ff
    rst $38                                       ; $7a59: $ff
    rst $38                                       ; $7a5a: $ff
    rst $38                                       ; $7a5b: $ff
    rst $38                                       ; $7a5c: $ff
    rst $38                                       ; $7a5d: $ff
    rst $38                                       ; $7a5e: $ff
    rst $38                                       ; $7a5f: $ff
    rst $38                                       ; $7a60: $ff
    rst $38                                       ; $7a61: $ff
    rst $38                                       ; $7a62: $ff
    rst $38                                       ; $7a63: $ff
    rst $38                                       ; $7a64: $ff
    rst $38                                       ; $7a65: $ff
    rst $38                                       ; $7a66: $ff
    rst $38                                       ; $7a67: $ff
    rst $38                                       ; $7a68: $ff
    rst $38                                       ; $7a69: $ff
    rst $38                                       ; $7a6a: $ff
    rst $38                                       ; $7a6b: $ff
    rst $38                                       ; $7a6c: $ff
    rst $38                                       ; $7a6d: $ff
    rst $38                                       ; $7a6e: $ff
    rst $38                                       ; $7a6f: $ff
    rst $38                                       ; $7a70: $ff
    rst $38                                       ; $7a71: $ff
    rst $38                                       ; $7a72: $ff
    rst $38                                       ; $7a73: $ff
    rst $38                                       ; $7a74: $ff
    rst $38                                       ; $7a75: $ff
    rst $38                                       ; $7a76: $ff
    rst $38                                       ; $7a77: $ff
    rst $38                                       ; $7a78: $ff
    rst $38                                       ; $7a79: $ff
    rst $38                                       ; $7a7a: $ff
    rst $38                                       ; $7a7b: $ff
    rst $38                                       ; $7a7c: $ff
    rst $38                                       ; $7a7d: $ff
    rst $38                                       ; $7a7e: $ff
    rst $38                                       ; $7a7f: $ff
    rst $38                                       ; $7a80: $ff
    rst $38                                       ; $7a81: $ff
    rst $38                                       ; $7a82: $ff
    rst $38                                       ; $7a83: $ff
    rst $38                                       ; $7a84: $ff
    rst $38                                       ; $7a85: $ff
    rst $38                                       ; $7a86: $ff
    rst $38                                       ; $7a87: $ff
    rst $38                                       ; $7a88: $ff
    rst $38                                       ; $7a89: $ff
    rst $38                                       ; $7a8a: $ff
    rst $38                                       ; $7a8b: $ff
    rst $38                                       ; $7a8c: $ff
    rst $38                                       ; $7a8d: $ff
    rst $38                                       ; $7a8e: $ff
    rst $38                                       ; $7a8f: $ff
    rst $38                                       ; $7a90: $ff
    rst $38                                       ; $7a91: $ff
    rst $38                                       ; $7a92: $ff
    rst $38                                       ; $7a93: $ff
    rst $38                                       ; $7a94: $ff
    rst $38                                       ; $7a95: $ff
    rst $38                                       ; $7a96: $ff
    rst $38                                       ; $7a97: $ff
    rst $38                                       ; $7a98: $ff
    rst $38                                       ; $7a99: $ff
    rst $38                                       ; $7a9a: $ff
    rst $38                                       ; $7a9b: $ff
    rst $38                                       ; $7a9c: $ff
    rst $38                                       ; $7a9d: $ff
    rst $38                                       ; $7a9e: $ff
    rst $38                                       ; $7a9f: $ff
    rst $38                                       ; $7aa0: $ff
    rst $38                                       ; $7aa1: $ff
    rst $38                                       ; $7aa2: $ff
    rst $38                                       ; $7aa3: $ff
    rst $38                                       ; $7aa4: $ff
    rst $38                                       ; $7aa5: $ff
    rst $38                                       ; $7aa6: $ff
    rst $38                                       ; $7aa7: $ff
    rst $38                                       ; $7aa8: $ff
    rst $38                                       ; $7aa9: $ff
    rst $38                                       ; $7aaa: $ff
    rst $38                                       ; $7aab: $ff
    rst $38                                       ; $7aac: $ff
    rst $38                                       ; $7aad: $ff
    rst $38                                       ; $7aae: $ff
    rst $38                                       ; $7aaf: $ff
    rst $38                                       ; $7ab0: $ff
    rst $38                                       ; $7ab1: $ff
    rst $38                                       ; $7ab2: $ff
    rst $38                                       ; $7ab3: $ff
    rst $38                                       ; $7ab4: $ff
    rst $38                                       ; $7ab5: $ff
    rst $38                                       ; $7ab6: $ff
    rst $38                                       ; $7ab7: $ff
    rst $38                                       ; $7ab8: $ff
    rst $38                                       ; $7ab9: $ff
    rst $38                                       ; $7aba: $ff
    rst $38                                       ; $7abb: $ff
    rst $38                                       ; $7abc: $ff
    rst $38                                       ; $7abd: $ff
    rst $38                                       ; $7abe: $ff
    rst $38                                       ; $7abf: $ff
    rst $38                                       ; $7ac0: $ff
    rst $38                                       ; $7ac1: $ff
    rst $38                                       ; $7ac2: $ff
    rst $38                                       ; $7ac3: $ff
    rst $38                                       ; $7ac4: $ff
    rst $38                                       ; $7ac5: $ff
    rst $38                                       ; $7ac6: $ff
    rst $38                                       ; $7ac7: $ff
    rst $38                                       ; $7ac8: $ff
    rst $38                                       ; $7ac9: $ff
    rst $38                                       ; $7aca: $ff
    rst $38                                       ; $7acb: $ff
    rst $38                                       ; $7acc: $ff
    rst $38                                       ; $7acd: $ff
    rst $38                                       ; $7ace: $ff
    rst $38                                       ; $7acf: $ff
    rst $38                                       ; $7ad0: $ff
    rst $38                                       ; $7ad1: $ff
    rst $38                                       ; $7ad2: $ff
    rst $38                                       ; $7ad3: $ff
    rst $38                                       ; $7ad4: $ff
    rst $38                                       ; $7ad5: $ff
    rst $38                                       ; $7ad6: $ff
    rst $38                                       ; $7ad7: $ff
    rst $38                                       ; $7ad8: $ff
    rst $38                                       ; $7ad9: $ff
    rst $38                                       ; $7ada: $ff
    rst $38                                       ; $7adb: $ff
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

Jump_04e_7f8e:
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

Jump_04e_7fc0:
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
